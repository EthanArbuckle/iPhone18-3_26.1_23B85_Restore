@interface ENRegionServerAgencyExposureNotificationConfiguration
- (ENRegionServerAgencyExposureNotificationConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRegionServerAgencyExposureNotificationConfiguration

id __114__ENRegionServerAgencyExposureNotificationConfiguration_getNotificationConfiguration_fromDictionary_locale_index___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"%@_%d_%@", v4, *(a1 + 48), *(a1 + 32)];

  v6 = *(a1 + 40);
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  classificationName = self->_classificationName;
  v5 = a3;
  [v5 encodeObject:classificationName forKey:@"name"];
  [v5 encodeObject:self->_classificationURL forKey:@"URL"];
  [v5 encodeObject:self->_localizedExposureDetailBody forKey:@"expB"];
  [v5 encodeObject:self->_localizedNotificationBody forKey:@"noteB"];
  [v5 encodeObject:self->_localizedNotificationSubject forKey:@"noteT"];
}

- (ENRegionServerAgencyExposureNotificationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expB"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"noteB"];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"noteT"];
        if (v8 && (v14.receiver = self, v14.super_class = ENRegionServerAgencyExposureNotificationConfiguration, v9 = [(ENRegionServerAgencyExposureNotificationConfiguration *)&v14 init], (self = v9) != 0))
        {
          objc_storeStrong(&v9->_classificationName, v5);
          v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
          classificationURL = self->_classificationURL;
          self->_classificationURL = v10;

          objc_storeStrong(&self->_localizedExposureDetailBody, v6);
          objc_storeStrong(&self->_localizedNotificationBody, v7);
          objc_storeStrong(&self->_localizedNotificationSubject, v8);
          self = self;
          v12 = self;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end