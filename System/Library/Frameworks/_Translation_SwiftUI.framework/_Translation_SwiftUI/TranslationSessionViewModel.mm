@interface TranslationSessionViewModel
- (_TtC20_Translation_SwiftUI27TranslationSessionViewModel)init;
- (void)needsUserInterventionForTextSession:(id)session configuration:(id)configuration completion:(id)completion;
@end

@implementation TranslationSessionViewModel

- (_TtC20_Translation_SwiftUI27TranslationSessionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)needsUserInterventionForTextSession:(id)session configuration:(id)configuration completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sessionCopy = session;
  configurationCopy = configuration;
  selfCopy = self;
  sub_23BC8041C(configurationCopy, sub_23BC80414, v9);
}

@end