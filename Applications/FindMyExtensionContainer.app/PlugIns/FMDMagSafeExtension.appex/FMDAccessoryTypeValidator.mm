@interface FMDAccessoryTypeValidator
+ (id)sharedInstance;
- (BOOL)isAllowedAccessoryWithType:(id)a3;
- (FMDAccessoryTypeValidator)init;
@end

@implementation FMDAccessoryTypeValidator

+ (id)sharedInstance
{
  if (qword_100030B00 != -1)
  {
    sub_10001536C();
  }

  v3 = qword_100030AF8;

  return v3;
}

- (FMDAccessoryTypeValidator)init
{
  v6.receiver = self;
  v6.super_class = FMDAccessoryTypeValidator;
  v2 = [(FMDAccessoryTypeValidator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    allowedAccessoryTypes = v2->_allowedAccessoryTypes;
    v2->_allowedAccessoryTypes = &off_100028D38;
  }

  return v3;
}

- (BOOL)isAllowedAccessoryWithType:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(FMDAccessoryTypeValidator *)self allowedAccessoryTypes];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v4 isEqualToString:*(*(&v10 + 1) + 8 * i)])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end