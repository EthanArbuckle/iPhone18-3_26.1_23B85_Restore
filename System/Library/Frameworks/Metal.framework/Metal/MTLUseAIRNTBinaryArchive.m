@interface MTLUseAIRNTBinaryArchive
@end

@implementation MTLUseAIRNTBinaryArchive

const char *___MTLUseAIRNTBinaryArchive_block_invoke()
{
  result = getenv("MTL_USE_AIRNT_BA");
  if (result)
  {
    _MTLUseAIRNTBinaryArchive::envVarSet = 1;
    result = strtol(result, 0, 0);
    _MTLUseAIRNTBinaryArchive::useAIRNTArchive = result != 0;
  }

  return result;
}

@end