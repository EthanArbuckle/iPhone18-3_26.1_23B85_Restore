@interface HKObjectAuthorizationPromptSessionMetadata
- (HKObjectAuthorizationPromptSessionMetadata)initWithCoder:(id)a3;
- (HKObjectAuthorizationPromptSessionMetadata)initWithExpectedObjectType:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKObjectAuthorizationPromptSessionMetadata

- (HKObjectAuthorizationPromptSessionMetadata)initWithExpectedObjectType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKObjectAuthorizationPromptSessionMetadata;
  v6 = [(HKObjectAuthorizationPromptSessionMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_expectedObjectType, a3);
  }

  return v7;
}

- (HKObjectAuthorizationPromptSessionMetadata)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKObjectAuthorizationPromptSessionMetadata;
  v5 = [(HKObjectAuthorizationPromptSessionMetadata *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExpectedObjectType"];
    expectedObjectType = v5->_expectedObjectType;
    v5->_expectedObjectType = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"RecordTypes"];
    recordTypes = v5->_recordTypes;
    v5->_recordTypes = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  expectedObjectType = self->_expectedObjectType;
  v5 = a3;
  [v5 encodeObject:expectedObjectType forKey:@"ExpectedObjectType"];
  [v5 encodeObject:self->_recordTypes forKey:@"RecordTypes"];
}

@end