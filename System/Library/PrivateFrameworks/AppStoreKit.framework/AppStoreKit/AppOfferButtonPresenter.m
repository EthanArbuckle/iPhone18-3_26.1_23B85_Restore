@interface AppOfferButtonPresenter
- (void)isEnabledDidChange:(id)a3;
- (void)offerButtonTapped;
@end

@implementation AppOfferButtonPresenter

- (void)offerButtonTapped
{

  sub_1E13993E0();
}

- (void)isEnabledDidChange:(id)a3
{
  v3 = sub_1E1AEF55C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();
  v7 = qword_1EE1D2778;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF591C();
  __swift_project_value_buffer(v8, qword_1EE1D2780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();

  (*(v4 + 8))(v6, v3);
}

@end