@interface CNContactAddAddressingGrammarAction
+ (id)os_log;
- (void)performActionWithSender:(id)sender;
- (void)pronounPickerViewController:(id)controller didFinishWithTermOfAddress:(id)address;
- (void)pronounPickerViewControllerDidCancel:(id)cancel;
@end

@implementation CNContactAddAddressingGrammarAction

+ (id)os_log
{
  if (os_log_cn_once_token_1_1952 != -1)
  {
    dispatch_once(&os_log_cn_once_token_1_1952, &__block_literal_global_1953);
  }

  v3 = os_log_cn_once_object_1_1954;

  return v3;
}

uint64_t __45__CNContactAddAddressingGrammarAction_os_log__block_invoke()
{
  os_log_cn_once_object_1_1954 = os_log_create("com.apple.contactsui", "CNContactAddAddressingGrammarAction");

  return MEMORY[0x1EEE66BB8]();
}

- (void)pronounPickerViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  [(CNContactAddAddressingGrammarAction *)self setSelectedAddressingGrammar:0];
  delegate = [(CNContactAction *)self delegate];
  [delegate actionWasCanceled:self];

  delegate2 = [(CNContactAction *)self delegate];
  [delegate2 action:self dismissViewController:cancelCopy sender:self];
}

- (void)pronounPickerViewController:(id)controller didFinishWithTermOfAddress:(id)address
{
  addressCopy = address;
  controllerCopy = controller;
  if ([addressCopy isUnspecified])
  {
    v7 = 0;
  }

  else
  {
    v7 = addressCopy;
  }

  [(CNContactAddAddressingGrammarAction *)self setSelectedAddressingGrammar:v7];
  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];

  delegate2 = [(CNContactAction *)self delegate];
  [delegate2 action:self dismissViewController:controllerCopy sender:self];
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  [(CNContactAddAddressingGrammarAction *)self setSelectedAddressingGrammar:0];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getIPPronounPickerViewControllerClass_softClass;
  v13 = getIPPronounPickerViewControllerClass_softClass;
  if (!getIPPronounPickerViewControllerClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getIPPronounPickerViewControllerClass_block_invoke;
    v9[3] = &unk_1E74E7518;
    v9[4] = &v10;
    __getIPPronounPickerViewControllerClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [v5 pronounPickerViewControllerWithDelegate:self];
  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v7 sender:senderCopy];
}

@end