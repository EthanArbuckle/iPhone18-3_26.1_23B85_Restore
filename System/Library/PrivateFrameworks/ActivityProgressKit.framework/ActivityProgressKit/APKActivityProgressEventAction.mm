@interface APKActivityProgressEventAction
- (APKActivityProgressEventAction)initWithType:(int64_t)type title:(id)title buttons:(id)buttons buttonToResults:(id)results handler:(id)handler;
- (NSArray)buttons;
- (NSString)title;
- (id)buttonToResults;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (int64_t)event;
- (void)handleButtonTap:(id)tap;
@end

@implementation APKActivityProgressEventAction

- (APKActivityProgressEventAction)initWithType:(int64_t)type title:(id)title buttons:(id)buttons buttonToResults:(id)results handler:(id)handler
{
  handlerCopy = handler;
  v13 = MEMORY[0x277CF0C80];
  resultsCopy = results;
  buttonsCopy = buttons;
  titleCopy = title;
  v17 = objc_alloc_init(v13);
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v17 setObject:v18 forSetting:1];

  [v17 setObject:titleCopy forSetting:2];
  [v17 setObject:buttonsCopy forSetting:3];

  [v17 setObject:resultsCopy forSetting:4];
  v19 = MEMORY[0x277CF0B60];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __85__APKActivityProgressEventAction_initWithType_title_buttons_buttonToResults_handler___block_invoke;
  v25[3] = &unk_27842AF48;
  v26 = handlerCopy;
  v20 = handlerCopy;
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

- (void)handleButtonTap:(id)tap
{
  tapCopy = tap;
  if ([(APKActivityProgressEventAction *)self isValid]&& [(APKActivityProgressEventAction *)self canSendResponse])
  {
    v4 = objc_alloc_init(MEMORY[0x277CF0C80]);
    buttonToResults = [(APKActivityProgressEventAction *)self buttonToResults];
    v6 = [buttonToResults objectForKey:tapCopy];

    [v4 setObject:v6 forSetting:5];
    v7 = [objc_alloc(MEMORY[0x277CF0B68]) initWithInfo:v4 error:0];
    [(APKActivityProgressEventAction *)self sendResponse:v7];
  }
}

- (int64_t)event
{
  info = [(APKActivityProgressEventAction *)self info];
  v3 = [info objectForSetting:1];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (NSString)title
{
  info = [(APKActivityProgressEventAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (id)buttonToResults
{
  info = [(APKActivityProgressEventAction *)self info];
  v3 = [info objectForSetting:4];

  return v3;
}

- (NSArray)buttons
{
  info = [(APKActivityProgressEventAction *)self info];
  v3 = [info objectForSetting:3];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27842AF68[setting - 1];
  }
}

@end