@interface LSIsCurrentProcessSandboxed
@end

@implementation LSIsCurrentProcessSandboxed

void ___LSIsCurrentProcessSandboxed_block_invoke()
{
  if (_LSGetAuditTokenForSelf::once != -1)
  {
    _LSGetAuditTokenForSelf_cold_1();
  }

  v1 = _LSGetAuditTokenForSelf::result;

  _LSIsAuditTokenSandboxed(v1, &_LSIsCurrentProcessSandboxed::sSandbox, &_LSIsCurrentProcessSandboxed::sAppSandbox);
}

@end