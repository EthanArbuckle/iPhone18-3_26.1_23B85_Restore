@interface ICMinimalDeviceInfo
- (ICMinimalDeviceInfo)initWithName:(id)name upgradable:(BOOL)upgradable upgraded:(BOOL)upgraded;
- (id)debugDescription;
- (id)description;
@end

@implementation ICMinimalDeviceInfo

- (ICMinimalDeviceInfo)initWithName:(id)name upgradable:(BOOL)upgradable upgraded:(BOOL)upgraded
{
  v6.receiver = self;
  v6.super_class = ICMinimalDeviceInfo;
  return [(ICMigrationDeviceInfo *)&v6 initWithName:name upgradable:upgradable upgraded:upgraded];
}

- (id)debugDescription
{
  v9.receiver = self;
  v9.super_class = ICMinimalDeviceInfo;
  v3 = [(ICMinimalDeviceInfo *)&v9 description];
  name = [(ICMigrationDeviceInfo *)self name];
  if ([(ICMigrationDeviceInfo *)self upgradable])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(ICMigrationDeviceInfo *)self upgraded])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"%@ <name: %@, Upgradable: %@, Upgraded: %@", v3, name, v5, v6];

  return v7;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = ICMinimalDeviceInfo;
  v3 = [(ICMinimalDeviceInfo *)&v8 description];
  if ([(ICMigrationDeviceInfo *)self upgradable])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(ICMigrationDeviceInfo *)self upgraded])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [NSString stringWithFormat:@"%@ <Upgradable: %@, Upgraded: %@", v3, v4, v5];

  return v6;
}

@end