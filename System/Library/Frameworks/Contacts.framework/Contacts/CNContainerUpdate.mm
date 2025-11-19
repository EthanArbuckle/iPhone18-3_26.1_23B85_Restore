@interface CNContainerUpdate
+ (id)updateWithValue:(id)a3 property:(id)a4;
- (CNContainerUpdate)initWithProperty:(id)a3 value:(id)a4;
- (NSString)description;
- (void)applyToMutableContainer:(id)a3;
@end

@implementation CNContainerUpdate

+ (id)updateWithValue:(id)a3 property:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithProperty:v6 value:v7];

  return v8;
}

- (CNContainerUpdate)initWithProperty:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContainerUpdate;
  v9 = [(CNContainerUpdate *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_property, a3);
    objc_storeStrong(&v10->_value, a4);
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNContainerPropertyDescription *)self->_property key];
  v5 = [v3 appendName:@"property" object:v4];

  v6 = [v3 appendName:@"value" object:self->_value];
  v7 = [v3 build];

  return v7;
}

- (void)applyToMutableContainer:(id)a3
{
  v4 = a3;
  v5 = [(CNContainerUpdate *)self property];
  [v5 setCNValue:self->_value onContainer:v4];
}

@end