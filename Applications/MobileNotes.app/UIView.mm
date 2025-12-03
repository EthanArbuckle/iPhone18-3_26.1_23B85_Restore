@interface UIView
- (id)_icaxKeyboardImpl;
- (void)ic_addCreateNoteInteractionWithFolderHandler:(id)handler;
- (void)ic_addReplaceSelectionInteractionWithTextHandler:(id)handler;
- (void)ic_annotateWithAccount:(id)account;
- (void)ic_annotateWithAttachment:(id)attachment;
- (void)ic_annotateWithFolder:(id)folder;
- (void)ic_annotateWithNote:(id)note;
- (void)ic_annotateWithNote:(id)note checklistParagraphUUID:(id)d;
- (void)ic_annotateWithNoteCollection:(void *)collection;
- (void)ic_annotateWithTable:(id)table;
- (void)ic_annotateWithTag:(id)tag;
- (void)ic_removeLinkActionInteractions;
@end

@implementation UIView

- (void)ic_annotateWithNoteCollection:(void *)collection
{
  collectionCopy = collection;
  selfCopy = self;
  sub_10001BC30(collection);
}

- (void)ic_annotateWithAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  sub_10001BE8C(account);
}

- (void)ic_annotateWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  selfCopy = self;
  sub_10001C70C(attachment);
}

- (void)ic_annotateWithNote:(id)note
{
  noteCopy = note;
  selfCopy = self;
  sub_10001D3F4(note);
}

- (void)ic_addCreateNoteInteractionWithFolderHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10000F828;
  *(v6 + 24) = v5;
  v7 = objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
  sub_100023DE8();
  selfCopy = self;

  v8 = UIAppIntentInteraction.init<A>(intent:perform:)();
  [(UIView *)selfCopy addInteraction:v8];
}

- (void)ic_addReplaceSelectionInteractionWithTextHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001C57D4;
  *(v6 + 24) = v5;
  v7 = objc_allocWithZone(type metadata accessor for UIAppIntentInteraction());
  sub_10002435C();
  selfCopy = self;

  v8 = UIAppIntentInteraction.init<A>(intent:perform:)();
  [(UIView *)selfCopy addInteraction:v8];
}

- (id)_icaxKeyboardImpl
{
  NSClassFromString(@"UIKeyboardImpl");
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subviews = [(UIView *)self subviews];
    v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(subviews);
          }

          _icaxKeyboardImpl = [*(*(&v11 + 1) + 8 * i) _icaxKeyboardImpl];
          if (_icaxKeyboardImpl)
          {
            selfCopy = _icaxKeyboardImpl;

            goto LABEL_13;
          }
        }

        v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

- (void)ic_removeLinkActionInteractions
{
  selfCopy = self;
  sub_1004B1FD8();
}

- (void)ic_annotateWithFolder:(id)folder
{
  folderCopy = folder;
  selfCopy = self;
  sub_1004B215C(folder);
}

- (void)ic_annotateWithTag:(id)tag
{
  tagCopy = tag;
  selfCopy = self;
  sub_1004B23F0(tag);
}

- (void)ic_annotateWithTable:(id)table
{
  tableCopy = table;
  selfCopy = self;
  sub_1004B2674(table);
}

- (void)ic_annotateWithNote:(id)note checklistParagraphUUID:(id)d
{
  v7 = sub_10015DA04(&unk_1006BE0B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (d)
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

  noteCopy = note;
  selfCopy = self;
  sub_1004B2908(note, v9);

  sub_1000073B4(v9, &unk_1006BE0B0);
}

@end