@interface NSString(Readable)
- (id)_intents_localizedCopyWithLocalizer:()Readable;
- (id)_intents_readableTitleWithLocalizer:()Readable metadata:;
@end

@implementation NSString(Readable)

- (id)_intents_localizedCopyWithLocalizer:()Readable
{
  languageCode = [a3 languageCode];
  v5 = [self localizeForLanguage:languageCode];

  return v5;
}

- (id)_intents_readableTitleWithLocalizer:()Readable metadata:
{
  languageCode = [a3 languageCode];
  v5 = [self localizeForLanguage:languageCode];

  return v5;
}

@end