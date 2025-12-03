@interface ASDAUStripInfo
+ (BOOL)containsOnlyAUStrips:(id)strips;
- (ASDAUStripInfo)initWithDictionary:(id)dictionary resourcePath:(id)path;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ASDAUStripInfo

- (ASDAUStripInfo)initWithDictionary:(id)dictionary resourcePath:(id)path
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = ASDAUStripInfo;
  v8 = [(ASDAUStripInfo *)&v14 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Path"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [pathCopy stringByAppendingPathComponent:v9];
      path = v8->_path;
      v8->_path = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"Value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_value, v12);
    }
  }

  return v8;
}

+ (BOOL)containsOnlyAUStrips:(id)strips
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  stripsCopy = strips;
  v4 = [stripsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(stripsCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          LOBYTE(v4) = 0;
          goto LABEL_11;
        }
      }

      v4 = [stripsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    LOBYTE(v4) = 1;
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_22;
  }

  v7 = equalCopy;
  path = [(ASDAUStripInfo *)self path];
  if (path || ([(ASDAUStripInfo *)v7 path], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    path2 = [(ASDAUStripInfo *)self path];
    path3 = [(ASDAUStripInfo *)v7 path];
    if (![path2 isEqual:path3])
    {
      v10 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v9 = 1;
  }

  else
  {
    v17 = 0;
    v9 = 0;
  }

  value = [(ASDAUStripInfo *)self value];
  if (value || ([(ASDAUStripInfo *)v7 value], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(ASDAUStripInfo *)self value:v15];
    value2 = [(ASDAUStripInfo *)v7 value];
    v10 = [v12 isEqual:value2];

    if (value)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v10 = 1;
  }

LABEL_17:
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!path)
  {
  }

LABEL_22:
  return v10;
}

- (unint64_t)hash
{
  path = [(ASDAUStripInfo *)self path];
  v4 = [path hash];
  value = [(ASDAUStripInfo *)self value];
  v6 = [value hash];

  return v6 ^ v4;
}

@end