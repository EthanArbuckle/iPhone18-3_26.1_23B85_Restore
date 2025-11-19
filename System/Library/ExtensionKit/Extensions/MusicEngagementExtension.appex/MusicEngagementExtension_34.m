uint64_t closure #1 in closure #1 in Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.module;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  _sS2SSysWl_0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t closure #2 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Collaboration.Flow.View(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  outlined init with copy of Collaboration.Flow(a2, v6, type metadata accessor for Collaboration.Flow.View);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Flow.Collaborator(v6, v13 + v12, type metadata accessor for Collaboration.Flow.View);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in Collaboration.Flow.View.body.getter, v13);
}

uint64_t closure #1 in closure #2 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #3 in GroupActivitiesManager.join();

  return Collaboration.Flow.View.initiate(shouldDuplicate:)(0);
}

uint64_t Collaboration.Flow.View.initiate(shouldDuplicate:)(char a1)
{
  v2[10] = v1;
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Playlist();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);

    return Playlist.hasUnsupportedContent.getter();
  }
}

{
  *(*v1 + 35) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(Collaboration.Flow.View.initiate(shouldDuplicate:), v3, v2);
}

uint64_t Collaboration.Flow.View.initiate(shouldDuplicate:)()
{
  *(*v1 + 152) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  else
  {
    v4 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context);
    v4 = StateObject.wrappedValue.getter();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

{
  if (*(v0 + 35) == 1)
  {

    _s9MusicCore13CollaborationO5ErrorOAEsAdAWl_0();
    v1 = swift_allocError();
    *v2 = xmmword_100507A60;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
        State.wrappedValue.setter();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      outlined consume of Collaboration.Error(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    outlined destroy of TaskPriority?(v19, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context);
    v11 = StateObject.wrappedValue.getter();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  else
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  return _swift_task_switch(v5, v2, v4);
}

{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

{
  *(*v1 + 208) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  else
  {
    v4 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  outlined destroy of TaskPriority?(v5, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    outlined consume of Collaboration.Error(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  outlined destroy of TaskPriority?(v7, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    outlined consume of Collaboration.Error(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  outlined destroy of TaskPriority?(v7, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    outlined consume of Collaboration.Error(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  outlined destroy of TaskPriority?(v7, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #3 in closure #1 in Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v65 = a2;
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v61 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v62 = v3;
  v64 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Alert.Button();
  __chkstk_darwin(v4 - 8);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v49 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  String.LocalizationValue.init(stringLiteral:)();
  v52 = *(v10 + 16);
  v51 = v10 + 16;
  v52(v12, v15, v9);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v16 = static NSBundle.module;
  v17 = static NSBundle.module;
  v66 = v16;
  v18 = v17;
  static Locale.current.getter();
  v19 = v18;
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v50 = v23;
  v69 = v20;
  v70 = v22;
  v49 = _sS2SSysWl_0();
  v24 = Text.init<A>(_:)();
  v59 = v25;
  v60 = v24;
  v57 = v26;
  v58 = v27;
  String.LocalizationValue.init(stringLiteral:)();
  v28 = v52;
  v52(v12, v15, v9);
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;
  v23(v15, v9);
  v69 = v29;
  v70 = v31;
  v32 = Text.init<A>(_:)();
  v55 = v33;
  v56 = v32;
  v53 = v34 & 1;
  v54 = v35;
  String.LocalizationValue.init(stringLiteral:)();
  v28(v12, v15, v9);
  static Locale.current.getter();
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  v50(v15, v9);
  v69 = v36;
  v70 = v38;
  v39 = Text.init<A>(_:)();
  v41 = v40;
  v43 = v42;
  v66 = type metadata accessor for Collaboration.Flow.View;
  v44 = v64;
  outlined init with copy of Collaboration.Flow(v68, v64, type metadata accessor for Collaboration.Flow.View);
  v45 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v46 = swift_allocObject();
  outlined init with take of Collaboration.Flow.Collaborator(v44, v46 + v45, type metadata accessor for Collaboration.Flow.View);
  static Alert.Button.default(_:action:)();
  outlined consume of Text.Storage(v39, v41, v43 & 1);

  outlined init with copy of Collaboration.Flow(v68, v44, v66);
  v47 = swift_allocObject();
  outlined init with take of Collaboration.Flow.Collaborator(v44, v47 + v45, type metadata accessor for Collaboration.Flow.View);
  static Alert.Button.cancel(_:)();

  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  outlined init with copy of Collaboration.Flow(a1, v5, type metadata accessor for Collaboration.Flow.View);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Flow.Collaborator(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter, v12);
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #2 in GroupActivitiesManager.join();

  return Collaboration.Flow.View.initiate(shouldDuplicate:)(1);
}

uint64_t closure #2 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
  __chkstk_darwin(v2);
  v4 = (&v9 - v3);
  v5 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  _s9MusicCore13CollaborationO5ErrorOAEsAdAWl_0();
  v6 = swift_allocError();
  *v7 = xmmword_100507A60;
  *(v7 + 16) = 3;
  *v4 = v6;
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return outlined destroy of TaskPriority?(v4, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
}

uint64_t closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter, v7, v6);
}

uint64_t closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context);
    v4 = StateObject.wrappedValue.getter();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  else
  {
    v5 = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = type metadata accessor for Playlist();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  outlined destroy of TaskPriority?(v2, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);

  v6 = v0[1];

  return v6();
}

{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  outlined destroy of TaskPriority?(v3, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  outlined destroy of TaskPriority?(v3, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter, v7, v6);
}

uint64_t closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  else
  {
    v5 = closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  outlined destroy of TaskPriority?(v3, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);

  v6 = v0[1];

  return v6();
}

uint64_t closure #4 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Collaboration.Flow.View(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  outlined init with copy of Collaboration.Flow(a2, v15, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  type metadata accessor for MainActor();
  v20 = static MainActor.shared.getter();
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Flow.Collaborator(v15, v23 + v21, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v23 + v22, v11, v8);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v18, v26, v23);
}

uint64_t closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter, v7, v6);
}

uint64_t closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  else
  {
    v5 = closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  return _swift_task_switch(v5, v4, v3);
}

id closure #1 in variable initialization expression of Collaboration.Flow.View._isRestricted()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  type metadata accessor for ICUserIdentity();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of Collaboration.Flow.View._profileContext()
{
  type metadata accessor for InlineProfileEditingView.Context();
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t protocol witness for View.body.getter in conformance Collaboration.Flow.GlyphImageView@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v5 = type metadata accessor for SymbolRenderingMode();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = Image.symbolRenderingMode(_:)();

  outlined destroy of TaskPriority?(v4, &_s7SwiftUI19SymbolRenderingModeVSgMd);
  v7 = static Color.accentColor.getter();
  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

uint64_t closure #1 in Collaboration.Flow.ProfileEditingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v140 = a1;
  v2 = type metadata accessor for Font.Leading();
  v135 = *(v2 - 8);
  v136 = v2;
  __chkstk_darwin(v2);
  v134 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v133 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v117 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd);
  __chkstk_darwin(v120);
  v14 = &v117 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGMd);
  __chkstk_darwin(v121);
  v124 = &v117 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMd);
  v131 = *(v16 - 8);
  v132 = v16;
  __chkstk_darwin(v16);
  v122 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v123 = &v117 - v19;
  v20 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v20);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd);
  __chkstk_darwin(v23 - 8);
  v138 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v117 - v26;
  v28 = *(type metadata accessor for Collaboration.Flow.ProfileEditingView(0) + 20);
  v130 = v20;
  swift_storeEnumTagMultiPayload();
  v129 = v28;
  LOBYTE(v28) = specialized static Collaboration.Flow.__derived_enum_equals(_:_:)(v140 + v28, v22);
  outlined destroy of Collaboration.Flow(v22, type metadata accessor for Collaboration.Flow);
  v137 = v27;
  v127 = v6;
  v128 = v7;
  v125 = v9;
  v126 = v12;
  if (v28)
  {
    v29 = 1;
    v30 = v132;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v31 = v133;
    (*(v133 + 16))(v9, v12, v7);
    v32 = v31;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v33 = static NSBundle.module;
    static Locale.current.getter();
    v34 = String.init(localized:table:bundle:locale:comment:)();
    v36 = v35;
    (*(v32 + 8))(v12, v7);
    *&v163 = v34;
    *(&v163 + 1) = v36;
    _sS2SSysWl_0();
    v37 = Text.init<A>(_:)();
    v118 = v38;
    v119 = v39;
    v41 = v40;
    v42 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd) + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
    v44 = enum case for Text.Case.uppercase(_:);
    v45 = type metadata accessor for Text.Case();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v42 + v43, v44, v45);
    (*(v46 + 56))(v42 + v43, 0, 1, v45);
    *v42 = swift_getKeyPath();
    v47 = v118;
    *v14 = v37;
    *(v14 + 1) = v47;
    v14[16] = v41 & 1;
    *(v14 + 3) = v119;
    v48 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v50 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGMd) + 36)];
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = static Color.secondary.getter();
    v52 = swift_getKeyPath();
    v53 = &v14[*(v120 + 36)];
    *v53 = v52;
    v53[1] = v51;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v54 = v124;
    outlined init with take of URL?(v14, v124, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd);
    v55 = (v54 + *(v121 + 36));
    v56 = v177;
    v55[4] = v176;
    v55[5] = v56;
    v55[6] = v178;
    v57 = v173;
    *v55 = v172;
    v55[1] = v57;
    v58 = v175;
    v55[2] = v174;
    v55[3] = v58;
    LOBYTE(v51) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v67 = v122;
    outlined init with take of URL?(v54, v122, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGMd);
    v30 = v132;
    v68 = v67 + *(v132 + 36);
    *v68 = v51;
    *(v68 + 8) = v60;
    *(v68 + 16) = v62;
    *(v68 + 24) = v64;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = v67;
    v70 = v123;
    outlined init with take of URL?(v69, v123, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMd);
    v27 = v137;
    outlined init with take of URL?(v70, v137, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMd);
    v29 = 0;
  }

  v72 = v135;
  v71 = v136;
  v73 = v134;
  (*(v131 + 56))(v27, v29, 1, v30);
  v74 = v140;

  specialized InlineProfileEditingView.init(context:)(&v179);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v74) = specialized static Collaboration.Flow.__derived_enum_equals(_:_:)(v74 + v129, v22);
  outlined destroy of Collaboration.Flow(v22, type metadata accessor for Collaboration.Flow);
  if (v74)
  {
    _s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgWOi0_(&v163);
  }

  else
  {
    v75 = v126;
    String.LocalizationValue.init(stringLiteral:)();
    v76 = v133;
    v77 = v128;
    (*(v133 + 16))(v125, v75, v128);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v78 = static NSBundle.module;
    static Locale.current.getter();
    v79 = String.init(localized:table:bundle:locale:comment:)();
    v81 = v80;
    (*(v76 + 8))(v75, v77);
    *&v163 = v79;
    *(&v163 + 1) = v81;
    _sS2SSysWl_0();
    v140 = Text.init<A>(_:)();
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = swift_getKeyPath();
    LOBYTE(v79) = v85 & 1;
    LOBYTE(v163) = v85 & 1;
    static Font.footnote.getter();
    (*(v72 + 104))(v73, enum case for Font.Leading.tight(_:), v71);
    v89 = Font.leading(_:)();

    (*(v72 + 8))(v73, v71);
    v90 = swift_getKeyPath();
    v91 = static Color.secondary.getter();
    v92 = swift_getKeyPath();
    v93 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v163) = 0;
    *&v154 = v140;
    *(&v154 + 1) = v83;
    LOBYTE(v155) = v79;
    *(&v155 + 1) = v87;
    LOWORD(v156) = 256;
    *(&v156 + 1) = v88;
    LOBYTE(v157) = 1;
    *(&v157 + 1) = v90;
    *&v158 = v89;
    *(&v158 + 1) = v92;
    *&v159 = v91;
    BYTE8(v159) = v93;
    *&v160 = v94;
    *(&v160 + 1) = v95;
    *&v161 = v96;
    *(&v161 + 1) = v97;
    v162 = 0;
    v98.location = &v154;
    CFRange.init(_:)(v98);
    v169 = v160;
    v170 = v161;
    v171 = v162;
    v165 = v156;
    v166 = v157;
    v167 = v158;
    v168 = v159;
    v163 = v154;
    v164 = v155;
    v27 = v137;
  }

  v99 = v138;
  outlined init with copy of TaskPriority?(v27, v138, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd);
  v147 = v169;
  v148 = v170;
  v149 = v171;
  v143 = v165;
  v144 = v166;
  v145 = v167;
  v146 = v168;
  v141 = v163;
  v142 = v164;
  v100 = v139;
  outlined init with copy of TaskPriority?(v99, v139, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSg_09MusicCoreB024InlineProfileEditingViewVACyACyACyACyACyAeA010_FixedSizeO0VGAGyAA0E9AlignmentOGGAPGAUGA_GSgtMd);
  v102 = (v100 + *(v101 + 48));
  v103 = v183;
  v104 = v182;
  v150[3] = v182;
  v150[4] = v183;
  v105 = v180;
  v106 = v179;
  v150[1] = v180;
  v150[2] = v181;
  v150[0] = v179;
  v102[2] = v181;
  v102[3] = v104;
  v102[4] = v103;
  *v102 = v106;
  v102[1] = v105;
  v107 = *(v101 + 64);
  v108 = v148;
  v151[6] = v147;
  v151[7] = v148;
  v110 = v145;
  v109 = v146;
  v151[4] = v145;
  v151[5] = v146;
  v111 = v143;
  v112 = v144;
  v151[2] = v143;
  v151[3] = v144;
  v114 = v141;
  v113 = v142;
  v151[0] = v141;
  v151[1] = v142;
  v115 = v100 + v107;
  *(v115 + 96) = v147;
  *(v115 + 112) = v108;
  v152 = v149;
  *(v115 + 128) = v149;
  *(v115 + 32) = v111;
  *(v115 + 48) = v112;
  *(v115 + 64) = v110;
  *(v115 + 80) = v109;
  *v115 = v114;
  *(v115 + 16) = v113;
  outlined init with copy of InlineProfileEditingView(v150, &v154);
  outlined init with copy of TaskPriority?(v151, &v154, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgMd);
  outlined destroy of TaskPriority?(v27, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd);
  v160 = v147;
  v161 = v148;
  v162 = v149;
  v156 = v143;
  v157 = v144;
  v158 = v145;
  v159 = v146;
  v154 = v141;
  v155 = v142;
  outlined destroy of TaskPriority?(&v154, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgMd);
  v153[2] = v181;
  v153[3] = v182;
  v153[4] = v183;
  v153[0] = v179;
  v153[1] = v180;
  outlined destroy of InlineProfileEditingView(v153);
  return outlined destroy of TaskPriority?(v99, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd);
}

uint64_t protocol witness for View.body.getter in conformance Collaboration.Flow.View@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X8>)
{
  *a4 = static HorizontalAlignment.center.getter();
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a3(v4);
}

uint64_t Collaboration.Flow.ActionButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v70);
  v75 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  __chkstk_darwin(v74);
  v76 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGMd);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMd);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGMd);
  __chkstk_darwin(v68);
  v16 = &v64 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd);
  __chkstk_darwin(v69);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE4boldyQrSbFQOyAA15ModifiedContentVyAFyAFyAFyAA6ButtonVyAA012_ConditionalF0VyAFyAA08ProgressC0VyAA05EmptyC0VANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAFyAA4TextVAA16_FlexFrameLayoutVGGGAA01_kl9TransformN0VySbGGAZGAUGAZG_Qo_Md);
  v72 = *(v19 - 8);
  v73 = v19;
  __chkstk_darwin(v19);
  v71 = &v64 - v20;
  v21 = swift_allocObject();
  v22 = *(v1 + 48);
  *(v21 + 48) = *(v1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v1 + 64);
  v23 = *(v1 + 16);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v23;
  v78 = v1;
  outlined init with copy of Collaboration.Flow.ActionButton(v1, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAEyAA4TextVAA16_FlexFrameLayoutVGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>();
  Button.init(action:label:)();
  v91 = *(v1 + 40);
  v88[0] = *(v1 + 40);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v24 = v81;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = &v10[*(v8 + 44)];
  *v27 = KeyPath;
  v27[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_0;
  v27[2] = v26;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v10, v14, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGMd);
  v28 = &v14[*(v12 + 44)];
  v29 = v86;
  *(v28 + 4) = v85;
  *(v28 + 5) = v29;
  *(v28 + 6) = v87;
  v30 = v82;
  *v28 = v81;
  *(v28 + 1) = v30;
  v31 = v84;
  *(v28 + 2) = v83;
  *(v28 + 3) = v31;
  v32 = *(v2 + 16);
  if (v32)
  {
    v33 = static Color.accentColor.getter();
  }

  else
  {
    v33 = static Color.white.getter();
  }

  v34 = v33;
  v35 = swift_getKeyPath();
  outlined init with take of URL?(v14, v16, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMd);
  v36 = &v16[*(v68 + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = v71;
  if (one-time initialization token for minHeight != -1)
  {
    swift_once();
  }

  v38 = *&static Collaboration.Flow.ActionButton.Specs.minHeight;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v16, v18, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGMd);
  v39 = &v18[*(v69 + 36)];
  v40 = v88[5];
  *(v39 + 4) = v88[4];
  *(v39 + 5) = v40;
  *(v39 + 6) = v88[6];
  v41 = v88[1];
  *v39 = v88[0];
  *(v39 + 1) = v41;
  v42 = v88[3];
  *(v39 + 2) = v88[2];
  *(v39 + 3) = v42;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  View.bold(_:)();
  outlined destroy of TaskPriority?(v18, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd);
  v43 = v38 * 0.5;
  v44 = *(v70 + 20);
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = type metadata accessor for RoundedCornerStyle();
  v47 = v75;
  (*(*(v46 - 8) + 104))(v75 + v44, v45, v46);
  *v47 = v43;
  v47[1] = v43;
  v48 = *(v2 + 56);
  v89 = v48;
  v90 = *(v2 + 64);
  if (v90 == 1)
  {
    if (v48)
    {
      goto LABEL_11;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v65;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of TaskPriority?(&v89, &_s7SwiftUI11EnvironmentVySbGMd);
    (*(v66 + 8))(v50, v67);
    if (v80)
    {
      goto LABEL_11;
    }
  }

  v80 = v91;
  State.wrappedValue.getter();
  if (v79 != 1)
  {
    v52 = [objc_opt_self() systemFillColor];
    v51 = Color.init(_:)();
    goto LABEL_15;
  }

LABEL_11:
  if (v32)
  {
    v51 = static Color.clear.getter();
  }

  else
  {
    v51 = static Color.accentColor.getter();
  }

LABEL_15:
  v53 = v51;
  v54 = v76;
  outlined init with take of Collaboration.Flow.Collaborator(v47, v76, &type metadata accessor for RoundedRectangle);
  v55 = v74;
  *(v54 + *(v74 + 52)) = v53;
  *(v54 + *(v55 + 56)) = 256;
  v56 = static Alignment.center.getter();
  v58 = v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA08ProgressE0VyAA05EmptyE0VANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_kl9TransformN0VySbGGAZGAUGAZG_Qo_AA011_BackgroundN0VyAA06_ShapeE0VyAA16RoundedRectangleVASGGGMd);
  v60 = v77;
  v61 = v77 + *(v59 + 36);
  outlined init with take of URL?(v54, v61, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd) + 36));
  *v62 = v56;
  v62[1] = v58;
  return (*(v72 + 32))(v60, v37, v73);
}

