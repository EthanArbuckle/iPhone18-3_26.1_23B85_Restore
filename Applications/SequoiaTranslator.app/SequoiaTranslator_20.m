uint64_t sub_100230A28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = type metadata accessor for AutomaticNavigationSplitViewStyle();
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100005AD4(&qword_1003B98D8);
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v29 - v5;
  v32 = sub_100005AD4(&qword_1003B98E0);
  __chkstk_darwin(v32);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ProminentDetailNavigationSplitViewStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100005AD4(&qword_1003B98E8);
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = &v29 - v14;
  if (a1)
  {
    static NavigationSplitViewStyle<>.prominentDetail.getter();
    v16 = sub_100005AD4(&qword_1003B97A8);
    v17 = sub_10001BAEC(&qword_1003B98F0, &qword_1003B97A8);
    v18 = sub_100233190(&qword_1003B9900, &type metadata accessor for ProminentDetailNavigationSplitViewStyle);
    View.navigationSplitViewStyle<A>(_:)();
    (*(v10 + 8))(v12, v9);
    v19 = v33;
    (*(v13 + 16))(v8, v15, v33);
    swift_storeEnumTagMultiPayload();
    v37 = v16;
    v38 = v9;
    v39 = v17;
    v40 = v18;
    swift_getOpaqueTypeConformance2();
    v20 = sub_100233190(&qword_1003B98F8, &type metadata accessor for AutomaticNavigationSplitViewStyle);
    v37 = v16;
    v38 = v34;
    v39 = v17;
    v40 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v15, v19);
  }

  else
  {
    static NavigationSplitViewStyle<>.automatic.getter();
    v22 = sub_100005AD4(&qword_1003B97A8);
    v23 = sub_10001BAEC(&qword_1003B98F0, &qword_1003B97A8);
    v24 = sub_100233190(&qword_1003B98F8, &type metadata accessor for AutomaticNavigationSplitViewStyle);
    v25 = v34;
    View.navigationSplitViewStyle<A>(_:)();
    (*(v30 + 8))(v4, v25);
    v26 = v31;
    v27 = v35;
    (*(v31 + 16))(v8, v6, v35);
    swift_storeEnumTagMultiPayload();
    v28 = sub_100233190(&qword_1003B9900, &type metadata accessor for ProminentDetailNavigationSplitViewStyle);
    v37 = v22;
    v38 = v9;
    v39 = v23;
    v40 = v28;
    swift_getOpaqueTypeConformance2();
    v37 = v22;
    v38 = v25;
    v39 = v23;
    v40 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v26 + 8))(v6, v27);
  }
}

uint64_t sub_100231014@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v129 = a3;
  v106 = a1;
  v134 = a4;
  v126 = sub_100005AD4(&qword_1003B9918);
  __chkstk_darwin(v126);
  v6 = &v103 - v5;
  v133 = sub_100005AD4(&qword_1003B9898);
  __chkstk_darwin(v133);
  v128 = &v103 - v7;
  v127 = type metadata accessor for FavoritesDetailView();
  __chkstk_darwin(v127);
  v9 = (&v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = type metadata accessor for FavoritesView();
  __chkstk_darwin(v119);
  v11 = (&v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = sub_100005AD4(&qword_1003B9920);
  __chkstk_darwin(v116);
  v117 = &v103 - v12;
  v125 = sub_100005AD4(&qword_1003B9878);
  __chkstk_darwin(v125);
  v120 = &v103 - v13;
  v109 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ConversationView();
  __chkstk_darwin(v115);
  v16 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = sub_100005AD4(&qword_1003B9928);
  v111 = *(v118 - 8);
  __chkstk_darwin(v118);
  v110 = &v103 - v17;
  v113 = sub_100005AD4(&qword_1003B9858);
  __chkstk_darwin(v113);
  v19 = &v103 - v18;
  v114 = sub_100005AD4(&qword_1003B9930);
  v105 = *(v114 - 8);
  __chkstk_darwin(v114);
  v104 = &v103 - v20;
  v130 = sub_100005AD4(&qword_1003B9938);
  __chkstk_darwin(v130);
  v132 = &v103 - v21;
  v121 = sub_100005AD4(&qword_1003B9940);
  __chkstk_darwin(v121);
  v123 = &v103 - v22;
  v23 = sub_100005AD4(&qword_1003B9948);
  __chkstk_darwin(v23);
  v25 = &v103 - v24;
  v122 = sub_100005AD4(&qword_1003B9848);
  __chkstk_darwin(v122);
  v112 = &v103 - v26;
  v131 = sub_100005AD4(&qword_1003B9838);
  __chkstk_darwin(v131);
  v124 = &v103 - v27;
  v28 = type metadata accessor for TranslateContentView();
  __chkstk_darwin(v28);
  v30 = (&v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 2)
  {
    if ((a2 - 5) < 2 || a2 == 3)
    {
      goto LABEL_14;
    }

    if (a2 != 4)
    {
LABEL_15:
      v97 = *(v129[8] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
      v99 = v129[6];
      v98 = v129[7];
      v100 = *(v129[9] + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
      *(v9 + *(v127 + 36)) = swift_getKeyPath();
      sub_100005AD4(&qword_1003B23E0);
      swift_storeEnumTagMultiPayload();
      v101 = v106;
      *v9 = v106;
      v9[1] = a2;
      v9[2] = v99;
      v9[3] = v98;
      v9[4] = v97;
      v9[5] = v100;
      sub_1002331D8(v9, v6, type metadata accessor for FavoritesDetailView);
      swift_storeEnumTagMultiPayload();
      sub_100233170(v101, a2);
      sub_100233190(&qword_1003B98A0, type metadata accessor for FavoritesDetailView);

      v102 = v128;
      _ConditionalContent<>.init(storage:)();
      sub_10001F620(v102, v132, &qword_1003B9898);
      swift_storeEnumTagMultiPayload();
      sub_100232CE0();
      sub_100233044();
      _ConditionalContent<>.init(storage:)();
      sub_100009EBC(v102, &qword_1003B9898);
      v64 = type metadata accessor for FavoritesDetailView;
      v65 = v9;
      return sub_100233240(v65, v64);
    }

    v57 = *(v129[8] + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_session);
    v58 = *(v129[9] + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
    v60 = v129[6];
    v59 = v129[7];
    *(v11 + *(v119 + 32)) = swift_getKeyPath();
    sub_100005AD4(&qword_1003B23E0);
    swift_storeEnumTagMultiPayload();
    *v11 = v60;
    v11[1] = v57;
    v11[2] = v58;
    v11[3] = v59;
    sub_1002331D8(v11, v117, type metadata accessor for FavoritesView);
    swift_storeEnumTagMultiPayload();
    v61 = sub_100233190(&qword_1003B9880, type metadata accessor for ConversationView);

    *&v135 = v115;
    *(&v135 + 1) = v61;
    swift_getOpaqueTypeConformance2();
    sub_100233190(&qword_1003B9888, type metadata accessor for FavoritesView);
    v62 = v120;
    _ConditionalContent<>.init(storage:)();
    sub_10001F620(v62, v123, &qword_1003B9878);
    swift_storeEnumTagMultiPayload();
    sub_100232D6C();
    sub_100232F28();
    v63 = v124;
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v62, &qword_1003B9878);
    sub_10001F620(v63, v132, &qword_1003B9838);
    swift_storeEnumTagMultiPayload();
    sub_100232CE0();
    sub_100233044();
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v63, &qword_1003B9838);
    v64 = type metadata accessor for FavoritesView;
    v65 = v11;
  }

  else
  {
    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          v31 = v129[9];
          v32 = *&v31[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper];
          KeyPath = swift_getKeyPath();
          v34 = v115;
          *(v16 + *(v115 + 24)) = KeyPath;
          sub_100005AD4(&qword_1003B23E0);
          swift_storeEnumTagMultiPayload();
          *(v16 + v34[7]) = swift_getKeyPath();
          sub_100005AD4(&qword_1003AEFE0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for SharedTranslationOptions();
          sub_100233190(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
          v35 = v31;

          *v16 = EnvironmentObject.init()();
          v16[1] = v36;
          type metadata accessor for SceneContext();
          sub_100233190(&qword_1003AC860, type metadata accessor for SceneContext);
          v16[2] = EnvironmentObject.init()();
          v16[3] = v37;
          v38 = (v16 + v34[8]);
          type metadata accessor for ConversationViewModel();
          sub_100233190(&qword_1003AE4F8, type metadata accessor for ConversationViewModel);
          *v38 = ObservedObject.init(wrappedValue:)();
          v38[1] = v39;
          *(v16 + v34[9]) = v32;
          v40 = (v16 + v34[10]);
          type metadata accessor for LanguagesService();
          sub_100233190(&unk_1003ABC30, &type metadata accessor for LanguagesService);
          *v40 = ObservedObject.init(wrappedValue:)();
          v40[1] = v41;
          v42 = (v16 + v34[11]);
          type metadata accessor for TranslationSession_RD();
          sub_100233190(&qword_1003AEF10, type metadata accessor for TranslationSession_RD);
          *v42 = ObservedObject.init(wrappedValue:)();
          v42[1] = v43;
          v44 = v16 + v34[12];
          LOBYTE(v138) = 0;
          State.init(wrappedValue:)();
          v45 = *(&v135 + 1);
          *v44 = v135;
          *(v44 + 1) = v45;
          v46 = v34[13];
          v138 = 0;
          State.init(wrappedValue:)();
          *(v16 + v46) = v135;
          v47 = v108;
          v48 = v107;
          v49 = v109;
          (*(v108 + 104))(v107, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v109);
          v50 = sub_100233190(&qword_1003B9880, type metadata accessor for ConversationView);
          v51 = v110;
          View.navigationBarTitleDisplayMode(_:)();
          (*(v47 + 8))(v48, v49);
          sub_100233240(v16, type metadata accessor for ConversationView);
          v52 = v111;
          v53 = v118;
          (*(v111 + 16))(v117, v51, v118);
          swift_storeEnumTagMultiPayload();
          *&v135 = v34;
          *(&v135 + 1) = v50;
          swift_getOpaqueTypeConformance2();
          sub_100233190(&qword_1003B9888, type metadata accessor for FavoritesView);
          v54 = v120;
          _ConditionalContent<>.init(storage:)();
          sub_10001F620(v54, v123, &qword_1003B9878);
          swift_storeEnumTagMultiPayload();
          sub_100232D6C();
          sub_100232F28();
          v55 = v124;
          _ConditionalContent<>.init(storage:)();
          sub_100009EBC(v54, &qword_1003B9878);
          sub_10001F620(v55, v132, &qword_1003B9838);
          swift_storeEnumTagMultiPayload();
          sub_100232CE0();
          sub_100233044();
          _ConditionalContent<>.init(storage:)();
          sub_100009EBC(v55, &qword_1003B9838);
          return (*(v52 + 8))(v51, v53);
        }

        goto LABEL_15;
      }

      if (sub_100003688())
      {
        v136 = &type metadata for TranslateFeatures;
        v137 = sub_100009DF8();
        LOBYTE(v135) = 0;
        v78 = isFeatureEnabled(_:)();
        sub_100008664(&v135);
        if (v78)
        {
          sub_10011C1DC(v19);
          v79 = static SafeAreaRegions.all.getter();
          v80 = static Edge.Set.horizontal.getter();
          v81 = v113;
          v82 = &v19[*(v113 + 36)];
          *v82 = v79;
          v82[8] = v80;
          v83 = sub_100232E6C();
          v84 = v104;
          View.navigationBarHidden(_:)();
          sub_100009EBC(v19, &qword_1003B9858);
          v85 = v105;
          v86 = v84;
          v87 = v114;
          (*(v105 + 16))(v25, v84, v114);
          swift_storeEnumTagMultiPayload();
          sub_100233190(&qword_1003B9850, type metadata accessor for TranslateContentView);
          *&v135 = v81;
          *(&v135 + 1) = v83;
          swift_getOpaqueTypeConformance2();
          v88 = v112;
          _ConditionalContent<>.init(storage:)();
          sub_10001F620(v88, v123, &qword_1003B9848);
          swift_storeEnumTagMultiPayload();
          sub_100232D6C();
          sub_100232F28();
          v89 = v124;
          _ConditionalContent<>.init(storage:)();
          sub_100009EBC(v88, &qword_1003B9848);
          sub_10001F620(v89, v132, &qword_1003B9838);
          swift_storeEnumTagMultiPayload();
          sub_100232CE0();
          sub_100233044();
          _ConditionalContent<>.init(storage:)();
          sub_100009EBC(v89, &qword_1003B9838);
          return (*(v85 + 8))(v86, v87);
        }
      }

LABEL_14:
      LocalizedStringKey.init(stringLiteral:)();
      v90 = Text.init(_:tableName:bundle:comment:)();
      v92 = v91;
      *v6 = v90;
      *(v6 + 1) = v91;
      v94 = v93 & 1;
      v6[16] = v93 & 1;
      *(v6 + 3) = v95;
      swift_storeEnumTagMultiPayload();
      sub_100005B1C(v90, v92, v94);
      sub_100233190(&qword_1003B98A0, type metadata accessor for FavoritesDetailView);

      v96 = v128;
      _ConditionalContent<>.init(storage:)();
      sub_10001F620(v96, v132, &qword_1003B9898);
      swift_storeEnumTagMultiPayload();
      sub_100232CE0();
      sub_100233044();
      _ConditionalContent<>.init(storage:)();
      sub_10002EA54(v90, v92, v94);

      return sub_100009EBC(v96, &qword_1003B9898);
    }

    v67 = v129[6];
    v66 = v129[7];
    v68 = v129[9];
    type metadata accessor for ConversationContext(0);
    sub_100233190(&unk_1003BC490, type metadata accessor for ConversationContext);

    v129 = v68;
    v69 = EnvironmentObject.init()();
    v71 = v70;
    *(v30 + v28[6]) = swift_getKeyPath();
    sub_100005AD4(&qword_1003B23E0);
    swift_storeEnumTagMultiPayload();
    *v30 = v69;
    v30[1] = v71;
    type metadata accessor for ComposeTranslationViewModel(0);
    sub_100233190(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel);
    v30[2] = ObservedObject.init(wrappedValue:)();
    v30[3] = v72;
    v73 = (v30 + v28[7]);
    type metadata accessor for SceneContext();
    sub_100233190(&qword_1003AC860, type metadata accessor for SceneContext);
    *v73 = EnvironmentObject.init()();
    v73[1] = v74;
    *(v30 + v28[8]) = v67;
    *(v30 + v28[9]) = v66;
    *(v30 + v28[10]) = v129;
    sub_1002331D8(v30, v25, type metadata accessor for TranslateContentView);
    swift_storeEnumTagMultiPayload();
    sub_100233190(&qword_1003B9850, type metadata accessor for TranslateContentView);
    v75 = sub_100232E6C();
    *&v135 = v113;
    *(&v135 + 1) = v75;
    swift_getOpaqueTypeConformance2();
    v76 = v112;
    _ConditionalContent<>.init(storage:)();
    sub_10001F620(v76, v123, &qword_1003B9848);
    swift_storeEnumTagMultiPayload();
    sub_100232D6C();
    sub_100232F28();
    v77 = v124;
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v76, &qword_1003B9848);
    sub_10001F620(v77, v132, &qword_1003B9838);
    swift_storeEnumTagMultiPayload();
    sub_100232CE0();
    sub_100233044();
    _ConditionalContent<>.init(storage:)();
    sub_100009EBC(v77, &qword_1003B9838);
    v64 = type metadata accessor for TranslateContentView;
    v65 = v30;
  }

  return sub_100233240(v65, v64);
}

unint64_t sub_10023283C()
{
  result = qword_1003B97C0;
  if (!qword_1003B97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97C0);
  }

  return result;
}

unint64_t sub_100232890()
{
  result = qword_1003B97C8;
  if (!qword_1003B97C8)
  {
    sub_100005EA8(&qword_1003B97B8);
    sub_10023291C();
    sub_1002329D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97C8);
  }

  return result;
}

unint64_t sub_10023291C()
{
  result = qword_1003B97D0;
  if (!qword_1003B97D0)
  {
    sub_100005EA8(&qword_1003B97D8);
    sub_1002329D4();
    sub_10001BAEC(&qword_1003B98B8, &qword_1003B98C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97D0);
  }

  return result;
}

unint64_t sub_1002329D4()
{
  result = qword_1003B97E0;
  if (!qword_1003B97E0)
  {
    sub_100005EA8(&qword_1003B97E8);
    sub_100232A60();
    sub_100232BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97E0);
  }

  return result;
}

unint64_t sub_100232A60()
{
  result = qword_1003B97F0;
  if (!qword_1003B97F0)
  {
    sub_100005EA8(&qword_1003B97F8);
    sub_100232B18();
    sub_10001BAEC(&qword_1003B98A8, &qword_1003B98B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B97F0);
  }

  return result;
}

unint64_t sub_100232B18()
{
  result = qword_1003B9800;
  if (!qword_1003B9800)
  {
    sub_100005EA8(&qword_1003B9808);
    sub_100232BD0();
    sub_10001BAEC(&qword_1003B98A8, &qword_1003B98B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9800);
  }

  return result;
}

unint64_t sub_100232BD0()
{
  result = qword_1003B9810;
  if (!qword_1003B9810)
  {
    sub_100005EA8(&qword_1003B9818);
    sub_100232C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9810);
  }

  return result;
}

unint64_t sub_100232C54()
{
  result = qword_1003B9820;
  if (!qword_1003B9820)
  {
    sub_100005EA8(&qword_1003B9828);
    sub_100232CE0();
    sub_100233044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9820);
  }

  return result;
}

unint64_t sub_100232CE0()
{
  result = qword_1003B9830;
  if (!qword_1003B9830)
  {
    sub_100005EA8(&qword_1003B9838);
    sub_100232D6C();
    sub_100232F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9830);
  }

  return result;
}

unint64_t sub_100232D6C()
{
  result = qword_1003B9840;
  if (!qword_1003B9840)
  {
    sub_100005EA8(&qword_1003B9848);
    sub_100233190(&qword_1003B9850, type metadata accessor for TranslateContentView);
    sub_100005EA8(&qword_1003B9858);
    sub_100232E6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9840);
  }

  return result;
}

unint64_t sub_100232E6C()
{
  result = qword_1003B9860;
  if (!qword_1003B9860)
  {
    sub_100005EA8(&qword_1003B9858);
    sub_100233190(&qword_1003B9868, type metadata accessor for ImageTranslationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9860);
  }

  return result;
}

unint64_t sub_100232F28()
{
  result = qword_1003B9870;
  if (!qword_1003B9870)
  {
    sub_100005EA8(&qword_1003B9878);
    type metadata accessor for ConversationView();
    sub_100233190(&qword_1003B9880, type metadata accessor for ConversationView);
    swift_getOpaqueTypeConformance2();
    sub_100233190(&qword_1003B9888, type metadata accessor for FavoritesView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9870);
  }

  return result;
}

unint64_t sub_100233044()
{
  result = qword_1003B9890;
  if (!qword_1003B9890)
  {
    sub_100005EA8(&qword_1003B9898);
    sub_100233190(&qword_1003B98A0, type metadata accessor for FavoritesDetailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9890);
  }

  return result;
}

uint64_t sub_100233100(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B97A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100233170(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_100005B2C(a1, a2);
  }

  return a1;
}

