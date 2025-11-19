@interface NSObject(Readable)
- (id)_intents_displayImageForLanguage:()Readable;
- (id)_intents_localizedCopyForLanguage:()Readable;
- (id)_intents_localizedCopyWithLocalizer:()Readable;
- (id)_intents_readableSubtitleForLanguage:()Readable withMetadata:;
- (id)_intents_readableTitleForLanguage:()Readable withMetadata:;
- (id)_intents_readableTitleWithLocalizer:()Readable metadata:;
@end

@implementation NSObject(Readable)

- (id)_intents_localizedCopyForLanguage:()Readable
{
  v2 = [INStringLocalizer localizerForLanguage:?];
  v3 = [a1 _intents_localizedCopyWithLocalizer:v2];

  return v3;
}

- (id)_intents_displayImageForLanguage:()Readable
{
  v2 = [INStringLocalizer localizerForLanguage:?];
  v3 = [a1 _intents_displayImageWithLocalizer:v2];

  return v3;
}

- (id)_intents_readableSubtitleForLanguage:()Readable withMetadata:
{
  v6 = a4;
  v7 = [INStringLocalizer localizerForLanguage:a3];
  v8 = [a1 _intents_readableSubtitleWithLocalizer:v7 metadata:v6];

  return v8;
}

- (id)_intents_readableTitleForLanguage:()Readable withMetadata:
{
  v6 = a4;
  v7 = [INStringLocalizer localizerForLanguage:a3];
  v8 = [a1 _intents_readableTitleWithLocalizer:v7 metadata:v6];

  return v8;
}

- (id)_intents_localizedCopyWithLocalizer:()Readable
{
  if ([a1 conformsToProtocol:&unk_1F02E2038])
  {
    v2 = [a1 copy];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)_intents_readableTitleWithLocalizer:()Readable metadata:
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 locale];
    v6 = [a1 performSelector:sel_descriptionWithLocale_ withObject:v5];
  }

  else
  {
    v6 = [a1 description];
  }

  return v6;
}

@end