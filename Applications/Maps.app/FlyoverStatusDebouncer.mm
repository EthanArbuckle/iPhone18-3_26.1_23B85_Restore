@interface FlyoverStatusDebouncer
- (StatusDebouncerDelegate)delegate;
- (double)minimumDurationForOutput:(unint64_t)output;
- (void)setInput:(unint64_t)input;
- (void)setOutput:(unint64_t)output;
- (void)timerFired:(id)fired;
- (void)updateOutput;
@end

@implementation FlyoverStatusDebouncer

- (StatusDebouncerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)minimumDurationForOutput:(unint64_t)output
{
  result = 0.0;
  if (output - 2 < 3)
  {
    return 2.0;
  }

  return result;
}

- (void)timerFired:(id)fired
{
  timer = self->_timer;
  self->_timer = 0;

  [(FlyoverStatusDebouncer *)self updateOutput];
}

- (void)updateOutput
{
  input = [(FlyoverStatusDebouncer *)self input];

  [(FlyoverStatusDebouncer *)self setOutput:input];
}

- (void)setOutput:(unint64_t)output
{
  if (self->_output != output)
  {
    self->_output = output;
    [(FlyoverStatusDebouncer *)self minimumDurationForOutput:?];
    if (v4 > 0.0)
    {
      v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"timerFired:" selector:0 userInfo:0 repeats:?];
      timer = self->_timer;
      self->_timer = v5;
    }

    delegate = [(FlyoverStatusDebouncer *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(FlyoverStatusDebouncer *)self delegate];
      [delegate2 statusDebouncerOutputDidChange:self];
    }
  }
}

- (void)setInput:(unint64_t)input
{
  if (self->_input != input)
  {
    self->_input = input;
    if (!self->_timer)
    {
      [(FlyoverStatusDebouncer *)self updateOutput];
    }
  }
}

@end