uint64_t sub_100233190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002331D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100233240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002332A4()
{
  result = qword_1003B9950;
  if (!qword_1003B9950)
  {
    sub_100005EA8(&qword_1003B98D0);
    sub_10023335C();
    sub_10001BAEC(&qword_1003B6708, &qword_1003B6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9950);
  }

  return result;
}

unint64_t sub_10023335C()
{
  result = qword_1003B9958;
  if (!qword_1003B9958)
  {
    sub_100005EA8(&qword_1003B97B0);
    sub_100005EA8(&qword_1003B97A8);
    type metadata accessor for ProminentDetailNavigationSplitViewStyle();
    sub_10001BAEC(&qword_1003B98F0, &qword_1003B97A8);
    sub_100233190(&qword_1003B9900, &type metadata accessor for ProminentDetailNavigationSplitViewStyle);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for AutomaticNavigationSplitViewStyle();
    sub_100233190(&qword_1003B98F8, &type metadata accessor for AutomaticNavigationSplitViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9958);
  }

  return result;
}

uint64_t sub_100233500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100233548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002335B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v9 = type metadata accessor for SidebarListStyle();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005AD4(&qword_1003B9960);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = sub_100005AD4(&qword_1003B9968);
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  v31 = a1;
  v32 = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  sub_100005AD4(&qword_1003B98C8);
  Binding.projectedValue.getter();
  v31 = v28;
  v32 = v29;
  v33 = v30;
  sub_100005AD4(&qword_1003B9970);
  sub_10000C564();
  sub_10001BAEC(&qword_1003B9978, &qword_1003B9970);
  List.init(selection:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_10001BAEC(&qword_1003B9980, &qword_1003B9960);
  View.navigationTitle(_:)();

  (*(v14 + 8))(v16, v13);
  static Color.accentColor.getter();
  v20 = *(v17 + 36);
  static ListItemTint.fixed(_:)();

  v21 = type metadata accessor for ListItemTint();
  (*(*(v21 - 8) + 56))(&v19[v20], 0, 1, v21);
  SidebarListStyle.init()();
  sub_10023456C();
  v22 = v25;
  View.listStyle<A>(_:)();
  (*(v26 + 8))(v12, v22);
  return sub_100234694(v19);
}

uint64_t sub_100233970@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v44 = type metadata accessor for FavoritesSideBarListView();
  v1 = __chkstk_darwin(v44);
  v52 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v41 - v3;
  v5 = sub_100005AD4(&qword_1003B99A0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = sub_100005AD4(&qword_1003B99A8);
  v12 = __chkstk_darwin(v11 - 8);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v51 = sub_100005AD4(&qword_1003B99B0);
  v48 = *(v51 - 8);
  v16 = __chkstk_darwin(v51);
  v50 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v41 - v18;
  v53 = 0uLL;
  sub_100005AD4(&qword_1003B99B8);
  sub_1002346FC();
  sub_10000C564();
  v49 = v19;
  NavigationLink<>.init<A>(value:label:)();
  if (sub_100003688() && (v54 = &type metadata for TranslateFeatures, v55 = sub_100009DF8(), LOBYTE(v53) = 0, v20 = isFeatureEnabled(_:)(), sub_100008664(&v53), (v20 & 1) != 0))
  {
    v53 = xmmword_1002D32F0;
    sub_100005AD4(&qword_1003ADA48);
    sub_10007ADB8();
    NavigationLink<>.init<A>(value:label:)();
    (*(v6 + 32))(v15, v10, v5);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v6 + 56);
  v43 = v15;
  v23 = v5;
  v22(v15, v21, 1, v5);
  v53 = xmmword_1002D3300;
  sub_100005AD4(&qword_1003ADA48);
  sub_10007ADB8();
  NavigationLink<>.init<A>(value:label:)();
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  type metadata accessor for PersistedTranslation();
  static PersistedTranslation.favoritedSortedByLocalePairAndCreationDateFetchRequest()();
  FetchRequest.init(fetchRequest:animation:)();
  v24 = *(v48 + 16);
  v25 = v50;
  v24(v50, v49, v51);
  v26 = v15;
  v27 = v45;
  sub_1002347BC(v26, v45);
  v41 = v4;
  v42 = v10;
  v28 = v10;
  v29 = *(v6 + 16);
  v30 = v46;
  v29(v46, v28, v23);
  sub_10023482C(v4, v52);
  v31 = v30;
  v32 = v47;
  v33 = v25;
  v34 = v51;
  v24(v47, v33, v51);
  v35 = sub_100005AD4(&qword_1003B99D8);
  v36 = v27;
  sub_1002347BC(v27, &v32[v35[12]]);
  v29(&v32[v35[16]], v31, v23);
  v37 = v52;
  sub_10023482C(v52, &v32[v35[20]]);
  sub_100234890(v41);
  v38 = *(v6 + 8);
  v38(v42, v23);
  sub_1002348EC(v43);
  v39 = *(v48 + 8);
  v39(v49, v34);
  sub_100234890(v37);
  v38(v31, v23);
  sub_1002348EC(v36);
  return (v39)(v50, v34);
}