uint64_t closure #1 in Collaboration.Flow.ActionButton.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  return (*(a1 + 24))(a1);
}

uint64_t closure #2 in Collaboration.Flow.ActionButton.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4TextVAA16_FlexFrameLayoutVG_GMd);
  __chkstk_darwin(v2);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  v23[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v24 == 1)
  {
    ProgressView<>.init<>()();
    v8 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v10 = &v7[*(v5 + 36)];
    *v10 = KeyPath;
    v10[1] = v8;
    outlined init with copy of TaskPriority?(v7, v4, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of TaskPriority?(v7, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  }

  else
  {
    v12 = *(a1 + 8);
    *&v23[0] = *a1;
    *(&v23[0] + 1) = v12;
    _sS2SSysWl_0();

    v13 = Text.init<A>(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v24 = v17 & 1;
    *v4 = v13;
    *(v4 + 1) = v15;
    v4[16] = v17 & 1;
    *(v4 + 3) = v19;
    v20 = v23[5];
    *(v4 + 6) = v23[4];
    *(v4 + 7) = v20;
    *(v4 + 8) = v23[6];
    v21 = v23[1];
    *(v4 + 2) = v23[0];
    *(v4 + 3) = v21;
    v22 = v23[3];
    *(v4 + 4) = v23[2];
    *(v4 + 5) = v22;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
    return _ConditionalContent<>.init(storage:)();
  }
}

void one-time initialization function for minHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == 6)
  {
    v2 = 44.0;
  }

  static Collaboration.Flow.ActionButton.Specs.minHeight = *&v2;
}

uint64_t one-time initialization function for avatarSizeLength()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (static Collaboration.Flow.Specs.isVision)
  {
    v0 = 140.0;
  }

  static Collaboration.Flow.Specs.avatarSizeLength = *&v0;
  return result;
}

uint64_t one-time initialization function for subtitleBottomPadding()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (static Collaboration.Flow.Specs.isVision)
  {
    v0 = 16.0;
  }

  static Collaboration.Flow.Specs.subtitleBottomPadding = *&v0;
  return result;
}

uint64_t one-time initialization function for subtitleFont()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  if (static Collaboration.Flow.Specs.isVision == 1)
  {
    result = static Font.subheadline.getter();
    v5 = result;
  }

  else
  {
    static Font.body.getter();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = Font.leading(_:)();

    result = (*(v1 + 8))(v3, v0);
  }

  static Collaboration.Flow.Specs.subtitleFont = v5;
  return result;
}

uint64_t one-time initialization function for toggleDescriptionTextTopPadding()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (static Collaboration.Flow.Specs.isVision)
  {
    v0 = 9.0;
  }

  static Collaboration.Flow.Specs.toggleDescriptionTextTopPadding = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = type metadata accessor for Artwork();
  v11 = *(v10 - 8);
  v32 = *(v11 + 56);
  v33 = v10;
  v31[1] = v11 + 56;
  v32(v9, 1, 1);
  v12 = [v2 artworkInfo];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 responseDictionary];

    if (v14)
    {
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = _ss30_dictionaryDownCastConditionalySDyq0_q1_GSgSDyxq_GSHRzSHR0_r2_lFs11AnyHashableV_ypSSypTg5_0(v15);

      if (v16)
      {
        Artwork.init(_:)();
        outlined destroy of TaskPriority?(v9, &_s8MusicKit7ArtworkVSgMd_0);
        outlined init with take of URL?(v6, v9, &_s8MusicKit7ArtworkVSgMd_0);
      }
    }
  }

  v17 = [v2 name];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [v2 handle];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  outlined init with copy of TaskPriority?(v9, v6, &_s8MusicKit7ArtworkVSgMd_0);
  v26 = [v2 collaborationAllowed];
  outlined destroy of TaskPriority?(v9, &_s8MusicKit7ArtworkVSgMd_0);
  v27 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v28 = *(v27 + 24);
  (v32)(a1 + v28, 1, 1, v33);
  v29 = *(v27 + 28);
  *a1 = v18;
  a1[1] = v20;
  a1[2] = v23;
  a1[3] = v25;
  result = outlined assign with take of Artwork?(v6, a1 + v28);
  *(a1 + v29) = v26;
  return result;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.tintColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t specialized static Collaboration.Flow.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v69 = a2;
  v2 = type metadata accessor for Playlist.Collaborator();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v59 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
  __chkstk_darwin(v6 - 8);
  v60 = (&v58 - v7);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_AItMd);
  __chkstk_darwin(v66);
  v9 = &v58 - v8;
  v10 = type metadata accessor for URL();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin(v16);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO_AFtMd);
  __chkstk_darwin(v22 - 8);
  v24 = &v58 - v23;
  v26 = &v58 + *(v25 + 56) - v23;
  outlined init with copy of Collaboration.Flow(v68, &v58 - v23, type metadata accessor for Collaboration.Flow);
  outlined init with copy of Collaboration.Flow(v69, v26, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v66;
    v65 = v9;
    v68 = v12;
    v69 = v15;
    v35 = v10;
    outlined init with copy of Collaboration.Flow(v24, v21, type metadata accessor for Collaboration.Flow);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd);
    v37 = *(v36 + 48);
    v38 = *(v36 + 64);
    v39 = v21[v38];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v67 + 8))(&v21[v37], v10);
      outlined destroy of TaskPriority?(v21, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
LABEL_10:
      outlined destroy of TaskPriority?(v24, &_s9MusicCore13CollaborationO0aB2UIE4FlowO_AFtMd);
LABEL_11:
      v32 = 0;
      return v32 & 1;
    }

    LODWORD(v64) = v39;
    v41 = v26[v38];
    v42 = *(v67 + 32);
    v42(v69, &v21[v37], v35);
    v42(v68, &v26[v37], v35);
    v43 = *(v34 + 48);
    v44 = v65;
    outlined init with take of URL?(v21, v65, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
    outlined init with take of URL?(v26, v44 + v43, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
    v45 = v62;
    v46 = *(v61 + 48);
    if (v46(v44, 1, v62) == 1)
    {
      v47 = v46(v44 + v43, 1, v45);
      v48 = v67;
      v49 = v68;
      v50 = v69;
      if (v47 == 1)
      {
        outlined destroy of TaskPriority?(v44, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
        goto LABEL_21;
      }
    }

    else
    {
      v51 = v60;
      outlined init with copy of TaskPriority?(v44, v60, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
      if (v46(v44 + v43, 1, v45) != 1)
      {
        v53 = v59;
        outlined init with take of Collaboration.Flow.Collaborator(v44 + v43, v59, type metadata accessor for Collaboration.Flow.Collaborator);
        v54 = specialized static Collaboration.Flow.Collaborator.__derived_struct_equals(_:_:)(v51, v53);
        outlined destroy of Collaboration.Flow(v53, type metadata accessor for Collaboration.Flow.Collaborator);
        outlined destroy of Collaboration.Flow(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        outlined destroy of TaskPriority?(v44, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
        v48 = v67;
        v49 = v68;
        v50 = v69;
        if (v54)
        {
LABEL_21:
          v55 = static URL.== infix(_:_:)();
          v56 = *(v48 + 8);
          v56(v49, v35);
          v56(v50, v35);
          if (v55)
          {
            v57 = v64 ^ v41;
            outlined destroy of Collaboration.Flow(v24, type metadata accessor for Collaboration.Flow);
            v32 = v57 ^ 1;
            return v32 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v52 = *(v48 + 8);
        v52(v49, v35);
        v52(v50, v35);
LABEL_23:
        outlined destroy of Collaboration.Flow(v24, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      outlined destroy of Collaboration.Flow(v51, type metadata accessor for Collaboration.Flow.Collaborator);
      v48 = v67;
      v49 = v68;
      v50 = v69;
    }

    outlined destroy of TaskPriority?(v44, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_AItMd);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Collaboration.Flow(v24, type metadata accessor for Collaboration.Flow);
      v32 = 1;
      return v32 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of Collaboration.Flow(v24, v18, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v64 + 8))(v18, v65);
    goto LABEL_10;
  }

  v29 = v63;
  v28 = v64;
  v30 = v26;
  v31 = v65;
  (*(v64 + 32))(v63, v30, v65);
  v32 = static Playlist.Collaborator.== infix(_:_:)();
  v33 = *(v28 + 8);
  v33(v29, v31);
  v33(v18, v31);
  outlined destroy of Collaboration.Flow(v24, type metadata accessor for Collaboration.Flow);
  return v32 & 1;
}

uint64_t specialized static Collaboration.Flow.Collaborator.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_ADtMd);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v15)
  {
    goto LABEL_17;
  }

  v25 = v7;
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v16 = *(v26 + 24);
  v17 = *(v11 + 48);
  outlined init with copy of TaskPriority?(a1 + v16, v13, &_s8MusicKit7ArtworkVSgMd_0);
  outlined init with copy of TaskPriority?(a2 + v16, &v13[v17], &_s8MusicKit7ArtworkVSgMd_0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkVSgMd_0);
LABEL_20:
      v19 = *(a1 + *(v26 + 28)) ^ *(a2 + *(v26 + 28)) ^ 1;
      return v19 & 1;
    }

    goto LABEL_16;
  }

  outlined init with copy of TaskPriority?(v13, v10, &_s8MusicKit7ArtworkVSgMd_0);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkVSg_ADtMd);
    goto LABEL_17;
  }

  v21 = &v13[v17];
  v22 = v25;
  (*(v5 + 32))(v25, v21, v4);
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, &type metadata accessor for Artwork);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v5 + 8);
  v24(v22, v4);
  v24(v10, v4);
  outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkVSgMd_0);
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_17:
  v19 = 0;
  return v19 & 1;
}

unint64_t _sS2Ss7CVarArg10FoundationWl_0()
{
  result = _sS2Ss7CVarArg10FoundationWL_0;
  if (!_sS2Ss7CVarArg10FoundationWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2Ss7CVarArg10FoundationWL_0);
  }

  return result;
}

uint64_t outlined destroy of Collaboration.Flow(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Collaboration.Flow.Collaborator(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for Collaboration.Flow()
{
  type metadata accessor for (Collaboration.Flow.Collaborator?, URL, Bool)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Playlist.Collaborator();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (Collaboration.Flow.Collaborator?, URL, Bool)()
{
  if (!lazy cache variable for type metadata for (Collaboration.Flow.Collaborator?, URL, Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd);
    type metadata accessor for URL();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Collaboration.Flow.Collaborator?, URL, Bool));
    }
  }
}

uint64_t sub_10035BE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10035BEDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Collaboration.Flow.Collaborator()
{
  type metadata accessor for String?(319, &_sSSSgML_0, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Artwork?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Artwork?()
{
  if (!lazy cache variable for type metadata for Artwork?)
  {
    type metadata accessor for Artwork();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Artwork?);
    }
  }
}

uint64_t sub_10035C0B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Playlist();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10035C1CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = type metadata accessor for Playlist();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void type metadata completion function for Collaboration.Flow.View()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for State<Bool>, &type metadata for Bool, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Playlist();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v3 <= 0x3F)
        {
          _syycSgMa_0();
          if (v4 <= 0x3F)
          {
            _syycMa_0();
            if (v5 <= 0x3F)
            {
              type metadata accessor for StateObject<InlineProfileEditingView.Context>();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for StateObject<InlineProfileEditingView.Context>()
{
  if (!lazy cache variable for type metadata for StateObject<InlineProfileEditingView.Context>)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateObject<InlineProfileEditingView.Context>);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Collaboration.Flow.ActionButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Collaboration.Flow.ActionButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10035C60C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Collaboration.Flow(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10035C6CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Collaboration.Flow(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for Collaboration.Flow.ProfileEditingView()
{
  result = type metadata accessor for InlineProfileEditingView.Context();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10035C878()
{

  outlined consume of Environment<Bool>.Content(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAEyAA4TextVAA16_FlexFrameLayoutVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10035CAA4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMR, lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA08ModifiedE0VyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4TextVAA16_FlexFrameLayoutVGGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10035CD78@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10035CDE0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

double _s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgWOi0_(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO14GlyphImageView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView()
{
  result = lazy protocol witness table cache variable for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView;
  if (!lazy protocol witness table cache variable for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FixedSizeLayoutVGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_10035D154()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of Collaboration.Flow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd) + 48);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  outlined consume of StateObject<InlineProfileEditingView.Context>.Storage();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #5 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return closure #4 in closure #1 in Collaboration.Flow.View.body.getter(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd);
    lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton()
{
  result = lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton;
  if (!lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton);
  }

  return result;
}

uint64_t sub_10035D8A4()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = type metadata accessor for Playlist.Collaborator();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  outlined consume of StateObject<InlineProfileEditingView.Context>.Storage();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in closure #1 in Collaboration.Flow.View.body.getter(a1, v4);
}

uint64_t objectdestroy_78Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for Playlist.Collaborator();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = type metadata accessor for Artwork();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd) + 48);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = type metadata accessor for Playlist();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  outlined consume of StateObject<InlineProfileEditingView.Context>.Storage();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t _s9MusicCore13CollaborationO5ErrorOAEsAdAWl_0()
{
  result = _s9MusicCore13CollaborationO5ErrorOAEsAdAWL_0;
  if (!_s9MusicCore13CollaborationO5ErrorOAEsAdAWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_s9MusicCore13CollaborationO5ErrorOAEsAdAWL_0);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter();
}

uint64_t outlined consume of Collaboration.Error(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_91Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for Playlist.Collaborator();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = type metadata accessor for Artwork();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd) + 48);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = type metadata accessor for Playlist();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  outlined consume of StateObject<InlineProfileEditingView.Context>.Storage();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in Collaboration.Flow.View.body.getter()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in closure #1 in Collaboration.Flow.View.body.getter();
}

uint64_t sub_10035E534()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = type metadata accessor for Playlist.Collaborator();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  outlined consume of StateObject<InlineProfileEditingView.Context>.Storage();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_111Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v22 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v20 = *(v12 - 8);
      v21 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v20 + 48))(v13, 1, v12))
      {
        (*(v20 + 8))(v8 + v21, v14);
      }
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd) + 48);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v22;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  outlined consume of StateObject<InlineProfileEditingView.Context>.Storage();
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t type metadata accessor for ICUserIdentity()
{
  result = lazy cache variable for type metadata for ICUserIdentity;
  if (!lazy cache variable for type metadata for ICUserIdentity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICUserIdentity);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA08ProgressE0VyAA05EmptyE0VANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_kl9TransformN0VySbGGAZGAUGAZG_Qo_AA011_BackgroundN0VyAA06_ShapeE0VyAA16RoundedRectangleVASGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<RoundedRectangle, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Flow.ActionButton.Style and conformance Collaboration.Flow.ActionButton.Style()
{
  result = lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton.Style and conformance Collaboration.Flow.ActionButton.Style;
  if (!lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton.Style and conformance Collaboration.Flow.ActionButton.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton.Style and conformance Collaboration.Flow.ActionButton.Style);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a1@<X8>)
{
  specialized InlineProfileEditingView.init(context:)(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  outlined init with copy of TaskPriority?(a1, &v9 - v6, &_s8MusicKit7ArtworkVSgMd_0);
  outlined init with copy of TaskPriority?(v7, v4, &_s8MusicKit7ArtworkVSgMd_0);
  Published.init(initialValue:)();
  outlined destroy of TaskPriority?(a1, &_s8MusicKit7ArtworkVSgMd_0);
  return outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0);
}

uint64_t InlineProfileEditingView.Context.name.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t InlineProfileEditingView.Context.image.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void InlineProfileEditingView.Context.image.setter(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  v9 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v14;
  if (v14)
  {
    v11 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v11) = 0;
    v12 = type metadata accessor for Artwork();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of TaskPriority?(v8, v5, &_s8MusicKit7ArtworkVSgMd_0);

    static Published.subscript.setter();

    outlined destroy of TaskPriority?(v8, &_s8MusicKit7ArtworkVSgMd_0);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  v78 = *(v0 - 8);
  v79 = v0;
  __chkstk_darwin(v0);
  v77 = &v71 - v1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd_0);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v3 = &v71 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit7ArtworkVSgGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v71 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v71 - v11;
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v19 = type metadata accessor for Artwork();
  v80 = *(v19 - 8);
  v81 = v19;
  (*(v80 + 56))(v17, 1, 1);
  outlined init with copy of TaskPriority?(v17, v14, &_s8MusicKit7ArtworkVSgMd_0);
  v71 = v14;
  Published.init(initialValue:)();
  v20 = v17;
  outlined destroy of TaskPriority?(v17, &_s8MusicKit7ArtworkVSgMd_0);
  v21 = v75;
  (*(v5 + 32))(v75 + v18, v7, v4);
  v22 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v83 = 0;
  v84 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v74 + 32))(v21 + v22, v3, v76);
  v23 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v83 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd_0);
  v24 = v77;
  Published.init(initialValue:)();
  (*(v78 + 32))(v21 + v23, v24, v79);
  *(v21 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v25 = [objc_opt_self() shared];
  v26 = [v25 activeUserState];

  v27 = [v26 music];
  v28 = [v27 userProfile];

  if (v28)
  {
    v29 = [v28 name];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v30;
    v84 = v32;

    static Published.subscript.setter();
    v33 = [v28 artworkInfo];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 responseDictionary];

      if (v35)
      {
        v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = _ss30_dictionaryDownCastConditionalySDyq0_q1_GSgSDyxq_GSHRzSHR0_r2_lFs11AnyHashableV_ypSSypTg5_0(v36);

        if (v37)
        {
          Artwork.init(_:)();
          swift_getKeyPath();
          swift_getKeyPath();
          outlined init with copy of TaskPriority?(v20, v71, &_s8MusicKit7ArtworkVSgMd_0);

          static Published.subscript.setter();
          outlined destroy of TaskPriority?(v20, &_s8MusicKit7ArtworkVSgMd_0);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39 = v83;
  v38 = v84;

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v42 = v80;
  v41 = v81;
  if (v40)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v73;
    static Published.subscript.getter();

    if ((*(v42 + 48))(v43, 1, v41) != 1)
    {

LABEL_25:
      outlined destroy of TaskPriority?(v43, &_s8MusicKit7ArtworkVSgMd_0);
      return v21;
    }

    outlined destroy of TaskPriority?(v43, &_s8MusicKit7ArtworkVSgMd_0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1004F2F10;
  *(v44 + 32) = CNContactThumbnailImageDataKey;
  v82 = v44;
  v45 = objc_opt_self();
  v46 = CNContactThumbnailImageDataKey;
  v47 = [v45 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v48 = [objc_allocWithZone(CNContactStore) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v83 = 0;
  v50 = [v48 _ios_meContactWithKeysToFetch:isa error:&v83];

  v51 = v83;
  if (!v50)
  {
    v69 = v83;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return v21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v51;
  static Published.subscript.getter();

  v54 = v83;
  v53 = v84;

  v55 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v55 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
    v56 = [v45 stringFromContact:v50 style:0];
    if (v56)
    {
      v57 = v56;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      swift_getKeyPath();
      swift_getKeyPath();
      v83 = v58;
      v84 = v60;

      static Published.subscript.setter();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v72;
  static Published.subscript.getter();

  if ((*(v42 + 48))(v43, 1, v41) != 1)
  {

    goto LABEL_25;
  }

  outlined destroy of TaskPriority?(v43, &_s8MusicKit7ArtworkVSgMd_0);
  v61 = [v50 thumbnailImageData];
  if (v61)
  {
    v62 = v61;
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = objc_allocWithZone(UIImage);
    outlined copy of Data._Representation(v63, v65);
    v67 = Data._bridgeToObjectiveC()().super.isa;
    v68 = [v66 initWithData:v67];

    outlined consume of Data._Representation(v63, v65);
    InlineProfileEditingView.Context.image.setter(v68);

    outlined consume of Data._Representation(v63, v65);
  }

  else
  {
  }

  return v21;
}

BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t InlineProfileEditingView.Context.artwork.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = type metadata accessor for Artwork();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  outlined destroy of TaskPriority?(v3, &_s8MusicKit7ArtworkVSgMd_0);
  if (v6 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v8;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit7ArtworkVSgGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd_0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit7ArtworkVSgGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd_0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance InlineProfileEditingView.Context@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context()
{
  type metadata accessor for InlineProfileEditingView.Context();
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v83 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v80 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGMd);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGMd);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GMd);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GAPyAA16RoundedRectangleVGGMd);
  v72[2] = v21;
  __chkstk_darwin(v21);
  v85 = v72 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANyANyANyAA6HStackVyAA05TupleC0VyAA012_ConditionalM0VyANyANyANyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGANyANyANy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_0x4CoreB0015CNSwiftUIAvatarC0VQo_AXGA2_GA5_GG_ATyAA4TextVANyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVANyANyANyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_Md);
  v77 = *(v23 - 8);
  v78 = v23;
  __chkstk_darwin(v23);
  v76 = v72 - v24;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACyACyACyAA6HStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGACyACyACy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_0x4CoreB0015CNSwiftUIAvatarE0VQo_AXGA2_GA5_GG_ATyAA4TextVACyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVACyACyACyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_AA19_BackgroundModifierVyACyA20_0Q6PickerVAXGGGMd);
  __chkstk_darwin(v86);
  v87 = v72 - v25;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAA5ImageVAA06_FrameG0VGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGAMyAMyAMy010_MusicKit_aB007ArtworkL0V01_rs9Internal_aB0E18artworkPlaceholderyQrx0rS00T0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0r4CoreB0015CNSwiftUIAvatarD0VQo_AQGAWGAZGG_AKyAA4TextVAMyAA6ButtonVyA23_GAA30_EnvironmentKeyWritingModifierVyA12_SgGGGAA6SpacerVAMyAMyAMyA26_AZGA28_ySiSgGGAA21_TraitWritingModifierVyAA0G16PriorityTraitKeyVGGSgtGGMd);
  closure #1 in InlineProfileEditingView.body.getter(v2, &v12[*(v26 + 44)]);
  v27 = [objc_opt_self() quaternarySystemFillColor];
  v28 = Color.init(_:)();
  v29 = static Edge.Set.all.getter();
  v30 = &v12[*(v10 + 44)];
  *v30 = v28;
  v30[8] = v29;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v12, v16, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGMd);
  v31 = &v16[*(v14 + 44)];
  v32 = v97;
  *(v31 + 4) = v96;
  *(v31 + 5) = v32;
  *(v31 + 6) = v98;
  v33 = v93;
  *v31 = v92;
  *(v31 + 1) = v33;
  v34 = v95;
  *(v31 + 2) = v94;
  *(v31 + 3) = v34;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v16, v20, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGMd);
  v35 = &v20[*(v18 + 44)];
  v36 = v104;
  *(v35 + 4) = v103;
  *(v35 + 5) = v36;
  *(v35 + 6) = v105;
  v37 = v100;
  *v35 = v99;
  *(v35 + 1) = v37;
  v38 = v102;
  *(v35 + 2) = v101;
  *(v35 + 3) = v38;
  v39 = *(v21 + 36);
  v40 = v85;
  v41 = &v85[v39];
  v42 = *(type metadata accessor for RoundedRectangle() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = type metadata accessor for RoundedCornerStyle();
  (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
  __asm { FMOV            V0.2D, #16.0 }

  *v41 = _Q0;
  *&v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)] = 256;
  outlined init with take of URL?(v20, v40, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GMd);
  v90 = 0;
  v91 = 0xE000000000000000;
  v50 = v73;
  v89 = *(v73 + 16);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v72[1] = v72;
  v88 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_A2HSgAHtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  v51 = _sS2SSysWl_0();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Text>, Button<Text>, Button<Text>?, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_A2HSgAHtGMd);
  v75 = v51;
  v52 = v76;
  v53 = v85;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)();
  v54 = v79;
  v55 = v50;

  v56 = v80;

  v57 = v81;
  outlined destroy of TaskPriority?(v53, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GAPyAA16RoundedRectangleVGGMd);
  v58 = static Alignment.center.getter();
  v60 = v59;
  v61 = v87;
  v62 = &v87[*(v86 + 36)];
  closure #3 in InlineProfileEditingView.body.getter(v55, v62);
  v63 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVy09MusicCoreB011ImagePickerVAA12_FrameLayoutVGGMd) + 36));
  *v63 = v58;
  v63[1] = v60;
  v64 = v82;
  (*(v77 + 32))(v61, v52, v78);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v57 + 16))(v56, v54, v64);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v65 = static NSBundle.module;
  static Locale.current.getter();
  v66 = String.init(localized:table:bundle:locale:comment:)();
  v68 = v67;
  (*(v57 + 8))(v54, v64);
  v90 = v66;
  v91 = v68;
  v89 = *(v55 + 48);
  v69 = State.projectedValue.getter();
  v85 = v72;
  __chkstk_darwin(v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA9TextFieldVyAA0E0VG_AA15ModifiedContentVyAA6ButtonVyAGGAA32_EnvironmentKeyTransformModifierVySbGGAMtGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0, _BackgroundModifier<ModifiedContent<ImagePicker, _FrameLayout>>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(TextField<Text>, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA9TextFieldVyAA0E0VG_AA15ModifiedContentVyAA6ButtonVyAGGAA32_EnvironmentKeyTransformModifierVySbGGAMtGMd);
  v70 = v87;
  View.alert<A, B>(_:isPresented:actions:)();

  return outlined destroy of TaskPriority?(v70, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACyACyACyAA6HStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGACyACyACy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_0x4CoreB0015CNSwiftUIAvatarE0VQo_AXGA2_GA5_GG_ATyAA4TextVACyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVACyACyACyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_AA19_BackgroundModifierVyACyA20_0Q6PickerVAXGGGMd);
}

