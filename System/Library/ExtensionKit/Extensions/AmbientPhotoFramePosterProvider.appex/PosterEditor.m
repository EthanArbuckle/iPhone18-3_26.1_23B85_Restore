@interface PosterEditor
- (id)looksForEditor:(id)a3;
- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation PosterEditor

- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_10000C5D0(&unk_100012E58, v7);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000959C(v4);
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000097CC();

  sub_10000C340(0, &qword_100024108, PREditingLook_ptr);
  v6.super.isa = sub_1000108C4().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10000989C(v8, a4, v9);

  swift_unknownObjectRelease();
}

@end