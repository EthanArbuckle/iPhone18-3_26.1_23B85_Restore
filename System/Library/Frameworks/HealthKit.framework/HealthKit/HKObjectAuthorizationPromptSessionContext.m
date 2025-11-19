@interface HKObjectAuthorizationPromptSessionContext
- (HKObjectAuthorizationPromptSessionContext)initWithCoder:(id)a3;
- (HKObjectAuthorizationPromptSessionContext)initWithSamplesRequiringAuthorization:(id)a3 metadata:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKObjectAuthorizationPromptSessionContext

- (HKObjectAuthorizationPromptSessionContext)initWithSamplesRequiringAuthorization:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKObjectAuthorizationPromptSessionContext;
  v8 = [(HKObjectAuthorizationPromptSessionContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    samplesRequiringAuthorization = v8->_samplesRequiringAuthorization;
    v8->_samplesRequiringAuthorization = v9;

    v11 = [v7 copy];
    metadata = v8->_metadata;
    v8->_metadata = v11;
  }

  return v8;
}

- (HKObjectAuthorizationPromptSessionContext)initWithCoder:(id)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"SamplesRequiringAuthorization"];
    samplesRequiringAuthorization = v5->_samplesRequiringAuthorization;
    v5->_samplesRequiringAuthorization = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  samplesRequiringAuthorization = self->_samplesRequiringAuthorization;
  v5 = a3;
  [v5 encodeObject:samplesRequiringAuthorization forKey:@"SamplesRequiringAuthorization"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
}

@end