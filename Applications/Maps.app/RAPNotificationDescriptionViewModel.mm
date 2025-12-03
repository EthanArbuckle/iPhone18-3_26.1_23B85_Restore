@interface RAPNotificationDescriptionViewModel
- (BOOL)shouldDisplayLink;
- (NSString)descriptionText;
- (NSString)imageName;
- (NSString)titleText;
- (RAPNotificationDescriptionViewModel)initWithRAPNotificationDetailsViewModel:(id)model;
- (UIColor)imageBackgroundColor;
@end

@implementation RAPNotificationDescriptionViewModel

- (BOOL)shouldDisplayLink
{
  linkButtonLink = [(RAPNotificationDescriptionViewModel *)self linkButtonLink];
  if ([linkButtonLink length])
  {
    linkButtonText = [(RAPNotificationDescriptionViewModel *)self linkButtonText];
    v5 = [linkButtonText length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)descriptionText
{
  descriptionInfo = [(RAPNotificationDetailsViewModel *)self->_detailsViewModel descriptionInfo];
  descriptionText = [descriptionInfo descriptionText];

  return descriptionText;
}

- (NSString)titleText
{
  descriptionInfo = [(RAPNotificationDetailsViewModel *)self->_detailsViewModel descriptionInfo];
  titleText = [descriptionInfo titleText];

  return titleText;
}

- (UIColor)imageBackgroundColor
{
  descriptionInfo = [(RAPNotificationDetailsViewModel *)self->_detailsViewModel descriptionInfo];
  imageBackgroundColor = [descriptionInfo imageBackgroundColor];

  return imageBackgroundColor;
}

- (NSString)imageName
{
  descriptionInfo = [(RAPNotificationDetailsViewModel *)self->_detailsViewModel descriptionInfo];
  imageName = [descriptionInfo imageName];

  return imageName;
}

- (RAPNotificationDescriptionViewModel)initWithRAPNotificationDetailsViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = RAPNotificationDescriptionViewModel;
  v6 = [(RAPNotificationDescriptionViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detailsViewModel, model);
  }

  return v7;
}

@end