uint64_t NotificationObserver.init(name:object:dispatchOnMainThread:handler:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  *(v5 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  v10 = objc_opt_self();
  v11 = a1;

  v12 = [v10 defaultCenter];
  v13 = *(v5 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  v15 = v13;
  [v12 addObserver:v5 selector:"handleNotification:" name:v15 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t NotificationObserver.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v2;
  [v1 removeObserver:v0 name:v4 object:Strong];

  swift_unknownObjectRelease();
  sub_13A0E0(v0 + 24);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v2;
  [v1 removeObserver:v0 name:v4 object:Strong];

  swift_unknownObjectRelease();
  sub_13A0E0(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_348B4C(uint64_t a1)
{
  v3 = sub_3E5954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  if (*(v1 + 32) != 1)
  {
    return (*(v1 + 40))(a1, v6);
  }

  v7 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_3E6734();
}

uint64_t sub_348CDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);

    v4(a2);
  }

  return result;
}

uint64_t sub_348E98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_348ED0()
{
  v1 = sub_3E5954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_348F94()
{
  v1 = *(sub_3E5954() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_348CDC(v2, v3);
}

void sub_348FF8()
{
  v0 = objc_allocWithZone(NSUserActivity);
  v1 = sub_3ED204();
  v2 = [v0 initWithActivityType:v1];

  qword_502930 = v2;
}

id static NSUserActivity.stateRestorationActivity.getter()
{
  if (qword_4E8B70 != -1)
  {
    swift_once();
  }

  v1 = qword_502930;

  return v1;
}

uint64_t NSUserActivity.isStateRestorationActivity.getter()
{
  v1 = [v0 activityType];
  v2 = sub_3ED244();
  v4 = v3;

  if (v2 == 0xD000000000000023 && 0x800000000042E280 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_3EE804();
  }

  return v6 & 1;
}

uint64_t NSUserActivity.stateRestorationNavigationTab.getter()
{
  if ([v0 isStateRestorationActivity])
  {
    v1 = [v0 userInfo];
    if (v1)
    {
      v2 = v1;
      v3 = sub_3ED094();

      strcpy(v7, "navigationTab");
      HIWORD(v7[1]) = -4864;
      sub_3EE354();
      if (*(v3 + 16) && (v4 = sub_558D0(v8), (v5 & 1) != 0))
      {
        sub_2F4AC(*(v3 + 56) + 32 * v4, v9);
        sub_5B3D8(v8);

        if (swift_dynamicCast())
        {
          return _s8ShelfKit13NavigationTabO11stringValueACSS_tcfC_0(v7[0], v7[1]);
        }
      }

      else
      {

        sub_5B3D8(v8);
      }
    }
  }

  return 19;
}

id static NSUserActivity.stateRestorationActivity(for:)(unint64_t a1)
{
  if (a1 <= 0xD && ((1 << a1) & 0x2C00) != 0)
  {
    return 0;
  }

  if (qword_4E8B70 != -1)
  {
    swift_once();
  }

  v3 = qword_502930;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502938);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3F5630;
  v5 = v3;
  sub_3EE354();
  v6 = NavigationTab.stringValue.getter(a1);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v6;
  *(inited + 80) = v7;
  sub_63038(inited);
  swift_setDeallocating();
  sub_3494D8(inited + 32);
  isa = sub_3ED084().super.isa;

  [v5 setUserInfo:isa];

  return v5;
}

uint64_t sub_3494D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PlayButtonPresenter.Theme.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_9;
    }

    v2 = 1;
    v3 = a2;
    if (!a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = a1;
    v3 = a2;
    if (!a2)
    {
LABEL_3:
      v4 = a2;
      return v2 == v4;
    }
  }

  if (v3 == 1)
  {
    v4 = 1;
    return v2 == v4;
  }

LABEL_9:
  result = sub_3EE844();
  __break(1u);
  return result;
}

void PlayButtonPresenter.Theme.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    v2 = a2;
LABEL_5:
    sub_3EE964(v2);
    return;
  }

  if (a2 == 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  sub_3EE844();
  __break(1u);
}

