@interface _MKPinAnnotationViewImageCacheKey
- (BOOL)isEqual:(id)equal;
- (_MKPinAnnotationViewImageCacheKey)initWithMapType:(unint64_t)type pinColor:(id)color traits:(id)traits;
@end

@implementation _MKPinAnnotationViewImageCacheKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_idiom == v5->_idiom && self->_userInterfaceStyle == v5->_userInterfaceStyle && self->_mapType == v5->_mapType)
      {
        v7 = [(UIColor *)self->_pinColor isEqual:v5->_pinColor];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (_MKPinAnnotationViewImageCacheKey)initWithMapType:(unint64_t)type pinColor:(id)color traits:(id)traits
{
  colorCopy = color;
  traitsCopy = traits;
  v15.receiver = self;
  v15.super_class = _MKPinAnnotationViewImageCacheKey;
  v11 = [(_MKPinAnnotationViewImageCacheKey *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_mapType = type;
    objc_storeStrong(&v11->_pinColor, color);
    v12->_idiom = [traitsCopy userInterfaceIdiom];
    v12->_userInterfaceStyle = [traitsCopy userInterfaceStyle];
    v13 = v12;
  }

  return v12;
}

@end