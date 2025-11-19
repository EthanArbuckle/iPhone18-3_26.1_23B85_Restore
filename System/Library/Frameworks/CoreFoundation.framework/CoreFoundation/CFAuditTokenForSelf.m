@interface CFAuditTokenForSelf
@end

@implementation CFAuditTokenForSelf

uint64_t ___CFAuditTokenForSelf_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  task_info_outCnt = 8;
  result = task_info(*MEMORY[0x1E69E9A60], 0xFu, &_CFAuditTokenForSelf_auditToken, &task_info_outCnt);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end