@interface QLPXNumberFilter
- (QLPXNumberFilter)initWithInput:(double)input;
- (double)currentTime;
- (void)_setOutput:(double)output;
- (void)_updateIfNeeded;
- (void)_updateOutputIfNeeded;
- (void)didPerformChanges;
- (void)invalidateOutput;
- (void)performChanges:(id)changes;
- (void)setInput:(double)input;
- (void)setTime:(double)time;
@end

@implementation QLPXNumberFilter

- (QLPXNumberFilter)initWithInput:(double)input
{
  v8.receiver = self;
  v8.super_class = QLPXNumberFilter;
  v4 = [(QLPXObservable *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_input = input;
    [(QLPXNumberFilter *)v4 initialOutputForInput:input];
    v5->_output = v6;
  }

  return v5;
}

- (void)_setOutput:(double)output
{
  if (self->_output != output)
  {
    self->_output = output;
    [(QLPXObservable *)self signalChange:2];
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = QLPXNumberFilter;
  [(QLPXObservable *)&v3 performChanges:changes];
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = QLPXNumberFilter;
  [(QLPXObservable *)&v3 didPerformChanges];
  [(QLPXNumberFilter *)self _updateIfNeeded];
}

- (void)setInput:(double)input
{
  if (self->_input != input)
  {
    self->_input = input;
    [(QLPXObservable *)self signalChange:1];

    [(QLPXNumberFilter *)self _invalidateOutput];
  }
}

- (void)setTime:(double)time
{
  if (self->_time != time)
  {
    self->_time = time;
    [(QLPXNumberFilter *)self _invalidateOutput];
  }
}

- (double)currentTime
{
  [(QLPXNumberFilter *)self time];
  if (result == 0.0)
  {
    v3 = MEMORY[0x277CBEAA8];

    [v3 timeIntervalSinceReferenceDate];
  }

  return result;
}

- (void)invalidateOutput
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__QLPXNumberFilter_invalidateOutput__block_invoke;
  v2[3] = &unk_278B57CA8;
  v2[4] = self;
  [(QLPXNumberFilter *)self performChanges:v2];
}

- (void)_updateIfNeeded
{
  if ([(QLPXNumberFilter *)self _needsUpdate])
  {

    [(QLPXNumberFilter *)self _updateOutputIfNeeded];
  }
}

- (void)_updateOutputIfNeeded
{
  if (self->_needsUpdateFlags.output)
  {
    self->_needsUpdateFlags.output = 0;
    [(QLPXNumberFilter *)self currentTime];
    v5 = v4;
    [(QLPXNumberFilter *)self updatedOutput];
    [(QLPXNumberFilter *)self _setOutput:?];

    [(QLPXNumberFilter *)self _setLastTime:v5];
  }
}

@end