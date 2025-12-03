@interface TUIButtonStateBuilder
- (id)finalizeButtonStateModelWithContext:(id)context;
- (void)addAttributedString:(id)string forRole:(id)role;
- (void)addImageModel:(id)model forRole:(id)role;
@end

@implementation TUIButtonStateBuilder

- (void)addAttributedString:(id)string forRole:(id)role
{
  stringCopy = string;
  roleCopy = role;
  v7 = roleCopy;
  if (!roleCopy || [roleCopy isEqualToString:@"title"])
  {
    v8 = [stringCopy copy];
    title = self->_title;
    self->_title = v8;
  }
}

- (void)addImageModel:(id)model forRole:(id)role
{
  modelCopy = model;
  roleCopy = role;
  v7 = roleCopy;
  if (!roleCopy || [roleCopy isEqualToString:@"image"])
  {
    image = [modelCopy image];
    image = self->_image;
    self->_image = image;
  }
}

- (id)finalizeButtonStateModelWithContext:(id)context
{
  contextCopy = context;
  if (*&self->_title == 0 && !self->_contentModel)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[TUIButtonStateModel alloc] initWithTitle:self->_title image:self->_image];
    if (self->_contentModel)
    {
      contentModel = self->_contentModel;
      v6 = [NSArray arrayWithObjects:&contentModel count:1];
      [(TUIButtonStateModel *)v5 updateModelChildren:v6];
    }
  }

  return v5;
}

@end