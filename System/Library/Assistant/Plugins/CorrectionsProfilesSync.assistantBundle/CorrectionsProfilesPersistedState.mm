@interface CorrectionsProfilesPersistedState
- (CorrectionsProfilesPersistedState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CorrectionsProfilesPersistedState

- (void)encodeWithCoder:(id)coder
{
  digest = self->_digest;
  coderCopy = coder;
  [coderCopy encodeObject:digest forKey:@"digest"];
  [coderCopy encodeObject:self->_correctionsProfiles forKey:@"correctionsProfiles"];
}

- (CorrectionsProfilesPersistedState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CorrectionsProfilesPersistedState;
  v5 = [(CorrectionsProfilesPersistedState *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"digest"];
    digest = v5->_digest;
    v5->_digest = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"correctionsProfiles"];
    correctionsProfiles = v5->_correctionsProfiles;
    v5->_correctionsProfiles = v12;
  }

  return v5;
}

@end