@interface _TUIDynamicArrayItem
- (Class)layoutClass;
- (TUIModelContaining)parentModel;
- (void)appendLayoutChildrenToArray:(id)array;
- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)children;
@end

@implementation _TUIDynamicArrayItem

- (void)appendLayoutChildrenToArray:(id)array
{
  arrayCopy = array;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_138148;
  v7[3] = &unk_25DF80;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (Class)layoutClass
{
  v2 = TUIAncestorBoxFromModel(self);
  dynamicArrayLayoutIterationClass = [v2 dynamicArrayLayoutIterationClass];

  return dynamicArrayLayoutIterationClass;
}

- (void)updateModelChildren:(id)children
{
  childrenCopy = children;
  [(NSArray *)self->_children enumerateObjectsUsingBlock:&stru_262668];
  children = self->_children;
  self->_children = childrenCopy;
  v6 = childrenCopy;

  v7 = self->_children;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_138270;
  v8[3] = &unk_25DF80;
  v8[4] = self;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v8];
  [(_TUIDynamicArrayItem *)self onContainedModelsChanged];
}

- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array
{
  protocolCopy = protocol;
  arrayCopy = array;
  children = self->_children;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_13834C;
  v11[3] = &unk_25DFA8;
  v12 = protocolCopy;
  v13 = arrayCopy;
  v9 = arrayCopy;
  v10 = protocolCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v11];
}

- (void)onContainedModelsChanged
{
  parentModel = [(_TUIDynamicArrayItem *)self parentModel];
  [parentModel onContainedModelsChanged];
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end