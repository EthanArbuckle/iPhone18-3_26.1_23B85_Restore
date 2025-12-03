@interface ENRegionServerAgencyExposureNotificationConfiguration
- (ENRegionServerAgencyExposureNotificationConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  classificationName = self->_classificationName;
  coderCopy = coder;
  [coderCopy encodeObject:classificationName forKey:@"name"];
  [coderCopy encodeObject:self->_classificationURL forKey:@"URL"];
  [coderCopy encodeObject:self->_localizedExposureDetailBody forKey:@"expB"];
  [coderCopy encodeObject:self->_localizedNotificationBody forKey:@"noteB"];
  [coderCopy encodeObject:self->_localizedNotificationSubject forKey:@"noteT"];
}

- (ENRegionServerAgencyExposureNotificationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expB"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"noteB"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"noteT"];
        if (v8 && (v14.receiver = self, v14.super_class = ENRegionServerAgencyExposureNotificationConfiguration, v9 = [(ENRegionServerAgencyExposureNotificationConfiguration *)&v14 init], (self = v9) != 0))
        {
          objc_storeStrong(&v9->_classificationName, v5);
          v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
          classificationURL = self->_classificationURL;
          self->_classificationURL = v10;

          objc_storeStrong(&self->_localizedExposureDetailBody, v6);
          objc_storeStrong(&self->_localizedNotificationBody, v7);
          objc_storeStrong(&self->_localizedNotificationSubject, v8);
          self = self;
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end