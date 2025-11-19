@interface ContainerStack
- (ContainerStack)init;
- (id)allObjects;
- (id)containeeStateAtIndex:(unint64_t)a3;
- (id)lastState;
- (id)popAll;
- (id)popFromIndex:(unint64_t)a3;
- (void)pushContaineeState:(id)a3;
- (void)removeContaineeState:(id)a3;
- (void)replaceLastOne:(id)a3;
@end

@implementation ContainerStack

- (ContainerStack)init
{
  v8.receiver = self;
  v8.super_class = ContainerStack;
  v2 = [(ContainerStack *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    array = v2->_array;
    v2->_array = v3;

    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    content = v2->_content;
    v2->_content = v5;
  }

  return v2;
}

- (id)allObjects
{
  v2 = [(NSMutableArray *)self->_array copy];

  return v2;
}

- (id)lastState
{
  content = self->_content;
  v3 = [(NSMutableArray *)self->_array lastObject];
  v4 = [(NSMapTable *)content objectForKey:v3];

  return v4;
}

- (id)popFromIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableArray *)self->_array count]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_array subarrayWithRange:a3 + 1, [(NSMutableArray *)self->_array count]- a3 - 1];
    [(NSMutableArray *)self->_array removeObjectsInArray:v5];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(NSMapTable *)self->_content removeObjectForKey:*(*(&v12 + 1) + 8 * i), v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  return v6;
}

- (id)popAll
{
  v3 = [(NSMutableArray *)self->_array copy];
  [(NSMutableArray *)self->_array removeObjectsInArray:v3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMapTable *)self->_content removeObjectForKey:*(*(&v10 + 1) + 8 * i), v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)replaceLastOne:(id)a3
{
  v4 = a3;
  v9 = [(ContainerStack *)self lastState];
  content = self->_content;
  v6 = [v9 viewController];
  [(NSMapTable *)content removeObjectForKey:v6];

  array = self->_array;
  v8 = [v9 viewController];
  [(NSMutableArray *)array removeObject:v8];

  [(ContainerStack *)self pushContaineeState:v4];
}

- (void)removeContaineeState:(id)a3
{
  v4 = a3;
  v5 = [v4 viewController];
  v6 = [v5 cardPresentationController];
  [v6 wantsLayout:1];

  content = self->_content;
  v8 = [v4 viewController];
  [(NSMapTable *)content removeObjectForKey:v8];

  array = self->_array;
  v10 = [v4 viewController];

  [(NSMutableArray *)array removeObject:v10];
}

- (void)pushContaineeState:(id)a3
{
  content = self->_content;
  v5 = a3;
  v6 = [v5 viewController];
  [(NSMapTable *)content setObject:v5 forKey:v6];

  array = self->_array;
  v8 = [v5 viewController];

  [(NSMutableArray *)array addObject:v8];
}

- (id)containeeStateAtIndex:(unint64_t)a3
{
  if ([(NSMapTable *)self->_content count]&& [(NSMapTable *)self->_content count]- 1 >= a3)
  {
    content = self->_content;
    v7 = [(NSMutableArray *)self->_array objectAtIndexedSubscript:a3];
    v5 = [(NSMapTable *)content objectForKey:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end