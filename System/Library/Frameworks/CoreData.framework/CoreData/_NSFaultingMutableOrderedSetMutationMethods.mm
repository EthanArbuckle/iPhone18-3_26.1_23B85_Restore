@interface _NSFaultingMutableOrderedSetMutationMethods
+ (id)_createMutationMethodsForClass:(Class)class forKey:(id)key;
@end

@implementation _NSFaultingMutableOrderedSetMutationMethods

+ (id)_createMutationMethodsForClass:(Class)class forKey:(id)key
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(_NSFaultingMutableOrderedSetMutationMethods);
  v7 = [key length];
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  CFStringGetCString(key, v15 - v9, v8 + 1, 0x8000100u);
  if (v7)
  {
    *v10 = __toupper(*v10);
  }

  v6->_insertObjectMethod = _PFKeyValueMethodForPattern(class, "insertObject:in%sAtIndex:", v10);
  v11 = _PFKeyValueMethodForPattern(class, "insert%s:atIndexes:", v10);
  v6->_insertMethod = v11;
  if (v6->_insertObjectMethod | v11 && (v6->_removeObjectMethod = _PFKeyValueMethodForPattern(class, "removeObjectFrom%sAtIndex:", v10), v12 = _PFKeyValueMethodForPattern(class, "remove%sAtIndexes:", v10), v6->_removeMethod = v12, v6->_removeObjectMethod | v12))
  {
    v6->_replaceObjectMethod = _PFKeyValueMethodForPattern(class, "replaceObjectIn%sAtIndex:withObject:", v10);
    v6->_replaceMethod = _PFKeyValueMethodForPattern(class, "replace%sAtIndexes:with%s", v10);
  }

  else
  {

    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

@end