@interface AEGridEnvironment
- (AEGridEnvironment)init;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation AEGridEnvironment

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v22 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    [(AEGridEnvironment *)self headerHeight];
    v8 = v7;
    [(AEGridEnvironment *)v6 headerHeight];
    if (v8 != v9)
    {
      goto LABEL_11;
    }

    [(AEGridEnvironment *)self targetBottomMargin];
    v11 = v10;
    [(AEGridEnvironment *)v6 targetBottomMargin];
    if (v11 != v12)
    {
      goto LABEL_11;
    }

    [(AEGridEnvironment *)self minimumTileHeight];
    v14 = v13;
    [(AEGridEnvironment *)v6 minimumTileHeight];
    if (v14 == v15 && ([(AEGridEnvironment *)self scale], v17 = v16, [(AEGridEnvironment *)v6 scale], v17 == v18))
    {
      [(AEGridEnvironment *)self compactExtensionHeight];
      v20 = v19;
      [(AEGridEnvironment *)v6 compactExtensionHeight];
      v22 = v20 == v21;
    }

    else
    {
LABEL_11:
      v22 = 0;
    }
  }

  else
  {
LABEL_9:
    v22 = 0;
  }

LABEL_13:

  return v22;
}

- (unint64_t)hash
{
  [(AEGridEnvironment *)self scale];
  v4 = v3;
  [(AEGridEnvironment *)self headerHeight];
  v6 = (v4 * v5);
  [(AEGridEnvironment *)self targetBottomMargin];
  v8 = (v4 * v7);
  [(AEGridEnvironment *)self minimumTileHeight];
  v10 = (v4 * v9);
  [(AEGridEnvironment *)self compactExtensionHeight];
  return v6 ^ v4 ^ v8 ^ v10 ^ (v4 * v11);
}

- (AEGridEnvironment)init
{
  v3.receiver = self;
  v3.super_class = AEGridEnvironment;
  result = [(AEGridEnvironment *)&v3 init];
  if (result)
  {
    result->_scale = 1.0;
  }

  return result;
}

@end