uint64_t closure #1 in InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v255 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGMd);
  v251 = *(v3 - 8);
  v252 = v3;
  __chkstk_darwin(v3);
  v232 = v208 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd);
  __chkstk_darwin(v5 - 8);
  v254 = v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v253 = v208 - v8;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v247 = v208 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for String.LocalizationValue();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v259 = v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v260 = v208 - v13;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  __chkstk_darwin(v245);
  v228 = v208 - v14;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4TextVAA08ModifiedD0VyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_GMd);
  __chkstk_darwin(v242);
  v244 = (v208 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  __chkstk_darwin(v16 - 8);
  v250 = v208 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v261 = v208 - v19;
  v20 = type metadata accessor for Image.ResizingMode();
  v230 = *(v20 - 8);
  v231 = v20;
  __chkstk_darwin(v20);
  v229 = v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingI0VGAGyAGyAGy010_MusicKit_aB007ArtworkG0V01_no9Internal_aB0E18artworkPlaceholderyQrx0nO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0n4CoreB0015CNSwiftUIAvatarV0VQo_AKGAQGATG_GMd);
  __chkstk_darwin(v239);
  v240 = (v208 - v22);
  v256 = type metadata accessor for Artwork.CropStyle();
  v237 = *(v256 - 8);
  __chkstk_darwin(v256);
  v224 = v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ArtworkImage();
  v226 = *(v24 - 8);
  v227 = v24;
  __chkstk_darwin(v24);
  v233 = v208 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v223 = v208 - v27;
  __chkstk_darwin(v28);
  v225 = v208 - v29;
  __chkstk_darwin(v30);
  v235 = v208 - v31;
  v236 = type metadata accessor for ArtworkImage.ReusePolicy();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v258 = v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  __chkstk_darwin(v33 - 8);
  v219 = v208 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v214 = v208 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v37 - 8);
  v217 = v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v216 = v208 - v40;
  __chkstk_darwin(v41);
  v213 = v208 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v43 - 8);
  v218 = v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v215 = v208 - v46;
  __chkstk_darwin(v47);
  v257 = v208 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV01_ab9Internal_cD0E18artworkPlaceholderyQrx0aB00E0VSg_So6CGSizeV0cD05ColorVtcAL4ViewRzlFQOy_0a4CoreD0015CNSwiftUIAvatarL0VQo_Md);
  v221 = *(v49 - 8);
  v222 = v49;
  __chkstk_darwin(v49);
  v220 = v208 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMd);
  __chkstk_darwin(v51);
  v53 = v208 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd);
  __chkstk_darwin(v54);
  v56 = v208 - v55;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
  __chkstk_darwin(v238);
  v58 = v208 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = v208 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd);
  __chkstk_darwin(v62 - 8);
  v243 = v208 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v241 = v208 - v65;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v249 = a1;
  v66 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v262 = v66;
  if (v265._countAndFlagsBits)
  {
    v258 = v265._countAndFlagsBits;
    Image.init(uiImage:)();
    v68 = v229;
    v67 = v230;
    v69 = v231;
    (*(v230 + 13))(v229, enum case for Image.ResizingMode.stretch(_:), v231);
    v257 = Image.resizable(capInsets:resizingMode:)();

    (*(v67 + 8))(v68, v69);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v70 = v273;
    v71 = v274;
    v72 = v275;
    v73 = v276;
    v75 = v277;
    v74 = v278;
    LOBYTE(v265._countAndFlagsBits) = v274;
    LOBYTE(v263[0]) = v276;
    LOBYTE(v67) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v264 = 0;
    v265._countAndFlagsBits = v257;
    v265._object = v70;
    LOBYTE(v266._countAndFlagsBits) = v71;
    v266._object = v72;
    LOBYTE(v267._countAndFlagsBits) = v73;
    v267._object = v75;
    v268._countAndFlagsBits = v74;
    LOWORD(v268._object) = 256;
    *(&v268._object + 2) = v271;
    HIWORD(v268._object) = WORD2(v271);
    LOBYTE(v269._countAndFlagsBits) = v67;
    HIDWORD(v269._countAndFlagsBits) = *(v263 + 3);
    *(&v269._countAndFlagsBits + 1) = v263[0];
    v269._object = v76;
    *&v270[0] = v77;
    *(&v270[0] + 1) = v78;
    *&v270[1] = v79;
    BYTE8(v270[1]) = 0;
    v80 = v268;
    v81 = v270[0];
    v82 = v240;
    v240[4] = v269;
    v82[5] = v81;
    *(v82 + 89) = *(v270 + 9);
    v83 = v266;
    v84 = v267;
    *v82 = v265;
    v82[1] = v83;
    v82[2] = v84;
    v82[3] = v80;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of TaskPriority?(&v265, v263, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v85 = v241;
    _ConditionalContent<>.init(storage:)();

    outlined destroy of TaskPriority?(&v265, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMd);
    v86 = v259;
    goto LABEL_18;
  }

  v210 = v54;
  v211 = v58;
  v212 = v51;
  v229 = v53;
  v230 = v56;
  v231 = v61;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v213;
  static Published.subscript.getter();

  v88 = v214;
  v208[0] = *(v237 + 56);
  v208[1] = v237 + 56;
  (v208[0])(v214, 1, 1, v256);
  v89 = type metadata accessor for Artwork();
  v90 = *(v89 - 8);
  v91 = (*(v90 + 48))(v87, 1, v89);
  v209 = v89;
  if (v91 == 1)
  {
    outlined destroy of TaskPriority?(v88, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    outlined destroy of TaskPriority?(v87, &_s8MusicKit7ArtworkVSgMd_0);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    v93 = v257;
    (*(*(v92 - 8) + 56))(v257, 1, 1, v92);
  }

  else
  {
    v93 = v257;
    (*(v90 + 32))(v257, v87, v89);
    v92 = type metadata accessor for ArtworkImage.ViewModel(0);
    outlined init with take of URL?(v88, v93 + *(v92 + 20), &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    (*(*(v92 - 8) + 56))(v93, 0, 1, v92);
  }

  v94 = v258;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v95 = String.trim()();

  (*(v234 + 104))(v94, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v236);
  *(swift_allocObject() + 16) = v95;
  v96 = v215;
  outlined init with copy of TaskPriority?(v93, v215, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v97 = *(*(v92 - 8) + 48);
  if (v97(v96, 1, v92) == 1)
  {
    outlined destroy of TaskPriority?(v96, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v98 = 1;
    v99 = v216;
    v100 = v217;
    v101 = v209;
  }

  else
  {
    v99 = v216;
    v101 = v209;
    (*(v90 + 16))(v216, v96, v209);
    outlined destroy of ImagePicker(v96, type metadata accessor for ArtworkImage.ViewModel);
    v98 = 0;
    v100 = v217;
  }

  (*(v90 + 56))(v99, v98, 1, v101);
  outlined init with copy of TaskPriority?(v99, v100, &_s8MusicKit7ArtworkVSgMd_0);
  ArtworkImage.init(_:)();
  outlined destroy of TaskPriority?(v99, &_s8MusicKit7ArtworkVSgMd_0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v102 = v218;
  outlined init with copy of TaskPriority?(v257, v218, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v103 = v97(v102, 1, v92);
  v104 = v227;
  if (v103 == 1)
  {
    outlined destroy of TaskPriority?(v102, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v105 = v219;
    (v208[0])(v219, 1, 1, v256);
    v86 = v259;
    v106 = v226;
    v107 = v237;
LABEL_12:
    v110 = v224;
    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v108 = v256;
    v111 = __swift_project_value_buffer(v256, static Artwork.CropStyle.fallback);
    (*(v107 + 16))(v110, v111, v108);
    v112 = (*(v107 + 48))(v105, 1, v108) == 1;
    v113 = v105;
    v114 = v110;
    v115 = v107;
    if (!v112)
    {
      outlined destroy of TaskPriority?(v113, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
    }

    goto LABEL_17;
  }

  v105 = v219;
  outlined init with copy of TaskPriority?(v102 + *(v92 + 20), v219, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0);
  outlined destroy of ImagePicker(v102, type metadata accessor for ArtworkImage.ViewModel);
  v107 = v237;
  v108 = v256;
  v109 = (*(v237 + 48))(v105, 1, v256);
  v86 = v259;
  v106 = v226;
  if (v109 == 1)
  {
    goto LABEL_12;
  }

  v116 = v105;
  v114 = v224;
  (*(v107 + 32))(v224, v116, v108);
  v115 = v107;
LABEL_17:
  v117 = v223;
  v118 = v233;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v115 + 8))(v114, v108);
  v119 = *(v106 + 8);
  v119(v118, v104);
  v120 = v225;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v119(v117, v104);
  lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView();
  v121 = v220;
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v119(v120, v104);
  v119(v235, v104);
  (*(v234 + 8))(v258, v236);
  outlined destroy of TaskPriority?(v257, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v122 = v229;
  (*(v221 + 32))(v229, v121, v222);
  v123 = (v122 + *(v212 + 36));
  v124 = v263[1];
  *v123 = v263[0];
  v123[1] = v124;
  v123[2] = v263[2];
  v125 = v230;
  outlined init with take of URL?(v122, v230, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMd);
  *(v125 + *(v210 + 36)) = 256;
  LOBYTE(v122) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v134 = v211;
  outlined init with take of URL?(v125, v211, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd);
  v135 = v134 + *(v238 + 36);
  *v135 = v122;
  *(v135 + 8) = v127;
  *(v135 + 16) = v129;
  *(v135 + 24) = v131;
  *(v135 + 32) = v133;
  *(v135 + 40) = 0;
  v136 = v231;
  outlined init with take of URL?(v134, v231, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
  outlined init with copy of TaskPriority?(v136, v240, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v85 = v241;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TaskPriority?(v136, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v137 = String.trim()();

  v138 = (v137._object >> 56) & 0xF;
  if ((v137._object & 0x2000000000000000) == 0)
  {
    v138 = v137._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v139 = &unk_10063E000;
  if (v138)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v140 = String.trim()();

    v265 = v140;
    _sS2SSysWl_0();
    v141 = Text.init<A>(_:)();
    v143 = v142;
    v145 = v144;
    v146 = Text.bold()();
    v148 = v147;
    v149 = v85;
    v151 = v150;
    v153 = v152;
    outlined consume of Text.Storage(v141, v143, v145 & 1);

    v154 = v244;
    *v244 = v146;
    v154[1] = v148;
    v86 = v259;
    v155 = v151 & 1;
    v85 = v149;
    *(v154 + 16) = v155;
    v154[3] = v153;
    v139 = &unk_10063E000;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v156 = v248;
  }

  else
  {
    v157 = v260;
    String.LocalizationValue.init(stringLiteral:)();
    v158 = v246;
    v156 = v248;
    (*(v246 + 16))(v86, v157, v248);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v159 = static NSBundle.module;
    static Locale.current.getter();
    v160 = String.init(localized:table:bundle:locale:comment:)();
    v162 = v161;
    (*(v158 + 8))(v260, v156);
    v271 = v160;
    v272 = v162;
    v163 = swift_allocObject();
    v164 = v249;
    v165 = v249[3];
    v163[3] = v249[2];
    v163[4] = v165;
    v163[5] = v164[4];
    v166 = v164[1];
    v163[1] = *v164;
    v163[2] = v166;
    outlined init with copy of InlineProfileEditingView(v164, &v265);
    _sS2SSysWl_0();
    v167 = v228;
    Button<>.init<A>(_:action:)();
    v168 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v170 = v244;
    v171 = (v167 + *(v245 + 36));
    *v171 = KeyPath;
    v171[1] = v168;
    outlined init with copy of TaskPriority?(v167, v170, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of TaskPriority?(v167, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v172 = String.trim()();

  v173 = (v172._object >> 56) & 0xF;
  if ((v172._object & 0x2000000000000000) == 0)
  {
    v173 = v172._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v173)
  {
    v174 = v260;
    String.LocalizationValue.init(stringLiteral:)();
    v175 = v246;
    (*(v246 + 16))(v86, v174, v156);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v176 = v139[408];
    static Locale.current.getter();
    v177 = String.init(localized:table:bundle:locale:comment:)();
    v179 = v178;
    (*(v175 + 8))(v260, v156);
    v271 = v177;
    v272 = v179;
    v180 = swift_allocObject();
    v181 = v249;
    v182 = v249[3];
    v180[3] = v249[2];
    v180[4] = v182;
    v180[5] = v181[4];
    v183 = v181[1];
    v180[1] = *v181;
    v180[2] = v183;
    outlined init with copy of InlineProfileEditingView(v181, &v265);
    _sS2SSysWl_0();
    v184 = v232;
    Button<>.init<A>(_:action:)();
    LOBYTE(v180) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v186 = v185;
    v188 = v187;
    v190 = v189;
    v192 = v191;
    v193 = v184 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd) + 36);
    *v193 = v180;
    *(v193 + 8) = v186;
    *(v193 + 16) = v188;
    *(v193 + 24) = v190;
    *(v193 + 32) = v192;
    *(v193 + 40) = 0;
    v194 = swift_getKeyPath();
    v195 = v184 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd) + 36);
    *v195 = v194;
    *(v195 + 8) = 1;
    *(v195 + 16) = 0;
    v197 = v252;
    v196 = v253;
    *(v184 + *(v252 + 36)) = 0x3FF0000000000000;
    outlined init with take of URL?(v184, v196, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGMd);
    v198 = 0;
  }

  else
  {
    v198 = 1;
    v197 = v252;
    v196 = v253;
  }

  (*(v251 + 56))(v196, v198, 1, v197);
  v199 = v243;
  v200 = v85;
  outlined init with copy of TaskPriority?(v85, v243, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd);
  v201 = v261;
  v202 = v250;
  outlined init with copy of TaskPriority?(v261, v250, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v203 = v254;
  outlined init with copy of TaskPriority?(v196, v254, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd);
  v204 = v255;
  outlined init with copy of TaskPriority?(v199, v255, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGG_ACyAA4TextVAEyAA6ButtonVyA15_GAA30_EnvironmentKeyWritingModifierVyA4_SgGGGAA6SpacerVAEyAEyAEyA18_ARGA20_ySiSgGGAA21_TraitWritingModifierVyAA0H16PriorityTraitKeyVGGSgtMd);
  outlined init with copy of TaskPriority?(v202, v204 + v205[12], &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v206 = v204 + v205[16];
  *v206 = 0;
  *(v206 + 8) = 1;
  outlined init with copy of TaskPriority?(v203, v204 + v205[20], &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd);
  outlined destroy of TaskPriority?(v196, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd);
  outlined destroy of TaskPriority?(v201, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  outlined destroy of TaskPriority?(v200, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd);
  outlined destroy of TaskPriority?(v203, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd);
  outlined destroy of TaskPriority?(v202, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  return outlined destroy of TaskPriority?(v199, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd);
}

uint64_t closure #2 in InlineProfileEditingView.body.getter@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  __chkstk_darwin(v3 - 8);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v101 = &v81 - v6;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v81 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd_0);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v83 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v95 = &v81 - v17;
  __chkstk_darwin(v18);
  v94 = &v81 - v19;
  __chkstk_darwin(v20);
  v89 = &v81 - v21;
  __chkstk_darwin(v22);
  v97 = &v81 - v23;
  __chkstk_darwin(v24);
  v100 = &v81 - v25;
  String.LocalizationValue.init(stringLiteral:)();
  v98 = *(v9 + 16);
  v99 = v8;
  v96 = v9 + 16;
  v98(v11, v14, v8);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v26 = static NSBundle.module;
  v27 = static NSBundle.module;
  static Locale.current.getter();
  v92 = v27;
  v28 = String.init(localized:table:bundle:locale:comment:)();
  v93 = v11;
  v30 = v29;
  v31 = *(v9 + 8);
  v32 = v99;
  v31(v14, v99);
  v103 = v28;
  v104 = v30;
  v33 = swift_allocObject();
  v34 = v9 + 8;
  v35 = a1[3];
  v33[3] = a1[2];
  v33[4] = v35;
  v33[5] = a1[4];
  v36 = a1[1];
  v33[1] = *a1;
  v33[2] = v36;
  outlined init with copy of InlineProfileEditingView(a1, v102);
  v37 = _sS2SSysWl_0();
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  v98(v93, v14, v32);
  static Locale.current.getter();
  v88 = v26;
  v38 = v31;
  v39 = String.init(localized:table:bundle:locale:comment:)();
  v41 = v40;
  v87 = v34;
  v31(v14, v32);
  v103 = v39;
  v104 = v41;
  v42 = swift_allocObject();
  v43 = a1[3];
  v42[3] = a1[2];
  v42[4] = v43;
  v42[5] = a1[4];
  v44 = a1[1];
  v42[1] = *a1;
  v42[2] = v44;
  outlined init with copy of InlineProfileEditingView(a1, v102);
  v45 = v97;
  v86 = v37;
  v46 = v93;
  Button<>.init<A>(_:action:)();
  v47 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v48 = v92;
    v82 = v38;
    v49 = v98;
    v50 = v99;
    v51 = [objc_opt_self() currentTraitCollection];
    v52 = [v51 userInterfaceIdiom];

    if (v52 == 6)
    {
      v47 = 1;
      v45 = v97;
      v38 = v82;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v49(v46, v14, v50);
      v53 = v48;
      static Locale.current.getter();
      v54 = String.init(localized:table:bundle:locale:comment:)();
      v56 = v55;
      v38 = v82;
      v82(v14, v50);
      v103 = v54;
      v104 = v56;
      v57 = swift_allocObject();
      v58 = a1[3];
      v57[3] = a1[2];
      v57[4] = v58;
      v57[5] = a1[4];
      v59 = a1[1];
      v57[1] = *a1;
      v57[2] = v59;
      outlined init with copy of InlineProfileEditingView(a1, v102);
      v60 = v89;
      Button<>.init<A>(_:action:)();
      (*(v90 + 32))(v101, v60, v91);
      v47 = 0;
      v45 = v97;
    }
  }

  v61 = v90;
  v62 = v91;
  (*(v90 + 56))(v101, v47, 1, v91);
  String.LocalizationValue.init(stringLiteral:)();
  v63 = v99;
  v98(v46, v14, v99);
  v64 = v92;
  static Locale.current.getter();
  v65 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v66;
  v38(v14, v63);
  v103 = v65;
  v104 = v67;
  v68 = swift_allocObject();
  v69 = a1[3];
  v68[3] = a1[2];
  v68[4] = v69;
  v68[5] = a1[4];
  v70 = a1[1];
  v68[1] = *a1;
  v68[2] = v70;
  outlined init with copy of InlineProfileEditingView(a1, v102);
  v71 = v89;
  Button<>.init<A>(_:action:)();
  v72 = *(v61 + 16);
  v73 = v94;
  v72(v94, v100, v62);
  v74 = v95;
  v72(v95, v45, v62);
  v75 = v85;
  outlined init with copy of TaskPriority?(v101, v85, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v76 = v83;
  v72(v83, v71, v62);
  v77 = v84;
  v72(v84, v73, v62);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVG_A2FSgAFtMd);
  v72(&v77[v78[12]], v74, v62);
  outlined init with copy of TaskPriority?(v75, &v77[v78[16]], &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v72(&v77[v78[20]], v76, v62);
  v79 = *(v61 + 8);
  v79(v71, v62);
  outlined destroy of TaskPriority?(v101, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v79(v97, v62);
  v79(v100, v62);
  v79(v76, v62);
  outlined destroy of TaskPriority?(v75, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  v79(v95, v62);
  return (v79)(v94, v62);
}

uint64_t closure #2 in closure #2 in InlineProfileEditingView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB011ImagePickerV10SourceTypeOGMd);
  State.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #4 in closure #2 in InlineProfileEditingView.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 8);
  InlineProfileEditingView.Context.image.setter(0);
  v9 = type metadata accessor for Artwork();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of TaskPriority?(v7, v4, &_s8MusicKit7ArtworkVSgMd_0);

  static Published.subscript.setter();
  outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0);
  v10 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v8 + v10) = 1;
  return result;
}

uint64_t closure #3 in InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context();
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB011ImagePickerV10SourceTypeOGMd);
  State.projectedValue.getter();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (one-time initialization token for profileImagePickerProperties != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = v25;
  outlined init with copy of ImagePicker(v5, v25);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB011ImagePickerVAA12_FrameLayoutVGMd) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return outlined destroy of ImagePicker(v5, type metadata accessor for ImagePicker);
}

uint64_t key path getter for InlineProfileEditingView.Context.image : InlineProfileEditingView.Context@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t closure #4 in InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd_0);
  __chkstk_darwin(v3 - 8);
  v88 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd_0);
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v76 - v8;
  __chkstk_darwin(v9);
  v85 = &v76 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  __chkstk_darwin(v84);
  v98 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v76 - v13;
  __chkstk_darwin(v14);
  v97 = &v76 - v15;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TextFieldVyAA0C0VGMd);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v96 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v102 = &v76 - v28;
  v89 = a1;
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v29;
  static Published.subscript.getter();

  v82 = v103;
  v81 = v104;
  String.LocalizationValue.init(stringLiteral:)();
  v30 = *(v20 + 16);
  v95 = v20 + 16;
  v94 = v30;
  v30(v22, v25, v19);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v31 = static NSBundle.module;
  v32 = static NSBundle.module;
  v76 = v18;
  static Locale.current.getter();
  v33 = v32;
  v77 = v22;
  v79 = v31;
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v36 = v35;
  v93 = *(v20 + 8);
  v93(v25, v19);
  type metadata accessor for InlineProfileEditingView.Context();
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v105 = v34;
  v106 = v36;
  v80 = _sS2SSysWl_0();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  String.LocalizationValue.init(stringLiteral:)();
  v37 = v77;
  v78 = v19;
  v94(v77, v25, v19);
  static Locale.current.getter();
  v38 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v39;
  v93(v25, v19);
  v103 = v38;
  v104 = v40;
  v41 = v85;
  Button<>.init<A>(_:action:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v42 = String.trim()();

  v43 = (v42._object >> 56) & 0xF;
  if ((v42._object & 0x2000000000000000) == 0)
  {
    v43 = v42._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  v47 = v100;
  v48 = v83;
  (*(v100 + 32))(v83, v41, v101);
  v49 = (v48 + *(v84 + 36));
  *v49 = KeyPath;
  v49[1] = partial apply for closure #1 in View.disabled(_:);
  v49[2] = v46;
  v50 = v97;
  outlined init with take of URL?(v48, v97, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  String.LocalizationValue.init(stringLiteral:)();
  v51 = v78;
  v94(v37, v25, v78);
  static Locale.current.getter();
  v52 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v53;
  v93(v25, v51);
  v105 = v52;
  v106 = v54;
  v55 = v88;
  static ButtonRole.cancel.getter();
  v56 = type metadata accessor for ButtonRole();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = swift_allocObject();
  v58 = v89;
  v59 = v89[3];
  *(v57 + 48) = v89[2];
  *(v57 + 64) = v59;
  *(v57 + 80) = v58[4];
  v60 = v58[1];
  *(v57 + 16) = *v58;
  *(v57 + 32) = v60;
  v61 = v81;
  *(v57 + 96) = v82;
  *(v57 + 104) = v61;
  outlined init with copy of InlineProfileEditingView(v58, &v103);
  v62 = v99;
  Button<>.init<A>(_:role:action:)();
  v63 = v86;
  v64 = *(v86 + 16);
  v65 = v96;
  v66 = v87;
  v64(v96, v102, v87);
  outlined init with copy of TaskPriority?(v50, v98, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v67 = *(v47 + 16);
  v68 = v90;
  v69 = v101;
  v67(v90, v62, v101);
  v70 = v91;
  v64(v91, v65, v66);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TextFieldVyAA0C0VG_AA15ModifiedContentVyAA6ButtonVyAEGAA32_EnvironmentKeyTransformModifierVySbGGAKtMd);
  v72 = v98;
  outlined init with copy of TaskPriority?(v98, &v70[*(v71 + 48)], &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v67(&v70[*(v71 + 64)], v68, v69);
  v73 = *(v100 + 8);
  v73(v99, v69);
  outlined destroy of TaskPriority?(v97, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v74 = *(v63 + 8);
  v74(v102, v66);
  v73(v68, v69);
  outlined destroy of TaskPriority?(v72, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  return (v74)(v96, v66);
}

uint64_t key path getter for InlineProfileEditingView.Context.name : InlineProfileEditingView.Context@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t key path setter for InlineProfileEditingView.Context.name : InlineProfileEditingView.Context()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t closure #2 in closure #4 in InlineProfileEditingView.body.getter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  outlined init with copy of TaskPriority?(&v7, v6, &_s7SwiftUI14ObservedObjectVy09MusicCoreB024InlineProfileEditingViewV7ContextCGMd);

  return static Published.subscript.setter();
}

uint64_t key path getter for InlineProfileEditingView.Context.artwork : InlineProfileEditingView.Context()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for InlineProfileEditingView.Context.artwork : InlineProfileEditingView.Context(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  outlined init with copy of TaskPriority?(a1, &v9 - v6, &_s8MusicKit7ArtworkVSgMd_0);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of TaskPriority?(v7, v4, &_s8MusicKit7ArtworkVSgMd_0);

  static Published.subscript.setter();
  return outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0);
}

uint64_t specialized InlineProfileEditingView.init(context:)@<X0>(uint64_t a1@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  type metadata accessor for InlineProfileEditingView.Context();
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context();
  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

void sub_100364F94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  InlineProfileEditingView.Context.image.setter(v1);
}

uint64_t type metadata accessor for InlineProfileEditingView.Context()
{
  result = type metadata singleton initialization cache for InlineProfileEditingView.Context;
  if (!type metadata singleton initialization cache for InlineProfileEditingView.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context()
{
  result = lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context;
  if (!lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context)
  {
    type metadata accessor for InlineProfileEditingView.Context();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GAPyAA16RoundedRectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>,  &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GMd,  &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GMR,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGAIyAIyAIy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarE0VQo_AMGASGAVGG_AGyAA4TextVAIyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVAIyAIyAIyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0, _BackgroundModifier<ModifiedContent<ImagePicker, _FrameLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0, _BackgroundModifier<ModifiedContent<ImagePicker, _FrameLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0, _BackgroundModifier<ModifiedContent<ImagePicker, _FrameLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACyACyACyAA6HStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGACyACyACy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_0x4CoreB0015CNSwiftUIAvatarE0VQo_AXGA2_GA5_GG_ATyAA4TextVACyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVACyACyACyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_AA19_BackgroundModifierVyACyA20_0Q6PickerVAXGGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GAPyAA16RoundedRectangleVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_A2HSgAHtGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    _sS2SSysWl_0();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Text>, Button<Text>, Button<Text>?, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_A2HSgAHtGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<ImagePicker, _FrameLayout>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVy09MusicCoreB011ImagePickerVAA12_FrameLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0, _BackgroundModifier<ModifiedContent<ImagePicker, _FrameLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InlineProfileEditingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InlineProfileEditingView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for InlineProfileEditingView.Context()
{
  type metadata accessor for Published<MPCPlayerResponse?>(319, &lazy cache variable for type metadata for Published<Artwork?>, &_s8MusicKit7ArtworkVSgMd_0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<String>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<MPCPlayerResponse?>(319, &lazy cache variable for type metadata for Published<UIImage?>, &_sSo7UIImageCSgMd_0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<String>()
{
  if (!_s7Combine9PublishedVySSGML_0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &_s7Combine9PublishedVySSGML_0);
    }
  }
}

uint64_t sub_1003656C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACyACyACyAA6HStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGACyACyACy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_0x4CoreB0015CNSwiftUIAvatarE0VQo_AXGA2_GA5_GG_ATyAA4TextVACyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVACyACyACyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_AA19_BackgroundModifierVyACyA20_0Q6PickerVAXGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA9TextFieldVyAA0E0VG_AA15ModifiedContentVyAA6ButtonVyAGGAA32_EnvironmentKeyTransformModifierVySbGGAMtGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0, _BackgroundModifier<ModifiedContent<ImagePicker, _FrameLayout>>> and conformance <> ModifiedContent<A, B>();
  _sS2SSysWl_0();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(TextField<Text>, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA9TextFieldVyAA0E0VG_AA15ModifiedContentVyAA6ButtonVyAGGAA32_EnvironmentKeyTransformModifierVySbGGAMtGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1003657B0()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of ImagePicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003658D0()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMR, lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{

  return swift_deallocObject();
}

uint64_t outlined destroy of ImagePicker(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  a3();
  v9 = type metadata accessor for HeightLimitedButtonTextView();
  result = a4(v9, v10, v11, v12);
  v14 = (a5 + *(v9 + 56));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v33 = a1 + 5;
  v3 = a1[2];
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v31 = a1[3];
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v47 = &protocol witness table for _CompositingGroupEffect;
  v30 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v42 = type metadata accessor for Button();
  v43 = type metadata accessor for PlainButtonStyle();
  v44 = swift_getWitnessTable();
  v45 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v26[3] = swift_getWitnessTable();
  v26[0] = type metadata accessor for ViewThatFits();
  v29 = *(v26[0] - 8);
  __chkstk_darwin(v26[0]);
  v5 = v26 - v4;
  v6 = type metadata accessor for ModifiedContent();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v26[1] = swift_getWitnessTable();
  v26[2] = type metadata accessor for _OverlayModifier();
  v9 = type metadata accessor for ModifiedContent();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  v15 = a1[4];
  v16 = v32;
  View.hidden()();
  static Axis.Set.vertical.getter();
  *&v17 = v15;
  *(&v17 + 1) = *v33;
  *&v18 = v3;
  *(&v18 + 1) = v31;
  v35 = v18;
  v36 = v17;
  v37 = v16;
  ViewThatFits.init(in:content:)();
  static Alignment.center.getter();
  v19 = lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier();
  v40 = v15;
  v41 = v19;
  v20 = swift_getWitnessTable();
  v21 = v26[0];
  View.overlay<A>(_:alignment:)();
  (*(v29 + 8))(v5, v21);
  (*(v28 + 8))(v8, v6);
  v22 = swift_getWitnessTable();
  v38 = v20;
  v39 = v22;
  v23 = swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v11, v9, v23);
  v24 = *(v27 + 8);
  v24(v11, v9);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v14, v9, v23);
  return (v24)(v14, v9);
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle);
  }

  return result;
}

uint64_t closure #1 in HeightLimitedButtonTextView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a5;
  v70 = a3;
  v52 = a1;
  v74 = a6;
  v8 = type metadata accessor for PlainButtonStyle();
  v62 = v8;
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v72 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v89 = &protocol witness table for _CompositingGroupEffect;
  v56 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v68 = v10;
  v67 = swift_getWitnessTable();
  v11 = type metadata accessor for Button();
  v63 = v11;
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v58 = &v50 - v12;
  v13 = swift_getWitnessTable();
  v61 = v13;
  v60 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  v84 = v11;
  v85 = v8;
  v86 = v13;
  v87 = v60;
  v64 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v57 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = &v50 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  v51 = a2;
  v17 = type metadata accessor for ModifiedContent();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = type metadata accessor for ModifiedContent();
  v75 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  View.lineLimit(_:)();
  v27 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>();
  v83[4] = a4;
  v83[5] = v27;
  v28 = a4;
  v29 = swift_getWitnessTable();
  View.fixedSize(horizontal:vertical:)();
  (*(v18 + 8))(v20, v17);
  v83[2] = v29;
  v83[3] = &protocol witness table for _FixedSizeLayout;
  v54 = swift_getWitnessTable();
  v30 = v26;
  v53 = v23;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v23, v21, v54);
  v55 = *(v75 + 8);
  v56 = (v75 + 8);
  v55(v23, v21);
  v31 = v51;
  v32 = v70;
  v84 = v51;
  v85 = v70;
  v33 = v71;
  v86 = v28;
  v87 = v71;
  type metadata accessor for HeightLimitedButtonTextView();
  v76 = v31;
  v77 = v32;
  v78 = v28;
  v79 = v33;
  v80 = v52;

  v34 = v58;
  Button.init(action:label:)();
  v35 = v72;
  PlainButtonStyle.init()();
  v36 = v57;
  v37 = v63;
  v38 = v62;
  v39 = v61;
  v40 = v60;
  View.buttonStyle<A>(_:)();
  (*(v73 + 8))(v35, v38);
  (*(v69 + 8))(v34, v37);
  v84 = v37;
  v85 = v38;
  v86 = v39;
  v87 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v59;
  v43 = OpaqueTypeMetadata2;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v44 = v65;
  v45 = *(v65 + 8);
  v46 = v36;
  v45(v36, v43);
  v47 = v53;
  (*(v75 + 16))(v53, v30, v21);
  v84 = v47;
  (*(v44 + 16))(v46, v42, v43);
  v85 = v46;
  v83[0] = v21;
  v83[1] = v43;
  v81 = v54;
  v82 = OpaqueTypeConformance2;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ_0(&v84, 2uLL, v83);
  v45(v42, v43);
  v48 = v55;
  v55(v30, v21);
  v45(v46, v43);
  return v48(v47, v21);
}

uint64_t closure #1 in closure #1 in HeightLimitedButtonTextView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a4;
  v25 = a5;
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v26 = a6;
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for ZStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  static HorizontalAlignment.trailing.getter();
  static VerticalAlignment.lastTextBaseline.getter();
  v27 = v21;
  v28 = v22;
  v29 = v24;
  v30 = v25;
  v31 = v23;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  View.compositingGroup()();
  (*(v7 + 8))(v9, v6);
  v32 = WitnessTable;
  v33 = &protocol witness table for _CompositingGroupEffect;
  v18 = swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v13, v10, v18);
  v19 = *(v11 + 8);
  v19(v13, v10);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v16, v10, v18);
  return (v19)(v16, v10);
}

uint64_t closure #1 in closure #1 in closure #1 in HeightLimitedButtonTextView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a6;
  v10 = *(a3 - 1);
  __chkstk_darwin(a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v17 = *(v16 - 8);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v33 = v24;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(v25, v26, v24);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v27 = v34;
  v42 = v34;
  v28 = type metadata accessor for HeightLimitedButtonTextView();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0(a1 + *(v28 + 52), a3, v27);
  (*(v17 + 16))(v20, v23, a2);
  v39 = v20;
  (*(v10 + 16))(v12, v15, a3);
  v40 = v12;
  v38[0] = a2;
  v38[1] = a3;
  v36 = v33;
  v37 = v27;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ_0(&v39, 2uLL, v38);
  v29 = *(v10 + 8);
  v29(v15, a3);
  v30 = *(v17 + 8);
  v30(v23, a2);
  v29(v12, a3);
  return (v30)(v20, a2);
}

unint64_t lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier()
{
  result = lazy protocol witness table cache variable for type _HiddenModifier and conformance _HiddenModifier;
  if (!lazy protocol witness table cache variable for type _HiddenModifier and conformance _HiddenModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _HiddenModifier and conformance _HiddenModifier);
  }

  return result;
}

unint64_t type metadata completion function for HeightLimitedButtonTextView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = _syycMa_0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeightLimitedButtonTextView(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *storeEnumTagSinglePayload for HeightLimitedButtonTextView(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_1003677A4()
{
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ViewThatFits();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _HiddenModifier and conformance _HiddenModifier();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel()
{
  result = type metadata singleton initialization cache for MoreLabel;
  if (!type metadata singleton initialization cache for MoreLabel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = type metadata accessor for Text.LineStyle.Pattern();
  v79 = *(v1 - 8);
  v80 = v1;
  __chkstk_darwin(v1);
  v78 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EnvironmentValues();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd);
  v75 = v5;
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGG_Qo_AOyAHSgGGAOyAA5ColorVSgGGMd);
  __chkstk_darwin(v8);
  v76 = &v70 - v9;
  Int.seconds.getter(44);
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v73 = v13;
  v74 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = type metadata accessor for Text.Case();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v76;
  v22 = v77;
  v7[16] = v73 & 1;
  *(v7 + 3) = v74;
  static Font.Weight.semibold.getter();
  lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();
  outlined destroy of TaskPriority?(v7, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd);
  v24 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGG_Qo_AOyAHSgGGMd) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel() + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    v98 = v31 & 1;
  }

  else
  {

    outlined copy of Environment<Bool>.Content(v31, 0);
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v33 = v70;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v31, 0);
    (*(v71 + 8))(v33, v72);
  }

  v34 = v78;
  static Text.LineStyle.Pattern.solid.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v35 = v81;
  View.underline(_:pattern:color:)();
  (*(v79 + 8))(v34, v80);
  sub_100368AB4(v23);
  v36 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9underline_7pattern5colorQrSb_AA4TextV9LineStyleV7PatternVAA5ColorVSgtFQOyACyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyACyAjA30_EnvironmentKeyWritingModifierVyAJ4CaseOSgGG_Qo_AYyATSgGGAYyAQGG_Qo_AA14_PaddingLayoutVGMd) + 36);
  *v45 = v36;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  *(v45 + 32) = v44;
  *(v45 + 40) = 0;
  v46 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9underline_7pattern5colorQrSb_AA4TextV9LineStyleV7PatternVAA5ColorVSgtFQOyACyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyACyAjA30_EnvironmentKeyWritingModifierVyAJ4CaseOSgGG_Qo_AYyATSgGGAYyAQGG_Qo_AA14_PaddingLayoutVGA11_GMd) + 36);
  *v55 = v46;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  v56 = static VerticalAlignment.center.getter();
  v90 = 0;
  closure #1 in MoreLabel.body.getter(&v83);
  v93 = v85;
  v94 = v86;
  v95 = v87;
  v96 = v88;
  v91 = v83;
  v92 = v84;
  v97[2] = v85;
  v97[3] = v86;
  v97[4] = v87;
  v97[5] = v88;
  v97[0] = v83;
  v97[1] = v84;
  outlined init with copy of TaskPriority?(&v91, &v82, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVG_AA5ColorVtGMd);
  outlined destroy of TaskPriority?(v97, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVG_AA5ColorVtGMd);
  *&v89[39] = v93;
  *&v89[55] = v94;
  *&v89[71] = v95;
  *&v89[87] = v96;
  *&v89[7] = v91;
  *&v89[23] = v92;
  v57 = v90;
  v58 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9underline_7pattern5colorQrSb_AA4TextV9LineStyleV7PatternVAA5ColorVSgtFQOyACyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyACyAjA30_EnvironmentKeyWritingModifierVyAJ4CaseOSgGG_Qo_AYyATSgGGAYyAQGG_Qo_AA14_PaddingLayoutVGA11_GAA011_BackgroundT0VyACyAA6HStackVyAA05TupleE0VyACyAA14LinearGradientVAA06_FrameW0VG_APtGGAA16_BlendModeEffectVGGGMd) + 36);
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA14LinearGradientVAA12_FrameLayoutVG_AA5ColorVtGGAA16_BlendModeEffectVGMd) + 36);
  v60 = enum case for BlendMode.destinationOut(_:);
  v61 = type metadata accessor for BlendMode();
  (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
  v62 = *&v89[32];
  *(v58 + 65) = *&v89[48];
  v63 = *&v89[80];
  *(v58 + 81) = *&v89[64];
  *(v58 + 97) = v63;
  v64 = *&v89[16];
  *(v58 + 17) = *v89;
  *(v58 + 33) = v64;
  *v58 = v56;
  *(v58 + 8) = 0;
  *(v58 + 16) = v57;
  *(v58 + 112) = *&v89[95];
  *(v58 + 49) = v62;
  v65 = static Alignment.center.getter();
  v67 = v66;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA14LinearGradientVAA12_FrameLayoutVG_AA5ColorVtGGAA16_BlendModeEffectVGGMd);
  v69 = (v58 + *(result + 36));
  *v69 = v65;
  v69[1] = v67;
  return result;
}

