@interface HRLDLogArchiveProcessor
- (BOOL)writeLogsToDiskFrom:(id)from error:(id *)error progressHandler:(id)handler;
- (HRLDLogArchiveProcessor)init;
- (HRLDLogArchiveProcessor)initWithArchiveStartDate:(id)date deviceName:(id)name logArchiveURL:(id)l outputFileURL:(id)rL redactedToken:(id)token windowSize:(double)size error:(id *)error;
@end

@implementation HRLDLogArchiveProcessor

- (HRLDLogArchiveProcessor)initWithArchiveStartDate:(id)date deviceName:(id)name logArchiveURL:(id)l outputFileURL:(id)rL redactedToken:(id)token windowSize:(double)size error:(id *)error
{
  v10 = sub_100007738();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v27[-v15];
  v17 = sub_1000077E8();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v27[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000077C8();
  v21 = sub_100007808();
  v23 = v22;
  sub_100007718();
  sub_100007718();
  v24 = sub_100007808();
  return sub_100001E10(v20, v21, v23, v16, v14, v24, v25, size);
}

- (BOOL)writeLogsToDiskFrom:(id)from error:(id *)error progressHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_1000078B8();
  _Block_copy(v6);
  selfCopy = self;
  sub_100002704(v7, selfCopy, v6);

  _Block_release(v6);

  return 1;
}

- (HRLDLogArchiveProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end