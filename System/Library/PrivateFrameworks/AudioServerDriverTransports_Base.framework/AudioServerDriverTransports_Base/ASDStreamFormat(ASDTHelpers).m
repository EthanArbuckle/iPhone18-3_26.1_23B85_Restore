@interface ASDStreamFormat(ASDTHelpers)
- (id)asdtEquivalentNativeFloatPacked;
- (void)asdtEquivalentNativeFloatPacked;
@end

@implementation ASDStreamFormat(ASDTHelpers)

- (id)asdtEquivalentNativeFloatPacked
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  [a1 audioStreamBasicDescription];
  v1 = ASDTBaseLogType();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    [(ASDStreamFormat(ASDTHelpers) *)v3 + 2 asdtEquivalentNativeFloatPacked];
  }

  return 0;
}

- (void)asdtEquivalentNativeFloatPacked
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = HIBYTE(*a1);
  if ((*a1 - 0x20000000) >> 24 >= 0x5F)
  {
    v3 = 32;
  }

  v4 = BYTE2(v2);
  if (BYTE2(v2) - 32 >= 0x5F)
  {
    v4 = 32;
  }

  v5 = BYTE1(v2);
  if (BYTE1(v2) - 32 >= 0x5F)
  {
    v5 = 32;
  }

  v6 = *a1;
  v8[0] = 67109888;
  v8[1] = v3;
  v9 = 1024;
  v10 = v4;
  v11 = 1024;
  v12 = v5;
  if ((v6 - 32) >= 0x5F)
  {
    v6 = 32;
  }

  v13 = 1024;
  v14 = v6;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "Cannot convert format with ID: %c%c%c%c", v8, 0x1Au);
  v7 = *MEMORY[0x277D85DE8];
}

@end