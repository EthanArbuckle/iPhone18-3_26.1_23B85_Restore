void sub_100005B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006514(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1000075A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id _mo_log_facility_get_os_log(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, _mo_log_facility_prepare);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t _mo_log_facility_prepare(uint64_t a1)
{
  result = os_log_create("com.apple.MomentsUIService", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_10000B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10000E114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

int main(int argc, const char **argv, const char **envp)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin();
  v4 = &v25 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v5, static MOAngelLogger.shared);
    (*(v6 + 16))(v8, v9, v5);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Can't set user's dir suffix path.", v12, 2u);
    }

    (*(v6 + 8))(v8, v5);
  }

  domainDirectoryPath.value._countAndFlagsBits = closure #1 in ();
  domainDirectoryPath.value._object = v13;
  type metadata accessor for MomentsUIManager();
  closure #2 in (v4);
  static MomentsUIManager.cloudSyncStateURL.setter();
  closure #3 in (v4);
  static MomentsUIManager.cloudDeviceDBURL.setter();
  closure #4 in (v4);
  static MomentsUIManager.cloudSuggestionsStateURL.setter();
  closure #5 in (v4);
  static MomentsUIManager.suggestionsDBURL.setter();
  closure #6 in (v4);
  static MomentsUIManager.cloudSyncDBURL.setter();
  static MomentsUIManager.isOnboarded.setter();
  static MomentsUIManager.onboardingFlowStatus.setter();
  momentsUIManager = static MomentsUIManager.shared.getter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = *((swift_isaMask & *static MOPresenterServer.shared) + 0xC8);
  v15 = static MOPresenterServer.shared;
  v14();

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = *((swift_isaMask & *static MOProcessingServer.shared) + 0xD8);
  v17 = static MOProcessingServer.shared;
  v16();

  v18 = static CommandLine.argc.getter();
  v19 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIApplication);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for MOAppDelegate();
  v22 = swift_getObjCClassFromMetadata();
  v23 = NSStringFromClass(v22);
  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v18, v19, v21, v23);

  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in ()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v1 + 16))
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    v3 = String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t closure #2 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t closure #3 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t closure #4 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t closure #5 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t closure #6 in @<X0>(uint64_t a1@<X8>)
{
  if (domainDirectoryPath.value._object)
  {

    String.init<A>(_:)();
    String.append<A>(contentsOf:)();
    URL.init(fileURLWithPath:)();

    v2 = type metadata accessor for URL();
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v4 = type metadata accessor for URL();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

BOOL closure #7 in ()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 1;
  if (v1 == 1)
  {
    return (OnboardingType.needsOnboarding.getter(result) & 1) == 0;
  }

  if (!v1)
  {
    LOBYTE(result) = 0;
    return (OnboardingType.needsOnboarding.getter(result) & 1) == 0;
  }

  __break(1u);
  return result;
}

void closure #8 in ()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (!v1)
  {
    v2 = 0;
LABEL_5:
    OnboardingType.onboardingFlowStatus.getter(v2);
    return;
  }

  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id variable initialization expression of MOSuggestionPickerPrivacyBadge.iconView()
{
  v0 = CGRectMake();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = objc_allocWithZone(type metadata accessor for MOSuggestionPickerBadgeIconView());

  return [v7 initWithFrame:{v0, v2, v4, v6}];
}

id variable initialization expression of MOSuggestionSheetOverflowView.overflowCountLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  if (one-time initialization token for numberColor != -1)
  {
    swift_once();
  }

  [v0 setTextColor:static MOSuggestionSheetOverflowView.numberColor];
  if (one-time initialization token for font != -1)
  {
    swift_once();
  }

  [v0 setFont:static MOSuggestionSheetOverflowView.font];
  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

id variable initialization expression of MOSuggestionSheetInterstitialView.stackView()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:1];
  [v0 setAlignment:3];
  [v0 setSpacing:3.0];
  return v0;
}

id variable initialization expression of MOSuggestionCutoutView.fillLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

id default argument 1 of MOSuggestionWorkoutIconGlyphView.init(image:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)()
{
  if (one-time initialization token for exerciseGreen != -1)
  {
    swift_once();
  }

  v0 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];

  return v0;
}

id default argument 0 of WorkoutLocationAnnotationView.init(annotation:type:tileSize:)()
{
  v0 = objc_allocWithZone(MKPointAnnotation);

  return [v0 init];
}

id variable initialization expression of MOSuggestionAssetActivityRingsProvider.summary()
{
  v0 = objc_allocWithZone(HKActivitySummary);

  return [v0 init];
}

id variable initialization expression of MOSuggestionAssetActivityRingsProvider.timeRangePredicate()
{
  v0 = objc_allocWithZone(NSPredicate);

  return [v0 init];
}

id default argument 3 of UIImage.composedOf(with:rects:targetSize:backgroundColor:)()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

uint64_t variable initialization expression of MOSuggestionAssetMapSnapshotProvider.snapshotProcessingQueue()
{
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInitiated.getter();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  v5[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionAssetMapSnapshotProvider.mapService()
{
  v0 = objc_allocWithZone(GEOMapService);

  return [v0 init];
}

id variable initialization expression of MOSuggestionActivityRouteAssetView.labelStack()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:1];
  [v0 setDistribution:4];
  [v0 setAlignment:1];
  [v0 setSpacing:2.0];
  return v0;
}

id variable initialization expression of ReflectionPromptView.shuffleButton()
{
  v0 = objc_allocWithZone(UIButton);

  return [v0 init];
}

id variable initialization expression of ReflectionPromptView.blurredEffectView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of ReflectionPromptView.accentColor()
{
  v0 = [objc_opt_self() systemWhiteColor];

  return v0;
}

_BYTE *variable initialization expression of MOSuggestionSheetAssetGridView.addedView(char a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for MOSuggestionAddedView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2[OBJC_IVAR____TtC16MomentsUIService21MOSuggestionAddedView_symbolOnly] = a1;
  v3 = v2;
  [v3 setClipsToBounds:1];
  MOSuggestionAddedView.initAddedView()();

  return v3;
}

id variable initialization expression of MOSuggestionCollectionViewListCell.assetContainerView()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 layer];
  [v2 setMaskedCorners:1];

  [v0 setClipsToBounds:1];
  return v0;
}

id variable initialization expression of MOSuggestionCollectionViewListCell.stackView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(UIStackView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAxis:a1];
  [v6 setAlignment:a2];
  [v6 setDistribution:a3];
  return v6;
}

uint64_t variable initialization expression of MOWeakArray.references()
{
  type metadata accessor for MOWeakReference();

  return static Array._allocateUninitialized(_:)();
}

id variable initialization expression of MOSuggestionAssetPhotoLivePhotoVideosProvider.imageManager()
{
  v0 = objc_allocWithZone(PHCachingImageManager);

  return [v0 init];
}

uint64_t variable initialization expression of MOSuggestionAssetPhotoLivePhotoVideosProvider.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v5[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionAssetWorkoutProvider.healthStore()
{
  v0 = objc_allocWithZone(HKHealthStore);

  return [v0 init];
}

double variable initialization expression of MOSuggestionTipCoordinator.privacyTip@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of MOSuggestionInterstitialCarouselView.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v5[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionStateOfMindAssetView.labelStack()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:1];
  [v0 setSpacing:1.0];
  [v0 setAlignment:1];
  return v0;
}

id variable initialization expression of MOAssetPhotoMomentProvider.imageManager()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

id variable initialization expression of MOSuggestionActivityRingsAssetView.labelStackView()
{
  v0 = [objc_allocWithZone(UIStackView) init];
  [v0 setAxis:1];
  [v0 setSpacing:2.0];
  [v0 setAlignment:1];
  [v0 setDistribution:3];
  return v0;
}

double variable initialization expression of MOSuggestionSheetImage.squareCrop@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

id variable initialization expression of MOSuggestionCollectionView.onboardingManager()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id variable initialization expression of MOSuggestionCollectionView.privacyBadge()
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v3 = objc_allocWithZone(type metadata accessor for MOSuggestionPickerPrivacyBadge());

  return [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
}

id variable initialization expression of MOSuggestionCollectionView.refresher()
{
  v0 = objc_allocWithZone(UIRefreshControl);

  return [v0 init];
}

id variable initialization expression of MOSuggestionSheetInterstitialView.scrollView(Class *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(*a1) init];
  [v3 *a2];
  return v3;
}

id variable initialization expression of MOSuggestionInterstitialAlertContentViewController.textView()
{
  v0 = objc_allocWithZone(UITextView);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.basePOICircleView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.clusterCountLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of MOPOIAnnotationView.borderBackgroundView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of MOAngelControllerWrapper.serverManager()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id variable initialization expression of MOAngelControllerWrapper.engagementWriter()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id variable initialization expression of MOSuggestionSheetFilterCollectionView.layout()
{
  v0 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v0 setScrollDirection:1];
  [v0 setMinimumInteritemSpacing:12.0];
  return v0;
}

uint64_t variable initialization expression of MOSuggestionSheetFilterCollectionView.filterViewModel()
{
  type metadata accessor for MOSuggestionSheetFilterCollectionViewModel();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t variable initialization expression of MOSuggestionCollectionViewModel.currentFetchSignpostState@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of MOSuggestionInterstitialExpandableListView.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v5[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionSheetVideoPlaybackView.muteButtonConfig()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
  v1 = [objc_opt_self() configurationWithFont:v0];

  return v1;
}

id variable initialization expression of MOSuggestionSheetVideoPlaybackView.unMutedImage()
{
  return variable initialization expression of MOSuggestionSheetVideoPlaybackView.unMutedImage();
}

{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  return v1;
}

id variable initialization expression of MOSuggestionSheetVideoPlaybackView.mutedImage()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  return v1;
}

uint64_t variable initialization expression of MOProcessingServer.processorManager()
{
  type metadata accessor for TaskProcessorManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_16MomentsUIService19TaskProcessorWorker_pTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  *(v0 + 120) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_16MomentsUIService19TaskProcessorWorker_pyKcTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  return v0;
}

