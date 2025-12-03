@interface ATXDuetInteractionDataSource
- (ATXDuetInteractionDataSource)initWithDevice:(id)device;
- (void)duetInteractionCountForHandles:(id)handles sinceDate:(id)date callback:(id)callback;
@end

@implementation ATXDuetInteractionDataSource

- (ATXDuetInteractionDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = ATXDuetInteractionDataSource;
  v6 = [(ATXDuetInteractionDataSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = v7;
  }

  return v7;
}

- (void)duetInteractionCountForHandles:(id)handles sinceDate:(id)date callback:(id)callback
{
  v31 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  dateCopy = date;
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA398))
  {
    defaultDatabaseDirectory = [MEMORY[0x277CFE0C0] defaultDatabaseDirectory];
    v11 = [MEMORY[0x277CFE0C0] storeWithDirectory:defaultDatabaseDirectory readOnly:1];
    if (v11)
    {
      if (dateCopy)
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate > %@ AND ANY recipients.identifier IN %@", dateCopy, handlesCopy];
      }

      else
      {
        [MEMORY[0x277CCAC30] predicateWithFormat:@"ANY recipients.identifier IN %@", handlesCopy, v23];
      }
      v13 = ;
      v14 = MEMORY[0x277CCABB0];
      v24 = 0;
      v15 = [v11 countInteractionsUsingPredicate:v13 error:&v24];
      v16 = v24;
      v17 = [v14 numberWithUnsignedInteger:v15];
      v18 = __atxlog_handle_heuristic();
      v19 = v18;
      if (v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [ATXDuetInteractionDataSource duetInteractionCountForHandles:v16 sinceDate:v19 callback:?];
        }

        callbackCopy[2](callbackCopy, 0, v16);
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          unsignedIntegerValue = [v17 unsignedIntegerValue];
          v21 = [handlesCopy count];
          *buf = 134218498;
          v26 = unsignedIntegerValue;
          v27 = 2048;
          v28 = v21;
          v29 = 2114;
          v30 = dateCopy;
          _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_DEFAULT, "Got %tu interactions (direct and group interactions) from _CDInteractionStore for contact interaction with %tu handles. Since date: %{public}@", buf, 0x20u);
        }

        (callbackCopy)[2](callbackCopy, v17, 0);
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
      callbackCopy[2](callbackCopy, 0, v13);
    }
  }

  else
  {
    v12 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "Learn from app turned off for Phone, Messages or Mail", buf, 2u);
    }

    callbackCopy[2](callbackCopy, 0, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)duetInteractionCountForHandles:(uint64_t)a1 sinceDate:(NSObject *)a2 callback:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Error querying _CDInteractionStore for count of interactions with contact. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end