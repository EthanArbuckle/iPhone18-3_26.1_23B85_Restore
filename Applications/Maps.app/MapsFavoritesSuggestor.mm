@interface MapsFavoritesSuggestor
- (_TtC4Maps22MapsFavoritesSuggestor)init;
- (char)suggestShortcutsOfType:(int64_t)a3 handler:(id)a4;
- (id)initFromResourceDepot:(id)a3;
@end

@implementation MapsFavoritesSuggestor

- (id)initFromResourceDepot:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MapsFavoritesSuggestor();
  return [(MapsFavoritesSuggestor *)&v4 init];
}

- (char)suggestShortcutsOfType:(int64_t)a3 handler:(id)a4
{
  v4 = _Block_copy(a4);
  sub_100014C84(0, &qword_101918E00);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4[2](v4, isa, 0);

  _Block_release(v4);
  return 1;
}

- (_TtC4Maps22MapsFavoritesSuggestor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end