uint64_t closure #1 in MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  type metadata accessor for MoreLabel();
  specialized Environment.wrappedValue.getter(v8);
  (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
  v9 = static LayoutDirection.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004F2EF0;
  if (v9)
  {
    *(v11 + 32) = static Color.black.getter();
    v12 = static Color.clear.getter();
  }

  else
  {
    *(v11 + 32) = static Color.clear.getter();
    v12 = static Color.black.getter();
  }

  *(v11 + 40) = v12;
  Gradient.init(colors:)();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = static Color.black.getter();
  v14 = v27;
  v20[2] = v26;
  v20[3] = v27;
  v15 = v28;
  v20[4] = v28;
  v16 = v29;
  v21 = v29;
  v17 = v24;
  v18 = v25;
  v20[0] = v24;
  v20[1] = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 80) = v16;
  *(a1 + 88) = v13;
  outlined init with copy of TaskPriority?(v20, v22, &_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMd);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return outlined destroy of TaskPriority?(v22, &_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMd);
}

uint64_t key path getter for EnvironmentValues.accessibilityShowButtonShapes : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityShowButtonShapes.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1003685BC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityShowButtonShapes.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.font : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.textCase : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV4CaseOSgMd);
  __chkstk_darwin(v2 - 8);
  outlined init with copy of TaskPriority?(a1, &v5 - v3, &_s7SwiftUI4TextV4CaseOSgMd);
  return EnvironmentValues.textCase.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.Case?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10036884C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1003688A4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t outlined copy of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGG_Qo_AOyAHSgGGAOyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGG_Qo_AOyAHSgGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_100368AB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGG_Qo_AOyAHSgGGAOyAA5ColorVSgGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100368B4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100368C1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MoreLabel()
{
  type metadata accessor for Environment<LayoutDirection>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Bool>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<LayoutDirection>()
{
  if (!lazy cache variable for type metadata for Environment<LayoutDirection>)
  {
    type metadata accessor for LayoutDirection();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<LayoutDirection>);
    }
  }
}

