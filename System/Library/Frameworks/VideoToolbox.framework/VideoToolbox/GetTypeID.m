@interface GetTypeID
@end

@implementation GetTypeID

uint64_t __vtcss_cscr_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  vtcss_cscr_GetTypeID_sTypeID = result;
  return result;
}

uint64_t __dssxpc_dscr_GetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  dssxpc_dscr_GetTypeID_sTypeID = result;
  return result;
}

@end