id default argument 3 of MOSuggestionWorkoutIconGlyphView.init(image:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:)(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id variable initialization expression of MOEventBundleStore.promptManager()
{
  v0 = objc_allocWithZone(MOPromptManager);

  return [v0 init];
}

id variable initialization expression of CanvasAssetAccessoryView.keyColor()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

id variable initialization expression of MOSuggestionCarouselView.pageControl()
{
  v0 = objc_allocWithZone(UIPageControl);

  return [v0 init];
}

id variable initialization expression of MOSuggestionMotionAssetView.motionBackground()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 colorNamed:v0];

  if (v2)
  {
    return v2;
  }

  v4 = [v1 systemWhiteColor];

  return v4;
}

id variable initialization expression of MOSuggestionMotionAssetView.workoutDataLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v1];

  [v0 setTextAlignment:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  return v0;
}

id variable initialization expression of MOMusicPlaybackCoordinator.mediaPlayer()
{
  v0 = [objc_opt_self() systemMusicPlayer];

  return v0;
}

id variable initialization expression of MOSuggestionAssetAppIconProvider.defaultDescriptor()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = objc_allocWithZone(ISImageDescriptor);

  return [v3 initWithSize:350.0 scale:{350.0, v2}];
}

id variable initialization expression of MOLocationShifter.shifter()
{
  v0 = objc_allocWithZone(GEOLocationShifter);

  return [v0 init];
}

uint64_t variable initialization expression of MOLocationShifter.processingQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v5[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionSheetVideoPlaybackView.config(SEL *a1, double a2)
{
  v3 = [objc_opt_self() *a1];
  v4 = objc_opt_self();
  v5 = [v4 configurationWithHierarchicalColor:v3];

  v6 = [objc_opt_self() systemFontOfSize:a2];
  v7 = [v4 configurationWithFont:v6];

  v8 = [v5 configurationByApplyingConfiguration:v7];
  return v8;
}

id variable initialization expression of MOCircularProgressIndicatorView.borderPath()
{
  v0 = objc_allocWithZone(UIBezierPath);

  return [v0 init];
}

uint64_t variable initialization expression of MOPresenterServer.session()
{
  type metadata accessor for MOBundleProcessingSession();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionNotificationManager.shared;
  *(v0 + 112) = static SuggestionNotificationManager.shared;
  *(v0 + 120) = 0;
  v2 = v1;
  return v0;
}

id variable initialization expression of MOPresenterServer.lock()
{
  v0 = objc_allocWithZone(NSRecursiveLock);

  return [v0 init];
}

id variable initialization expression of MOSuggestionActivityRouteAssetView.distanceBlue(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 colorNamed:v4];

  if (v6)
  {
    return v6;
  }

  v8 = [v5 *a3];

  return v8;
}

id variable initialization expression of MOSuggestionSheetInterstitialView.labelStackView(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(UIStackView) init];
  [v4 setAxis:a1];
  [v4 setAlignment:a2];
  return v4;
}

id variable initialization expression of MOSuggestionPickerBadgeIconView.suggestionsImageView()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of MOSuggestionPickerBadgeIconView.privacyImageView()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

double variable initialization expression of MOSuggestionCollectionViewBlankEntrySectionHeaderView.newEntryDelegate@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of MOPresenterServerWindow.viewController(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

id variable initialization expression of MOSuggestionInterstitialExpandableListViewCell.checkmarkView(uint64_t (*a1)(void), double a2, double a3, double a4, double a5)
{
  v9 = objc_allocWithZone(a1(0));

  return [v9 initWithFrame:{a2, a3, a4, a5}];
}

id variable initialization expression of MOSuggestionSheetMediaAssetView.labelStackView()
{
  v0 = objc_allocWithZone(UIStackView);

  return [v0 init];
}

id variable initialization expression of MOSuggestionMapSnapshotView.platterBlurView(uint64_t a1)
{
  v1 = [objc_opt_self() effectWithStyle:a1];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  return v2;
}

id variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.platterView()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v0, v2);
  return v0;
}

id variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.journalButton(char a1)
{
  v2 = type metadata accessor for MOSuggestionSheetJournalButton();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset] = a1;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  MOSuggestionSheetJournalButton.sharedInit()();

  return v5;
}

id variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.assetGridView(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t variable initialization expression of MOSuggestionAssetMediaAlbumArtProvider.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.utility.getter();
  v5[1] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

id variable initialization expression of MOSuggestionAssetMediaAlbumArtProvider.configurationManager()
{
  v0 = objc_allocWithZone(MOConfigurationManagerBase);

  return [v0 init];
}

uint64_t variable initialization expression of PresenterServerViewController.currentClient@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id variable initialization expression of MOSuggestionAssetCacheManager.assetCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

void *variable initialization expression of MOSuggestionAssetCacheManager.photoLivePhotoVideoProvider()
{
  type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider();
  swift_allocObject();
  return MOSuggestionAssetPhotoLivePhotoVideosProvider.init()();
}

BOOL _sSo21MOPickerContentOptionVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t _sSo45UISheetPresentationControllerDetentIdentifieraSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *_sSo26MOOnboardingFlowCompletionVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIFontWeight@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance BMMomentsEngagementSuggestionType@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BMMomentsEngagementSuggestionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BMMomentsEngagementSuggestionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSetting()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSetting()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIFontWeight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIBackgroundTaskIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

void *_sSo22UIViewAnimationOptionsVs10SetAlgebraSCsACP6removey7ElementQzSgAGFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *_sSo22UIViewAnimationOptionsVs10SetAlgebraSCsACP6update4with7ElementQzSgAHn_tFTW_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetsType()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType, type metadata accessor for MOSuggestionAssetsType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType, type metadata accessor for MOSuggestionAssetsType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionEngagementEvent()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionEngagementEvent and conformance MOSuggestionEngagementEvent, type metadata accessor for MOSuggestionEngagementEvent);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionEngagementEvent and conformance MOSuggestionEngagementEvent, type metadata accessor for MOSuggestionEngagementEvent);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t _sSo22UIViewAnimationOptionsVs25ExpressibleByArrayLiteralSCsACP05arrayG0x0fG7ElementQzd_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100014394(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOEventBundleSourceType()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOEventBundleSourceType and conformance MOEventBundleSourceType, type metadata accessor for MOEventBundleSourceType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOEventBundleSourceType and conformance MOEventBundleSourceType, type metadata accessor for MOEventBundleSourceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance GEOPOICategory()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type GEOPOICategory and conformance GEOPOICategory, type metadata accessor for GEOPOICategory);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type GEOPOICategory and conformance GEOPOICategory, type metadata accessor for GEOPOICategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetMetadataKey()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOTaskAction()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOTaskAction and conformance MOTaskAction, type metadata accessor for MOTaskAction);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOTaskAction and conformance MOTaskAction, type metadata accessor for MOTaskAction);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOTaskWork()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOTaskWork and conformance MOTaskWork, type metadata accessor for MOTaskWork);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOTaskWork and conformance MOTaskWork, type metadata accessor for MOTaskWork);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOWorkoutMotionActivityAction()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOWorkoutMotionActivityAction and conformance MOWorkoutMotionActivityAction, type metadata accessor for MOWorkoutMotionActivityAction);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOWorkoutMotionActivityAction and conformance MOWorkoutMotionActivityAction, type metadata accessor for MOWorkoutMotionActivityAction);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UISheetPresentationControllerDetentIdentifier()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UISheetPresentationControllerDetentIdentifier and conformance UISheetPresentationControllerDetentIdentifier, type metadata accessor for UISheetPresentationControllerDetentIdentifier);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UISheetPresentationControllerDetentIdentifier and conformance UISheetPresentationControllerDetentIdentifier, type metadata accessor for UISheetPresentationControllerDetentIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double protocol witness for RawRepresentable.rawValue.getter in conformance UIFontWeight@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontWeight()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontWeight and conformance UIFontWeight, type metadata accessor for UIFontWeight);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorAttributeName()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorTraitKey()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorTraitKey and conformance UIFontDescriptorTraitKey, type metadata accessor for UIFontDescriptorTraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CIContextOption()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption, type metadata accessor for CIContextOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOMediaPlayMetaDataKeyPlayerMediaType()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOMediaPlayMetaDataKeyPlayerMediaType and conformance MOMediaPlayMetaDataKeyPlayerMediaType, type metadata accessor for MOMediaPlayMetaDataKeyPlayerMediaType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOMediaPlayMetaDataKeyPlayerMediaType and conformance MOMediaPlayMetaDataKeyPlayerMediaType, type metadata accessor for MOMediaPlayMetaDataKeyPlayerMediaType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetMotionActivityType()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetMotionActivityType and conformance MOSuggestionAssetMotionActivityType, type metadata accessor for MOSuggestionAssetMotionActivityType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOSuggestionAssetMotionActivityType and conformance MOSuggestionAssetMotionActivityType, type metadata accessor for MOSuggestionAssetMotionActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIBackgroundTaskIdentifier()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIBackgroundTaskIdentifier and conformance UIBackgroundTaskIdentifier, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOUsageContextType()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOUsageContextType and conformance MOUsageContextType, type metadata accessor for MOUsageContextType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetsType@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIFontDescriptorFeatureKey()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UIFontDescriptorFeatureKey and conformance UIFontDescriptorFeatureKey, type metadata accessor for UIFontDescriptorFeatureKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOPhotoResourceType()
{
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOPhotoResourceType and conformance MOPhotoResourceType, type metadata accessor for MOPhotoResourceType);
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type MOPhotoResourceType and conformance MOPhotoResourceType, type metadata accessor for MOPhotoResourceType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void protocol witness for Hashable.hash(into:) in conformance UIFontWeight()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOSuggestionAssetsType()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100014394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t type metadata accessor for UIApplication(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _sSo23GEOLocationCoordinate2Dawet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo23GEOLocationCoordinate2Dawst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

void type metadata accessor for HKWorkoutActivityType(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t MOSuggestionMapSnapshotViewStyle.description.getter(unsigned __int8 a1)
{
  v1 = 0x646C6569466F7774;
  v2 = 0xD000000000000019;
  if (a1 != 4)
  {
    v2 = 0x614C6E6564646968;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  v3 = 0xD000000000000012;
  if (a1 != 1)
  {
    v3 = 0xD000000000000013;
  }

  if (a1)
  {
    v1 = v3;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int UIView.AutolayoutEquivalency.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionMapSnapshotViewStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionMapSnapshotViewStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t MOSuggestionMapSnapshotView.prominentField.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t MOSuggestionMapSnapshotView.prominentField.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t MOSuggestionMapSnapshotView.style.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_style;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionMapSnapshotView.style.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_style;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionMapSnapshotView.assignedTileSize.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOSuggestionMapSnapshotView.assignedTileSize.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id MOSuggestionMapSnapshotView.platterBlurView.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionMapSnapshotView.platterBlurView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *MOSuggestionMapSnapshotView.init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v54 = a7;
  v53 = a6;
  v52 = a5;
  v51 = a4;
  v50 = a3;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v59 - 8);
  __chkstk_darwin();
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v55 = *(v56 - 8);
  __chkstk_darwin();
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_prominentField];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_secondaryField];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize;
  v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize] = 11;
  v16 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  v17 = [objc_opt_self() effectWithStyle:11];
  v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];

  *&v7[v16] = v18;
  v19 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView;
  *&v7[v19] = [objc_allocWithZone(UILabel) init];
  v20 = a1;
  v21 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  *&v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_imageView] = v21;
  [v21 setContentMode:2];
  swift_beginAccess();
  v22 = v50;
  *v13 = a2;
  v13[1] = v22;

  swift_beginAccess();
  v23 = v52;
  *v14 = v51;
  v14[1] = v23;

  v7[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_style] = v53;
  swift_beginAccess();
  v7[v15] = v54;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v27 = type metadata accessor for MOSuggestionMapSnapshotView();
  v61.receiver = v7;
  v61.super_class = v27;
  v28 = objc_msgSendSuper2(&v61, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v29 = &v28[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_prominentField];
  swift_beginAccess();
  if (!*(v29 + 1))
  {
    v30 = &v28[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_secondaryField];
    swift_beginAccess();
    v31 = *(v30 + 1);
    if (v31)
    {
      *v29 = *v30;
      *(v29 + 1) = v31;
    }
  }

  v32 = v28;
  [v32 setIsAccessibilityElement:1];
  v33 = UIAccessibilityTraitImage;
  v34 = [v32 accessibilityTraits];
  if ((v33 & ~v34) != 0)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  [v32 setAccessibilityTraits:v35 | v34];
  v36 = objc_opt_self();
  v37 = v32;
  v38 = [v36 mainBundle];
  v62._object = 0x80000001002AF5B0;
  v39._countAndFlagsBits = 0x70616E732070614DLL;
  v39._object = 0xEC000000746F6873;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0xD00000000000002BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v38, v40, v62);

  v41 = String._bridgeToObjectiveC()();

  [v37 setAccessibilityLabel:v41];

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v42 = static OS_dispatch_queue.main.getter();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = partial apply for closure #1 in MOSuggestionMapSnapshotView.init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:);
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v44 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v45 = v57;
  v46 = v59;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);

  (*(v58 + 8))(v45, v46);
  (*(v55 + 8))(v12, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1002A48B0;
  *(v47 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v47 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v37;
}

void closure #1 in MOSuggestionMapSnapshotView.init(baseMapImage:prominentField:secondaryField:style:assignedTileSize:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong addSubview:*(Strong + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_imageView)];
    v3 = (*((swift_isaMask & *v1) + 0xE8))(v2);
    [v1 addSubview:v3];

    v4 = [v1 addSubview:*(v1 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView)];
    (*((swift_isaMask & *v1) + 0x108))(v4);
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

Swift::Void __swiftcall MOSuggestionMapSnapshotView.handleTraitChange()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if ((*((swift_isaMask & *v0) + 0xB8))() != 2)
  {
    if (v2 == 1)
    {
      v3 = 11;
    }

    else
    {
      v3 = 16;
    }

    v4 = (*((swift_isaMask & *v0) + 0xE8))();
    v5 = [objc_opt_self() effectWithStyle:v3];
    [v4 setEffect:v5];
  }
}

