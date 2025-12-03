@interface _NSPlaceholderLocale
- (_NSPlaceholderLocale)initWithLocaleIdentifier:(id)identifier;
@end

@implementation _NSPlaceholderLocale

- (_NSPlaceholderLocale)initWithLocaleIdentifier:(id)identifier
{
  if (identifier)
  {
    return CFLocaleCreate(&__kCFAllocatorSystemDefault, identifier);
  }

  else
  {
    return 0;
  }
}

@end