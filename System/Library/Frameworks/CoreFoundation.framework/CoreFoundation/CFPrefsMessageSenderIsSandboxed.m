@interface CFPrefsMessageSenderIsSandboxed
@end

@implementation CFPrefsMessageSenderIsSandboxed

uint64_t ___CFPrefsMessageSenderIsSandboxed_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 52);
  if (v3 == 255)
  {
    v5 = *MEMORY[0x1E69E9BD0];
    result = _CFPrefsSandboxCheckForMessage(*(result + 32));
    v6 = result != 0;
    *(a2 + 52) = result != 0;
  }

  else
  {
    v6 = v3 == 1;
  }

  *(*(*(v2 + 40) + 8) + 24) = v6;
  return result;
}

uint64_t ___CFPrefsMessageSenderIsSandboxed_block_invoke_0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 52);
  if (v3 == 255)
  {
    v5 = *MEMORY[0x1E69E9BD0];
    result = _CFPrefsSandboxCheckForMessage_0(*(result + 32));
    v6 = result != 0;
    *(a2 + 52) = result != 0;
  }

  else
  {
    v6 = v3 == 1;
  }

  *(*(*(v2 + 40) + 8) + 24) = v6;
  return result;
}

@end