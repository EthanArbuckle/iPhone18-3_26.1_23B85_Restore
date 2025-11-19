@interface NSBoundKeyPath
+ (id)keyPathWithRootObject:(id)a3 path:(const char *)a4;
+ (id)newKeyPathWithRootObject:(id)a3 keyPathString:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateValue:(id *)a3 error:(id *)a4;
- (NSString)keyPath;
- (id)mutableArrayValue;
- (id)mutableOrderedSetValue;
- (id)mutableSetValue;
- (id)value;
- (void)dealloc;
- (void)setValue:(id)a3;
@end

@implementation NSBoundKeyPath

+ (id)newKeyPathWithRootObject:(id)a3 keyPathString:(id)a4
{
  Instance = class_createInstance(a1, 0);
  Instance[2] = a4;
  [Instance setRootObject:a3];
  return Instance;
}

+ (id)keyPathWithRootObject:(id)a3 path:(const char *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [[NSString alloc] initWithUTF8String:a4];
  v7 = objc_opt_class();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v12 = v8;
  v13 = a3;
  v14 = v6;
  os_unfair_lock_lock_with_options();
  Mutable = qword_1ED43E7B0;
  if (!qword_1ED43E7B0)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E4A8], 0, &keyPathWithRootObject_path__callbacks);
    qword_1ED43E7B0 = Mutable;
  }

  v10 = CFSetGetValue(Mutable, &v12);
  if (!v10)
  {
    v10 = [a1 newKeyPathWithRootObject:a3 keyPathString:{v6, v12, v13, v14, v15}];
    if (v10)
    {
      CFSetAddValue(qword_1ED43E7B0, v10);
    }
  }

  os_unfair_lock_unlock(&_MergedGlobals_19_0);

  return v10;
}

- (NSString)keyPath
{
  v2 = [(NSString *)self->_keyPath copy];

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  if (qword_1ED43E7B0)
  {
    CFSetRemoveValue(qword_1ED43E7B0, self);
  }

  os_unfair_lock_unlock(&_MergedGlobals_19_0);
  objc_storeWeak(&self->_rootObject, 0);

  v3.receiver = self;
  v3.super_class = NSBoundKeyPath;
  [(NSBoundKeyPath *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == self)
  {
    return 1;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 rootObject];
  return v5 == [(NSBoundKeyPath *)self rootObject];
}

- (BOOL)validateValue:(id *)a3 error:(id *)a4
{
  v7 = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [v7 validateValue:a3 forKeyPath:keyPath error:a4];
}

- (id)value
{
  v3 = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [v3 valueForKeyPath:keyPath];
}

- (void)setValue:(id)a3
{
  v5 = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  [v5 setValue:a3 forKeyPath:keyPath];
}

- (id)mutableArrayValue
{
  v3 = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [v3 mutableArrayValueForKeyPath:keyPath];
}

- (id)mutableOrderedSetValue
{
  v3 = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [v3 mutableOrderedSetValueForKeyPath:keyPath];
}

- (id)mutableSetValue
{
  v3 = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [v3 mutableSetValueForKeyPath:keyPath];
}

@end