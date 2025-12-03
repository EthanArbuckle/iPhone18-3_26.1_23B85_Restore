@interface EKExceptionDate
+ (id)knownIdentityKeysForComparison;
- (EKExceptionDate)initWithDate:(id)date;
- (id)description;
@end

@implementation EKExceptionDate

- (EKExceptionDate)initWithDate:(id)date
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = EKExceptionDate;
  v5 = [(EKObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EKExceptionDate *)v5 setDate:dateCopy];
  }

  return v6;
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_6 != -1)
  {
    +[EKExceptionDate knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_6;

  return v3;
}

void __49__EKExceptionDate_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992A00];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_6;
  knownIdentityKeysForComparison_keys_6 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  date = [(EKExceptionDate *)self date];
  v6 = [v3 stringWithFormat:@"%@ <%p> Date = %@", v4, self, date];

  return v6;
}

@end