@interface APSDecayTimer
- (APSDecayTimer)initWithHourlyCostThreshold:(unint64_t)threshold costMaximum:(unint64_t)maximum identifier:(id)identifier;
- (void)_clearDecayTimer;
- (void)_decayCost;
- (void)_decayTimerFired;
- (void)_handleSignificantTimeChange;
- (void)addCost:(unint64_t)cost;
- (void)dealloc;
@end

@implementation APSDecayTimer

- (void)_decayCost
{
  [(NSDate *)self->_lastCostDecayAdjustment timeIntervalSinceNow];
  v4 = v3;
  if (v3 >= 2.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      *buf = 138412802;
      selfCopy2 = self;
      v22 = 2112;
      v23 = identifier;
      v24 = 2048;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@:%@ decay time %f is too far from the current date, throwing it out", buf, 0x20u);
    }

    self->_currentCost = 0;
    goto LABEL_11;
  }

  v5 = -v3;
  if (v4 > -0.0)
  {
    v5 = 0.0;
  }

  v6 = v5 * self->_hourlyCostThreshold / 3600.0;
  currentCost = self->_currentCost;
  v8 = currentCost >= v6;
  v9 = currentCost - v6;
  if (!v8)
  {
    v9 = 0;
  }

  self->_currentCost = v9;
  if (v6)
  {
LABEL_11:
    v11 = objc_alloc_init(NSDate);
    lastCostDecayAdjustment = self->_lastCostDecayAdjustment;
    self->_lastCostDecayAdjustment = v11;
  }

  if (!self->_decayTimer)
  {
    v13 = [PCSimpleTimer alloc];
    v14 = [NSString stringWithFormat:@"APSDecayTimer-%@:%@", self, self->_identifier];
    v15 = [v13 initWithTimeInterval:v14 serviceIdentifier:self target:"_decayTimerFired" selector:0 userInfo:420.0];
    decayTimer = self->_decayTimer;
    self->_decayTimer = v15;

    [(PCSimpleTimer *)self->_decayTimer setDisableSystemWaking:1];
    v17 = self->_decayTimer;
    v18 = +[NSRunLoop mainRunLoop];
    [(PCSimpleTimer *)v17 scheduleInRunLoop:v18];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_decayTimer;
      *buf = 138412546;
      selfCopy2 = self;
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ scheduled decay timer %@", buf, 0x16u);
    }
  }
}

- (APSDecayTimer)initWithHourlyCostThreshold:(unint64_t)threshold costMaximum:(unint64_t)maximum identifier:(id)identifier
{
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = APSDecayTimer;
  v9 = [(APSDecayTimer *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v9->_maxCost = maximum;
    v9->_hourlyCostThreshold = threshold;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, sub_1000B45C8, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v12 = objc_alloc_init(NSDate);
    lastCostDecayAdjustment = v10->_lastCostDecayAdjustment;
    v10->_lastCostDecayAdjustment = v12;

    v14 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v14;
  }

  return v10;
}

- (void)dealloc
{
  [(APSDecayTimer *)self _clearDecayTimer];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  v4.receiver = self;
  v4.super_class = APSDecayTimer;
  [(APSDecayTimer *)&v4 dealloc];
}

- (void)addCost:(unint64_t)cost
{
  [(APSDecayTimer *)self _decayCost];
  maxCost = self->_currentCost + cost;
  if (maxCost >= self->_maxCost)
  {
    maxCost = self->_maxCost;
  }

  self->_currentCost = maxCost;
}

- (void)_handleSignificantTimeChange
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = identifier;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@:%@ Resetting cost due to significant time change note", &v6, 0x16u);
  }

  v4 = objc_alloc_init(NSDate);
  lastCostDecayAdjustment = self->_lastCostDecayAdjustment;
  self->_lastCostDecayAdjustment = v4;

  self->_currentCost = 0;
}

- (void)_decayTimerFired
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    v4 = 138412546;
    selfCopy = self;
    v6 = 2112;
    v7 = identifier;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@:%@ decay timer fired", &v4, 0x16u);
  }

  [(APSDecayTimer *)self _clearDecayTimer];
  [(APSDecayTimer *)self _decayCost];
  [(APSDecayTimerDelegate *)self->_delegate decayTimerFired:self];
}

- (void)_clearDecayTimer
{
  [(PCSimpleTimer *)self->_decayTimer invalidate];
  decayTimer = self->_decayTimer;
  self->_decayTimer = 0;
}

@end