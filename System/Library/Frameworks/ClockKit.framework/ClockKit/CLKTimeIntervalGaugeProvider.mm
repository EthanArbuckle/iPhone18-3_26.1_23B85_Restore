@interface CLKTimeIntervalGaugeProvider
+ (CLKTimeIntervalGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColors:(NSArray *)gaugeColors gaugeColorLocations:(NSArray *)gaugeColorLocations startDate:(NSDate *)startDate startFillFraction:(float)startFillFraction endDate:(NSDate *)endDate endFillFraction:(float)endFillFraction;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate;
- (CLKTimeIntervalGaugeProvider)initWithCoder:(id)coder;
- (CLKTimeIntervalGaugeProvider)initWithJSONObjectRepresentation:(id)representation;
- (double)progressFractionForNow:(id)now;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)startUpdatesWithHandler:(id)handler;
- (unint64_t)hash;
- (void)_maybeStartOrStopUpdates;
- (void)_update;
- (void)encodeWithCoder:(id)coder;
- (void)setPaused:(BOOL)paused;
- (void)stopUpdatesForToken:(id)token;
- (void)validate;
@end

@implementation CLKTimeIntervalGaugeProvider

+ (CLKTimeIntervalGaugeProvider)gaugeProviderWithStyle:(CLKGaugeProviderStyle)style gaugeColors:(NSArray *)gaugeColors gaugeColorLocations:(NSArray *)gaugeColorLocations startDate:(NSDate *)startDate startFillFraction:(float)startFillFraction endDate:(NSDate *)endDate endFillFraction:(float)endFillFraction
{
  v15 = endDate;
  v16 = startDate;
  v17 = gaugeColorLocations;
  v18 = gaugeColors;
  _init = [(CLKGaugeProvider *)[CLKTimeIntervalGaugeProvider alloc] _init];
  [_init setStyle:style];
  [_init setGaugeColors:v18];

  [_init setGaugeColorLocations:v17];
  [_init setStartDate:v16];

  [_init setEndDate:v15];
  *&v20 = startFillFraction;
  [_init setStartFillFraction:v20];
  *&v21 = endFillFraction;
  [_init setEndFillFraction:v21];

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CLKTimeIntervalGaugeProvider;
  coderCopy = coder;
  [(CLKGaugeProvider *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_startDate forKey:{@"_StartDateKey", v7.receiver, v7.super_class}];
  *&v5 = self->_startFillFraction;
  [coderCopy encodeFloat:@"_StartFillFractionKey" forKey:v5];
  [coderCopy encodeObject:self->_endDate forKey:@"_EndDateKey"];
  *&v6 = self->_endFillFraction;
  [coderCopy encodeFloat:@"_EndFillFractionKey" forKey:v6];
}

- (CLKTimeIntervalGaugeProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CLKTimeIntervalGaugeProvider;
  v5 = [(CLKGaugeProvider *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_StartDateKey"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    [coderCopy decodeFloatForKey:@"_StartFillFractionKey"];
    v5->_startFillFraction = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_EndDateKey"];
    endDate = v5->_endDate;
    v5->_endDate = v9;

    [coderCopy decodeFloatForKey:@"_EndFillFractionKey"];
    v5->_endFillFraction = v11;
  }

  return v5;
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    self->_paused = paused;
    [(CLKTimeIntervalGaugeProvider *)self _maybeStartOrStopUpdates];
  }
}

- (double)progressFractionForNow:(id)now
{
  [now timeIntervalSinceDate:self->_startDate];
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

- (id)startUpdatesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_nextUpdateToken];
  ++self->_nextUpdateToken;
  if (!self->_updateHandlersByToken)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    updateHandlersByToken = self->_updateHandlersByToken;
    self->_updateHandlersByToken = dictionary;
  }

  v8 = [handlerCopy copy];
  v9 = MEMORY[0x2383C4AF0]();
  [(NSMutableDictionary *)self->_updateHandlersByToken setObject:v9 forKeyedSubscript:v5];

  [(CLKTimeIntervalGaugeProvider *)self _maybeStartOrStopUpdates];

  return v5;
}

- (void)stopUpdatesForToken:(id)token
{
  [(NSMutableDictionary *)self->_updateHandlersByToken removeObjectForKey:token];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = CLKTimeIntervalGaugeProvider;
  if ([(CLKGaugeProvider *)&v15 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    startDate = self->_startDate;
    startDate = [equalCopy startDate];
    if (startDate == startDate)
    {
      endDate = self->_endDate;
      endDate = [equalCopy endDate];
      if (endDate == endDate && (startFillFraction = self->_startFillFraction, [equalCopy startFillFraction], startFillFraction == v11))
      {
        endFillFraction = self->_endFillFraction;
        [equalCopy endFillFraction];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CLKTimeIntervalGaugeProvider;
  v4 = [(CLKGaugeProvider *)&v7 copyWithZone:zone];
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

- (CLKTimeIntervalGaugeProvider)initWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = CLKTimeIntervalGaugeProvider;
  v5 = [(CLKGaugeProvider *)&v17 initWithJSONObjectRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"gaugeStartDate"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v6];
      startDate = v5->_startDate;
      v5->_startDate = v7;
    }

    v9 = [representationCopy objectForKeyedSubscript:@"gaugeEndDate"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v9];
      endDate = v5->_endDate;
      v5->_endDate = v10;
    }

    v12 = [representationCopy objectForKeyedSubscript:@"gaugeStartFillFraction"];
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

    v14 = [representationCopy objectForKeyedSubscript:@"gaugeEndFillFraction"];
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
  jSONObjectRepresentation = [(CLKGaugeProvider *)&v14 JSONObjectRepresentation];
  v4 = [jSONObjectRepresentation mutableCopy];

  startDate = self->_startDate;
  if (startDate)
  {
    jSONObjectRepresentation2 = [(NSDate *)startDate JSONObjectRepresentation];
    [v4 setObject:jSONObjectRepresentation2 forKeyedSubscript:@"gaugeStartDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    jSONObjectRepresentation3 = [(NSDate *)endDate JSONObjectRepresentation];
    [v4 setObject:jSONObjectRepresentation3 forKeyedSubscript:@"gaugeEndDate"];
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
  validate = [(CLKGaugeProvider *)&v11 validate];
  if (validate)
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

      LOBYTE(validate) = 0;
      return validate;
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

    LOBYTE(validate) = 1;
  }

  return validate;
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