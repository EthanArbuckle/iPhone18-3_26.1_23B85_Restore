@interface MKVariableDelayTapRecognizer
- (MKVariableDelayTapRecognizer)initWithTarget:(id)target action:(SEL)action;
- (MKVariableDelayTapRecognizerDelegate)tapDelayDelegate;
- (void)reset;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation MKVariableDelayTapRecognizer

- (MKVariableDelayTapRecognizerDelegate)tapDelayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->tapDelayDelegate);

  return WeakRetained;
}

- (void)reset
{
  if (self->originalMaximumIntervalBetweenSuccessiveTaps > 0.0)
  {
    [(MKVariableDelayTapRecognizer *)self setMaximumIntervalBetweenSuccessiveTaps:?];
    self->originalMaximumIntervalBetweenSuccessiveTaps = -1.0;
  }

  v3.receiver = self;
  v3.super_class = MKVariableDelayTapRecognizer;
  [(MKVariableDelayTapRecognizer *)&v3 reset];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![(MKVariableDelayTapRecognizer *)self state])
  {
    tapDelayDelegate = [(MKVariableDelayTapRecognizer *)self tapDelayDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      if (self->originalMaximumIntervalBetweenSuccessiveTaps <= 0.0)
      {
        [(MKVariableDelayTapRecognizer *)self maximumIntervalBetweenSuccessiveTaps];
        self->originalMaximumIntervalBetweenSuccessiveTaps = v10;
      }

      tapDelayDelegate2 = [(MKVariableDelayTapRecognizer *)self tapDelayDelegate];
      originalMaximumIntervalBetweenSuccessiveTaps = self->originalMaximumIntervalBetweenSuccessiveTaps;
      anyObject = [endedCopy anyObject];
      [tapDelayDelegate2 variableDelayTapRecognizer:self shouldWaitForNextTapForDuration:anyObject afterTouch:originalMaximumIntervalBetweenSuccessiveTaps];
      [(MKVariableDelayTapRecognizer *)self setMaximumIntervalBetweenSuccessiveTaps:?];
    }
  }

  v14.receiver = self;
  v14.super_class = MKVariableDelayTapRecognizer;
  [(MKVariableDelayTapRecognizer *)&v14 touchesEnded:endedCopy withEvent:eventCopy];
}

- (MKVariableDelayTapRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = MKVariableDelayTapRecognizer;
  v4 = [(MKVariableDelayTapRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v4->originalMaximumIntervalBetweenSuccessiveTaps = -1.0;
    v6 = v4;
  }

  return v5;
}

@end