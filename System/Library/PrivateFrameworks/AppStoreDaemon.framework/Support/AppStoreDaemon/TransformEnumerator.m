@interface TransformEnumerator
- (id)nextObject;
@end

@implementation TransformEnumerator

- (id)nextObject
{
  v3 = [(NSEnumerator *)self->_enumerator nextObject];
  v4 = 0;
  if (v3)
  {
    while (1)
    {
      v5 = v4;
      v6 = objc_autoreleasePoolPush();
      v4 = (*(self->_transform + 2))();

      if (!v4)
      {
        break;
      }

      v7 = v4[8];
      objc_autoreleasePoolPop(v6);
      if ((v7 & 1) == 0)
      {
        v9 = [(NSEnumerator *)self->_enumerator nextObject];

        v3 = v9;
        if (v9)
        {
          continue;
        }
      }

      Property = objc_getProperty(v4, v8, 16, 1);
      goto LABEL_8;
    }

    objc_autoreleasePoolPop(v6);
  }

  Property = 0;
LABEL_8:
  v11 = Property;

  return Property;
}

@end