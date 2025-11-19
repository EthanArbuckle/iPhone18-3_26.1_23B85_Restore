@interface CNPlatterBackBarButtonItem
- (CNPlatterBackBarButtonItem)initWithTarget:(id)a3 action:(SEL)a4 isRTL:(BOOL)a5;
- (id)backButtonPlatterImageForRTL:(BOOL)a3;
- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 barMetrics:(int64_t)a5;
@end

@implementation CNPlatterBackBarButtonItem

- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 barMetrics:(int64_t)a5
{
  v8 = a3;
  v9 = [MEMORY[0x1E69966E8] currentEnvironment];
  v10 = [v9 featureFlags];
  v11 = [v10 isFeatureEnabled:29];

  if ((v11 & 1) != 0 || ([(CNPlatterBackBarButtonItem *)self backgroundImageForState:a4 barMetrics:a5], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v13.receiver = self;
    v13.super_class = CNPlatterBackBarButtonItem;
    [(CNPlatterBackBarButtonItem *)&v13 setBackgroundImage:v8 forState:a4 barMetrics:a5];
  }
}

- (id)backButtonPlatterImageForRTL:(BOOL)a3
{
  if (a3)
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

- (CNPlatterBackBarButtonItem)initWithTarget:(id)a3 action:(SEL)a4 isRTL:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E69966E8];
  v9 = a3;
  v10 = [v8 currentEnvironment];
  v11 = [v10 featureFlags];
  v12 = [v11 isFeatureEnabled:29];

  if (v12)
  {
    v16.receiver = self;
    v16.super_class = CNPlatterBackBarButtonItem;
    v13 = [(CNPlatterBackBarButtonItem *)&v16 initWithBarButtonSystemItem:101 target:v9 action:a4];
LABEL_5:

    return v13;
  }

  v15.receiver = self;
  v15.super_class = CNPlatterBackBarButtonItem;
  v13 = [(CNPlatterBackBarButtonItem *)&v15 initWithTitle:@" " style:0 target:v9 action:a4];

  if (v13)
  {
    v9 = [(CNPlatterBackBarButtonItem *)v13 backButtonPlatterImageForRTL:v5];
    [(CNPlatterBackBarButtonItem *)v13 setBackgroundImage:v9 forState:0 barMetrics:0];
    goto LABEL_5;
  }

  return v13;
}

@end