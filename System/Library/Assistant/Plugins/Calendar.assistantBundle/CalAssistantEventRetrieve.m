@interface CalAssistantEventRetrieve
- (void)performWithCompletion:(id)a3;
@end

@implementation CalAssistantEventRetrieve

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  sub_2334B11EC();
  v5 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B41F8(v5);
  }

  v6 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
  {
    sub_2334B42A0(v6);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = MEMORY[0x277CC5A40];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2334B008C;
  v13[3] = &unk_2789D8658;
  v13[4] = self;
  v14 = v7;
  v15 = v4;
  v9 = v4;
  v10 = v7;
  objc_msgSend__ca_performBlock_(v8, v11, v13, v12);
}

@end