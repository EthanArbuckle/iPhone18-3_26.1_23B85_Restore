@interface GAXPathMapping
- (BOOL)containsPath:(id)a3;
- (GAXPathMapping)init;
- (GAXPathMapping)initWithCoder:(id)a3;
- (id)description;
- (id)parentOfPath:(id)a3;
- (id)pathMappingByTransformingPointsInPathsUsingBlock:(id)a3;
- (unint64_t)count;
- (void)_configureWithIdentifiersToPaths:(id)a3 mapping:(id)a4 identifiersToRectangleFlags:(id)a5;
- (void)_enumerateUnorderedPathsAndParentsUsingBlock:(id)a3;
- (void)addPath:(id)a3 withParentPath:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumeratePathsAndParentsUsingBlock:(id)a3;
- (void)removePath:(id)a3;
- (void)replaceParentOfPath:(id)a3 withPath:(id)a4;
- (void)setPathsToIdentifiers:(__CFDictionary *)a3;
@end

@implementation GAXPathMapping

- (GAXPathMapping)init
{
  v8.receiver = self;
  v8.super_class = GAXPathMapping;
  v2 = [(GAXPathMapping *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(GAXPathMapping *)v2 _configureWithIdentifiersToPaths:0 mapping:0 identifiersToRectangleFlags:0];
    if (![(GAXPathMapping *)v3 pathsToIdentifiers]|| ([(GAXPathMapping *)v3 identifiersToPaths], (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, [(GAXPathMapping *)v3 mapping], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
    {

      return 0;
    }
  }

  return v3;
}

- (void)dealloc
{
  [(GAXPathMapping *)self setPathsToIdentifiers:0];
  v3.receiver = self;
  v3.super_class = GAXPathMapping;
  [(GAXPathMapping *)&v3 dealloc];
}

- (unint64_t)count
{
  v2 = [(GAXPathMapping *)self mapping];
  v3 = [v2 count];

  return v3;
}

- (void)setPathsToIdentifiers:(__CFDictionary *)a3
{
  pathsToIdentifiers = self->_pathsToIdentifiers;
  if (pathsToIdentifiers != a3)
  {
    if (pathsToIdentifiers)
    {
      CFRelease(pathsToIdentifiers);
      self->_pathsToIdentifiers = 0;
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_pathsToIdentifiers = v6;
  }
}

- (GAXPathMapping)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = GAXPathMapping;
  v5 = [(GAXPathMapping *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"identifiersToPaths"];
    v10 = [v4 decodePropertyListForKey:@"mapping"];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"identifiersToRectangleFlags"];
    [(GAXPathMapping *)v5 _configureWithIdentifiersToPaths:v9 mapping:v10 identifiersToRectangleFlags:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GAXPathMapping *)self identifiersToPaths];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D1A0;
  v8[3] = &unk_5CF78;
  v9 = objc_opt_new();
  v6 = v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  [v4 encodeObject:v5 forKey:@"identifiersToPaths"];
  v7 = [(GAXPathMapping *)self mapping];
  [v4 encodeObject:v7 forKey:@"mapping"];

  [v4 encodeObject:v6 forKey:@"identifiersToRectangleFlags"];
}

- (void)addPath:(id)a3 withParentPath:(id)a4
{
  key = a3;
  v6 = a4;
  v7 = CFUUIDCreate(kCFAllocatorDefault);
  if (v7)
  {
    v8 = v7;
    v9 = CFUUIDCreateString(kCFAllocatorDefault, v7);
    if (v9)
    {
      v10 = v9;
      v11 = [(GAXPathMapping *)self pathsToIdentifiers];
      CFDictionarySetValue(v11, key, v10);
      v12 = [(GAXPathMapping *)self identifiersToPaths];
      [v12 setObject:key forKey:v10];

      if (!v6 || (CFDictionaryGetValue(v11, v6), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v13 = [NSNumber numberWithBool:0];
      }

      v14 = [(GAXPathMapping *)self mapping];
      [v14 setObject:v13 forKey:v10];

      CFRelease(v10);
    }

    CFRelease(v8);
  }
}

- (void)replaceParentOfPath:(id)a3 withPath:(id)a4
{
  key = a4;
  v6 = a3;
  v7 = [(GAXPathMapping *)self pathsToIdentifiers];
  v8 = CFDictionaryGetValue(v7, v6);

  if (v8)
  {
    if (!key || (CFDictionaryGetValue(v7, key), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [NSNumber numberWithBool:0];
    }

    v10 = [(GAXPathMapping *)self mapping];
    [v10 setObject:v9 forKey:v8];
  }
}

- (void)removePath:(id)a3
{
  v4 = a3;
  theDict = [(GAXPathMapping *)self pathsToIdentifiers];
  v15 = CFDictionaryGetValue(theDict, v4);
  if (v15)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_D6CC;
    v27 = sub_D6DC;
    v28 = 0;
    v5 = [(GAXPathMapping *)self mapping];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_D6E4;
    v20[3] = &unk_5CFA0;
    v13 = v15;
    v21 = v13;
    v22 = &v23;
    [v5 enumerateKeysAndObjectsUsingBlock:v20];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v24[5];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v29 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v11 = [NSNumber numberWithBool:0];
          [v5 setObject:v11 forKey:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v29 count:16];
      }

      while (v7);
    }

    v12 = [(GAXPathMapping *)self identifiersToPaths];
    [v12 removeObjectForKey:v13];

    _Block_object_dispose(&v23, 8);
  }

  CFDictionaryRemoveValue(theDict, v4);
}

- (void)enumeratePathsAndParentsUsingBlock:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D8C4;
  v7[3] = &unk_5CFC8;
  v4 = a3;
  v8 = v4;
  v9 = &v10;
  [(GAXPathMapping *)self _enumerateUnorderedPathsAndParentsUsingBlock:v7];
  if ((v11[3] & 1) == 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_D928;
    v5[3] = &unk_5CFF0;
    v6 = v4;
    [(GAXPathMapping *)self _enumerateUnorderedPathsAndParentsUsingBlock:v5];
  }

  _Block_object_dispose(&v10, 8);
}

