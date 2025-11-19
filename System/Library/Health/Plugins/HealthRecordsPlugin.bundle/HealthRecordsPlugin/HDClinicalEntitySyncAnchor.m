@interface HDClinicalEntitySyncAnchor
+ (id)nextSyncAnchorWithProfile:(id)a3 key:(id)a4 error:(id *)a5;
@end

@implementation HDClinicalEntitySyncAnchor

+ (id)nextSyncAnchorWithProfile:(id)a3 key:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[HDKeyValueDomain alloc] initWithCategory:100 domainName:@"com.apple.health.records.syncanchors" profile:v8];

  v17 = 0;
  v10 = [v9 numberForKey:v7 error:&v17];
  v11 = v17;
  v12 = v11;
  if (v10)
  {
LABEL_2:
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 longLongValue] + 1);
    if ([v9 setNumber:v13 forKey:v7 error:a5])
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

  if (a5)
  {
    v16 = v11;
    v14 = 0;
    *a5 = v12;
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