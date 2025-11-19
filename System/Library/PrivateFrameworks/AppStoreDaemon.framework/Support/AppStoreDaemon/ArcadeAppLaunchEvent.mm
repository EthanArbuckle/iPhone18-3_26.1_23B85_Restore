@interface ArcadeAppLaunchEvent
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ArcadeAppLaunchEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = ArcadeAppLaunchEvent;
  v5 = [(SQLiteMemoryEntity *)&v11 copyWithZone:?];
  v6 = sub_10023AC10(self);
  if (v5)
  {
    sub_10023E000(v5, v6, @"bundle_id");
  }

  v7 = sub_10023AC80(self);
  v8 = [v7 copyWithZone:a3];
  if (v5)
  {
    sub_10023E000(v5, v8, @"payload");
  }

  v9 = sub_10023AC48(self);
  if (v5)
  {
    sub_10023E000(v5, v9, @"source_bundle_id");
  }

  return v5;
}

@end