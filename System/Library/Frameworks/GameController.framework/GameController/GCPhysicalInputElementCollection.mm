@interface GCPhysicalInputElementCollection
+ (id)collection;
- (GCPhysicalInputElementCollection)init;
- (NSEnumerator)elementEnumerator;
- (NSUInteger)count;
- (id)elementAtIndex:(unint64_t)index;
- (id)elementForAlias:(id)alias;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation GCPhysicalInputElementCollection

+ (id)collection
{
  objc_opt_self();
  if (collection_onceToken != -1)
  {
    +[GCPhysicalInputElementCollection collection];
  }

  v0 = collection_EmptyCollection;

  return v0;
}

void __46__GCPhysicalInputElementCollection_collection__block_invoke()
{
  v0 = [_GCPhysicalInputElementCollection0 alloc];
  v1 = collection_EmptyCollection;
  collection_EmptyCollection = v0;
}

- (GCPhysicalInputElementCollection)init
{
  [(GCPhysicalInputElementCollection *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSUInteger)count
{
  v4 = MEMORY[0x1E696AEC0];
  Class = object_getClass(self);
  Name = class_getName(Class);
  [v4 stringWithFormat:@"*** -[%s %s]: method sent to an instance (%p) of an abstract class.  Create a concrete instance!", Name, sel_getName(a2), self];
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v7);
}

- (id)elementAtIndex:(unint64_t)index
{
  v5 = MEMORY[0x1E696AEC0];
  Class = object_getClass(self);
  Name = class_getName(Class);
  [v5 stringWithFormat:@"*** -[%s %s]: method sent to an instance (%p) of an abstract class.  Create a concrete instance!", Name, sel_getName(a2), self];
  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v8);
}

- (id)elementForAlias:(id)alias
{
  v5 = alias;
  v6 = MEMORY[0x1E696AEC0];
  Class = object_getClass(self);
  Name = class_getName(Class);
  [v6 stringWithFormat:@"*** -[%s %s]: method sent to an instance (%p) of an abstract class.  Create a concrete instance!", Name, sel_getName(a2), self];
  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v9);
}

- (NSEnumerator)elementEnumerator
{
  v2 = [[_GCPhysicalInputElementEnumerator alloc] initWithCollection:?];

  return v2;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (var0 == -1)
  {
    return 0;
  }

  if (var0)
  {
    v9 = state->var3[0];
  }

  else
  {
    state->var2 = &countByEnumeratingWithState_objects_count__const_mu;
    v9 = [(GCPhysicalInputElementCollection *)self count:0];
    state->var3[0] = v9;
    var0 = state->var0;
  }

  if (var0 >= v9)
  {
    result = 0;
    v11 = -1;
  }

  else
  {
    state->var1 = objects;
    *objects = [(GCPhysicalInputElementCollection *)self elementAtIndex:?];
    v11 = state->var0 + 1;
    result = 1;
  }

  state->var0 = v11;
  return result;
}

@end