void type metadata accessor for Environment<Bool>()
{
  if (!lazy cache variable for type metadata for Environment<Bool>)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<Bool>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<HStack<TupleView<(ModifiedContent<LinearGradient, _FrameLayout>, Color)>>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<HStack<TupleView<(ModifiedContent<LinearGradient, _FrameLayout>, Color)>>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<HStack<TupleView<(ModifiedContent<LinearGradient, _FrameLayout>, Color)>>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9underline_7pattern5colorQrSb_AA4TextV9LineStyleV7PatternVAA5ColorVSgtFQOyACyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyACyAjA30_EnvironmentKeyWritingModifierVyAJ4CaseOSgGG_Qo_AYyATSgGGAYyAQGG_Qo_AA14_PaddingLayoutVGA11_GAA011_BackgroundT0VyACyAA6HStackVyAA05TupleE0VyACyAA14LinearGradientVAA06_FrameW0VG_APtGGAA16_BlendModeEffectVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<HStack<TupleView<(ModifiedContent<LinearGradient, _FrameLayout>, Color)>>, _BlendModeEffect>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA14LinearGradientVAA12_FrameLayoutVG_AA5ColorVtGGAA16_BlendModeEffectVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<HStack<TupleView<(ModifiedContent<LinearGradient, _FrameLayout>, Color)>>, _BlendModeEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9underline_7pattern5colorQrSb_AA4TextV9LineStyleV7PatternVAA5ColorVSgtFQOyACyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyACyAjA30_EnvironmentKeyWritingModifierVyAJ4CaseOSgGG_Qo_AYyATSgGGAYyAQGG_Qo_AA14_PaddingLayoutVGA11_GMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9underline_7pattern5colorQrSb_AA4TextV9LineStyleV7PatternVAA5ColorVSgtFQOyACyACyAeAE10fontWeightyQrAA4FontV0O0VSgFQOyACyAjA30_EnvironmentKeyWritingModifierVyAJ4CaseOSgGG_Qo_AYyATSgGGAYyAQGG_Qo_AA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM4CaseOSgGG_Qo_AOyAHSgGGAOyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.underline(_:pattern:color:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  *&v17 = a8;
  *(&v17 + 1) = a9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  *&v18[4] = a6;
  *&v18[5] = a7;
  *&v18[6] = a8;
  *&v18[7] = a9;
  outlined init with copy of Gradient(&v14, &v13);
  outlined destroy of Gradient(v18);
  v10 = v15;
  *a5 = v14;
  a5[1] = v10;
  result = *&v16;
  v12 = v17;
  a5[2] = v16;
  a5[3] = v12;
  return result;
}

id *Gradient.configureLayer(_:)(void *a1)
{
  v2 = v1;
  [a1 setType:*v1];
  v4 = *(v1 + 2);
  if (v4)
  {
    specialized _arrayForceCast<A, B>(_:)(v4);
    type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  [a1 setLocations:v5.super.isa];

  isa = *(v2 + 3);
  if (isa)
  {
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [a1 setInterpolations:isa];

  v7 = *(v2 + 1);
  if (!v7)
  {
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
LABEL_18:
    v7 = Array._bridgeToObjectiveC()().super.isa;

LABEL_19:
    [a1 setColors:v7];

    [a1 setStartPoint:{v2[4], v2[5]}];
    return [a1 setEndPoint:{v2[6], v2[7]}];
  }

  v20 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v20;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v7 + v10 + 4);
      }

      v13 = v12;
      v14 = [v12 CGColor];
      _sSo10CGColorRefaMa_0(0);
      v19 = v15;

      *&v18 = v14;
      v20 = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v11 = v20;
      }

      ++v10;
      v11[2] = (v17 + 1);
      outlined init with take of Any(&v18, &v11[4 * v17 + 4]);
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id Gradient.View.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  outlined init with copy of Gradient(a1, v14);
  v13.receiver = v4;
  v13.super_class = v2;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  Gradient.configureLayer(_:)(v11);

  outlined destroy of Gradient(a1);
  return v9;
}

id Gradient.View.init(configuration:)(_OWORD *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v7;
  outlined init with copy of Gradient(a1, v13);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  Gradient.configureLayer(_:)(v10);

  outlined destroy of Gradient(a1);
  return v8;
}

