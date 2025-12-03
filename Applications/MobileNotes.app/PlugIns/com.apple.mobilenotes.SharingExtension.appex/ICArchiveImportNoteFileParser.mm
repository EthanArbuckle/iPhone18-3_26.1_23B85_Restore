@interface ICArchiveImportNoteFileParser
- (BOOL)canHandleFileURL:(id)l;
- (NSArray)allowedContentTypes;
- (void)cancelParsing;
- (void)parseFileURL:(id)l newNoteBlock:(id)block updatedNoteBlock:(id)noteBlock errorBlock:(id)errorBlock completionBlock:(id)completionBlock;
- (void)totalNotesFoundAtFileURL:(id)l completionBlock:(id)block;
@end

@implementation ICArchiveImportNoteFileParser

- (NSArray)allowedContentTypes
{
  v2 = *(self + OBJC_IVAR____TtC38com_apple_mobilenotes_SharingExtension29ICArchiveImportNoteFileParser_allowedContentTypes);
  sub_1000B5450();

  v3.super.isa = sub_1000B5790().super.isa;

  return v3.super.isa;
}

- (BOOL)canHandleFileURL:(id)l
{
  v4 = sub_1000B4DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B4D50();
  selfCopy = self;
  v10 = sub_1000592E0();

  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

- (void)totalNotesFoundAtFileURL:(id)l completionBlock:(id)block
{
  v6 = sub_1000B4DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(block);
  sub_1000B4D50();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  sub_1000594D4(v10, sub_10005CD3C, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)parseFileURL:(id)l newNoteBlock:(id)block updatedNoteBlock:(id)noteBlock errorBlock:(id)errorBlock completionBlock:(id)completionBlock
{
  v26 = sub_1000B4DB0();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(block);
  v17 = _Block_copy(noteBlock);
  v18 = _Block_copy(errorBlock);
  v19 = _Block_copy(completionBlock);
  sub_1000B4D50();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  selfCopy = self;
  sub_10005A11C(v15, sub_10005CD04, v20, sub_10005CD3C, v21, sub_10005CD50, v22, sub_10005CDA8, v23);

  (*(v12 + 8))(v15, v26);
}

- (void)cancelParsing
{
  selfCopy = self;
  sub_10005B29C();
}

@end