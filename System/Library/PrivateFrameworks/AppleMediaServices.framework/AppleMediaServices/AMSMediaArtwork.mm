@interface AMSMediaArtwork
+ (NSString)cropStylePlaceholder;
+ (NSString)formatPlaceholder;
+ (NSString)heightPlaceholder;
+ (NSString)qualityPlaceholder;
+ (NSString)widthPlaceholder;
+ (id)urlWithURLTemplate:(id)template size:(CGSize)size cropStyle:(id)style format:(id)format quality:(id)quality;
- (AMSMediaArtwork)initWithDictionary:(id)dictionary;
- (CGColor)colorWithKind:(id)kind;
- (CGSize)artworkSize;
- (double)height;
- (double)width;
- (id)URLString;
- (id)URLWithSize:(CGSize)size;
- (id)URLWithSize:(CGSize)size cropStyle:(id)style format:(id)format;
- (id)URLWithSize:(CGSize)size cropStyle:(id)style format:(id)format quality:(unint64_t)quality;
- (unint64_t)_qualityForFormat:(id)format;
@end

@implementation AMSMediaArtwork

+ (NSString)cropStylePlaceholder
{
  v2 = sub_192F9679C();

  return v2;
}

+ (NSString)formatPlaceholder
{
  v2 = sub_192F9679C();

  return v2;
}

+ (NSString)heightPlaceholder
{
  v2 = sub_192F9679C();

  return v2;
}

+ (NSString)qualityPlaceholder
{
  v2 = sub_192F9679C();

  return v2;
}

+ (NSString)widthPlaceholder
{
  v2 = sub_192F9679C();

  return v2;
}

+ (id)urlWithURLTemplate:(id)template size:(CGSize)size cropStyle:(id)style format:(id)format quality:(id)quality
{
  height = size.height;
  width = size.width;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v31 - v15;
  if (template)
  {
    v17 = sub_192F967CC();
    template = v18;
    if (style)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    if (format)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = 0;
  if (!style)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = sub_192F967CC();
  style = v20;
  if (format)
  {
LABEL_4:
    v21 = sub_192F967CC();
    format = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  qualityCopy = quality;
  if (qualityCopy)
  {
    v24 = qualityCopy;
    v25 = sub_192F967CC();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)(v17, template, v19, style, v21, format, v25, v27, v16, width, height);

  v28 = sub_192F95A8C();
  v29 = 0;
  if (__swift_getEnumTagSinglePayload(v16, 1, v28) != 1)
  {
    v29 = sub_192F9596C();
    (*(*(v28 - 8) + 8))(v16, v28);
  }

  return v29;
}

- (AMSMediaArtwork)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AMSMediaArtwork;
  v6 = [(AMSMediaArtwork *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_artworkDictionary, dictionary);
  }

  return v7;
}

- (CGSize)artworkSize
{
  [(AMSMediaArtwork *)self width];
  v4 = v3;
  [(AMSMediaArtwork *)self height];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (double)height
{
  artworkDictionary = [(AMSMediaArtwork *)self artworkDictionary];
  v3 = [artworkDictionary objectForKeyedSubscript:@"height"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (id)URLString
{
  artworkDictionary = [(AMSMediaArtwork *)self artworkDictionary];
  v3 = [artworkDictionary objectForKeyedSubscript:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)width
{
  artworkDictionary = [(AMSMediaArtwork *)self artworkDictionary];
  v3 = [artworkDictionary objectForKeyedSubscript:@"width"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (CGColor)colorWithKind:(id)kind
{
  v15 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  artworkDictionary = [(AMSMediaArtwork *)self artworkDictionary];
  v6 = [artworkDictionary objectForKeyedSubscript:kindCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
    goto LABEL_6;
  }

  v7 = v6;

  if (!v7)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v8 = strtoul([v7 UTF8String], 0, 16);
  v12 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v8), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), vdup_n_s32(0x437F0000u)));
  v13 = (v8 / 255.0);
  v14 = 0x3FF0000000000000;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v10 = CGColorCreate(DeviceRGB, v12.f64);
  if (DeviceRGB)
  {
    CGColorSpaceRelease(DeviceRGB);
  }

LABEL_7:

  return v10;
}

- (id)URLWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [(AMSMediaArtwork *)self _qualityForFormat:@"jpg"];

  return [(AMSMediaArtwork *)self URLWithSize:@"bb" cropStyle:@"jpg" format:v6 quality:width, height];
}

- (id)URLWithSize:(CGSize)size cropStyle:(id)style format:(id)format
{
  height = size.height;
  width = size.width;
  formatCopy = format;
  styleCopy = style;
  height = [(AMSMediaArtwork *)self URLWithSize:styleCopy cropStyle:formatCopy format:[(AMSMediaArtwork *)self _qualityForFormat:formatCopy] quality:width, height];

  return height;
}

- (id)URLWithSize:(CGSize)size cropStyle:(id)style format:(id)format quality:(unint64_t)quality
{
  height = size.height;
  width = size.width;
  styleCopy = style;
  formatCopy = format;
  uRLString = [(AMSMediaArtwork *)self URLString];
  v14 = [uRLString mutableCopy];

  if (v14)
  {
    [(AMSMediaArtwork *)self height];
    if (height < v15)
    {
      v15 = height;
    }

    v16 = fmax(v15, 0.0);
    [(AMSMediaArtwork *)self width];
    if (width < v17)
    {
      v17 = width;
    }

    v18 = fmax(v17, 0.0);
    qualityCopy = 100;
    if (quality < 0x64)
    {
      qualityCopy = quality;
    }

    qualityCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", qualityCopy];
    v21 = [objc_opt_class() urlWithURLTemplate:v14 size:styleCopy cropStyle:formatCopy format:qualityCopy quality:{v18, v16}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)_qualityForFormat:(id)format
{
  formatCopy = format;
  if (([formatCopy isEqualToString:@"heic"] & 1) == 0 && (objc_msgSend(formatCopy, "isEqualToString:", @"jpg") & 1) == 0)
  {
    [formatCopy isEqualToString:@"png"];
  }

  return 70;
}

@end