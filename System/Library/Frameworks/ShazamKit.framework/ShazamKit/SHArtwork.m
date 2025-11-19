@interface SHArtwork
+ (BOOL)validateDictionary:(id)a3 error:(id *)a4;
+ (id)urlWithURLTemplate:(id)a3 width:(int64_t)a4 height:(int64_t)a5;
- (CGColor)newColorWithKind:(id)a3;
- (NSString)URLString;
- (SHArtwork)initWithCoder:(id)a3;
- (SHArtwork)initWithDictionary:(id)a3 error:(id *)a4;
- (SHArtwork)initWithURL:(id)a3;
- (id)URLWithWidth:(int64_t)a3 height:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)maximumHeight;
- (int64_t)maximumWidth;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHArtwork

- (SHArtwork)initWithURL:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = [v5 absoluteString];

  v8 = [v7 rangeOfString:@"[0-9]+x[0-9]+" options:1024];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    v11 = v9;
    v12 = [v7 substringWithRange:{v8, v9}];
    v13 = [v12 componentsSeparatedByString:@"x"];

    if ([v13 count] == 2)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = [v13 objectAtIndexedSubscript:0];
      [v15 doubleValue];
      v16 = [v14 numberWithDouble:?];
      [v6 setObject:v16 forKeyedSubscript:@"width"];

      v17 = MEMORY[0x277CCABB0];
      v18 = [v13 objectAtIndexedSubscript:1];
      [v18 doubleValue];
      v19 = [v17 numberWithDouble:?];
      [v6 setObject:v19 forKeyedSubscript:@"height"];

      v20 = [v7 stringByReplacingCharactersInRange:v10 withString:{v11, @"{w}x{h}"}];

      v7 = v20;
    }
  }

  [v6 setObject:v7 forKeyedSubscript:@"url"];
  v23 = 0;
  v21 = [(SHArtwork *)self initWithDictionary:v6 error:&v23];

  return v21;
}

- (SHArtwork)initWithDictionary:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([objc_opt_class() validateDictionary:v7 error:a4])
  {
    v12.receiver = self;
    v12.super_class = SHArtwork;
    v8 = [(SHArtwork *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_artworkDictionary, a3);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)validateDictionary:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"url"];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"width"];
    v8 = [v5 objectForKeyedSubscript:@"height"];
    if (v7 && [v7 integerValue] < 1 || v8 && objc_msgSend(v8, "integerValue") <= 0)
    {
      if (a4)
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CCA050];
        v17 = *MEMORY[0x277CCA068];
        v18 = @"Passing <= 0 maximum size is unsupported, instead do not pass maximum value";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        *a4 = [v12 errorWithDomain:v13 code:3328 userInfo:v14];
      }

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    if (!a4)
    {
      v9 = 0;
      goto LABEL_14;
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA738];
    v19 = *MEMORY[0x277CCA068];
    v20[0] = @"Artwork cannot be constructed without a URL";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v10 errorWithDomain:v11 code:-1000 userInfo:v7];
    *a4 = v9 = 0;
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)maximumWidth
{
  v2 = [(SHArtwork *)self artworkDictionary];
  v3 = [v2 objectForKeyedSubscript:@"width"];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)maximumHeight
{
  v2 = [(SHArtwork *)self artworkDictionary];
  v3 = [v2 objectForKeyedSubscript:@"height"];
  v4 = [v3 integerValue];

  return v4;
}

- (NSString)URLString
{
  v2 = [(SHArtwork *)self artworkDictionary];
  v3 = [v2 objectForKeyedSubscript:@"url"];

  return v3;
}

- (CGColor)newColorWithKind:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SHArtwork *)self artworkDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = strtoul([v6 UTF8String], 0, 16);
    v12 = vcvtq_f64_f32(vdiv_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v7), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL)), vdup_n_s32(0x437F0000u)));
    v13 = (v7 / 255.0);
    v14 = 0x3FF0000000000000;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v9 = CGColorCreate(DeviceRGB, v12.f64);
    if (DeviceRGB)
    {
      CGColorSpaceRelease(DeviceRGB);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)URLWithWidth:(int64_t)a3 height:(int64_t)a4
{
  v7 = [(SHArtwork *)self URLString];
  v8 = [v7 mutableCopy];

  v9 = [(SHArtwork *)self maximumWidth];
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 & ~(v10 >> 63);
  v12 = [(SHArtwork *)self maximumHeight];
  if (v12 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  v14 = [objc_opt_class() urlWithURLTemplate:v8 width:v11 height:v13 & ~(v13 >> 63)];

  return v14;
}

+ (id)urlWithURLTemplate:(id)a3 width:(int64_t)a4 height:(int64_t)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a3;
  v9 = [[v7 alloc] initWithFormat:@"%ld", a4];
  v10 = [v8 stringByReplacingOccurrencesOfString:@"{w}" withString:v9];

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", a5];
  v12 = [v10 stringByReplacingOccurrencesOfString:@"{h}" withString:v11];

  v13 = [v12 stringByReplacingOccurrencesOfString:@"{f}" withString:@"jpg"];

  v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SHArtwork alloc];
  v5 = [(SHArtwork *)self artworkDictionary];
  v6 = [v5 copy];
  v7 = [(SHArtwork *)v4 initWithDictionary:v6 error:0];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SHArtwork *)self artworkDictionary];
  [v4 encodeObject:v5 forKey:@"artworkDictionary"];
}

- (SHArtwork)initWithCoder:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:3];
  v7 = [v4 setWithArray:{v6, v12, v13}];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"artworkDictionary"];

  v9 = [(SHArtwork *)self initWithDictionary:v8 error:0];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end