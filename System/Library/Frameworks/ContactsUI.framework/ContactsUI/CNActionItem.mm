@interface CNActionItem
- (CNActionItem)initWithImage:(id)image type:(id)type;
- (id)description;
@end

@implementation CNActionItem

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  title = [(CNActionItem *)self title];
  v5 = [v3 appendName:@"title" object:title];

  type = [(CNActionItem *)self type];
  v7 = [v3 appendName:@"type" object:type];

  v8 = [v3 appendName:@"disabled" BOOLValue:{-[CNActionItem disabled](self, "disabled")}];
  build = [v3 build];

  return build;
}

- (CNActionItem)initWithImage:(id)image type:(id)type
{
  imageCopy = image;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = CNActionItem;
  v9 = [(CNActionItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_image, image);
    objc_storeStrong(&v10->_type, type);
    v11 = v10;
  }

  return v10;
}

@end