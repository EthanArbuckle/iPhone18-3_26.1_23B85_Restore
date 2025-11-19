@interface SNFileSystem
- (void)addRequest:(id)a3 completionHandler:(id)a4 resultsHandler:(id)a5;
- (void)removeRequest:(id)a3;
@end

@implementation SNFileSystem

- (void)addRequest:(id)a3 completionHandler:(id)a4 resultsHandler:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v7;
  *(swift_allocObject() + 16) = v8;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1C981ED30();
  swift_unknownObjectRelease();
}

- (void)removeRequest:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C981F6E0();
  swift_unknownObjectRelease();
}

@end