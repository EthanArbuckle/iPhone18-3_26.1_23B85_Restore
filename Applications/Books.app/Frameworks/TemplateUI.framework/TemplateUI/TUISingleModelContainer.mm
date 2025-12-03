@interface TUISingleModelContainer
- (TUIModelContaining)parentModel;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)children;
@end

@implementation TUISingleModelContainer

- (void)onContainedModelsChanged
{
  parentModel = [(TUISingleModelContainer *)self parentModel];
  [parentModel onContainedModelsChanged];
}

- (void)updateModelChildren:(id)children
{
  firstObject = [children firstObject];
  submodel = self->_submodel;
  if (firstObject != submodel)
  {
    obj = firstObject;
    [(TUIModel *)submodel setParentModel:0];
    objc_storeStrong(&self->_submodel, obj);
    [(TUIModel *)self->_submodel setParentModel:self];
    [(TUISingleModelContainer *)self onContainedModelsChanged];
    firstObject = obj;
  }
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end