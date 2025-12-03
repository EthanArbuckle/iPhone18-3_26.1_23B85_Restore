@interface ANParticipant(Rapport)
- (id)initWithDevice:()Rapport;
- (void)populateWithDevice:()Rapport;
@end

@implementation ANParticipant(Rapport)

- (id)initWithDevice:()Rapport
{
  v4 = a3;
  v8.receiver = self;
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
  [self setIsAccessory:{objc_msgSend(v4, "isAccessory")}];
  identifier = [v4 identifier];
  [self setRapportID:identifier];

  idsDeviceIdentifier = [v4 idsDeviceIdentifier];
  [self setIdsID:idsDeviceIdentifier];

  homeKitIdentifier = [v4 homeKitIdentifier];
  uUIDString = [homeKitIdentifier UUIDString];
  [self setHomeKitID:uUIDString];

  name = [v4 name];

  [self setName:name];
}

@end