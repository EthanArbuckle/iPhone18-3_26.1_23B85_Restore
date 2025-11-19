@interface JSATimerContext
- (JSATimerContext)initWithCallback:(id)a3 callbackArgs:(id)a4 ownerObject:(id)a5 repeating:(BOOL)a6 interval:(double)a7 timer:(id)a8;
- (id)description;
- (void)dealloc;
- (void)removeManagedReferences;
@end

@implementation JSATimerContext

- (JSATimerContext)initWithCallback:(id)a3 callbackArgs:(id)a4 ownerObject:(id)a5 repeating:(BOOL)a6 interval:(double)a7 timer:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = JSATimerContext;
  v18 = [(JSATimerContext *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_ownerObject, a5);
    v20 = [JSManagedValue managedValueWithValue:v14 andOwner:v16];
    managedCallback = v19->_managedCallback;
    v19->_managedCallback = v20;

    v22 = [v15 count];
    if (v22)
    {
      v22 = [[JSAManagedArray alloc] initWithArray:v15 ownerObject:v16];
    }

    managedArgs = v19->_managedArgs;
    v19->_managedArgs = v22;

    v19->_interval = a7;
    v19->_isRepeating = a6;
    objc_storeStrong(&v19->_timer, a8);
  }

  return v19;
}

- (id)description
{
  v3 = [(JSATimerContext *)self timer];
  v4 = [(JSATimerContext *)self isRepeating];
  [(JSATimerContext *)self interval];
  v6 = [NSString stringWithFormat:@"<JSATimerContext %p, timer=%p, repeating=%d, interval=%0.3gs>", self, v3, v4, v5];

  return v6;
}

- (void)removeManagedReferences
{
  v3 = [(JSManagedValue *)self->_managedCallback value];
  v4 = [v3 context];
  v5 = [v4 virtualMachine];
  [v5 removeManagedReference:self->_managedCallback withOwner:self->_ownerObject];

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