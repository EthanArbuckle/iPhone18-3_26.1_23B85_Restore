@interface HMMMClientResponseHandlerOptions
- (HMMMClientResponseHandlerOptions)initWithPeerDestination:(id)a3 messageName:(id)a4;
- (id)attributeDescriptions;
@end

@implementation HMMMClientResponseHandlerOptions

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMMMClientResponseHandlerOptions *)self peerDestination];
  v5 = [v3 initWithName:@"PeerDestination" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMMMClientResponseHandlerOptions *)self messageName];
  v8 = [v6 initWithName:@"MessageName" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (HMMMClientResponseHandlerOptions)initWithPeerDestination:(id)a3 messageName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMMClientResponseHandlerOptions;
  v9 = [(HMMMClientResponseHandlerOptions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_peerDestination, a3);
    objc_storeStrong(&v10->_messageName, a4);
  }

  return v10;
}

@end