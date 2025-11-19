@interface NSFileProviderMessageInterface
- (NSFileProviderMessageInterface)initWithCoder:(id)a3;
- (NSFileProviderMessageInterface)initWithName:(id)a3 itemIdentifier:(id)a4 providerIdentifier:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFileProviderMessageInterface

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFileProviderMessageInterface;
  [(NSFileProviderMessageInterface *)&v3 dealloc];
}

- (NSFileProviderMessageInterface)initWithName:(id)a3 itemIdentifier:(id)a4 providerIdentifier:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSFileProviderMessageInterface;
  v8 = [(NSFileProviderMessageInterface *)&v10 init];
  if (v8)
  {
    v8->_name = [a3 copy];
    v8->_itemIdentifier = [a4 copy];
    v8->_providerIdentifier = [a5 copy];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_name forKey:@"NSInterfaceName"];
  [a3 encodeObject:self->_itemIdentifier forKey:@"NSItemIdentifier"];
  providerIdentifier = self->_providerIdentifier;

  [a3 encodeObject:providerIdentifier forKey:@"NSProviderIdentifier"];
}

- (NSFileProviderMessageInterface)initWithCoder:(id)a3
{
  self->_name = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSInterfaceName"];
  self->_itemIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSItemIdentifier"];
  self->_providerIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSProviderIdentifier"];
  return self;
}

@end