Swift::Int PlayButtonPresenter.Theme.hashValue.getter(unsigned __int8 a1)
{
  sub_3EE954();
  if (!a1)
  {
    v2 = a1;
LABEL_5:
    sub_3EE964(v2);
    return sub_3EE9A4();
  }

  if (a1 == 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  result = sub_3EE844();
  __break(1u);
  return result;
}

uint64_t PlayButtonPresenter.Data.triggerAction()@<X0>(uint64_t *a1@<X8>)
{
  sub_349694(v1, v7);
  sub_1D4F0(v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502948);
  if (swift_dynamicCast())
  {
    sub_1D4F0(v7, &v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, v11);
    v5 = (*(v4 + 16))(v3, v4);
    a1[3] = type metadata accessor for Action();
    a1[4] = sub_34F72C(&qword_4EDDF8, type metadata accessor for Action);
    *a1 = v5;
    return __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_FCF8(v7, &qword_502950);
    sub_349694(v1, &v10);
    return sub_1D4F0(&v10, a1);
  }
}

uint64_t PlayButtonPresenter.Data.episodeIdentifier.getter()
{
  v1 = *(v0 + 40);
  sub_349874(v1, *(v0 + 48), *(v0 + 56));
  return v1;
}

uint64_t sub_349874(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_34988C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_34988C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t Showcase.overlayingCaption.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PlayButtonPresenter.Data.playbackStartTime.getter()
{
  sub_349694(v0, v5);
  sub_1D4F0(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502958);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = COERCE_DOUBLE((*(*(&v5[0] + 1) + 24))(**&v5[0]));
  v3 = v2;

  if (v3 & 1 | (v1 < 1.0))
  {
    return 0;
  }

  else
  {
    return *&v1;
  }
}

uint64_t sub_3499E8()
{
  sub_349694(v0, v14);
  sub_1D4F0(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502958);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = COERCE_DOUBLE((*(*(&v14[0] + 1) + 24))(**&v14[0]));
  v3 = v2;

  if ((v3 & 1) != 0 || v1 < 1.0)
  {
    return 0;
  }

  if (qword_4E8B78 != -1)
  {
    *&v13._object = v1;
    swift_once();
  }

  v5 = [qword_502940 stringFromSeconds:?];
  v6 = sub_3ED244();
  v8 = v7;

  v9 = [objc_opt_self() mainBundle];
  v13._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x800000000042E570;
  v16._countAndFlagsBits = 0xD000000000000025;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v10.super.isa = v9;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_3E5A74(v16, v17, v10, v18, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_3F5630;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_4F39C();
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  v12 = sub_3ED214();

  return v12;
}

id sub_349C38()
{
  v0 = [objc_allocWithZone(AVTimeFormatter) init];
  result = [v0 setStyle:1];
  qword_502940 = v0;
  return result;
}

uint64_t PlayButtonPresenter.Data.isDoc.getter()
{
  v0 = sub_3E82C4();
  v2 = v1;
  if (v0 == sub_3E82C4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_3EE804();
  }

  return v5 & 1;
}

uint64_t PlayButtonPresenter.Data.init(playAction:mediaType:duration:label:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1F958(a1, a7);
  sub_1F958(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502948);
  if (swift_dynamicCast())
  {
    v14 = *(&v24 + 1);
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    v16 = (*(v15 + 32))(v14, v15);
    v18 = v17;
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    result = sub_FCF8(&v23, &qword_502950);
    v16 = 0;
    v18 = 0;
    v20 = -1;
  }

  *(a7 + 40) = v16;
  *(a7 + 48) = v18;
  *(a7 + 56) = v20;
  *(a7 + 57) = a2;
  *(a7 + 64) = a3;
  *(a7 + 72) = a4 & 1;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

uint64_t PlayButtonPresenter.Data.init(mediaType:duration:)@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v23 = sub_3E5FC4();
  v6 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_3EC1F4();
  v9 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  *(a2 + 57) = a1;
  *(a2 + 64) = a3;
  *(a2 + 72) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = -1;
  v15 = sub_3EC634();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v16 = type metadata accessor for Action();
  v17 = swift_allocObject();
  sub_3E5FB4();
  v18 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v20 = v19;
  (*(v6 + 8))(v8, v23);
  *(v17 + 16) = v18;
  *(v17 + 24) = v20;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 32;
  (*(v9 + 32))(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v11, v22);
  sub_14A10(v14, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  *(a2 + 24) = v16;
  result = sub_34F72C(&qword_4EDDF8, type metadata accessor for Action);
  *(a2 + 32) = result;
  *a2 = v17;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

id PlayButtonPresenter.State.Symbol.image(traits:style:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_34A244(a2, a3, a4 & 1, a1);
  v5 = sub_3ED204();

  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  return v6;
}

id sub_34A244(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = objc_opt_self();
    v7 = [v6 configurationWithTextStyle:a1];
    v8 = [v6 configurationWithWeight:a2];
    v9 = [v7 configurationByApplyingConfiguration:v8];

    return v9;
  }

  else
  {
    v13 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    [v13 scaledValueForValue:a4 compatibleWithTraitCollection:*&a1];
    v15 = v14;

    v16 = [objc_opt_self() configurationWithPointSize:a2 weight:v15];

    return v16;
  }
}

uint64_t PlayButtonPresenter.State.Symbol.symbolName.getter(char a1)
{
  if (!a1)
  {
    return 0x6C69662E79616C70;
  }

  if (a1 == 1)
  {
    return 0x6C6C69662E636F64;
  }

  return 0x6C632E776F727261;
}

uint64_t static PlayButtonPresenter.State.Icon.== infix(_:_:)(__int16 a1, __int16 a2)
{
  v2 = ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  if ((a2 ^ a1))
  {
    v2 = 0;
  }

  if ((a2 & 0x8000) == 0)
  {
    v2 = 0;
  }

  v3 = (a2 ^ a1) == 0;
  if (a2 < 0)
  {
    v3 = 0;
  }

  if (a1 < 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_34A434(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < 0)
  {
    if (v3 < 0 && ((v3 ^ v2) & 1) == 0)
    {
      return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = (v3 ^ v2) == 0;
    return v3 >= 0 && v4;
  }
}

void static PlayButtonPresenter.State.generate(from:playState:buttonSize:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _WORD *a4@<X8>)
{
  v148 = a3;
  v152 = a4;
  v6 = sub_3E9224();
  v150 = *(v6 - 8);
  v151 = v6;
  __chkstk_darwin(v6);
  v147 = &v141[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v144 = &v141[-v9];
  __chkstk_darwin(v10);
  v143 = &v141[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  __chkstk_darwin(v12 - 8);
  v145 = &v141[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v146 = &v141[-v15];
  __chkstk_darwin(v16);
  v149 = &v141[-v17];
  __chkstk_darwin(v18);
  v20 = &v141[-v19];
  __chkstk_darwin(v21);
  v23 = &v141[-v22];
  __chkstk_darwin(v24);
  v26 = &v141[-v25];
  v27 = sub_3E8304();
  __chkstk_darwin(v27);
  v29 = &v141[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_3E82C4();
  v32 = v31;
  if (v30 == sub_3E82C4() && v32 == v33)
  {

LABEL_5:
    v35 = objc_opt_self();
    v36 = [v35 mainBundle];
    v138._countAndFlagsBits = 0xE000000000000000;
    v154._object = 0x800000000042E310;
    v154._countAndFlagsBits = 0xD000000000000010;
    v162.value._countAndFlagsBits = 0;
    v162.value._object = 0;
    v37.super.isa = v36;
    v171._countAndFlagsBits = 0;
    v171._object = 0xE000000000000000;
    v38 = sub_3E5A74(v154, v162, v37, v171, v138);
    v40 = v39;

    v41 = [v35 mainBundle];
    v139._countAndFlagsBits = 0xE000000000000000;
    v155._object = 0x800000000042E310;
    v155._countAndFlagsBits = 0xD000000000000010;
    v163.value._countAndFlagsBits = 0;
    v163.value._object = 0;
    v42.super.isa = v41;
    v172._countAndFlagsBits = 0;
    v172._object = 0xE000000000000000;
    v43 = sub_3E5A74(v155, v163, v42, v172, v139);
    v45 = v44;

    v46 = v152;
    *v152 = 1;
    *(v46 + 2) = 0;
    *(v46 + 1) = 0;
    *(v46 + 1) = v38;
    *(v46 + 2) = v40;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    return;
  }

  v34 = sub_3EE804();

  if (v34)
  {
    goto LABEL_5;
  }

  v47 = sub_34E3BC(a2);
  v48 = sub_34E29C(a1, a2);
  if (v49)
  {
    v50 = v152;
    *v152 = v47;
    *(v50 + 2) = 0;
    *(v50 + 1) = 0;
    *(v50 + 1) = v48;
    *(v50 + 2) = v49;
    *(v50 + 3) = v48;
    *(v50 + 4) = v49;

    return;
  }

  v51 = v29;
  sub_10E594(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      sub_3E9204();
      v65 = sub_34DC3C(v26);
      if (v64)
      {
        v66 = v64;
      }

      else
      {
        v104 = [objc_opt_self() mainBundle];
        v138._countAndFlagsBits = 0xE000000000000000;
        v160._object = 0x800000000042C130;
        v160._countAndFlagsBits = 0xD000000000000010;
        v169.value._countAndFlagsBits = v65;
        v169.value._object = 0;
        v105.super.isa = v104;
        v178._countAndFlagsBits = 0;
        v178._object = 0xE000000000000000;
        v65 = sub_3E5A74(v160, v169, v105, v178, v138);
        v66 = v106;
      }

      v88 = sub_34E9A0(0, v26);
      v90 = v107;
      sub_FCF8(v26, &qword_4FDA38);
      v91 = v152;
      *v152 = v47;
      *(v91 + 2) = 0;
      *(v91 + 1) = 0;
      *(v91 + 1) = v65;
      *(v91 + 2) = v66;
      goto LABEL_47;
    }

    v67 = v29[1];
    v81 = *(v29 + 16);
    if (v67 <= 0.0)
    {
      v67 = 0.0;
      if ((*(a1 + 72) & 1) == 0)
      {
        v67 = *(a1 + 64);
      }
    }

    v68 = *v51;
    v82 = [objc_opt_self() mainBundle];
    v83 = "PLAY_BUTTON_PLAY";
    if (v81)
    {
      v83 = "ormat (under 4 minutes)";
      v84._countAndFlagsBits = 0xD000000000000010;
    }

    else
    {
      v84._countAndFlagsBits = 0xD000000000000011;
    }

    v138._countAndFlagsBits = 0xE000000000000000;
    v84._object = (v83 | 0x8000000000000000);
    v166.value._countAndFlagsBits = 0;
    v166.value._object = 0;
    v85.super.isa = v82;
    v175._countAndFlagsBits = 0;
    v175._object = 0xE000000000000000;
    v57 = sub_3E5A74(v84, v166, v85, v175, v138);
    v59 = v86;

    v62 = v150;
    v61 = v151;
    if (v67 <= 0.0 || v68 < 0.0 || (v60.n128_f64[0] = v67 - v68, v67 - v68 < 0.0))
    {
LABEL_42:
      v87 = v149;
      (*(v62 + 56))(v149, 1, 1, v61, v60);
      v88 = sub_34E9A0(v47, v87);
      v90 = v89;
      sub_FCF8(v87, &qword_4FDA38);
      v91 = v152;
      *v152 = v47;
      *(v91 + 2) = 0;
      *(v91 + 1) = 0;
      *(v91 + 1) = v57;
      *(v91 + 2) = v59;
LABEL_47:
      *(v91 + 3) = v88;
      *(v91 + 4) = v90;
      return;
    }

    v20 = v146;
    sub_3E9204();
    if ((*(v62 + 48))(v20, 1, v61) == 1)
    {
LABEL_41:
      sub_FCF8(v20, &qword_4FDA38);
      goto LABEL_42;
    }

    v63 = v144;
    (*(v62 + 32))(v144, v20, v61);
    v142 = v47;
    if (v148 != 2)
    {
      v111 = sub_3E91F4();
      goto LABEL_58;
    }

LABEL_53:
    v148 = 1;
LABEL_59:
    v119 = *(v62 + 16);
    v120 = v149;
    v119(v149, v63, v61);
    v121 = *(v62 + 56);
    v121(v120, 0, 1, v61);
    v122 = sub_34DC3C(v120);
    v124 = v123;
    sub_FCF8(v120, &qword_4FDA38);
    if (v124)
    {
      v125 = v122;
    }

    else
    {
      v125 = 0;
    }

    v147 = v125;
    if (v124)
    {
      v126 = v124;
    }

    else
    {
      v126 = 0xE000000000000000;
    }

    v127 = v68 / v67;
    goto LABEL_74;
  }

  if (!EnumCaseMultiPayload)
  {
    v67 = v29[1];
    v62 = v150;
    if (v67 <= 0.0)
    {
      v67 = 0.0;
      if ((*(a1 + 72) & 1) == 0)
      {
        v67 = *(a1 + 64);
      }
    }

    v68 = *v29;
    v69 = [objc_opt_self() mainBundle];
    v138._countAndFlagsBits = 0xE000000000000000;
    v157._countAndFlagsBits = 0xD000000000000011;
    v157._object = 0x800000000042C150;
    v165.value._countAndFlagsBits = 0;
    v165.value._object = 0;
    v70.super.isa = v69;
    v174._countAndFlagsBits = 0;
    v174._object = 0xE000000000000000;
    v71 = sub_3E5A74(v157, v165, v70, v174, v138);
    v73 = v72;

    v61 = v151;
    if (v67 <= 0.0)
    {
      goto LABEL_30;
    }

    if (v68 < 0.0)
    {
      goto LABEL_30;
    }

    v74.n128_f64[0] = v67 - v68;
    if (v67 - v68 < 0.0)
    {
      goto LABEL_30;
    }

    v75 = v145;
    sub_3E9204();
    if ((*(v62 + 48))(v75, 1, v61) == 1)
    {
      sub_FCF8(v75, &qword_4FDA38);
LABEL_30:
      v76 = v149;
      (*(v62 + 56))(v149, 1, 1, v61, v74);
      v77 = sub_34E9A0(v47, v76);
      v79 = v78;
      sub_FCF8(v76, &qword_4FDA38);
      v80 = v152;
      *v152 = v47;
      *(v80 + 2) = 0;
      *(v80 + 1) = 0;
      *(v80 + 1) = v71;
      *(v80 + 2) = v73;
      *(v80 + 3) = v77;
      *(v80 + 4) = v79;
      return;
    }

    v63 = v147;
    (*(v62 + 32))(v147, v75, v61);
    v142 = v47;
    if (v148 != 2)
    {
      v111 = sub_3E91F4();
      v63 = v147;
LABEL_58:
      v148 = v111;
      goto LABEL_59;
    }

    goto LABEL_53;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v53 = *v29;
    v54 = v29[1];
    v55 = [objc_opt_self() mainBundle];
    v138._countAndFlagsBits = 0xE000000000000000;
    v156._object = 0x800000000042C130;
    v156._countAndFlagsBits = 0xD000000000000010;
    v164.value._countAndFlagsBits = 0;
    v164.value._object = 0;
    v56.super.isa = v55;
    v173._countAndFlagsBits = 0;
    v173._object = 0xE000000000000000;
    v57 = sub_3E5A74(v156, v164, v56, v173, v138);
    v59 = v58;

    v62 = v150;
    v61 = v151;
    if (v54 <= 0.0)
    {
      goto LABEL_42;
    }

    if (v53 < 0.0)
    {
      goto LABEL_42;
    }

    v60.n128_f64[0] = v54 - v53;
    if (v54 - v53 < 0.0)
    {
      goto LABEL_42;
    }

    sub_3E9204();
    if ((*(v62 + 48))(v20, 1, v61) != 1)
    {

      v63 = v143;
      (*(v62 + 32))(v143, v20, v61);
      v142 = v47;
      if (v148 == 2)
      {
        v148 = 1;
      }

      else
      {
        v148 = sub_3E91F4();
      }

      v119 = *(v62 + 16);
      v120 = v149;
      v119(v149, v63, v61);
      v121 = *(v62 + 56);
      v121(v120, 0, 1, v61);
      v128 = sub_34DC3C(v120);
      v130 = v129;
      sub_FCF8(v120, &qword_4FDA38);
      if (v130)
      {
        v131 = v128;
      }

      else
      {
        v131 = 0;
      }

      v147 = v131;
      if (v130)
      {
        v126 = v130;
      }

      else
      {
        v126 = 0xE000000000000000;
      }

      v127 = v53 / v54;
LABEL_74:
      v132 = v127;
      v119(v120, v63, v61);
      v121(v120, 0, 1, v61);
      v133 = v142;
      v134 = sub_34E9A0(v142, v120);
      v136 = v135;
      sub_FCF8(v120, &qword_4FDA38);
      (*(v62 + 8))(v63, v61);
      v137 = v152;
      *v152 = v133;
      *(v137 + 2) = v148 & 1;
      *(v137 + 1) = v132;
      *(v137 + 1) = v147;
      *(v137 + 2) = v126;
      *(v137 + 3) = v134;
      *(v137 + 4) = v136;
      return;
    }

    goto LABEL_41;
  }

  if (v148 == 2)
  {
    v92 = objc_opt_self();
    v93 = [v92 mainBundle];
    v138._countAndFlagsBits = 0xE000000000000000;
    v158._countAndFlagsBits = 0xD000000000000016;
    v158._object = 0x800000000042E2F0;
    v167.value._countAndFlagsBits = 0;
    v167.value._object = 0;
    v94.super.isa = v93;
    v176._countAndFlagsBits = 0;
    v176._object = 0xE000000000000000;
    v95 = sub_3E5A74(v158, v167, v94, v176, v138);
    v97 = v96;

    v98 = [v92 mainBundle];
    v140._countAndFlagsBits = 0xE000000000000000;
    v159._countAndFlagsBits = 0xD000000000000016;
    v159._object = 0x800000000042E2F0;
    v168.value._countAndFlagsBits = 0;
    v168.value._object = 0;
    v99.super.isa = v98;
    v177._countAndFlagsBits = 0;
    v177._object = 0xE000000000000000;
    v100 = sub_3E5A74(v159, v168, v99, v177, v140);
    v102 = v101;

    v103 = v152;
    *v152 = v47;
    *(v103 + 2) = 0;
    *(v103 + 1) = 0;
    *(v103 + 1) = v95;
    *(v103 + 2) = v97;
    *(v103 + 3) = v100;
    *(v103 + 4) = v102;
  }

  else
  {
    sub_3E9204();
    v109 = sub_34DC3C(v23);
    if (v108)
    {
      v110 = v108;
    }

    else
    {
      v112 = [objc_opt_self() mainBundle];
      v138._countAndFlagsBits = 0xE000000000000000;
      v161._countAndFlagsBits = 0xD000000000000012;
      v161._object = 0x800000000042E2D0;
      v170.value._countAndFlagsBits = v109;
      v170.value._object = 0;
      v113.super.isa = v112;
      v179._countAndFlagsBits = 0;
      v179._object = 0xE000000000000000;
      v109 = sub_3E5A74(v161, v170, v113, v179, v138);
      v110 = v114;
    }

    v115 = sub_34E9A0(2, v23);
    v117 = v116;
    sub_FCF8(v23, &qword_4FDA38);
    v118 = v152;
    *v152 = v47;
    *(v118 + 2) = 0;
    *(v118 + 1) = 0;
    *(v118 + 1) = v109;
    *(v118 + 2) = v110;
    *(v118 + 3) = v115;
    *(v118 + 4) = v117;
  }

  sub_FCF8(v51, &qword_4EF460);
}

void static PlayButtonPresenter.State.unknown.getter(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v13._countAndFlagsBits = 0xE000000000000000;
  v15._object = 0x800000000042C130;
  v15._countAndFlagsBits = 0xD000000000000010;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v4.super.isa = v3;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v5 = sub_3E5A74(v15, v17, v4, v19, v13);
  v7 = v6;

  v8 = [v2 mainBundle];
  v14._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x800000000042C130;
  v16._countAndFlagsBits = 0xD000000000000010;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v9.super.isa = v8;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v10 = sub_3E5A74(v16, v18, v9, v20, v14);
  v12 = v11;

  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
}

uint64_t sub_34B394(__int16 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 1);
  v25 = *(a1 + 4);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  swift_getKeyPath();
  v30 = v1;
  sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
  sub_3E6BC4();

  v8 = *(v1 + 18);
  v9 = *(v1 + 20);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  LOWORD(v30) = *(v2 + 16);
  BYTE2(v30) = v8;
  HIDWORD(v30) = v9;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = v13;
  LOWORD(v26[0]) = v3;
  BYTE2(v26[0]) = v4;
  v26[1] = v5;
  v27 = v25;
  v28 = v6;
  v29 = v7;
  LOBYTE(v3) = _s8ShelfKit19PlayButtonPresenterC5StateV2eeoiySbAE_AEtFZ_0(&v30, v26);

  if ((v3 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v15 = *(v2 + 72);
      ObjectType = swift_getObjectType();
      swift_getKeyPath();
      v30 = v2;
      sub_3E6BC4();

      v17 = *(v2 + 16);
      v18 = *(v2 + 18);
      v19 = *(v2 + 20);
      v21 = *(v2 + 24);
      v20 = *(v2 + 32);
      v22 = *(v2 + 40);
      v23 = *(v2 + 48);
      LOWORD(v30) = v17;
      BYTE2(v30) = v18;
      HIDWORD(v30) = v19;
      v31 = v21;
      v32 = v20;
      v33 = v22;
      v34 = v23;
      v24 = *(v15 + 8);

      v24(&v30, ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t PlayButtonPresenter.currentState.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
  sub_3E6BC4();

  v3 = *(v1 + 18);
  v4 = *(v1 + 20);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 2) = v3;
  *(a1 + 4) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t sub_34B690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
  sub_3E6BC4();

  v4 = *(v3 + 18);
  v5 = *(v3 + 20);
  v7 = *(v3 + 24);
  v6 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  *a2 = *(v3 + 16);
  *(a2 + 2) = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
}

uint64_t sub_34B764(uint64_t a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 4);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  LOWORD(v8) = *a1;
  BYTE2(v8) = v1;
  DWORD1(v8) = v2;
  *(&v8 + 1) = v4;
  v9 = v3;
  v10 = v5;
  v11 = v6;

  return sub_34B7CC(&v8);
}

uint64_t sub_34B7CC(__int128 *a1)
{
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  v17 = *(a1 + 4);
  v3 = *(v1 + 32);
  v18[0] = *(v1 + 16);
  v18[1] = v3;
  v19 = *(v1 + 48);
  if (sub_34F598(v18, &v15))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[0] = v1;
    sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
    sub_3E6BB4();
    sub_34F6C4(&v15);
  }

  else
  {
    v6 = *(v1 + 16);
    v7 = *(v1 + 18);
    v8 = *(v1 + 20);
    v9 = *(v1 + 24);
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
    v12 = *(v1 + 48);
    v13 = v16;
    *(v1 + 16) = v15;
    *(v1 + 32) = v13;
    *(v1 + 48) = v17;
    LOWORD(v14[0]) = v6;
    BYTE2(v14[0]) = v7;
    HIDWORD(v14[0]) = v8;
    v14[1] = v9;
    v14[2] = v10;
    v14[3] = v11;
    v14[4] = v12;
    sub_34B394(v14);
  }
}

uint64_t sub_34B950(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 18);
  v4 = *(a1 + 20);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v9;
  *(a1 + 48) = *(a2 + 32);
  sub_34F6F4(a2, &v11);
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v6;
  v15 = v5;
  v16 = v8;
  v17 = v7;
  sub_34B394(&v11);
}

uint64_t PlayButtonPresenter.currentButtonSize.getter()
{
  swift_getKeyPath();
  sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
  sub_3E6BC4();

  return *(v0 + 56);
}

uint64_t sub_34BAA0()
{
  v1 = sub_3E8304();
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  swift_beginAccess();
  sub_34EEA0(v0 + 80, &v8);
  if (*(v0 + 216))
  {
    sub_3E8984();
    sub_2489FC(v3, v6);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
  }

  swift_getKeyPath();
  v14 = v0;
  sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
  sub_3E6BC4();

  static PlayButtonPresenter.State.generate(from:playState:buttonSize:)(&v8, v6, *(v0 + 56), &v14);
  sub_34F538(v6, &type metadata accessor for EpisodePlayState);
  sub_34EED8(&v8);
  v8 = v14;
  v9 = BYTE2(v14);
  v10 = HIDWORD(v14);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  return sub_34B7CC(&v8);
}

uint64_t sub_34BC6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
  sub_3E6BC4();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t PlayButtonPresenter.currentButtonSize.setter(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 56);
  KeyPath = swift_getKeyPath();
  if (v4 == v3)
  {
    sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
    sub_3E6BC4();

    if (*(v2 + 56) != v3)
    {
      return sub_34BAA0();
    }
  }

  else
  {
    __chkstk_darwin(KeyPath);
    sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
    sub_3E6BB4();
  }

  return result;
}

uint64_t sub_34BEBC(uint64_t a1, char a2)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = a2;
  swift_getKeyPath();
  sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
  sub_3E6BC4();

  if (*(a1 + 56) != v3)
  {
    return sub_34BAA0();
  }

  return result;
}

void (*PlayButtonPresenter.currentButtonSize.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC8ShelfKit19PlayButtonPresenter___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
  sub_3E6BC4();

  *v4 = v1;
  swift_getKeyPath();
  sub_3E6BE4();

  *(v4 + 32) = *(v1 + 56);
  return sub_34C0B0;
}

void sub_34C0B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(v2 + 56);
  *(v2 + 56) = *(*a1 + 32);
  swift_getKeyPath();
  v4 = v1[1];
  *v1 = v4;
  sub_3E6BC4();

  if (*(v4 + 56) != v3)
  {
    sub_34BAA0();
  }

  *v1 = v1[1];
  swift_getKeyPath();
  sub_3E6BD4();

  free(v1);
}

uint64_t PlayButtonPresenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return swift_unknownObjectRelease();
  }

  v4 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  v15[0] = v2;
  sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
  v6 = v2;
  sub_3E6BC4();

  v7 = *(v2 + 18);
  v8 = *(v2 + 20);
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  LOWORD(v15[0]) = *(v6 + 16);
  BYTE2(v15[0]) = v7;
  HIDWORD(v15[0]) = v8;
  v15[1] = v10;
  v15[2] = v9;
  v15[3] = v11;
  v15[4] = v12;
  v13 = *(v4 + 8);

  v13(v15, ObjectType, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void (*PlayButtonPresenter.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_34C3D4;
}

void sub_34C3D4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + 72);
      ObjectType = swift_getObjectType();
      swift_getKeyPath();
      *v3 = v4;
      sub_34F72C(&qword_502968, type metadata accessor for PlayButtonPresenter);
      sub_3E6BC4();

      v7 = *(v4 + 18);
      v8 = *(v4 + 20);
      v10 = *(v4 + 24);
      v9 = *(v4 + 32);
      v11 = *(v4 + 40);
      v12 = *(v4 + 48);
      v14 = *(v4 + 16);
      v15 = v7;
      v16 = v8;
      v17 = v10;
      v18 = v9;
      v19 = v11;
      v20 = v12;
      v13 = *(v5 + 8);

      v13(&v14, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t PlayButtonPresenter.__allocating_init(data:asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PlayButtonPresenter.init(data:asPartOf:)(a1);
  return v2;
}

uint64_t PlayButtonPresenter.init(data:asPartOf:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v17[0]._countAndFlagsBits = 0xE000000000000000;
  v18._object = 0x800000000042C130;
  v18._countAndFlagsBits = 0xD000000000000010;
  v20.value._countAndFlagsBits = 0;
  v20.value._object = 0;
  v6.super.isa = v5;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v7 = sub_3E5A74(v18, v20, v6, v22, v17[0]);
  v9 = v8;

  v10 = [v4 mainBundle];
  v17[0]._countAndFlagsBits = 0xE000000000000000;
  v19._object = 0x800000000042C130;
  v19._countAndFlagsBits = 0xD000000000000010;
  v21.value._countAndFlagsBits = 0;
  v21.value._object = 0;
  v11.super.isa = v10;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v12 = sub_3E5A74(v19, v21, v11, v23, v17[0]);
  v14 = v13;

  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  *(v2 + 20) = 0;
  *(v2 + 24) = v7;
  *(v2 + 32) = v9;
  *(v2 + 40) = v12;
  *(v2 + 48) = v14;
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_3E6BF4();
  sub_34EEA0(a1, v2 + 80);
  PlayButtonPresenter.Data.triggerAction()(&v17[0]._object);
  sub_1D4F0(&v17[0]._object, v2 + 176);
  if (*(a1 + 56) == 255)
  {
    v15 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5E98);
    sub_3EC444();
    sub_3ECD14();
    v15 = sub_3E8D34();
  }

  *(v2 + 216) = v15;
  sub_34BAA0();
  if (*(v2 + 216))
  {
    swift_allocObject();
    swift_weakInit();

    sub_3E8964();
  }

  sub_34EED8(a1);
  return v2;
}

uint64_t sub_34C8C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_34BAA0();
  }

  return result;
}

uint64_t PlayButtonPresenter.upgradeDataIfPossible(data:)(uint64_t a1)
{
  swift_beginAccess();
  sub_34EEA0(v1 + 80, v13);
  v3 = v16;
  v4 = *(a1 + 56);
  if (v16 != 255)
  {
    if (v4 != 255)
    {
      v5 = v14;
      v6 = v15;
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      sub_349874(v7, v8, *(a1 + 56));
      sub_349874(v5, v6, v3);
      v9 = sub_3E8D84();
      sub_34EF80(v7, v8, v4);
      sub_34EF80(v5, v6, v3);
      if (v9)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  if (v4 != 255)
  {
    goto LABEL_8;
  }

LABEL_4:
  swift_beginAccess();
  sub_34EF48(a1, v1 + 80);
  swift_endAccess();
  PlayButtonPresenter.Data.triggerAction()(v12);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 176);
  sub_1D4F0(v12, v1 + 176);
  swift_endAccess();
  if (!_s8ShelfKit19PlayButtonPresenterC4DataV2eeoiySbAE_AEtFZ_0(v13, a1))
  {
    sub_34BAA0();
  }

  v10 = 1;
LABEL_9:
  sub_34EED8(v13);
  return v10;
}

Swift::Void __swiftcall PlayButtonPresenter.actionWasTriggered(_:)(UIControl a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_34EEA0(v1 + 80, &v25);
  sub_349694(&v25, &v22);
  sub_34EED8(&v25);
  sub_1D4F0(&v22, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502958);
  if (swift_dynamicCast())
  {
    v3 = (*(*(&v22 + 1) + 16))(*v22);
    v23 = *v3;
    WitnessTable = swift_getWitnessTable();
    *&v22 = v3;
    v4 = *(v2 + 137);
    v5 = *(v2 + 144);
    v6 = *(v2 + 152);
    v8 = *(v2 + 160);
    v7 = *(v2 + 168);
    sub_1F958(&v22, v17);
    sub_1F958(&v22, &v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502948);
    if (swift_dynamicCast())
    {
      v9 = *(&v26 + 1);
      v10 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      v11 = (*(v10 + 32))(v9, v10);
      v13 = v12;
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      *&v27 = 0;
      v25 = 0u;
      v26 = 0u;
      sub_FCF8(&v25, &qword_502950);
      v11 = 0;
      v13 = 0;
      v15 = -1;
    }

    *(&v18 + 1) = v11;
    *&v19 = v13;
    BYTE8(v19) = v15;
    BYTE9(v19) = v4;
    *&v20 = v5;
    BYTE8(v20) = v6;
    *&v21 = v8;
    *(&v21 + 1) = v7;
    v25 = v17[0];
    v26 = v17[1];
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    PlayButtonPresenter.upgradeDataIfPossible(data:)(&v25);

    sub_34EED8(&v25);
  }
}

uint64_t PlayButtonPresenter.deinit()
{

  sub_13A0E0(v0 + 64);
  sub_34EED8(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);

  v1 = OBJC_IVAR____TtC8ShelfKit19PlayButtonPresenter___observationRegistrar;
  v2 = sub_3E6C04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PlayButtonPresenter.__deallocating_deinit()
{

  sub_13A0E0(v0 + 64);
  sub_34EED8(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);

  v1 = OBJC_IVAR____TtC8ShelfKit19PlayButtonPresenter___observationRegistrar;
  v2 = sub_3E6C04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double PlayButtonPresenter.Data.init(lockup:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_3E9A04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v8);
  v10 = &v38[-v9 - 8];
  v11 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  swift_beginAccess();
  sub_FBD0(a1 + v11, v10, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v10, &qword_4EED80);
  v12 = *&v42[0];
  if (*&v42[0])
  {
    v47[3] = type metadata accessor for Action();
    v47[4] = sub_34F72C(&qword_4EDDF8, type metadata accessor for Action);
    v47[0] = v12;
    v13 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType);
    v14 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration);
    v15 = *(a1 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration + 8);
    sub_1F958(v47, v42);
    sub_1F958(v47, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502948);
    if (swift_dynamicCast())
    {
      v16 = *(&v40 + 1);
      v17 = v41;
      __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
      v18 = (*(v17 + 32))(v16, v17);
      v20 = v19;
      v22 = v21;

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      v41 = 0;
      v40 = 0u;
      v39 = 0u;
      sub_FCF8(&v39, &qword_502950);
      v18 = 0;
      v20 = 0;
      v22 = -1;
    }

    *(&v43 + 1) = v18;
    *&v44 = v20;
    BYTE8(v44) = v22;
    BYTE9(v44) = v13;
    *&v45 = v14;
    BYTE8(v45) = v15;
    v46 = 0uLL;
    v31 = v42[1];
    *a2 = v42[0];
    a2[1] = v31;
    v32 = v44;
    v33 = v45;
    a2[2] = v43;
    a2[3] = v32;
    v34 = v46;
    a2[4] = v33;
    a2[5] = v34;
  }

  else
  {
    sub_3E9944();

    v23 = sub_3E99F4();
    v24 = sub_3ED9D4();

    if (os_log_type_enabled(v23, v24))
    {
      v37 = v5;
      v25 = swift_slowAlloc();
      *&v42[0] = swift_slowAlloc();
      *v25 = 136315394;
      v26 = *(a1 + 16);
      v27 = *(a1 + 24);

      v28 = sub_2EDD0(v26, v27, v42);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      if (*(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8))
      {
        v29 = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
        v30 = *(a1 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
      }

      else
      {
        v30 = 0xEA00000000003E65;
        v29 = 0x6C746974206F6E3CLL;
      }

      v35 = sub_2EDD0(v29, v30, v42);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_0, v23, v24, "No play action defined in lockup for episode %s: %s", v25, 0x16u);
      swift_arrayDestroy();

      (*(v37 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    *&v34 = 0;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v34;
}

double PlayButtonPresenter.Data.init(episodeHeader:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 184);
  v28[3] = type metadata accessor for Action();
  v28[4] = sub_34F72C(&qword_4EDDF8, type metadata accessor for Action);
  v28[0] = v4;
  v5 = *(a1 + 97);
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  sub_1F958(v28, v23);
  sub_1F958(v28, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502948);
  if (swift_dynamicCast())
  {
    v8 = *(&v21 + 1);
    v9 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    v10 = (*(v9 + 32))(v8, v9);
    v12 = v11;
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    __swift_destroy_boxed_opaque_existential_1Tm(&v20);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_FCF8(&v20, &qword_502950);
    v10 = 0;
    v12 = 0;
    v14 = -1;
  }

  *(&v24 + 1) = v10;
  *&v25 = v12;
  BYTE8(v25) = v14;
  BYTE9(v25) = v5;
  *&v26 = v6;
  BYTE8(v26) = v7;
  v27 = 0uLL;
  v15 = v23[1];
  *a2 = v23[0];
  a2[1] = v15;
  v16 = v25;
  a2[2] = v24;
  a2[3] = v16;
  result = *&v26;
  v18 = v27;
  a2[4] = v26;
  a2[5] = v18;
  return result;
}

double PlayButtonPresenter.Data.init(from:label:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F958(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502970);
  if (swift_dynamicCast())
  {
    *&v34 = a2;
    *(&v34 + 1) = a3;
    (*(v44[1] + 8))(*v44[0]);
    sub_1F958(a1, v44);
    if (v10[*(v8 + 52)] == 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10[*(v8 + 52)];
    }

    v12 = &v10[*(v8 + 60)];
    v13 = *v12;
    v14 = v12[8];
    sub_1F958(v44, v39);
    sub_1F958(v44, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502948);
    if (swift_dynamicCast())
    {
      v15 = *(&v37 + 1);
      v16 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
      v17 = (*(v16 + 32))(v15, v16);
      v19 = v18;
      v21 = v20;

      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      sub_34F538(v10, type metadata accessor for EpisodeOffer);
      __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      sub_34F538(v10, type metadata accessor for EpisodeOffer);
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
      sub_FCF8(&v36, &qword_502950);
      v17 = 0;
      v19 = 0;
      v21 = -1;
    }

    *(&v40 + 1) = v17;
    *&v41 = v19;
    BYTE8(v41) = v21;
    BYTE9(v41) = v11;
    *&v42 = v13;
    BYTE8(v42) = v14;
    v43 = v34;
  }

  else
  {
    sub_1F958(a1, v44);
    sub_1F958(v44, v39);
    sub_1F958(v44, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502948);
    if (swift_dynamicCast())
    {
      v22 = *(&v37 + 1);
      v23 = v38;
      __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
      v24 = (*(v23 + 32))(v22, v23);
      v26 = v25;
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v38 = 0;
      v37 = 0u;
      v36 = 0u;
      sub_FCF8(&v36, &qword_502950);
      v24 = 0;
      v26 = 0;
      v28 = -1;
    }

    *(&v40 + 1) = v24;
    *&v41 = v26;
    WORD4(v41) = v28;
    *&v42 = 0;
    BYTE8(v42) = 1;
    *&v43 = a2;
    *(&v43 + 1) = a3;
  }

  v29 = v39[1];
  *a4 = v39[0];
  a4[1] = v29;
  v30 = v41;
  a4[2] = v40;
  a4[3] = v30;
  result = *&v42;
  v32 = v43;
  a4[4] = v42;
  a4[5] = v32;
  return result;
}

BOOL _s8ShelfKit19PlayButtonPresenterC4DataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (*(a1 + 56) == 255)
  {
    if (v4 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 255)
    {
      return 0;
    }

    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    sub_34988C(v5, v6, v4 & 1);
    v7 = sub_3E8D84();
    sub_34EF80(v5, v6, v4);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = sub_3E82C4();
  v10 = v9;
  if (v8 == sub_3E82C4() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_3EE804();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = *(a1 + 88);
  v16 = *(a2 + 88);
  if (v15)
  {
    return v16 && (*(a1 + 80) == *(a2 + 80) && v15 == v16 || (sub_3EE804() & 1) != 0);
  }

  return !v16;
}

uint64_t _s8ShelfKit19PlayButtonPresenterC5StateV2eeoiySbAE_AEtFZ_0(float *a1, float *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = a1[1];
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v11 = *a2;
  v12 = *(a2 + 2);
  v13 = a2[1];
  v14 = *(a2 + 1);
  v15 = *(a2 + 2);
  v16 = *(a2 + 3);
  v17 = *(a2 + 4);
  v18 = 0;
  if (v4 < 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return v18;
    }

    v19 = v11 ^ v4;
    v20 = (v11 & 0x100) == 0;
    if (v19)
    {
      return v18;
    }

    v21 = v5 ^ v12;
    v22 = v20 != (v4 & 0x100) >> 8 && v21 == 0;
    if (!v22 || v6 != v13)
    {
      return v18;
    }
  }

  else if (v11 < 0 || v11 != v4 || v5 != v12 || v6 != v13)
  {
    return v18;
  }

  if ((v7 != v14 || v8 != v15) && (sub_3EE804() & 1) == 0)
  {
    return 0;
  }

  if (v9 == v16 && v10 == v17)
  {
    return 1;
  }

  return sub_3EE804();
}

uint64_t sub_34DC3C(uint64_t a1)
{
  v41 = a1;
  v1 = sub_3EEAA4();
  v39 = *(v1 - 8);
  v40 = v1;
  __chkstk_darwin(v1);
  v37 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_3EEA74();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_3EEAC4();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3EEAD4();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EEA44();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3EEA54();
  v28 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_3E9224();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(v41, v15, &qword_4FDA38);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_FCF8(v15, &qword_4FDA38);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_3E9214();
    sub_3EEB04();
    sub_3E91E4();
    if (sub_3E91D4())
    {
      sub_3EEA24();
      sub_3E5824();
      (*(v27 + 8))(v9, v7);
      sub_34F72C(&qword_4FE478, &type metadata accessor for Duration.TimeFormatStyle);
      sub_3EEAE4();
      (*(v28 + 8))(v12, v10);
    }

    else
    {
      sub_3E91E4();
      sub_3E91B4();
      v21 = v29;
      sub_3EEAB4();
      v22 = v32;
      sub_3EEA64();
      v23 = v37;
      sub_3EEA94();
      v24 = v30;
      sub_3E5834();

      (*(v39 + 8))(v23, v40);
      (*(v36 + 8))(v22, v38);
      (*(v31 + 8))(v21, v33);
      sub_34F72C(&qword_4FE470, &type metadata accessor for Duration.UnitsFormatStyle);
      v25 = v35;
      sub_3EEAE4();
      (*(v34 + 8))(v24, v25);
    }

    (*(v17 + 8))(v19, v16);
    return v42;
  }
}

uint64_t sub_34E29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E8304();
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10E594(a2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return 0;
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_FCF8(v6, &qword_4EF460);
    }

    return sub_3499E8();
  }

  if ((EnumCaseMultiPayload - 4) < 2)
  {
    if (*(a1 + 88))
    {
      v8 = *(a1 + 80);

      return v8;
    }

    return sub_3499E8();
  }

  result = 0;
  if (v6[16] == 1 && (v6[17] & 1) == 0)
  {
    return sub_3499E8();
  }

  return result;
}

uint64_t sub_34E3BC(uint64_t a1)
{
  v2 = sub_3E8304();
  __chkstk_darwin(v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10E594(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      v7 = v4[17];
      if (v4[16] == 1 && v7 == 0)
      {
        return 0;
      }

      else
      {
        if (v4[18])
        {
          v9 = 256;
        }

        else
        {
          v9 = 0;
        }

        return v9 | v7 | 0xFFFF8000;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_FCF8(v4, &qword_4EF460);
      return 2;
    }
  }

  else
  {
    return 32769;
  }

  return result;
}

void sub_34E4D0(char a1, char a2, long double a3)
{
  v4 = a3 / 3600.0;
  if (a3 / 3600.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = fmod(a3 / 60.0, 60.0);
  if (v7 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = fmod(a3, 60.0);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_34;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v8 < 9.22337204e18)
  {
    v9 = v4;
    v10 = v7;
    v11 = v8;
    v12 = [objc_opt_self() mainBundle];
    if (a2)
    {
      if (a1)
      {
        if (v10 > 0)
        {
          v13 = "LAYING_REMAINING_TIME_MINUTES";
          v27._countAndFlagsBits = 0xE000000000000000;
          v14._countAndFlagsBits = 0xD000000000000035;
LABEL_17:
          v14._object = (v13 | 0x8000000000000000);
          v28.value._countAndFlagsBits = 0;
          v28.value._object = 0;
          v15.super.isa = v12;
          v32._countAndFlagsBits = 0;
          v32._object = 0xE000000000000000;
          sub_3E5A74(v14, v28, v15, v32, v27);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_3F5310;
          *(v16 + 56) = &type metadata for Int;
          *(v16 + 64) = &protocol witness table for Int;
          *(v16 + 32) = v10;
          *(v16 + 96) = &type metadata for Int;
          *(v16 + 104) = &protocol witness table for Int;
          *(v16 + 72) = v11;
LABEL_29:
          sub_3ED214();

          return;
        }

        v27._countAndFlagsBits = 0xE000000000000000;
        v21._countAndFlagsBits = 0xD00000000000002DLL;
        v21._object = 0x800000000042E540;
        goto LABEL_25;
      }

      if (v9 > 0)
      {
        v17 = "LAY_REMAINING_TIME_SECONDS";
        v27._countAndFlagsBits = 0xE000000000000000;
        v18._countAndFlagsBits = 0xD000000000000033;
LABEL_22:
        v18._object = (v17 | 0x8000000000000000);
        v29.value._countAndFlagsBits = 0;
        v29.value._object = 0;
        v19.super.isa = v12;
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        sub_3E5A74(v18, v29, v19, v33, v27);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_3F5310;
        *(v20 + 56) = &type metadata for Int;
        *(v20 + 64) = &protocol witness table for Int;
        *(v20 + 32) = v9;
        *(v20 + 96) = &type metadata for Int;
        *(v20 + 104) = &protocol witness table for Int;
        *(v20 + 72) = v10;
        goto LABEL_29;
      }

      v27._countAndFlagsBits = 0xE000000000000000;
      v24._countAndFlagsBits = 0xD00000000000002DLL;
      v24._object = 0x800000000042E4D0;
    }

    else
    {
      if (a1)
      {
        if (v10 > 0)
        {
          v13 = "LAY_REMAINING_TIME_MINUTES";
          v27._countAndFlagsBits = 0xE000000000000000;
          v14._countAndFlagsBits = 0xD000000000000032;
          goto LABEL_17;
        }

        v27._countAndFlagsBits = 0xE000000000000000;
        v21._object = 0x800000000042E460;
        v21._countAndFlagsBits = 0xD00000000000002ALL;
LABEL_25:
        v30.value._countAndFlagsBits = 0;
        v30.value._object = 0;
        v22.super.isa = v12;
        v34._countAndFlagsBits = 0;
        v34._object = 0xE000000000000000;
        sub_3E5A74(v21, v30, v22, v34, v27);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_3F5630;
        *(v23 + 56) = &type metadata for Int;
        *(v23 + 64) = &protocol witness table for Int;
        *(v23 + 32) = v11;
        goto LABEL_29;
      }

      if (v9 > 0)
      {
        v17 = "AX_PLAY_BUTTON_OPEN";
        v27._countAndFlagsBits = 0xE000000000000000;
        v18._countAndFlagsBits = 0xD000000000000030;
        goto LABEL_22;
      }

      v27._countAndFlagsBits = 0xE000000000000000;
      v24._object = 0x800000000042E3F0;
      v24._countAndFlagsBits = 0xD00000000000002ALL;
    }

    v31.value._countAndFlagsBits = 0;
    v31.value._object = 0;
    v25.super.isa = v12;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_3E5A74(v24, v31, v25, v35, v27);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_3F5630;
    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v10;
    goto LABEL_29;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_34E9A0(__int16 a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4FDA38);
  __chkstk_darwin(v4 - 8);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  sub_FBD0(a2, v37 - v8, &qword_4FDA38);
  v10 = sub_3E9224();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    sub_FCF8(v9, &qword_4FDA38);
    v13 = 0;
  }

  else
  {
    sub_3E91E4();
    (*(v11 + 8))(v9, v10);
    v13 = sub_3E91D4();
  }

  sub_FBD0(a2, v6, &qword_4FDA38);
  if (v12(v6, 1, v10) == 1)
  {
    sub_FCF8(v6, &qword_4FDA38);
LABEL_11:
    v24 = [objc_opt_self() mainBundle];
    v36._countAndFlagsBits = 0xE000000000000000;
    v38._object = 0x800000000042C800;
    v38._countAndFlagsBits = 0xD000000000000013;
    v39.value._countAndFlagsBits = 0;
    v39.value._object = 0;
    v25.super.isa = v24;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v26 = sub_3E5A74(v38, v39, v25, v41, v36);

    return v26;
  }

  sub_3E9214();
  v15 = v14;
  (*(v11 + 8))(v6, v10);
  v16 = AXDurationStringForDurationWithSeconds();
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = v16;
  v18 = sub_3ED244();
  v20 = v19;

  if (a1 < 0)
  {

    v27 = v13 & 1;
    v28 = v15;
    v29 = 1;
LABEL_14:
    sub_34E4D0(v27, v29, v28);
    return v30;
  }

  if (!a1)
  {

    v27 = v13 & 1;
    v28 = v15;
    v29 = 0;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
  if (a1 == 1)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_3F5310;
    v22 = [objc_opt_self() mainBundle];
    v36._countAndFlagsBits = 0xE000000000000000;
    v23._object = 0x800000000042E390;
    v23._countAndFlagsBits = 0xD000000000000013;
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_3F5310;
    v22 = [objc_opt_self() mainBundle];
    v36._countAndFlagsBits = 0xE000000000000000;
    v23._countAndFlagsBits = 0xD000000000000015;
    v23._object = 0x800000000042C820;
  }

  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v31.super.isa = v22;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v32 = sub_3E5A74(v23, v40, v31, v42, v36);
  v34 = v33;

  *(v21 + 32) = v32;
  *(v21 + 40) = v34;
  *(v21 + 48) = v18;
  *(v21 + 56) = v20;
  v37[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
  sub_9809C();
  v26 = sub_3ED134();

  return v26;
}

uint64_t type metadata accessor for PlayButtonPresenter()
{
  result = qword_5029B8;
  if (!qword_5029B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_34EF08()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_34EF80(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_34EF98(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_34EF98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_34EFAC()
{
  result = qword_502978;
  if (!qword_502978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502978);
  }

  return result;
}

unint64_t sub_34F004()
{
  result = qword_502980;
  if (!qword_502980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502980);
  }

  return result;
}

unint64_t sub_34F05C()
{
  result = qword_502988;
  if (!qword_502988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502988);
  }

  return result;
}

uint64_t sub_34F0B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_34F100(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return PlayButtonPresenter.delegate.setter(v2, v1);
}

uint64_t sub_34F158()
{
  result = sub_3E6C04();
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

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation22EpisodeStateIdentifierOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_34F2B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_34F300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayButtonPresenter.State.Icon(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1FFF)
  {
    goto LABEL_17;
  }

  if (a2 + 57345 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 57345 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 57345;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 57345;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 57345;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 15) | (2 * ((*a1 >> 3) & 0xFC0 | (*a1 >> 2)))) ^ 0x1FFF;
  if (v6 >> 1 >= 0xFFF)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for PlayButtonPresenter.State.Icon(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57345 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 57345 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1FFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1FFE)
  {
    v6 = ((a2 - 0x1FFF) >> 16) + 1;
    *result = a2 - 0x1FFF;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 1) & 0xFFF) - (a2 << 12);
    *result = (8 * v7) & 0xFE00 | (4 * (v7 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_34F538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_34F598(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if ((v3 & 0x80000000) == 0)
  {
    if ((v5 & 0x80000000) == 0 && v2 == v4)
    {
      goto LABEL_4;
    }

    return 1;
  }

  if ((v5 & 0x80000000) == 0)
  {
    return 1;
  }

  if ((v2 ^ v4) & 1) != 0 || ((v3 ^ v5))
  {
    return 1;
  }

LABEL_4:
  if (((*(a1 + 2) ^ *(a2 + 2)) & 1) != 0 || a1[1] != a2[1])
  {
    return 1;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) || (v6 = a1, v7 = a2, v8 = sub_3EE804(), a2 = v7, v9 = v8, a1 = v6, (v9 & 1) != 0))
  {
    if (*(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4))
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_3EE804() ^ 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_34F72C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_34F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3E9A04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = &v44 - v14;
  v15 = type metadata accessor for ModernShelf();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v18 - 8);
  v52 = &v44 - v19;
  if (sub_34FCB8())
  {
    sub_3E99D4();
    v20 = sub_3E99F4();
    v21 = sub_3ED9F4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Not populating player on Cold Start because the Up Next shelf is present.", v22, 2u);
    }

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v47 = a3;
    v48 = a5;
    v49 = a4;
    v50 = a1;
    v45 = v10;
    v46 = v9;
    v24 = *(a1 + 16);
    if (v24)
    {
      v25 = v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v26 = *(v53 + 72);
      while (1)
      {
        sub_2629D0(v25, v17);
        v27 = v17[*(v15 + 24)];
        if (ModernShelf.ItemKind.rawValue.getter(v27) == 0xD000000000000011 && 0x8000000000423530 == v28)
        {
          break;
        }

        v30 = sub_3EE804();

        if (v30)
        {
          goto LABEL_22;
        }

        if (ModernShelf.ItemKind.rawValue.getter(v27) == 0xD000000000000018 && 0x8000000000423550 == v31)
        {
          break;
        }

        v33 = sub_3EE804();

        if (v33)
        {
          goto LABEL_22;
        }

        sub_352068(v17, type metadata accessor for ModernShelf);
        v25 += v26;
        if (!--v24)
        {
          goto LABEL_18;
        }
      }

LABEL_22:
      v39 = v52;
      sub_352000(v17, v52, type metadata accessor for ModernShelf);
      (*(v53 + 56))(v39, 0, 1, v15);
      sub_FCF8(v39, &unk_503DA0);
      v40 = swift_allocObject();
      v41 = v48;
      v42 = v49;
      v43 = v50;
      v40[2] = v47;
      v40[3] = v42;
      v40[4] = v41;
      v40[5] = v43;

      sub_3E9034();
    }

    else
    {
LABEL_18:
      v34 = v52;
      (*(v53 + 56))(v52, 1, 1, v15);
      sub_FCF8(v34, &unk_503DA0);
      v35 = v51;
      sub_3E99D4();
      v36 = sub_3E99F4();
      v37 = sub_3ED9F4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_0, v36, v37, "Not populating player on Cold Start because the Category Selection Module is not present.", v38, 2u);
      }

      return (*(v45 + 8))(v35, v46);
    }
  }
}

uint64_t sub_34FCB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v18 = type metadata accessor for ModernShelf();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v17 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5F40);
  sub_3E89F4();
  v11 = sub_3E9544();
  sub_FCF8(v10, &qword_4F5978);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    sub_3E89F4();
    sub_3E9514();
    sub_FCF8(v7, &qword_4F5978);
    v13 = v18;
    if ((*(v3 + 48))(v2, 1, v18) == 1)
    {
      sub_FCF8(v2, &unk_503DA0);
      v12 = 0;
    }

    else
    {
      v14 = v17;
      sub_352000(v2, v17, type metadata accessor for ModernShelf);
      v19 = *(v14 + *(v13 + 28));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5A88);
      sub_3520C8();
      v12 = sub_3ED894();
      sub_352068(v14, type metadata accessor for ModernShelf);
    }
  }

  return v12 & 1;
}

