@interface HDClinicalEntitySyncAnchor
+ (id)nextSyncAnchorWithProfile:(id)profile key:(id)key error:(id *)error;
@end

@implementation HDClinicalEntitySyncAnchor

+ (id)nextSyncAnchorWithProfile:(id)profile key:(id)key error:(id *)error
{
  keyCopy = key;
  profileCopy = profile;
  v9 = [[HDKeyValueDomain alloc] initWithCategory:100 domainName:@"com.apple.health.records.syncanchors" profile:profileCopy];

  v17 = 0;
  v10 = [v9 numberForKey:keyCopy error:&v17];
  v11 = v17;
  v12 = v11;
  if (v10)
  {
LABEL_2:
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 longLongValue] + 1);
    if ([v9 setNumber:v13 forKey:keyCopy error:error])
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_6;
  }

  if (!v11)
  {
    v10 = &off_10FFE8;
    goto LABEL_2;
  }

  if (error)
  {
    v16 = v11;
    v14 = 0;
    *error = v12;
  }

  else
  {
    _HKLogDroppedError();
    v14 = 0;
  }

LABEL_6:

  return v14;
}

@end