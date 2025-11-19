void sub_100001C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, _Unwind_Exception *exception_object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak((v23 - 40));
  _Unwind_Resume(a1);
}

void sub_100003BB4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id *location)
{
  *(v30 - 144) = a1;
  *(v30 - 148) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v30 - 88));
  _Unwind_Resume(*(v30 - 144));
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_100004230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, _Unwind_Exception *exception_object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak((v23 - 40));
  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void sub_100009968(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id *location)
{
  *(v20 - 176) = a1;
  *(v20 - 180) = a2;
  objc_destroyWeak((v20 - 136));
  objc_destroyWeak((v20 - 120));
  _Unwind_Resume(*(v20 - 176));
}

void sub_100009ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, _Unwind_Exception *exception_object, char a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak((v23 - 40));
  _Unwind_Resume(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  context = objc_autoreleasePoolPush();
  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  v9 = UIApplicationMain(argc, argv, 0, v5);

  objc_autoreleasePoolPop(context);
  return v9;
}

void FSLog(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v14 = 0;
  objc_storeStrong(&v14, a2);
  v13[1] = &a9;
  v9 = [NSString alloc];
  v13[0] = [v9 initWithFormat:v14 arguments:&a9];
  oslog = LogForCategory(location);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v13[0];
    __os_log_helper_16_2_1_8_32(v16, [v13[0] UTF8String]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%s", v16, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

id LogForCategory(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = &LogForCategory_onceToken;
  v5 = 0;
  objc_storeStrong(&v5, &__block_literal_global_3);
  if (*v6 != -1)
  {
    dispatch_once(v6, v5);
  }

  objc_storeStrong(&v5, 0);
  v3 = [gLogsDict objectForKey:location];
  if (!v3)
  {
    NSLog(@"FontServices - unknown log category.");
    objc_storeStrong(&v3, &_os_log_default);
  }

  v2 = v3;
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&location, 0);

  return v2;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

void FSLog_Debug(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v14 = 0;
  objc_storeStrong(&v14, a2);
  v13[1] = &a9;
  v9 = [NSString alloc];
  v13[0] = [v9 initWithFormat:v14 arguments:&a9];
  oslog = LogForCategory(location);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    v10 = v13[0];
    __os_log_helper_16_2_1_8_32(v16, [v13[0] UTF8String]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s", v16, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

void FSLog_Error(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v14 = 0;
  objc_storeStrong(&v14, a2);
  v13[1] = &a9;
  v9 = [NSString alloc];
  v13[0] = [v9 initWithFormat:v14 arguments:&a9];
  oslog = LogForCategory(location);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    v10 = v13[0];
    __os_log_helper_16_2_1_8_32(v16, [v13[0] UTF8String]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%s", v16, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
}

objc_class *one-time initialization function for fontInstallViewServiceBundle()
{
  type metadata accessor for NSBundle();
  type metadata accessor for DeleteAppFontsAlertPresenter();
  result = @nonobjc NSBundle.__allocating_init(for:)();
  fontInstallViewServiceBundle.super.isa = result;
  return result;
}

NSBundle *fontInstallViewServiceBundle.unsafeMutableAddressor()
{
  if (one-time initialization token for fontInstallViewServiceBundle != -1)
  {
    swift_once();
  }

  return &fontInstallViewServiceBundle;
}

Swift::String __swiftcall locstr(_:value:)(Swift::String _, Swift::String value)
{
  isa = fontInstallViewServiceBundle.unsafeMutableAddressor()->super.isa;
  isa;

  v7 = String._bridgeToObjectiveC()();

  v9 = [(objc_class *)isa localizedStringForKey:v7 value:0 table:?];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  _allocateUninitializedArray<A>(_:)();
  v11 = v2;

  v11[1]._object = &type metadata for String;
  v11[2]._countAndFlagsBits = lazy protocol witness table accessor for type String and conformance String();
  *v11 = value;
  _finalizeUninitializedArray<A>(_:)();
  v12 = String.init(format:_:)();
  v13 = v3;

  v4 = v12;
  v5 = v13;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type String and conformance String);
    return WitnessTable;
  }

  return v2;
}

uint64_t DeleteAppFontsAlertPresenter.mainController.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

void DeleteAppFontsAlertPresenter.mainController.setter(void *a1)
{
  a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_endAccess();
}

void (*DeleteAppFontsAlertPresenter.mainController.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC22FontInstallViewService28DeleteAppFontsAlertPresenter_mainController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return DeleteAppFontsAlertPresenter.mainController.modify;
}

void DeleteAppFontsAlertPresenter.mainController.modify(uint64_t *a1, char a2)
{
  v7 = *a1;
  if (a2)
  {
    v4 = *(v7 + 32) + *(v7 + 40);
    v5 = *(v7 + 24);
    v5;
    swift_unknownObjectWeakAssign();

    outlined destroy of DeleteAppFontsMainController?((v7 + 24));
  }

  else
  {
    v2 = *(v7 + 40);
    v3 = *(v7 + 32);
    v6 = *(v7 + 24);
    swift_unknownObjectWeakAssign();
  }

  swift_endAccess();
  free(v7);
}

uint64_t DeleteAppFontsAlertPresenter.appIconImage.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC22FontInstallViewService28DeleteAppFontsAlertPresenter_appIconImage);

  return v2;
}

uint64_t DeleteAppFontsAlertPresenter.fonts.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC22FontInstallViewService28DeleteAppFontsAlertPresenter_fonts);

  return v2;
}

