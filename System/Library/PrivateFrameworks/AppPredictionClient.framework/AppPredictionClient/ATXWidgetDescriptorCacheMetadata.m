@interface ATXWidgetDescriptorCacheMetadata
- (ATXWidgetDescriptorCacheMetadata)initWithCoder:(id)a3;
- (ATXWidgetDescriptorCacheMetadata)initWithInstallDate:(id)a3 containerBundleId:(id)a4 hasHomeScreenWidgetFamiliesOnly:(BOOL)a5 hasAccessoryWidgetFamiliesOnly:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXWidgetDescriptorCacheMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidgetDescriptorCacheMetadata

- (ATXWidgetDescriptorCacheMetadata)initWithInstallDate:(id)a3 containerBundleId:(id)a4 hasHomeScreenWidgetFamiliesOnly:(BOOL)a5 hasAccessoryWidgetFamiliesOnly:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v19.receiver = self;
  v19.super_class = ATXWidgetDescriptorCacheMetadata;
  v13 = [(ATXWidgetDescriptorCacheMetadata *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_installDate, a3);
    v15 = [v12 copy];
    containerBundleId = v14->_containerBundleId;
    v14->_containerBundleId = v15;

    v14->_hasHomeScreenWidgetFamiliesOnly = a5;
    v14->_hasAccessoryWidgetFamiliesOnly = a6;
    v17 = v14;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  installDate = self->_installDate;
  v5 = a3;
  [v5 encodeObject:installDate forKey:@"installDate"];
  [v5 encodeObject:self->_containerBundleId forKey:@"containerBundleId"];
  [v5 encodeBool:self->_hasHomeScreenWidgetFamiliesOnly forKey:@"hasHomeScreenWidgetFamiliesOnly"];
  [v5 encodeBool:self->_hasAccessoryWidgetFamiliesOnly forKey:@"hasAccessoryWidgetFamiliesOnly"];
}

- (ATXWidgetDescriptorCacheMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installDate"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerBundleId"];
    self = -[ATXWidgetDescriptorCacheMetadata initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:](self, "initWithInstallDate:containerBundleId:hasHomeScreenWidgetFamiliesOnly:hasAccessoryWidgetFamiliesOnly:", v5, v6, [v4 decodeBoolForKey:@"hasHomeScreenWidgetFamiliesOnly"], objc_msgSend(v4, "decodeBoolForKey:", @"hasAccessoryWidgetFamiliesOnly"));

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXWidgetDescriptorCacheMetadata *)self isEqualToATXWidgetDescriptorCacheMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXWidgetDescriptorCacheMetadata:(id)a3
{
  v4 = a3;
  [(NSDate *)self->_installDate timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = [v4 installDate];
  [v7 timeIntervalSinceReferenceDate];
  if (vabdd_f64(v6, v8) >= 1.0)
  {
    goto LABEL_8;
  }

  v9 = self->_containerBundleId;
  v10 = v9;
  if (v9 == *(v4 + 3))
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

  if (self->_hasAccessoryWidgetFamiliesOnly != v4[9])
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v12 = self->_hasHomeScreenWidgetFamiliesOnly == v4[8];
LABEL_9:

  return v12;
}

@end