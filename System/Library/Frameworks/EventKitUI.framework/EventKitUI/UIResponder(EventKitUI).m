@interface UIResponder(EventKitUI)
- (id)EKUI_editor;
- (uint64_t)EKUI_setDataOwnersFromEvent:()EventKitUI;
@end

@implementation UIResponder(EventKitUI)

- (uint64_t)EKUI_setDataOwnersFromEvent:()EventKitUI
{
  v4 = [a3 calendar];
  v5 = [v4 isManaged];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [a1 _setDragDataOwner:v6];
  [a1 _setDropDataOwner:v6];
  [a1 _setDataOwnerForCopy:v6];

  return [a1 _setDataOwnerForPaste:v6];
}

- (id)EKUI_editor
{
  v1 = [a1 undoManager];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v1 undoableEditor], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
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