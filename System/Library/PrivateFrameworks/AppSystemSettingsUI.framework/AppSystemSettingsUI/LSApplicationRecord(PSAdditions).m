@interface LSApplicationRecord(PSAdditions)
- (uint64_t)au_supportsJournalingSuggestions;
@end

@implementation LSApplicationRecord(PSAdditions)

- (uint64_t)au_supportsJournalingSuggestions
{
  result = objc_opt_class();
  if (result)
  {
    v3 = [MEMORY[0x277D2A150] sharedInstance];
    v4 = [a1 bundleIdentifier];
    v5 = [v3 isJournalingSuggestionsAvailableForBundleIdentifier:v4];

    return v5;
  }

  return result;
}

@end