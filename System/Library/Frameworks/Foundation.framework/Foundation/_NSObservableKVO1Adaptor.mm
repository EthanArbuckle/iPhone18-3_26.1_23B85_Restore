@interface _NSObservableKVO1Adaptor
- (BOOL)isEqual:(id)a3;
- (_NSObservableKVO1Adaptor)initWithObservable:(id)a3 observer:(id)a4 keyPath:(id)a5;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 changeKind:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7 indexes:(id)a8 context:(void *)a9;
- (void)finishObserving;
- (void)remove;
@end

@implementation _NSObservableKVO1Adaptor

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSObservableKVO1Adaptor;
  v5 = [(_NSConcreteObservation *)&v7 isEqual:?];
  if (v5)
  {
    LOBYTE(v5) = (objc_opt_isKindOfClass() & 1) != 0 && [(NSBoundKeyPath *)self->kp isEqual:*(a3 + 7)];
  }

  return v5;
}

- (_NSObservableKVO1Adaptor)initWithObservable:(id)a3 observer:(id)a4 keyPath:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _NSObservableKVO1Adaptor;
  v8 = [(_NSObservableKVO1Adaptor *)&v14 init];
  if (v8)
  {
    v8->super.super._RHSobserver = a4;
    v8->super.super._LHSobservable = a3;
    if ([(NSObserver *)v8->super.super._RHSobserver conformsToProtocol:&unk_1EEF70E88])
    {
      [(NSObserver *)v8->super.super._RHSobserver setObservation:v8];
    }

    v9 = [a5 _wantsChanges];
    v8->emitsChanges = v9;
    if (v9)
    {
      v10 = 39;
    }

    else
    {
      v10 = 37;
    }

    [(NSObservable *)v8->super.super._LHSobservable addObserver:v8 forKeyPath:*(a5 + 2) options:v10 context:&internalObservationContext];
    v8->kp = a5;
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

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 changeKind:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7 indexes:(id)a8 context:(void *)a9
{
  if (*MEMORY[0x1E695E738] == a7)
  {
    v10 = 0;
  }

  else
  {
    v10 = a7;
  }

  if (*MEMORY[0x1E695E738] == a6)
  {
    v11 = 0;
  }

  else
  {
    v11 = a6;
  }

  _NSKVO1AdaptorDeliver(self->super.super._LHSobservable, self->super.super._RHSobserver, self->emitsChanges, v10, v11, a8, a5, a3, a4);
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