@interface GAXPathMapping
- (BOOL)containsPath:(id)path;
- (GAXPathMapping)init;
- (GAXPathMapping)initWithCoder:(id)coder;
- (id)description;
- (id)parentOfPath:(id)path;
- (id)pathMappingByTransformingPointsInPathsUsingBlock:(id)block;
- (unint64_t)count;
- (void)_configureWithIdentifiersToPaths:(id)paths mapping:(id)mapping identifiersToRectangleFlags:(id)flags;
- (void)_enumerateUnorderedPathsAndParentsUsingBlock:(id)block;
- (void)addPath:(id)path withParentPath:(id)parentPath;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumeratePathsAndParentsUsingBlock:(id)block;
- (void)removePath:(id)path;
- (void)replaceParentOfPath:(id)path withPath:(id)withPath;
- (void)setPathsToIdentifiers:(__CFDictionary *)identifiers;
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
  mapping = [(GAXPathMapping *)self mapping];
  v3 = [mapping count];

  return v3;
}

- (void)setPathsToIdentifiers:(__CFDictionary *)identifiers
{
  pathsToIdentifiers = self->_pathsToIdentifiers;
  if (pathsToIdentifiers != identifiers)
  {
    if (pathsToIdentifiers)
    {
      CFRelease(pathsToIdentifiers);
      self->_pathsToIdentifiers = 0;
    }

    if (identifiers)
    {
      v6 = CFRetain(identifiers);
    }

    else
    {
      v6 = 0;
    }

    self->_pathsToIdentifiers = v6;
  }
}

- (GAXPathMapping)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = GAXPathMapping;
  v5 = [(GAXPathMapping *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"identifiersToPaths"];
    v10 = [coderCopy decodePropertyListForKey:@"mapping"];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"identifiersToRectangleFlags"];
    [(GAXPathMapping *)v5 _configureWithIdentifiersToPaths:v9 mapping:v10 identifiersToRectangleFlags:v14];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifiersToPaths = [(GAXPathMapping *)self identifiersToPaths];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D1A0;
  v8[3] = &unk_5CF78;
  v9 = objc_opt_new();
  v6 = v9;
  [identifiersToPaths enumerateKeysAndObjectsUsingBlock:v8];
  [coderCopy encodeObject:identifiersToPaths forKey:@"identifiersToPaths"];
  mapping = [(GAXPathMapping *)self mapping];
  [coderCopy encodeObject:mapping forKey:@"mapping"];

  [coderCopy encodeObject:v6 forKey:@"identifiersToRectangleFlags"];
}

- (void)addPath:(id)path withParentPath:(id)parentPath
{
  key = path;
  parentPathCopy = parentPath;
  v7 = CFUUIDCreate(kCFAllocatorDefault);
  if (v7)
  {
    v8 = v7;
    v9 = CFUUIDCreateString(kCFAllocatorDefault, v7);
    if (v9)
    {
      v10 = v9;
      pathsToIdentifiers = [(GAXPathMapping *)self pathsToIdentifiers];
      CFDictionarySetValue(pathsToIdentifiers, key, v10);
      identifiersToPaths = [(GAXPathMapping *)self identifiersToPaths];
      [identifiersToPaths setObject:key forKey:v10];

      if (!parentPathCopy || (CFDictionaryGetValue(pathsToIdentifiers, parentPathCopy), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v13 = [NSNumber numberWithBool:0];
      }

      mapping = [(GAXPathMapping *)self mapping];
      [mapping setObject:v13 forKey:v10];

      CFRelease(v10);
    }

    CFRelease(v8);
  }
}

- (void)replaceParentOfPath:(id)path withPath:(id)withPath
{
  key = withPath;
  pathCopy = path;
  pathsToIdentifiers = [(GAXPathMapping *)self pathsToIdentifiers];
  v8 = CFDictionaryGetValue(pathsToIdentifiers, pathCopy);

  if (v8)
  {
    if (!key || (CFDictionaryGetValue(pathsToIdentifiers, key), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [NSNumber numberWithBool:0];
    }

    mapping = [(GAXPathMapping *)self mapping];
    [mapping setObject:v9 forKey:v8];
  }
}

- (void)removePath:(id)path
{
  pathCopy = path;
  theDict = [(GAXPathMapping *)self pathsToIdentifiers];
  v15 = CFDictionaryGetValue(theDict, pathCopy);
  if (v15)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_D6CC;
    v27 = sub_D6DC;
    v28 = 0;
    mapping = [(GAXPathMapping *)self mapping];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_D6E4;
    v20[3] = &unk_5CFA0;
    v13 = v15;
    v21 = v13;
    v22 = &v23;
    [mapping enumerateKeysAndObjectsUsingBlock:v20];
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
          [mapping setObject:v11 forKey:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v29 count:16];
      }

      while (v7);
    }

    identifiersToPaths = [(GAXPathMapping *)self identifiersToPaths];
    [identifiersToPaths removeObjectForKey:v13];

    _Block_object_dispose(&v23, 8);
  }

  CFDictionaryRemoveValue(theDict, pathCopy);
}

