@interface NSUndoManagerProxy
- (BOOL)_tryRetain;
- (BOOL)isKindOfClass:(Class)class;
- (NSUndoManagerProxy)retain;
- (void)release;
- (void)superRelease;
@end

@implementation NSUndoManagerProxy

- (NSUndoManagerProxy)retain
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = self->_manager;
  v5.receiver = self;
  v5.super_class = NSUndoManagerProxy;
  return [(NSProxy *)&v5 retain];
}

- (BOOL)_tryRetain
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSUndoManagerProxy;
  _tryRetain = [(NSProxy *)&v6 _tryRetain];
  if (_tryRetain)
  {
    v4 = self->_manager;
  }

  return _tryRetain;
}

- (void)release
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSUndoManagerProxy;
  [(NSProxy *)&v3 release];
}

- (void)superRelease
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSUndoManagerProxy;
  [(NSProxy *)&v2 release];
}

- (BOOL)isKindOfClass:(Class)class
{
  targetClass = self->_targetClass;
  v4 = targetClass != 0;
  if (targetClass != class && targetClass != 0)
  {
    do
    {
      targetClass = class_getSuperclass(targetClass);
      v4 = targetClass != 0;
    }

    while (targetClass != class && targetClass);
  }

  return v4;
}

@end