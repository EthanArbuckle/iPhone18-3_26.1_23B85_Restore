@interface HKObjectAuthorizationPromptSessionContext
- (HKObjectAuthorizationPromptSessionContext)initWithCoder:(id)coder;
- (HKObjectAuthorizationPromptSessionContext)initWithSamplesRequiringAuthorization:(id)authorization metadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKObjectAuthorizationPromptSessionContext

- (HKObjectAuthorizationPromptSessionContext)initWithSamplesRequiringAuthorization:(id)authorization metadata:(id)metadata
{
  authorizationCopy = authorization;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = HKObjectAuthorizationPromptSessionContext;
  v8 = [(HKObjectAuthorizationPromptSessionContext *)&v14 init];
  if (v8)
  {
    v9 = [authorizationCopy copy];
    samplesRequiringAuthorization = v8->_samplesRequiringAuthorization;
    v8->_samplesRequiringAuthorization = v9;

    v11 = [metadataCopy copy];
    metadata = v8->_metadata;
    v8->_metadata = v11;
  }

  return v8;
}

- (HKObjectAuthorizationPromptSessionContext)initWithCoder:(id)coder
{
  v16[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKObjectAuthorizationPromptSessionContext;
  v5 = [(HKObjectAuthorizationPromptSessionContext *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"SamplesRequiringAuthorization"];
    samplesRequiringAuthorization = v5->_samplesRequiringAuthorization;
    v5->_samplesRequiringAuthorization = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  samplesRequiringAuthorization = self->_samplesRequiringAuthorization;
  coderCopy = coder;
  [coderCopy encodeObject:samplesRequiringAuthorization forKey:@"SamplesRequiringAuthorization"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
}

@end