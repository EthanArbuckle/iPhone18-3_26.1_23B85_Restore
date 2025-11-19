id closure #1 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 contactGeminiManager];

  v15 = 0;
  v4 = [v3 bestSenderIdentityForContact:a1 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v7 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = a1;
    v6 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v9;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, v10, "KeypadSearchViewController: Failed to get sender identity for contact %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
    }

    v4 = 0;
  }

  return v4;
}

id _s11MobilePhone26KeypadSearchViewControllerC06keypadd7ResultsF033_D1F9B01A0B4E08E988CB504110AEAC54LLSo08MPSearcheF0CvgAGyXEfU_So09CNContacteF0CSo0S0CcfU3__0(uint64_t a1)
{
  v1 = [objc_opt_self() viewControllerForContact:a1];

  return v1;
}

uint64_t closure #3 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = KeypadSearchViewController.numbersRanker.getter(a3);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for MPContactSearchResult);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9 = [v7 rankContactSearchResults:isa];

    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return a1;
}

id closure #4 in closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter()
{
  type metadata accessor for ApplicationServices();
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 callProviderManager];

  return v1;
}

UIEdgeInsets __swiftcall KeypadSearchViewController.separatorInset(forContentSizeCategory:isEditing:)(__C::UIContentSizeCategory forContentSizeCategory, Swift::Bool isEditing)
{
  v3 = objc_opt_self();

  [v3 separatorInsetForContentSizeCategory:forContentSizeCategory._rawValue isEditing:0];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

void KeypadSearchViewController.searchControllerBeginDragging()(char a1)
{
  v3 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar, closure #1 in KeypadSearchViewController.searchBar.getter);
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    [*(v1 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar) resignFirstResponder];
    *(v1 + OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder) = a1;
  }
}

void @objc KeypadSearchViewController.searchControllerBeginDragging()(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  v4 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar, closure #1 in KeypadSearchViewController.searchBar.getter);
  v5 = [v4 isFirstResponder];

  if (v5)
  {
    [*&v6[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar] resignFirstResponder];
    v6[OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder] = a3;
  }
}

Swift::Void __swiftcall KeypadSearchViewController.searchBarSearchButtonClicked(_:)(UISearchBar a1)
{
  v2 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar, closure #1 in KeypadSearchViewController.searchBar.getter);
  v3 = [v2 isFirstResponder];

  if (v3)
  {
    [*(v1 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar) resignFirstResponder];
    *(v1 + OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder) = 0;
  }
}

Swift::Void __swiftcall KeypadSearchViewController.searchBar(_:textDidChange:)(UISearchBar _, Swift::String textDidChange)
{
  v3 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController, closure #1 in KeypadSearchViewController.keypadSearchResultsController.getter);
  MPSearchViewController.updateSearchResults(for:)(_);
}

id thunk for @escaping @callee_guaranteed (@guaranteed CNContact) -> (@owned CNContactViewController)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id thunk for @escaping @callee_guaranteed () -> (@owned TUCallProviderManager)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void specialized KeypadSearchViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR___MPKeypadSearchViewController_pendingText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder) = 1;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar) = 0;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___numbersRanker) = 0;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___lettersRanker) = 0;
  *(v0 + OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___keypadSearchResultsController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id KeypadSearchViewController.cancel()()
{
  v1 = KeypadSearchViewController.keypadSearchResultsController.getter(&OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar, closure #1 in KeypadSearchViewController.searchBar.getter);
  v2 = [v1 isFirstResponder];

  if (v2)
  {
    [*&v0[OBJC_IVAR___MPKeypadSearchViewController____lazy_storage___searchBar] resignFirstResponder];
    v0[OBJC_IVAR___MPKeypadSearchViewController_searchBarWasFirstResponder] = 0;
  }

  result = [v0 dismissViewControllerAnimated:1 completion:0];
  v4 = *&v0[OBJC_IVAR___MPKeypadSearchViewController_onDismiss];
  if (v4)
  {
    return v4(result);
  }

  return result;
}

uint64_t sub_1001B4A88()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001B4AC0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id TipsRecentsEventSignals.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for Defaults();
  v1 = swift_allocObject();
  v2 = objc_allocWithZone(ObjectType);
  *&v2[OBJC_IVAR___MPTipsRecentsEventSignals_defaults] = v1;
  v5.receiver = v2;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id TipsRecentsEventSignals.__allocating_init(defaults:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPTipsRecentsEventSignals_defaults] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id TipsRecentsEventSignals.init(defaults:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___MPTipsRecentsEventSignals_defaults] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t TipsRecentsEventSignals.donateTipsEventSignals(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return specialized TipsRecentsEventSignals.donateTipsEventSignals(for:)(a1);
}

uint64_t @objc closure #1 in TipsRecentsEventSignals.donateTipsEventSignals(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in TipsRecentsEventSignals.donateTipsEventSignals(for:);

  return specialized TipsRecentsEventSignals.donateTipsEventSignals(for:)(v6);
}

uint64_t @objc closure #1 in TipsRecentsEventSignals.donateTipsEventSignals(for:)()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_sScPSgMd);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of (NSAttributedStringKey, Any)(a3, &_sScPSgMd);

    return v21;
  }

LABEL_8:
  outlined destroy of (NSAttributedStringKey, Any)(a3, &_sScPSgMd);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void specialized Defaults.set<A>(_:for:)(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 & 0xFE) == 2)
  {
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((static Defaults.isInternalInstall & 1) == 0)
    {
      lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
      swift_allocError();
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0;
      *(v9 + 72) = 2;
      swift_willThrow();
      return;
    }
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      goto LABEL_9;
    }

LABEL_12:
    v8 = [objc_allocWithZone(NSUserDefaults) init];
    goto LABEL_13;
  }

  if (a2 > 1u)
  {
    goto LABEL_12;
  }

LABEL_9:
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = objc_allocWithZone(NSUserDefaults);

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithSuiteName:v7];

  if (v8)
  {
    swift_bridgeObjectRelease_n();
LABEL_13:
    v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v11 = String._bridgeToObjectiveC()();

    [v8 setObject:v10 forKey:v11];
    swift_unknownObjectRelease();

    return;
  }

  lazy protocol witness table accessor for type Defaults.Error and conformance Defaults.Error();
  swift_allocError();
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 72) = 0;
  swift_willThrow();
}

uint64_t specialized TipsRecentsEventSignals.isRecentCallContactInFavorites(_:)()
{
  v1 = [*(v0 + 16) contactIdentifier];
  if (!v1)
  {
LABEL_9:
    v11 = *(v0 + 8);

    __asm { BRAA            X2, X16 }
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 24) = v3;
  *(v0 + 32) = v5;
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_9;
  }

  type metadata accessor for ApplicationServices();
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  *(v0 + 40) = v7;
  v8 = ((swift_isaMask & *v7) + 128) & 0xFFFFFFFFFFFFLL | 0x7DD7000000000000;
  *(v0 + 48) = *((swift_isaMask & *v7) + 0x80);
  *(v0 + 56) = v8;
  type metadata accessor for ApplicationServicesActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(specialized TipsRecentsEventSignals.isRecentCallContactInFavorites(_:), v10, v9);
}

{
  v1 = *(v0 + 40);
  *(v0 + 64) = (*(v0 + 48))();

  return (_swift_task_switch)(specialized TipsRecentsEventSignals.isRecentCallContactInFavorites(_:), 0, 0);
}

{
  v1 = [*(v0 + 64) favoritesEntries];
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNFavoritesEntry);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 contactProperty];
      if (v8)
      {
        v9 = *(v0 + 24);
        v21 = *(v0 + 32);
        v10 = v8;
        v11 = [v8 contact];

        v12 = [v11 identifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (v13 == v9 && v15 == v21)
        {

          goto LABEL_19;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          v6 = *(v0 + 64);
LABEL_19:

          v18 = 1;
          goto LABEL_24;
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  v18 = 0;
LABEL_24:

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t specialized TipsRecentsEventSignals.donateTipsEventSignals(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Calendar();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd);
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for DateComponents();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();

  return (_swift_task_switch)(specialized TipsRecentsEventSignals.donateTipsEventSignals(for:), 0, 0);
}

uint64_t specialized TipsRecentsEventSignals.donateTipsEventSignals(for:)()
{
  v1 = [*(v0 + 16) contactIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = 1;
      v8 = 5;
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = 0;
  v8 = 6;
LABEL_8:
  *(v0 + 128) = v3;
  *(v0 + 136) = v5;
  *(v0 + 201) = v7;
  *(v0 + 200) = v8;
  v9 = specialized Defaults.BOOL(for:)(v8);
  *(v0 + 144) = 0;
  if (v9)
  {

    goto LABEL_10;
  }

  v11 = [objc_allocWithZone(CHManager) init];
  *(v0 + 152) = v11;
  if (v7)
  {
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    v12[1] = specialized TipsRecentsEventSignals.donateTipsEventSignals(for:);
    v13 = *(v0 + 16);

    return specialized TipsRecentsEventSignals.isRecentCallContactInFavorites(_:)(v13);
  }

  v15 = v11;
  v16 = *(v0 + 16);

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSPredicate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100209AA0;
  v18 = [v16 callerIdForDisplay];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v22 = NSPredicate.init(format:_:)();
  v23 = [v15 countCallsWithPredicate:v22];

  if (v23 <= 2)
  {

LABEL_10:

    v10 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.mobilePhone);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Logging Biome signal for calling a non-contact number.", v27, 2u);
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v30)
  {

    goto LABEL_30;
  }

  if (v28 != v31 || v30 != v32)
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_29;
    }

LABEL_30:
    *(v0 + 184) = type metadata accessor for TPTipsHelper();
    type metadata accessor for MainActor();
    *(v0 + 192) = static MainActor.shared.getter();
    v34 = dispatch thunk of Actor.unownedExecutor.getter();
    v36 = v38;
    v37 = specialized TipsRecentsEventSignals.donateTipsEventSignals(for:);
    goto LABEL_31;
  }

LABEL_29:
  *(v0 + 168) = type metadata accessor for TPTipsHelper();
  type metadata accessor for MainActor();
  *(v0 + 176) = static MainActor.shared.getter();
  v34 = dispatch thunk of Actor.unownedExecutor.getter();
  v36 = v35;
  v37 = specialized TipsRecentsEventSignals.donateTipsEventSignals(for:);
LABEL_31:

  return (_swift_task_switch)(v37, v34, v36);
}

{
  if (*(v0 + 202))
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_3:

LABEL_4:
    *(v0 + 184) = type metadata accessor for TPTipsHelper();
    type metadata accessor for MainActor();
    *(v0 + 192) = static MainActor.shared.getter();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = specialized TipsRecentsEventSignals.donateTipsEventSignals(for:);
    goto LABEL_5;
  }

  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v60 = *(v0 + 48);
  v62 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 24);
  (*(v8 + 56))(*(v0 + 96), 1, 1, v10);
  v11 = type metadata accessor for TimeZone();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  LOBYTE(v59) = 1;
  LOBYTE(v58) = 1;
  LOBYTE(v57) = 1;
  LOBYTE(v56) = 1;
  LOBYTE(v55) = 1;
  LOBYTE(v54) = 1;
  LOBYTE(v53) = 1;
  LOBYTE(v52) = 1;
  LOBYTE(v51) = 1;
  LOBYTE(v50) = 1;
  LOBYTE(v49) = 1;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.day.setter();
  static Calendar.current.getter();
  static Date.now.getter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v12 = *(v7 + 8);
  v12(v6, v62);
  (*(v8 + 8))(v9, v10);
  if ((*(v7 + 48))(v60, 1, v62) == 1)
  {
    v13 = *(v0 + 152);
    v14 = *(v0 + 48);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    outlined destroy of (NSAttributedStringKey, Any)(v14, &_s10Foundation4DateVSgMd);
    goto LABEL_14;
  }

  v15 = *(v0 + 136);
  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 48), *(v0 + 56));
  v16 = *(v0 + 152);
  if (!v15)
  {
    v28 = *(v0 + 112);
    v27 = *(v0 + 120);
    v29 = *(v0 + 104);
    v30 = *(v0 + 80);
    v31 = *(v0 + 56);

    v12(v30, v31);
    (*(v28 + 8))(v27, v29);
LABEL_14:

    v32 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSPredicate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100209F70;
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v19 + 56) = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSDate);
  *(v19 + 64) = lazy protocol witness table accessor for type NSDate and conformance NSObject();
  *(v19 + 32) = isa;
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 72) = v18;
  *(v19 + 80) = v17;
  v21 = NSPredicate.init(format:_:)();
  if ([v16 countCallsWithPredicate:{v21, 0, v49, 0, v50, 0, v51, 0, v52, 0, v53, 0, v54, 0, v55, 0, v56, 0, v57, 0, v58, 0, v59}] < 5)
  {
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v24 = *(v0 + 104);
    v25 = *(v0 + 80);
    v26 = *(v0 + 56);

    v12(v25, v26);
    (*(v23 + 8))(v22, v24);
    goto LABEL_14;
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.mobilePhone);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Logging Biome signal for calling a non-favorite contact.", v36, 2u);
  }

  v37 = *(v0 + 112);
  v61 = *(v0 + 120);
  v38 = *(v0 + 104);
  v39 = *(v0 + 80);
  v40 = *(v0 + 56);

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v12(v39, v40);
  (*(v37 + 8))(v61, v38);
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v43)
  {
    goto LABEL_3;
  }

  if (v41 == v44 && v43 == v45)
  {
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v46 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  *(v0 + 168) = type metadata accessor for TPTipsHelper();
  type metadata accessor for MainActor();
  *(v0 + 176) = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();
  v3 = v47;
  v4 = specialized TipsRecentsEventSignals.donateTipsEventSignals(for:);
LABEL_5:

  return (_swift_task_switch)(v4, v1, v3);
}

{

  dispatch thunk of static TPTipsHelper.donateEventCalledNonFavContact()();

  return (_swift_task_switch)(specialized TipsRecentsEventSignals.donateTipsEventSignals(for:), 0, 0);
}

{
  v16 = v0;
  v1 = *(v0 + 144);
  specialized Defaults.set<A>(_:for:)(1, *(v0 + 200));
  if (v1)
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.mobilePhone);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 152);
    if (v5)
    {
      v7 = *(v0 + 201);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      if (v7)
      {
        v10 = 0xD000000000000029;
      }

      else
      {
        v10 = 0xD000000000000027;
      }

      if (v7)
      {
        v11 = "ShowLiveVoicemailOnboarding";
      }

      else
      {
        v11 = "alForFavoriteKnownContact";
      }

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11 | 0x8000000000000000, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to set true for key %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

{

  dispatch thunk of static TPTipsHelper.donateEventCalledNonContact()();

  return (_swift_task_switch)(specialized TipsRecentsEventSignals.donateTipsEventSignals(for:), 0, 0);
}

uint64_t specialized TipsRecentsEventSignals.donateTipsEventSignals(for:)(char a1)
{
  *(*v1 + 202) = a1;

  return (_swift_task_switch)(specialized TipsRecentsEventSignals.donateTipsEventSignals(for:), 0, 0);
}

uint64_t sub_1001B6FE8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in TipsRecentsEventSignals.donateTipsEventSignals(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return @objc closure #1 in TipsRecentsEventSignals.donateTipsEventSignals(for:)(v2, v3, v4);
}

uint64_t sub_1001B70E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_19(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR10CallsAppUI13LegacyMailboxVSg_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type NSDate and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSDate and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSDate and conformance NSObject)
  {
    type metadata accessor for NSMutableArray(255, &lazy cache variable for type metadata for NSDate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDate and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor()
{
  result = lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor;
  if (!lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor)
  {
    type metadata accessor for ApplicationServicesActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor);
  }

  return result;
}

uint64_t ContactsService.avatarContacts(for:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___MPContactsService_dataProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 contactByHandleForRecentCall:a1 keyDescriptors:isa];

  if (!v5)
  {
    goto LABEL_5;
  }

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  lazy protocol witness table accessor for type CHHandle and conformance NSObject();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [a1 validRemoteParticipantHandles];
  if (!v7)
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100209A80;
    *(v10 + 32) = [objc_allocWithZone(CNMutableContact) init];
    return v10;
  }

  v8 = v7;
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8CHHandleCG_So9CNContactCs5NeverOTg5053_s11MobilePhone15ContactsServiceC06avatarC03forSaySo9e27CGSo12CHRecentCallC_tFAGSo8D6CXEfU_SDyAgJGTf1cn_nTf4ng_n(v9, v6);

  swift_bridgeObjectRelease_n();
  return v10;
}

id ContactsService.__allocating_init(dataProvider:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized ContactsService.__allocating_init(dataProvider:)(a1, v1);
}

void *ContactsService.contacts(for:)(void *a1, uint64_t (*a2)(uint64_t, uint64_t, id, char *))
{
  v5 = *&v2[OBJC_IVAR___MPContactsService_dataProvider];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v5 contactByHandleForRecentCall:a1 keyDescriptors:isa];

  if (v7)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 validRemoteParticipantHandles];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = a1;
    v13 = v2;
    v14 = a2(v11, v8, v12, v13);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

id ContactsService.init(dataProvider:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized ContactsService.init(dataProvider:)(a1, v1);
}

id specialized ContactsService.__allocating_init(dataProvider:)(uint64_t a1, Class a2)
{
  v3 = objc_allocWithZone(a2);
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___MPContactsService_dataProvider] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id specialized ContactsService.init(dataProvider:)(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  *&a2[OBJC_IVAR___MPContactsService_dataProvider] = a1;
  v6.receiver = a2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8CHHandleCG_So9CNContactCs5NeverOTg5053_s11MobilePhone15ContactsServiceC06avatarC03forSaySo9e27CGSo12CHRecentCallC_tFAGSo8D6CXEfU_SDyAgJGTf1cn_nTf4ng_n(uint64_t a1, uint64_t a2)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
    result = &_swiftEmptyArrayStorage;
    if (!v3)
    {
      return result;
    }

    v34 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v31 = result;
    v32 = v5;
    v33 = 1;
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v3 = *(a1 + 16);
    result = &_swiftEmptyArrayStorage;
    if (!v3)
    {
      return result;
    }

    v34 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = _HashTable.startBucket.getter();
    v6 = *(a1 + 36);
    v31 = result;
    v32 = v6;
    v33 = 0;
  }

  v7 = 0;
  while (v7 < v3)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_40;
    }

    v11 = v31;
    v10 = v32;
    v12 = v33;
    specialized Set.subscript.getter(v31, v32, v33, a1);
    v14 = v13;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = v13;
      v16 = __CocoaDictionary.lookup(_:)();

      if (!v16)
      {
        goto LABEL_18;
      }

      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
      swift_dynamicCast();
      if (!v30[0])
      {
        goto LABEL_18;
      }
    }

    else if (!*(a2 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v18 & 1) == 0) || !*(*(a2 + 56) + 8 * v17))
    {
LABEL_18:
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNMutableContact);
      v14 = v14;
      if (!CNMutableContact.init(handle:)())
      {
        [objc_allocWithZone(CNMutableContact) init];
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v29)
    {
      if (!v12)
      {
        goto LABEL_45;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8CHHandleC_GMd);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v30, 0);
      if (v7 == v3)
      {
LABEL_37:
        outlined consume of Set<CHHandle>.Index._Variant(v31, v32, v33);
        return v34;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_46;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      v19 = 1 << *(a1 + 32);
      if (v11 >= v19)
      {
        goto LABEL_41;
      }

      v20 = v11 >> 6;
      v21 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v21 >> v11) & 1) == 0)
      {
        goto LABEL_42;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_43;
      }

      v22 = v21 & (-2 << (v11 & 0x3F));
      if (v22)
      {
        v19 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v20 << 6;
        v24 = v20 + 1;
        v25 = (a1 + 64 + 8 * v20);
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = outlined consume of Set<CHHandle>.Index._Variant(v11, v10, 0);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_36;
          }
        }

        result = outlined consume of Set<CHHandle>.Index._Variant(v11, v10, 0);
      }

LABEL_36:
      v31 = v19;
      v32 = v10;
      v33 = 0;
      if (v7 == v3)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

id static MessageID.faceTime(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v7(v6, a1, v3);
  v8 = objc_allocWithZone(v1);
  v7(&v8[OBJC_IVAR___MPMessageID_value], v6, v3);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v11.receiver = v8;
  v11.super_class = v1;
  v9 = objc_msgSendSuper2(&v11, "init");
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t MessageID.messageUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MessageID.Value(v1 + OBJC_IVAR___MPMessageID_value, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

id MessageID.__allocating_init(uuid:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___MPMessageID_value;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MessageFolder@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized MessageFolder.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t MessageType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance MessageType@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id static MessageID.visualVoicemail(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___MPMessageID_value] = a1;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

void MessageID.Value.hash(into:)()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v5);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of MessageID.Value(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1uLL);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v8 = *v7;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v8);
  }
}

Swift::Int MessageID.Value.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  outlined init with copy of MessageID.Value(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1uLL);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v9);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MessageID.Value()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of MessageID.Value(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v7, v1);
    Hasher._combine(_:)(1uLL);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v8 = *v7;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v8);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageID.Value()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher.init(_seed:)();
  outlined init with copy of MessageID.Value(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v8, v2);
    Hasher._combine(_:)(1uLL);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v9 = *v8;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v9);
  }

  return Hasher._finalize()();
}

