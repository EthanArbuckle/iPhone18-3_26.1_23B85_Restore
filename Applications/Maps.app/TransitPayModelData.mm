@interface TransitPayModelData
- (BOOL)canPresentEducationScreen;
- (BOOL)hasAllNeededText;
- (TransitPayModelData)initWithTitle:(id)a3 subtitle:(id)a4 actionTitle:(id)a5 image:(id)a6 paymentMethod:(id)a7 topUpPassUniqueID:(id)a8 isForRemoteDevice:(BOOL)a9;
- (TransitPayModelData)initWithTitle:(id)a3 subtitle:(id)a4 actionTitle:(id)a5 image:(id)a6 suggestionType:(int)a7 paymentMethods:(id)a8;
- (TransitPayModelData)initWithTitle:(id)a3 subtitle:(id)a4 actionTitle:(id)a5 image:(id)a6 suggestionType:(int)a7 paymentMethods:(id)a8 educationScreenTitle:(id)a9 educationScreenAssetURLs:(id)a10 educationScreenText:(id)a11 topUpPassUniqueID:(id)a12 isForRemoteDevice:(BOOL)a13;
- (id)analyticsValue;
- (id)description;
@end

@implementation TransitPayModelData

- (id)analyticsValue
{
  v3 = [(TransitPayModelData *)self suggestionType];
  if (v3 <= 2)
  {
    v5 = @"OPEN_LOOP";
    if (v3 != 2)
    {
      v5 = 0;
    }

    if (v3 == 1)
    {
      return @"OPEN_LOOP_EXPRESS";
    }

    else
    {
      return v5;
    }
  }

  else
  {
    switch(v3)
    {
      case 3:
        v6 = [(TransitPayModelData *)self paymentMethods];
        v7 = [v6 count];

        if (v7 <= 1)
        {
          v8 = [(TransitPayModelData *)self paymentMethods];
          v9 = [v8 count];

          if (v9 == 1)
          {
            return @"CLOSED_LOOP_PROVISION_SINGLE";
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return @"CLOSED_LOOP_PROVISION_MULTIPLE";
        }

      case 4:
        return @"INTEROPERABLE";
      case 5:
        if ([(TransitPayModelData *)self isForRemoteDevice])
        {
          return @"CLOSED_LOOP_TOP_UP_WATCH";
        }

        else
        {
          return @"CLOSED_LOOP_TOP_UP_PHONE";
        }

      default:
        return 0;
    }
  }
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@" TransitPayModelData:\n"];
  v4 = [(TransitPayModelData *)self title];
  [v3 appendFormat:@" title:              '%@'\n", v4];

  v5 = [(TransitPayModelData *)self subtitle];
  [v3 appendFormat:@" subtitle:           '%@'\n", v5];

  v6 = [(TransitPayModelData *)self actionTitle];
  [v3 appendFormat:@" actionTitle:        '%@'\n", v6];

  v7 = [(TransitPayModelData *)self image];
  v8 = [(TransitPayModelData *)self image];
  [v8 size];
  v9 = NSStringFromCGSize(v22);
  [v3 appendFormat:@" image:              '%x, size:%@'\n", v7, v9];

  v10 = [(TransitPayModelData *)self suggestionType]- 1;
  if (v10 > 4)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = *(&off_101628838 + v10);
  }

  [v3 appendFormat:@" suggestionType:     '%@'\n", v11];
  v12 = [(TransitPayModelData *)self paymentMethods];
  [v3 appendFormat:@" paymentMethods:     '%@'\n", v12];

  v13 = [(TransitPayModelData *)self educationScreenTitle];
  [v3 appendFormat:@" eduScreenTitle:     '%@'\n", v13];

  v14 = [(TransitPayModelData *)self educationScreenAssetURLs];
  [v3 appendFormat:@" imageURLs:          '%@'\n", v14];

  v15 = [(TransitPayModelData *)self educationScreenText];
  [v3 appendFormat:@" eduScreenText:      '%@'\n", v15];

  v16 = [(TransitPayModelData *)self topUpPassUniqueID];
  [v3 appendFormat:@" topUpUniqueID:      '%@'\n", v16];

  v17 = [(TransitPayModelData *)self isForRemoteDevice];
  v18 = @"NO";
  if (v17)
  {
    v18 = @"YES";
  }

  [v3 appendFormat:@" isForRemoteDevice:  '%@'\n", v18];
  v19 = [[NSString alloc] initWithString:v3];

  return v19;
}

- (BOOL)hasAllNeededText
{
  v3 = [(TransitPayModelData *)self title];
  if ([v3 length])
  {
    v4 = [(TransitPayModelData *)self subtitle];
    if ([v4 length])
    {
      v5 = [(TransitPayModelData *)self actionTitle];
      v6 = [v5 length] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canPresentEducationScreen
{
  v3 = [(TransitPayModelData *)self educationScreenText];
  if ([v3 length])
  {
    v4 = [(TransitPayModelData *)self educationScreenTitle];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TransitPayModelData)initWithTitle:(id)a3 subtitle:(id)a4 actionTitle:(id)a5 image:(id)a6 paymentMethod:(id)a7 topUpPassUniqueID:(id)a8 isForRemoteDevice:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [TransitPayModelData alloc];
  v26 = v16;
  v22 = [NSArray arrayWithObjects:&v26 count:1];

  LOBYTE(v25) = a9;
  v23 = [(TransitPayModelData *)v21 initWithTitle:v20 subtitle:v19 actionTitle:v18 image:v17 suggestionType:5 paymentMethods:v22 educationScreenTitle:0 educationScreenAssetURLs:0 educationScreenText:0 topUpPassUniqueID:v15 isForRemoteDevice:v25];

  return v23;
}

- (TransitPayModelData)initWithTitle:(id)a3 subtitle:(id)a4 actionTitle:(id)a5 image:(id)a6 suggestionType:(int)a7 paymentMethods:(id)a8
{
  v8 = *&a7;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  LOBYTE(v21) = 0;
  v19 = [[TransitPayModelData alloc] initWithTitle:v18 subtitle:v17 actionTitle:v16 image:v15 suggestionType:v8 paymentMethods:v14 educationScreenTitle:0 educationScreenAssetURLs:0 educationScreenText:0 topUpPassUniqueID:0 isForRemoteDevice:v21];

  return v19;
}

- (TransitPayModelData)initWithTitle:(id)a3 subtitle:(id)a4 actionTitle:(id)a5 image:(id)a6 suggestionType:(int)a7 paymentMethods:(id)a8 educationScreenTitle:(id)a9 educationScreenAssetURLs:(id)a10 educationScreenText:(id)a11 topUpPassUniqueID:(id)a12 isForRemoteDevice:(BOOL)a13
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v24 = a11;
  v19 = a12;
  v32.receiver = self;
  v32.super_class = TransitPayModelData;
  v20 = [(TransitPayModelData *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_title, a3);
    objc_storeStrong(&v21->_subtitle, a4);
    objc_storeStrong(&v21->_actionTitle, a5);
    objc_storeStrong(&v21->_image, a6);
    v21->_suggestionType = a7;
    objc_storeStrong(&v21->_paymentMethods, a8);
    objc_storeStrong(&v21->_educationScreenTitle, a9);
    objc_storeStrong(&v21->_educationScreenAssetURLs, a10);
    objc_storeStrong(&v21->_educationScreenText, a11);
    objc_storeStrong(&v21->_topUpPassUniqueID, a12);
    v21->_isForRemoteDevice = a13;
  }

  return v21;
}

@end