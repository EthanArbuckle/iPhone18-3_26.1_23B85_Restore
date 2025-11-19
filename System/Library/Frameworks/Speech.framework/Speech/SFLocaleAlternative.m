@interface SFLocaleAlternative
- (SFLocaleAlternative)initWithLocale:(id)a3 confidence:(double)a4;
@end

@implementation SFLocaleAlternative

- (SFLocaleAlternative)initWithLocale:(id)a3 confidence:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SFLocaleAlternative;
  v8 = [(SFLocaleAlternative *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, a3);
    v9->_confidence = a4;
  }

  return v9;
}

@end