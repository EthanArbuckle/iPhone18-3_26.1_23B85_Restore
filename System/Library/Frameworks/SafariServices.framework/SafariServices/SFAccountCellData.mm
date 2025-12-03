@interface SFAccountCellData
+ (id)accountCellDataWithSavedAccount:(id)account warning:(id)warning searchPattern:(id)pattern savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)domain;
+ (id)accountCellDataWithSavedAccount:(id)account warning:(id)warning searchPattern:(id)pattern savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)domain shouldShowReusedPasswordWarning:(BOOL)passwordWarning;
- (BOOL)isEqual:(id)equal;
- (SFAccountCellData)initWithSavedAccount:(id)account warning:(id)warning searchPattern:(id)pattern savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)domain shouldShowReusedPasswordWarning:(BOOL)passwordWarning;
@end

@implementation SFAccountCellData

+ (id)accountCellDataWithSavedAccount:(id)account warning:(id)warning searchPattern:(id)pattern savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)domain shouldShowReusedPasswordWarning:(BOOL)passwordWarning
{
  passwordWarningCopy = passwordWarning;
  domainCopy = domain;
  patternCopy = pattern;
  warningCopy = warning;
  accountCopy = account;
  v15 = [[self alloc] initWithSavedAccount:accountCopy warning:warningCopy searchPattern:patternCopy savedAccountIsOnlySavedAccountForHighLevelDomain:domainCopy shouldShowReusedPasswordWarning:passwordWarningCopy];

  return v15;
}

+ (id)accountCellDataWithSavedAccount:(id)account warning:(id)warning searchPattern:(id)pattern savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)domain
{
  domainCopy = domain;
  patternCopy = pattern;
  warningCopy = warning;
  accountCopy = account;
  v13 = [[self alloc] initWithSavedAccount:accountCopy warning:warningCopy searchPattern:patternCopy savedAccountIsOnlySavedAccountForHighLevelDomain:domainCopy shouldShowReusedPasswordWarning:0];

  return v13;
}

- (SFAccountCellData)initWithSavedAccount:(id)account warning:(id)warning searchPattern:(id)pattern savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)domain shouldShowReusedPasswordWarning:(BOOL)passwordWarning
{
  accountCopy = account;
  warningCopy = warning;
  patternCopy = pattern;
  v22.receiver = self;
  v22.super_class = SFAccountCellData;
  v16 = [(SFAccountCellData *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_savedAccount, account);
    objc_storeStrong(&v17->_warning, warning);
    v18 = [patternCopy copy];
    searchPattern = v17->_searchPattern;
    v17->_searchPattern = v18;

    v17->_savedAccountIsOnlySavedAccountForHighLevelDomain = domain;
    v17->_savedAccountHash = [accountCopy hash];
    v17->_warningHash = [warningCopy hash];
    v17->_shouldShowReusedPasswordWarning = passwordWarning;
    v20 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_savedAccountHash == v5->_savedAccountHash && self->_shouldShowReusedPasswordWarning == v5->_shouldShowReusedPasswordWarning && self->_warningHash == v5->_warningHash && WBSIsEqual() && WBSIsEqual())
      {
        v7 = WBSIsEqual();
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end