@interface HealthManager
- (BOOL)hasSeenBothHealthTCCs;
- (void)setHasSeenBothHealthTCCs:(BOOL)a3;
@end

@implementation HealthManager

- (BOOL)hasSeenBothHealthTCCs
{
  v3 = *self->sharedUserDefaults;

  v4 = String._bridgeToObjectiveC()();
  LODWORD(v3) = [v3 BOOLForKey:v4];

  if (v3)
  {
    v5 = *self->sharedUserDefaults;
    v6 = String._bridgeToObjectiveC()();
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

  v6 = String._bridgeToObjectiveC()();
  [v5 setBool:v3 forKey:v6];

  v7 = *self->sharedUserDefaults;
  v8 = String._bridgeToObjectiveC()();
  [v7 setBool:v3 forKey:v8];
}

@end