@interface NSFileProviderMessageInterface
- (NSFileProviderMessageInterface)initWithCoder:(id)coder;
- (NSFileProviderMessageInterface)initWithName:(id)name itemIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFileProviderMessageInterface

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderMessageInterface;
  [(NSFileProviderMessageInterface *)&v3 dealloc];
}

- (NSFileProviderMessageInterface)initWithName:(id)name itemIdentifier:(id)identifier providerIdentifier:(id)providerIdentifier
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSFileProviderMessageInterface;
  v8 = [(NSFileProviderMessageInterface *)&v10 init];
  if (v8)
  {
    v8->_name = [name copy];
    v8->_itemIdentifier = [identifier copy];
    v8->_providerIdentifier = [providerIdentifier copy];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_name forKey:@"NSInterfaceName"];
  [coder encodeObject:self->_itemIdentifier forKey:@"NSItemIdentifier"];
  providerIdentifier = self->_providerIdentifier;

  [coder encodeObject:providerIdentifier forKey:@"NSProviderIdentifier"];
}

- (NSFileProviderMessageInterface)initWithCoder:(id)coder
{
  self->_name = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSInterfaceName"];
  self->_itemIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSItemIdentifier"];
  self->_providerIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSProviderIdentifier"];
  return self;
}

@end