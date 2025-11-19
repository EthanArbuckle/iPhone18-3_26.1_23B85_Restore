@interface IOSMapsDesignIntegrationTestContext
- (id)desiredCards;
@end

@implementation IOSMapsDesignIntegrationTestContext

- (id)desiredCards
{
  v2 = *&self->_TtC4Maps32MapsDesignIntegrationTestContext_opaque[OBJC_IVAR____TtC4Maps35IOSMapsDesignIntegrationTestContext_containee];
  if (v2)
  {
    sub_1000CE6B8(&qword_101908400);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1011E47B0;
    *(v3 + 32) = v2;
  }

  v4 = v2;
  sub_1000CE6B8(&unk_10190B260);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

@end