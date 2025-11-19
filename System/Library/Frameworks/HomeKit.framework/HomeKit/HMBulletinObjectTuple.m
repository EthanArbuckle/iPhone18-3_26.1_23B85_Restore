@interface HMBulletinObjectTuple
+ (id)tupleWithQueryType:(int64_t)a3 uuidString:(id)a4;
- (HMBulletinObjectTuple)initWithQueryType:(int64_t)a3 uuidString:(id)a4;
@end

@implementation HMBulletinObjectTuple

- (HMBulletinObjectTuple)initWithQueryType:(int64_t)a3 uuidString:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = HMBulletinObjectTuple;
  v7 = [(HMBulletinObjectTuple *)&v15 init];
  v8 = v7;
  if (v7)
  {
    if (a3 <= 3)
    {
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v9 = @"service";
        }

        else
        {
          v9 = @"characteristic";
        }

        goto LABEL_20;
      }

      if (!a3)
      {
        v9 = @"home";
        goto LABEL_20;
      }

      if (a3 == 1)
      {
        v9 = @"accessory";
        goto LABEL_20;
      }
    }

    else
    {
      if (a3 <= 5)
      {
        if (a3 == 4)
        {
          v9 = @"invitation";
        }

        else
        {
          v9 = @"accessoryProfile";
        }

        goto LABEL_20;
      }

      switch(a3)
      {
        case 6:
          v9 = @"trigger";
          goto LABEL_20;
        case 7:
          queryName = v7->_queryName;
          v7->_queryName = @"tab";

          v11 = @"home";
          goto LABEL_21;
        case 8:
          v9 = @"firmwareUpdate";
LABEL_20:
          v10 = v7->_queryName;
          v7->_queryName = &v9->isa;

          v11 = [v6 copy];
LABEL_21:
          uuidString = v8->_uuidString;
          v8->_uuidString = &v11->isa;

          break;
      }
    }
  }

  return v8;
}

+ (id)tupleWithQueryType:(int64_t)a3 uuidString:(id)a4
{
  v5 = a4;
  v6 = [[HMBulletinObjectTuple alloc] initWithQueryType:a3 uuidString:v5];

  return v6;
}

@end