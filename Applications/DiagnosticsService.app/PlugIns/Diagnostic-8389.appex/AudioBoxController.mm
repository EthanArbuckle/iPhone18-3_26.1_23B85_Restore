@interface AudioBoxController
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
@end

@implementation AudioBoxController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10001A62C(inputs, responder);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)start
{
  selfCopy = self;
  sub_10001A99C();
}

- (void)teardown
{
  selfCopy = self;
  sub_10001AF30();
}

@end