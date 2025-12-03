@interface SNSystemAudioAnalyzer
- (BOOL)addRequest:(id)request withObserver:(id)observer error:(id *)error;
- (void)addRequestInBackground:(id)background withObserver:(id)observer;
- (void)removeAllRequests;
- (void)removeRequest:(id)request;
- (void)start;
- (void)stop;
@end

@implementation SNSystemAudioAnalyzer

- (BOOL)addRequest:(id)request withObserver:(id)observer error:(id *)error
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C98FAA84(request, observer);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 1;
}

- (void)addRequestInBackground:(id)background withObserver:(id)observer
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C98FADD0(background, observer);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)removeRequest:(id)request
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C98FB118(request);
  swift_unknownObjectRelease();
}

- (void)removeAllRequests
{
  selfCopy = self;
  sub_1C98FB3A4();
}

- (void)start
{
  selfCopy = self;
  sub_1C98FB5E0("(SNSystemAudioAnalyzer:%s) start");
}

- (void)stop
{
  selfCopy = self;
  sub_1C98FB5E0("(SNSystemAudioAnalyzer:%s) stop");
}

@end