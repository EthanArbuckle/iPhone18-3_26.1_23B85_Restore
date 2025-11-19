@interface HKEmergencyContact
@end

@implementation HKEmergencyContact

void __60___HKEmergencyContact_emergencyContactWithContact_property___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  [v7 setPhoneNumber:a2];
  [*(a1 + 32) setPhoneNumberContactIdentifier:v8];

  [*(a1 + 32) setPhoneNumberLabel:v9];
}

@end