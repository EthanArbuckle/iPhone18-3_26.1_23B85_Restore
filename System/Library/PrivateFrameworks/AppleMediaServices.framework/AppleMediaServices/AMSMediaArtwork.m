@interface AMSMediaArtwork
+ (NSString)cropStylePlaceholder;
+ (NSString)formatPlaceholder;
+ (NSString)heightPlaceholder;
+ (NSString)qualityPlaceholder;
+ (NSString)widthPlaceholder;
+ (id)urlWithURLTemplate:(id)a3 size:(CGSize)a4 cropStyle:(id)a5 format:(id)a6 quality:(id)a7;
- (AMSMediaArtwork)initWithDictionary:(id)a3;
- (CGColor)colorWithKind:(id)a3;
- (CGSize)artworkSize;
- (double)height;
- (double)width;
- (id)URLString;
- (id)URLWithSize:(CGSize)a3;
- (id)URLWithSize:(CGSize)a3 cropStyle:(id)a4 format:(id)a5;
- (id)URLWithSize:(CGSize)a3 cropStyle:(id)a4 format:(id)a5 quality:(unint64_t)a6;
- (unint64_t)_qualityForFormat:(id)a3;
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

+ (id)urlWithURLTemplate:(id)a3 size:(CGSize)a4 cropStyle:(id)a5 format:(id)a6 quality:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v31 - v15;
  if (a3)
  {
    v17 = sub_192F967CC();
    a3 = v18;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = sub_192F967CC();
  a5 = v20;
  if (a6)
  {
LABEL_4:
    v21 = sub_192F967CC();
    a6 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  v23 = a7;
  if (v23)
  {
    v24 = v23;
    v25 = sub_192F967CC();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  static AMSMediaArtwork.url(URLTemplate:size:cropStyle:format:quality:)(v17, a3, v19, a5, v21, a6, v25, v27, v16, width, height);

  v28 = sub_192F95A8C();
  v29 = 0;
  if (__swift_getEnumTagSinglePayload(v16, 1, v28) != 1)
  {
    v29 = sub_192F9596C();
    (*(*(v28 - 8) + 8))(v16, v28);
  }

  return v29;
}

- (AMSMediaArtwork)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSMediaArtwork;
  v6 = [(AMSMediaArtwork *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_artworkDictionary, a3);
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
  v2 = [(AMSMediaArtwork *)self artworkDictionary];
  v3 = [v2 objectForKeyedSubscript:@"height"];

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
  v2 = [(AMSMediaArtwork *)self artworkDictionary];
  v3 = [v2 objectForKeyedSubscript:@"url"];

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
  v2 = [(AMSMediaArtwork *)self artworkDictionary];
  v3 = [v2 objectForKeyedSubscript:@"width"];

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

- (CGColor)colorWithKind:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSMediaArtwork *)self artworkDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

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

- (id)URLWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(AMSMediaArtwork *)self _qualityForFormat:@"jpg"];

  return [(AMSMediaArtwork *)self URLWithSize:@"bb" cropStyle:@"jpg" format:v6 quality:width, height];
}

- (id)URLWithSize:(CGSize)a3 cropStyle:(id)a4 format:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = a4;
  v11 = [(AMSMediaArtwork *)self URLWithSize:v10 cropStyle:v9 format:[(AMSMediaArtwork *)self _qualityForFormat:v9] quality:width, height];

  return v11;
}

- (id)URLWithSize:(CGSize)a3 cropStyle:(id)a4 format:(id)a5 quality:(unint64_t)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a4;
  v12 = a5;
  v13 = [(AMSMediaArtwork *)self URLString];
  v14 = [v13 mutableCopy];

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
    v19 = 100;
    if (a6 < 0x64)
    {
      v19 = a6;
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v19];
    v21 = [objc_opt_class() urlWithURLTemplate:v14 size:v11 cropStyle:v12 format:v20 quality:{v18, v16}];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)_qualityForFormat:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"heic"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"jpg") & 1) == 0)
  {
    [v3 isEqualToString:@"png"];
  }

  return 70;
}

@end