id @objc MessageID.stringValue.getter(void *a1)
{
  v1 = a1;
  MessageID.description.getter();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t MessageID.stringValue.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v5);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of MessageID.Value(v0 + OBJC_IVAR___MPMessageID_value, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v7, v1);
    v8 = UUID.uuidString.getter();
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  else
  {
    v10[1] = *v7;
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

id MessageID.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of MessageID.Value(a1, v3 + OBJC_IVAR___MPMessageID_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  outlined destroy of MessageID.Value(a1);
  return v4;
}

id MessageID.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  outlined init with copy of MessageID.Value(a1, v1 + OBJC_IVAR___MPMessageID_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "init");
  outlined destroy of MessageID.Value(a1);
  return v4;
}

{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___MPMessageID_value] = a1;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id MessageID.init(uuid:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MPMessageID_value;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t MessageID.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, v11);
  if (!v12)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v11, &_sypSgMd);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v6 = v10;
  outlined init with copy of MessageID.Value(v10 + OBJC_IVAR___MPMessageID_value, v5);
  v7 = specialized static MessageID.Value.__derived_enum_equals(_:_:)(v5, v1 + OBJC_IVAR___MPMessageID_value);

  outlined destroy of MessageID.Value(v5);
  return v7 & 1;
}

uint64_t specialized static MessageID.Value.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessageID.Value(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9MessageIDC5ValueO_AEtMd);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of MessageID.Value(a1, &v22 - v16);
  outlined init with copy of MessageID.Value(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of MessageID.Value(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *v13 == *&v17[v18];
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of (NSAttributedStringKey, Any)(v17, &_s11MobilePhone9MessageIDC5ValueO_AEtMd);
    v19 = 0;
    return v19 & 1;
  }

  outlined init with copy of MessageID.Value(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v17[v18], v4);
  v19 = static UUID.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v11, v4);
LABEL_6:
  outlined destroy of MessageID.Value(v17);
  return v19 & 1;
}

uint64_t specialized static MessageID.Value.__derived_enum_less_than(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = __chkstk_darwin(v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v38 - v7;
  v8 = type metadata accessor for MessageID.Value(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = (&v38 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9MessageIDC5ValueO_AEtMd);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v38 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of MessageID.Value(a1, &v38 - v22);
  v43 = a2;
  outlined init with copy of MessageID.Value(a2, &v23[v24]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of MessageID.Value(v23, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v40;
      v25 = v41;
      v27 = *(v41 + 32);
      v28 = v42;
      v27(v40, v17, v42);
      v29 = v39;
      v27(v39, &v23[v24], v28);
      if (static UUID.== infix(_:_:)())
      {
        v30 = *(v25 + 8);
        v30(v29, v28);
        v30(v26, v28);
LABEL_7:
        outlined destroy of MessageID.Value(v23);
        v33 = 0;
        return v33 & 1;
      }

      v33 = static UUID.< infix(_:_:)();
      v36 = *(v25 + 8);
      v36(v29, v28);
      v36(v26, v28);
LABEL_18:
      outlined destroy of MessageID.Value(v23);
      return v33 & 1;
    }

    (*(v41 + 8))(v17, v42);
  }

  else
  {
    outlined init with copy of MessageID.Value(v23, v19);
    v31 = *v19;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = *&v23[v24];
      if (v31 == v32)
      {
        goto LABEL_7;
      }

      v33 = v31 < v32;
      goto LABEL_18;
    }
  }

  outlined init with copy of MessageID.Value(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of MessageID.Value(v14);
    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  outlined init with copy of MessageID.Value(v43, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of MessageID.Value(v11);
    v35 = 1;
  }

  else
  {
    v35 = 0;
  }

  v33 = v34 < v35;
  outlined destroy of (NSAttributedStringKey, Any)(v23, &_s11MobilePhone9MessageIDC5ValueO_AEtMd);
  return v33 & 1;
}

uint64_t specialized static MessageID.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for UUID();
  v26 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = type metadata accessor for MessageID.Value(0);
  v10 = __chkstk_darwin(v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9MessageIDC5ValueO_AEtMd);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = OBJC_IVAR___MPMessageID_value;
  v20 = *(v16 + 56);
  outlined init with copy of MessageID.Value(a1 + OBJC_IVAR___MPMessageID_value, &v26 - v17);
  outlined init with copy of MessageID.Value(v27 + v19, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of MessageID.Value(v18, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v26;
      v22 = *(v26 + 32);
      v22(v8, v14, v3);
      v22(v6, &v18[v20], v3);
      v23 = static UUID.< infix(_:_:)();
      v24 = *(v21 + 8);
      v24(v6, v3);
      v24(v8, v3);
    }

    else
    {
      (*(v26 + 8))(v14, v3);
      outlined destroy of MessageID.Value(&v18[v20]);
      v23 = 1;
    }
  }

  else
  {
    outlined init with copy of MessageID.Value(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of MessageID.Value(&v18[v20]);
      v23 = 0;
    }

    else
    {
      v23 = *v12 < *&v18[v20];
    }
  }

  outlined destroy of MessageID.Value(v18);
  return v23 & 1;
}

unint64_t specialized MessageFolder.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageFolder and conformance MessageFolder()
{
  result = lazy protocol witness table cache variable for type MessageFolder and conformance MessageFolder;
  if (!lazy protocol witness table cache variable for type MessageFolder and conformance MessageFolder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageFolder and conformance MessageFolder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageType and conformance MessageType()
{
  result = lazy protocol witness table cache variable for type MessageType and conformance MessageType;
  if (!lazy protocol witness table cache variable for type MessageType and conformance MessageType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageType and conformance MessageType);
  }

  return result;
}

uint64_t type metadata completion function for MessageID()
{
  result = type metadata accessor for MessageID.Value(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for MessageID.Value()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id VMMessageTranscriptViewModel.init(_:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMPMessage:a1];
  swift_unknownObjectRelease();
  return v1;
}

id VMMessageTranscriptViewModel.init(_:)(void *a1)
{
  v2 = [v1 initWithDonated:objc_msgSend(a1 transcribing:"isTranscriptionRated") transcriptionAttempted:objc_msgSend(a1 transcriptionAvailable:"isTranscribing") messageTranscript:{objc_msgSend(a1, "transcriptionAttempted"), objc_msgSend(a1, "isTranscriptionAvailable"), objc_msgSend(a1, "transcript")}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

void *SpringBoardOrientationObserverWrapper.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0x6F42676E69727053;
  result[4] = 0xEB00000000647261;
  result[5] = PHVoicemailInboxListViewController.refreshTableHeaderView();
  result[6] = 0;
  result[2] = a1;
  return result;
}

uint64_t key path getter for SpringBoardOrientationObserverWrapper.onLockChange : SpringBoardOrientationObserverWrapper@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OrientationMonitorLockedStatus) -> ();
  a2[1] = v6;
}

uint64_t key path setter for SpringBoardOrientationObserverWrapper.onLockChange : SpringBoardOrientationObserverWrapper(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v6[5] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OrientationMonitorLockedStatus) -> (@out ());
  v6[6] = v5;

  v7 = v6[2];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = (v7 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  swift_beginAccess();
  *v9 = closure #1 in SpringBoardOrientationObserverWrapper.onLockChange.didsetpartial apply;
  v9[1] = v8;
}

uint64_t SpringBoardOrientationObserverWrapper.onLockChange.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[5] = a1;
  v2[6] = a2;

  v5 = v2[2];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = (v5 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  swift_beginAccess();
  *v7 = partial apply for closure #1 in SpringBoardOrientationObserverWrapper.onLockChange.didset;
  v7[1] = v6;
}

uint64_t closure #1 in SpringBoardOrientationObserverWrapper.onLockChange.didset(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 40);

    v5(a2 & 1);
  }

  return result;
}

uint64_t (*SpringBoardOrientationObserverWrapper.onLockChange.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SpringBoardOrientationObserverWrapper.onLockChange.modify;
}

uint64_t SpringBoardOrientationObserverWrapper.onLockChange.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(*(a1 + 24) + 16);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = (v5 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
    swift_beginAccess();
    *v7 = closure #1 in SpringBoardOrientationObserverWrapper.onLockChange.didsetpartial apply;
    v7[1] = v6;
  }

  return result;
}

void *SpringBoardOrientationObserverWrapper.init(_:)(uint64_t a1)
{
  v1[3] = 0x6F42676E69727053;
  v1[4] = 0xEB00000000647261;
  v1[5] = PHVoicemailInboxListViewController.refreshTableHeaderView();
  v1[6] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t sub_1001BA7AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t protocol witness for OrientationMonitorOrientationLockSource.onLockChange.getter in conformance SpringBoardOrientationObserverWrapper()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

void (*protocol witness for OrientationMonitorOrientationLockSource.onLockChange.modify in conformance SpringBoardOrientationObserverWrapper(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = SpringBoardOrientationObserverWrapper.onLockChange.modify(v2);
  return protocol witness for OrientationMonitorOrientationChangeSource.onOrientationChangeEvent.modify in conformance AccelerometerOrientationMonitorWrapper;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OrientationMonitorLockedStatus) -> (@out ())(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 1;
  return v2(&v4);
}

uint64_t sub_1001BA934()
{

  return _swift_deallocObject(v0, 32, 7);
}

UIView __swiftcall MPRecentsTableViewController.makePersonalNicknameMenuView()()
{
  v1 = objc_allocWithZone(type metadata accessor for PersonalNicknameMenuView());
  v2 = v0;
  return PersonalNicknameMenuView.init(displayContext:personalNicknameMenuViewDelegate:)(1, v0, &protocol witness table for MPRecentsTableViewController);
}

void MPRecentsTableViewController.presentFaceTimeSpamReportAlert(for:)(void *a1)
{
  v2 = [v1 callReportingViewModel];

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v3 message:0 preferredStyle:0];

  v5 = [v1 callReportingViewModel];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();

  v25 = partial apply for closure #1 in MPRecentsTableViewController.presentFaceTimeSpamReportAlert(for:);
  v26 = v6;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v24 = &block_descriptor_25;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  v11 = [v1 callReportingViewModel];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;

  v14 = a1;
  v15 = String._bridgeToObjectiveC()();

  v25 = partial apply for closure #2 in MPRecentsTableViewController.presentFaceTimeSpamReportAlert(for:);
  v26 = v13;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v24 = &block_descriptor_7_1;
  v16 = _Block_copy(&aBlock);

  v17 = [v9 actionWithTitle:v15 style:2 handler:v16];
  _Block_release(v16);

  [v4 addAction:v17];
  [v4 addAction:v10];
  v18 = [v1 alertPresentingViewController];
  if (v18)
  {
    v19 = v18;
    [v18 presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    [v1 presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_1001BAE08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in MPRecentsTableViewController.presentFaceTimeSpamReportAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000100245040, &v7);
      _os_log_impl(&_mh_execute_header, v3, v4, "MPRecentsTableViewController: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void closure #2 in MPRecentsTableViewController.presentFaceTimeSpamReportAlert(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000100245040, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "MPRecentsTableViewController: in %s, user did tap on report", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = [v5 callReportingViewModel];
    v12 = *&v11[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager];
    FaceTimeSpamReportManager.reportSpam(call:)(a3);
  }
}

void MPRecentsTableViewController.presentBlockAllAlert(for:)(uint64_t a1)
{
  v3 = [v1 callReportingViewModel];

  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  v6 = [v1 callReportingViewModel];

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = String._bridgeToObjectiveC()();

  v26 = partial apply for closure #1 in MPRecentsTableViewController.presentBlockAllAlert(for:);
  v27 = v7;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v25 = &block_descriptor_11_1;
  v9 = _Block_copy(&v22);

  v10 = objc_opt_self();
  v11 = [v10 actionWithTitle:v8 style:1 handler:v9];
  _Block_release(v9);

  v12 = [v1 contactsForRecentCall:a1];
  type metadata accessor for CNContact();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [v1 callReportingViewModel];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;

  v17 = String._bridgeToObjectiveC()();

  v26 = partial apply for closure #2 in MPRecentsTableViewController.presentBlockAllAlert(for:);
  v27 = v16;
  v22 = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v25 = &block_descriptor_18_0;
  v18 = _Block_copy(&v22);

  v19 = [v10 actionWithTitle:v17 style:2 handler:v18];
  _Block_release(v18);

  [v5 addAction:v19];
  [v5 addAction:v11];
  v20 = [v1 alertPresentingViewController];
  if (v20)
  {
    v21 = v20;
    [v20 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    [v1 presentViewController:v5 animated:1 completion:0];
  }
}

void closure #1 in MPRecentsTableViewController.presentBlockAllAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000100244FC0, &v7);
      _os_log_impl(&_mh_execute_header, v3, v4, "MPRecentsTableViewController: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void closure #2 in MPRecentsTableViewController.presentBlockAllAlert(for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000100244FC0, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "MPRecentsTableViewController: in %s, user did tap on block all", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = [v5 callReportingViewModel];
    specialized CallReportingViewModel.block(contacts:)(a3);

    type metadata accessor for CNContact();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 presentSafetyCheckFor:isa];
  }
}

void MPRecentsTableViewController.presentFaceTimeSpamReportAndBlockAlert(for:)(void *a1)
{
  v3 = [v1 callReportingViewModel];

  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  v6 = [v1 callReportingViewModel];

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = String._bridgeToObjectiveC()();

  v34 = partial apply for closure #1 in MPRecentsTableViewController.presentFaceTimeSpamReportAndBlockAlert(for:);
  v35 = v7;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v33 = &block_descriptor_22_1;
  v9 = _Block_copy(&aBlock);

  v10 = objc_opt_self();
  v29 = [v10 actionWithTitle:v8 style:1 handler:v9];
  _Block_release(v9);

  v11 = [v1 contactsForRecentCall:a1];
  type metadata accessor for CNContact();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [v1 callReportingViewModel];

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;

  v16 = String._bridgeToObjectiveC()();

  v34 = partial apply for closure #2 in MPRecentsTableViewController.presentFaceTimeSpamReportAndBlockAlert(for:);
  v35 = v15;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v33 = &block_descriptor_29_0;
  v17 = _Block_copy(&aBlock);

  v18 = [v10 actionWithTitle:v16 style:2 handler:v17];
  _Block_release(v17);

  v19 = [v1 callReportingViewModel];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v12;
  v21[4] = a1;

  v22 = a1;
  v23 = String._bridgeToObjectiveC()();

  v34 = partial apply for closure #3 in MPRecentsTableViewController.presentFaceTimeSpamReportAndBlockAlert(for:);
  v35 = v21;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v33 = &block_descriptor_36_0;
  v24 = _Block_copy(&aBlock);

  v25 = [v10 actionWithTitle:v23 style:2 handler:v24];
  _Block_release(v24);

  [v5 addAction:v18];
  [v5 addAction:v25];
  [v5 addAction:v29];
  v26 = [v1 alertPresentingViewController];
  if (v26)
  {
    v27 = v26;
    [v26 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    [v1 presentViewController:v5 animated:1 completion:0];
  }
}

void closure #1 in MPRecentsTableViewController.presentFaceTimeSpamReportAndBlockAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100244F20, &v7);
      _os_log_impl(&_mh_execute_header, v3, v4, "MPRecentsTableViewController: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void closure #2 in MPRecentsTableViewController.presentFaceTimeSpamReportAndBlockAlert(for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100244F20, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "MPRecentsTableViewController: in %s, user did tap on block", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = [v5 callReportingViewModel];
    specialized CallReportingViewModel.block(contacts:)(a3);

    type metadata accessor for CNContact();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 presentSafetyCheckFor:isa];
  }
}

void closure #3 in MPRecentsTableViewController.presentFaceTimeSpamReportAndBlockAlert(for:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.spamReport);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000100244F20, &v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "MPRecentsTableViewController: in %s, user did tap on block and report", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    v13 = [v7 callReportingViewModel];
    specialized CallReportingViewModel.block(contacts:)(a3);

    v14 = [v7 callReportingViewModel];
    v15 = *&v14[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager];
    FaceTimeSpamReportManager.reportSpam(call:)(a4);

    type metadata accessor for CNContact();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v7 presentSafetyCheckFor:isa];
  }
}

uint64_t sub_1001BC4A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void MPRecentsTableViewController.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(void *a1)
{
  v3 = [v1 callReportingViewModel];
  v4 = specialized CallReportingViewModel.getFormattedInitiator(for:)(a1);
  v6 = v5;

  if (v6)
  {
    v7 = [v1 callReportingViewModel];
    specialized CallReportingViewModel.getReportInitiatorMessage(formattedHandle:)(v4, v6);

    v8 = [v1 callReportingViewModel];

    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();

    v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:0];

    v12 = [v1 callReportingViewModel];

    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v14 = String._bridgeToObjectiveC()();

    v43 = partial apply for closure #1 in MPRecentsTableViewController.presentGroupFaceTimeSpamReportAndBlockAlert(for:);
    v44 = v13;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v42 = &block_descriptor_40;
    v15 = _Block_copy(&aBlock);

    v16 = objc_opt_self();
    oslog = [v16 actionWithTitle:v14 style:1 handler:v15];
    _Block_release(v15);

    v17 = [v1 callReportingViewModel];

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a1;

    v20 = a1;
    v21 = String._bridgeToObjectiveC()();

    v43 = partial apply for closure #2 in MPRecentsTableViewController.presentGroupFaceTimeSpamReportAndBlockAlert(for:);
    v44 = v19;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v42 = &block_descriptor_47;
    v22 = _Block_copy(&aBlock);

    v23 = [v16 actionWithTitle:v21 style:2 handler:v22];
    _Block_release(v22);

    v24 = [v1 callReportingViewModel];

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v20;
    v27 = v20;

    v28 = String._bridgeToObjectiveC()();

    v43 = partial apply for closure #3 in MPRecentsTableViewController.presentGroupFaceTimeSpamReportAndBlockAlert(for:);
    v44 = v26;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v42 = &block_descriptor_54_0;
    v29 = _Block_copy(&aBlock);

    v30 = [v16 actionWithTitle:v28 style:2 handler:v29];
    _Block_release(v29);

    [v11 addAction:v23];
    [v11 addAction:v30];
    [v11 addAction:oslog];
    v31 = [v1 alertPresentingViewController];
    if (v31)
    {
      v32 = v31;
      [v31 presentViewController:v11 animated:1 completion:0];
    }

    else
    {
      [v1 presentViewController:v11 animated:1 completion:0];
    }
  }

  else
  {
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.spamReport);
    osloga = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(osloga, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000100244FE0, &aBlock);
      _os_log_impl(&_mh_execute_header, osloga, v34, "MPRecentsTableViewController: in %s, call initiator is nil", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
    }

    else
    {
    }
  }
}

void closure #1 in MPRecentsTableViewController.presentGroupFaceTimeSpamReportAndBlockAlert(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000100244FE0, &v7);
      _os_log_impl(&_mh_execute_header, v3, v4, "MPRecentsTableViewController: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void closure #2 in MPRecentsTableViewController.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000100244FE0, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "MPRecentsTableViewController: in %s, user did tap on block", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = [v5 callReportingViewModel];
    specialized CallReportingViewModel.blockInitiator(spamCall:)(a3);

    v12 = CHRecentCall.initiatorHandle.getter();
    UIViewController.presentSafetyCheck(initiator:)();
  }
}

void closure #3 in MPRecentsTableViewController.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x8000000100244FE0, &v15);
      _os_log_impl(&_mh_execute_header, v7, v8, "MPRecentsTableViewController: in %s, user did tap on block and report", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = [v5 callReportingViewModel];
    specialized CallReportingViewModel.blockInitiator(spamCall:)(a3);

    v12 = [v5 callReportingViewModel];
    v13 = *&v12[OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager];
    FaceTimeSpamReportManager.reportSpam(call:)(a3);

    v14 = CHRecentCall.initiatorHandle.getter();
    UIViewController.presentSafetyCheck(initiator:)();
  }
}

void MPRecentsTableViewController.presentBlockUnknownParticipants(for:)(void *a1)
{
  v2 = v1;
  v4 = [v2 callReportingViewModel];

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v5 message:0 preferredStyle:0];

  v7 = [v2 callReportingViewModel];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();

  v32 = partial apply for closure #1 in MPRecentsTableViewController.presentBlockUnknownParticipants(for:);
  v33 = v8;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v31 = &block_descriptor_58;
  v10 = _Block_copy(&v28);

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:1 handler:v10];
  _Block_release(v10);

  v13 = [v2 callReportingViewModel];
  v14 = CallReportingViewModel.unknownHandles(in:)(a1);

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage;
  v17 = v14[2];
  while (v17 != v15)
  {
    if (v15 >= v14[2])
    {
      __break(1u);
      return;
    }

    v18 = v14[v15++ + 4];
    if (v18)
    {
      v19 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v28;
    }
  }

  v20 = [v2 callReportingViewModel];

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v16;

  v23 = String._bridgeToObjectiveC()();

  v32 = partial apply for closure #3 in MPRecentsTableViewController.presentBlockUnknownParticipants(for:);
  v33 = v22;
  v28 = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v31 = &block_descriptor_65;
  v24 = _Block_copy(&v28);

  v25 = [v11 actionWithTitle:v23 style:2 handler:v24];
  _Block_release(v24);

  [v6 addAction:v25];
  [v6 addAction:v12];
  v26 = [v2 alertPresentingViewController];
  if (v26)
  {
    v27 = v26;
    [v26 presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    [v2 presentViewController:v6 animated:1 completion:0];
  }
}

