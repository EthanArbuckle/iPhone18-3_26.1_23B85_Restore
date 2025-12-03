@interface NSKeyValueProperty
- (BOOL)object:(id)object withObservance:(id)observance willChangeValueForKeyOrKeys:(id)keys recurse:(BOOL)recurse forwardingValues:(id *)values;
- (id)_initWithContainerClass:(id)class keyPath:(id)path propertiesBeingInitialized:(__CFSet *)initialized;
- (id)restOfKeyPathIfContainedByValueForKeyPath:(id)path;
- (void)dealloc;
@end

@implementation NSKeyValueProperty

- (id)_initWithContainerClass:(id)class keyPath:(id)path propertiesBeingInitialized:(__CFSet *)initialized
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSKeyValueProperty;
  v8 = [(NSKeyValueProperty *)&v10 init];
  if (v8)
  {
    v8->_containerClass = class;
    v8->_keyPath = [path copy];
    CFSetAddValue(initialized, v8);
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueProperty;
  [(NSKeyValueProperty *)&v3 dealloc];
}

- (BOOL)object:(id)object withObservance:(id)observance willChangeValueForKeyOrKeys:(id)keys recurse:(BOOL)recurse forwardingValues:(id *)values
{
  values->var0 = 0;
  values->var1 = 0;
  return 1;
}

- (id)restOfKeyPathIfContainedByValueForKeyPath:(id)path
{
  keyPath = self->_keyPath;
  if (keyPath == path || CFEqual(path, keyPath))
  {
    return &stru_1EEEFDF90;
  }

  v7 = [path length];
  if (![(NSString *)self->_keyPath hasPrefix:path]|| [(NSString *)self->_keyPath length]<= v7 || [(NSString *)self->_keyPath characterAtIndex:v7]!= 46)
  {
    return 0;
  }

  v8 = self->_keyPath;

  return [(NSString *)v8 substringFromIndex:v7 + 1];
}

@end