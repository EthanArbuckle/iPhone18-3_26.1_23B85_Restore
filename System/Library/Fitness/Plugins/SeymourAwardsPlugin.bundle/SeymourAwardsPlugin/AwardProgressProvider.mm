@interface AwardProgressProvider
- (BOOL)providesProgressForTemplate:(id)template;
- (id)providerIdentifier;
- (void)requestAchievementProgressUpdatesForTemplates:(id)templates;
@end

@implementation AwardProgressProvider

- (BOOL)providesProgressForTemplate:(id)template
{
  templateCopy = template;
  selfCopy = self;
  v6 = sub_23397F490(templateCopy);

  return v6 & 1;
}

- (void)requestAchievementProgressUpdatesForTemplates:(id)templates
{
  sub_23397F5C8(0, &qword_2813064C0, 0x277CE8D50);
  v4 = sub_2339816C4();
  selfCopy = self;
  sub_23397F610(v4);
}

- (id)providerIdentifier
{
  sub_233981634();
  sub_233981624();
  v2 = sub_233981694();

  return v2;
}

@end