char *DeleteAppFontsAlertPresenter.init(from:)(void *a1)
{
  v10 = 0;
  v9 = a1;
  swift_unknownObjectWeakInit();
  a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  swift_endAccess();
  v3 = v10;
  v1 = [a1 applicationIconImage];
  *&v3[OBJC_IVAR____TtC22FontInstallViewService28DeleteAppFontsAlertPresenter_appIconImage] = Image.init(uiImage:)();
  v4 = v10;
  v5 = [a1 registeredFonts];
  *&v4[OBJC_IVAR____TtC22FontInstallViewService28DeleteAppFontsAlertPresenter_fonts] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8.receiver = v10;
  v8.super_class = type metadata accessor for DeleteAppFontsAlertPresenter();
  v7 = objc_msgSendSuper2(&v8, "init");
  v7;
  v10 = v7;

  return v7;
}

Swift::Void __swiftcall DeleteAppFontsAlertPresenter.showAlert()()
{
  v33 = DeleteAppFontsAlertPresenter.mainController.getter();
  if (v33)
  {
    type metadata accessor for UIAlertController();
    v0 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE_APP_TITLE", 0x10uLL, 1);
    v25 = [v33 applicationName];
    v1._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1._object = v2;
    v3 = locstr(_:value:)(v0, v1);

    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DELETE_APP_MSG", 0xEuLL, 1);
    v26 = [v33 applicationName];
    v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5._object = v6;
    v7 = locstr(_:value:)(v4, v5);

    v31 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v3._countAndFlagsBits, v3._object, v7._countAndFlagsBits, v7._object, 1);
    type metadata accessor for UIAlertAction();
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DONT_DELETE_TITLE", 0x11uLL, 1);
    v9._countAndFlagsBits = default argument 1 of locstr(_:value:)();
    v9._object = v10;
    v11 = locstr(_:value:)(v8, v9);

    v33;
    v12 = swift_allocObject();
    *(v12 + 16) = v33;
    v27 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)(v11._countAndFlagsBits, v11._object, 0, partial apply for closure #1 in DeleteAppFontsAlertPresenter.showAlert(), v12);
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DO_DELETE_TITLE", 0xFuLL, 1);
    v14._countAndFlagsBits = default argument 1 of locstr(_:value:)();
    v14._object = v15;
    v16 = locstr(_:value:)(v13, v14);

    v33;
    v17 = swift_allocObject();
    *(v17 + 16) = v33;
    v28 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)(v16._countAndFlagsBits, v16._object, 2, partial apply for closure #2 in DeleteAppFontsAlertPresenter.showAlert(), v17);
    [v31 addAction:v27];
    [v31 addAction:v28];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy22FontInstallViewService28DeleteAppFontsAlertPresenterC04ListG033_74B06BB779EE1376264D9A50588DBFE5LLVGMd, &_s7SwiftUI19UIHostingControllerCy22FontInstallViewService28DeleteAppFontsAlertPresenterC04ListG033_74B06BB779EE1376264D9A50588DBFE5LLVGMR);
    v29 = [v33 registeredFonts];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    DeleteAppFontsAlertPresenter.ListView.init(fonts:)();

    v30 = UIHostingController.__allocating_init(rootView:)();
    [v31 setContentViewController:?];

    v32 = [v31 contentViewController];
    if (v32)
    {
      v24 = v32;
    }

    else
    {
      LOBYTE(v18) = 2;
      v19 = 50;
      LODWORD(v20) = 0;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v23 = [v24 view];

    if (v23)
    {
      v22 = v23;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v21 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor:?];

    [v33 presentViewController:v31 animated:1 completion:0];
  }
}

