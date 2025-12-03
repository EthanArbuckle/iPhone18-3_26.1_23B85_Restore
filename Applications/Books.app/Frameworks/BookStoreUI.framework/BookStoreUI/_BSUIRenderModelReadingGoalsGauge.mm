@interface _BSUIRenderModelReadingGoalsGauge
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _BSUIRenderModelReadingGoalsGauge

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (TUIRenderModelIsEqualToRenderModel())
  {
    metrics = [(_BSUIRenderModelReadingGoalsGauge *)self metrics];
    metrics2 = [v5 metrics];
    v8 = [metrics isEqual:metrics2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(_BSUIRenderModelReadingGoalsGauge *)self identifier];
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