void closure #1 in MPRecentsTableViewController.presentBlockUnknownParticipants(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.spamReport);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000100247590, &v7);
      _os_log_impl(&_mh_execute_header, v3, v4, "MPRecentsTableViewController: in %s, user did tap on cancel", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t closure #3 in MPRecentsTableViewController.presentBlockUnknownParticipants(for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (one-time initialization token for spamReport != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.spamReport);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x8000000100247590, &v13);
      _os_log_impl(&_mh_execute_header, v7, v8, "MPRecentsTableViewController: in %s, user did tap on block unknown", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v11 = [v5 callReportingViewModel];
    specialized CallReportingViewModel.block(handles:)(a3);

    v12 = specialized _arrayForceCast<A, B>(_:)(a3);
    UIViewController.presentSafetyCheck(handles:)(v12);
  }

  return result;
}

Swift::Void __swiftcall MPRecentsTableViewController.showSafetyCheck(contacts:)(Swift::OpaquePointer contacts)
{
  type metadata accessor for CNContact();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 presentSafetyCheckFor:isa];
}

id RecentsCallServices.__allocating_init(groupConversationsEnabled:recentsCallServicesDialer:)(char a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized RecentsCallServices.__allocating_init(groupConversationsEnabled:recentsCallServicesDialer:)(a1, a2, v2);
}

id RecentsCallServices.placeCall(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = v1[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_groupConversationsEnabled];
  v7 = [a1 validRemoteParticipantHandles];
  v8 = v7;
  if (v6 != 1)
  {
    if (v7)
    {
      type metadata accessor for CHHandle();
      lazy protocol witness table accessor for type CHHandle and conformance NSObject();
      v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = (v11 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v11 + 16);

      if (v12 >= 2)
      {
        goto LABEL_17;
      }
    }

    [*&v1[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_recentsCallServicesDialer] performDialRequestForRecentCall:a1];
    static TaskPriority.background.getter();
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v1;
    v23[5] = a1;
    v24 = v1;
    v25 = a1;
    v26 = &async function pointer to partial apply for closure #2 in RecentsCallServices.placeCall(with:);
LABEL_24:
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, v26, v23);
  }

  if (!v7 || ((type metadata accessor for CHHandle(), lazy protocol witness table accessor for type CHHandle and conformance NSObject(), v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v8, (v9 & 0xC000000000000001) == 0) ? (v10 = *(v9 + 16)) : (v10 = __CocoaSet.count.getter()), , v10 < 2))
  {
LABEL_23:
    [*&v1[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_recentsCallServicesDialer] performDialRequestForRecentCall:a1];
    static TaskPriority.background.getter();
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v1;
    v23[5] = a1;
    v28 = v1;
    v29 = a1;
    v26 = &async function pointer to partial apply for closure #1 in RecentsCallServices.placeCall(with:);
    goto LABEL_24;
  }

  v13 = [a1 serviceProvider];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_22;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v17)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v15 != v18 || v17 != v19)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_17:
  v20 = *&v1[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_recentsCallServicesDialer];

  return [v20 performJoinRequestForRecentCall:a1];
}

id RecentsCallServices.eventSignal.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone19RecentsCallServices____lazy_storage___eventSignal;
  v2 = *(v0 + OBJC_IVAR____TtC11MobilePhone19RecentsCallServices____lazy_storage___eventSignal);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobilePhone19RecentsCallServices____lazy_storage___eventSignal);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TipsRecentsEventSignals()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id RecentsCallServices.init(groupConversationsEnabled:recentsCallServicesDialer:)(char a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized RecentsCallServices.init(groupConversationsEnabled:recentsCallServicesDialer:)(a1, a2, v2);
}

uint64_t closure #1 in RecentsCallServices.placeCall(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return (_swift_task_switch)(closure #1 in RecentsCallServices.placeCall(with:), 0, 0);
}

uint64_t closure #1 in RecentsCallServices.placeCall(with:)()
{
  v0[4] = RecentsCallServices.eventSignal.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = closure #1 in RecentsCallServices.placeCall(with:);
  v2 = v0[3];

  return specialized TipsRecentsEventSignals.donateTipsEventSignals(for:)(v2);
}

uint64_t closure #2 in RecentsCallServices.placeCall(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return (_swift_task_switch)(closure #2 in RecentsCallServices.placeCall(with:), 0, 0);
}

uint64_t closure #2 in RecentsCallServices.placeCall(with:)()
{
  v0[4] = RecentsCallServices.eventSignal.getter();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = closure #2 in RecentsCallServices.placeCall(with:);
  v2 = v0[3];

  return specialized TipsRecentsEventSignals.donateTipsEventSignals(for:)(v2);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id specialized RecentsCallServices.__allocating_init(groupConversationsEnabled:recentsCallServicesDialer:)(char a1, uint64_t a2, Class a3)
{
  v5 = objc_allocWithZone(a3);
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices____lazy_storage___eventSignal] = 0;
  v5[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_groupConversationsEnabled] = a1;
  *&v5[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_recentsCallServicesDialer] = a2;
  v8.receiver = v5;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t partial apply for closure #2 in RecentsCallServices.placeCall(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #2 in RecentsCallServices.placeCall(with:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in RecentsCallServices.placeCall(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in RecentsCallServices.placeCall(with:)(a1, v4, v5, v7, v6);
}

id specialized RecentsCallServices.init(groupConversationsEnabled:recentsCallServicesDialer:)(char a1, uint64_t a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices____lazy_storage___eventSignal] = 0;
  a3[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_groupConversationsEnabled] = a1;
  *&a3[OBJC_IVAR____TtC11MobilePhone19RecentsCallServices_recentsCallServicesDialer] = a2;
  v8.receiver = a3;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t one-time initialization function for typeDisplayRepresentation()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  __swift_allocate_value_buffer(v5, static MobilePhoneAppDeepLinks.typeDisplayRepresentation);
  __swift_project_value_buffer(v5, static MobilePhoneAppDeepLinks.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t MobilePhoneAppDeepLinks.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static MobilePhoneAppDeepLinks.typeDisplayRepresentation);
}

uint64_t static MobilePhoneAppDeepLinks.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static MobilePhoneAppDeepLinks.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for caseDisplayRepresentations()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = v31 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = v31 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MobilePhone0dE12AppDeepLinksO_0F7Intents21DisplayRepresentationVtGMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone0aB12AppDeepLinksO_0C7Intents21DisplayRepresentationVtMd);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v36 = 4 * v11;
  v13 = swift_allocObject();
  v37 = v13;
  *(v13 + 16) = xmmword_10020D050;
  v14 = v13 + v12;
  v35 = *(v10 + 48);
  *(v13 + v12) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v15 = *(v7 + 56);
  v40 = v7 + 56;
  v34 = v15;
  v38 = v6;
  v15(v5, 0, 1, v6);
  v39 = type metadata accessor for DisplayRepresentation.Image();
  v16 = *(v39 - 8);
  v17 = *(v16 + 56);
  v42 = v16 + 56;
  v43 = v17;
  v17(v2, 1, 1, v39);
  v18 = v14;
  v31[0] = v9;
  v19 = v2;
  DisplayRepresentation.init(title:subtitle:image:)();
  v32 = v10;
  v33 = v11;
  v41 = v14;
  v35 = *(v10 + 48);
  *(v14 + v11) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v20 = v34;
  v34(v5, 0, 1, v6);
  v21 = v2;
  v22 = v39;
  v23 = v43;
  v43(v21, 1, 1, v39);
  DisplayRepresentation.init(title:subtitle:image:)();
  v35 = 2 * v11;
  v31[1] = *(v10 + 48);
  *(v18 + 2 * v11) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v24 = v38;
  v20(v5, 0, 1, v38);
  v25 = v20;
  v23(v19, 1, 1, v22);
  DisplayRepresentation.init(title:subtitle:image:)();
  v26 = v41;
  v27 = (v41 + v35 + v33);
  v35 = *(v32 + 48);
  *v27 = 3;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v25(v5, 0, 1, v24);
  v28 = v39;
  v43(v19, 1, 1, v39);
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v26 + v36) = 4;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v25(v5, 0, 1, v38);
  v43(v19, 1, 1, v28);
  DisplayRepresentation.init(title:subtitle:image:)();
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11MobilePhone0cD12AppDeepLinksO_0E7Intents21DisplayRepresentationVTt0g5Tf4g_n(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static MobilePhoneAppDeepLinks.caseDisplayRepresentations = v29;
  return result;
}

uint64_t *MobilePhoneAppDeepLinks.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (one-time initialization token for caseDisplayRepresentations != -1)
  {
    swift_once();
  }

  return &static MobilePhoneAppDeepLinks.caseDisplayRepresentations;
}

uint64_t static MobilePhoneAppDeepLinks.caseDisplayRepresentations.getter()
{
  if (one-time initialization token for caseDisplayRepresentations != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for urlRepresentation()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22_EnumURLRepresentationVy11MobilePhone0efA9DeepLinksOGMd);
  __swift_allocate_value_buffer(v0, static MobilePhoneAppDeepLinks.urlRepresentation);
  __swift_project_value_buffer(v0, static MobilePhoneAppDeepLinks.urlRepresentation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MobilePhone0dE12AppDeepLinksO_0F7Intents22_EnumURLRepresentationV0j6SingleK0VyAE_GtGMd);
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone0aB12AppDeepLinksO_0C7Intents22_EnumURLRepresentationV0g6SingleH0VyAC_GtMd) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10020D050;
  v5 = v4 + v3;
  *(v4 + v3) = 0;
  lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();
  _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)();
  *(v5 + v2) = 1;
  _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)();
  *(v5 + 2 * v2) = 2;
  _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)();
  *(v5 + 3 * v2) = 3;
  _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)();
  *(v5 + 4 * v2) = 4;
  _EnumURLRepresentation.EnumSingleURLRepresentation.init(stringLiteral:)();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11MobilePhone0cD12AppDeepLinksO_0E7Intents22_EnumURLRepresentationV0i6SingleJ0VyAE_GTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return _EnumURLRepresentation.init(_:)();
}

uint64_t MobilePhoneAppDeepLinks.urlRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for urlRepresentation != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22_EnumURLRepresentationVy11MobilePhone0efA9DeepLinksOGMd);

  return __swift_project_value_buffer(v0, static MobilePhoneAppDeepLinks.urlRepresentation);
}

uint64_t static MobilePhoneAppDeepLinks.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for urlRepresentation != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22_EnumURLRepresentationVy11MobilePhone0efA9DeepLinksOGMd);
  v3 = __swift_project_value_buffer(v2, static MobilePhoneAppDeepLinks.urlRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MobilePhoneAppDeepLinks.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x657469726F766146;
  v2 = 0x73746361746E6F43;
  v3 = 0x64617079654BLL;
  if (a1 != 3)
  {
    v3 = 0x69616D6563696F56;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x73746E65636552;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MobilePhoneAppDeepLinks(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE90000000000006CLL;
  v3 = 0x657469726F766146;
  v4 = *a1;
  v5 = *a2;
  v6 = 0xE900000000000073;
  v7 = 0xE800000000000000;
  v8 = 0x73746361746E6F43;
  v9 = 0xE600000000000000;
  v10 = 0x64617079654BLL;
  if (v4 != 3)
  {
    v10 = 0x69616D6563696F56;
    v9 = 0xE90000000000006CLL;
  }

  if (v4 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0xE700000000000000;
  v12 = 0x73746E65636552;
  if (!*a1)
  {
    v12 = 0x657469726F766146;
    v11 = 0xE900000000000073;
  }

  if (*a1 <= 1u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v4 <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  v15 = 0x73746361746E6F43;
  v16 = 0x64617079654BLL;
  if (v5 == 3)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v16 = 0x69616D6563696F56;
  }

  if (v5 == 2)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v15 = v16;
  }

  if (*a2)
  {
    v3 = 0x73746E65636552;
    v6 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v17 = v3;
  }

  else
  {
    v17 = v15;
  }

  if (*a2 <= 1u)
  {
    v18 = v6;
  }

  else
  {
    v18 = v2;
  }

  if (v13 == v17 && v14 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MobilePhoneAppDeepLinks()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MobilePhoneAppDeepLinks()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MobilePhoneAppDeepLinks()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MobilePhoneAppDeepLinks@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MobilePhoneAppDeepLinks.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MobilePhoneAppDeepLinks(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006CLL;
  v3 = *v1;
  v4 = 0xE900000000000073;
  v5 = 0x657469726F766146;
  v6 = 0xE800000000000000;
  v7 = 0x73746361746E6F43;
  v8 = 0x64617079654BLL;
  if (v3 == 3)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x69616D6563696F56;
  }

  if (v3 != 2)
  {
    v7 = v8;
    v6 = v2;
  }

  if (*v1)
  {
    v5 = 0x73746E65636552;
    v4 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (*v1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t protocol witness for _CustomURLRepresentationParameterConvertible.urlRepresentationParameter.getter in conformance MobilePhoneAppDeepLinks()
{
  lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();
  v1 = _URLRepresentableEnum.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance MobilePhoneAppDeepLinks(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance MobilePhoneAppDeepLinks(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MobilePhoneAppDeepLinks and conformance MobilePhoneAppDeepLinks();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t specialized MobilePhoneAppDeepLinks.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MobilePhoneAppDeepLinks.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type [MobilePhoneAppDeepLinks] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MobilePhoneAppDeepLinks] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MobilePhoneAppDeepLinks] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11MobilePhone0aB12AppDeepLinksOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MobilePhoneAppDeepLinks] and conformance [A]);
  }

  return result;
}

uint64_t ContactsReportAndBlockTableViewModel.shouldShowBlockAll.getter()
{
  v1 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ContactsReportAndBlockTableViewModel.shouldShowBlockAll.setter(char a1)
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ContactsReportAndBlockTableViewModel.shouldShowReportInitiator.getter()
{
  v1 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ContactsReportAndBlockTableViewModel.shouldShowReportInitiator.setter(char a1)
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ContactsReportAndBlockTableViewModel.shouldShowBlockUnknown.getter()
{
  v1 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ContactsReportAndBlockTableViewModel.shouldShowBlockUnknown.setter(char a1)
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ContactsReportAndBlockTableViewModel.recentCall.getter()
{
  v1 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ContactsReportAndBlockTableViewModel.recentCall.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ContactsReportAndBlockTableViewModel.reportSpammer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id ContactsReportAndBlockTableViewModel.__allocating_init(shouldShowBlockAll:shouldShowReportInitiator:shouldShowBlockUnknown:recentCall:reportSpammer:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return specialized ContactsReportAndBlockTableViewModel.__allocating_init(shouldShowBlockAll:shouldShowReportInitiator:shouldShowBlockUnknown:recentCall:reportSpammer:)(a1, a2, a3, a4, a5, v5);
}

id ContactsReportAndBlockTableViewModel.init(shouldShowBlockAll:shouldShowReportInitiator:shouldShowBlockUnknown:recentCall:reportSpammer:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return specialized ContactsReportAndBlockTableViewModel.init(shouldShowBlockAll:shouldShowReportInitiator:shouldShowBlockUnknown:recentCall:reportSpammer:)(a1, a2, a3, a4, a5, v5);
}

uint64_t ContactsReportAndBlockTableViewModel.numberOfSections.getter()
{
  v1 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 2;
  }

  v2 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    return 2;
  }

  v4 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t @objc ContactsReportAndBlockTableViewModel.block(contacts:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  specialized ContactsReportAndBlockTableViewModel.block(contacts:)(v6, a4);
}

id ContactsReportAndBlockTableViewModel.report(recentCall:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_os_log);
  v4 = a1;
  v5 = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "calling from contactsViewModel %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
  }

  v10 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer;
  swift_beginAccess();
  return [*(v2 + v10) reportSpamWithCall:v4];
}

Swift::Void __swiftcall ContactsReportAndBlockTableViewModel.fetchSharing()()
{
  type metadata accessor for SafetyCheckManager();
  v0 = static SafetyCheckManager.shared.getter();
  SafetyCheckManager.fetchSharing()();
}

uint64_t ContactsReportAndBlockTableViewModel.formattedInitiatorValue.getter()
{
  v1 = OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall;
  swift_beginAccess();
  v2 = [*(v0 + v1) initiator];
  if (!v2 || (v3 = v2, v4 = [v2 formattedPhoneNumber], v3, !v4))
  {
    v5 = [*(v0 + v1) initiator];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v4 = [v5 value];
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

Swift::Void __swiftcall CNContact.mp_unblock()()
{
  v1 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v9 = [v6 value];
        v10 = [v9 digits];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = TUHomeCountryCode();
        if (v11)
        {
          v12 = v11;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = String._bridgeToObjectiveC()();

        if (v14)
        {
          v16 = String._bridgeToObjectiveC()();
        }

        else
        {
          v16 = 0;
        }

        v17 = [objc_allocWithZone(TUPhoneNumber) initWithDigits:v15 countryCode:v16];

        if (v17)
        {
          v18 = [objc_opt_self() sharedPrivacyManager];
          if (!v18)
          {
LABEL_42:
            __break(1u);
            return;
          }

          v5 = v18;
          [v18 setBlockIncomingCommunication:0 forPhoneNumber:v17];
        }

        ++v4;
      }

      while (v8 != i);
    }

    swift_bridgeObjectRelease_n();
    v19 = [v28 emailAddresses];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      break;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_38;
    }

LABEL_23:
    v2 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v22 = *(v20 + 8 * v2 + 32);
      }

      v23 = v22;
      v24 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v25 = [objc_opt_self() sharedPrivacyManager];
      if (!v25)
      {
        __break(1u);
        goto LABEL_42;
      }

      v26 = v25;
      v27 = [v23 value];
      [v26 setBlockIncomingCommunication:0 forEmailAddress:v27];

      ++v2;
      if (v24 == v21)
      {
        goto LABEL_38;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (v21)
  {
    goto LABEL_23;
  }

LABEL_38:
}

Swift::Void __swiftcall CNContact.mp_block()()
{
  if (one-time initialization token for spamReport != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.spamReport);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v38 = v2;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v5 = 136315394;
      v6 = [v2 phoneNumbers];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14CNLabeledValueCGMd);
      v7 = String.init<A>(reflecting:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v39);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v10 = [v2 emailAddresses];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v39);

      *(v5 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "Block: blocking phoneNumbers %s \n\n emailAddreses: %s", v5, 0x16u);
      swift_arrayDestroy();
    }

    v0 = [v2 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = v14 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
      break;
    }

LABEL_24:
    swift_bridgeObjectRelease_n();
    v29 = [v38 emailAddresses];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v30 >> 62)
    {
      v0 = _CocoaArrayWrapper.endIndex.getter();
      if (!v0)
      {
LABEL_42:

        return;
      }
    }

    else
    {
      v0 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v0)
      {
        goto LABEL_42;
      }
    }

    v31 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v32 = *(v30 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        break;
      }

      v35 = [objc_opt_self() sharedPrivacyManager];
      if (!v35)
      {
        __break(1u);
        goto LABEL_44;
      }

      v36 = v35;
      v37 = [v33 value];
      [v36 setBlockIncomingCommunication:1 forEmailAddress:v37];

      ++v31;
      if (v34 == v0)
      {
        goto LABEL_42;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v16 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v18 = *(v14 + 8 * v16 + 32);
    }

    v19 = v18;
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v0 = [v18 value];
    v21 = [v0 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = TUHomeCountryCode();
    if (v22)
    {
      v0 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = String._bridgeToObjectiveC()();

    if (v24)
    {
      v26 = String._bridgeToObjectiveC()();
    }

    else
    {
      v26 = 0;
    }

    v27 = [objc_allocWithZone(TUPhoneNumber) initWithDigits:v25 countryCode:v26];

    if (v27)
    {
      break;
    }

LABEL_9:
    ++v16;
    if (v20 == v15)
    {
      goto LABEL_24;
    }
  }

  v28 = [objc_opt_self() sharedPrivacyManager];
  if (v28)
  {
    v17 = v28;
    [v28 setBlockIncomingCommunication:1 forPhoneNumber:v27];

    goto LABEL_9;
  }

LABEL_44:
  __break(1u);
}

void -[CNContact mp_block](CNContact *self, SEL a2)
{
  v2 = self;
  CNContact.mp_block()();
}

Swift::Bool __swiftcall CNContact.mp_isBlocked()()
{
  v1 = v0;
  v2 = [v0 phoneNumbers];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_42;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (!v5)
  {
    v30 = 1;
    goto LABEL_24;
  }

  v28 = v3;
  v29 = v1;
  v3 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v6 = *(v4 + 8 * v3 + 32);
    }

    v7 = v6;
    v1 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_40;
    }

    v8 = [v6 value];
    v9 = [v8 digits];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = TUHomeCountryCode();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = String._bridgeToObjectiveC()();

    if (v13)
    {
      v15 = String._bridgeToObjectiveC()();
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_allocWithZone(TUPhoneNumber) initWithDigits:v14 countryCode:v15];

    if (v16)
    {
      break;
    }

