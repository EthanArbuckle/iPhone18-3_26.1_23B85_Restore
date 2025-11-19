@interface _NSProxyWrapperMutableSet
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)dealloc;
- (void)initWithContainer:(uint64_t)a3 key:(uint64_t)a4 mutableSet:(void *)a5 mutationMethods:;
- (void)intersectSet:(id)a3;
- (void)minusSet:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)setSet:(id)a3;
- (void)unionSet:(id)a3;
@end

@implementation _NSProxyWrapperMutableSet

- (void)dealloc
{
  self->_mutationMethods = 0;
  v3.receiver = self;
  v3.super_class = _NSProxyWrapperMutableSet;
  [(_NSNotifyingWrapperMutableSet *)&v3 dealloc];
}

- (void)initWithContainer:(uint64_t)a3 key:(uint64_t)a4 mutableSet:(void *)a5 mutationMethods:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = _NSProxyWrapperMutableSet;
  v6 = objc_msgSendSuper2(&v8, sel_initWithContainer_key_mutableSet_, a2, a3, a4);
  if (v6)
  {
    v6[4] = a5;
  }

  return v6;
}

- (void)addObject:(id)a3
{
  v8 = a3;
  if (self->_mutationMethods->_addObjectMethod)
  {
    container = self->super._container;

    method_invoke();
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v8 count:1];
    v6 = self->super._container;
    addMethod = self->_mutationMethods->_addMethod;
    method_invoke();
  }
}

- (void)addObjectsFromArray:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a3];
  mutationMethods = self->_mutationMethods;
  v6 = v4;
  if (mutationMethods->_addMethod)
  {
    method_invoke();
  }

  else
  {
    _PFInvokeMutationMethodForEachMemberOfSet(self->super._container, mutationMethods->_addObjectMethod, v4);
  }
}

- (void)intersectSet:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (self->_mutationMethods->_intersectMethod)
  {
    container = self->super._container;
    v6 = *MEMORY[0x1E69E9840];

    method_invoke();
  }

  else
  {
    v7 = [(_NSNotifyingWrapperMutableSet *)self count];
    if (v7)
    {
      v8 = v7;
      if (v7 >= 0x201)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7;
      }

      v10 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = v15 - v10;
      if (v7 > 0x200)
      {
        v11 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v15 - v10, 8 * v7);
      }

      [(_NSNotifyingWrapperMutableSet *)self getObjects:v11];
      for (i = 0; i != v8; ++i)
      {
        v13 = *&v11[8 * i];
        if (([a3 containsObject:v13] & 1) == 0)
        {
          [(_NSProxyWrapperMutableSet *)self removeObject:v13];
        }
      }

      if (v8 >= 0x201)
      {
        NSZoneFree(0, v11);
      }
    }

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)minusSet:(id)a3
{
  mutationMethods = self->_mutationMethods;
  container = self->super._container;
  if (mutationMethods->_removeMethod)
  {
    method_invoke();
  }

  else
  {
    _PFInvokeMutationMethodForEachMemberOfSet(container, mutationMethods->_removeObjectMethod, a3);
  }
}

- (void)removeAllObjects
{
  if (self->_mutationMethods->_setMethod)
  {
    container = self->super._container;
    method_invoke();
  }

  else
  {
    [(_NSProxyWrapperMutableSet *)self minusSet:self->super._mutableSet];
  }
}

- (void)removeObject:(id)a3
{
  v8 = a3;
  if (self->_mutationMethods->_removeObjectMethod)
  {
    container = self->super._container;

    method_invoke();
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v8 count:1];
    v6 = self->super._container;
    removeMethod = self->_mutationMethods->_removeMethod;
    method_invoke();
  }
}

- (void)setSet:(id)a3
{
  if (self->_mutationMethods->_setMethod)
  {
    container = self->super._container;

    method_invoke();
  }

  else
  {
    v5 = a3;
    [(_NSProxyWrapperMutableSet *)self minusSet:self->super._mutableSet];
    [(_NSProxyWrapperMutableSet *)self unionSet:a3];
  }
}

- (void)unionSet:(id)a3
{
  mutationMethods = self->_mutationMethods;
  container = self->super._container;
  if (mutationMethods->_addMethod)
  {
    method_invoke();
  }

  else
  {
    _PFInvokeMutationMethodForEachMemberOfSet(container, mutationMethods->_addObjectMethod, a3);
  }
}

@end