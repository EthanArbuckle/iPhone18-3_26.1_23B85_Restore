@interface _TUINowPlayingRenderModel
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _TUINowPlayingRenderModel

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, modelCopy);

  if (TUIRenderModelIsEqualToRenderModel(self, v6) && (v7 = -[_TUINowPlayingRenderModel playing](self, "playing"), v7 == [v6 playing]))
  {
    color = [(_TUINowPlayingRenderModel *)self color];
    color2 = [v6 color];
    v8 = color == color2 || [color isEqual:color2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(_TUINowPlayingRenderModel *)self identifier];
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