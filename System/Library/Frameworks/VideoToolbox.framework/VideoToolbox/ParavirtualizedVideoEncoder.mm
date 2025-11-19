@interface ParavirtualizedVideoEncoder
@end

@implementation ParavirtualizedVideoEncoder

uint64_t __ParavirtualizedVideoEncoder_CreateInstanceWithSpecification_block_invoke(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v7 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v7, 0, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      paravirtualizedVideoEncoder_HandleMessageFromHost(v4, v7, a2);
      CFRelease(v5);
    }
  }

  return MessageTypeAndFlagsAndGuestUUID;
}

@end