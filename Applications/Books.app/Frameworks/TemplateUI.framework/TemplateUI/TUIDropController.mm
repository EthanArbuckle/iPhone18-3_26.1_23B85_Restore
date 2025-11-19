@interface TUIDropController
- (BOOL)_embeddedCollectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (TUIActionHandlerDelegate)actionHandlerDelegate;
- (UIDropInteraction)dropInteraction;
- (id)_embeddedCollectionViewForInteraction:(id)a3 session:(id)a4;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)_accessDropBehaviorForEmbeddedCollectionView:(id)a3 block:(id)a4;
- (void)_embeddedCollectionView:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
@end

@implementation TUIDropController

- (void)_accessDropBehaviorForEmbeddedCollectionView:(id)a3 block:(id)a4
{
  v12 = a3;
  v5 = a4;
  if ([v12 acceptsDrop])
  {
    v6 = [v12 dropHandler];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 actionsData];
      v9 = [v8 behaviorDataForTrigger:@"drop"];

      v10 = [v9 behavior];
      if (v10)
      {
        v11 = [v7 actionObject];
        v5[2](v5, v10, v11);
      }
    }
  }
}

- (void)_embeddedCollectionView:(id)a3 performDrop:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3AE68;
  v6[3] = &unk_25ED90;
  v7 = self;
  v8 = a4;
  v5 = v8;
  [(TUIDropController *)v7 _accessDropBehaviorForEmbeddedCollectionView:a3 block:v6];
}

- (BOOL)_embeddedCollectionView:(id)a3 canHandleDropSession:(id)a4
{
  v6 = a3;
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
  v7 = a4;
  v10 = v7;
  [(TUIDropController *)self _accessDropBehaviorForEmbeddedCollectionView:v6 block:v9];
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

- (id)_embeddedCollectionViewForInteraction:(id)a3 session:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 view];
  [v5 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [v6 view];

  v13 = [v12 hitTest:0 withEvent:{v9, v11}];

  objc_opt_class();
  v14 = TUIPlatformAncestorOfClass(v13);

  return v14;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v6 = a4;
  v7 = [(TUIDropController *)self _embeddedCollectionViewForInteraction:a3 session:v6];
  LOBYTE(self) = [(TUIDropController *)self _embeddedCollectionView:v7 canHandleDropSession:v6];

  return self;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v6 = a4;
  v7 = [(TUIDropController *)self _embeddedCollectionViewForInteraction:a3 session:v6];
  LODWORD(self) = [(TUIDropController *)self _embeddedCollectionView:v7 canHandleDropSession:v6];

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

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v6 = a4;
  v7 = [(TUIDropController *)self _embeddedCollectionViewForInteraction:a3 session:v6];
  [(TUIDropController *)self _embeddedCollectionView:v7 performDrop:v6];
}

- (TUIActionHandlerDelegate)actionHandlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandlerDelegate);

  return WeakRetained;
}

@end