@interface QLFileThumbnailRequest
- (BOOL)thirdPartyVideoDecodersAllowed;
- (BOOL)wantsLowQuality;
- (CGSize)maximumSize;
- (CGSize)minimumSize;
- (NSURL)fileURL;
- (QLFileThumbnailRequest)initWithCoder:(id)coder;
- (QLFileThumbnailRequest)initWithItem:(id)item maximumSize:(CGSize)size minimumSize:(double)minimumSize scale:(double)scale options:(id)options generationData:(id)data;
- (id)contentType;
- (id)description;
- (int)iconFlavor;
- (int)interpolationQuality;
- (unint64_t)badgeType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLFileThumbnailRequest

- (QLFileThumbnailRequest)initWithItem:(id)item maximumSize:(CGSize)size minimumSize:(double)minimumSize scale:(double)scale options:(id)options generationData:(id)data
{
  height = size.height;
  width = size.width;
  itemCopy = item;
  optionsCopy = options;
  dataCopy = data;
  v23.receiver = self;
  v23.super_class = QLFileThumbnailRequest;
  v19 = [(QLFileThumbnailRequest *)&v23 init];
  v20 = v19;
  if (v19)
  {
    v19->_maximumSize.width = width;
    v19->_maximumSize.height = height;
    v19->_minimumSize.width = minimumSize;
    v19->_minimumSize.height = minimumSize;
    v19->_scale = scale;
    objc_storeStrong(&v19->_item, item);
    objc_storeStrong(&v20->_generationData, data);
    objc_storeStrong(&v20->_options, options);
    v21 = v20;
  }

  return v20;
}

- (NSURL)fileURL
{
  item = [(QLFileThumbnailRequest *)self item];
  fileURL = [item fileURL];

  return fileURL;
}

- (id)contentType
{
  item = [(QLFileThumbnailRequest *)self item];
  contentType = [item contentType];
  identifier = [contentType identifier];

  return identifier;
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
  intValue = [v2 intValue];

  return intValue;
}

- (int)iconFlavor
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"IconFlavor"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)interpolationQuality
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"InterpolationQuality"];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)wantsLowQuality
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"WantsLowQuality"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)thirdPartyVideoDecodersAllowed
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"ThirdPartyVideoDecodersAllowed"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (QLFileThumbnailRequest)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = QLFileThumbnailRequest;
  coderCopy = coder;
  v4 = [(QLFileThumbnailRequest *)&v18 init];
  [coderCopy decodeFloatForKey:{@"maxW", v18.receiver, v18.super_class}];
  v6 = v5;
  [coderCopy decodeFloatForKey:@"maxH"];
  v4->_maximumSize.width = v6;
  v4->_maximumSize.height = v7;
  [coderCopy decodeFloatForKey:@"min"];
  v9 = v8;
  v4->_minimumSize.width = v9;
  v4->_minimumSize.height = v9;
  [coderCopy decodeFloatForKey:@"s"];
  v4->_scale = v10;
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  item = v4->_item;
  v4->_item = v11;

  v13 = [coderCopy decodePropertyListForKey:@"o"];
  options = v4->_options;
  v4->_options = v13;

  v15 = [coderCopy decodePropertyListForKey:@"g"];

  generationData = v4->_generationData;
  v4->_generationData = v15;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  width = self->_maximumSize.width;
  coderCopy = coder;
  *&v5 = width;
  [coderCopy encodeFloat:@"maxW" forKey:v5];
  height = self->_maximumSize.height;
  *&height = height;
  [coderCopy encodeFloat:@"maxH" forKey:height];
  v7 = self->_minimumSize.width;
  *&v7 = v7;
  [coderCopy encodeFloat:@"min" forKey:v7];
  scale = self->_scale;
  *&scale = scale;
  [coderCopy encodeFloat:@"s" forKey:scale];
  [coderCopy encodeObject:self->_item forKey:@"i"];
  [coderCopy encodeObject:self->_options forKey:@"o"];
  [coderCopy encodeObject:self->_generationData forKey:@"g"];
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