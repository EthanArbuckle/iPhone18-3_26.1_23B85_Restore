@interface NSMutableSet
- (void)crl_addNonNilObject:(id)a3;
- (void)crl_addObjectsFromNonNilArray:(id)a3;
- (void)crl_removeEqualObject:(id)a3;
- (void)crl_removeObjectsPassingTest:(id)a3;
- (void)crl_xorSet:(id)a3;
@end

@implementation NSMutableSet

- (void)crl_xorSet:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([(NSMutableSet *)self containsObject:v9])
        {
          [(NSMutableSet *)self removeObject:v9];
        }

        else
        {
          [(NSMutableSet *)self addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)crl_addNonNilObject:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self addObject:?];
  }
}

- (void)crl_addObjectsFromNonNilArray:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self addObjectsFromArray:?];
  }
}

- (void)crl_removeEqualObject:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableSet *)self allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isEqual:v4])
        {
          [(NSMutableSet *)self removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)crl_removeObjectsPassingTest:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_16;
    }

    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          if (!v8)
          {
            v8 = [NSMutableSet setWithCapacity:[(NSMutableSet *)v5 count]];
          }

          [v8 addObject:{v11, v12}];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);

    if (v8)
    {
      [(NSMutableSet *)v5 minusSet:v8];
LABEL_16:
    }
  }
}

@end