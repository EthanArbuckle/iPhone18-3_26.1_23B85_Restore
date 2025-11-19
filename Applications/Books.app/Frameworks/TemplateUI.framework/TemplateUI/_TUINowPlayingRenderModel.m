@interface _TUINowPlayingRenderModel
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _TUINowPlayingRenderModel

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TUIDynamicCast(v5, v4);

  if (TUIRenderModelIsEqualToRenderModel(self, v6) && (v7 = -[_TUINowPlayingRenderModel playing](self, "playing"), v7 == [v6 playing]))
  {
    v9 = [(_TUINowPlayingRenderModel *)self color];
    v10 = [v6 color];
    v8 = v9 == v10 || [v9 isEqual:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(_TUINowPlayingRenderModel *)self identifier];
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