@interface ATXWidgetDescriptorCacheMetadata
- (ATXWidgetDescriptorCacheMetadata)initWithCoder:(id)coder;
- (ATXWidgetDescriptorCacheMetadata)initWithInstallDate:(id)date containerBundleId:(id)id hasHomeScreenWidgetFamiliesOnly:(BOOL)only hasAccessoryWidgetFamiliesOnly:(BOOL)familiesOnly;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXWidgetDescriptorCacheMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidgetDescriptorCacheMetadata

- (ATXWidgetDescriptorCacheMetadata)initWithInstallDate:(id)date containerBundleId:(id)id hasHomeScreenWidgetFamiliesOnly:(BOOL)only hasAccessoryWidgetFamiliesOnly:(BOOL)familiesOnly
{
  dateCopy = date;
  idCopy = id;
  v19.receiver = self;
  v19.super_class = ATXWidgetDescriptorCacheMetadata;
  v13 = [(ATXWidgetDescriptorCacheMetadata *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_installDate, date);
    v15 = [idCopy copy];
    containerBundleId = v14->_containerBundleId;
    v14->_containerBundleId = v15;

    v14->_hasHomeScreenWidgetFamiliesOnly = only;
    v14->_hasAccessoryWidgetFamiliesOnly = familiesOnly;
    v17 = v14;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  installDate = self->_installDate;
  coderCopy = coder;
  [coderCopy encodeObject:installDate forKey:@"installDate"];
  [coderCopy encodeObject:self->_containerBundleId forKey:@"containerBundleId"];
  [coderCopy encodeBool:self->_hasHomeScreenWidgetFamiliesOnly forKey:@"hasHomeScreenWidgetFamiliesOnly"];
  [coderCopy encodeBool:self->_hasAccessoryWidgetFamiliesOnly forKey:@"hasAccessoryWidgetFamiliesOnly"];
}

- (ATXWidgetDescriptorCacheMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installDate"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleId"];
    self = -[ATXWidgetDescriptorCacheMetadata initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:](self, "initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:", v5, v6, [coderCopy decodeBoolForKey:@"hasHomeScreenWidgetFamiliesOnly"], objc_msgSend(coderCopy, "decodeBoolForKey:", @"hasAccessoryWidgetFamiliesOnly"));

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXWidgetDescriptorCacheMetadata *)self isEqualToATXWidgetDescriptorCacheMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXWidgetDescriptorCacheMetadata:(id)metadata
{
  metadataCopy = metadata;
  [(NSDate *)self->_installDate timeIntervalSinceReferenceDate];
  v6 = v5;
  installDate = [metadataCopy installDate];
  [installDate timeIntervalSinceReferenceDate];
  if (vabdd_f64(v6, v8) >= 1.0)
  {
    goto LABEL_8;
  }

  v9 = self->_containerBundleId;
  v10 = v9;
  if (v9 == *(metadataCopy + 3))
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (self->_hasAccessoryWidgetFamiliesOnly != metadataCopy[9])
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v12 = self->_hasHomeScreenWidgetFamiliesOnly == metadataCopy[8];
LABEL_9:

  return v12;
}

@end