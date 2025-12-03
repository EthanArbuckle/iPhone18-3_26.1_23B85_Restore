@interface APEnablementOracle
+ (id)sharedInstance;
- (APEnablementOracle)init;
- (BOOL)canEnablementAction:(unint64_t)action bePerformedForFeature:(unint64_t)feature ofSubject:(id)subject;
- (BOOL)getPreferredEnablementAction:(unint64_t *)action preferredEnableableFeature:(unint64_t *)feature forSubject:(id)subject error:(id *)error;
@end

@implementation APEnablementOracle

- (APEnablementOracle)init
{
  v3.receiver = self;
  v3.super_class = APEnablementOracle;
  return [(APEnablementOracle *)&v3 init];
}

+ (id)sharedInstance
{
  if (qword_1EDAC2C60 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDAC2C68;

  return v3;
}

- (BOOL)getPreferredEnablementAction:(unint64_t *)action preferredEnableableFeature:(unint64_t *)feature forSubject:(id)subject error:(id *)error
{
  subjectCopy = subject;
  selfCopy = self;
  sub_1AEA19F98(action, feature, subjectCopy);

  return 1;
}

- (BOOL)canEnablementAction:(unint64_t)action bePerformedForFeature:(unint64_t)feature ofSubject:(id)subject
{
  subjectCopy = subject;
  selfCopy = self;
  LOBYTE(feature) = sub_1AEA31AA8(action, feature, subjectCopy);

  return feature & 1;
}

@end