uint64_t sub_100233F3C()
{
  v0 = sub_100005AD4(&qword_1003B99D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_100005AD4(&qword_1003B99E0);
  sub_100234954();
  Label.init(title:icon:)();
  sub_10001BAEC(&qword_1003B99C8, &qword_1003B99D0);
  View.accessibilityIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002340D8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100234150@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_100234290()
{
  v0 = sub_100005AD4(&qword_1003A93D8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  View.accessibilityIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002343F0()
{
  v0 = sub_100005AD4(&qword_1003A93D8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  View.accessibilityIdentifier(_:)();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_10023456C()
{
  result = qword_1003B9988;
  if (!qword_1003B9988)
  {
    sub_100005EA8(&qword_1003B9968);
    sub_100005EA8(&qword_1003B9960);
    sub_10001BAEC(&qword_1003B9980, &qword_1003B9960);
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003B9990, &qword_1003B9998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9988);
  }

  return result;
}

uint64_t sub_100234694(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B9968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002346FC()
{
  result = qword_1003B99C0;
  if (!qword_1003B99C0)
  {
    sub_100005EA8(&qword_1003B99B8);
    sub_10001BAEC(&qword_1003B99C8, &qword_1003B99D0);
    sub_10001BBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B99C0);
  }

  return result;
}

uint64_t sub_1002347BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B99A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023482C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FavoritesSideBarListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100234890(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesSideBarListView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002348EC(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B99A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100234954()
{
  result = qword_1003B99E8;
  if (!qword_1003B99E8)
  {
    sub_100005EA8(&qword_1003B99E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B99E8);
  }

  return result;
}

uint64_t sub_1002349D8()
{
  sub_100005EA8(&qword_1003B9968);
  type metadata accessor for SidebarListStyle();
  sub_10023456C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100234A68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Locale();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100234B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SingleOrPairSpeakButton()
{
  result = qword_1003B9A48;
  if (!qword_1003B9A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100234C18()
{
  sub_100234E14();
  if (v0 <= 0x3F)
  {
    sub_10008217C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DeviceHelper();
      if (v2 <= 0x3F)
      {
        sub_10003E0E8();
        if (v3 <= 0x3F)
        {
          sub_100234EA8(319, &unk_1003AA478, &type metadata for AudioDevice, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_100234EA8(319, &unk_1003B9A60, &type metadata for Double, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_10002ACA4();
              if (v6 <= 0x3F)
              {
                sub_1001312D0();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Locale();
                  if (v8 <= 0x3F)
                  {
                    sub_100234EA8(319, &qword_1003AA470, &type metadata for AudioDevice, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_100234E14()
{
  if (!qword_1003B9A58)
  {
    type metadata accessor for SharedTranslationOptions();
    sub_100235DCC(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B9A58);
    }
  }
}

void sub_100234EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

BOOL sub_100234F14()
{
  v1 = *(v0 + 24);
  v2 = sub_1000B7FE0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v8[0]) != 1)
  {

    return 1;
  }

  v3 = sub_10022CDDC(v2);

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  v8[3] = &type metadata for TranslateFeatures;
  v8[4] = sub_100009DF8();
  LOBYTE(v8[0]) = 8;
  v4 = isFeatureEnabled(_:)();
  sub_100008664(v8);
  if ((v4 & 1) != 0 && (v5 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper), swift_getKeyPath(), v8[0] = v5, sub_100235DCC(&qword_1003AE978, type metadata accessor for DeviceHelper), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v6 = v5 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice, swift_beginAccess(), *(v6 + 8)))
  {
    return (*(v6 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002350C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003B9AF0);
  __chkstk_darwin(v4);
  v6 = &v81[-v5];
  v93 = type metadata accessor for LocalePairSpeakButtons();
  __chkstk_darwin(v93);
  v95 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_100005AD4(&qword_1003B9AF8);
  v8 = __chkstk_darwin(v94);
  v92 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v81[-v10];
  v12 = sub_100234F14();
  v13 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v12)
  {
    static Published.subscript.getter();

    v90 = v4;
    v91 = a2;
    v89 = v11;
    if (v97)
    {
      v14 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v14 = v97;
    }

    v88 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v87 = v97;
    v16 = *(a1 + 32);
    swift_getKeyPath();
    v17 = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
    *&v97 = v16;
    v83 = sub_100235DCC(&qword_1003AE978, type metadata accessor for DeviceHelper);
    v84 = v17;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v86 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected);
    swift_getKeyPath();
    *&v97 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v85 = *(v16 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v82 = v97;
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v93;
    v19 = &v95[*(v93 + 32)];
    v20 = type metadata accessor for SpeakButtonConfiguration();
    static Published.subscript.getter();

    v21 = sub_1000B8D64();
    v23 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = v13;
    v25 = swift_allocObject();
    *(v25 + 16) = v13;
    *v19 = v82;
    v26 = &v19[v20[6]];
    *v26 = v21;
    v26[1] = v23;
    v27 = &v19[v20[7]];
    *v27 = sub_100091524;
    v27[1] = v24;
    v28 = &v19[v20[8]];
    *v28 = sub_100235E24;
    v28[1] = v25;
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v13;
    static Published.subscript.getter();

    LOBYTE(v19) = v97;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = &v95[*(v18 + 36)];
    static Published.subscript.getter();

    v31 = sub_1000B8B8C();
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = v29;
    v35 = swift_allocObject();
    *(v35 + 16) = v29;
    *v30 = v19;
    v36 = &v30[v20[6]];
    *v36 = v31;
    v36[1] = v33;
    v37 = &v30[v20[7]];
    *v37 = sub_100091548;
    v37[1] = v34;
    v38 = &v30[v20[8]];
    *v38 = sub_100235E4C;
    v38[1] = v35;
    swift_getKeyPath();
    *&v97 = v16;
    v39 = v29;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = (v16 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    v99 = v40[2];
    v43 = v40[3];
    v44 = v40[4];
    v45 = v40[5];
    *(v102 + 9) = *(v40 + 89);
    v101 = v44;
    v102[0] = v45;
    v100 = v43;
    v97 = v41;
    v98 = v42;
    v46 = v87;
    v47 = v95;
    *v95 = v88;
    *(v47 + 1) = v46;
    *(v47 + 2) = v86;
    *(v47 + 8) = v85;
    v48 = v93;
    v49 = (v47 + *(v93 + 40));
    *v49 = sub_10009156C;
    v49[1] = v16;
    v50 = v48;
    v51 = (v47 + *(v48 + 44));
    v52 = v102[0];
    v51[4] = v101;
    v51[5] = v52;
    *(v51 + 89) = *(v102 + 9);
    v53 = v98;
    *v51 = v97;
    v51[1] = v53;
    v54 = v100;
    v51[2] = v99;
    v51[3] = v54;
    v55 = (v47 + *(v48 + 48));
    v96[14] = 0x4072C00000000000;
    sub_10001F620(&v97, v96, &qword_1003A93C8);
    State.init(wrappedValue:)();
    v56 = v96[1];
    *v55 = v96[0];
    v55[1] = v56;
    *(v47 + *(v50 + 52)) = 0x4072000000000000;
    v57 = (v47 + *(v50 + 56));
    v58 = [objc_opt_self() mainBundle];
    v103._object = 0xE000000000000000;
    v59._object = 0x80000001002FB860;
    v59._countAndFlagsBits = 0xD000000000000017;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v103._countAndFlagsBits = 0;
    v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v103);

    *v57 = v61;
    LOBYTE(v58) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = v92;
    sub_100235E74(v47, v92);
    v71 = &v70[*(v94 + 36)];
    *v71 = v58;
    *(v71 + 1) = v63;
    *(v71 + 2) = v65;
    *(v71 + 3) = v67;
    *(v71 + 4) = v69;
    v71[40] = 0;
    v72 = v70;
    v73 = v89;
    sub_100235ED8(v72, v89);
    sub_10001F620(v73, v6, &qword_1003B9AF8);
    swift_storeEnumTagMultiPayload();
    sub_100235D08();
    sub_1000917C0();
    _ConditionalContent<>.init(storage:)();
    return sub_100235F48(v73);
  }

  else
  {
    static Published.subscript.getter();

    if (v97)
    {
      v15 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v15 = v97;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v75 = v97;
    v76 = swift_allocObject();
    *(v76 + 16) = v13;
    v77 = swift_allocObject();
    *(v77 + 16) = v13;
    v78 = v13;
    v79 = sub_1000B8D64();
    *v6 = v15;
    v6[1] = v75;
    v6[2] = 0;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = _swiftEmptyArrayStorage;
    v6[32] = 0;
    *(v6 + 5) = sub_100235D00;
    *(v6 + 6) = v76;
    *(v6 + 7) = 0;
    *(v6 + 8) = 0;
    *(v6 + 9) = sub_100091B0C;
    *(v6 + 10) = v77;
    *(v6 + 11) = v79;
    *(v6 + 12) = v80;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 193) = 0u;
    swift_storeEnumTagMultiPayload();
    sub_100235D08();
    sub_1000917C0();
    return _ConditionalContent<>.init(storage:)();
  }
}

void *sub_100235AC4(char a1, uint64_t a2, int a3)
{
  if (sub_1000BCD74())
  {
    return sub_1000C0C34(0, a3);
  }

  if (a1)
  {
    return sub_1000BCF40(a3, 0);
  }

  return sub_1000BE260(0, 0, 1);
}

void *sub_100235B30(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  UUID.init()();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__selfAutoTranslateSessionId;
  swift_beginAccess();
  sub_100091B8C(v4, a1 + v6);
  swift_endAccess();
  return sub_1000C0C34(0, 2);
}

double sub_100235C30@<D0>(uint64_t a1@<X8>)
{
  sub_1002350C4(v1, a1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v3 = (a1 + *(sub_100005AD4(&qword_1003B9AE8) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_100235CC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100235D08()
{
  result = qword_1003B9B00;
  if (!qword_1003B9B00)
  {
    sub_100005EA8(&qword_1003B9AF8);
    sub_100235DCC(&qword_1003B9B08, type metadata accessor for LocalePairSpeakButtons);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B00);
  }

  return result;
}

uint64_t sub_100235DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100235E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalePairSpeakButtons();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100235ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B9AF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100235F48(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B9AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100235FBC()
{
  result = qword_1003B9B10;
  if (!qword_1003B9B10)
  {
    sub_100005EA8(&qword_1003B9AE8);
    sub_100236048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B10);
  }

  return result;
}

unint64_t sub_100236048()
{
  result = qword_1003B9B18;
  if (!qword_1003B9B18)
  {
    sub_100005EA8(&qword_1003B9B20);
    sub_1002360CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B18);
  }

  return result;
}

unint64_t sub_1002360CC()
{
  result = qword_1003B9B28;
  if (!qword_1003B9B28)
  {
    sub_100005EA8(&qword_1003B9B30);
    sub_100235D08();
    sub_1000917C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B28);
  }

  return result;
}

uint64_t sub_10023616C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100236184(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10023619C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1002361E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
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

uint64_t sub_100236228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1002362CC@<Q0>(uint64_t a1@<X8>)
{
  v25 = v1[1];
  v26 = *v1;
  v24 = v1[2];
  v3 = *(v1 + 1);
  v23 = *(v1 + 2);
  v4 = *(v1 + 3);
  v22 = v1[32];
  v5 = *(v1 + 6);
  v6 = *(v1 + 7);
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v20 = *(v1 + 10);
  v21 = *(v1 + 5);
  v9 = *(v1 + 12);
  v27 = *(v1 + 11);
  v10 = *(v1 + 120);
  v11 = *(v1 + 136);
  v28 = *(v1 + 104);
  v29 = v10;
  v12 = *(v1 + 152);
  v13 = *(v1 + 168);
  *(v33 + 9) = *(v1 + 193);
  v14 = *(v1 + 184);
  v32 = v13;
  v33[0] = v14;
  v30 = v11;
  v31 = v12;

  sub_10001AD18(v6);
  sub_1000DA0C8(&v28, v34);
  sub_10001AD18(v8);

  sub_100005AD4(&qword_1003A93C8);
  State.init(wrappedValue:)();
  *a1 = v26;
  *(a1 + 1) = v25;
  *(a1 + 2) = v24;
  *(a1 + 8) = v3;
  *(a1 + 16) = v23;
  *(a1 + 24) = v4;
  *(a1 + 32) = v22;
  *(a1 + 40) = v21;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  v15 = v30;
  *(a1 + 120) = v31;
  v16 = v33[0];
  *(a1 + 136) = v32;
  *(a1 + 152) = v16;
  *(a1 + 161) = *(v33 + 9);
  v17 = v29;
  *(a1 + 72) = v28;
  *(a1 + 88) = v17;
  *(a1 + 104) = v15;
  *(a1 + 184) = v8;
  *(a1 + 192) = v20;
  *(a1 + 200) = v27;
  *(a1 + 208) = v9;
  result = v34[4];
  v19 = v34[6];
  *(a1 + 296) = v34[5];
  *(a1 + 312) = v19;
  *(a1 + 328) = v35;
  *(a1 + 216) = v34[0];
  *(a1 + 232) = v34[1];
  *(a1 + 248) = v34[2];
  *(a1 + 264) = v34[3];
  *(a1 + 280) = result;
  return result;
}

unint64_t sub_1002364B0()
{
  result = qword_1003B9B38;
  if (!qword_1003B9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9B38);
  }

  return result;
}

uint64_t sub_100236520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1002365F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SpeakButtonConfiguration()
{
  result = qword_1003B9B98;
  if (!qword_1003B9B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100236704()
{
  type metadata accessor for Locale();
  if (v0 <= 0x3F)
  {
    sub_10002ACA4();
    if (v1 <= 0x3F)
    {
      sub_1001312D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002367C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
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

uint64_t sub_100236808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002368CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_100005AD4(&qword_1003B9BE0);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v29 = sub_100005AD4(&qword_1003B9BE8);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v28 - v6;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0x4018000000000000;
  v5[16] = 0;
  v8 = sub_100005AD4(&qword_1003B9BF0);
  sub_100236D78(v1, &v5[*(v8 + 44)]);
  v9 = swift_allocObject();
  memcpy((v9 + 16), v2, 0x150uLL);
  v10 = &v5[*(v3 + 36)];
  *v10 = sub_10023927C;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  v11 = *(v2 + 296);
  v12 = *(v2 + 312);
  v13 = *(v2 + 264);
  v48 = *(v2 + 280);
  v49[0] = v11;
  v49[1] = v12;
  v50 = *(v2 + 328);
  v14 = *(v2 + 232);
  v44 = *(v2 + 216);
  v45 = v14;
  v46 = *(v2 + 248);
  v47 = v13;
  sub_100239284(v2, &v38);
  sub_100005AD4(&qword_1003AA520);
  State.wrappedValue.getter();
  v55 = v56[6];
  v56[0] = v57[0];
  *(v56 + 9) = *(v57 + 9);
  v51 = v56[2];
  v52 = v56[3];
  v53 = v56[4];
  v54 = v56[5];
  v15 = swift_allocObject();
  memcpy((v15 + 16), v2, 0x150uLL);
  sub_100239284(v2, &v38);
  v16 = sub_100005AD4(&qword_1003A93C8);
  v17 = sub_1002392C4();
  v18 = sub_10001F344(&qword_1003AA508, sub_1000133B0);
  View.onChange<A>(of:initial:_:)();

  v48 = v55;
  v49[0] = v56[0];
  *(v49 + 9) = *(v56 + 9);
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v47 = v54;
  sub_100009EBC(&v44, &qword_1003A93C8);
  sub_100009EBC(v5, &qword_1003B9BE0);
  v19 = *(v2 + 120);
  v20 = *(v2 + 152);
  v55 = *(v2 + 136);
  v56[0] = v20;
  *(v56 + 9) = *(v2 + 161);
  v21 = *(v2 + 88);
  v51 = *(v2 + 72);
  v52 = v21;
  v53 = *(v2 + 104);
  v54 = v19;
  v22 = *(v2 + 120);
  v23 = *(v2 + 152);
  v36 = *(v2 + 136);
  v37[0] = v23;
  *(v37 + 9) = *(v2 + 161);
  v24 = *(v2 + 88);
  v32 = *(v2 + 72);
  v33 = v24;
  v34 = *(v2 + 104);
  v35 = v22;
  v25 = swift_allocObject();
  memcpy((v25 + 16), v2, 0x150uLL);
  sub_100239284(v2, &v38);
  sub_10001F620(&v51, &v38, &qword_1003A93C8);
  *&v38 = v3;
  *(&v38 + 1) = v16;
  *&v39 = v17;
  *(&v39 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  View.onChange<A>(of:initial:_:)();

  v42 = v36;
  v43[0] = v37[0];
  *(v43 + 9) = *(v37 + 9);
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  sub_100009EBC(&v38, &qword_1003A93C8);
  return (*(v31 + 8))(v7, v26);
}

uint64_t sub_100236D78@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v103 = *(v3 - 8);
  v104 = v3;
  __chkstk_darwin(v3);
  v102 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005AD4(&qword_1003B9C10);
  v124 = *(v5 - 8);
  v125 = v5;
  __chkstk_darwin(v5);
  v105 = &v101 - v6;
  v7 = sub_100005AD4(&qword_1003B9C18);
  v8 = __chkstk_darwin(v7 - 8);
  v127 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = &v101 - v10;
  v11 = type metadata accessor for AccessibilityTraits();
  v120 = *(v11 - 8);
  v121 = v11;
  __chkstk_darwin(v11);
  v119 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005AD4(&qword_1003AE3D8);
  __chkstk_darwin(v13 - 8);
  v108 = &v101 - v14;
  v131 = type metadata accessor for SpeakButtonStyle();
  __chkstk_darwin(v131);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for ButtonMenuStyle();
  v123 = *(v129 - 8);
  __chkstk_darwin(v129);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005AD4(&qword_1003B9C20);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v101 - v21;
  v23 = sub_100005AD4(&qword_1003B9C28);
  v24 = *(v23 - 8);
  v109 = v23;
  v110 = v24;
  __chkstk_darwin(v23);
  v107 = &v101 - v25;
  v26 = sub_100005AD4(&qword_1003B9C30);
  v112 = *(v26 - 8);
  v113 = v26;
  __chkstk_darwin(v26);
  v130 = &v101 - v27;
  v116 = sub_100005AD4(&qword_1003B9C38);
  v28 = __chkstk_darwin(v116);
  v111 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v114 = &v101 - v31;
  __chkstk_darwin(v30);
  v118 = &v101 - v32;
  v117 = sub_100005AD4(&qword_1003B9C40);
  v33 = __chkstk_darwin(v117);
  v122 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v115 = &v101 - v36;
  __chkstk_darwin(v35);
  v132 = &v101 - v37;
  v134 = a1;
  v133 = a1;
  v38 = swift_allocObject();
  memcpy((v38 + 16), a1, 0x150uLL);
  sub_100239284(a1, &v136);
  sub_100005AD4(&qword_1003B9C48);
  sub_1002394BC();
  Menu.init(content:label:primaryAction:)();
  ButtonMenuStyle.init()();
  v39 = sub_10001BAEC(&qword_1003B9C70, &qword_1003B9C20);
  v40 = sub_1002396B0(&qword_1003B9C78, &type metadata accessor for ButtonMenuStyle);
  v41 = v19;
  v106 = v19;
  v42 = v129;
  View.menuStyle<A>(_:)();
  v123[1](v18, v42);
  (*(v20 + 8))(v22, v41);
  v123 = a1;
  v139 = *a1;
  sub_10000A2CC(0, &qword_1003B1FC8);
  v43 = [objc_opt_self() mainRunLoop];
  v44 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v45 = v108;
  (*(*(v44 - 8) + 56))(v108, 1, 1, v44);
  v46 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_100009EBC(v45, &qword_1003AE3D8);
  *&v136 = v46;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1002396B0(&qword_1003B9C80, &type metadata accessor for NSTimer.TimerPublisher);
  v47 = ConnectablePublisher.autoconnect()();

  *&v16[*(v131 + 28)] = swift_getKeyPath();
  sub_100005AD4(&qword_1003B52A0);
  swift_storeEnumTagMultiPayload();
  *v16 = v139;
  v135 = 0;
  State.init(wrappedValue:)();
  *(v16 + 8) = v136;
  v135 = v47;
  sub_100005AD4(&qword_1003B9C88);
  State.init(wrappedValue:)();
  v48 = *(&v136 + 1);
  *(v16 + 3) = v136;
  *(v16 + 4) = v48;
  *&v136 = v106;
  *(&v136 + 1) = v129;
  v137 = v39;
  v138 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = sub_1002396B0(&qword_1003B9C90, type metadata accessor for SpeakButtonStyle);
  v51 = v109;
  v52 = v107;
  View.buttonStyle<A>(_:)();
  v53 = v51;
  sub_100239614(v16);
  (*(v110 + 8))(v52, v51);
  if (v139 == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v54 = Text.init(_:tableName:bundle:comment:)();
    v56 = v55;
    v58 = v57;
    v129 = 0x74747542706F7473;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v54 = Text.init(_:tableName:bundle:comment:)();
    v56 = v59;
    v58 = v60;
    v129 = 0x75426E657473696CLL;
  }

  *&v136 = v53;
  *(&v136 + 1) = v131;
  v137 = OpaqueTypeConformance2;
  v138 = v50;
  swift_getOpaqueTypeConformance2();
  v61 = v111;
  v62 = v113;
  v63 = v130;
  View.accessibility(label:)();
  sub_10002EA54(v54, v56, v58 & 1);

  (*(v112 + 8))(v63, v62);
  v64 = v114;
  ModifiedContent<>.accessibilityIdentifier(_:)();

  sub_100009EBC(v61, &qword_1003B9C38);
  sub_100005AD4(&qword_1003AA880);
  v65 = v120;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1002D3160;
  static AccessibilityTraits.startsMediaSession.getter();
  *&v136 = v66;
  sub_1002396B0(&qword_1003AA888, &type metadata accessor for AccessibilityTraits);
  sub_100005AD4(&qword_1003AA890);
  sub_10001BAEC(&qword_1003AA898, &qword_1003AA890);
  v67 = v119;
  v68 = v121;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v69 = v118;
  ModifiedContent<>.accessibility(addTraits:)();
  (*(v65 + 8))(v67, v68);
  sub_100009EBC(v64, &qword_1003B9C38);
  v70 = v123;
  LOBYTE(v68) = *(v123 + 1);
  KeyPath = swift_getKeyPath();
  v72 = swift_allocObject();
  *(v72 + 16) = v68;
  v73 = v115;
  sub_100023BD4(v69, v115, &qword_1003B9C38);
  v74 = (v73 + *(v117 + 36));
  *v74 = KeyPath;
  v74[1] = sub_10005CDFC;
  v74[2] = v72;
  sub_100023BD4(v73, v132, &qword_1003B9C40);
  v75 = v70[3];
  if (v75)
  {
    *&v136 = v70[2];
    *(&v136 + 1) = v75;
    sub_10001F278();

    v76 = Text.init<A>(_:)();
    v78 = v77;
    *&v136 = v76;
    *(&v136 + 1) = v77;
    v80 = v79 & 1;
    LOBYTE(v137) = v79 & 1;
    v138 = v81;
    v83 = v102;
    v82 = v103;
    v84 = v104;
    (*(v103 + 104))(v102, enum case for DynamicTypeSize.small(_:), v104);
    v85 = v105;
    View.dynamicTypeSize(_:)();
    (*(v82 + 8))(v83, v84);
    sub_10002EA54(v76, v78, v80);

    v86 = static Font.caption.getter();
    v87 = swift_getKeyPath();
    v88 = (v85 + *(sub_100005AD4(&qword_1003B9CA0) + 36));
    *v88 = v87;
    v88[1] = v86;
    v89 = static Color.translateAccentColor.getter();
    v90 = swift_getKeyPath();
    v91 = v125;
    v92 = v126;
    v93 = (v85 + *(v125 + 36));
    *v93 = v90;
    v93[1] = v89;
    sub_100023BD4(v85, v92, &qword_1003B9C10);
    v94 = 0;
  }

  else
  {
    v91 = v125;
    v92 = v126;
    v94 = 1;
  }

  (*(v124 + 56))(v92, v94, 1, v91);
  v95 = v132;
  v96 = v122;
  sub_10001F620(v132, v122, &qword_1003B9C40);
  v97 = v127;
  sub_10001F620(v92, v127, &qword_1003B9C18);
  v98 = v128;
  sub_10001F620(v96, v128, &qword_1003B9C40);
  v99 = sub_100005AD4(&qword_1003B9C98);
  sub_10001F620(v97, v98 + *(v99 + 48), &qword_1003B9C18);
  sub_100009EBC(v92, &qword_1003B9C18);
  sub_100009EBC(v95, &qword_1003B9C40);
  sub_100009EBC(v97, &qword_1003B9C18);
  return sub_100009EBC(v96, &qword_1003B9C40);
}

uint64_t sub_100237DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InlinePickerStyle();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v48 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for MenuOrder();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B9C60);
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v46 = sub_100005AD4(&qword_1003B9C58);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = &v35 - v11;
  v13 = sub_100005AD4(&qword_1003B9CA8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v41 = &v35 - v15;
  v16 = *(a1 + 296);
  v17 = *(a1 + 264);
  v69 = *(a1 + 280);
  v70 = v16;
  v18 = *(a1 + 296);
  v71 = *(a1 + 312);
  v19 = *(a1 + 232);
  v65 = *(a1 + 216);
  v66 = v19;
  v20 = *(a1 + 264);
  v67 = *(a1 + 248);
  v68 = v20;
  v72 = *(a1 + 328);
  v62 = v69;
  v63 = v18;
  v64[0] = *(a1 + 312);
  *&v64[1] = *(a1 + 328);
  v21 = *(a1 + 232);
  v58 = *(a1 + 216);
  v59 = v21;
  v60 = *(a1 + 248);
  v61 = v17;
  sub_100005AD4(&qword_1003AA520);
  State.wrappedValue.getter();
  if (!v74)
  {
    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  sub_100009EBC(v73, &qword_1003A93C8);
  if ((*(a1 + 2) & 1) == 0)
  {
    return (*(v14 + 56))(a2, 1, 1, v13);
  }

  v22 = LocalizedStringKey.init(stringLiteral:)();
  v38 = v23;
  v39 = v22;
  v36 = v24;
  v37 = v25;
  v55 = v69;
  v56 = v70;
  v57[0] = v71;
  *&v57[1] = v72;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v54 = v68;
  v26 = State.projectedValue.getter();
  v35 = &v35;
  v55 = v62;
  v56 = v63;
  v57[0] = v64[0];
  *(v57 + 9) = *(v64 + 9);
  v51 = v58;
  v52 = v59;
  v53 = v60;
  v54 = v61;
  __chkstk_darwin(v26);
  sub_100005AD4(&qword_1003A93C8);
  sub_100005AD4(&qword_1003B9CB0);
  sub_10001F344(&qword_1003AA610, sub_10001F3BC);
  v40 = a2;
  sub_100239700();
  Picker<>.init(_:selection:content:)();
  static MenuOrder.fixed.getter();
  v27 = sub_10001BAEC(&qword_1003B9C68, &qword_1003B9C60);
  v28 = v43;
  View.menuOrder(_:)();
  (*(v45 + 8))(v7, v47);
  (*(v42 + 8))(v10, v28);
  v29 = v48;
  InlinePickerStyle.init()();
  *&v51 = v28;
  *(&v51 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  v31 = v46;
  v32 = v50;
  View.pickerStyle<A>(_:)();
  (*(v49 + 8))(v29, v32);
  (*(v44 + 8))(v12, v31);
  v33 = v40;
  (*(v14 + 32))(v40, v30, v13);
  return (*(v14 + 56))(v33, 0, 1, v13);
}

uint64_t sub_1002383F0()
{
  swift_getKeyPath();

  sub_100005AD4(&qword_1003AA650);
  sub_100005AD4(&qword_1003B9CC0);
  sub_10001BAEC(&qword_1003AA648, &qword_1003AA650);
  sub_10001F3BC();
  sub_100005EA8(&qword_1003A93D8);
  sub_100005EA8(&qword_1003A93C8);
  sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  sub_10001F344(&qword_1003AA610, sub_10001F3BC);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1002385C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003A93D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  v8 = a1[5];
  v27 = a1[4];
  v28[0] = v8;
  *(v28 + 9) = *(a1 + 89);
  v9 = a1[1];
  v23 = *a1;
  v24 = v9;
  v10 = a1[3];
  v25 = a1[2];
  v26 = v10;
  v35[0] = v24;
  sub_10001F278();

  Label<>.init<A>(_:systemImage:)();
  v21 = v27;
  v22[0] = v28[0];
  *(v22 + 9) = *(v28 + 9);
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v29 = v23;
  v30 = v24;
  *(v34 + 9) = *(v28 + 9);
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34[0] = v28[0];
  BYTE9(v34[1]) = 1;
  (*(v5 + 32))(a2, v7, v4);
  v11 = (a2 + *(sub_100005AD4(&qword_1003A93F8) + 36));
  v12 = v34[0];
  v11[4] = v33;
  v11[5] = v12;
  *(v11 + 90) = *(v34 + 10);
  v13 = v30;
  *v11 = v29;
  v11[1] = v13;
  v14 = v32;
  v11[2] = v31;
  v11[3] = v14;
  v35[0] = v17;
  v35[1] = v18;
  *&v36[9] = *(v22 + 9);
  v35[4] = v21;
  *v36 = v22[0];
  v35[2] = v19;
  v35[3] = v20;
  v37 = 1;
  sub_10001F5C4(&v23, v16);
  sub_10001F620(&v29, v16, &qword_1003A93D0);
  return sub_100009EBC(v35, &qword_1003A93D0);
}

uint64_t sub_1002387F4@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*a1 & 1) == 0 && (a1[1] & 1) == 0)
  {
  }

  result = Image.init(systemName:)();
  *a2 = result;
  return result;
}

uint64_t sub_100238858(uint64_t a1)
{
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v20 = v7;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v19 - v13;
  (*(a1 + 40))(v12);
  sub_10000A2CC(0, &qword_1003A9C40);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v8 + 8);
  v19(v11, v7);
  aBlock[4] = sub_100023934;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10038A7F0;
  v16 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002396B0(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  v17 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v3, v17);
  (*(v22 + 8))(v6, v23);
  return (v19)(v14, v20);
}

uint64_t sub_100238C18(uint64_t result)
{
  v1 = *(result + 72);
  v2 = *(result + 120);
  v3 = *(result + 152);
  v26[4] = *(result + 136);
  v27[0] = v3;
  *(v27 + 9) = *(result + 161);
  v4 = *(result + 88);
  v26[0] = v1;
  v26[1] = v4;
  v26[2] = *(result + 104);
  v26[3] = v2;
  if (*(&v1 + 1))
  {
    v5 = *(result + 232);
    v21[0] = *(result + 216);
    v21[1] = v5;
    v6 = *(result + 248);
    v7 = *(result + 296);
    v8 = *(result + 264);
    v22 = *(result + 280);
    v23 = v7;
    v9 = *(result + 296);
    v24 = *(result + 312);
    v10 = *(result + 264);
    v21[2] = v6;
    v21[3] = v10;
    v25 = *(result + 328);
    v15 = v22;
    v16 = v9;
    v17 = *(result + 312);
    v18 = *(result + 328);
    v11 = *(result + 216);
    v12 = *(result + 232);
    v13 = *(result + 248);
    v14 = v8;
    sub_10001F620(v26, v19, &qword_1003A93C8);
    sub_10001F620(v21, v19, &qword_1003AA520);
    sub_100005AD4(&qword_1003AA520);
    State.wrappedValue.setter();
    v19[4] = v15;
    v19[5] = v16;
    v19[6] = v17;
    v20 = v18;
    v19[0] = v11;
    v19[1] = v12;
    v19[2] = v13;
    v19[3] = v14;
    return sub_100009EBC(v19, &qword_1003AA520);
  }

  return result;
}

uint64_t sub_100238D98(uint64_t a1)
{
  v2 = *(a1 + 296);
  v3 = *(a1 + 312);
  v4 = *(a1 + 264);
  v17 = *(a1 + 280);
  *v18 = v2;
  *&v18[16] = v3;
  v19 = *(a1 + 328);
  v5 = *(a1 + 232);
  v13 = *(a1 + 216);
  v14 = v5;
  v15 = *(a1 + 248);
  v16 = v4;
  sub_100005AD4(&qword_1003AA520);
  result = State.wrappedValue.getter();
  v7 = v21;
  if (v21)
  {
    v8 = v20;
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    if (v9)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      v12 = sub_1002393BC;
    }

    else
    {
      v12 = nullsub_1;
    }

    *&v13 = v8;
    *(&v13 + 1) = v7;
    v16 = v24;
    v17 = v25;
    *v18 = v26[0];
    *&v18[9] = *(v26 + 9);
    v14 = v22;
    v15 = v23;
    sub_10001AD18(v9);
    v12(&v13);

    return sub_100009EBC(&v20, &qword_1003A93C8);
  }

  return result;
}

uint64_t sub_100238EEC(uint64_t a1)
{
  v2 = type metadata accessor for Tips.InvalidationReason();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 72);
  v8 = *(a1 + 120);
  v9 = *(a1 + 152);
  v44[4] = *(a1 + 136);
  v45[0] = v9;
  *(v45 + 9) = *(a1 + 161);
  v10 = *(a1 + 88);
  v44[0] = v7;
  v44[1] = v10;
  v44[2] = *(a1 + 104);
  v44[3] = v8;
  if (*(&v7 + 1))
  {
    v11 = *(a1 + 232);
    v39[0] = *(a1 + 216);
    v39[1] = v11;
    v12 = *(a1 + 248);
    v13 = *(a1 + 296);
    v14 = *(a1 + 264);
    v40 = *(a1 + 280);
    v41 = v13;
    v15 = *(a1 + 296);
    v42 = *(a1 + 312);
    v16 = *(a1 + 264);
    v39[2] = v12;
    v39[3] = v16;
    v43 = *(a1 + 328);
    v33 = v40;
    v34 = v15;
    v35 = *(a1 + 312);
    v36 = *(a1 + 328);
    v17 = *(a1 + 232);
    v29 = *(a1 + 216);
    v30 = v17;
    v31 = *(a1 + 248);
    v32 = v14;
    v18 = *(a1 + 120);
    v19 = *(a1 + 152);
    v27[4] = *(a1 + 136);
    v28[0] = v19;
    *(v28 + 9) = *(a1 + 161);
    v20 = *(a1 + 88);
    v27[0] = *(a1 + 72);
    v27[1] = v20;
    v27[2] = *(a1 + 104);
    v27[3] = v18;
    sub_10001F620(v44, v37, &qword_1003A93C8);
    sub_10001F620(v44, v37, &qword_1003A93C8);
    sub_10001F620(v39, v37, &qword_1003AA520);
    sub_100005AD4(&qword_1003AA520);
    State.wrappedValue.setter();
    v37[4] = v33;
    v37[5] = v34;
    v37[6] = v35;
    v38 = v36;
    v37[0] = v29;
    v37[1] = v30;
    v37[2] = v31;
    v37[3] = v32;
    sub_100009EBC(v37, &qword_1003AA520);
    v21 = [objc_opt_self() mainBundle];
    v46._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0x495645445F57454ELL;
    v22._object = 0xEA00000000004543;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v46);

    v24 = String.init(format:_:)();
    v26 = v25;

    *&v29 = v24;
    *(&v29 + 1) = v26;
    (*(v3 + 104))(v6, enum case for Tips.InvalidationReason.actionPerformed(_:), v2);
    sub_100091B30();
    Tip.invalidate(reason:)();
    sub_100009EBC(v44, &qword_1003A93C8);
    (*(v3 + 8))(v6, v2);
  }

  return result;
}

unint64_t sub_1002392C4()
{
  result = qword_1003B9BF8;
  if (!qword_1003B9BF8)
  {
    sub_100005EA8(&qword_1003B9BE0);
    sub_10001BAEC(&qword_1003B9C00, &qword_1003B9C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9BF8);
  }

  return result;
}

uint64_t sub_100239384()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002393D4()
{

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 200))
  {
  }

  if (*(v0 + 240))
  {
  }

  return _swift_deallocObject(v0, 352, 7);
}

unint64_t sub_1002394BC()
{
  result = qword_1003B9C50;
  if (!qword_1003B9C50)
  {
    sub_100005EA8(&qword_1003B9C48);
    sub_100005EA8(&qword_1003B9C58);
    type metadata accessor for InlinePickerStyle();
    sub_100005EA8(&qword_1003B9C60);
    sub_10001BAEC(&qword_1003B9C68, &qword_1003B9C60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9C50);
  }

  return result;
}

uint64_t sub_100239614(uint64_t a1)
{
  v2 = type metadata accessor for SpeakButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100239698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002396B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100239700()
{
  result = qword_1003B9CB8;
  if (!qword_1003B9CB8)
  {
    sub_100005EA8(&qword_1003B9CB0);
    sub_100005EA8(&qword_1003A93D8);
    sub_100005EA8(&qword_1003A93C8);
    sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
    sub_10001F344(&qword_1003AA610, sub_10001F3BC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9CB8);
  }

  return result;
}

uint64_t sub_100239850()
{
  sub_100005EA8(&qword_1003B9BE8);
  sub_100005EA8(&qword_1003A93C8);
  sub_100005EA8(&qword_1003B9BE0);
  sub_1002392C4();
  sub_10001F344(&qword_1003AA508, sub_1000133B0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100239970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005AD4(&qword_1003B52B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100239A40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003B52B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SpeakButtonStyle()
{
  result = qword_1003B9D20;
  if (!qword_1003B9D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100239B3C()
{
  sub_100239BE8();
  if (v0 <= 0x3F)
  {
    sub_100239C38();
    if (v1 <= 0x3F)
    {
      sub_100198638();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100239BE8()
{
  if (!qword_1003AEF18)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AEF18);
    }
  }
}

void sub_100239C38()
{
  if (!qword_1003B9D30)
  {
    sub_100005EA8(&qword_1003B9C88);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B9D30);
    }
  }
}

uint64_t sub_100239CB8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B52A0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SpeakButtonStyle();
  sub_10001F620(v1 + *(v10 + 28), v9, &qword_1003B52A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100239EC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SpeakButtonStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  *a2 = static Alignment.center.getter();
  a2[1] = v9;
  v10 = sub_100005AD4(&qword_1003B9D68);
  sub_10023A0B4(v3, a1, a2 + *(v10 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = (a2 + *(sub_100005AD4(&qword_1003B9D70) + 36));
  v12 = v21;
  *v11 = v20;
  v11[1] = v12;
  v11[2] = v22;
  *(a2 + *(sub_100005AD4(&qword_1003B9D78) + 36)) = 0;
  v13 = *(v3 + 32);
  v19[2] = *(v3 + 24);
  v19[3] = v13;
  sub_100005AD4(&qword_1003B9D80);
  State.wrappedValue.getter();
  v14 = v19[1];
  sub_10023B0FC(v3, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10023B28C(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  result = sub_100005AD4(&qword_1003B9D88);
  *(a2 + *(result + 52)) = v14;
  v18 = (a2 + *(result + 56));
  *v18 = sub_10023B2F0;
  v18[1] = v16;
  return result;
}

uint64_t sub_10023A0B4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v118 = a3;
  v4 = type metadata accessor for DynamicTypeSize();
  v116 = *(v4 - 8);
  v117 = v4;
  __chkstk_darwin(v4);
  v115 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _Glass();
  v113 = *(v6 - 8);
  v114 = v6;
  v7 = __chkstk_darwin(v6);
  v110 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v111 = &v84 - v10;
  __chkstk_darwin(v9);
  v112 = &v84 - v11;
  v91 = type metadata accessor for ColorScheme();
  v12 = *(v91 - 8);
  v13 = __chkstk_darwin(v91);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v84 - v16;
  v90 = type metadata accessor for ButtonStyleConfiguration.Label();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100005AD4(&qword_1003B9D90);
  __chkstk_darwin(v85);
  v88 = &v84 - v19;
  v87 = sub_100005AD4(&qword_1003B9D98);
  __chkstk_darwin(v87);
  v21 = &v84 - v20;
  v93 = sub_100005AD4(&qword_1003B9DA0);
  __chkstk_darwin(v93);
  v23 = &v84 - v22;
  v99 = sub_100005AD4(&qword_1003B9DA8);
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v84 - v24;
  v92 = sub_100005AD4(&qword_1003B9DB0);
  __chkstk_darwin(v92);
  v103 = &v84 - v25;
  v105 = sub_100005AD4(&qword_1003B9DB8);
  __chkstk_darwin(v105);
  v107 = &v84 - v26;
  v106 = sub_100005AD4(&qword_1003B9DC0);
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = &v84 - v27;
  v101 = sub_100005AD4(&qword_1003B9DC8);
  v28 = __chkstk_darwin(v101);
  v109 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v98 = &v84 - v31;
  __chkstk_darwin(v30);
  v108 = &v84 - v32;
  v33 = sub_100005AD4(&qword_1003B9DD0);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = (&v84 - v35);
  v37 = sub_100005AD4(&qword_1003B9DD8);
  v38 = __chkstk_darwin(v37 - 8);
  v100 = &v84 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v41 = &v84 - v40;
  v42 = *a1 == 1;
  v95 = &v84 - v40;
  if (v42)
  {
    *v36 = static Alignment.center.getter();
    v36[1] = v43;
    v44 = sub_100005AD4(&qword_1003B9E20);
    sub_10023AD8C(a1, v36 + *(v44 + 44));
    sub_100023BD4(v36, v41, &qword_1003B9DD0);
    (*(v34 + 56))(v41, 0, 1, v33);
  }

  else
  {
    (*(v34 + 56))(&v84 - v40, 1, 1, v33);
  }

  v45 = v86;
  ButtonStyleConfiguration.label.getter();
  sub_100239CB8(v17);
  v46 = v91;
  (*(v12 + 104))(v15, enum case for ColorScheme.dark(_:), v91);
  v47 = static ColorScheme.== infix(_:_:)();
  v48 = *(v12 + 8);
  v48(v15, v46);
  v48(v17, v46);
  if (v47)
  {
    v49 = static Color.black.getter();
  }

  else
  {
    v49 = static Color.white.getter();
  }

  v50 = v49;
  KeyPath = swift_getKeyPath();
  v52 = v88;
  (*(v89 + 32))(v88, v45, v90);
  v53 = (v52 + *(v85 + 36));
  *v53 = KeyPath;
  v53[1] = v50;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100023BD4(v52, v21, &qword_1003B9D90);
  v54 = &v21[*(v87 + 36)];
  v55 = v120;
  *v54 = v119;
  *(v54 + 1) = v55;
  *(v54 + 2) = v121;
  sub_100023BD4(v21, v23, &qword_1003B9D98);
  v23[*(v93 + 36)] = 0;
  v56 = v110;
  static _Glass.regular.getter();
  static Color.accentColor.getter();
  v57 = v111;
  _Glass.tintColor(_:)();

  v58 = v114;
  v59 = *(v113 + 8);
  v59(v56, v114);
  v60 = v112;
  _Glass.interactive(_:)();
  v59(v57, v58);
  sub_10023B384();
  sub_10013EF74();
  v61 = v96;
  View._glassEffect<A>(_:in:)();
  v59(v60, v58);
  sub_100009EBC(v23, &qword_1003B9DA0);
  static Font.title3.getter();
  v62 = Font.bold()();

  v63 = swift_getKeyPath();
  v64 = v103;
  (*(v97 + 32))(v103, v61, v99);
  v65 = (v64 + *(v92 + 36));
  *v65 = v63;
  v65[1] = v62;
  v66 = v107;
  v67 = &v107[*(v105 + 36)];
  v68 = *(sub_100005AD4(&qword_1003AB620) + 28);
  v69 = enum case for Image.Scale.large(_:);
  v70 = type metadata accessor for Image.Scale();
  (*(*(v70 - 8) + 104))(v67 + v68, v69, v70);
  *v67 = swift_getKeyPath();
  sub_100023BD4(v64, v66, &qword_1003B9DB0);
  v72 = v115;
  v71 = v116;
  v73 = v117;
  (*(v116 + 104))(v115, enum case for DynamicTypeSize.large(_:), v117);
  sub_10023B590();
  v74 = v102;
  View.dynamicTypeSize(_:)();
  (*(v71 + 8))(v72, v73);
  sub_100009EBC(v66, &qword_1003B9DB8);
  v75 = v98;
  (*(v104 + 32))(v98, v74, v106);
  v76 = (v75 + *(v101 + 36));
  *v76 = sub_100132E50;
  v76[1] = 0;
  v77 = v108;
  sub_100023BD4(v75, v108, &qword_1003B9DC8);
  v78 = v95;
  v79 = v100;
  sub_10001F620(v95, v100, &qword_1003B9DD8);
  v80 = v109;
  sub_10023B758(v77, v109);
  v81 = v118;
  sub_10001F620(v79, v118, &qword_1003B9DD8);
  v82 = sub_100005AD4(&qword_1003B9E18);
  sub_10023B758(v80, v81 + *(v82 + 48));
  sub_100009EBC(v77, &qword_1003B9DC8);
  sub_100009EBC(v78, &qword_1003B9DD8);
  sub_100009EBC(v80, &qword_1003B9DC8);
  return sub_100009EBC(v79, &qword_1003B9DD8);
}

uint64_t sub_10023AD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003B9E28);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = static Color.accentColor.getter();
  v18 = *(a1 + 8);
  sub_100005AD4(&qword_1003AF578);
  State.wrappedValue.getter();
  v11 = v17[1];
  static AnyTransition.identity.getter();
  static UnitPoint.center.getter();
  static AnyTransition.scale(scale:anchor:)();
  static AnyTransition.opacity.getter();
  AnyTransition.combined(with:)();

  v12 = static AnyTransition.asymmetric(insertion:removal:)();

  v13 = enum case for BlendMode.destinationOut(_:);
  v14 = type metadata accessor for BlendMode();
  (*(*(v14 - 8) + 104))(v9, v13, v14);
  sub_10001F620(v9, v7, &qword_1003B9E28);
  *a2 = v10;
  *(a2 + 8) = 256;
  *(a2 + 16) = 0x3FB999999999999ALL;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  v15 = sub_100005AD4(&qword_1003B9E30);
  sub_10001F620(v7, a2 + *(v15 + 48), &qword_1003B9E28);

  sub_100009EBC(v9, &qword_1003B9E28);
  sub_100009EBC(v7, &qword_1003B9E28);
}

uint64_t sub_10023AFDC()
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10023B058()
{

  sub_100005AD4(&qword_1003AF578);
  result = State.wrappedValue.getter();
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10023B0FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakButtonStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023B160()
{
  v1 = (type metadata accessor for SpeakButtonStyle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  sub_100005AD4(&qword_1003B52A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10023B28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeakButtonStyle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023B2F0()
{
  type metadata accessor for SpeakButtonStyle();

  return sub_10023AFDC();
}

unint64_t sub_10023B384()
{
  result = qword_1003B9DE0;
  if (!qword_1003B9DE0)
  {
    sub_100005EA8(&qword_1003B9DA0);
    sub_10023B43C();
    sub_10001BAEC(&qword_1003B9DF8, &qword_1003B9E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9DE0);
  }

  return result;
}

unint64_t sub_10023B43C()
{
  result = qword_1003B9DE8;
  if (!qword_1003B9DE8)
  {
    sub_100005EA8(&qword_1003B9D98);
    sub_10023B4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9DE8);
  }

  return result;
}

unint64_t sub_10023B4C8()
{
  result = qword_1003B9DF0;
  if (!qword_1003B9DF0)
  {
    sub_100005EA8(&qword_1003B9D90);
    sub_100211C28();
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9DF0);
  }

  return result;
}

unint64_t sub_10023B590()
{
  result = qword_1003B9E08;
  if (!qword_1003B9E08)
  {
    sub_100005EA8(&qword_1003B9DB8);
    sub_10023B648();
    sub_10001BAEC(&qword_1003AB648, &qword_1003AB620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9E08);
  }

  return result;
}

unint64_t sub_10023B648()
{
  result = qword_1003B9E10;
  if (!qword_1003B9E10)
  {
    sub_100005EA8(&qword_1003B9DB0);
    sub_100005EA8(&qword_1003B9DA0);
    sub_10023B384();
    sub_10013EF74();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AA580, &qword_1003AA588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B9E10);
  }

  return result;
}

uint64_t sub_10023B758(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B9DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10023B80C()
{
  v10 = &type metadata for TranslateFeatures;
  v11 = sub_100009DF8();
  v9[0] = 10;
  v1 = isFeatureEnabled(_:)();
  sub_100008664(v9);
  if (v1)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();

    if (deviceSupportsPersonalTranslator)
    {
      goto LABEL_4;
    }

    result = _LTIsInternalInstall();
    if (!result)
    {
      return result;
    }

    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
LABEL_4:
      v5 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer);
      if (v5)
      {
        return [*(v5 + 48) enableStreamingSpeechTranslation];
      }
    }
  }

  return 0;
}

id sub_10023B92C(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer] = 0;
  v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate] = 0;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator] = a1;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_recordingHelper] = a2;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for SpeechManager();
  v5 = a1;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v13, "init");
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  v11 = [objc_opt_self() sharedInstance];
  [v10 addObserver:v9 selector:"handleAudioInterruptionWithNotification:" name:AVAudioSessionInterruptionNotification object:v11];

  return v9;
}

uint64_t sub_10023BA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v14;
  v8[9] = v15;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  sub_100005AD4(&qword_1003AA3B8);
  v8[10] = swift_task_alloc();
  v9 = sub_100005AD4(&qword_1003B9F10);
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v10 = sub_100005AD4(&qword_1003B9F18);
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v11 = sub_100005AD4(&qword_1003B9F20);
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_10023BC7C, 0, 0);
}

uint64_t sub_10023BC7C()
{
  if ([*(v0 + 32) enableAirPodsOwnVAD])
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v4[2] = v3;
    v4[3] = v1;
    v4[4] = v2;
    sub_10001AD18(v1);
    v5 = sub_100241400;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *(v0 + 160) = v5;
  *(v0 + 168) = v4;
  v6 = *(v0 + 128);
  v19 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 96);
  v17 = *(v0 + 88);
  v18 = *(v0 + 112);
  v9 = *(v0 + 72);
  v16 = *(v0 + 56);
  v10 = *(v0 + 32);
  v11 = *(*(v0 + 24) + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_recordingHelper);
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v16;
  *(v12 + 40) = v9;
  *(v12 + 48) = v5;
  *(v12 + 56) = v4;
  *(v12 + 64) = v10;
  (*(v8 + 104))(v7, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v17);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  AsyncThrowingStream.makeAsyncIterator()();
  (*(v19 + 8))(v6, v18);
  *(v0 + 176) = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_10023BEBC;
  v14 = *(v0 + 136);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 192, 0, 0, v14, v0 + 16);
}

uint64_t sub_10023BEBC()
{

  if (v0)
  {
    v1 = sub_10023C168;
  }

  else
  {
    v1 = sub_10023BFCC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10023BFCC()
{
  v1 = *(v0 + 192);
  if (*(v0 + 196))
  {
    v2 = *(v0 + 160);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    sub_10001ABE4(v2);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(*(v0 + 24) + *(v0 + 176) + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5, v1);
      swift_unknownObjectRelease();
    }

    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_10023BEBC;
    v8 = *(v0 + 136);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 192, 0, 0, v8, v0 + 16);
  }
}

uint64_t sub_10023C168()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_10001ABE4(v0[20]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2890);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error while listening: %@", v8, 0xCu);
    sub_100009EBC(v9, &unk_1003AECA0);
  }

  v11 = v0[10];
  v12 = v0[3];

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v14 = v12;
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  v16[5] = v4;
  sub_10005E66C(0, 0, v11, &unk_1002EAAE0, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10023C408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10023C4A4, v7, v6);
}

uint64_t sub_10023C4A4()
{
  v1 = *(v0 + 24);

  v2 = v1 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 32);
    v5 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(v4, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v7 = *(v0 + 8);

  return v7();
}

void sub_10023C574()
{
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer))
  {

    sub_1002424F0();
    if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate) == 1)
    {
      sub_100241EC4(&v32);
      if (*(&v33 + 1))
      {
        sub_100051124(&v32, v35);
        sub_100051124((v34 + 8), v36 + 8);
        sub_100051124(v35, v31);
        sub_100051124((v36 + 8), &v29);
        v1 = v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v2 = *(v1 + 8);
          if (qword_1003A9280 != -1)
          {
            swift_once();
          }

          v3 = type metadata accessor for Logger();
          sub_1000078E8(v3, qword_1003D2890);
          v4 = Logger.logObject.getter();
          v5 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v4, v5))
          {
            v6 = swift_slowAlloc();
            *v6 = 0;
            _os_log_impl(&_mh_execute_header, v4, v5, "Sending final result to delegate after swap", v6, 2u);
          }

          ObjectType = swift_getObjectType();
          (*(v2 + 40))(v31, &v29, ObjectType, v2);
          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_1003A9250 != -1)
          {
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          sub_1000078E8(v24, qword_1003D2800);
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v25, v26, "Cannot send result after swap because SpeechManagers's delegate doesn't exist", v27, 2u);
          }
        }

        sub_100008664(&v29);
        sub_100008664(v31);
        return;
      }

      sub_100009EBC(&v32, &unk_1003B9EA0);
    }

    sub_100242908(&v29);
    if (v30)
    {
      sub_100051124(&v29, v31);
      sub_100031DD8(v31, &v32);
      sub_100242A64(v34 + 8);
      sub_100008664(v31);
      v36[0] = v34[0];
      v36[1] = v34[1];
      v36[2] = v34[2];
      v35[0] = v32;
      v35[1] = v33;
      v11 = v0 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        if (qword_1003A9280 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_1000078E8(v13, qword_1003D2890);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "Sending partial result to delegate after swap", v16, 2u);
        }

        v17 = swift_getObjectType();
        (*(v12 + 32))(v35, v36 + 8, v17, v12);
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1003A9250 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_1000078E8(v20, qword_1003D2800);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Cannot send result after swap because SpeechManagers's delegate doesn't exist", v23, 2u);
        }
      }

      v18 = &unk_1003B9EB0;
      v19 = v35;
    }

    else
    {

      v18 = &unk_1003AECE0;
      v19 = &v29;
    }

    sub_100009EBC(v19, v18);
  }

  else
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2890);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Cannot swap result locales because result container is nil", v10, 2u);
    }
  }
}

