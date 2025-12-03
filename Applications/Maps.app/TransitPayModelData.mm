@interface TransitPayModelData
- (BOOL)canPresentEducationScreen;
- (BOOL)hasAllNeededText;
- (TransitPayModelData)initWithTitle:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle image:(id)image paymentMethod:(id)method topUpPassUniqueID:(id)d isForRemoteDevice:(BOOL)device;
- (TransitPayModelData)initWithTitle:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle image:(id)image suggestionType:(int)type paymentMethods:(id)methods;
- (TransitPayModelData)initWithTitle:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle image:(id)image suggestionType:(int)type paymentMethods:(id)methods educationScreenTitle:(id)screenTitle educationScreenAssetURLs:(id)self0 educationScreenText:(id)self1 topUpPassUniqueID:(id)self2 isForRemoteDevice:(BOOL)self3;
- (id)analyticsValue;
- (id)description;
@end

@implementation TransitPayModelData

- (id)analyticsValue
{
  suggestionType = [(TransitPayModelData *)self suggestionType];
  if (suggestionType <= 2)
  {
    v5 = @"OPEN_LOOP";
    if (suggestionType != 2)
    {
      v5 = 0;
    }

    if (suggestionType == 1)
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
    switch(suggestionType)
    {
      case 3:
        paymentMethods = [(TransitPayModelData *)self paymentMethods];
        v7 = [paymentMethods count];

        if (v7 <= 1)
        {
          paymentMethods2 = [(TransitPayModelData *)self paymentMethods];
          v9 = [paymentMethods2 count];

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
  title = [(TransitPayModelData *)self title];
  [v3 appendFormat:@" title:              '%@'\n", title];

  subtitle = [(TransitPayModelData *)self subtitle];
  [v3 appendFormat:@" subtitle:           '%@'\n", subtitle];

  actionTitle = [(TransitPayModelData *)self actionTitle];
  [v3 appendFormat:@" actionTitle:        '%@'\n", actionTitle];

  image = [(TransitPayModelData *)self image];
  image2 = [(TransitPayModelData *)self image];
  [image2 size];
  v9 = NSStringFromCGSize(v22);
  [v3 appendFormat:@" image:              '%x, size:%@'\n", image, v9];

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
  paymentMethods = [(TransitPayModelData *)self paymentMethods];
  [v3 appendFormat:@" paymentMethods:     '%@'\n", paymentMethods];

  educationScreenTitle = [(TransitPayModelData *)self educationScreenTitle];
  [v3 appendFormat:@" eduScreenTitle:     '%@'\n", educationScreenTitle];

  educationScreenAssetURLs = [(TransitPayModelData *)self educationScreenAssetURLs];
  [v3 appendFormat:@" imageURLs:          '%@'\n", educationScreenAssetURLs];

  educationScreenText = [(TransitPayModelData *)self educationScreenText];
  [v3 appendFormat:@" eduScreenText:      '%@'\n", educationScreenText];

  topUpPassUniqueID = [(TransitPayModelData *)self topUpPassUniqueID];
  [v3 appendFormat:@" topUpUniqueID:      '%@'\n", topUpPassUniqueID];

  isForRemoteDevice = [(TransitPayModelData *)self isForRemoteDevice];
  v18 = @"NO";
  if (isForRemoteDevice)
  {
    v18 = @"YES";
  }

  [v3 appendFormat:@" isForRemoteDevice:  '%@'\n", v18];
  v19 = [[NSString alloc] initWithString:v3];

  return v19;
}

- (BOOL)hasAllNeededText
{
  title = [(TransitPayModelData *)self title];
  if ([title length])
  {
    subtitle = [(TransitPayModelData *)self subtitle];
    if ([subtitle length])
    {
      actionTitle = [(TransitPayModelData *)self actionTitle];
      v6 = [actionTitle length] != 0;
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
  educationScreenText = [(TransitPayModelData *)self educationScreenText];
  if ([educationScreenText length])
  {
    educationScreenTitle = [(TransitPayModelData *)self educationScreenTitle];
    v5 = [educationScreenTitle length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TransitPayModelData)initWithTitle:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle image:(id)image paymentMethod:(id)method topUpPassUniqueID:(id)d isForRemoteDevice:(BOOL)device
{
  dCopy = d;
  methodCopy = method;
  imageCopy = image;
  actionTitleCopy = actionTitle;
  subtitleCopy = subtitle;
  titleCopy = title;
  v21 = [TransitPayModelData alloc];
  v26 = methodCopy;
  v22 = [NSArray arrayWithObjects:&v26 count:1];

  LOBYTE(v25) = device;
  v23 = [(TransitPayModelData *)v21 initWithTitle:titleCopy subtitle:subtitleCopy actionTitle:actionTitleCopy image:imageCopy suggestionType:5 paymentMethods:v22 educationScreenTitle:0 educationScreenAssetURLs:0 educationScreenText:0 topUpPassUniqueID:dCopy isForRemoteDevice:v25];

  return v23;
}

- (TransitPayModelData)initWithTitle:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle image:(id)image suggestionType:(int)type paymentMethods:(id)methods
{
  v8 = *&type;
  methodsCopy = methods;
  imageCopy = image;
  actionTitleCopy = actionTitle;
  subtitleCopy = subtitle;
  titleCopy = title;
  LOBYTE(v21) = 0;
  v19 = [[TransitPayModelData alloc] initWithTitle:titleCopy subtitle:subtitleCopy actionTitle:actionTitleCopy image:imageCopy suggestionType:v8 paymentMethods:methodsCopy educationScreenTitle:0 educationScreenAssetURLs:0 educationScreenText:0 topUpPassUniqueID:0 isForRemoteDevice:v21];

  return v19;
}

- (TransitPayModelData)initWithTitle:(id)title subtitle:(id)subtitle actionTitle:(id)actionTitle image:(id)image suggestionType:(int)type paymentMethods:(id)methods educationScreenTitle:(id)screenTitle educationScreenAssetURLs:(id)self0 educationScreenText:(id)self1 topUpPassUniqueID:(id)self2 isForRemoteDevice:(BOOL)self3
{
  titleCopy = title;
  subtitleCopy = subtitle;
  actionTitleCopy = actionTitle;
  imageCopy = image;
  methodsCopy = methods;
  screenTitleCopy = screenTitle;
  lsCopy = ls;
  textCopy = text;
  dCopy = d;
  v32.receiver = self;
  v32.super_class = TransitPayModelData;
  v20 = [(TransitPayModelData *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_title, title);
    objc_storeStrong(&v21->_subtitle, subtitle);
    objc_storeStrong(&v21->_actionTitle, actionTitle);
    objc_storeStrong(&v21->_image, image);
    v21->_suggestionType = type;
    objc_storeStrong(&v21->_paymentMethods, methods);
    objc_storeStrong(&v21->_educationScreenTitle, screenTitle);
    objc_storeStrong(&v21->_educationScreenAssetURLs, ls);
    objc_storeStrong(&v21->_educationScreenText, text);
    objc_storeStrong(&v21->_topUpPassUniqueID, d);
    v21->_isForRemoteDevice = device;
  }

  return v21;
}

@end