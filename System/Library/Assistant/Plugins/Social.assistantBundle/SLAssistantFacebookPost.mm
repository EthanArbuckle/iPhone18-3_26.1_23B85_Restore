@interface SLAssistantFacebookPost
- (id)session;
- (void)dealloc;
- (void)performCreateWithObject:(id)a3 completion:(id)a4;
- (void)performPostRequestWithObject:(id)a3 completion:(id)a4;
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

- (void)performCreateWithObject:(id)a3 completion:(id)a4
{
  if ([ACAccountStore accountsWithAccountTypeIdentifierExist:ACAccountTypeIdentifierFacebook]== 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[SACommandFailed commandFailedWithErrorCode:?]];
  }

  v6 = *(a4 + 2);

  v6(a4, v5);
}

- (void)performPostRequestWithObject:(id)a3 completion:(id)a4
{
  v5 = [a3 identifier];
  objc_opt_class();
  if (((objc_opt_isKindOfClass() & 1) != 0 || (v6 = +[SACommandFailed commandFailedWithReason:](SACommandFailed, "commandFailedWithReason:", @"Received object of the wrong type.")) == 0) && ([v5 content] || (v6 = +[SACommandFailed commandFailedWithReason:](SACommandFailed, "commandFailedWithReason:", @"No string to send.")) == 0))
  {
    v7 = *(a4 + 2);
    v8 = &__NSDictionary0__struct;
  }

  else
  {
    v8 = [(SACommandFailed *)v6 dictionary];
    v7 = *(a4 + 2);
  }

  v7(a4, v8);
}

@end