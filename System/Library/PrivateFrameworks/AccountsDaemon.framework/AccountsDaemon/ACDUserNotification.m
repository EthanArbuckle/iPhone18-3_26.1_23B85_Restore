@interface ACDUserNotification
+ (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 level:(unint64_t)a7 withCompletionBlock:(id)a8;
@end

@implementation ACDUserNotification

+ (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6 level:(unint64_t)a7 withCompletionBlock:(id)a8
{
  v30 = MEMORY[0x277CBEB38];
  v29 = *MEMORY[0x277CBF188];
  v28 = *MEMORY[0x277CBF198];
  v27 = *MEMORY[0x277CBF1C0];
  v26 = *MEMORY[0x277CBF1E8];
  v12 = MEMORY[0x277CCABB0];
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 numberWithBool:1];
  v19 = *MEMORY[0x277CBF1B0];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v21 = *MEMORY[0x277D67320];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v23 = [v30 dictionaryWithObjectsAndKeys:{v17, v29, v16, v28, v15, v27, v14, v26, v18, v19, v20, v21, v22, *MEMORY[0x277D67340], 0}];

  v24 = [v13 copy];
  v25 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, a7, 0, v23);
  responseFlags[0] = 0;
  CFUserNotificationReceiveResponse(v25, 0.0, responseFlags);
  (v24)[2](v24, v25, responseFlags[0]);
  if (v25)
  {
    CFRelease(v25);
  }
}

@end