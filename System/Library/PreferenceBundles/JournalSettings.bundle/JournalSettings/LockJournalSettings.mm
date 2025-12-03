@interface LockJournalSettings
+ (BOOL)canAppFeatureLockJournalBeEnabled;
+ (BOOL)isAppFeatureLockJournalEnabled;
+ (BOOL)isDevicePasscodeProtected;
+ (NSString)navigationTitle;
- (_TtC15JournalSettings19LockJournalSettings)initWithCoder:(id)coder;
- (_TtC15JournalSettings19LockJournalSettings)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifierValueFor:(id)for;
- (id)specifiers;
- (void)setSpecifierValue:(id)value for:(id)for;
- (void)viewDidLoad;
@end

@implementation LockJournalSettings

+ (BOOL)isDevicePasscodeProtected
{
  v2 = [objc_allocWithZone(LAContext) init];
  v3 = [v2 canEvaluatePolicy:2 error:0];

  return v3;
}

+ (BOOL)canAppFeatureLockJournalBeEnabled
{
  v2 = [objc_allocWithZone(LAContext) init];
  v3 = [v2 canEvaluatePolicy:2 error:0];

  if (v3)
  {
    v4 = sub_8FDF0() ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

+ (BOOL)isAppFeatureLockJournalEnabled
{
  v2 = [objc_allocWithZone(LAContext) init];
  v3 = [v2 canEvaluatePolicy:2 error:0];

  return v3 && (sub_8FDF0() & 1) == 0 && sub_83480() != 4;
}

+ (NSString)navigationTitle
{
  if (qword_C3AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_90550();

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for LockJournalSettings();
  v2 = v4.receiver;
  [(LockJournalSettings *)&v4 viewDidLoad];
  if (qword_C3AA8 != -1)
  {
    swift_once();
  }

  v3 = sub_90550();
  [v2 setTitle:{v3, v4.receiver, v4.super_class}];
}

- (id)specifiers
{
  selfCopy = self;
  sub_86F1C();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_90730().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (id)specifierValueFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_884A4(forCopy, v13);

  v6 = v14;
  if (v14)
  {
    v7 = sub_FCAC(v13, v14);
    v8 = *(v6 - 8);
    __chkstk_darwin(v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_910D0();
    (*(v8 + 8))(v10, v6);
    sub_7FA4(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setSpecifierValue:(id)value for:(id)for
{
  if (value)
  {
    forCopy = for;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_90D80();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    forCopy2 = for;
    selfCopy2 = self;
  }

  sub_88708(v10, for);

  sub_26E74(v10);
}

- (_TtC15JournalSettings19LockJournalSettings)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_90590();
    bundleCopy = bundle;
    v7 = sub_90550();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LockJournalSettings();
  v9 = [(LockJournalSettings *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC15JournalSettings19LockJournalSettings)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LockJournalSettings();
  coderCopy = coder;
  v5 = [(LockJournalSettings *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end