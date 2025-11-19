@interface CRLWPObjcUserDefaults
+ (_TtC8Freeform21CRLWPObjcUserDefaults)sharedUserDefaults;
- (BOOL)spellCheckingEnabled;
- (_TtC8Freeform21CRLWPObjcUserDefaults)init;
@end

@implementation CRLWPObjcUserDefaults

+ (_TtC8Freeform21CRLWPObjcUserDefaults)sharedUserDefaults
{
  if (qword_1019F2008 != -1)
  {
    swift_once();
  }

  v3 = static CRLWPObjcUserDefaults.shared;

  return v3;
}

- (BOOL)spellCheckingEnabled
{
  if (qword_1019F2BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_100CD06A0();
  return (v2 == 2) | v2 & 1;
}

- (_TtC8Freeform21CRLWPObjcUserDefaults)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CRLWPObjcUserDefaults *)&v3 init];
}

@end