unint64_t type metadata accessor for UIAlertController()
{
  v2 = lazy cache variable for type metadata for UIAlertController;
  if (!lazy cache variable for type metadata for UIAlertController)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for UIAlertController);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v7 = String._bridgeToObjectiveC()();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v10 message:v8 preferredStyle:a5];

  return v6;
}

unint64_t type metadata accessor for UIAlertAction()
{
  v2 = lazy cache variable for type metadata for UIAlertAction;
  if (!lazy cache variable for type metadata for UIAlertAction)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for UIAlertAction);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t closure #1 in DeleteAppFontsAlertPresenter.showAlert()(uint64_t a1, void *a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a2 doneWithDeleteAppFonts:0];
}

id @nonobjc UIAlertAction.__allocating_init(title:style:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v19 = a4;
    v20 = a5;
    aBlock = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = 0;
    v17 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v18 = &block_descriptor;
    v7 = _Block_copy(&aBlock);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() actionWithTitle:v10 style:a3 handler:v8];
  _Block_release(v8);

  return v6;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  a2;
  v3(a2);
}

uint64_t closure #2 in DeleteAppFontsAlertPresenter.showAlert()(uint64_t a1, void *a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a2 doneWithDeleteAppFonts:1];
}

uint64_t DeleteAppFontsAlertPresenter.ListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v82 = a2;
  v23 = a1;
  v69 = a3;
  v26 = 0;
  v25 = closure #1 in DeleteAppFontsAlertPresenter.ListView.body.getter;
  v41 = &opaque type descriptor for <<opaque return type of View.listStyle<A>(_:)>>;
  v97 = 0;
  v95 = 0;
  v96 = 0;
  v77 = 0;
  v68 = type metadata accessor for RoundedCornerStyle();
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v10 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v70 = &v10 - v10;
  v72 = type metadata accessor for RoundedRectangle();
  v11 = (*(*(v72 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v77);
  v75 = &v10 - v11;
  v38 = type metadata accessor for PlainListStyle();
  v31 = *(v38 - 8);
  v32 = v38 - 8;
  v12 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v33 = &v10 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0ck6InsetsS3KeyVGGGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0ck6InsetsS3KeyVGGGGMR);
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v13 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v36 = &v10 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_MR);
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v14 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v47);
  v46 = &v10 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR);
  v15 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v51 = &v10 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMR);
  v16 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v55 = &v10 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GMR);
  v17 = (*(*(v58 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v58);
  v60 = &v10 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGMR);
  v18 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v61);
  v65 = &v10 - v18;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGMR);
  v19 = (*(*(v71 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v71);
  v76 = &v10 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v20 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v79);
  v81 = &v10 - v20;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGA17_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGA17_GMR);
  v21 = (*(*(v83 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v23);
  v85 = &v10 - v21;
  v22 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v86 = &v10 - v22;
  v97 = &v10 - v22;
  v95 = v5;
  v96 = v6;

  v30 = &v94;
  v94 = v23;
  KeyPath = swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA04Listg6InsetsO3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA04Listg6InsetsO3KeyVGGMR);
  v29 = lazy protocol witness table accessor for type [String] and conformance [A]();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  List<>.init<A, B, C>(_:id:rowContent:)(v30, KeyPath, v25, v26, v27);
  static ListStyle<>.plain.getter();
  v39 = lazy protocol witness table accessor for type List<Never, ForEach<[String], String, ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>>> and conformance List<A, B>();
  v40 = &protocol witness table for PlainListStyle;
  View.listStyle<A>(_:)();
  (*(v31 + 8))(v33, v38);
  (*(v34 + 8))(v36, v37);
  v43 = swift_getKeyPath();
  v42 = &v93;
  v93 = 0;
  v89 = v37;
  v90 = v38;
  v91 = v39;
  v92 = v40;
  swift_getOpaqueTypeConformance2();
  View.environment<A>(_:_:)();

  (*(v44 + 8))(v46, v47);
  v50 = static Edge.Set.vertical.getter();
  v48 = v69 * 0.6;
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
  v59 = 0;
  View.padding(_:_:)();
  sub_10000E908(v51);
  v54 = static Edge.Set.leading.getter();
  v52 = v69 * 0.75;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  View.padding(_:_:)();
  sub_10000EA3C(v55);
  v56 = static Alignment.leading.getter();
  v57 = v7;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v78 = 1;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v8 = sub_10000EB70(v60);
  static ShapeStyle<>.background.getter(v8);
  v63 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v62 = &type metadata for BackgroundStyle;
  v64 = &protocol witness table for BackgroundStyle;
  default argument 1 of View.background<A>(_:ignoresSafeAreaEdges:)();
  View.background<A>(_:ignoresSafeAreaEdges:)();
  sub_10000ECD0(v65);
  (*(v66 + 104))(v70, enum case for RoundedCornerStyle.continuous(_:), v68);
  RoundedRectangle.init(cornerRadius:style:)();
  v73 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
  v74 = lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
  v88 = default argument 1 of View.clipShape<A>(_:style:)();
  v87 = v88;
  View.clipShape<A>(_:style:)();
  outlined destroy of RoundedRectangle(v75);
  sub_10000EFB0(v76);
  v80 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  default argument 0 of View.padding(_:_:)();
  View.padding(_:_:)();
  sub_10000F194(v81);
  v84 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  static ViewBuilder.buildExpression<A>(_:)(v85, v83, v86);
  sub_10000F344(v85);
  sub_10000F450(v86, v85);
  static ViewBuilder.buildBlock<A>(_:)(v85, v83, v82);
  sub_10000F344(v85);
  return sub_10000F344(v86);
}