LABEL_5:
    ++v3;
    if (v1 == v5)
    {
      v30 = 1;
LABEL_23:
      v3 = v28;
      v1 = v29;
LABEL_24:
      swift_bridgeObjectRelease_n();
      v20 = [v1 emailAddresses];
      v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v1 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = 0;
      while (v21 != v4)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v22 = *(v1 + 8 * v4 + 32);
        }

        v3 = v22;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v5 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v17 = [objc_opt_self() sharedPrivacyManager];
        if (!v17)
        {
          __break(1u);
          goto LABEL_45;
        }

        v23 = v17;
        v24 = [v3 value];
        v25 = [v23 isIncomingCommunicationBlockedForEmailAddress:v24];

        ++v4;
        if ((v25 & 1) == 0)
        {
          v26 = 0;
LABEL_37:

          LOBYTE(v17) = v26;
          return v17;
        }
      }

      v26 = v30;
      goto LABEL_37;
    }
  }

  v17 = [objc_opt_self() sharedPrivacyManager];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 isIncomingCommunicationBlockedForPhoneNumber:v16];

    if ((v19 & 1) == 0)
    {
      v30 = 0;
      goto LABEL_23;
    }

    goto LABEL_5;
  }

LABEL_45:
  __break(1u);
  return v17;
}

id @objc ContactsReportAndBlockTableViewModel.formattedInitiatorValue.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id CHHandle.formattedPhoneNumber.getter()
{
  if ([v0 type] != 2)
  {
    return 0;
  }

  result = [v0 value];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = PNCopyBestGuessCountryCodeForNumber();

  if (!v3)
  {
    return 0;
  }

  result = [v0 value];
  if (result)
  {
    v4 = result;
    v5 = CFPhoneNumberCreate();

    if (v5)
    {
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v7 = String;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v8;
      }
    }

    return 0;
  }

LABEL_12:
  __break(1u);
  return result;
}

id specialized ContactsReportAndBlockTableViewModel.__allocating_init(shouldShowBlockAll:shouldShowReportInitiator:shouldShowBlockUnknown:recentCall:reportSpammer:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5, Class a6)
{
  v11 = objc_allocWithZone(a6);
  ObjectType = swift_getObjectType();
  v11[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll] = a1;
  v11[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator] = a2;
  v11[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown] = a3;
  *&v11[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall] = a4;
  *&v11[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer] = a5;
  v14.receiver = v11;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

id specialized ContactsReportAndBlockTableViewModel.init(shouldShowBlockAll:shouldShowReportInitiator:shouldShowBlockUnknown:recentCall:reportSpammer:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  ObjectType = swift_getObjectType();
  a6[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll] = a1;
  a6[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator] = a2;
  a6[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown] = a3;
  *&a6[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall] = a4;
  *&a6[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer] = a5;
  v14.receiver = a6;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t specialized ContactsReportAndBlockTableViewModel.block(contacts:safetyCheckPresenter:)(unint64_t a1, objc_class *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 mp_block];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  type metadata accessor for SafetyCheckManager();
  v9 = static SafetyCheckManager.shared.getter();
  v10 = specialized _arrayForceCast<A, B>(_:)(a1);
  v13.value.super.super.isa = a2;
  SafetyCheckManager.present(for:on:)(v10, v13);
}

void specialized ContactsReportAndBlockTableViewModel.block(contacts:)(unint64_t a1, SEL *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 *a2];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t one-time initialization function for lastWarnedValueKey()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static VoicemailUsageService.Constants.lastWarnedValueKey = result;
  unk_1002CF050 = v1;
  return result;
}

uint64_t *VoicemailUsageService.Constants.lastWarnedValueKey.unsafeMutableAddressor()
{
  if (one-time initialization token for lastWarnedValueKey != -1)
  {
    swift_once();
  }

  return &static VoicemailUsageService.Constants.lastWarnedValueKey;
}

uint64_t static VoicemailUsageService.Constants.lastWarnedValueKey.getter()
{
  if (one-time initialization token for lastWarnedValueKey != -1)
  {
    swift_once();
  }

  v0 = static VoicemailUsageService.Constants.lastWarnedValueKey;

  return v0;
}

id one-time initialization function for shared()
{
  v0 = type metadata accessor for VoicemailUsageService();
  type metadata accessor for ApplicationServices();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = (*((swift_isaMask & *v1) + 0xC0))();

  swift_getObjectType();
  result = specialized VoicemailUsageService.init(accountManager:)(v2, objc_allocWithZone(v0));
  static VoicemailUsageService.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for DummyVoicemailMessageDetailViewControllerDelegate()) init];
  static DummyVoicemailMessageDetailViewControllerDelegate.shared = result;
  return result;
}

{
  type metadata accessor for DummyVoicemailNavigationController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static DummyVoicemailNavigationController.shared = result;
  return result;
}

id VoicemailUsageService.__allocating_init(accountManager:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized VoicemailUsageService.__allocating_init(accountManager:)(a1, v1);
}

uint64_t *VoicemailUsageService.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static VoicemailUsageService.shared;
}

id static VoicemailUsageService.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static VoicemailUsageService.shared;

  return v1;
}

void VoicemailUsageService.alertController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*VoicemailUsageService.alertController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MPVoicemailUsageService_alertController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return VoicemailSearchMetadataView.delegate.modify;
}

id VoicemailUsageService.init(accountManager:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized VoicemailUsageService.init(accountManager:)(a1, v1);
}

Swift::Void __swiftcall VoicemailUsageService.checkUsageAndPresentIfNeeded(host:)(UIViewController host)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

LABEL_3:
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.mobilePhone);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "VoicemailUsageService - deferring mailbox usage check, since we're already showing a mailbox alert", v7, 2u);
    }

    goto LABEL_38;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 isBeingPresented];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  isa = host.super.super.isa;
  v11 = [*(v1 + OBJC_IVAR___MPVoicemailUsageService_accountManager) storageUsage];
  if (one-time initialization token for lastWarnedValueKey != -1)
  {
    swift_once();
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = PHPreferencesGetValue();

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  aBlock = v54;
  v51 = v55;
  if (*(&v55 + 1))
  {
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v49;
    }

    else
    {
      v15 = 0;
    }

    v16 = v14 ^ 1;
  }

  else
  {
    outlined destroy of Any?(&aBlock);
    v15 = 0;
    v16 = 1;
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.mobilePhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    if (v16)
    {
      v21 = 0;
    }

    else
    {
      v21 = v15;
    }

    *(v20 + 4) = v21;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v18, v19, "VoicemailUsageService -  hasLastWarnedValue = %lu, current mailbox usage = %lu", v20, 0x16u);
  }

  if (v11 < 0x5A)
  {
    goto LABEL_28;
  }

  if (v16)
  {
    goto LABEL_30;
  }

  if (v11 < v15)
  {
LABEL_28:
    v5 = String._bridgeToObjectiveC()();
    PHPreferencesSetValueInDomain();
LABEL_38:

    return;
  }

  if (v15 < v11)
  {
LABEL_30:
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = objc_opt_self();
    v24 = [v23 bundleForClass:ObjCClassFromMetadata];
    v56._object = 0xE000000000000000;
    v25.value._countAndFlagsBits = 0x69616D6563696F56;
    v26._object = 0x80000001002479E0;
    v26._countAndFlagsBits = 0xD00000000000002ALL;
    v25.value._object = 0xE90000000000006CLL;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100209AA0;
    *(v28 + 56) = &type metadata for UInt;
    *(v28 + 64) = &protocol witness table for UInt;
    *(v28 + 32) = v11;
    String.init(format:_:)();

    v29 = [v23 bundleForClass:ObjCClassFromMetadata];
    v57._object = 0xE000000000000000;
    v30._countAndFlagsBits = 0x474E494E524157;
    v30._object = 0xE700000000000000;
    v31.value._countAndFlagsBits = 0x69616D6563696F56;
    v31.value._object = 0xE90000000000006CLL;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v57);

    v33 = String._bridgeToObjectiveC()();

    v34 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() alertControllerWithTitle:v33 message:v34 preferredStyle:1];

    swift_unknownObjectWeakAssign();
    v35 = [v23 bundleForClass:ObjCClassFromMetadata];
    v58._object = 0xE000000000000000;
    v36._countAndFlagsBits = 19279;
    v36._object = 0xE200000000000000;
    v37.value._countAndFlagsBits = 0x69616D6563696F56;
    v37.value._object = 0xE90000000000006CLL;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v58._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v58);

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v40[2] = v11;
    v40[3] = v39;
    v40[4] = isa;

    v41 = isa;
    v42 = String._bridgeToObjectiveC()();

    v52 = partial apply for closure #1 in VoicemailUsageService.checkUsageAndPresentIfNeeded(host:);
    v53 = v40;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v51 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    *(&v51 + 1) = &block_descriptor_26;
    v43 = _Block_copy(&aBlock);

    v44 = [objc_opt_self() actionWithTitle:v42 style:0 handler:v43];
    _Block_release(v43);

    [v5 addAction:v44];
    v45 = v41;
    v46 = [(objc_class *)v45 presentedViewController];
    if (v46)
    {
      do
      {
        v47 = v46;

        v46 = [(objc_class *)v47 presentedViewController];
        v45 = v47;
      }

      while (v46);
    }

    else
    {
      v47 = v45;
    }

    [(objc_class *)v47 presentViewController:v5 animated:1 completion:0];

    goto LABEL_38;
  }
}

void closure #1 in VoicemailUsageService.checkUsageAndPresentIfNeeded(host:)(uint64_t a1, uint64_t a2, uint64_t a3, UIViewController a4)
{
  if (one-time initialization token for lastWarnedValueKey != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a2];
  PHPreferencesSetValueInDomain();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();

    if (v10)
    {
      [v10 dismissViewControllerAnimated:1 completion:0];
    }
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    VoicemailUsageService.checkUsageAndPresentIfNeeded(host:)(a4);
  }
}

id specialized VoicemailUsageService.__allocating_init(accountManager:)(uint64_t a1, Class a2)
{
  v3 = objc_allocWithZone(a2);

  return specialized VoicemailUsageService.init(accountManager:)(a1, v3);
}

id specialized VoicemailUsageService.init(accountManager:)(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR___MPVoicemailUsageService_accountManager] = a1;
  v6.receiver = a2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1001C324C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001C3284()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C32E8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

unint64_t VoicemailManagerMessageChanges.description.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      _StringGuts.grow(_:)(43);

      v2 = 0xD000000000000028;
      goto LABEL_7;
    }

LABEL_5:
    _StringGuts.grow(_:)(42);

    v2 = 0xD000000000000027;
LABEL_7:
    v6 = v2;
    type metadata accessor for MessageID(0);
    v3._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 41;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    return v6;
  }

  if (a2 == 2)
  {
    goto LABEL_5;
  }

  return 0xD000000000000025;
}

uint64_t get_enum_tag_for_layout_string_11MobilePhone30VoicemailManagerMessageChangesO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for VoicemailManagerMessageChanges(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailManagerMessageChanges(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for VoicemailManagerMessageChanges(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t PHCarPlayRecentsOngoingMultiwayTableViewCell.callName.getter()
{
  v1 = (v0 + OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id PHCarPlayRecentsOngoingMultiwayTableViewCell.callName.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  return [v2 setNeedsUpdateConfiguration];
}

void key path getter for PHCarPlayRecentsOngoingMultiwayTableViewCell.callName : PHCarPlayRecentsOngoingMultiwayTableViewCell(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 callName];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for PHCarPlayRecentsOngoingMultiwayTableViewCell.callName : PHCarPlayRecentsOngoingMultiwayTableViewCell(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCallName:?];
}

uint64_t PHCarPlayRecentsOngoingMultiwayTableViewCell.updateConfiguration(using:)(uint64_t a1)
{
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  __chkstk_darwin(v5 - 8);
  v21 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSg_AA6VStackVyAGyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGSg_AIyA5_AA16_BlendModeEffectVGtGGtGGAA05EmptyG0VGMd);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
  {
    v11 = 1;
  }

  else
  {
    v11 = UICellConfigurationState.isHighlighted.getter();
  }

  v12 = __chkstk_darwin(v11);
  *(&v20 - 4) = v1;
  *(&v20 - 24) = v12 & 1;
  *(&v20 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGSg_AA6VStackVyAEyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA023AccessibilityAttachmentR0VGSg_AGyA3_AA16_BlendModeEffectVGtGGtGGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect>)>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameK0VGSg_AA6VStackVyAEyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleR0VyAA5ColorVGGAA023AccessibilityAttachmentR0VGSg_AGyA3_AA16_BlendModeEffectVGtGGtGGMd);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v25[3] = v7;
  v25[4] = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type UIHostingConfiguration<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>>, _BlendModeEffect>)>>)>>, EmptyView> and conformance UIHostingConfiguration<A, B>, &_s7SwiftUI22UIHostingConfigurationVyAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAIyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameM0VGSg_AA6VStackVyAGyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGSg_AIyA5_AA16_BlendModeEffectVGtGGtGGAA05EmptyG0VGMd);
  __swift_allocate_boxed_opaque_existential_1(v25);
  UIHostingConfiguration.margins(_:_:)();
  (*(v8 + 8))(v10, v7);
  UITableViewCell.contentConfiguration.setter();
  v13 = v22;
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v14 = &selRef_dynamicCarFocusedColor;
  }

  else
  {
    v14 = &selRef_clearColor;
  }

  v15 = [objc_opt_self() *v14];
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  v17 = v23;
  v16 = v24;
  v18 = v21;
  (*(v23 + 32))(v21, v13, v24);
  (*(v17 + 56))(v18, 0, 1, v16);
  return UITableViewCell.backgroundConfiguration.setter();
}

uint64_t closure #1 in PHCarPlayRecentsOngoingMultiwayTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4020000000000000;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA6VStackVyAIyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleT0VyAA5ColorVGGAA023AccessibilityAttachmentT0VGSg_AKyA7_AA16_BlendModeEffectVGtGGtGGMd);
  return closure #1 in closure #1 in PHCarPlayRecentsOngoingMultiwayTableViewCell.updateConfiguration(using:)(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t closure #1 in closure #1 in PHCarPlayRecentsOngoingMultiwayTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v36 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSg_AGyAtA16_BlendModeEffectVGtGGMd);
  v7 = __chkstk_darwin(v6 - 8);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Image.ResizingMode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 phImageNamed:v16];

  if (v17)
  {
    v18 = v17;
    Image.init(uiImage:)();
    (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v12 + 8))(v14, v11);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    LOBYTE(v45[0]) = 1;
    v17 = v45[9];
    v20 = v45[10];
    v21 = v45[11];
    v37 = v45[12];
    v22 = v45[13];
    v35 = v45[14];
    v23 = 1;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v37 = 0;
    v22 = 0;
    v35 = 0;
    v23 = 0;
  }

  v33 = v23;
  v34 = v22;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleO0VyAA5ColorVGGAA023AccessibilityAttachmentO0VGSg_AKyAxA16_BlendModeEffectVGtGGMd);
  closure #1 in closure #1 in closure #1 in PHCarPlayRecentsOngoingMultiwayTableViewCell.updateConfiguration(using:)(a1, v39 & 1, a3, &v10[*(v24 + 44)]);
  v25 = v38;
  outlined init with copy of Binding<EditMode>?(v10, v38, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSg_AGyAtA16_BlendModeEffectVGtGGMd);
  v40 = v19;
  *&v41 = v23;
  *(&v41 + 1) = v17;
  *&v42 = v20;
  v26 = v37;
  *(&v42 + 1) = v21;
  *&v43 = v37;
  v27 = v35;
  *(&v43 + 1) = v22;
  v44 = v35;
  v28 = v36;
  *(v36 + 64) = v35;
  v29 = v43;
  v28[2] = v42;
  v28[3] = v29;
  v30 = v41;
  *v28 = v40;
  v28[1] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSg_AA6VStackVyAA9TupleViewVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleQ0VyAA5ColorVGGAA023AccessibilityAttachmentQ0VGSg_ACyA1_AA16_BlendModeEffectVGtGGtMd);
  outlined init with copy of Binding<EditMode>?(v25, v28 + *(v31 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSg_AGyAtA16_BlendModeEffectVGtGGMd);
  outlined init with copy of Binding<EditMode>?(&v40, v45, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSg_AGyAtA16_BlendModeEffectVGtGGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v25, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSg_AGyAtA16_BlendModeEffectVGtGGMd);
  v45[0] = v19;
  v45[1] = 0;
  v45[2] = v33;
  v45[3] = v17;
  v45[4] = v20;
  v45[5] = v21;
  v45[6] = v26;
  v45[7] = v34;
  v45[8] = v27;
  return outlined destroy of (NSAttributedStringKey, Any)(v45, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGSgMd);
}

uint64_t closure #1 in closure #1 in closure #1 in PHCarPlayRecentsOngoingMultiwayTableViewCell.updateConfiguration(using:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v98 = a2;
  v109 = a4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
  v6 = __chkstk_darwin(v105);
  v108 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v90 - v9;
  __chkstk_darwin(v8);
  v107 = v90 - v11;
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v14 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v103 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessibilityTraits();
  v102 = *(v17 - 8);
  __chkstk_darwin(v17);
  v101 = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v97 = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v100 = v90 - v24;
  __chkstk_darwin(v23);
  v99 = v90 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGSgMd);
  v27 = __chkstk_darwin(v26 - 8);
  v104 = v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = v90 - v29;
  v31 = [a1 callName];
  v110 = v30;
  v106 = a3;
  if (v31)
  {
    v96 = v17;
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      v93 = v20;
      v94 = v19;
      v95 = v14;
      v91 = v33;
      v111 = v33;
      v112 = v35;
      v37 = lazy protocol witness table accessor for type String and conformance String();
      v92 = v35;

      v90[1] = v37;
      v38 = Text.init<A>(_:)();
      v40 = v39;
      v42 = v41;
      static Font.callout.getter();
      v43 = Text.font(_:)();
      v45 = v44;
      v47 = v46;

      outlined consume of Text.Storage(v38, v40, v42 & 1);

      static Font.Weight.medium.getter();
      v48 = Text.fontWeight(_:)();
      v50 = v49;
      v52 = v51;
      v54 = v53;
      outlined consume of Text.Storage(v43, v45, v47 & 1);

      KeyPath = swift_getKeyPath();
      if (v98)
      {
        v56 = [objc_opt_self() dynamicCarFocusedLabelColor];
        v57 = Color.init(uiColor:)();
      }

      else
      {
        v57 = static Color.primary.getter();
      }

      v120 = v52 & 1;
      v119 = 0;
      v111 = v48;
      v112 = v50;
      v113 = v52 & 1;
      v114 = v54;
      v115 = KeyPath;
      v116 = 2;
      v117 = 0;
      v118 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      v58 = v97;
      View.accessibilityIdentifier(_:)();
      outlined consume of Text.Storage(v48, v50, v52 & 1);

      v111 = v91;
      v112 = v92;
      v59 = v100;
      v60 = v94;
      ModifiedContent<>.accessibilityLabel<A>(_:)();
      outlined destroy of (NSAttributedStringKey, Any)(v58, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd);

      v61 = v101;
      static AccessibilityTraits.isButton.getter();
      v62 = v99;
      ModifiedContent<>.accessibilityAddTraits(_:)();
      (*(v102 + 8))(v61, v96);
      outlined destroy of (NSAttributedStringKey, Any)(v59, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd);
      v63 = v110;
      outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v62, v110, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd);
      (*(v93 + 56))(v63, 0, 1, v60);
      goto LABEL_11;
    }
  }

  (*(v20 + 56))(v30, 1, 1, v19);
LABEL_11:
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for PHCarPlayRecentsOngoingMultiwayTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  v111 = String.init(localized:table:bundle:locale:comment:)();
  v112 = v66;
  lazy protocol witness table accessor for type String and conformance String();
  v67 = Text.init<A>(_:)();
  v69 = v68;
  v71 = v70;
  static Font.caption.getter();
  v72 = Text.font(_:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;

  outlined consume of Text.Storage(v67, v69, v71 & 1);

  v79 = swift_getKeyPath();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v80 = [objc_opt_self() dynamicCarFocusedPrimaryLabelColor];
    v81 = Color.init(uiColor:)();
  }

  else
  {
    v81 = static Color.secondary.getter();
  }

  v82 = v81;
  LOBYTE(v111) = v76 & 1;
  v120 = 0;
  UICellConfigurationState.secondaryBlendMode.getter(&v10[*(v105 + 36)]);
  *v10 = v72;
  *(v10 + 1) = v74;
  v10[16] = v111;
  *(v10 + 3) = v78;
  *(v10 + 4) = v79;
  *(v10 + 5) = 1;
  v10[48] = v120;
  *(v10 + 7) = v82;
  v83 = v107;
  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v10, v107, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
  v84 = v110;
  v85 = v104;
  outlined init with copy of Binding<EditMode>?(v110, v104, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGSgMd);
  v86 = v108;
  outlined init with copy of Binding<EditMode>?(v83, v108, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
  v87 = v109;
  outlined init with copy of Binding<EditMode>?(v85, v109, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGSgMd);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGSg_ACyApA16_BlendModeEffectVGtMd);
  outlined init with copy of Binding<EditMode>?(v86, v87 + *(v88 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v83, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
  outlined destroy of (NSAttributedStringKey, Any)(v84, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v86, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA16_BlendModeEffectVGMd);
  return outlined destroy of (NSAttributedStringKey, Any)(v85, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGSgMd);
}

id PHCarPlayRecentsOngoingMultiwayTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStyle:a1 reuseIdentifier:v4];

  return v5;
}