uint64_t MOSuggestionMapSnapshotView.applyStyle()()
{
  result = (*((swift_isaMask & *v0) + 0xB8))();
  if (result > 1u)
  {
    if (result == 2)
    {
      result = (*((swift_isaMask & *v0) + 0x88))();
      if (!v17)
      {
        return result;
      }

      MOSuggestionMapSnapshotView.addGradient()();
      MOSuggestionMapSnapshotView.addFullWidthGradientLabel(text:)();
      goto LABEL_19;
    }

    if (result != 4)
    {
      return result;
    }

    result = (*((swift_isaMask & *v0) + 0x88))();
    if (!v3)
    {
      return result;
    }

    v4 = result;
    v5 = v3;
    v6 = (*((swift_isaMask & *v0) + 0xA0))();
    MOSuggestionMapSnapshotView.addCarouselCenteredLabels(prominentField:secondaryField:)(v4, v5, v6, v7);
    goto LABEL_13;
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    result = (*((swift_isaMask & *v0) + 0x88))();
    if (!v2)
    {
      return result;
    }

    goto LABEL_18;
  }

  v8 = *((swift_isaMask & *v0) + 0x88);
  v9 = v8();
  if (!v10)
  {
LABEL_17:
    result = (v8)(v9);
    if (!v18)
    {
      return result;
    }

LABEL_18:
    MOSuggestionMapSnapshotView.addPlatter()();
    MOSuggestionMapSnapshotView.addFullWidthProminentLabel(text:)();
    goto LABEL_19;
  }

  v11 = v10;
  v12 = v9;
  v13 = (*((swift_isaMask & *v0) + 0xA0))();
  if (!v14)
  {

    goto LABEL_17;
  }

  v15 = v13;
  v16 = v14;
  MOSuggestionMapSnapshotView.addPlatter()();
  MOSuggestionMapSnapshotView.addProminentAndSecondaryLabel(prominentField:secondaryField:)(v12, v11, v15, v16);
LABEL_13:

LABEL_19:
}

void MOSuggestionMapSnapshotView.platterFrame.getter()
{
  [v0 bounds];
  CGRectGetHeight(v2);
  [v0 bounds];
  CGRectGetHeight(v3);
  [v0 bounds];
  CGRectGetHeight(v4);
  [v0 bounds];
  CGRectGetHeight(v5);
  [v0 bounds];
  CGRectGetWidth(v6);
  [v0 bounds];
  CGRectGetHeight(v7);
  [v0 bounds];
  CGRectGetHeight(v8);

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

void MOSuggestionMapSnapshotView.platterLabelFrame.getter()
{
  [v0 bounds];
  CGRectGetHeight(v2);
  [v0 bounds];
  CGRectGetHeight(v3);
  [v0 bounds];
  CGRectGetHeight(v4);
  [v0 bounds];
  CGRectGetHeight(v5);
  [v0 bounds];
  CGRectGetWidth(v6);
  [v0 bounds];
  CGRectGetHeight(v7);
  [v0 bounds];
  CGRectGetHeight(v8);

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

void MOSuggestionMapSnapshotView.gradientFrameLabel.getter()
{
  (*((swift_isaMask & *v0) + 0xD0))();
  [v0 bounds];
  CGRectGetHeight(v2);
  [v0 bounds];
  CGRectGetHeight(v3);
  [v0 bounds];
  CGRectGetWidth(v4);
  [v0 bounds];
  CGRectGetHeight(v5);

  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
}

void MOSuggestionMapSnapshotView.addGradient()()
{
  v42 = *((swift_isaMask & *v0) + 0xE8);
  v1 = v42();
  [v0 bounds];
  CGRectGetHeight(v45);
  [v0 bounds];
  CGRectGetHeight(v46);
  [v0 bounds];
  CGRectGetWidth(v47);
  [v0 bounds];
  CGRectGetHeight(v48);
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v1 setFrame:?];

  v2 = [objc_allocWithZone(CAGradientLayer) init];
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v2 setStartPoint:{0.5, v3}];
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  [v2 setEndPoint:{0.5, v4}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002A48C0;
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  v8 = [v7 CGColor];

  type metadata accessor for CGColorRef(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [v6 whiteColor];
  v12 = [v11 colorWithAlphaComponent:0.85];

  v13 = [v12 CGColor];
  *(v5 + 88) = v10;
  *(v5 + 64) = v13;
  v14 = [v6 whiteColor];
  v15 = [v14 colorWithAlphaComponent:1.0];

  v16 = [v15 CGColor];
  *(v5 + 120) = v10;
  *(v5 + 96) = v16;
  v17 = [v6 whiteColor];
  v18 = [v17 colorWithAlphaComponent:1.0];

  v19 = [v18 CGColor];
  *(v5 + 152) = v10;
  *(v5 + 128) = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002A48D0;
  *(v21 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
  *(v21 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:0.5];
  *(v21 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:0.65];
  *(v21 + 56) = [objc_allocWithZone(NSNumber) initWithDouble:1.0];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations:v22];

  v23 = v2;
  v24 = v42();
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = (v42)([v23 setFrame:{v26, v28, v30, v32}]);
  v34 = [v33 layer];

  [v34 setMask:v23];
  v35 = v42();
  v36 = [v35 layer];

  [v36 setMasksToBounds:1];
  v37 = v42();
  v38 = objc_opt_self();
  v39 = [objc_opt_self() mainScreen];
  [v39 scale];
  v41 = v40;

  v43 = [v38 _effectWithBlurRadius:8.0 scale:v41];
  [v37 setEffect:v43];
}

id MOSuggestionMapSnapshotView.addFullWidthGradientLabel(text:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView);
  MOSuggestionMapSnapshotView.gradientFrameLabel.getter();
  [v1 setFrame:?];
  [v1 setTextAlignment:1];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor:v3];

  v4 = (*((swift_isaMask & *v0) + 0xD0))();
  v5 = objc_opt_self();
  if (v4 == 4)
  {
    v6 = [v5 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  }

  else
  {
    v6 = [v5 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1];
  }

  v7 = [v6 fontDescriptorWithSymbolicTraits:32770];

  if (v7)
  {
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  }

  else
  {
    v8 = 0;
  }

  [v1 setFont:v8];

  return [v1 setNumberOfLines:2];
}

void MOSuggestionMapSnapshotView.addFullWidthProminentLabel(text:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView);
  MOSuggestionMapSnapshotView.platterLabelFrame.getter();
  [v1 setFrame:?];
  [v1 setTextAlignment:1];
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor:v3];

  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits:2];

  if (v7)
  {
    v8 = [v4 fontWithDescriptor:v7 size:0.0];

    [v1 setFont:v8];
  }

  else
  {
    __break(1u);
  }
}

