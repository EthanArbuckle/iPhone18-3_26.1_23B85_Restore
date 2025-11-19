@interface ASMessageQueue
- (ASMessageQueue)initWithQueueName:(id)a3;
- (void)_synchronizePreferences;
- (void)dealloc;
- (void)enumerateQueuedMessagesUsingBlock:(id)a3;
- (void)removeMessageWithIdentifier:(id)a3;
- (void)setMessage:(id)a3 identifier:(id)a4;
@end

@implementation ASMessageQueue

- (ASMessageQueue)initWithQueueName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASMessageQueue;
  v5 = [(ASMessageQueue *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_domainName = *MEMORY[0x277CE91F8];
    v5->_queueName = [v4 copy];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    identifierToMessageDictionary = v6->_identifierToMessageDictionary;
    v6->_identifierToMessageDictionary = v7;

    CFPreferencesAppSynchronize(v6->_domainName);
    v9 = CFPreferencesCopyAppValue(v6->_queueName, v6->_domainName);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __36__ASMessageQueue_initWithQueueName___block_invoke;
      v12[3] = &unk_278C4C070;
      v13 = v6;
      [v9 enumerateKeysAndObjectsUsingBlock:v12];
    }

    else if (v9)
    {
      ASLoggingInitialize();
      v10 = *MEMORY[0x277CE9008];
      if (os_log_type_enabled(*MEMORY[0x277CE9008], OS_LOG_TYPE_ERROR))
      {
        [(ASMessageQueue *)v4 initWithQueueName:v10];
      }
    }
  }

  return v6;
}

void __36__ASMessageQueue_initWithQueueName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[ASMessage alloc] initWithDictionary:v5];

  [*(*(a1 + 32) + 8) setObject:v7 forKeyedSubscript:v6];
}

- (void)dealloc
{
  CFRelease(self->_queueName);
  v3.receiver = self;
  v3.super_class = ASMessageQueue;
  [(ASMessageQueue *)&v3 dealloc];
}

- (void)enumerateQueuedMessagesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_identifierToMessageDictionary copy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ASMessageQueue_enumerateQueuedMessagesUsingBlock___block_invoke;
  v7[3] = &unk_278C4C098;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)setMessage:(id)a3 identifier:(id)a4
{
  [(NSMutableDictionary *)self->_identifierToMessageDictionary setObject:a3 forKey:a4];

  [(ASMessageQueue *)self _synchronizePreferences];
}

- (void)removeMessageWithIdentifier:(id)a3
{
  [(NSMutableDictionary *)self->_identifierToMessageDictionary removeObjectForKey:a3];

  [(ASMessageQueue *)self _synchronizePreferences];
}

- (void)_synchronizePreferences
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  identifierToMessageDictionary = self->_identifierToMessageDictionary;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__ASMessageQueue__synchronizePreferences__block_invoke;
  v6[3] = &unk_278C4C0C0;
  v7 = v3;
  v5 = v3;
  [(NSMutableDictionary *)identifierToMessageDictionary enumerateKeysAndObjectsUsingBlock:v6];
  CFPreferencesSetAppValue(self->_queueName, v5, self->_domainName);
  CFPreferencesAppSynchronize(self->_domainName);
}

void __41__ASMessageQueue__synchronizePreferences__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)initWithQueueName:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_error_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_ERROR, "Error parsing message queue with name %{public}@, serialized data is not a dictionary (%{public}@)", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end