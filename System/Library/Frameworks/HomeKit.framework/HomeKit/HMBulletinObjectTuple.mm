@interface HMBulletinObjectTuple
+ (id)tupleWithQueryType:(int64_t)type uuidString:(id)string;
- (HMBulletinObjectTuple)initWithQueryType:(int64_t)type uuidString:(id)string;
@end

@implementation HMBulletinObjectTuple

- (HMBulletinObjectTuple)initWithQueryType:(int64_t)type uuidString:(id)string
{
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = HMBulletinObjectTuple;
  v7 = [(HMBulletinObjectTuple *)&v15 init];
  v8 = v7;
  if (v7)
  {
    if (type <= 3)
    {
      if (type > 1)
      {
        if (type == 2)
        {
          v9 = @"service";
        }

        else
        {
          v9 = @"characteristic";
        }

        goto LABEL_20;
      }

      if (!type)
      {
        v9 = @"home";
        goto LABEL_20;
      }

      if (type == 1)
      {
        v9 = @"accessory";
        goto LABEL_20;
      }
    }

    else
    {
      if (type <= 5)
      {
        if (type == 4)
        {
          v9 = @"invitation";
        }

        else
        {
          v9 = @"accessoryProfile";
        }

        goto LABEL_20;
      }

      switch(type)
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

          v11 = [stringCopy copy];
LABEL_21:
          uuidString = v8->_uuidString;
          v8->_uuidString = &v11->isa;

          break;
      }
    }
  }

  return v8;
}

+ (id)tupleWithQueryType:(int64_t)type uuidString:(id)string
{
  stringCopy = string;
  v6 = [[HMBulletinObjectTuple alloc] initWithQueryType:type uuidString:stringCopy];

  return v6;
}

@end