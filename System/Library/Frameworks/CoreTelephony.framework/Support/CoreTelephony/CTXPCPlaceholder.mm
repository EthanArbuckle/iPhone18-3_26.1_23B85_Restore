@interface CTXPCPlaceholder
+ (id)cfUuid:(__CFUUID *)uuid;
+ (id)simSlot:(int)slot;
@end

@implementation CTXPCPlaceholder

+ (id)simSlot:(int)slot
{
  v3 = [[CTXPCSlotIDPlaceholder alloc] initWithSlot:*&slot];

  return v3;
}

+ (id)cfUuid:(__CFUUID *)uuid
{
  v4 = [CTXPCUuidPlaceholder alloc];
  v5 = sub_100185C20(uuid);
  v6 = [(CTXPCUuidPlaceholder *)v4 initWithUUID:v5];

  return v6;
}

@end