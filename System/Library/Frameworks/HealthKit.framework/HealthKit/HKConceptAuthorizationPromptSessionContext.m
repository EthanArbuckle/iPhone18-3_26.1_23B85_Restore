@interface HKConceptAuthorizationPromptSessionContext
- (HKConceptAuthorizationPromptSessionContext)initWithCoder:(id)a3;
- (HKConceptAuthorizationPromptSessionContext)initWithConceptsRequiringAuthorization:(id)a3;
@end

@implementation HKConceptAuthorizationPromptSessionContext

- (HKConceptAuthorizationPromptSessionContext)initWithConceptsRequiringAuthorization:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKConceptAuthorizationPromptSessionContext;
  v5 = [(HKConceptAuthorizationPromptSessionContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    userAnnotatedMedications = v5->_userAnnotatedMedications;
    v5->_userAnnotatedMedications = v6;
  }

  return v5;
}

- (HKConceptAuthorizationPromptSessionContext)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKConceptAuthorizationPromptSessionContext;
  v5 = [(HKConceptAuthorizationPromptSessionContext *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MedicationsRequiringAuthorization"];
    userAnnotatedMedications = v5->_userAnnotatedMedications;
    v5->_userAnnotatedMedications = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end