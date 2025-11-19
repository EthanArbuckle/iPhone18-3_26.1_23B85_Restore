@interface BEDocumentPaginationDataInfo
- (BEDocumentPaginationDataInfo)init;
- (CGSize)contentSize;
- (CGSize)pageSize;
- (int64_t)navigationDirection;
- (int64_t)pageCount;
- (int64_t)pageOffset;
- (int64_t)paginationDirection;
- (void)setNavigationDirection:(int64_t)a3;
- (void)setPageCount:(int64_t)a3;
- (void)setPageOffset:(int64_t)a3;
- (void)setPaginationDirection:(int64_t)a3;
@end

@implementation BEDocumentPaginationDataInfo

- (CGSize)pageSize
{
  v2 = sub_11F0B0(self, a2, &OBJC_IVAR___BEDocumentPaginationDataInfo_pageSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)pageCount
{
  v3 = OBJC_IVAR___BEDocumentPaginationDataInfo_pageCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPageCount:(int64_t)a3
{
  v5 = OBJC_IVAR___BEDocumentPaginationDataInfo_pageCount;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (CGSize)contentSize
{
  v2 = sub_11F0B0(self, a2, &OBJC_IVAR___BEDocumentPaginationDataInfo_contentSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)pageOffset
{
  v3 = OBJC_IVAR___BEDocumentPaginationDataInfo_pageOffset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPageOffset:(int64_t)a3
{
  v5 = OBJC_IVAR___BEDocumentPaginationDataInfo_pageOffset;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)paginationDirection
{
  v3 = OBJC_IVAR___BEDocumentPaginationDataInfo_paginationDirection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPaginationDirection:(int64_t)a3
{
  v5 = OBJC_IVAR___BEDocumentPaginationDataInfo_paginationDirection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)navigationDirection
{
  v3 = OBJC_IVAR___BEDocumentPaginationDataInfo_navigationDirection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNavigationDirection:(int64_t)a3
{
  v5 = OBJC_IVAR___BEDocumentPaginationDataInfo_navigationDirection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BEDocumentPaginationDataInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end