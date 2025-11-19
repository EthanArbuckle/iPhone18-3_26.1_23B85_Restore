@interface EmojiPosterExtensionEditorController
- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)a3;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)leadingMenuElementsForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)timeColorPickerConfigurationForEditor:(id)a3;
- (id)trailingMenuElementsForEditor:(id)a3;
- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidFinishInitialLayout:(id)a3;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation EmojiPosterExtensionEditorController

- (void)editorDidFinishInitialLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100009360(v4);
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100012090();

  v6 = sub_100014178();

  return v6;
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_100012768(v7);

  swift_unknownObjectRelease();
}

- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4
{
  v7 = sub_100001F74(&unk_1000218D0, &qword_100015260);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100010484(0, 0, v10, &unk_100015290, v15);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000129B0();
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100011438();

  sub_100006580(0, &qword_1000218C8, PREditingLook_ptr);
  v6.super.isa = sub_1000141F8().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100012D9C(a4, v9);

  swift_unknownObjectRelease();
}

- (id)leadingMenuElementsForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (id)trailingMenuElementsForEditor:(id)a3
{
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100015060;
  v6 = a3;
  v7 = self;
  *(v5 + 32) = sub_10000C0A8(v6);

  sub_100006580(0, &qword_1000218B0, UIMenuElement_ptr);
  v8.super.isa = sub_1000141F8().super.isa;

  return v8.super.isa;
}

- (id)timeColorPickerConfigurationForEditor:(id)a3
{
  v3 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  sub_100013D68();
  v4 = sub_100013D58();
  [v3 setColorPalette:v4];

  [v3 setColorWellDisplayMode:1];

  return v3;
}

- (id)gradientHomeScreenColorPickerConfigurationForEditor:(void *)a3
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1000132F8();

  return v6;
}

@end