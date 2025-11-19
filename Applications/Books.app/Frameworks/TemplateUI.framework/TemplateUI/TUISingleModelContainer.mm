@interface TUISingleModelContainer
- (TUIModelContaining)parentModel;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)a3;
@end

@implementation TUISingleModelContainer

- (void)onContainedModelsChanged
{
  v2 = [(TUISingleModelContainer *)self parentModel];
  [v2 onContainedModelsChanged];
}

- (void)updateModelChildren:(id)a3
{
  v4 = [a3 firstObject];
  submodel = self->_submodel;
  if (v4 != submodel)
  {
    obj = v4;
    [(TUIModel *)submodel setParentModel:0];
    objc_storeStrong(&self->_submodel, obj);
    [(TUIModel *)self->_submodel setParentModel:self];
    [(TUISingleModelContainer *)self onContainedModelsChanged];
    v4 = obj;
  }
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end