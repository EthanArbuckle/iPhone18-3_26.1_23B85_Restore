@interface CFDiskArbitration
@end

@implementation CFDiskArbitration

void *____CFDiskArbitration_DASessionCreate_block_invoke()
{
  result = _CFLookupDiskArbitrationFunction("DASessionCreate");
  _MergedGlobals = result;
  return result;
}

void *____CFDiskArbitration_DARegisterDiskAppearedCallback_block_invoke()
{
  result = _CFLookupDiskArbitrationFunction("DARegisterDiskAppearedCallback");
  qword_1ED40B0F0 = result;
  return result;
}

void *____CFDiskArbitration_DADiskCopyDescription_block_invoke()
{
  result = _CFLookupDiskArbitrationFunction("DADiskCopyDescription");
  __CFDiskArbitration_DADiskCopyDescription_dyfunc = result;
  return result;
}

void *____CFDiskArbitration_DARegisterDiskDescriptionChangedCallback_block_invoke()
{
  result = _CFLookupDiskArbitrationFunction("DARegisterDiskDescriptionChangedCallback");
  qword_1ED40B0F8 = result;
  return result;
}

void *____CFDiskArbitration_DARegisterDiskDisappearedCallback_block_invoke()
{
  result = _CFLookupDiskArbitrationFunction("DARegisterDiskDisappearedCallback");
  qword_1ED40B100 = result;
  return result;
}

void *____CFDiskArbitration_DARegisterDiskUnmountApprovalCallback_block_invoke()
{
  result = _CFLookupDiskArbitrationFunction("DARegisterDiskUnmountApprovalCallback");
  qword_1ED40B108 = result;
  return result;
}

void *____CFDiskArbitration_DARegisterIdleCallback_block_invoke()
{
  result = _CFLookupDiskArbitrationFunction("DARegisterIdleCallback");
  off_1ED40B110 = result;
  return result;
}

void *____CFDiskArbitration_DASessionSetDispatchQueue_block_invoke()
{
  result = _CFLookupDiskArbitrationFunction("DASessionSetDispatchQueue");
  __CFDiskArbitration_DASessionSetDispatchQueue_dyfunc = result;
  return result;
}

@end