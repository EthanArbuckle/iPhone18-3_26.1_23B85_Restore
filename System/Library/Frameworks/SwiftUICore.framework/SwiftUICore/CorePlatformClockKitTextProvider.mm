@interface CorePlatformClockKitTextProvider
- (BOOL)isEqual:(id)equal;
- (CorePlatformClockKitTextProvider)initWithProvider:(id)provider;
- (id)attributedTextAndSize:(CGSize *)size forMaxWidth:(double)width font:(__CTFont *)font smallFont:(__CTFont *)smallFont upperCase:(BOOL)case luminanceReduced:(BOOL)reduced now:(id)now;
- (int64_t)updateFrequency;
@end

@implementation CorePlatformClockKitTextProvider

- (CorePlatformClockKitTextProvider)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CorePlatformClockKitTextProvider;
  v6 = [(CorePlatformClockKitTextProvider *)&v9 init];
  if (v6)
  {
    if (!NSClassFromString(&cfstr_Clktextprovide.isa) || (objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(&v6->_provider, provider);
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    provider = self->_provider;
    provider = [equalCopy provider];
    v7 = [(SwiftUI_CLKTextProvider *)provider isEqual:provider];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)updateFrequency
{
  provider = [(CorePlatformClockKitTextProvider *)self provider];
  updateFrequency = [provider updateFrequency];

  return updateFrequency;
}

- (id)attributedTextAndSize:(CGSize *)size forMaxWidth:(double)width font:(__CTFont *)font smallFont:(__CTFont *)smallFont upperCase:(BOOL)case luminanceReduced:(BOOL)reduced now:(id)now
{
  reducedCopy = reduced;
  caseCopy = case;
  v16 = MEMORY[0x1E69E58C0];
  nowCopy = now;
  v18 = [v16 _clockKitProvider_StyleWithFont:font smallFont:smallFont uppercase:caseCopy luminanceReduced:reducedCopy];
  provider = [(CorePlatformClockKitTextProvider *)self provider];
  v20 = [provider attributedTextAndSize:size forMaxWidth:v18 withStyle:nowCopy now:width];

  return v20;
}

@end