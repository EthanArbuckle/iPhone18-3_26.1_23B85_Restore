@interface AAUIiCloudMediaUsageInfo
- (AAUIiCloudMediaUsageInfo)initWithMediaType:(id)type representativeColor:(id)color bytesUsed:(float)used;
- (NSString)displayLabel;
- (id)capacityBarCatagory;
@end

@implementation AAUIiCloudMediaUsageInfo

- (AAUIiCloudMediaUsageInfo)initWithMediaType:(id)type representativeColor:(id)color bytesUsed:(float)used
{
  typeCopy = type;
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = AAUIiCloudMediaUsageInfo;
  v11 = [(AAUIiCloudMediaUsageInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaType, type);
    objc_storeStrong(&v12->_representativeColor, color);
    v12->_bytesUsed = used;
  }

  return v12;
}

- (NSString)displayLabel
{
  displayLabel = self->_displayLabel;
  if (!displayLabel)
  {
    displayLabel = self->_mediaType;
  }

  v3 = displayLabel;

  return v3;
}

- (id)capacityBarCatagory
{
  v3 = objc_alloc(MEMORY[0x1E69C56D0]);
  if (self->_displayLabel)
  {
    displayLabel = self->_displayLabel;
  }

  else
  {
    displayLabel = self->_mediaType;
  }

  v5 = [v3 initWithIdentifier:self->_mediaType title:displayLabel color:self->_representativeColor bytes:self->_bytesUsed];

  return v5;
}

@end