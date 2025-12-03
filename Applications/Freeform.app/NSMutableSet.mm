@interface NSMutableSet
- (void)crl_addNonNilObject:(id)object;
- (void)crl_addObjectsFromNonNilArray:(id)array;
- (void)crl_removeEqualObject:(id)object;
- (void)crl_removeObjectsPassingTest:(id)test;
- (void)crl_xorSet:(id)set;
@end

@implementation NSMutableSet

- (void)crl_xorSet:(id)set
{
  setCopy = set;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [setCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(setCopy);
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

      v6 = [setCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)crl_addNonNilObject:(id)object
{
  if (object)
  {
    [(NSMutableSet *)self addObject:?];
  }
}

- (void)crl_addObjectsFromNonNilArray:(id)array
{
  if (array)
  {
    [(NSMutableSet *)self addObjectsFromArray:?];
  }
}

- (void)crl_removeEqualObject:(id)object
{
  objectCopy = object;
  allObjects = [(NSMutableSet *)self allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 isEqual:objectCopy])
        {
          [(NSMutableSet *)self removeObject:v10];
        }
      }

      v7 = [allObjects countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)crl_removeObjectsPassingTest:(id)test
{
  testCopy = test;
  if (testCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    selfCopy = self;
    v6 = [(NSMutableSet *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v6)
    {
      v8 = selfCopy;
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
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (testCopy[2](testCopy, v11))
        {
          if (!v8)
          {
            v8 = [NSMutableSet setWithCapacity:[(NSMutableSet *)selfCopy count]];
          }

          [v8 addObject:{v11, v12}];
        }
      }

      v7 = [(NSMutableSet *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);

    if (v8)
    {
      [(NSMutableSet *)selfCopy minusSet:v8];
LABEL_16:
    }
  }
}

@end