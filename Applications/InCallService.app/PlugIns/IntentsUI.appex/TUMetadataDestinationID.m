@interface TUMetadataDestinationID
+ (id)metadataDestinationIDWithVoicemailMessage:(id)a3;
+ (id)metadataDestinationIDsForVMVoicemails:(id)a3;
@end

@implementation TUMetadataDestinationID

+ (id)metadataDestinationIDWithVoicemailMessage:(id)a3
{
  swift_getObjCClassMetadata();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = sub_100070B94();
  swift_unknownObjectRelease();

  return v3;
}

+ (id)metadataDestinationIDsForVMVoicemails:(id)a3
{
  sub_100030744(&unk_1000C5360);
  v3 = sub_10007B528();
  swift_getObjCClassMetadata();
  sub_100070DFC(v3);

  sub_100055038(0, &qword_1000C5E00);
  v4.super.isa = sub_10007B518().super.isa;

  return v4.super.isa;
}

@end