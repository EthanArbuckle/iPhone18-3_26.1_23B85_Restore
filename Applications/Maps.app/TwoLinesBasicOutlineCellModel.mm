@interface TwoLinesBasicOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (TwoLinesBasicOutlineCellModel)initWithBackgroundModel:(id)a3 contentModelBlock:(id)a4;
- (TwoLinesContentViewModel)contentModel;
@end

@implementation TwoLinesBasicOutlineCellModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(TwoLinesBasicOutlineCellModel *)v5 backgroundModel];
    v7 = v6;
    if (v6 == self->_backgroundModel)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(SidebarOutlineCellBackgroundModel *)v6 isEqual:?];
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

- (TwoLinesBasicOutlineCellModel)initWithBackgroundModel:(id)a3 contentModelBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = TwoLinesBasicOutlineCellModel;
  v9 = [(TwoLinesBasicOutlineCellModel *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    contentBlock = v9->_contentBlock;
    v9->_contentBlock = v10;

    objc_storeStrong(&v9->_backgroundModel, a3);
  }

  return v9;
}

@end