@interface ATLocationRetriever
- (_TtC15ArchetypeEngine19ATLocationRetriever)init;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation ATLocationRetriever

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_semaphore);
  v5 = self;
  sub_240FD460C();
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_240FC0484(v8);
}

- (_TtC15ArchetypeEngine19ATLocationRetriever)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end