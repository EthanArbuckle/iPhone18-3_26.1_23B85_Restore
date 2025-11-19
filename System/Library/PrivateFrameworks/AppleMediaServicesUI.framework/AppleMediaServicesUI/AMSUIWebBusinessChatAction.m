@interface AMSUIWebBusinessChatAction
- (AMSUIWebBusinessChatAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)makeBusinessChatDeeplink;
- (id)runAction;
@end

@implementation AMSUIWebBusinessChatAction

- (AMSUIWebBusinessChatAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = AMSUIWebBusinessChatAction;
  v7 = [(AMSUIWebAction *)&v21 initWithJSObject:v6 context:a4];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"body"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    body = v7->_body;
    v7->_body = v9;

    v11 = [v6 objectForKeyedSubscript:@"businessID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    businessID = v7->_businessID;
    v7->_businessID = v12;

    v14 = [v6 objectForKeyedSubscript:@"businessGroupID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    businessGroupID = v7->_businessGroupID;
    v7->_businessGroupID = v15;

    v17 = [v6 objectForKeyedSubscript:@"intentID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    intentID = v7->_intentID;
    v7->_intentID = v18;
  }

  return v7;
}

- (id)runAction
{
  v13.receiver = self;
  v13.super_class = AMSUIWebBusinessChatAction;
  v3 = [(AMSUIWebAction *)&v13 runAction];
  v4 = [(AMSUIWebBusinessChatAction *)self businessID];

  if (!v4)
  {
    v9 = MEMORY[0x1E698CAD0];
    v5 = AMSError();
    v8 = [v9 promiseWithError:v5];
    goto LABEL_6;
  }

  v5 = [(AMSUIWebBusinessChatAction *)self makeBusinessChatDeeplink];
  if (v5)
  {
    v6 = [MEMORY[0x1E698CA98] openStandardURL:v5];
    v7 = MEMORY[0x1E698CAD0];
    if (v6)
    {
      v8 = [MEMORY[0x1E698CAD0] promiseWithResult:&unk_1F394A940];
LABEL_6:
      v10 = v8;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = MEMORY[0x1E698CAD0];
  }

  v11 = AMSError();
  v10 = [v7 promiseWithError:v11];

LABEL_9:

  return v10;
}

- (id)makeBusinessChatDeeplink
{
  v3 = [MEMORY[0x1E696AF20] componentsWithString:@"https://bcrw.apple.com/sms:open?service=iMessage"];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(AMSUIWebBusinessChatAction *)self businessID];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(AMSUIWebBusinessChatAction *)self businessID];
    v8 = [v6 stringWithFormat:@"urn:biz:%@", v7];

    v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"recipient" value:v8];
    [v4 addObject:v9];
  }

  v10 = [(AMSUIWebBusinessChatAction *)self businessGroupID];

  if (v10)
  {
    v11 = MEMORY[0x1E696AF60];
    v12 = [(AMSUIWebBusinessChatAction *)self businessGroupID];
    v13 = [v11 queryItemWithName:@"bizgroup-id" value:v12];
    [v4 addObject:v13];
  }

  v14 = [(AMSUIWebBusinessChatAction *)self intentID];

  if (v14)
  {
    v15 = MEMORY[0x1E696AF60];
    v16 = [(AMSUIWebBusinessChatAction *)self intentID];
    v17 = [v15 queryItemWithName:@"biz-intent-id" value:v16];
    [v4 addObject:v17];
  }

  v18 = [(AMSUIWebBusinessChatAction *)self body];

  if (v18)
  {
    v19 = MEMORY[0x1E696AF60];
    v20 = [(AMSUIWebBusinessChatAction *)self body];
    v21 = [v19 queryItemWithName:@"body" value:v20];
    [v4 addObject:v21];
  }

  [v3 setQueryItems:v4];
  v22 = [v3 URL];

  return v22;
}

@end