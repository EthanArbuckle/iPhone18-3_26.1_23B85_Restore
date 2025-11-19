@interface SKBaseErrorEvent
- (BOOL)canCreatePayload;
- (id)createPayload;
@end

@implementation SKBaseErrorEvent

- (BOOL)canCreatePayload
{
  v2 = [(SKBaseErrorEvent *)self primaryError];
  v3 = v2 != 0;

  return v3;
}

- (id)createPayload
{
  if ([(SKBaseErrorEvent *)self canCreatePayload])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 sk_SHA1Hash];
    [v3 setObject:v6 forKeyedSubscript:0x1F29BE360];

    v7 = [(SKBaseErrorEvent *)self inAppPurchaseID];
    v8 = [v7 sk_SHA1Hash];
    [v3 setObject:v8 forKeyedSubscript:0x1F29BE3C0];

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SKBaseErrorEvent userAction](self, "userAction")}];
    [v3 setObject:v9 forKeyedSubscript:0x1F29BE520];

    v10 = [(SKBaseErrorEvent *)self primaryError];

    if (v10)
    {
      v11 = [(SKBaseErrorEvent *)self primaryError];
      v12 = [v11 userInfo];
      v13 = [v12 objectForKeyedSubscript:0x1F29BE300];
      [v3 setObject:v13 forKeyedSubscript:0x1F29BE540];

      v14 = [(SKBaseErrorEvent *)self primaryError];
      v15 = [v14 userInfo];
      v16 = [v15 objectForKeyedSubscript:0x1F29BE320];
      [v3 setObject:v16 forKeyedSubscript:0x1F29BE3A0];

      v17 = [(SKBaseErrorEvent *)self primaryError];
      v18 = [v17 userInfo];
      v19 = [v18 objectForKeyedSubscript:0x1F29BE340];
      [v3 setObject:v19 forKeyedSubscript:0x1F29BE500];

      v20 = MEMORY[0x1E696AD98];
      v21 = [(SKBaseErrorEvent *)self primaryError];
      v22 = [v20 numberWithInteger:{objc_msgSend(v21, "code")}];
      [v3 setObject:v22 forKeyedSubscript:0x1F29BE440];

      v23 = [(SKBaseErrorEvent *)self primaryError];
      v24 = [v23 domain];
      [v3 setObject:v24 forKeyedSubscript:0x1F29BE460];
    }

    v25 = [(SKBaseErrorEvent *)self primaryError];
    v26 = [v25 underlyingErrors];
    v27 = [v26 firstObject];

    if (v27)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v27, "code")}];
      [v3 setObject:v28 forKeyedSubscript:0x1F29BE480];

      v29 = [v27 domain];
      [v3 setObject:v29 forKeyedSubscript:0x1F29BE4A0];
    }

    v30 = [v27 underlyingErrors];
    v31 = [v30 firstObject];

    if (v31)
    {
      v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v31, "code")}];
      [v3 setObject:v32 forKeyedSubscript:0x1F29BE4C0];

      v33 = [v31 domain];
      [v3 setObject:v33 forKeyedSubscript:0x1F29BE4E0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end