@interface HKTaskServerProxyProvider
- (HKTaskServerProxyProvider)initWithHealthStore:(id)store taskIdentifier:(id)identifier exportedObject:(id)object exportedInterface:(id)interface remoteInterface:(id)remoteInterface taskUUID:(id)d;
- (HKTaskServerProxyProvider)initWithHealthStore:(id)store taskIdentifier:(id)identifier exportedObject:(id)object taskUUID:(id)d;
- (id)debugIdentifier;
@end

@implementation HKTaskServerProxyProvider

- (HKTaskServerProxyProvider)initWithHealthStore:(id)store taskIdentifier:(id)identifier exportedObject:(id)object taskUUID:(id)d
{
  dCopy = d;
  objectCopy = object;
  identifierCopy = identifier;
  storeCopy = store;
  exportedInterface = [objectCopy exportedInterface];
  remoteInterface = [objectCopy remoteInterface];
  v16 = [(HKTaskServerProxyProvider *)self initWithHealthStore:storeCopy taskIdentifier:identifierCopy exportedObject:objectCopy exportedInterface:exportedInterface remoteInterface:remoteInterface taskUUID:dCopy];

  return v16;
}

- (HKTaskServerProxyProvider)initWithHealthStore:(id)store taskIdentifier:(id)identifier exportedObject:(id)object exportedInterface:(id)interface remoteInterface:(id)remoteInterface taskUUID:(id)d
{
  dCopy = d;
  v21.receiver = self;
  v21.super_class = HKTaskServerProxyProvider;
  v15 = [(HKProxyProvider *)&v21 initWithSource:store serviceIdentifier:identifier exportedObject:object exportedInterface:interface remoteInterface:remoteInterface];
  if (v15)
  {
    v16 = [dCopy copy];
    taskUUID = v15->_taskUUID;
    v15->_taskUUID = v16;

    v18 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    instanceUUID = v15->_instanceUUID;
    v15->_instanceUUID = v18;
  }

  return v15;
}

- (id)debugIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  serviceIdentifier = [(HKProxyProvider *)self serviceIdentifier];
  v5 = [v3 stringWithFormat:@"%@:%@", serviceIdentifier, self->_taskUUID];

  return v5;
}

@end