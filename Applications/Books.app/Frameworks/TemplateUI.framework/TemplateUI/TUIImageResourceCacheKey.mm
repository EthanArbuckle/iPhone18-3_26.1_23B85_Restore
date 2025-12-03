@interface TUIImageResourceCacheKey
- (BOOL)isEqual:(id)equal;
- (TUIImageResourceCacheKey)cacheKeyWithColor:(id)color;
- (TUIImageResourceCacheKey)cacheKeyWithFilterInfo:(id)info;
- (TUIImageResourceCacheKey)cacheKeyWithSize:(CGSize)size;
- (TUIImageResourceCacheKey)initWithChildren:(id)children;
- (TUIImageResourceCacheKey)initWithID:(id)d;
- (TUIImageResourceCacheKey)initWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TUIImageResourceCacheKey

- (TUIImageResourceCacheKey)initWithID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = TUIImageResourceCacheKey;
  v6 = [(TUIImageResourceCacheKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_id, d);
  }

  return v7;
}

- (TUIImageResourceCacheKey)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = TUIImageResourceCacheKey;
  v5 = [(TUIImageResourceCacheKey *)&v10 init];
  if (v5)
  {
    standardizedURL = [lCopy standardizedURL];
    absoluteString = [standardizedURL absoluteString];
    id = v5->_id;
    v5->_id = absoluteString;
  }

  return v5;
}

- (TUIImageResourceCacheKey)initWithChildren:(id)children
{
  childrenCopy = children;
  v9.receiver = self;
  v9.super_class = TUIImageResourceCacheKey;
  v6 = [(TUIImageResourceCacheKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_children, children);
  }

  return v7;
}

- (TUIImageResourceCacheKey)cacheKeyWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = [(TUIImageResourceCacheKey *)self copy];
  height = [NSValue valueWithSize:width, height];
  [v5 setSize:height];

  return v5;
}

- (TUIImageResourceCacheKey)cacheKeyWithColor:(id)color
{
  colorCopy = color;
  v5 = [(TUIImageResourceCacheKey *)self copy];
  [v5 setColor:colorCopy];

  return v5;
}

- (TUIImageResourceCacheKey)cacheKeyWithFilterInfo:(id)info
{
  infoCopy = info;
  v5 = [(TUIImageResourceCacheKey *)self copy];
  [v5 setFilterInfo:infoCopy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(TUIImageResourceCacheKey *)self id];
    v8 = [equalCopy id];
    if (v7 != v8)
    {
      v9 = [(TUIImageResourceCacheKey *)self id];
      v41 = [equalCopy id];
      v42 = v9;
      if (![v9 isEqual:?])
      {
        v10 = 0;
        goto LABEL_27;
      }
    }

    v11 = [(TUIImageResourceCacheKey *)self size];
    v12 = [equalCopy size];
    if (v11 != v12)
    {
      v3 = [(TUIImageResourceCacheKey *)self size];
      v4 = [equalCopy size];
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

    color = [(TUIImageResourceCacheKey *)self color];
    color2 = [equalCopy color];
    v40 = color;
    v15 = color == color2;
    v16 = color2;
    if (!v15)
    {
      color3 = [(TUIImageResourceCacheKey *)self color];
      color4 = [equalCopy color];
      v36 = color3;
      if (![color3 isEqual:?])
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

    filterInfo = [(TUIImageResourceCacheKey *)self filterInfo];
    filterInfo2 = [equalCopy filterInfo];
    v38 = v16;
    v39 = v4;
    if (filterInfo == filterInfo2)
    {
      v34 = v3;
    }

    else
    {
      v20 = v3;
      filterInfo3 = [(TUIImageResourceCacheKey *)self filterInfo];
      filterInfo4 = [equalCopy filterInfo];
      v33 = filterInfo3;
      if (![filterInfo3 isEqual:?])
      {
        v10 = 0;
        v29 = filterInfo2;
        v3 = v20;
        v4 = v39;
        goto LABEL_21;
      }

      v34 = v20;
    }

    children = [(TUIImageResourceCacheKey *)self children];
    children2 = [equalCopy children];
    v24 = children2;
    if (children == children2)
    {

      v10 = 1;
    }

    else
    {
      children3 = [(TUIImageResourceCacheKey *)self children];
      [equalCopy children];
      v31 = v12;
      v26 = v11;
      v28 = v27 = filterInfo;
      v10 = [children3 isEqual:v28];

      filterInfo = v27;
      v11 = v26;
      v12 = v31;
    }

    v29 = filterInfo2;
    v3 = v34;
    v4 = v39;
    if (filterInfo == filterInfo2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TUIImageResourceCacheKey);
  v5 = [(TUIImageResourceCacheKey *)self id];
  [(TUIImageResourceCacheKey *)v4 setId:v5];

  v6 = [(TUIImageResourceCacheKey *)self size];
  [(TUIImageResourceCacheKey *)v4 setSize:v6];

  color = [(TUIImageResourceCacheKey *)self color];
  [(TUIImageResourceCacheKey *)v4 setColor:color];

  filterInfo = [(TUIImageResourceCacheKey *)self filterInfo];
  [(TUIImageResourceCacheKey *)v4 setFilterInfo:filterInfo];

  children = [(TUIImageResourceCacheKey *)self children];
  [(TUIImageResourceCacheKey *)v4 setChildren:children];

  return v4;
}

@end