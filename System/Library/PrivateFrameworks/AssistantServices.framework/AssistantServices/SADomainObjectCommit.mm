@interface SADomainObjectCommit
- (id)_ad_replyCommandValue;
- (id)domainFromSADObject;
- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)handler;
@end

@implementation SADomainObjectCommit

- (id)_ad_replyCommandValue
{
  v3 = objc_alloc_init(SADomainObjectCommitCompleted);
  identifier = [(SADomainObjectCommit *)self identifier];
  v4Identifier = [identifier identifier];
  [v3 setIdentifier:v4Identifier];

  return v3;
}

- (void)_ad_getMessagesRequestValueWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  identifier = [(SADomainObjectCommit *)self identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    identifier2 = [(SADomainObjectCommit *)self identifier];
    af_messageValue = [identifier2 af_messageValue];

    if (af_messageValue)
    {
      v8 = [[STSendDraftMessageRequest alloc] _initWithMessage:af_messageValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    af_messageValue = 0;
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8);
  }
}

- (id)domainFromSADObject
{
  identifier = [(SADomainObjectCommit *)self identifier];
  groupIdentifier = [identifier groupIdentifier];

  return groupIdentifier;
}

@end