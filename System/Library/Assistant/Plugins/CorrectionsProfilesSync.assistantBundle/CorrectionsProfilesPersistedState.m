@interface CorrectionsProfilesPersistedState
- (CorrectionsProfilesPersistedState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CorrectionsProfilesPersistedState

- (void)encodeWithCoder:(id)a3
{
  digest = self->_digest;
  v5 = a3;
  [v5 encodeObject:digest forKey:@"digest"];
  [v5 encodeObject:self->_correctionsProfiles forKey:@"correctionsProfiles"];
}

- (CorrectionsProfilesPersistedState)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CorrectionsProfilesPersistedState;
  v5 = [(CorrectionsProfilesPersistedState *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"digest"];
    digest = v5->_digest;
    v5->_digest = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"correctionsProfiles"];
    correctionsProfiles = v5->_correctionsProfiles;
    v5->_correctionsProfiles = v12;
  }

  return v5;
}

@end