void sub_10023CB70()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10028DF68(v21), (v5 & 1) == 0))
  {

    sub_100078028(v21);
    return;
  }

  sub_10000A37C(*(v3 + 56) + 32 * v4, v22);
  sub_100078028(v21);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (!v20)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D2890);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_27;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Audio interruption ended";
    goto LABEL_26;
  }

  if (v20 != 1)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000078E8(v19, qword_1003D2890);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_27;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Audio interruption with unhandled type";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

LABEL_27:

    return;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2890);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Audio interruption began", v9, 2u);
  }

  v10 = v1 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(0, 1, 0, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  v13 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer);
  if (v13)
  {
    [*(v13 + 48) endAudio];
  }

  sub_10020BB08();
}

id sub_10023CFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10023D0AC(void *a1)
{
  v2 = sub_100005AD4(&unk_1003B9EF0);
  __chkstk_darwin(v2 - 8);
  v45 = &v41 - v3;
  v4 = sub_100005AD4(&qword_1003B3680);
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v41 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9250 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  v11 = sub_1000078E8(v46, qword_1003D2800);
  v12 = a1;
  v47 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v42 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v43 = v6;
    v18 = v17;
    v48[0] = v17;
    *v16 = 67109634;
    *(v16 + 4) = [v12 isConfident];
    *(v16 + 8) = 1024;
    *(v16 + 10) = [v12 isFinal];

    *(v16 + 14) = 2082;
    v19 = [v12 dominantLanguage];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = Locale.ltIdentifier.getter();
    v22 = v21;
    (*(v8 + 8))(v10, v7);
    v23 = sub_10028D78C(v20, v22, v48);

    *(v16 + 16) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received LID result (confident: %{BOOL}d, final: %{BOOL}d): %{public}s", v16, 0x18u);
    sub_100008664(v18);
    v6 = v43;

    v4 = v42;
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Ignoring result above, SpeechRequest's delegate doesn't exist", v30, 2u);
    }

    goto LABEL_16;
  }

  v25 = Strong;
  v26 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v28 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v28, v31, "Ignoring result above, SpeechManagers's delegate doesn't exist", v32, 2u);
    }

