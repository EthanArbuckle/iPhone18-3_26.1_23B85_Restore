@interface HKAuthorizationPresentationRequest
- (HKAuthorizationPresentationRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAuthorizationPresentationRequest

- (HKAuthorizationPresentationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HKAuthorizationPresentationRequest;
  v5 = [(HKAuthorizationPresentationRequest *)&v19 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"_Type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ReadUsageDescription"];
    readUsageDescription = v5->_readUsageDescription;
    v5->_readUsageDescription = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ShareUsageDescription"];
    shareUsageDescription = v5->_shareUsageDescription;
    v5->_shareUsageDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ResearchStudyUsageDescription"];
    researchStudyUsageDescription = v5->_researchStudyUsageDescription;
    v5->_researchStudyUsageDescription = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_TypesRequiringReadAuthorization"];
    typesRequiringReadAuthorization = v5->_typesRequiringReadAuthorization;
    v5->_typesRequiringReadAuthorization = v13;

    v15 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"_TypesRequiringShareAuthorization"];
    typesRequiringShareAuthorization = v5->_typesRequiringShareAuthorization;
    v5->_typesRequiringShareAuthorization = v16;

    v5->_dismissWhenBackgrounded = [v4 decodeBoolForKey:@"_ShouldDismissWhenBackgrounded"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"_Type"];
  [v5 encodeObject:self->_readUsageDescription forKey:@"_ReadUsageDescription"];
  [v5 encodeObject:self->_shareUsageDescription forKey:@"_ShareUsageDescription"];
  [v5 encodeObject:self->_researchStudyUsageDescription forKey:@"_ResearchStudyUsageDescription"];
  [v5 encodeObject:self->_typesRequiringReadAuthorization forKey:@"_TypesRequiringReadAuthorization"];
  [v5 encodeObject:self->_typesRequiringShareAuthorization forKey:@"_TypesRequiringShareAuthorization"];
  [v5 encodeBool:self->_dismissWhenBackgrounded forKey:@"_ShouldDismissWhenBackgrounded"];
}

@end