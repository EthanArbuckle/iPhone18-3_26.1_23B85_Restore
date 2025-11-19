@interface SizeContext
+ (id)sharedInstance;
- (BOOL)hasViewHierarchyForCurrentContext;
- (SizeContext)init;
- (id)viewHierarchyForCurrentContext;
- (void)popContextFromViewHierarchy:(id)a3;
@end

@implementation SizeContext

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SizeContext sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __29__SizeContext_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SizeContext);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;
}

- (SizeContext)init
{
  v6.receiver = self;
  v6.super_class = SizeContext;
  v2 = [(SizeContext *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    windowContextStack = v2->_windowContextStack;
    v2->_windowContextStack = v3;
  }

  return v2;
}

- (id)viewHierarchyForCurrentContext
{
  if ([(NSMutableArray *)self->_windowContextStack count])
  {
    v4 = [(NSMutableArray *)self->_windowContextStack lastObject];
  }

  else
  {
    if (_shouldAssertOnUnknownWindow_onceToken != -1)
    {
      [SizeContext popContextFromViewHierarchy:];
    }

    if (_shouldAssertOnUnknownWindow_shouldAssert == 1)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"EKUIDeviceCapabilities.m" lineNumber:223 description:{@"Multiple windows exist, and we do not have a view hierarchy from which to derive the current sizing context."}];

      v4 = 0;
    }

    else
    {
      v4 = EKUIMainWindowForMultiwindowError();
    }
  }

  return v4;
}

- (BOOL)hasViewHierarchyForCurrentContext
{
  if (_shouldAssertOnUnknownWindow_onceToken != -1)
  {
    [SizeContext popContextFromViewHierarchy:];
  }

  return _shouldAssertOnUnknownWindow_shouldAssert != 1 || [(NSMutableArray *)self->_windowContextStack count]!= 0;
}

- (void)popContextFromViewHierarchy:(id)a3
{
  v6 = a3;
  if (_shouldAssertOnUnknownWindow_onceToken != -1)
  {
    [SizeContext popContextFromViewHierarchy:];
  }

  if (_shouldAssertOnUnknownWindow_shouldAssert == 1)
  {
    v5 = [(NSMutableArray *)self->_windowContextStack lastObject];
    if (v5 != v6)
    {
      [(SizeContext *)a2 popContextFromViewHierarchy:?];
    }
  }

  [(NSMutableArray *)self->_windowContextStack removeLastObject];
}

- (void)popContextFromViewHierarchy:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKUIDeviceCapabilities.m" lineNumber:208 description:@"Attempting to pop an object that's not on top of the stack."];
}

@end