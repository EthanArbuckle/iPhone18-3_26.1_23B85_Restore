@interface ATXWidgetGalleryRequest
- (ATXWidgetGalleryRequest)initWithClientIdentity:(id)identity;
- (ATXWidgetGalleryRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidgetGalleryRequest

- (ATXWidgetGalleryRequest)initWithClientIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = ATXWidgetGalleryRequest;
  v6 = [(ATXWidgetGalleryRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientIdentity, identity);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientIdentity = [(ATXWidgetGalleryRequest *)self clientIdentity];
  [coderCopy encodeObject:clientIdentity forKey:@"clientIdentity"];

  [coderCopy encodeInteger:-[ATXWidgetGalleryRequest galleryVariant](self forKey:{"galleryVariant"), @"galleryVariant"}];
  [coderCopy encodeInteger:-[ATXWidgetGalleryRequest widgetGridSize](self forKey:{"widgetGridSize"), @"widgetGridSize"}];
  [coderCopy encodeInteger:-[ATXWidgetGalleryRequest widgetFamilyMask](self forKey:{"widgetFamilyMask"), @"widgetFamilyMask"}];
  limit = [(ATXWidgetGalleryRequest *)self limit];
  [coderCopy encodeObject:limit forKey:@"limit"];

  denyListOfExtensions = [(ATXWidgetGalleryRequest *)self denyListOfExtensions];
  [coderCopy encodeObject:denyListOfExtensions forKey:@"denyListOfExtensions"];
}

- (ATXWidgetGalleryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentity"];
  if (v5)
  {
    v6 = [(ATXWidgetGalleryRequest *)self initWithClientIdentity:v5];
    if (v6)
    {
      v6->_galleryVariant = [coderCopy decodeIntegerForKey:@"galleryVariant"];
      v6->_widgetGridSize = [coderCopy decodeIntegerForKey:@"widgetGridSize"];
      v6->_widgetFamilyMask = [coderCopy decodeIntegerForKey:@"widgetFamilyMask"];
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
      limit = v6->_limit;
      v6->_limit = v7;

      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"denyListOfExtensions"];
      denyListOfExtensions = v6->_denyListOfExtensions;
      v6->_denyListOfExtensions = v12;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end