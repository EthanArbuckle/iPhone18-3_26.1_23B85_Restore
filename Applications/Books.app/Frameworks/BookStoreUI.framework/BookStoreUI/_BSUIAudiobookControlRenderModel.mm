@interface _BSUIAudiobookControlRenderModel
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (unint64_t)hash;
@end

@implementation _BSUIAudiobookControlRenderModel

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v5 = TUIDynamicCast();

  if (TUIRenderModelIsEqualToRenderModel())
  {
    dynamicAudiobookProgress = [(_BSUIAudiobookControlRenderModel *)self dynamicAudiobookProgress];
    dynamicAudiobookProgress2 = [v5 dynamicAudiobookProgress];
    v8 = dynamicAudiobookProgress == dynamicAudiobookProgress2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(_BSUIAudiobookControlRenderModel *)self identifier];
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