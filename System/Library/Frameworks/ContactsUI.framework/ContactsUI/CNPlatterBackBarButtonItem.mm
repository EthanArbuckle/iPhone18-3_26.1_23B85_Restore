@interface CNPlatterBackBarButtonItem
- (CNPlatterBackBarButtonItem)initWithTarget:(id)target action:(SEL)action isRTL:(BOOL)l;
- (id)backButtonPlatterImageForRTL:(BOOL)l;
- (void)setBackgroundImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics;
@end

@implementation CNPlatterBackBarButtonItem

- (void)setBackgroundImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics
{
  imageCopy = image;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v11 = [featureFlags isFeatureEnabled:29];

  if ((v11 & 1) != 0 || ([(CNPlatterBackBarButtonItem *)self backgroundImageForState:state barMetrics:metrics], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v13.receiver = self;
    v13.super_class = CNPlatterBackBarButtonItem;
    [(CNPlatterBackBarButtonItem *)&v13 setBackgroundImage:imageCopy forState:state barMetrics:metrics];
  }
}

- (id)backButtonPlatterImageForRTL:(BOOL)l
{
  if (l)
  {
    v3 = @"back-button-platter-rtl";
  }

  else
  {
    v3 = @"back-button-platter-ltr";
  }

  v4 = [MEMORY[0x1E69DCAB8] cnui_imageNamed:v3];

  return v4;
}

- (CNPlatterBackBarButtonItem)initWithTarget:(id)target action:(SEL)action isRTL:(BOOL)l
{
  lCopy = l;
  v8 = MEMORY[0x1E69966E8];
  targetCopy = target;
  currentEnvironment = [v8 currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v12 = [featureFlags isFeatureEnabled:29];

  if (v12)
  {
    v16.receiver = self;
    v16.super_class = CNPlatterBackBarButtonItem;
    v13 = [(CNPlatterBackBarButtonItem *)&v16 initWithBarButtonSystemItem:101 target:targetCopy action:action];
LABEL_5:

    return v13;
  }

  v15.receiver = self;
  v15.super_class = CNPlatterBackBarButtonItem;
  v13 = [(CNPlatterBackBarButtonItem *)&v15 initWithTitle:@" " style:0 target:targetCopy action:action];

  if (v13)
  {
    targetCopy = [(CNPlatterBackBarButtonItem *)v13 backButtonPlatterImageForRTL:lCopy];
    [(CNPlatterBackBarButtonItem *)v13 setBackgroundImage:targetCopy forState:0 barMetrics:0];
    goto LABEL_5;
  }

  return v13;
}

@end