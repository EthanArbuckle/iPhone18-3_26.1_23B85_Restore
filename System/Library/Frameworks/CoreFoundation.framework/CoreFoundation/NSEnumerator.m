@interface NSEnumerator
- (NSArray)allObjects;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation NSEnumerator

- (NSArray)allObjects
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = +[(NSArray *)NSMutableArray];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSEnumerator *)self countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(self);
        }

        [(NSArray *)v3 addObject:*(*(&v11 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSEnumerator *)self countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0 == -1)
  {
    return 0;
  }

  v13 = v6;
  v14 = v5;
  if (!a3->var0)
  {
    a3->var2 = &countByEnumeratingWithState_objects_count__const_mu_5;
  }

  result = [(NSEnumerator *)self nextObject:v13];
  if (result)
  {
    a3->var1 = a4;
    *a4 = result;
    v12 = a3->var0 + 1;
    result = 1;
  }

  else
  {
    v12 = -1;
  }

  a3->var0 = v12;
  return result;
}

@end