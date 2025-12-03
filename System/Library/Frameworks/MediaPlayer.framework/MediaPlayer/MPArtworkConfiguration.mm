@interface MPArtworkConfiguration
+ (id)systemConfiguration;
- (MPArtworkConfiguration)initWithConfigurationDictionaries:(id)dictionaries;
- (id)description;
- (id)sizesToAutogenerateForMediaType:(unint64_t)type artworkType:(int64_t)artworkType artworkVariantType:(int64_t)variantType;
- (id)supportedSizesForMediaType:(unint64_t)type artworkType:(int64_t)artworkType artworkVariantType:(int64_t)variantType;
@end

@implementation MPArtworkConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  artworkConfiguration = [(MPArtworkConfiguration *)self artworkConfiguration];
  v6 = [v3 stringWithFormat:@"<%@ %p %@>\n", v4, self, artworkConfiguration];

  return v6;
}

- (id)sizesToAutogenerateForMediaType:(unint64_t)type artworkType:(int64_t)artworkType artworkVariantType:(int64_t)variantType
{
  if (type == 0xFF)
  {
    v7 = 255;
  }

  else
  {
    v7 = 0;
  }

  if ((~type & 0xFF00) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 | 0xFF00;
  }

  v9 = vandq_s8(vshlq_u32(vdupq_n_s32(type), xmmword_1A273DDC0), xmmword_1A273DDD0);
  *v9.i8 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v10 = v9.i32[0] | type & 0x3210 | v9.i32[1];
  v11 = (type >> 1) & 2 | (type >> 2) & 0x100 | (type >> 1) & 0x400 | v8;
  artworkConfiguration = [(MPArtworkConfiguration *)self artworkConfiguration];
  v13 = [artworkConfiguration sizesToAutogenerateForMediaType:v10 | v11 artworkType:artworkType artworkVariantType:variantType];

  return v13;
}

- (id)supportedSizesForMediaType:(unint64_t)type artworkType:(int64_t)artworkType artworkVariantType:(int64_t)variantType
{
  if (type == 0xFF)
  {
    v7 = 255;
  }

  else
  {
    v7 = 0;
  }

  if ((~type & 0xFF00) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 | 0xFF00;
  }

  v9 = vandq_s8(vshlq_u32(vdupq_n_s32(type), xmmword_1A273DDC0), xmmword_1A273DDD0);
  *v9.i8 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v10 = v9.i32[0] | type & 0x3210 | v9.i32[1];
  v11 = (type >> 1) & 2 | (type >> 2) & 0x100 | (type >> 1) & 0x400 | v8;
  artworkConfiguration = [(MPArtworkConfiguration *)self artworkConfiguration];
  v13 = [artworkConfiguration supportedSizesForMediaType:v10 | v11 artworkType:artworkType artworkVariantType:variantType];

  return v13;
}

- (MPArtworkConfiguration)initWithConfigurationDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v8.receiver = self;
  v8.super_class = MPArtworkConfiguration;
  v5 = [(MPArtworkConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3450]) initWithConfigurationDictionaries:dictionariesCopy];
    [(MPArtworkConfiguration *)v5 setArtworkConfiguration:v6];
  }

  return v5;
}

+ (id)systemConfiguration
{
  if (systemConfiguration_onceToken != -1)
  {
    dispatch_once(&systemConfiguration_onceToken, &__block_literal_global_2165);
  }

  v3 = systemConfiguration___systemConfiguration;

  return v3;
}

void __45__MPArtworkConfiguration_systemConfiguration__block_invoke()
{
  v0 = objc_alloc_init(MPArtworkConfiguration);
  v1 = systemConfiguration___systemConfiguration;
  systemConfiguration___systemConfiguration = v0;

  v2 = [MEMORY[0x1E69B3450] systemConfiguration];
  [systemConfiguration___systemConfiguration setArtworkConfiguration:v2];
}

@end