LABEL_16:
    return;
  }

  if (!*&v25[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer])
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v46, qword_1003D2890);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Cannot capture lid result because SpeechResultContainer is nil", v35, 2u);
    }

    goto LABEL_22;
  }

  v27 = *(v26 + 8);

  sub_100242154(v12);
  if (v25[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate])
  {

LABEL_22:
    swift_unknownObjectRelease();
    return;
  }

  v36 = v45;
  sub_100241818(v45);
  if ((*(v44 + 48))(v36, 1, v4) == 1)
  {

    swift_unknownObjectRelease();
    sub_100009EBC(v36, &unk_1003B9EF0);
  }

  else
  {
    sub_10024122C(v36, v6);
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v46, qword_1003D2890);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Sending final LID result to delegate", v39, 2u);
    }

    ObjectType = swift_getObjectType();
    (*(v27 + 24))(v6, v6[*(v4 + 48)], ObjectType, v27);

    swift_unknownObjectRelease();

    sub_100009EBC(v6, &qword_1003B3680);
  }
}

uint64_t sub_10023D854(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v21);
}

void sub_10023DB04(void *a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_1000078E8(v7, qword_1003D2890);
  v9 = a1;
  v48 = v8;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v47 = v7;
    v13 = v12;
    v46 = swift_slowAlloc();
    *&v56[0] = v46;
    *v13 = 136446979;
    v14 = [v9 locale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = Locale.ltIdentifier.getter();
    v17 = v16;
    (*(v4 + 8))(v6, v3);
    v18 = sub_10028D78C(v15, v17, v56);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    LODWORD(v18) = [v9 isStable];

    *(v13 + 14) = v18;
    *(v13 + 18) = 1024;
    LODWORD(v18) = [v9 isFinal];

    *(v13 + 20) = v18;
    *(v13 + 24) = 2085;
    v19 = [v9 bestTranscription];
    v20 = [v19 formattedString];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10028D78C(v21, v23, v56);

    *(v13 + 26) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received speech result (locale: %{public}s, isStable: %{BOOL}d, final: %{BOOL}d): %{sensitive}s", v13, 0x22u);
    swift_arrayDestroy();

    v7 = v47;
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 8);
      if (([v9 isStable] & 1) != 0 || objc_msgSend(v9, "isFinal"))
      {
        v29 = *&v26[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer];
        if (v29)
        {

          sub_100240AD8(v9, v29);
          if (sub_10023B80C() & 1) != 0 || (v26[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate])
          {
            swift_unknownObjectRelease();
          }

          else
          {
            sub_100242908(&v50);
            if (v51)
            {
              sub_100051124(&v50, v52);
              sub_100031DD8(v52, v53);
              sub_100242A64(v54 + 8);
              sub_100008664(v52);
              v57[0] = v54[0];
              v57[1] = v54[1];
              v57[2] = v55;
              v56[0] = v53[0];
              v56[1] = v53[1];
              sub_10001F620(v56, v53, &qword_1003B9EB0);
              v39 = Logger.logObject.getter();
              v40 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v39, v40))
              {
                v41 = swift_slowAlloc();
                v49 = swift_slowAlloc();
                v52[0] = v49;
                *v41 = 136315138;
                if (v55)
                {
                  v42 = 7562585;
                }

                else
                {
                  v42 = 28494;
                }

                if (v55)
                {
                  v43 = 0xE300000000000000;
                }

                else
                {
                  v43 = 0xE200000000000000;
                }

                sub_100009EBC(v53, &qword_1003B9EB0);
                v44 = sub_10028D78C(v42, v43, v52);

                *(v41 + 4) = v44;
                _os_log_impl(&_mh_execute_header, v39, v40, "Sending partial result to delegate. Partial translation is attached: %s", v41, 0xCu);
                sub_100008664(v49);
              }

              else
              {

                sub_100009EBC(v53, &qword_1003B9EB0);
              }

              ObjectType = swift_getObjectType();
              (*(v28 + 32))(v56, v57 + 8, ObjectType, v28);

              swift_unknownObjectRelease();

              sub_100009EBC(v56, &qword_1003B9EB0);
            }

            else
            {

              swift_unknownObjectRelease();

              sub_100009EBC(&v50, &unk_1003AECE0);
            }
          }

          return;
        }

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Cannot capture speech recognition result because SpeechResultContainer is nil", v38, 2u);
        }
      }

      else
      {
      }

      swift_unknownObjectRelease();
      return;
    }

    if (qword_1003A9250 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v7, qword_1003D2800);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Ignoring result above, SpeechManagers's delegate doesn't exist", v35, 2u);
    }
  }

  else
  {
    if (qword_1003A9250 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v7, qword_1003D2800);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Ignoring result above, SpeechRequest's delegate doesn't exist.", v32, 2u);
    }
  }
}

void sub_10023E3AC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v112 = v4;
  v113 = v5;
  v6 = __chkstk_darwin(v4);
  v109 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v108 = &v103 - v9;
  v10 = __chkstk_darwin(v8);
  v111 = &v103 - v11;
  v12 = __chkstk_darwin(v10);
  v110 = &v103 - v13;
  __chkstk_darwin(v12);
  v15 = &v103 - v14;
  v16 = [a1 translations];
  sub_10000A2CC(0, &qword_1003AED08);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_10017A05C(v17);

  if (v18[2])
  {
    sub_100031DD8((v18 + 4), &v128);

    sub_1000085CC(&v128, *(&v129 + 1));
    v114 = dispatch thunk of FormattedString.formattedString.getter();
    v20 = v19;
    sub_100008664(&v128);
  }

  else
  {

    v114 = 0;
    v20 = 0;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_1000078E8(v21, qword_1003D2890);

  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v106 = v21;
    v27 = v26;
    v105 = swift_slowAlloc();
    *&v128 = v105;
    *v27 = 136446979;
    v28 = [v23 locale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = Locale.ltIdentifier.getter();
    v107 = a2;
    v31 = v30;
    (*(v113 + 8))(v15, v112);
    v32 = sub_10028D78C(v29, v31, &v128);

    *(v27 + 4) = v32;
    *(v27 + 12) = 1024;
    LODWORD(v32) = [v23 isFinal];

    *(v27 + 14) = v32;
    *(v27 + 18) = 2085;
    if (v20)
    {
      v33 = v114;
    }

    else
    {
      v33 = 7104878;
    }

    if (v20)
    {
      v34 = v20;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = sub_10028D78C(v33, v34, &v128);

    *(v27 + 20) = v35;
    *(v27 + 28) = 1024;
    LODWORD(v35) = [v23 endOfUtterance];

    *(v27 + 30) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Received translation result; locale: %{public}s; final: %{BOOL}d; formattedResult: %{sensitive}s; endOfUtterance: %{BOOL}d", v27, 0x22u);
    swift_arrayDestroy();

    v21 = v106;
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      v41 = *&v37[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer];
      if (!v41)
      {

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, "Cannot capture translation result because SpeechResultContainer is nil", v50, 2u);
        }

        goto LABEL_35;
      }

      if (v20)
      {
        if (!v114 && v20 == 0xE000000000000000)
        {

LABEL_38:
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Translation Result is empty, ignoring", v54, 2u);
          }

          swift_unknownObjectRelease();

          return;
        }

        v106 = *(v38 + 8);
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v51)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v106 = *(v38 + 8);
      }

      v107 = v22;
      v114 = v40;
      v55 = v41;
      if (![*(v41 + 48) enableMultiFieldInput])
      {
        goto LABEL_65;
      }

      v105 = v23;
      v56 = [v23 locale];
      v57 = v110;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v104 = Locale.identifier.getter();
      v59 = v58;
      v60 = v112;
      v62 = v113 + 8;
      v61 = *(v113 + 8);
      v61(v57, v112);
      v110 = v55;
      v63 = [*(v55 + 48) localePair];
      v64 = [v63 sourceLocale];

      v65 = v111;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = Locale.identifier.getter();
      v68 = v67;
      v113 = v62;
      v111 = v61;
      v61(v65, v60);
      if (v104 == v66 && v59 == v68)
      {

        v55 = v110;
        v23 = v105;
      }

      else
      {
        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v55 = v110;
        v23 = v105;
        if ((v69 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (*(v55 + 56) != 1)
      {
        goto LABEL_52;
      }

LABEL_47:
      v70 = [v23 locale];
      v71 = v108;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v104 = Locale.identifier.getter();
      v73 = v72;
      v74 = v112;
      v75 = v111;
      (v111)(v71, v112);
      v76 = [*(v55 + 48) localePair];
      v77 = [v76 targetLocale];

      v78 = v109;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v79 = Locale.identifier.getter();
      v81 = v80;
      v75(v78, v74);
      if (v104 == v79 && v73 == v81)
      {

        v55 = v110;
        v23 = v105;
      }

      else
      {
        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v55 = v110;
        v23 = v105;
        if ((v82 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      if (*(v55 + 56) == 1)
      {
LABEL_52:
        sub_100242908(&v131);
        if (*(&v132 + 1))
        {
          sub_100051124(&v131, &v123);
          sub_100031DD8(&v123, &v128);
          sub_100242A64(&v130[8]);
          sub_100008664(&v123);
          sub_100051124(&v128, &v118);
          sub_100009EBC(&v130[8], &unk_1003B9EC0);
          if (*(&v119 + 1))
          {
            sub_100051124(&v118, &v123);
            sub_100242908(&v115);
            if (v116)
            {
              sub_100051124(&v115, v117);
              sub_100031DD8(v117, &v128);
              sub_100242A64(&v130[8]);
              sub_100008664(v117);
              v131 = *&v130[8];
              v132 = *&v130[24];
              v133 = *&v130[40];
              sub_100008664(&v128);
              if (*(&v132 + 1))
              {
                sub_100051124(&v131, &v118);
                sub_100241F90(&v128);
                if (!*(&v129 + 1))
                {
                  sub_100009EBC(&v128, &unk_1003B9EA0);
                  ObjectType = swift_getObjectType();
                  (*(v106 + 40))(&v123, &v118, ObjectType);
                  sub_100008664(&v118);
                  sub_100008664(&v123);
                  goto LABEL_64;
                }

                sub_100008664(&v118);
                sub_100008664(&v123);
                v83 = &unk_1003B9EA0;
                v84 = &v128;
LABEL_63:
                sub_100009EBC(v84, v83);
LABEL_64:
                v85 = [v23 locale];
                static Locale._unconditionallyBridgeFromObjectiveC(_:)();

                sub_1002426E8();
                (v111)(v15, v112);
                sub_1002424F0();
                goto LABEL_65;
              }

              sub_100008664(&v123);
            }

            else
            {
              sub_100008664(&v123);
              sub_100009EBC(&v115, &unk_1003AECE0);
              v131 = 0u;
              v132 = 0u;
              v133 = 0;
            }

            v83 = &unk_1003B9EC0;
            v84 = &v131;
            goto LABEL_63;
          }
        }

        else
        {
          sub_100009EBC(&v131, &unk_1003AECE0);
          v118 = 0u;
          v119 = 0u;
          *&v120 = 0;
        }

        v83 = &unk_1003AECE0;
        v84 = &v118;
        goto LABEL_63;
      }

LABEL_65:
      sub_100240D94(v23, v55);
      sub_100241EC4(&v123);
      if (*(&v124 + 1))
      {
        sub_100051124(&v123, &v128);
        sub_100051124((&v125 + 8), &v130[8]);
        sub_100051124(&v128, &v118);
        sub_100051124(&v130[8], &v131);
        if (v37[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate])
        {
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            *v88 = 0;
            _os_log_impl(&_mh_execute_header, v86, v87, "Received additional result after sending final result, not going to re-send final result.", v88, 2u);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v37[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate] = 1;
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&_mh_execute_header, v89, v90, "Sending final result to delegate", v91, 2u);
          }

          v92 = swift_getObjectType();
          (*(v106 + 40))(&v118, &v131, v92);

          swift_unknownObjectRelease();
        }

        sub_100008664(&v131);
        sub_100008664(&v118);
        return;
      }

      sub_100009EBC(&v123, &unk_1003B9EA0);
      if (v37[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate])
      {

LABEL_35:
        swift_unknownObjectRelease();
        return;
      }

      sub_100242908(&v131);
      if (!*(&v132 + 1))
      {

        swift_unknownObjectRelease();
        sub_100009EBC(&v131, &unk_1003AECE0);
        return;
      }

      sub_100051124(&v131, &v118);
      sub_100031DD8(&v118, &v123);
      sub_100242A64(&v125 + 8);
      sub_100008664(&v118);
      *v130 = v125;
      *&v130[16] = v126;
      *&v130[32] = v127;
      v128 = v123;
      v129 = v124;
      sub_10001F620(&v128, &v123, &qword_1003B9EB0);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v118 = v96;
        *v95 = 136315138;
        if (v127)
        {
          v97 = 7562585;
        }

        else
        {
          v97 = 28494;
        }

        if (v127)
        {
          v98 = 0xE300000000000000;
        }

        else
        {
          v98 = 0xE200000000000000;
        }

        sub_100009EBC(&v123, &qword_1003B9EB0);
        v99 = sub_10028D78C(v97, v98, &v118);

        *(v95 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v93, v94, "Sending partial result to delegate. Partial translation is attached: %s", v95, 0xCu);
        sub_100008664(v96);
      }

      else
      {

        sub_100009EBC(&v123, &qword_1003B9EB0);
      }

      if (sub_10023B80C())
      {
        sub_100241F90(&v118);
        if (*(&v119 + 1))
        {
          v125 = v120;
          v126 = v121;
          v127 = v122;
          v123 = v118;
          v124 = v119;
          v100 = swift_getObjectType();
          (*(v106 + 40))(&v123, &v125 + 8, v100);

          swift_unknownObjectRelease();
          sub_100009EBC(&v123, &qword_1003B9EB8);
LABEL_92:
          sub_100009EBC(&v128, &qword_1003B9EB0);
          return;
        }

        sub_100009EBC(&v118, &unk_1003B9EA0);
      }

      v101 = swift_getObjectType();
      (*(v106 + 32))(&v128, &v130[8], v101);

      swift_unknownObjectRelease();
      goto LABEL_92;
    }

    if (qword_1003A9250 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v21, qword_1003D2800);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Ignoring result above, SpeechManagers's delegate doesn't exist", v47, 2u);
    }
  }

  else
  {

    if (qword_1003A9250 != -1)
    {
      swift_once();
    }

    sub_1000078E8(v21, qword_1003D2800);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Ignoring result above, SpeechRequest's delegate doesn't exist.", v44, 2u);
    }
  }
}

uint64_t sub_10023F5D8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A2CC(0, &qword_1003A9C40);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1002411B0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_10038A890;
  v13 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000115AC();
  sub_100005AD4(&unk_1003A9C50);
  sub_100011604();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_10023F898(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100005AD4(&unk_1003B9E90);
    sub_10000A2CC(0, &qword_1003A9A88);
    if (swift_dynamicCast())
    {
      v1 = qword_1003A9280;
      v2 = v23;
      if (v1 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_1000078E8(v3, qword_1003D2890);
      v4 = v2;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v4;
        *v8 = v4;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v5, v6, "Translation finished with error: %@", v7, 0xCu);
        sub_100009EBC(v8, &unk_1003AECA0);
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v12 + 8);
          swift_getObjectType();
          v14 = *(v13 + 48);
          v4 = v4;
          v14(v4);

          swift_unknownObjectRelease();
          goto LABEL_24;
        }

        if (qword_1003A9250 != -1)
        {
          swift_once();
        }

        sub_1000078E8(v3, qword_1003D2800);
        v18 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v18, v21, "Ignoring result above, SpeechManagers's delegate doesn't exist", v22, 2u);
        }
      }

      else
      {

        if (qword_1003A9250 != -1)
        {
          swift_once();
        }

        sub_1000078E8(v3, qword_1003D2800);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Ignoring result above, SpeechRequest's delegate doesn't exist.", v20, 2u);
        }
      }

      goto LABEL_24;
    }
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000078E8(v15, qword_1003D2890);
  v4 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v4, v16, "Translation finished without an error", v17, 2u);
  }

