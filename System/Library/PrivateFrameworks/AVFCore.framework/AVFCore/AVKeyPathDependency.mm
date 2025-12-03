@interface AVKeyPathDependency
- (AVKeyPathDependency)initWithObject:(id)object thatHasPropertyWithKey:(id)key whoseValueDependsOnValueAtKeyPath:(id)path;
- (id)description;
- (void)_reactToSecondLevelPropertyChange:(id)change;
- (void)_reactToTopLevelPropertyChange:(id)change;
- (void)_startObservingSecondLevelPropertyOnNewCurrentValueForTopLevelDependencyProperty:(id)property;
- (void)dealloc;
- (void)initializationIsCompleteForObject:(id)object;
@end

@implementation AVKeyPathDependency

- (AVKeyPathDependency)initWithObject:(id)object thatHasPropertyWithKey:(id)key whoseValueDependsOnValueAtKeyPath:(id)path
{
  if (!object)
  {
    selfCopy5 = self;
    selfCopy2 = self;
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = "object != nil";
    goto LABEL_10;
  }

  if (!key)
  {
    selfCopy5 = self;
    selfCopy4 = self;
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = "dependentPropertyKey != nil";
    goto LABEL_10;
  }

  if (!path)
  {
    selfCopy5 = self;
    selfCopy6 = self;
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = "dependencyKeyPath != nil";
LABEL_10:
    v24 = [v19 exceptionWithName:v20 reason:AVMethodExceptionReasonWithObjectAndSelector(selfCopy5 userInfo:{a2, @"invalid parameter not satisfying: %s", v14, v15, v16, v17, v18, v21), 0}];
    objc_exception_throw(v24);
  }

  v25.receiver = self;
  v25.super_class = AVKeyPathDependency;
  v9 = [(AVKeyPathDependency *)&v25 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9->_subObjectRegistrationQueue = dispatch_queue_create("com.apple.avfoundation.keypathdependency.registration", v10);
    v9->_KVODispatcher = +[AVKVODispatcher sharedKVODispatcher];
    v9->_weakReferenceToObject = [[AVWeakReference alloc] initWithReferencedObject:object];
    v9->_dependentKey = [key copy];
    v9->_dependencyKeyPath = [path copy];
  }

  return v9;
}

- (void)dealloc
{
  subObjectRegistrationQueue = self->_subObjectRegistrationQueue;
  if (subObjectRegistrationQueue)
  {
    dispatch_release(subObjectRegistrationQueue);
  }

  v4.receiver = self;
  v4.super_class = AVKeyPathDependency;
  [(AVKeyPathDependency *)&v4 dealloc];
}

- (id)description
{
  referencedObject = [(AVWeakReference *)self->_weakReferenceToObject referencedObject];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (!referencedObject)
  {
    referencedObject = @"<deallocated>";
  }

  return [v4 stringWithFormat:@"<%@: %p, target=%@, dependentKey=%@, dependencyKeyPath=%@>", v6, self, referencedObject, self->_dependentKey, -[AVTwoPartKeyPath keyPathString](self->_dependencyKeyPath, "keyPathString")];
}

- (void)initializationIsCompleteForObject:(id)object
{
  if ([(AVWeakReference *)self->_weakReferenceToObject referencedObject]!= object)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Must invoke with object passed to initializer", v6, v7, v8, v9, v10, v13), 0}];
    objc_exception_throw(v12);
  }

  [(AVKVODispatcher *)self->_KVODispatcher startObservingValueAtKeyPath:[(AVTwoPartKeyPath *)self->_dependencyKeyPath topLevelPropertyKey] withoutKeepingAliveObservedObject:object options:8 usingBlock:[AVWeakObservationBlockFactory weakObservationBlockForWeakObserver:self passedToBlock:&__block_literal_global_194]];
  v11 = [object valueForKey:{-[AVTwoPartKeyPath topLevelPropertyKey](self->_dependencyKeyPath, "topLevelPropertyKey")}];

  [(AVKeyPathDependency *)self _startObservingSecondLevelPropertyOnNewCurrentValueForTopLevelDependencyProperty:v11];
}

- (void)_startObservingSecondLevelPropertyOnNewCurrentValueForTopLevelDependencyProperty:(id)property
{
  if (property)
  {
    self->_leafPropertyChangeNotifier = [(AVKVODispatcher *)self->_KVODispatcher startObservingValueAtKeyPath:[(AVTwoPartKeyPath *)self->_dependencyKeyPath secondLevelPropertyKey] ofObject:property options:8 usingBlock:[AVObservationBlockFactory observationBlockForWeakObserver:self passedToBlock:&__block_literal_global_197]];
  }
}

- (void)_reactToTopLevelPropertyChange:(id)change
{
  referencedObject = [(AVWeakReference *)self->_weakReferenceToObject referencedObject];
  if (referencedObject)
  {
    v6 = referencedObject;
    if (change && (v7 = [change objectForKey:*MEMORY[0x1E696A4F8]]) != 0 && objc_msgSend(v7, "BOOLValue"))
    {
      dependentKey = self->_dependentKey;

      [v6 willChangeValueForKey:dependentKey];
    }

    else
    {
      subObjectRegistrationQueue = self->_subObjectRegistrationQueue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__AVKeyPathDependency__reactToTopLevelPropertyChange___block_invoke;
      v10[3] = &unk_1E7460DF0;
      v10[4] = v6;
      v10[5] = self;
      dispatch_sync(subObjectRegistrationQueue, v10);
      [v6 didChangeValueForKey:self->_dependentKey];
    }
  }
}

uint64_t __54__AVKeyPathDependency__reactToTopLevelPropertyChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKey:{objc_msgSend(*(*(a1 + 40) + 40), "topLevelPropertyKey")}];
  v3 = *(a1 + 40);
  if (v3[6])
  {
    [v3[6] cancelCallbacks];

    *(*(a1 + 40) + 48) = 0;
    v3 = *(a1 + 40);
  }

  return [v3 _startObservingSecondLevelPropertyOnNewCurrentValueForTopLevelDependencyProperty:v2];
}

- (void)_reactToSecondLevelPropertyChange:(id)change
{
  referencedObject = [(AVWeakReference *)self->_weakReferenceToObject referencedObject];
  if (referencedObject)
  {
    v6 = referencedObject;
    if (change && (v7 = [change objectForKey:*MEMORY[0x1E696A4F8]]) != 0 && objc_msgSend(v7, "BOOLValue"))
    {
      dependentKey = self->_dependentKey;

      [v6 willChangeValueForKey:dependentKey];
    }

    else
    {
      v9 = self->_dependentKey;

      [v6 didChangeValueForKey:v9];
    }
  }
}

@end