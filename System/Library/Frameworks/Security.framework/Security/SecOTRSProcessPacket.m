@interface SecOTRSProcessPacket
@end

@implementation SecOTRSProcessPacket

__n128 __SecOTRSProcessPacket_block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecOTRSProcessPacket_block_invoke_2;
  v3[3] = &unk_1E70E1070;
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  _os_activity_initiate(&dword_1887D2000, "OTR Process Packet", OS_ACTIVITY_FLAG_DEFAULT, v3);
  return result;
}

@end