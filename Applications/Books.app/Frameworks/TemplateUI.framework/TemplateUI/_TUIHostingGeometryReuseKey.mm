@interface _TUIHostingGeometryReuseKey
- (BOOL)isEqual:(id)a3;
- (CGSize)requestedSize;
- (_TUIHostingGeometryReuseKey)initWithType:(id)a3 identifier:(id)a4 requestedSize:(CGSize)a5;
@end

@implementation _TUIHostingGeometryReuseKey

- (_TUIHostingGeometryReuseKey)initWithType:(id)a3 identifier:(id)a4 requestedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = _TUIHostingGeometryReuseKey;
  v11 = [(_TUIHostingGeometryReuseKey *)&v17 init];
  if (v11)
  {
    v12 = [v9 copy];
    type = v11->_type;
    v11->_type = v12;

    v14 = [v10 copy];
    identifier = v11->_identifier;
    v11->_identifier = v14;

    v11->_requestedSize.width = width;
    v11->_requestedSize.height = height;
  }

  return v11;
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