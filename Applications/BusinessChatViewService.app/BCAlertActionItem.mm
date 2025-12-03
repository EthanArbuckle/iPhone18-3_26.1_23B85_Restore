@interface BCAlertActionItem
- (BCAlertActionItem)initWithTitle:(id)title subTitle:(id)subTitle iconName:(id)name actionType:(unint64_t)type handler:(id)handler;
- (UIImage)icon;
@end

@implementation BCAlertActionItem

- (BCAlertActionItem)initWithTitle:(id)title subTitle:(id)subTitle iconName:(id)name actionType:(unint64_t)type handler:(id)handler
{
  titleCopy = title;
  subTitleCopy = subTitle;
  nameCopy = name;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = BCAlertActionItem;
  v17 = [(BCAlertActionItem *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v18->_subTitle, subTitle);
    objc_storeStrong(&v18->_iconName, name);
    v18->_actionType = type;
    v19 = objc_retainBlock(handlerCopy);
    handler = v18->_handler;
    v18->_handler = v19;
  }

  return v18;
}

- (UIImage)icon
{
  if (!self->_icon)
  {
    iconName = [(BCAlertActionItem *)self iconName];
    v4 = [iconName length];

    if (v4)
    {
      if ([(BCAlertActionItem *)self actionType]== 6 || [(BCAlertActionItem *)self actionType]== 3 || [(BCAlertActionItem *)self actionType]== 4)
      {
        iconName2 = [(BCAlertActionItem *)self iconName];
        iconName3 = [UIImage imageNamed:iconName2];

        v7 = [iconName3 imageWithRenderingMode:2];
      }

      else
      {
        iconName3 = [(BCAlertActionItem *)self iconName];
        v7 = [UIImage imageNamed:iconName3];
      }

      icon = self->_icon;
      self->_icon = v7;
    }
  }

  v9 = self->_icon;

  return v9;
}

@end