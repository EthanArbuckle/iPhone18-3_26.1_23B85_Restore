@interface BEDocument
- (BEDocument)init;
- (NSArray)contentFragments;
- (NSArray)pages;
- (NSString)title;
- (_TtP13AEBookPlugins30DocumentPaginationDataProvider_)paginationData;
- (int64_t)file_size;
- (int64_t)pageOffset;
- (void)setFile_size:(int64_t)a3;
- (void)setPageOffset:(int64_t)a3;
- (void)setPages:(id)a3;
- (void)setPaginationData:(id)a3;
@end

@implementation BEDocument

- (NSString)title
{
  if (*(self + OBJC_IVAR___BEDocument_title + 8))
  {

    v2 = sub_139990();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64_t)file_size
{
  v3 = OBJC_IVAR___BEDocument_file_size;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFile_size:(int64_t)a3
{
  v5 = OBJC_IVAR___BEDocument_file_size;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSArray)contentFragments
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_139890();

  sub_1330AC(v6);

  sub_11B940(&qword_22CF68);
  v4.super.isa = sub_139A30().super.isa;

  return v4.super.isa;
}

- (int64_t)pageOffset
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_139890();

  return v5;
}

- (void)setPageOffset:(int64_t)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_1398A0();
}

- (NSArray)pages
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_139890();

  type metadata accessor for Page();
  v4.super.isa = sub_139A30().super.isa;

  return v4.super.isa;
}

- (void)setPages:(id)a3
{
  type metadata accessor for Page();
  sub_139A40();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_1398A0();
}

- (_TtP13AEBookPlugins30DocumentPaginationDataProvider_)paginationData
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPaginationData:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_134FB4(a3);
}

- (BEDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end