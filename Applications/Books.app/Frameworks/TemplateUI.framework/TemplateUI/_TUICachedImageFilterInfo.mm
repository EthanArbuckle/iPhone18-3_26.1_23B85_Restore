@interface _TUICachedImageFilterInfo
- (BOOL)isEqual:(id)equal;
- (CGSize)naturalSize;
- (_TUICachedImageFilterInfo)initWithFilter:(id)filter naturalSize:(CGSize)size contentsScale:(double)scale;
@end

@implementation _TUICachedImageFilterInfo

- (_TUICachedImageFilterInfo)initWithFilter:(id)filter naturalSize:(CGSize)size contentsScale:(double)scale
{
  height = size.height;
  width = size.width;
  filterCopy = filter;
  v14.receiver = self;
  v14.super_class = _TUICachedImageFilterInfo;
  v11 = [(_TUICachedImageFilterInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_filter, filter);
    v12->_naturalSize.width = width;
    v12->_naturalSize.height = height;
    v12->_contentsScale = scale;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = equalCopy;
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
    filter = [v7 filter];
    if (filter == filter && (([v8 naturalSize], self->_naturalSize.width == v12) ? (v13 = self->_naturalSize.height == v11) : (v13 = 0), v13))
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