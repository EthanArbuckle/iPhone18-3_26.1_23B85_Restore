@interface PHSOSNumberViewModel
- (PHSOSNumberViewModel)initWithSOSHandle:(id)handle;
- (id)sosSubtitle;
- (id)sosTitle;
@end

@implementation PHSOSNumberViewModel

- (PHSOSNumberViewModel)initWithSOSHandle:(id)handle
{
  handleCopy = handle;
  v8.receiver = self;
  v8.super_class = PHSOSNumberViewModel;
  v5 = [(PHSOSNumberViewModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PHSOSNumberViewModel *)v5 setSosHandle:handleCopy];
  }

  return v6;
}

- (id)sosTitle
{
  v3 = +[NSBundle mainBundle];
  sosHandle = [(PHSOSNumberViewModel *)self sosHandle];
  label = [sosHandle label];
  v6 = [v3 localizedStringForKey:label value:&stru_100361FD0 table:@"InCallService"];

  return v6;
}

- (id)sosSubtitle
{
  sosHandle = [(PHSOSNumberViewModel *)self sosHandle];
  handle = [sosHandle handle];
  value = [handle value];

  return value;
}

@end