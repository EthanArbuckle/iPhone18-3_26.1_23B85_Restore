@interface _TUIImageResourceUnsizedCacheSet
- (_TUIImageResourceUnsizedCacheSet)init;
- (id)largestResourceWithContentAndNaturalSize:(CGSize)a3 contentsScale:(double)a4;
- (void)addImageResource:(id)a3;
@end

@implementation _TUIImageResourceUnsizedCacheSet

- (_TUIImageResourceUnsizedCacheSet)init
{
  v7.receiver = self;
  v7.super_class = _TUIImageResourceUnsizedCacheSet;
  v2 = [(_TUIImageResourceUnsizedCacheSet *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_setLock._os_unfair_lock_opaque = 0;
    v4 = [[NSHashTable alloc] initWithOptions:517 capacity:1];
    set = v3->_set;
    v3->_set = v4;
  }

  return v3;
}

- (void)addImageResource:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock_with_options();
    [(NSHashTable *)self->_set addObject:v4];

    os_unfair_lock_unlock(&self->_setLock);
  }
}

- (id)largestResourceWithContentAndNaturalSize:(CGSize)a3 contentsScale:(double)a4
{
  height = a3.height;
  width = a3.width;
  os_unfair_lock_lock_with_options();
  v8 = [(NSHashTable *)self->_set allObjects];
  os_unfair_lock_unlock(&self->_setLock);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = width * a4;
    v14 = height * a4;
    v15 = *v35;
    v16 = 0.0;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        [v18 naturalSize];
        v20 = v19;
        v22 = v21;
        [v18 contentsScale];
        v24 = v23;
        v25 = [v18 imageContentWithOptions:1];
        v26 = [v25 image];

        if (v26)
        {
          v27 = v20 * v24;
          v28 = v22 * v24;
          if (v20 * v24 >= v13 && v28 >= v14)
          {
            v32 = v18;

            v12 = v32;
            goto LABEL_18;
          }

          v30 = v27 * v28;
          if (v27 * v28 > v16)
          {
            v31 = v18;

            v16 = v30;
            v12 = v31;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

LABEL_18:

  return v12;
}

@end