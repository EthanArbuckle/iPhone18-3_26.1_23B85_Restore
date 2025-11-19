@interface TranslationSessionViewModel
- (_TtC20_Translation_SwiftUI27TranslationSessionViewModel)init;
- (void)needsUserInterventionForTextSession:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation TranslationSessionViewModel

- (_TtC20_Translation_SwiftUI27TranslationSessionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)needsUserInterventionForTextSession:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_23BC8041C(v11, sub_23BC80414, v9);
}

@end