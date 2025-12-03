@interface MOSuggestionCollectionViewOnboardingSectionHeaderView
- (void)pressedNewEntryButton;
@end

@implementation MOSuggestionCollectionViewOnboardingSectionHeaderView

- (void)pressedNewEntryButton
{
  v2 = *((swift_isaMask & self->super.super.super.super.isa) + 0x78);
  selfCopy = self;
  v2(v9);
  if (v9[3])
  {
    outlined init with copy of MOProtectedAppsManagerDelegate(v9, v6);
    outlined destroy of MOSuggestionSheetNewEntryButtonDelegate?(v9);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    (*(v5 + 8))(v4, v5);

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {

    outlined destroy of MOSuggestionSheetNewEntryButtonDelegate?(v9);
  }
}

@end