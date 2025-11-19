@interface PosterEditor
- (id)looksForEditor:(id)a3;
- (id)titleContentStylePickerConfigurationForEditor:(id)a3;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation PosterEditor

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100035AEC(v6, a4);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10003619C(v10, a4, a5);

  swift_unknownObjectRelease();
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100036438();

  sub_100013820(0, &qword_100064CE8, PREditingLook_ptr);
  v6.super.isa = sub_10004AA4C().super.isa;

  return v6.super.isa;
}

- (id)titleContentStylePickerConfigurationForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100036674();

  return v6;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_1000367C4(v10, a4);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_100037A34(v7, v8, v6);
  _Block_release(v6);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100037CDC();
}

@end