uint64_t sub_34FF8C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_3E9A04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  if (a2)
  {
    sub_3E99D4();
    swift_errorRetain();
    v19 = sub_3E99F4();
    v20 = sub_3ED9D4();
    sub_351588(a1, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = sub_3E5B74();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_0, v19, v20, "Could not determine if user is cold start user with error: %@", v21, 0xCu);
      sub_FCF8(v22, &unk_502160);
    }

    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    sub_3E99D4();
    v25 = sub_3E99F4();
    v26 = sub_3ED9F4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v29 = a3;
      *v27 = 67109120;
      *(v27 + 4) = a1 & 1;
      _os_log_impl(&dword_0, v25, v26, "User is cold start user: %{BOOL}d", v27, 8u);
      a3 = v29;
    }

    result = (*(v13 + 8))(v18, v12);
    if (a1)
    {
      return sub_3502B8(a6, a3, a4, a5);
    }
  }

  return result;
}

uint64_t sub_350258()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3502B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v7 - 8);
  v64 = &v56 - v8;
  v9 = sub_3E9A04();
  v65 = *(v9 - 8);
  v66 = v9;
  __chkstk_darwin(v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v14 - 8);
  v16 = &v56 - v15;
  v17 = sub_3E7FE4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_3E7DE4();
  v62 = *(v21 - 8);
  v63 = v21;
  v22 = *(v62 + 64);
  __chkstk_darwin(v21);
  v58 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  sub_3E7404();
  v61 = a4;
  sub_3EC394();
  v67 = v69;
  v26 = sub_351594(a1);
  if (v27)
  {
    sub_3E99D4();
    v28 = sub_3E99F4();
    v29 = sub_3ED9D4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Attempted to populate the player but we could not get the first item from the first reco shelf.", v30, 2u);
    }

    else
    {
    }

    return (*(v65 + 8))(v11, v66);
  }

  v31 = v26;
  sub_3E9874();
  if (v69 != 2)
  {
  }

  *v20 = v31;
  (*(v18 + 104))(v20, enum case for MediaIdentifier.podcast(_:), v17);
  v32 = sub_3E8944();
  (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  sub_3ED824();
  v33 = v25;
  sub_3E7D74();
  v34 = v67;
  if ((sub_351914(v25, v67, v31) & 1) == 0)
  {
    (*(v62 + 8))(v25, v63);
  }

  os_unfair_lock_lock((a2 + 20));
  *(a2 + 16) = 0;
  v57 = a2;
  os_unfair_lock_unlock((a2 + 20));
  v35 = v59;
  sub_3E99D4();
  v36 = sub_3E99F4();
  v37 = sub_3ED9F4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v68 = v31;
    v69 = v39;
    *v38 = 136315138;
    sub_C2A70();
    v40 = sub_3EE7A4();
    v42 = sub_2EDD0(v40, v41, &v69);

    *(v38 + 4) = v42;
    v34 = v67;
    _os_log_impl(&dword_0, v36, v37, "Populating player on cold start with adamID: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
  }

  (*(v65 + 8))(v35, v66);
  v43 = sub_3ED6F4();
  (*(*(v43 - 8) + 56))(v64, 1, 1, v43);
  v45 = v62;
  v44 = v63;
  v46 = v58;
  (*(v62 + 16))(v58, v33, v63);
  v47 = *(v45 + 80);
  v67 = v33;
  v48 = (v47 + 32) & ~v47;
  v49 = (v22 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v34;
  v52 = (v51 + v50);
  v54 = v60;
  v53 = v61;
  *v52 = v57;
  v52[1] = v54;
  v52[2] = v53;
  *(v51 + ((v50 + 31) & 0xFFFFFFFFFFFFFFF8)) = v31;

  sub_D37B8(0, 0, v64, &unk_41B880, v51);

  return (*(v45 + 8))(v67, v44);
}

uint64_t sub_350990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a6;
  v6[11] = v12;
  v6[8] = a4;
  v6[9] = a5;
  v7 = sub_3E9A04();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v8 = sub_3E73B4();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = sub_3E7DE4();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_350B20, 0, 0);
}

uint64_t sub_350B20()
{
  v1 = v0[20];
  v2 = v0[18];
  v13 = v0[21];
  v14 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FF0);
  v5 = sub_3E7DA4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_3F5630;
  (*(v6 + 104))(v8 + v7, enum case for PlaybackIntent.Option.startPlayback(_:), v5);
  sub_3E7D64();

  (*(v1 + 16))(v2, v13, v14);
  (*(v4 + 104))(v2, enum case for PlaybackController.QueueCommand.replace(_:), v3);
  v0[5] = v3;
  v0[6] = &protocol witness table for PlaybackController.QueueCommand;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 2);
  (*(v4 + 16))(boxed_opaque_existential_0Tm, v2, v3);
  v15 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_350D48;
  v11.n128_u64[0] = 5.0;

  return (v15)(v0 + 2, 0, v11);
}

uint64_t sub_350D48(void *a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_351108;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
    v5 = sub_350E78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_350E78()
{
  v25 = v0;
  v1 = v0[10];
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  sub_3E99D4();
  v2 = sub_3E99F4();
  v3 = sub_3ED9F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v0[7] = v7;
    sub_C2A70();
    v10 = sub_3EE7A4();
    v12 = sub_2EDD0(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v2, v3, "Populated player on cold start with adamID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);

    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v13 = v0[15];
    v14 = v0[12];
    v15 = v0[13];

    (*(v15 + 8))(v13, v14);
  }

  v16 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  isa = sub_3EE9B4().super.super.isa;
  sub_3ED364();
  v18 = sub_3ED204();

  [v16 setObject:isa forKey:v18];

  v20 = v0[20];
  v19 = v0[21];
  v21 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v20 + 8))(v19, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_351108()
{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 2;
  os_unfair_lock_unlock((v1 + 20));
  sub_3E99D4();
  swift_errorRetain();
  v2 = sub_3E99F4();
  v3 = sub_3ED9D4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Error populating player on cold start with error: %@", v4, 0xCu);
    sub_FCF8(v5, &unk_502160);
  }

  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  (*(v8 + 8))(v7, v9);
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_351304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502A70);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3 - 8];
  v5 = type metadata accessor for ShowHero();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(a1 + *(type metadata accessor for ModernShelf() + 28));
  if (!*(v9 + 16))
  {
    goto LABEL_7;
  }

  sub_1F958(v9 + 32, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
  type metadata accessor for LegacyLockup();
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (*(v9 + 16))
    {
      sub_1F958(v9 + 32, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
      v11 = swift_dynamicCast();
      (*(v6 + 56))(v4, v11 ^ 1u, 1, v5);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        sub_352000(v4, v8, type metadata accessor for ShowHero);
        v10 = *(v8 + 2);
        sub_352068(v8, type metadata accessor for ShowHero);
        return v10;
      }

LABEL_8:
      sub_FCF8(v4, &qword_502A70);
      return 0;
    }

LABEL_7:
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_8;
  }

  v10 = *(v13 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId);

  return v10;
}

uint64_t sub_351588(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_351594(uint64_t a1)
{
  v2 = sub_3E9A04();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModernShelf();
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v30 = &v30 - v8;
  __chkstk_darwin(v9);
  v31 = &v30 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v35 = 0x8000000000423550;
    v14 = *(v10 + 72);
    do
    {
      sub_2629D0(v13, v6);
      v15 = v6[*(v4 + 24)];
      if (ModernShelf.ItemKind.rawValue.getter(v15) == 0xD000000000000011 && 0x8000000000423530 == v16)
      {
        goto LABEL_3;
      }

      v18 = sub_3EE804();

      if (v18)
      {
        goto LABEL_4;
      }

      if (ModernShelf.ItemKind.rawValue.getter(v15) == 0xD000000000000018 && v35 == v19)
      {
LABEL_3:
      }

      else
      {
        v21 = sub_3EE804();

        if ((v21 & 1) == 0)
        {
          v22 = v30;
          sub_352000(v6, v30, type metadata accessor for ModernShelf);
          v23 = v31;
          sub_352000(v22, v31, type metadata accessor for ModernShelf);
          v24 = sub_351304(v23);
          sub_352068(v23, type metadata accessor for ModernShelf);
          return v24;
        }
      }

LABEL_4:
      sub_352068(v6, type metadata accessor for ModernShelf);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  v26 = v32;
  sub_3E99D4();
  v27 = sub_3E99F4();
  v28 = sub_3ED9D4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "Attempted to populate the player but we could not get the first reco shelf.", v29, 2u);
  }

  (*(v33 + 8))(v26, v34);
  return 0;
}

uint64_t sub_351914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a2;
  v4 = sub_3E7FE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E9A04();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  __chkstk_darwin(v14);
  v39 = &v38 - v15;
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_3ED364();
  v20 = sub_3ED204();

  [v19 integerForKey:v20];

  v21 = sub_3E94B4();
  if (v21 != a3 && v21 != sub_3E94B4())
  {
    sub_3E99D4();
    v23 = sub_3E99F4();
    v36 = sub_3ED9F4();
    if (!os_log_type_enabled(v23, v36))
    {
LABEL_19:

      (*(v42 + 8))(v10, v43);
      return 0;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v23, v36, "Not populating player for cold start user because the item in the player was not automatically populated.", v37, 2u);
    v18 = v10;
    goto LABEL_17;
  }

  if (v21 == sub_3E94B4())
  {
    v22 = sub_3E73D4();
    if (v22)
    {

      sub_3E99D4();
      v23 = sub_3E99F4();
      v24 = sub_3ED9F4();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "Not populating player for cold start user because there is already something in the player when we have never automatically populated the player before. This episode was probably queued by Siri.";
        v27 = v24;
LABEL_14:
        _os_log_impl(&dword_0, v23, v27, v26, v25, 2u);
LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  sub_3E7D94();
  v28 = sub_3E73D4();
  v29 = sub_3E7FD4();

  (*(v5 + 8))(v7, v4);
  if (v29)
  {
    sub_3E99D4();
    v23 = sub_3E99F4();
    v30 = sub_3ED9F4();
    if (!os_log_type_enabled(v23, v30))
    {
      v10 = v13;
      goto LABEL_19;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v23, v30, "Not populating player for cold start user because the item in the player is the same.", v31, 2u);
    v18 = v13;
    goto LABEL_17;
  }

  v32 = COERCE_DOUBLE(sub_3E7394());
  result = 1;
  if ((v34 & 1) == 0 && v32 > 0.0)
  {
    v18 = v39;
    sub_3E99D4();
    v23 = sub_3E99F4();
    v35 = sub_3ED9F4();
    if (os_log_type_enabled(v23, v35))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Not populating player for cold start user because the item in the player has been played (playhead > 0).";
      v27 = v35;
      goto LABEL_14;
    }

LABEL_18:
    v10 = v18;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_351D8C()
{
  v1 = sub_3E7DE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_351E98(uint64_t a1)
{
  v3 = *(sub_3E7DE4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2368C;

  return sub_350990(a1, v6, v7, v1 + v4, v8, v9);
}

uint64_t sub_352000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_352068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_3520C8()
{
  result = qword_4F5A90;
  if (!qword_4F5A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F5A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F5A90);
  }

  return result;
}

unint64_t sub_352140()
{
  result = qword_502A78;
  if (!qword_502A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502A78);
  }

  return result;
}

void UnboundedCache.init(notificationCenter:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  swift_getTupleTypeMetadata2();
  v10 = sub_3ED5D4();
  sub_2D53DC(v10, a2, a3, a4);

  sub_3ED0E4();
  v11 = sub_352D0C();

  *a5 = v11;
  v12 = MTApplicationDidEnterBackgroundNotification;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = v11;
  type metadata accessor for WeakNotificationObserver();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v14 + 24) = sub_352DC0;
  *(v14 + 32) = v13;
  swift_retain_n();
  [a1 addObserver:v14 selector:"handleWithNotification:" name:v12 object:0];
  a5[1] = v14;
  v15 = MTApplicationDidReceiveMemoryWarningNotification;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = v11;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v17 + 24) = sub_352DCC;
  *(v17 + 32) = v16;
  [a1 addObserver:v17 selector:"handleWithNotification:" name:v15 object:0];

  a5[2] = v17;
}

