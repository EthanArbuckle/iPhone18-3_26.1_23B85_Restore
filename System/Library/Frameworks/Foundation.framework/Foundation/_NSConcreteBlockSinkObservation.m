@interface _NSConcreteBlockSinkObservation
- (BOOL)isEqual:(id)a3;
- (_NSConcreteBlockSinkObservation)initWithObservable:(id)a3 blockSink:(id)a4 tag:(int)a5;
- (void)_receiveBox:(id)a3;
- (void)dealloc;
- (void)remove;
@end

@implementation _NSConcreteBlockSinkObservation

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 && *(a3 + 1) == self->_LHSobservable)
  {
    return *(a3 + 2) == self->_block;
  }

  return 0;
}

- (_NSConcreteBlockSinkObservation)initWithObservable:(id)a3 blockSink:(id)a4 tag:(int)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSConcreteBlockSinkObservation;
  v8 = [(_NSConcreteBlockSinkObservation *)&v10 init];
  if (v8)
  {
    v8->_block = [a4 copy];
    v8->_LHSobservable = a3;
    v8->_tag = a5;
  }

  return v8;
}

- (void)remove
{
  LHSobservable = self->_LHSobservable;
  if (LHSobservable)
  {
    self->_LHSobservable = 0;
    block = self->_block;
    self->_block = 0;
    v4 = [_NSObserverList _copyObserversOfObject:0 creatingIfAbsent:?];
    v5 = v4;
    if (v4)
    {
      removeObservation(v4, self);
    }
  }
}

- (void)_receiveBox:(id)a3
{
  if (*(a3 + 2) == self->_LHSobservable)
  {
    v3 = *(a3 + 6);
    tag = self->_tag;
    if (v3 != tag || tag == 3)
    {
      if (v3 == 3)
      {
        [(_NSConcreteBlockSinkObservation *)self finishObserving];
      }
    }

    else
    {
      (*(self->_block + 2))();
    }
  }

  else
  {
    [(NSObservable *)self->_LHSobservable _receiveBox:?];
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(_NSConcreteBlockSinkObservation *)self remove];
  v3.receiver = self;
  v3.super_class = _NSConcreteBlockSinkObservation;
  [(_NSConcreteBlockSinkObservation *)&v3 dealloc];
}

@end