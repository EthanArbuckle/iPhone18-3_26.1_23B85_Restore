@interface ATXWidgetGalleryResponse
- (ATXWidgetGalleryResponse)initWithCoder:(id)a3;
- (ATXWidgetGalleryResponse)initWithItems:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidgetGalleryResponse

- (ATXWidgetGalleryResponse)initWithItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXWidgetGalleryResponse;
  v5 = [(ATXWidgetGalleryResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXWidgetGalleryResponse *)self items];
  [v4 encodeObject:v5 forKey:@"items"];
}

- (ATXWidgetGalleryResponse)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"items"];

  v9 = [(ATXWidgetGalleryResponse *)self initWithItems:v8];
  return v9;
}

@end