@interface HKAuthorizationPresentationRequest
- (HKAuthorizationPresentationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAuthorizationPresentationRequest

- (HKAuthorizationPresentationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = HKAuthorizationPresentationRequest;
  v5 = [(HKAuthorizationPresentationRequest *)&v19 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_Type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ReadUsageDescription"];
    readUsageDescription = v5->_readUsageDescription;
    v5->_readUsageDescription = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ShareUsageDescription"];
    shareUsageDescription = v5->_shareUsageDescription;
    v5->_shareUsageDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ResearchStudyUsageDescription"];
    researchStudyUsageDescription = v5->_researchStudyUsageDescription;
    v5->_researchStudyUsageDescription = v10;

    v12 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_TypesRequiringReadAuthorization"];
    typesRequiringReadAuthorization = v5->_typesRequiringReadAuthorization;
    v5->_typesRequiringReadAuthorization = v13;

    v15 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"_TypesRequiringShareAuthorization"];
    typesRequiringShareAuthorization = v5->_typesRequiringShareAuthorization;
    v5->_typesRequiringShareAuthorization = v16;

    v5->_dismissWhenBackgrounded = [coderCopy decodeBoolForKey:@"_ShouldDismissWhenBackgrounded"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"_Type"];
  [coderCopy encodeObject:self->_readUsageDescription forKey:@"_ReadUsageDescription"];
  [coderCopy encodeObject:self->_shareUsageDescription forKey:@"_ShareUsageDescription"];
  [coderCopy encodeObject:self->_researchStudyUsageDescription forKey:@"_ResearchStudyUsageDescription"];
  [coderCopy encodeObject:self->_typesRequiringReadAuthorization forKey:@"_TypesRequiringReadAuthorization"];
  [coderCopy encodeObject:self->_typesRequiringShareAuthorization forKey:@"_TypesRequiringShareAuthorization"];
  [coderCopy encodeBool:self->_dismissWhenBackgrounded forKey:@"_ShouldDismissWhenBackgrounded"];
}

@end