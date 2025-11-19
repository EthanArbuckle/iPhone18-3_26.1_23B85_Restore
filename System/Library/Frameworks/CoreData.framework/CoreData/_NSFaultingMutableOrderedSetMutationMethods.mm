@interface _NSFaultingMutableOrderedSetMutationMethods
+ (id)_createMutationMethodsForClass:(Class)a3 forKey:(id)a4;
@end

@implementation _NSFaultingMutableOrderedSetMutationMethods

+ (id)_createMutationMethodsForClass:(Class)a3 forKey:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(_NSFaultingMutableOrderedSetMutationMethods);
  v7 = [a4 length];
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  CFStringGetCString(a4, v15 - v9, v8 + 1, 0x8000100u);
  if (v7)
  {
    *v10 = __toupper(*v10);
  }

  v6->_insertObjectMethod = _PFKeyValueMethodForPattern(a3, "insertObject:in%sAtIndex:", v10);
  v11 = _PFKeyValueMethodForPattern(a3, "insert%s:atIndexes:", v10);
  v6->_insertMethod = v11;
  if (v6->_insertObjectMethod | v11 && (v6->_removeObjectMethod = _PFKeyValueMethodForPattern(a3, "removeObjectFrom%sAtIndex:", v10), v12 = _PFKeyValueMethodForPattern(a3, "remove%sAtIndexes:", v10), v6->_removeMethod = v12, v6->_removeObjectMethod | v12))
  {
    v6->_replaceObjectMethod = _PFKeyValueMethodForPattern(a3, "replaceObjectIn%sAtIndex:withObject:", v10);
    v6->_replaceMethod = _PFKeyValueMethodForPattern(a3, "replace%sAtIndexes:with%s", v10);
  }

  else
  {

    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

@end