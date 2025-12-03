@interface JSATimer
- (void)cancel;
- (void)dealloc;
- (void)schedule;
- (void)setOnTimeout:(id)timeout;
@end

@implementation JSATimer

- (void)dealloc
{
  value = [(JSManagedValue *)self->_onTimeoutManagedValue value];
  context = [value context];
  virtualMachine = [context virtualMachine];
  [virtualMachine removeManagedReference:self->_onTimeoutManagedValue withOwner:self];

  v6.receiver = self;
  v6.super_class = JSATimer;
  [(JSATimer *)&v6 dealloc];
}

- (void)schedule
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  [(JSATimer *)self setSource:v3];
  delay = self->_delay;
  if (!delay)
  {
    self->_delay = &off_BA800;

    delay = self->_delay;
  }

  [(NSNumber *)delay doubleValue];
  v6 = dispatch_time(0, (v5 * 1000000000.0));
  dispatch_source_set_timer(v3, v6, v7, 0x5F5E100uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1114C;
  handler[3] = &unk_B20D8;
  handler[4] = self;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(v3);
}

- (void)cancel
{
  source = [(JSATimer *)self source];

  if (source)
  {
    source2 = [(JSATimer *)self source];
    dispatch_source_cancel(source2);

    [(JSATimer *)self setSource:0];
  }
}

- (void)setOnTimeout:(id)timeout
{
  onTimeoutManagedValue = self->_onTimeoutManagedValue;
  timeoutCopy = timeout;
  value = [(JSManagedValue *)onTimeoutManagedValue value];
  context = [value context];
  virtualMachine = [context virtualMachine];
  [virtualMachine removeManagedReference:self->_onTimeoutManagedValue withOwner:self];

  v9 = [JSManagedValue managedValueWithValue:timeoutCopy andOwner:self];

  v10 = self->_onTimeoutManagedValue;
  self->_onTimeoutManagedValue = v9;
}

@end