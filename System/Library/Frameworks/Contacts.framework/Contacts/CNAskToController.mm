@interface CNAskToController
+ (id)logAskTo;
- (CNAskToController)init;
- (void)sendCommLimitsQuestionForHandles:(id)handles withReply:(id)reply;
@end

@implementation CNAskToController

+ (id)logAskTo
{
  if (logAskTo_cn_once_token_0 != -1)
  {
    +[CNAskToController logAskTo];
  }

  v3 = logAskTo_cn_once_object_0;

  return v3;
}

uint64_t __29__CNAskToController_logAskTo__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "askto");
  v1 = logAskTo_cn_once_object_0;
  logAskTo_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNAskToController)init
{
  v6.receiver = self;
  v6.super_class = CNAskToController;
  v2 = [(CNAskToController *)&v6 init];
  if (v2)
  {
    v3 = +[CNXPCContactsSupport sharedInstance];
    contactsSupport = v2->_contactsSupport;
    v2->_contactsSupport = v3;
  }

  return v2;
}

- (void)sendCommLimitsQuestionForHandles:(id)handles withReply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  logAskTo = [objc_opt_class() logAskTo];
  if (os_log_type_enabled(logAskTo, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"nil";
    if (handlesCopy)
    {
      v7 = handlesCopy;
    }

    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1954A0000, logAskTo, OS_LOG_TYPE_DEFAULT, "CNAskToController sendCommLimitsQuestionForHandles %@", buf, 0xCu);
  }

  contactsSupport = [(CNAskToController *)self contactsSupport];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CNAskToController_sendCommLimitsQuestionForHandles_withReply___block_invoke;
  v9[3] = &unk_1E7412FA0;
  v9[4] = self;
  [contactsSupport sendCommLimitsQuestionForHandles:handlesCopy withReply:v9];
}

void __64__CNAskToController_sendCommLimitsQuestionForHandles_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() logAskTo];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __64__CNAskToController_sendCommLimitsQuestionForHandles_withReply___block_invoke_cold_1(v2, v3);
  }
}

void __64__CNAskToController_sendCommLimitsQuestionForHandles_withReply___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Error sending comm limits question: %@", &v2, 0xCu);
}

@end