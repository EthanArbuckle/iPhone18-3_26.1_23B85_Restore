@interface FKBackgroundRefreshConfirmationPromptDecision
- (BOOL)isEqual:(id)equal;
- (FKBackgroundRefreshConfirmationPromptDecision)initWithShouldShowPrompt:(BOOL)prompt token:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKBackgroundRefreshConfirmationPromptDecision

- (FKBackgroundRefreshConfirmationPromptDecision)initWithShouldShowPrompt:(BOOL)prompt token:(id)token
{
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = FKBackgroundRefreshConfirmationPromptDecision;
  v7 = [(FKBackgroundRefreshConfirmationPromptDecision *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_shouldShowPrompt = prompt;
    v9 = [tokenCopy copy];
    token = v8->_token;
    v8->_token = v9;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FKBackgroundRefreshConfirmationPromptDecision alloc];
  shouldShowPrompt = self->_shouldShowPrompt;
  token = self->_token;

  return [(FKBackgroundRefreshConfirmationPromptDecision *)v4 initWithShouldShowPrompt:shouldShowPrompt token:token];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldShowPrompt];
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_token];
  v5 = FKCombinedHash(17, v3);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_shouldShowPrompt == v5->_shouldShowPrompt)
  {
    v6 = FKEqualObjects(self->_token, v5->_token);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end