void sub_35239C(uint64_t a1, uint64_t a2)
{
  sub_3ED0E4();
  v3 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v3));
  sub_353110();
  os_unfair_lock_unlock((a2 + v3));
}

void sub_35244C(uint64_t a1, uint64_t a2)
{
  sub_3ED0E4();
  v3 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v3));
  sub_353010();
  os_unfair_lock_unlock((a2 + v3));
}

void UnboundedCache.subscript.getter()
{
  v1 = *v0;
  sub_3ED0E4();
  sub_3EE0F4();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_352DD8();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t UnboundedCache.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_352E10();
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = sub_3EE0F4();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_3526E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a1;
  v7 = sub_3EE0F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  v12 = __chkstk_darwin(v11);
  (*(v14 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4, v12);
  (*(v8 + 16))(v10, a3, v7);
  sub_3ED0E4();
  return sub_3ED104();
}

void (*UnboundedCache.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a3;
  v6[1] = v3;
  v8 = sub_3EE0F4();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v12 = *(a3 + 16);
  v7[6] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v7[7] = v13;
  if (&_swift_coroFrameAlloc)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(v13 + 64));
  }

  v7[8] = v15;
  (*(v14 + 16))();
  UnboundedCache.subscript.getter();
  return sub_352A54;
}

void sub_352A54(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v9 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 32), v5, v9);
    sub_352E10();
    (*(v4 + 8))(v3, v6);
    v10 = *(v8 + 8);
    v10(v7, v9);
    v10(v5, v9);
  }

  else
  {
    sub_352E10();
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

void UnboundedCache.removeValue(forKey:)()
{
  v1 = *v0;
  sub_3ED0E4();
  sub_3EE0F4();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_352EC8();
  os_unfair_lock_unlock((v1 + v2));
}

Swift::Void __swiftcall UnboundedCache.removeAll()()
{
  v1 = *v0;
  sub_3ED0E4();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_353110();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_352D0C()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_3EE474();
  return sub_3EE464();
}

uint64_t sub_352D88()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_352E10()
{
  v1 = *v0;
  sub_3ED0E4();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_352FEC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

__n128 sub_352F84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_352F98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_353078@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
}

unint64_t sub_353130()
{
  result = qword_502B00;
  if (!qword_502B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502B00);
  }

  return result;
}

uint64_t NSNotificationCenter.weakObserver(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WeakNotificationObserver();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;

  [v3 addObserver:v7 selector:"handleWithNotification:" name:a1 object:0];
  return v7;
}

uint64_t WeakNotificationObserver.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver:v0];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

Swift::Void __swiftcall WeakNotificationObserver.invalidate()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver:v0];
  }
}

uint64_t WeakNotificationObserver.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver:v0];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t AMSOAuthEndpointSubscriber.subscribe(to:for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502BB0);
  v25 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502BB8);
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  __chkstk_darwin(v7);
  v21 = &v18 - v9;
  v19 = a2;
  sub_35381C(a1, a2, a3, &v27);
  v26 = v27;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v18 = sub_3E9C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502BC8);
  sub_886BC(&qword_502BD0, &qword_502BC0);
  sub_886BC(&qword_502BD8, &qword_502BC8);
  v11 = v20;
  sub_3EA0F4();

  v12 = swift_allocObject();
  *(v12 + 16) = v19;
  *(v12 + 24) = a3;
  sub_886BC(&qword_502BE0, &qword_502BB0);

  v14 = v21;
  v13 = v22;
  sub_3EA0C4();

  (*(v25 + 8))(v11, v13);
  sub_886BC(&qword_502BE8, &qword_502BB8);
  v15 = v23;
  v16 = sub_3E9F94();
  (*(v24 + 8))(v14, v15);
  return v16;
}

uint64_t sub_35381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a4;
  v36 = a2;
  v6 = sub_3E5FC4();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3E5DC4();
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E9A04();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E99E4();

  v16 = sub_3E99F4();
  v17 = sub_3ED9F4();
  v37 = a3;

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v9;
    v20 = a1;
    v21 = v19;
    v38 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    *(v18 + 14) = sub_2EDD0(v36, v37, &v38);
    _os_log_impl(&dword_0, v16, v17, "%{private,mask.hash}s: Creating and preparing request for commerce verification endpoint.", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    a1 = v20;
    v9 = v31;
  }

  (*(v13 + 8))(v15, v12);
  v22 = [objc_opt_self() sharedInstance];
  v23 = [objc_allocWithZone(IMURLRequestEncoder) initWithBag:v22];

  [v23 setPersonalizeRequests:1];
  [v23 setUrlKnownToBeTrusted:1];
  sub_3E5804();
  v24 = swift_allocBox();
  (*(v32 + 16))(v11, a1, v9);
  sub_3E57C4();
  sub_3E5784();
  sub_3E5FB4();
  v25 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v27 = v26;
  (*(v33 + 8))(v8, v34);
  v40._countAndFlagsBits = 0x646975672D78;
  v39.value._countAndFlagsBits = v25;
  v39.value._object = v27;
  v40._object = 0xE600000000000000;
  sub_3E57F4(v39, v40);

  v28 = swift_allocObject();
  v28[2] = v23;
  v28[3] = v24;
  v29 = v37;
  v28[4] = v36;
  v28[5] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502BC0);
  swift_allocObject();

  result = sub_3E9E34();
  *v35 = result;
  return result;
}

uint64_t sub_353C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_3E5804();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v9 + 32))(v13 + v12, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502BC8);
  swift_allocObject();

  result = sub_3E9E34();
  *a4 = result;
  return result;
}

uint64_t sub_353DF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_353E34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_353E7C(*a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_353E7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v45 = a2;
  v46 = sub_3E9A04();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  if (a1 > 402)
  {
    if (a1 != 403)
    {
      if (a1 == 500)
      {
        sub_3E99E4();

        v25 = sub_3E99F4();
        v26 = sub_3ED9D4();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v47 = v28;
          *v27 = 141558275;
          *(v27 + 4) = 1752392040;
          *(v27 + 12) = 2081;
          *(v27 + 14) = sub_2EDD0(v45, a3, &v47);
          _os_log_impl(&dword_0, v25, v26, "%{private,mask.hash}s: Error - Unable to determine user's subscription status due to server error.", v27, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
        }

        (*(v5 + 8))(v10, v46);
        v24 = &enum case for OAuthSessionError.commerceVerificationServerError(_:);
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    sub_3E99E4();

    v40 = sub_3E99F4();
    v41 = sub_3ED9D4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      *(v42 + 14) = sub_2EDD0(v45, a3, &v47);
      _os_log_impl(&dword_0, v40, v41, "%{private,mask.hash}s: User is not subscribed.", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
    }

    (*(v5 + 8))(v16, v46);
    v35 = 0;
  }

  else
  {
    if (a1 != 200)
    {
      if (a1 == 400)
      {
        sub_3E99E4();

        v20 = sub_3E99F4();
        v21 = sub_3ED9D4();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v47 = v23;
          *v22 = 141558275;
          *(v22 + 4) = 1752392040;
          *(v22 + 12) = 2081;
          *(v22 + 14) = sub_2EDD0(v45, a3, &v47);
          _os_log_impl(&dword_0, v20, v21, "%{private,mask.hash}s: Error - Unable to determine user's subscription status due to bad client request", v22, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
        }

        (*(v5 + 8))(v13, v46);
        v24 = &enum case for OAuthSessionError.commerceVerificationBadClientRequest(_:);
LABEL_15:
        v33 = sub_3E8604();
        sub_354580();
        swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *v24, v33);
        swift_willThrow();
        return v35 & 1;
      }

LABEL_12:
      sub_3E99E4();

      v29 = sub_3E99F4();
      v30 = sub_3ED9D4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v47 = v32;
        *v31 = 141558531;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        *(v31 + 14) = sub_2EDD0(v45, a3, &v47);
        *(v31 + 22) = 2048;
        *(v31 + 24) = a1;
        _os_log_impl(&dword_0, v29, v30, "%{private,mask.hash}s: Error - Unable to determine user's subscription status due to unknown error with status code %ld", v31, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }

      (*(v5 + 8))(v7, v46);
      v24 = &enum case for OAuthSessionError.commerceVerificationUnknownError(_:);
      goto LABEL_15;
    }

    sub_3E99E4();

    v36 = sub_3E99F4();
    v37 = sub_3ED9D4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      *(v38 + 14) = sub_2EDD0(v45, a3, &v47);
      _os_log_impl(&dword_0, v36, v37, "%{private,mask.hash}s: User is subscribed.", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }

    (*(v5 + 8))(v19, v46);
    v35 = 1;
  }

  return v35 & 1;
}

unint64_t sub_354580()
{
  result = qword_502BF0;
  if (!qword_502BF0)
  {
    sub_3E8604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502BF0);
  }

  return result;
}

void sub_3545D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_3E5804();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_3E57A4();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a1;
  v17[5] = a2;
  aBlock[4] = sub_355A28;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_63B88;
  aBlock[3] = &block_descriptor_25_0;
  v18 = _Block_copy(aBlock);

  [a3 prepareRequest:v16 account:0 completion:v18];
  _Block_release(v18);
}

uint64_t sub_3547D0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), void *a6)
{
  v48 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502BF8);
  __chkstk_darwin(v50);
  v12 = (&v46 - v11);
  v49 = sub_3E9A04();
  v13 = *(v49 - 8);
  __chkstk_darwin(v49);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  if (a2)
  {
    swift_errorRetain();
    sub_3E99E4();
    swift_errorRetain();

    v22 = sub_3E99F4();
    v23 = sub_3ED9D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = a5;
      v26 = v25;
      v27 = swift_slowAlloc();
      v46 = a6;
      v28 = v27;
      v51 = v27;
      *v24 = 141558531;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      *(v24 + 14) = sub_2EDD0(v48, a4, &v51);
      *(v24 + 22) = 2112;
      v29 = sub_3E5B74();
      *(v24 + 24) = v29;
      *v26 = v29;
      _os_log_impl(&dword_0, v22, v23, "%{private,mask.hash}s: Could not prepare URL Request with error: %@.", v24, 0x20u);
      sub_FCF8(v26, &unk_502160);
      a5 = v47;

      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    (*(v13 + 8))(v21, v49);
    *v12 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a5(v12);
  }

  else if (a1)
  {
    v30 = a1;
    sub_3E99E4();

    v31 = sub_3E99F4();
    v32 = sub_3ED9F4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = a5;
      v34 = v33;
      v35 = swift_slowAlloc();
      v46 = v30;
      v36 = v35;
      v51 = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      *(v34 + 14) = sub_2EDD0(v48, a4, &v51);
      _os_log_impl(&dword_0, v31, v32, "%{private,mask.hash}s: Created and prepared request for commerce verification endpoint.", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v30 = v46;

      a5 = v47;
    }

    (*(v13 + 8))(v18, v49);
    sub_3E57B4();
    swift_storeEnumTagMultiPayload();
    a5(v12);
  }

  else
  {
    sub_3E99E4();

    v37 = sub_3E99F4();
    v38 = sub_3ED9D4();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = a5;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 141558275;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      *(v40 + 14) = sub_2EDD0(v48, a4, &v51);
      _os_log_impl(&dword_0, v37, v38, "%{private,mask.hash}s: No request available after attempting to prepare request.", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);

      a5 = v39;
    }

    (*(v13 + 8))(v15, v49);
    v42 = sub_3E8604();
    sub_354580();
    v43 = swift_allocError();
    (*(*(v42 - 8) + 104))(v44, enum case for OAuthSessionError.couldNotPrepareRequest(_:), v42);
    *v12 = v43;
    swift_storeEnumTagMultiPayload();
    a5(v12);
  }

  return sub_FCF8(v12, &qword_502BF8);
}

void sub_354DE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_3E9A04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  sub_3E99E4();

  v15 = sub_3E99F4();
  v16 = sub_3ED9F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25[1] = a5;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    *(v18 + 14) = sub_2EDD0(a3, a4, aBlock);
    _os_log_impl(&dword_0, v15, v16, "%{private,mask.hash}s: Performing request to commerce verification endpoint.", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  (*(v11 + 8))(v13, v10);
  v20 = [objc_opt_self() defaultSession];
  v21 = sub_3E57A4();
  v22 = [v20 dataTaskPromiseWithRequest:v21];

  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = sub_8860C;
  v23[5] = v14;
  aBlock[4] = sub_355970;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_63B88;
  aBlock[3] = &block_descriptor_26;
  v24 = _Block_copy(aBlock);

  [v22 addFinishBlock:v24];
  _Block_release(v24);
}

uint64_t sub_3550F4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v49 = a3;
  v50 = a6;
  v10 = sub_3E9A04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = sub_355684(a1, a2);
  if (v21)
  {
    sub_3E99E4();

    v22 = sub_3E99F4();
    v23 = sub_3ED9D4();

    v24 = os_log_type_enabled(v22, v23);
    v48 = a5;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      *(v25 + 14) = sub_2EDD0(v49, a4, &v51);
      _os_log_impl(&dword_0, v22, v23, "%{private,mask.hash}s: Error - no status code in response from commerce verification endpoint.", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    v27 = *(v11 + 8);
    v27(v16, v10);
    if (a2)
    {
      swift_errorRetain();
      sub_3E99E4();

      swift_errorRetain();
      v28 = sub_3E99F4();
      v29 = sub_3ED9D4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v47 = v27;
        v33 = v32;
        v51 = v32;
        *v30 = 141558531;
        *(v30 + 4) = 1752392040;
        *(v30 + 12) = 2081;
        *(v30 + 14) = sub_2EDD0(v49, a4, &v51);
        *(v30 + 22) = 2112;
        v34 = sub_3E5B74();
        *(v30 + 24) = v34;
        *v31 = v34;
        _os_log_impl(&dword_0, v28, v29, "%{private,mask.hash}s: Error performing data task to verification endpoint with error and no status code: %@", v30, 0x20u);
        sub_FCF8(v31, &unk_502160);

        __swift_destroy_boxed_opaque_existential_1Tm(v33);

        v47(v13, v10);
      }

      else
      {

        v27(v13, v10);
      }

      v45 = v48;
      swift_errorRetain();
      v45(a2, 1);
    }

    else
    {
      v42 = sub_3E8604();
      sub_354580();
      v43 = swift_allocError();
      (*(*(v42 - 8) + 104))(v44, enum case for OAuthSessionError.noStatusCodeFromCommerceVerificationEndpoint(_:), v42);
      v48(v43, 1);
    }
  }

  else
  {
    v35 = v20;
    sub_3E99E4();

    v36 = sub_3E99F4();
    v37 = sub_3ED9F4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = a5;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51 = v40;
      *v39 = 141558531;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      *(v39 + 14) = sub_2EDD0(v49, a4, &v51);
      *(v39 + 22) = 2048;
      *(v39 + 24) = v35;
      _os_log_impl(&dword_0, v36, v37, "%{private,mask.hash}s: Performed data task to commerce verification endpoint and received status code: %ld", v39, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);

      a5 = v38;
    }

    (*(v11 + 8))(v19, v10);
    return (a5)(v35, 0);
  }
}

id sub_355684(void *a1, uint64_t a2)
{
  if (a1)
  {
    return [a1 responseStatusCode];
  }

  if (!a2)
  {
    return 0;
  }

  swift_errorRetain();
  v3 = sub_3E5B74();
  v4 = [v3 userInfo];

  v5 = sub_3ED094();
  v6 = sub_3ED244();
  if (!*(v5 + 16))
  {

LABEL_10:

    return 0;
  }

  v8 = sub_552A8(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_2F4AC(*(v5 + 56) + 32 * v8, v12);

  if (swift_dynamicCast())
  {
    return v11;
  }

  return 0;
}

uint64_t sub_3557EC()
{
  v1 = sub_3E5804();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_3558B0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_3E5804() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_354DE4(a1, a2, v6, v7, v8);
}

uint64_t sub_355934()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_355994()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_15Tm_1()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t ArtworkModel.artwork.getter@<X0>(uint64_t a1@<X8>)
{
  sub_A18FC(v1, a1);
  v3 = sub_3E7784();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_355ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  sub_A18FC(v4, a2);
  v6 = *(*(a1 - 8) + 56);

  return v6(a2, 0, 1, a1);
}

uint64_t sub_355B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0);
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_3EBF94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EBDF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_3EBDA4() & 1) == 0)
  {
    (*(v13 + 16))(v15, a1, v12);
    (*(v9 + 16))(v11, v23, v8);
    v16 = v27;
    sub_3E76C4();
    if (!v16)
    {
      v17 = sub_3E7784();
      return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
    }

    sub_3EBF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8);
    sub_3EBFB4();
    (*(v21 + 8))(v7, v22);
    sub_355F80(v26, v24);
    if (v25)
    {
      __swift_project_boxed_opaque_existential_1(v24, v25);
      sub_3E7784();
      sub_3EC854();

      sub_355FF0(v26);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    else
    {
      sub_355FF0(v26);

      sub_355FF0(v24);
    }
  }

  v19 = sub_3E7784();
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

unint64_t sub_355F58(uint64_t a1)
{
  result = sub_95654();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_355F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_4EB0E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_355FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_4EB0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Showcase.shelfUniqueId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Showcase.shelfUniqueId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t Brick.accessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit5Brick_accessibilityLabel);

  return v1;
}

uint64_t Brick.__allocating_init(artwork:accessibilityLabel:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = sub_3E5FC4();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  sub_FBD0(a1, v13 + OBJC_IVAR____TtC8ShelfKit5Brick_artwork, &qword_4F1D50);
  v14 = (v13 + OBJC_IVAR____TtC8ShelfKit5Brick_accessibilityLabel);
  *v14 = a2;
  v14[1] = a3;
  sub_FBD0(a4, v13 + OBJC_IVAR____TtC8ShelfKit5Brick_clickAction, &qword_4EDE00);
  sub_FBD0(a5, v13 + OBJC_IVAR____TtC8ShelfKit5Brick_impressionMetrics, &unk_4E9170);
  sub_3E5FB4();
  v15 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v17 = v16;
  sub_FCF8(a5, &unk_4E9170);
  sub_FCF8(a4, &qword_4EDE00);
  sub_FCF8(a1, &qword_4F1D50);
  (*(v10 + 8))(v12, v20);
  *(v13 + 16) = v15;
  *(v13 + 24) = v17;
  return v13;
}

uint64_t Brick.init(artwork:accessibilityLabel:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v21 = sub_3E5FC4();
  v12 = *(v21 - 8);
  __chkstk_darwin(v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(a1, v6 + OBJC_IVAR____TtC8ShelfKit5Brick_artwork, &qword_4F1D50);
  v15 = (v6 + OBJC_IVAR____TtC8ShelfKit5Brick_accessibilityLabel);
  *v15 = a2;
  v15[1] = a3;
  sub_FBD0(a4, v6 + OBJC_IVAR____TtC8ShelfKit5Brick_clickAction, &qword_4EDE00);
  sub_FBD0(a5, v6 + OBJC_IVAR____TtC8ShelfKit5Brick_impressionMetrics, &unk_4E9170);
  sub_3E5FB4();
  v16 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v18 = v17;
  sub_FCF8(a5, &unk_4E9170);
  sub_FCF8(a4, &qword_4EDE00);
  sub_FCF8(a1, &qword_4F1D50);
  (*(v12 + 8))(v14, v21);
  *(v6 + 16) = v16;
  *(v6 + 24) = v18;
  return v6;
}

uint64_t Showcase.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t Brick.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit5Brick_artwork, &qword_4F1D50);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit5Brick_clickAction, &qword_4EDE00);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit5Brick_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t Brick.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit5Brick_artwork, &qword_4F1D50);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit5Brick_clickAction, &qword_4EDE00);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit5Brick_impressionMetrics, &unk_4E9170);

  return swift_deallocClassInstance();
}

uint64_t sub_35674C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_356B10(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_3567F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  a2[3] = a1;
  *a2 = v3;
}

uint64_t sub_356840()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t Brick.appEntityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LazyJSFlowDestination(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for FlowAction.DestinationType(0);
  __chkstk_darwin(v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit5Brick_clickAction, v13, &qword_4EDE00);
  if (!v14)
  {
    sub_FCF8(v13, &qword_4EDE00);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  type metadata accessor for FlowAction(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v10 = sub_3E5764();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  sub_357108(v12 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_35716C(v8, v5);
    LazyJSFlowDestination.appEntityAnnotation()(a1);

    return sub_3571D0(v5, type metadata accessor for LazyJSFlowDestination);
  }

  else
  {

    v11 = sub_3E5764();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    return sub_3571D0(v8, type metadata accessor for FlowAction.DestinationType);
  }
}

uint64_t sub_356B10(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v42 = a2;
  v2 = sub_3E5FC4();
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v53 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v52 = &v42 - v5;
  v6 = sub_3EBF94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_3EBDF4();
  v10 = *(v58 - 8);
  __chkstk_darwin(v58);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v16 - 8);
  v18 = &v42 - v17;
  sub_3E7784();
  sub_3EBE04();
  v50 = v6;
  v51 = v7;
  v19 = v7 + 16;
  v20 = *(v7 + 16);
  v21 = v42;
  v45 = v20;
  v46 = v19;
  v20(v9, v42, v6);
  sub_3574A8(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  v48 = v18;
  sub_3EC574();
  sub_3EBE04();
  v22 = sub_3EBDC4();
  v43 = v23;
  v44 = v22;
  v24 = *(v10 + 8);
  v25 = v12;
  v26 = v58;
  v24(v25, v58);
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v49 = v10 + 8;
  v47 = v24;
  v24(v15, v26);
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v28 = type metadata accessor for Action();
    v29 = sub_3574A8(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v57[1] = 0;
    v57[2] = 0;
  }

  v57[0] = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  v57[3] = v28;
  v57[4] = v29;
  sub_3EC634();
  sub_3EBE04();
  v30 = v21;
  v31 = v50;
  v45(v9, v21, v50);
  v32 = v52;
  sub_3EC574();
  type metadata accessor for Brick();
  v33 = swift_allocObject();
  v34 = v48;
  sub_FBD0(v48, v33 + OBJC_IVAR____TtC8ShelfKit5Brick_artwork, &qword_4F1D50);
  v35 = (v33 + OBJC_IVAR____TtC8ShelfKit5Brick_accessibilityLabel);
  v36 = v43;
  *v35 = v44;
  v35[1] = v36;
  sub_FBD0(v57, v33 + OBJC_IVAR____TtC8ShelfKit5Brick_clickAction, &qword_4EDE00);
  sub_FBD0(v32, v33 + OBJC_IVAR____TtC8ShelfKit5Brick_impressionMetrics, &unk_4E9170);
  v37 = v53;
  sub_3E5FB4();
  v38 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v40 = v39;
  (*(v51 + 8))(v30, v31);
  v47(v56, v58);
  (*(v54 + 8))(v37, v55);
  sub_FCF8(v32, &unk_4E9170);
  sub_FCF8(v34, &qword_4F1D50);
  sub_FCF8(v57, &qword_4EDE00);
  *(v33 + 16) = v38;
  *(v33 + 24) = v40;
  return v33;
}

uint64_t sub_357108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.DestinationType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_35716C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyJSFlowDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3571D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_357230(uint64_t a1)
{
  result = sub_3574A8(&qword_502C00, type metadata accessor for Brick);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for Brick()
{
  result = qword_502C38;
  if (!qword_502C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3572D4(uint64_t a1)
{
  result = sub_3574A8(&qword_502C08, type metadata accessor for Brick);
  *(a1 + 8) = result;
  return result;
}

void sub_357334()
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_3574A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CategoryHeader.shelfUniqueId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_shelfUniqueId);

  return v1;
}

uint64_t sub_357578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_156458(a1, v3 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_category);
  sub_3EE3C4(17);

  v9._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v9);

  sub_357724(a1);
  v7 = (v3 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_shelfUniqueId);
  *v7 = 0x79726F6765746143;
  v7[1] = 0xEF2D726564616548;
  sub_FACC(a3, v3 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_impressionMetrics, &unk_4E9170);
  sub_FACC(a2, v3 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_artwork, &qword_4F1D50);
  return v3;
}

uint64_t CategoryHeader.deinit()
{
  sub_357724(v0 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_category);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_artwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_impressionMetrics, &unk_4E9170);

  return v0;
}

