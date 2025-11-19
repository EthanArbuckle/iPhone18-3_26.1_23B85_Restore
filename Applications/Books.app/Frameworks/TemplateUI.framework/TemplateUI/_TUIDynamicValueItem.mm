@interface _TUIDynamicValueItem
- (TUIModelContaining)parentModel;
- (_TUIDynamicValueItem)initWithEnumerator:(id)a3 binding:(id)a4 value:(id)a5 context:(id)a6 transactionCoordinator:(id)a7 dynamicController:(id)a8 nodes:(id)a9 snapshot:(id)a10 flags:(unint64_t)a11 builderClass:(Class)a12;
- (id)validateInstantiationWithContext:(id)a3 transactionGroup:(id)a4 layout:(id)a5;
- (void)appendLayoutChildrenToArray:(id)a3;
- (void)appendLayoutModelsToArray:(id)a3;
- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4;
- (void)dynamicChanged:(id)a3 transaction:(id)a4;
- (void)instantiateWithContext:(id)a3;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)a3;
@end

@implementation _TUIDynamicValueItem

- (_TUIDynamicValueItem)initWithEnumerator:(id)a3 binding:(id)a4 value:(id)a5 context:(id)a6 transactionCoordinator:(id)a7 dynamicController:(id)a8 nodes:(id)a9 snapshot:(id)a10 flags:(unint64_t)a11 builderClass:(Class)a12
{
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v28.receiver = self;
  v28.super_class = _TUIDynamicValueItem;
  v23 = [(_TUIDynamicValueItem *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_transactionCoordinator, v20);
    objc_storeWeak(&v24->_dynamicController, v21);
    v25 = [v18 instanceForObserver:v24];
    instance = v24->_instance;
    v24->_instance = v25;

    objc_storeStrong(&v24->_snapshot, a10);
    v24->_enumerator.index = a3.var0;
    v24->_nodes = a9;
    v24->_binding = a4;
    v24->_flags = a11;
    v24->_builderClass = a12;
    [(_TUIDynamicValueItem *)v24 instantiateWithContext:v19];
  }

  return v24;
}

- (void)updateModelChildren:(id)a3
{
  children = self->_children;
  v5 = a3;
  [(NSArray *)children enumerateObjectsUsingBlock:&stru_25EB58];
  v6 = [v5 copy];

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

- (void)appendLayoutModelsToArray:(id)a3
{
  v4 = a3;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_3599C;
  v7[3] = &unk_25DF80;
  v8 = v4;
  v6 = v4;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendLayoutChildrenToArray:(id)a3
{
  v4 = a3;
  children = self->_children;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_35A40;
  v7[3] = &unk_25DF80;
  v8 = v4;
  v6 = v4;
  [(NSArray *)children enumerateObjectsUsingBlock:v7];
}

- (void)appendObjectsWithProtocol:(id)a3 toArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  children = self->_children;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_35B0C;
  v11[3] = &unk_25DFA8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(NSArray *)children enumerateObjectsUsingBlock:v11];
}

- (void)onContainedModelsChanged
{
  v2 = [(_TUIDynamicValueItem *)self parentModel];
  [v2 onContainedModelsChanged];
}

- (void)dynamicChanged:(id)a3 transaction:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_transactionCoordinator);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_35C54;
  v7[3] = &unk_25EB80;
  v7[4] = self;
  [WeakRetained scheduleLayoutUpdateWithTransaction:v5 block:v7];
}

- (void)instantiateWithContext:(id)a3
{
  v4 = a3;
  instance = self->_instance;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_35D30;
  v7[3] = &unk_25EBA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(TUIDynamicValueInstance *)instance valueWithBlock:v7];
}

- (id)validateInstantiationWithContext:(id)a3 transactionGroup:(id)a4 layout:(id)a5
{
  v7 = a3;
  v8 = a4;
  snapshot = self->_snapshot;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_35ED4;
  v13[3] = &unk_25E7C0;
  v13[4] = self;
  v14 = v8;
  v15 = v7;
  v10 = v7;
  v11 = v8;
  [v10 evaluateWithSnapshot:snapshot block:v13];

  return self;
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end