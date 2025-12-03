@interface DeviationsCompactCalendarViewController
- (_TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation DeviationsCompactCalendarViewController

- (_TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController_subscriptions) = MEMORY[0x29EDCA1A0];
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E228540();
}

- (_TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  selfCopy = self;

  v5 = sub_29E0E7090();

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_29E22903C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29E229470(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end