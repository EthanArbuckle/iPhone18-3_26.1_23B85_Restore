@interface TranslationProviderContextImp
- (_TtC21TranslationUIProvider29TranslationProviderContextImp)init;
- (void)translateWithText:(id)a3 replacementAllowed:(BOOL)a4;
@end

@implementation TranslationProviderContextImp

- (void)translateWithText:(id)a3 replacementAllowed:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  TranslationProviderContextImp.translate(text:replacementAllowed:)(v6, a4);
}

- (_TtC21TranslationUIProvider29TranslationProviderContextImp)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end