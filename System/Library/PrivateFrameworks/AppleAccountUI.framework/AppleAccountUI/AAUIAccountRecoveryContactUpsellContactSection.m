@interface AAUIAccountRecoveryContactUpsellContactSection
+ (id)createWithViewModel:(id)a3 delegate:(id)a4;
@end

@implementation AAUIAccountRecoveryContactUpsellContactSection

+ (id)createWithViewModel:(id)a3 delegate:(id)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  swift_unknownObjectRetain();
  swift_getObjCClassMetadata();
  v7 = static AccountRecoveryContactUpsellContactSection.create(viewModel:delegate:)(a3, a4);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a3);

  return v7;
}

@end