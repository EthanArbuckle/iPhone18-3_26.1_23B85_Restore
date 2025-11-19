@interface FlyoverStatusDebouncer
- (StatusDebouncerDelegate)delegate;
- (double)minimumDurationForOutput:(unint64_t)a3;
- (void)setInput:(unint64_t)a3;
- (void)setOutput:(unint64_t)a3;
- (void)timerFired:(id)a3;
- (void)updateOutput;
@end

@implementation FlyoverStatusDebouncer

- (StatusDebouncerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)minimumDurationForOutput:(unint64_t)a3
{
  result = 0.0;
  if (a3 - 2 < 3)
  {
    return 2.0;
  }

  return result;
}

- (void)timerFired:(id)a3
{
  timer = self->_timer;
  self->_timer = 0;

  [(FlyoverStatusDebouncer *)self updateOutput];
}

- (void)updateOutput
{
  v3 = [(FlyoverStatusDebouncer *)self input];

  [(FlyoverStatusDebouncer *)self setOutput:v3];
}

- (void)setOutput:(unint64_t)a3
{
  if (self->_output != a3)
  {
    self->_output = a3;
    [(FlyoverStatusDebouncer *)self minimumDurationForOutput:?];
    if (v4 > 0.0)
    {
      v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"timerFired:" selector:0 userInfo:0 repeats:?];
      timer = self->_timer;
      self->_timer = v5;
    }

    v7 = [(FlyoverStatusDebouncer *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(FlyoverStatusDebouncer *)self delegate];
      [v9 statusDebouncerOutputDidChange:self];
    }
  }
}

- (void)setInput:(unint64_t)a3
{
  if (self->_input != a3)
  {
    self->_input = a3;
    if (!self->_timer)
    {
      [(FlyoverStatusDebouncer *)self updateOutput];
    }
  }
}

@end