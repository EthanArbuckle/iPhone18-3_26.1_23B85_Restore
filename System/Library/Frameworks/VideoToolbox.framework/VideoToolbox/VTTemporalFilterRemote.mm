@interface VTTemporalFilterRemote
@end

@implementation VTTemporalFilterRemote

uint64_t __VTTemporalFilterRemote_CopyList_block_invoke(void *a1, mach_port_t a2)
{
  v9 = 0;
  v4 = a1[6];
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
    v6 = a1[6];
    if (v6)
    {
      Length = CFDataGetLength(v6);
      goto LABEL_6;
    }
  }

  else
  {
    BytePtr = 0;
  }

  Length = 0;
LABEL_6:
  LODWORD(result) = VTCompressionSessionRemoteClient_CopyTemporalFilterList(a2, BytePtr, Length, (*(a1[4] + 8) + 24), (*(a1[5] + 8) + 24), &v9);
  if (result)
  {
    return result;
  }

  else
  {
    return v9;
  }
}

@end