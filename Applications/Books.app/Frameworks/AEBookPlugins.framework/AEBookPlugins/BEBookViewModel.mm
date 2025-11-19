@interface BEBookViewModel
- (BEBookViewModel)init;
- (BOOL)sample;
- (NSArray)authors;
- (NSArray)paginatableDocuments;
- (NSString)documentUniqueID;
- (id)documentFor:(int64_t)a3;
- (void)setDocumentUniqueID:(id)a3;
- (void)setPaginatableDocuments:(id)a3;
- (void)setSample:(BOOL)a3;
@end

@implementation BEBookViewModel

- (NSString)documentUniqueID
{
  swift_beginAccess();

  v2 = sub_139990();

  return v2;
}

- (void)setDocumentUniqueID:(id)a3
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

- (void)setSample:(BOOL)a3
{
  v5 = OBJC_IVAR___BEBookViewModel_sample;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (id)documentFor:(int64_t)a3
{
  v4 = self;
  v5 = sub_124168(a3);

  return v5;
}

- (NSArray)paginatableDocuments
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_139890();

  sub_11B940(&qword_22CC88);
  v4.super.isa = sub_139A30().super.isa;

  return v4.super.isa;
}

- (void)setPaginatableDocuments:(id)a3
{
  sub_11B940(&qword_22CC88);
  sub_139A40();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_1398A0();
}

- (BEBookViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end