double Gradient.View.typedConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  outlined init with copy of Gradient(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t Gradient.View.typedConfiguration.setter(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v19[0] = *v3;
  v19[1] = v4;
  v5 = *(v3 + 3);
  v20 = *(v3 + 2);
  v21 = v5;
  v22[0] = v19[0];
  v22[1] = v4;
  v22[2] = v20;
  v22[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  outlined init with copy of Gradient(v19, v18);
  outlined init with copy of Gradient(a1, v18);
  outlined destroy of Gradient(v22);
  v8 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v8;
  v9 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v9;
  outlined init with copy of Gradient(v18, v17);
  v10 = specialized static Gradient.__derived_struct_equals(_:_:)(v18, v19);
  outlined destroy of Gradient(v18);
  if (v10)
  {
    outlined destroy of Gradient(v19);
  }

  else
  {
    v11 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v11;
    v12 = *(v3 + 3);
    v17[2] = *(v3 + 2);
    v17[3] = v12;
    outlined init with copy of Gradient(v17, v16);
    v13 = [v1 layer];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    Gradient.configureLayer(_:)(v14);
    outlined destroy of Gradient(v19);
    outlined destroy of Gradient(a1);

    a1 = v17;
  }

  return outlined destroy of Gradient(a1);
}

void (*Gradient.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  outlined init with copy of Gradient(v4, (v4 + 16));
  return Gradient.View.typedConfiguration.modify;
}

void Gradient.View.typedConfiguration.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    outlined init with copy of Gradient((v2 + 4), (v2 + 20));
    Gradient.View.typedConfiguration.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    outlined destroy of Gradient((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  free(v2);
}

id protocol witness for MusicUIContentView.init(configuration:) in conformance Gradient.View(_OWORD *a1)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = objc_allocWithZone(v1);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  outlined init with copy of Gradient(v15, v14);
  v13.receiver = v5;
  v13.super_class = v1;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  Gradient.configureLayer(_:)(v11);

  outlined destroy of Gradient(v15);
  return v9;
}

uint64_t protocol witness for MusicUIContentView.typedConfiguration.getter in conformance Gradient.View@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return outlined init with copy of Gradient(v9, v8);
}

uint64_t protocol witness for MusicUIContentView.typedConfiguration.setter in conformance Gradient.View(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return Gradient.View.typedConfiguration.setter(v4);
}

void (*protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Gradient.View(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  outlined init with copy of Gradient(v4, (v4 + 16));
  return Gradient.View.typedConfiguration.modify;
}

uint64_t protocol witness for UIContentView.configuration.getter in conformance Gradient.View@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for Gradient;
  a1[4] = lazy protocol witness table accessor for type Gradient and conformance Gradient();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  v7 = v4[3];
  v11 = v4[2];
  v6 = v11;
  v12 = v7;
  v3[1] = v10[0];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return outlined init with copy of Gradient(v10, v9);
}

uint64_t protocol witness for UIContentView.configuration.setter in conformance Gradient.View(uint64_t a1)
{
  outlined init with copy of ActionPerforming(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
  swift_dynamicCast();
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  Gradient.View.typedConfiguration.setter(v8);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void (*protocol witness for UIContentView.configuration.modify in conformance Gradient.View(void *a1))(_OWORD **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[50] = v1;
  v3[35] = &type metadata for Gradient;
  v3[36] = lazy protocol witness table accessor for type Gradient and conformance Gradient();
  v5 = swift_allocObject();
  *(v4 + 256) = v5;
  v6 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v9;
  *v4 = v7;
  *(v4 + 16) = v8;
  v10 = v6[1];
  v5[1] = *v6;
  v5[2] = v10;
  v11 = v6[3];
  v5[3] = v6[2];
  v5[4] = v11;
  outlined init with copy of Gradient(v4, v4 + 192);
  return protocol witness for UIContentView.configuration.modify in conformance Gradient.View;
}

void protocol witness for UIContentView.configuration.modify in conformance Gradient.View(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of ActionPerforming((v2 + 16), v2 + 296);
    outlined init with copy of ActionPerforming(v2 + 296, (v2 + 21));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
    swift_dynamicCast();
    v3 = v2[13];
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    Gradient.View.typedConfiguration.setter(v2 + 4);
    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 296);
  }

  else
  {
    outlined init with copy of ActionPerforming((v2 + 16), v2 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit22UIContentConfiguration_pMd);
    swift_dynamicCast();
    v5 = v2[13];
    v2[8] = v2[12];
    v2[9] = v5;
    v6 = v2[15];
    v2[10] = v2[14];
    v2[11] = v6;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  free(v2);
}

id protocol witness for UIContentConfiguration.makeContentView() in conformance Gradient()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  v2 = v0[3];
  v17 = v0[2];
  v18 = v2;
  v3 = type metadata accessor for Gradient.View();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = v18;
  v8 = v15;
  v7 = v16;
  *(v5 + 2) = v17;
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  outlined init with copy of Gradient(&v15, v14);
  outlined init with copy of Gradient(&v15, v14);
  v13.receiver = v4;
  v13.super_class = v3;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  Gradient.configureLayer(_:)(v11);

  outlined destroy of Gradient(&v15);
  lazy protocol witness table accessor for type Gradient.View and conformance Gradient.View(&lazy protocol witness table cache variable for type Gradient.View and conformance Gradient.View);
  return v9;
}

uint64_t protocol witness for UIContentConfiguration.updated(for:) in conformance Gradient@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return outlined init with copy of Gradient(v7, &v6);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Gradient(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static Gradient.__derived_struct_equals(_:_:)(v7, v8);
}

double static Gradient.vertical(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_100507A70;
  v13 = xmmword_100507930;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = 0x3FE0000000000000;
  v15 = xmmword_100507A80;
  v16 = 0x3FF0000000000000;

  v5 = kCAGradientLayerAxial;

  outlined init with copy of Gradient(&v10, &v9);
  outlined destroy of Gradient(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

double static Gradient.horizontal(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_100507A80;
  v13 = xmmword_100507A90;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v15 = xmmword_100507A80;
  v16 = xmmword_100507A90;

  v5 = kCAGradientLayerAxial;

  outlined init with copy of Gradient(&v10, &v9);
  outlined destroy of Gradient(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

Swift::Void __swiftcall Gradient.flip()()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 48) = v1;
}

double Gradient.flipped()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = v1[2];
  v11 = v1[3];
  v12 = v4;
  outlined init with copy of Gradient(v1, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

BOOL specialized static Gradient.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo7UIColorC_Tt1g5(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13)
  {
    if (!v14 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 24);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo21CAMediaTimingFunctionC_Tt1g5(v15, v16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  return *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
}

unint64_t lazy protocol witness table accessor for type Gradient and conformance Gradient()
{
  result = lazy protocol witness table cache variable for type Gradient and conformance Gradient;
  if (!lazy protocol witness table cache variable for type Gradient and conformance Gradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient and conformance Gradient);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient and conformance Gradient;
  if (!lazy protocol witness table cache variable for type Gradient and conformance Gradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient and conformance Gradient);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient and conformance Gradient;
  if (!lazy protocol witness table cache variable for type Gradient and conformance Gradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient and conformance Gradient);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Gradient.View(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Gradient.View and conformance Gradient.View(&lazy protocol witness table cache variable for type Gradient.View and conformance Gradient.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Gradient.View and conformance Gradient.View(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Gradient.View();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Gradient(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Gradient and conformance Gradient();
  result = lazy protocol witness table accessor for type Gradient and conformance Gradient();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10036A704()
{

  return swift_deallocObject();
}

uint64_t static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ17_MusicKit_SwiftUI12ArtworkImageV0b4CoreE0E11GridPreviewO4ItemV_Tt1g5(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ArtworkImage.GridPreview.ViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ17_MusicKit_SwiftUI12ArtworkImageV0b4CoreE0E11GridPreviewO4ItemV_Tt1g5(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  outlined init with take of URL?(a3, a5 + *(v8 + 20), &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  return _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWObTm_0(a4, a5 + *(v8 + 24), type metadata accessor for ArtworkImage.Placeholder);
}

uint64_t static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v80 = a3;
  v81 = a4;
  v75 = a2;
  v73 = a1;
  v79 = a8;
  v67 = *a7;
  v10 = *(a7 + 8);
  v11 = *(a7 + 16);
  v65 = a5;
  v66 = v11;
  v62 = *(a7 + 24);
  v63 = v10;
  v82 = *(a7 + 32);
  v61 = *(a7 + 40);
  v64 = *(a7 + 41);
  v12 = type metadata accessor for ArtworkImage.Placeholder(0);
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for ArtworkImage.ReusePolicy();
  v68 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV01_ab9Internal_cD0E18artworkPlaceholderyQrx0aB00E0VSg_So6CGSizeV0cD05ColorVtcAL4ViewRzlFQOy_AL19_ConditionalContentVyAL08ModifiedN0VyASyAC0a4CoreD0E0I0OAOVAL26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAL12_FrameLayoutVGAL14GeometryReaderVyA4_GGQo_Md);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin(v18);
  v69 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AA14_OpacityEffectVGMd);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v60 - v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AA14_OpacityEffectVGAA08_OverlayS0VyAfTE11GridPreviewO04GridN033_629ADA528219B6880875FC4697374C36LLVSgGGMd);
  __chkstk_darwin(v74);
  v78 = &v60 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AA14_OpacityEffectVGAA08_OverlayS0VyAfTE11GridPreviewO04GridN033_629ADA528219B6880875FC4697374C36LLVSgGGAA010_AnimationS0VyA16_0N5ModelVSgGGMd);
  v25 = __chkstk_darwin(v77);
  v76 = &v60 - v26;
  (*(v15 + 104))(v17, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v14, v25);
  v27 = a6;
  v28 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWOcTm_0(v27, v28, type metadata accessor for ArtworkImage.Placeholder);
  v29 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v30 = (v13 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWObTm_0(v28, v31 + v29, type metadata accessor for ArtworkImage.Placeholder);
  v32 = (v31 + v30);
  v33 = *(a7 + 16);
  *v32 = *a7;
  v32[1] = v33;
  *(v32 + 26) = *(a7 + 26);
  v34 = v69;
  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4with_22placeholderViewBuilder4size11reusePolicyQrAcDE0J5ModelVSg_x0aB00E0VSg_So6CGSizeV0cD05ColorVtcAcDE4SizeVAC01_ab9Internal_cD0E05ReuseN0OtAR0J0RzlFZAR19_ConditionalContentVyAR08ModifiedV0VyA2_yAcDE11PlaceholderOAZVAR26_PreferenceWritingModifierVyAD016RadiosityEnabledY3KeyVGGAR12_FrameLayoutVGAR14GeometryReaderVyA14_GG_Tt4g5(v73, _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4with_11placeholder4size11reusePolicyQrAcDE9ViewModelVSg_AcDE11PlaceholderOAcDE4SizeVAC01_ab9Internal_cD0E05ReuseL0OtFZAM4view09availableP0QrAO_tFQOy__Qo_0aB00E0VSg_So6CGSizeV0cD05ColorVtcfU_TA_0, v31, a7, v17, v69);

  (*(v15 + 8))(v17, v68);
  v35 = v75;
  if (v75)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = 1.0;
  }

  (*(v71 + 32))(v23, v34, v72);
  *&v23[*(v21 + 44)] = v36;
  v37 = static Alignment.center.getter();
  v39 = v35;
  if (v35)
  {
    LOBYTE(v90[0]) = v63 & 1;
    LOBYTE(v84) = v62 & 1;
    v83[0] = v61 & 1;
    v40 = v63 & 1;
    v41 = v62 & 1;
    v42 = v61 & 1 | (v64 << 8);
    v43 = v66;
    v35 = v65 & 1;
    v44 = v80;
    v45 = v81;
    v46 = v67;
    v47 = v82;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v47 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
  }

  v82 = v47;
  LODWORD(v71) = v42;
  *&v84 = v39;
  *(&v84 + 1) = v44;
  *&v85 = v45;
  *(&v85 + 1) = v35;
  *&v86 = v46;
  *(&v86 + 1) = v40;
  *&v87 = v43;
  *(&v87 + 1) = v41;
  *&v88 = v47;
  WORD4(v88) = v42;
  *&v89 = v37;
  *(&v89 + 1) = v38;
  v72 = v38;
  v73 = v37;
  v48 = v23;
  v49 = v78;
  v50 = v46;
  outlined init with take of URL?(v48, v78, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AA14_OpacityEffectVGMd);
  v51 = (v49 + *(v74 + 36));
  v52 = v87;
  v51[2] = v86;
  v51[3] = v52;
  v53 = v89;
  v51[4] = v88;
  v51[5] = v53;
  v54 = v85;
  *v51 = v84;
  v51[1] = v54;
  v90[0] = v39;
  v90[1] = v44;
  v90[2] = v45;
  v90[3] = v35;
  v90[4] = v50;
  v90[5] = v40;
  v90[6] = v43;
  v90[7] = v41;
  v90[8] = v82;
  v91 = v71;
  v92 = v73;
  v93 = v72;

  outlined init with copy of TaskPriority?(&v84, v83, &_s7SwiftUI16_OverlayModifierVy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11GridPreviewO0J4View33_629ADA528219B6880875FC4697374C36LLVSgGMd);
  outlined destroy of TaskPriority?(v90, &_s7SwiftUI16_OverlayModifierVy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11GridPreviewO0J4View33_629ADA528219B6880875FC4697374C36LLVSgGMd);
  v55 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v56 = v76;
  outlined init with take of URL?(v49, v76, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AA14_OpacityEffectVGAA08_OverlayS0VyAfTE11GridPreviewO04GridN033_629ADA528219B6880875FC4697374C36LLVSgGGMd);
  v57 = (v56 + *(v77 + 36));
  *v57 = v55;
  v57[1] = v39;
  v58 = v81;
  v57[2] = v80;
  v57[3] = v58;
  outlined init with take of URL?(v56, v79, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AA14_OpacityEffectVGAA08_OverlayS0VyAfTE11GridPreviewO04GridN033_629ADA528219B6880875FC4697374C36LLVSgGGAA010_AnimationS0VyA16_0N5ModelVSgGGMd);
}

void ArtworkImage.GridPreview.GridView.itemSize.getter(uint64_t a1@<X8>)
{
  v2 = 0.0;
  if ((*(v1 + 40) & 1) != 0 || (*(v1 + 56) & 1) != 0 || (v3 = *(v1 + 32), v3 <= 0.0) || (v4 = *(v1 + 48), v4 <= 0.0))
  {
LABEL_16:
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 513;
    return;
  }

  v5 = a1;
  v6 = *(v1 + 24);
  if (*(v1 + 24))
  {
    v7 = 18;
  }

  else
  {
    v7 = 7;
  }

  v8 = Int.seconds.getter(v7);
  v9 = *(v1 + 16);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v8;
    v11 = *(v1 + 8);
    v12 = Int.seconds.getter(v9 - 1);
    if (v6)
    {
      v13 = 14;
    }

    else
    {
      v13 = 4;
    }

    v14 = Int.seconds.getter(v13);
    v15 = Int.seconds.getter(v9);
    if (!__OFSUB__(v11, 1))
    {
      v16 = v4 - (v10 + v10);
      v17 = (v3 - (v10 + v10) - v12 * v14) / v15;
      v18 = Int.seconds.getter(v11 - 1);
      v19 = v16 - v18 * Int.seconds.getter(v13);
      v2 = v19 / Int.seconds.getter(v11);
      if (v2 >= v17)
      {
        v2 = v17;
      }

      a1 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t closure #1 in ArtworkImage.GridPreview.GridView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for GridItem.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for GridItem();
  __chkstk_darwin(v10 - 8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9LazyVGridVyAA7ForEachVySay010_MusicKit_aB012ArtworkImageV0g4CoreB0E11GridPreviewO4ItemVG0gH00gN2IDVAK0L4View33_629ADA528219B6880875FC4697374C36LLV0nP0VGGMd);
  v13 = *(v31 - 8);
  __chkstk_darwin(v31);
  v15 = &v31 - v14;
  v16 = *a1;
  if (*(a1 + 8))
  {
    v16 = 0.0;
  }

  *v9 = v16;
  (*(v7 + 104))(v9, enum case for GridItem.Size.fixed(_:), v6);
  v36 = *(a2 + 24);
  if (v36)
  {
    v17 = 14;
  }

  else
  {
    v17 = 4;
  }

  Int.seconds.getter(v17);
  GridItem.init(_:spacing:alignment:)();
  _sSa9repeating5countSayxGx_SitcfC7SwiftUI8GridItemV_Tt1g5(v12, *(a2 + 16));
  Int.seconds.getter(v17);
  v33 = a2;
  v34 = a1;
  static HorizontalAlignment.center.getter();
  v35 = 0;
  lazy protocol witness table accessor for type ArtworkImage.Placeholder.View and conformance ArtworkImage.Placeholder.View(&lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay010_MusicKit_aB012ArtworkImageV0e4CoreB0E11GridPreviewO4ItemVG0eF00eL2IDVAI0J4View33_629ADA528219B6880875FC4697374C36LLV0lN0VGMd);
  lazy protocol witness table accessor for type ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView> and conformance <> ForEach<A, B, C>();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  static Edge.Set.all.getter();
  if (v36)
  {
    v18 = 18;
  }

  else
  {
    v18 = 7;
  }

  v19 = Int.seconds.getter(v18);
  v20 = specialized EdgeInsets.init(_:length:)(v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = static Edge.Set.all.getter();
  v28 = v32;
  (*(v13 + 32))(v32, v15, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySay010_MusicKit_aB012ArtworkImageV0i4CoreB0E11GridPreviewO4ItemVG0iJ00iP2IDVAM0N4View33_629ADA528219B6880875FC4697374C36LLV0pR0VGGAA14_PaddingLayoutVGMd);
  v30 = v28 + *(result + 36);
  *v30 = v27;
  *(v30 + 8) = v20;
  *(v30 + 16) = v22;
  *(v30 + 24) = v24;
  *(v30 + 32) = v26;
  *(v30 + 40) = 0;
  return result;
}

id *_sSa9repeating5countSayxGx_SitcfC7SwiftUI8GridItemV_Tt1g5(id *result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v5[2] = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = (a2 - 1);
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void *closure #1 in closure #1 in ArtworkImage.GridPreview.GridView.body.getter(void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = v3 * v2;
  if ((v3 * v2) >> 64 == (v3 * v2) >> 63)
  {
    v6 = result;
    v7 = *result;
    v8 = *(*result + 16);
    if (v4 >= v8)
    {
      outlined init with copy of ArtworkImage.GridPreview.GridView(result, v14);
      goto LABEL_6;
    }

    v9 = v8 - v4;
    if (!__OFSUB__(v8, v4))
    {
      outlined init with copy of ArtworkImage.GridPreview.GridView(result, v14);
      specialized Sequence.dropLast(_:)(v9, v7);
LABEL_6:
      v10 = swift_allocObject();
      v11 = a2[1];
      v10[1] = *a2;
      v10[2] = v11;
      *(v10 + 42) = *(a2 + 26);
      v12 = v6[3];
      v10[6] = v6[2];
      v10[7] = v12;
      *(v10 + 122) = *(v6 + 58);
      v13 = v6[1];
      v10[4] = *v6;
      v10[5] = v13;
      outlined init with copy of ArtworkImage.GridPreview.GridView(v6, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11GridPreviewO4ItemVGMd);
      type metadata accessor for ArtworkImage.GridPreview.GridView.ItemView(0);
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [ArtworkImage.GridPreview.Item] and conformance [A], &_sSay17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11GridPreviewO4ItemVGMd);
      lazy protocol witness table accessor for type ArtworkImage.Placeholder.View and conformance ArtworkImage.Placeholder.View(&lazy protocol witness table cache variable for type ArtworkImage.GridPreview.GridView.ItemView and conformance ArtworkImage.GridPreview.GridView.ItemView, type metadata accessor for ArtworkImage.GridPreview.GridView.ItemView);
      lazy protocol witness table accessor for type ArtworkImage.Placeholder.View and conformance ArtworkImage.Placeholder.View(&lazy protocol witness table cache variable for type ArtworkImage.GridPreview.Item and conformance ArtworkImage.GridPreview.Item, type metadata accessor for ArtworkImage.GridPreview.Item);
      return ForEach<>.init(_:content:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ArtworkImage.GridPreview.GridView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWOcTm_0(a1, v10, type metadata accessor for ArtworkImage.GridPreview.Item);
  if (*(a3 + 24))
  {
    v11 = 0x4014000000000000;
  }

  else
  {
    v11 = 0x4000000000000000;
  }

  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWObTm_0(v10, a4, type metadata accessor for ArtworkImage.GridPreview.Item);
  v12 = type metadata accessor for ArtworkImage.GridPreview.GridView.ItemView(0);
  v13 = (a4 + v12[5]);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  *(v13 + 26) = *(a2 + 26);
  v15 = a4 + v12[6];
  *v15 = v11;
  *(v15 + 8) = -1;
  *(v15 + 16) = 0;
  v16 = v12[7];
  *(a4 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd);
  return swift_storeEnumTagMultiPayload();
}

void specialized Sequence.dropLast(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v27 - v9;
  if (a1 < 0)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    v11 = *(a2 + 16);
    if (!v11)
    {
LABEL_24:

      return;
    }

    v12 = 0;
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v27[1] = a2;
    v14 = a2 + v13;
    v15 = *(v8 + 72);
    v16 = v11 - 1;
    v17 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
    v29 = v6;
    v30 = v13;
    v31 = v27 - v9;
    v28 = a1;
    while (1)
    {
      _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWOcTm_0(v14, v10, type metadata accessor for ArtworkImage.GridPreview.Item);
      v22 = v18[2];
      if (v22 < a1)
      {
        break;
      }

      if (v12 >= v22)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWOcTm_0(v18 + v13 + v15 * v12, v6, type metadata accessor for ArtworkImage.GridPreview.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
        v6 = v29;
        v17 = v33;
      }

      v17[2] = (v26 + 1);
      v13 = v30;
      _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWObTm_0(v6, v17 + v30 + v26 * v15, type metadata accessor for ArtworkImage.GridPreview.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v18);
      }

      v10 = v31;
      if (v12 >= v18[2])
      {
        goto LABEL_27;
      }

      outlined assign with take of ArtworkImage.GridPreview.Item(v31, v18 + v13 + v15 * v12++);
      a1 = v28;
      if (v12 < v28)
      {
        goto LABEL_8;
      }

      if (!v16)
      {
        goto LABEL_24;
      }

      v12 = 0;
LABEL_9:
      --v16;
      v14 += v15;
    }

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    if ((v23 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
      v6 = v29;
      v18 = v32;
    }

    v18[2] = (v20 + 1);
    v13 = v30;
    v21 = v18 + v30 + v20 * v15;
    v10 = v31;
    _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWObTm_0(v31, v21, type metadata accessor for ArtworkImage.GridPreview.Item);
LABEL_8:
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }
}

uint64_t ArtworkImage.GridPreview.GridView.ItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = type metadata accessor for ColorSchemeContrast();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  v56 = *(v6 - 8);
  v55 = *(v56 + 64);
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - v7;
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArtworkImage.ReusePolicy();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v17 = *(v16 + 20);
  v18 = *(v16 + 24);
  v50 = type metadata accessor for ArtworkImage.GridPreview.GridView.ItemView(0);
  v19 = (v2 + *(v50 + 20));
  v20 = *(v19 + 26);
  v21 = v19[1];
  v57 = *v19;
  v58[0] = v21;
  *(v58 + 10) = v20;
  (*(v13 + 104))(v15, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v12);
  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWOcTm_0(v2 + v18, v11, type metadata accessor for ArtworkImage.Placeholder);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWObTm_0(v11, v24 + v22, type metadata accessor for ArtworkImage.Placeholder);
  v25 = (v24 + v23);
  v26 = v58[0];
  *v25 = v57;
  v25[1] = v26;
  *(v25 + 26) = *(v58 + 10);
  v27 = v2 + v17;
  v28 = v52;
  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E4with_22placeholderViewBuilder4size11reusePolicyQrAcDE0J5ModelVSg_x0aB00E0VSg_So6CGSizeV0cD05ColorVtcAcDE4SizeVAC01_ab9Internal_cD0E05ReuseN0OtAR0J0RzlFZAR19_ConditionalContentVyAR08ModifiedV0VyA2_yAcDE11PlaceholderOAZVAR26_PreferenceWritingModifierVyAD016RadiosityEnabledY3KeyVGGAR12_FrameLayoutVGAR14GeometryReaderVyA14_GG_Tt4g5(v27, closure #1 in static ArtworkImage.with(_:placeholder:size:reusePolicy:)partial apply, v24, &v57, v15, v52);

  (*(v13 + 8))(v15, v12);
  v29 = v50;
  v30 = v2;
  specialized Environment.wrappedValue.getter(v5);
  v31 = v51;
  static ArtworkImage.Placeholder.View.Style.standard(with:)(v51);
  (*(v53 + 8))(v5, v54);
  v32 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMd) + 36));
  v34 = v28;
  v35 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v33 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11PlaceholderO4ViewV5StyleVSg_GMd);
  swift_storeEnumTagMultiPayload();
  v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v37 = swift_allocObject();
  outlined init with take of URL?(v31, v37 + v36, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd);
  *v33 = partial apply for closure #1 in PlaceholderStyleModifier.init(_:);
  v33[1] = v37;
  v38 = (v30 + *(v29 + 24));
  v39 = *v38;
  v40 = v38[1];
  v41 = *(v38 + 16);
  v42 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd) + 36);
  *v42 = v39;
  *(v42 + 8) = v40;
  *(v42 + 16) = v41;
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v43 = static Border.artwork;
  v44 = qword_10063F0B8;
  v45 = byte_10063F0C0;
  v46 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A14_LLVGMd) + 36);
  *v46 = v43;
  *(v46 + 8) = v44;
  *(v46 + 16) = v45;
  *(v46 + 24) = v39;
  *(v46 + 32) = v40;
  *(v46 + 40) = v41;

  static AnyTransition.opacity.getter();
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  AnyTransition.animation(_:)();

  static UnitPoint.center.getter();
  static AnyTransition.scale(scale:anchor:)();
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  AnyTransition.animation(_:)();

  static UnitPoint.center.getter();
  static AnyTransition.scale(scale:anchor:)();
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  AnyTransition.animation(_:)();

  static AnyTransition.asymmetric(insertion:removal:)();

  v47 = AnyTransition.combined(with:)();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A14_LLVGAA06_TraitrS0VyAA015TransitionTraitV0VGGMd);
  *(v34 + *(result + 36)) = v47;
  return result;
}

double protocol witness for View.body.getter in conformance ArtworkImage.GridPreview.GridView@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 58);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  ArtworkImage.GridPreview.GridView.itemSize.getter(v15);
  v5 = [objc_opt_self() tertiarySystemFillColor];
  v6 = Color.init(_:)();
  v7 = static Alignment.top.getter();
  v9 = v8;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_OverlayModifierVyACyAA9LazyVGridVyAA7ForEachVySay010_MusicKit_aB012ArtworkImageV0l4CoreB0E11GridPreviewO4ItemVG0lM00lS2IDVAQ0Q4View33_629ADA528219B6880875FC4697374C36LLV0sU0VGGAA14_PaddingLayoutVGGGMd) + 36);
  closure #1 in ArtworkImage.GridPreview.GridView.body.getter(v15, v17, v10);
  v11 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySay010_MusicKit_aB012ArtworkImageV0k4CoreB0E11GridPreviewO4ItemVG0kL00kR2IDVAO0P4View33_629ADA528219B6880875FC4697374C36LLV0rT0VGGAA14_PaddingLayoutVGGMd) + 36));
  *v11 = v7;
  v11[1] = v9;
  *a1 = v6;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA16_OverlayModifierVyACyAA9LazyVGridVyAA7ForEachVySay010_MusicKit_aB012ArtworkImageV0l4CoreB0E11GridPreviewO4ItemVG0lM00lS2IDVAQ0Q4View33_629ADA528219B6880875FC4697374C36LLV0sU0VGGAA14_PaddingLayoutVGGGAA12_FrameLayoutVGMd) + 36));
  v13 = v15[4];
  *v12 = v15[3];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

