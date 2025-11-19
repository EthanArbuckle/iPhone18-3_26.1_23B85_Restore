@interface SADomainObjectCommit
- (id)_ad_replyCommandValue;
- (id)domainFromSADObject;
- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)a3;
@end

@implementation SADomainObjectCommit

- (id)_ad_replyCommandValue
{
  v3 = objc_alloc_init(SADomainObjectCommitCompleted);
  v4 = [(SADomainObjectCommit *)self identifier];
  v5 = [v4 identifier];
  [v3 setIdentifier:v5];

  return v3;
}

- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)a3
{
  v9 = a3;
  v4 = [(SADomainObjectCommit *)self identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(SADomainObjectCommit *)self identifier];
    v7 = [v6 af_messageValue];

    if (v7)
    {
      v8 = [[STSendDraftMessageRequest alloc] _initWithMessage:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  if (v9)
  {
    v9[2](v9, v8);
  }
}

- (id)domainFromSADObject
{
  v2 = [(SADomainObjectCommit *)self identifier];
  v3 = [v2 groupIdentifier];

  return v3;
}

@end