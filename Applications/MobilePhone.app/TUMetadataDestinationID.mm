@interface TUMetadataDestinationID
+ (id)metadataDestinationIDWithVoicemailMessage:(id)message;
+ (id)metadataDestinationIDsForVMVoicemails:(id)voicemails;
@end

@implementation TUMetadataDestinationID

+ (id)metadataDestinationIDWithVoicemailMessage:(id)message
{
  swift_getObjCClassMetadata();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = static TUMetadataDestinationID._metadataDestinationID(with:countryCodeKey:destinationIDKey:)();
  swift_unknownObjectRelease();

  return v3;
}

+ (id)metadataDestinationIDsForVMVoicemails:(id)voicemails
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  static TUMetadataDestinationID.metadataDestinationIDs(for:)(v3);

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for TUMetadataDestinationID);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

@end