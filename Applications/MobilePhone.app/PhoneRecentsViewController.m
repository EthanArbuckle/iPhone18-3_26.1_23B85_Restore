@interface PhoneRecentsViewController
+ ($1FF454C5B48E436092D281DABF654916)badge;
+ (CGSize)preferredWindowMinSize;
+ (id)defaultPNGName;
- (BOOL)handleUserActivityContinuation:(id)a3;
- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3 isEditing:(BOOL)a4;
- (UINavigationController)recentsNavigationController;
- (_TtC10CallsAppUI21RecentsViewController)recentsViewController;
- (void)didPresentSearchController:(id)a3;
- (void)didPressSearchButton:(id)a3 unformattedNumber:(id)a4;
- (void)didSelectSuggestedSearchWithToken:(id)a3;
- (void)handleURL:(id)a3;
- (void)keyPadSearchFor:(id)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5;
- (void)makeSearchBarActive;
- (void)presentCallHistoryDetailsWithUniqueId:(NSString *)a3 completion:(id)a4;
- (void)presentContactsSearchFor:(id)a3;
- (void)presentVoicemailDetailsWithUUID:(NSUUID *)a3 completion:(id)a4;
- (void)searchControllerBeginDragging;
- (void)setRecentsViewController:(id)a3;
- (void)showDetailsForCallWithUniqueID:(id)a3 searchText:(id)a4;
- (void)startSearchingForText:(id)a3 completion:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation PhoneRecentsViewController

- (void)startSearchingForText:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = v6;
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = self;
  PhoneRecentsViewController.startSearching(for:completion:)(v8, a3, v7, v10);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

- (void)showDetailsForCallWithUniqueID:(id)a3 searchText:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = v7;
  v13 = self;

  PhoneRecentsViewController.startSearching(for:completion:)(v8, v10, closure #1 in PhoneRecentsViewController.showDetailsForCall(uniqueID:searchText:)partial apply, v12);
}

- (void)didSelectSuggestedSearchWithToken:(id)a3
{
  v4 = a3;
  v5 = self;
  PhoneRecentsViewController.didSelectSuggestedSearch(token:)(v4);
}

- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3 isEditing:(BOOL)a4
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)searchControllerBeginDragging
{
  v4 = self;
  v2 = PhoneRecentsViewController.searchController.getter();
  v3 = [v2 searchBar];

  [v3 resignFirstResponder];
}

- (void)willPresentSearchController:(id)a3
{
  v3 = a3;
  [v3 setShowsSearchResultsController:1];
  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.donateEventSearchedCallHistory()();
}

- (void)didPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  PhoneRecentsViewController.didPresentSearchController(_:)(v4);
}

- (_TtC10CallsAppUI21RecentsViewController)recentsViewController
{
  v3 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setRecentsViewController:(id)a3
{
  v5 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (UINavigationController)recentsNavigationController
{
  v3 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  result = *(&self->super.super.super.super.super.isa + v3);
  if (result)
  {
    v5 = [(UINavigationController *)result navigationController];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (CGSize)preferredWindowMinSize
{
  v2 = [objc_opt_self() currentDevice];
  [v2 userInterfaceIdiom];

  preferredKeyPadSize(idiom:)();
  v4 = v3 + 50.0;
  v5 = 0.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  PhoneRecentsViewController.viewDidAppear(_:)(a3);
}

- (void)handleURL:(id)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  PhoneRecentsViewController.handle(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)presentVoicemailDetailsWithUUID:(NSUUID *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in PhoneRecentsViewController.presentVoicemailDetails(uuid:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_50Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_55Tu, v14);
}

- (void)presentCallHistoryDetailsWithUniqueId:(NSString *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in PhoneRecentsViewController.presentCallHistoryDetails(uniqueId:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTATu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v14);
}

- (void)makeSearchBarActive
{
  v3 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    v5 = self;
    v6 = v4;
    RecentsViewController.makeSearchActive()();
  }

  else
  {
    __break(1u);
  }
}

- (void)presentContactsSearchFor:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  PhoneRecentsViewController.presentSearchForNumber(_:)(v8);
}

- (void)didPressSearchButton:(id)a3 unformattedNumber:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = self;
  v9._countAndFlagsBits = v5;
  v9._object = v7;
  PhoneRecentsViewController.presentSearchForNumber(_:)(v9);
}

- (void)keyPadSearchFor:(id)a3 shouldRefreshResult:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v7)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ();
  }

  else
  {
    v11 = 0;
  }

  v12 = self;
  PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:)(v8, v10, v5, v7, v11);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

+ (id)defaultPNGName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)handleUserActivityContinuation:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  v8.value.super.isa = v3;
  LOBYTE(v3) = PhoneRecentsViewController.handleUserActivityContinuation(_:)(v8);

  return v3 & 1;
}

+ ($1FF454C5B48E436092D281DABF654916)badge
{
  v2 = 1;
  v3 = 0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end