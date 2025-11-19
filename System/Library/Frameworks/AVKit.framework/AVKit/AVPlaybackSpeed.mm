@interface AVPlaybackSpeed
+ (NSArray)systemDefaultSpeeds;
+ (id)_rateFormattedAsString:(float)a3 locale:(id)a4;
- (AVPlaybackSpeed)initWithRate:(float)a3 localizedName:(id)a4 synthesized:(BOOL)a5;
- (id)description;
- (id)internalDescription;
@end

@implementation AVPlaybackSpeed

- (id)description
{
  v6.receiver = self;
  v6.super_class = AVPlaybackSpeed;
  v3 = [(AVPlaybackSpeed *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" [%f, %@, %@]", self->_rate, self->_localizedNumericName, self->_localizedName];

  return v4;
}

- (id)internalDescription
{
  v3 = [(AVPlaybackSpeed *)self isSynthesized];
  v4 = @"selectable";
  if (v3)
  {
    v4 = @"not selectable";
  }

  v9.receiver = self;
  v9.super_class = AVPlaybackSpeed;
  v5 = v4;
  v6 = [(AVPlaybackSpeed *)&v9 description];
  v7 = [v6 stringByAppendingFormat:@" [%f, %@, %@, %@]", self->_rate, v5, self->_localizedNumericName, self->_localizedName, v9.receiver, v9.super_class];

  return v7;
}

- (AVPlaybackSpeed)initWithRate:(float)a3 localizedName:(id)a4 synthesized:(BOOL)a5
{
  v8 = a4;
  v22.receiver = self;
  v22.super_class = AVPlaybackSpeed;
  v9 = [(AVPlaybackSpeed *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v9->_rate = a3;
    v11 = [v8 copy];
    localizedName = v10->_localizedName;
    v10->_localizedName = v11;

    v13 = objc_opt_self();
    v14 = MEMORY[0x1E696AEC0];
    v15 = AVLocalizedString(@"%@\\U00D7");
    v16 = [MEMORY[0x1E695DF58] currentLocale];
    *&v17 = a3;
    v18 = [v13 _rateFormattedAsString:v16 locale:v17];
    v19 = [v14 stringWithFormat:v15, v18];

    localizedNumericName = v10->_localizedNumericName;
    v10->_localizedNumericName = v19;

    v10->_synthesized = a5;
  }

  return v10;
}

+ (id)_rateFormattedAsString:(float)a3 locale:(id)a4
{
  v5 = a4;
  v6 = a3;
  if (v6 <= 0.01)
  {
    v9 = @"0.01";
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v8 = v7;
    if (v5)
    {
      [v7 setLocale:v5];
    }

    else
    {
      v10 = [MEMORY[0x1E695DF58] currentLocale];
      [v8 setLocale:v10];
    }

    [v8 setNumberStyle:1];
    [v8 setMaximumFractionDigits:2];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:fabs(v6)];
    v9 = [v8 stringFromNumber:v11];
  }

  return v9;
}

+ (NSArray)systemDefaultSpeeds
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AVPlaybackSpeed_systemDefaultSpeeds__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (systemDefaultSpeeds_createSystemDefaultSpeedsOnce != -1)
  {
    dispatch_once(&systemDefaultSpeeds_createSystemDefaultSpeedsOnce, block);
  }

  v2 = AVPlaybackSpeedSystemDefaultSpeeds;

  return v2;
}

void __38__AVPlaybackSpeed_systemDefaultSpeeds__block_invoke(uint64_t a1)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(*(a1 + 32));
  v3 = AVLocalizedString(@"Double Speed");
  LODWORD(v4) = 2.0;
  v5 = [v2 initWithRate:v3 localizedName:v4];
  v24[0] = v5;
  v6 = objc_alloc(*(a1 + 32));
  v7 = AVLocalizedString(@"Faster Speed");
  LODWORD(v8) = 1.5;
  v9 = [v6 initWithRate:v7 localizedName:{v8, v5}];
  v24[1] = v9;
  v10 = objc_alloc(*(a1 + 32));
  v11 = AVLocalizedString(@"Fast Speed");
  LODWORD(v12) = 1.25;
  v13 = [v10 initWithRate:v11 localizedName:v12];
  v24[2] = v13;
  v14 = objc_alloc(*(a1 + 32));
  v15 = AVLocalizedString(@"Normal Speed");
  LODWORD(v16) = 1.0;
  v17 = [v14 initWithRate:v15 localizedName:v16];
  v24[3] = v17;
  v18 = objc_alloc(*(a1 + 32));
  v19 = AVLocalizedString(@"Half Speed");
  LODWORD(v20) = 0.5;
  v21 = [v18 initWithRate:v19 localizedName:v20];
  v24[4] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
  v23 = AVPlaybackSpeedSystemDefaultSpeeds;
  AVPlaybackSpeedSystemDefaultSpeeds = v22;
}

@end