size_t _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation3URLVSg_Tg5_0(size_t result, int64_t a2, char a3, unint64_t a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVSgGMd_0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized static ArtworkImage.GridPreview.Item.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMd);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = v7;
  v22 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  outlined init with copy of TaskPriority?(a1 + v14, v13, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  outlined init with copy of TaskPriority?(a2 + v14, &v13[v15], &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
LABEL_12:
      v17 = specialized static ArtworkImage.Placeholder.__derived_enum_equals(_:_:)(a1 + *(v22 + 24), a2 + *(v22 + 24));
      return v17 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of TaskPriority?(v13, v10, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of ArtworkImage.ViewModel(v10);
LABEL_9:
    outlined destroy of TaskPriority?(v13, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSg_AGtMd);
    goto LABEL_10;
  }

  v18 = v21;
  _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWObTm_0(&v13[v15], v21, type metadata accessor for ArtworkImage.ViewModel);
  v19 = specialized static ArtworkImage.ViewModel.__derived_struct_equals(_:_:)(v10, v18);
  outlined destroy of ArtworkImage.ViewModel(v18);
  outlined destroy of ArtworkImage.ViewModel(v10);
  outlined destroy of TaskPriority?(v13, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

unint64_t lazy protocol witness table accessor for type MusicItemID and conformance MusicItemID()
{
  result = lazy protocol witness table cache variable for type MusicItemID and conformance MusicItemID;
  if (!lazy protocol witness table cache variable for type MusicItemID and conformance MusicItemID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicItemID and conformance MusicItemID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArtworkImage.GridPreview.Variant and conformance ArtworkImage.GridPreview.Variant()
{
  result = lazy protocol witness table cache variable for type ArtworkImage.GridPreview.Variant and conformance ArtworkImage.GridPreview.Variant;
  if (!lazy protocol witness table cache variable for type ArtworkImage.GridPreview.Variant and conformance ArtworkImage.GridPreview.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArtworkImage.GridPreview.Variant and conformance ArtworkImage.GridPreview.Variant);
  }

  return result;
}

uint64_t sub_10036D1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10036D304(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for ArtworkImage.GridPreview.Item()
{
  type metadata accessor for ArtworkImage.ViewModel?(319, &lazy cache variable for type metadata for ArtworkImage.ViewModel?, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect>, _OverlayModifier<ArtworkImage.GridPreview.GridView?>>, _AnimationModifier<ArtworkImage.GridPreview.ViewModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect>, _OverlayModifier<ArtworkImage.GridPreview.GridView?>>, _AnimationModifier<ArtworkImage.GridPreview.ViewModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect>, _OverlayModifier<ArtworkImage.GridPreview.GridView?>>, _AnimationModifier<ArtworkImage.GridPreview.ViewModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AA14_OpacityEffectVGAA08_OverlayS0VyAfTE11GridPreviewO04GridN033_629ADA528219B6880875FC4697374C36LLVSgGGAA010_AnimationS0VyA16_0N5ModelVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect>, _OverlayModifier<ArtworkImage.GridPreview.GridView?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _AnimationModifier<ArtworkImage.GridPreview.ViewModel?> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11GridPreviewO9ViewModelVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect>, _OverlayModifier<ArtworkImage.GridPreview.GridView?>>, _AnimationModifier<ArtworkImage.GridPreview.ViewModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect>, _OverlayModifier<ArtworkImage.GridPreview.GridView?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect>, _OverlayModifier<ArtworkImage.GridPreview.GridView?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect>, _OverlayModifier<ArtworkImage.GridPreview.GridView?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AA14_OpacityEffectVGAA08_OverlayS0VyAfTE11GridPreviewO04GridN033_629ADA528219B6880875FC4697374C36LLVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ArtworkImage.GridPreview.GridView?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVy010_MusicKit_aB012ArtworkImageV0e4CoreB0E11GridPreviewO0J4View33_629ADA528219B6880875FC4697374C36LLVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect>, _OverlayModifier<ArtworkImage.GridPreview.GridView?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AA14_OpacityEffectVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkImage.GridPreview.GridView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkImage.GridPreview.GridView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ArtworkImage.Placeholder.View and conformance ArtworkImage.Placeholder.View(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay010_MusicKit_aB012ArtworkImageV0e4CoreB0E11GridPreviewO4ItemVG0eF00eL2IDVAI0J4View33_629ADA528219B6880875FC4697374C36LLV0lN0VGMd);
    lazy protocol witness table accessor for type ArtworkImage.Placeholder.View and conformance ArtworkImage.Placeholder.View(&lazy protocol witness table cache variable for type ArtworkImage.GridPreview.GridView.ItemView and conformance ArtworkImage.GridPreview.GridView.ItemView, type metadata accessor for ArtworkImage.GridPreview.GridView.ItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t sub_10036D98C()
{

  return swift_deallocObject();
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of ArtworkImage.GridPreview.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ArtworkImage.ViewModel(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10036DB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20) + 41);
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20) + 41);
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10036DCC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20) + 41) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ColorSchemeContrastOGMd);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void type metadata completion function for ArtworkImage.GridPreview.GridView.ItemView()
{
  type metadata accessor for ArtworkImage.GridPreview.Item(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.ViewModel?(319, &lazy cache variable for type metadata for Environment<ColorSchemeContrast>, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ArtworkImage.ViewModel?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<LazyVGrid<ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView>>, _PaddingLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<LazyVGrid<ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView>>, _PaddingLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<LazyVGrid<ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView>>, _PaddingLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_OverlayModifierVyACyAA9LazyVGridVyAA7ForEachVySay010_MusicKit_aB012ArtworkImageV0l4CoreB0E11GridPreviewO4ItemVG0lM00lS2IDVAQ0Q4View33_629ADA528219B6880875FC4697374C36LLV0sU0VGGAA14_PaddingLayoutVGGGMd);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<LazyVGrid<ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView>>, _PaddingLayout>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA9LazyVGridVyAA7ForEachVySay010_MusicKit_aB012ArtworkImageV0k4CoreB0E11GridPreviewO4ItemVG0kL00kR2IDVAO0P4View33_629ADA528219B6880875FC4697374C36LLV0rT0VGGAA14_PaddingLayoutVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<LazyVGrid<ForEach<[ArtworkImage.GridPreview.Item], MusicItemID, ArtworkImage.GridPreview.GridView.ItemView>>, _PaddingLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10036E0C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + v2);
    }

    if (*(v3 + 64))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v3 + 40);
    }

    v5 = *(v4 + 24);
    v6 = type metadata accessor for BlendMode();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A14_LLVGAA06_TraitrS0VyAA015TransitionTraitV0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A14_LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BorderViewModifier and conformance BorderViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CornerRadiusModifier and conformance CornerRadiusModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

double HitMyRectButton.hitRect()()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HitMyRectButton();
  objc_msgSendSuper2(&v17, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  swift_beginAccess();
  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    v12 = *v9;
    v11 = v9[1];
    if ((v10 & 1) == 0)
    {
      v18.origin.x = v2;
      v18.origin.y = v4;
      v18.size.width = v6;
      v18.size.height = v8;
      Width = CGRectGetWidth(v18);
      if (Width > v12)
      {
        v12 = Width;
      }

      v19.origin.x = v2;
      v19.origin.y = v4;
      v19.size.width = v6;
      v19.size.height = v8;
      v14 = v12 - CGRectGetWidth(v19);
      v20.origin.x = v2;
      v20.origin.y = v4;
      v20.size.width = v6;
      v20.size.height = v8;
      Height = CGRectGetHeight(v20);
      if (Height > v11)
      {
        v11 = Height;
      }

      v21.origin.x = v2;
      v21.origin.y = v4;
      v21.size.width = v6;
      v21.size.height = v8;
      v12 = (v11 - CGRectGetHeight(v21)) * -0.5;
      v11 = v14 * -0.5;
    }

    return UIEdgeInsetsInsetRect(v2, v4, v6, v8, v12, v11);
  }

  return v2;
}

void *HitMyRectButton.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if ((UIViewIgnoresTouchEvents() & 1) != 0 || ![v3 pointInside:a1 withEvent:{a2, a3}])
  {
    return 0;
  }

  v7 = v3;
  return v3;
}

BOOL HitMyRectButton.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 hitRect];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

UIAccessibilityTraits HitMyRectButton.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HitMyRectButton();
  v1 = objc_msgSendSuper2(&v4, "accessibilityTraits");
  v2 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v1) == 0)
  {
    v2 = 0;
  }

  return v2 | v1;
}

id HitMyRectButton.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v4, "setAccessibilityTraits:", a1);
}

id HitMyRectButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = -1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HitMyRectButton();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id HitMyRectButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL HitMyRectStackView.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  if (*(v3 + v8) == 1)
  {
    [v3 bounds];
    v18.x = a2;
    v18.y = a3;
    return CGRectContainsPoint(v19, v18);
  }

  else
  {
    v17.receiver = v3;
    v17.super_class = ObjectType;
    if (objc_msgSendSuper2(&v17, "pointInside:withEvent:", a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v10 = [v3 arrangedSubviews];
      type metadata accessor for UIView();
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
LABEL_19:
        v12 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v12 != i; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v14 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v16 = [v15 pointInside:a1 withEvent:?];

        if (v16)
        {

          return 1;
        }
      }

      return 0;
    }
  }
}

id HitMyRectStackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectStackView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  return v4;
}

unint64_t type metadata accessor for UIView()
{
  result = _sSo6UIViewCML_0;
  if (!_sSo6UIViewCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo6UIViewCML_0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HitMyRectButton.HitRectAdjustment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t *UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor()
{
  if (one-time initialization token for profileImagePickerProperties != -1)
  {
    swift_once();
  }

  return &static UIImagePickerController.profileImagePickerProperties;
}

int *ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ImagePicker(0);
  v21 = (a9 + result[7]);
  v22 = result[9];
  v23 = (a9 + result[5]);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = a9 + result[6];
  *v24 = a4;
  *(v24 + 1) = a5;
  v24[16] = a6;
  v25 = a9 + result[8];
  *v25 = a7;
  *(v25 + 1) = a8;
  v25[16] = a10;
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v22) = a13;
  return result;
}

uint64_t ImagePicker.DummyImagePickerViewController.presentationSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController____lazy_storage___presentationSource;
  swift_beginAccess();
  _s9MusicCore18PresentationSourceVSgWOc_0(v1 + v3, v5);
  if (v6 != 1)
  {
    return outlined init with take of PresentationSource(v5, a1);
  }

  outlined destroy of TaskPriority?(v5, &_s9MusicCore18PresentationSourceVSgMd_0);
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = xmmword_1004F2ED0;
  PresentationSource.init(viewController:position:)(v1, v7, a1);
  outlined init with copy of PresentationSource(a1, v5);
  swift_beginAccess();
  outlined assign with take of PresentationSource?(v5, v1 + v3);
  return swift_endAccess();
}

id ImagePicker.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ImagePicker.DummyImagePickerViewController());

  return [v0 init];
}

void ImagePicker.updateUIViewController(_:context:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v7 = static PresentationSource.topmostPresentedViewController(from:options:)(a1, *v6);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild;
  v9 = [*&a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild] presentedViewController];
  if (!v9)
  {
    v10 = *&a1[v8];
    if (!v10)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_5;
    }

    v9 = v10;
  }

  type metadata accessor for UIAction(0, &_sSo16UIViewControllerCML_0);
  v11 = v7;
  v12 = v9;
  v13 = static NSObject.== infix(_:_:)();

LABEL_5:
  v14 = v3 + *(type metadata accessor for ImagePicker(0) + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v14) = *(v14 + 16);
  v22[0] = v15;
  v22[1] = v16;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.wrappedValue.getter();
  if (v24 != 1 || (v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress, (a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress] & 1) != 0) || (v13 & 1) != 0)
  {
  }

  else
  {
    v18 = closure #1 in ImagePicker.updateUIViewController(_:context:)(v3, a2, a1);
    a1[v17] = 1;
    ImagePicker.DummyImagePickerViewController.presentationSource.getter(v22);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v18;
    v20 = a1;
    v21 = v18;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v21, 1, 1, partial apply for closure #2 in ImagePicker.updateUIViewController(_:context:), v19);

    outlined destroy of PresentationSource(v22);
  }
}

