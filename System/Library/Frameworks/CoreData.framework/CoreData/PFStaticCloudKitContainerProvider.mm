@interface PFStaticCloudKitContainerProvider
- (PFStaticCloudKitContainerProvider)initWithContainer:(id)a3;
- (id)containerWithIdentifier:(id)a3;
- (void)dealloc;
@end

@implementation PFStaticCloudKitContainerProvider

- (PFStaticCloudKitContainerProvider)initWithContainer:(id)a3
{
  v6.receiver = self;
  v6.super_class = PFStaticCloudKitContainerProvider;
  v4 = [(PFStaticCloudKitContainerProvider *)&v6 init];
  if (v4)
  {
    v4->_container = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFStaticCloudKitContainerProvider;
  [(PFStaticCloudKitContainerProvider *)&v3 dealloc];
}

- (id)containerWithIdentifier:(id)a3
{
  if (![(NSString *)[(CKContainer *)self->_container containerIdentifier] isEqualToString:a3])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Invalid for a container '%@'. This object was configured to only respond to container requests for '%@'", a3, -[CKContainer containerIdentifier](self->_container, "containerIdentifier")), 0}]);
  }

  v5 = self->_container;

  return v5;
}

@end