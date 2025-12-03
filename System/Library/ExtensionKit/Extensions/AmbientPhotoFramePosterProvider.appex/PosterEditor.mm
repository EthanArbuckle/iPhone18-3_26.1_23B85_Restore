@interface PosterEditor
- (id)looksForEditor:(id)editor;
- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation PosterEditor

- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = editor;
  v7[3] = v6;
  v7[4] = self;
  editorCopy = editor;
  selfCopy = self;

  sub_10000C5D0(&unk_100012E58, v7);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10000959C(invalidateCopy);
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_1000097CC();

  sub_10000C340(0, &qword_100024108, PREditingLook_ptr);
  v6.super.isa = sub_1000108C4().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10000989C(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

@end