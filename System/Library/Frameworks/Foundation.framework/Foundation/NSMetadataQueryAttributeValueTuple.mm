@interface NSMetadataQueryAttributeValueTuple
- (NSString)attribute;
- (id)_init:(id)_init attribute:(id)attribute value:(id)value count:(unint64_t)count;
- (id)value;
- (void)dealloc;
@end

@implementation NSMetadataQueryAttributeValueTuple

- (id)_init:(id)_init attribute:(id)attribute value:(id)value count:(unint64_t)count
{
  self->_attr = attribute;
  self->_value = value;
  self->_count = count;
  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMetadataQueryAttributeValueTuple;
  [(NSMetadataQueryAttributeValueTuple *)&v3 dealloc];
}

- (NSString)attribute
{
  v2 = self->_attr;

  return v2;
}

- (id)value
{
  v2 = self->_value;

  return v2;
}

@end