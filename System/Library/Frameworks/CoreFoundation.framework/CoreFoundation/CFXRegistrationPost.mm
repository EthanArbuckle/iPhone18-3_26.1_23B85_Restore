@interface CFXRegistrationPost
@end

@implementation CFXRegistrationPost

void ___CFXRegistrationPost_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  *v3 = *(a1 + 40);
  if (*(a1 + 88) != 1 || CFXNotificationRegistrarValidateToken(*(*(a1 + 56) + 16), *(a1 + 64)))
  {
    __CFNOTIFICATIONCENTER_IS_CALLING_OUT_TO_AN_OBSERVER__(*(a1 + 56), *(a1 + 40), *(a1 + 48), *(a1 + 72), *(a1 + 32), *(a1 + 80));
  }

  CFXNotificationHandlerRelease(v3, *(a1 + 80));
  CFRelease(*(a1 + 56));
  if ((*(a1 + 81) & 4) != 0)
  {
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end