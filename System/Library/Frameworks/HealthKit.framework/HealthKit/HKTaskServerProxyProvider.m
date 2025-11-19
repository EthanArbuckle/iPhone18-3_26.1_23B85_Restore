@interface HKTaskServerProxyProvider
- (HKTaskServerProxyProvider)initWithHealthStore:(id)a3 taskIdentifier:(id)a4 exportedObject:(id)a5 exportedInterface:(id)a6 remoteInterface:(id)a7 taskUUID:(id)a8;
- (HKTaskServerProxyProvider)initWithHealthStore:(id)a3 taskIdentifier:(id)a4 exportedObject:(id)a5 taskUUID:(id)a6;
- (id)debugIdentifier;
@end

@implementation HKTaskServerProxyProvider

- (HKTaskServerProxyProvider)initWithHealthStore:(id)a3 taskIdentifier:(id)a4 exportedObject:(id)a5 taskUUID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v11 exportedInterface];
  v15 = [v11 remoteInterface];
  v16 = [(HKTaskServerProxyProvider *)self initWithHealthStore:v13 taskIdentifier:v12 exportedObject:v11 exportedInterface:v14 remoteInterface:v15 taskUUID:v10];

  return v16;
}

- (HKTaskServerProxyProvider)initWithHealthStore:(id)a3 taskIdentifier:(id)a4 exportedObject:(id)a5 exportedInterface:(id)a6 remoteInterface:(id)a7 taskUUID:(id)a8
{
  v14 = a8;
  v21.receiver = self;
  v21.super_class = HKTaskServerProxyProvider;
  v15 = [(HKProxyProvider *)&v21 initWithSource:a3 serviceIdentifier:a4 exportedObject:a5 exportedInterface:a6 remoteInterface:a7];
  if (v15)
  {
    v16 = [v14 copy];
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
  v4 = [(HKProxyProvider *)self serviceIdentifier];
  v5 = [v3 stringWithFormat:@"%@:%@", v4, self->_taskUUID];

  return v5;
}

@end