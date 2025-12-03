@interface HMMMMessageDestination
- (HMMMMessageDestination)initWithIDSIdentifier:(id)identifier idsTokenURI:(id)i;
- (id)attributeDescriptions;
@end

@implementation HMMMMessageDestination

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  idsIdentifier = [(HMMMMessageDestination *)self idsIdentifier];
  v5 = [v3 initWithName:@"IDS Identifier" value:idsIdentifier];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  idsTokenURI = [(HMMMMessageDestination *)self idsTokenURI];
  v8 = [v6 initWithName:@"IDS Token" value:idsTokenURI];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (HMMMMessageDestination)initWithIDSIdentifier:(id)identifier idsTokenURI:(id)i
{
  identifierCopy = identifier;
  iCopy = i;
  v12.receiver = self;
  v12.super_class = HMMMMessageDestination;
  v9 = [(HMMMMessageDestination *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_idsIdentifier, identifier);
    objc_storeStrong(&v10->_idsTokenURI, i);
  }

  return v10;
}

@end