@interface NSString(Readable)
- (id)_intents_localizedCopyWithLocalizer:()Readable;
- (id)_intents_readableTitleWithLocalizer:()Readable metadata:;
@end

@implementation NSString(Readable)

- (id)_intents_localizedCopyWithLocalizer:()Readable
{
  v4 = [a3 languageCode];
  v5 = [a1 localizeForLanguage:v4];

  return v5;
}

- (id)_intents_readableTitleWithLocalizer:()Readable metadata:
{
  v4 = [a3 languageCode];
  v5 = [a1 localizeForLanguage:v4];

  return v5;
}

@end