- (void)enumeratePathsAndParentsUsingBlock:(id)block
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_D8C4;
  v7[3] = &unk_5CFC8;
  blockCopy = block;
  v8 = blockCopy;
  v9 = &v10;
  [(GAXPathMapping *)self _enumerateUnorderedPathsAndParentsUsingBlock:v7];
  if ((v11[3] & 1) == 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_D928;
    v5[3] = &unk_5CFF0;
    v6 = blockCopy;
    [(GAXPathMapping *)self _enumerateUnorderedPathsAndParentsUsingBlock:v5];
  }

  _Block_object_dispose(&v10, 8);
}

- (id)parentOfPath:(id)path
{
  pathCopy = path;
  v5 = CFDictionaryGetValue([(GAXPathMapping *)self pathsToIdentifiers], pathCopy);

  if (v5)
  {
    mapping = [(GAXPathMapping *)self mapping];
    v7 = [mapping objectForKey:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      identifiersToPaths = [(GAXPathMapping *)self identifiersToPaths];
      v10 = [identifiersToPaths objectForKey:v8];
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

- (BOOL)containsPath:(id)path
{
  pathCopy = path;
  Value = CFDictionaryGetValue([(GAXPathMapping *)self pathsToIdentifiers], pathCopy);

  return Value != 0;
}

- (id)pathMappingByTransformingPointsInPathsUsingBlock:(id)block
{
  blockCopy = block;
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  identifiersToPaths = [(GAXPathMapping *)self identifiersToPaths];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_DBB8;
  v16 = &unk_5D040;
  v9 = blockCopy;
  v17 = v7;
  v18 = v9;
  v10 = v7;
  [identifiersToPaths enumerateKeysAndObjectsUsingBlock:&v13];

  v11 = [(GAXPathMapping *)self mapping:v13];
  [v5 _configureWithIdentifiersToPaths:v10 mapping:v11 identifiersToRectangleFlags:0];

  objc_autoreleasePoolPop(v6);

  return v5;
}

- (void)_configureWithIdentifiersToPaths:(id)paths mapping:(id)mapping identifiersToRectangleFlags:(id)flags
{
  pathsCopy = paths;
  mappingCopy = mapping;
  flagsCopy = flags;
  if (pathsCopy)
  {
    v11 = mappingCopy == 0;
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
    v13 = [[NSMutableDictionary alloc] initWithDictionary:pathsCopy];
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
    v23 = flagsCopy;
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
    v17 = [[NSMutableDictionary alloc] initWithDictionary:mappingCopy];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;
  [(GAXPathMapping *)self setMapping:v17];
}

- (void)_enumerateUnorderedPathsAndParentsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_class();
  identifiersToPaths = [(GAXPathMapping *)self identifiersToPaths];
  mapping = [(GAXPathMapping *)self mapping];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_DFE4;
  v10[3] = &unk_5D090;
  v12 = blockCopy;
  v13 = v5;
  v11 = identifiersToPaths;
  v8 = blockCopy;
  v9 = identifiersToPaths;
  [mapping enumerateKeysAndObjectsUsingBlock:v10];
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