uint64_t closure #1 in DeleteAppFontsAlertPresenter.ListView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v39 = a1;
  v33 = &opaque type descriptor for <<opaque return type of View.listRowSeparator(_:edges:)>>;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_MR);
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v38 = v17 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA04Listg6InsetsO3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA04Listg6InsetsO3KeyVGGMR);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v39);
  v42 = v17 - v41;
  v43 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v44 = v17 - v43;
  v71 = v17 - v43;
  v45 = *v4;
  v46 = v4[1];
  v69 = v45;
  v70 = v46;
  v47 = type metadata accessor for MainActor();
  v48 = static MainActor.shared.getter();
  v49 = dispatch thunk of Actor.unownedExecutor.getter();
  v50 = v5;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17[1] = v68;
  v68[0] = v45;
  v68[1] = v46;
  lazy protocol witness table accessor for type String and conformance String();
  v64 = Text.init<A>(_:)();
  v65 = v6;
  v66 = v7;
  v67 = v8;
  v18 = v64;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v17[2] = static Font.caption.getter();
  v60 = v18;
  v61 = v19;
  v27 = 1;
  v62 = v20 & 1;
  v63 = v21;
  v56 = Text.font(_:)();
  v57 = v9;
  v58 = v10;
  v59 = v11;
  v22 = v56;
  v23 = v9;
  v24 = v10;
  v25 = v11;

  outlined consume of Text.Storage(v18, v19, v20 & 1);

  v26 = v53;
  v53[0] = v22;
  v53[1] = v23;
  v54 = v24 & 1 & v27;
  v55 = v25;
  v28 = &type metadata for Text;
  v29 = &protocol witness table for Text;
  default argument 1 of View.listRowSeparator(_:edges:)();
  View.listRowSeparator(_:edges:)();
  outlined destroy of Text(v26);
  EdgeInsets.init(top:leading:bottom:trailing:)();
  v30 = v72;
  v72[0] = v12;
  v72[1] = v13;
  v72[2] = v14;
  v72[3] = v15;
  v73 = 0;
  v51 = v28;
  v52 = v29;
  swift_getOpaqueTypeConformance2();
  View.listRowInsets(_:)();
  (*(v35 + 8))(v38, v34);
  v31 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  static ViewBuilder.buildExpression<A>(_:)(v42, v40, v44);
  sub_1000115B0(v42);
  sub_100011618(v44, v42);
  static ViewBuilder.buildBlock<A>(_:)(v42, v40, v32);
  sub_1000115B0(v42);
  sub_1000115B0(v44);
}

