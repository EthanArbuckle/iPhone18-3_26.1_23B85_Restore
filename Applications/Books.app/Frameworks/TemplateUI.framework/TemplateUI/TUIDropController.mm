@interface TUIDropController
- (BOOL)_embeddedCollectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (TUIActionHandlerDelegate)actionHandlerDelegate;
- (UIDropInteraction)dropInteraction;
- (id)_embeddedCollectionViewForInteraction:(id)interaction session:(id)session;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)_accessDropBehaviorForEmbeddedCollectionView:(id)view block:(id)block;
- (void)_embeddedCollectionView:(id)view performDrop:(id)drop;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
@end

@implementation TUIDropController

- (void)_accessDropBehaviorForEmbeddedCollectionView:(id)view block:(id)block
{
  viewCopy = view;
  blockCopy = block;
  if ([viewCopy acceptsDrop])
  {
    dropHandler = [viewCopy dropHandler];
    v7 = dropHandler;
    if (dropHandler)
    {
      actionsData = [dropHandler actionsData];
      v9 = [actionsData behaviorDataForTrigger:@"drop"];

      behavior = [v9 behavior];
      if (behavior)
      {
        actionObject = [v7 actionObject];
        blockCopy[2](blockCopy, behavior, actionObject);
      }
    }
  }
}

- (void)_embeddedCollectionView:(id)view performDrop:(id)drop
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3AE68;
  v6[3] = &unk_25ED90;
  selfCopy = self;
  dropCopy = drop;
  v5 = dropCopy;
  [(TUIDropController *)selfCopy _accessDropBehaviorForEmbeddedCollectionView:view block:v6];
}

- (BOOL)_embeddedCollectionView:(id)view canHandleDropSession:(id)session
{
  viewCopy = view;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_3AFEC;
  v9[3] = &unk_25EDB8;
  v11 = &v12;
  v9[4] = self;
  sessionCopy = session;
  v10 = sessionCopy;
  [(TUIDropController *)self _accessDropBehaviorForEmbeddedCollectionView:viewCopy block:v9];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

- (UIDropInteraction)dropInteraction
{
  dropInteraction = self->_dropInteraction;
  if (!dropInteraction)
  {
    v4 = [[UIDropInteraction alloc] initWithDelegate:self];
    v5 = self->_dropInteraction;
    self->_dropInteraction = v4;

    dropInteraction = self->_dropInteraction;
  }

  return dropInteraction;
}

- (id)_embeddedCollectionViewForInteraction:(id)interaction session:(id)session
{
  sessionCopy = session;
  interactionCopy = interaction;
  view = [interactionCopy view];
  [sessionCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  view2 = [interactionCopy view];

  v13 = [view2 hitTest:0 withEvent:{v9, v11}];

  objc_opt_class();
  v14 = TUIPlatformAncestorOfClass(v13);

  return v14;
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  sessionCopy = session;
  v7 = [(TUIDropController *)self _embeddedCollectionViewForInteraction:interaction session:sessionCopy];
  LOBYTE(self) = [(TUIDropController *)self _embeddedCollectionView:v7 canHandleDropSession:sessionCopy];

  return self;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
  v7 = [(TUIDropController *)self _embeddedCollectionViewForInteraction:interaction session:updateCopy];
  LODWORD(self) = [(TUIDropController *)self _embeddedCollectionView:v7 canHandleDropSession:updateCopy];

  if (self)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[UIDropProposal alloc] initWithDropOperation:v8];

  return v9;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
  v7 = [(TUIDropController *)self _embeddedCollectionViewForInteraction:interaction session:dropCopy];
  [(TUIDropController *)self _embeddedCollectionView:v7 performDrop:dropCopy];
}

- (TUIActionHandlerDelegate)actionHandlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandlerDelegate);

  return WeakRetained;
}

@end