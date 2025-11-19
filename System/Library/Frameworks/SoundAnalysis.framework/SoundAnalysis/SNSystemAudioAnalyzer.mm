@interface SNSystemAudioAnalyzer
- (BOOL)addRequest:(id)a3 withObserver:(id)a4 error:(id *)a5;
- (void)addRequestInBackground:(id)a3 withObserver:(id)a4;
- (void)removeAllRequests;
- (void)removeRequest:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation SNSystemAudioAnalyzer

- (BOOL)addRequest:(id)a3 withObserver:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = self;
  sub_1C98FAA84(a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 1;
}

- (void)addRequestInBackground:(id)a3 withObserver:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_1C98FADD0(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)removeRequest:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C98FB118(a3);
  swift_unknownObjectRelease();
}

- (void)removeAllRequests
{
  v2 = self;
  sub_1C98FB3A4();
}

- (void)start
{
  v2 = self;
  sub_1C98FB5E0("(SNSystemAudioAnalyzer:%s) start");
}

- (void)stop
{
  v2 = self;
  sub_1C98FB5E0("(SNSystemAudioAnalyzer:%s) stop");
}

@end