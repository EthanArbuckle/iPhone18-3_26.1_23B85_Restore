@interface EmojiPosterExtensionEditorController
- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)editor;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)leadingMenuElementsForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)timeColorPickerConfigurationForEditor:(id)editor;
- (id)trailingMenuElementsForEditor:(id)editor;
- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidFinishInitialLayout:(id)layout;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation EmojiPosterExtensionEditorController

- (void)editorDidFinishInitialLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_100009360(layoutCopy);
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_100012090();

  v6 = sub_100014178();

  return v6;
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_100012768(editorCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion
{
  v7 = sub_100001F74(&unk_1000218D0, &qword_100015260);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = editor;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100014278();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100015270;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100015280;
  v15[5] = v14;
  editorCopy = editor;
  selfCopy = self;
  sub_100010484(0, 0, v10, &unk_100015290, v15);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_1000129B0();
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_100011438();

  sub_100006580(0, &qword_1000218C8, PREditingLook_ptr);
  v6.super.isa = sub_1000141F8().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_100012D9C(views, lookCopy);

  swift_unknownObjectRelease();
}

- (id)leadingMenuElementsForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_10000D3F8();

  if (v6)
  {
    sub_100006580(0, &qword_1000218B0, UIMenuElement_ptr);
    v7.super.isa = sub_1000141F8().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)trailingMenuElementsForEditor:(id)editor
{
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100015060;
  editorCopy = editor;
  selfCopy = self;
  *(v5 + 32) = sub_10000C0A8(editorCopy);

  sub_100006580(0, &qword_1000218B0, UIMenuElement_ptr);
  v8.super.isa = sub_1000141F8().super.isa;

  return v8.super.isa;
}

- (id)timeColorPickerConfigurationForEditor:(id)editor
{
  v3 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  sub_100013D68();
  v4 = sub_100013D58();
  [v3 setColorPalette:v4];

  [v3 setColorWellDisplayMode:1];

  return v3;
}

- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_1000132F8();

  return v6;
}

@end