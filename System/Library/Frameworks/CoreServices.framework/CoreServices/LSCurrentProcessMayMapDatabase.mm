@interface LSCurrentProcessMayMapDatabase
@end

@implementation LSCurrentProcessMayMapDatabase

uint64_t ___LSCurrentProcessMayMapDatabase_block_invoke()
{
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    result = 1;
  }

  else
  {
    if (_LSGetAuditTokenForSelf::once != -1)
    {
      _LSGetAuditTokenForSelf_cold_1();
    }

    result = _LSAuditTokenMayMapDatabase(_LSGetAuditTokenForSelf::result);
  }

  atomic_store(result, mayMapDatabase);
  return result;
}

@end