@interface Delegate#1inpromptForLogin(asPartOf:)
- (_TtCF23ShelfKitCollectionViewsP33_C14EC219425C223F24E0396AC6B7BC6714promptForLoginFT8asPartOfC9JetEngine15BaseObjectGraph_T_L_8Delegate)init;
- (void)signInController:()asPartOf: didCompleteWithOperationsResults:;
- (void)signInControllerDidCancel:()asPartOf:;
@end

@implementation Delegate#1inpromptForLogin(asPartOf:)

- (void)signInController:()asPartOf: didCompleteWithOperationsResults:
{
  v4 = qword_3FA8F0;
  v6 = a3;
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_30BF58();
  __swift_project_value_buffer(v5, qword_3FA8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490);
  sub_30B708();
  *(swift_allocObject() + 16) = xmmword_315430;
  sub_30B698();
  sub_30BDB8();

  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)signInControllerDidCancel:()asPartOf:
{
  v3 = qword_3FA8F0;
  v5 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_30BF58();
  __swift_project_value_buffer(v4, qword_3FA8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB490);
  sub_30B708();
  *(swift_allocObject() + 16) = xmmword_315430;
  sub_30B698();
  sub_30BDB8();

  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (_TtCF23ShelfKitCollectionViewsP33_C14EC219425C223F24E0396AC6B7BC6714promptForLoginFT8asPartOfC9JetEngine15BaseObjectGraph_T_L_8Delegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Delegate();
  return [(Delegate *)&v3 #1];
}

@end