@interface PHSOSNumberViewModel
- (PHSOSNumberViewModel)initWithSOSHandle:(id)a3;
- (id)sosSubtitle;
- (id)sosTitle;
@end

@implementation PHSOSNumberViewModel

- (PHSOSNumberViewModel)initWithSOSHandle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PHSOSNumberViewModel;
  v5 = [(PHSOSNumberViewModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PHSOSNumberViewModel *)v5 setSosHandle:v4];
  }

  return v6;
}

- (id)sosTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [(PHSOSNumberViewModel *)self sosHandle];
  v5 = [v4 label];
  v6 = [v3 localizedStringForKey:v5 value:&stru_100361FD0 table:@"InCallService"];

  return v6;
}

- (id)sosSubtitle
{
  v2 = [(PHSOSNumberViewModel *)self sosHandle];
  v3 = [v2 handle];
  v4 = [v3 value];

  return v4;
}

@end