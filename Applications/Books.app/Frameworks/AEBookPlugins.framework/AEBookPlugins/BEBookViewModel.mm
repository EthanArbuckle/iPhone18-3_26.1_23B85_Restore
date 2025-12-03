@interface BEBookViewModel
- (BEBookViewModel)init;
- (BOOL)sample;
- (NSArray)authors;
- (NSArray)paginatableDocuments;
- (NSString)documentUniqueID;
- (id)documentFor:(int64_t)for;
- (void)setDocumentUniqueID:(id)d;
- (void)setPaginatableDocuments:(id)documents;
- (void)setSample:(BOOL)sample;
@end

@implementation BEBookViewModel

- (NSString)documentUniqueID
{
  swift_beginAccess();

  v2 = sub_139990();

  return v2;
}

- (void)setDocumentUniqueID:(id)d
{
  v4 = sub_1399A0();
  v6 = v5;
  v7 = (self + OBJC_IVAR___BEBookViewModel_documentUniqueID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)authors
{

  v2.super.isa = sub_139A30().super.isa;

  return v2.super.isa;
}

- (BOOL)sample
{
  v3 = OBJC_IVAR___BEBookViewModel_sample;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSample:(BOOL)sample
{
  v5 = OBJC_IVAR___BEBookViewModel_sample;
  swift_beginAccess();
  *(self + v5) = sample;
}

- (id)documentFor:(int64_t)for
{
  selfCopy = self;
  v5 = sub_124168(for);

  return v5;
}

- (NSArray)paginatableDocuments
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_139890();

  sub_11B940(&qword_22CC88);
  v4.super.isa = sub_139A30().super.isa;

  return v4.super.isa;
}

- (void)setPaginatableDocuments:(id)documents
{
  sub_11B940(&qword_22CC88);
  sub_139A40();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1398A0();
}

- (BEBookViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end