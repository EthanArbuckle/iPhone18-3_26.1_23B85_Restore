@interface CRLFidgetResolver
- (CRLFidgetResolver)init;
- (id)nonFidgetValue;
- (unint64_t)p_previousValidIndexFromIndex:(unint64_t)index;
- (void)p_advanceHead;
- (void)pushValue:(id)value;
- (void)pushValue:(id)value withTime:(double)time;
@end

@implementation CRLFidgetResolver

- (CRLFidgetResolver)init
{
  v3.receiver = self;
  v3.super_class = CRLFidgetResolver;
  result = [(CRLFidgetResolver *)&v3 init];
  if (result)
  {
    result->_fidgetThreshold = 0.1;
    result->_head = 9;
  }

  return result;
}

- (id)nonFidgetValue
{
  v3 = CFAbsoluteTimeGetCurrent() - self->_fidgetThreshold;
  head = self->_head;
  v5 = self->_values[head];
  v6 = v5;
  v7 = self->_times[self->_head];
  if (v5)
  {
    v8 = v7 <= v3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    while (1)
    {
      v10 = [(CRLFidgetResolver *)self p_previousValidIndexFromIndex:head, v7];
      if (v10 == self->_head)
      {
        break;
      }

      head = v10;
      v9 = self->_values[v10];

      v7 = self->_times[head];
      if (v9)
      {
        v11 = v7 <= v3;
      }

      else
      {
        v11 = 1;
      }

      v6 = v9;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (void)pushValue:(id)value
{
  valueCopy = value;
  [(CRLFidgetResolver *)self pushValue:valueCopy withTime:CFAbsoluteTimeGetCurrent()];
}

- (void)pushValue:(id)value withTime:(double)time
{
  valueCopy = value;
  [(CRLFidgetResolver *)self p_advanceHead];
  v7 = &self->super.isa + self->_head;
  v8 = v7[2];
  v7[2] = valueCopy;

  self->_times[self->_head] = time;
}

- (void)p_advanceHead
{
  head = self->_head;
  if (head == 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = head + 1;
  }

  self->_head = v3;
}

- (unint64_t)p_previousValidIndexFromIndex:(unint64_t)index
{
  if (index)
  {
    return index - 1;
  }

  else
  {
    return 9;
  }
}

@end