{
  v5 = &v3[OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = PHCarPlayRecentsOngoingMultiwayTableViewCell;
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v6);

  return v7;
}

id PHCarPlayRecentsOngoingMultiwayTableViewCell.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder:a1];

  return v2;
}

{
  v3 = (v1 + OBJC_IVAR___PHCarPlayRecentsOngoingMultiwayTableViewCell_callName);
  *v3 = 0;
  v3[1] = 0;
  v6.super_class = PHCarPlayRecentsOngoingMultiwayTableViewCell;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

unint64_t type metadata accessor for PHCarPlayRecentsOngoingMultiwayTableViewCell()
{
  result = lazy cache variable for type metadata for PHCarPlayRecentsOngoingMultiwayTableViewCell;
  if (!lazy cache variable for type metadata for PHCarPlayRecentsOngoingMultiwayTableViewCell)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PHCarPlayRecentsOngoingMultiwayTableViewCell);
  }

  return result;
}

uint64_t PHCFNotifyObserver.__allocating_init(key:defaultValue:toInt64:fromInt64:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = *v14;
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  (*(*(*(v15 + 80) - 8) + 32))(v14 + *(v15 + 104), a3);
  v16 = (v14 + *(*v14 + 112));
  *v16 = a4;
  v16[1] = a5;
  v17 = (v14 + *(*v14 + 120));
  *v17 = a6;
  v17[1] = a7;
  return v14;
}

uint64_t PHCFNotifyObserver.getCurrentValue()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = out_token - v8;
  if (*(v1 + 20) == 1)
  {
    out_token[0] = -1;
    v10 = String.utf8CString.getter();
    v11 = notify_register_check((v10 + 32), out_token);

    if (v11)
    {
      v4 = *v1;
      if (*(v1 + 20))
      {
        return (*(*(v5 - 8) + 16))(a1, v1 + *(v4 + 104), v5);
      }
    }

    else
    {
      *(v1 + 4) = out_token[0];
      *(v1 + 20) = 0;
      v4 = *v1;
    }
  }

  v13 = *(v1 + 4);
  v14 = (v1 + *(v4 + 112));
  v15 = *(v4 + 104);
  *out_token = (*v14)(v1 + v15);
  notify_get_state(v13, out_token);
  (*(v1 + *(*v1 + 120)))(*out_token);
  v16 = *(v5 - 8);
  v17 = *(v16 + 48);
  if (v17(v9, 1, v5) != 1)
  {
    return (*(v16 + 32))(a1, v9, v5);
  }

  (*(v16 + 16))(a1, v2 + v15, v5);
  result = (v17)(v9, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t PHCFNotifyObserver.toInt64.getter()
{
  v1 = *(v0 + *(*v0 + 112));

  return v1;
}

uint64_t PHCFNotifyObserver.fromInt64.getter()
{
  v1 = *(v0 + *(*v0 + 120));

  return v1;
}

uint64_t *PHCFNotifyObserver.init(key:defaultValue:toInt64:fromInt64:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  *(v7 + 4) = 0;
  *(v7 + 20) = 1;
  v7[3] = a1;
  v7[4] = a2;
  (*(*(*(v12 + 80) - 8) + 32))(v7 + *(v12 + 104), a3);
  v13 = (v7 + *(*v7 + 112));
  *v13 = a4;
  v13[1] = a5;
  v14 = (v7 + *(*v7 + 120));
  *v14 = a6;
  v14[1] = a7;
  return v7;
}

uint64_t *PHCFNotifyObserver.deinit()
{
  v1 = *v0;
  if ((*(v0 + 20) & 1) == 0)
  {
    notify_cancel(*(v0 + 4));
  }

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t PHCFNotifyObserver.__deallocating_deinit()
{
  PHCFNotifyObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for PHCFNotifyObserver()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t EmptyContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = static Font.title.getter();
  v13 = swift_getKeyPath();
  v14 = v8 & 1;
  LOBYTE(a1) = v8 & 1;
  v15 = [objc_opt_self() tertiaryLabelColor];
  v16 = Color.init(_:)();
  result = swift_getKeyPath();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v14;
  *(a3 + 24) = v10;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = v13;
  *(a3 + 56) = v12;
  *(a3 + 64) = result;
  *(a3 + 72) = v16;
  return result;
}

uint64_t sub_1001C5814@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id CustomSplitViewController.detailsContainer.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer;
  v2 = *(v0 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(UIViewController) init];
    v5 = type metadata accessor for DetailsContainerViewController();
    v6 = objc_allocWithZone(v5);
    v7 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v4];
    *&v6[OBJC_IVAR____TtC11MobilePhone30DetailsContainerViewController_navController] = v7;
    v12.receiver = v6;
    v12.super_class = v5;
    v8 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void (*CustomSplitViewController.detailsContainer.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = CustomSplitViewController.detailsContainer.getter();
  return CustomSplitViewController.detailsContainer.modify;
}

void CustomSplitViewController.detailsContainer.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer);
  *(v1 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer) = v2;
}

id CustomSplitViewController.detailsNavigationController.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController);
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x68))();
    v5 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void (*CustomSplitViewController.detailsNavigationController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = CustomSplitViewController.detailsNavigationController.getter();
  return CustomSplitViewController.detailsNavigationController.modify;
}

void CustomSplitViewController.detailsNavigationController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController);
  *(v1 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController) = v2;
}

uint64_t CustomSplitViewController.trailingBarButtonMigrator.getter()
{
  v1 = OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___trailingBarButtonMigrator;
  if (*&v0[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___trailingBarButtonMigrator])
  {
    v2 = *&v0[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___trailingBarButtonMigrator];
  }

  else
  {
    v3 = [v0 isCollapsed];
    type metadata accessor for TrailingBarButtonMigrator();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 40) = _swiftEmptyArrayStorage;
    *(v2 + 48) = 0;
    *(v2 + 16) = v3;
    *&v0[v1] = v2;
  }

  return v2;
}

id DetailsContainerViewController.__allocating_init(content:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:a1];
  *&v3[OBJC_IVAR____TtC11MobilePhone30DetailsContainerViewController_navController] = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);

  return v5;
}

uint64_t TrailingBarButtonMigrator.__allocating_init(isCollapsed:)(char a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = _swiftEmptyArrayStorage;
  *(result + 48) = 0;
  *(result + 16) = a1;
  return result;
}

id CustomSplitViewController.init()()
{
  *&v0[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController] = 0;
  *&v0[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___trailingBarButtonMigrator] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomSplitViewController();
  return objc_msgSendSuper2(&v2, "initWithStyle:", 2);
}

id CustomSplitViewController.__allocating_init(primaryViewController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___trailingBarButtonMigrator] = 0;
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "initWithStyle:", 2);
  [v4 setViewController:a1 forColumn:1];

  return v4;
}

id CustomSplitViewController.init(primaryViewController:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer] = 0;
  *&v1[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController] = 0;
  *&v1[OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___trailingBarButtonMigrator] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CustomSplitViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithStyle:", 2);
  [v3 setViewController:a1 forColumn:1];

  return v3;
}

void CustomSplitViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsContainer) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___detailsNavigationController) = 0;
  *(v0 + OBJC_IVAR____TtC11MobilePhone25CustomSplitViewController____lazy_storage___trailingBarButtonMigrator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CustomSplitViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CustomSplitViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  [v0 setDelegate:v0];
  [v0 setPreferredSplitBehavior:1];
  [v0 setPreferredDisplayMode:2];
  [v0 setDisplayModeButtonVisibility:1];
  [v0 _setShowsSeparators:0];
  [v0 setPresentsWithGesture:0];
  [v0 setMinimumSecondaryColumnWidth:0.0];
}

Swift::Void __swiftcall CustomSplitViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CustomSplitViewController();
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1);
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = v1;
    v6 = CustomSplitViewController.trailingBarButtonMigrator.getter();
    v7 = (*((swift_isaMask & *v1) + 0x68))();
    (*(*v6 + 176))(v7);

    v9 = (*((swift_isaMask & *v1) + 0x80))(v8);
    [v5 setViewController:v9 forColumn:2];
  }
}

Swift::Void __swiftcall CustomSplitViewController.viewWillLayoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CustomSplitViewController();
  objc_msgSendSuper2(&v9, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;

    [v0 setMinimumSupplementaryColumnWidth:v4 * 0.5];
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 frame];
      v8 = v7;

      [v0 setMaximumSupplementaryColumnWidth:v8 * 0.5];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall CustomSplitViewController.setViewController(_:for:)(UIViewController_optional _, UISplitViewControllerColumn a2)
{
  v3 = v2;
  v4 = *&_.is_nil;
  isa = _.value.super.super.isa;
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (isa && v8 == 1)
  {
    v9 = isa;
    v10 = *(*CustomSplitViewController.trailingBarButtonMigrator.getter() + 152);
    v11 = v9;
    v10(isa);
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for CustomSplitViewController();
  objc_msgSendSuper2(&v12, "setViewController:forColumn:", isa, v8);
}

void CustomSplitViewController.showDetailViewController(_:sender:)(void *a1, uint64_t a2)
{
  if ([v2 isCollapsed])
  {
    v5 = [v2 viewControllerForColumn:0];
    if (v5 || (v5 = [v2 viewControllerForColumn:1]) != 0)
    {
      v6 = v5;
      v7 = [v5 navigationController];
      if (v7)
      {
        v20 = v7;
        [v7 pushViewController:a1 animated:1];

        return;
      }
    }

    outlined init with copy of Any?(a2, v22);
    v12 = v23;
    if (v23)
    {
      v13 = __swift_project_boxed_opaque_existential_0(v22, v23);
      v14 = *(v12 - 8);
      __chkstk_darwin(v13);
      v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v16);
      v17 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v14 + 8))(v16, v12);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v17 = 0;
    }

    v18 = type metadata accessor for CustomSplitViewController();
    v21.receiver = v2;
    v21.super_class = v18;
    objc_msgSendSuper2(&v21, "showDetailViewController:sender:", a1, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = (*((swift_isaMask & *v2) + 0x68))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100209A80;
    *(v9 + 32) = a1;
    v10 = *((swift_isaMask & *v8) + 0x60);
    v11 = a1;
    v10(v9);
  }
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
      if (v3)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, 1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &lazy cache variable for type metadata for UIViewController);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

Swift::Void __swiftcall CustomSplitViewController.splitViewControllerDidCollapse(_:)(UISplitViewController a1)
{
  v1 = CustomSplitViewController.trailingBarButtonMigrator.getter();
  (*(*v1 + 128))(1);
}

id DetailsContainerViewController.init(content:)(void *a1)
{
  v3 = [objc_allocWithZone(UINavigationController) initWithRootViewController:a1];
  *&v1[OBJC_IVAR____TtC11MobilePhone30DetailsContainerViewController_navController] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DetailsContainerViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);

  return v4;
}

Swift::Void __swiftcall DetailsContainerViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = v56 - v3;
  v5 = type metadata accessor for DetailsContainerViewController();
  v57.receiver = v0;
  v57.super_class = v5;
  objc_msgSendSuper2(&v57, "viewDidLoad");
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC11MobilePhone30DetailsContainerViewController_navController];
  v9 = [*&v1[OBJC_IVAR____TtC11MobilePhone30DetailsContainerViewController_navController] view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  [v7 addSubview:v9];

  [v1 addChildViewController:v8];
  [v8 didMoveToParentViewController:v1];
  PlatformValue<A>(default:iOS:iPadOS:macOS:watchOS:visionOS:tvOS:iPadUsesiOS:)();
  v11 = *&v56[3];
  PlatformValue<A>(default:iOS:iPadOS:macOS:watchOS:visionOS:tvOS:iPadUsesiOS:)();
  v12 = *&v56[2];
  PlatformValue<A>(default:iOS:iPadOS:macOS:watchOS:visionOS:tvOS:iPadUsesiOS:)();
  v13 = *&v56[1];
  v14 = [v8 view];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10020D200;
  v17 = [v1 view];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v17;
  v56[0] = v4;
  v19 = [v17 safeAreaLayoutGuide];

  v20 = [v19 topAnchor];
  v21 = [v8 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v20 constraintEqualToAnchor:v23 constant:-v11];
  *(v16 + 32) = v24;
  v25 = [v1 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v25 bottomAnchor];

  v28 = [v8 view];
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:v12];
  *(v16 + 40) = v31;
  v32 = [v1 view];
  if (!v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 safeAreaLayoutGuide];

  v35 = [v34 leadingAnchor];
  v36 = [v8 view];
  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  v38 = [v36 safeAreaLayoutGuide];

  v39 = [v38 leadingAnchor];
  v40 = [v35 constraintEqualToAnchor:v39 constant:-12.0];

  *(v16 + 48) = v40;
  v41 = [v1 view];
  if (!v41)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = v41;
  v43 = [v41 safeAreaLayoutGuide];

  v44 = [v43 trailingAnchor];
  v45 = [v8 view];
  if (!v45)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v46 = v45;
  v47 = objc_opt_self();
  v48 = [v46 safeAreaLayoutGuide];

  v49 = [v48 trailingAnchor];
  v50 = [v44 constraintEqualToAnchor:v49 constant:v13];

  *(v16 + 56) = v50;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v47 activateConstraints:isa];

  v52 = [v8 view];
  if (v52)
  {
    v53 = v52;
    v54 = v56[0];
    static _UICornerMaskingConfiguration.containerConcentric.getter();
    v55 = type metadata accessor for _UICornerMaskingConfiguration();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    UIView.cornerMaskingConfiguration.setter();

    return;
  }

LABEL_25:
  __break(1u);
}

Swift::Void __swiftcall DetailsContainerViewController.setContent(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MobilePhone30DetailsContainerViewController_navController);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setViewControllers:isa];
}

id CustomSplitViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void TrailingBarButtonMigrator.isCollapsed.setter(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  if ((a1 & 1) != 0 && (v3 & 1) == 0)
  {
    TrailingBarButtonMigrator.revert()();
    a1 = *(v1 + 16);
  }

  if ((a1 & 1) == 0 && v3 == 1)
  {
    TrailingBarButtonMigrator.migrate()();
  }
}

void (*TrailingBarButtonMigrator.isCollapsed.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 16);
  return TrailingBarButtonMigrator.isCollapsed.modify;
}

void TrailingBarButtonMigrator.isCollapsed.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 16);
  *(v2 + 16) = v3;
  if (((v3 ^ 1 | v4) & 1) == 0)
  {
    v5 = v1[3];
    TrailingBarButtonMigrator.revert()();
    LOBYTE(v3) = *(v5 + 16);
  }

  if ((v3 & 1) == 0 && ((v4 ^ 1) & 1) == 0)
  {
    TrailingBarButtonMigrator.migrate()();
  }

  free(v1);
}

void *TrailingBarButtonMigrator.leadingViewController.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void TrailingBarButtonMigrator.leadingViewController.setter(void *a1)
{
  v2 = v1;
  TrailingBarButtonMigrator.revert()();
  swift_beginAccess();
  v4 = v1[3];
  v2[3] = a1;
  v5 = a1;

  v6 = (*(*v2 + 144))();
  if (v6)
  {
    v7 = v6;
    v8 = v2[6];
    if (v8)
    {
      v9 = v8;
      dispatch thunk of NSKeyValueObservation.invalidate()();
    }

    v11 = [v7 navigationItem];
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v10 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v5 = v2[6];
    v2[6] = v10;
  }
}

void (*TrailingBarButtonMigrator.leadingViewController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  v5 = *(v1 + 24);
  *(v4 + 24) = v5;
  v6 = v5;
  return TrailingBarButtonMigrator.leadingViewController.modify;
}

void TrailingBarButtonMigrator.leadingViewController.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 40);
  if (a2)
  {
    v6 = v3;
    TrailingBarButtonMigrator.revert()();
    v7 = v5[3];
    v5[3] = v3;
    v8 = v6;

    v9 = (*(*v5 + 144))();
    if (v9)
    {
      v10 = v9;
      v11 = v2[5];
      v12 = *(v11 + 48);
      if (v12)
      {
        v13 = v12;
        dispatch thunk of NSKeyValueObservation.invalidate()();
      }

      v14 = [v10 navigationItem];
      v2[4] = v14;
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      v15 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v8 = *(v11 + 48);
      *(v11 + 48) = v15;
    }

    v16 = *v4;
  }

  else
  {
    TrailingBarButtonMigrator.revert()();
    v17 = v5[3];
    v5[3] = v3;
    v16 = v3;

    v18 = (*(*v5 + 144))();
    if (v18)
    {
      v19 = v18;
      v20 = v2[5];
      v21 = *(v20 + 48);
      if (v21)
      {
        v22 = v21;
        dispatch thunk of NSKeyValueObservation.invalidate()();
      }

      v23 = [v19 navigationItem];
      v2[4] = v23;
      swift_getKeyPath();
      swift_allocObject();
      swift_weakInit();
      v24 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v16 = *(v20 + 48);
      *(v20 + 48) = v24;
    }
  }

  free(v2);
}

void *TrailingBarButtonMigrator.trailingViewController.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void TrailingBarButtonMigrator.trailingViewController.setter(void *a1)
{
  TrailingBarButtonMigrator.revert()();
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v4 = a1;

  v5 = *(v1 + 32);
  if (v5)
  {
    v6 = [v5 navigationItem];
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIBarButtonItem);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setRightBarButtonItems:isa];
  }
}

void (*TrailingBarButtonMigrator.trailingViewController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 32);
  *(v4 + 24) = v5;
  v6 = v5;
  return TrailingBarButtonMigrator.trailingViewController.modify;
}

void TrailingBarButtonMigrator.trailingViewController.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    TrailingBarButtonMigrator.trailingViewController.setter(v3);
  }

  else
  {
    TrailingBarButtonMigrator.trailingViewController.setter(*(*a1 + 24));
  }

  free(v2);
}

uint64_t TrailingBarButtonMigrator.init(isCollapsed:)(char a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = &_swiftEmptyArrayStorage;
  *(v1 + 48) = 0;
  *(v1 + 16) = a1;
  return v1;
}

void key path getter for UINavigationItem.rightBarButtonItems : UINavigationItem(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for UINavigationItem.rightBarButtonItems : UINavigationItem(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setRightBarButtonItems:?];
}

uint64_t closure #1 in TrailingBarButtonMigrator.observe()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TrailingBarButtonMigrator.migrate()();
  }

  return result;
}

void TrailingBarButtonMigrator.migrate()()
{
  v1 = v0;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3 == 5)
    {
      return;
    }
  }

  if ((*(*v1 + 120))())
  {
    return;
  }

  v4 = *(*v1 + 144);
  v5 = v4();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v35 = [v5 navigationItem];

  if (!v35)
  {
    return;
  }

  v7 = (*(*v1 + 168))();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 navigationItem];

    if (v9)
    {
      v10 = v1[6];
      if (v10)
      {
        v11 = v10;
        dispatch thunk of NSKeyValueObservation.invalidate()();
      }

      v12 = [v9 rightBarButtonItems];
      if (!v12)
      {
        [v9 setRightBarButtonItems:0];
LABEL_18:
        v18 = [v35 rightBarButtonItems];
        if (v18)
        {
          v19 = v18;
          type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIBarButtonItem);
          v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v20 = _swiftEmptyArrayStorage;
        }

        v1[5] = v20;

        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIBarButtonItem);
        v21 = _swiftEmptyArrayStorage;
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v35 setRightBarButtonItems:isa];

        v23 = v1[5];

        v24 = [v9 rightBarButtonItems];
        if (v24)
        {
          v25 = v24;
          v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v36 = v23;
        specialized Array.append<A>(contentsOf:)(v21);
        v26 = Array._bridgeToObjectiveC()().super.isa;

        [v9 setRightBarButtonItems:v26];

        v27 = v4();
        if (v27)
        {
          v28 = v27;
          v29 = v1[6];
          if (v29)
          {
            v30 = v29;
            dispatch thunk of NSKeyValueObservation.invalidate()();
          }

          v31 = [v28 navigationItem];
          v36 = v31;
          swift_getKeyPath();
          swift_allocObject();
          swift_weakInit();
          v32 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

          v33 = v1[6];
          v1[6] = v32;

          return;
        }

        goto LABEL_29;
      }

      v13 = v12;
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIBarButtonItem);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = v14;

      v15 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v36, v1);
      if (v36 >> 62)
      {
        v34 = v15;
        v16 = _CocoaArrayWrapper.endIndex.getter();
        v15 = v34;
        if (v16 >= v34)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v16 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16 >= v15)
        {
LABEL_13:
          specialized Array.replaceSubrange<A>(_:with:)(v15, v16, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &lazy cache variable for type metadata for UIBarButtonItem);
          if (v36)
          {
            v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v17.super.isa = 0;
          }

          [v9 setRightBarButtonItems:v17.super.isa];

          goto LABEL_18;
        }
      }

      __break(1u);
      return;
    }
  }