uint64_t sub_357724(uint64_t a1)
{
  v2 = type metadata accessor for Category();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CategoryHeader.__deallocating_deinit()
{
  sub_357724(v0 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_category);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_artwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_impressionMetrics, &unk_4E9170);

  return swift_deallocClassInstance();
}

uint64_t sub_357838()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_shelfUniqueId);

  return v1;
}

uint64_t CategoryHeader.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v3 - 8);
  v40 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v5 - 8);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v36 - v8;
  v9 = sub_3EBF94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3EBDF4();
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9BA8);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for Category();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v36 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v37 = &v36 - v21;
  v46 = a1;
  sub_3EBE04();
  v43 = v10;
  v44 = v9;
  v22 = *(v10 + 16);
  v22(v12, v47, v9);
  sub_35806C(&qword_502CE8, type metadata accessor for Category);
  v23 = v17;
  sub_3EC574();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_FCF8(v16, &qword_4E9BA8);
    v24 = sub_3ECEE4();
    sub_35806C(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v25 = 0x79726F6765746163;
    v26 = v45;
    v25[1] = 0xE800000000000000;
    v25[2] = v26;
    (*(*(v24 - 8) + 104))(v25, enum case for JSONError.missingProperty(_:), v24);
    swift_willThrow();
    (*(v43 + 8))(v47, v44);
    (*(v41 + 8))(v46, v42);
  }

  else
  {
    v27 = v37;
    sub_C2AC4(v16, v37);
    sub_3E7784();
    sub_3EBE04();
    v28 = v47;
    v29 = v44;
    v22(v12, v47, v44);
    sub_35806C(&qword_4EECC8, &type metadata accessor for ArtworkModel);
    v30 = v39;
    sub_3EC574();
    v31 = v36;
    sub_156458(v27, v36);
    v32 = v38;
    sub_FBD0(v30, v38, &qword_4F1D50);
    v33 = sub_3EC634();
    v34 = v40;
    (*(*(v33 - 8) + 56))(v40, 1, 1, v33);
    v23 = swift_allocObject();
    sub_357578(v31, v32, v34);
    (*(v43 + 8))(v28, v29);
    (*(v41 + 8))(v46, v42);
    sub_FCF8(v30, &qword_4F1D50);
    sub_357724(v27);
  }

  return v23;
}

uint64_t sub_357F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = CategoryHeader.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id CategoryHeader.preferredBackgroundColor.getter()
{
  v1 = v0 + OBJC_IVAR____TtC8ShelfKit14CategoryHeader_category;
  v2 = type metadata accessor for Category();
  result = 0;
  v4 = v1 + *(v2 + 28);
  if ((*(v4 + 4) & 1) == 0)
  {
    return [objc_allocWithZone(UIColor) initWithRed:*v4 / 255.0 green:BYTE1(*v4) / 255.0 blue:BYTE2(*v4) / 255.0 alpha:HIBYTE(*v4) / 255.0];
  }

  return result;
}

uint64_t sub_358014(uint64_t a1)
{
  result = sub_35806C(&qword_502CF0, type metadata accessor for CategoryHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_35806C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CategoryHeader()
{
  result = qword_502D20;
  if (!qword_502D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_358168()
{
  type metadata accessor for Category();
  if (v0 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
    if (v1 <= 0x3F)
    {
      sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void *ChannelDetail.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor);
  sub_1F7418(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor + 8));
  return v1;
}

uint64_t sub_358348()
{
  result = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
  if (result <= 0)
  {
    return *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount);
  }

  return result;
}

BOOL sub_358370()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
  if (v1 <= 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount);
  }

  return v1 > 1;
}

BOOL sub_35839C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
  if (v1 <= 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount);
  }

  return v1 < 2;
}

uint64_t ChannelDetail.__allocating_init(adamId:title:subtitle:displayType:uberArtwork:logoArtwork:iconArtwork:backgroundColor:showCount:availableShowCount:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v22 = swift_allocObject();
  if (a2)
  {
    a1 = sub_3E9484();
  }

  *(v22 + 16) = a1;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = a5;
  *(v22 + 48) = a6;
  *(v22 + 56) = a7;
  sub_25612C(a8, v22 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_uberArtwork);
  sub_25612C(a9, v22 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_logoArtwork);
  sub_25612C(a10, v22 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_iconArtwork);
  v23 = v22 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor;
  *v23 = a11;
  *(v23 + 8) = a12;
  *(v22 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) = a13;
  *(v22 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount) = a14;
  return v22;
}

uint64_t ChannelDetail.init(adamId:title:subtitle:displayType:uberArtwork:logoArtwork:iconArtwork:backgroundColor:showCount:availableShowCount:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    a1 = sub_3E9484();
  }

  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  sub_25612C(a8, v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_uberArtwork);
  sub_25612C(a9, v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_logoArtwork);
  sub_25612C(a10, v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_iconArtwork);
  v21 = v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor;
  *v21 = a11;
  *(v21 + 8) = a12;
  *(v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount) = a13;
  *(v14 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount) = a14;
  return v14;
}

uint64_t ChannelDetail.deinit()
{

  sub_1433A4(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_uberArtwork);
  sub_1433A4(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_logoArtwork);
  sub_1433A4(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_iconArtwork);
  sub_234D4C(*(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor), *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor + 8));
  return v0;
}

uint64_t ChannelDetail.__deallocating_deinit()
{

  sub_1433A4(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_uberArtwork);
  sub_1433A4(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_logoArtwork);
  sub_1433A4(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_iconArtwork);
  sub_234D4C(*(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor), *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_backgroundColor + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChannelDetail()
{
  result = qword_502DF8;
  if (!qword_502DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_358778()
{
  sub_4EC44();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id ChannelHeader.__allocating_init(title:adamID:subtitle:description:tagline:backgroundArtwork:backgroundColor:interfaceStyle:primaryArtwork:offerType:offerDescription:banner:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, char *a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v57 = a8;
  v54 = a6;
  v55 = a7;
  v52 = a4;
  v53 = a5;
  v64 = a18;
  v65 = a19;
  v62 = a16;
  v63 = a17;
  v60 = a12;
  v61 = a15;
  v59 = a11;
  v56 = a10;
  v50 = a9;
  v51 = a14;
  v24 = sub_3E5FC4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_allocWithZone(v20);
  v29 = *a13;
  sub_3E5FB4();
  v30 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v32 = v31;
  (*(v25 + 8))(v27, v24);
  v33 = &v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_shelfUniqueId];
  *v33 = v30;
  v33[1] = v32;
  v34 = &v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_title];
  *v34 = a1;
  v34[1] = a2;
  *&v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_adamID] = a3;
  v35 = &v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_subtitle];
  v36 = v53;
  *v35 = v52;
  v35[1] = v36;
  v37 = &v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelDescription];
  v38 = v55;
  *v37 = v54;
  v37[1] = v38;
  v39 = &v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelTagline];
  v40 = v56;
  v42 = v50;
  v41 = v51;
  *v39 = v57;
  v39[1] = v42;
  *&v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_primaryArtwork] = v41;
  sub_FBD0(v40, &v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundArtwork], &qword_4F1D50);
  v43 = &v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundColor];
  *v43 = v59;
  v44 = v61;
  v43[8] = v60;
  v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_interfaceStyle] = v29;
  v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerType] = v44;
  v45 = &v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerDescription];
  v46 = v63;
  *v45 = v62;
  v45[1] = v46;
  v47 = v65;
  *&v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_banner] = v64;
  sub_FBD0(v47, &v28[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_impressionMetrics], &unk_4E9170);
  v66.receiver = v28;
  v66.super_class = v58;
  v48 = objc_msgSendSuper2(&v66, "init");
  sub_FCF8(v47, &unk_4E9170);
  sub_FCF8(v40, &qword_4F1D50);
  return v48;
}

uint64_t ChannelOfferType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1701147238;
  v2 = 0x646972627968;
  if (a1 != 2)
  {
    v2 = 0x6269726373627573;
  }

  if (a1)
  {
    v1 = 1684627824;
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

uint64_t sub_358C18(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701147238;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x646972627968;
  if (v3 != 2)
  {
    v5 = 0x6269726373627573;
    v4 = 0xEA00000000006465;
  }

  v6 = 1684627824;
  if (!*a1)
  {
    v6 = 1701147238;
  }

  if (*a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v3 <= 1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = v4;
  }

  v9 = 0xE600000000000000;
  v10 = 0x646972627968;
  if (*a2 != 2)
  {
    v10 = 0x6269726373627573;
    v9 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v2 = 1684627824;
  }

  if (*a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v10;
  }

  if (*a2 <= 1u)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_3EE804();
  }

  return v13 & 1;
}

Swift::Int sub_358D44()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_358DF8()
{
  sub_3ED394();
}

Swift::Int sub_358E98()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_358F48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit16ChannelOfferTypeO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_358F78(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701147238;
  v4 = 0xE600000000000000;
  v5 = 0x646972627968;
  if (*v1 != 2)
  {
    v5 = 0x6269726373627573;
    v4 = 0xEA00000000006465;
  }

  if (*v1)
  {
    v3 = 1684627824;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t ChannelHeader.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_title);

  return v1;
}

uint64_t ChannelHeader.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_subtitle);

  return v1;
}

uint64_t ChannelHeader.channelDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelDescription);

  return v1;
}

uint64_t ChannelHeader.channelTagline.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelTagline);

  return v1;
}

uint64_t ChannelHeader.shelfUniqueId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_shelfUniqueId);

  return v1;
}

uint64_t ChannelHeader.offerDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerDescription);

  return v1;
}

void *ChannelHeader.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundColor);
  sub_1F7418(v1, *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundColor + 8));
  return v1;
}

id ChannelHeader.init(title:adamID:subtitle:description:tagline:backgroundArtwork:backgroundColor:interfaceStyle:primaryArtwork:offerType:offerDescription:banner:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, char *a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v56 = a8;
  v53 = a6;
  v54 = a7;
  v51 = a4;
  v52 = a5;
  v63 = a18;
  v64 = a19;
  v60 = a16;
  v61 = a17;
  v58 = a12;
  v59 = a15;
  v57 = a11;
  v55 = a10;
  v49 = a9;
  v50 = a14;
  ObjectType = swift_getObjectType();
  v24 = sub_3E5FC4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a13;
  sub_3E5FB4();
  v29 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v31 = v30;
  (*(v25 + 8))(v27, v24);
  v32 = &v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_shelfUniqueId];
  *v32 = v29;
  v32[1] = v31;
  v33 = &v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_title];
  *v33 = a1;
  v33[1] = a2;
  *&v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_adamID] = a3;
  v34 = &v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_subtitle];
  v35 = v52;
  *v34 = v51;
  v34[1] = v35;
  v36 = &v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelDescription];
  v37 = v54;
  *v36 = v53;
  v36[1] = v37;
  v38 = &v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelTagline];
  v39 = v55;
  v41 = v49;
  v40 = v50;
  *v38 = v56;
  v38[1] = v41;
  *&v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_primaryArtwork] = v40;
  sub_FBD0(v39, &v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundArtwork], &qword_4F1D50);
  v42 = &v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundColor];
  *v42 = v57;
  v43 = v59;
  v42[8] = v58;
  v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_interfaceStyle] = v28;
  v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerType] = v43;
  v44 = &v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerDescription];
  v45 = v61;
  *v44 = v60;
  v44[1] = v45;
  v46 = v64;
  *&v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_banner] = v63;
  sub_FBD0(v46, &v20[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_impressionMetrics], &unk_4E9170);
  v65.receiver = v20;
  v65.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v65, "init");
  sub_FCF8(v46, &unk_4E9170);
  sub_FCF8(v39, &qword_4F1D50);
  return v47;
}

uint64_t ChannelHeader.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v138 = a2;
  v115 = sub_3E5FC4();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v117 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v128 = &v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v8 - 8);
  v116 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v133 = &v100 - v11;
  v12 = sub_3EBF94();
  v134 = *(v12 - 8);
  v135 = v12;
  __chkstk_darwin(v12);
  v127 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v130 = &v100 - v15;
  __chkstk_darwin(v16);
  v18 = &v100 - v17;
  v19 = sub_3EBDF4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v111 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v126 = &v100 - v23;
  __chkstk_darwin(v24);
  v26 = &v100 - v25;
  __chkstk_darwin(v27);
  v29 = &v100 - v28;
  __chkstk_darwin(v30);
  v32 = &v100 - v31;
  v33 = a1;
  sub_3EBE04();
  v112 = sub_3EBDC4();
  v35 = v34;
  v36 = *(v20 + 8);
  v37 = v32;
  v38 = v20 + 8;
  v36(v37, v19);
  if (!v35)
  {
    v45 = sub_3ECEE4();
    sub_35AECC(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v46 = 0x656C746974;
    v47 = v124;
    v46[1] = 0xE500000000000000;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v45);
    swift_willThrow();
    (*(v134 + 8))(v138, v135);
    v36(v33, v19);
    return v45;
  }

  v123 = v35;
  v39 = v36;
  v129 = v38;
  v40 = v19;
  sub_3EBE04();
  v41 = v134 + 16;
  v131 = *(v134 + 16);
  v131(v18, v138, v135);
  v42 = v125;
  v43 = sub_3DC304(v29, v18);
  v132 = v41;
  if (v42)
  {

    v125 = 0;
    v118 = 0;
    v122 = 255;
  }

  else
  {
    v118 = 0;
    v122 = v44;
    v125 = v43;
  }

  sub_3E7784();
  sub_3EBE04();
  v131(v130, v138, v135);
  sub_35AECC(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  sub_3EC574();
  sub_3EBE04();
  sub_35ACD0();
  sub_3EBCC4();
  v39(v26, v19);
  v110 = LOBYTE(v136[0]);
  sub_3EBE04();
  v48 = sub_3EBDC4();
  v50 = v49;
  v39(v26, v19);
  v51 = [objc_opt_self() mainBundle];
  v99._countAndFlagsBits = 0xE000000000000000;
  v139._countAndFlagsBits = 0x5F4C454E4E414843;
  v139._object = 0xED0000454C544954;
  v140.value._countAndFlagsBits = 0;
  v140.value._object = 0;
  v52.super.isa = v51;
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v120 = sub_3E5A74(v139, v140, v52, v141, v99);
  v54 = v53;

  if (v50)
  {
    v136[0] = v48;
    v136[1] = v50;
    sub_138570();

    if (sub_3ED894())
    {
      v121 = sub_3E7D44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_3F5310;
      *(v55 + 32) = v120;
      *(v55 + 40) = v54;
      *(v55 + 48) = v48;
      *(v55 + 56) = v50;
      v136[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
      v136[4] = sub_D74C0();
      v136[0] = v55;
      v120 = sub_3E7CC4();
      v121 = v56;
      __swift_destroy_boxed_opaque_existential_1Tm(v136);

      goto LABEL_11;
    }

    swift_bridgeObjectRelease_n();
  }

  v121 = v54;
LABEL_11:
  sub_3EBE04();
  v109 = sub_3EBDC4();
  v119 = v57;
  v39(v26, v40);
  sub_3EBE04();
  v108 = sub_3EBDC4();
  v59 = v58;
  v39(v26, v40);
  v60 = type metadata accessor for HeaderModel.PrimaryArtwork();
  v61 = v126;
  sub_3EBE04();
  v62 = v127;
  v131(v127, v138, v135);
  v63 = v62;
  v45 = v60;
  v64 = v118;
  v65 = HeaderModel.PrimaryArtwork.__allocating_init(deserializing:using:)(v61, v63);
  if (v64)
  {

    sub_234D4C(v125, v122);
    (*(v134 + 8))(v138, v135);
    v39(v33, v40);
    sub_FCF8(v133, &qword_4F1D50);
  }

  else
  {
    v118 = v65;
    v126 = v59;
    v127 = 0;
    v101 = v33;
    sub_3EBE04();
    v105 = sub_3EBDC4();
    v104 = v66;
    v39(v26, v40);
    sub_3EBE04();
    sub_35AD24();
    sub_3EBCC4();
    v106 = v40;
    v107 = v39;
    v39(v26, v40);
    v103 = LOBYTE(v136[0]);
    type metadata accessor for UpsellBanner();
    sub_3EBE04();
    v68 = v130;
    v67 = v131;
    v69 = v138;
    v70 = v135;
    v131(v130, v138, v135);
    sub_35AECC(&qword_502F38, type metadata accessor for UpsellBanner);
    sub_3EC574();
    v102 = v136[0];
    sub_3EC634();
    sub_3EBE04();
    v67(v68, v69, v70);
    sub_3EC574();
    v71 = v111;
    sub_3EBE04();
    sub_3EBDC4();
    if (v72)
    {
      v73 = v106;
      v74 = v107;
      v75 = v127;
      v76 = sub_3E9494();
      v77 = v124;
      if (v75)
      {

        v78 = sub_3E9484();

        v74(v71, v73);
      }

      else
      {
        v78 = v76;
        v74(v71, v73);
      }
    }

    else
    {
      v107(v71, v106);
      v78 = sub_3E9484();
      v77 = v124;
    }

    v79 = v116;
    sub_FBD0(v133, v116, &qword_4F1D50);
    v80 = v117;
    sub_FBD0(v128, v117, &unk_4E9170);
    v81 = objc_allocWithZone(v77);
    v82 = v113;
    sub_3E5FB4();
    v83 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v85 = v84;
    (*(v114 + 8))(v82, v115);
    v86 = &v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_shelfUniqueId];
    *v86 = v83;
    v86[1] = v85;
    v87 = &v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_title];
    v88 = v123;
    *v87 = v112;
    v87[1] = v88;
    *&v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_adamID] = v78;
    v89 = &v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_subtitle];
    v90 = v121;
    *v89 = v120;
    v89[1] = v90;
    v91 = &v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelDescription];
    v92 = v119;
    *v91 = v109;
    v91[1] = v92;
    v93 = &v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_channelTagline];
    v94 = v126;
    *v93 = v108;
    v93[1] = v94;
    *&v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_primaryArtwork] = v118;
    sub_FBD0(v79, &v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundArtwork], &qword_4F1D50);
    v95 = &v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundColor];
    *v95 = v125;
    v95[8] = v122;
    v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_interfaceStyle] = v110;
    v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerType] = v103;
    v96 = &v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerDescription];
    v97 = v104;
    *v96 = v105;
    v96[1] = v97;
    *&v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_banner] = v102;
    sub_FBD0(v80, &v81[OBJC_IVAR____TtC8ShelfKit13ChannelHeader_impressionMetrics], &unk_4E9170);
    v137.receiver = v81;
    v137.super_class = v77;
    v45 = objc_msgSendSuper2(&v137, "init");
    (*(v134 + 8))(v138, v135);
    v107(v101, v106);
    sub_FCF8(v80, &unk_4E9170);
    sub_FCF8(v79, &qword_4F1D50);
    sub_FCF8(v128, &unk_4E9170);
    sub_FCF8(v133, &qword_4F1D50);
  }

  return v45;
}

uint64_t ChannelHeader.preferredBackgroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_FBD0(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundArtwork, &v9 - v2, &qword_4F1D50);
  v4 = sub_3E7784();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_FCF8(v3, &qword_4F1D50);
  }

  else
  {
    v5 = *(v3 + 7);
    v6 = v3[64];
    sub_1F7418(v5, v3[64]);
    sub_86F48(v3);
    if (v6 != 255)
    {
      v7 = sub_3E9454();
      sub_234D4C(v5, v6);
      return v7;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundColor + 8) == 255)
  {
    return 0;
  }

  else
  {
    return sub_3E9454();
  }
}

BOOL ChannelHeader.hasBackgroundArtwork.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  sub_FBD0(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_backgroundArtwork, &v7 - v2, &qword_4F1D50);
  v4 = sub_3E7784();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_FCF8(v3, &qword_4F1D50);
  return v5;
}

uint64_t ChannelHeader.buttonCaptionLabelText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_banner);
  if (!v1)
  {
    goto LABEL_6;
  }

  if (*(v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction))
  {
    v2 = (v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitle);
LABEL_7:
    v9 = *v2;

    return v9;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName + 8);
  if (!v3)
  {
LABEL_6:
    v2 = (v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_offerDescription);
    goto LABEL_7;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_appName);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v11._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x800000000042E710;
  v12._countAndFlagsBits = 0xD000000000000026;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v7.super.isa = v6;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_3E5A74(v12, v13, v7, v14, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_3F5630;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_4F39C();
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  v9 = sub_3ED214();

  return v9;
}

uint64_t sub_35AA00@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ChannelHeader.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_35AAA4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_shelfUniqueId);

  return v1;
}

void *ChannelHeader.impressionableActions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit13ChannelHeader_banner);
  if (v1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_action);
    v2 = *(v1 + OBJC_IVAR____TtC8ShelfKit12UpsellBanner_subtitleAction);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  v3 = 0;
  v8 = v2;
  while (v3 != 2)
  {
    if (v6[v3++ + 4])
    {

      sub_3ED564();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_3ED5A4();
      }

      sub_3ED604();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF4C8);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t _s8ShelfKit16ChannelOfferTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4B2C40;
  v6._object = a2;
  v4 = sub_3EE624(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_35ACD0()
{
  result = qword_502F28;
  if (!qword_502F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502F28);
  }

  return result;
}

