@interface SFLocaleAlternative
- (SFLocaleAlternative)initWithLocale:(id)locale confidence:(double)confidence;
@end

@implementation SFLocaleAlternative

- (SFLocaleAlternative)initWithLocale:(id)locale confidence:(double)confidence
{
  localeCopy = locale;
  v11.receiver = self;
  v11.super_class = SFLocaleAlternative;
  v8 = [(SFLocaleAlternative *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locale, locale);
    v9->_confidence = confidence;
  }

  return v9;
}

@end