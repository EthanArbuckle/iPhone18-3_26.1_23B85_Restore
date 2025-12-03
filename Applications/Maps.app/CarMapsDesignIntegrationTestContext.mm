@interface CarMapsDesignIntegrationTestContext
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (NSArray)carFocusOrderSequences;
- (_TtC4Maps35CarMapsDesignIntegrationTestContext)init;
- (id)desiredCards;
- (void)configureCard:(id)card forKey:(id)key;
@end

@implementation CarMapsDesignIntegrationTestContext

- (_TtC4Maps35CarMapsDesignIntegrationTestContext)init
{
  *&self->_TtC4Maps32MapsDesignIntegrationTestContext_opaque[OBJC_IVAR____TtC4Maps35CarMapsDesignIntegrationTestContext_contentController] = [objc_allocWithZone(type metadata accessor for CarIntegrationTestViewController()) initWithNibName:0 bundle:0];
  v4.receiver = self;
  v4.super_class = type metadata accessor for CarMapsDesignIntegrationTestContext();
  return [(MapsDesignIntegrationTestContext *)&v4 init];
}

- (NSArray)carFocusOrderSequences
{
  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E47B0;
  *(v2 + 32) = [objc_opt_self() defaultSequence];
  sub_1001D2F50();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)desiredCards
{
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)configureCard:(id)card forKey:(id)key
{
  if (key)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001D29D0(card, v6, v8);
  swift_unknownObjectRelease();
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  selfCopy = self;
  v5 = sub_1001D2BB0();
  v7 = v6;
  v9 = v8;

  retstr->var0 = v5;
  retstr->var1 = v7;
  retstr->var2 = v9;
  return result;
}

@end