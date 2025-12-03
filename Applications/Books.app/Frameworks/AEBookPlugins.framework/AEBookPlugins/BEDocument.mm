@interface BEDocument
- (BEDocument)init;
- (NSArray)contentFragments;
- (NSArray)pages;
- (NSString)title;
- (_TtP13AEBookPlugins30DocumentPaginationDataProvider_)paginationData;
- (int64_t)file_size;
- (int64_t)pageOffset;
- (void)setFile_size:(int64_t)file_size;
- (void)setPageOffset:(int64_t)offset;
- (void)setPages:(id)pages;
- (void)setPaginationData:(id)data;
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

- (void)setFile_size:(int64_t)file_size
{
  v5 = OBJC_IVAR___BEDocument_file_size;
  swift_beginAccess();
  *(self + v5) = file_size;
}

- (NSArray)contentFragments
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
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
  selfCopy = self;
  sub_139890();

  return v5;
}

- (void)setPageOffset:(int64_t)offset
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1398A0();
}

- (NSArray)pages
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_139890();

  type metadata accessor for Page();
  v4.super.isa = sub_139A30().super.isa;

  return v4.super.isa;
}

- (void)setPages:(id)pages
{
  type metadata accessor for Page();
  sub_139A40();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1398A0();
}

- (_TtP13AEBookPlugins30DocumentPaginationDataProvider_)paginationData
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setPaginationData:(id)data
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_134FB4(data);
}

- (BEDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end