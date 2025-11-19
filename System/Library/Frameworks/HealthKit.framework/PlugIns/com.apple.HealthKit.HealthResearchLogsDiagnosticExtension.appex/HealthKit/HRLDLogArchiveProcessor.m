@interface HRLDLogArchiveProcessor
- (BOOL)writeLogsToDiskFrom:(id)a3 error:(id *)a4 progressHandler:(id)a5;
- (HRLDLogArchiveProcessor)init;
- (HRLDLogArchiveProcessor)initWithArchiveStartDate:(id)a3 deviceName:(id)a4 logArchiveURL:(id)a5 outputFileURL:(id)a6 redactedToken:(id)a7 windowSize:(double)a8 error:(id *)a9;
@end

@implementation HRLDLogArchiveProcessor

- (HRLDLogArchiveProcessor)initWithArchiveStartDate:(id)a3 deviceName:(id)a4 logArchiveURL:(id)a5 outputFileURL:(id)a6 redactedToken:(id)a7 windowSize:(double)a8 error:(id *)a9
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
  return sub_100001E10(v20, v21, v23, v16, v14, v24, v25, a8);
}

- (BOOL)writeLogsToDiskFrom:(id)a3 error:(id *)a4 progressHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1000078B8();
  _Block_copy(v6);
  v8 = self;
  sub_100002704(v7, v8, v6);

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