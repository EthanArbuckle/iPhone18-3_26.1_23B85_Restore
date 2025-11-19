@interface WKOpenPanelParameters
- (NSArray)_acceptedFileExtensions;
- (NSArray)_acceptedMIMETypes;
- (NSArray)_allowedFileExtensions;
@end

@implementation WKOpenPanelParameters

- (NSArray)_acceptedMIMETypes
{
  API::Array::createStringArray(&self->_openPanelParameters.m_storage.data[24], &v8);
  v2 = v8;
  v3 = v8[1];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = v3;
    v6 = *(v2 + 1);
LABEL_4:
    CFRelease(v6);
    return v3;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (NSArray)_acceptedFileExtensions
{
  API::Array::createStringArray(&self->_openPanelParameters.m_storage.data[40], &v8);
  v2 = v8;
  v3 = v8[1];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = v3;
    v6 = *(v2 + 1);
LABEL_4:
    CFRelease(v6);
    return v3;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (NSArray)_allowedFileExtensions
{
  API::OpenPanelParameters::allowedFileExtensions(&v8);
  v2 = *(v8 + 1);
  if (!v2)
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = v2;
    v5 = v8;
    v8 = 0;
    if (!v5)
    {
      return v2;
    }

    v6 = *(v5 + 1);
LABEL_5:
    CFRelease(v6);
    return v2;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

@end