uint64_t List<>.init<A, B, C>(_:id:rowContent:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*a2 + class metadata base offset for KeyPath + 8);
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  List<>.init(content:)();

  return (*(*(a5 - 8) + 8))(a1);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA04Listg6InsetsO3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA04Listg6InsetsO3KeyVGGMR);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>()
{
  v2 = lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type List<Never, ForEach<[String], String, ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>>> and conformance List<A, B>()
{
  v2 = lazy protocol witness table cache variable for type List<Never, ForEach<[String], String, ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>>> and conformance List<A, B>;
  if (!lazy protocol witness table cache variable for type List<Never, ForEach<[String], String, ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>>> and conformance List<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0ck6InsetsS3KeyVGGGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0ck6InsetsS3KeyVGGGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type List<Never, ForEach<[String], String, ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>>> and conformance List<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.defaultMinListRowHeight : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v7[1] = a1;
  v13 = type metadata accessor for EnvironmentValues();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v7 - v8;
  (*(v10 + 16))(v7 - v8);
  EnvironmentValues.defaultMinListRowHeight.getter();
  v2 = v10;
  v3 = v12;
  v4 = v13;
  *v9 = v5;
  return (*(v2 + 8))(v3, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0ck6InsetsS3KeyVGGGGMd, &_s7SwiftUI4ListVys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0ck6InsetsS3KeyVGGGGMR);
    type metadata accessor for PlainListStyle();
    lazy protocol witness table accessor for type List<Never, ForEach<[String], String, ModifiedContent<<<opaque return type of View.listRowSeparator(_:edges:)>>.0, _TraitWritingModifier<ListRowInsetsTraitKey>>>> and conformance List<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>()
{
  v2 = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000E908(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_MR);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR) + 36));

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000EA3C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_MR);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR) + 36));

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000EB70(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_MR);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR) + 36));

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000ECD0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_MR);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR) + 36));

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>()
{
  v2 = lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA0cD0VGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<BackgroundStyle> and conformance _BackgroundStyleModifier<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle()
{
  v2 = lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle;
  if (!lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle)
  {
    type metadata accessor for RoundedRectangle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1)
{
  v3 = *(type metadata accessor for RoundedRectangle() + 20);
  v1 = type metadata accessor for RoundedCornerStyle();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_10000EFB0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_MR);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR) + 36));

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>()
{
  v2 = lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000F194(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_MR);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR) + 36));

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36);
  v6 = *(type metadata accessor for RoundedRectangle() + 20);
  v3 = type metadata accessor for RoundedCornerStyle();
  (*(*(v3 - 8) + 8))(a1 + v5 + v6);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  v2 = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGA17_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGA17_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.listStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10000F344(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_MR);
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR) + 36));

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36);
  v6 = *(type metadata accessor for RoundedRectangle() + 20);
  v3 = type metadata accessor for RoundedCornerStyle();
  (*(*(v3 - 8) + 8))(a1 + v5 + v6);
  return a1;
}