id closure #1 in ImagePicker.updateUIViewController(_:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v59 = a2;
  v5 = type metadata accessor for ImagePlaygroundStyle();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for PHPickerConfiguration.AssetRepresentationMode();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PhotosUI14PHPickerFilterVSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - v10;
  v12 = type metadata accessor for PHPickerConfiguration();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v52 - v16;
  v58 = type metadata accessor for UTType();
  v18 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ImagePicker(0);
  v22 = *(v21 + 24);
  v57 = a1;
  v23 = a1 + v22;
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v23) = *(v23 + 16);
  v61 = v24;
  v62 = v25;
  v63 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB011ImagePickerV10SourceTypeOGMd);
  Binding.wrappedValue.getter();
  if (v60 <= 1u)
  {
    if (!v60)
    {
      v26 = [objc_allocWithZone(UIImagePickerController) init];
      [v26 setSourceType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy09MusicCoreB011ImagePickerVGMd);
      UIViewControllerRepresentableContext.coordinator.getter();
      v27 = v61;
      [v26 setDelegate:v61];

      [v26 setAllowsEditing:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1004F2400;
      static UTType.image.getter();
      v29 = UTType.identifier.getter();
      v31 = v30;
      (*(v18 + 8))(v20, v58);
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v26 setMediaTypes:isa];

      v33._rawValue = *(v57 + *(v21 + 36));
      if (v33._rawValue)
      {
        UIImagePickerController.setProperties(_:)(v33);
      }

      return v26;
    }

    result = [a3 view];
    if (result)
    {
      v40 = result;
      v41 = [objc_opt_self() clearColor];
      [v40 setBackgroundColor:v41];

      v42 = [objc_opt_self() sharedPhotoLibrary];
      PHPickerConfiguration.init(photoLibrary:)();
      static PHPickerFilter.images.getter();
      v43 = type metadata accessor for PHPickerFilter();
      (*(*(v43 - 8) + 56))(v11, 0, 1, v43);
      PHPickerConfiguration.filter.setter();
      (*(v53 + 104))(v8, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v54);
      PHPickerConfiguration.preferredAssetRepresentationMode.setter();
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for PHPickerViewController);
      v45 = v55;
      v44 = v56;
      (*(v55 + 16))(v14, v17, v56);
      v46 = PHPickerViewController.init(configuration:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy09MusicCoreB011ImagePickerVGMd);
      UIViewControllerRepresentableContext.coordinator.getter();
      lazy protocol witness table accessor for type UIImagePickerControllerInfoKey and conformance UIImagePickerControllerInfoKey(&lazy protocol witness table cache variable for type ImagePicker.Coordinator and conformance ImagePicker.Coordinator, type metadata accessor for ImagePicker.Coordinator);
      PHPickerViewController.delegate.setter();
      v26 = v46;
      v47 = [v26 presentationController];
      if (v47)
      {
        v48 = v47;
        UIViewControllerRepresentableContext.coordinator.getter();
        v49 = v61;
        [v48 setDelegate:v61];
      }

      (*(v45 + 8))(v17, v44);
      return v26;
    }

    goto LABEL_16;
  }

  if (v60 == 2)
  {
    result = [a3 view];
    if (!result)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v35 = result;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd);
    *(swift_allocObject() + 16) = xmmword_1004F2400;
    static UTType.image.getter();
    v37 = objc_allocWithZone(UIDocumentPickerViewController);
    v38 = Array._bridgeToObjectiveC()().super.isa;

    v26 = [v37 initForOpeningContentTypes:v38 asCopy:1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy09MusicCoreB011ImagePickerVGMd);
    UIViewControllerRepresentableContext.coordinator.getter();
    v39 = v61;
    [v26 setDelegate:v61];

    [v26 _setAutomaticallyDismissesAfterCompletion:0];
    return v26;
  }

  result = [a3 view];
  if (result)
  {
    v50 = result;
    v51 = [objc_opt_self() clearColor];
    [v50 setBackgroundColor:v51];

    type metadata accessor for ImagePlaygroundViewController();
    v26 = ImagePlaygroundViewController.__allocating_init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy09MusicCoreB011ImagePickerVGMd);
    UIViewControllerRepresentableContext.coordinator.getter();
    dispatch thunk of ImagePlaygroundViewController.delegate.setter();
    static ImagePlaygroundStyle.illustration.getter();
    dispatch thunk of ImagePlaygroundViewController.selectedGenerationStyle.setter();
    return v26;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIImagePickerController.setProperties(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = [v1 _properties];
  if (v4)
  {
    v5 = v4;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = 1 << *(a1._rawValue + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1._rawValue + 8);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v13 = v6;
    if (!v9)
    {
      break;
    }

    v14 = v9;
LABEL_14:
    v6 = 0;
    v9 = (v14 - 1) & v14;
    if (v13)
    {
      v16 = __clz(__rbit64(v14)) | (v11 << 6);
      v17 = *(*(a1._rawValue + 7) + v16);
      v18 = *(*(a1._rawValue + 6) + 16 * v16 + 8);
      *&v35 = *(*(a1._rawValue + 6) + 16 * v16);
      *(&v35 + 1) = v18;

      AnyHashable.init<A>(_:)();
      v36 = &type metadata for Bool;
      LOBYTE(v35) = v17;
      outlined init with take of Any(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v13;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
      v22 = v13[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v26 = v21;
      if (v13[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v31 = v20;
        _ss17_NativeDictionaryV4copyyyFs11AnyHashableV_ypTg5_0();
        v20 = v31;
        v6 = v13;
        if (v26)
        {
          goto LABEL_7;
        }

LABEL_21:
        v6[(v20 >> 6) + 8] |= 1 << v20;
        v28 = v20;
        outlined init with copy of AnyHashable(v37, v6[6] + 40 * v20);
        outlined init with take of Any(v34, (v6[7] + 32 * v28));
        outlined destroy of AnyHashable(v37);
        v29 = v6[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_31;
        }

        v6[2] = v30;
      }

      else
      {
        _ss17_NativeDictionaryV20_copyOrMoveAndResize8capacity12moveElementsySi_SbtFs11AnyHashableV_ypTg5_0(v25, isUniquelyReferenced_nonNull_native);
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_32;
        }

LABEL_20:
        v6 = v13;
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_7:
        v12 = (v6[7] + 32 * v20);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        outlined init with take of Any(v34, v12);
        outlined destroy of AnyHashable(v37);
      }
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v15 >= v10)
    {
      break;
    }

    v14 = *(a1._rawValue + v15 + 8);
    ++v11;
    if (v14)
    {
      v11 = v15;
      goto LABEL_14;
    }
  }

  if (v6)
  {
    v32.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v32.super.isa = 0;
  }

  [v2 _setProperties:{v32.super.isa, v33}];
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController _, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    goto LABEL_8;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(UIImagePickerControllerEditedImage);
  if (v13)
  {
    outlined init with copy of Any(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v12, &v59);
    outlined init with take of Any(&v59, &v61);
    goto LABEL_9;
  }

  v14 = *(didFinishPickingMediaWithInfo._rawValue + 2);
  v59 = 0u;
  v60 = 0u;
  if (v14 && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(UIImagePickerControllerOriginalImage), (v16 & 1) != 0))
  {
    outlined init with copy of Any(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v15, &v61);
    if (*(&v60 + 1))
    {
      outlined destroy of TaskPriority?(&v59, &_sypSgMd_1);
    }
  }

  else
  {
LABEL_8:
    v61 = 0u;
    v62 = 0u;
  }

LABEL_9:
  if (!*(&v62 + 1))
  {
    outlined destroy of TaskPriority?(&v61, &_sypSgMd_1);
LABEL_16:
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v29._countAndFlagsBits = 0xD00000000000002ALL;
    v29._object = 0x80000001004D2B20;
    String.append(_:)(v29);
    type metadata accessor for UIImagePickerControllerInfoKey(0);
    lazy protocol witness table accessor for type UIImagePickerControllerInfoKey and conformance UIImagePickerControllerInfoKey(&lazy protocol witness table cache variable for type UIImagePickerControllerInfoKey and conformance UIImagePickerControllerInfoKey, type metadata accessor for UIImagePickerControllerInfoKey);
    v30._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v30);

    v31._object = 0x80000001004D2B50;
    v31._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v31);
    v32 = *(&v61 + 1);
    v33 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v33)
    {
      v34 = v61;
      lazy protocol witness table accessor for type ImagePicker.Coordinator.ImagePickerError and conformance ImagePicker.Coordinator.ImagePickerError();
      v35 = swift_allocError();
      *v36 = v34;
      v36[1] = v32;

      v33(v35, 1);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v33);
    }

    else
    {
    }

    return;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIImage);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = v59;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    v37 = v59;
LABEL_20:
    v27 = 0uLL;
    v26 = 1;
    v28 = 0uLL;
    goto LABEL_21;
  }

  v18 = v59;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(UIImagePickerControllerCropRect);
  if ((v20 & 1) == 0)
  {
    goto LABEL_20;
  }

  outlined init with copy of Any(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v19, &v61);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSValue);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v21 = v59;
  [v59 CGRectValue];
  v55 = v22;
  v56 = v23;
  v54 = v24;
  v57 = v25;

  *&v28 = v54;
  *&v27 = v55;
  v26 = 0;
  *(&v27 + 1) = v56;
  *(&v28 + 1) = v57;
LABEL_21:
  v61 = v27;
  v62 = v28;
  v63 = v26;
  v38 = UIImage.centerCropIfNeeded(imageRect:)(&v61);

  v39 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v39)
  {

    v39(v38, 0);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v39);
  }

  v40 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  outlined init with copy of ImagePicker(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v11);
  v41 = &v11[*(v6 + 24)];
  v42 = *v41;
  v43 = *(v41 + 1);
  LOBYTE(v41) = v41[16];
  *&v59 = v42;
  *(&v59 + 1) = v43;
  LOBYTE(v60) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB011ImagePickerV10SourceTypeOGMd);
  Binding.wrappedValue.getter();
  v44 = v58;
  outlined destroy of ImagePicker(v11);
  if ((v44 - 1) > 2)
  {
    outlined init with copy of ImagePicker(v3 + v40, v8);
    v51 = &v8[*(v6 + 32)];
    v52 = *v51;
    v53 = *(v51 + 1);
    LOBYTE(v51) = v51[16];
    *&v59 = v52;
    *(&v59 + 1) = v53;
    LOBYTE(v60) = v51;
    v58 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    Binding.wrappedValue.setter();
    [(objc_class *)_.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];

    goto LABEL_28;
  }

  v45 = [(objc_class *)_.super.super.super.super.isa presentingViewController];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 presentingViewController];

    if (v47)
    {
      outlined init with copy of ImagePicker(v3 + v40, v8);
      v48 = &v8[*(v6 + 32)];
      v49 = *v48;
      v50 = *(v48 + 1);
      LOBYTE(v48) = v48[16];
      *&v59 = v49;
      *(&v59 + 1) = v50;
      LOBYTE(v60) = v48;
      v58 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
      Binding.wrappedValue.setter();
      [v47 dismissViewControllerAnimated:1 completion:0];

LABEL_28:
      outlined destroy of ImagePicker(v8);
      return;
    }
  }
}

id UIImage.centerCropIfNeeded(imageRect:)(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  if ((static ApproximatelyEquatable.!=~ infix(_:_:)() & 1) == 0 || vabdd_f64(1.0, v3 / v5) <= 0.05 || (result = UIImage.byCroppingToUniformCenter()()) == 0)
  {

    return v7;
  }

  return result;
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerControllerDidCancel(_:)(UIImagePickerController a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)a1.super.super.super.super.isa presentingViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      v12 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier + 8);
      if (v12)
      {
        v13 = *v11;
        v14 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1004F2400;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v14 deselectAssetsWithIdentifiers:isa];

        *v11 = 0;
        v11[1] = 0;

        [v14 setModalInPresentation:0];
      }
    }
  }

  v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  outlined init with copy of ImagePicker(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v18 = &v7[*(v4 + 24)];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v26 = v19;
  v27 = v20;
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB011ImagePickerV10SourceTypeOGMd);
  Binding.wrappedValue.getter();
  v21 = HIBYTE(v25);
  outlined destroy of ImagePicker(v7);
  if (v21)
  {
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    outlined init with copy of ImagePicker(v2 + v17, v7);
    v22 = &v7[*(v4 + 32)];
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v22) = v22[16];
    v26 = v23;
    v27 = v24;
    v28 = v22;
    HIBYTE(v25) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    Binding.wrappedValue.setter();
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    outlined destroy of ImagePicker(v7);
  }
}

Swift::Void __swiftcall ImagePicker.Coordinator.picker(_:didFinishPicking:)(PHPickerViewController _, Swift::OpaquePointer didFinishPicking)
{
  v5 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PHPickerResult();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for UTType();
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didFinishPicking._rawValue + 2))
  {
    v16 = *(v9 + 80);
    v17 = v2;
    isa = _.super.super.super.isa;
    v30 = v13;
    v18 = (v16 + 32) & ~v16;
    v31 = v12;
    v19 = PHPickerResult.itemProvider.getter();
    static UTType.image.getter();
    (*(v9 + 16))(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), didFinishPicking._rawValue + v18, v8);
    v20 = swift_allocObject();
    v21 = isa;
    *(v20 + 16) = v17;
    *(v20 + 24) = v21;
    (*(v9 + 32))(v20 + v18, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v22 = v17;
    v23 = v21;
    v24 = NSItemProvider.loadDataRepresentation(for:completionHandler:)();

    (*(v30 + 8))(v15, v31);
  }

  else
  {
    outlined init with copy of ImagePicker(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
    v25 = &v7[*(v5 + 32)];
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(v25) = v25[16];
    v33 = v26;
    v34 = v27;
    v35 = v25;
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
    Binding.wrappedValue.setter();
    [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    outlined destroy of ImagePicker(v7);
  }
}

uint64_t closure #1 in ImagePicker.Coordinator.picker(_:didFinishPicking:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v30 = a5;
  v11 = type metadata accessor for PHPickerResult();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v12 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  type metadata accessor for MainActor();
  v18 = a1;
  v19 = a2;
  outlined copy of Data?(a1, a2);
  v20 = a3;
  swift_errorRetain();
  v21 = a4;
  v22 = v30;
  v23 = static MainActor.shared.getter();
  v24 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v23;
  *(v25 + 3) = &protocol witness table for MainActor;
  *(v25 + 4) = v18;
  *(v25 + 5) = v19;
  *(v25 + 6) = v20;
  *(v25 + 7) = v21;
  *(v25 + 8) = v22;
  (*(v12 + 32))(&v25[v24], v29, v28);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v16, &async function pointer to partial apply for closure #1 in closure #1 in ImagePicker.Coordinator.picker(_:didFinishPicking:), v25);
}

uint64_t closure #1 in closure #1 in ImagePicker.Coordinator.picker(_:didFinishPicking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in ImagePicker.Coordinator.picker(_:didFinishPicking:), v10, v9);
}

uint64_t closure #1 in closure #1 in ImagePicker.Coordinator.picker(_:didFinishPicking:)()
{
  v1 = *(v0 + 32);

  if (v1 >> 60 != 15)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = objc_allocWithZone(UIImage);
    outlined copy of Data._Representation(v3, v2);
    outlined copy of Data._Representation(v3, v2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = [v4 initWithData:isa];

    outlined consume of Data?(v3, v2);
    if (v6)
    {
      v7 = *(v0 + 48);
      v8 = PHPickerResult.assetIdentifier.getter();
      v9 = (v7 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      *v9 = v8;
      v9[1] = v10;

      v11 = UIImagePNGRepresentation(v6);
      if (v11)
      {
        v12 = v11;
        v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = UIImage.centeredSquareCropRect.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        type metadata accessor for ImageEditingViewController();
        v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v24 = Data._bridgeToObjectiveC()().super.isa;
        v25 = [v23 _initWithSourceImageData:v24 cropRect:{v16, v18, v20, v22}];

        if (v25)
        {
          v26 = *(v0 + 48);
          [v25 setDelegate:v26];
          [v25 setModalInPresentation:1];
          v27 = v26 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
          if (*(v27 + *(type metadata accessor for ImagePicker(0) + 36)))
          {

            UIImagePickerController.setProperties(_:)(v28);
          }

          v30 = *(v0 + 24);
          v29 = *(v0 + 32);
          [*(v0 + 56) presentViewController:v25 animated:1 completion:0];
          [v25 becomeFirstResponder];
          outlined consume of Data?(v30, v29);
        }

        else
        {
          outlined consume of Data?(*(v0 + 24), *(v0 + 32));
        }

        outlined consume of Data._Representation(v13, v15);
      }

      else
      {
        outlined consume of Data?(*(v0 + 24), *(v0 + 32));
      }

      goto LABEL_17;
    }

    outlined consume of Data?(*(v0 + 24), *(v0 + 32));
  }

  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  _StringGuts.grow(_:)(49);

  *(v0 + 16) = v31;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd_0);
  v33._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v33);

  v34 = *(v32 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v34)
  {
    lazy protocol witness table accessor for type ImagePicker.Coordinator.ImagePickerError and conformance ImagePicker.Coordinator.ImagePickerError();
    v35 = swift_allocError();
    *v36 = 0xD00000000000002FLL;
    v36[1] = 0x80000001004D2E50;

    v34(v35, 1);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v34);
  }

  else
  {
  }

  v37 = *(v0 + 56);
  v38 = ImagePicker.Coordinator.downloadFailureAlertController.getter();
  [v37 presentViewController:v38 animated:1 completion:0];

  v39 = PHPickerResult.assetIdentifier.getter();
  if (v40)
  {
    v41 = v39;
    v42 = v40;
    v43 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1004F2400;
    *(v44 + 32) = v41;
    *(v44 + 40) = v42;
    v45 = Array._bridgeToObjectiveC()().super.isa;

    [v43 deselectAssetsWithIdentifiers:v45];
  }

LABEL_17:
  v46 = *(v0 + 8);

  return v46();
}

double UIImage.centeredSquareCropRect.getter()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  [v0 size];
  v6 = v5;
  [v0 size];
  v8 = v7;
  [v0 size];
  v10 = v9;
  v12 = v11;
  [v0 size];
  v14 = (v10 - v13) * 0.5 + 0.0;
  v16 = (v12 - v15) * 0.5 + 0.0;
  if (v6 < v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (v6 < v8)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  if (v4 >= v2)
  {
    v19 = v2;
  }

  else
  {
    v19 = v4;
  }

  v20 = v19;
  v26 = CGRectIntegral(*(&v17 - 1));
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGRectGetHeight(v27);
  return x;
}

Swift::Void __swiftcall ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController _, Swift::OpaquePointer didPickDocumentsAt)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin(v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didPickDocumentsAt._rawValue + 2))
  {
    isa = _.super.super.super.isa;
    (*(v10 + 16))(v13, didPickDocumentsAt._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9, v11);
    URL.path.getter();
    v14 = objc_allocWithZone(UIImage);
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 initWithContentsOfFile:v15];

    if (v16)
    {
      v17 = [(objc_class *)isa view];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      [v17 endEditing:1];

      v19 = UIImagePNGRepresentation(v16);
      if (v19)
      {
        v20 = v19;
        v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = UIImage.centeredSquareCropRect.getter();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        type metadata accessor for ImageEditingViewController();
        v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v32 = Data._bridgeToObjectiveC()().super.isa;
        v33 = [v31 _initWithSourceImageData:v32 cropRect:{v24, v26, v28, v30}];

        if (v33)
        {
          [v33 setDelegate:v3];
          [v33 setModalInPresentation:1];
          if (*(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v6 + 36)))
          {

            UIImagePickerController.setProperties(_:)(v34);
          }

          [(objc_class *)isa presentViewController:v33 animated:1 completion:0];

          outlined consume of Data._Representation(v21, v23);
          (*(v10 + 8))(v13, v9);
          return;
        }

        (*(v10 + 8))(v13, v9);
        outlined consume of Data._Representation(v21, v23);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
      }

      return;
    }

    (*(v10 + 8))(v13, v9);
    _.super.super.super.isa = isa;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v35._countAndFlagsBits = 0xD000000000000025;
  v35._object = 0x80000001004D2B70;
  String.append(_:)(v35);
  v36._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v36);

  v37._object = 0x80000001004D2BA0;
  v37._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v37);
  v38 = v50;
  v39 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v39)
  {
    v40 = v49;
    lazy protocol witness table accessor for type ImagePicker.Coordinator.ImagePickerError and conformance ImagePicker.Coordinator.ImagePickerError();
    v41 = swift_allocError();
    *v42 = v40;
    v42[1] = v38;

    v39(v41, 1);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v39);
  }

  else
  {
  }

  outlined init with copy of ImagePicker(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v43 = &v8[*(v6 + 32)];
  v44 = *v43;
  v45 = *(v43 + 1);
  LOBYTE(v43) = v43[16];
  v49 = v44;
  v50 = v45;
  v51 = v43;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.wrappedValue.setter();
  [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  outlined destroy of ImagePicker(v8);
}