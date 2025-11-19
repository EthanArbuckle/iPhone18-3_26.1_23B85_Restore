@interface NSKeyValueProperty
- (BOOL)object:(id)a3 withObservance:(id)a4 willChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id *)a7;
- (id)_initWithContainerClass:(id)a3 keyPath:(id)a4 propertiesBeingInitialized:(__CFSet *)a5;
- (id)restOfKeyPathIfContainedByValueForKeyPath:(id)a3;
- (void)dealloc;
@end

@implementation NSKeyValueProperty

- (id)_initWithContainerClass:(id)a3 keyPath:(id)a4 propertiesBeingInitialized:(__CFSet *)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSKeyValueProperty;
  v8 = [(NSKeyValueProperty *)&v10 init];
  if (v8)
  {
    v8->_containerClass = a3;
    v8->_keyPath = [a4 copy];
    CFSetAddValue(a5, v8);
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

- (BOOL)object:(id)a3 withObservance:(id)a4 willChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id *)a7
{
  a7->var0 = 0;
  a7->var1 = 0;
  return 1;
}

- (id)restOfKeyPathIfContainedByValueForKeyPath:(id)a3
{
  keyPath = self->_keyPath;
  if (keyPath == a3 || CFEqual(a3, keyPath))
  {
    return &stru_1EEEFDF90;
  }

  v7 = [a3 length];
  if (![(NSString *)self->_keyPath hasPrefix:a3]|| [(NSString *)self->_keyPath length]<= v7 || [(NSString *)self->_keyPath characterAtIndex:v7]!= 46)
  {
    return 0;
  }

  v8 = self->_keyPath;

  return [(NSString *)v8 substringFromIndex:v7 + 1];
}

@end