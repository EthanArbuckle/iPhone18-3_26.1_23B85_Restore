@interface ReportLink
- (ReportLink)initWithTitle:(id)a3 icon:(id)a4;
@end

@implementation ReportLink

- (ReportLink)initWithTitle:(id)a3 icon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ReportLink;
  v8 = [(ReportLink *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_icon, a4);
  }

  return v8;
}

@end