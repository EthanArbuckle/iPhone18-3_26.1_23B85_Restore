@interface TUIModelContainer
- (TUIModelContaining)parentModel;
- (void)appendLayoutChildrenToArray:(id)a3;
- (void)appendLayoutModelsToArray:(id)a3;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)a3;
@end

@implementation TUIModelContainer

- (void)appendLayoutChildrenToArray:(id)a3
{
  v4 = a3;
  submodels = self->_submodels;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_86100;
  v7[3] = &unk_25DF80;
  v8 = v4;
  v6 = v4;
  [(NSArray *)submodels enumerateObjectsUsingBlock:v7];
}

- (void)appendLayoutModelsToArray:(id)a3
{
  v4 = a3;
  submodels = self->_submodels;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_861A4;
  v7[3] = &unk_25DF80;
  v8 = v4;
  v6 = v4;
  [(NSArray *)submodels enumerateObjectsUsingBlock:v7];
}

- (void)onContainedModelsChanged
{
  v2 = [(TUIModelContainer *)self parentModel];
  [v2 onContainedModelsChanged];
}

- (void)updateModelChildren:(id)a3
{
  submodels = self->_submodels;
  v5 = a3;
  [(NSArray *)submodels enumerateObjectsUsingBlock:&stru_2606B8];
  v6 = [v5 copy];

  v7 = self->_submodels;
  self->_submodels = v6;

  v8 = self->_submodels;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_862D0;
  v9[3] = &unk_25DF80;
  v9[4] = self;
  [(NSArray *)v8 enumerateObjectsUsingBlock:v9];
  [(TUIModelContainer *)self onContainedModelsChanged];
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end