@interface RAPNotificationDescriptionViewModel
- (BOOL)shouldDisplayLink;
- (NSString)descriptionText;
- (NSString)imageName;
- (NSString)titleText;
- (RAPNotificationDescriptionViewModel)initWithRAPNotificationDetailsViewModel:(id)a3;
- (UIColor)imageBackgroundColor;
@end

@implementation RAPNotificationDescriptionViewModel

- (BOOL)shouldDisplayLink
{
  v3 = [(RAPNotificationDescriptionViewModel *)self linkButtonLink];
  if ([v3 length])
  {
    v4 = [(RAPNotificationDescriptionViewModel *)self linkButtonText];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)descriptionText
{
  v2 = [(RAPNotificationDetailsViewModel *)self->_detailsViewModel descriptionInfo];
  v3 = [v2 descriptionText];

  return v3;
}

- (NSString)titleText
{
  v2 = [(RAPNotificationDetailsViewModel *)self->_detailsViewModel descriptionInfo];
  v3 = [v2 titleText];

  return v3;
}

- (UIColor)imageBackgroundColor
{
  v2 = [(RAPNotificationDetailsViewModel *)self->_detailsViewModel descriptionInfo];
  v3 = [v2 imageBackgroundColor];

  return v3;
}

- (NSString)imageName
{
  v2 = [(RAPNotificationDetailsViewModel *)self->_detailsViewModel descriptionInfo];
  v3 = [v2 imageName];

  return v3;
}

- (RAPNotificationDescriptionViewModel)initWithRAPNotificationDetailsViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RAPNotificationDescriptionViewModel;
  v6 = [(RAPNotificationDescriptionViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detailsViewModel, a3);
  }

  return v7;
}

@end