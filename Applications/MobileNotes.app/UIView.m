@interface UIView
- (id)_icaxKeyboardImpl;
- (void)ic_addCreateNoteInteractionWithFolderHandler:(id)a3;
- (void)ic_addReplaceSelectionInteractionWithTextHandler:(id)a3;
- (void)ic_annotateWithAccount:(id)a3;
- (void)ic_annotateWithAttachment:(id)a3;
- (void)ic_annotateWithFolder:(id)a3;
- (void)ic_annotateWithNote:(id)a3;
- (void)ic_annotateWithNote:(id)a3 checklistParagraphUUID:(id)a4;
- (void)ic_annotateWithNoteCollection:(void *)a3;
- (void)ic_annotateWithTable:(id)a3;
- (void)ic_annotateWithTag:(id)a3;
- (void)ic_removeLinkActionInteractions;
@end

@implementation UIView

- (void)ic_annotateWithNoteCollection:(void *)a3
{
  v5 = a3;
  v6 = a1;
  sub_10001BC30(a3);
}

- (void)ic_annotateWithAccount:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001BE8C(a3);
}

- (void)ic_annotateWithAttachment:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001C70C(a3);
}

- (void)ic_annotateWithNote:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10001D3F4(a3);
}

- (void)ic_addCreateNoteInteractionWithFolderHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10000F828;
  *(v6 + 24) = v5;
  v7 = objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
  sub_100023DE8();
  v9 = self;

  v8 = UIAppIntentInteraction.init<A>(intent:perform:)();
  [(UIView *)v9 addInteraction:v8];
}

- (void)ic_addReplaceSelectionInteractionWithTextHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001C57D4;
  *(v6 + 24) = v5;
  v7 = objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
  sub_10002435C();
  v9 = self;

  v8 = UIAppIntentInteraction.init<A>(intent:perform:)();
  [(UIView *)v9 addInteraction:v8];
}

- (id)_icaxKeyboardImpl
{
  NSClassFromString(@"UIKeyboardImpl");
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(UIView *)self subviews];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) _icaxKeyboardImpl];
          if (v9)
          {
            v3 = v9;

            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
  }

LABEL_13:

  return v3;
}

- (void)ic_removeLinkActionInteractions
{
  v2 = self;
  sub_1004B1FD8();
}

- (void)ic_annotateWithFolder:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1004B215C(a3);
}

- (void)ic_annotateWithTag:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1004B23F0(a3);
}

- (void)ic_annotateWithTable:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1004B2674(a3);
}

- (void)ic_annotateWithNote:(id)a3 checklistParagraphUUID:(id)a4
{
  v7 = sub_10015DA04(&unk_1006BE0B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = self;
  sub_1004B2908(a3, v9);

  sub_1000073B4(v9, &unk_1006BE0B0);
}

@end