@interface CNActionItem
- (CNActionItem)initWithImage:(id)a3 type:(id)a4;
- (id)description;
@end

@implementation CNActionItem

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNActionItem *)self title];
  v5 = [v3 appendName:@"title" object:v4];

  v6 = [(CNActionItem *)self type];
  v7 = [v3 appendName:@"type" object:v6];

  v8 = [v3 appendName:@"disabled" BOOLValue:{-[CNActionItem disabled](self, "disabled")}];
  v9 = [v3 build];

  return v9;
}

- (CNActionItem)initWithImage:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNActionItem;
  v9 = [(CNActionItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_image, a3);
    objc_storeStrong(&v10->_type, a4);
    v11 = v10;
  }

  return v10;
}

@end