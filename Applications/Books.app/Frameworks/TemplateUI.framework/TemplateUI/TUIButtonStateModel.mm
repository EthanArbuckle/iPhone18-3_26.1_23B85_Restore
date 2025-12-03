@interface TUIButtonStateModel
- (TUIButtonStateModel)initWithButtonAttributes:(id)attributes contentModel:(id)model;
- (TUIButtonStateModel)initWithTitle:(id)title image:(id)image;
- (TUIModelContaining)parentModel;
- (id)modelForButtonType:(unint64_t)type context:(id)context;
- (void)appendContainedChildrenToArray:(id)array;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)children;
@end

@implementation TUIButtonStateModel

- (TUIButtonStateModel)initWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v13.receiver = self;
  v13.super_class = TUIButtonStateModel;
  v8 = [(TUIButtonStateModel *)&v13 init];
  if (v8)
  {
    v9 = (titleCopy | imageCopy) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [[TUIButtonAttributes alloc] initWithTitle:titleCopy image:imageCopy];
    attributes = v8->_attributes;
    v8->_attributes = v10;
  }

  return v8;
}

- (TUIButtonStateModel)initWithButtonAttributes:(id)attributes contentModel:(id)model
{
  attributesCopy = attributes;
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = TUIButtonStateModel;
  v9 = [(TUIButtonStateModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attributes, attributes);
    objc_storeStrong(&v10->_contentModel, model);
  }

  return v10;
}

- (id)modelForButtonType:(unint64_t)type context:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v8 = [(TUIButtonAttributes *)selfCopy->_attributes attributesForButtonType:type];
  v9 = v8;
  if (type && selfCopy->_contentModel)
  {
    if (v8)
    {
      v10 = [[TUIButtonStateModel alloc] initWithButtonAttributes:v8 contentModel:0];
    }

    else
    {
      v10 = 0;
    }

    [contextCopy reportError:1019];
  }

  else
  {
    if (v8 == selfCopy->_attributes)
    {
      goto LABEL_10;
    }

    v10 = [[TUIButtonStateModel alloc] initWithButtonAttributes:v8 contentModel:selfCopy->_contentModel];
  }

  selfCopy = v10;
LABEL_10:

  return selfCopy;
}

- (void)appendContainedChildrenToArray:(id)array
{
  contentModel = self->_contentModel;
  if (contentModel)
  {
    [array addObject:contentModel];
  }
}

- (void)onContainedModelsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);
  [WeakRetained onContainedModelsChanged];
}

- (void)updateModelChildren:(id)children
{
  contentModel = self->_contentModel;
  childrenCopy = children;
  [(TUIModel *)contentModel setParentModel:0];
  firstObject = [childrenCopy firstObject];

  v7 = self->_contentModel;
  self->_contentModel = firstObject;

  [(TUIModel *)self->_contentModel setParentModel:self];

  [(TUIButtonStateModel *)self onContainedModelsChanged];
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end