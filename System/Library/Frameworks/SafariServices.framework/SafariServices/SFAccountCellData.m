@interface SFAccountCellData
+ (id)accountCellDataWithSavedAccount:(id)a3 warning:(id)a4 searchPattern:(id)a5 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a6;
+ (id)accountCellDataWithSavedAccount:(id)a3 warning:(id)a4 searchPattern:(id)a5 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a6 shouldShowReusedPasswordWarning:(BOOL)a7;
- (BOOL)isEqual:(id)a3;
- (SFAccountCellData)initWithSavedAccount:(id)a3 warning:(id)a4 searchPattern:(id)a5 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a6 shouldShowReusedPasswordWarning:(BOOL)a7;
@end

@implementation SFAccountCellData

+ (id)accountCellDataWithSavedAccount:(id)a3 warning:(id)a4 searchPattern:(id)a5 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a6 shouldShowReusedPasswordWarning:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[a1 alloc] initWithSavedAccount:v14 warning:v13 searchPattern:v12 savedAccountIsOnlySavedAccountForHighLevelDomain:v8 shouldShowReusedPasswordWarning:v7];

  return v15;
}

+ (id)accountCellDataWithSavedAccount:(id)a3 warning:(id)a4 searchPattern:(id)a5 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithSavedAccount:v12 warning:v11 searchPattern:v10 savedAccountIsOnlySavedAccountForHighLevelDomain:v6 shouldShowReusedPasswordWarning:0];

  return v13;
}

- (SFAccountCellData)initWithSavedAccount:(id)a3 warning:(id)a4 searchPattern:(id)a5 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a6 shouldShowReusedPasswordWarning:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v22.receiver = self;
  v22.super_class = SFAccountCellData;
  v16 = [(SFAccountCellData *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_savedAccount, a3);
    objc_storeStrong(&v17->_warning, a4);
    v18 = [v15 copy];
    searchPattern = v17->_searchPattern;
    v17->_searchPattern = v18;

    v17->_savedAccountIsOnlySavedAccountForHighLevelDomain = a6;
    v17->_savedAccountHash = [v13 hash];
    v17->_warningHash = [v14 hash];
    v17->_shouldShowReusedPasswordWarning = a7;
    v20 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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