LABEL_24:
}

uint64_t sub_10023FD54()
{
  type metadata accessor for SensorServiceManager();
  swift_initStaticObject();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v1 = sub_100227804(sub_100241420, v0);

  if (v1)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2890);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error while launching sensor service for OVAD streaming state changes: %@", v6, 0xCu);
      sub_100009EBC(v7, &unk_1003AECA0);
    }

    return swift_willThrow();
  }

  return result;
}

void sub_10023FF28(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      sub_10023FFA8(a2);
    }

    else
    {
      sub_100240234(a1 & 1);
    }
  }
}

uint64_t sub_10023FFA8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2890);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "OVAD streaming failed with error: %@", v8, 0xCu);
    sub_100009EBC(v9, &unk_1003AECA0);
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  swift_errorRetain();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = a1;

  sub_10005E36C(0, 0, v4, &unk_1002EAAF8, v14);
}

void sub_100240234(char a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D2890);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "OVAD streaming state changed: %{BOOL}d", v10, 8u);
  }

  if (qword_1003A9170 != -1)
  {
    swift_once();
  }

  v11 = qword_1003D2470;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v11;
  *(v14 + 40) = a1 & 1;
  sub_10005E36C(0, 0, v6, &unk_1002EAB00, v14);

  if (a1)
  {
    sub_100018594();
  }

  *(v11 + 65) = a1 & 1;
  v15 = v2 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 56))(a1 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  v18 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  [v18 updateOVADStreamingState:isa];
}

uint64_t sub_1002404F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10024058C, v7, v6);
}

uint64_t sub_10024058C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 48);
      v5 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 48))(v4, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_100240670(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_100240714(a1, a2);
    if (!v4)
    {
      if (a4)
      {
        a4(v10);
      }
    }
  }
}

uint64_t sub_100240714(uint64_t a1, unint64_t a2)
{
  if (qword_1003A92F0 != -1)
  {
    swift_once();
  }

  objc_sync_enter(qword_1003D29B0);
  if (!qword_1003D29A8 || (qword_1003D29A0 == a1 ? (v5 = qword_1003D29A8 == a2) : (v5 = 0), !v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D2890);

    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_21;
    }

    v16 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10028D78C(a1, a2, &v22);
    *(v16 + 12) = 2080;
    v21[0] = qword_1003D29A0;
    v21[1] = qword_1003D29A8;

    sub_100005AD4(&qword_1003AA740);
    v17 = String.init<A>(describing:)();
    v19 = sub_10028D78C(v17, v18, &v22);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v15, "Not starting OVAD as session: %s does not match PTSession:%s", v16, 0x16u);
    swift_arrayDestroy();

    goto LABEL_20;
  }

  if (qword_1003A9280 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2890);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10028D78C(a1, a2, v21);
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting OVAD streaming state change handler for ovadSessionID: %s", v9, 0xCu);
    sub_100008664(v10);
  }

  sub_10023FD54();
  if (!v2)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v12))
    {
LABEL_21:

      return objc_sync_exit(qword_1003D29B0);
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Enquing Tone and TTS for listening", v13, 2u);
LABEL_20:

    goto LABEL_21;
  }

  return objc_sync_exit(qword_1003D29B0);
}

uint64_t sub_100240AD8(void *a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5130);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *(a2 + 64);
  v11 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstResult;
  swift_beginAccess();
  sub_10001F620(v10 + v11, v9, &qword_1003B5130);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = a1;
  sub_100009EBC(v9, &qword_1003B5130);
  if (v14 == 1)
  {
    Date.init()();
    (*(v13 + 56))(v7, 0, 1, v12);
    swift_beginAccess();
    sub_100081B28(v7, v10 + v11);
    swift_endAccess();
  }

  swift_beginAccess();
  v16 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_10028CCDC(0, v16[2] + 1, 1, v16);
    *(a2 + 24) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_10028CCDC((v18 > 1), v19 + 1, 1, v16);
  }

  v23 = sub_10000A2CC(0, &unk_1003B9EE0);
  v24 = sub_1000819A8(&qword_1003AED10, &unk_1003B9EE0);
  *&v22 = v15;
  v16[2] = v19 + 1;
  sub_100051124(&v22, &v16[5 * v19 + 4]);
  *(a2 + 24) = v16;
  return swift_endAccess();
}

uint64_t sub_100240D94(void *a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B5130);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *(a2 + 64);
  v11 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTranslation;
  swift_beginAccess();
  sub_10001F620(v10 + v11, v9, &qword_1003B5130);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = a1;
  sub_100009EBC(v9, &qword_1003B5130);
  if (v14 == 1)
  {
    Date.init()();
    (*(v13 + 56))(v7, 0, 1, v12);
    swift_beginAccess();
    sub_100081B28(v7, v10 + v11);
    swift_endAccess();
  }

  swift_beginAccess();
  v16 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 32) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_10028CD00(0, v16[2] + 1, 1, v16);
    *(a2 + 32) = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_10028CD00((v18 > 1), v19 + 1, 1, v16);
  }

  v23 = sub_10000A2CC(0, &unk_1003B9ED0);
  v24 = sub_1000819A8(&qword_1003AECC0, &unk_1003B9ED0);
  *&v22 = v15;
  v16[2] = v19 + 1;
  sub_100051124(&v22, &v16[5 * v19 + 4]);
  *(a2 + 32) = v16;
  return swift_endAccess();
}

uint64_t sub_100241138()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100241170()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002411B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002411E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10024122C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002412B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002412F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_10023C408(a1, v4, v5, v7, v6);
}

uint64_t sub_1002413B8()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100241428()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100241470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_1002404F4(a1, v4, v5, v7, v6);
}

uint64_t sub_100241530()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100241570(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_1000183E0(a1, v4, v5, v6, v7);
}

Class sub_100241654(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10000A2CC(0, &qword_1003B2A60);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

double sub_100241708@<D0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = a2 + 40 * v6 + 32;
  v8 = v6 + 1;
  while (--v8)
  {
    v7 -= 40;
    v9 = a1(v7);
    if (v3)
    {
      return result;
    }

    if (v9)
    {
      sub_100031DD8(v7, a3);
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_100241798(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = _swiftEmptyArrayStorage;
  *(v2 + 56) = 0;
  *(v2 + 64) = [objc_allocWithZone(type metadata accessor for SpeechTranslationInstrumentation()) init];
  *(v2 + 72) = [objc_allocWithZone(_LTSpeechLIDLoggingRequest) init];
  *(v2 + 80) = 0;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return v2;
}

uint64_t sub_100241818@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v57 - v8;
  v10 = *(v1 + 48);
  if (![v10 autodetectLanguage] || (objc_msgSend(v10, "forceSourceLocale") & 1) != 0)
  {
    v11 = *(v1 + 56);
    v12 = sub_100005AD4(&qword_1003B3680);
    v13 = *(v12 + 48);
    v14 = [v10 localePair];
    v15 = v14;
    if (v11 == 1)
    {
      v16 = [v14 targetLocale];
    }

    else
    {
      v16 = [v14 sourceLocale];
    }

    v17 = v16;

    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    *(a1 + v13) = 1;
    v18 = *(*(v12 - 8) + 56);
    goto LABEL_7;
  }

  v23 = *(v1 + 16);
  if (!v23)
  {
    v33 = sub_100005AD4(&qword_1003B3680);
    v18 = *(*(v33 - 8) + 56);
    v21 = v33;
    v19 = a1;
    v20 = 1;
    goto LABEL_8;
  }

  if (*(v1 + 56) != 1)
  {
    v12 = sub_100005AD4(&qword_1003B3680);
    v34 = *(v12 + 48);
    v35 = v23;
    v36 = [v35 dominantLanguage];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v36) = [v35 isConfident];
    *(a1 + v34) = v36;
    v18 = *(*(v12 - 8) + 56);
LABEL_7:
    v19 = a1;
    v20 = 0;
    v21 = v12;
LABEL_8:

    return v18(v19, v20, 1, v21);
  }

  v57 = v1;
  v24 = v23;
  v25 = [v10 localePair];
  v59 = v24;
  v26 = [v24 dominantLanguage];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Locale._bridgeToObjectiveC()().super.isa;
  v58 = *(v4 + 8);
  v58(v7, v3);
  v28 = [v25 oppositeToLocale:isa];

  if (v28)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = sub_100005AD4(&qword_1003B3680);
    v30 = *(v29 + 48);
    (*(v4 + 16))(a1, v9, v3);
    v31 = v59;
    v32 = [v59 isConfident];

    v58(v9, v3);
    *(a1 + v30) = v32;
  }

  else
  {
    v37 = v59;
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000078E8(v38, qword_1003D2890);
    v39 = v37;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v42 = 136446466;
      v43 = [v39 dominantLanguage];
      LODWORD(v57) = v41;
      v44 = v43;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = Locale.ltIdentifier.getter();
      v47 = v46;
      v58(v7, v3);
      v48 = sub_10028D78C(v45, v47, &v60);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v49 = [v10 localePair];
      v50 = [v49 combinedLocaleIdentifier];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = sub_10028D78C(v51, v53, &v60);

      *(v42 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v40, v57, "Couldn't find locale opposite to speech request's locale pair. Given locale: %{public}s. Locale pair: %s", v42, 0x16u);
      swift_arrayDestroy();
    }

    v29 = sub_100005AD4(&qword_1003B3680);
    v55 = *(v29 + 48);
    v56 = [v39 dominantLanguage];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v56) = [v39 isConfident];
    *(a1 + v55) = v56;
  }

  return (*(*(v29 - 8) + 56))(a1, 0, 1, v29);
}

double sub_100241EC4@<D0>(_OWORD *a1@<X8>)
{
  sub_100242F80(&v7);
  if (v8)
  {
    sub_100051124(&v7, v9);
    sub_100243314(&v5);
    if (v6)
    {
      sub_100051124(&v5, &v7);
      sub_10024378C(&v7);
      sub_100051124(v9, a1);
      sub_100051124(&v7, a1 + 40);
      return result;
    }

    sub_100008664(v9);
    v3 = &unk_1003B9EC0;
    v4 = &v5;
  }

  else
  {
    v3 = &unk_1003AECE0;
    v4 = &v7;
  }

  sub_100009EBC(v4, v3);
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_100241F90@<D0>(_OWORD *a1@<X8>)
{
  sub_100242908(&v4);
  if (v5)
  {
    sub_100051124(&v4, v6);
    sub_100031DD8(v6, &v7);
    sub_100242A64(&v9 + 8);
    sub_100008664(v6);
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v12 = v7;
    v13 = v8;
    sub_10001F620(&v12, &v7, &qword_1003B9EB0);
    if (v11)
    {
      sub_100051124((&v9 + 8), v6);
      sub_100008664(&v7);
      sub_1000085CC(v6, v6[3]);
      if (dispatch thunk of TranslationResult.endOfUtterance.getter())
      {
        v9 = v14;
        v10 = v15;
        v11 = v16;
        v7 = v12;
        v8 = v13;
        sub_100051124(&v7, a1);
        sub_100031DD8(v6, a1 + 40);
        sub_100009EBC(&v9 + 8, &unk_1003B9EC0);
        sub_100008664(v6);
        return result;
      }

      sub_100009EBC(&v12, &qword_1003B9EB0);
      v3 = v6;
    }

    else
    {
      sub_100009EBC(&v12, &qword_1003B9EB0);
      sub_100009EBC(&v9 + 8, &unk_1003B9EC0);
      v3 = &v7;
    }

    sub_100008664(v3);
  }

  else
  {
    sub_100009EBC(&v4, &unk_1003AECE0);
  }

  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_100242154(void *a1)
{
  v27 = a1;
  v2 = sub_100005AD4(&unk_1003B9EF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_100005AD4(&qword_1003B5130);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v28 = v1;
  v11 = *(v1 + 64);
  v12 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstLID;
  swift_beginAccess();
  sub_10001F620(v11 + v12, v10, &qword_1003B5130);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v10, 1, v13);
  sub_100009EBC(v10, &qword_1003B5130);
  if (v15 == 1)
  {
    Date.init()();
    (*(v14 + 56))(v8, 0, 1, v13);
    swift_beginAccess();
    sub_10003BD84(v8, v11 + v12, &qword_1003B5130);
    swift_endAccess();
  }

  v16 = v11;
  v17 = v28;
  sub_100241818(v4);
  v18 = sub_100005AD4(&qword_1003B3680);
  v19 = (*(*(v18 - 8) + 48))(v4, 1, v18);
  sub_100009EBC(v4, &unk_1003B9EF0);
  if (v19 != 1)
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000078E8(v20, qword_1003D2890);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Only one LID result is expected. Something went wrong.", v23, 2u);
    }
  }

  v24 = v27;
  v25 = [v27 isConfident];
  *(v16 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lidTriggered) = v25 ^ 1;
  [*(v17 + 72) setLidResult:v24];
  v26 = *(v17 + 16);
  *(v17 + 16) = v24;
}

void sub_1002424F0()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (([v2 autodetectLanguage] & 1) != 0 || objc_msgSend(v2, "enableStreamingSpeechTranslation"))
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D2890);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Swapping locales", v6, 2u);
    }

    *(v1 + 56) = (*(v1 + 56) & 1) == 0;
  }

  else
  {
    if (qword_1003A9280 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000078E8(v7, qword_1003D2890);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Cannot swap results because swapping is only supported with autodetect or streaming speech", v9, 2u);
    }
  }
}

void sub_1002426E8()
{
  swift_beginAccess();
  v1 = sub_100244038(sub_10024432C);
  v2 = *(v0[3] + 16);
  if (v2 < v1)
  {
    __break(1u);
  }

  else
  {
    sub_1002B59EC(v1, v2);
    swift_endAccess();
    swift_beginAccess();
    v0[4] = _swiftEmptyArrayStorage;

    v3 = v0[2];
    v0[2] = 0;
  }
}

uint64_t sub_1002427AC(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  v6 = Locale.identifier.getter();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v6 == Locale.identifier.getter() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100242920(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of SpeechResult.isEmpty()())
  {
    v6 = 0;
  }

  else
  {
    sub_1000085CC(a1, a1[3]);
    dispatch thunk of AnnotatedResult.locale.getter();
    v6 = static Locale.== infix(_:_:)();
    (*(v3 + 8))(v5, v2);
  }

  return v6 & 1;
}

double sub_100242A64@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = type metadata accessor for Locale();
  v4 = *(v30 - 8);
  v5 = __chkstk_darwin(v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v28 - v8;
  v9 = sub_100005AD4(&unk_1003B9EF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_100005AD4(&qword_1003B3680);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  sub_100241818(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100009EBC(v11, &unk_1003B9EF0);
  }

  else
  {
    sub_10024122C(v11, v18);
    v19 = [*(v1 + 48) localePair];
    sub_10001F620(v18, v16, &qword_1003B3680);
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v21 = v16;
    v22 = v30;
    v28 = *(v4 + 8);
    v28(v21, v30);
    v23 = [v19 oppositeToLocale:isa];

    if (v23)
    {
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = v29;
      (*(v4 + 32))(v29, v7, v22);
      v25 = swift_beginAccess();
      v26 = *(v2 + 32);
      __chkstk_darwin(v25);
      *(&v28 - 2) = v24;

      sub_100241708(sub_1002442EC, v26, &v31);

      sub_100009EBC(v18, &qword_1003B3680);
      if (v32)
      {
        sub_100051124(&v31, a1);
        v28(v24, v22);
        return result;
      }

      sub_100009EBC(&v31, &unk_1003B9EC0);
      v28(v24, v22);
    }

    else
    {
      sub_100009EBC(v18, &qword_1003B3680);
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100242E70(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  dispatch thunk of TranslationResult.locale.getter();
  LOBYTE(a1) = static Locale.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

double sub_100242F98@<D0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005AD4(&unk_1003B9EF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  v8 = sub_100005AD4(&qword_1003B3680);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-v10];
  sub_100241818(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v12 = &unk_1003B9EF0;
    v13 = v7;
  }

  else
  {
    sub_10024122C(v7, v11);
    v14 = swift_beginAccess();
    v15 = *(v2 + 24);
    __chkstk_darwin(v14);
    *&v17[-16] = v11;

    sub_100241708(a1, v15, &v18);

    if (v19)
    {
      sub_100051124(&v18, a2);
      sub_100009EBC(v11, &qword_1003B3680);
      return result;
    }

    sub_100009EBC(&v18, &unk_1003AECE0);
    v12 = &qword_1003B3680;
    v13 = v11;
  }

  sub_100009EBC(v13, v12);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1002431D0(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of SpeechResult.isFinal.getter())
  {
    sub_1000085CC(a1, a1[3]);
    dispatch thunk of AnnotatedResult.locale.getter();
    v6 = static Locale.== infix(_:_:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100243314@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - v10;
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  sub_100242F80(&v30);
  if (!v31)
  {
    result = sub_100009EBC(&v30, &unk_1003AECE0);
LABEL_8:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v28 = v13;
  v29 = a1;
  sub_100051124(&v30, v32);
  v14 = *(v1 + 48);
  v15 = [v14 localePair];
  sub_1000085CC(v32, v32[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v27 = *(v5 + 8);
  v27(v11, v4);
  v17 = [v15 oppositeToLocale:isa];

  if (!v17)
  {
    result = sub_100008664(v32);
    a1 = v29;
    goto LABEL_8;
  }

  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v28;
  (*(v5 + 32))(v28, v8, v4);
  v19 = [v14 localePair];
  v20 = [v19 isPassthrough];

  if (v20)
  {
    swift_beginAccess();
    v21 = *(v2 + 32);
    v22 = *(v21 + 16);
    if (v22)
    {
      sub_100031DD8(v21 + 40 * v22 - 8, v29);
    }

    else
    {
      v26 = v29;
      *(v29 + 32) = 0;
      *v26 = 0u;
      v26[1] = 0u;
    }
  }

  else
  {
    v24 = swift_beginAccess();
    v25 = *(v2 + 32);
    __chkstk_darwin(v24);
    *(&v27 - 2) = v18;

    sub_100241708(sub_1002442AC, v25, v29);
  }

  v27(v18, v4);
  return sub_100008664(v32);
}

uint64_t sub_100243648(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000085CC(a1, a1[3]);
  if (dispatch thunk of TranslationResult.isFinal.getter())
  {
    sub_1000085CC(a1, a1[3]);
    dispatch thunk of TranslationResult.locale.getter();
    v6 = static Locale.== infix(_:_:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10024378C(void *a1)
{
  v3 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 80))
  {
    return result;
  }

  v10 = 1;
  *(v1 + 80) = 1;
  v11 = *(v1 + 64);
  v58 = v1;
  v12 = *(v1 + 48);
  v13 = [v12 localePair];
  v14 = *&v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair];
  *&v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair] = v13;

  v15 = [v12 censorSpeech];
  v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_censorSpeech] = v15;
  sub_10000A2CC(0, &qword_1003A9B80);
  v16 = static NSUserDefaults.translationGroupDefaults.getter();
  v17 = NSUserDefaults.onDeviceOnly.getter();

  v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_onDeviceModeEnabled] = v17 & 1;
  sub_1000085CC(a1, a1[3]);
  v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_offline] = dispatch thunk of TranslationResult.isOffline.getter() & 1;
  sub_1000085CC(a1, a1[3]);
  v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lowQualityMT] = TranslationResult.isLowConfidence.getter() & 1;
  v56 = v12;
  v18 = [v12 localePair];
  v19 = a1[3];
  v57 = a1;
  sub_1000085CC(a1, v19);
  v20 = v59;
  dispatch thunk of TranslationResult.locale.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v22 = v6;
  v54 = *(v7 + 8);
  v55 = v7 + 8;
  v54(v20, v6);
  v23 = [v18 oppositeToLocale:isa];

  if (v23)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = 0;
  }

  (*(v7 + 56))(v5, v10, 1, v6);
  v24 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_sourceLocale;
  swift_beginAccess();
  sub_10003BD84(v5, &v11[v24], &qword_1003AFCE0);
  swift_endAccess();
  v25 = v57;
  sub_100031DD8(v57, aBlock);
  sub_100005AD4(&qword_1003AC710);
  sub_10000A2CC(0, &unk_1003B9ED0);
  v26 = swift_dynamicCast();
  v27 = v58;
  if (v26)
  {
    v28 = v61;
    v29 = [v61 translations];

    sub_10000A2CC(0, &qword_1003AED08);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v30 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_7:
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v31 = *(v30 + 32);
        }

        v28 = v31;

        v32 = [v28 statistics];
        if (v32)
        {
          v33 = v32;
          v34 = [v32 inputTokenCount];
          *&v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputTokenCount] = v34;
          v35 = [v33 inputSubtokenCount];

          *&v11[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputSubtokenCount] = v35;
        }

        v36 = [v28 senses];
        sub_10000A2CC(0, &qword_1003AEE80);
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v37 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result)
          {
LABEL_14:
            if ((v37 & 0xC000000000000001) == 0)
            {
              if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v38 = *(v37 + 32);
              goto LABEL_17;
            }

LABEL_33:
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
            v39 = v38;

            v40 = [v39 isPhrasebookMatch];

            if (v40)
            {
              v41 = &OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_nBestDisplay;
            }

            else
            {
              v41 = &OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_senseDisambiguation;
            }

            v11[*v41] = 1;
            goto LABEL_26;
          }
        }

        else
        {
          result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_26;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

LABEL_26:
  v42 = String._bridgeToObjectiveC()();
  v43 = swift_allocObject();
  *(v43 + 16) = v11;
  aBlock[4] = sub_100244270;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100241654;
  aBlock[3] = &unk_10038AA70;
  v44 = _Block_copy(aBlock);
  v45 = v11;

  AnalyticsSendEventLazy();
  _Block_release(v44);

  v46 = v56;
  result = [v56 autodetectLanguage];
  if (result)
  {
    result = [v46 forcedOfflineTranslation];
    if ((result & 1) == 0)
    {
      v47 = *(v27 + 72);
      v48 = [v46 uniqueID];
      if (!v48)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = String._bridgeToObjectiveC()();
      }

      [v47 setRequestID:v48];

      v49 = [v46 sessionID];
      [v47 setConversationID:v49];

      v50 = [v46 localePair];
      [v47 setLocalePair:v50];

      sub_1000085CC(v25, v25[3]);
      v51 = v59;
      dispatch thunk of TranslationResult.locale.getter();
      v52 = Locale._bridgeToObjectiveC()().super.isa;
      v54(v51, v22);
      [v47 setTargetLocale:v52];

      [v47 setSelectedLocale:0];
      return [*(v27 + 40) log:v47];
    }
  }

  return result;
}

