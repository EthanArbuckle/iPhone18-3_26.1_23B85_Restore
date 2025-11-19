@interface InitiateAuthTimeoutSysdiagnose
@end

@implementation InitiateAuthTimeoutSysdiagnose

void __acc_sysdiagnose_InitiateAuthTimeoutSysdiagnose_block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "acc_sysdiagnose_InitiateAuthTimeoutSysdiagnose_block_invoke";
    v3 = 1024;
    v4 = 79;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d", &v1, 0x12u);
  }

  _acc_sysdiagnose_authFailure(1);
  _isSysdiagnosePending = 0;
  v0 = *MEMORY[0x277D85DE8];
}

@end