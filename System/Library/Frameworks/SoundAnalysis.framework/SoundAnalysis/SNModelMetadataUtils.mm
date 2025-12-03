@interface SNModelMetadataUtils
+ (id)validatedFeedbackConnectionsFromModelDescription:(id)description orDefault:(id)default;
@end

@implementation SNModelMetadataUtils

+ (id)validatedFeedbackConnectionsFromModelDescription:(id)description orDefault:(id)default
{
  type metadata accessor for SNModelFeatureConnection();
  sub_1C9A40EFC(&unk_1EC3C55C0, v5, type metadata accessor for SNModelFeatureConnection);
  v6 = sub_1C9A92B28();
  swift_getObjCClassMetadata();
  descriptionCopy = description;
  sub_1C9A3C5D4(descriptionCopy, v6);

  v8 = sub_1C9A92B18();

  return v8;
}

@end