LABEL_29:
}

void TrailingBarButtonMigrator.revert()()
{
  v1 = v0;
  v2 = *(*v0 + 144);
  v3 = v2();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v26 = [v3 navigationItem];

  if (!v26)
  {
    return;
  }

  v5 = (*(*v1 + 168))();
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v5 navigationItem];

  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v1[6];
  if (v8)
  {
    v9 = v8;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIBarButtonItem);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 setRightBarButtonItems:isa];

  v11 = [v7 rightBarButtonItems];
  if (v11)
  {
    v12 = v11;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v13;

    v14 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v27, v1);
    if (v27 >> 62)
    {
      v25 = v14;
      v15 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v25;
      if (v15 >= v25)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 >= v14)
      {
LABEL_10:
        specialized Array.replaceSubrange<A>(_:with:)(v14, v15, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), &lazy cache variable for type metadata for UIBarButtonItem);
        if (v27)
        {
          v16.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v16.super.isa = 0;
        }

        [v7 setRightBarButtonItems:v16.super.isa];

        goto LABEL_15;
      }
    }

    __break(1u);
    return;
  }

  [v7 setRightBarButtonItems:0];
LABEL_15:
  v1[5] = _swiftEmptyArrayStorage;

  v18 = (v2)(v17);
  if (v18)
  {
    v19 = v18;
    v20 = v1[6];
    if (v20)
    {
      v21 = v20;
      dispatch thunk of NSKeyValueObservation.invalidate()();
    }

    v22 = [v19 navigationItem];
    v27 = v22;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v23 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v24 = v1[6];
    v1[6] = v23;

    return;
  }

LABEL_21:
}

BOOL closure #1 in TrailingBarButtonMigrator.migrate()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 >> 62)
  {
LABEL_15:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSObject);
    v8 = static NSObject.== infix(_:_:)();

    v4 = v5 + 1;
  }

  while ((v8 & 1) == 0);

  return v3 != v5;
}

id *TrailingBarButtonMigrator.deinit()
{

  return v0;
}

uint64_t TrailingBarButtonMigrator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  specialized Collection.firstIndex(where:)(*a1, a2);
  if (v2)
  {

    return v3;
  }

  if ((v8 & 1) == 0)
  {
    v3 = v7;
    v25 = a1;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_11;
    }

    while (1)
    {
      if (v6 >> 62)
      {
        if (v10 == _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_6;
        }
      }

      else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v12 = *(v6 + 8 * v10 + 32);
      }

      v13 = v12;
      v26 = v12;
      v14 = closure #1 in TrailingBarButtonMigrator.migrate()(&v26, a2);

      if (!v14)
      {
        if (v3 != v10)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v3 & 0x8000000000000000) != 0)
            {
              goto LABEL_49;
            }

            v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v17)
            {
              goto LABEL_50;
            }

            if (v10 >= v17)
            {
              goto LABEL_51;
            }

            v18 = *(v6 + 32 + 8 * v10);
            v15 = *(v6 + 32 + 8 * v3);
            v16 = v18;
          }

          v19 = v16;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v20 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v6 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v19;

          if ((v6 & 0x8000000000000000) != 0 || v20)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v21 = v6 & 0xFFFFFFFFFFFFFF8;
            if ((v10 & 0x8000000000000000) != 0)
            {
LABEL_42:
              __break(1u);

              return v3;
            }
          }

          else if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          if (v10 >= *(v21 + 16))
          {
            goto LABEL_48;
          }

          v23 = v21 + 8 * v10;
          v24 = *(v23 + 32);
          *(v23 + 32) = v15;

          *v25 = v6;
        }

LABEL_11:
        v11 = __OFADD__(v3++, 1);
        if (v11)
        {
          goto LABEL_47;
        }
      }

      v11 = __OFADD__(v10++, 1);
      if (v11)
      {
        goto LABEL_46;
      }
    }
  }

  if (v6 >> 62)
  {
LABEL_52:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_6:

  return v3;
}

void specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    v12 = v8;
    v10 = closure #1 in TrailingBarButtonMigrator.migrate()(&v12, a2);

    if (v2 || v10)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NSMutableArray(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, v6, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

void specialized CustomSplitViewController.splitViewControllerDidExpand(_:)()
{
  v1 = v0;
  v2 = CustomSplitViewController.trailingBarButtonMigrator.getter();
  (*(*v2 + 128))(0);

  v3 = [v0 viewControllerForColumn:1];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationController];

    if (v5)
    {
      v6 = [v5 viewControllers];
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIViewController);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100209A80;
      specialized RangeReplaceableCollection.removeFirst()();
      *(v8 + 32) = v9;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 setViewControllers:isa];

      if (v15 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11)
      {
        v12 = (*((swift_isaMask & *v1) + 0x68))();
        (*((swift_isaMask & *v12) + 0x60))(v15);
      }

      v14 = (*((swift_isaMask & *v1) + 0x80))(v13);
      [v1 setViewController:v14 forColumn:2];
    }
  }
}

uint64_t sub_1001C954C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001C958C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_1001C964C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1001C970C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001C97A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1001C97F0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1001C9848@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1001C9894(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);
  v4 = *a1;
  return v3(v2);
}

id RecentCallContactView.recentsController.getter(void *a1)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    type metadata accessor for ObservableRecentsController(a1);
    lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t RecentCallContactView.$recentsController.getter()
{
  type metadata accessor for ObservableRecentsController(0);
  lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();

  return EnvironmentObject.projectedValue.getter();
}

id RecentCallContactView.makeCoordinator()()
{
  v0 = objc_allocWithZone(type metadata accessor for RecentCallContactView.Coordinator());

  return [v0 init];
}

uint64_t RecentCallContactView.makeUIViewController(context:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = ObservableRecentsController.contact(for:)(a4);

    v7 = [objc_opt_self() viewControllerForContact:v6];
    v8 = v7;
    v9 = [v8 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy11MobilePhone21RecentCallContactViewVGMd);
    UIViewControllerRepresentableContext.coordinator.getter();
    v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v15 action:"didTapClose"];

    [v9 setLeftBarButtonItem:v10 animated:0];
    v11 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v8];

    UIViewControllerRepresentableContext.coordinator.getter();
    v12 = *((swift_isaMask & *v15) + 0x60);
    v13 = v11;
    v12(v11);

    return v13;
  }

  else
  {
    type metadata accessor for ObservableRecentsController(0);
    lazy protocol witness table accessor for type ObservableRecentsController and conformance ObservableRecentsController();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void RecentCallContactView.Coordinator.presentedViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*RecentCallContactView.Coordinator.presentedViewController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCV11MobilePhone21RecentCallContactView11Coordinator_presentedViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return VoicemailSearchMetadataView.delegate.modify;
}

Swift::Void __swiftcall RecentCallContactView.Coordinator.didTapClose()()
{
  v1 = (*((swift_isaMask & *v0) + 0x58))();
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

id RecentCallContactView.Coordinator.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentCallContactView.Coordinator();
  return objc_msgSendSuper2(&v2, "init");
}

id RecentCallContactView.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentCallContactView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance RecentCallContactView@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for RecentCallContactView.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance RecentCallContactView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RecentCallContactView and conformance RecentCallContactView();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance RecentCallContactView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RecentCallContactView and conformance RecentCallContactView();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance RecentCallContactView()
{
  lazy protocol witness table accessor for type RecentCallContactView and conformance RecentCallContactView();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1001CA0C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_1001CA120(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x60);
  v4 = *a1;
  return v3(v2);
}

uint64_t getEnumTagSinglePayload for RecentCallContactView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RecentCallContactView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id RecentsDetailPresenter.__allocating_init(recentsController:callReportingViewModel:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___MPRecentsDetailPresenter_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Logger.mobilePhone);
  (*(*(v7 - 8) + 16))(&v5[v6], v8, v7);
  v9 = OBJC_IVAR___MPRecentsDetailPresenter_featureflags;
  *&v5[v9] = [objc_allocWithZone(TUFeatureFlags) init];
  *&v5[OBJC_IVAR___MPRecentsDetailPresenter____lazy_storage___suggestedContactStore] = 1;
  *&v5[OBJC_IVAR___MPRecentsDetailPresenter_recentsController] = a1;
  *&v5[OBJC_IVAR___MPRecentsDetailPresenter_callReportingViewModel] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v2;
  v10 = a1;
  v11 = a2;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:), v13);
}

id RecentsDetailPresenter.suggestedContactStore.getter()
{
  v1 = OBJC_IVAR___MPRecentsDetailPresenter____lazy_storage___suggestedContactStore;
  v2 = *(v0 + OBJC_IVAR___MPRecentsDetailPresenter____lazy_storage___suggestedContactStore);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_opt_self() suggestedContactStore];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    outlined consume of CNContact??(v4);
  }

  outlined copy of CNContact??(v2);
  return v3;
}

id RecentsDetailPresenter.init(recentsController:callReportingViewModel:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___MPRecentsDetailPresenter_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Logger.mobilePhone);
  (*(*(v7 - 8) + 16))(&v2[v6], v8, v7);
  v9 = OBJC_IVAR___MPRecentsDetailPresenter_featureflags;
  *&v2[v9] = [objc_allocWithZone(TUFeatureFlags) init];
  *&v2[OBJC_IVAR___MPRecentsDetailPresenter____lazy_storage___suggestedContactStore] = 1;
  *&v2[OBJC_IVAR___MPRecentsDetailPresenter_recentsController] = a1;
  *&v2[OBJC_IVAR___MPRecentsDetailPresenter_callReportingViewModel] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t RecentsDetailPresenter.detailViewController(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return (_swift_task_switch)(RecentsDetailPresenter.detailViewController(for:), v4, v3);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = RecentsDetailPresenter.detailViewController(for:);

  return specialized RecentsDetailPresenter.detailViewController(for:)(a1);
}

uint64_t RecentsDetailPresenter.detailViewController(for:)()
{
  v33 = v0;
  v1 = [*(v0 + 24) validRemoteParticipantHandles];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = (v3 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v3 + 16);

    if (v4 >= 2)
    {
      v5 = *(v0 + 24);

      v6 = v5;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 24);
      if (v9)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v32 = v12;
        *v11 = 136315650;
        *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x8000000100247F00, &v32);
        *(v11 + 12) = 1024;
        *(v11 + 14) = [v10 isIncoming];
        *(v11 + 18) = 1024;
        *(v11 + 20) = CHRecentCall.isGroupFaceTimeWithSomeUnknownContacts.getter() & 1;

        _os_log_impl(&_mh_execute_header, v7, v8, "[%s] Showing Recent Call Details with multiple handles: incoming: %{BOOL}d, unknownContacts: %{BOOL}d", v11, 0x18u);
        __swift_destroy_boxed_opaque_existential_0(v12);
      }

      else
      {
      }

      if ([*(v0 + 24) isIncoming] && (CHRecentCall.isGroupFaceTimeWithSomeUnknownContacts.getter() & 1) != 0)
      {
        RecentsDetailPresenter.multipleContactsBlockAndReportViewController(for:)(*(v0 + 24));
      }

      else
      {
        RecentsDetailPresenter.multipleContactsViewController(for:)(*(v0 + 24));
      }

LABEL_22:
      v30 = *(v0 + 8);

      __asm { BRAA            X2, X16 }
    }
  }

  v13 = *(v0 + 24);
  v14 = swift_allocObject();
  *(v0 + 72) = v14;
  *(v14 + 16) = 0;
  v15 = [v13 contactIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      goto LABEL_16;
    }
  }

  v21 = [*(v0 + 24) callerId];
  if (!v21)
  {
LABEL_16:
    v29 = *(v0 + 24);
    v28 = *(v0 + 32);

    getter of contactViewController #1 in RecentsDetailPresenter.detailViewController(for:)(v14, v28, v29);

    goto LABEL_22;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v0 + 80) = v23;
  *(v0 + 88) = v25;
  *(v0 + 96) = static MainActor.shared.getter();
  v27 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 104) = v27;
  *(v0 + 112) = v26;

  return (_swift_task_switch)(RecentsDetailPresenter.detailViewController(for:), v27, v26);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = static MainActor.shared.getter();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9MKMapItemCSgMd);
  *v5 = v0;
  v5[1] = RecentsDetailPresenter.detailViewController(for:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v3, &protocol witness table for MainActor, 0x65744970614D5554, 0xEF293A726F66286DLL, partial apply for closure #1 in TUMapItem(for:), v4, v6);
}

{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return (_swift_task_switch)(RecentsDetailPresenter.detailViewController(for:), v3, v2);
}

{

  v0[18] = v0[2];
  v1 = v0[7];
  v2 = v0[8];

  return (_swift_task_switch)(RecentsDetailPresenter.detailViewController(for:), v1, v2);
}

{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 24);
    v4 = [objc_allocWithZone(MPRecentsMapItemHeaderViewController) init];
    [v4 setRecentCall:v3];
    v5 = [objc_allocWithZone(MUPlaceViewControllerConfiguration) init];
    [v5 setHeaderViewController:v4];
    v6 = [objc_allocWithZone(MUPlaceViewController) initWithConfiguration:v5];
    [v6 setMapItem:v2];
    v7 = [v6 navigationItem];
    [v7 setLargeTitleDisplayMode:2];
  }

  else
  {
    v8 = [*(v0 + 24) identityExtension];
    if (v8 && (v9 = *(v0 + 24), v8, (v10 = [v9 name]) != 0))
    {
      v11 = v10;
      v12 = getter of contactViewController #1 in RecentsDetailPresenter.detailViewController(for:)(*(v0 + 72), *(v0 + 32), *(v0 + 24));
      [v12 setMessage:v11];
    }

    else
    {
      v14 = *(v0 + 24);
      v13 = *(v0 + 32);
      v12 = getter of contactViewController #1 in RecentsDetailPresenter.detailViewController(for:)(*(v0 + 72), v13, v14);
      v15 = [*(v13 + OBJC_IVAR___MPRecentsDetailPresenter_recentsController) itemForRecentCall:v14 presentationStyle:1];
      v11 = [v15 localizedSubtitle];

      [v12 setMessage:v11];
    }

    v16 = *(v0 + 72);
    v17 = *(v0 + 32);
    v18 = getter of contactViewController #1 in RecentsDetailPresenter.detailViewController(for:)(v16, v17, *(v0 + 24));
    [v18 setDelegate:v17];

    v6 = *(v16 + 16);
    v19 = v6;
  }

  v20 = *(v0 + 8);

  return v20(v6);
}

id RecentsDetailPresenter.multipleContactsBlockAndReportViewController(for:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR___MPRecentsDetailPresenter_recentsController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100209A80;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for PHContactViewController);
  *(v4 + 32) = [swift_getObjCClassFromMetadata() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v3 contactByHandleForRecentCall:a1 keyDescriptors:isa];

  if (v6)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8CHHandleC_So9CNContactCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v8 = [a1 validRemoteParticipantHandles];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8CHHandleC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v10 = v55;
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v12 = specialized Set._Variant.filter(_:)(v11, v7);

  v13 = a1;
  v14 = v1;
  specialized Sequence.compactMap<A>(_:)(v12, v13, v14);
  v16 = v15;

  v17 = v13;
  v18 = v14;
  v59 = v10;
  v19 = v10;
  v20 = v16;
  v21 = sub_1001CEAD8(v19, v7, v17, v18);
  swift_bridgeObjectRelease_n();
  v63 = v17;

  v60 = v20 >> 62;
  v58 = v21;
  if (v20 >> 62)
  {
LABEL_25:
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (v22)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
LABEL_10:
      v23 = 0;
      v61 = v20 & 0xFFFFFFFFFFFFFF8;
      v62 = v20 & 0xC000000000000001;
      do
      {
        if (v62)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v61 + 16))
          {
            goto LABEL_24;
          }

          v24 = *(v20 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v27 = [v63 initiator];
        if (v27)
        {
          v28 = v27;
          v29 = v20;
          v30 = [v25 handles];
          v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v32 = [v28 value];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v25;
          v35 = v34;

          v65 = &v57;
          v67[0] = v33;
          v67[1] = v35;
          __chkstk_darwin(v36);
          v56[2] = v67;
          LOBYTE(v32) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v56, v31);

          if (v32)
          {
            v37 = 1;
            v20 = v29;
            v38 = v58;
            if ((v58 & 0x8000000000000000) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_30;
          }

          v20 = v29;
        }

        else
        {
        }

        ++v23;
      }

      while (v26 != v22);
    }
  }

  v37 = 0;
  v38 = v58;
  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if ((v38 & 0x4000000000000000) != 0)
  {
LABEL_30:
    v39 = _CocoaArrayWrapper.endIndex.getter();
    if (!v60)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
LABEL_29:
      v40 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_32;
    }
  }

  v40 = _CocoaArrayWrapper.endIndex.getter();
LABEL_32:
  v41 = v39 == v40;
  v42 = v39 != v40 && v40 > 0;
  v43 = [objc_allocWithZone(type metadata accessor for FaceTimeSpamReportManager()) init];
  v44 = type metadata accessor for ContactsReportAndBlockTableViewModel();
  v45 = objc_allocWithZone(v44);
  v45[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockAll] = v41;
  v45[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowReportInitiator] = v37;
  v45[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_shouldShowBlockUnknown] = v42;
  v46 = v63;
  *&v45[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_recentCall] = v63;
  *&v45[OBJC_IVAR___PHContactsReportAndBlockTableViewModel_reportSpammer] = v43;
  v66.receiver = v45;
  v66.super_class = v44;
  v47 = v46;
  v48 = objc_msgSendSuper2(&v66, "init");
  if (v60)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  }

  specialized _copyCollectionToContiguousArray<A>(_:)(v59);

  v49 = objc_allocWithZone(PHContactsAndBlockTableViewController);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v50 = Array._bridgeToObjectiveC()().super.isa;

  v51 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  v52 = Array._bridgeToObjectiveC()().super.isa;

  v53 = [v49 initWithContactArray:v50 unknownContacts:v51 contactHandles:v52 tableViewModel:v48];

  return v53;
}

id RecentsDetailPresenter.multipleContactsViewController(for:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR___MPRecentsDetailPresenter_recentsController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100209A80;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for PHContactViewController);
  *(v4 + 32) = [swift_getObjCClassFromMetadata() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v3 contactByHandleForRecentCall:a1 keyDescriptors:isa];

  if (v6)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8CHHandleC_So9CNContactCTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v8 = [a1 validRemoteParticipantHandles];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8CHHandleC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v10 = v18;
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  v11 = a1;
  v12 = v1;
  sub_1001CEAD8(v10, v7, v11, v12);
  swift_bridgeObjectRelease_n();

  specialized _copyCollectionToContiguousArray<A>(_:)(v10);

  v13 = objc_allocWithZone(PHContactsTableViewController);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithContactArray:v14 contactHandles:v15];

  return v16;
}

id getter of contactViewController #1 in RecentsDetailPresenter.detailViewController(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v6 = RecentsDetailPresenter.contactViewController(for:)(a3);
    swift_beginAccess();
    v7 = *v4;
    *v4 = v6;
    v5 = v6;

    v3 = 0;
  }

  v8 = v3;
  return v5;
}

id RecentsDetailPresenter.contactViewController(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + OBJC_IVAR___MPRecentsDetailPresenter_recentsController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100209A80;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for PHContactViewController);
  *(v7 + 32) = [swift_getObjCClassFromMetadata() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v6 contactForRecentCall:a1 keyDescriptors:isa];

  if (!v9)
  {
    v9 = [objc_allocWithZone(CNContact) init];
  }

  v10 = RecentsDetailPresenter.contactViewController(for:contact:)(a1, v9);
  v11 = [a1 imageURL];
  if (v11)
  {
    v12 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    outlined destroy of URL?(v5);
LABEL_7:
    [v10 setUsesBrandedCallHeaderFormat:1];
    goto LABEL_8;
  }

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  outlined destroy of URL?(v5);
  v15 = [a1 identityExtension];
  if (v15)
  {

    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

uint64_t TUMapItem(for:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return (_swift_task_switch)(TUMapItem(for:), v4, v3);
}

uint64_t TUMapItem(for:)()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = static MainActor.shared.getter();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9MKMapItemCSgMd);
  *v5 = v0;
  v5[1] = TUMapItem(for:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v3, &protocol witness table for MainActor, 0x65744970614D5554, 0xEF293A726F66286DLL, closure #1 in TUMapItem(for:)partial apply, v4, v6);
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return (_swift_task_switch)(TUMapItem(for:), v3, v2);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:);

  return RecentsDetailPresenter.detailViewController(for:)(a5);
}

uint64_t closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:)(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:), v3, v2);
}

void closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:)()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    v2 = *(v0 + 48);
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v4 viewControllers];
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for UIViewController);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();

        if (v13)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v8)
        {
LABEL_5:
          if ((v7 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v9 = *(v7 + 32);
          }

          v10 = v9;
          v11 = *(v0 + 16);

          isa = Array._bridgeToObjectiveC()().super.isa;
          [v4 setViewControllers:isa];

          [v11 pushViewController:v10 animated:1];
          goto LABEL_12;
        }
      }
    }

    [*(v0 + 16) pushViewController:v2 animated:1];
LABEL_12:
  }

  v14 = *(v0 + 8);

  v14();
}

