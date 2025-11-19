@interface CorePlatformClockKitTextProvider
- (BOOL)isEqual:(id)a3;
- (CorePlatformClockKitTextProvider)initWithProvider:(id)a3;
- (id)attributedTextAndSize:(CGSize *)a3 forMaxWidth:(double)a4 font:(__CTFont *)a5 smallFont:(__CTFont *)a6 upperCase:(BOOL)a7 luminanceReduced:(BOOL)a8 now:(id)a9;
- (int64_t)updateFrequency;
@end

@implementation CorePlatformClockKitTextProvider

- (CorePlatformClockKitTextProvider)initWithProvider:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_provider, a3);
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    provider = self->_provider;
    v6 = [v4 provider];
    v7 = [(SwiftUI_CLKTextProvider *)provider isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)updateFrequency
{
  v2 = [(CorePlatformClockKitTextProvider *)self provider];
  v3 = [v2 updateFrequency];

  return v3;
}

- (id)attributedTextAndSize:(CGSize *)a3 forMaxWidth:(double)a4 font:(__CTFont *)a5 smallFont:(__CTFont *)a6 upperCase:(BOOL)a7 luminanceReduced:(BOOL)a8 now:(id)a9
{
  v9 = a8;
  v10 = a7;
  v16 = MEMORY[0x1E69E58C0];
  v17 = a9;
  v18 = [v16 _clockKitProvider_StyleWithFont:a5 smallFont:a6 uppercase:v10 luminanceReduced:v9];
  v19 = [(CorePlatformClockKitTextProvider *)self provider];
  v20 = [v19 attributedTextAndSize:a3 forMaxWidth:v18 withStyle:v17 now:a4];

  return v20;
}

@end