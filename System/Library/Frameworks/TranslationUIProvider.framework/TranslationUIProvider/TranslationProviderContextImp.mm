@interface TranslationProviderContextImp
- (_TtC21TranslationUIProvider29TranslationProviderContextImp)init;
- (void)translateWithText:(id)text replacementAllowed:(BOOL)allowed;
@end

@implementation TranslationProviderContextImp

- (void)translateWithText:(id)text replacementAllowed:(BOOL)allowed
{
  textCopy = text;
  selfCopy = self;
  TranslationProviderContextImp.translate(text:replacementAllowed:)(textCopy, allowed);
}

- (_TtC21TranslationUIProvider29TranslationProviderContextImp)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end