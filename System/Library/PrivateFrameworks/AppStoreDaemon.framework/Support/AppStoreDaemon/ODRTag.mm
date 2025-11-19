@interface ODRTag
+ (id)defaultProperties;
- (BOOL)isEqual:(id)a3;
@end

@implementation ODRTag

+ (id)defaultProperties
{
  v4[0] = @"always_preserved";
  v4[1] = @"bundle_id";
  v4[2] = @"bundle_key";
  v4[3] = @"name";
  v4[4] = @"preservation_priority";
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = sub_1002BFFB8(self);
    v7 = sub_1002BFFB8(v5);
    if ([v6 isEqualToString:v7])
    {
      v8 = sub_1002BFFF0(self);
      v9 = sub_1002BFFF0(v5);
      if ([v8 isEqualToString:v9])
      {
        v10 = sub_1002C0070(self);
        v11 = sub_1002C0070(v5);
        v12 = [v10 isEqualToString:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end