@interface HMDMatterCommandActionUtilities
+ (id)commandsInMemoryRepresentation:(id)a3;
+ (id)commandsInStoreRepresentation:(id)a3;
@end

@implementation HMDMatterCommandActionUtilities

+ (id)commandsInMemoryRepresentation:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = HMCommandExpectedValuesKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 mutableCopy];
        v12 = [v11 objectForKey:v8];
        v13 = [v12 mutableCopy];

        if (v13)
        {
          v14 = [v13 mutableCopy];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100002634;
          v21[3] = &unk_100030890;
          v22 = v14;
          v15 = v14;
          [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
          v16 = [v15 copy];
          [v11 setObject:v16 forKey:v8];

          v17 = [v11 copy];
          [v4 addObject:v17];
        }

        else
        {
          [v4 addObject:v10];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v18 = [v4 copy];

  return v18;
}

+ (id)commandsInStoreRepresentation:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = HMCommandExpectedValuesKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 mutableCopy];
        v12 = [v11 objectForKey:v8];
        v13 = [v12 mutableCopy];

        if (v13)
        {
          v14 = [v13 mutableCopy];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100002B3C;
          v21[3] = &unk_100030890;
          v22 = v14;
          v15 = v14;
          [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
          v16 = [v15 copy];
          [v11 setObject:v16 forKey:v8];

          v17 = [v11 copy];
          [v4 addObject:v17];
        }

        else
        {
          [v4 addObject:v10];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v18 = [v4 copy];

  return v18;
}

@end