@interface _TUIProgressRenderModel
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _TUIProgressRenderModel

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (TUIRenderModelIsEqualToRenderModel(self, v6) && (v7 = -[_TUIProgressRenderModel mode](self, "mode"), v7 == [v6 mode]) && (-[_TUIProgressRenderModel value](self, "value"), v9 = v8, objc_msgSend(v6, "value"), v9 == v10) && (v11 = -[_TUIProgressRenderModel paused](self, "paused"), v11 == objc_msgSend(v6, "paused")))
  {
    v14 = [(_TUIProgressRenderModel *)self color];
    v15 = [v6 color];
    v12 = v14 == v15 || [v14 isEqual:v15];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(_TUIProgressRenderModel *)self identifier];
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