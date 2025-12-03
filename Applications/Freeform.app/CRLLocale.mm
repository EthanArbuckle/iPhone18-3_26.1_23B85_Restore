@interface CRLLocale
+ (CRLLocale)currentLocale;
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6)
  {
    locale = [(CRLLocale *)self locale];
    locale2 = [v6 locale];
    v9 = [locale isEqual:locale2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end