@interface TUIButtonStateModel
- (TUIButtonStateModel)initWithButtonAttributes:(id)a3 contentModel:(id)a4;
- (TUIButtonStateModel)initWithTitle:(id)a3 image:(id)a4;
- (TUIModelContaining)parentModel;
- (id)modelForButtonType:(unint64_t)a3 context:(id)a4;
- (void)appendContainedChildrenToArray:(id)a3;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)a3;
@end

@implementation TUIButtonStateModel

- (TUIButtonStateModel)initWithTitle:(id)a3 image:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TUIButtonStateModel;
  v8 = [(TUIButtonStateModel *)&v13 init];
  if (v8)
  {
    v9 = (v6 | v7) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [[TUIButtonAttributes alloc] initWithTitle:v6 image:v7];
    attributes = v8->_attributes;
    v8->_attributes = v10;
  }

  return v8;
}

- (TUIButtonStateModel)initWithButtonAttributes:(id)a3 contentModel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TUIButtonStateModel;
  v9 = [(TUIButtonStateModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributes, a3);
    objc_storeStrong(&v10->_contentModel, a4);
  }

  return v10;
}

- (id)modelForButtonType:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = [(TUIButtonAttributes *)v7->_attributes attributesForButtonType:a3];
  v9 = v8;
  if (a3 && v7->_contentModel)
  {
    if (v8)
    {
      v10 = [[TUIButtonStateModel alloc] initWithButtonAttributes:v8 contentModel:0];
    }

    else
    {
      v10 = 0;
    }

    [v6 reportError:1019];
  }

  else
  {
    if (v8 == v7->_attributes)
    {
      goto LABEL_10;
    }

    v10 = [[TUIButtonStateModel alloc] initWithButtonAttributes:v8 contentModel:v7->_contentModel];
  }

  v7 = v10;
LABEL_10:

  return v7;
}

- (void)appendContainedChildrenToArray:(id)a3
{
  contentModel = self->_contentModel;
  if (contentModel)
  {
    [a3 addObject:contentModel];
  }
}

- (void)onContainedModelsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);
  [WeakRetained onContainedModelsChanged];
}

- (void)updateModelChildren:(id)a3
{
  contentModel = self->_contentModel;
  v5 = a3;
  [(TUIModel *)contentModel setParentModel:0];
  v6 = [v5 firstObject];

  v7 = self->_contentModel;
  self->_contentModel = v6;

  [(TUIModel *)self->_contentModel setParentModel:self];

  [(TUIButtonStateModel *)self onContainedModelsChanged];
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end