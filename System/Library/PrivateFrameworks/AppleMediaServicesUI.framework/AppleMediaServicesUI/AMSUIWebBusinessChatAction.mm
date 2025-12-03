@interface AMSUIWebBusinessChatAction
- (AMSUIWebBusinessChatAction)initWithJSObject:(id)object context:(id)context;
- (id)makeBusinessChatDeeplink;
- (id)runAction;
@end

@implementation AMSUIWebBusinessChatAction

- (AMSUIWebBusinessChatAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = AMSUIWebBusinessChatAction;
  v7 = [(AMSUIWebAction *)&v21 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"body"];
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

    v11 = [objectCopy objectForKeyedSubscript:@"businessID"];
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

    v14 = [objectCopy objectForKeyedSubscript:@"businessGroupID"];
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

    v17 = [objectCopy objectForKeyedSubscript:@"intentID"];
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
  runAction = [(AMSUIWebAction *)&v13 runAction];
  businessID = [(AMSUIWebBusinessChatAction *)self businessID];

  if (!businessID)
  {
    v9 = MEMORY[0x1E698CAD0];
    makeBusinessChatDeeplink = AMSError();
    v8 = [v9 promiseWithError:makeBusinessChatDeeplink];
    goto LABEL_6;
  }

  makeBusinessChatDeeplink = [(AMSUIWebBusinessChatAction *)self makeBusinessChatDeeplink];
  if (makeBusinessChatDeeplink)
  {
    v6 = [MEMORY[0x1E698CA98] openStandardURL:makeBusinessChatDeeplink];
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
  array = [MEMORY[0x1E695DF70] array];
  businessID = [(AMSUIWebBusinessChatAction *)self businessID];

  if (businessID)
  {
    v6 = MEMORY[0x1E696AEC0];
    businessID2 = [(AMSUIWebBusinessChatAction *)self businessID];
    v8 = [v6 stringWithFormat:@"urn:biz:%@", businessID2];

    v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"recipient" value:v8];
    [array addObject:v9];
  }

  businessGroupID = [(AMSUIWebBusinessChatAction *)self businessGroupID];

  if (businessGroupID)
  {
    v11 = MEMORY[0x1E696AF60];
    businessGroupID2 = [(AMSUIWebBusinessChatAction *)self businessGroupID];
    v13 = [v11 queryItemWithName:@"bizgroup-id" value:businessGroupID2];
    [array addObject:v13];
  }

  intentID = [(AMSUIWebBusinessChatAction *)self intentID];

  if (intentID)
  {
    v15 = MEMORY[0x1E696AF60];
    intentID2 = [(AMSUIWebBusinessChatAction *)self intentID];
    v17 = [v15 queryItemWithName:@"biz-intent-id" value:intentID2];
    [array addObject:v17];
  }

  body = [(AMSUIWebBusinessChatAction *)self body];

  if (body)
  {
    v19 = MEMORY[0x1E696AF60];
    body2 = [(AMSUIWebBusinessChatAction *)self body];
    v21 = [v19 queryItemWithName:@"body" value:body2];
    [array addObject:v21];
  }

  [v3 setQueryItems:array];
  v22 = [v3 URL];

  return v22;
}

@end