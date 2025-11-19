@interface SecItemCreateUUIDBasedPersistentRef
@end

@implementation SecItemCreateUUIDBasedPersistentRef

void ___SecItemCreateUUIDBasedPersistentRef_block_invoke(uint64_t a1, CFDataRef theData)
{
  v3 = *(a1 + 32);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  CFDataAppendBytes(v3, BytePtr, Length);
}

@end