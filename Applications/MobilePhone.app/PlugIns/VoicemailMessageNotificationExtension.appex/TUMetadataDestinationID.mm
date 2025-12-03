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
  v3 = sub_100049818();
  swift_unknownObjectRelease();

  return v3;
}

+ (id)metadataDestinationIDsForVMVoicemails:(id)voicemails
{
  sub_100017538(&qword_10009A700);
  v3 = sub_1000608CC();
  swift_getObjCClassMetadata();
  sub_100049A80(v3);

  sub_10004A074();
  v4.super.isa = sub_1000608BC().super.isa;

  return v4.super.isa;
}

@end