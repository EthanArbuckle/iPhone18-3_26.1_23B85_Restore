@interface HMMMClientRequestHandlerOptions
- (HMMMClientRequestHandlerOptions)initWithPeerDestination:(id)a3 messageName:(id)a4 user:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMMMClientRequestHandlerOptions

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMMMClientRequestHandlerOptions *)self peerDestination];
  v5 = [v3 initWithName:@"PeerDestination" value:v4];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMMMClientRequestHandlerOptions *)self messageName];
  v8 = [v6 initWithName:@"MessageName" value:v7];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [(HMMMClientRequestHandlerOptions *)self user];
  v11 = [v10 uniqueIdentifier];
  v12 = [v9 initWithName:@"UserUUID" value:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (HMMMClientRequestHandlerOptions)initWithPeerDestination:(id)a3 messageName:(id)a4 user:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMMMClientRequestHandlerOptions;
  v12 = [(HMMMClientRequestHandlerOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_peerDestination, a3);
    objc_storeStrong(&v13->_messageName, a4);
    objc_storeStrong(&v13->_user, a5);
  }

  return v13;
}

@end