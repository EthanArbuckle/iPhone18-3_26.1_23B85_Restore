@interface _AegirEditingCoordinatorScrollViewScrollObserver
- (_TtC11AegirPosterP33_8673730CEA60DB438C959F8C70985BF248_AegirEditingCoordinatorScrollViewScrollObserver)init;
- (void)_observeScrollViewDidScroll:(id)scroll;
@end

@implementation _AegirEditingCoordinatorScrollViewScrollObserver

- (_TtC11AegirPosterP33_8673730CEA60DB438C959F8C70985BF248_AegirEditingCoordinatorScrollViewScrollObserver)init
{
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for _AegirEditingCoordinatorScrollViewScrollObserver();
  return [(_AegirEditingCoordinatorScrollViewScrollObserver *)&v4 init];
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if (swift_weakLoadStrong())
  {
    scrollCopy = scroll;
    selfCopy = self;
    sub_100023ACC(scrollCopy);
  }
}

@end