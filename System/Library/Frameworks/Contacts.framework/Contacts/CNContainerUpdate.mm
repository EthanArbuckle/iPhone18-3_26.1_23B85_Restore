@interface CNContainerUpdate
+ (id)updateWithValue:(id)value property:(id)property;
- (CNContainerUpdate)initWithProperty:(id)property value:(id)value;
- (NSString)description;
- (void)applyToMutableContainer:(id)container;
@end

@implementation CNContainerUpdate

+ (id)updateWithValue:(id)value property:(id)property
{
  propertyCopy = property;
  valueCopy = value;
  v8 = [[self alloc] initWithProperty:propertyCopy value:valueCopy];

  return v8;
}

- (CNContainerUpdate)initWithProperty:(id)property value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = CNContainerUpdate;
  v9 = [(CNContainerUpdate *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_property, property);
    objc_storeStrong(&v10->_value, value);
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
  build = [v3 build];

  return build;
}

- (void)applyToMutableContainer:(id)container
{
  containerCopy = container;
  property = [(CNContainerUpdate *)self property];
  [property setCNValue:self->_value onContainer:containerCopy];
}

@end