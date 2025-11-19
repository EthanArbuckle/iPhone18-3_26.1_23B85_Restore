@interface _TUICachedImageFilterInfo
- (BOOL)isEqual:(id)a3;
- (CGSize)naturalSize;
- (_TUICachedImageFilterInfo)initWithFilter:(id)a3 naturalSize:(CGSize)a4 contentsScale:(double)a5;
@end

@implementation _TUICachedImageFilterInfo

- (_TUICachedImageFilterInfo)initWithFilter:(id)a3 naturalSize:(CGSize)a4 contentsScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = _TUICachedImageFilterInfo;
  v11 = [(_TUICachedImageFilterInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_filter, a3);
    v12->_naturalSize.width = width;
    v12->_naturalSize.height = height;
    v12->_contentsScale = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    filter = self->_filter;
    v10 = [v7 filter];
    if (filter == v10 && (([v8 naturalSize], self->_naturalSize.width == v12) ? (v13 = self->_naturalSize.height == v11) : (v13 = 0), v13))
    {
      contentsScale = self->_contentsScale;
      [v8 contentsScale];
      v14 = contentsScale == v17;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGSize)naturalSize
{
  width = self->_naturalSize.width;
  height = self->_naturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end