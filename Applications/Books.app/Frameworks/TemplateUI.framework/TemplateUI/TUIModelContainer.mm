@interface TUIModelContainer
- (TUIModelContaining)parentModel;
- (void)appendLayoutChildrenToArray:(id)array;
- (void)appendLayoutModelsToArray:(id)array;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)children;
@end

@implementation TUIModelContainer

- (void)appendLayoutChildrenToArray:(id)array
{
  arrayCopy = array;
  submodels = self->_submodels;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_86100;
  v7[3] = &unk_25DF80;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)submodels enumerateObjectsUsingBlock:v7];
}

- (void)appendLayoutModelsToArray:(id)array
{
  arrayCopy = array;
  submodels = self->_submodels;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_861A4;
  v7[3] = &unk_25DF80;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)submodels enumerateObjectsUsingBlock:v7];
}

- (void)onContainedModelsChanged
{
  parentModel = [(TUIModelContainer *)self parentModel];
  [parentModel onContainedModelsChanged];
}

- (void)updateModelChildren:(id)children
{
  submodels = self->_submodels;
  childrenCopy = children;
  [(NSArray *)submodels enumerateObjectsUsingBlock:&stru_2606B8];
  v6 = [childrenCopy copy];

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