@interface _TUIDynamicArrayItem
- (Class)layoutClass;
- (TUIModelContaining)parentModel;
- (void)appendLayoutChildrenToArray:(id)a3;
- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)a3;
@end

@implementation _TUIDynamicArrayItem

- (void)appendLayoutChildrenToArray:(id)a3
{
  v4 = a3;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_138148;
  v7[3] = &unk_25DF80;
  v8 = v4;
  v6 = v4;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (Class)layoutClass
{
  v2 = TUIAncestorBoxFromModel(self);
  v3 = [v2 dynamicArrayLayoutIterationClass];

  return v3;
}

- (void)updateModelChildren:(id)a3
{
  v4 = a3;
  [(NSArray *)self->_children enumerateObjectsUsingBlock:&stru_262668];
  children = self->_children;
  self->_children = v4;
  v6 = v4;

  v7 = self->_children;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_138270;
  v8[3] = &unk_25DF80;
  v8[4] = self;
  [(NSArray *)v7 enumerateObjectsUsingBlock:v8];
  [(_TUIDynamicArrayItem *)self onContainedModelsChanged];
}

- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  children = self->_children;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_13834C;
  v11[3] = &unk_25DFA8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSArray *)children enumerateObjectsUsingBlock:v11];
}

- (void)onContainedModelsChanged
{
  v2 = [(_TUIDynamicArrayItem *)self parentModel];
  [v2 onContainedModelsChanged];
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end