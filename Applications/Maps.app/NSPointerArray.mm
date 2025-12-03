@interface NSPointerArray
- (BOOL)_maps_containsObject:(id)object;
- (id)_maps_lastObject;
- (void)_maps_compact;
- (void)_maps_moveOrAddObjectToTop:(id)top;
- (void)_maps_removeObject:(id)object;
@end

@implementation NSPointerArray

- (void)_maps_compact
{
  [(NSPointerArray *)self addPointer:0];

  [(NSPointerArray *)self compact];
}

- (void)_maps_removeObject:(id)object
{
  objectCopy = object;
  if (objectCopy && [(NSPointerArray *)self count])
  {
    v4 = 0;
    while ([(NSPointerArray *)self pointerAtIndex:v4]!= objectCopy)
    {
      if (++v4 >= [(NSPointerArray *)self count])
      {
        goto LABEL_8;
      }
    }

    [(NSPointerArray *)self removePointerAtIndex:v4];
  }

LABEL_8:
}

- (void)_maps_moveOrAddObjectToTop:(id)top
{
  topCopy = top;
  if (topCopy)
  {
    v6 = topCopy;
    if ([(NSPointerArray *)self count])
    {
      v5 = 0;
      while ([(NSPointerArray *)self pointerAtIndex:v5]!= v6)
      {
        if (++v5 >= [(NSPointerArray *)self count])
        {
          goto LABEL_8;
        }
      }

      [(NSPointerArray *)self removePointerAtIndex:v5];
    }

LABEL_8:
    [(NSPointerArray *)self addPointer:v6];
    topCopy = v6;
  }
}

- (BOOL)_maps_containsObject:(id)object
{
  objectCopy = object;
  if (objectCopy && [(NSPointerArray *)self count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSPointerArray *)self pointerAtIndex:v5];
      v7 = v6 == objectCopy;
      if (v6 == objectCopy)
      {
        break;
      }

      if (++v5 >= [(NSPointerArray *)self count])
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)_maps_lastObject
{
  v3 = [(NSPointerArray *)self count];
  if (v3)
  {
    v3 = [(NSPointerArray *)self pointerAtIndex:[(NSPointerArray *)self count]- 1];
  }

  return v3;
}

@end