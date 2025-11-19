@interface _TUITrackTimeRemainingRenderModel
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _TUITrackTimeRemainingRenderModel

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (TUIRenderModelIsEqualToRenderModel(self, v6))
  {
    v7 = [(_TUITrackTimeRemainingRenderModel *)self style];
    v8 = [v6 style];
    if (v7 == v8 || [v7 isEqual:v8])
    {
      v9 = [(_TUITrackTimeRemainingRenderModel *)self dynamicProgress];
      v10 = [v6 dynamicProgress];
      v11 = v9 == v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(_TUITrackTimeRemainingRenderModel *)self identifier];
  v3 = TUIIdentifierHash(v2);

  return v3;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end