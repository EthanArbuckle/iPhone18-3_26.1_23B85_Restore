@interface NSArray
- (id)buddy_filterToOrderedSet:(id)a3;
- (id)buddy_mapArray:(id)a3;
- (id)buddy_mapCountedSet:(id)a3;
- (id)buddy_mapOrderedSet:(id)a3;
- (id)buddy_mapSet:(id)a3;
- (unint64_t)indexOfFirstMatchingCondition:(id)a3;
@end

@implementation NSArray

- (id)buddy_mapCountedSet:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = objc_alloc_init(NSCountedSet);
  memset(v11, 0, sizeof(v11));
  v3 = v15;
  v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v11[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(v11[1] + 8 * i);
        v7 = v13;
        v8 = (*(location[0] + 2))(location[0], v12);
        [v7 addObject:v8];
      }

      v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = v13;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v9;
}

- (id)buddy_mapSet:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = objc_alloc_init(NSMutableSet);
  memset(v11, 0, sizeof(v11));
  v3 = v15;
  v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v11[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(v11[1] + 8 * i);
        v7 = v13;
        v8 = (*(location[0] + 2))(location[0], v12);
        [v7 addObject:v8];
      }

      v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = [v13 copy];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)buddy_mapOrderedSet:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = +[NSMutableOrderedSet orderedSet];
  memset(v11, 0, sizeof(v11));
  v3 = v15;
  v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v11[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(v11[1] + 8 * i);
        v7 = v13;
        v8 = (*(location[0] + 2))(location[0], v12);
        [v7 addObject:v8];
      }

      v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = [v13 copy];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)buddy_filterToOrderedSet:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = +[NSMutableOrderedSet orderedSet];
  memset(v9, 0, sizeof(v9));
  v3 = v13;
  v4 = [v3 countByEnumeratingWithState:v9 objects:v14 count:16];
  if (v4)
  {
    v5 = *v9[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v9[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(v9[1] + 8 * i);
        if ((*(location[0] + 2))(location[0], v10))
        {
          [v11 addObject:v10];
        }
      }

      v4 = [v3 countByEnumeratingWithState:v9 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = [v11 copy];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)buddy_mapArray:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = objc_alloc_init(NSMutableArray);
  memset(v11, 0, sizeof(v11));
  v3 = v15;
  v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*v11[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(v11[1] + 8 * i);
        v7 = v13;
        v8 = (*(location[0] + 2))(location[0], v12);
        [v7 addObject:v8];
      }

      v4 = [v3 countByEnumeratingWithState:v11 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = [v13 copy];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (unint64_t)indexOfFirstMatchingCondition:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  memset(__b, 0, sizeof(__b));
  v3 = v13;
  v4 = [v3 countByEnumeratingWithState:__b objects:v15 count:16];
  if (v4)
  {
    v5 = *__b[2];
    do
    {
      for (i = 0; i < v4; ++i)
      {
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(__b[1] + 8 * i);
        if ((*(location[0] + 2))(location[0], v10))
        {
          v14 = v11;
          v8 = 1;
          goto LABEL_11;
        }

        ++v11;
      }

      v4 = [v3 countByEnumeratingWithState:__b objects:v15 count:16];
    }

    while (v4);
  }

  v8 = 0;
LABEL_11:

  if (!v8)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_storeStrong(location, 0);
  return v14;
}

@end