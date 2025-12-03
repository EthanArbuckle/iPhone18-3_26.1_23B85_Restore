@interface ATXInterruptionManagerContactSuggestions
- (ATXInterruptionManagerContactSuggestions)init;
- (ATXInterruptionManagerContactSuggestions)initWithCoder:(id)coder;
- (ATXInterruptionManagerContactSuggestions)initWithRecommendedContacts:(id)contacts candidateContacts:(id)candidateContacts;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInterruptionManagerContactSuggestions

- (ATXInterruptionManagerContactSuggestions)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXInterruptionManagerContactSuggestions *)self initWithRecommendedContacts:v3 candidateContacts:v4];

  return v5;
}

- (ATXInterruptionManagerContactSuggestions)initWithRecommendedContacts:(id)contacts candidateContacts:(id)candidateContacts
{
  contactsCopy = contacts;
  candidateContactsCopy = candidateContacts;
  v12.receiver = self;
  v12.super_class = ATXInterruptionManagerContactSuggestions;
  v9 = [(ATXInterruptionManagerContactSuggestions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recommendedContacts, contacts);
    objc_storeStrong(&v10->_candidateContacts, candidateContacts);
  }

  return v10;
}

- (id)debugDescription
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"recommendedContacts";
  v6[1] = @"candidateContacts";
  candidateContacts = self->_candidateContacts;
  v7[0] = self->_recommendedContacts;
  v7[1] = candidateContacts;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = [v3 debugDescription];

  return v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"recommendedContacts: %@ candidateContacts: %@", self->_recommendedContacts, self->_candidateContacts];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  recommendedContacts = self->_recommendedContacts;
  coderCopy = coder;
  [coderCopy encodeObject:recommendedContacts forKey:@"codingKeyForRecommendedContacts"];
  [coderCopy encodeObject:self->_candidateContacts forKey:@"codingKeyForCandidateContacts"];
}

- (ATXInterruptionManagerContactSuggestions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = __atxlog_handle_notification_management();
  v11 = [v5 robustDecodeObjectOfClasses:v9 forKey:@"codingKeyForRecommendedContacts" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.ATXInterruptionManagerContactSuggestions" errorCode:-1 logHandle:v10];

  error = [coderCopy error];

  v13 = 0;
  if (!error)
  {
    v14 = MEMORY[0x1E69C5D78];
    v15 = objc_autoreleasePoolPush();
    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = objc_opt_class();
    v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v15);
    v19 = __atxlog_handle_notification_management();
    v20 = [v14 robustDecodeObjectOfClasses:v18 forKey:@"codingKeyForCandidateContacts" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.ATXInterruptionManagerContactSuggestions" errorCode:-1 logHandle:v19];

    error2 = [coderCopy error];

    v13 = 0;
    if (!error2)
    {
      v13 = [[ATXInterruptionManagerContactSuggestions alloc] initWithRecommendedContacts:v11 candidateContacts:v20];
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXInterruptionManagerContactSuggestions allocWithZone:zone];
  v5 = [(NSMutableArray *)self->_recommendedContacts mutableCopy];
  v6 = [(NSMutableArray *)self->_candidateContacts mutableCopy];
  v7 = [(ATXInterruptionManagerContactSuggestions *)v4 initWithRecommendedContacts:v5 candidateContacts:v6];

  return v7;
}

@end