id *sub_100243F90()
{

  return v0;
}

uint64_t sub_100243FE0()
{
  sub_100243F90();

  return swift_deallocClassInstance();
}

uint64_t sub_100244038(uint64_t (*a1)(__int128 *))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 9; ; i += 5)
    {
      result = a1(&v4[i - 5]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v17 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_100031DD8(&v4[i], v16);
          v12 = a1(v16);
          result = sub_100008664(v16);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_100031DD8(&v4[5 * v1 + 4], v16);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_100031DD8(&v4[i], v15);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_1000A3980(v4);
              }

              v14 = &v4[5 * v1];
              sub_100008664((v14 + 4));
              result = sub_100051124(v15, (v14 + 4));
              if (v10 >= v4[2])
              {
                goto LABEL_31;
              }

              sub_100008664(&v4[i]);
              result = sub_100051124(v16, &v4[i]);
              *v17 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 2);
          v11 = v4[2];
          i += 5;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_100244238()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100244294(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100244364(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_100005AD4(&qword_1003BA240);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_100005AD4(&qword_1003BA248);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_100005AD4(&qword_1003BA250);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000085CC(a1, a1[3]);
  sub_100247FA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100247FF4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_100248048();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_100244620(void *a1, char a2)
{
  v4 = sub_100005AD4(&qword_1003BA1A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000085CC(a1, a1[3]);
  sub_100247684();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = a2 & 1;
  sub_10024772C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10024476C(uint64_t a1)
{
  v2 = sub_100246FF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002447A8(uint64_t a1)
{
  v2 = sub_100246FF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002447E4(void *a1)
{
  v2 = sub_100005AD4(&qword_1003BA180);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000085CC(a1, a1[3]);
  sub_100246FF8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002448F8(uint64_t a1)
{
  v2 = sub_100248048();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244934(uint64_t a1)
{
  v2 = sub_100248048();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100244970()
{
  if (*v0)
  {
    return 0x436C6F72746E6F63;
  }

  else
  {
    return 0x75426E6F69746361;
  }
}

uint64_t sub_1002449C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75426E6F69746361 && a2 == 0xEC0000006E6F7474;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x436C6F72746E6F63 && a2 == 0xED00007265746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100244AA8(uint64_t a1)
{
  v2 = sub_100247FA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244AE4(uint64_t a1)
{
  v2 = sub_100247FA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100244B20(uint64_t a1)
{
  v2 = sub_100247FF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244B5C(uint64_t a1)
{
  v2 = sub_100247FF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100244B98@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002470D8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_100244C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x724F656372756F73 && a2 == 0xEC0000006E696769)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100244C90(uint64_t a1)
{
  v2 = sub_100247684();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100244CCC(uint64_t a1)
{
  v2 = sub_100247684();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100244D08@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100247514(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

id sub_100244D54()
{
  result = [objc_allocWithZone(type metadata accessor for SpeechTranslationActivityManager()) init];
  qword_1003D2A98 = result;
  return result;
}

void sub_100244DDC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityPresentationOptions();
  v45 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B5130);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100005AD4(&qword_1003BA1C8);
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  sub_1002455CC(0);
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v46 = sub_1000078E8(v13, qword_1003D2818);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Requesting begin activity", v16, 2u);
  }

  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_100246E9C();
  sub_100246EF4();
  sub_100246F4C();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  sub_100005AD4(&qword_1003B5888);
  v18 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002D3160;
  (*(v19 + 104))(v21 + v20, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v18);
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.isActionButtonInitiated.setter();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  sub_100005AD4(&qword_1003BA1D0);
  LOBYTE(v47) = a1 & 1;
  v22 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)();
  v41 = v4;
  v23 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity;
  *&v2[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity] = v22;

  v24 = v2;
  v25 = v2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v28 = os_log_type_enabled(v26, v27);
  v42 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v47 = v39;
    *v29 = 136446210;
    v40 = v23;
    if (!*&v25[v23])
    {
      goto LABEL_12;
    }

    v30 = v24;
    v31 = Activity.id.getter();
    v33 = v32;

    v34 = v31;
    v24 = v30;
    v35 = sub_10028D78C(v34, v33, &v47);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Requested an activity successfully [id: %{public}s]", v29, 0xCu);
    sub_100008664(v39);

    (*(v45 + 8))(v6, v41);
    (*(v43 + 8))(v12, v44);
    v23 = v40;
  }

  else
  {

    (*(v45 + 8))(v6, v41);
    (*(v43 + 8))(v12, v44);
  }

  if (*&v42[v23])
  {

    v36 = Activity.id.getter();
    v38 = v37;

    sub_100245C88(v36, v38);

    return;
  }

  __break(1u);
LABEL_12:

  __break(1u);
}

void sub_1002455CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003BA1C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = type metadata accessor for ActivityState();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  if (a1)
  {
    v53 = v4;
  }

  else
  {
    if (!*(v2 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity))
    {
      return;
    }

    v53 = v4;
  }

  dispatch thunk of Activity.activityState.getter();
  (*(v11 + 104))(v14, enum case for ActivityState.dismissed(_:), v10);
  sub_1001A4874();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v11 + 8);
  v18(v14, v10);
  v18(v16, v10);
  if (v17)
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000078E8(v19, qword_1003D2818);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v20, v21))
    {

      return;
    }

    v22 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = Activity.id.getter();
    v25 = sub_10028D78C(v23, v24, &v55);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    dispatch thunk of Activity.activityState.getter();
    v26 = String.init<A>(describing:)();
    v28 = sub_10028D78C(v26, v27, &v55);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Skipping end activity [id: %s activityState: %s] ", v22, 0x16u);
    swift_arrayDestroy();

    goto LABEL_25;
  }

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000078E8(v29, qword_1003D2818);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = v2;
    v33 = v32;
    v51 = swift_slowAlloc();
    v55 = v51;
    *v33 = 136315394;
    v34 = Activity.id.getter();
    v36 = sub_10028D78C(v34, v35, &v55);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    dispatch thunk of Activity.activityState.getter();
    v37 = String.init<A>(describing:)();
    v39 = sub_10028D78C(v37, v38, &v55);

    *(v33 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Requesting end activity [id: %s activityState: %s]", v33, 0x16u);
    swift_arrayDestroy();

    v2 = v52;
  }

  v40 = Activity.id.getter();
  sub_100246A78(v40, v41);

  v42 = sub_100005AD4(&qword_1003BA1C8);
  (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
  static ActivityUIDismissalPolicy.immediate.getter();
  dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
  (*(v54 + 8))(v6, v53);
  sub_100009EBC(v9, &qword_1003BA1C0);
  v43 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity;
  if (!*(v2 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity))
  {
    Activity.id.getter();
    goto LABEL_21;
  }

  v44 = Activity.id.getter();
  v46 = v45;

  v47 = Activity.id.getter();
  if (!v46)
  {
LABEL_21:

    goto LABEL_25;
  }

  if (v44 == v47 && v46 == v48)
  {
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v49 & 1) == 0)
    {
      return;
    }
  }

  *(v2 + v43) = 0;
LABEL_25:
}

void sub_100245C88(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v88 = type metadata accessor for ActivityState();
  v90 = *(v88 - 8);
  v8 = __chkstk_darwin(v88);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v79 - v10;
  v11 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_assertion;
  v12 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_assertion);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 sessionIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == a1 && v17 == a2)
    {

      if (!*(v5 + v11))
      {
        goto LABEL_20;
      }

      goto LABEL_10;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {

      if (!*(v5 + v11))
      {
        goto LABEL_20;
      }

LABEL_10:
      if (qword_1003A9258 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000078E8(v20, qword_1003D2818);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not taking assertion as it is non-nil", v23, 2u);
      }

      goto LABEL_45;
    }

    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v85 = v3;
    v24 = type metadata accessor for Logger();
    sub_1000078E8(v24, qword_1003D2818);
    v25 = v13;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    v84 = v26;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock[0] = v83;
      *v28 = 136446466;
      v29 = [v25 sessionIdentifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v82) = v27;
      v32 = v31;

      v33 = sub_10028D78C(v30, v32, aBlock);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_10028D78C(a1, a2, aBlock);
      v34 = v84;
      _os_log_impl(&_mh_execute_header, v84, v82, "Releasing assertion for other activity [id: %{public}s] in favour of new assertion for activity [id: %{public}s]", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v35 = [v25 sessionIdentifier];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    sub_100246A78(v36, v38);

    v4 = v85;
    if (*(v5 + v11))
    {
      goto LABEL_10;
    }
  }

LABEL_20:
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = a1;
  v40[4] = a2;
  v41 = objc_allocWithZone(SNAProminentPresentationAssertion);

  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1002477F8;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10024704C;
  aBlock[3] = &unk_10038AB68;
  v44 = _Block_copy(aBlock);

  v45 = [v41 initWithExplanation:v42 sessionIdentifier:v43 invalidationHandler:v44];
  _Block_release(v44);

  if ([v45 state] == 1)
  {
    v46 = *(v5 + v11);
    *(v5 + v11) = v45;
    v47 = v45;

    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000078E8(v48, qword_1003D2818);

    v21 = v47;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136446466;
      *(v51 + 4) = sub_10028D78C(a1, a2, aBlock);
      *(v51 + 12) = 2050;
      *(v51 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v49, v50, "Assertion acquired [id: %{public}s, assertion state %{public}lu]", v51, 0x16u);
      sub_100008664(v52);
    }

    else
    {
    }

LABEL_45:

    return;
  }

  v53 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity);
  if (!v53)
  {
LABEL_39:
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_1000078E8(v73, qword_1003D2818);

    v21 = v45;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v76 = 136446466;
      *(v76 + 4) = sub_10028D78C(a1, a2, aBlock);
      *(v76 + 12) = 2050;
      *(v76 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v74, v75, "Acquire assertion FAIL [id:%{public}s, assertion state %{public}lu]", v76, 0x16u);
      sub_100008664(v77);
    }

    else
    {
    }

    sub_10024781C();
    swift_allocError();
    *v78 = 0;
    v78[1] = 0;
    v78[2] = 1;
    swift_willThrow();
    goto LABEL_45;
  }

  v82 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity;
  v83 = v5;
  v85 = v4;

  v54 = Activity.id.getter();
  v81 = a1;
  if (v54 == a1 && v55 == a2)
  {
  }

  else
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
LABEL_38:

      a1 = v81;
      goto LABEL_39;
    }
  }

  v57 = v86;
  dispatch thunk of Activity.activityState.getter();
  v84 = v53;
  v58 = v90;
  v59 = v87;
  v60 = v88;
  v80 = *(v90 + 104);
  v80(v87, enum case for ActivityState.dismissed(_:), v88);
  v61 = static ActivityState.== infix(_:_:)();
  v62 = *(v58 + 8);
  v62(v59, v60);
  v90 = v58 + 8;
  v62(v57, v60);
  if ((v61 & 1) == 0)
  {
    v63 = v86;
    dispatch thunk of Activity.activityState.getter();
    v64 = v87;
    v65 = v88;
    v80(v87, enum case for ActivityState.ended(_:), v88);
    v66 = static ActivityState.== infix(_:_:)();
    v62(v64, v65);
    v62(v63, v65);
    if ((v66 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_1000078E8(v67, qword_1003D2818);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v83;
  if (v70)
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "Assertion acquisition failed due to activity having already ended", v72, 2u);
  }

  *(v71 + v82) = 0;
}

uint64_t sub_100246734(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  type metadata accessor for MainActor();

  v15 = a1;
  swift_errorRetain();
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v13;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = v15;
  v17[8] = a2;

  sub_10005E36C(0, 0, v11, &unk_1002EAD68, v17);
}

uint64_t sub_1002468F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for MainActor();
  v8[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100246994, v10, v9);
}

uint64_t sub_100246994()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1002479A4(*(v0 + 48), *(v0 + 56), [*(v0 + 64) state], objc_msgSend(*(v0 + 64), "invalidationReason"), 0, *(v0 + 72));
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_100246A78(uint64_t a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_assertion;
  v6 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_assertion);
  if (v6)
  {
    oslog = v6;
    [oslog invalidate];
    v7 = *(v2 + v5);
    *(v2 + v5) = 0;

    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2818);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10028D78C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "Assertion Released [id: %{public}s]", v11, 0xCu);
      sub_100008664(v12);

LABEL_10:
      return;
    }
  }

  else
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000078E8(v13, qword_1003D2818);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10028D78C(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "Not releasing assertion for session [id: %{public}s] since assertion is nil", v15, 0xCu);
      sub_100008664(v16);

      goto LABEL_10;
    }
  }
}

id sub_100246D34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechTranslationActivityManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100246DEC()
{
  result = qword_1003BA150;
  if (!qword_1003BA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA150);
  }

  return result;
}

unint64_t sub_100246E44()
{
  result = qword_1003BA158;
  if (!qword_1003BA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA158);
  }

  return result;
}

unint64_t sub_100246E9C()
{
  result = qword_1003BA160;
  if (!qword_1003BA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA160);
  }

  return result;
}

unint64_t sub_100246EF4()
{
  result = qword_1003BA168;
  if (!qword_1003BA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA168);
  }

  return result;
}

unint64_t sub_100246F4C()
{
  result = qword_1003BA170;
  if (!qword_1003BA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA170);
  }

  return result;
}

unint64_t sub_100246FA4()
{
  result = qword_1003BA178;
  if (!qword_1003BA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA178);
  }

  return result;
}

unint64_t sub_100246FF8()
{
  result = qword_1003BA188;
  if (!qword_1003BA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA188);
  }

  return result;
}

void sub_10024704C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1002470D8(void *a1)
{
  v24 = sub_100005AD4(&qword_1003BA208);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_100005AD4(&qword_1003BA210);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_100005AD4(&qword_1003BA218);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_1000085CC(a1, a1[3]);
  sub_100247FA0();
  v10 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    return sub_100008664(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = KeyedDecodingContainer.allKeys.getter();
  if (*(v14 + 16) != 1)
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    sub_100005AD4(&qword_1003BA228);
    *v18 = &type metadata for SpeechTranslationActivityAttributes.LiveActivitySourceOrigin;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100008664(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_100247FF4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_100248048();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100008664(v26);
  return v27;
}

void *sub_100247514(void *a1)
{
  v3 = sub_100005AD4(&qword_1003BA190);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = sub_1000085CC(a1, a1[3]);
  sub_100247684();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100008664(a1);
  }

  else
  {
    sub_1002476D8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    sub_100008664(a1);
  }

  return v7;
}

unint64_t sub_100247684()
{
  result = qword_1003BA198;
  if (!qword_1003BA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA198);
  }

  return result;
}

unint64_t sub_1002476D8()
{
  result = qword_1003BA1A0;
  if (!qword_1003BA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1A0);
  }

  return result;
}

unint64_t sub_10024772C()
{
  result = qword_1003BA1B0;
  if (!qword_1003BA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1B0);
  }

  return result;
}

uint64_t sub_100247780()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002477B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100247804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10024781C()
{
  result = qword_1003BA1B8;
  if (!qword_1003BA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1B8);
  }

  return result;
}

uint64_t sub_100247870()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1002478C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001B16C;

  return sub_1002468F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1002479A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000078E8(v12, qword_1003D2818);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = a1;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    v21 = v16;
    v30 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_10028D78C(v17, a2, &v30);
    _os_log_impl(&_mh_execute_header, v13, v14, "Assertion invalidated [id: %{public}s]", v15, 0xCu);
    sub_100008664(v21);
    a4 = v20;
    a5 = v19;
    a6 = v18;
  }

  if (a3 == 2)
  {
    v22 = 0;
  }

  else
  {
    if (a3 == 1)
    {
      return;
    }

    if (a3)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v22 = 7;
  }

  if (a5)
  {
    v23 = v22;
  }

  else
  {
    v23 = a4;
  }

  sub_10024781C();
  swift_allocError();
  *v24 = a3;
  v24[1] = v23;
  v24[2] = a6;
  swift_willThrow();
  swift_errorRetain();
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, oslog, v25, "Assertion invalidation reason: %@", v26, 0xCu);
    sub_100009EBC(v27, &unk_1003AECA0);
  }

  else
  {
  }
}

