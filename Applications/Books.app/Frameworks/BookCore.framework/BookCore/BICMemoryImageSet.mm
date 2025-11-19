@interface BICMemoryImageSet
- (BICMemoryImageSet)init;
- (id)imageColor;
- (id)primaryEntry;
- (void)addEntry:(id)a3;
- (void)deleteEntry:(id)a3;
@end

@implementation BICMemoryImageSet

- (BICMemoryImageSet)init
{
  v6.receiver = self;
  v6.super_class = BICMemoryImageSet;
  v2 = [(BICMemoryImageSet *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    [(BICMemoryImageSet *)v2 setImageColorARGBHex:0xFFFFFFLL];
    v4 = +[NSSet set];
    [(BICMemoryImageSet *)v3 setImageEntries:v4];
  }

  return v3;
}

- (void)deleteEntry:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_42188;
  v5[3] = &unk_2C7BE8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_accessLock);
  sub_42188(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)addEntry:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_422A4;
  v5[3] = &unk_2C7BE8;
  v6 = self;
  v7 = a3;
  v4 = v7;
  os_unfair_lock_lock(&v6->_accessLock);
  sub_422A4(v5);
  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)primaryEntry
{
  v3 = objc_opt_new();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_42660;
  v38 = sub_42670;
  v39 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v30 = sub_42678;
  v31 = &unk_2C7AE0;
  v32 = self;
  v33 = &v34;
  v4 = v29;
  os_unfair_lock_lock(&self->_accessLock);
  v30(v4);
  os_unfair_lock_unlock(&self->_accessLock);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v35[5];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 potentialPrimary])
        {
          if (v7 == [v10 quality])
          {
            [v3 addObject:v10];
          }

          else if (v7 < [v10 quality])
          {
            [v3 removeAllObjects];
            [v3 addObject:v10];
            v7 = [v10 quality];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v6);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v40 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = *v22;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        if (v13 < [v17 level])
        {
          v18 = v17;

          v13 = [v18 level];
          v14 = v18;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v40 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0;
  }

  v19 = v14;
  _Block_object_dispose(&v34, 8);

  return v19;
}

- (id)imageColor
{
  if ([(BICMemoryImageSet *)self imageColorARGBHex]== 0xFFFFFF)
  {
    v3 = 0;
  }

  else
  {
    v3 = [UIColor bc_colorWithARGBHexValue:[(BICMemoryImageSet *)self imageColorARGBHex]];
  }

  return v3;
}

@end