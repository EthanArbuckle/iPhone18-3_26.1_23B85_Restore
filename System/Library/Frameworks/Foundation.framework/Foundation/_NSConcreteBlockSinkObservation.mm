@interface _NSConcreteBlockSinkObservation
- (BOOL)isEqual:(id)equal;
- (_NSConcreteBlockSinkObservation)initWithObservable:(id)observable blockSink:(id)sink tag:(int)tag;
- (void)_receiveBox:(id)box;
- (void)dealloc;
- (void)remove;
@end

@implementation _NSConcreteBlockSinkObservation

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  if ((objc_opt_isKindOfClass() & 1) != 0 && *(equal + 1) == self->_LHSobservable)
  {
    return *(equal + 2) == self->_block;
  }

  return 0;
}

- (_NSConcreteBlockSinkObservation)initWithObservable:(id)observable blockSink:(id)sink tag:(int)tag
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSConcreteBlockSinkObservation;
  v8 = [(_NSConcreteBlockSinkObservation *)&v10 init];
  if (v8)
  {
    v8->_block = [sink copy];
    v8->_LHSobservable = observable;
    v8->_tag = tag;
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

- (void)_receiveBox:(id)box
{
  if (*(box + 2) == self->_LHSobservable)
  {
    v3 = *(box + 6);
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