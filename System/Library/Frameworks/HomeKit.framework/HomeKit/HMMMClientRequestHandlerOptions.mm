@interface HMMMClientRequestHandlerOptions
- (HMMMClientRequestHandlerOptions)initWithPeerDestination:(id)destination messageName:(id)name user:(id)user;
- (id)attributeDescriptions;
@end

@implementation HMMMClientRequestHandlerOptions

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  peerDestination = [(HMMMClientRequestHandlerOptions *)self peerDestination];
  v5 = [v3 initWithName:@"PeerDestination" value:peerDestination];
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  messageName = [(HMMMClientRequestHandlerOptions *)self messageName];
  v8 = [v6 initWithName:@"MessageName" value:messageName];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  user = [(HMMMClientRequestHandlerOptions *)self user];
  uniqueIdentifier = [user uniqueIdentifier];
  v12 = [v9 initWithName:@"UserUUID" value:uniqueIdentifier];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (HMMMClientRequestHandlerOptions)initWithPeerDestination:(id)destination messageName:(id)name user:(id)user
{
  destinationCopy = destination;
  nameCopy = name;
  userCopy = user;
  v15.receiver = self;
  v15.super_class = HMMMClientRequestHandlerOptions;
  v12 = [(HMMMClientRequestHandlerOptions *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_peerDestination, destination);
    objc_storeStrong(&v13->_messageName, name);
    objc_storeStrong(&v13->_user, user);
  }

  return v13;
}

@end