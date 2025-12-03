@interface SNFileSystem
- (void)addRequest:(id)request completionHandler:(id)handler resultsHandler:(id)resultsHandler;
- (void)removeRequest:(id)request;
@end

@implementation SNFileSystem

- (void)addRequest:(id)request completionHandler:(id)handler resultsHandler:(id)resultsHandler
{
  v7 = _Block_copy(handler);
  v8 = _Block_copy(resultsHandler);
  *(swift_allocObject() + 16) = v7;
  *(swift_allocObject() + 16) = v8;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C981ED30();
  swift_unknownObjectRelease();
}

- (void)removeRequest:(id)request
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C981F6E0();
  swift_unknownObjectRelease();
}

@end