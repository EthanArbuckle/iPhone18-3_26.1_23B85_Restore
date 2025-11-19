@interface CTXPCPlaceholder
+ (id)cfUuid:(__CFUUID *)a3;
+ (id)simSlot:(int)a3;
@end

@implementation CTXPCPlaceholder

+ (id)simSlot:(int)a3
{
  v3 = [[CTXPCSlotIDPlaceholder alloc] initWithSlot:*&a3];

  return v3;
}

+ (id)cfUuid:(__CFUUID *)a3
{
  v4 = [CTXPCUuidPlaceholder alloc];
  v5 = sub_100185C20(a3);
  v6 = [(CTXPCUuidPlaceholder *)v4 initWithUUID:v5];

  return v6;
}

@end