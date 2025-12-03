@interface NSBoundKeyPath
+ (id)keyPathWithRootObject:(id)object path:(const char *)path;
+ (id)newKeyPathWithRootObject:(id)object keyPathString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateValue:(id *)value error:(id *)error;
- (NSString)keyPath;
- (id)mutableArrayValue;
- (id)mutableOrderedSetValue;
- (id)mutableSetValue;
- (id)value;
- (void)dealloc;
- (void)setValue:(id)value;
@end

@implementation NSBoundKeyPath

+ (id)newKeyPathWithRootObject:(id)object keyPathString:(id)string
{
  Instance = class_createInstance(self, 0);
  Instance[2] = string;
  [Instance setRootObject:object];
  return Instance;
}

+ (id)keyPathWithRootObject:(id)object path:(const char *)path
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [[NSString alloc] initWithUTF8String:path];
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
  objectCopy = object;
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
    v10 = [self newKeyPathWithRootObject:object keyPathString:{v6, v12, objectCopy, v14, v15}];
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

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (equal == self)
  {
    return 1;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  rootObject = [equal rootObject];
  return rootObject == [(NSBoundKeyPath *)self rootObject];
}

- (BOOL)validateValue:(id *)value error:(id *)error
{
  rootObject = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [rootObject validateValue:value forKeyPath:keyPath error:error];
}

- (id)value
{
  rootObject = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [rootObject valueForKeyPath:keyPath];
}

- (void)setValue:(id)value
{
  rootObject = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  [rootObject setValue:value forKeyPath:keyPath];
}

- (id)mutableArrayValue
{
  rootObject = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [rootObject mutableArrayValueForKeyPath:keyPath];
}

- (id)mutableOrderedSetValue
{
  rootObject = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [rootObject mutableOrderedSetValueForKeyPath:keyPath];
}

- (id)mutableSetValue
{
  rootObject = [(NSBoundKeyPath *)self rootObject];
  keyPath = self->_keyPath;

  return [rootObject mutableSetValueForKeyPath:keyPath];
}

@end