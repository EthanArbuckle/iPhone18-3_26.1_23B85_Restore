@interface MapsExternalState
- (BOOL)_isValue:(id)a3 equalTo:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToState:(id)a3 changedKeys:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionForKey:(id)a3;
- (unint64_t)hash;
- (unint64_t)hashForKey:(id)a3;
@end

@implementation MapsExternalState

- (id)description
{
  v18.receiver = self;
  v18.super_class = MapsExternalState;
  v3 = [(MapsExternalState *)&v18 description];
  v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];
  v5 = [v4 mutableCopy];

  [v5 appendFormat:@" hash=%lu", -[MapsExternalState hash](self, "hash")];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [objc_opt_class() allKeys];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(MapsExternalState *)self descriptionForKey:v11];
        [v5 appendFormat:@"\n    %@ = %@", v11, v12, v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  [v5 appendString:@">"];

  return v5;
}

- (unint64_t)hash
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [objc_opt_class() allKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 ^= [(MapsExternalState *)self hashForKey:*(*(&v10 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hashForKey:(id)a3
{
  v3 = [(MapsExternalState *)self valueForKey:a3];
  v4 = [v3 hash];

  return v4;
}

- (id)descriptionForKey:(id)a3
{
  v3 = [(MapsExternalState *)self valueForKey:a3];
  v4 = [v3 description];
  v5 = [NSString stringWithFormat:@"%@", v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [objc_opt_class() allKeys];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(MapsExternalState *)self valueForKey:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = objc_opt_new();
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_100CB2CC0;
          v15[3] = &unk_1016555A0;
          v16 = v11;
          v12 = v11;
          [v10 enumerateKeysAndObjectsUsingBlock:v15];
          [v4 setValue:v12 forKey:v9];
        }

        else
        {
          [v4 setValue:v10 forKey:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MapsExternalState *)self isEqualToState:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToState:(id)a3 changedKeys:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v19 = a4;
    if (a4)
    {
      v9 = objc_alloc_init(NSMutableSet);
    }

    else
    {
      v9 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [objc_opt_class() allKeys];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [(MapsExternalState *)self valueForKey:v15];
          v17 = [v6 valueForKey:v15];
          if (![(MapsExternalState *)self _isValue:v16 equalTo:v17])
          {
            if (!v9)
            {

              v8 = 0;
              goto LABEL_22;
            }

            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    if (v19)
    {
      *v19 = [v9 copy];
    }

    if (v9)
    {
      v8 = [v9 count] == 0;
    }

    else
    {
      v8 = 1;
    }

LABEL_22:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isValue:(id)a3 equalTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [NSCountedSet setWithArray:v5];
          v11 = [NSCountedSet setWithArray:v7];
          v8 = [v10 isEqualToSet:v11];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v5 isEqualToDictionary:v7];
          }

          else
          {
            v12 = [v5 isEqual:v7];
          }

          v8 = v12;
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end