@interface CLKTimeIntervalGaugeProvider
+ (CLKTimeIntervalGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColors:(NSArray *)gaugeColors gaugeColorLocations:(NSArray *)gaugeColorLocations startDate:(NSDate *)startDate startFillFraction:(float)startFillFraction endDate:(NSDate *)endDate endFillFraction:(float)endFillFraction;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate;
- (CLKTimeIntervalGaugeProvider)initWithCoder:(id)a3;
- (CLKTimeIntervalGaugeProvider)initWithJSONObjectRepresentation:(id)a3;
- (double)progressFractionForNow:(id)a3;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)startUpdatesWithHandler:(id)a3;
- (unint64_t)hash;
- (void)_maybeStartOrStopUpdates;
- (void)_update;
- (void)encodeWithCoder:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)stopUpdatesForToken:(id)a3;
- (void)validate;
@end

@implementation CLKTimeIntervalGaugeProvider

+ (CLKTimeIntervalGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColors:(NSArray *)gaugeColors gaugeColorLocations:(NSArray *)gaugeColorLocations startDate:(NSDate *)startDate startFillFraction:(float)startFillFraction endDate:(NSDate *)endDate endFillFraction:(float)endFillFraction
{
  v15 = endDate;
  v16 = startDate;
  v17 = gaugeColorLocations;
  v18 = gaugeColors;
  v19 = [(CLKGaugeProvider *)[CLKTimeIntervalGaugeProvider alloc] _init];
  [v19 setStyle:style];
  [v19 setGaugeColors:v18];

  [v19 setGaugeColorLocations:v17];
  [v19 setStartDate:v16];

  [v19 setEndDate:v15];
  *&v20 = startFillFraction;
  [v19 setStartFillFraction:v20];
  *&v21 = endFillFraction;
  [v19 setEndFillFraction:v21];

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLKTimeIntervalGaugeProvider;
  v4 = a3;
  [(CLKGaugeProvider *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_startDate forKey:{@"_StartDateKey", v7.receiver, v7.super_class}];
  *&v5 = self->_startFillFraction;
  [v4 encodeFloat:@"_StartFillFractionKey" forKey:v5];
  [v4 encodeObject:self->_endDate forKey:@"_EndDateKey"];
  *&v6 = self->_endFillFraction;
  [v4 encodeFloat:@"_EndFillFractionKey" forKey:v6];
}

- (CLKTimeIntervalGaugeProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CLKTimeIntervalGaugeProvider;
  v5 = [(CLKGaugeProvider *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_StartDateKey"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    [v4 decodeFloatForKey:@"_StartFillFractionKey"];
    v5->_startFillFraction = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_EndDateKey"];
    endDate = v5->_endDate;
    v5->_endDate = v9;

    [v4 decodeFloatForKey:@"_EndFillFractionKey"];
    v5->_endFillFraction = v11;
  }

  return v5;
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    [(CLKTimeIntervalGaugeProvider *)self _maybeStartOrStopUpdates];
  }
}

- (double)progressFractionForNow:(id)a3
{
  [a3 timeIntervalSinceDate:self->_startDate];
  v5 = v4;
  if (v4 < 0.00000011920929)
  {
    v6 = 76;
    return *(&self->super.super.isa + v6);
  }

  [(NSDate *)self->_endDate timeIntervalSinceDate:self->_startDate];
  if (v7 < 0.00000011920929)
  {
    v6 = 80;
    return *(&self->super.super.isa + v6);
  }

  v10 = v5 / v7;
  v11 = v7 + -0.00000011920929;
  endFillFraction = self->_endFillFraction;
  if (v10 > v11)
  {
    return endFillFraction;
  }

  return self->_startFillFraction + v10 * (endFillFraction - self->_startFillFraction);
}

- (id)startUpdatesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_nextUpdateToken];
  ++self->_nextUpdateToken;
  if (!self->_updateHandlersByToken)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    updateHandlersByToken = self->_updateHandlersByToken;
    self->_updateHandlersByToken = v6;
  }

  v8 = [v4 copy];
  v9 = MEMORY[0x2383C4AF0]();
  [(NSMutableDictionary *)self->_updateHandlersByToken setObject:v9 forKeyedSubscript:v5];

  [(CLKTimeIntervalGaugeProvider *)self _maybeStartOrStopUpdates];

  return v5;
}

- (void)stopUpdatesForToken:(id)a3
{
  [(NSMutableDictionary *)self->_updateHandlersByToken removeObjectForKey:a3];

  [(CLKTimeIntervalGaugeProvider *)self _maybeStartOrStopUpdates];
}

