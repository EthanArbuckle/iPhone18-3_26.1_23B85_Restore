@interface AAUIiCloudMediaUsageInfo
- (AAUIiCloudMediaUsageInfo)initWithMediaType:(id)a3 representativeColor:(id)a4 bytesUsed:(float)a5;
- (NSString)displayLabel;
- (id)capacityBarCatagory;
@end

@implementation AAUIiCloudMediaUsageInfo

- (AAUIiCloudMediaUsageInfo)initWithMediaType:(id)a3 representativeColor:(id)a4 bytesUsed:(float)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AAUIiCloudMediaUsageInfo;
  v11 = [(AAUIiCloudMediaUsageInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaType, a3);
    objc_storeStrong(&v12->_representativeColor, a4);
    v12->_bytesUsed = a5;
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