- (id)parentOfPath:(id)a3
{
  v4 = a3;
  v5 = CFDictionaryGetValue([(GAXPathMapping *)self pathsToIdentifiers], v4);

  if (v5)
  {
    v6 = [(GAXPathMapping *)self mapping];
    v7 = [v6 objectForKey:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(GAXPathMapping *)self identifiersToPaths];
      v10 = [v9 objectForKey:v8];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)containsPath:(id)a3
{
  v4 = a3;
  Value = CFDictionaryGetValue([(GAXPathMapping *)self pathsToIdentifiers], v4);

  return Value != 0;
}

- (id)pathMappingByTransformingPointsInPathsUsingBlock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v8 = [(GAXPathMapping *)self identifiersToPaths];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_DBB8;
  v16 = &unk_5D040;
  v9 = v4;
  v17 = v7;
  v18 = v9;
  v10 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:&v13];

  v11 = [(GAXPathMapping *)self mapping:v13];
  [v5 _configureWithIdentifiersToPaths:v10 mapping:v11 identifiersToRectangleFlags:0];

  objc_autoreleasePoolPop(v6);

  return v5;
}

- (void)_configureWithIdentifiersToPaths:(id)a3 mapping:(id)a4 identifiersToRectangleFlags:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    v13 = objc_opt_new();
  }

  else
  {
    v13 = [[NSMutableDictionary alloc] initWithDictionary:v8];
  }

  v14 = v13;
  [(GAXPathMapping *)self setIdentifiersToPaths:v13];
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v16 = Mutable;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_DE48;
    v22 = &unk_5D068;
    v24 = Mutable;
    v23 = v10;
    [v14 enumerateKeysAndObjectsUsingBlock:&v19];

    [(GAXPathMapping *)self setPathsToIdentifiers:v16, v19, v20, v21, v22];
    CFRelease(v16);
  }

  else
  {
    [(GAXPathMapping *)self setPathsToIdentifiers:0];
  }

  if (v12)
  {
    v17 = [[NSMutableDictionary alloc] initWithDictionary:v9];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;
  [(GAXPathMapping *)self setMapping:v17];
}

- (void)_enumerateUnorderedPathsAndParentsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(GAXPathMapping *)self identifiersToPaths];
  v7 = [(GAXPathMapping *)self mapping];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_DFE4;
  v10[3] = &unk_5D090;
  v12 = v4;
  v13 = v5;
  v11 = v6;
  v8 = v4;
  v9 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = GAXPathMapping;
  v3 = [(GAXPathMapping *)&v9 description];
  v4 = [v3 mutableCopy];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_E198;
  v7[3] = &unk_5D0B8;
  v5 = v4;
  v8 = v5;
  [(GAXPathMapping *)self _enumerateUnorderedPathsAndParentsUsingBlock:v7];

  return v5;
}

@end