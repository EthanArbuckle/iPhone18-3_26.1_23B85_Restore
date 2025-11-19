@interface GKComponentSystem
- (BOOL)respondsToSelector:(SEL)a3;
- (GKComponentSystem)initWithComponentClass:(Class)cls;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)performSelector:(SEL)a3 withObject:(id)a4;
- (void)addComponent:(id)component;
- (void)addComponentWithEntity:(GKEntity *)entity;
- (void)forwardInvocation:(id)a3;
- (void)removeComponent:(id)component;
- (void)removeComponentWithEntity:(GKEntity *)entity;
- (void)updateWithDeltaTime:(NSTimeInterval)seconds;
@end

@implementation GKComponentSystem

- (GKComponentSystem)initWithComponentClass:(Class)cls
{
  v6.receiver = self;
  v6.super_class = GKComponentSystem;
  result = [(GKComponentSystem *)&v6 init];
  if (result)
  {
    v5 = result;
    objc_storeStrong(&result->_componentClass, cls);
    return v5;
  }

  return result;
}

- (void)addComponent:(id)component
{
  v18[1] = *MEMORY[0x277D85DE8];
  v15 = component;
  v4 = objc_opt_class();
  componentClass = self->_componentClass;
  if (v4 != componentClass)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE660];
    v17 = @"supportedClass";
    v18[0] = componentClass;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 exceptionWithName:v11 reason:@"component class is not supported by this system" userInfo:v12];
    v14 = v13;

    objc_exception_throw(v13);
  }

  [v15 setUsesPerComponentUpdate:1];
  components = self->_components;
  if (!components)
  {
    v7 = objc_opt_new();
    v8 = self->_components;
    self->_components = v7;

    components = self->_components;
  }

  [(NSMutableArray *)components addObject:v15, v15];
  [v16 setComponentSystem:self];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)addComponentWithEntity:(GKEntity *)entity
{
  v4 = [(GKEntity *)entity componentForClass:self->_componentClass];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(GKComponentSystem *)self addComponent:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)removeComponentWithEntity:(GKEntity *)entity
{
  v4 = [(GKEntity *)entity componentForClass:self->_componentClass];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(GKComponentSystem *)self removeComponent:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)removeComponent:(id)component
{
  v4 = component;
  if ([(NSMutableArray *)self->_components containsObject:?])
  {
    [(NSMutableArray *)self->_components removeObject:v4];
    [v4 setComponentSystem:0];
  }
}

- (void)updateWithDeltaTime:(NSTimeInterval)seconds
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_components;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) updateWithDeltaTime:{seconds, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)performSelector:(SEL)a3 withObject:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(objc_class *)self->_componentClass instancesRespondToSelector:a3])
  {
    v7 = [(objc_class *)self->_componentClass instanceMethodForSelector:a3];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_components;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v7(*(*(&v17 + 1) + 8 * i), a3, v6);
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v13 = 0;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = GKComponentSystem;
    v13 = [(GKComponentSystem *)&v16 performSelector:a3 withObject:v6];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v6.receiver = self;
  v6.super_class = GKComponentSystem;
  if ([(GKComponentSystem *)&v6 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)self->_componentClass instancesRespondToSelector:a3];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if ([(NSMutableArray *)self->_components count])
  {
    v5 = [(NSMutableArray *)self->_components objectAtIndexedSubscript:0];
    v6 = [v5 methodSignatureForSelector:a3];

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableArray *)self->_components count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_components;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 invokeWithTarget:*(*(&v12 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = GKComponentSystem;
    [(GKComponentSystem *)&v11 forwardInvocation:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end