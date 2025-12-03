@interface ACDUserNotification
+ (void)showUserNotificationWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle level:(unint64_t)level withCompletionBlock:(id)block;
@end

@implementation ACDUserNotification

+ (void)showUserNotificationWithTitle:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle level:(unint64_t)level withCompletionBlock:(id)block
{
  v30 = MEMORY[0x277CBEB38];
  v29 = *MEMORY[0x277CBF188];
  v28 = *MEMORY[0x277CBF198];
  v27 = *MEMORY[0x277CBF1C0];
  v26 = *MEMORY[0x277CBF1E8];
  v12 = MEMORY[0x277CCABB0];
  blockCopy = block;
  otherButtonTitleCopy = otherButtonTitle;
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  v18 = [v12 numberWithBool:1];
  v19 = *MEMORY[0x277CBF1B0];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v21 = *MEMORY[0x277D67320];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v23 = [v30 dictionaryWithObjectsAndKeys:{titleCopy, v29, messageCopy, v28, buttonTitleCopy, v27, otherButtonTitleCopy, v26, v18, v19, v20, v21, v22, *MEMORY[0x277D67340], 0}];

  v24 = [blockCopy copy];
  v25 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, level, 0, v23);
  responseFlags[0] = 0;
  CFUserNotificationReceiveResponse(v25, 0.0, responseFlags);
  (v24)[2](v24, v25, responseFlags[0]);
  if (v25)
  {
    CFRelease(v25);
  }
}

@end