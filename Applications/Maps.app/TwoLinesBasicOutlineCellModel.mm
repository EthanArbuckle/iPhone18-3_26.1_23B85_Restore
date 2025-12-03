@interface TwoLinesBasicOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesBasicOutlineCellModel)initWithBackgroundModel:(id)model contentModelBlock:(id)block;
- (TwoLinesContentViewModel)contentModel;
@end

@implementation TwoLinesBasicOutlineCellModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    backgroundModel = [(TwoLinesBasicOutlineCellModel *)v5 backgroundModel];
    v7 = backgroundModel;
    if (backgroundModel == self->_backgroundModel)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(SidebarOutlineCellBackgroundModel *)backgroundModel isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (TwoLinesContentViewModel)contentModel
{
  contentModel = self->_contentModel;
  if (!contentModel)
  {
    v4 = (*(self->_contentBlock + 2))();
    v5 = self->_contentModel;
    self->_contentModel = v4;

    contentModel = self->_contentModel;
  }

  return contentModel;
}

- (TwoLinesBasicOutlineCellModel)initWithBackgroundModel:(id)model contentModelBlock:(id)block
{
  modelCopy = model;
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = TwoLinesBasicOutlineCellModel;
  v9 = [(TwoLinesBasicOutlineCellModel *)&v13 init];
  if (v9)
  {
    v10 = [blockCopy copy];
    contentBlock = v9->_contentBlock;
    v9->_contentBlock = v10;

    objc_storeStrong(&v9->_backgroundModel, model);
  }

  return v9;
}

@end