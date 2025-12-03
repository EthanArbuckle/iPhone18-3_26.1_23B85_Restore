@interface SHArtwork
+ (BOOL)validateDictionary:(id)dictionary error:(id *)error;
+ (id)urlWithURLTemplate:(id)template width:(int64_t)width height:(int64_t)height;
- (CGColor)newColorWithKind:(id)kind;
- (NSString)URLString;
- (SHArtwork)initWithCoder:(id)coder;
- (SHArtwork)initWithDictionary:(id)dictionary error:(id *)error;
- (SHArtwork)initWithURL:(id)l;
- (id)URLWithWidth:(int64_t)width height:(int64_t)height;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)maximumHeight;
- (int64_t)maximumWidth;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHArtwork

- (SHArtwork)initWithURL:(id)l
{
  v4 = MEMORY[0x277CBEB38];
  lCopy = l;
  dictionary = [v4 dictionary];
  absoluteString = [lCopy absoluteString];

  v8 = [absoluteString rangeOfString:@"[0-9]+x[0-9]+" options:1024];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    v11 = v9;
    v12 = [absoluteString substringWithRange:{v8, v9}];
    v13 = [v12 componentsSeparatedByString:@"x"];

    if ([v13 count] == 2)
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = [v13 objectAtIndexedSubscript:0];
      [v15 doubleValue];
      v16 = [v14 numberWithDouble:?];
      [dictionary setObject:v16 forKeyedSubscript:@"width"];

      v17 = MEMORY[0x277CCABB0];
      v18 = [v13 objectAtIndexedSubscript:1];
      [v18 doubleValue];
      v19 = [v17 numberWithDouble:?];
      [dictionary setObject:v19 forKeyedSubscript:@"height"];

      v20 = [absoluteString stringByReplacingCharactersInRange:v10 withString:{v11, @"{w}x{h}"}];

      absoluteString = v20;
    }
  }

  [dictionary setObject:absoluteString forKeyedSubscript:@"url"];
  v23 = 0;
  v21 = [(SHArtwork *)self initWithDictionary:dictionary error:&v23];

  return v21;
}

- (SHArtwork)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([objc_opt_class() validateDictionary:dictionaryCopy error:error])
  {
    v12.receiver = self;
    v12.super_class = SHArtwork;
    v8 = [(SHArtwork *)&v12 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_artworkDictionary, dictionary);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)validateDictionary:(id)dictionary error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"url"];

  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"width"];
    v8 = [dictionaryCopy objectForKeyedSubscript:@"height"];
    if (v7 && [v7 integerValue] < 1 || v8 && objc_msgSend(v8, "integerValue") <= 0)
    {
      if (error)
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CCA050];
        v17 = *MEMORY[0x277CCA068];
        v18 = @"Passing <= 0 maximum size is unsupported, instead do not pass maximum value";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        *error = [v12 errorWithDomain:v13 code:3328 userInfo:v14];
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
    if (!error)
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
    *error = v9 = 0;
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)maximumWidth
{
  artworkDictionary = [(SHArtwork *)self artworkDictionary];
  v3 = [artworkDictionary objectForKeyedSubscript:@"width"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)maximumHeight
{
  artworkDictionary = [(SHArtwork *)self artworkDictionary];
  v3 = [artworkDictionary objectForKeyedSubscript:@"height"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSString)URLString
{
  artworkDictionary = [(SHArtwork *)self artworkDictionary];
  v3 = [artworkDictionary objectForKeyedSubscript:@"url"];

  return v3;
}

- (CGColor)newColorWithKind:(id)kind
{
  v15 = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  artworkDictionary = [(SHArtwork *)self artworkDictionary];
  v6 = [artworkDictionary objectForKeyedSubscript:kindCopy];

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

- (id)URLWithWidth:(int64_t)width height:(int64_t)height
{
  uRLString = [(SHArtwork *)self URLString];
  v8 = [uRLString mutableCopy];

  maximumWidth = [(SHArtwork *)self maximumWidth];
  if (maximumWidth >= width)
  {
    widthCopy = width;
  }

  else
  {
    widthCopy = maximumWidth;
  }

  v11 = widthCopy & ~(widthCopy >> 63);
  maximumHeight = [(SHArtwork *)self maximumHeight];
  if (maximumHeight >= height)
  {
    heightCopy = height;
  }

  else
  {
    heightCopy = maximumHeight;
  }

  v14 = [objc_opt_class() urlWithURLTemplate:v8 width:v11 height:heightCopy & ~(heightCopy >> 63)];

  return v14;
}

+ (id)urlWithURLTemplate:(id)template width:(int64_t)width height:(int64_t)height
{
  v7 = MEMORY[0x277CCACA8];
  templateCopy = template;
  width = [[v7 alloc] initWithFormat:@"%ld", width];
  v10 = [templateCopy stringByReplacingOccurrencesOfString:@"{w}" withString:width];

  height = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", height];
  v12 = [v10 stringByReplacingOccurrencesOfString:@"{h}" withString:height];

  v13 = [v12 stringByReplacingOccurrencesOfString:@"{f}" withString:@"jpg"];

  v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SHArtwork alloc];
  artworkDictionary = [(SHArtwork *)self artworkDictionary];
  v6 = [artworkDictionary copy];
  v7 = [(SHArtwork *)v4 initWithDictionary:v6 error:0];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  artworkDictionary = [(SHArtwork *)self artworkDictionary];
  [coderCopy encodeObject:artworkDictionary forKey:@"artworkDictionary"];
}

- (SHArtwork)initWithCoder:(id)coder
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:3];
  v7 = [v4 setWithArray:{v6, v12, v13}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"artworkDictionary"];

  v9 = [(SHArtwork *)self initWithDictionary:v8 error:0];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end