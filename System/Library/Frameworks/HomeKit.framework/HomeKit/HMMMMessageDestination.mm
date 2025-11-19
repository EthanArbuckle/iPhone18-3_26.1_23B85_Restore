@interface HMMMMessageDestination
- (HMMMMessageDestination)initWithIDSIdentifier:(id)a3 idsTokenURI:(id)a4;
- (id)attributeDescriptions;
@end

@implementation HMMMMessageDestination

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMMMMessageDestination *)self idsIdentifier];
  v5 = [v3 initWithName:@"IDS Identifier" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMMMMessageDestination *)self idsTokenURI];
  v8 = [v6 initWithName:@"IDS Token" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (HMMMMessageDestination)initWithIDSIdentifier:(id)a3 idsTokenURI:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMMMessageDestination;
  v9 = [(HMMMMessageDestination *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_idsIdentifier, a3);
    objc_storeStrong(&v10->_idsTokenURI, a4);
  }

  return v10;
}

@end