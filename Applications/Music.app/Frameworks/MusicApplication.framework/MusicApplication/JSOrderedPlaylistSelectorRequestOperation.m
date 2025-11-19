@interface JSOrderedPlaylistSelectorRequestOperation
- (_TtC16MusicApplicationP33_80AE2528D20BB280B10BEE706541B0E941JSOrderedPlaylistSelectorRequestOperation)init;
- (void)execute;
@end

@implementation JSOrderedPlaylistSelectorRequestOperation

- (void)execute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSOrderedPlaylistSelectorRequestOperation();
  v2 = v5.receiver;
  [(JSOrderedPlaylistSelectorRequestOperation *)&v5 execute];
  sub_60044();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4CDAF0, v3);
}

- (_TtC16MusicApplicationP33_80AE2528D20BB280B10BEE706541B0E941JSOrderedPlaylistSelectorRequestOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end