@interface CRLCanvasLayoutChangeObserver
- (CRLCanvasLayoutChangeObserver)initWithChangeNotifier:(id)notifier layoutController:(id)controller;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (void)didProcessAllChanges;
- (void)i_layoutRegistered:(id)registered;
- (void)i_layoutUnregistered:(id)unregistered;
- (void)preprocessChanges:(id)changes forChangeSource:(id)source;
- (void)processChanges:(id)changes forChangeSource:(id)source;
@end

@implementation CRLCanvasLayoutChangeObserver

- (CRLCanvasLayoutChangeObserver)initWithChangeNotifier:(id)notifier layoutController:(id)controller
{
  notifierCopy = notifier;
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = CRLCanvasLayoutChangeObserver;
  v8 = [(CRLCanvasLayoutChangeObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_changeNotifier, notifierCopy);
    objc_storeWeak(&v9->_layoutController, controllerCopy);
  }

  return v9;
}

- (void)i_layoutRegistered:(id)registered
{
  registeredCopy = registered;
  WeakRetained = objc_loadWeakRetained(&self->_changeNotifier);
  info = [registeredCopy info];

  [WeakRetained addObserver:self forChangeSource:info];
}

- (void)i_layoutUnregistered:(id)unregistered
{
  unregisteredCopy = unregistered;
  WeakRetained = objc_loadWeakRetained(&self->_changeNotifier);
  info = [unregisteredCopy info];

  [WeakRetained removeObserver:self forChangeSource:info];
}

- (void)preprocessChanges:(id)changes forChangeSource:(id)source
{
  changesCopy = changes;
  sourceCopy = source;
  v13 = sub_1003035DC(sourceCopy, 1, v7, v8, v9, v10, v11, v12, &OBJC_PROTOCOL___CRLCanvasElementInfo);
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutController);
    v15 = [WeakRetained layoutsForInfo:v13];
    [v15 makeObjectsPerformSelector:"processChanges:" withObject:changesCopy];
  }

  v16 = objc_loadWeakRetained(&self->_icc);
  [v16 preprocessChanges:changesCopy forChangeSource:sourceCopy];
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  sourceCopy = source;
  changesCopy = changes;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  [WeakRetained processChanges:changesCopy forChangeSource:sourceCopy];
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