@interface HealthManager
- (BOOL)hasSeenBothHealthTCCs;
- (void)setHasSeenBothHealthTCCs:(BOOL)a3;
@end

@implementation HealthManager

- (BOOL)hasSeenBothHealthTCCs
{
  v3 = *self->sharedUserDefaults;

  v4 = sub_100100F94();
  LODWORD(v3) = [v3 BOOLForKey:v4];

  if (v3)
  {
    v5 = *self->sharedUserDefaults;
    v6 = sub_100100F94();
    LOBYTE(v5) = [v5 BOOLForKey:v6];

    return v5;
  }

  else
  {

    return 0;
  }
}

- (void)setHasSeenBothHealthTCCs:(BOOL)a3
{
  v3 = a3;
  v5 = *self->sharedUserDefaults;

  v6 = sub_100100F94();
  [v5 setBool:v3 forKey:v6];

  v7 = *self->sharedUserDefaults;
  v8 = sub_100100F94();
  [v7 setBool:v3 forKey:v8];
}

@end