@interface CRLCommandController.CRLCommandControllerCommandGroup
- (NSString)actionString;
- (_TtCC8Freeform20CRLCommandControllerP33_F675CB786BBB78E2B0BD13D7028A0B2032CRLCommandControllerCommandGroup)init;
- (void)setActionString:(id)string;
@end

@implementation CRLCommandController.CRLCommandControllerCommandGroup

- (NSString)actionString
{
  selfCopy = self;
  sub_100887218();
  if (!v3)
  {
    sub_10097D1AC();
  }

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (void)setActionString:(id)string
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = &self->_TtC8Freeform15CRLCommandGroup_opaque[OBJC_IVAR____TtCC8Freeform20CRLCommandControllerP33_F675CB786BBB78E2B0BD13D7028A0B2032CRLCommandControllerCommandGroup__currentGroupActionString];
  *v5 = v4;
  v5[1] = v6;
}

- (_TtCC8Freeform20CRLCommandControllerP33_F675CB786BBB78E2B0BD13D7028A0B2032CRLCommandControllerCommandGroup)init
{
  v3 = &self->_TtC8Freeform15CRLCommandGroup_opaque[OBJC_IVAR____TtCC8Freeform20CRLCommandControllerP33_F675CB786BBB78E2B0BD13D7028A0B2032CRLCommandControllerCommandGroup__currentGroupActionString];
  v4 = type metadata accessor for CRLCommandController.CRLCommandControllerCommandGroup();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(CRLCommandGroup *)&v6 init];
}

@end