@interface GCPhysicalInputElementCollection
+ (id)collection;
- (GCPhysicalInputElementCollection)init;
- (NSEnumerator)elementEnumerator;
- (NSUInteger)count;
- (id)elementAtIndex:(unint64_t)a3;
- (id)elementForAlias:(id)alias;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
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

- (id)elementAtIndex:(unint64_t)a3
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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  if (var0 == -1)
  {
    return 0;
  }

  if (var0)
  {
    v9 = a3->var3[0];
  }

  else
  {
    a3->var2 = &countByEnumeratingWithState_objects_count__const_mu;
    v9 = [(GCPhysicalInputElementCollection *)self count:0];
    a3->var3[0] = v9;
    var0 = a3->var0;
  }

  if (var0 >= v9)
  {
    result = 0;
    v11 = -1;
  }

  else
  {
    a3->var1 = a4;
    *a4 = [(GCPhysicalInputElementCollection *)self elementAtIndex:?];
    v11 = a3->var0 + 1;
    result = 1;
  }

  a3->var0 = v11;
  return result;
}

@end