void MOSuggestionMapSnapshotView.addProminentAndSecondaryLabel(prominentField:secondaryField:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView);
  MOSuggestionMapSnapshotView.platterLabelFrame.getter();
  [v7 setFrame:?];
  [v7 setTextAlignment:1];

  v8._countAndFlagsBits = 0x20A280E220;
  v8._object = 0xA500000000000000;
  String.append(_:)(v8);

  v9._countAndFlagsBits = a3;
  v9._object = a4;
  String.append(_:)(v9);

  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = String._bridgeToObjectiveC()();

  v28 = [v10 initWithString:v11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = NSFontAttributeName;
  v13 = objc_opt_self();
  v27 = NSFontAttributeName;
  v14 = [v13 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v15 = [v14 fontDescriptor];
  v16 = [v15 fontDescriptorWithSymbolicTraits:2];

  if (v16)
  {
    v17 = [v13 fontWithDescriptor:v16 size:0.0];

    v18 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 64) = v18;
    *(inited + 40) = v17;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v28 addAttributes:isa range:{0, String.count.getter()}];

    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1002A48B0;
    *(v20 + 32) = v27;
    v21 = [v13 preferredFontForTextStyle:UIFontTextStyleFootnote];
    *(v20 + 64) = v18;
    *(v20 + 40) = v21;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v20);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(v20 + 32);
    v22.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v23 = String.count.getter();
    v24 = String.count.getter();
    v25 = String.count.getter();
    if (!__OFADD__(v24, v25))
    {
      [v28 addAttributes:v22.super.isa range:{v23, v24 + v25}];

      [v7 setAttributedText:v28];
      v26 = [objc_opt_self() secondaryLabelColor];
      [v7 setTextColor:v26];

      [v7 setAdjustsFontSizeToFitWidth:1];
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void MOSuggestionMapSnapshotView.addCarouselCenteredLabels(prominentField:secondaryField:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView);
  [v9 setTextAlignment:1];
  v69 = a4;
  if (!a4 || a3 == a1 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {

    v10._countAndFlagsBits = a3;
    v10._object = a4;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 10;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
  }

  v12 = objc_allocWithZone(NSMutableAttributedString);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithString:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = NSFontAttributeName;
  v16 = objc_opt_self();
  v67 = NSFontAttributeName;
  v68 = v16;
  v17 = [v16 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  v19 = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 64) = v19;
  *(inited + 40) = isa;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v20 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 addAttributes:v20 range:{0, String.count.getter()}];

  if (!v69 || a3 == a1 && a2 == v69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_16;
  }

  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1002A48B0;
  *(v21 + 32) = v67;
  v22 = v67;
  v23 = [v68 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  *(v21 + 64) = v19;
  *(v21 + 40) = v23;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v21);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(v21 + 32);
  v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = String.count.getter();
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v27 = String.count.getter();
  v28 = String.count.getter();
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v29, 1))
  {
LABEL_25:
    __break(1u);
    return;
  }

  [v14 addAttributes:v24.super.isa range:{v26, v29 - 1}];

LABEL_16:
  [v9 setAttributedText:v14];
  v30 = [objc_opt_self() secondaryLabelColor];
  [v9 setTextColor:v30];

  [v9 setNumberOfLines:2];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v70 frame];
  [v9 setPreferredMaxLayoutWidth:CGRectGetWidth(v71) + -64.0];
  v31 = [v9 heightAnchor];
  [v70 bounds];
  v32 = [v31 constraintLessThanOrEqualToConstant:CGRectGetHeight(v72) / 5.0];

  [v32 setActive:1];
  v33 = [v9 superview];
  if (v33)
  {
    v34 = v33;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [v9 bottomAnchor];
    v36 = [v34 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    if (v37)
    {
      [v37 setConstant:-16.0];
      [v37 setActive:1];
    }
  }

  v38 = [v9 superview];
  if (v38)
  {
    v39 = v38;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v9 centerXAnchor];
    v41 = [v39 centerXAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    [v42 setConstant:0.0];
    [v42 setActive:1];
  }

  v43 = *((swift_isaMask & *v70) + 0xE8);
  v44 = v43();
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

  v45 = v43();
  [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = [v45 leadingAnchor];
  v47 = [v9 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-16.0];

  [v48 setActive:1];
  v49 = v43();
  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = [v49 trailingAnchor];
  v51 = [v9 trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:16.0];

  [v52 setActive:1];
  v53 = v43();
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = [v53 topAnchor];
  v55 = [v9 topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:-8.0];

  [v56 setActive:1];
  v57 = v43();
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v58 = [v57 bottomAnchor];
  v59 = [v9 bottomAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:8.0];

  [v60 setActive:1];
  v61 = v43();
  v62 = [v61 layer];

  [v62 setCornerRadius:8.0];
  v63 = v43();
  v64 = [v63 layer];

  LODWORD(v65) = 1065017672;
  [v64 setOpacity:v65];

  v66 = v43();
  [v66 setClipsToBounds:1];
}

void MOSuggestionMapSnapshotView.addPlatter()()
{
  v1 = *((swift_isaMask & *v0) + 0xE8);
  v2 = v1();
  MOSuggestionMapSnapshotView.platterFrame.getter();
  [v2 setFrame:?];

  v3 = v1();
  v4 = [v3 layer];

  [v0 bounds];
  [v4 setCornerRadius:CGRectGetHeight(v10) / 5.0 / 6.0];

  v5 = v1();
  v6 = [v5 layer];

  LODWORD(v7) = 1065017672;
  [v6 setOpacity:v7];

  v8 = v1();
  [v8 setClipsToBounds:1];
}

Swift::Void __swiftcall MOSuggestionMapSnapshotView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MOSuggestionMapSnapshotView();
  v16.receiver = v0;
  v16.super_class = v10;
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_imageView];
  [v1 bounds];
  [v11 setFrame:?];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in MOSuggestionMapSnapshotView.layoutSubviews();
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

void closure #1 in MOSuggestionMapSnapshotView.layoutSubviews()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MOSuggestionMapSnapshotView.applyStyle()();
  }
}

id MOSuggestionMapSnapshotView.__deallocating_deinit()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_imageView] setImage:0];
  v2 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  swift_beginAccess();
  [*&v1[v2] setEffect:0];
  if (one-time initialization token for memory != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static MOAngelLogger.memory);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[MOSuggestionMapSnapshotView] de-init", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for MOSuggestionMapSnapshotView();
  return objc_msgSendSuper2(&v8, "dealloc");
}

id MOSuggestionInterstitialSupplementaryCheckmarkView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id MOSuggestionInterstitialSupplementaryCheckmarkView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t sub_1000196F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

void specialized MOSuggestionMapSnapshotView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_prominentField);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_secondaryField);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_assignedTileSize) = 11;
  v3 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_platterBlurView;
  v4 = [objc_opt_self() effectWithStyle:11];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  *(v0 + v3) = v5;
  v6 = OBJC_IVAR____TtC16MomentsUIService27MOSuggestionMapSnapshotView_labelView;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type MOSuggestionMapSnapshotViewStyle and conformance MOSuggestionMapSnapshotViewStyle()
{
  result = lazy protocol witness table cache variable for type MOSuggestionMapSnapshotViewStyle and conformance MOSuggestionMapSnapshotViewStyle;
  if (!lazy protocol witness table cache variable for type MOSuggestionMapSnapshotViewStyle and conformance MOSuggestionMapSnapshotViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionMapSnapshotViewStyle and conformance MOSuggestionMapSnapshotViewStyle);
  }

  return result;
}

uint64_t sub_100019920@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10001997C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x90);

  return v4(v2, v3);
}

uint64_t sub_1000199F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100019A50(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0xA8);

  return v4(v2, v3);
}

uint64_t sub_100019AC8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_100019B7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_100019C30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionMapSnapshotViewStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MOSuggestionMapSnapshotViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized Sequence.forEach(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      v4 = v3;
      specialized Set._Variant.insert(_:)(&v6, v4);
      v5 = v6;

      --v1;
    }

    while (v1);
  }
}

void *specialized static MOBundleProcessingSession.settingToSourceTypeMapping.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo9MOSettingV_SaySo23MOEventBundleSourceTypeaGtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A49F0;
  *(inited + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23MOEventBundleSourceTypeaGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002A48B0;
  v28 = MOEventBundleSourceTypeActivity;
  *(v1 + 32) = MOEventBundleSourceTypeActivity;
  *(inited + 40) = v1;
  *(inited + 48) = 2;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002A4A00;
  v3 = MOEventBundleSourceTypeMedia;
  v4 = MOEventBundleSourceTypeThirdPartyMedia;
  *(v2 + 32) = MOEventBundleSourceTypeMedia;
  *(v2 + 40) = v4;
  *(inited + 56) = v2;
  *(inited + 64) = 3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002A48B0;
  v6 = MOEventBundleSourceTypeContact;
  *(v5 + 32) = MOEventBundleSourceTypeContact;
  *(inited + 72) = v5;
  *(inited + 80) = 4;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002A48B0;
  v8 = MOEventBundleSourceTypePhoto;
  *(v7 + 32) = MOEventBundleSourceTypePhoto;
  *(inited + 88) = v7;
  *(inited + 96) = 5;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002A48B0;
  v10 = MOEventBundleSourceTypeVisitLocation;
  *(v9 + 32) = MOEventBundleSourceTypeVisitLocation;
  *(inited + 104) = v9;
  *(inited + 112) = 6;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002A48B0;
  v12 = MOEventBundleSourceTypePeopleContext;
  *(v11 + 32) = MOEventBundleSourceTypePeopleContext;
  *(inited + 120) = v11;
  *(inited + 128) = 9;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002A48B0;
  v14 = MOEventBundleSourceTypeStateOfMind;
  *(v13 + 32) = MOEventBundleSourceTypeStateOfMind;
  *(inited + 136) = v13;
  *(inited + 144) = 10;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002A48B0;
  v16 = MOEventBundleSourceTypeReflectionPrompt;
  *(v15 + 32) = MOEventBundleSourceTypeReflectionPrompt;
  *(inited + 152) = v15;
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo9MOSettingV_SaySo23MOEventBundleSourceTypeaGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  v18 = v28;
  v19 = v3;
  v20 = v4;
  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9MOSettingV_SaySo23MOEventBundleSourceTypeaGtMd);
  swift_arrayDestroy();
  return v17;
}

