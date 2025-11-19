@interface TPSTextActivityItemSource
- (TPSTextActivityItemSource)initWithTip:(id)a3;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation TPSTextActivityItemSource

- (TPSTextActivityItemSource)initWithTip:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSTextActivityItemSource;
  v6 = [(TPSTextActivityItemSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tip, a3);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v4 = [(TPSTip *)self->_tip summary];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(TPSTip *)self->_tip bodyText];
  }

  v7 = v6;

  return v7;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  v10[0] = UIActivityTypeAirDrop;
  v10[1] = UIActivityTypePostToFacebook;
  v10[2] = UIActivityTypeMail;
  v6 = [NSArray arrayWithObjects:v10 count:3];
  if ([v5 isEqualToString:UIActivityTypeSaveToNotes])
  {
    v7 = [(TPSTip *)self->_tip title];
  }

  else
  {
    if ([v6 containsObject:v5])
    {
      v8 = &stru_1000A4A50;
      goto LABEL_7;
    }

    v7 = [(TPSTip *)self->_tip shareText];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v5 = a4;
  if (([v5 isEqualToString:UIActivityTypeMail] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", UIActivityTypeCreateReminder))
  {
    v6 = [(TPSTip *)self->_tip shareText];
  }

  else
  {
    v6 = &stru_1000A4A50;
  }

  return v6;
}

@end