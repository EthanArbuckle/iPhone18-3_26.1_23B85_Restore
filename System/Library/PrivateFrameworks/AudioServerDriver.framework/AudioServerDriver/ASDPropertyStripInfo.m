@interface ASDPropertyStripInfo
- (ASDPropertyStripInfo)initWithDictionary:(id)a3 resourcePath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ASDPropertyStripInfo

- (ASDPropertyStripInfo)initWithDictionary:(id)a3 resourcePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASDPropertyStripInfo;
  v8 = [(ASDPropertyStripInfo *)&v14 init];
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
  v8 = [(ASDPropertyStripInfo *)self path];
  if (v8 || ([(ASDPropertyStripInfo *)v7 path], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(ASDPropertyStripInfo *)self path];
    v4 = [(ASDPropertyStripInfo *)v7 path];
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

  v11 = [(ASDPropertyStripInfo *)self value];
  if (v11 || ([(ASDPropertyStripInfo *)v7 value], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(ASDPropertyStripInfo *)self value:v15];
    v13 = [(ASDPropertyStripInfo *)v7 value];
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
  v3 = [(ASDPropertyStripInfo *)self path];
  v4 = [v3 hash];
  v5 = [(ASDPropertyStripInfo *)self value];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end