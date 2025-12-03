@interface HMMMClientResponseHandlerOptions
- (HMMMClientResponseHandlerOptions)initWithPeerDestination:(id)destination messageName:(id)name;
- (id)attributeDescriptions;
@end

@implementation HMMMClientResponseHandlerOptions

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  peerDestination = [(HMMMClientResponseHandlerOptions *)self peerDestination];
  v5 = [v3 initWithName:@"PeerDestination" value:peerDestination];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  messageName = [(HMMMClientResponseHandlerOptions *)self messageName];
  v8 = [v6 initWithName:@"MessageName" value:messageName];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (HMMMClientResponseHandlerOptions)initWithPeerDestination:(id)destination messageName:(id)name
{
  destinationCopy = destination;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HMMMClientResponseHandlerOptions;
  v9 = [(HMMMClientResponseHandlerOptions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_peerDestination, destination);
    objc_storeStrong(&v10->_messageName, name);
  }

  return v10;
}

@end