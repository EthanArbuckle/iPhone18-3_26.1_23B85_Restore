@interface ATXWidgetGalleryResponse
- (ATXWidgetGalleryResponse)initWithCoder:(id)coder;
- (ATXWidgetGalleryResponse)initWithItems:(id)items;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidgetGalleryResponse

- (ATXWidgetGalleryResponse)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = ATXWidgetGalleryResponse;
  v5 = [(ATXWidgetGalleryResponse *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  items = [(ATXWidgetGalleryResponse *)self items];
  [coderCopy encodeObject:items forKey:@"items"];
}

- (ATXWidgetGalleryResponse)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"items"];

  v9 = [(ATXWidgetGalleryResponse *)self initWithItems:v8];
  return v9;
}

@end