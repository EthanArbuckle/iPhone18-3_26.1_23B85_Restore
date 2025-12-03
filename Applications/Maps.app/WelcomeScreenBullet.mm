@interface WelcomeScreenBullet
+ (id)landmarksIn3D;
+ (id)multiStopRouting;
+ (id)transitCards;
- (WelcomeScreenBullet)initWithTitle:(id)title body:(id)body imageName:(id)name tintColor:(id)color;
- (WelcomeScreenBullet)initWithTitle:(id)title body:(id)body systemImageName:(id)name tintColor:(id)color;
@end

@implementation WelcomeScreenBullet

- (WelcomeScreenBullet)initWithTitle:(id)title body:(id)body systemImageName:(id)name tintColor:(id)color
{
  titleCopy = title;
  bodyCopy = body;
  nameCopy = name;
  colorCopy = color;
  v22.receiver = self;
  v22.super_class = WelcomeScreenBullet;
  v14 = [(WelcomeScreenBullet *)&v22 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v15;

    v17 = [bodyCopy copy];
    body = v14->_body;
    v14->_body = v17;

    v19 = [UIImage systemImageNamed:nameCopy];
    image = v14->_image;
    v14->_image = v19;

    objc_storeStrong(&v14->_tintColor, color);
  }

  return v14;
}

- (WelcomeScreenBullet)initWithTitle:(id)title body:(id)body imageName:(id)name tintColor:(id)color
{
  titleCopy = title;
  bodyCopy = body;
  nameCopy = name;
  colorCopy = color;
  v22.receiver = self;
  v22.super_class = WelcomeScreenBullet;
  v14 = [(WelcomeScreenBullet *)&v22 init];
  if (v14)
  {
    v15 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v15;

    v17 = [bodyCopy copy];
    body = v14->_body;
    v14->_body = v17;

    v19 = [UIImage imageNamed:nameCopy];
    image = v14->_image;
    v14->_image = v19;

    objc_storeStrong(&v14->_tintColor, color);
  }

  return v14;
}

+ (id)landmarksIn3D
{
  v2 = [WelcomeScreenBullet alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Landmarks" value:@"localized string not found" table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Explore beautifully designed 3D landmarks in Las Vegas value:Seattle table:{Chicago, and more.", @"localized string not found", 0}];
  v7 = +[UIColor systemBlueColor];
  v8 = [(WelcomeScreenBullet *)v2 initWithTitle:v4 body:v6 systemImageName:@"building.columns.fill" tintColor:v7];

  return v8;
}

+ (id)transitCards
{
  v2 = [WelcomeScreenBullet alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Transit Cards" value:@"localized string not found" table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Add transit cards to Wallet value:see low balances table:{and replenish your card without leaving Maps.", @"localized string not found", 0}];
  v7 = +[UIColor systemBlueColor];
  v8 = [(WelcomeScreenBullet *)v2 initWithTitle:v4 body:v6 systemImageName:@"creditcard.fill" tintColor:v7];

  return v8;
}

+ (id)multiStopRouting
{
  v2 = [WelcomeScreenBullet alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Multi-Stop Routing" value:@"localized string not found" table:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Add multiple stops along your driving route." value:@"localized string not found" table:0];
  v7 = +[UIColor systemBlueColor];
  v8 = [(WelcomeScreenBullet *)v2 initWithTitle:v4 body:v6 imageName:@"multipointrouting" tintColor:v7];

  return v8;
}

@end