uint64_t sub_100247D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_100247D94()
{
  result = qword_1003BA1D8;
  if (!qword_1003BA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1D8);
  }

  return result;
}

unint64_t sub_100247DEC()
{
  result = qword_1003BA1E0;
  if (!qword_1003BA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1E0);
  }

  return result;
}

unint64_t sub_100247E44()
{
  result = qword_1003BA1E8;
  if (!qword_1003BA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1E8);
  }

  return result;
}

unint64_t sub_100247E9C()
{
  result = qword_1003BA1F0;
  if (!qword_1003BA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1F0);
  }

  return result;
}

unint64_t sub_100247EF4()
{
  result = qword_1003BA1F8;
  if (!qword_1003BA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA1F8);
  }

  return result;
}

unint64_t sub_100247F4C()
{
  result = qword_1003BA200;
  if (!qword_1003BA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA200);
  }

  return result;
}

unint64_t sub_100247FA0()
{
  result = qword_1003BA220;
  if (!qword_1003BA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA220);
  }

  return result;
}

unint64_t sub_100247FF4()
{
  result = qword_1003BA230;
  if (!qword_1003BA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA230);
  }

  return result;
}

unint64_t sub_100248048()
{
  result = qword_1003BA238;
  if (!qword_1003BA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA238);
  }

  return result;
}

unint64_t sub_1002480D0()
{
  result = qword_1003BA258;
  if (!qword_1003BA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA258);
  }

  return result;
}

unint64_t sub_100248128()
{
  result = qword_1003BA260;
  if (!qword_1003BA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA260);
  }

  return result;
}

unint64_t sub_100248180()
{
  result = qword_1003BA268;
  if (!qword_1003BA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA268);
  }

  return result;
}

unint64_t sub_1002481D8()
{
  result = qword_1003BA270;
  if (!qword_1003BA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA270);
  }

  return result;
}

unint64_t sub_100248230()
{
  result = qword_1003BA278;
  if (!qword_1003BA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA278);
  }

  return result;
}

unint64_t sub_100248288()
{
  result = qword_1003BA280;
  if (!qword_1003BA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA280);
  }

  return result;
}

unint64_t sub_1002482E0()
{
  result = qword_1003BA288;
  if (!qword_1003BA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003BA288);
  }

  return result;
}

uint64_t sub_100248398(uint64_t a1)
{
  v3 = type metadata accessor for LiveActivityView();
  result = __chkstk_darwin(v3 - 8);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_activeLayoutMode);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_activeLayoutMode) = a1;
  if (a1 != 4 && v7 == 4)
  {
    dispatch thunk of UIHostingController.rootView.getter();
    v8 = v6[1];
    v11[2] = *v6;
    v11[3] = v8;
    sub_100005AD4(&qword_1003B3878);
    State.wrappedValue.getter();
    sub_1002495DC(v6, type metadata accessor for LiveActivityView);
    v9 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_currentActivity;

    sub_10015C420(v10);

    *(v1 + v9) = 0;
  }

  return result;
}

char *sub_10024864C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for LiveActivityView();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_currentActivity] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_preferredLayoutMode] = 4;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_presentationBehaviors] = 8;
  *&v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_maximumLayoutMode] = 4;
  v11 = &v3[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_associatedScenePersistenceIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_leadingView;
  type metadata accessor for EmptyActivityPlaceholderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_trailingView;
  *&v4[v14] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_minimalView;
  *&v4[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_hostingController;
  type metadata accessor for LiveActivityViewModel();
  swift_allocObject();
  v29 = sub_10015A1D8();
  State.init(wrappedValue:)();
  v17 = v31;
  *v10 = v30;
  v10[1] = v17;
  v18 = *(v8 + 28);
  *(v10 + v18) = swift_getKeyPath();
  sub_100005AD4(&qword_1003BA370);
  swift_storeEnumTagMultiPayload();
  v19 = objc_allocWithZone(sub_100005AD4(&qword_1003BA378));
  *&v4[v16] = SecureHostingController.init(rootView:)();
  if (a2)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for SpeechTranslationApertureElementViewController();
  v28.receiver = v4;
  v28.super_class = v21;
  v22 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v20, a3);

  v23 = qword_1003A9308;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1003D2A98;

  *&v24[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_currentActivity] = *(v25 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity);

  return v24;
}

id sub_100248998()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2);
  v33.receiver = v0;
  v33.super_class = type metadata accessor for SpeechTranslationApertureElementViewController();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_hostingController];
  sub_100005AD4(&unk_1003BA350);
  *(swift_allocObject() + 16) = xmmword_1002D1370;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  sub_1001A6C24(&qword_1003B5AB0, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_100005AD4(&unk_1003BA360);
  sub_1001A16AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  [v0 addChildViewController:v3];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  result = [v3 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  [v5 addSubview:result];

  result = [v3 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  [v3 didMoveToParentViewController:v1];
  sub_100005AD4(&unk_1003AFCC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D53E0;
  result = [v3 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = [result leadingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = [result leadingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v8 + 32) = v13;
  result = [v3 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v15 = [result trailingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = result;
  v17 = [result trailingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v8 + 40) = v18;
  result = [v3 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = result;
  v20 = [result topAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = result;
  v22 = [result topAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v8 + 48) = v23;
  result = [v3 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = result;
  v25 = [result bottomAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = result;
  v27 = objc_opt_self();
  v28 = [v26 bottomAnchor];

  v29 = [v25 constraintEqualToAnchor:v28];
  *(v8 + 56) = v29;
  sub_100033604();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  result = [v1 view];
  if (result)
  {
    v31 = result;
    sub_100005AD4(&qword_1003AFCD0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1002D3160;
    *(v32 + 32) = type metadata accessor for UITraitBacklightLuminance();
    *(v32 + 40) = &protocol witness table for UITraitBacklightLuminance;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100005AD4(&qword_1003AFCD8);
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_100248FDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v1 = Strong;
  v2 = [Strong view];

  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = [v2 traitCollection];

  v4 = [v3 _backlightLuminance];
  if (v4 != 2)
  {
LABEL_4:
    if (qword_1003A9308 != -1)
    {
      swift_once();
    }

    sub_1002455CC(0);
  }
}

id sub_100249580(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002495DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10024963C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100249654()
{
  v1 = v0;
  v2 = type metadata accessor for LiveActivityView();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_currentActivity) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_preferredLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_presentationBehaviors) = 8;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_maximumLayoutMode) = 4;
  v6 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_associatedScenePersistenceIdentifier);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_leadingView;
  type metadata accessor for EmptyActivityPlaceholderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v9 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_trailingView;
  *(v1 + v9) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_minimalView;
  *(v1 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v11 = OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_hostingController;
  type metadata accessor for LiveActivityViewModel();
  swift_allocObject();
  v15[1] = sub_10015A1D8();
  State.init(wrappedValue:)();
  v12 = v15[3];
  *v5 = v15[2];
  v5[1] = v12;
  v13 = *(v3 + 28);
  *(v5 + v13) = swift_getKeyPath();
  sub_100005AD4(&qword_1003BA370);
  swift_storeEnumTagMultiPayload();
  v14 = objc_allocWithZone(sub_100005AD4(&qword_1003BA378));
  *(v1 + v11) = SecureHostingController.init(rootView:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100249878()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v13 = [v1 window];

  if (!v13)
  {
    return;
  }

  v3 = [*&v0[OBJC_IVAR____TtC17SequoiaTranslator46SpeechTranslationApertureElementViewController_hostingController] view];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
  [v13 bounds];
  v6 = v5;
  v8 = v7;
  LODWORD(v5) = 1148846080;
  LODWORD(v7) = 1112014848;
  [v4 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:v8 verticalFittingPriority:{v5, v7}];
  v10 = v9;
  v12 = v11;

  [v0 setPreferredContentSize:{v10, v12}];
}

uint64_t sub_1002499A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1002499EC()
{
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair] = 0;
  v1 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_sourceLocale;
  v2 = type metadata accessor for Locale();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  Date.init()();
  v3 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstResult;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(&v0[v3], 1, 1, v4);
  v5(&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTranslation], 1, 1, v4);
  v5(&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTTS], 1, 1, v4);
  v5(&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstLID], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputTokenCount] = 0;
  *&v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_inputSubtokenCount] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_airplaneModeEnabled] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_onDeviceModeEnabled] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_offline] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_censorSpeech] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_senseDisambiguation] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lidTriggered] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_lowQualityMT] = 0;
  v0[OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_nBestDisplay] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SpeechTranslationInstrumentation();
  return objc_msgSendSuper2(&v7, "init");
}

id sub_100249BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeechTranslationInstrumentation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SpeechTranslationInstrumentation()
{
  result = qword_1003BA3B0;
  if (!qword_1003BA3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100249D88()
{
  sub_100249EFC(319, &qword_1003B3410, &type metadata accessor for Locale);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100249EFC(319, &qword_1003AE370, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100249EFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_100249F50()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B5130);
  v3 = __chkstk_darwin(v2 - 8);
  v96 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v95 = &v89 - v6;
  v7 = __chkstk_darwin(v5);
  v94 = &v89 - v8;
  __chkstk_darwin(v7);
  v93 = &v89 - v9;
  v10 = type metadata accessor for Date();
  v97 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v92 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v91 = &v89 - v14;
  v15 = __chkstk_darwin(v13);
  v90 = &v89 - v16;
  __chkstk_darwin(v15);
  v89 = &v89 - v17;
  v18 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v89 - v19;
  v21 = type metadata accessor for Locale();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_localePair);
  v26 = &_swiftEmptyDictionarySingleton;
  if (v25)
  {
    v27 = v25;
    sub_100003754();
    v28 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = &_swiftEmptyDictionarySingleton;
    sub_10029163C(v28, 0x6150656C61636F6CLL, 0xEA00000000007269, isUniquelyReferenced_nonNull_native);

    v26 = v103;
  }

  v30 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_sourceLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v30, v20, &qword_1003AFCE0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100009EBC(v20, &qword_1003AFCE0);
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    Locale.ltIdentifier.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v26;
    sub_10029163C(v31, 0x6F4C656372756F73, 0xEC000000656C6163, v32);
    v26 = v102;
    (*(v22 + 8))(v24, v21);
  }

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v26;
  sub_10029163C(isa, 0x6563697665446E6FLL, 0xEC00000065646F4DLL, v34);
  v35 = v102;
  v36 = Bool._bridgeToObjectiveC()().super.super.isa;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v35;
  sub_10029163C(v36, 0x656E696C66666FLL, 0xE700000000000000, v37);
  v38 = v102;
  v39 = Bool._bridgeToObjectiveC()().super.super.isa;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v38;
  sub_10029163C(v39, 0x7053726F736E6563, 0xEC00000068636565, v40);
  v41 = v102;
  v42 = Bool._bridgeToObjectiveC()().super.super.isa;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v41;
  sub_10029163C(v42, 0xD000000000000013, 0x80000001002FBCB0, v43);
  v44 = v102;
  v45 = Bool._bridgeToObjectiveC()().super.super.isa;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v44;
  sub_10029163C(v45, 0x676769725444494CLL, 0xEC00000064657265, v46);
  v47 = v102;
  v48 = Bool._bridgeToObjectiveC()().super.super.isa;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v47;
  sub_10029163C(v48, 0x696C617551776F6CLL, 0xEC000000544D7974, v49);
  v50 = v102;
  v51 = Bool._bridgeToObjectiveC()().super.super.isa;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v102 = v50;
  sub_10029163C(v51, 0x736944747365426ELL, 0xEC00000079616C70, v52);
  v53 = v102;
  v54 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstResult;
  swift_beginAccess();
  v55 = v1 + v54;
  v56 = v93;
  sub_10001F620(v55, v93, &qword_1003B5130);
  v57 = v97;
  v58 = *(v97 + 48);
  if (v58(v56, 1, v10) == 1)
  {
    sub_100009EBC(v56, &qword_1003B5130);
  }

  else
  {
    v59 = v89;
    (*(v57 + 32))(v89, v56, v10);
    Date.timeIntervalSince(_:)();
    v60 = Double._bridgeToObjectiveC()().super.super.isa;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v53;
    sub_10029163C(v60, 0xD000000000000011, 0x80000001002FBD10, v61);
    v53 = v101;
    (*(v57 + 8))(v59, v10);
  }

  v62 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTranslation;
  swift_beginAccess();
  v63 = v1 + v62;
  v64 = v94;
  sub_10001F620(v63, v94, &qword_1003B5130);
  if (v58(v64, 1, v10) == 1)
  {
    sub_100009EBC(v64, &qword_1003B5130);
  }

  else
  {
    v65 = v90;
    (*(v57 + 32))(v90, v64, v10);
    Date.timeIntervalSince(_:)();
    v66 = Double._bridgeToObjectiveC()().super.super.isa;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v100 = v53;
    sub_10029163C(v66, 0xD00000000000001CLL, 0x80000001002FBCF0, v67);
    v53 = v100;
    (*(v57 + 8))(v65, v10);
  }

  v68 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstTTS;
  swift_beginAccess();
  v69 = v1 + v68;
  v70 = v95;
  sub_10001F620(v69, v95, &qword_1003B5130);
  if (v58(v70, 1, v10) == 1)
  {
    sub_100009EBC(v70, &qword_1003B5130);
    sub_1000B0530();
    v71 = NSNumber.init(floatLiteral:)(-1.0).super.super.isa;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v53;
    sub_10029163C(v71, 0x69466F54656D6974, 0xEE00535454747372, v72);
    v73 = v99;
  }

  else
  {
    v74 = v91;
    (*(v57 + 32))(v91, v70, v10);
    Date.timeIntervalSince(_:)();
    v75 = Double._bridgeToObjectiveC()().super.super.isa;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v53;
    sub_10029163C(v75, 0x69466F54656D6974, 0xEE00535454747372, v76);
    v73 = v99;
    (*(v57 + 8))(v74, v10);
  }

  v77 = OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationInstrumentation_firstLID;
  swift_beginAccess();
  v78 = v1 + v77;
  v79 = v96;
  sub_10001F620(v78, v96, &qword_1003B5130);
  if (v58(v79, 1, v10) == 1)
  {
    sub_100009EBC(v79, &qword_1003B5130);
  }

  else
  {
    v80 = v92;
    (*(v57 + 32))(v92, v79, v10);
    Date.timeIntervalSince(_:)();
    v81 = Double._bridgeToObjectiveC()().super.super.isa;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v73;
    sub_10029163C(v81, 0x494C6F74656D6974, 0xE900000000000044, v82);
    v73 = v98;
    (*(v57 + 8))(v80, v10);
  }

  v83 = Int._bridgeToObjectiveC()().super.super.isa;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v73;
  sub_10029163C(v83, 0xD000000000000012, 0x80000001002FBC60, v84);
  v85 = v98;
  v86 = Int._bridgeToObjectiveC()().super.super.isa;
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v85;
  sub_10029163C(v86, 0x6B6F547475706E69, 0xEF746E756F436E65, v87);
  return v98;
}

uint64_t sub_10024AB0C(uint64_t a1, unint64_t a2)
{
  v5 = sub_100005AD4(&qword_1003B7A08);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC17SequoiaTranslator21StableStringExtractor_segmentationCharacters;
  swift_beginAccess();
  sub_10001F620(v2 + v12, v7, &qword_1003B7A08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100009EBC(v7, &qword_1003B7A08);
LABEL_9:
    v18 = 1;
    return v18 & 1;
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = sub_10025F730(a1, a2);
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = v13;
  if ((sub_10024B340(v13, v14) & 0x100000000) != 0)
  {

    goto LABEL_8;
  }

  v17 = sub_10024B490(v16, v15);

  if (v17 != 1)
  {
LABEL_8:
    (*(v9 + 8))(v11, v8);
    goto LABEL_9;
  }

  v18 = CharacterSet.contains(_:)();
  (*(v9 + 8))(v11, v8);
  return v18 & 1;
}

uint64_t sub_10024AD50(uint64_t a1, char a2)
{
  v3 = v2;
  sub_10001F620(a1, v30, &unk_1003B9EC0);
  if (v31)
  {
    sub_1000085CC(v30, v31);
    v6 = dispatch thunk of TranslationResult.alternatives.getter();
    if (*(v6 + 16))
    {
      sub_100031DD8(v6 + 32, v32);

      sub_1000085CC(v32, v33);
      v7 = dispatch thunk of TranslationAlternative.stableString.getter();
      v9 = v8;
      sub_100008664(v32);
      sub_100008664(v30);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {

      sub_100008664(v30);
    }
  }

  else
  {
    sub_100009EBC(v30, &unk_1003B9EC0);
  }

  v7 = 0;
  v9 = 0xE000000000000000;
LABEL_8:
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000078E8(v10, qword_1003D2920);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32[0] = v14;
    *v13 = 136642819;
    *(v13 + 4) = sub_10028D78C(v7, v9, v32);
    _os_log_impl(&_mh_execute_header, v11, v12, "TTS: current full stable string from: %{sensitive}s", v13, 0xCu);
    sub_100008664(v14);
  }

  v15 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v15 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = String.count.getter();

  sub_10024BA98(v16, v7, v9);

  v17 = static String._fromSubstring(_:)();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 || (sub_10024AB0C(v17, v19) & 1) == 0 && (a2 & 1) == 0)
  {

LABEL_21:
    v17 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_22;
  }

  *(v3 + 16) = v7;
  *(v3 + 24) = v9;
LABEL_22:

  if ((a2 & 1) == 0)
  {
    goto LABEL_35;
  }

  v21 = *(v3 + 24);
  v22 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v21) & 0xF;
  }

  if (!v22)
  {
    sub_10001F620(a1, v32, &unk_1003B9EC0);
    if (v33)
    {
      sub_1000085CC(v32, v33);
      v23 = dispatch thunk of TranslationResult.disambiguableResult.getter();
      if (v23)
      {
        v24 = v23;
        v25 = [v23 targetText];

        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        sub_100008664(v32);
LABEL_33:

        v19 = v27;
        goto LABEL_34;
      }

      sub_100008664(v32);
    }

    else
    {
      sub_100009EBC(v32, &unk_1003B9EC0);
    }

    v17 = 0;
    v27 = 0xE000000000000000;
    goto LABEL_33;
  }

LABEL_34:
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;

LABEL_35:
  v28 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v28 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    return 0;
  }

  return v17;
}

uint64_t sub_10024B17C()
{

  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator21StableStringExtractor_segmentationCharacters, &qword_1003B7A08);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StableStringExtractor()
{
  result = qword_1003BA3F0;
  if (!qword_1003BA3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024B24C()
{
  sub_10024B2E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10024B2E8()
{
  if (!qword_1003BA400)
  {
    type metadata accessor for CharacterSet();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003BA400);
    }
  }
}

unint64_t sub_10024B340(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10024B6E0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_10024B490(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_10024B778(0xFuLL, a1, a2);
  v8 = sub_10024B778(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_41;
        }

        if ((a2 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = String.UnicodeScalarView._foreignIndex(before:)();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_36;
        }
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = _StringObject.sharedUTF8.getter();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_36;
        }
      }

      v25 = -1;
LABEL_36:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v14 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_10024B6E0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10024BA24(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10024B884(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10024B778(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10024B810(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10024B884(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10024B810(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10024B9A8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10024B884(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_10024B9A8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10024BA24(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10024B9A8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10024BA98(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_10024BB48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10024BB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10024BC04(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
LABEL_4:
        sub_10024BC84();
        return static NSObject.== infix(_:_:)() & 1;
      }
    }

    else if (a4 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  return 0;
}