@interface MKVariableDelayTapRecognizer
- (MKVariableDelayTapRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (MKVariableDelayTapRecognizerDelegate)tapDelayDelegate;
- (void)reset;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(MKVariableDelayTapRecognizer *)self state])
  {
    v8 = [(MKVariableDelayTapRecognizer *)self tapDelayDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      if (self->originalMaximumIntervalBetweenSuccessiveTaps <= 0.0)
      {
        [(MKVariableDelayTapRecognizer *)self maximumIntervalBetweenSuccessiveTaps];
        self->originalMaximumIntervalBetweenSuccessiveTaps = v10;
      }

      v11 = [(MKVariableDelayTapRecognizer *)self tapDelayDelegate];
      originalMaximumIntervalBetweenSuccessiveTaps = self->originalMaximumIntervalBetweenSuccessiveTaps;
      v13 = [v6 anyObject];
      [v11 variableDelayTapRecognizer:self shouldWaitForNextTapForDuration:v13 afterTouch:originalMaximumIntervalBetweenSuccessiveTaps];
      [(MKVariableDelayTapRecognizer *)self setMaximumIntervalBetweenSuccessiveTaps:?];
    }
  }

  v14.receiver = self;
  v14.super_class = MKVariableDelayTapRecognizer;
  [(MKVariableDelayTapRecognizer *)&v14 touchesEnded:v6 withEvent:v7];
}

- (MKVariableDelayTapRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = MKVariableDelayTapRecognizer;
  v4 = [(MKVariableDelayTapRecognizer *)&v8 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v4->originalMaximumIntervalBetweenSuccessiveTaps = -1.0;
    v6 = v4;
  }

  return v5;
}

@end