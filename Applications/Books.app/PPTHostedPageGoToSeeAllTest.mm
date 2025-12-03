@interface PPTHostedPageGoToSeeAllTest
- (PPTHostedPageGoToSeeAllTest)init;
- (PPTHostedPageGoToSeeAllTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test;
- (void)startTest;
@end

@implementation PPTHostedPageGoToSeeAllTest

- (PPTHostedPageGoToSeeAllTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test
{
  v8 = sub_1007A2254();
  v10 = v9;
  if (options)
  {
    options = sub_1007A2044();
  }

  v11 = sub_1007A2044();
  v12 = sub_10025F678(v8, v10, options, v11, test);

  return v12;
}

- (void)startTest
{
  v3 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  selfCopy = self;
  [(PPTBasicTest *)selfCopy setTestTimeout:30];
  [(PPTBasicTest *)selfCopy setRunning:1];
  [(PPTBasicTest *)selfCopy startPPTTest];
  v7 = sub_1007A2744();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1007A26F4();
  v8 = selfCopy;
  v9 = sub_1007A26E4();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_10050CBCC(0, 0, v5, &unk_100814670, v10);
}

- (PPTHostedPageGoToSeeAllTest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end