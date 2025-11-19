@interface _NSKVO1Adaptor
- (BOOL)isEqual:(id)a3;
- (_NSKVO1Adaptor)initWithObservable:(id)a3 observer:(id)a4 keyPath:(id)a5;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 changeKind:(unint64_t)a5 oldValue:(id)a6 newValue:(id)a7 indexes:(id)a8 context:(void *)a9;
- (void)finishObserving;
- (void)remove;
@end

@implementation _NSKVO1Adaptor

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _NSKVO1Adaptor;
  v5 = [(_NSConcreteObservation *)&v7 isEqual:?];
  if (v5)
  {
    LOBYTE(v5) = (objc_opt_isKindOfClass() & 1) != 0 && [(NSBoundKeyPath *)self->kp isEqual:*(a3 + 7)];
  }

  return v5;
}

- (_NSKVO1Adaptor)initWithObservable:(id)a3 observer:(id)a4 keyPath:(id)a5
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _NSKVO1Adaptor;
  v8 = [(_NSKVO1Adaptor *)&v12 init];
  if (v8)
  {
    v8->super._RHSobserver = a4;
    v8->super._LHSobservable = a3;
    if ([(NSObserver *)v8->super._RHSobserver conformsToProtocol:&unk_1EEF70E88])
    {
      [(NSObserver *)v8->super._RHSobserver setObservation:v8];
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

    [(NSObservable *)v8->super._LHSobservable addObserver:v8 forKeyPath:*(a5 + 2) options:v10 context:&internalObservationContext];
    v8->kp = a5;
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

  _NSKVO1AdaptorDeliver(self->super._LHSobservable, self->super._RHSobserver, self->emitsChanges, v10, v11, a8, a5, a3, a4);
}

- (void)remove
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->kp)
  {
    [(NSObservable *)self->super._LHSobservable removeObservation:self forObservableKeyPath:?];

    self->kp = 0;
  }

  v3.receiver = self;
  v3.super_class = _NSKVO1Adaptor;
  [(_NSConcreteObservation *)&v3 remove];
}

- (void)finishObserving
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->kp)
  {
    [(NSObservable *)self->super._LHSobservable removeObservation:self forObservableKeyPath:?];

    self->kp = 0;
  }

  v3.receiver = self;
  v3.super_class = _NSKVO1Adaptor;
  [(_NSConcreteObservation *)&v3 finishObserving];
}

@end