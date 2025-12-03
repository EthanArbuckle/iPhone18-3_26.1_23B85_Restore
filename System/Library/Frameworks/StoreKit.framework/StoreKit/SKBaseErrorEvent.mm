@interface SKBaseErrorEvent
- (BOOL)canCreatePayload;
- (id)createPayload;
@end

@implementation SKBaseErrorEvent

- (BOOL)canCreatePayload
{
  primaryError = [(SKBaseErrorEvent *)self primaryError];
  v3 = primaryError != 0;

  return v3;
}

- (id)createPayload
{
  if ([(SKBaseErrorEvent *)self canCreatePayload])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    sk_SHA1Hash = [bundleIdentifier sk_SHA1Hash];
    [v3 setObject:sk_SHA1Hash forKeyedSubscript:0x1F29BE360];

    inAppPurchaseID = [(SKBaseErrorEvent *)self inAppPurchaseID];
    sk_SHA1Hash2 = [inAppPurchaseID sk_SHA1Hash];
    [v3 setObject:sk_SHA1Hash2 forKeyedSubscript:0x1F29BE3C0];

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SKBaseErrorEvent userAction](self, "userAction")}];
    [v3 setObject:v9 forKeyedSubscript:0x1F29BE520];

    primaryError = [(SKBaseErrorEvent *)self primaryError];

    if (primaryError)
    {
      primaryError2 = [(SKBaseErrorEvent *)self primaryError];
      userInfo = [primaryError2 userInfo];
      v13 = [userInfo objectForKeyedSubscript:0x1F29BE300];
      [v3 setObject:v13 forKeyedSubscript:0x1F29BE540];

      primaryError3 = [(SKBaseErrorEvent *)self primaryError];
      userInfo2 = [primaryError3 userInfo];
      v16 = [userInfo2 objectForKeyedSubscript:0x1F29BE320];
      [v3 setObject:v16 forKeyedSubscript:0x1F29BE3A0];

      primaryError4 = [(SKBaseErrorEvent *)self primaryError];
      userInfo3 = [primaryError4 userInfo];
      v19 = [userInfo3 objectForKeyedSubscript:0x1F29BE340];
      [v3 setObject:v19 forKeyedSubscript:0x1F29BE500];

      v20 = MEMORY[0x1E696AD98];
      primaryError5 = [(SKBaseErrorEvent *)self primaryError];
      v22 = [v20 numberWithInteger:{objc_msgSend(primaryError5, "code")}];
      [v3 setObject:v22 forKeyedSubscript:0x1F29BE440];

      primaryError6 = [(SKBaseErrorEvent *)self primaryError];
      domain = [primaryError6 domain];
      [v3 setObject:domain forKeyedSubscript:0x1F29BE460];
    }

    primaryError7 = [(SKBaseErrorEvent *)self primaryError];
    underlyingErrors = [primaryError7 underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    if (firstObject)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(firstObject, "code")}];
      [v3 setObject:v28 forKeyedSubscript:0x1F29BE480];

      domain2 = [firstObject domain];
      [v3 setObject:domain2 forKeyedSubscript:0x1F29BE4A0];
    }

    underlyingErrors2 = [firstObject underlyingErrors];
    firstObject2 = [underlyingErrors2 firstObject];

    if (firstObject2)
    {
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(firstObject2, "code")}];
      [v3 setObject:v32 forKeyedSubscript:0x1F29BE4C0];

      domain3 = [firstObject2 domain];
      [v3 setObject:domain3 forKeyedSubscript:0x1F29BE4E0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end