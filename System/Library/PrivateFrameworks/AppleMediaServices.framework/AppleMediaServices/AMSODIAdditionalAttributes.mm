@interface AMSODIAdditionalAttributes
- (AMSODIAdditionalAttributes)initWithAttributes:(id)attributes;
- (AMSODIAdditionalAttributes)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AMSODIAdditionalAttributes

- (AMSODIAdditionalAttributes)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v9.receiver = self;
  v9.super_class = AMSODIAdditionalAttributes;
  v5 = [(AMSODIAdditionalAttributes *)&v9 init];
  if (v5)
  {
    v6 = [attributesCopy copy];
    attributes = v5->_attributes;
    v5->_attributes = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(AMSODIAdditionalAttributes);
  v6 = [(NSDictionary *)self->_attributes copyWithZone:zone];
  attributes = v5->_attributes;
  v5->_attributes = v6;

  return v5;
}

- (AMSODIAdditionalAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AMSODIAdditionalAttributes;
  v5 = [(AMSODIAdditionalAttributes *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v10;
  }

  return v5;
}

@end