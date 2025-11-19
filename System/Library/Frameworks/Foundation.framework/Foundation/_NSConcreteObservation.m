@interface _NSConcreteObservation
- (BOOL)isEqual:(id)a3;
- (_NSConcreteObservation)initWithObservable:(id)a3 observer:(id)a4;
- (void)_observerStorageOfSize:(unint64_t)a3;
- (void)_receiveBox:(id)a3;
- (void)dealloc;
- (void)finishObserving;
- (void)remove;
@end

@implementation _NSConcreteObservation

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
    return *(a3 + 2) == self->_RHSobserver;
  }

  return 0;
}

- (_NSConcreteObservation)initWithObservable:(id)a3 observer:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _NSConcreteObservation;
  v6 = [(_NSConcreteObservation *)&v10 init];
  if (v6)
  {
    v6->_RHSobserver = a4;
    v6->_LHSobservable = a3;
    if ([(NSObserver *)v6->_RHSobserver conformsToProtocol:&unk_1EEF70E88])
    {
      [(NSObserver *)v6->_RHSobserver setObservation:v6];
    }

    if ([(_NSConcreteObservation *)v6 conformsToProtocol:&unk_1EEF6F120])
    {
      if (([(NSObserver *)v6->_RHSobserver conformsToProtocol:&unk_1EEF6F120]& 1) == 0)
      {
        __assert_rtn("[_NSConcreteObservation initWithObservable:observer:]", "NSObserving.m", 113, "[_RHSobserver conformsToProtocol:@protocol(NSObservable)]");
      }

      v7 = [_NSObserverList _copyObserversOfObject:1 creatingIfAbsent:?];
      v8 = v7;
      if (v7)
      {
        addObserver(v7, v6);
      }
    }
  }

  return v6;
}

- (void)_observerStorageOfSize:(unint64_t)a3
{
  if (a3 != 32)
  {
    __assert_rtn("[_NSConcreteObservation _observerStorageOfSize:]", "NSObserving.m", 126, "sz == 4 * sizeof(id)");
  }

  return self->_observers;
}

- (void)remove
{
  LHSobservable = self->_LHSobservable;
  if (LHSobservable)
  {
    v4 = [_NSObserverList _copyObserversOfObject:0 creatingIfAbsent:?];
    if (v4)
    {
      v5 = v4;
      removeObservation(v4, self->_RHSobserver);
      v4 = v5;
    }
  }
}

- (void)finishObserving
{
  v4 = *MEMORY[0x1E69E9840];
  [(_NSConcreteObservation *)self remove];
  v3.receiver = self;
  v3.super_class = _NSConcreteObservation;
  [(_NSConcreteObservation *)&v3 finishObserving];
}

- (void)_receiveBox:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (*(a3 + 2) == self->_RHSobserver)
  {
    v5 = *(a3 + 1);
    v6 = *(a3 + 6);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v13 = __38___NSConcreteObservation__receiveBox___block_invoke;
    v14 = &unk_1E69F30D8;
    v15 = self;
    v16[0] = 0;
    StackObservedValueClassAndBoxSize = getStackObservedValueClassAndBoxSize(v16);
    MEMORY[0x1EEE9AC00](StackObservedValueClassAndBoxSize);
    v10 = objc_constructInstance(v9, &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10[6] = v6;
    *(v10 + 1) = v5;
    *(v10 + 2) = self;
    v13(v12, v10);
  }

  else
  {
    LHSobservable = self->_LHSobservable;

    [(NSObservable *)LHSobservable _receiveBox:?];
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(_NSConcreteObservation *)self remove];

  [(_NSConcreteObservation *)self _destroyObserverList];
  v3.receiver = self;
  v3.super_class = _NSConcreteObservation;
  [(_NSConcreteObservation *)&v3 dealloc];
}

@end