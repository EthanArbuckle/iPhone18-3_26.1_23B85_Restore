@interface _TUIDynamicValueItem
- (TUIModelContaining)parentModel;
- (_TUIDynamicValueItem)initWithEnumerator:(id)enumerator binding:(id)binding value:(id)value context:(id)context transactionCoordinator:(id)coordinator dynamicController:(id)controller nodes:(id)nodes snapshot:(id)self0 flags:(unint64_t)self1 builderClass:(Class)self2;
- (id)validateInstantiationWithContext:(id)context transactionGroup:(id)group layout:(id)layout;
- (void)appendLayoutChildrenToArray:(id)array;
- (void)appendLayoutModelsToArray:(id)array;
- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
- (void)instantiateWithContext:(id)context;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)children;
@end

@implementation _TUIDynamicValueItem

- (_TUIDynamicValueItem)initWithEnumerator:(id)enumerator binding:(id)binding value:(id)value context:(id)context transactionCoordinator:(id)coordinator dynamicController:(id)controller nodes:(id)nodes snapshot:(id)self0 flags:(unint64_t)self1 builderClass:(Class)self2
{
  valueCopy = value;
  contextCopy = context;
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  snapshotCopy = snapshot;
  v28.receiver = self;
  v28.super_class = _TUIDynamicValueItem;
  v23 = [(_TUIDynamicValueItem *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_transactionCoordinator, coordinatorCopy);
    objc_storeWeak(&v24->_dynamicController, controllerCopy);
    v25 = [valueCopy instanceForObserver:v24];
    instance = v24->_instance;
    v24->_instance = v25;

    objc_storeStrong(&v24->_snapshot, snapshot);
    v24->_enumerator.index = enumerator.var0;
    v24->_nodes = nodes;
    v24->_binding = binding;
    v24->_flags = flags;
    v24->_builderClass = class;
    [(_TUIDynamicValueItem *)v24 instantiateWithContext:contextCopy];
  }

  return v24;
}

- (void)updateModelChildren:(id)children
{
  children = self->_children;
  childrenCopy = children;
  [(NSArray *)children enumerateObjectsUsingBlock:&stru_25EB58];
  v6 = [childrenCopy copy];

  v7 = self->_children;
  self->_children = v6;

  v8 = self->_children;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_358E8;
  v9[3] = &unk_25DF80;
  v9[4] = self;
  [(NSArray *)v8 enumerateObjectsUsingBlock:v9];
  [(_TUIDynamicValueItem *)self onContainedModelsChanged];
}

- (void)appendLayoutModelsToArray:(id)array
{
  arrayCopy = array;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3599C;
  v7[3] = &unk_25DF80;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendLayoutChildrenToArray:(id)array
{
  arrayCopy = array;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_35A40;
  v7[3] = &unk_25DF80;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendObjectsWithProtocol:(id)protocol toArray:(id)array
{
  protocolCopy = protocol;
  arrayCopy = array;
  children = self->_children;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_35B0C;
  v11[3] = &unk_25DFA8;
  v12 = protocolCopy;
  v13 = arrayCopy;
  v9 = arrayCopy;
  v10 = protocolCopy;
  [(NSArray *)children enumerateObjectsUsingBlock:v11];
}

- (void)onContainedModelsChanged
{
  parentModel = [(_TUIDynamicValueItem *)self parentModel];
  [parentModel onContainedModelsChanged];
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  transactionCopy = transaction;
  WeakRetained = objc_loadWeakRetained(&self->_transactionCoordinator);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_35C54;
  v7[3] = &unk_25EB80;
  v7[4] = self;
  [WeakRetained scheduleLayoutUpdateWithTransaction:transactionCopy block:v7];
}

- (void)instantiateWithContext:(id)context
{
  contextCopy = context;
  instance = self->_instance;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_35D30;
  v7[3] = &unk_25EBA8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [(TUIDynamicValueInstance *)instance valueWithBlock:v7];
}

- (id)validateInstantiationWithContext:(id)context transactionGroup:(id)group layout:(id)layout
{
  contextCopy = context;
  groupCopy = group;
  snapshot = self->_snapshot;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_35ED4;
  v13[3] = &unk_25E7C0;
  v13[4] = self;
  v14 = groupCopy;
  v15 = contextCopy;
  v10 = contextCopy;
  v11 = groupCopy;
  [v10 evaluateWithSnapshot:snapshot block:v13];

  return self;
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end