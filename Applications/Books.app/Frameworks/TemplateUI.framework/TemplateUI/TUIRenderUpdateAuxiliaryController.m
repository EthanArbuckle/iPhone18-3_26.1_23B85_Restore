@interface TUIRenderUpdateAuxiliaryController
- (TUIRenderUpdateAuxiliaryController)init;
- (TUIRenderUpdateAuxiliaryControllerDelegate)delegate;
- (id)registerDelegate:(id)a3;
- (void)unregisterDelegate:(id)a3;
- (void)updateWithRenderModel:(id)a3 transactionGroup:(id)a4;
@end

@implementation TUIRenderUpdateAuxiliaryController

- (TUIRenderUpdateAuxiliaryController)init
{
  v8.receiver = self;
  v8.super_class = TUIRenderUpdateAuxiliaryController;
  v2 = [(TUIRenderUpdateAuxiliaryController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    currentModel = v2->_currentModel;
    v2->_currentModel = 0;

    v5 = dispatch_queue_create("TUIRenderUpdateAuxiliaryController.accessQueue", 0);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v5;
  }

  return v3;
}

- (id)registerDelegate:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_F894C;
  v16 = sub_F895C;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F8964;
  block[3] = &unk_25DC78;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)unregisterDelegate:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F8A4C;
  v7[3] = &unk_25DCA0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)updateWithRenderModel:(id)a3 transactionGroup:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (self->_currentModel != v9 || ![(TUIRenderModelAuxiliary *)v9 isEqualToRenderModel:?])
  {
    objc_storeStrong(&self->_currentModel, a3);
    v8 = [(TUIRenderUpdateAuxiliaryController *)self delegate];
    [v8 applyUpdate:v9];
  }
}

- (TUIRenderUpdateAuxiliaryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end