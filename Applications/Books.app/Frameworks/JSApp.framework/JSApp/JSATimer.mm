@interface JSATimer
- (void)cancel;
- (void)dealloc;
- (void)schedule;
- (void)setOnTimeout:(id)a3;
@end

@implementation JSATimer

- (void)dealloc
{
  v3 = [(JSManagedValue *)self->_onTimeoutManagedValue value];
  v4 = [v3 context];
  v5 = [v4 virtualMachine];
  [v5 removeManagedReference:self->_onTimeoutManagedValue withOwner:self];

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
  v3 = [(JSATimer *)self source];

  if (v3)
  {
    v4 = [(JSATimer *)self source];
    dispatch_source_cancel(v4);

    [(JSATimer *)self setSource:0];
  }
}

- (void)setOnTimeout:(id)a3
{
  onTimeoutManagedValue = self->_onTimeoutManagedValue;
  v5 = a3;
  v6 = [(JSManagedValue *)onTimeoutManagedValue value];
  v7 = [v6 context];
  v8 = [v7 virtualMachine];
  [v8 removeManagedReference:self->_onTimeoutManagedValue withOwner:self];

  v9 = [JSManagedValue managedValueWithValue:v5 andOwner:self];

  v10 = self->_onTimeoutManagedValue;
  self->_onTimeoutManagedValue = v9;
}

@end