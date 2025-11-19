@interface AudioBoxController
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
@end

@implementation AudioBoxController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_10001A62C(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)start
{
  v2 = self;
  sub_10001A99C();
}

- (void)teardown
{
  v2 = self;
  sub_10001AF30();
}

@end