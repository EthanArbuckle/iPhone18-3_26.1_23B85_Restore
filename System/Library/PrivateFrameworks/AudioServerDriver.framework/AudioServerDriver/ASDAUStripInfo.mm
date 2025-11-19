@interface ASDAUStripInfo
+ (BOOL)containsOnlyAUStrips:(id)a3;
- (ASDAUStripInfo)initWithDictionary:(id)a3 resourcePath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ASDAUStripInfo

- (ASDAUStripInfo)initWithDictionary:(id)a3 resourcePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASDAUStripInfo;
  v8 = [(ASDAUStripInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"Path"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 stringByAppendingPathComponent:v9];
      path = v8->_path;
      v8->_path = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"Value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_value, v12);
    }
  }

  return v8;
}

+ (BOOL)containsOnlyAUStrips:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          LOBYTE(v4) = 0;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
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

  v7 = v6;
  v8 = [(ASDAUStripInfo *)self path];
  if (v8 || ([(ASDAUStripInfo *)v7 path], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(ASDAUStripInfo *)self path];
    v4 = [(ASDAUStripInfo *)v7 path];
    if (![v3 isEqual:v4])
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

  v11 = [(ASDAUStripInfo *)self value];
  if (v11 || ([(ASDAUStripInfo *)v7 value], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(ASDAUStripInfo *)self value:v15];
    v13 = [(ASDAUStripInfo *)v7 value];
    v10 = [v12 isEqual:v13];

    if (v11)
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
  if (!v8)
  {
  }

LABEL_22:
  return v10;
}

- (unint64_t)hash
{
  v3 = [(ASDAUStripInfo *)self path];
  v4 = [v3 hash];
  v5 = [(ASDAUStripInfo *)self value];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end