@interface _TUIProgressRenderModel
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _TUIProgressRenderModel

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  if (TUIRenderModelIsEqualToRenderModel(self, v6) && (v7 = -[_TUIProgressRenderModel mode](self, "mode"), v7 == [v6 mode]) && (-[_TUIProgressRenderModel value](self, "value"), v9 = v8, objc_msgSend(v6, "value"), v9 == v10) && (v11 = -[_TUIProgressRenderModel paused](self, "paused"), v11 == objc_msgSend(v6, "paused")))
  {
    color = [(_TUIProgressRenderModel *)self color];
    color2 = [v6 color];
    v12 = color == color2 || [color isEqual:color2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  identifier = [(_TUIProgressRenderModel *)self identifier];
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