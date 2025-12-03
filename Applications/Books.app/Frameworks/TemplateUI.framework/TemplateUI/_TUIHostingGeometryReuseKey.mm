@interface _TUIHostingGeometryReuseKey
- (BOOL)isEqual:(id)equal;
- (CGSize)requestedSize;
- (_TUIHostingGeometryReuseKey)initWithType:(id)type identifier:(id)identifier requestedSize:(CGSize)size;
@end

@implementation _TUIHostingGeometryReuseKey

- (_TUIHostingGeometryReuseKey)initWithType:(id)type identifier:(id)identifier requestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  typeCopy = type;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = _TUIHostingGeometryReuseKey;
  v11 = [(_TUIHostingGeometryReuseKey *)&v17 init];
  if (v11)
  {
    v12 = [typeCopy copy];
    type = v11->_type;
    v11->_type = v12;

    v14 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v11->_requestedSize.width = width;
    v11->_requestedSize.height = height;
  }

  return v11;
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
  if (v7 && (self->_requestedSize.width == *(v7 + 3) ? (v9 = self->_requestedSize.height == *(v7 + 4)) : (v9 = 0), v9 && ((type = self->_type, type == v8[1]) || [(NSString *)type isEqualToString:?])))
  {
    identifier = self->_identifier;
    if (identifier == v8[2])
    {
      v12 = 1;
    }

    else
    {
      v12 = [(NSString *)identifier isEqualToString:?];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGSize)requestedSize
{
  width = self->_requestedSize.width;
  height = self->_requestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end