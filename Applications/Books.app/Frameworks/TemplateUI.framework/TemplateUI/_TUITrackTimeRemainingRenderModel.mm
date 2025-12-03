@interface _TUITrackTimeRemainingRenderModel
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _TUITrackTimeRemainingRenderModel

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  if (TUIRenderModelIsEqualToRenderModel(self, v6))
  {
    style = [(_TUITrackTimeRemainingRenderModel *)self style];
    style2 = [v6 style];
    if (style == style2 || [style isEqual:style2])
    {
      dynamicProgress = [(_TUITrackTimeRemainingRenderModel *)self dynamicProgress];
      dynamicProgress2 = [v6 dynamicProgress];
      v11 = dynamicProgress == dynamicProgress2;
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
  identifier = [(_TUITrackTimeRemainingRenderModel *)self identifier];
  v3 = TUIIdentifierHash(identifier);

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