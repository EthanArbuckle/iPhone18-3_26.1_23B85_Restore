@interface NSMetadataQueryAttributeValueTuple
- (NSString)attribute;
- (id)_init:(id)a3 attribute:(id)a4 value:(id)a5 count:(unint64_t)a6;
- (id)value;
- (void)dealloc;
@end

@implementation NSMetadataQueryAttributeValueTuple

- (id)_init:(id)a3 attribute:(id)a4 value:(id)a5 count:(unint64_t)a6
{
  self->_attr = a4;
  self->_value = a5;
  self->_count = a6;
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