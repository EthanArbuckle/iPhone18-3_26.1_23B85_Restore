@interface ANParticipant(Rapport)
- (id)initWithDevice:()Rapport;
- (void)populateWithDevice:()Rapport;
@end

@implementation ANParticipant(Rapport)

- (id)initWithDevice:()Rapport
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &off_2851D5BE8;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = v5;
  if (v5)
  {
    [v5 populateWithDevice:v4];
  }

  return v6;
}

- (void)populateWithDevice:()Rapport
{
  v4 = a3;
  [a1 setIsAccessory:{objc_msgSend(v4, "isAccessory")}];
  v5 = [v4 identifier];
  [a1 setRapportID:v5];

  v6 = [v4 idsDeviceIdentifier];
  [a1 setIdsID:v6];

  v7 = [v4 homeKitIdentifier];
  v8 = [v7 UUIDString];
  [a1 setHomeKitID:v8];

  v9 = [v4 name];

  [a1 setName:v9];
}

@end