_BYTE *specialized MOBundleProcessingSession.allowedSourceTypes.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  result = specialized static MOBundleProcessingSession.settingToSourceTypeMapping.getter();
  v2 = result;
  v3 = 0;
  v4 = 1 << result[32];
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = result + 64;
  v7 = v5 & *(result + 8);
  v8 = (v4 + 63) >> 6;
  while (v7)
  {
LABEL_10:
    v10 = (v3 << 9) | (8 * __clz(__rbit64(v7)));
    v11 = *(*(v2 + 6) + v10);
    v12 = *(*(v2 + 7) + v10);

    if ([v0 getStateForSetting:v11])
    {
      specialized Sequence.forEach(_:)(v12);
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return &_swiftEmptySetSingleton;
    }

    v7 = *&v6[8 * v9];
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.skipRows.getter()
{
  return MOSuggestionAssetMapsClusterer.skipRows.getter();
}

{
  swift_beginAccess();
}

uint64_t MOSuggestionAssetMapsClusterer.skipRows.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.artistName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.artistName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster()
{
  result = type metadata singleton initialization cache for MOSuggestionAssetMapsClusterer.Cluster;
  if (!type metadata singleton initialization cache for MOSuggestionAssetMapsClusterer.Cluster)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 32);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.geoMapItem.getter()
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();

  return swift_unknownObjectRetain();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.geoMapItem.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 36);
  result = swift_unknownObjectRelease();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.confidence.setter(double a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 44));

  return v1;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.isWork.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.isScaledDownPOI.setter(char a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.horizontalUncertainty.setter(double a1)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t static MOSuggestionAssetMapsClusterer.Cluster.== infix(_:_:)()
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();

  return static UUID.== infix(_:_:)();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.hash(into:)()
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int MOSuggestionAssetMapsClusterer.Cluster.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MOSuggestionAssetMapsClusterer.Cluster.init(coordinates:distance:count:chain:id:geoMapItem:confidence:title:isWork:isScaledDownPOI:horizontalUncertainty:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, char a15)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a1;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  v23 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v24 = v23[8];
  v25 = type metadata accessor for UUID();
  result = (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  *(a9 + v23[9]) = a5;
  *(a9 + v23[10]) = a13;
  v27 = (a9 + v23[11]);
  *v27 = a6;
  v27[1] = a7;
  *(a9 + v23[12]) = a8;
  *(a9 + v23[13]) = a15;
  *(a9 + v23[14]) = a14;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetMapsClusterer.Cluster()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOSuggestionAssetMapsClusterer.Cluster()
{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetMapsClusterer.Cluster()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

size_t MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)(unint64_t a1, double a2)
{
  v5 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  __chkstk_darwin();
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  v8 = &lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType;
  v9 = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_inputClusters] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v10 = type metadata accessor for MOSuggestionAssetMapsClusterer();
  v28.receiver = v2;
  v28.super_class = v10;
  v11 = objc_msgSendSuper2(&v28, "init");
  v27 = 0;
  v12 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (1)
    {
      v26 = v9;
      v14 = v11;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        break;
      }

      v21 = v11;
      v11 = 0;
      v16 = v26;
      v17 = v12;
      v23 = v12;
      v24 = v12 & 0xC000000000000001;
      v22 = v12 & 0xFFFFFFFFFFFFFF8;
      v12 = v13;
      while (1)
      {
        v9 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v24)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v22 + 16))
          {
            goto LABEL_15;
          }

          v18 = *(v17 + 8 * v11 + 32);
        }

        v25 = v18;
        closure #1 in MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)(&v25, &v27, v7);

        v26 = v16;
        v8 = v16[2];
        v19 = v16[3];
        if (v8 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v8 + 1, 1);
          v16 = v26;
        }

        v16[2] = v8 + 1;
        outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8);
        ++v11;
        v17 = v23;
        if (v9 == v13)
        {

          v8 = 0x100334000;
          v11 = v21;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v20 = v11;

    v16 = &_swiftEmptyArrayStorage;
LABEL_18:
    *(v11 + *(v8 + 808)) = v16;

    return v11;
  }

  return result;
}

uint64_t closure #1 in MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  v5 = *a1;
  v6 = (*(**a1 + 240))();
  v7 = (*(*v5 + 264))();
  v8 = *(*v5 + 312);
  v9 = v8();
  if (v10)
  {
    v25 = 1;
  }

  else
  {
    result = (v8)(v9);
    if (v12)
    {
      goto LABEL_8;
    }

    v25 = result;
  }

  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v27 = v13;
  v14._countAndFlagsBits = 95;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = a2;
  v16 = (*(*v5 + 288))();
  v17 = (*(*v5 + 360))();
  v18 = (*(*v5 + 336))();
  v20 = v19;
  v21 = (*(*v5 + 384))();
  v22 = (*(*v5 + 456))();
  v23 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  result = UUID.init()();
  *a3 = v6;
  a3[1] = v7;
  a3[2] = 0.0;
  *(a3 + 3) = v25;
  *(a3 + 4) = v26;
  *(a3 + 5) = v27;
  *(a3 + v23[9]) = v16;
  *(a3 + v23[10]) = v17;
  v24 = (a3 + v23[11]);
  *v24 = v18;
  v24[1] = v20;
  *(a3 + v23[12]) = v21 & 1;
  *(a3 + v23[13]) = 0;
  *(a3 + v23[14]) = v22;
  if (!__OFADD__(*v15, 1))
  {
    ++*v15;
    return result;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

Swift::Void __swiftcall MOSuggestionAssetMapsClusterer.buildDendogram()()
{
  v1 = v0;
  v93 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v2 = (__chkstk_darwin)();
  v92 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v91 = &v78 - v5;
  v6 = __chkstk_darwin(v4);
  v90 = &v78 - v7;
  v8 = __chkstk_darwin(v6);
  v87 = &v78 - v9;
  v10 = __chkstk_darwin(v8);
  v88 = &v78 - v11;
  v12 = __chkstk_darwin(v10);
  v89 = &v78 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v78 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v78 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v78 - v21;
  v23 = *(v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_inputClusters);
  v102 = v23;
  v24 = v23[2];
  if (!v24)
  {
    goto LABEL_65;
  }

  v25 = v24 - 1;
  if (v24 != 1)
  {
    v96 = v20;
    v86 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_separationThreshold;
    v82 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_results;

    v26 = 0;
    v85 = 0;
    v79 = v0;
    v84 = v16;
    v98 = v22;
    v83 = v25;
    while (1)
    {
      v27 = specialized MOSuggestionAssetMapsClusterer.distanceMatrix(clusters:)(&v102);
      distanceMatrix._rawValue = v27;
      v103 = MOSuggestionAssetMapsClusterer.findSmallestEuclideanDistance(distanceMatrix:lowerHalfOnly:)(&distanceMatrix, 1);
      if (v28)
      {
      }

      else
      {
        v97 = v27;
        if (v103.value._0._0 < 0)
        {
          goto LABEL_52;
        }

        v94 = v26;
        v29 = v23[2];
        if (v103.value._0._0 >= v29)
        {
          goto LABEL_53;
        }

        v30 = v103.value._0._1;
        v31 = *&v103.is_nil;
        v32 = v22;
        v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
        v33 = v23 + v95;
        v34 = *(v93 + 72);
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v23 + v95 + v34 * v103.value._0._0, v32);
        if (v30 >= v29)
        {
          goto LABEL_54;
        }

        v35 = outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(&v33[v34 * v30], v19);
        if (*(v1 + v86) * *(v1 + v86) <= v31)
        {

          v22 = v98;
          v40 = v92;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v98, v92);
          swift_beginAccess();
          v41 = v91;
          specialized Set._Variant.insert(_:)(v91, v40);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v41);
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v19, v40);
          specialized Set._Variant.insert(_:)(v41, v40);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v41);
          swift_endAccess();
        }

        else
        {
          v80 = v31;
          __chkstk_darwin(v35);
          *(&v78 - 2) = v98;
          *(&v78 - 1) = v19;
          v36 = v85;
          v37 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in MOSuggestionAssetMapsClusterer.buildDendogram(), (&v78 - 4), v23);
          v85 = v36;
          v81 = &v78;
          if (v38)
          {
            v39 = v23[2];
          }

          else
          {
            v39 = v37;
            v42 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_64;
            }

            v44 = v23 + 2;
            v43 = v23[2];
            if (v42 != v43)
            {
              v75 = v95 + v34 * v42;
              while (v42 < v43)
              {
                outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v23 + v75, v16);
                if (static UUID.== infix(_:_:)())
                {
                  outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v16);
                }

                else
                {
                  v76 = static UUID.== infix(_:_:)();
                  outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v16);
                  if ((v76 & 1) == 0)
                  {
                    if (v42 != v39)
                    {
                      if (v39 < 0)
                      {
                        goto LABEL_60;
                      }

                      v77 = *v44;
                      if (v39 >= v77)
                      {
                        goto LABEL_61;
                      }

                      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v23 + v95 + v39 * v34, v88);
                      if (v42 >= v77)
                      {
                        goto LABEL_62;
                      }

                      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v23 + v75, v87);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
                      }

                      outlined assign with take of MOSuggestionAssetMapsClusterer.Cluster(v87, v23 + v95 + v39 * v34);
                      if (v42 >= v23[2])
                      {
                        goto LABEL_63;
                      }

                      outlined assign with take of MOSuggestionAssetMapsClusterer.Cluster(v88, v23 + v75);
                    }

                    ++v39;
                  }
                }

                ++v42;
                v44 = v23 + 2;
                v43 = v23[2];
                v75 += v34;
                if (v42 == v43)
                {
                  goto LABEL_16;
                }
              }

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
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
              return;
            }
          }

