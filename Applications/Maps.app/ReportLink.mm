@interface ReportLink
- (ReportLink)initWithTitle:(id)title icon:(id)icon;
@end

@implementation ReportLink

- (ReportLink)initWithTitle:(id)title icon:(id)icon
{
  titleCopy = title;
  iconCopy = icon;
  v12.receiver = self;
  v12.super_class = ReportLink;
  v8 = [(ReportLink *)&v12 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_icon, icon);
  }

  return v8;
}

@end