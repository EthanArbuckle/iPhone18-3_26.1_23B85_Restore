@interface SAEmergencyResponseManager
- (SAEmergencyResponseManager)init;
- (id)delegate;
- (void)dialVoiceCallToPhoneNumber:(NSString *)phoneNumber completionHandler:(void *)handler;
- (void)updateVoiceCallStatus:(int64_t)status;
@end

@implementation SAEmergencyResponseManager

- (SAEmergencyResponseManager)init
{
  v6.receiver = self;
  v6.super_class = SAEmergencyResponseManager;
  v2 = [(SAEmergencyResponseManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    client = [(SAEmergencyResponseManager *)v2 client];
    [client setEmergencyResponseClientDelegate:v3];
  }

  return v3;
}

- (void)dialVoiceCallToPhoneNumber:(NSString *)phoneNumber completionHandler:(void *)handler
{
  v6 = phoneNumber;
  v7 = handler;
  v8 = sa_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SAEmergencyResponseManager dialVoiceCallToPhoneNumber:v6 completionHandler:v8];
  }

  client = [(SAEmergencyResponseManager *)self client];
  [client dialVoiceCallToPhoneNumber:v6 completionHandler:v7];
}

- (void)updateVoiceCallStatus:(int64_t)status
{
  v5 = sa_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SAEmergencyResponseManager *)status updateVoiceCallStatus:v5];
  }

  delegate = [(SAEmergencyResponseManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate emergencyResponseManager:self didUpdateVoiceCallStatus:status];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dialVoiceCallToPhoneNumber:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SAEmergencyResponseManager dialVoiceCallToPhoneNumber:completionHandler:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_DEBUG, "%s, phoneNumber: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateVoiceCallStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[SAEmergencyResponseManager updateVoiceCallStatus:]";
  v5 = 2048;
  v6 = a1;
  _os_log_debug_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_DEBUG, "%s, status: %ld", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end