LABEL_16:

          v45 = v23[2];
          v46 = v39 - v45;
          if (v39 > v45)
          {
            goto LABEL_55;
          }

          if (v39 < 0)
          {
            goto LABEL_56;
          }

          v47 = v23[2];
          if (v47 < v45)
          {
            goto LABEL_57;
          }

          v48 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            goto LABEL_58;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v102 = v23;
          if (isUniquelyReferenced_nonNull_native && v48 <= v23[3] >> 1)
          {
            v50 = v34;
          }

          else
          {
            v50 = v34;
            if (v47 <= v48)
            {
              v51 = v48;
            }

            else
            {
              v51 = v47;
            }

            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v51, 1, v23, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
            v102 = v23;
          }

          v52 = v96;
          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v39, v45, 0, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
          v53 = v52[9];
          v54 = v98;
          v55 = *&v98[v53];
          if (!v55)
          {
            v55 = *&v19[v53];
            swift_unknownObjectRetain();
          }

          v56 = *(v54 + 24);
          v57 = *(v19 + 3);
          v58 = v56 + v57;
          if (__OFADD__(v56, v57))
          {
            goto LABEL_59;
          }

          v59 = (*(v54 + 8) + *(v19 + 1)) * 0.5;
          v60 = (*v54 + *v19) * 0.5;
          v61 = *(v54 + 40);
          v63 = *(v19 + 4);
          v62 = *(v19 + 5);
          v99 = *(v54 + 32);
          v100 = v61;
          swift_unknownObjectRetain();

          v64._countAndFlagsBits = v63;
          v65 = v96;
          v64._object = v62;
          String.append(_:)(v64);
          v66 = v99;
          v67 = v100;
          v68 = v89;
          UUID.init()();
          *v68 = v60;
          *(v68 + 8) = v59;
          *(v68 + 16) = v80;
          *(v68 + 24) = v58;
          *(v68 + 32) = v66;
          *(v68 + 40) = v67;
          *(v68 + v65[9]) = v55;
          *(v68 + v65[10]) = 0;
          v69 = (v68 + v65[11]);
          *v69 = 0;
          v69[1] = 0xE000000000000000;
          *(v68 + v65[12]) = 0;
          *(v68 + v65[13]) = 0;
          *(v68 + v65[14]) = 0;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v68, v90);
          v71 = v23[2];
          v70 = v23[3];
          if (v71 >= v70 >> 1)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1, v23, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
          }

          v1 = v79;
          v23[2] = v71 + 1;
          outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v90, v23 + v95 + v71 * v50);
          v102 = v23;
          v72 = v89;
          v73 = v92;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v89, v92);
          swift_beginAccess();
          v74 = v91;
          specialized Set._Variant.insert(_:)(v91, v73);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v74);
          swift_endAccess();
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v72);
          v22 = v98;
        }

        v25 = v83;
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v19);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v22);
        v16 = v84;
        v26 = v94;
      }

      if (++v26 == v25)
      {

        return;
      }
    }
  }
}