uint64_t sub_10000F450(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_Md, &_s7SwiftUI4ViewPAAE9listStyleyQrqd__AA04ListE0Rd__lFQOyAA0F0Vys5NeverOAA7ForEachVySaySSGSSAA15ModifiedContentVyAcAE0D12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0fl6InsetsT3KeyVGGGG_AA05PlainfE0VQo_MR);
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGMR) + 36);
  v14 = *(a1 + v13);

  v3 = (a2 + v13);
  *v3 = v14;
  v3[1] = *(a1 + v13 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGMR);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GMR);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGMR);
  memcpy((a2 + *(v6 + 36)), (a1 + *(v6 + 36)), 0x70uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGMR);
  *(a2 + *(v7 + 36)) = *(a1 + *(v7 + 36));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  v16 = (a1 + *(v8 + 36));
  v17 = (a2 + *(v8 + 36));
  *v17 = *v16;
  v15 = *(type metadata accessor for RoundedRectangle() + 20);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 16))(&v17[v15], &v16[v15]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR);
  *&v17[*(v10 + 36)] = *&v16[*(v10 + 36)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGA17_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE9listStyleyQrqd__AA04ListG0Rd__lFQOyAA0H0Vys5NeverOAA7ForEachVySaySSGSSACyAeAE0F12RowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA0hl6InsetsT3KeyVGGGG_AA05PlainhG0VQo_AA012_EnvironmentxuV0Vy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGA17_GAA16_FlexFrameLayoutVGAA011_BackgroundgV0VyAA010BackgroundG0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGA17_GMR);
  memcpy((a2 + *(v11 + 36)), (a1 + *(v11 + 36)), 0x29uLL);
  return a2;
}

id DeleteAppFontsAlertPresenter.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteAppFontsAlertPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)(&v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = partial apply for closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:);
        v16 = &v37;
        specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(partial apply for specialized closure #1 in StaticString.withUTF8Buffer<A>(_:), v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *outlined destroy of Image(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *outlined destroy of [String](uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DeleteAppFontsAlertPresenter.ListView(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < &_mh_execute_header)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DeleteAppFontsAlertPresenter.ListView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in _unimplementedInitializer(className:initName:file:line:column:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in List<>.init<A, B, C>(_:id:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = a9;
  v28 = a1;
  v36 = a2;
  v34 = a3;
  v35 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v43 = a10;
  v37 = partial apply for closure #1 in closure #1 in List<>.init<A, B, C>(_:id:rowContent:);
  v44 = &protocol conformance descriptor for <> ForEach<A, B, C>;
  v62 = a5;
  v61 = a6;
  v26 = *a2;
  v32 = *(a5 - 8);
  v27 = a5 - 8;
  v25 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v42 = &v25 - v25;
  v33 = *(v26 + class metadata base offset for KeyPath + 8);
  v60 = v33;
  v55 = v10;
  v56 = v33;
  v57 = v11;
  v58 = v12;
  v59 = v13;
  v51 = type metadata accessor for ForEach();
  v45 = *(v51 - 8);
  v46 = v51 - 8;
  v30 = *(v45 + 64);
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v42);
  v47 = &v25 - v29;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = __chkstk_darwin(v14);
  v50 = &v25 - v31;
  (*(v32 + 16))(v15);

  v16 = swift_allocObject();
  v17 = v33;
  v18 = v34;
  v19 = v35;
  v20 = v39;
  v21 = v40;
  v22 = v41;
  v23 = v43;
  v16[2] = v38;
  v16[3] = v17;
  v16[4] = v20;
  v16[5] = v21;
  v16[6] = v22;
  v16[7] = v23;
  v16[8] = v18;
  v16[9] = v19;
  ForEach<>.init(_:id:content:)();
  v54 = v43;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v47, v51, v50);
  v53 = *(v45 + 8);
  v52 = v45 + 8;
  v53(v47, v51);
  static ViewBuilder.buildBlock<A>(_:)(v50, v51, v48);
  return (v53)(v50, v51);
}