unint64_t sub_35AD24()
{
  result = qword_502F30;
  if (!qword_502F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502F30);
  }

  return result;
}

unint64_t sub_35AD7C()
{
  result = qword_502F40;
  if (!qword_502F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502F40);
  }

  return result;
}

uint64_t sub_35ADD0(uint64_t a1)
{
  result = sub_35AECC(&qword_502F48, type metadata accessor for ChannelHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ChannelHeader()
{
  result = qword_502F78;
  if (!qword_502F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_35AE74(uint64_t a1)
{
  result = sub_35AECC(&qword_4F92F0, type metadata accessor for ChannelHeader);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_35AECC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_35AF2C()
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Showcase.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Podcast.author.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t ChannelSubscriptionOffer.legalTexts.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[12];
  v13 = v1[11];
  v2 = v13;
  v14 = v3;
  v15 = v1[13];
  v4 = v15;
  v5 = v1[8];
  v10[0] = v1[7];
  v10[1] = v5;
  v6 = v1[10];
  v11 = v1[9];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_35B218(v10, &v9);
}

uint64_t ChannelSubscriptionOffer.offerName.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t ChannelSubscriptionOffer.valueProposition.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[31];
  v3 = v1[32];
  v4 = v1[33];
  *a1 = v1[30];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t ChannelSubscriptionOffer.Kind.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_4B2CC0;
  v8._object = a2;
  v6 = sub_3EE624(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_35B338()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

Swift::Int sub_35B3AC()
{
  sub_3EE954();
  sub_3ED394();
  return sub_3EE9A4();
}

uint64_t sub_35B400@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4B2CF8;
  v7._object = v3;
  v5 = sub_3EE624(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t ChannelSubscriptionOffer.LegalTexts.benefit.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

__n128 ChannelSubscriptionOffer.init(deserializing:using:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v138 = a2;
  v121 = a3;
  v4 = sub_3EBF94();
  v5 = *(v4 - 8);
  v136 = v4;
  v137 = v5;
  __chkstk_darwin(v4);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = &v108 - v9;
  v10 = sub_3EBDF4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v123 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v122 = &v108 - v14;
  __chkstk_darwin(v15);
  v125 = &v108 - v16;
  __chkstk_darwin(v17);
  v124 = &v108 - v18;
  __chkstk_darwin(v19);
  v127 = &v108 - v20;
  __chkstk_darwin(v21);
  v128 = &v108 - v22;
  __chkstk_darwin(v23);
  v130 = &v108 - v24;
  __chkstk_darwin(v25);
  v129 = &v108 - v26;
  __chkstk_darwin(v27);
  v131 = &v108 - v28;
  __chkstk_darwin(v29);
  v133 = &v108 - v30;
  __chkstk_darwin(v31);
  v132 = &v108 - v32;
  __chkstk_darwin(v33);
  v35 = &v108 - v34;
  __chkstk_darwin(v36);
  v38 = &v108 - v37;
  __chkstk_darwin(v39);
  v41 = &v108 - v40;
  v151 = a1;
  sub_3EBE04();
  v120 = sub_3EBDC4();
  v43 = v42;
  v46 = *(v11 + 8);
  v44 = (v11 + 8);
  v45 = v46;
  (v46)(v41, v10);
  if (!v43)
  {
    v50 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v52 = v51;
    *v51 = 25705;
    v53 = 0xE200000000000000;
LABEL_5:
    v51[1] = v53;
LABEL_6:
    v51[2] = &type metadata for ChannelSubscriptionOffer;
    (*(*(v50 - 8) + 104))(v52, enum case for JSONError.missingProperty(_:), v50);
    swift_willThrow();
    (*(v137 + 8))(v138, v136);
    v49 = v151;
    goto LABEL_7;
  }

  v119 = v7;
  v134 = v43;
  v47 = v151;
  v48 = v135;
  sub_35C448(1684957547, 0xE400000000000000, &type metadata for ChannelSubscriptionOffer);
  if (v48)
  {

    (*(v137 + 8))(v138, v136);
    v49 = v47;
LABEL_7:
    (v45)(v49, v10);
    return result;
  }

  v118 = 0;
  sub_3EBE04();
  v55 = sub_3EBDC4();
  v57 = v56;
  (v45)(v38, v10);
  if (!v57)
  {

    v50 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v52 = v51;
    *v51 = 0x656C746974;
    v53 = 0xE500000000000000;
    goto LABEL_5;
  }

  v115 = v55;
  v135 = v57;
  sub_3EBE04();
  v114 = sub_3EBDC4();
  v59 = v58;
  (v45)(v35, v10);
  if (!v59)
  {

    v50 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v52 = v51;
    *v51 = 0x6D61726150797562;
    v51[1] = 0xE900000000000073;
    goto LABEL_6;
  }

  v116 = v59;
  v60 = v132;
  sub_3EBE04();
  v113 = sub_3EBDC4();
  v117 = v61;
  (v45)(v60, v10);
  v62 = v133;
  sub_3EBE04();
  v132 = sub_3EBDC4();
  v64 = v63;
  (v45)(v62, v10);
  if (!v64)
  {

    v71 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    *v72 = 0x6C69626967696C65;
    v72[1] = 0xEF65707954797469;
    v72[2] = &type metadata for ChannelSubscriptionOffer;
    (*(*(v71 - 8) + 104))(v72, enum case for JSONError.missingProperty(_:), v71);
    swift_willThrow();
    (*(v137 + 8))(v138, v136);
    (v45)(v151, v10);
    return result;
  }

  v133 = v64;
  v65 = v131;
  sub_3EBE04();
  v66 = sub_3EBD24();
  (v45)(v65, v10);
  v67 = v44;
  if (v66 == 2)
  {

    v68 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v70 = v69;
    *v69 = 0x6169725465657266;
    v69[1] = 0xE90000000000006CLL;
LABEL_14:
    v69[2] = &type metadata for ChannelSubscriptionOffer;
    (*(*(v68 - 8) + 104))(v70, enum case for JSONError.missingProperty(_:), v68);
    swift_willThrow();
    (*(v137 + 8))(v138, v136);
    (v45)(v151, v10);
    return result;
  }

  LODWORD(v131) = v66;
  v73 = v129;
  sub_3EBE04();
  v112 = sub_3EBDC4();
  v75 = v74;
  (v45)(v73, v10);
  v76 = v130;
  sub_3EBE04();
  LODWORD(v129) = sub_3EBD24();
  v77 = v129;
  (v45)(v76, v10);
  if (v77 == 2)
  {

    v78 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    *v79 = 0x796C696D61467369;
    v79[1] = 0xE800000000000000;
    v79[2] = &type metadata for ChannelSubscriptionOffer;
    (*(*(v78 - 8) + 104))(v79, enum case for JSONError.missingProperty(_:), v78);
    swift_willThrow();
    (*(v137 + 8))(v138, v136);
    (v45)(v151, v10);
    return result;
  }

  v130 = v75;
  v80 = v128;
  sub_3EBE04();
  v81 = sub_3EBD24();
  (v45)(v80, v10);
  if (v81 == 2)
  {

    v68 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v70 = v69;
    *v69 = 0x656572467369;
    v69[1] = 0xE600000000000000;
    goto LABEL_14;
  }

  v111 = v81;
  v82 = v127;
  sub_3EBE04();
  v110 = sub_3EBD24();
  v83 = v110;
  (v45)(v82, v10);
  if (v83 == 2)
  {

    v68 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v70 = v69;
    *v69 = 0x6E65647574537369;
    v69[1] = 0xE900000000000074;
    goto LABEL_14;
  }

  v84 = v124;
  sub_3EBE04();
  v85 = sub_3EBD24();
  v128 = v10;
  (v45)(v84, v10);
  v86 = v125;
  sub_3EBE04();
  v87 = v137;
  v127 = v45;
  v88 = *(v137 + 16);
  v89 = v126;
  v90 = v136;
  v88(v126, v138, v136);
  v91 = v118;
  ChannelSubscriptionOffer.LegalTexts.init(deserializing:using:)(v86, v89, v149);
  if (v91)
  {

    (*(v87 + 8))(v138, v90);
    (v127)(v151, v128);
  }

  else
  {
    LODWORD(v124) = v85;
    v118 = 0;
    v92 = v67;
    v146 = v149[4];
    v147 = v149[5];
    v148 = v149[6];
    v142 = v149[0];
    v143 = v149[1];
    v144 = v149[2];
    v145 = v149[3];
    v93 = v122;
    sub_3EBE04();
    v109 = sub_3EBDC4();
    v125 = v92;
    v126 = v94;
    v95 = v127;
    (v127)(v93, v128);
    v96 = v123;
    sub_3EBE04();
    v97 = v119;
    v98 = v138;
    v88(v119, v138, v90);
    v99 = v118;
    ChannelSubscriptionOffer.ValueProposition.init(deserializing:using:)(v96, v97, &v139);
    if (v99)
    {

      sub_35CD68(&v142);

      (*(v137 + 8))(v98, v90);
      v95(v151, v128);
    }

    else
    {
      (*(v137 + 8))(v98, v90);
      v95(v151, v128);
      *&v150[52] = v145;
      *&v150[68] = v146;
      *&v150[84] = v147;
      *&v150[100] = v148;
      *&v150[4] = v142;
      *&v150[20] = v143;
      result = v139;
      v100 = v140;
      v101 = v141;
      v102 = v131 & 1;
      v103 = v129 & 1;
      v104 = v111 & 1;
      v105 = v110 & 1;
      *&v150[36] = v144;
      v106 = v121;
      *v121 = v120;
      v106[1] = v134;
      v106[2] = v115;
      v106[3] = v135;
      v106[4] = v114;
      v106[5] = v116;
      v106[6] = v113;
      v106[7] = v117;
      v106[8] = v132;
      v106[9] = v133;
      *(v106 + 80) = v102;
      v106[11] = v112;
      v106[12] = v130;
      *(v106 + 104) = v103;
      *(v106 + 105) = v104;
      *(v106 + 106) = v105;
      *(v106 + 107) = v124;
      *(v106 + 156) = *&v150[48];
      *(v106 + 140) = *&v150[32];
      *(v106 + 124) = *&v150[16];
      *(v106 + 108) = *v150;
      *(v106 + 55) = *&v150[112];
      *(v106 + 204) = *&v150[96];
      *(v106 + 188) = *&v150[80];
      *(v106 + 172) = *&v150[64];
      v107 = v126;
      v106[28] = v109;
      v106[29] = v107;
      *(v106 + 15) = result;
      v106[32] = v100;
      v106[33] = v101;
    }
  }

  return result;
}

uint64_t sub_35C448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3EBDF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EBE04();
  v10 = sub_3EBDC4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (!v12)
  {
    v17 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    *v18 = a1;
    v18[1] = a2;
    v18[2] = a3;
    (*(*(v17 - 8) + 104))(v18, enum case for JSONError.missingProperty(_:), v17);

    return swift_willThrow();
  }

  v13._rawValue = &off_4AFD20;
  v21._countAndFlagsBits = v10;
  v21._object = v12;
  v14 = sub_3EE624(v13, v21);

  if (v14)
  {
    v15 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    *v16 = v10;
    v16[1] = v12;
    v16[2] = &type metadata for ChannelSubscriptionOffer.Kind;
    (*(*(v15 - 8) + 104))(v16, enum case for JSONError.unknownCase(_:), v15);
    return swift_willThrow();
  }
}

uint64_t ChannelSubscriptionOffer.LegalTexts.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v64 = a2;
  v5 = sub_3EBDF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v51 - v9;
  __chkstk_darwin(v10);
  v57 = &v51 - v11;
  __chkstk_darwin(v12);
  v52 = &v51 - v13;
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  __chkstk_darwin(v20);
  v22 = &v51 - v21;
  sub_3EBE04();
  v23 = sub_3EBDC4();
  v61 = v24;
  v62 = v23;
  v25 = *(v6 + 8);
  v25(v22, v5);
  sub_3EBE04();
  v26 = sub_3EBDC4();
  v58 = v27;
  v59 = v26;
  v25(v19, v5);
  v28 = a1;
  sub_3EBE04();
  v29 = sub_3EBDC4();
  v55 = v30;
  v56 = v29;
  v25(v16, v5);
  v31 = v52;
  sub_3EBE04();
  v32 = sub_3EBDC4();
  v53 = v33;
  v54 = v32;
  v25(v31, v5);
  v34 = v57;
  sub_3EBE04();
  v35 = sub_3EBDC4();
  v51 = v36;
  v52 = v35;
  v25(v34, v5);
  v37 = v60;
  sub_3EBE04();
  v57 = sub_3EBDC4();
  v39 = v38;
  v25(v37, v5);
  v40 = v63;
  sub_3EBE04();
  v41 = sub_3EBDC4();
  v43 = v42;
  v44 = sub_3EBF94();
  (*(*(v44 - 8) + 8))(v64, v44);
  v25(v28, v5);
  result = (v25)(v40, v5);
  v46 = v61;
  *a3 = v62;
  a3[1] = v46;
  v47 = v58;
  a3[2] = v59;
  a3[3] = v47;
  v48 = v55;
  a3[4] = v56;
  a3[5] = v48;
  v49 = v53;
  a3[6] = v54;
  a3[7] = v49;
  v50 = v51;
  a3[8] = v52;
  a3[9] = v50;
  a3[10] = v57;
  a3[11] = v39;
  a3[12] = v41;
  a3[13] = v43;
  return result;
}

uint64_t ChannelSubscriptionOffer.ValueProposition.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v30 = a2;
  v4 = 0x6563697270;
  v5 = sub_3EBDF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = 0xE500000000000000;
  sub_3EBE04();
  v13 = sub_3EBDC4();
  v15 = v14;
  v16 = v11;
  v17 = *(v6 + 8);
  v17(v16, v5);
  if (v15)
  {
    v27 = v13;
    v12 = 0xEF79616C70736944;
    v4 = 0x726F466563697270;
    sub_3EBE04();
    v26 = sub_3EBDC4();
    v19 = v18;
    v17(v8, v5);
    if (v19)
    {
      v20 = sub_3EBF94();
      (*(*(v20 - 8) + 8))(v30, v20);
      result = (v17)(a1, v5);
      v22 = v28;
      *v28 = v27;
      v22[1] = v15;
      v22[2] = v26;
      v22[3] = v19;
      return result;
    }

    v29 = v17;
  }

  else
  {
    v29 = v17;
  }

  v23 = sub_3ECEE4();
  sub_4D38C();
  swift_allocError();
  *v24 = v4;
  v24[1] = v12;
  v24[2] = &type metadata for ChannelSubscriptionOffer.ValueProposition;
  (*(*(v23 - 8) + 104))(v24, enum case for JSONError.missingProperty(_:), v23);
  swift_willThrow();
  v25 = sub_3EBF94();
  (*(*(v25 - 8) + 8))(v30, v25);
  return v29(a1, v5);
}

unint64_t sub_35CD9C()
{
  result = qword_502F88;
  if (!qword_502F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502F88);
  }

  return result;
}

uint64_t sub_35CE40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_35CE88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_35CF50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_35CFAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_35D040@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  v4 = swift_allocObject();
  *a2 = v4;

  return sub_BD054(v2, v4 + 16);
}

uint64_t ClickableModel<>.clickSender.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  v5 = *(*(a1 - 8) + 16);

  return v5(boxed_opaque_existential_0Tm, v2, a1);
}

uint64_t sub_35D148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return sub_35D224(v2, boxed_opaque_existential_0Tm);
}

uint64_t sub_35D180()
{
  sub_35D1CC();

  return _s8ShelfKit14ClickableModelPAA9JetEngine09ComponentD0RzrlE11clickActionAD0iD0_pSgvg_0();
}

unint64_t sub_35D1CC()
{
  result = qword_4F1088;
  if (!qword_4F1088)
  {
    type metadata accessor for ShowLockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1088);
  }

  return result;
}

uint64_t sub_35D224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryListItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_35D288()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t DummyLibraryActionController.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 4;
  *(result + 24) = 0;
  return result;
}

uint64_t DummyLibraryActionController.init()()
{
  result = v0;
  *(v0 + 16) = 4;
  *(v0 + 24) = 0;
  return result;
}

uint64_t DummyLibraryActionController.pubDateLimitPublisher(forListType:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502F90);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  type metadata accessor for MTEpisodePubDateLimit(0);
  sub_3E9E04();
  sub_35D5A4(&qword_502F98, &qword_502F90);
  v4 = sub_3E9F94();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_35D484(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_3E9E04();
  sub_35D5A4(a5, a2);
  v11 = sub_3E9F94();
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_35D5A4(unint64_t *a1, uint64_t *a2)
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

uint64_t Review.isExpanded.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t DummyLibraryActionController.removeEpisodesFromBookmarks(episodeOffers:showHUDConfirmation:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3)
  {
    return a3(0);
  }

  return result;
}

uint64_t DummyLibraryActionController.mark(episodeUUIDS:as:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3)
  {
    return a3();
  }

  return result;
}

uint64_t DummyLibraryActionController.transcriptReportAConcern(episode:completion:)(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502FC8);
  __chkstk_darwin(v3);
  v5 = (&v7 - v4);
  sub_35DD3C();
  *v5 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a2(v5);
  return sub_35DD90(v5);
}

uint64_t sub_35D8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t *a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_3E9E04();
  sub_35D5A4(a7, a4);
  v13 = sub_3E9F94();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_35DA00()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_35DA84()
{
  v0 = sub_3E5FC4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3EC1F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  type metadata accessor for SheetAction();
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC8ShelfKit11SheetAction_actions) = _swiftEmptyArrayStorage;
  v12 = (v11 + OBJC_IVAR____TtC8ShelfKit11SheetAction_sheetTitle);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v11 + OBJC_IVAR____TtC8ShelfKit11SheetAction_message);
  *v13 = 0;
  v13[1] = 0;
  *(v11 + OBJC_IVAR____TtC8ShelfKit11SheetAction_isCancelable) = 1;
  v14 = sub_3EC634();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v15 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v17 = v16;
  (*(v1 + 8))(v3, v0);
  *(v11 + 16) = v15;
  *(v11 + 24) = v17;
  *(v11 + 32) = xmmword_3F7510;
  *(v11 + 48) = 32;
  (*(v5 + 32))(v11 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v7, v4);
  sub_14A10(v10, v11 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v11;
}

unint64_t sub_35DD3C()
{
  result = qword_502FD0;
  if (!qword_502FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_502FD0);
  }

  return result;
}

uint64_t sub_35DD90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_502FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_35DE5C()
{
  result = qword_503080;
  if (!qword_503080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_503080);
  }

  return result;
}

void *EditorialCard.__allocating_init(caption:title:subtitle:artwork:clickAction:impressionMetrics:shelfUniqueId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = a5;
  v19[9] = a6;
  sub_FACC(a7, v19 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_artwork, &qword_4F1D50);
  v20 = v19 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_clickAction;
  v21 = *(a8 + 16);
  *v20 = *a8;
  *(v20 + 1) = v21;
  *(v20 + 4) = *(a8 + 32);
  sub_FACC(a9, v19 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_impressionMetrics, &unk_4E9170);
  v19[2] = a10;
  v19[3] = a11;
  return v19;
}

void *EditorialCard.init(caption:title:subtitle:artwork:clickAction:impressionMetrics:shelfUniqueId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = a5;
  v11[9] = a6;
  sub_FACC(a7, v11 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_artwork, &qword_4F1D50);
  v13 = v11 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_clickAction;
  v14 = *(a8 + 16);
  *v13 = *a8;
  *(v13 + 1) = v14;
  *(v13 + 4) = *(a8 + 32);
  sub_FACC(a9, v11 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_impressionMetrics, &unk_4E9170);
  v11[2] = a10;
  v11[3] = a11;
  return v11;
}

uint64_t EditorialCard.deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_artwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_clickAction, &qword_4EDE00);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_impressionMetrics, &unk_4E9170);
  return v0;
}

uint64_t EditorialCard.__deallocating_deinit()
{

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_artwork, &qword_4F1D50);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_clickAction, &qword_4EDE00);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_impressionMetrics, &unk_4E9170);

  return swift_deallocClassInstance();
}

void *sub_35E2A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_35E4B4(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t EditorialCard.displayCaption.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503088);
  __chkstk_darwin(v1 - 8);
  v3 = v8 - v2;
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v4)
  {
    v8[0] = *(v0 + 32);
    v8[1] = v4;

    sub_3E6034();
    v6 = sub_3E6044();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_68DC4();
    v5 = sub_3EE144();
    sub_FCF8(v3, &qword_503088);
  }

  return v5;
}