uint64_t *DummyVoicemailNavigationController.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DummyVoicemailNavigationController.shared;
}

uint64_t *DummyVoicemailMessageDetailViewControllerDelegate.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DummyVoicemailMessageDetailViewControllerDelegate.shared;
}

id RecentsDetailPresenter.contactViewController(for:contact:)(void *a1, void *a2)
{
  v5 = [a1 contactIdentifier];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = [*(v2 + OBJC_IVAR___MPRecentsDetailPresenter_recentsController) fetchContactForContactCardDisplay:a2];
    v12 = [objc_opt_self() viewControllerForContact:v11];
    [v12 setShouldShowLinkedContacts:1];
  }

  else
  {
LABEL_6:
    v13 = objc_opt_self();
    v11 = a2;
    v12 = [v13 viewControllerForUnknownContact:v11];
  }

  v14 = [a1 validRemoteParticipantHandles];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
  lazy protocol witness table accessor for type CHHandle and conformance NSObject();
  v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = specialized Collection.first.getter(v16);

  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = [v17 value];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    if ([a1 isComingFaceTimeCall] && CallReportingViewModel.atLeastOneUnknownCaller(in:)(a1))
    {
      v23 = 2048;
    }

    else
    {
      v23 = 128;
    }

    v34 = v12;
    [v34 setActions:{objc_msgSend(v34, "actions") | v23}];

    v35 = v34;
    v36 = RecentsDetailPresenter.suggestedContactStore.getter();
    [v35 setContactStore:v36];

    [v35 setRecentCall:a1];
  }

  else
  {
LABEL_15:
    v24 = v12;
    [v24 setAllowsActions:0];
    [v24 setAllowsEditing:0];
    v25 = [a1 callerIdIsBlocked];
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v40 = 0xE000000000000000;
    if (v25)
    {
      v28 = 0x454C4C41435F4F4ELL;
      v29 = 0xEC00000044495F52;
    }

    else
    {
      v28 = 0x5F4E574F4E4B4E55;
      v29 = 0xEE0052454C4C4143;
    }

    v30.value._countAndFlagsBits = 0x746E656365524850;
    v30.value._object = 0xE900000000000073;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v32 = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v28, v30, v27, v31, *(&v40 - 1));

    v33 = String._bridgeToObjectiveC()();

    [v24 setAlternateName:v33];
  }

  v37 = [*(v2 + OBJC_IVAR___MPRecentsDetailPresenter_recentsController) itemForRecentCall:a1 presentationStyle:1];
  v38 = [objc_allocWithZone(MPRecentsContactHeaderViewController) init];
  [v38 setRecentCall:a1];
  [v38 setRecentsItem:v37];
  [v12 setContactHeaderViewController:v38];

  return v12;
}

uint64_t protocol witness for RecentsDetailProvider.detailViewController(for:) in conformance RecentsDetailPresenter(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = RecentsDetailPresenter.detailViewController(for:);

  return RecentsDetailPresenter.detailViewController(for:)(a1);
}

uint64_t protocol witness for RecentsDetailProvider.voicemailDetailViewController(for:deleteAction:callbackAction:) in conformance RecentsDetailPresenter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = RecentsDetailPresenter.detailViewController(for:);

  return RecentsDetailProvider.voicemailDetailViewController(for:deleteAction:callbackAction:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for RecentsDetailProvider.voicemailDetailViewController(for:appType:deleteAction:callbackAction:) in conformance RecentsDetailPresenter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = RecentsDetailPresenter.detailViewController(for:);

  return RecentsDetailProvider.voicemailDetailViewController(for:appType:deleteAction:callbackAction:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for RecentsDetailProvider.contactDetailViewController(for:) in conformance RecentsDetailPresenter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:);

  return RecentsDetailProvider.contactDetailViewController(for:)(a1, a2, a3);
}

void closure #1 in TUMapItem(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo9MKMapItemCSgs5NeverOGMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = String._bridgeToObjectiveC()();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = partial apply for closure #1 in closure #1 in TUMapItem(for:);
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMNickname?) -> ();
  aBlock[3] = &block_descriptor_27;
  v9 = _Block_copy(aBlock);

  TUMapItemForDestinationID();
  _Block_release(v9);
}

uint64_t closure #1 in closure #1 in TUMapItem(for:)(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo9MKMapItemCSgs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t (*static DummyVoicemailMessageDetailViewControllerDelegate.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return PhoneVoicemailBadgeController.listeners.modify;
}

id DummyVoicemailMessageDetailViewControllerDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DummyVoicemailMessageDetailViewControllerDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id static DummyVoicemailMessageDetailViewControllerDelegate.shared.getter(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void static DummyVoicemailMessageDetailViewControllerDelegate.shared.setter(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static DummyVoicemailNavigationController.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return VoicemailSearchViewCell.callButtonTapHandler.modify;
}

id key path getter for static DummyVoicemailMessageDetailViewControllerDelegate.shared : DummyVoicemailMessageDetailViewControllerDelegate.Type@<X0>(void *a1@<X3>, void **a2@<X4>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;
  *a3 = *a2;

  return v5;
}

void key path setter for static DummyVoicemailMessageDetailViewControllerDelegate.shared : DummyVoicemailMessageDetailViewControllerDelegate.Type(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v7 = *a5;
  v8 = *a1;
  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a6;
  *a6 = v8;
}

id DummyVoicemailNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id DummyVoicemailNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DummyVoicemailNavigationController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v3);
}

id DummyVoicemailNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

id DummyVoicemailNavigationController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DummyVoicemailNavigationController();
  v3 = objc_msgSendSuper2(&v5, "initWithRootViewController:", a1);

  return v3;
}

id DummyVoicemailNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DummyVoicemailNavigationController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id DummyVoicemailNavigationController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DummyVoicemailNavigationController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id DummyVoicemailMessageDetailViewControllerDelegate.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001CDCE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCy11MobilePhone9MessageIDCGMd);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo8CHHandleCGMd);
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for Handle();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy20LiveCommunicationKit6HandleVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &_ss11_SetStorageCy11MobilePhone9MessageIDCGMd);
}

{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &_ss11_SetStorageCySo8CHHandleCGMd);
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = &_swiftEmptySetSingleton;
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = v10[5];
    v18 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = NSObject._rawHashValue(seed:)(v17);
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(v10[6] + 8 * v22) = v18;
    ++v10[2];
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8CHHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0176_s11MobilePhone22RecentsDetailPresenterC44multipleContactsBlockAndReportViewController33_FAD6BBFC5E0AAC96A4CD65761702D59ALL3forSo010PHContactsih5TablekL0CSo12CHRecentCallC_tFSbpI6CXEfU_SDyAISo9CNContactCGTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void specialized Set.subscript.getter(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_1001CEAD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a1;
  v51 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v6)
    {
      return result;
    }

    v56 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v53 = result;
    v54 = v8;
    v55 = 1;
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_54;
    }

    v42 = v4;
  }

  else
  {
    v6 = *(a1 + 16);
    result = _swiftEmptyArrayStorage;
    if (!v6)
    {
      return result;
    }

    v42 = v4;
    v56 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = _HashTable.startBucket.getter();
    v9 = *(v5 + 36);
    v53 = result;
    v54 = v9;
    v55 = 0;
  }

  v10 = 0;
  v50 = v6;
  v45 = OBJC_IVAR___MPRecentsDetailPresenter_recentsController;
  v44 = v5 + 56;
  v43 = v5 + 64;
  v46 = v5;
  while (v10 < v6)
  {
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_50;
    }

    v14 = v53;
    v13 = v54;
    v15 = v55;
    specialized Set.subscript.getter(v53, v54, v55, v5);
    v17 = v16;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = v16;
      v19 = __CocoaDictionary.lookup(_:)();

      if (!v19)
      {
        goto LABEL_18;
      }

      type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
      swift_dynamicCast();
      if (!v52[0])
      {
        goto LABEL_18;
      }
    }

    else if (!*(a2 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v21 & 1) == 0) || !*(*(a2 + 56) + 8 * v20))
    {
LABEL_18:
      v22 = v17;
      v23 = [v22 type];
      if (v23 > 3)
      {
        v24 = 1;
      }

      else
      {
        v24 = qword_100210218[v23];
      }

      v25 = [v22 value];
      if (!v25)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = String._bridgeToObjectiveC()();
      }

      v26 = [objc_allocWithZone(TUHandle) initWithType:v24 value:v25];

      v27 = [a3 isoCountryCode];
      if (v27)
      {
        v28 = v27;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v17 = [*(a4 + v45) metadataCache];
      if (v30)
      {
        v31 = String._bridgeToObjectiveC()();
      }

      else
      {
        v31 = 0;
      }

      v32 = [objc_opt_self() contactForHandle:v26 isoCountryCode:v31 metadataCache:v17];

      v5 = v46;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v51)
    {
      v6 = v50;
      if (!v15)
      {
        goto LABEL_55;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8CHHandleC_GMd);
      v11 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v11(v52, 0);
      if (v10 == v50)
      {
LABEL_47:
        outlined consume of Set<CHHandle>.Index._Variant(v53, v54, v55);
        return v56;
      }
    }

    else
    {
      v6 = v50;
      if (v15)
      {
        goto LABEL_56;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v33 = 1 << *(v5 + 32);
      if (v14 >= v33)
      {
        goto LABEL_51;
      }

      v34 = v14 >> 6;
      v35 = *(v44 + 8 * (v14 >> 6));
      if (((v35 >> v14) & 1) == 0)
      {
        goto LABEL_52;
      }

      if (*(v5 + 36) != v13)
      {
        goto LABEL_53;
      }

      v36 = v35 & (-2 << (v14 & 0x3F));
      if (v36)
      {
        v33 = __clz(__rbit64(v36)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v34 << 6;
        v38 = v34 + 1;
        v39 = (v43 + 8 * v34);
        while (v38 < (v33 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = outlined consume of Set<CHHandle>.Index._Variant(v14, v13, 0);
            v33 = __clz(__rbit64(v40)) + v37;
            goto LABEL_46;
          }
        }

        result = outlined consume of Set<CHHandle>.Index._Variant(v14, v13, 0);
      }

LABEL_46:
      v53 = v33;
      v54 = v13;
      v55 = 0;
      if (v10 == v50)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type CHHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v3 = v31;
    v27 = v32;
    v4 = v33;
    v5 = v34;
    v6 = v35;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v27 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

LABEL_7:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v3 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHHandle), swift_dynamicCast(), v16 = v30, v5 = v10, v6 = v11, !v30))
      {
LABEL_32:
        outlined consume of Set<CHHandle>.Iterator._Variant();
        return;
      }

      goto LABEL_19;
    }

    v14 = v10;
    v15 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_15:
    v6 = (v15 - 1) & v15;
    v16 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_32;
    }

LABEL_19:
    v17 = v16;
    v18 = [v17 type];
    if (v18 > 3)
    {
      v19 = 1;
    }

    else
    {
      v19 = qword_100210218[v18];
    }

    v20 = [v17 value];
    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    v21 = [objc_allocWithZone(TUHandle) initWithType:v19 value:v20];

    v22 = [a2 isoCountryCode];
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [*(a3 + OBJC_IVAR___MPRecentsDetailPresenter_recentsController) metadataCache];
    if (v25)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    v13 = [objc_opt_self() contactForHandle:v21 isoCountryCode:v12 metadataCache:v26];

    v10 = v5;
    v11 = v6;
    if (v13)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_32;
    }

    v15 = *(v27 + 8 * v5);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t specialized RecentsDetailPresenter.detailViewController(for:)(uint64_t a1)
{
  v1[8] = a1;
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return (_swift_task_switch)(specialized RecentsDetailPresenter.detailViewController(for:), v3, v2);
}

uint64_t specialized RecentsDetailPresenter.detailViewController(for:)()
{
  type metadata accessor for ApplicationServices();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[12] = v1;
  v2 = ((swift_isaMask & *v1) + 160) & 0xFFFFFFFFFFFFLL | 0x212B000000000000;
  v0[13] = *((swift_isaMask & *v1) + 0xA0);
  v0[14] = v2;
  type metadata accessor for ApplicationServicesActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type Handle and conformance Handle(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, type metadata accessor for ApplicationServicesActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(specialized RecentsDetailPresenter.detailViewController(for:), v4, v3);
}

{
  v1 = *(v0 + 96);
  *(v0 + 120) = (*(v0 + 104))();

  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return (_swift_task_switch)(specialized RecentsDetailPresenter.detailViewController(for:), v2, v3);
}

{

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[8];
  swift_beginAccess();
  v3 = static DummyVoicemailNavigationController.shared;
  [v3 setVoicemailController:v1];
  v4 = objc_allocWithZone(type metadata accessor for FTMessage());
  v5 = FTMessage.init(ftMessage:)(v2);
  v6 = [objc_allocWithZone(PHVoicemailMessageDetailViewController) initWithMessage:v5 navigationController:v3 voicemailController:v1];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = v0[15];
  swift_beginAccess();
  v8 = static DummyVoicemailMessageDetailViewControllerDelegate.shared;
  [v6 setDelegate:v8];

  v9 = v0[1];

  return v9(v6);
}

uint64_t type metadata accessor for RecentsDetailPresenter()
{
  result = type metadata singleton initialization cache for RecentsDetailPresenter;
  if (!type metadata singleton initialization cache for RecentsDetailPresenter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RecentsDetailPresenter()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in RecentsDetailPresenter.showRecentCallDetailsViewController(for:from:)(a1, v4, v5, v6, v7, v8);
}

uint64_t lazy protocol witness table accessor for type Handle and conformance Handle(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001D038C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo9MKMapItemCSgs5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in TUMapItem(for:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo9MKMapItemCSgs5NeverOGMd);

  return closure #1 in closure #1 in TUMapItem(for:)(a1);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *ApplicationServicesActor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static ApplicationServicesActor.shared;
}

uint64_t specialized VMDVoicemailCountSource.subscribeToNotifications()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100209F70;
  v3 = v0[6];
  v4 = v0[7];
  __swift_project_boxed_opaque_existential_0(v0 + 3, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(v4 + 40);

  v7 = v6(partial apply for specialized closure #1 in VMDVoicemailCountSource.subscribeToNotifications(), v5, v3, v4);

  *(v2 + 56) = swift_getObjectType();
  *(v2 + 32) = v7;
  v8 = [objc_opt_self() defaultCenter];
  v9 = swift_allocObject();
  swift_weakInit();
  v13[4] = partial apply for specialized closure #2 in VMDVoicemailCountSource.subscribeToNotifications();
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v13[3] = &block_descriptor_28;
  v10 = _Block_copy(v13);

  v11 = [v8 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:0 usingBlock:v10];
  _Block_release(v10);

  *(v2 + 88) = swift_getObjectType();
  *(v2 + 64) = v11;
  *(v1 + *(*v1 + 120)) = v2;
}

uint64_t ApplicationServicesActor.unownedExecutor.getter()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

uint64_t static ApplicationServicesActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, a2, type metadata accessor for ApplicationServicesActor);
  static GlobalActor.preconditionIsolated(_:file:line:)();
  v10 = swift_allocObject();
  v10[2] = a7;
  v10[3] = a1;
  v10[4] = a2;
  partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  if (v14)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t ApplicationServices.favoritesController_Objc.getter(uint64_t a1)
{
  if (one-time initialization token for queue != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for TPFavoritesController);
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

id ApplicationServices.favoritesController.getter()
{
  v1 = OBJC_IVAR___MPApplicationServices____lazy_storage___favoritesController;
  v2 = *&v0[OBJC_IVAR___MPApplicationServices____lazy_storage___favoritesController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___MPApplicationServices____lazy_storage___favoritesController];
  }

  else
  {
    v4 = [v0 contactStore];
    v5 = [objc_allocWithZone(TPFavoritesController) initWithContactStore:v4 prefetchCount:12];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void (*ApplicationServices.favoritesController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ApplicationServices.favoritesController.getter();
  return ApplicationServices.favoritesController.modify;
}

void ApplicationServices.favoritesController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___MPApplicationServices____lazy_storage___favoritesController);
  *(v1 + OBJC_IVAR___MPApplicationServices____lazy_storage___favoritesController) = v2;
}

uint64_t ApplicationServices.voicemailController_Objc.getter(uint64_t a1)
{
  if (one-time initialization token for queue != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21MPVoicemailControllerCMd);
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

id closure #1 in ApplicationServices.voicemailController.getter(void *a1)
{
  v2 = (*((swift_isaMask & *a1) + 0xD0))();
  v3 = (*((swift_isaMask & *a1) + 0xC0))();
  v4 = [a1 callProviderManager];
  v5 = [a1 contactStore];
  v6 = [a1 suggestedContactStore];
  v7 = [a1 metadataCache];
  v8 = [objc_allocWithZone(MPVoicemailController) initWithVoicemailManager:v2 accountManager:v3 callProviderManager:v4 contactStore:v5 suggestedContactStore:v6 metadataCache:v7];

  return v8;
}

void (*ApplicationServices.voicemailController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ApplicationServices.voicemailController.getter();
  return ApplicationServices.voicemailController.modify;
}

void ApplicationServices.voicemailController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___MPApplicationServices____lazy_storage___voicemailController);
  *(v1 + OBJC_IVAR___MPApplicationServices____lazy_storage___voicemailController) = v2;
}

uint64_t ApplicationServices.accountManager_objc.getter(uint64_t a1)
{
  if (one-time initialization token for queue != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone38VVMVoicemailCountSourceVoicemailStatus_AA0F22AccountManagerProtocolAA0f15BadgeCalculatorhI0So8NSObjectCXcMd);
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

void *ApplicationServices.accountManager.getter()
{
  v1 = type metadata accessor for VoicemailAccountManagerComposer();
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR___MPApplicationServices_accountManager_mutex;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPApplicationServices_accountManager_mutex));
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = *(v4 + 8);
  }

  else
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v8 = __swift_project_value_buffer(v7, static Logger.mobilePhone);
    (*(*(v7 - 8) + 16))(v3, v8, v7);
    v9 = VoicemailAccountManagerComposer.compose()();
    v11 = v10;
    v13 = v12;
    outlined destroy of VoicemailAccountManagerComposer(v3);
    *(v4 + 8) = v9;
    *(v4 + 16) = v11;
    *(v4 + 24) = v13;
    v6 = v9;
    v5 = 0;
  }

  v14 = v5;
  os_unfair_lock_unlock(v4);
  return v6;
}

uint64_t ApplicationServices.voicemailManager_Objc.getter(uint64_t a1)
{
  if (one-time initialization token for queue != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone16VoicemailManager_So8NSObjectCXcMd);
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

char *ApplicationServices.voicemailManager.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR___MPApplicationServices____lazy_storage___voicemailManager;
  v7 = *(v0 + OBJC_IVAR___MPApplicationServices____lazy_storage___voicemailManager);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR___MPApplicationServices____lazy_storage___voicemailManager);
  }

  else
  {
    if (one-time initialization token for mobilePhone != -1)
    {
      v17 = v3;
      swift_once();
      v3 = v17;
    }

    v9 = v3;
    v10 = __swift_project_value_buffer(v3, static Logger.mobilePhone);
    (*(v2 + 16))(v5, v10, v9);
    type metadata accessor for MessageStoreController();
    v11 = static MessageStoreController.shared.getter();
    v12 = objc_allocWithZone(type metadata accessor for FaceTimeVoicemailManager(0));
    v13 = specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(v5, closure #1 in closure #1 in ApplicationServices.voicemailManager.getter, 0, v11, v12);
    v14 = *v6;
    *v6 = v13;
    *(v6 + 8) = &protocol witness table for FaceTimeVoicemailManager;
    v8 = v13;

    v7 = 0;
  }

  v15 = v7;
  return v8;
}

uint64_t closure #1 in closure #1 in ApplicationServices.voicemailManager.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in ApplicationServices.voicemailManager.getter, v5);
}

uint64_t closure #1 in closure #1 in closure #1 in ApplicationServices.voicemailManager.getter()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in closure #1 in closure #1 in ApplicationServices.voicemailManager.getter, v2, v1);
}

{

  v1 = [objc_opt_self() defaultCenter];
  [v1 postNotificationName:@"PHVoicemailManagerVoicemailsChanged" object:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ApplicationServices.voicemailManager.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MPApplicationServices____lazy_storage___voicemailManager);
  *v3 = a1;
  v3[1] = a2;
  return _objc_release_x2();
}

uint64_t (*ApplicationServices.voicemailManager.modify(char **a1))(uint64_t a1)
{
  a1[2] = v1;
  *a1 = ApplicationServices.voicemailManager.getter();
  a1[1] = v3;
  return ApplicationServices.voicemailManager.modify;
}