Swift::tuple_tuple_Int_Int_Double_optional __swiftcall MOSuggestionAssetMapsClusterer.findSmallestEuclideanDistance(distanceMatrix:lowerHalfOnly:)(Swift::OpaquePointer *distanceMatrix, Swift::Bool lowerHalfOnly)
{
  rawValue = distanceMatrix->_rawValue;
  v4 = distanceMatrix->_rawValue + 32;
  v5 = *(distanceMatrix->_rawValue + 2);

  v10 = 0;
  v11 = 1.79769313e308;
  v12 = -1;
  v13 = -1;
  while (1)
  {
LABEL_2:
    if (v5 == v10)
    {

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v6 = 0;
      }

      else
      {
        v6 = v13;
      }

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
      }

      else
      {
        v7 = v12;
      }

      if ((v13 & v12) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
      }

      else
      {
        v8 = LOBYTE(v11);
      }

      goto LABEL_43;
    }

    if (v10 >= rawValue[2])
    {
      break;
    }

    v14 = *&v4[8 * v10++];
    v15 = *(v14 + 16);
    if (v15)
    {
      v38 = v13;
      v39 = v12;
      v36 = v5;
      v40 = *((swift_isaMask & *v2) + 0x78);

      v16 = 0;
      v17 = v10 - 1;
      while (1)
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_42;
        }

        v21 = *(v14 + 32 + 8 * v16);
        v22 = v40(v6);
        if (*(v22 + 16) && (v23 = v22, v24 = static Hasher._hash(seed:_:)(), v25 = -1 << *(v23 + 32), v26 = v24 & ~v25, ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
        {
          v27 = ~v25;
          while (*(*(v23 + 48) + 8 * v26) + 1 != v10)
          {
            v26 = (v26 + 1) & v27;
            if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
LABEL_19:

          v29 = (*((swift_isaMask & *v2) + 0x90))(v28);
          if (!*(v29 + 16) || (v30 = v29, v31 = static Hasher._hash(seed:_:)(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0))
          {
LABEL_24:

            if (!lowerHalfOnly || v16 < v17 && (v35 = rawValue[2], v16 < v35) && v35 >= 2 && v17 < v35)
            {
              v18 = v21 < v11;
              if (v21 >= v11)
              {
                v19 = v39;
              }

              else
              {
                v11 = v21;
                v19 = v16;
              }

              v20 = v38;
              if (v18)
              {
                v20 = v10 - 1;
              }

              v38 = v20;
              v39 = v19;
            }

            goto LABEL_12;
          }

          v34 = ~v32;
          while (*(*(v30 + 48) + 8 * v33) != v16)
          {
            v33 = (v33 + 1) & v34;
            if (((*(v30 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

LABEL_12:
        if (++v16 == v15)
        {

          v5 = v36;
          v13 = v38;
          v12 = v39;
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result.value._1 = v9;
  result.value._0._1 = v7;
  result.value._0._0 = v6;
  result.is_nil = v8;
  return result;
}

uint64_t closure #1 in MOSuggestionAssetMapsClusterer.buildDendogram()()
{
  type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  if (static UUID.== infix(_:_:)())
  {
    return 1;
  }

  else
  {
    return static UUID.== infix(_:_:)() & 1;
  }
}

uint64_t MOSuggestionAssetMapsClusterer.combinedCluster(_:_:distance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  result = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v9 = result;
  v10 = *(result + 36);
  v11 = *(a1 + v10);
  if (!v11)
  {
    v11 = *(a2 + v10);
    result = swift_unknownObjectRetain();
  }

  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
  }

  else
  {
    v15 = (*(a1 + 8) + *(a2 + 8)) * 0.5;
    v16 = (*a1 + *a2) * 0.5;
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    swift_unknownObjectRetain();

    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    result = UUID.init()();
    *a3 = v16;
    *(a3 + 8) = v15;
    *(a3 + 16) = a4;
    *(a3 + 24) = v14;
    *(a3 + 32) = v21;
    *(a3 + 40) = v22;
    *(a3 + v9[9]) = v11;
    *(a3 + v9[10]) = 0;
    v20 = (a3 + v9[11]);
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    *(a3 + v9[12]) = 0;
    *(a3 + v9[13]) = 0;
    *(a3 + v9[14]) = 0;
  }

  return result;
}

void static MOSuggestionAssetMapsClusterer.makeRegion(containing:applyBottomPaddingForPlatter:applyBottomPaddingForGradient:horizontalAspectRatio:markerStyle:applyRenderMargin:shouldAdjustMarker:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_25:
    if (one-time initialization token for assets == -1)
    {
LABEL_26:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static MOAngelLogger.assets);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "[MapSnapshot] makeRegion failed with 0 locations", v29, 2u);
      }

      v31.origin.x = MKMapRectNull.origin.x;
      v31.origin.y = MKMapRectNull.origin.y;
      v31.size.width = MKMapRectNull.size.width;
      v31.size.height = MKMapRectNull.size.height;
      MKCoordinateRegionForMapRect(v31);
      return;
    }

LABEL_31:
    swift_once();
    goto LABEL_26;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_25;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v3 = v4;
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_31;
  }

  v3 = *(a1 + 32);

LABEL_6:
  (*(*v3 + 240))(v4);
  (*(*v3 + 264))();
  v5 = (*(*v3 + 456))();
  v6 = (*(*v3 + 312))();
  v8 = v7;
  if (v2)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9 < 2)
    {
LABEL_8:
      if (((v8 & 1) != 0 || v6 < 2) && v5 > 0.0 && one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
      {
        swift_once();
      }

      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 < 2)
    {
      goto LABEL_8;
    }
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = (*(*v11 + 240))();
    v13 = (*(*v11 + 264))();

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    }

    ++v10;
    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15 + 4];
    *v16 = v12;
    v16[1] = v13;
  }

  while (v9 != v10);
  v17 = [objc_opt_self() polygonWithCoordinates:&_swiftEmptyArrayStorage[4] count:v9];

  [v17 boundingMapRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v30.origin.x = v19;
  v30.origin.y = v21;
  v30.size.width = v23;
  v30.size.height = v25;
  MKCoordinateRegionForMapRect(v30);
}

void *MOSuggestionAssetMapsClusterer.groupedByAverageHeight()()
{
  v135 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v0 = *(v135 - 8);
  v1 = __chkstk_darwin(v135);
  v140 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v5 = &v120 - v4;
  v6 = __chkstk_darwin(v3);
  v127 = &v120 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v120 - v9;
  v11 = __chkstk_darwin(v8);
  v126 = (&v120 - v12);
  __chkstk_darwin(v11);
  v14 = (&v120 - v13);
  *&v146 = 0;
  *(&v146 + 1) = 0xE000000000000000;
  v15 = COERCE_DOUBLE(specialized static MOAngelDefaultsManager.doubleValueFor(_:)());
  if (v16)
  {
    v17 = 0.5;
  }

  else
  {
    v17 = v15;
  }

  if (one-time initialization token for assets != -1)
  {
LABEL_118:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static MOAngelLogger.assets);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v19, v20, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v21, 0xCu);
  }

  v22 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_results;
  v23 = v136;
  swift_beginAccess();
  v24 = *(v23 + v22);
  v25 = &lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType;
  if (!*(v24 + 16))
  {
    v141 = _swiftEmptyArrayStorage;
    v39 = 0xE000000000000000;
    goto LABEL_99;
  }

  v123 = v10;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 56);
  v10 = ((v26 + 63) >> 6);

  v29 = 0;
  v30 = 0.0;
  while (v28)
  {
LABEL_17:
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v24 + 48) + *(v0 + 9) * (__clz(__rbit64(v28)) | (v29 << 6)), v14);
    v32 = v14[2];
    v33 = *(v14 + *(v135 + 36));
    swift_unknownObjectRetain();
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
    v34 = -v17;
    if (v33)
    {
      swift_unknownObjectRelease();
      v34 = v17;
    }

    v28 &= v28 - 1;
    v30 = v30 + v32 * (1.0 - v34);
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    if (v31 >= v10)
    {
      break;
    }

    v28 = *(v24 + 56 + 8 * v31);
    ++v29;
    if (v28)
    {
      v29 = v31;
      goto LABEL_17;
    }
  }

  v35 = *(v136 + v22);
  v36 = v35[2];
  if (v36)
  {
    v37 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5Tm(v35[2], 0, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
    v141 = specialized Sequence._copySequenceContents(initializing:)(&v144, v37 + ((v0[80] + 32) & ~v0[80]), v36, v35);
    swift_bridgeObjectRetain_n();
    outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant();
    if (v141 != v36)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v38 = v136;
  }

  else
  {
    v38 = v136;

    v37 = _swiftEmptyArrayStorage;
  }

  *&v144 = v37;
  specialized MutableCollection<>.sort(by:)(&v144, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  v40 = v144;
  v10 = *(v144 + 16);
  if (!v10)
  {

    v141 = _swiftEmptyArrayStorage;
    v39 = 0xE000000000000000;
    v25 = &lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType;
    goto LABEL_101;
  }

  v41 = 0;
  v42 = v36;
  v130 = (v0[80] + 32) & ~v0[80];
  v43 = v144 + v130;
  v124 = "MomentsUIDendrogramPOIPenalty";
  v141 = _swiftEmptyArrayStorage;
  v44 = v30 / v42;
  v131 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_inputClusters;
  v122 = GEOPOICategoryReligiousSite;
  v14 = v126;
  v125 = v144;
  v128 = v10;
  v132 = v144 + v130;
  while (2)
  {
    if (v41 >= *(v40 + 16))
    {
      goto LABEL_114;
    }

    v45 = *(v0 + 9);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v43 + v45 * v41, v14);
    v46 = v14[2];
    if (v46 >= v44)
    {
      goto LABEL_27;
    }

    v139 = v41;
    v47 = v10;
    v10 = v5;
    v5 = v0;
    v137 = v45;
    v144 = v146;
    v48 = *(v14 + 4);
    v0 = *(v14 + 5);
    *&v142 = v48;
    *(&v142 + 1) = v0;
    lazy protocol witness table accessor for type String and conformance String();
    if (StringProtocol.contains<A>(_:)())
    {
      v43 = v132;
      v0 = v5;
      v5 = v10;
      v10 = v47;
      v41 = v139;
      goto LABEL_27;
    }

    v134 = v48;
    *&v144 = v48;
    *(&v144 + 1) = v0;
    v133 = v0;
    *&v142 = 95;
    *(&v142 + 1) = 0xE100000000000000;
    v49 = StringProtocol.components<A>(separatedBy:)();
    if (!*(v49 + 16))
    {
      goto LABEL_116;
    }

    v50 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
    }

    v51 = v137;
    v0 = v5;
    v52 = *(v50 + 2);
    if (!v52)
    {
      goto LABEL_117;
    }

    v5 = v10;
    *(v50 + 2) = v52 - 1;

    v10 = *(v50 + 2);
    if (!v10)
    {
      v10 = v128;
LABEL_96:

      v41 = v139;
      goto LABEL_97;
    }

    v14 = v0;
    v53 = 0;
    v129 = 0;
    v138 = 0;
    v0 = v50 + 40;
    v54 = 0.0;
    v55 = 0.0;
    do
    {
      v56 = *(v0 - 1);
      v57 = *v0;
      if (v56)
      {
        v58 = 0;
      }

      else
      {
        v58 = v57 == 0xE000000000000000;
      }

      if (v58)
      {
        goto LABEL_39;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_39;
      }

      v59 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v56, v57);
      if (v60)
      {
        goto LABEL_39;
      }

      if (v59 < 0)
      {
        goto LABEL_39;
      }

      v61 = *(v136 + v131);
      if (v59 >= *(v61 + 16))
      {
        goto LABEL_39;
      }

      v62 = (v61 + v130 + v59 * v51);
      v63 = *v62;
      v64 = v62[1];
      v65 = *(v62 + *(v135 + 36));
      if (!v65 || v129 >= 1)
      {
        goto LABEL_50;
      }

      v67 = one-time initialization token for defaults;
      swift_unknownObjectRetain();
      if (v67 != -1)
      {
        swift_once();
      }

      v68 = static MOAngelDefaultsManager.defaults;
      if (!static MOAngelDefaultsManager.defaults)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v144 = 0u;
        v145 = 0u;
        v51 = v137;
LABEL_75:
        outlined destroy of Any?(&v144);
        goto LABEL_51;
      }

      v69 = String._bridgeToObjectiveC()();
      v70 = [v68 objectForKey:v69];

      if (v70)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v143 = 0u;
        v142 = 0u;
      }

      v144 = v142;
      v145 = v143;
      v51 = v137;
      if (!*(&v143 + 1))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_75;
      }

      if (swift_dynamicCast() & 1) != 0 && (v142)
      {
        v71 = [v65 _poiCategory];
        if (!v71)
        {
          goto LABEL_77;
        }

        v72 = v71;
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;
        if (v73 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v75 == v76)
        {
          swift_unknownObjectRelease();

LABEL_88:
          swift_unknownObjectRelease();
          v51 = v137;
          goto LABEL_51;
        }

        v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v77 & 1) == 0)
        {
LABEL_77:
          v78 = objc_opt_self();
          v79 = [v65 _styleAttributes];
          v121 = objc_opt_self();
          v80 = [v121 mainScreen];
          [v80 scale];
          v17 = v81;

          v82 = [v78 newFillColorForStyleAttributes:v79 forScale:v17];
          v83 = v78;
          if (v82)
          {
            v84 = [v65 _styleAttributes];
            v85 = [v121 mainScreen];
            [v85 scale];
            v17 = v86;

            v87 = [v78 imageForStyle:v84 size:3 forScale:0 format:v17];
            if (v87)
            {

              v88 = v135;
              v129 = *(v135 + 32);
              v89 = v133;

              v90 = v123;
              UUID.init()();
              *v90 = v63;
              *(v90 + 8) = v64;
              *(v90 + 16) = v46;
              v91 = v134;
              *(v90 + 24) = 1;
              *(v90 + 32) = v91;
              *(v90 + 40) = v89;
              *(v90 + v88[9]) = v65;
              *(v90 + v88[10]) = 0;
              v92 = (v90 + v88[11]);
              *v92 = 0;
              v92[1] = 0xE000000000000000;
              *(v90 + v88[12]) = 0;
              *(v90 + v88[13]) = 1;
              *(v90 + v88[14]) = 0;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141[2] + 1, 1, v141, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
              }

              v17 = 7.0;
              v94 = v141[2];
              v93 = v141[3];
              if (v94 >= v93 >> 1)
              {
                v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v93 > 1, v94 + 1, 1, v141, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
              }

              v95 = v141;
              v141[2] = v94 + 1;
              v96 = v95 + v130 + v94 * v137;
              v51 = v137;
              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v123, v96);
              if (v55 != 0.0)
              {
                v55 = v55 + (v55 - v63) / 7.0;
              }

              if (v54 != 0.0)
              {
                v54 = v54 + (v54 - v64) / 7.0;
              }

              v129 = 1;
              goto LABEL_39;
            }
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_88;
      }

      swift_unknownObjectRelease();
LABEL_50:
      swift_unknownObjectRelease();
LABEL_51:
      if (__OFADD__(v53++, 1))
      {
        goto LABEL_115;
      }

      if (v54 == 0.0)
      {
        v54 = v64;
      }

      else
      {
        v54 = (v54 + v64) * 0.5;
      }

      if (v55 == 0.0)
      {
        v55 = v63;
      }

      else
      {
        v55 = (v55 + v63) * 0.5;
      }

      swift_unknownObjectRetain();
      v138 = v65;
LABEL_39:
      v0 += 16;
      --v10;
    }

    while (v10);
    v0 = v14;
    v10 = v128;
    if (v53 < 1)
    {
      v14 = v126;
      v40 = v125;
      goto LABEL_96;
    }

    v97 = *(v50 + 2);
    v98 = v138;
    swift_unknownObjectRetain();
    v99 = v133;

    v100 = v135;
    v101 = v127;
    UUID.init()();
    *v101 = v55;
    *(v101 + 8) = v54;
    *(v101 + 16) = v46;
    v102 = v134;
    *(v101 + 24) = v53;
    *(v101 + 32) = v102;
    *(v101 + 40) = v99;
    *(v101 + v100[9]) = v98;
    *(v101 + v100[10]) = 0;
    v103 = (v101 + v100[11]);
    *v103 = 0;
    v103[1] = 0xE000000000000000;
    *(v101 + v100[12]) = 0;
    *(v101 + v100[13]) = v53 != v97;
    *(v101 + v100[14]) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141[2] + 1, 1, v141, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
    }

    v105 = v141[2];
    v104 = v141[3];
    v14 = v126;
    v40 = v125;
    v41 = v139;
    if (v105 >= v104 >> 1)
    {
      v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v104 > 1, v105 + 1, 1, v141, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
    }

    v106 = v141;
    v141[2] = v105 + 1;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v127, v106 + v130 + v105 * v137);
LABEL_97:
    v107._countAndFlagsBits = v134;
    v107._object = v133;
    String.append(_:)(v107);
    swift_unknownObjectRelease();
    v43 = v132;
