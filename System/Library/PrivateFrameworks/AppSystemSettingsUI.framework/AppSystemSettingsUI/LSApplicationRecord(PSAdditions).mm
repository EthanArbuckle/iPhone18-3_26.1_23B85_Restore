@interface LSApplicationRecord(PSAdditions)
- (uint64_t)au_supportsJournalingSuggestions;
@end

@implementation LSApplicationRecord(PSAdditions)

- (uint64_t)au_supportsJournalingSuggestions
{
  result = objc_opt_class();
  if (result)
  {
    mEMORY[0x277D2A150] = [MEMORY[0x277D2A150] sharedInstance];
    bundleIdentifier = [self bundleIdentifier];
    v5 = [mEMORY[0x277D2A150] isJournalingSuggestionsAvailableForBundleIdentifier:bundleIdentifier];

    return v5;
  }

  return result;
}

@end