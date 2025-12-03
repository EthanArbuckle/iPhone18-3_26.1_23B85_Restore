@interface QALogger
+ (void)assetWithUrl:(id)url variant:(id)variant isDelta:(BOOL)delta isParallel:(BOOL)parallel logKey:(id)key;
+ (void)displayedSpeedWithThroughput:(id)throughput logKey:(id)key;
+ (void)installWithDuration:(double)duration logKey:(id)key;
+ (void)linearDownloadWithLogKey:(id)key totalDuration:(double)duration throughputAvg:(double)avg throughputMin:(double)min throughputMax:(double)max;
+ (void)serializeLedgerWithCompletionHandler:(id)handler;
@end

@implementation QALogger

+ (void)serializeLedgerWithCompletionHandler:(id)handler
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
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

+ (void)assetWithUrl:(id)url variant:(id)variant isDelta:(BOOL)delta isParallel:(BOOL)parallel logKey:(id)key
{
  parallelCopy = parallel;
  deltaCopy = delta;
  v12 = sub_100085D40(&qword_10059CE90);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  if (url)
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

  if (variant)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    variant = v18;
  }

  else
  {
    v17 = 0;
  }

  keyCopy = key;
  sub_10019CB90(v14, v17, variant, deltaCopy, parallelCopy, key);

  sub_100005518(v14, &qword_10059CE90);
}

+ (void)linearDownloadWithLogKey:(id)key totalDuration:(double)duration throughputAvg:(double)avg throughputMin:(double)min throughputMax:(double)max
{
  keyCopy = key;
  sub_10019D2CC(key, duration, avg, min, max);
}

+ (void)installWithDuration:(double)duration logKey:(id)key
{
  keyCopy = key;
  sub_10019D738(keyCopy, duration);
}

+ (void)displayedSpeedWithThroughput:(id)throughput logKey:(id)key
{
  throughputCopy = throughput;
  keyCopy = key;
  sub_10019DBDC(throughputCopy, keyCopy);
}

@end