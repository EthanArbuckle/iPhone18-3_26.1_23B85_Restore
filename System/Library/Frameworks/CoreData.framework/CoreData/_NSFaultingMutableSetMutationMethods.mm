@interface _NSFaultingMutableSetMutationMethods
+ (id)_createMutationMethodsForClass:(Class)a3 forKey:(id)a4;
@end

@implementation _NSFaultingMutableSetMutationMethods

+ (id)_createMutationMethodsForClass:(Class)a3 forKey:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(_NSFaultingMutableSetMutationMethods);
  v7 = [a4 length];
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  CFStringGetCString(a4, v15 - v9, v8 + 1, 0x8000100u);
  if (v7)
  {
    *v10 = __toupper(*v10);
  }

  v6->_addObjectMethod = _PFKeyValueMethodForPattern(a3, "add%sObject:", v10);
  v11 = _PFKeyValueMethodForPattern(a3, "add%s:", v10);
  v6->_addMethod = v11;
  if (v6->_addObjectMethod | v11 && (v6->_removeObjectMethod = _PFKeyValueMethodForPattern(a3, "remove%sObject:", v10), v12 = _PFKeyValueMethodForPattern(a3, "remove%s:", v10), v6->_removeMethod = v12, v6->_removeObjectMethod | v12))
  {
    v6->_intersectMethod = _PFKeyValueMethodForPattern(a3, "intersect%s:", v10);
    v6->_setMethod = _PFKeyValueMethodForPattern(a3, "set%s:", v10);
  }

  else
  {

    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

@end