void *sub_35E4B4(char *a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_3E5FC4();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v65 = &v49 - v6;
  v7 = sub_3EBF94();
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  __chkstk_darwin(v7);
  v66 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v10 - 8);
  v69 = &v49 - v11;
  v12 = sub_3EBDF4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  sub_3EBE04();
  v25 = sub_3EBDC4();
  v59 = v26;
  v60 = v25;
  v27 = *(v13 + 8);
  v27(v24, v12);
  sub_3EBE04();
  v28 = sub_3EBDC4();
  v56 = v29;
  v57 = v28;
  v27(v21, v12);
  sub_3EBE04();
  v30 = sub_3EBDC4();
  v54 = v31;
  v55 = v30;
  v27(v18, v12);
  sub_3E7784();
  sub_3EBE04();
  v32 = v58;
  v50 = *(v68 + 16);
  v50(v66, v58, v67);
  sub_35ED88(&qword_4EECC8, &type metadata accessor for ArtworkModel);
  sub_3EC574();
  v33 = a1;
  sub_3EBE04();
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v61 = v12;
  v27(v15, v12);
  v53 = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  if (Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0)
  {
    v52 = type metadata accessor for Action();
    v51 = sub_35ED88(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  sub_3EC634();
  sub_3EBE04();
  v35 = v32;
  v36 = v67;
  v50(v66, v32, v67);
  v37 = v65;
  sub_3EC574();
  v38 = v62;
  sub_3E5FB4();
  v39 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v41 = v40;
  (*(v68 + 8))(v35, v36);
  v27(v33, v61);
  (*(v63 + 8))(v38, v64);
  type metadata accessor for EditorialCard();
  v42 = swift_allocObject();
  v43 = v59;
  v42[4] = v60;
  v42[5] = v43;
  v44 = v56;
  v42[6] = v57;
  v42[7] = v44;
  v45 = v54;
  v42[8] = v55;
  v42[9] = v45;
  sub_FACC(v69, v42 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_artwork, &qword_4F1D50);
  v46 = (v42 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_clickAction);
  v47 = v52;
  *v46 = v53;
  v46[1] = 0;
  v46[2] = 0;
  v46[3] = v47;
  v46[4] = v51;
  sub_FACC(v37, v42 + OBJC_IVAR____TtC8ShelfKit13EditorialCard_impressionMetrics, &unk_4E9170);
  v42[2] = v39;
  v42[3] = v41;
  return v42;
}

uint64_t sub_35EB00(uint64_t a1)
{
  result = sub_35ED88(&qword_503090, type metadata accessor for EditorialCard);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for EditorialCard()
{
  result = qword_5030C8;
  if (!qword_5030C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_35EBA4(uint64_t a1)
{
  result = sub_35ED88(&qword_503098, type metadata accessor for EditorialCard);
  *(a1 + 8) = result;
  return result;
}

void sub_35EC04()
{
  sub_95A68(319, &qword_4EB1A8, &type metadata accessor for ArtworkModel);
  if (v0 <= 0x3F)
  {
    sub_95A68(319, &qword_4EB028, &type metadata accessor for ImpressionMetrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_35ED88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EmptyModel.init(id:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for EmptyModel() + 20);

  return sub_14A10(a3, v5);
}

uint64_t type metadata accessor for EmptyModel()
{
  result = qword_5031E8;
  if (!qword_5031E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmptyModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EmptyModel() + 20);

  return sub_7EA24(v3, a1);
}

uint64_t EmptyModel.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_3EBF94();
  (*(*(v6 - 8) + 8))(a2, v6);
  v7 = sub_3EBDF4();
  (*(*(v7 - 8) + 8))(a1, v7);
  v8 = *(type metadata accessor for EmptyModel() + 20);
  v9 = sub_3EC634();
  result = (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  *a3 = 0x676E6964616F6CLL;
  *(a3 + 1) = 0xE700000000000000;
  return result;
}

unint64_t sub_35EFB8(uint64_t a1)
{
  result = sub_35EFE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_35EFE0()
{
  result = qword_503188;
  if (!qword_503188)
  {
    type metadata accessor for EmptyModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_503188);
  }

  return result;
}

uint64_t sub_35F03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_3EBF94();
  (*(*(v8 - 8) + 8))(a2, v8);
  v9 = sub_3EBDF4();
  (*(*(v9 - 8) + 8))(a1, v9);
  v10 = *(a3 + 20);
  v11 = sub_3EC634();
  result = (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  *a4 = 0x676E6964616F6CLL;
  *(a4 + 1) = 0xE700000000000000;
  return result;
}

uint64_t sub_35F160(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_35F230(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t EpisodeListType.context(with:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 64);
  if (v4 <= 0xA)
  {
    if (((1 << v4) & 0x3BC) != 0)
    {
LABEL_3:
      sub_FBD0(a1, a2, &qword_4EF428);
      v5 = &enum case for EyebrowBuilder.ListContext.show(_:);
      goto LABEL_11;
    }

    if (v4 == 6)
    {
      goto LABEL_5;
    }

    if (v4 == 10)
    {
      v6 = v2[5];
      v7 = *v2;
      v8 = v2[1];
      v9 = v2[6] | v2[7];
      v10 = v2[4] | v2[3] | v2[2];
      if (v9 | *v2 | v6 | v10 | v8)
      {
        v11 = v9 | v6 | v10 | v8;
        if (v7 != 1 || v11)
        {
          if (v7 == 2 && !v11)
          {
LABEL_5:
            *a2 = 0;
            v5 = &enum case for EyebrowBuilder.ListContext.listenNow(_:);
            goto LABEL_11;
          }

          if ((v7 - 3) > 3 || v11)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

  v5 = &enum case for EyebrowBuilder.ListContext.mixedShows(_:);
LABEL_11:
  v12 = *v5;
  v13 = sub_3E7CB4();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

uint64_t Episode.__allocating_init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:adamId:channelAdamId:channelName:artwork:showUberArtwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showDisplayType:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, uint64_t a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  v52 = swift_allocObject();
  v53 = (v52 + OBJC_IVAR____TtC8ShelfKit7Episode_title);
  *v53 = a1;
  v53[1] = a2;
  v54 = (v52 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);
  *v54 = a3;
  v54[1] = a4;
  *(v52 + 16) = a12;
  *(v52 + 24) = a13 & 1;
  *(v52 + 32) = a14;
  *(v52 + 40) = a15 & 1;
  *(v52 + 48) = a16;
  *(v52 + 56) = a17;
  sub_FACC(a18, v52 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &qword_4F1D50);
  sub_FACC(a19, v52 + OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork, &qword_4F1D50);
  sub_FACC(a20, v52 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, &qword_4F1D50);
  *(v52 + OBJC_IVAR____TtC8ShelfKit7Episode_summary) = a23;
  v55 = (v52 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
  *v55 = a21;
  v55[1] = a22;
  sub_FACC(a24, v52 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, &qword_4EF460);
  sub_FACC(a25, v52 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, &unk_4E9EE0);
  sub_FACC(a26, v52 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, &unk_4E9EE0);
  *(v52 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType) = a27;
  *(v52 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit) = a28;
  v56 = (v52 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);
  *v56 = a29;
  v56[1] = a30;
  v57 = v52 + OBJC_IVAR____TtC8ShelfKit7Episode_duration;
  *v57 = a31;
  *(v57 + 8) = a32 & 1;
  v58 = v52 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber;
  *v58 = a33;
  *(v58 + 8) = a34 & 1;
  v59 = v52 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber;
  *v59 = a35;
  *(v59 + 8) = a36 & 1;
  *(v52 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType) = a37;
  v60 = (v52 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  *v60 = a38;
  v60[1] = a39;
  *(v52 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType) = a40;
  *(v52 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial) = a41;
  v61 = v52 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting;
  *v61 = a42;
  *(v61 + 8) = a43 & 1;
  *(v52 + 64) = a5;
  *(v52 + 72) = a6;
  *(v52 + 80) = a7;
  *(v52 + 88) = a8;
  *(v52 + 96) = a10;
  *(v52 + 104) = a11 & 1;
  sub_FACC(a44, v52 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, &qword_4EF470);
  *(v52 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState) = a45;
  *(v52 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion) = a46;
  v62 = (v52 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  *v62 = a47;
  v62[1] = a48;
  v63 = v52 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId;
  *v63 = a49;
  *(v63 + 8) = a50 & 1;
  *(v52 + OBJC_IVAR____TtC8ShelfKit7Episode_upNextScore) = a9;
  return v52;
}

uint64_t Episode.init(title:numberedTitle:uuid:podcastUuid:podcastAdamId:adamId:channelAdamId:channelName:artwork:showUberArtwork:episodeArtwork:author:summary:releaseDate:streamUrl:assetUrl:mediaType:isExplicit:guid:duration:seasonNumber:episodeNumber:episodeType:showTitle:showDisplayType:showTypeIsSerial:showTypeSetting:listenNowReason:episodeEntitlementState:hasFreeVersion:subscriptionName:storeTrackId:upNextScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, uint64_t a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  v52 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_title);
  *v52 = a1;
  v52[1] = a2;
  v53 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);
  *v53 = a3;
  v53[1] = a4;
  *(v50 + 16) = a12;
  *(v50 + 24) = a13 & 1;
  *(v50 + 32) = a14;
  *(v50 + 40) = a15 & 1;
  *(v50 + 48) = a16;
  *(v50 + 56) = a17;
  sub_FACC(a18, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &qword_4F1D50);
  sub_FACC(a19, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork, &qword_4F1D50);
  sub_FACC(a20, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, &qword_4F1D50);
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_summary) = a23;
  v54 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
  *v54 = a21;
  v54[1] = a22;
  sub_FACC(a24, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, &qword_4EF460);
  sub_FACC(a25, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, &unk_4E9EE0);
  sub_FACC(a26, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, &unk_4E9EE0);
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType) = a27;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit) = a28;
  v55 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);
  *v55 = a29;
  v55[1] = a30;
  v56 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_duration;
  *v56 = a31;
  *(v56 + 8) = a32 & 1;
  v57 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber;
  *v57 = a33;
  *(v57 + 8) = a34 & 1;
  v58 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber;
  *v58 = a35;
  *(v58 + 8) = a36 & 1;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType) = a37;
  v59 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  *v59 = a38;
  v59[1] = a39;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType) = a40;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial) = a41;
  v60 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting;
  *v60 = a42;
  *(v60 + 8) = a43 & 1;
  *(v50 + 64) = a5;
  *(v50 + 72) = a6;
  *(v50 + 80) = a7;
  *(v50 + 88) = a8;
  *(v50 + 96) = a10;
  *(v50 + 104) = a11 & 1;
  sub_FACC(a44, v50 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, &qword_4EF470);
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState) = a45;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion) = a46;
  v61 = (v50 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  *v61 = a47;
  v61[1] = a48;
  v62 = v50 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId;
  *v62 = a49;
  *(v62 + 8) = a50 & 1;
  *(v50 + OBJC_IVAR____TtC8ShelfKit7Episode_upNextScore) = a9;
  return v50;
}

uint64_t sub_35FC98(uint64_t a1)
{
  v91 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v2 - 8);
  v98 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v6;
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  v78 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v76 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  v22 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_title);
  v89 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_title + 8);
  v90 = v22;
  v23 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);
  v87 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle + 8);
  v88 = v23;
  v24 = *(v1 + 64);
  v96 = *(v1 + 72);
  v97 = v24;
  v25 = *(v1 + 80);
  v95 = *(v1 + 88);
  v92 = *(v1 + 96);
  v93 = v25;
  v94 = *(v1 + 104);
  v84 = *(v1 + 16);
  v83 = *(v1 + 24);
  v82 = *(v1 + 32);
  v81 = *(v1 + 40);
  v26 = *(v1 + 48);
  v79 = *(v1 + 56);
  v80 = v26;
  sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &v54 - v20, &qword_4F1D50);
  sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork, v18, &qword_4F1D50);
  sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, v15, &qword_4F1D50);
  v27 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
  v85 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_author + 8);
  v86 = v27;
  v69 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_summary);
  sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, v12, &qword_4EF460);
  sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, v9, &unk_4E9EE0);
  sub_FBD0(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, v6, &unk_4E9EE0);
  v75 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType);
  v74 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit);
  v28 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_guid + 8);
  v73 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);
  v72 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_duration);
  v71 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_duration + 8);
  v68 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber);
  v67 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber + 8);
  v64 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber);
  v63 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber + 8);
  v60 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType);
  v59 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType);
  v58 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial);
  v29 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle + 8);
  v55 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  v57 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting);
  v56 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting + 8);
  sub_FBD0(v91, v98, &qword_4EF470);
  v91 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState);
  v70 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion);
  v30 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName + 8);
  v66 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  v65 = v30;
  v62 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId);
  v61 = *(v1 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId + 8);
  type metadata accessor for Episode();
  v31 = swift_allocObject();
  v32 = (v31 + OBJC_IVAR____TtC8ShelfKit7Episode_title);
  v33 = v89;
  *v32 = v90;
  v32[1] = v33;
  v34 = (v31 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);
  v35 = v87;
  *v34 = v88;
  v34[1] = v35;
  *(v31 + 16) = v84;
  *(v31 + 24) = v83;
  *(v31 + 32) = v82;
  *(v31 + 40) = v81;
  v36 = v79;
  *(v31 + 48) = v80;
  *(v31 + 56) = v36;
  sub_FACC(v21, v31 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, &qword_4F1D50);
  sub_FACC(v18, v31 + OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork, &qword_4F1D50);
  sub_FACC(v15, v31 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, &qword_4F1D50);
  v37 = v69;
  *(v31 + OBJC_IVAR____TtC8ShelfKit7Episode_summary) = v69;
  v38 = (v31 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
  v39 = v85;
  *v38 = v86;
  v38[1] = v39;
  sub_FACC(v76, v31 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, &qword_4EF460);
  sub_FACC(v78, v31 + OBJC_IVAR____TtC8ShelfKit7Episode_streamUrl, &unk_4E9EE0);
  sub_FACC(v77, v31 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, &unk_4E9EE0);
  *(v31 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType) = v75;
  *(v31 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit) = v74;
  v40 = (v31 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);
  *v40 = v73;
  v40[1] = v28;
  v41 = v31 + OBJC_IVAR____TtC8ShelfKit7Episode_duration;
  *v41 = v72;
  *(v41 + 8) = v71;
  v42 = v31 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber;
  *v42 = v68;
  *(v42 + 8) = v67;
  v43 = v31 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber;
  *v43 = v64;
  *(v43 + 8) = v63;
  *(v31 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType) = v60;
  v44 = (v31 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  *v44 = v55;
  v44[1] = v29;
  *(v31 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType) = v59;
  *(v31 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial) = v58;
  v45 = v31 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeSetting;
  *v45 = v57;
  *(v45 + 8) = v56;
  v47 = v92;
  v46 = v93;
  v48 = v96;
  *(v31 + 64) = v97;
  *(v31 + 72) = v48;
  *(v31 + 80) = v46;
  *(v31 + 88) = v95;
  *(v31 + 96) = v47;
  *(v31 + 104) = v94;
  sub_FACC(v98, v31 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, &qword_4EF470);
  *(v31 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState) = v91;
  *(v31 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion) = v70;
  v49 = (v31 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  v50 = v65;
  *v49 = v66;
  v49[1] = v50;
  v51 = v31 + OBJC_IVAR____TtC8ShelfKit7Episode_storeTrackId;
  *v51 = v62;
  *(v51 + 8) = v61;
  *(v31 + OBJC_IVAR____TtC8ShelfKit7Episode_upNextScore) = 0;

  v52 = v37;

  return v31;
}

uint64_t type metadata accessor for Episode()
{
  result = qword_503250;
  if (!qword_503250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Episode.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_title);

  return v1;
}

uint64_t Episode.numberedTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle);

  return v1;
}

void *Episode.summary.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_summary);
  v2 = v1;
  return v1;
}

uint64_t Episode.guid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_guid);

  return v1;
}

uint64_t Episode.author.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_author);

  return v1;
}

uint64_t Episode.showTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);

  return v1;
}

uint64_t Episode.subscriptionName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);

  return v1;
}

uint64_t sub_360974()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState) == 2)
  {
    return *(v0 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3609A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14[-v8 - 8];
  sub_DAD10(a1, v14);
  sub_3E8954();
  v10 = sub_3E8944();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = (*(*v3 + 376))(v9, a2, a3);
  sub_FCF8(v9, &qword_4E9FD0);
  return v11;
}

uint64_t sub_360B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v9 = sub_361484(1, a1, a2, 0, 0, a3);
  sub_FBD0(a1, v8, &qword_4E9FD0);
  v10 = sub_3E8944();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_FCF8(v8, &qword_4E9FD0);
LABEL_4:
    v12 = 1;
    goto LABEL_5;
  }

  sub_3E8934();
  (*(v11 + 8))(v8, v10);
  EpisodeListType.desiredClickActionType.getter(v15);
  sub_20C1D8(v16);
  v12 = v15[0];
  if (LOBYTE(v15[0]) == 4)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_AB5C0(v12, v9, v15);
  v13 = sub_ABBB4(v15);

  sub_FCF8(v15, &qword_4EDE00);
  return v13;
}

uint64_t sub_360CD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  __chkstk_darwin(v0);
  v2 = &v18[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF428);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = sub_3E8944();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_3E7DF4();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_3E67A4();
  v11 = sub_361484(0, v8, v5, 0, 0, &v20);
  v26 = v20;
  sub_FCF8(&v26, &unk_4F8A10);
  v25 = v21;
  sub_FCF8(&v25, &qword_4E94E0);
  v24 = v22;
  sub_FCF8(&v24, &unk_4F8A20);
  sub_16AC0(v23);
  sub_FCF8(v5, &qword_4EF428);
  sub_FCF8(v8, &qword_4E9FD0);
  v12 = OBJC_IVAR____TtC8ShelfKit12LegacyLockup__playAction;
  swift_beginAccess();
  sub_FBD0(v11 + v12, v2, &qword_4EED80);
  sub_3ECAF4();
  sub_FCF8(v2, &qword_4EED80);
  v13 = v19[0];
  if (v19[0])
  {
    v14 = type metadata accessor for Action();
    v15 = sub_365654(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v13;
  v19[3] = v14;
  v19[4] = v15;
  v16 = sub_ABBB4(v19);

  sub_FCF8(v19, &qword_4EDE00);
  return v16;
}

uint64_t sub_36103C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF428);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-1] - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-1] - v4;
  v6 = sub_3E8944();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_3E7DF4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_3E67A4();
  v8 = sub_361484(1, v5, v2, 0, 0, &v16);
  v22 = v16;
  sub_FCF8(&v22, &unk_4F8A10);
  v21 = v17;
  sub_FCF8(&v21, &qword_4E94E0);
  v20 = v18;
  sub_FCF8(&v20, &unk_4F8A20);
  sub_16AC0(v19);
  sub_FCF8(v2, &qword_4EF428);
  sub_FCF8(v5, &qword_4E9FD0);
  v9 = *(v8 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction);
  if (v9)
  {
    v10 = type metadata accessor for Action();
    v11 = sub_365654(&qword_4EDDF8, type metadata accessor for Action);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v9;
  v15[3] = v10;
  v15[4] = v11;

  v12 = sub_ABBB4(v15);

  sub_FCF8(v15, &qword_4EDE00);
  return v12;
}

uint64_t sub_3612F4()
{
  v1 = sub_3E5934();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit7Episode_summary))
  {
    v8[0] = sub_3E9A44();
    v8[1] = v5;
    sub_3E5924();
    sub_68DC4();
    v6 = sub_3EE124();
    (*(v2 + 8))(v4, v1);

    v8[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0);
    sub_9809C();
    sub_3ED134();
  }

  sub_3E9A64();
  sub_3E9A34();
  sub_3E9A24();
  return sub_3E9A94();
}

uint64_t sub_361484(int a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v316 = a6;
  v363 = a5;
  v362 = a4;
  v334 = a3;
  v355 = a2;
  v308 = a1;
  v8 = sub_3E6B04();
  v286 = *(v8 - 8);
  v287 = v8;
  __chkstk_darwin(v8);
  v285 = &v282 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF420);
  __chkstk_darwin(v10 - 8);
  v351 = &v282 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF468);
  __chkstk_darwin(v12 - 8);
  v310 = &v282 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v311 = &v282 - v15;
  __chkstk_darwin(v16);
  v329 = &v282 - v17;
  __chkstk_darwin(v18);
  v352 = &v282 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v20 - 8);
  v312 = &v282 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v345 = &v282 - v23;
  __chkstk_darwin(v24);
  v350 = &v282 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v26 - 8);
  v342 = &v282 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v327 = &v282 - v29;
  __chkstk_darwin(v30);
  v326 = &v282 - v31;
  __chkstk_darwin(v32);
  v343 = &v282 - v33;
  __chkstk_darwin(v34);
  v349 = &v282 - v35;
  __chkstk_darwin(v36);
  v348 = &v282 - v37;
  __chkstk_darwin(v38);
  v347 = &v282 - v39;
  v365 = sub_3EC634();
  v346 = *(v365 - 8);
  __chkstk_darwin(v365);
  v344 = &v282 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF470);
  __chkstk_darwin(v41 - 8);
  v328 = &v282 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v309 = &v282 - v44;
  __chkstk_darwin(v45);
  v341 = &v282 - v46;
  __chkstk_darwin(v47);
  v325 = (&v282 - v48);
  v298 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v298);
  v300 = (&v282 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_3EC544();
  __chkstk_darwin(v50 - 8);
  v304 = &v282 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v52 - 8);
  v324 = &v282 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v297 = &v282 - v55;
  v354 = sub_3E5FC4();
  v360 = *(v354 - 8);
  __chkstk_darwin(v354);
  v331 = &v282 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = sub_3EC1F4();
  v353 = *(v361 - 8);
  __chkstk_darwin(v361);
  v299 = &v282 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v307 = &v282 - v59;
  __chkstk_darwin(v60);
  v359 = &v282 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v62 - 8);
  v320 = &v282 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v321 = &v282 - v65;
  __chkstk_darwin(v66);
  v338 = &v282 - v67;
  __chkstk_darwin(v68);
  v339 = &v282 - v69;
  __chkstk_darwin(v70);
  v364 = &v282 - v71;
  v335 = sub_3E7D14();
  v72 = *(v335 - 8);
  __chkstk_darwin(v335);
  v336 = &v282 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = sub_3E7CB4();
  v357 = *(v358 - 8);
  __chkstk_darwin(v358);
  v75 = &v282 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v340 = &v282 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9FD0);
  __chkstk_darwin(v78 - 8);
  v337 = &v282 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v82 = &v282 - v81;
  v83 = sub_3E8944();
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v86 = &v282 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD0(v355, v82, &qword_4E9FD0);
  v87 = *(v84 + 48);
  v88 = v87(v82, 1, v83);
  v322 = v84;
  v323 = v83;
  if (v88 == 1)
  {
    v89 = *(v6 + 88);
    v399 = *(v6 + 80);
    v400 = v89;
    v401 = 3;

    sub_3E8954();
    v90 = v86;
    if (v87(v82, 1, v83) != 1)
    {
      sub_FCF8(v82, &qword_4E9FD0);
    }
  }

  else
  {
    (*(v84 + 32))(v86, v82, v83);
    v90 = v86;
  }

  sub_3E8934();
  v91 = v340;
  if (v381 > 5u)
  {
    if (v381 <= 7u)
    {
      if (v381 != 6)
      {
LABEL_23:
        sub_20C1D8(&v373);
        goto LABEL_24;
      }
    }

    else
    {
      if (v381 == 8 || v381 == 9)
      {
        goto LABEL_23;
      }

      v93 = v377 | v376 | v375;
      if (!(v379 | v380 | v373 | v378 | v93 | v374))
      {
        goto LABEL_8;
      }

      v94 = v379 | v380 | v378 | v93 | v374;
      if (v373 == 1 && !v94)
      {
        goto LABEL_8;
      }

      if (v373 != 2 || v94)
      {
        if ((v373 - 3) <= 3 && !v94)
        {
          goto LABEL_8;
        }

LABEL_24:
        sub_FBD0(v334, v91, &qword_4EF428);
        v92 = &enum case for EyebrowBuilder.ListContext.show(_:);
        goto LABEL_25;
      }
    }

    *v340 = 0;
    v92 = &enum case for EyebrowBuilder.ListContext.listenNow(_:);
    goto LABEL_25;
  }

  if (v381 > 1u)
  {
    goto LABEL_23;
  }

  sub_20C1D8(&v373);
LABEL_8:
  v92 = &enum case for EyebrowBuilder.ListContext.mixedShows(_:);
