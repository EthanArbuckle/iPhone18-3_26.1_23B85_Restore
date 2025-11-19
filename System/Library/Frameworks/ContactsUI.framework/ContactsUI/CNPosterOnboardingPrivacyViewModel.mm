@interface CNPosterOnboardingPrivacyViewModel
- (_TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel)init;
- (void)setWithItems:(id)a3;
@end

@implementation CNPosterOnboardingPrivacyViewModel

- (void)setWithItems:(id)a3
{
  type metadata accessor for DeviceListServiceDeviceInfo();
  v4 = sub_199DFA0CC();
  v5 = self;
  sub_199A9A668(v4);
}

- (_TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel)init
{
  v3 = OBJC_IVAR____TtC10ContactsUI34CNPosterOnboardingPrivacyViewModel_model;
  type metadata accessor for CNPosterOnboardingPrivacyView.Model(0);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = 1;
  sub_199DF73DC();
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CNPosterOnboardingPrivacyViewModel();
  return [(CNPosterOnboardingPrivacyViewModel *)&v6 init];
}

@end