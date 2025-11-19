@interface _AegirEditingCoordinatorScrollViewScrollObserver
- (_TtC11AegirPosterP33_8673730CEA60DB438C959F8C70985BF248_AegirEditingCoordinatorScrollViewScrollObserver)init;
- (void)_observeScrollViewDidScroll:(id)a3;
@end

@implementation _AegirEditingCoordinatorScrollViewScrollObserver

- (_TtC11AegirPosterP33_8673730CEA60DB438C959F8C70985BF248_AegirEditingCoordinatorScrollViewScrollObserver)init
{
  swift_weakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for _AegirEditingCoordinatorScrollViewScrollObserver();
  return [(_AegirEditingCoordinatorScrollViewScrollObserver *)&v4 init];
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  if (swift_weakLoadStrong())
  {
    v5 = a3;
    v6 = self;
    sub_100023ACC(v5);
  }
}

@end