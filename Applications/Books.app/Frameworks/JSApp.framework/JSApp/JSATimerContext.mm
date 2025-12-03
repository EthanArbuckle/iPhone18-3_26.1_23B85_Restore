@interface JSATimerContext
- (JSATimerContext)initWithCallback:(id)callback callbackArgs:(id)args ownerObject:(id)object repeating:(BOOL)repeating interval:(double)interval timer:(id)timer;
- (id)description;
- (void)dealloc;
- (void)removeManagedReferences;
@end

@implementation JSATimerContext

- (JSATimerContext)initWithCallback:(id)callback callbackArgs:(id)args ownerObject:(id)object repeating:(BOOL)repeating interval:(double)interval timer:(id)timer
{
  callbackCopy = callback;
  argsCopy = args;
  objectCopy = object;
  timerCopy = timer;
  v25.receiver = self;
  v25.super_class = JSATimerContext;
  v18 = [(JSATimerContext *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ownerObject, object);
    v20 = [JSManagedValue managedValueWithValue:callbackCopy andOwner:objectCopy];
    managedCallback = v19->_managedCallback;
    v19->_managedCallback = v20;

    v22 = [argsCopy count];
    if (v22)
    {
      v22 = [[JSAManagedArray alloc] initWithArray:argsCopy ownerObject:objectCopy];
    }

    managedArgs = v19->_managedArgs;
    v19->_managedArgs = v22;

    v19->_interval = interval;
    v19->_isRepeating = repeating;
    objc_storeStrong(&v19->_timer, timer);
  }

  return v19;
}

- (id)description
{
  timer = [(JSATimerContext *)self timer];
  isRepeating = [(JSATimerContext *)self isRepeating];
  [(JSATimerContext *)self interval];
  v6 = [NSString stringWithFormat:@"<JSATimerContext %p, timer=%p, repeating=%d, interval=%0.3gs>", self, timer, isRepeating, v5];

  return v6;
}

- (void)removeManagedReferences
{
  value = [(JSManagedValue *)self->_managedCallback value];
  context = [value context];
  virtualMachine = [context virtualMachine];
  [virtualMachine removeManagedReference:self->_managedCallback withOwner:self->_ownerObject];

  managedCallback = self->_managedCallback;
  self->_managedCallback = 0;

  managedArgs = self->_managedArgs;
  self->_managedArgs = 0;

  timer = self->_timer;
  self->_timer = 0;
}

- (void)dealloc
{
  if (self->_managedCallback)
  {
    v3 = JSALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_7FBB8(v3);
    }

    [(JSATimerContext *)self removeManagedReferences];
  }

  v4.receiver = self;
  v4.super_class = JSATimerContext;
  [(JSATimerContext *)&v4 dealloc];
}

@end