- (void)_maybeStartOrStopUpdates
{
  if ([(NSMutableDictionary *)self->_updateHandlersByToken count]&& ![(CLKTimeIntervalGaugeProvider *)self paused])
  {
    if (!self->_timerToken)
    {
      objc_initWeak(&location, self);
      v5 = +[CLKClockTimer sharedInstance];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__CLKTimeIntervalGaugeProvider__maybeStartOrStopUpdates__block_invoke;
      v10[3] = &unk_278A1EFF8;
      objc_copyWeak(&v11, &location);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__CLKTimeIntervalGaugeProvider__maybeStartOrStopUpdates__block_invoke_17;
      v8[3] = &unk_278A1F020;
      objc_copyWeak(&v9, &location);
      v6 = [v5 startUpdatesWithUpdateFrequency:1 withHandler:v10 identificationLog:v8];
      timerToken = self->_timerToken;
      self->_timerToken = v6;

      objc_destroyWeak(&v9);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  else if (self->_timerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_timerToken];

    v4 = self->_timerToken;
    self->_timerToken = 0;
  }
}

void __56__CLKTimeIntervalGaugeProvider__maybeStartOrStopUpdates__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

id __56__CLKTimeIntervalGaugeProvider__maybeStartOrStopUpdates__block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)_update
{
  updateHandlersByToken = self->_updateHandlersByToken;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__CLKTimeIntervalGaugeProvider__update__block_invoke;
  v4[3] = &unk_278A1F048;
  v4[4] = self;
  [(NSMutableDictionary *)updateHandlersByToken enumerateKeysAndObjectsUsingBlock:v4];
  [(CLKTimeIntervalGaugeProvider *)self _maybeStartOrStopUpdates];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CLKTimeIntervalGaugeProvider;
  if ([(CLKGaugeProvider *)&v15 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    startDate = self->_startDate;
    v6 = [v4 startDate];
    if (startDate == v6)
    {
      endDate = self->_endDate;
      v9 = [v4 endDate];
      if (endDate == v9 && (startFillFraction = self->_startFillFraction, [v4 startFillFraction], startFillFraction == v11))
      {
        endFillFraction = self->_endFillFraction;
        [v4 endFillFraction];
        v7 = endFillFraction == v13;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = CLKTimeIntervalGaugeProvider;
  v3 = [(CLKGaugeProvider *)&v13 hash];
  *&v4 = self->_startFillFraction;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v6 = [v5 hash];
  v7 = v3 + v6 * 100000.0;
  *&v6 = self->_endFillFraction;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v9 = v7 + [v8 hash] * 10000.0;
  v10 = v9 + [(NSDate *)self->_startDate hash]* 1000.0;
  v11 = (v10 + [(NSDate *)self->_endDate hash]* 100.0);

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CLKTimeIntervalGaugeProvider;
  v4 = [(CLKGaugeProvider *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4 != self)
  {
    objc_storeStrong(&v4->_startDate, self->_startDate);
    objc_storeStrong(&v5->_endDate, self->_endDate);
    v5->_startFillFraction = self->_startFillFraction;
    v5->_endFillFraction = self->_endFillFraction;
  }

  return v5;
}

- (CLKTimeIntervalGaugeProvider)initWithJSONObjectRepresentation:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CLKTimeIntervalGaugeProvider;
  v5 = [(CLKGaugeProvider *)&v17 initWithJSONObjectRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"gaugeStartDate"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v6];
      startDate = v5->_startDate;
      v5->_startDate = v7;
    }

    v9 = [v4 objectForKeyedSubscript:@"gaugeEndDate"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v9];
      endDate = v5->_endDate;
      v5->_endDate = v10;
    }

    v12 = [v4 objectForKeyedSubscript:@"gaugeStartFillFraction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      v5->_startFillFraction = v13;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"gaugeColorLocations" format:{@"value for key '%@' must be a number - invalid value: %@", @"gaugeStartFillFraction", v12}];
    }

    v14 = [v4 objectForKeyedSubscript:@"gaugeEndFillFraction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      v5->_endFillFraction = v15;
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"gaugeColorLocations" format:{@"value for key '%@' must be a number - invalid value: %@", @"gaugeEndFillFraction", v14}];
    }
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v14.receiver = self;
  v14.super_class = CLKTimeIntervalGaugeProvider;
  v3 = [(CLKGaugeProvider *)&v14 JSONObjectRepresentation];
  v4 = [v3 mutableCopy];

  startDate = self->_startDate;
  if (startDate)
  {
    v7 = [(NSDate *)startDate JSONObjectRepresentation];
    [v4 setObject:v7 forKeyedSubscript:@"gaugeStartDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v9 = [(NSDate *)endDate JSONObjectRepresentation];
    [v4 setObject:v9 forKeyedSubscript:@"gaugeEndDate"];
  }

  *&v5 = self->_startFillFraction;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  [v4 setObject:v10 forKeyedSubscript:@"gaugeStartFillFraction"];

  *&v11 = self->_endFillFraction;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [v4 setObject:v12 forKeyedSubscript:@"gaugeEndFillFraction"];

  return v4;
}

- (BOOL)validate
{
  v11.receiver = self;
  v11.super_class = CLKTimeIntervalGaugeProvider;
  v3 = [(CLKGaugeProvider *)&v11 validate];
  if (v3)
  {
    startDate = self->_startDate;
    if (!startDate)
    {
      v5 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [CLKTimeIntervalGaugeProvider validate];
      }

      goto LABEL_23;
    }

    if (!self->_endDate)
    {
      v5 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [CLKTimeIntervalGaugeProvider validate];
      }

      goto LABEL_23;
    }

    if ([(NSDate *)startDate compare:?]!= NSOrderedAscending)
    {
      v5 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [CLKTimeIntervalGaugeProvider validate];
      }

LABEL_23:

      LOBYTE(v3) = 0;
      return v3;
    }

    startFillFraction = self->_startFillFraction;
    if (startFillFraction < 0.0 || startFillFraction > 1.0)
    {
      v5 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [CLKTimeIntervalGaugeProvider validate];
      }

      goto LABEL_23;
    }

    endFillFraction = self->_endFillFraction;
    if (endFillFraction < 0.0 || endFillFraction > 1.0)
    {
      v5 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [CLKTimeIntervalGaugeProvider validate];
      }

      goto LABEL_23;
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)validate
{
  OUTLINED_FUNCTION_2();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_0_1(v2);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);
}

@end