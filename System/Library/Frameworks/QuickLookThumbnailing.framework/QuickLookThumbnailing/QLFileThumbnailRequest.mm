@interface QLFileThumbnailRequest
- (BOOL)thirdPartyVideoDecodersAllowed;
- (BOOL)wantsLowQuality;
- (CGSize)maximumSize;
- (CGSize)minimumSize;
- (NSURL)fileURL;
- (QLFileThumbnailRequest)initWithCoder:(id)a3;
- (QLFileThumbnailRequest)initWithItem:(id)a3 maximumSize:(CGSize)a4 minimumSize:(double)a5 scale:(double)a6 options:(id)a7 generationData:(id)a8;
- (id)contentType;
- (id)description;
- (int)iconFlavor;
- (int)interpolationQuality;
- (unint64_t)badgeType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLFileThumbnailRequest

- (QLFileThumbnailRequest)initWithItem:(id)a3 maximumSize:(CGSize)a4 minimumSize:(double)a5 scale:(double)a6 options:(id)a7 generationData:(id)a8
{
  height = a4.height;
  width = a4.width;
  v16 = a3;
  v17 = a7;
  v18 = a8;
  v23.receiver = self;
  v23.super_class = QLFileThumbnailRequest;
  v19 = [(QLFileThumbnailRequest *)&v23 init];
  v20 = v19;
  if (v19)
  {
    v19->_maximumSize.width = width;
    v19->_maximumSize.height = height;
    v19->_minimumSize.width = a5;
    v19->_minimumSize.height = a5;
    v19->_scale = a6;
    objc_storeStrong(&v19->_item, a3);
    objc_storeStrong(&v20->_generationData, a8);
    objc_storeStrong(&v20->_options, a7);
    v21 = v20;
  }

  return v20;
}

- (NSURL)fileURL
{
  v2 = [(QLFileThumbnailRequest *)self item];
  v3 = [v2 fileURL];

  return v3;
}

- (id)contentType
{
  v2 = [(QLFileThumbnailRequest *)self item];
  v3 = [v2 contentType];
  v4 = [v3 identifier];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  maximumSize = self->_maximumSize;
  return [v3 stringWithFormat:@"<%@:%p maximumSize=(%.2f, %.2f) minimumSize=(%.2f, %.2f) scale=%.1f item=%@>", v4, self, *&self->_maximumSize.width, *&self->_maximumSize.height, *&self->_minimumSize.width, *&self->_minimumSize.height, *&self->_scale, self->_item];
}

- (unint64_t)badgeType
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"BadgeType"];
  v3 = [v2 intValue];

  return v3;
}

- (int)iconFlavor
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"IconFlavor"];
  v3 = [v2 intValue];

  return v3;
}

- (int)interpolationQuality
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"InterpolationQuality"];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)wantsLowQuality
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"WantsLowQuality"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)thirdPartyVideoDecodersAllowed
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"ThirdPartyVideoDecodersAllowed"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (QLFileThumbnailRequest)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = QLFileThumbnailRequest;
  v3 = a3;
  v4 = [(QLFileThumbnailRequest *)&v18 init];
  [v3 decodeFloatForKey:{@"maxW", v18.receiver, v18.super_class}];
  v6 = v5;
  [v3 decodeFloatForKey:@"maxH"];
  v4->_maximumSize.width = v6;
  v4->_maximumSize.height = v7;
  [v3 decodeFloatForKey:@"min"];
  v9 = v8;
  v4->_minimumSize.width = v9;
  v4->_minimumSize.height = v9;
  [v3 decodeFloatForKey:@"s"];
  v4->_scale = v10;
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  item = v4->_item;
  v4->_item = v11;

  v13 = [v3 decodePropertyListForKey:@"o"];
  options = v4->_options;
  v4->_options = v13;

  v15 = [v3 decodePropertyListForKey:@"g"];

  generationData = v4->_generationData;
  v4->_generationData = v15;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  width = self->_maximumSize.width;
  v9 = a3;
  *&v5 = width;
  [v9 encodeFloat:@"maxW" forKey:v5];
  height = self->_maximumSize.height;
  *&height = height;
  [v9 encodeFloat:@"maxH" forKey:height];
  v7 = self->_minimumSize.width;
  *&v7 = v7;
  [v9 encodeFloat:@"min" forKey:v7];
  scale = self->_scale;
  *&scale = scale;
  [v9 encodeFloat:@"s" forKey:scale];
  [v9 encodeObject:self->_item forKey:@"i"];
  [v9 encodeObject:self->_options forKey:@"o"];
  [v9 encodeObject:self->_generationData forKey:@"g"];
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimumSize
{
  width = self->_minimumSize.width;
  height = self->_minimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end