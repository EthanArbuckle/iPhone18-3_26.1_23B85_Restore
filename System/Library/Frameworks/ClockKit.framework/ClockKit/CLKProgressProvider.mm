@interface CLKProgressProvider
- (BOOL)isEqual:(id)a3;
- (CLKProgressProvider)init;
- (CLKProgressProvider)initWithCoder:(id)a3;
- (id)JSONObjectRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)startUpdatesWithHandler:(id)a3;
- (int64_t)timeTravelUpdateFrequency;
- (unint64_t)hash;
- (void)_commonInit;
- (void)_maybeStartOrStopUpdates;
- (void)_update;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)stopUpdatesForToken:(id)a3;
@end

@implementation CLKProgressProvider

- (CLKProgressProvider)init
{
  v5.receiver = self;
  v5.super_class = CLKProgressProvider;
  v2 = [(CLKProgressProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CLKProgressProvider *)v2 _commonInit];
  }

  return v3;
}

- (void)_commonInit
{
  self->_paused = 1;
  self->_backgroundRingAlpha = -1.0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  updateHandlersByToken = self->_updateHandlersByToken;
  self->_updateHandlersByToken = v3;

  MEMORY[0x2821F96F8](v3, updateHandlersByToken);
}

- (void)dealloc
{
  if (self->_timerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_timerToken];
  }

  v4.receiver = self;
  v4.super_class = CLKProgressProvider;
  [(CLKProgressProvider *)&v4 dealloc];
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    self->_paused = a3;
    [(CLKProgressProvider *)self _maybeStartOrStopUpdates];
  }
}

- (id)startUpdatesWithHandler:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  nextUpdateToken = self->_nextUpdateToken;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:nextUpdateToken];
  ++self->_nextUpdateToken;
  v8 = [v6 copy];

  v9 = MEMORY[0x2383C4AF0](v8);
  [(NSMutableDictionary *)self->_updateHandlersByToken setObject:v9 forKeyedSubscript:v7];

  [(CLKProgressProvider *)self _maybeStartOrStopUpdates];

  return v7;
}

- (void)stopUpdatesForToken:(id)a3
{
  [(NSMutableDictionary *)self->_updateHandlersByToken removeObjectForKey:a3];

  [(CLKProgressProvider *)self _maybeStartOrStopUpdates];
}

- (int64_t)timeTravelUpdateFrequency
{
  if ([(CLKProgressProvider *)self _needsUpdates])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)_maybeStartOrStopUpdates
{
  if ([(NSMutableDictionary *)self->_updateHandlersByToken count]&& !self->_paused && [(CLKProgressProvider *)self _needsUpdates])
  {
    if (!self->_timerToken)
    {
      objc_initWeak(&location, self);
      v3 = +[CLKClockTimer sharedInstance];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __47__CLKProgressProvider__maybeStartOrStopUpdates__block_invoke;
      v10[3] = &unk_278A1EFF8;
      objc_copyWeak(&v11, &location);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __47__CLKProgressProvider__maybeStartOrStopUpdates__block_invoke_5;
      v8[3] = &unk_278A1F020;
      objc_copyWeak(&v9, &location);
      v4 = [v3 startUpdatesWithUpdateFrequency:1 withHandler:v10 identificationLog:v8];
      timerToken = self->_timerToken;
      self->_timerToken = v4;

      objc_destroyWeak(&v9);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  else if (self->_timerToken)
  {
    v6 = +[CLKClockTimer sharedInstance];
    [v6 stopUpdatesForToken:self->_timerToken];

    v7 = self->_timerToken;
    self->_timerToken = 0;
  }
}

void __47__CLKProgressProvider__maybeStartOrStopUpdates__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _update];
}

id __47__CLKProgressProvider__maybeStartOrStopUpdates__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)_update
{
  [(NSMutableDictionary *)self->_updateHandlersByToken enumerateKeysAndObjectsUsingBlock:&__block_literal_global_5];

  [(CLKProgressProvider *)self _maybeStartOrStopUpdates];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_finalized)
  {

    return self;
  }

  else
  {
    v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
    [v5 setTintColor:self->_tintColor];
    [v5 setBackgroundRingAlpha:self->_backgroundRingAlpha];
    return v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tintColor = self->_tintColor;
    v6 = [v4 tintColor];
    if (CLKEqualObjects(tintColor, v6))
    {
      backgroundRingAlpha = self->_backgroundRingAlpha;
      [v4 backgroundRingAlpha];
      v9 = CLKFloatEqualsFloat(backgroundRingAlpha, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(UIColor *)self->_tintColor hash];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_backgroundRingAlpha];
  v5 = ([v4 hash] * 100.0 + v3 * 1000.0);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  tintColor = self->_tintColor;
  v5 = a3;
  [v5 encodeObject:tintColor forKey:@"TintColor"];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_backgroundRingAlpha];
  [v5 encodeObject:v6 forKey:@"BackgroundRingAlpha"];
}

- (CLKProgressProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CLKProgressProvider;
  v5 = [(CLKProgressProvider *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(CLKProgressProvider *)v5 _commonInit];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TintColor"];
    tintColor = v6->_tintColor;
    v6->_tintColor = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BackgroundRingAlpha"];
    [v9 floatValue];
    v6->_backgroundRingAlpha = v10;
  }

  return v6;
}

- (id)JSONObjectRepresentation
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];

  v5 = [(UIColor *)self->_tintColor JSONObjectRepresentation];
  [v4 setObject:v5 forKeyedSubscript:@"tintColor"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_backgroundRingAlpha];
  [v4 setObject:v6 forKeyedSubscript:@"backgroundAlpha"];

  return v4;
}

@end