LABEL_27:
    ++v41;
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
    if (v41 != v10)
    {
      continue;
    }

    break;
  }

  v39 = *(&v146 + 1);
  v25 = &lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType;
LABEL_99:
  v38 = v136;
LABEL_101:
  v108 = *(v38 + v25[101]);
  v109 = *(v108 + 16);
  if (v109)
  {
    v110 = v146;
    v111 = v0;
    v112 = (v0[80] + 32) & ~v0[80];
    v113 = v108 + v112;
    v114 = *(v111 + 9);
    v139 = v108;

    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v113, v5);
      *&v144 = v110;
      *(&v144 + 1) = v39;
      v115 = *(v5 + 5);
      *&v142 = *(v5 + 4);
      *(&v142 + 1) = v115;
      lazy protocol witness table accessor for type String and conformance String();
      if (StringProtocol.contains<A>(_:)())
      {
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v5);
      }

      else
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v140);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v141[2] + 1, 1, v141, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
        }

        v117 = v141[2];
        v116 = v141[3];
        if (v117 >= v116 >> 1)
        {
          v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v116 > 1, v117 + 1, 1, v141, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
        }

        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v5);
        v118 = v141;
        v141[2] = v117 + 1;
        outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v140, v118 + v112 + v117 * v114);
      }

      v113 += v114;
      --v109;
    }

    while (v109);
  }

  return v141;
}

uint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id MOSuggestionInterstitialAlertContentViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MOSuggestionAssetMapsClusterer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionAssetMapsClusterer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *MOSuggestionAssetMapsClusterer.__allocating_init(coordinates:separationThreshold:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v2 + 240))(_swiftEmptyArrayStorage, 0.5);
  v10 = v9;
  *&v9[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v11 = *(a1 + 16);
  if (v11)
  {
    v30 = _swiftEmptyArrayStorage;
    v27[0] = v9;
    v12 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = 0;
    v14 = v30;
    v27[1] = a1;
    v15 = (a1 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v27[2] = v13;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v18;
      v19._countAndFlagsBits = 95;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20 = v28;
      v21 = v29;
      UUID.init()();
      *v8 = v16;
      v8[1] = v17;
      v8[2] = 0;
      v8[3] = 1;
      v8[4] = v20;
      v8[5] = v21;
      *(v8 + v5[9]) = 0;
      *(v8 + v5[10]) = 0;
      v22 = (v8 + v5[11]);
      *v22 = 0;
      v22[1] = 0xE000000000000000;
      *(v8 + v5[12]) = 0;
      *(v8 + v5[13]) = 0;
      *(v8 + v5[14]) = 0;
      v30 = v14;
      v24 = v14[2];
      v23 = v14[3];
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
        v14 = v30;
      }

      ++v13;
      v14[2] = v24 + 1;
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v8, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24);
      v15 += 2;
    }

    while (v11 != v13);

    v10 = v27[0];
  }

  else
  {
    v25 = v9;

    v14 = _swiftEmptyArrayStorage;
  }

  *&v10[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_inputClusters] = v14;

  return v10;
}

__C::CLLocationCoordinate2D __swiftcall CLLocationCoordinate2D.comparable()()
{
  if ((((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && v1 < 0.0)
  {
    v4 = v0;
    v5 = remainder(v1, 360.0);
    v0 = v4;
    v1 = v5 + 360.0;
  }

  result.longitude = v1;
  result.latitude = v0;
  return result;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

Swift::Void __swiftcall MOSuggestionAssetMapsClusterer.printDendogram()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionAssetMapsClusterer_results;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5Tm(v2[2], 0, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMR, type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster);
  v5 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v7, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
  swift_bridgeObjectRetain_n();
  outlined consume of Set<MOSuggestionAssetMapsClusterer.Cluster>.Iterator._Variant();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = _swiftEmptyArrayStorage;
  }

  v7 = v4;
  specialized MutableCollection<>.sort(by:)(&v7, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

  specialized MOSuggestionAssetMapsClusterer.printClusters(_:)(v7);
}

__C::CLLocationCoordinate2D __swiftcall CLLocationCoordinate2D.normalized()()
{
  v2.i64[0] = v1;
  v3 = *v0.i64;
  v0.i64[0] = 0x4076800000000000;
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = remainder(*v2.i64, *vbslq_s8(vnegq_f64(v4), v0, v2).i64);
  v6 = v3;
  result.longitude = v5;
  result.latitude = v6;
  return result;
}

uint64_t static FloatingPoint.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = __chkstk_darwin(AssociatedTypeWitness);
  v6 = *(a3 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  return (*(v6 + 8))(v8, a3);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
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

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2, a3);
  *a1 = v7;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo33BMMomentsEngagementSuggestionTypeVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService20MOProtectedAppSourceVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService26MOSuggestionAssetReferenceC_SitGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService26MOSuggestionAssetReferenceC_SitGMR, &_s16MomentsUIService26MOSuggestionAssetReferenceC_SitMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay16MomentsUIService030MOSuggestionCollectionViewCellH5ModelCGGMd, &_ss23_ContiguousArrayStorageCySay16MomentsUIService030MOSuggestionCollectionViewCellH5ModelCGGMR, &_sSay16MomentsUIService030MOSuggestionCollectionViewCellE5ModelCGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo17MOSuggestionAssetC_SitGMd, &_ss23_ContiguousArrayStorageCySo17MOSuggestionAssetC_SitGMR, &_sSo17MOSuggestionAssetC_SitMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySDySo28MOSuggestionAssetMetadataKeyaypSgGGMd, &_ss23_ContiguousArrayStorageCySDySo28MOSuggestionAssetMetadataKeyaypSgGGMR, &_sSDySo28MOSuggestionAssetMetadataKeyaypSgGMd);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23MOEventBundleSourceTypeaGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for MOEventBundleSourceType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService34MOMusicPlaybackCoordinatorDelegate_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService34MOMusicPlaybackCoordinatorDelegate_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService19MOAssetAndMediaTypeV_SitGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService19MOAssetAndMediaTypeV_SitMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyycGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService27MOClientPresentationDetailsV012presentationH0_ySaySo13MOEventBundleCG_ShySSGSgtc7handlertGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService27MOClientPresentationDetailsV012presentationE0_yyc7handlertMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, &type metadata accessor for UUID);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMR, type metadata accessor for MOSuggestionSheetAssetDateRange);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService026MOSuggestionAssetPhotoLiveH14VideosProviderC0iH4TaskVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService026MOSuggestionAssetPhotoLiveH14VideosProviderC0iH4TaskVGMR, type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider.LivePhotoTask);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, &type metadata accessor for URL);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService36MOSuggestionAssetPhotoMomentMetadataVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService36MOSuggestionAssetPhotoMomentMetadataVGMR, type metadata accessor for MOSuggestionAssetPhotoMomentMetadata);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMR, &type metadata accessor for CloudDevice.Capability);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy16MomentsUIService18PropertyDescriptorVGMd, &_ss23_ContiguousArrayStorageCy16MomentsUIService18PropertyDescriptorVGMR, type metadata accessor for PropertyDescriptor);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, &type metadata accessor for Date);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySuGMd);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

double *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService38MOSuggestionAssetMediaAlbumArtProviderC15QueuableRequest33_15720FFAFF6C490D807E9EF804F12153LLVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService29MOSuggestionAssetCacheManagerC0fG22CompletionResultHolderVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16MomentsUIService42MOSuggestionInterstitialListAssetViewModelC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCySo23MOEventBundleSourceTypeaGMd, &_ss11_SetStorageCySo23MOEventBundleSourceTypeaGMR, type metadata accessor for MOEventBundleSourceType);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCySo22MOSuggestionAssetsTypeaGMd, &_ss11_SetStorageCySo22MOSuggestionAssetsTypeaGMR, type metadata accessor for MOSuggestionAssetsType);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  Hasher.init(_seed:)();
  v21 = v4;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v9 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v8 + 48) + v14 * v12, v7);
      v15 = static UUID.== infix(_:_:)();
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v7);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(a2);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v8 + 48) + v14 * v12, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v9, v7);
    v22 = *v16;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v12, isUniquelyReferenced_nonNull_native);
    *v16 = v22;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v9, v20);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for CloudDevice.Capability();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::UInt32 *a1, Swift::UInt32 a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin();
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v19 + v20 * (v16 | (v8 << 6)), v4);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOGMd);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

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
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
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
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService20MOProtectedAppSourceVGMd);
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
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo30MOSuggestionAssetMediaItemTypeVGMd);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo33BMMomentsEngagementSuggestionTypeVGMd);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for CloudDevice.Capability();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd);
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
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
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
    v28 = v2;
    v29 = v4;
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
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
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v4 = v29;
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

    v3 = v28;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v24 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v23 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v11 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    v15 = *(v24 + 72);
    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v11 + 48) + v15 * a2, v8);
      v16 = static UUID.== infix(_:_:)();
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v8);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(a1, *(v17 + 48) + *(v24 + 72) * a2);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()(&type metadata accessor for UUID, &_ss11_SetStorageCy10Foundation4UUIDVGMd);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v31 = a1;
  v6 = type metadata accessor for CloudDevice.Capability();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()(&type metadata accessor for CloudDevice.Capability, &_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for MOSuggestionAssetMediaItemType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt32 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for BMMomentsEngagementSuggestionType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 4 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    specialized _NativeSet.resize(capacity:)(v10 + 1, a4);
  }

  else
  {
    if (v11 > v10)
    {
      result = specialized _NativeSet.copy()(a4);
      goto LABEL_16;
    }

    v12 = a6;
    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1, a4);
  }

  v13 = *v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v14 = Hasher._finalize()();

  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
      if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
      {
        goto LABEL_19;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v9;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v2 + 72) * (v17 | (v11 << 6));
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(*(v5 + 48) + v20, v4);
        result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v4, *(v7 + 48) + v20);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&type metadata accessor for UUID, &_ss11_SetStorageCy10Foundation4UUIDVGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService20MOProtectedAppSourceVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo30MOSuggestionAssetMediaItemTypeVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo33BMMomentsEngagementSuggestionTypeVGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&type metadata accessor for CloudDevice.Capability, &_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd);
}