uint64_t ApplicationServices.badgeCalculator_Objc.getter(uint64_t a1)
{
  if (one-time initialization token for queue != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  type metadata accessor for VoicemailBadgeCalculator();
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

id ApplicationServices.voicemailController.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id closure #1 in ApplicationServices.badgeCalculator.getter(void *a1)
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:static VoicemailActor.queue];
  v3 = *((swift_isaMask & *a1) + 0xC0);
  v4 = v2;
  v5 = v3();
  v7 = v6;
  v37[3] = swift_getObjectType();
  v37[4] = v7;
  v37[0] = v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone23VMDVoicemailCountSourceCySo19CoreTelephonyClientCGMd);
  v8 = swift_allocObject();
  v9 = *(*v8 + 112);
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.mobilePhone);
  (*(*(v10 - 8) + 16))(&v8[v9], v11, v10);
  *&v8[*(*v8 + 120)] = _swiftEmptyArrayStorage;
  v12 = &v8[*(*v8 + 128)];
  *v12 = 0;
  v12[8] = -1;
  v13 = *(*v8 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *&v8[v13] = PassthroughSubject.init()();
  *(v8 + 2) = v4;
  outlined init with copy of Tip(v37, (v8 + 24));
  specialized VMDVoicemailCountSource.subscribeToNotifications()();
  __swift_destroy_boxed_opaque_existential_0(v37);
  v14 = type metadata accessor for VVMVoicemailCountSource();
  v15 = (*((swift_isaMask & *a1) + 0xD0))();
  v17 = v16;
  v33 = v4;
  ObjectType = swift_getObjectType();
  v19 = v15;
  v20 = v3();
  v21 = v3;
  v23 = v22;
  v24 = swift_getObjectType();
  v36 = v20;
  v37[0] = v19;
  v25 = specialized VVMVoicemailCountSource.__allocating_init(voicemailManager:voicemailStatus:)(v37, &v36, v14, ObjectType, v24, *(v17 + 8), *(v17 + 16), v23);

  v26 = type metadata accessor for VoicemailBadgeCalculator();
  v27 = v21();
  v29 = v28;
  v30 = swift_getObjectType();
  v36 = v25;
  v37[0] = v27;
  v35 = v8;
  v31 = specialized VoicemailBadgeCalculator.__allocating_init(accountManager:vvmSource:legacySource:)(v37, &v36, &v35, v26, v30, v34, v14, v29, &protocol witness table for VMDVoicemailCountSource<A>, &protocol witness table for VVMVoicemailCountSource);

  return v31;
}

void (*ApplicationServices.badgeCalculator.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ApplicationServices.badgeCalculator.getter();
  return ApplicationServices.badgeCalculator.modify;
}

void ApplicationServices.badgeCalculator.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___MPApplicationServices____lazy_storage___badgeCalculator);
  *(v1 + OBJC_IVAR___MPApplicationServices____lazy_storage___badgeCalculator) = v2;
}

id ApplicationServices.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  *&v0[OBJC_IVAR___MPApplicationServices____lazy_storage___favoritesController] = 0;
  *&v0[OBJC_IVAR___MPApplicationServices____lazy_storage___voicemailController] = 0;
  v4 = &v0[OBJC_IVAR___MPApplicationServices_accountManager_mutex];
  *v4 = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR___MPApplicationServices____lazy_storage___voicemailManager];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR___MPApplicationServices____lazy_storage___badgeCalculator] = 0;
  v6 = type metadata accessor for ApplicationServices();
  v15.receiver = v0;
  v15.super_class = v6;
  v7 = objc_msgSendSuper2(&v15, "init");
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  type metadata accessor for ApplicationServicesActor();
  inited = swift_initStaticObject();
  v11 = lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, v10, type metadata accessor for ApplicationServicesActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v7;
  v13 = v7;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in ApplicationServices.init(), v12);

  return v13;
}

uint64_t closure #1 in ApplicationServices.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for ApplicationServicesActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, v5, type metadata accessor for ApplicationServicesActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in ApplicationServices.init(), v7, v6);
}

uint64_t closure #1 in ApplicationServices.init()()
{
  v1 = *(v0 + 8);

  return v1();
}

id ApplicationServices.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationServices();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s11MobilePhone24ApplicationServicesActorC4sync33_666B477EA335BD435E0E397FF3CF0F88LL_4file4linexxyACYcXE_s12StaticStringVSuts8SendableRzlFZxyXEfU_So21TPFavoritesControllerC_Tt0G5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10[3] = a2;
  v10[2] = a1;
  type metadata accessor for ApplicationServicesActor();
  lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, v5, type metadata accessor for ApplicationServicesActor);
  static GlobalActor.preconditionIsolated(_:file:line:)();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:);
  *(v6 + 24) = v10;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(&v11);
  if (!v3)
  {
    v7 = v11;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *a3 = v7;
      return result;
    }

    __break(1u);
  }

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
  return result;
}

uint64_t _s11MobilePhone24ApplicationServicesActorC4sync33_666B477EA335BD435E0E397FF3CF0F88LL_4file4linexxyACYcXE_s12StaticStringVSuts8SendableRzlFZxyXEfU_So21MPVoicemailControllerCyAA9MessageIDCG_Tt0G5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10[3] = a2;
  v10[2] = a1;
  type metadata accessor for ApplicationServicesActor();
  lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, v5, type metadata accessor for ApplicationServicesActor);
  static GlobalActor.preconditionIsolated(_:file:line:)();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:);
  *(v6 + 24) = v10;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(&v11);
  if (!v3)
  {
    v7 = v11;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *a3 = v7;
      return result;
    }

    __break(1u);
  }

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
  return result;
}

uint64_t _s11MobilePhone24ApplicationServicesActorC4sync33_666B477EA335BD435E0E397FF3CF0F88LL_4file4linexxyACYcXE_s12StaticStringVSuts8SendableRzlFZxyXEfU_AA38VVMVoicemailCountSourceVoicemailStatus_AA0W22AccountManagerProtocolAA0w15BadgeCalculatoryZ0So8NSObjectCXc_Tt0G5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a1;
  v13 = a2;
  type metadata accessor for ApplicationServicesActor();
  lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, v5, type metadata accessor for ApplicationServicesActor);
  static GlobalActor.preconditionIsolated(_:file:line:)();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:);
  *(v6 + 24) = &v11;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(&v14);
  if (!v3)
  {
    v10 = v14;
    v7 = v15;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *a3 = v10;
      *(a3 + 16) = v7;
      return result;
    }

    __break(1u);
  }

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
  return result;
}

uint64_t outlined destroy of VoicemailAccountManagerComposer(uint64_t a1)
{
  v2 = type metadata accessor for VoicemailAccountManagerComposer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s11MobilePhone24ApplicationServicesActorC4sync33_666B477EA335BD435E0E397FF3CF0F88LL_4file4linexxyACYcXE_s12StaticStringVSuts8SendableRzlFZxyXEfU_AA16VoicemailManager_So8NSObjectCXc_Tt0G5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v11 = a1;
  v12 = a2;
  type metadata accessor for ApplicationServicesActor();
  lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, v5, type metadata accessor for ApplicationServicesActor);
  static GlobalActor.preconditionIsolated(_:file:line:)();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:);
  *(v6 + 24) = &v10;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(&v13);
  if (!v3)
  {
    v9 = v13;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *a3 = v9;
      return result;
    }

    __break(1u);
  }

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
  return result;
}

uint64_t _s11MobilePhone24ApplicationServicesActorC4sync33_666B477EA335BD435E0E397FF3CF0F88LL_4file4linexxyACYcXE_s12StaticStringVSuts8SendableRzlFZxyXEfU_AA24VoicemailBadgeCalculatorC_Tt0G5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10[3] = a2;
  v10[2] = a1;
  type metadata accessor for ApplicationServicesActor();
  lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(&lazy protocol witness table cache variable for type ApplicationServicesActor and conformance ApplicationServicesActor, v5, type metadata accessor for ApplicationServicesActor);
  static GlobalActor.preconditionIsolated(_:file:line:)();
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:);
  *(v6 + 24) = v10;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(&v11);
  if (!v3)
  {
    v7 = v11;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *a3 = v7;
      return result;
    }

    __break(1u);
  }

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
  return result;
}

char *_ss10SetAlgebraPsEyxqd__ncSTRd__7ElementQyd__ACRtzlufC11MobilePhone29VoicemailAccountManagerUpdateC_SayAHGTt1g5Tf4g_n(unint64_t a1)
{
  v2 = type metadata accessor for VoicemailAccountManagerUpdate();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = 0;
  v29.receiver = v3;
  v29.super_class = v2;
  v25 = objc_msgSendSuper2(&v29, "init");
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v10 = *&v25[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];
      v11 = objc_allocWithZone(v2);
      *&v11[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v10;
      v28.receiver = v11;
      v28.super_class = v2;
      v12 = objc_msgSendSuper2(&v28, "init");
      v13 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue];

      v14 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      v15 = *(v7 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13;
      v16 = objc_allocWithZone(v2);
      *&v16[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v15;
      v27.receiver = v16;
      v27.super_class = v2;
      v17 = objc_msgSendSuper2(&v27, "init");
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {

        ++v5;
        if (v8 == i)
        {
          return v25;
        }
      }

      else
      {
        v19 = *&v25[v9];
        v20 = v7;

        v21 = *(v7 + v14) | v19;
        v22 = objc_allocWithZone(v2);
        *&v22[OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue] = v21;
        v26.receiver = v22;
        v26.super_class = v2;
        v25 = objc_msgSendSuper2(&v26, "init");

        v5 = v8;
        if (v8 == i)
        {
          return v25;
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v25;
}

uint64_t sub_1001D317C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in ApplicationServices.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in ApplicationServices.init()(a1, v4, v5, v6);
}

uint64_t sub_1001D32B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1001D3378@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_1001D3438@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1001D34FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

char *sub_1001D35BC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone38VVMVoicemailCountSourceVoicemailStatus_AD0H22AccountManagerProtocolAD0h15BadgeCalculatorjK0So8NSObjectCXcSgGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t partial apply for closure #1 in ApplicationServices.badgeCalculator_Objc.getter@<X0>(uint64_t *a1@<X8>)
{
  result = (*((swift_isaMask & **(v1 + 16)) + 0xF0))();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in ApplicationServices.voicemailManager_Objc.getter@<X0>(uint64_t *a1@<X8>)
{
  result = (*((swift_isaMask & **(v1 + 16)) + 0xD0))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t partial apply for closure #1 in ApplicationServices.accountManager_objc.getter@<X0>(uint64_t *a1@<X8>)
{
  result = (*((swift_isaMask & **(v1 + 16)) + 0xC0))();
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t partial apply for closure #1 in ApplicationServices.voicemailController_Objc.getter@<X0>(uint64_t *a1@<X8>)
{
  result = (*((swift_isaMask & **(v1 + 16)) + 0xA0))();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in ApplicationServices.favoritesController_Objc.getter@<X0>(uint64_t *a1@<X8>)
{
  result = (*((swift_isaMask & **(v1 + 16)) + 0x80))();
  *a1 = result;
  return result;
}

uint64_t outlined destroy of (NSObject & VVMVoicemailCountSourceVoicemailStatus & VoicemailAccountManagerProtocol & VoicemailBadgeCalculatorAccountManager)?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone38VVMVoicemailCountSourceVoicemailStatus_AA0F22AccountManagerProtocolAA0f15BadgeCalculatorhI0So8NSObjectCXcSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D3824()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:)@<X0>(void *a1@<X8>)
{
  return partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:)(a1);
}

{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  return result;
}

{
  return partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:)(a1);
}

void *partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)@<X0>(void *a1@<X8>)
{
  return partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(a1);
}

{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

{
  return partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(a1);
}

uint64_t sub_1001D38C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ApplicationServices.voicemailManager.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in closure #1 in closure #1 in ApplicationServices.voicemailManager.getter();
}

double partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:)@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

double partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

double partial apply for specialized closure #1 in closure #1 in static ApplicationServicesActor.sync<A>(_:file:line:)@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v5);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

double partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    result = *&v6;
    *a1 = v6;
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ApplicationServicesActor and conformance ApplicationServicesActor(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  resourceBundle.super.isa = result;
  return result;
}

uint64_t one-time initialization function for color1()
{
  v0 = type metadata accessor for ColorResource();
  __swift_allocate_value_buffer(v0, static ColorResource.AppIcon.color1);
  __swift_project_value_buffer(v0, static ColorResource.AppIcon.color1);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ColorResource.init(name:bundle:)();
}

uint64_t one-time initialization function for color2()
{
  v0 = type metadata accessor for ColorResource();
  __swift_allocate_value_buffer(v0, static ColorResource.AppIcon.color2);
  __swift_project_value_buffer(v0, static ColorResource.AppIcon.color2);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ColorResource.init(name:bundle:)();
}

uint64_t one-time initialization function for color3()
{
  v0 = type metadata accessor for ColorResource();
  __swift_allocate_value_buffer(v0, static ColorResource.AppIcon.color3);
  __swift_project_value_buffer(v0, static ColorResource.AppIcon.color3);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ColorResource.init(name:bundle:)();
}

uint64_t one-time initialization function for color4()
{
  v0 = type metadata accessor for ColorResource();
  __swift_allocate_value_buffer(v0, static ColorResource.AppIcon.color4);
  __swift_project_value_buffer(v0, static ColorResource.AppIcon.color4);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ColorResource.init(name:bundle:)();
}

uint64_t one-time initialization function for color5()
{
  v0 = type metadata accessor for ColorResource();
  __swift_allocate_value_buffer(v0, static ColorResource.AppIcon.color5);
  __swift_project_value_buffer(v0, static ColorResource.AppIcon.color5);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ColorResource.init(name:bundle:)();
}

uint64_t one-time initialization function for color6()
{
  v0 = type metadata accessor for ColorResource();
  __swift_allocate_value_buffer(v0, static ColorResource.AppIcon.color6);
  __swift_project_value_buffer(v0, static ColorResource.AppIcon.color6);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ColorResource.init(name:bundle:)();
}

uint64_t one-time initialization function for _2Phone()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.AppIcon._2Phone);
  __swift_project_value_buffer(v0, static ImageResource.AppIcon._2Phone);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for callAcceptRTT()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.callAcceptRTT);
  __swift_project_value_buffer(v0, static ImageResource.callAcceptRTT);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for keypadDeleteButton()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.keypadDeleteButton);
  __swift_project_value_buffer(v0, static ImageResource.keypadDeleteButton);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for voicemailShorcutIcon()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.voicemailShorcutIcon);
  __swift_project_value_buffer(v0, static ImageResource.voicemailShorcutIcon);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for voicemailShortcutIcon()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.voicemailShortcutIcon);
  __swift_project_value_buffer(v0, static ImageResource.voicemailShortcutIcon);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for cancel()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.cancel);
  __swift_project_value_buffer(v0, static ImageResource.cancel);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for cancelSmall()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.cancelSmall);
  __swift_project_value_buffer(v0, static ImageResource.cancelSmall);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for emergencyKeypadCallButton()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.emergencyKeypadCallButton);
  __swift_project_value_buffer(v0, static ImageResource.emergencyKeypadCallButton);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endAccept()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endAccept);
  __swift_project_value_buffer(v0, static ImageResource.endAccept);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endAcceptLarge()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endAcceptLarge);
  __swift_project_value_buffer(v0, static ImageResource.endAcceptLarge);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endAcceptSmall()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endAcceptSmall);
  __swift_project_value_buffer(v0, static ImageResource.endAcceptSmall);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endAcceptVoip()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endAcceptVoip);
  __swift_project_value_buffer(v0, static ImageResource.endAcceptVoip);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endCallVoip()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endCallVoip);
  __swift_project_value_buffer(v0, static ImageResource.endCallVoip);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endHoldAccept()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endHoldAccept);
  __swift_project_value_buffer(v0, static ImageResource.endHoldAccept);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endHoldAcceptSmall()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endHoldAcceptSmall);
  __swift_project_value_buffer(v0, static ImageResource.endHoldAcceptSmall);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endHoldAcceptVoip()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endHoldAcceptVoip);
  __swift_project_value_buffer(v0, static ImageResource.endHoldAcceptVoip);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endVoipAccept()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endVoipAccept);
  __swift_project_value_buffer(v0, static ImageResource.endVoipAccept);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for endVoipAcceptVoip()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.endVoipAcceptVoip);
  __swift_project_value_buffer(v0, static ImageResource.endVoipAcceptVoip);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for holdAccept()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.holdAccept);
  __swift_project_value_buffer(v0, static ImageResource.holdAccept);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for holdAcceptLarge()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.holdAcceptLarge);
  __swift_project_value_buffer(v0, static ImageResource.holdAcceptLarge);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for holdAcceptSmall()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.holdAcceptSmall);
  __swift_project_value_buffer(v0, static ImageResource.holdAcceptSmall);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for holdAcceptVoip()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.holdAcceptVoip);
  __swift_project_value_buffer(v0, static ImageResource.holdAcceptVoip);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for iPhoneFaceIDLiveVoicemailOnboarding()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.iPhoneFaceIDLiveVoicemailOnboarding);
  __swift_project_value_buffer(v0, static ImageResource.iPhoneFaceIDLiveVoicemailOnboarding);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for iPhoneHomeLiveVoicemailOnboarding()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.iPhoneHomeLiveVoicemailOnboarding);
  __swift_project_value_buffer(v0, static ImageResource.iPhoneHomeLiveVoicemailOnboarding);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for iconAudio()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.iconAudio);
  __swift_project_value_buffer(v0, static ImageResource.iconAudio);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for iconFlipcamera()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.iconFlipcamera);
  __swift_project_value_buffer(v0, static ImageResource.iconFlipcamera);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for iconMute()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.iconMute);
  __swift_project_value_buffer(v0, static ImageResource.iconMute);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for iconMuteSmall()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.iconMuteSmall);
  __swift_project_value_buffer(v0, static ImageResource.iconMuteSmall);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for keypadDeleteArrow()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.keypadDeleteArrow);
  __swift_project_value_buffer(v0, static ImageResource.keypadDeleteArrow);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for keypadDeleteX()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.keypadDeleteX);
  __swift_project_value_buffer(v0, static ImageResource.keypadDeleteX);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for leaveAMessage()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.leaveAMessage);
  __swift_project_value_buffer(v0, static ImageResource.leaveAMessage);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for leaveAMessageSmall()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.leaveAMessageSmall);
  __swift_project_value_buffer(v0, static ImageResource.leaveAMessageSmall);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for phoneVolume()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.phoneVolume);
  __swift_project_value_buffer(v0, static ImageResource.phoneVolume);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for phoneDialVoip()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.phoneDialVoip);
  __swift_project_value_buffer(v0, static ImageResource.phoneDialVoip);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for phoneSlideVoip()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.phoneSlideVoip);
  __swift_project_value_buffer(v0, static ImageResource.phoneSlideVoip);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for sendToVoicemail()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.sendToVoicemail);
  __swift_project_value_buffer(v0, static ImageResource.sendToVoicemail);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for sendToVoicemailSmall()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.sendToVoicemailSmall);
  __swift_project_value_buffer(v0, static ImageResource.sendToVoicemailSmall);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for textSosIcon()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.textSosIcon);
  __swift_project_value_buffer(v0, static ImageResource.textSosIcon);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for textSosIconCarPlay()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.textSosIconCarPlay);
  __swift_project_value_buffer(v0, static ImageResource.textSosIconCarPlay);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for textSosIconCarPlayFocusRing()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.textSosIconCarPlayFocusRing);
  __swift_project_value_buffer(v0, static ImageResource.textSosIconCarPlayFocusRing);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for textSosIconCarPlayFocused()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.textSosIconCarPlayFocused);
  __swift_project_value_buffer(v0, static ImageResource.textSosIconCarPlayFocused);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for unknownCallersSheet()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.unknownCallersSheet);
  __swift_project_value_buffer(v0, static ImageResource.unknownCallersSheet);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t one-time initialization function for unknownCallersTip()
{
  v0 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v0, static ImageResource.unknownCallersTip);
  __swift_project_value_buffer(v0, static ImageResource.unknownCallersTip);
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  v1 = resourceBundle.super.isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t ColorResource.AppIcon.color1.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static ColorResource.AppIcon.color1.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1002CEC28 == -1)
  {
    if (qword_1002CEC30)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1002CEC30)
    {
      return _availability_version_check();
    }
  }

  if (qword_1002CEC20 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1002CEC14 > a3)
      {
        return 1;
      }

      if (dword_1002CEC14 >= a3)
      {
        return dword_1002CEC18 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v1 = qword_1002CEC30;
  if (qword_1002CEC30)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1002CEC30 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1002CEC14, &dword_1002CEC18);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void PHFaceTimeApplicationIsRemoved_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Cound not obtain application record with bundle indentifier %@; attempt failed with error %@", &v3, 0x16u);
}

void __getPSSimStatusCacheClass_block_invoke_cold_1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getPSSimStatusCacheClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MPRecentsTableViewController.m" lineNumber:74 description:{@"Unable to find class %s", "PSSimStatusCache"}];

  __break(1u);
}

void __getPSSimStatusCacheClass_block_invoke_cold_2(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *SettingsCellularLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MPRecentsTableViewController.m" lineNumber:73 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::OpaquePointer_optional __swiftcall NameAndPhotoUtilities.unknownSenderRecordInfo(for:)(Swift::String_optional a1)
{
  v1 = NameAndPhotoUtilities.unknownSenderRecordInfo(for:)(a1.value._countAndFlagsBits, a1.value._object);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t UIHostingConfiguration.margins(_:_:)()
{
  return UIHostingConfiguration.margins(_:_:)();
}

{
  return UIHostingConfiguration.margins(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall StringProtocol.applyingTransform(_:reverse:)(NSStringTransform _, Swift::Bool reverse)
{
  v2 = StringProtocol.applyingTransform(_:reverse:)(_, reverse);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}