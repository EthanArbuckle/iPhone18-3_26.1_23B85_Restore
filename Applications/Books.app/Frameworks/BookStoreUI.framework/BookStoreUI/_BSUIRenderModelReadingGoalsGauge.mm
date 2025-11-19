@interface _BSUIRenderModelReadingGoalsGauge
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _BSUIRenderModelReadingGoalsGauge

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (TUIRenderModelIsEqualToRenderModel())
  {
    v6 = [(_BSUIRenderModelReadingGoalsGauge *)self metrics];
    v7 = [v5 metrics];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(_BSUIRenderModelReadingGoalsGauge *)self identifier];
  v3 = TUIIdentifierHash();

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