@interface CRLLocale
+ (CRLLocale)currentLocale;
- (BOOL)isEqual:(id)a3;
- (CRLLocale)init;
@end

@implementation CRLLocale

+ (CRLLocale)currentLocale
{
  v2 = objc_alloc_init(CRLLocale);

  return v2;
}

- (CRLLocale)init
{
  v6.receiver = self;
  v6.super_class = CRLLocale;
  v2 = [(CRLLocale *)&v6 init];
  if (v2)
  {
    v3 = +[NSLocale currentLocale];
    locale = v2->_locale;
    v2->_locale = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6)
  {
    v7 = [(CRLLocale *)self locale];
    v8 = [v6 locale];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end