@interface TUIImageResourceCacheKey
- (BOOL)isEqual:(id)a3;
- (TUIImageResourceCacheKey)cacheKeyWithColor:(id)a3;
- (TUIImageResourceCacheKey)cacheKeyWithFilterInfo:(id)a3;
- (TUIImageResourceCacheKey)cacheKeyWithSize:(CGSize)a3;
- (TUIImageResourceCacheKey)initWithChildren:(id)a3;
- (TUIImageResourceCacheKey)initWithID:(id)a3;
- (TUIImageResourceCacheKey)initWithURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TUIImageResourceCacheKey

- (TUIImageResourceCacheKey)initWithID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIImageResourceCacheKey;
  v6 = [(TUIImageResourceCacheKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_id, a3);
  }

  return v7;
}

- (TUIImageResourceCacheKey)initWithURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TUIImageResourceCacheKey;
  v5 = [(TUIImageResourceCacheKey *)&v10 init];
  if (v5)
  {
    v6 = [v4 standardizedURL];
    v7 = [v6 absoluteString];
    id = v5->_id;
    v5->_id = v7;
  }

  return v5;
}

- (TUIImageResourceCacheKey)initWithChildren:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIImageResourceCacheKey;
  v6 = [(TUIImageResourceCacheKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_children, a3);
  }

  return v7;
}

- (TUIImageResourceCacheKey)cacheKeyWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TUIImageResourceCacheKey *)self copy];
  v6 = [NSValue valueWithSize:width, height];
  [v5 setSize:v6];

  return v5;
}

- (TUIImageResourceCacheKey)cacheKeyWithColor:(id)a3
{
  v4 = a3;
  v5 = [(TUIImageResourceCacheKey *)self copy];
  [v5 setColor:v4];

  return v5;
}

- (TUIImageResourceCacheKey)cacheKeyWithFilterInfo:(id)a3
{
  v4 = a3;
  v5 = [(TUIImageResourceCacheKey *)self copy];
  [v5 setFilterInfo:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(TUIImageResourceCacheKey *)self id];
    v8 = [v6 id];
    if (v7 != v8)
    {
      v9 = [(TUIImageResourceCacheKey *)self id];
      v41 = [v6 id];
      v42 = v9;
      if (![v9 isEqual:?])
      {
        v10 = 0;
        goto LABEL_27;
      }
    }

    v11 = [(TUIImageResourceCacheKey *)self size];
    v12 = [v6 size];
    if (v11 != v12)
    {
      v3 = [(TUIImageResourceCacheKey *)self size];
      v4 = [v6 size];
      if (![v3 isEqual:v4])
      {
        v10 = 0;
LABEL_25:

LABEL_26:
        if (v7 == v8)
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:

        goto LABEL_28;
      }
    }

    v13 = [(TUIImageResourceCacheKey *)self color];
    v14 = [v6 color];
    v40 = v13;
    v15 = v13 == v14;
    v16 = v14;
    if (!v15)
    {
      v17 = [(TUIImageResourceCacheKey *)self color];
      v35 = [v6 color];
      v36 = v17;
      if (![v17 isEqual:?])
      {
        v10 = 0;
        v18 = v40;
LABEL_23:

LABEL_24:
        if (v11 == v12)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v19 = [(TUIImageResourceCacheKey *)self filterInfo];
    v37 = [v6 filterInfo];
    v38 = v16;
    v39 = v4;
    if (v19 == v37)
    {
      v34 = v3;
    }

    else
    {
      v20 = v3;
      v21 = [(TUIImageResourceCacheKey *)self filterInfo];
      v32 = [v6 filterInfo];
      v33 = v21;
      if (![v21 isEqual:?])
      {
        v10 = 0;
        v29 = v37;
        v3 = v20;
        v4 = v39;
        goto LABEL_21;
      }

      v34 = v20;
    }

    v22 = [(TUIImageResourceCacheKey *)self children];
    v23 = [v6 children];
    v24 = v23;
    if (v22 == v23)
    {

      v10 = 1;
    }

    else
    {
      v25 = [(TUIImageResourceCacheKey *)self children];
      [v6 children];
      v31 = v12;
      v26 = v11;
      v28 = v27 = v19;
      v10 = [v25 isEqual:v28];

      v19 = v27;
      v11 = v26;
      v12 = v31;
    }

    v29 = v37;
    v3 = v34;
    v4 = v39;
    if (v19 == v37)
    {
LABEL_22:

      v18 = v40;
      v16 = v38;
      if (v40 == v38)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_22;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_id hash];
  v4 = [(NSValue *)self->_size hash]^ v3;
  v5 = [(UIColor *)self->_color hash];
  v6 = v4 ^ v5 ^ [(_TUICachedImageFilterInfo *)self->_filterInfo hash];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_children;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6 ^= [*(*(&v13 + 1) + 8 * v11) hash];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TUIImageResourceCacheKey);
  v5 = [(TUIImageResourceCacheKey *)self id];
  [(TUIImageResourceCacheKey *)v4 setId:v5];

  v6 = [(TUIImageResourceCacheKey *)self size];
  [(TUIImageResourceCacheKey *)v4 setSize:v6];

  v7 = [(TUIImageResourceCacheKey *)self color];
  [(TUIImageResourceCacheKey *)v4 setColor:v7];

  v8 = [(TUIImageResourceCacheKey *)self filterInfo];
  [(TUIImageResourceCacheKey *)v4 setFilterInfo:v8];

  v9 = [(TUIImageResourceCacheKey *)self children];
  [(TUIImageResourceCacheKey *)v4 setChildren:v9];

  return v4;
}

@end