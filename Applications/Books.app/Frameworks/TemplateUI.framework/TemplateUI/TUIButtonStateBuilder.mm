@interface TUIButtonStateBuilder
- (id)finalizeButtonStateModelWithContext:(id)a3;
- (void)addAttributedString:(id)a3 forRole:(id)a4;
- (void)addImageModel:(id)a3 forRole:(id)a4;
@end

@implementation TUIButtonStateBuilder

- (void)addAttributedString:(id)a3 forRole:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || [v6 isEqualToString:@"title"])
  {
    v8 = [v10 copy];
    title = self->_title;
    self->_title = v8;
  }
}

- (void)addImageModel:(id)a3 forRole:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || [v6 isEqualToString:@"image"])
  {
    v8 = [v10 image];
    image = self->_image;
    self->_image = v8;
  }
}

- (id)finalizeButtonStateModelWithContext:(id)a3
{
  v4 = a3;
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