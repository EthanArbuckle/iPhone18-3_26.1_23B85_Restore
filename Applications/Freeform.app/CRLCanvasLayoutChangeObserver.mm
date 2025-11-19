@interface CRLCanvasLayoutChangeObserver
- (CRLCanvasLayoutChangeObserver)initWithChangeNotifier:(id)a3 layoutController:(id)a4;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (void)didProcessAllChanges;
- (void)i_layoutRegistered:(id)a3;
- (void)i_layoutUnregistered:(id)a3;
- (void)preprocessChanges:(id)a3 forChangeSource:(id)a4;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
@end

@implementation CRLCanvasLayoutChangeObserver

- (CRLCanvasLayoutChangeObserver)initWithChangeNotifier:(id)a3 layoutController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRLCanvasLayoutChangeObserver;
  v8 = [(CRLCanvasLayoutChangeObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_changeNotifier, v6);
    objc_storeWeak(&v9->_layoutController, v7);
  }

  return v9;
}

- (void)i_layoutRegistered:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_changeNotifier);
  v5 = [v4 info];

  [WeakRetained addObserver:self forChangeSource:v5];
}

- (void)i_layoutUnregistered:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_changeNotifier);
  v5 = [v4 info];

  [WeakRetained removeObserver:self forChangeSource:v5];
}

- (void)preprocessChanges:(id)a3 forChangeSource:(id)a4
{
  v17 = a3;
  v6 = a4;
  v13 = sub_1003035DC(v6, 1, v7, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLCanvasElementInfo);
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutController);
    v15 = [WeakRetained layoutsForInfo:v13];
    [v15 makeObjectsPerformSelector:"processChanges:" withObject:v17];
  }

  v16 = objc_loadWeakRetained(&self->_icc);
  [v16 preprocessChanges:v17 forChangeSource:v6];
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained processChanges:v7 forChangeSource:v6];
}

- (void)didProcessAllChanges
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained didProcessAllChanges];
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);

  return WeakRetained;
}

@end