LABEL_25:
  v95 = *v92;
  v96 = v357;
  v97 = v358;
  v283 = *(v357 + 104);
  v284 = v357 + 104;
  v283(v91, v95, v358);
  v395 = type metadata accessor for Episode();
  v396.i64[0] = sub_365654(&qword_503428, type metadata accessor for Episode);
  v392 = v7;
  v305 = *(v96 + 16);
  v306 = v96 + 16;
  v305(v75, v91, v97);
  (*(v72 + 104))(v336, enum case for EyebrowBuilder.Style.default(_:), v335);
  sub_3E7D44();
  swift_allocObject();

  v319 = sub_3E7D34();
  v333 = sub_3E7D24();
  v355 = v98;
  v100 = *(v7 + 64);
  v99 = *(v7 + 72);
  v101 = *(v7 + 16);
  v102 = *(v7 + 24);
  type metadata accessor for LibraryEpisodeOfferAction();
  v103 = swift_allocObject();
  v104 = (v103 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_episodeUuid);
  v334 = v100;
  v335 = v99;
  *v104 = v100;
  v104[1] = v99;
  swift_bridgeObjectRetain_n();
  v356 = v90;
  if ((v102 & 1) != 0 || v101 == sub_3E9484())
  {
    v105 = 0;
    v106 = 1;
  }

  else
  {
    v106 = 0;
    v105 = v101;
  }

  v107 = v103 + OBJC_IVAR____TtC8ShelfKit25LibraryEpisodeOfferAction_contentId;
  *v107 = v105;
  *(v107 + 8) = v106;
  v108 = *(v346 + 56);
  LODWORD(v317) = 1;
  v109 = v364;
  v363 = v346 + 56;
  v362 = v108;
  v108(v364, 1, 1, v365);
  v110 = v359;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v111 = v331;
  sub_3E5FB4();
  v112 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v114 = v113;
  v115 = v360[1];
  ++v360;
  v330 = v115;
  v115(v111, v354);
  *(v103 + 16) = v112;
  *(v103 + 24) = v114;
  *(v103 + 32) = 0;
  *(v103 + 40) = 0;
  *(v103 + 48) = 32;
  v313 = *(v353 + 32);
  v314 = v353 + 32;
  v313(v103 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v110, v361);
  sub_FACC(v109, v103 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v336 = *(v7 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeEntitlementState);
  if (v336 == &dword_0 + 2)
  {
    v303 = *(v7 + 32);
    LODWORD(v317) = *(v7 + 40);
  }

  else
  {
    v303 = 0;
  }

  v117 = v322;
  v116 = v323;
  v118 = v337;
  (*(v322 + 16))(v337, v356, v323);
  (*(v117 + 56))(v118, 0, 1, v116);
  v119 = objc_opt_self();

  v120 = [v119 mainBundle];
  v281._countAndFlagsBits = 0x800000000042E9B0;
  v402._countAndFlagsBits = 2036427856;
  v402._object = 0xE400000000000000;
  v410.value._countAndFlagsBits = 0;
  v410.value._object = 0;
  v121.super.isa = v120;
  v411._countAndFlagsBits = 0;
  v411._object = 0xE000000000000000;
  v122 = sub_3E5A74(v402, v410, v121, v411, v281);
  v301 = v123;
  v302 = v122;

  sub_3E8594();
  v332 = v101;
  v318 = v103;
  v315 = v7;
  if (v102 & 1) != 0 || (sub_3E94A4())
  {

    v124 = v307;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850);
    sub_3EC044();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    v392 = v101;
    sub_17A28();
    v296 = sub_3EE1F4();
    sub_3E8474();
    v125 = sub_3E5DC4();
    v126 = v297;
    (*(*(v125 - 8) + 56))(v297, 1, 1, v125);
    sub_3EBFC4();

    v101 = v332;

    sub_FCF8(v126, &unk_4E9EE0);
    sub_3EC534();
    v124 = v307;
    sub_3EC1C4();
  }

  v304 = type metadata accessor for LibraryPlayAction();
  v127 = swift_allocObject();
  v128 = (v127 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeUuid);
  v129 = v335;
  *v128 = v334;
  v128[1] = v129;
  v130 = v127 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_episodeAdamId;
  *v130 = v101;
  LODWORD(v307) = v102;
  *(v130 + 8) = v102;
  v131 = v127 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_channelAdamId;
  *v131 = v303;
  *(v131 + 8) = v317;
  v132 = v337;
  sub_FBD0(v337, v127 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_settings, &qword_4E9FD0);
  *(v127 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_showPlayerIfPlaying) = 2;
  v133 = v127 + OBJC_IVAR____TtC8ShelfKit17LibraryPlayAction_timestamp;
  *v133 = 0;
  *(v133 + 8) = 1;
  v134 = v353;
  v135 = *(v353 + 16);
  v303 = v353 + 16;
  v297 = v135;
  (v135)(v359, v124, v361);
  v362(v364, 1, 1, v365);

  v136 = v331;
  sub_3E5FB4();
  v137 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v139 = v138;
  v330(v136, v354);
  v140 = *(v134 + 8);
  v141 = v361;
  v353 = v134 + 8;
  v296 = v140;
  v140(v124, v361);
  sub_FCF8(v132, &qword_4E9FD0);
  *(v127 + 16) = v137;
  *(v127 + 24) = v139;
  v142 = v301;
  *(v127 + 32) = v302;
  *(v127 + 40) = v142;
  *(v127 + 48) = 32;
  v143 = v359;
  v144 = v313;
  v313(v127 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v359, v141);
  v145 = v364;
  sub_FACC(v364, v127 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v317 = v127;

  v337 = sub_364384(v316);
  swift_retain_n();
  sub_3E8934();
  v146 = sub_3E7E84();
  v148 = v147;
  sub_20C1D8(&v382);
  type metadata accessor for LibraryEpisodeContextAction();
  v149 = swift_allocObject();
  v150 = (v149 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_episodeUuid);
  v151 = v335;
  *v150 = v334;
  v150[1] = v151;
  v152 = (v149 + OBJC_IVAR____TtC8ShelfKit27LibraryEpisodeContextAction_stationUuid);
  *v152 = v146;
  v152[1] = v148;
  v362(v145, 1, 1, v365);

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v153 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v155 = v154;
  v330(v136, v354);
  *(v149 + 16) = v153;
  *(v149 + 24) = v155;
  *(v149 + 32) = 0;
  *(v149 + 40) = 0;
  *(v149 + 48) = 32;
  v144(v149 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v143, v361);
  v316 = v149;
  sub_FACC(v145, v149 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v372 = _swiftEmptyArrayStorage;
  if (v355)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_3F5630;
    v157 = v355;

    v158 = _UISolariumEnabled();
    v159 = v333;
    if ((v158 & 1) == 0)
    {
      v392 = v333;
      v393 = v355;
      sub_68DC4();
      v159 = sub_3EE174();
      v157 = v160;
    }

    *(v156 + 32) = v159;
    *(v156 + 40) = v157;
    sub_40D60(v156);
  }

  v161 = v315;
  v162 = *(v315 + OBJC_IVAR____TtC8ShelfKit7Episode_author + 8);
  if (v162)
  {
    v302 = *(v315 + OBJC_IVAR____TtC8ShelfKit7Episode_author);
    v163 = v302;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v164 = swift_allocObject();
    *(v164 + 16) = xmmword_3F5630;
    *(v164 + 32) = v163;
    *(v164 + 40) = v162;
    swift_bridgeObjectRetain_n();
    v301 = v162;
    sub_40D60(v164);
    v165 = *(v161 + 88);
    v166 = v300;
    *v300 = *(v161 + 80);
    *(v166 + 8) = v165;
    swift_storeEnumTagMultiPayload();

    v167 = v359;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    type metadata accessor for FlowAction(0);
    v168 = swift_allocObject();
    sub_FC38(v166, v168 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType);
    type metadata accessor for FlowAction.DestinationType(0);
    swift_storeEnumTagMultiPayload();
    v169 = (v168 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
    *v169 = 0;
    v169[1] = 0;
    *(v168 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
    *(v168 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
    *(v168 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
    v170 = v299;
    v171 = v167;
    v172 = v361;
    (v297)(v299, v171, v361);
    v173 = v364;
    v362(v364, 1, 1, v365);
    v174 = v331;
    sub_3E5FB4();
    v175 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v177 = v176;
    v330(v174, v354);
    v296(v359, v172);
    sub_FC9C(v166);
    *(v168 + 16) = v175;
    *(v168 + 24) = v177;
    v178 = v301;
    *(v168 + 32) = v302;
    *(v168 + 40) = v178;
    *(v168 + 48) = 48;
    v313(v168 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v170, v172);
    v359 = v168;
    sub_FACC(v173, v168 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  }

  else
  {
    v359 = 0;
  }

  v179 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_summary);
  v180 = v179;
  if (v308)
  {
    v181 = v180;
    v182 = sub_3612F4();
    v183 = v325;
    if (v182)
    {
      v184 = v182;

      v179 = v184;
    }
  }

  else
  {
    v183 = v325;
  }

  if (sub_3E7CF4())
  {
    v185 = &OBJC_IVAR____TtC8ShelfKit7Episode_title;
  }

  else
  {
    sub_3E8934();
    if ((*(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial) & 1) != 0 || (v185 = &OBJC_IVAR____TtC8ShelfKit7Episode_title, v391 - 2 >= 6) && v391 != 9 && (v391 != 10 || (v279 = v387 | v388 | v389, v385 | v384 | v383 | v386 | v279 | v390) && ((v383 & 0xFFFFFFFFFFFFFFFELL) != 6 ? (v280 = (v383 & 0xFFFFFFFFFFFFFFFBLL) == 1) : (v280 = 1), !v280 || v385 | v384 | v386 | v279 | v390)))
    {
      v185 = &OBJC_IVAR____TtC8ShelfKit7Episode_numberedTitle;
    }

    sub_20C1D8(&v383);
  }

  sub_FBD0(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_listenNowReason, v183, &qword_4EF470);
  sub_3E8934();
  v331 = v179;
  if (v398 == 10 && v392 == 2 && (v186 = vorrq_s8(v396, v397), !(*&vorr_s8(*v186.i8, *&vextq_s8(v186, v186, 8uLL)) | v395 | v394 | v393)))
  {
    if (os_feature_enabled_prototype_up_next())
    {
      sub_FCF8(v183, &qword_4EF470);
      *v183 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_upNextScore);
      v187 = enum case for EpisodeListenNowReason.prototypedUpNextScore(_:);
      v188 = sub_3E8D24();
      v189 = *(v188 - 8);
      (*(v189 + 104))(v183, v187, v188);
      (*(v189 + 56))(v183, 0, 1, v188);
    }
  }

  else
  {
    sub_20C1D8(&v392);
  }

  v190 = (v161 + *v185);
  v191 = *v190;
  v192 = v190[1];

  v361 = v191;
  v360 = v192;
  sub_3649BC();
  v193 = *(v161 + 88);
  v291 = *(v161 + 80);
  if (*(v161 + 104))
  {

    v290 = sub_3E9484();
  }

  else
  {
    v290 = *(v161 + 96);
  }

  if (v336 == &dword_0 + 2)
  {
    v289 = *(v161 + 32);
    v194 = *(v161 + 40);
  }

  else
  {
    v289 = 0;
    v194 = 1;
  }

  v288 = v194;
  LODWORD(v303) = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeType);
  v330 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_duration);
  LODWORD(v314) = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_duration + 8);
  v301 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber);
  LODWORD(v300) = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_seasonNumber + 8);
  v299 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber);
  LODWORD(v298) = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeNumber + 8);
  LODWORD(v302) = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_mediaType);
  sub_FBD0(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_artwork, v347, &qword_4F1D50);
  sub_FBD0(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_showUberArtwork, v348, &qword_4F1D50);
  sub_FBD0(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_episodeArtwork, v349, &qword_4F1D50);
  v195 = v372;
  if (v372[2])
  {

    v354 = v195;
  }

  else
  {
    v354 = 0;
  }

  v371[3] = v304;
  v196 = sub_365654(&qword_4E9FF8, type metadata accessor for LibraryPlayAction);
  LODWORD(v353) = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_isExplicit);
  v371[4] = v196;
  v371[0] = v317;
  v308 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_showTypeIsSerial);
  v197 = v324;
  sub_FBD0(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_assetUrl, v324, &unk_4E9EE0);
  sub_FBD0(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_releaseDate, v350, &qword_4EF460);
  v295 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_hasFreeVersion);
  v198 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName + 8);
  v294 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_subscriptionName);
  v199 = *(v161 + 48);
  v200 = *(v161 + 56);
  if (!v200)
  {
    v199 = 0;
  }

  v304 = v199;
  v296 = v198;

  v297 = v200;

  v201 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle + 8);
  v293 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_showTitle);
  v292 = *(v161 + OBJC_IVAR____TtC8ShelfKit7Episode_showDisplayType);
  v202 = v341;
  sub_FBD0(v183, v341, &qword_4EF470);
  v203 = v352;
  v204 = v358;
  v305(v352, v340, v358);
  v205 = *(v357 + 56);
  v315 = v357 + 56;
  v313 = v205;
  (v205)(v203, 0, 1, v204);
  v206 = v339;
  v207 = v365;
  (*(v346 + 16))(v339, v344, v365);
  v362(v206, 0, 1, v207);
  type metadata accessor for LibraryEpisodeLockup();
  v208 = swift_allocObject();
  v209 = (v208 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_uuid);
  v210 = v334;
  v211 = v335;
  *v209 = v334;
  v209[1] = v211;
  v212 = (v208 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastUuid);
  *v212 = v291;
  v212[1] = v193;
  v213 = v289;
  *(v208 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_podcastAdamId) = v290;
  v214 = v208 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_channelAdamId;
  *v214 = v213;
  *(v214 + 8) = v288;
  *(v208 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_presentDetailsAction) = v337;
  sub_FBD0(v197, v208 + OBJC_IVAR____TtC8ShelfKit20LibraryEpisodeLockup_assetFileUrl, &unk_4E9EE0);
  v369 = v210;
  v370 = v211;
  v306 = v201;

  swift_retain_n();

  v403._countAndFlagsBits = 45;
  v403._object = 0xE100000000000000;
  sub_3ED3D4(v403);
  if (v355)
  {
    v215 = v333;
  }

  else
  {
    v215 = 7104878;
  }

  if (v355)
  {
    v216 = v355;
  }

  else
  {
    v216 = 0xE300000000000000;
  }

  v404._countAndFlagsBits = v215;
  v404._object = v216;
  sub_3ED3D4(v404);

  v405._countAndFlagsBits = 45;
  v405._object = 0xE100000000000000;
  sub_3ED3D4(v405);
  v368[0] = v336;
  v406._countAndFlagsBits = sub_3EE7A4();
  sub_3ED3D4(v406);

  v407._countAndFlagsBits = 45;
  v407._object = 0xE100000000000000;
  sub_3ED3D4(v407);
  v217 = v360;

  v408._countAndFlagsBits = v361;
  v408._object = v217;
  sub_3ED3D4(v408);

  v409._countAndFlagsBits = 45;
  v409._object = 0xE100000000000000;
  sub_3ED3D4(v409);
  v218 = v202;
  v219 = v309;
  sub_FBD0(v218, v309, &qword_4EF470);
  v220 = sub_3E8D24();
  v221 = *(v220 - 8);
  v305 = *(v221 + 48);
  if (v305(v219, 1, v220) == 1)
  {
    sub_FCF8(v219, &qword_4EF470);
    v222 = 0xE400000000000000;
    v223._countAndFlagsBits = 1701736302;
  }

  else
  {
    v224 = sub_3E8D14();
    v222 = v225;
    (*(v221 + 8))(v219, v220);
    v223._countAndFlagsBits = v224;
  }

  v226 = v307;
  v307 = v220;
  v223._object = v222;
  sub_3ED3D4(v223);

  v334 = v370;
  v335 = v369;
  if (v226)
  {
    v332 = sub_3E9484();
  }

  sub_FBD0(v347, v343, &qword_4F1D50);
  v227 = v326;
  sub_FBD0(v348, v326, &qword_4F1D50);
  v228 = v327;
  sub_FBD0(v349, v327, &qword_4F1D50);
  sub_FBD0(v371, &v369, &qword_4EDE00);
  sub_FBD0(v350, v345, &qword_4EF460);
  v229 = v328;
  sub_FBD0(v341, v328, &qword_4EF470);
  v230 = v329;
  sub_FBD0(v352, v329, &qword_4EF468);
  v231 = sub_3E9104();
  (*(*(v231 - 8) + 56))(v351, 1, 1, v231);
  sub_FBD0(v339, v338, &unk_4E9170);
  v232 = OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup__titleAction;
  v368[0] = 0;
  v233 = type metadata accessor for Action();
  sub_3ECAE4();
  *(v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_disabled) = 0;
  v234 = v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeNumber;
  *v234 = v299;
  *(v234 + 8) = v298;
  v235 = v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_seasonNumber;
  *v235 = v301;
  *(v235 + 8) = v300;
  *(v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeType) = v303;
  sub_FBD0(v227, v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showUberArtwork, &qword_4F1D50);
  *(v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_mediaType) = v302;
  v236 = (v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_caption);
  v237 = v355;
  *v236 = v333;
  v236[1] = v237;
  *(v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary) = v331;
  *(v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_transcript) = 0;
  swift_beginAccess();
  v238 = v337;

  sub_FCF8(v208 + v232, &qword_4EED80);
  v367[0] = v238;
  v309 = v233;
  sub_3ECAE4();
  swift_endAccess();
  v239 = v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_duration;
  *v239 = v330;
  *(v239 + 8) = v314;
  *(v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeEntitlementState) = v336;
  *(v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_hasFreeVersion) = v295;
  v240 = (v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_subscriptionName);
  v241 = v296;
  *v240 = v294;
  v240[1] = v241;
  v242 = (v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_channelName);
  v243 = 0xE000000000000000;
  if (v297)
  {
    v243 = v297;
  }

  *v242 = v304;
  v242[1] = v243;
  v244 = (v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTitle);
  v245 = v306;
  *v244 = v293;
  v244[1] = v245;
  *(v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showDisplayType) = v292;
  *(v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_showTypeIsSerial) = v308;
  sub_FBD0(v229, v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listenNowReason, &qword_4EF470);
  sub_FBD0(v228, v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_episodeArtwork, &qword_4F1D50);
  v246 = v230;
  v247 = v310;
  sub_FBD0(v246, v310, &qword_4EF468);
  v248 = v357;
  v249 = *(v357 + 48);
  v250 = v358;
  if (v249(v247, 1, v358) == 1)
  {
    v251 = 1;
    v252 = v305(v229, 1, v307);
    v253 = v311;
    if (v252 != 1)
    {
      *v311 = 0;
      v283(v253, enum case for EyebrowBuilder.ListContext.listenNow(_:), v250);
      v251 = 0;
    }

    (v313)(v253, v251, 1, v250);
    if (v249(v247, 1, v250) != 1)
    {
      sub_FCF8(v247, &qword_4EF468);
    }
  }

  else
  {
    v254 = *(v248 + 32);
    v253 = v311;
    v254(v311, v247, v250);
    (v313)(v253, 0, 1, v250);
  }

  sub_FACC(v253, v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_listContext, &qword_4EF468);
  v255 = v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_referenceTime;
  *v255 = 0;
  *(v255 + 8) = 1;
  v256 = v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_playerTime;
  *v256 = 0;
  *(v256 + 8) = 1;
  sub_FBD0(v351, v208 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_thinClientEpisodeState, &qword_4EF420);
  v257 = sub_3E82A4();
  v355 = v258;
  v336 = v259;
  LODWORD(v333) = v260;
  sub_FBD0(v343, v342, &qword_4F1D50);
  v261 = v312;
  sub_FBD0(v345, v312, &qword_4EF460);
  v262 = sub_3E5F84();
  v263 = *(v262 - 8);
  if ((*(v263 + 48))(v261, 1, v262) == 1)
  {
    sub_FCF8(v261, &qword_4EF460);
    v331 = 0;
  }

  else
  {
    v264 = v285;
    (*(v263 + 16))(v285, v261, v262);
    (*(v286 + 104))(v264, enum case for LazyDate.State.valid(_:), v287);
    v331 = sub_3E6AF4();
    (*(v263 + 8))(v261, v262);
  }

  sub_FBD0(&v369, v368, &qword_4EDE00);
  sub_FBD0(v338, v364, &unk_4E9170);
  *(v208 + 32) = 0u;
  *(v208 + 48) = 0u;
  *(v208 + 64) = 0;
  v265 = v321;
  v362(v321, 1, 1, v365);
  sub_FBD0(v265, v320, &unk_4E9170);
  sub_3ECAE4();
  sub_FCF8(v265, &unk_4E9170);
  v367[0] = 0;
  sub_3ECAE4();
  memset(v367, 0, 40);
  sub_FBD0(v367, v366, &qword_4EDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_502170);
  sub_3ECAE4();
  sub_FCF8(v367, &qword_4EDE00);
  v367[0] = 0;
  sub_3ECAE4();
  v367[0] = 0;
  sub_3ECAE4();
  v367[0] = 0;
  sub_3ECAE4();
  v367[0] = 0;
  sub_3ECAE4();
  v266 = v334;
  *(v208 + 16) = v335;
  *(v208 + 24) = v266;
  *(v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_adamId) = v332;
  v267 = v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent;
  v268 = v355;
  *v267 = v257;
  *(v267 + 8) = v268;
  *(v267 + 16) = v336;
  *(v267 + 24) = v333;
  *(v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isExplicit) = v353;
  *(v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_isFollowed) = 2;
  sub_FBD0(v342, v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_icon, &qword_4F1D50);
  v269 = (v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title);
  v270 = v360;
  *v269 = v361;
  v269[1] = v270;
  *(v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_subtitles) = v354;
  v271 = (v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_eyebrow);
  *v271 = 0;
  v271[1] = 0;
  v272 = (v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_titleAccessibilityLabel);
  *v272 = 0;
  v272[1] = 0;
  *(v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_genreNames) = 0;
  v273 = (v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ordinal);
  *v273 = 0;
  v273[1] = 0;
  *(v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_lazyReleaseDate) = v331;
  v274 = (v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_releaseFrequency);
  *v274 = 0;
  v274[1] = 0;
  v275 = v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_rating;
  *v275 = 0;
  *(v275 + 4) = 1;
  v276 = v208 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_ratingCount;
  *v276 = 0;
  *(v276 + 8) = 1;
  v366[0] = v318;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED80);
  sub_3ECB04();
  swift_endAccess();
  sub_FBD0(v368, v367, &qword_4EDE00);
  sub_FBD0(v367, v366, &qword_4EDE00);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED88);
  sub_3ECB04();
  swift_endAccess();
  sub_FCF8(v367, &qword_4EDE00);
  v366[0] = v316;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v366[0] = v317;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v366[0] = v337;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v366[0] = v359;
  swift_beginAccess();

  sub_3ECB04();
  swift_endAccess();
  v277 = v364;
  sub_FBD0(v364, v265, &unk_4E9170);
  sub_FBD0(v265, v320, &unk_4E9170);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EED90);
  sub_3ECB04();
  swift_endAccess();

  sub_FCF8(v321, &unk_4E9170);
  sub_FCF8(v277, &unk_4E9170);
  sub_FCF8(v368, &qword_4EDE00);
  sub_FCF8(v342, &qword_4F1D50);
  sub_FCF8(v338, &unk_4E9170);
  sub_FCF8(v351, &qword_4EF420);
  sub_FCF8(v329, &qword_4EF468);
  sub_FCF8(v345, &qword_4EF460);
  sub_FCF8(&v369, &qword_4EDE00);
  sub_FCF8(v327, &qword_4F1D50);
  sub_FCF8(v326, &qword_4F1D50);
  sub_FCF8(v343, &qword_4F1D50);
  sub_FCF8(v339, &unk_4E9170);
  sub_FCF8(v352, &qword_4EF468);
  sub_FCF8(v341, &qword_4EF470);
  sub_FCF8(v350, &qword_4EF460);
  sub_FCF8(v324, &unk_4E9EE0);
  sub_FCF8(v349, &qword_4F1D50);
  sub_FCF8(v348, &qword_4F1D50);
  sub_FCF8(v347, &qword_4F1D50);
  (*(v346 + 8))(v344, v365);
  sub_FCF8(v325, &qword_4EF470);
  (*(v357 + 8))(v340, v358);
  (*(v322 + 8))(v356, v323);
  sub_FCF8(v371, &qword_4EDE00);
  sub_FCF8(v328, &qword_4EF470);
  return v208;
}