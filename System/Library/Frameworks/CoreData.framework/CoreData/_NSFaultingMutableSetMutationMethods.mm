@interface _NSFaultingMutableSetMutationMethods
+ (id)_createMutationMethodsForClass:(Class)class forKey:(id)key;
@end

@implementation _NSFaultingMutableSetMutationMethods

+ (id)_createMutationMethodsForClass:(Class)class forKey:(id)key
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(_NSFaultingMutableSetMutationMethods);
  v7 = [key length];
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  CFStringGetCString(key, v15 - v9, v8 + 1, 0x8000100u);
  if (v7)
  {
    *v10 = __toupper(*v10);
  }

  v6->_addObjectMethod = _PFKeyValueMethodForPattern(class, "add%sObject:", v10);
  v11 = _PFKeyValueMethodForPattern(class, "add%s:", v10);
  v6->_addMethod = v11;
  if (v6->_addObjectMethod | v11 && (v6->_removeObjectMethod = _PFKeyValueMethodForPattern(class, "remove%sObject:", v10), v12 = _PFKeyValueMethodForPattern(class, "remove%s:", v10), v6->_removeMethod = v12, v6->_removeObjectMethod | v12))
  {
    v6->_intersectMethod = _PFKeyValueMethodForPattern(class, "intersect%s:", v10);
    v6->_setMethod = _PFKeyValueMethodForPattern(class, "set%s:", v10);
  }

  else
  {

    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

@end