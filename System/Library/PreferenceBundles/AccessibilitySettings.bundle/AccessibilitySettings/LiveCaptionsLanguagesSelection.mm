@interface LiveCaptionsLanguagesSelection
+ (void)defaultLocaleWithCompletionHandler:(id)handler;
- (LiveCaptionsLanguagesSelection)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)clearLanguageSelection;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation LiveCaptionsLanguagesSelection

- (LiveCaptionsLanguagesSelection)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_19BFE4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1722BC(v5, v7, bundle);
}

+ (void)defaultLocaleWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9568);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_19C144();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DCC70;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DCC78;
  v12[5] = v11;
  sub_1907B4(0, 0, v7, &unk_1DCC80, v12);
}

- (id)specifiers
{
  selfCopy = self;
  v3 = LiveCaptionsLanguagesSelection.specifiers()();

  if (v3)
  {
    v4.super.isa = sub_19C094().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)clearLanguageSelection
{
  v2 = &self->AXUISettingsBaseListController_opaque[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier];
  *v2 = 0;
  *(v2 + 1) = 0;
  selfCopy = self;

  sharedInstance = [objc_opt_self() sharedInstance];
  [sharedInstance setLiveCaptionsSelectedLocaleIdentifier:0];

  [(LiveCaptionsLanguagesSelection *)selfCopy reloadSpecifiers];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_19AF24();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19AF14();
  viewCopy = view;
  selfCopy = self;
  LiveCaptionsLanguagesSelection.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_19AF24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19AF14();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_179004(cellCopy);

  (*(v9 + 8))(v11, v8);
}

@end