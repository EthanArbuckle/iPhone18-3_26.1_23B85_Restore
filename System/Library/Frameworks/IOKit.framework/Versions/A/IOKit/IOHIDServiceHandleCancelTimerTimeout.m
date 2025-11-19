@interface IOHIDServiceHandleCancelTimerTimeout
@end

@implementation IOHIDServiceHandleCancelTimerTimeout

void ____IOHIDServiceHandleCancelTimerTimeout_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((IOHIDServiceFilterGetStateMask(a2) & 3) == 1)
  {
    v4 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      ____IOHIDServiceHandleCancelTimerTimeout_block_invoke_cold_1(a2, a1, v4);
    }
  }
}

void ____IOHIDServiceHandleCancelTimerTimeout_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_fault_impl(&dword_197195000, log, OS_LOG_TYPE_FAULT, "Service filter %@ never called cancel handler for service %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end