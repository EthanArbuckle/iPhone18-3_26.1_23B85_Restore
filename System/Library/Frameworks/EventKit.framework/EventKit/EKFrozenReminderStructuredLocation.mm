@interface EKFrozenReminderStructuredLocation
- (EKFrozenReminderStructuredLocation)initWithAlternateUniverseObject:(id)object inEventStore:(id)store withUpdatedChildObjects:(id)objects;
- (NSString)uniqueIdentifier;
- (double)latitude;
- (double)longitude;
- (double)radius;
- (id)address;
- (id)mapKitHandle;
- (id)title;
- (id)updatedStructuredLocation;
- (void)setLatitudeAndLongitudeFromAlternateUniverseObject:(id)object inChangeSet:(id)set;
@end

@implementation EKFrozenReminderStructuredLocation

- (EKFrozenReminderStructuredLocation)initWithAlternateUniverseObject:(id)object inEventStore:(id)store withUpdatedChildObjects:(id)objects
{
  storeCopy = store;
  objectCopy = object;
  v9 = objc_alloc_init(EKChangeSet);
  [(EKChangeSet *)v9 setSkipsPersistentObjectCopy:1];
  v10 = [objectCopy valueForKey:@"title"];
  [(EKChangeSet *)v9 changeSingleValue:v10 forKey:@"title" basedOn:0];

  v11 = [objectCopy valueForKey:@"radius"];
  [(EKChangeSet *)v9 changeSingleValue:v11 forKey:@"radius" basedOn:0];

  v12 = [objectCopy valueForKey:@"address"];
  [(EKChangeSet *)v9 changeSingleValue:v12 forKey:@"address" basedOn:0];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(EKChangeSet *)v9 changeSingleValue:uUIDString forKey:@"uniqueIdentifier" basedOn:0];

  [(EKFrozenReminderStructuredLocation *)self setLatitudeAndLongitudeFromAlternateUniverseObject:objectCopy inChangeSet:v9];
  reminderStore = [storeCopy reminderStore];

  v16 = [(EKFrozenReminderObject *)self initWithREMObject:0 inStore:reminderStore withChanges:v9];
  return v16;
}

- (NSString)uniqueIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__EKFrozenReminderStructuredLocation_uniqueIdentifier__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"uniqueIdentifier" backingValue:v4];

  return v2;
}

id __54__EKFrozenReminderStructuredLocation_uniqueIdentifier__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _structuredLocation];
  v2 = [v1 locationUID];

  return v2;
}

- (id)updatedStructuredLocation
{
  title = [(EKFrozenReminderStructuredLocation *)self title];
  uniqueIdentifier = [(EKFrozenReminderStructuredLocation *)self uniqueIdentifier];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getREMStructuredLocationClass_softClass_0;
  v15 = getREMStructuredLocationClass_softClass_0;
  if (!getREMStructuredLocationClass_softClass_0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getREMStructuredLocationClass_block_invoke_0;
    v11[3] = &unk_1E77FCFD8;
    v11[4] = &v12;
    __getREMStructuredLocationClass_block_invoke_0(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [[v5 alloc] initWithTitle:title locationUID:uniqueIdentifier];
  [(EKFrozenReminderStructuredLocation *)self latitude];
  [v7 setLatitude:?];
  [(EKFrozenReminderStructuredLocation *)self longitude];
  [v7 setLongitude:?];
  [(EKFrozenReminderStructuredLocation *)self radius];
  [v7 setRadius:?];
  address = [(EKFrozenReminderStructuredLocation *)self address];
  [v7 setAddress:address];

  mapKitHandle = [(EKFrozenReminderStructuredLocation *)self mapKitHandle];
  [v7 setMapKitHandle:mapKitHandle];

  return v7;
}

- (id)title
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__EKFrozenReminderStructuredLocation_title__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"title" backingValue:v4];

  return v2;
}

id __43__EKFrozenReminderStructuredLocation_title__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _structuredLocation];
  v2 = [v1 title];

  return v2;
}

- (id)mapKitHandle
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__EKFrozenReminderStructuredLocation_mapKitHandle__block_invoke;
  v4[3] = &unk_1E77FDC80;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"mapKitHandle" backingValue:v4];

  return v2;
}

id __50__EKFrozenReminderStructuredLocation_mapKitHandle__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _structuredLocation];
  v2 = [v1 mapKitHandle];

  return v2;
}

- (id)address
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EKFrozenReminderStructuredLocation_address__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"address" backingValue:v4];

  return v2;
}

id __45__EKFrozenReminderStructuredLocation_address__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _structuredLocation];
  v2 = [v1 address];

  return v2;
}

- (double)latitude
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__EKFrozenReminderStructuredLocation_latitude__block_invoke;
  v6[3] = &unk_1E77FD0B8;
  v6[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"latitude" backingValue:v6];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

id __46__EKFrozenReminderStructuredLocation_latitude__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _structuredLocation];
  [v2 latitude];
  v3 = [v1 numberWithDouble:?];

  return v3;
}

- (double)longitude
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__EKFrozenReminderStructuredLocation_longitude__block_invoke;
  v6[3] = &unk_1E77FD0B8;
  v6[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"longitude" backingValue:v6];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

id __47__EKFrozenReminderStructuredLocation_longitude__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _structuredLocation];
  [v2 longitude];
  v3 = [v1 numberWithDouble:?];

  return v3;
}

- (double)radius
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__EKFrozenReminderStructuredLocation_radius__block_invoke;
  v6[3] = &unk_1E77FD0B8;
  v6[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"radius" backingValue:v6];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

id __44__EKFrozenReminderStructuredLocation_radius__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _structuredLocation];
  [v2 radius];
  v3 = [v1 numberWithDouble:?];

  return v3;
}

- (void)setLatitudeAndLongitudeFromAlternateUniverseObject:(id)object inChangeSet:(id)set
{
  setCopy = set;
  objectCopy = object;
  v7 = [objectCopy valueForKey:@"latitude"];
  [setCopy changeSingleValue:v7 forKey:@"latitude" basedOn:0];

  v8 = [objectCopy valueForKey:@"latitude"];

  [setCopy changeSingleValue:v8 forKey:@"latitude" basedOn:0];
}

@end