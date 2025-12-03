@interface _NSObservableKVO1Adaptor
- (BOOL)isEqual:(id)equal;
- (_NSObservableKVO1Adaptor)initWithObservable:(id)observable observer:(id)observer keyPath:(id)path;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object changeKind:(unint64_t)kind oldValue:(id)value newValue:(id)newValue indexes:(id)indexes context:(void *)context;
- (void)finishObserving;
- (void)remove;
@end

@implementation _NSObservableKVO1Adaptor

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSObservableKVO1Adaptor;
  v5 = [(_NSConcreteObservation *)&v7 isEqual:?];
  if (v5)
  {
    LOBYTE(v5) = (objc_opt_isKindOfClass() & 1) != 0 && [(NSBoundKeyPath *)self->kp isEqual:*(equal + 7)];
  }

  return v5;
}

- (_NSObservableKVO1Adaptor)initWithObservable:(id)observable observer:(id)observer keyPath:(id)path
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _NSObservableKVO1Adaptor;
  v8 = [(_NSObservableKVO1Adaptor *)&v14 init];
  if (v8)
  {
    v8->super.super._RHSobserver = observer;
    v8->super.super._LHSobservable = observable;
    if ([(NSObserver *)v8->super.super._RHSobserver conformsToProtocol:&unk_1EEF70E88])
    {
      [(NSObserver *)v8->super.super._RHSobserver setObservation:v8];
    }

    _wantsChanges = [path _wantsChanges];
    v8->emitsChanges = _wantsChanges;
    if (_wantsChanges)
    {
      v10 = 39;
    }

    else
    {
      v10 = 37;
    }

    [(NSObservable *)v8->super.super._LHSobservable addObserver:v8 forKeyPath:*(path + 2) options:v10 context:&internalObservationContext];
    v8->kp = path;
    if (([(NSObserver *)v8->super.super._RHSobserver conformsToProtocol:&unk_1EEF6F120]& 1) == 0)
    {
      __assert_rtn("[_NSObservableKVO1Adaptor initWithObservable:observer:keyPath:]", "NSObservingKeyPathSupport.m", 412, "[_RHSobserver conformsToProtocol:@protocol(NSObservable)]");
    }

    v11 = [_NSObserverList _copyObserversOfObject:1 creatingIfAbsent:?];
    v12 = v11;
    if (v11)
    {
      addObserver(v11, v8);
    }
  }

  return v8;
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object changeKind:(unint64_t)kind oldValue:(id)value newValue:(id)newValue indexes:(id)indexes context:(void *)context
{
  if (*MEMORY[0x1E695E738] == newValue)
  {
    newValueCopy = 0;
  }

  else
  {
    newValueCopy = newValue;
  }

  if (*MEMORY[0x1E695E738] == value)
  {
    valueCopy = 0;
  }

  else
  {
    valueCopy = value;
  }

  _NSKVO1AdaptorDeliver(self->super.super._LHSobservable, self->super.super._RHSobserver, self->emitsChanges, newValueCopy, valueCopy, indexes, kind, path, object);
}

- (void)remove
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->kp)
  {
    [(NSObservable *)self->super.super._LHSobservable removeObservation:self forObservableKeyPath:?];

    self->kp = 0;
  }

  v3.receiver = self;
  v3.super_class = _NSObservableKVO1Adaptor;
  [(_NSConcreteObservation *)&v3 remove];
}

- (void)finishObserving
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->kp)
  {
    [(NSObservable *)self->super.super._LHSobservable removeObservation:self forObservableKeyPath:?];

    self->kp = 0;
  }

  v3.receiver = self;
  v3.super_class = _NSObservableKVO1Adaptor;
  [(_NSConcreteObservation *)&v3 finishObserving];
}

@end