@interface AVWeaklyObservedObjectClientBlockKVONotifier
- (AVWeaklyObservedObjectClientBlockKVONotifier)initWithCallbackContextRegistry:(id)registry observer:(id)observer object:(id)object keyPath:(id)path options:(unint64_t)options block:(id)block;
- (void)callbackDidFireWithChangeDictionary:(id)dictionary;
- (void)cancelCallbacks;
- (void)dealloc;
- (void)start;
@end

@implementation AVWeaklyObservedObjectClientBlockKVONotifier

- (AVWeaklyObservedObjectClientBlockKVONotifier)initWithCallbackContextRegistry:(id)registry observer:(id)observer object:(id)object keyPath:(id)path options:(unint64_t)options block:(id)block
{
  if (!registry)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "callbackContextRegistry != nil";
    goto LABEL_16;
  }

  if (!observer)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "observer != nil";
    goto LABEL_16;
  }

  if (!object)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "object != nil";
    goto LABEL_16;
  }

  if (!path)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "keyPath != nil";
    goto LABEL_16;
  }

  if (!block)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = "block != nil";
LABEL_16:
    v20 = [v17 exceptionWithName:v18 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", observer, object, path, options, block, v19), 0}];
    objc_exception_throw(v20);
  }

  v21.receiver = self;
  v21.super_class = AVWeaklyObservedObjectClientBlockKVONotifier;
  v14 = [(AVWeaklyObservedObjectClientBlockKVONotifier *)&v21 init];
  if (v14)
  {
    registryCopy = registry;
    if (registryCopy)
    {
      registryCopy = CFRetain(registryCopy);
    }

    v14->_callbackContextRegistry = registryCopy;
    v14->_observer = observer;
    v14->_weakReferenceToObject = [[AVWeakReference alloc] initWithReferencedObject:object];
    v14->_unsafeUnretainedObject = object;
    v14->_keyPath = [path copy];
    v14->_options = options;
    v14->_block = [block copy];
  }

  return v14;
}

- (void)dealloc
{
  unsafeUnretainedObject = self->_unsafeUnretainedObject;
  if (unsafeUnretainedObject)
  {
    v4 = NSStringFromProtocol(&unk_1F0AD5A68);
    NSLog(&cfstr_WeaklyObserved.isa, unsafeUnretainedObject, self, unsafeUnretainedObject, v4);
  }

  [(AVCallbackContextRegistry *)self->_callbackContextRegistry unregisterCallbackContextForToken:self->_callbackContextToken];
  callbackContextRegistry = self->_callbackContextRegistry;
  if (callbackContextRegistry)
  {
    CFRelease(callbackContextRegistry);
    v6 = self->_callbackContextRegistry;
  }

  else
  {
    v6 = 0;
  }

  v7.receiver = self;
  v7.super_class = AVWeaklyObservedObjectClientBlockKVONotifier;
  [(AVWeaklyObservedObjectClientBlockKVONotifier *)&v7 dealloc];
}

- (void)start
{
  referencedObject = [(AVWeakReference *)self->_weakReferenceToObject referencedObject];
  v4 = [(AVCallbackContextRegistry *)self->_callbackContextRegistry registerCallbackContextObject:self];
  self->_callbackContextToken = v4;
  [referencedObject addObserver:self->_observer forKeyPath:self->_keyPath options:self->_options context:v4];

  [referencedObject addCallbackToCancelDuringDeallocation:self];
}

- (void)callbackDidFireWithChangeDictionary:(id)dictionary
{
  if ([(AVWeakReference *)self->_weakReferenceToObject referencedObject])
  {
    v4 = *(self->_block + 2);

    v4();
  }

  else
  {
    NSLog(&cfstr_ReceivedKvoFor.isa, self->_unsafeUnretainedObject, self->_unsafeUnretainedObject);
  }
}

- (void)cancelCallbacks
{
  unsafeUnretainedObject = self->_unsafeUnretainedObject;
  if (unsafeUnretainedObject && FigAtomicCompareAndSwapPtr())
  {
    referencedObject = [(AVWeakReference *)self->_weakReferenceToObject referencedObject];
    if (!referencedObject)
    {
      referencedObject = unsafeUnretainedObject;
    }

    [(AVWeakObservable *)referencedObject removeObserver:self->_observer forKeyPath:self->_keyPath context:self->_callbackContextToken];
    callbackContextRegistry = self->_callbackContextRegistry;
    callbackContextToken = self->_callbackContextToken;

    [(AVCallbackContextRegistry *)callbackContextRegistry unregisterCallbackContextForToken:callbackContextToken];
  }
}

@end