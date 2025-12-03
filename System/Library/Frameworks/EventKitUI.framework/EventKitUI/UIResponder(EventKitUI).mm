@interface UIResponder(EventKitUI)
- (id)EKUI_editor;
- (uint64_t)EKUI_setDataOwnersFromEvent:()EventKitUI;
@end

@implementation UIResponder(EventKitUI)

- (uint64_t)EKUI_setDataOwnersFromEvent:()EventKitUI
{
  calendar = [a3 calendar];
  isManaged = [calendar isManaged];

  if (isManaged)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [self _setDragDataOwner:v6];
  [self _setDropDataOwner:v6];
  [self _setDataOwnerForCopy:v6];

  return [self _setDataOwnerForPaste:v6];
}

- (id)EKUI_editor
{
  undoManager = [self undoManager];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([undoManager undoableEditor], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (EKUI_editor_onceToken != -1)
    {
      [UIResponder(EventKitUI) EKUI_editor];
    }

    v2 = EKUI_editor_eventStoreEditor;
  }

  return v2;
}

@end