@interface ASDPropertyStripInfo
- (ASDPropertyStripInfo)initWithDictionary:(id)dictionary resourcePath:(id)path;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ASDPropertyStripInfo

- (ASDPropertyStripInfo)initWithDictionary:(id)dictionary resourcePath:(id)path
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = ASDPropertyStripInfo;
  v8 = [(ASDPropertyStripInfo *)&v14 init];
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
  path = [(ASDPropertyStripInfo *)self path];
  if (path || ([(ASDPropertyStripInfo *)v7 path], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    path2 = [(ASDPropertyStripInfo *)self path];
    path3 = [(ASDPropertyStripInfo *)v7 path];
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

  value = [(ASDPropertyStripInfo *)self value];
  if (value || ([(ASDPropertyStripInfo *)v7 value], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(ASDPropertyStripInfo *)self value:v15];
    value2 = [(ASDPropertyStripInfo *)v7 value];
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
  path = [(ASDPropertyStripInfo *)self path];
  v4 = [path hash];
  value = [(ASDPropertyStripInfo *)self value];
  v6 = [value hash];

  return v6 ^ v4;
}

@end