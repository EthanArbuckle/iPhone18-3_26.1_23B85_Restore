@interface ATXWidgetGalleryRequest
- (ATXWidgetGalleryRequest)initWithClientIdentity:(id)a3;
- (ATXWidgetGalleryRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidgetGalleryRequest

- (ATXWidgetGalleryRequest)initWithClientIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXWidgetGalleryRequest;
  v6 = [(ATXWidgetGalleryRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientIdentity, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXWidgetGalleryRequest *)self clientIdentity];
  [v4 encodeObject:v5 forKey:@"clientIdentity"];

  [v4 encodeInteger:-[ATXWidgetGalleryRequest galleryVariant](self forKey:{"galleryVariant"), @"galleryVariant"}];
  [v4 encodeInteger:-[ATXWidgetGalleryRequest widgetGridSize](self forKey:{"widgetGridSize"), @"widgetGridSize"}];
  [v4 encodeInteger:-[ATXWidgetGalleryRequest widgetFamilyMask](self forKey:{"widgetFamilyMask"), @"widgetFamilyMask"}];
  v6 = [(ATXWidgetGalleryRequest *)self limit];
  [v4 encodeObject:v6 forKey:@"limit"];

  v7 = [(ATXWidgetGalleryRequest *)self denyListOfExtensions];
  [v4 encodeObject:v7 forKey:@"denyListOfExtensions"];
}

- (ATXWidgetGalleryRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentity"];
  if (v5)
  {
    v6 = [(ATXWidgetGalleryRequest *)self initWithClientIdentity:v5];
    if (v6)
    {
      v6->_galleryVariant = [v4 decodeIntegerForKey:@"galleryVariant"];
      v6->_widgetGridSize = [v4 decodeIntegerForKey:@"widgetGridSize"];
      v6->_widgetFamilyMask = [v4 decodeIntegerForKey:@"widgetFamilyMask"];
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
      limit = v6->_limit;
      v6->_limit = v7;

      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [v4 decodeObjectOfClasses:v11 forKey:@"denyListOfExtensions"];
      denyListOfExtensions = v6->_denyListOfExtensions;
      v6->_denyListOfExtensions = v12;
    }

    self = v6;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end