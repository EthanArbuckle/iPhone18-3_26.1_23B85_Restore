@interface PhoneRecentsViewController
+ ($1FF454C5B48E436092D281DABF654916)badge;
+ (CGSize)preferredWindowMinSize;
+ (id)defaultPNGName;
- (BOOL)handleUserActivityContinuation:(id)continuation;
- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing;
- (UINavigationController)recentsNavigationController;
- (_TtC10CallsAppUI21RecentsViewController)recentsViewController;
- (void)didPresentSearchController:(id)controller;
- (void)didPressSearchButton:(id)button unformattedNumber:(id)number;
- (void)didSelectSuggestedSearchWithToken:(id)token;
- (void)handleURL:(id)l;
- (void)keyPadSearchFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler;
- (void)makeSearchBarActive;
- (void)presentCallHistoryDetailsWithUniqueId:(NSString *)id completion:(id)completion;
- (void)presentContactsSearchFor:(id)for;
- (void)presentVoicemailDetailsWithUUID:(NSUUID *)d completion:(id)completion;
- (void)searchControllerBeginDragging;
- (void)setRecentsViewController:(id)controller;
- (void)showDetailsForCallWithUniqueID:(id)d searchText:(id)text;
- (void)startSearchingForText:(id)text completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)willPresentSearchController:(id)controller;
@end

@implementation PhoneRecentsViewController

- (void)startSearchingForText:(id)text completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = v6;
  if (text)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    text = v9;
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
  selfCopy = self;
  PhoneRecentsViewController.startSearching(for:completion:)(v8, text, v7, v10);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

- (void)showDetailsForCallWithUniqueID:(id)d searchText:(id)text
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
  selfCopy = self;

  PhoneRecentsViewController.startSearching(for:completion:)(v8, v10, closure #1 in PhoneRecentsViewController.showDetailsForCall(uniqueID:searchText:)partial apply, v12);
}

- (void)didSelectSuggestedSearchWithToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  PhoneRecentsViewController.didSelectSuggestedSearch(token:)(tokenCopy);
}

- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing
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
  selfCopy = self;
  v2 = PhoneRecentsViewController.searchController.getter();
  searchBar = [v2 searchBar];

  [searchBar resignFirstResponder];
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setShowsSearchResultsController:1];
  type metadata accessor for TPTipsHelper();
  dispatch thunk of static TPTipsHelper.donateEventSearchedCallHistory()();
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  PhoneRecentsViewController.didPresentSearchController(_:)(controllerCopy);
}

- (_TtC10CallsAppUI21RecentsViewController)recentsViewController
{
  v3 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setRecentsViewController:(id)controller
{
  v5 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = controller;
  controllerCopy = controller;
}

- (UINavigationController)recentsNavigationController
{
  v3 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  result = *(&self->super.super.super.super.super.isa + v3);
  if (result)
  {
    navigationController = [(UINavigationController *)result navigationController];

    return navigationController;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (CGSize)preferredWindowMinSize
{
  currentDevice = [objc_opt_self() currentDevice];
  [currentDevice userInterfaceIdiom];

  preferredKeyPadSize(idiom:)();
  v4 = v3 + 50.0;
  v5 = 0.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  PhoneRecentsViewController.viewDidAppear(_:)(appear);
}

- (void)handleURL:(id)l
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PhoneRecentsViewController.handle(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)presentVoicemailDetailsWithUUID:(NSUUID *)d completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
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
  dCopy = d;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_55Tu, v14);
}

- (void)presentCallHistoryDetailsWithUniqueId:(NSString *)id completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = id;
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
  idCopy = id;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTATu, v14);
}

- (void)makeSearchBarActive
{
  v3 = OBJC_IVAR____TtC11MobilePhone26PhoneRecentsViewController_recentsViewController;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (v4)
  {
    selfCopy = self;
    v6 = v4;
    RecentsViewController.makeSearchActive()();
  }

  else
  {
    __break(1u);
  }
}

- (void)presentContactsSearchFor:(id)for
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  PhoneRecentsViewController.presentSearchForNumber(_:)(v8);
}

- (void)didPressSearchButton:(id)button unformattedNumber:(id)number
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  v9._countAndFlagsBits = v5;
  v9._object = v7;
  PhoneRecentsViewController.presentSearchForNumber(_:)(v9);
}

- (void)keyPadSearchFor:(id)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler
{
  resultCopy = result;
  v7 = _Block_copy(handler);
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

  selfCopy = self;
  PhoneRecentsViewController.keyPadSearch(for:shouldRefreshResult:completionHandler:)(v8, v10, resultCopy, v7, v11);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

+ (id)defaultPNGName
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)handleUserActivityContinuation:(id)continuation
{
  continuationCopy = continuation;
  continuationCopy2 = continuation;
  selfCopy = self;
  v8.value.super.isa = continuationCopy;
  LOBYTE(continuationCopy) = PhoneRecentsViewController.handleUserActivityContinuation(_:)(v8);

  return continuationCopy & 1;
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