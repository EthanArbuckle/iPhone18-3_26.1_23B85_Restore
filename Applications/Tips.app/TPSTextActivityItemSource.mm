@interface TPSTextActivityItemSource
- (TPSTextActivityItemSource)initWithTip:(id)tip;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
@end

@implementation TPSTextActivityItemSource

- (TPSTextActivityItemSource)initWithTip:(id)tip
{
  tipCopy = tip;
  v9.receiver = self;
  v9.super_class = TPSTextActivityItemSource;
  v6 = [(TPSTextActivityItemSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tip, tip);
  }

  return v7;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  summary = [(TPSTip *)self->_tip summary];
  v5 = summary;
  if (summary)
  {
    bodyText = summary;
  }

  else
  {
    bodyText = [(TPSTip *)self->_tip bodyText];
  }

  v7 = bodyText;

  return v7;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  v10[0] = UIActivityTypeAirDrop;
  v10[1] = UIActivityTypePostToFacebook;
  v10[2] = UIActivityTypeMail;
  v6 = [NSArray arrayWithObjects:v10 count:3];
  if ([typeCopy isEqualToString:UIActivityTypeSaveToNotes])
  {
    title = [(TPSTip *)self->_tip title];
  }

  else
  {
    if ([v6 containsObject:typeCopy])
    {
      v8 = &stru_1000A4A50;
      goto LABEL_7;
    }

    title = [(TPSTip *)self->_tip shareText];
  }

  v8 = title;
LABEL_7:

  return v8;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:UIActivityTypeMail] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", UIActivityTypeCreateReminder))
  {
    shareText = [(TPSTip *)self->_tip shareText];
  }

  else
  {
    shareText = &stru_1000A4A50;
  }

  return shareText;
}

@end