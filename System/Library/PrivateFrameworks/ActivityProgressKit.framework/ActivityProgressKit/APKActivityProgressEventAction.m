@interface APKActivityProgressEventAction
- (APKActivityProgressEventAction)initWithType:(int64_t)a3 title:(id)a4 buttons:(id)a5 buttonToResults:(id)a6 handler:(id)a7;
- (NSArray)buttons;
- (NSString)title;
- (id)buttonToResults;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (int64_t)event;
- (void)handleButtonTap:(id)a3;
@end

@implementation APKActivityProgressEventAction

- (APKActivityProgressEventAction)initWithType:(int64_t)a3 title:(id)a4 buttons:(id)a5 buttonToResults:(id)a6 handler:(id)a7
{
  v12 = a7;
  v13 = MEMORY[0x277CF0C80];
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = objc_alloc_init(v13);
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v17 setObject:v18 forSetting:1];

  [v17 setObject:v16 forSetting:2];
  [v17 setObject:v15 forSetting:3];

  [v17 setObject:v14 forSetting:4];
  v19 = MEMORY[0x277CF0B60];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __85__APKActivityProgressEventAction_initWithType_title_buttons_buttonToResults_handler___block_invoke;
  v25[3] = &unk_27842AF48;
  v26 = v12;
  v20 = v12;
  v21 = [v19 responderWithHandler:v25];
  v24.receiver = self;
  v24.super_class = APKActivityProgressEventAction;
  v22 = [(APKActivityProgressEventAction *)&v24 initWithInfo:v17 responder:v21];

  return v22;
}

void __85__APKActivityProgressEventAction_initWithType_title_buttons_buttonToResults_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v4 = [v3 objectForSetting:5];

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 integerValue]);
}

- (void)handleButtonTap:(id)a3
{
  v8 = a3;
  if ([(APKActivityProgressEventAction *)self isValid]&& [(APKActivityProgressEventAction *)self canSendResponse])
  {
    v4 = objc_alloc_init(MEMORY[0x277CF0C80]);
    v5 = [(APKActivityProgressEventAction *)self buttonToResults];
    v6 = [v5 objectForKey:v8];

    [v4 setObject:v6 forSetting:5];
    v7 = [objc_alloc(MEMORY[0x277CF0B68]) initWithInfo:v4 error:0];
    [(APKActivityProgressEventAction *)self sendResponse:v7];
  }
}

- (int64_t)event
{
  v2 = [(APKActivityProgressEventAction *)self info];
  v3 = [v2 objectForSetting:1];

  v4 = [v3 integerValue];
  return v4;
}

- (NSString)title
{
  v2 = [(APKActivityProgressEventAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (id)buttonToResults
{
  v2 = [(APKActivityProgressEventAction *)self info];
  v3 = [v2 objectForSetting:4];

  return v3;
}

- (NSArray)buttons
{
  v2 = [(APKActivityProgressEventAction *)self info];
  v3 = [v2 objectForSetting:3];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27842AF68[a3 - 1];
  }
}

@end