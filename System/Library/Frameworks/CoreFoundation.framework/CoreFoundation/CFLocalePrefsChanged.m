@interface CFLocalePrefsChanged
@end

@implementation CFLocalePrefsChanged

void ____CFLocalePrefsChanged_block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == *&__lastNote)
  {
    _CFCalendarResetCurrent();
    CFPreferencesAppSynchronize(@"kCFPreferencesCurrentApplication");
    v2 = MEMORY[0x1E69E96A0];

    dispatch_async(v2, &__block_literal_global_13);
  }
}

@end