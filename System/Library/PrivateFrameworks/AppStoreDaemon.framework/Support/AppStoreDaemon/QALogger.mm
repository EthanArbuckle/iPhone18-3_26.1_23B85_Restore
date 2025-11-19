@interface QALogger
+ (void)assetWithUrl:(id)a3 variant:(id)a4 isDelta:(BOOL)a5 isParallel:(BOOL)a6 logKey:(id)a7;
+ (void)displayedSpeedWithThroughput:(id)a3 logKey:(id)a4;
+ (void)installWithDuration:(double)a3 logKey:(id)a4;
+ (void)linearDownloadWithLogKey:(id)a3 totalDuration:(double)a4 throughputAvg:(double)a5 throughputMin:(double)a6 throughputMax:(double)a7;
+ (void)serializeLedgerWithCompletionHandler:(id)a3;
@end

@implementation QALogger

+ (void)serializeLedgerWithCompletionHandler:(id)a3
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100438B90;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;
  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

+ (void)assetWithUrl:(id)a3 variant:(id)a4 isDelta:(BOOL)a5 isParallel:(BOOL)a6 logKey:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = sub_100085D40(&qword_10059CE90);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  if (a4)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = a7;
  sub_10019CB90(v14, v17, a4, v9, v8, a7);

  sub_100005518(v14, &qword_10059CE90);
}

+ (void)linearDownloadWithLogKey:(id)a3 totalDuration:(double)a4 throughputAvg:(double)a5 throughputMin:(double)a6 throughputMax:(double)a7
{
  v12 = a3;
  sub_10019D2CC(a3, a4, a5, a6, a7);
}

+ (void)installWithDuration:(double)a3 logKey:(id)a4
{
  v5 = a4;
  sub_10019D738(v5, a3);
}

+ (void)displayedSpeedWithThroughput:(id)a3 logKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_10019DBDC(v5, v6);
}

@end