uint64_t closure #1 in closure #1 in List<>.init<A, B, C>(_:id:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6)
{
  v17 = a5;
  v20 = a4;
  v18 = a6;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v14 = *(a4 - 8);
  v15 = a4 - 8;
  v12 = *(v14 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(a1);
  v16 = &v10 - v11;
  v13 = v11;
  v7 = __chkstk_darwin(v6);
  v19 = &v10 - v13;
  v8(v7);
  static ViewBuilder.buildExpression<A>(_:)(v16, v20, v19);
  v22 = *(v14 + 8);
  v21 = v14 + 8;
  v22(v16, v20);
  static ViewBuilder.buildBlock<A>(_:)(v19, v20, v17);
  return (v22)(v19, v20);
}

uint64_t sub_100011400()
{
  v5 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v1 = v0[9];

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in List<>.init<A, B, C>(_:id:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[6];
  v5 = v2[8];
  v6 = v2[9];
  return closure #1 in closure #1 in List<>.init<A, B, C>(_:id:rowContent:)(a1, v2[2], v2[3], v2[4], a2, v2[7]);
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined destroy of Text(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16) & 1);
  v1 = *(a1 + 24);

  return a1;
}

uint64_t sub_1000115B0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_MR);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_100011618(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_MR);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA04Listg6InsetsO3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA4TextV_Qo_AA21_TraitWritingModifierVyAA04Listg6InsetsO3KeyVGGMR);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x21uLL);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for NSBundle()
{
  v2 = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSBundle);
    return ObjCClassMetadata;
  }

  return v2;
}

id @nonobjc NSBundle.__allocating_init(for:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

objc_class *one-time initialization function for resourceBundle()
{
  type metadata accessor for NSBundle();
  type metadata accessor for ResourceBundleClass();
  result = @nonobjc NSBundle.__allocating_init(for:)();
  resourceBundle.super.isa = result;
  return result;
}

NSBundle *resourceBundle.unsafeMutableAddressor()
{
  if (one-time initialization token for resourceBundle != -1)
  {
    swift_once();
  }

  return &resourceBundle;
}

uint64_t one-time initialization function for caution()
{
  v1 = type metadata accessor for ImageResource();
  __swift_allocate_value_buffer(v1, static ImageResource.caution);
  __swift_project_value_buffer(v1, static ImageResource.caution);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Caution", 7uLL, 1);
  isa = resourceBundle.unsafeMutableAddressor()->super.isa;
  isa;
  return ImageResource.init(name:bundle:)();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t ImageResource.caution.unsafeMutableAddressor()
{
  if (one-time initialization token for caution != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return __swift_project_value_buffer(v0, static ImageResource.caution);
}

uint64_t static ImageResource.caution.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = ImageResource.caution.unsafeMutableAddressor();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}