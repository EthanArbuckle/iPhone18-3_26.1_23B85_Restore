@interface AAUIAccountRecoveryContactUpsellContactSection
+ (id)createWithViewModel:(id)model delegate:(id)delegate;
@end

@implementation AAUIAccountRecoveryContactUpsellContactSection

+ (id)createWithViewModel:(id)model delegate:(id)delegate
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](model);
  swift_unknownObjectRetain();
  swift_getObjCClassMetadata();
  v7 = static AccountRecoveryContactUpsellContactSection.create(viewModel:delegate:)(model, delegate);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](model);

  return v7;
}

@end