@interface SLAssistantFacebookPost
- (id)session;
- (void)dealloc;
- (void)performCreateWithObject:(id)object completion:(id)completion;
- (void)performPostRequestWithObject:(id)object completion:(id)completion;
@end

@implementation SLAssistantFacebookPost

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SLAssistantFacebookPost;
  [(SLAssistantFacebookPost *)&v3 dealloc];
}

- (id)session
{
  result = self->_session;
  if (!result)
  {
    result = objc_alloc_init(SLFacebookSession);
    self->_session = result;
  }

  return result;
}

- (void)performCreateWithObject:(id)object completion:(id)completion
{
  if ([ACAccountStore accountsWithAccountTypeIdentifierExist:ACAccountTypeIdentifierFacebook]== 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[SACommandFailed commandFailedWithErrorCode:?]];
  }

  v6 = *(completion + 2);

  v6(completion, v5);
}

- (void)performPostRequestWithObject:(id)object completion:(id)completion
{
  identifier = [object identifier];
  objc_opt_class();
  if (((objc_opt_isKindOfClass() & 1) != 0 || (v6 = +[SACommandFailed commandFailedWithReason:](SACommandFailed, "commandFailedWithReason:", @"Received object of the wrong type.")) == 0) && ([identifier content] || (v6 = +[SACommandFailed commandFailedWithReason:](SACommandFailed, "commandFailedWithReason:", @"No string to send.")) == 0))
  {
    v7 = *(completion + 2);
    dictionary = &__NSDictionary0__struct;
  }

  else
  {
    dictionary = [(SACommandFailed *)v6 dictionary];
    v7 = *(completion + 2);
  }

  v7(completion, dictionary);
}

@end