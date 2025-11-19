@interface BCAlertActionItem
- (BCAlertActionItem)initWithTitle:(id)a3 subTitle:(id)a4 iconName:(id)a5 actionType:(unint64_t)a6 handler:(id)a7;
- (UIImage)icon;
@end

@implementation BCAlertActionItem

- (BCAlertActionItem)initWithTitle:(id)a3 subTitle:(id)a4 iconName:(id)a5 actionType:(unint64_t)a6 handler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = BCAlertActionItem;
  v17 = [(BCAlertActionItem *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, a3);
    objc_storeStrong(&v18->_subTitle, a4);
    objc_storeStrong(&v18->_iconName, a5);
    v18->_actionType = a6;
    v19 = objc_retainBlock(v16);
    handler = v18->_handler;
    v18->_handler = v19;
  }

  return v18;
}

- (UIImage)icon
{
  if (!self->_icon)
  {
    v3 = [(BCAlertActionItem *)self iconName];
    v4 = [v3 length];

    if (v4)
    {
      if ([(BCAlertActionItem *)self actionType]== 6 || [(BCAlertActionItem *)self actionType]== 3 || [(BCAlertActionItem *)self actionType]== 4)
      {
        v5 = [(BCAlertActionItem *)self iconName];
        v6 = [UIImage imageNamed:v5];

        v7 = [v6 imageWithRenderingMode:2];
      }

      else
      {
        v6 = [(BCAlertActionItem *)self iconName];
        v7 = [UIImage imageNamed:v6];
      }

      icon = self->_icon;
      self->_icon = v7;
    }
  }

  v9 = self->_icon;

  return v9;
}

@end