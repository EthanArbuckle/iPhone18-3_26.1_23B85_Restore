uint64_t _s11AppStoreKit23HeroCarouselItemOverlayC14DisplayOptionsV18TextColorOverridesV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_1E1355E88();
    v10 = v6;
    v11 = v2;
    v12 = sub_1E1AF6D0C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1E1355E88();
    v13 = v7;
    v14 = v3;
    v15 = sub_1E1AF6D0C();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_1E1355E88();
    v16 = v9;
    v17 = v5;
    v18 = sub_1E1AF6D0C();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (v8)
    {
      sub_1E1355E88();
      v19 = v8;
      v20 = v4;
      v21 = sub_1E1AF6D0C();

      if (v21)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1E18B46BC()
{
  result = qword_1ECEBA910;
  if (!qword_1ECEBA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA910);
  }

  return result;
}

unint64_t sub_1E18B4710()
{
  result = qword_1ECEBA918;
  if (!qword_1ECEBA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA918);
  }

  return result;
}

unint64_t sub_1E18B4764()
{
  result = qword_1ECEBA920;
  if (!qword_1ECEBA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA920);
  }

  return result;
}

uint64_t _s11AppStoreKit23HeroCarouselItemOverlayC14DisplayOptionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v41 = *(a1 + 24);
  v40 = *(a1 + 40);
  v5 = *(a2 + 1);
  v42 = *(a2 + 8);
  v43 = *(a1 + 32);
  v44 = *(a2 + 16);
  v45 = *(a2 + 24);
  v6 = *(a2 + 32);
  v39 = *(a2 + 40);
  v7 = *a1 == 0;
  if (*a1)
  {
    v8 = 0x7265746E6563;
  }

  else
  {
    v8 = 0x676E696461656CLL;
  }

  if (v7)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (*a2)
  {
    v10 = 0x7265746E6563;
  }

  else
  {
    v10 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = sub_1E1AF74AC();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = 0xE600000000000000;
  v15 = 0x676E696C69617274;
  if (v2 == 1)
  {
    v15 = 0x7265746E6563;
  }

  else
  {
    v14 = 0xE800000000000000;
  }

  if (v2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  v18 = 0xE600000000000000;
  v19 = 0x676E696C69617274;
  if (v5 == 1)
  {
    v19 = 0x7265746E6563;
  }

  else
  {
    v18 = 0xE800000000000000;
  }

  if (v5)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x676E696461656CLL;
  }

  if (v5)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xE700000000000000;
  }

  if (v16 == v20 && v17 == v21)
  {
  }

  else
  {
    v22 = sub_1E1AF74AC();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v50 = v4;
  v51 = v3;
  v52 = v41;
  v53 = v43;
  v46 = v42;
  v47 = v44;
  v48 = v45;
  v49 = v6;
  v23 = v6;
  v24 = v4;
  v25 = v3;
  v26 = v41;
  v27 = v43;
  v28 = v42;
  v29 = v44;
  v30 = v45;
  v31 = _s11AppStoreKit23HeroCarouselItemOverlayC14DisplayOptionsV18TextColorOverridesV2eeoiySbAG_AGtFZ_0(&v50, &v46);
  v32 = v47;
  v33 = v48;
  v34 = v49;

  v35 = v51;
  v36 = v52;
  v37 = v53;

  if (v31)
  {
    return v40 ^ v39 ^ 1u;
  }

  return 0;
}

unint64_t sub_1E18B4A00()
{
  result = qword_1ECEBA928;
  if (!qword_1ECEBA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA928);
  }

  return result;
}

unint64_t sub_1E18B4A58()
{
  result = qword_1ECEBA930;
  if (!qword_1ECEBA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA930);
  }

  return result;
}

unint64_t sub_1E18B4AB0()
{
  result = qword_1ECEBA938;
  if (!qword_1ECEBA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA938);
  }

  return result;
}

unint64_t sub_1E18B4B08()
{
  result = qword_1ECEBA940;
  if (!qword_1ECEBA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA940);
  }

  return result;
}

unint64_t sub_1E18B4B60()
{
  result = qword_1ECEBA948;
  if (!qword_1ECEBA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA948);
  }

  return result;
}

unint64_t sub_1E18B4BB8()
{
  result = qword_1ECEBA950;
  if (!qword_1ECEBA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA950);
  }

  return result;
}

uint64_t type metadata accessor for HeroCarouselItemOverlay()
{
  result = qword_1ECEBA960;
  if (!qword_1ECEBA960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E18B4CA8()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E18B4E00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E18B4E5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E18B4EC0(unint64_t *a1, void (*a2)(uint64_t))
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

char *ShowRatingPromptAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + OBJC_IVAR____TtC11AppStoreKit22ShowRatingPromptAction_rateAction) = 0;
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ShowRatingPromptAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit22ShowRatingPromptAction_rateAction) = 0;
  v14 = *(v10 + 16);
  v18 = a1;
  v14(v13, a1, v9, v11);
  (*(v6 + 16))(v8, a2, v5);
  v15 = Action.init(deserializing:using:)(v13, v8);
  (*(v6 + 8))(a2, v5);
  (*(v10 + 8))(v18, v9);
  return v15;
}

uint64_t ShowRatingPromptAction.__allocating_init(rateAction:)(uint64_t a1)
{
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  v9 = sub_1E1AF3E1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC11AppStoreKit22ShowRatingPromptAction_rateAction) = a1;
  v30 = 0;
  memset(v29, 0, sizeof(v29));

  sub_1E1AF3DFC();
  v14 = sub_1E1AF46DC();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = (v13 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = v13 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v29, &v26);
  if (*(&v27 + 1))
  {
    v17 = v27;
    *v16 = v26;
    *(v16 + 16) = v17;
    *(v16 + 32) = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v19 = v2;
    v20 = v18;
    v21 = v3;
    v23 = v22;
    (*(v21 + 8))(v5, v19);
    v25[1] = v20;
    v25[2] = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670);
  }

  sub_1E1308058(v29, &unk_1ECEB5670);
  sub_1E134B7C8(v8, v13 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  (*(v10 + 32))(v13 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v12, v9);
  return v13;
}

uint64_t ShowRatingPromptAction.init(rateAction:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - v9;
  v11 = sub_1E1AF3E1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit22ShowRatingPromptAction_rateAction) = a1;
  v33 = 0;
  memset(v32, 0, sizeof(v32));

  sub_1E1AF3DFC();
  v15 = sub_1E1AF46DC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = (v2 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v16 = 0u;
  v16[1] = 0u;
  sub_1E138853C(v32, &v26);
  if (*(&v27 + 1))
  {
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v18 = v5;
    v19 = v17;
    v21 = v20;
    (*(v18 + 8))(v7, v4);
    v25[1] = v19;
    v25[2] = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670);
  }

  sub_1E1308058(v32, &unk_1ECEB5670);
  v22 = v2 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v22 + 32) = v31;
  v23 = v30;
  *v22 = v29;
  *(v22 + 16) = v23;
  sub_1E134B7C8(v10, v2 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v14, v11);
  return v2;
}

uint64_t ShowRatingPromptAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t ShowRatingPromptAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShowRatingPromptAction()
{
  result = qword_1ECEBA970;
  if (!qword_1ECEBA970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ShadowView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ShadowView.__allocating_init(radius:style:)(char *a1, double a2)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(v2) initWithFrame_];
  *&v5[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerRadius] = a2;
  v5[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerStyle] = v4;
  v6 = v5;
  CornerStyle.apply(withRadius:to:)(v6, a2);
  v7 = &v6[OBJC_IVAR____TtC11AppStoreKit10ShadowView_previousBounds];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow;
  swift_beginAccess();
  if (*&v6[v8])
  {
    [v6 setNeedsLayout];
  }

  return v6;
}

id sub_1E18B5D98(char *a1, double a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerRadius] = a2;
  v2[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerStyle] = *a1;
  CornerStyle.apply(withRadius:to:)(v2, a2);
  v4 = &v2[OBJC_IVAR____TtC11AppStoreKit10ShadowView_previousBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow;
  result = swift_beginAccess();
  if (*&v3[v5])
  {
    return [v3 setNeedsLayout];
  }

  return result;
}

id sub_1E18B5E3C@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;

  return v4;
}

id sub_1E18B5EA4(__int128 *a1, void *a2)
{
  v3 = *a2 + OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow;
  swift_beginAccess();
  v4 = *v3;
  v5 = *a1;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v6;
  v7 = v5;

  return sub_1E18B5F14();
}

id sub_1E18B5F14()
{
  v1 = &v0[OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow];
  swift_beginAccess();
  if (*v1)
  {
    v3 = v1[2];
    v2 = v1[3];
    v4 = v1[1];
    v5 = *v1;
    v6 = [v0 layer];
    v7 = [v5 CGColor];
    [v6 setShadowColor_];

    v8 = [v0 layer];
    [v8 setShadowRadius_];

    v9 = [v0 layer];
    [v9 setShadowOffset_];

    v10 = [v0 layer];
    LODWORD(v11) = 1.0;
    [v10 setShadowOpacity_];

    [v0 setClipsToBounds_];
  }

  else
  {
    v12 = [v0 layer];
    [v12 setShadowColor_];

    v13 = [v0 layer];
    [v13 setShadowRadius_];

    v14 = [v0 layer];
    [v14 setShadowOffset_];

    v15 = [v0 layer];
    [v15 setShadowOpacity_];

    [v0 setClipsToBounds_];
  }

  v16 = &v0[OBJC_IVAR____TtC11AppStoreKit10ShadowView_previousBounds];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  return [v0 setNeedsLayout];
}

id sub_1E18B6180@<X0>(__int128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return v4;
}

id sub_1E18B61E4(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow;
  swift_beginAccess();
  v4 = *v3;
  v5 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v5;

  return sub_1E18B5F14();
}

id (*sub_1E18B6248(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E18B62AC;
}

id sub_1E18B62AC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E18B5F14();
  }

  return result;
}

uint64_t sub_1E18B62E0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit10ShadowView_shouldAnimateBoundsChange;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E18B6324(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10ShadowView_shouldAnimateBoundsChange;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1E18B63D4()
{
  v58.receiver = v0;
  v58.super_class = type metadata accessor for ShadowView();
  objc_msgSendSuper2(&v58, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow;
  swift_beginAccess();
  if (*&v0[v1])
  {
    v2 = [v0 layer];
    v3 = [v2 shadowPath];

    v4 = v0[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerStyle];
    v5 = &selRef_updateAutoPlayVideoSettings;
    [v0 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = *&v0[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerRadius];
    v15 = objc_opt_self();
    if (v14 >= COERCE_DOUBLE(1))
    {
      if (v4)
      {
        v15 = [v15 _bezierPathWithArcRoundedRect_cornerRadius_];
        v17 = v15;
        if (v15)
        {
LABEL_9:
          v18 = [v17 CGPath];

          v19 = OBJC_IVAR____TtC11AppStoreKit10ShadowView_shouldAnimateBoundsChange;
          swift_beginAccess();
          v20 = &qword_1ECEB9F98[13];
          if ((v0[v19] & 1) == 0)
          {
            goto LABEL_22;
          }

          [v0 bounds];
          if ((v0[OBJC_IVAR____TtC11AppStoreKit10ShadowView_previousBounds + 32] & 1) == 0 && CGRectEqualToRect(*&v21, *&v0[OBJC_IVAR____TtC11AppStoreKit10ShadowView_previousBounds]))
          {
            goto LABEL_22;
          }

          v25 = [v0 layer];
          v26 = sub_1E1AF5DBC();
          v27 = [v25 animationForKey_];

          if (v27)
          {
            goto LABEL_21;
          }

          v28 = [v0 layer];
          v29 = sub_1E1AF5DBC();
          v30 = [v28 animationForKey_];

          if (v30)
          {
            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            if (v31)
            {
              v32 = v31;
              v33 = sub_1E1AF5DBC();
              v34 = [objc_opt_self() animationWithKeyPath_];

              v35 = v34;
              v36 = v30;
              [v32 duration];
              [v35 setDuration_];
              v37 = [v32 timingFunction];

              [v35 setTimingFunction_];
              v38 = v35;
              [v38 setFromValue_];
              [v38 setToValue_];

              [v32 mass];
              [v38 setMass_];
              [v32 stiffness];
              [v38 setStiffness_];
              [v32 damping];
              [v38 setDamping_];
              [v32 initialVelocity];
              [v38 setInitialVelocity_];
              v39 = [v0 layer];
              v5 = &selRef_updateAutoPlayVideoSettings;
              goto LABEL_20;
            }
          }

          v40 = [v0 layer];
          v41 = sub_1E1AF5DBC();
          v27 = [v40 animationForKey_];

          v5 = &selRef_updateAutoPlayVideoSettings;
          v20 = qword_1ECEB9F98 + 104;
          if (!v27)
          {
LABEL_22:
            v48 = [v0 layer];
            [v48 setShadowPath_];

            [v0 v5[175]];
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;

            v57 = &v0[v20[306]];
            *v57 = v50;
            *(v57 + 1) = v52;
            *(v57 + 2) = v54;
            *(v57 + 3) = v56;
            v57[32] = 0;
            return;
          }

          objc_opt_self();
          v42 = swift_dynamicCastObjCClass();
          if (!v42)
          {
LABEL_21:

            goto LABEL_22;
          }

          v43 = v42;
          v44 = sub_1E1AF5DBC();
          v45 = [objc_opt_self() animationWithKeyPath_];

          v38 = v45;
          v36 = v27;
          [v43 duration];
          [v38 setDuration_];
          v46 = [v43 timingFunction];

          [v38 setTimingFunction_];
          [v38 setFromValue_];
          [v38 setToValue_];
          v39 = [v0 layer];
LABEL_20:
          v47 = v39;
          v27 = sub_1E1AF5DBC();
          [v47 addAnimation:v38 forKey:v27];

          v20 = &qword_1ECEB9F98[13];
          goto LABEL_21;
        }

        __break(1u);
      }

      v16 = [v15 bezierPathWithRoundedRect:-1 byRoundingCorners:v7 cornerRadii:{v9, v11, v13, v14, v14}];
    }

    else
    {
      v16 = [v15 bezierPathWithRect_];
    }

    v17 = v16;
    goto LABEL_9;
  }
}

id ShadowView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerRadius] = 0;
  v4[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerStyle] = 1;
  v9 = &v4[OBJC_IVAR____TtC11AppStoreKit10ShadowView_previousBounds];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v4[OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow];
  *v10 = 0u;
  v10[1] = 0u;
  v4[OBJC_IVAR____TtC11AppStoreKit10ShadowView_shouldAnimateBoundsChange] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id ShadowView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ShadowView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerRadius] = 0;
  v1[OBJC_IVAR____TtC11AppStoreKit10ShadowView_cornerStyle] = 1;
  v3 = &v1[OBJC_IVAR____TtC11AppStoreKit10ShadowView_previousBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = &v1[OBJC_IVAR____TtC11AppStoreKit10ShadowView_shadow];
  *v4 = 0u;
  v4[1] = 0u;
  v1[OBJC_IVAR____TtC11AppStoreKit10ShadowView_shouldAnimateBoundsChange] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ShadowView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id ShadowView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WordmarkView.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

char *WordmarkView.__allocating_init(frame:wordmark:referenceLineHeight:alignment:)(_BYTE *a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v18 = sub_1E18B8974(a1, v17, a3, a4, a5, a6, a7, v7, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v18;
}

char *WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)(_BYTE *a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1E18B86A0(a1, v20, a3, v7, v15, v16, a4, a5, a6, a7);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

id WordmarkView.show(wordmark:with:)(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView];
  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EE1E3200;
  v6 = sub_1E1AF5DBC();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:a2];

  [v4 setImage_];
  return [v2 setNeedsLayout];
}

id WordmarkView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *WordmarkView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4 = sub_1E18B83F8(1, 0, a1, a2, a3, a4, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id WordmarkView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WordmarkView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  sub_1E1AF71FC();
  __break(1u);
}

uint64_t WordmarkView.referenceLineHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  return sub_1E1300B24(v1 + v3, a1);
}

uint64_t sub_1E18B7598(uint64_t a1, void **a2)
{
  sub_1E1300B24(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v3[v4], v6);
  swift_endAccess();
  [v3 setNeedsLayout];
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t WordmarkView.referenceLineHeight.setter(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v1[v3], a1);
  swift_endAccess();
  [v1 setNeedsLayout];
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id (*WordmarkView.referenceLineHeight.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E18B76F0;
}

uint64_t WordmarkView.alignment.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id WordmarkView.alignment.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  v1[v3] = v2;
  return [v1 setNeedsLayout];
}

id (*WordmarkView.alignment.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E18B8B58;
}

BOOL WordmarkView.hasContent.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView) image];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Void __swiftcall WordmarkView.layoutSubviews()()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView];
  v2 = [v1 image];
  v3 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  v16 = v0[v3];
  [v0 frame];
  [v0 layoutMargins];
  sub_1E1AF6B0C();
  sub_1E18B79CC(v2, &v16, v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v1 setFrame_];
}

void sub_1E18B79CC(uint64_t a1, unsigned __int8 *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(sub_1E1AF127C() - 8);
  v20 = MEMORY[0x1EEE9AC00](a1);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  if (v18)
  {
    v30 = v19;
    [v18 size];
    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v29 = v13;
    v24 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_referenceLineHeight;
    swift_beginAccess();
    sub_1E1300B24(v6 + v24, v31);
    __swift_project_boxed_opaque_existential_1Tm(v31, v31[3]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v14 + 8))(v16, v29);
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1E1AF122C();
    (*(v17 + 8))(v22, v30);
  }

  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  if (v23 <= 1)
  {
    if (v23)
    {
      CGRectGetMidX(*&v25);
    }

    else
    {
      CGRectGetMinX(*&v25);
    }

    goto LABEL_13;
  }

  if (v23 == 2)
  {
    CGRectGetMaxX(*&v25);
LABEL_13:
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = a6;
    CGRectGetMinY(v33);
    sub_1E1AF6B1C();
    return;
  }

  if (v23 == 3)
  {
    CGRectGetMinX(*&v25);
  }

  else
  {
    CGRectGetMaxX(*&v25);
  }

  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetMinY(v32);
}

CGSize __swiftcall WordmarkView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = sub_1E1AF745C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF127C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v1 + OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView) image];
  if (v13)
  {
    v24 = v4;
    v14 = v13;
    [v13 size];
    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v15 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_referenceLineHeight;
    swift_beginAccess();
    sub_1E1300B24(v1 + v15, v25);
    __swift_project_boxed_opaque_existential_1Tm(v25, v25[3]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v17 = v16;
    (*(v5 + 8))(v7, v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1E1AF122C();
    v19 = v18;

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v19 = 0.0;
    v17 = 0.0;
  }

  if (v19 <= width)
  {
    v20 = v19;
  }

  else
  {
    v20 = width;
  }

  if (v17 <= height)
  {
    v21 = v17;
  }

  else
  {
    v21 = height;
  }

  result.height = v21;
  result.width = v20;
  return result;
}

double WordmarkView.intrinsicContentSize.getter()
{
  v1 = sub_1E1AF745C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF127C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(v0 + OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView) image];
  if (!v10)
  {
    return 0.0;
  }

  v17 = v1;
  v11 = v10;
  [v10 size];
  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v12 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  sub_1E1300B24(v0 + v12, v18);
  __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v2 + 8))(v4, v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_1E1AF122C();
  v14 = v13;

  (*(v6 + 8))(v9, v5);
  return v14;
}

uint64_t WordmarkView.updateAlignment(toMatch:)(uint64_t result)
{
  if (result <= 1)
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v3 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment;
      swift_beginAccess();
      v1[v3] = 1;
      return [v1 setNeedsLayout];
    }

    v4 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment;
    swift_beginAccess();
    v5 = 3;
    goto LABEL_11;
  }

  if (result == 2)
  {
    v4 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment;
    swift_beginAccess();
    v5 = 4;
LABEL_11:
    v1[v4] = v5;
    return [v1 setNeedsLayout];
  }

  if (result == 3 || result == 4)
  {
    v2 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment;
    swift_beginAccess();
    v1[v2] = 0;
    return [v1 setNeedsLayout];
  }

  return result;
}

id WordmarkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E18B83F8(char a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = type metadata accessor for WordmarkView();
  v15 = objc_allocWithZone(v14);
  v32[3] = MEMORY[0x1E69E63B0];
  v32[4] = MEMORY[0x1E69ABBA8];
  *v32 = a7;
  v16 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView;
  *&v15[v16] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  sub_1E1300B24(v32, &v15[OBJC_IVAR____TtC11AppStoreKit12WordmarkView_referenceLineHeight]);
  v15[OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment] = a2;
  v31.receiver = v15;
  v31.super_class = v14;
  v17 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a3, a4, a5, a6);
  v18 = *MEMORY[0x1E69DDCE0];
  v19 = *(MEMORY[0x1E69DDCE0] + 8);
  v20 = *(MEMORY[0x1E69DDCE0] + 16);
  v21 = *(MEMORY[0x1E69DDCE0] + 24);
  v22 = v17;
  [v22 setLayoutMargins_];
  v23 = [objc_opt_self() labelColor];
  [v22 setTintColor_];

  v24 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView;
  [v22 addSubview_];
  if ((a1 & 1) == 0)
  {
    v25 = [v22 traitCollection];
    v26 = *&v22[v24];
    if (qword_1EE1E31F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v27 = qword_1EE1E3200;
    v28 = sub_1E1AF5DBC();
    v29 = [objc_opt_self() imageNamed:v28 inBundle:v27 compatibleWithTraitCollection:v25];

    [v26 setImage_];
    [v22 setNeedsLayout];
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v22;
}

char *sub_1E18B86A0(_BYTE *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  ObjectType = swift_getObjectType();
  v38[3] = a5;
  v38[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a2, a5);
  LOBYTE(a5) = *a1;
  LOBYTE(a6) = *a3;
  v22 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView;
  *&a4[v22] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  sub_1E1300B24(v38, &a4[OBJC_IVAR____TtC11AppStoreKit12WordmarkView_referenceLineHeight]);
  a4[OBJC_IVAR____TtC11AppStoreKit12WordmarkView_alignment] = a6;
  v37.receiver = a4;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a7, a8, a9, a10);
  v24 = *MEMORY[0x1E69DDCE0];
  v25 = *(MEMORY[0x1E69DDCE0] + 8);
  v26 = *(MEMORY[0x1E69DDCE0] + 16);
  v27 = *(MEMORY[0x1E69DDCE0] + 24);
  v28 = v23;
  [v28 setLayoutMargins_];
  v29 = [objc_opt_self() labelColor];
  [v28 setTintColor_];

  v30 = OBJC_IVAR____TtC11AppStoreKit12WordmarkView_imageView;
  [v28 addSubview_];
  if ((a5 & 1) == 0)
  {
    v31 = [v28 traitCollection];
    v32 = *&v28[v30];
    if (qword_1EE1E31F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = qword_1EE1E3200;
    v34 = sub_1E1AF5DBC();
    v35 = [objc_opt_self() imageNamed:v34 inBundle:v33 compatibleWithTraitCollection:v31];

    [v32 setImage_];
    [v28 setNeedsLayout];
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v28;
}

char *sub_1E18B8974(_BYTE *a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(v22);
  (*(v19 + 16))(v21, a2, a9);
  return sub_1E18B86A0(a1, v21, a3, v23, a9, a10, a4, a5, a6, a7);
}

unint64_t sub_1E18B8AA4()
{
  result = qword_1ECEBA9C0;
  if (!qword_1ECEBA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA9C0);
  }

  return result;
}

void BorderView.borderColor.setter(void *a1)
{
  v3 = [v1 layer];
  if (a1)
  {
    v4 = [a1 CGColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setBorderColor_];
}

void BorderView.borderWidth.setter(double a1)
{
  v3 = [v1 layer];
  [v3 setBorderWidth_];
}

void BorderView.roundedCorners.setter(char a1)
{
  v3 = [v1 layer];
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v4 = 3;
      if ((a1 & 8) == 0)
      {
LABEL_13:
        if ((a1 & 4) != 0 && (v4 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v4 = 1;
    if ((a1 & 8) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((a1 & 2) != 0)
    {
      v4 = 2;
      if ((a1 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v4 = 0;
    if ((a1 & 8) != 0)
    {
LABEL_12:
      v4 |= 8uLL;
      goto LABEL_13;
    }
  }

  if ((a1 & 4) != 0)
  {
LABEL_15:
    v4 |= 4uLL;
  }

LABEL_16:
  v5 = v3;
  [v3 setMaskedCorners_];
}

id BorderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BorderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setUserInteractionEnabled_];
  return v9;
}

id BorderView.borderColor.getter()
{
  v1 = [v0 layer];
  v2 = [v1 borderColor];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v3;
}

void sub_1E18B8F84(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 layer];
  v4 = [v3 borderColor];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1E18B9018(void **a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 layer];
  if (v2)
  {
    v4 = [v2 CGColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setBorderColor_];
}

void (*BorderView.borderColor.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  v4 = [v3 borderColor];

  if (v4)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1E18B9164;
}

void sub_1E18B9164(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v6 = *a1;
  if (a2)
  {
    v3 = v6;
    v4 = [v2 layer];
    if (v6)
    {
      v5 = [v3 CGColor];
    }

    else
    {
      v5 = 0;
    }

    [v4 setBorderColor_];

    v6 = v3;
  }

  else
  {
    v3 = [v2 layer];
    if (v6)
    {
      v4 = [v6 CGColor];
    }

    else
    {
      v4 = 0;
    }

    [v3 setBorderColor_];
  }
}

double BorderView.borderWidth.getter()
{
  v1 = [v0 layer];
  [v1 borderWidth];
  v3 = v2;

  return v3;
}

void sub_1E18B92E0(double *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 layer];
  [v3 setBorderWidth_];
}

void (*BorderView.borderWidth.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = [v1 layer];
  [v3 borderWidth];
  v5 = v4;

  *a1 = v5;
  return sub_1E18B93C4;
}

void sub_1E18B93C4(uint64_t a1)
{
  v1 = *a1;
  v2 = [*(a1 + 8) layer];
  [v2 setBorderWidth_];
}

uint64_t BorderView.roundedCorners.getter()
{
  v1 = [v0 layer];
  v2 = [v1 maskedCorners];

  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      result = 3;
      if ((v2 & 8) == 0)
      {
LABEL_13:
        if ((v2 & 4) != 0 && (result & 4) == 0)
        {
          return result | 4;
        }

        return result;
      }

      goto LABEL_12;
    }

    result = 1;
    if ((v2 & 8) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((v2 & 2) != 0)
    {
      result = 2;
      if ((v2 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    result = 0;
    if ((v2 & 8) != 0)
    {
LABEL_12:
      result |= 8uLL;
      goto LABEL_13;
    }
  }

  if ((v2 & 4) != 0)
  {
    return result | 4;
  }

  return result;
}

void (*BorderView.roundedCorners.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 layer];
  v4 = [v3 maskedCorners];

  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = 2;
      if ((v4 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v5 = 0;
    if ((v4 & 8) != 0)
    {
LABEL_12:
      v5 |= 8uLL;
      goto LABEL_13;
    }

LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v4 & 2) == 0)
  {
    v5 = 1;
    if ((v4 & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v5 = 3;
  if ((v4 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v4 & 4) != 0 && (v5 & 4) == 0)
  {
LABEL_15:
    v5 |= 4uLL;
  }

LABEL_16:
  *a1 = v5;
  return sub_1E18B9590;
}

void sub_1E18B9590(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = [a1[1] layer];
  if (a2)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 2;
      if ((v3 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_10:
    if ((v3 & 2) != 0)
    {
      v5 = 3;
      if ((v3 & 8) == 0)
      {
LABEL_16:
        if ((v3 & 4) != 0 && (v5 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v5 = 1;
      if ((v3 & 8) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v5 |= 8uLL;
    goto LABEL_16;
  }

  if (v3)
  {
    goto LABEL_10;
  }

  if ((v3 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 0;
  if ((v3 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v3 & 4) != 0)
  {
LABEL_18:
    v5 |= 4uLL;
  }

LABEL_19:
  v6 = v4;
  [v4 setMaskedCorners_];
}

id BorderView.backgroundColor.getter()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

void BorderView.backgroundColor.setter(void *a1)
{
  sub_1E18B9904();
}

void (*BorderView.backgroundColor.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = [objc_opt_self() clearColor];
  return sub_1E18B97C4;
}

void sub_1E18B97C4(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_1E18B9904();
  }

  else
  {
    v2 = *a1;
    sub_1E18B9904();
  }
}

uint64_t (*BorderView.clipsToBounds.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = 0;
  return sub_1E18B98A8;
}

id BorderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E18B9904()
{
  swift_getObjectType();
  sub_1E1AF6FEC();
  sub_1E1AF772C();

  MEMORY[0x1E68FECA0](0xD00000000000002BLL, 0x80000001E1B7C7B0);
  sub_1E1AEFEBC();
}

uint64_t _s11AppStoreKit10BorderViewC13clipsToBoundsSbvs_0()
{
  swift_getObjectType();
  sub_1E1AF6FEC();
  sub_1E1AF772C();

  MEMORY[0x1E68FECA0](0xD000000000000027, 0x80000001E1B7C780);
  sub_1E1AEFEBC();
}

uint64_t LinkableTextAnnotationItem.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF380C();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3;
  sub_1E1AEFE9C();
  v20 = a1;
  sub_1E1AF381C();
  (*(v7 + 16))(v9, a2, v6);
  type metadata accessor for LinkableText();
  swift_allocObject();
  v13 = v18[1];
  v14 = LinkableText.init(deserializing:using:)(v12, v9);
  if (v13)
  {
    (*(v7 + 8))(a2, v6);
    (*(v10 + 8))(v20, v19);
    v15 = sub_1E1AEFEAC();
    return (*(*(v15 - 8) + 8))(v21, v15);
  }

  else
  {
    v17 = v14;
    (*(v7 + 8))(a2, v6);
    (*(v10 + 8))(v20, v19);
    result = type metadata accessor for LinkableTextAnnotationItem(0);
    *(v21 + *(result + 20)) = v17;
  }

  return result;
}

uint64_t ButtonAnnotationItem.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = sub_1E1AF39DC();
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v24 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v23 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  v27 = a3;
  sub_1E1AEFE9C();
  type metadata accessor for Action();
  sub_1E1AF381C();
  v14 = v25;
  v15 = static Action.makeInstance(byDeserializing:using:)(v13, a2);
  if (v14)
  {
    (*(v6 + 8))(a2, v26);
    v16 = *(v9 + 8);
    v16(a1, v8);
    v16(v13, v8);
    v17 = sub_1E1AEFEAC();
    return (*(*(v17 - 8) + 8))(v27, v17);
  }

  else
  {
    v19 = v15;
    v25 = *(v9 + 8);
    v25(v13, v8);
    v22 = type metadata accessor for ButtonAnnotationItem(0);
    *(v27 + *(v22 + 20)) = v19;
    v21[1] = type metadata accessor for Artwork();
    sub_1E1AF381C();
    v20 = v26;
    (*(v6 + 16))(v24, a2, v26);
    sub_1E18BB970(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    (*(v6 + 8))(a2, v20);
    result = (v25)(a1, v8);
    *(v27 + *(v22 + 24)) = v28;
  }

  return result;
}

uint64_t TextPairAnnotationItem.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v34 = a3;
  sub_1E1AEFE9C();
  v33 = type metadata accessor for TextPairAnnotationItem(0);
  v12 = 0xEB00000000747865;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v11, v5);
  if (v15)
  {
    v17 = (v34 + *(v33 + 20));
    *v17 = v13;
    v17[1] = v15;
    v12 = 0xEC00000074786554;
    sub_1E1AF381C();
    v18 = sub_1E1AF37CC();
    v20 = v19;
    v16(v9, v5);
    if (v20)
    {
      v21 = sub_1E1AF39DC();
      (*(*(v21 - 8) + 8))(v32, v21);
      result = (v16)(a1, v5);
      v23 = (v34 + *(v33 + 24));
      *v23 = v18;
      v23[1] = v20;
      return result;
    }

    v24 = 0x676E696C69617274;
  }

  else
  {
    v24 = 0x54676E696461656CLL;
  }

  v31 = v15;
  v25 = v33;
  v26 = sub_1E1AF5A7C();
  sub_1E18BB970(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
  swift_allocError();
  *v27 = v24;
  v27[1] = v12;
  v27[2] = v25;
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E69AB690], v26);
  swift_willThrow();
  v28 = sub_1E1AF39DC();
  (*(*(v28 - 8) + 8))(v32, v28);
  v16(a1, v5);
  v29 = sub_1E1AEFEAC();
  result = (*(*(v29 - 8) + 8))(v34, v29);
  if (v31)
  {
  }

  return result;
}

uint64_t SpacerAnnotationItem.init(deserializing:using:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E1AEFE9C();
  sub_1E1AF381C();
  sub_1E1501688();
  sub_1E1AF369C();
  v10 = sub_1E1AF39DC();
  (*(*(v10 - 8) + 8))(a2, v10);
  v11 = *(v7 + 8);
  v11(a1, v6);
  v11(v9, v6);
  v12 = v14[15];
  result = type metadata accessor for SpacerAnnotationItem(0);
  *(a3 + *(result + 20)) = v12;
  return result;
}

uint64_t TextEncapsulationAnnotationItem.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFE9C();
  v9 = type metadata accessor for TextEncapsulationAnnotationItem(0);
  sub_1E1AF381C();
  v10 = sub_1E1AF37CC();
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v8, v5);
  if (v12)
  {
    v14 = sub_1E1AF39DC();
    (*(*(v14 - 8) + 8))(v22, v14);
    result = (v13)(a1, v5);
    v16 = (a3 + *(v9 + 20));
    *v16 = v10;
    v16[1] = v12;
  }

  else
  {
    v17 = sub_1E1AF5A7C();
    sub_1E18BB970(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v18 = 1954047348;
    v18[1] = 0xE400000000000000;
    v18[2] = v9;
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E69AB690], v17);
    swift_willThrow();
    v19 = sub_1E1AF39DC();
    (*(*(v19 - 8) + 8))(v22, v19);
    v13(a1, v5);
    v20 = sub_1E1AEFEAC();
    return (*(*(v20 - 8) + 8))(a3, v20);
  }

  return result;
}

uint64_t ArtworkAnnotationItem.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF380C();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3;
  sub_1E1AEFE9C();
  type metadata accessor for Artwork();
  v20 = a1;
  sub_1E1AF381C();
  (*(v7 + 16))(v9, a2, v6);
  v13 = v18[1];
  v14 = Artwork.__allocating_init(deserializing:using:)(v12, v9);
  if (v13)
  {
    (*(v7 + 8))(a2, v6);
    (*(v10 + 8))(v20, v19);
    v15 = sub_1E1AEFEAC();
    return (*(*(v15 - 8) + 8))(v21, v15);
  }

  else
  {
    v17 = v14;
    (*(v7 + 8))(a2, v6);
    (*(v10 + 8))(v20, v19);
    result = type metadata accessor for ArtworkAnnotationItem(0);
    *(v21 + *(result + 20)) = v17;
  }

  return result;
}

uint64_t AnyAnnotationItem.id.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1E18BAB54()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1E18BABE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[0] = a3;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF380C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  sub_1E1AEFE9C();
  v21 = a1;
  sub_1E1AF381C();
  (*(v8 + 16))(v10, a2, v7);
  type metadata accessor for LinkableText();
  swift_allocObject();
  v14 = v19[1];
  v15 = LinkableText.init(deserializing:using:)(v13, v10);
  if (v14)
  {
    (*(v8 + 8))(a2, v7);
    (*(v11 + 8))(v21, v20);
    v16 = sub_1E1AEFEAC();
    return (*(*(v16 - 8) + 8))(v22, v16);
  }

  else
  {
    v18 = v15;
    (*(v8 + 8))(a2, v7);
    result = (*(v11 + 8))(v21, v20);
    *(v22 + *(v19[0] + 20)) = v18;
  }

  return result;
}

uint64_t ButtonAnnotationItem.init(action:leadingArtwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E1AEFE9C();
  result = type metadata accessor for ButtonAnnotationItem(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t sub_1E18BAEC4(void (*a1)(void))
{
  a1(0);
}

uint64_t ButtonAnnotationItem.leadingArtwork.getter()
{
  type metadata accessor for ButtonAnnotationItem(0);
}

uint64_t TextPairAnnotationItem.init(leadingText:trailingText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1E1AEFE9C();
  result = type metadata accessor for TextPairAnnotationItem(0);
  v11 = (a5 + *(result + 20));
  *v11 = a1;
  v11[1] = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t TextPairAnnotationItem.trailingText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextPairAnnotationItem(0) + 24));

  return v1;
}

uint64_t TextEncapsulationAnnotationItem.init(text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E1AEFE9C();
  result = type metadata accessor for TextEncapsulationAnnotationItem(0);
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t sub_1E18BB080(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_1E18BB0F8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_1E1AEFE9C();
  result = a2(0);
  *(a3 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1E18BB158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v21 = a2;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E1AF380C();
  v10 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4;
  sub_1E1AEFE9C();
  type metadata accessor for Artwork();
  v13 = a1;
  v14 = v21;
  sub_1E1AF381C();
  (*(v7 + 16))(v9, v14, v6);
  v15 = v22;
  v16 = Artwork.__allocating_init(deserializing:using:)(v12, v9);
  if (v15)
  {
    (*(v7 + 8))(v14, v6);
    (*(v10 + 8))(v13, v23);
    v17 = sub_1E1AEFEAC();
    return (*(*(v17 - 8) + 8))(v24, v17);
  }

  else
  {
    v19 = v16;
    (*(v7 + 8))(v14, v6);
    result = (*(v10 + 8))(v13, v23);
    *(v24 + *(v20 + 20)) = v19;
  }

  return result;
}

AppStoreKit::SpacerAnnotationItem::Size_optional __swiftcall SpacerAnnotationItem.Size.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SpacerAnnotationItem.Size.rawValue.getter()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_1E18BB468(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E18BB50C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18BB58C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E18BB5F8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18BB674@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E18BB6D4(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C616D73;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SpacerAnnotationItem.init(size:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1E1AEFE9C();
  result = type metadata accessor for SpacerAnnotationItem(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t SpacerAnnotationItem.size.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SpacerAnnotationItem(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1E18BB77C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFE9C();
  sub_1E1AF381C();
  sub_1E1501688();
  sub_1E1AF369C();
  v12 = sub_1E1AF39DC();
  (*(*(v12 - 8) + 8))(a2, v12);
  v13 = *(v9 + 8);
  v13(a1, v8);
  result = v13(v11, v8);
  *(a4 + *(a3 + 20)) = v16;
  return result;
}

uint64_t sub_1E18BB970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E18BBA18(uint64_t a1)
{
  *(a1 + 8) = sub_1E18BB970(qword_1EE1EA688, type metadata accessor for LinkableTextAnnotationItem);
  result = sub_1E18BB970(&qword_1EE1EA680, type metadata accessor for LinkableTextAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E18BBA9C(uint64_t a1)
{
  *(a1 + 8) = sub_1E18BB970(qword_1EE1EDBF0, type metadata accessor for ButtonAnnotationItem);
  result = sub_1E18BB970(&qword_1EE1EDBE8, type metadata accessor for ButtonAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E18BBB20(uint64_t a1)
{
  *(a1 + 8) = sub_1E18BB970(&qword_1ECEBA9C8, type metadata accessor for TextPairAnnotationItem);
  result = sub_1E18BB970(&qword_1ECEBA9D0, type metadata accessor for TextPairAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E18BBBA4(uint64_t a1)
{
  *(a1 + 8) = sub_1E18BB970(qword_1EE1D5FB8, type metadata accessor for TextEncapsulationAnnotationItem);
  result = sub_1E18BB970(&qword_1EE1D5FB0, type metadata accessor for TextEncapsulationAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E18BBC28(uint64_t a1)
{
  *(a1 + 8) = sub_1E18BB970(&qword_1ECEBA9D8, type metadata accessor for ArtworkAnnotationItem);
  result = sub_1E18BB970(&qword_1ECEBA9E0, type metadata accessor for ArtworkAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E18BBCB0()
{
  result = qword_1ECEBA9E8;
  if (!qword_1ECEBA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA9E8);
  }

  return result;
}

uint64_t sub_1E18BBD04(uint64_t a1)
{
  *(a1 + 8) = sub_1E18BB970(qword_1EE1ED5A0, type metadata accessor for SpacerAnnotationItem);
  result = sub_1E18BB970(&qword_1EE1ED598, type metadata accessor for SpacerAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

void sub_1E18BBE14()
{
  sub_1E1AEFEAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Action();
    if (v1 <= 0x3F)
    {
      sub_1E1433960();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E18BBED8()
{
  result = sub_1E1AEFEAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AEFEAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E1AEFEAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E18BC2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1E1AEFEAC();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E18BC378()
{
  result = sub_1E1AEFEAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ContentRestrictionReasonsProvider.init(restrictions:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Restrictions();
  a2[3] = result;
  a2[4] = &protocol witness table for Restrictions;
  *a2 = a1;
  return result;
}

uint64_t ContentRestrictionReasonsProvider.addExpensiveMetricsFields(into:using:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v4 = sub_1E1AF4A0C();
  if (!*(v4 + 16))
  {
  }

  v5 = sub_1E13018F8(0x6973736572706D69, 0xEB00000000736E6FLL);
  if ((v6 & 1) == 0)
  {
  }

  sub_1E137A5C4(*(v4 + 56) + 32 * v5, v11);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4738);
  result = swift_dynamicCast();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v10[2] = v2;
    v9 = sub_1E14A0E74(sub_1E18BC858, v10, v10[5]);

    v11[3] = v7;
    v11[0] = v9;
    __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1E1AF4A1C();
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

unint64_t sub_1E18BC5F4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 16);

  if (v6)
  {
    result = sub_1E13018F8(0x6449656C646E7562, 0xE800000000000000);
    if (v8)
    {
      sub_1E137A5C4(*(v5 + 56) + 32 * result, &v14);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v5 + 16) && (v9 = sub_1E13018F8(0x52746E65746E6F63, 0xED0000676E697461), (v10 & 1) != 0) && (sub_1E137A5C4(*(v5 + 56) + 32 * v9, &v14), (swift_dynamicCast() & 1) != 0))
        {
          __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
          v11 = RestrictionsProtocol.isAgeRestricted(bundleId:contentRating:)(v13[0], v13[0].value._countAndFlagsBits);

          if (v11)
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
            *&v14 = &unk_1F5C2DC60;
            sub_1E1301CF0(&v14, v13);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v16 = v5;
            result = sub_1E159827C(v13, 0xD000000000000019, 0x80000001E1B74F90, isUniquelyReferenced_nonNull_native);
            v5 = v16;
          }
        }

        else
        {
        }
      }
    }
  }

  *a3 = v5;
  return result;
}

uint64_t sub_1E18BC7DC(void *a1)
{
  ContentRestrictionReasonsProvider.addExpensiveMetricsFields(into:using:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t UserContentRestrictionProvider.init(restrictions:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for Restrictions();
  a2[3] = result;
  a2[4] = &protocol witness table for Restrictions;
  *a2 = a1;
  return result;
}

uint64_t UserContentRestrictionProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 6645601;
  *(inited + 40) = 0xE300000000000000;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v4);
  (*(v5 + 8))(v4, v5);
  *(inited + 48) = sub_1E1AF742C();
  *(inited + 56) = v6;
  v7 = sub_1E13017E4(inited);
  swift_setDeallocating();
  sub_1E18BCA9C(inited + 32);
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
  v9[0] = v7;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1E1AF4A1C();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1E18BCA24(uint64_t a1)
{
  UserContentRestrictionProvider.addExpensiveMetricsFields(into:using:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1E18BCA9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppEventSearchResult.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v78 = sub_1E1AEFEAC();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v92 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v73 - v8;
  v89 = sub_1E1AF380C();
  v91 = *(v89 - 8);
  v10 = MEMORY[0x1EEE9AC00](v89);
  v79 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v83 = &v73 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v82 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v81 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v85 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v73 - v23;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v87 = v5;
  v25 = *(v5 + 16);
  v26 = v9;
  v27 = v9;
  v28 = v4;
  v25(v27, a2, v4);
  v88 = v24;
  sub_1E1AF464C();
  v29 = v92;
  v90 = a2;
  v25(v92, a2, v28);
  type metadata accessor for MixedMediaLockup();
  sub_1E1AF381C();
  v93 = v28;
  v25(v26, v29, v28);
  sub_1E18BEA08(&qword_1EE1F29C8, type metadata accessor for MixedMediaLockup);
  v30 = v17;
  sub_1E1AF464C();
  if (!v102[0])
  {
    v43 = sub_1E1AF5A7C();
    sub_1E18BEA08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v44 = 0x70756B636F6CLL;
    v45 = v86;
    v44[1] = 0xE600000000000000;
    v44[2] = v45;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x1E69AB690], v43);
    swift_willThrow();
    v40 = v87 + 8;
    v46 = *(v87 + 8);
    v47 = v93;
    v46(v90, v93);
    (*(v91 + 8))(v94, v89);
    v46(v29, v47);
LABEL_7:
    sub_1E1308058(v88, &unk_1ECEB1770);
    return v40;
  }

  v31 = v86;
  v80 = v102[0];
  type metadata accessor for AppEvent();
  sub_1E1AF381C();
  v74 = v25;
  v25(v26, v29, v93);
  sub_1E18BEA08(&qword_1EE1E10D8, type metadata accessor for AppEvent);
  sub_1E1AF464C();
  if (!v102[0])
  {
    v48 = sub_1E1AF5A7C();
    sub_1E18BEA08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v49 = 0x746E657645707061;
    v49[1] = 0xE800000000000000;
    v49[2] = v31;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x1E69AB690], v48);
    swift_willThrow();

    v50 = *(v87 + 8);
    v40 = v93;
    v50(v90, v93);
    (*(v91 + 8))(v94, v89);
    v50(v29, v40);
    goto LABEL_7;
  }

  v73 = v26;
  v75 = v102[0];
  v32 = v82;
  v33 = v94;
  sub_1E1AF381C();
  v34 = sub_1E1AF370C();
  v35 = v91 + 8;
  v36 = *(v91 + 8);
  v37 = v89;
  v36(v32, v89);
  v38 = v83;
  sub_1E1AF381C();
  sub_1E134B92C();
  v39 = v84;
  sub_1E1AF36AC();
  v86 = v39;
  if (v39)
  {

    v40 = v38;
    v41 = *(v87 + 8);
    v42 = v93;
    v41(v90, v93);
    v36(v33, v37);
    v36(v40, v37);
    v41(v92, v42);
    sub_1E1308058(v88, &unk_1ECEB1770);
  }

  else
  {
    LODWORD(v82) = v34;
    v36(v38, v37);
    LODWORD(v84) = LOBYTE(v102[0]);
    v51 = v79;
    sub_1E1AF381C();
    v52 = sub_1E1AF37CC();
    v54 = v37;
    v55 = v92;
    if (v53)
    {
      v100 = v52;
      v101 = v53;
    }

    else
    {
      v56 = v76;
      sub_1E1AEFE9C();
      v91 = sub_1E1AEFE7C();
      v58 = v57;
      (*(v77 + 8))(v56, v78);
      v100 = v91;
      v101 = v58;
      v55 = v92;
    }

    sub_1E1AF6F6C();
    v36(v51, v54);
    v59 = type metadata accessor for Action();
    sub_1E1AF381C();
    v60 = static Action.tryToMakeInstance(byDeserializing:using:)(v30, v55);
    v91 = v35;
    v36(v30, v54);
    sub_1E134FD1C(v88, v85, &unk_1ECEB1770);
    type metadata accessor for SearchAdOpportunity();
    sub_1E1AF381C();
    v74(v73, v90, v93);
    sub_1E18BEA08(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity);
    sub_1E1AF464C();
    v83 = v102[7];
    type metadata accessor for AppEventSearchResult();
    v40 = swift_allocObject();
    *(v40 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_shouldDisplayAppEvent) = 0;
    *(v40 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_lockup) = v80;
    *(v40 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent) = v75;
    *(v40 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_alwaysShowAppEvent) = v82 & 1;
    *(v40 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_clickAction) = v60;
    sub_1E134FD1C(v102, &v100, &unk_1ECEB5670);
    if (v60)
    {
      v82 = sub_1E18BEA08(qword_1EE1D2F80, type metadata accessor for Action);
    }

    else
    {
      v59 = 0;
      v82 = 0;
    }

    v61 = v87;
    v87 = v59;
    sub_1E134FD1C(v85, v81, &unk_1ECEB1770);
    *(v40 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_1E134FD1C(&v100, &v97, &unk_1ECEB5670);
    v62 = v90;
    if (*(&v98 + 1))
    {
      v63 = v98;
      *(v40 + 24) = v97;
      *(v40 + 40) = v63;
      *(v40 + 56) = v99;
    }

    else
    {

      v64 = v76;
      sub_1E1AEFE9C();
      v65 = sub_1E1AEFE7C();
      v67 = v66;
      (*(v77 + 8))(v64, v78);
      v95 = v65;
      v96 = v67;
      sub_1E1AF6F6C();
      sub_1E1308058(&v97, &unk_1ECEB5670);
    }

    v68 = *(v61 + 8);
    v69 = v93;
    v68(v62, v93);
    v36(v94, v89);
    sub_1E1308058(&v100, &unk_1ECEB5670);
    sub_1E1308058(v85, &unk_1ECEB1770);
    sub_1E1308058(v102, &unk_1ECEB5670);
    v68(v92, v69);
    sub_1E1308058(v88, &unk_1ECEB1770);
    *(v40 + 64) = v60;
    *(v40 + 72) = 0;
    v70 = v87;
    *(v40 + 80) = 0;
    *(v40 + 88) = v70;
    *(v40 + 96) = v82;
    sub_1E134B7C8(v81, v40 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
    *(v40 + 17) = 6;
    *(v40 + 16) = v84;
    v71 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v40 + v71) = v83;
  }

  return v40;
}

uint64_t sub_1E18BD97C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E18BD9E0@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppEventSearchResult();
  *a1 = v1;
}

uint64_t sub_1E18BDA24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent);
  *(v1 + 16) = xmmword_1E1B02CC0;
  v3 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8AppEvent_lockup);
  *(v1 + 56) = type metadata accessor for Lockup();
  *(v1 + 64) = sub_1E18BEA08(qword_1EE1E4F68, type metadata accessor for Lockup);
  *(v1 + 32) = v3;

  return v1;
}

void sub_1E18BDAE0(char *a1@<X8>)
{
  if (*(v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t AppEventSearchResult.__allocating_init(id:lockup:appEvent:alwaysShowAppEvent:clickAction:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v37 = a8;
  v38 = a7;
  v14 = sub_1E1AEFEAC();
  v36 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  v20 = swift_allocObject();
  v21 = *a6;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_shouldDisplayAppEvent) = 0;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_lockup) = a2;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent) = a3;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_alwaysShowAppEvent) = a4;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_clickAction) = a5;
  sub_1E134FD1C(a1, v44, &unk_1ECEB5670);
  if (a5)
  {
    v22 = type metadata accessor for Action();
    v23 = sub_1E18BEA08(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = v38;
  sub_1E134FD1C(v38, v19, &unk_1ECEB1770);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v44, &v41, &unk_1ECEB5670);
  if (*(&v42 + 1))
  {
    v25 = v42;
    *(v20 + 24) = v41;
    *(v20 + 40) = v25;
    *(v20 + 56) = v43;
  }

  else
  {

    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v14;
    v28 = v22;
    v29 = v21;
    v30 = a1;
    v32 = v31;
    (*(v36 + 8))(v16, v27);
    v39 = v26;
    v40 = v32;
    v24 = v38;
    a1 = v30;
    v21 = v29;
    v22 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v41, &unk_1ECEB5670);
  }

  sub_1E1308058(v24, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v44, &unk_1ECEB5670);
  *(v20 + 64) = a5;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = v22;
  *(v20 + 96) = v23;
  sub_1E134B7C8(v19, v20 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v20 + 17) = 6;
  *(v20 + 16) = v21;
  v33 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v20 + v33) = v37;
  return v20;
}

uint64_t AppEventSearchResult.init(id:lockup:appEvent:alwaysShowAppEvent:clickAction:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v35 = a8;
  v36 = a7;
  v16 = sub_1E1AEFEAC();
  v33 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v32 - v20;
  v34 = *a6;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_shouldDisplayAppEvent) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_lockup) = a2;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent) = a3;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_alwaysShowAppEvent) = a4;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_clickAction) = a5;
  sub_1E134FD1C(a1, v45, &unk_1ECEB5670);
  if (a5)
  {
    v22 = type metadata accessor for Action();
    v23 = sub_1E18BEA08(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = v36;
  sub_1E134FD1C(v36, v21, &unk_1ECEB1770);
  *(v9 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v45, &v39, &unk_1ECEB5670);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {

    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v26 = a1;
    v28 = v27;
    (*(v33 + 8))(v18, v16);
    v37 = v25;
    v38 = v28;
    v24 = v36;
    a1 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670);
  }

  sub_1E1308058(v24, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v45, &unk_1ECEB5670);
  v29 = v43;
  *(v9 + 24) = v42;
  *(v9 + 40) = v29;
  *(v9 + 56) = v44;
  *(v9 + 64) = a5;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = v22;
  *(v9 + 96) = v23;
  sub_1E134B7C8(v21, v9 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v9 + 17) = 6;
  *(v9 + 16) = v34;
  v30 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v9 + v30) = v35;

  return v9;
}

uint64_t type metadata accessor for AppEventSearchResult()
{
  result = qword_1EE1E17A0;
  if (!qword_1EE1E17A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18BE26C()
{
  v25 = sub_1E1AEFEAC();
  v24 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  sub_1E134E724(v0 + 24, v33);
  v9 = *(v0 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_lockup);
  v26 = *(v0 + 16);
  sub_1E134FD1C(v9 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v8, &unk_1ECEB1770);
  v10 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  v11 = *(v0 + v10);
  type metadata accessor for AppSearchResult();
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup) = v9;
  swift_beginAccess();
  *(v12 + v13) = 1;
  sub_1E134FD1C(v33, v32, &unk_1ECEB5670);
  v14 = *(v9 + 264);
  if (v14)
  {
    v15 = type metadata accessor for Action();
    v16 = sub_1E18BEA08(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  sub_1E134FD1C(v8, v6, &unk_1ECEB1770);
  *(v12 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v32, &v29, &unk_1ECEB5670);
  if (*(&v30 + 1))
  {
    v17 = v30;
    *(v12 + 24) = v29;
    *(v12 + 40) = v17;
    *(v12 + 56) = v31;
  }

  else
  {

    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v20 = v19;
    (*(v24 + 8))(v2, v25);
    v27 = v18;
    v28 = v20;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  sub_1E1308058(v32, &unk_1ECEB5670);
  sub_1E1308058(v8, &unk_1ECEB1770);
  sub_1E1308058(v33, &unk_1ECEB5670);
  *(v12 + 64) = v14;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = v15;
  *(v12 + 96) = v16;
  sub_1E134B7C8(v6, v12 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v12 + 17) = 0;
  *(v12 + 16) = v26;
  v21 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v12 + v21) = v11;
  return v12;
}

uint64_t sub_1E18BE6A8()
{
}

uint64_t AppEventSearchResult.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t AppEventSearchResult.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18BE8A8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppEventSearchResult();
  *a1 = v3;
}

uint64_t sub_1E18BE8F0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = *(*(v1 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_appEvent) + OBJC_IVAR____TtC11AppStoreKit8AppEvent_lockup);
  *(v2 + 56) = type metadata accessor for Lockup();
  *(v2 + 64) = sub_1E18BEA08(qword_1EE1E4F68, type metadata accessor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_1E18BE9B0(uint64_t a1)
{
  result = sub_1E18BEA08(&qword_1ECEBAA10, type metadata accessor for AppEventSearchResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E18BEA08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PreorderStatus.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1E18BED30();
  sub_1E1AF36AC();
  v7 = sub_1E1AF39DC();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_1E1AF380C();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

unint64_t sub_1E18BED30()
{
  result = qword_1ECEBAA18;
  if (!qword_1ECEBAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAA18);
  }

  return result;
}

AppStoreKit::PreorderStatus_optional __swiftcall PreorderStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PreorderStatus.rawValue.getter()
{
  v1 = 0x726F687475416F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6F54656C62616E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C65636E6163;
  }
}

uint64_t sub_1E18BEE54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F687475416F6ELL;
  v4 = 0xEF6E6F6974617A69;
  if (v2 != 1)
  {
    v3 = 0x6F54656C62616E75;
    v4 = 0xEE006C65636E6143;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64656C65636E6163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x726F687475416F6ELL;
  v8 = 0xEF6E6F6974617A69;
  if (*a2 != 1)
  {
    v7 = 0x6F54656C62616E75;
    v8 = 0xEE006C65636E6143;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64656C65636E6163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

unint64_t sub_1E18BEF8C()
{
  result = qword_1ECEBAA20;
  if (!qword_1ECEBAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAA20);
  }

  return result;
}

uint64_t sub_1E18BEFE0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18BF09C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E18BF144()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E18BF208(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEF6E6F6974617A69;
  v5 = 0x726F687475416F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6F54656C62616E75;
    v4 = 0xEE006C65636E6143;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656C65636E6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E18BF280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1E18BED30();
  sub_1E1AF36AC();
  v7 = sub_1E1AF39DC();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_1E1AF380C();
  result = (*(*(v8 - 8) + 8))(a1, v8);
  if (!v3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1E18BF430()
{
  v1 = 0x726579616C70;
  if (*v0 != 1)
  {
    v1 = 0x746361746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736567617373656DLL;
  }
}

uint64_t sub_1E18BF488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E18C1950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E18BF4B0(uint64_t a1)
{
  v2 = sub_1E18C084C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E18BF4EC(uint64_t a1)
{
  v2 = sub_1E18C084C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E18BF528()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_1E18BF56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
  if (v6 || (sub_1E1AF74AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E1B781E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();

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

uint64_t sub_1E18BF658(uint64_t a1)
{
  v2 = sub_1E18C08A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E18BF694(uint64_t a1)
{
  v2 = sub_1E18C08A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E18BF6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E1AF74AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E18BF77C(uint64_t a1)
{
  v2 = sub_1E18C0948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E18BF7B8(uint64_t a1)
{
  v2 = sub_1E18C0948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E18BF7F4(uint64_t a1)
{
  v2 = sub_1E18C08F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E18BF830(uint64_t a1)
{
  v2 = sub_1E18C08F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GameCenterInvitePlayerAction.InvitationType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAA28);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAA30);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAA38);
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAA40);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = v1[1];
  v32 = *v1;
  v33 = v14;
  v15 = v1[2];
  v25[1] = v1[3];
  v25[2] = v15;
  v16 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E18C084C();
  sub_1E1AF76EC();
  if (!v16)
  {
    v37 = 0;
    sub_1E18C0948();
    v21 = v35;
    sub_1E1AF739C();
    sub_1E1AF73AC();
    (*(v26 + 8))(v10, v8);
    return (*(v34 + 8))(v13, v21);
  }

  if (v16 == 1)
  {
    v38 = 1;
    sub_1E18C08F4();
    v17 = v35;
    sub_1E1AF739C();
    v18 = v28;
    sub_1E1AF73DC();
    v19 = *(v27 + 8);
    v20 = v7;
LABEL_8:
    v19(v20, v18);
    return (*(v34 + 8))(v13, v17);
  }

  v41 = 2;
  sub_1E18C08A0();
  v23 = v29;
  v17 = v35;
  sub_1E1AF739C();
  v40 = 0;
  v18 = v31;
  v24 = v36;
  sub_1E1AF73DC();
  if (!v24)
  {
    v39 = 1;
    sub_1E1AF73DC();
    v19 = *(v30 + 8);
    v20 = v23;
    goto LABEL_8;
  }

  (*(v30 + 8))(v23, v18);
  return (*(v34 + 8))(v13, v17);
}

uint64_t GameCenterInvitePlayerAction.InvitationType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAA68);
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v46 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAA70);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAA78);
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAA80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  v13 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_1E18C084C();
  v14 = v56;
  sub_1E1AF76CC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v47 = 0;
  v48 = v10;
  v15 = v53;
  v16 = v54;
  v17 = v55;
  v56 = v9;
  v18 = sub_1E1AF738C();
  v19 = (2 * *(v18 + 16)) | 1;
  v58 = v18;
  v59 = v18 + 32;
  v60 = 0;
  v61 = v19;
  v20 = sub_1E1696534();
  if (v20 == 3 || v60 != v61 >> 1)
  {
    v24 = sub_1E1AF708C();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7710);
    *v26 = &type metadata for GameCenterInvitePlayerAction.InvitationType;
    v27 = v56;
    sub_1E1AF732C();
    sub_1E1AF707C();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    goto LABEL_9;
  }

  v62 = v20;
  if (!v20)
  {
    v63 = 0;
    sub_1E18C0948();
    v27 = v56;
    v29 = v47;
    sub_1E1AF731C();
    if (!v29)
    {
      v30 = sub_1E1AF733C();
      v31 = 0;
      v42 = v41;
      v47 = v30;
      (*(v49 + 8))(v8, v6);
      (*(v48 + 8))(v12, v27);
LABEL_19:
      swift_unknownObjectRelease();
      v45 = 0;
      v36 = v17;
      goto LABEL_20;
    }

LABEL_9:
    (*(v48 + 8))(v12, v27);
    goto LABEL_10;
  }

  if (v20 != 1)
  {
    v63 = 2;
    sub_1E18C08A0();
    v32 = v16;
    v33 = v56;
    v34 = v47;
    sub_1E1AF731C();
    if (v34)
    {
      (*(v48 + 8))(v12, v33);
      goto LABEL_10;
    }

    v36 = v17;
    v63 = 0;
    v37 = v50;
    v38 = sub_1E1AF735C();
    v39 = v48;
    v47 = v38;
    v53 = v43;
    v63 = 1;
    v31 = sub_1E1AF735C();
    v45 = v44;
    (*(v52 + 8))(v32, v37);
    (*(v39 + 8))(v12, v33);
    swift_unknownObjectRelease();
    v42 = v53;
LABEL_20:
    *v36 = v47;
    *(v36 + 8) = v42;
    *(v36 + 16) = v31;
    *(v36 + 24) = v45;
    *(v36 + 32) = v62;
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v63 = 1;
  sub_1E18C08F4();
  v21 = v5;
  v22 = v56;
  v23 = v47;
  sub_1E1AF731C();
  if (!v23)
  {
    v35 = sub_1E1AF735C();
    v31 = 0;
    v42 = v40;
    v47 = v35;
    (*(v51 + 8))(v21, v15);
    (*(v48 + 8))(v12, v56);
    goto LABEL_19;
  }

  (*(v48 + 8))(v12, v22);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t GameCenterInvitePlayerAction.invitationType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 16);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;
  return sub_1E18C099C(v3, v4, v5, v6, v7);
}

char *GameCenterInvitePlayerAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v34 = *v4;
  v35 = v3;
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v36 = sub_1E1AF380C();
  v13 = *(v36 - 8);
  v14 = MEMORY[0x1EEE9AC00](v36);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v38 = a1;
  sub_1E1AF381C();
  v18 = *(v8 + 16);
  v37 = a2;
  v42 = v7;
  v31 = v18;
  v18(v12, a2, v7);
  MEMORY[0x1E68FE9D0](v12);
  sub_1E18C0A00();
  v19 = v35;
  sub_1E1AF377C();
  if (v19)
  {

    (*(v8 + 8))(v37, v42);
    v20 = *(v13 + 8);
    v21 = v36;
    v20(v38, v36);
    v20(v17, v21);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v36;
    v34 = *(v13 + 8);
    v35 = v13 + 8;
    v34(v17, v36);

    v23 = v41;
    v24 = &v4[OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType];
    v25 = v40;
    *v24 = v39;
    *(v24 + 1) = v25;
    v24[32] = v23;
    v26 = v32;
    v27 = v38;
    (*(v13 + 16))(v32, v38, v22);
    v28 = v33;
    v29 = v37;
    v31(v33, v37, v42);
    v17 = Action.init(deserializing:using:)(v26, v28);
    (*(v8 + 8))(v29, v42);
    v34(v27, v22);
  }

  return v17;
}

unint64_t sub_1E18C084C()
{
  result = qword_1ECEBAA48;
  if (!qword_1ECEBAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAA48);
  }

  return result;
}

unint64_t sub_1E18C08A0()
{
  result = qword_1ECEBAA50;
  if (!qword_1ECEBAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAA50);
  }

  return result;
}

unint64_t sub_1E18C08F4()
{
  result = qword_1ECEBAA58;
  if (!qword_1ECEBAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAA58);
  }

  return result;
}

unint64_t sub_1E18C0948()
{
  result = qword_1ECEBAA60;
  if (!qword_1ECEBAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAA60);
  }

  return result;
}

uint64_t sub_1E18C099C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

unint64_t sub_1E18C0A00()
{
  result = qword_1ECEBAA88;
  if (!qword_1ECEBAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAA88);
  }

  return result;
}

void *GameCenterInvitePlayerAction.__allocating_init(invitationType:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v30 - v9;
  v11 = sub_1E1AF3E1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *(a1 + 32);
  v17 = v15 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType;
  v18 = *(a1 + 16);
  *v17 = *a1;
  *(v17 + 1) = v18;
  v17[32] = v16;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  (*(v12 + 16))(v14, a2, v11);
  v19 = sub_1E1AF46DC();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = (v15 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = v15 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v34, &v31);
  if (*(&v32 + 1))
  {
    v22 = v32;
    *v21 = v31;
    *(v21 + 1) = v22;
    *(v21 + 4) = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v24 = v4;
    v25 = v23;
    v26 = v5;
    v28 = v27;
    (*(v26 + 8))(v7, v24);
    v30[1] = v25;
    v30[2] = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670);
  }

  (*(v12 + 8))(a2, v11);
  sub_1E1308058(v34, &unk_1ECEB5670);
  sub_1E134B7C8(v10, v15 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v15[2] = 0xD000000000000020;
  v15[3] = 0x80000001E1B7C860;
  v15[4] = 0;
  v15[5] = 0;
  (*(v12 + 32))(v15 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v14, v11);
  return v15;
}

void *GameCenterInvitePlayerAction.init(invitationType:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v28 - v11;
  v13 = sub_1E1AF3E1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v15) = *(a1 + 32);
  v17 = v3 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType;
  v18 = *(a1 + 16);
  *v17 = *a1;
  *(v17 + 1) = v18;
  v17[32] = v15;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  (*(v14 + 16))(v16, a2, v13);
  v19 = sub_1E1AF46DC();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = (v3 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  sub_1E138853C(v35, &v29);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v22 = v7;
    v24 = v23;
    (*(v22 + 8))(v9, v6);
    v28[1] = v21;
    v28[2] = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  (*(v14 + 8))(a2, v13);
  sub_1E1308058(v35, &unk_1ECEB5670);
  v25 = v3 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v25 + 4) = v34;
  v26 = v33;
  *v25 = v32;
  *(v25 + 1) = v26;
  sub_1E134B7C8(v12, v3 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v3[2] = 0xD000000000000020;
  v3[3] = 0x80000001E1B7C860;
  v3[4] = 0;
  v3[5] = 0;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

uint64_t GameCenterInvitePlayerAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  sub_1E18C13AC(*(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType), *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 32));
  return v0;
}

uint64_t GameCenterInvitePlayerAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  sub_1E18C13AC(*(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType), *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 16), *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 24), *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterInvitePlayerAction_invitationType + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1E18C13AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t type metadata accessor for GameCenterInvitePlayerAction()
{
  result = qword_1EE1E9B88;
  if (!qword_1EE1E9B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E18C1534()
{
  result = qword_1ECEBAA90;
  if (!qword_1ECEBAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAA90);
  }

  return result;
}

unint64_t sub_1E18C158C()
{
  result = qword_1ECEBAA98;
  if (!qword_1ECEBAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAA98);
  }

  return result;
}

unint64_t sub_1E18C15E4()
{
  result = qword_1ECEBAAA0;
  if (!qword_1ECEBAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAA0);
  }

  return result;
}

unint64_t sub_1E18C163C()
{
  result = qword_1ECEBAAA8;
  if (!qword_1ECEBAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAA8);
  }

  return result;
}

unint64_t sub_1E18C1694()
{
  result = qword_1ECEBAAB0;
  if (!qword_1ECEBAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAB0);
  }

  return result;
}

unint64_t sub_1E18C16EC()
{
  result = qword_1ECEBAAB8;
  if (!qword_1ECEBAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAB8);
  }

  return result;
}

unint64_t sub_1E18C1744()
{
  result = qword_1ECEBAAC0;
  if (!qword_1ECEBAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAC0);
  }

  return result;
}

unint64_t sub_1E18C179C()
{
  result = qword_1ECEBAAC8;
  if (!qword_1ECEBAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAC8);
  }

  return result;
}

unint64_t sub_1E18C17F4()
{
  result = qword_1ECEBAAD0;
  if (!qword_1ECEBAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAD0);
  }

  return result;
}

unint64_t sub_1E18C184C()
{
  result = qword_1ECEBAAD8;
  if (!qword_1ECEBAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAD8);
  }

  return result;
}

unint64_t sub_1E18C18A4()
{
  result = qword_1ECEBAAE0;
  if (!qword_1ECEBAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAE0);
  }

  return result;
}

unint64_t sub_1E18C18FC()
{
  result = qword_1ECEBAAE8;
  if (!qword_1ECEBAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAAE8);
  }

  return result;
}

uint64_t sub_1E18C1950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736567617373656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E1AF74AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E18C1B84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF241C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E18C1BB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1AF243C();
  *a1 = result & 1;
  return result;
}

uint64_t AnnotationViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  type metadata accessor for TruncationState();
  v1 = swift_allocObject();
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  sub_1E1AF051C();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  sub_1E1AF051C();
  return v0;
}

uint64_t AnnotationViewState.init()()
{
  *(v0 + 16) = 0;
  type metadata accessor for TruncationState();
  v1 = swift_allocObject();
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  sub_1E1AF051C();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  sub_1E1AF051C();
  return v0;
}

uint64_t AnnotationViewState.isExpanded.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
    sub_1E1AF04DC();
  }

  return result;
}

uint64_t AnnotationViewState.collapsedTruncationState.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
    sub_1E1AF04DC();
  }
}

uint64_t AnnotationViewState.isExpanded.getter()
{
  swift_getKeyPath();
  sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
  sub_1E1AF04EC();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1E18C1FD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
  sub_1E1AF04EC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

void (*AnnotationViewState.isExpanded.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11AppStoreKit19AnnotationViewState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
  sub_1E1AF04EC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E1AF050C();

  swift_beginAccess();
  return sub_1E18C221C;
}

uint64_t AnnotationViewState.collapsedTruncationState.getter()
{
  swift_getKeyPath();
  sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
  sub_1E1AF04EC();

  swift_beginAccess();
}

uint64_t sub_1E18C22E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
  sub_1E1AF04EC();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1E18C23CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

void (*AnnotationViewState.collapsedTruncationState.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11AppStoreKit19AnnotationViewState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
  sub_1E1AF04EC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E1AF050C();

  swift_beginAccess();
  return sub_1E18C2590;
}

void sub_1E18C259C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1E1AF04FC();

  free(v1);
}

uint64_t AnnotationViewState.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit19AnnotationViewState___observationRegistrar;
  v2 = sub_1E1AF052C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AnnotationViewState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit19AnnotationViewState___observationRegistrar;
  v2 = sub_1E1AF052C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AnnotationView.init(viewModel:viewState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E18C9840(a1, a3, type metadata accessor for AnnotationViewModel);
  result = type metadata accessor for AnnotationView(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1E18C279C()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E135CB88(0, v2, 0);
    v3 = v13;
    v4 = v1 + 32;
    do
    {
      sub_1E1300B24(v4, v11);
      v13 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E135CB88((v5 > 1), v6 + 1, 1);
        v3 = v13;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 40 * v6;
      v8 = v11[0];
      v9 = v11[1];
      *(v7 + 64) = v12;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1E18C2874()
{
  result = sub_1E1AF274C();
  qword_1ECEBAAF0 = result;
  return result;
}

uint64_t AnnotationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_1E1AF255C();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E1AF261C();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAB08);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAB10);
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAB18);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v32 - v16;
  *v11 = sub_1E1AF256C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAB20);
  sub_1E18C2F74(v2, &v11[*(v18 + 44)]);
  sub_1E1AF260C();
  v19 = sub_1E1302CD4(&qword_1ECEBAB28, &qword_1ECEBAB08);
  v34 = v14;
  v35 = v9;
  v20 = v5;
  v33 = v19;
  sub_1E1AF29FC();
  (*(v6 + 8))(v8, v32);
  sub_1E1308058(v11, &qword_1ECEBAB08);
  if ((AnnotationViewModel.canBeExpanded.getter() || (v21 = *(v2 + *(type metadata accessor for AnnotationView(0) + 20)), swift_getKeyPath(), v43 = v21, sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState), sub_1E1AF04EC(), , swift_beginAccess(), v22 = *(v21 + 24), swift_getKeyPath(), v41 = v22, sub_1E18C3734(&qword_1ECEB4FF0, type metadata accessor for TruncationState), , sub_1E1AF04EC(), , v23 = *(v22 + 16), , v23 == 1)) && (v21 = *(v2 + *(type metadata accessor for AnnotationView(0) + 20)), swift_getKeyPath(), v41 = v21, sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState), sub_1E1AF04EC(), , swift_beginAccess(), (*(v21 + 16) & 1) == 0) && (*(v2 + 152) & 1) == 0)
  {
    sub_1E1AF254C();
    v24 = v39;
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1E18C3734(&qword_1ECEBAB30, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAB38);
    sub_1E1302CD4(&qword_1ECEBAB40, &qword_1ECEBAB38);
    v24 = v39;
    sub_1E1AF6EEC();
  }

  v41 = v35;
  v42 = v33;
  v25 = 1;
  swift_getOpaqueTypeConformance2();
  v26 = v37;
  v27 = v34;
  sub_1E1AF2A0C();
  (*(v38 + 8))(v20, v24);
  (*(v36 + 8))(v27, v26);
  v28 = sub_1E1AF2D5C();
  swift_getKeyPath();
  v41 = v21;
  sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
  sub_1E1AF04EC();

  swift_beginAccess();
  if ((*(v21 + 16) & 1) == 0)
  {
    v25 = *(v2 + 152);
  }

  v29 = v40;
  sub_1E132BAE4(v17, v40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAB48);
  v31 = v29 + *(result + 36);
  *v31 = v28;
  *(v31 + 8) = v25;
  return result;
}

uint64_t sub_1E18C2F74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v72 = type metadata accessor for AnnotationView.CollapsedView(0);
  MEMORY[0x1EEE9AC00](v72);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAD08);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v68 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAD10);
  MEMORY[0x1EEE9AC00](v78);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = (&v68 - v9);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAD18);
  MEMORY[0x1EEE9AC00](v76);
  v11 = &v68 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAD20);
  MEMORY[0x1EEE9AC00](v77);
  v13 = (&v68 - v12);
  v14 = *(a1 + *(type metadata accessor for AnnotationView(0) + 20));
  swift_getKeyPath();
  v82 = v14;
  sub_1E18C3734(&qword_1ECEBAB00, type metadata accessor for AnnotationViewState);
  sub_1E1AF04EC();

  swift_beginAccess();
  if ((*(v14 + 16) & 1) != 0 || *(a1 + 152) == 1)
  {
    v16 = *a1;
    v15 = a1[1];

    v17 = sub_1E18C279C();
    *v13 = v16;
    v13[1] = v15;
    v13[2] = v17;
    v18 = type metadata accessor for AnnotationView.ExpandedView(0);
    v19 = v18[6];
    *(v13 + v19) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
    swift_storeEnumTagMultiPayload();
    v20 = v18[7];
    *(v13 + v20) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5388);
    swift_storeEnumTagMultiPayload();
    v21 = (v13 + v18[8]);
    *v21 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v21 + *(type metadata accessor for ScaledSpaceMetric() + 20)) = 0x4020000000000000;
    LOBYTE(v21) = sub_1E1AF26EC();
    sub_1E1AF207C();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAD38) + 36);
    *v30 = v21;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    v30[40] = 0;
    LOBYTE(v21) = sub_1E1AF26FC();
    sub_1E1AF207C();
    v31 = v13 + *(v77 + 36);
    *v31 = v21;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    v36 = &qword_1ECEBAD20;
    sub_1E134FD1C(v13, v11, &qword_1ECEBAD20);
    swift_storeEnumTagMultiPayload();
    sub_1E18C9970();
    sub_1E18C9AB8();
  }

  else
  {
    v37 = a1[1];
    v71 = *a1;

    v38 = sub_1E17F78A0();
    if (v39)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0;
    }

    v70 = v40;
    v41 = 0xE000000000000000;
    if (v39)
    {
      v41 = v39;
    }

    v69 = v41;
    if (AnnotationViewModel.canBeExpanded.getter())
    {
      v42 = 1;
    }

    else
    {
      swift_getKeyPath();
      v81 = v14;
      sub_1E1AF04EC();

      swift_beginAccess();
      v43 = *(v14 + 24);
      swift_getKeyPath();
      v80 = v43;
      sub_1E18C3734(&qword_1ECEB4FF0, type metadata accessor for TruncationState);
      v68 = v37;

      v37 = v68;
      sub_1E1AF04EC();

      v42 = *(v43 + 16);
    }

    swift_getKeyPath();
    v80 = v14;
    sub_1E1AF04EC();

    swift_beginAccess();
    v44 = *(v14 + 24);
    KeyPath = swift_getKeyPath();
    v46 = v72;
    *&v4[*(v72 + 32)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
    swift_storeEnumTagMultiPayload();
    *&v4[*(v46 + 36)] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5388);
    swift_storeEnumTagMultiPayload();
    *v4 = v71;
    *(v4 + 1) = v37;
    v47 = v69;
    *(v4 + 2) = v70;
    *(v4 + 3) = v47;
    v4[32] = v42;
    *(v4 + 5) = v44;

    LOBYTE(v44) = sub_1E1AF26EC();
    sub_1E1AF207C();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v74;
    sub_1E18C9840(v4, v74, type metadata accessor for AnnotationView.CollapsedView);
    v57 = v56 + *(v73 + 36);
    *v57 = v44;
    *(v57 + 8) = v49;
    *(v57 + 16) = v51;
    *(v57 + 24) = v53;
    *(v57 + 32) = v55;
    *(v57 + 40) = 0;
    LOBYTE(v44) = sub_1E1AF26FC();
    sub_1E1AF207C();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    sub_1E137F600(v56, v7, &qword_1ECEBAD08);
    v66 = &v7[*(v78 + 36)];
    *v66 = v44;
    *(v66 + 1) = v59;
    *(v66 + 2) = v61;
    *(v66 + 3) = v63;
    *(v66 + 4) = v65;
    v66[40] = 0;
    v36 = &qword_1ECEBAD10;
    v13 = v75;
    sub_1E137F600(v7, v75, &qword_1ECEBAD10);
    sub_1E134FD1C(v13, v11, &qword_1ECEBAD10);
    swift_storeEnumTagMultiPayload();
    sub_1E18C9970();
    sub_1E18C9AB8();
  }

  sub_1E1AF259C();
  return sub_1E1308058(v13, v36);
}

uint64_t sub_1E18C3734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E18C3798@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF24DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AnnotationView.CollapsedView(0);
  sub_1E134FD1C(v1 + *(v10 + 32), v9, &qword_1ECEB3BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E1AF227C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1E1AF682C();
    v13 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E18C39A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF24DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5388);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for AnnotationView.CollapsedView(0);
  sub_1E134FD1C(v1 + *(v10 + 36), v9, &qword_1ECEB5388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1E137F600(v9, a1, &qword_1ECEB5340);
  }

  sub_1E1AF682C();
  v12 = sub_1E1AF26BC();
  sub_1E1AF0F1C();

  sub_1E1AF24CC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_1E18C3B88@<Q0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v48 = sub_1E1AF25CC();
  v1 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v43[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBABB8);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v43[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43[-v11];
  v13 = sub_1E1AF227C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E18C3798(v16);
  v17 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    goto LABEL_2;
  }

  sub_1E18C39A0(v12);
  v19 = *(v1 + 104);
  v20 = v3;
  v21 = v1;
  v22 = v48;
  v19(v9, *MEMORY[0x1E697FF40], v48);
  (*(v21 + 56))(v9, 0, 1, v22);
  v23 = *(v20 + 48);
  v24 = v50;
  sub_1E134FD1C(v12, v50, &qword_1ECEB5340);
  sub_1E134FD1C(v9, &v24[v23], &qword_1ECEB5340);
  v25 = *(v21 + 48);
  if (v25(v24, 1, v22) == 1)
  {
    sub_1E1308058(v9, &qword_1ECEB5340);
    sub_1E1308058(v12, &qword_1ECEB5340);
    v26 = v50;
    v27 = v25(&v50[v23], 1, v22) == 1;
    v28 = v26;
    if (!v27)
    {
      goto LABEL_9;
    }

    sub_1E1308058(v26, &qword_1ECEB5340);
  }

  else
  {
    v45 = v12;
    v29 = v50;
    v30 = v47;
    sub_1E134FD1C(v50, v47, &qword_1ECEB5340);
    if (v25(&v29[v23], 1, v22) == 1)
    {
      sub_1E1308058(v9, &qword_1ECEB5340);
      sub_1E1308058(v45, &qword_1ECEB5340);
      (*(v21 + 8))(v30, v22);
      v28 = v50;
LABEL_9:
      sub_1E1308058(v28, &qword_1ECEBABB8);
LABEL_10:
      v31 = sub_1E1AF252C();
      LOBYTE(v73) = 0;
      sub_1E18C4938(v51, &v89);
      v59 = v95;
      v60 = v96;
      v61 = v97;
      v55 = v91;
      v56 = v92;
      v57 = v93;
      v58 = v94;
      v53 = v89;
      v54 = v90;
      v69 = v95;
      v70 = v96;
      v71 = v97;
      v65 = v91;
      v66 = v92;
      v67 = v93;
      v68 = v94;
      LOBYTE(v62[0]) = v98[0];
      LOBYTE(v72[0]) = v98[0];
      v63 = v89;
      v64 = v90;
      sub_1E134FD1C(&v53, &v87, &qword_1ECEBABC0);
      sub_1E1308058(&v63, &qword_1ECEBABC0);
      *&v86[55] = v56;
      *&v86[39] = v55;
      *&v86[103] = v59;
      *&v86[119] = v60;
      *&v86[135] = v61;
      v86[151] = v62[0];
      *&v86[71] = v57;
      *&v86[87] = v58;
      *&v86[7] = v53;
      *&v86[23] = v54;
      *&v88[97] = *&v86[96];
      *&v88[113] = *&v86[112];
      *&v88[129] = *&v86[128];
      *&v88[33] = *&v86[32];
      *&v88[49] = *&v86[48];
      *&v88[65] = *&v86[64];
      *&v88[81] = *&v86[80];
      *&v88[1] = *v86;
      v87 = v31;
      v88[0] = v73;
      *&v88[145] = *&v86[144];
      *&v88[17] = *&v86[16];
      sub_1E18C92B0(&v87);
      goto LABEL_11;
    }

    v39 = v50;
    v40 = &v50[v23];
    v41 = v46;
    (*(v21 + 32))(v46, v40, v22);
    sub_1E18C3734(&qword_1ECEBABF0, MEMORY[0x1E697FF50]);
    v44 = sub_1E1AF5DAC();
    v42 = *(v21 + 8);
    v42(v41, v22);
    sub_1E1308058(v9, &qword_1ECEB5340);
    sub_1E1308058(v45, &qword_1ECEB5340);
    v42(v30, v22);
    sub_1E1308058(v39, &qword_1ECEB5340);
    if ((v44 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_2:
  v18 = sub_1E1AF257C();
  LOBYTE(v73) = 0;
  sub_1E18C44A8(v51, &v89);
  v61 = v97;
  v62[0] = v98[0];
  *(v62 + 9) = *(v98 + 9);
  v57 = v93;
  v58 = v94;
  v59 = v95;
  v60 = v96;
  v53 = v89;
  v54 = v90;
  v55 = v91;
  v56 = v92;
  v71 = v97;
  v72[0] = v98[0];
  *(v72 + 9) = *(v98 + 9);
  v67 = v93;
  v68 = v94;
  v69 = v95;
  v70 = v96;
  v63 = v89;
  v64 = v90;
  v65 = v91;
  v66 = v92;
  sub_1E134FD1C(&v53, &v87, &qword_1ECEBABE8);
  sub_1E1308058(&v63, &qword_1ECEBABE8);
  *(&v52[7] + 7) = v60;
  *(&v52[8] + 7) = v61;
  *(&v52[9] + 7) = v62[0];
  v52[10] = *(v62 + 9);
  *(&v52[3] + 7) = v56;
  *(&v52[4] + 7) = v57;
  *(&v52[5] + 7) = v58;
  *(&v52[6] + 7) = v59;
  *(v52 + 7) = v53;
  *(&v52[1] + 7) = v54;
  *(&v52[2] + 7) = v55;
  *&v88[113] = v52[7];
  *&v88[129] = v52[8];
  *&v88[145] = v52[9];
  *&v88[161] = *(v62 + 9);
  *&v88[49] = v52[3];
  *&v88[65] = v52[4];
  *&v88[81] = v52[5];
  *&v88[97] = v52[6];
  *&v88[1] = v52[0];
  *&v88[17] = v52[1];
  *&v87 = v18;
  *(&v87 + 1) = 0x4000000000000000;
  v88[0] = v73;
  *&v88[33] = v52[2];
  sub_1E18C92BC(&v87);
LABEL_11:
  v83 = *&v88[144];
  v84 = *&v88[160];
  v85 = *&v88[176];
  v79 = *&v88[80];
  v80 = *&v88[96];
  v81 = *&v88[112];
  v82 = *&v88[128];
  v75 = *&v88[16];
  v76 = *&v88[32];
  v77 = *&v88[48];
  v78 = *&v88[64];
  v73 = v87;
  v74 = *v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBABC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBABD0);
  sub_1E1302CD4(&qword_1ECEBABD8, &qword_1ECEBABC8);
  sub_1E1302CD4(&qword_1ECEBABE0, &qword_1ECEBABD0);
  sub_1E1AF259C();
  v32 = v98[2];
  v33 = v49;
  *(v49 + 160) = v98[1];
  *(v33 + 176) = v32;
  *(v33 + 192) = v99;
  v34 = v96;
  *(v33 + 96) = v95;
  *(v33 + 112) = v34;
  v35 = v98[0];
  *(v33 + 128) = v97;
  *(v33 + 144) = v35;
  v36 = v92;
  *(v33 + 32) = v91;
  *(v33 + 48) = v36;
  v37 = v94;
  *(v33 + 64) = v93;
  *(v33 + 80) = v37;
  result = v90;
  *v33 = v89;
  *(v33 + 16) = result;
  return result;
}

uint64_t sub_1E18C44A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = sub_1E1AF252C();
  LOBYTE(v34[0]) = 0;
  sub_1E18C47B4(a1, &v36);
  v29 = v38;
  v30 = v39;
  v31[0] = *v40;
  *(v31 + 9) = *&v40[9];
  v27 = v36;
  v28 = v37;
  *(v33 + 9) = *&v40[9];
  v32[2] = v38;
  v32[3] = v39;
  v33[0] = *v40;
  v32[0] = v36;
  v32[1] = v37;
  sub_1E134FD1C(&v27, v43, &qword_1ECEBABF8);
  sub_1E1308058(v32, &qword_1ECEBABF8);
  *&v26[39] = v29;
  *&v26[55] = v30;
  *&v26[71] = v31[0];
  *&v26[80] = *(v31 + 9);
  *&v26[7] = v27;
  *&v26[23] = v28;
  v24 = v34[0];
  v4 = a1[3];
  *&v36 = a1[2];
  *(&v36 + 1) = v4;
  sub_1E13B8AA4();

  v5 = sub_1E1AF293C();
  v7 = v6;
  v9 = v8;
  if (qword_1ECEB1588 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF28EC();
  v12 = v11;
  v23 = v13;
  v15 = v14;
  sub_1E1431100(v5, v7, v9 & 1);

  v16 = a1[5];
  v34[0] = v25;
  v34[1] = 0;
  v35[0] = v24;
  *&v35[1] = *v26;
  *&v35[17] = *&v26[16];
  *&v35[33] = *&v26[32];
  *&v35[81] = *&v26[80];
  *&v35[65] = *&v26[64];
  *&v35[49] = *&v26[48];
  v17 = *&v35[32];
  v38 = *&v35[16];
  v39 = *&v35[32];
  v36 = v25;
  v37 = *v35;
  LOBYTE(v42) = v26[95];
  *&v40[16] = *&v35[64];
  v41 = *&v35[80];
  *v40 = *&v35[48];
  v18 = *v35;
  *(a2 + 32) = *&v35[16];
  *(a2 + 48) = v17;
  *a2 = v25;
  *(a2 + 16) = v18;
  v19 = *v40;
  v20 = v41;
  v21 = v42;
  *(a2 + 80) = *&v40[16];
  *(a2 + 96) = v20;
  *(a2 + 64) = v19;
  *(a2 + 112) = v21;
  *(a2 + 120) = v10;
  *(a2 + 128) = v12;
  *(a2 + 136) = v23 & 1;
  *(a2 + 144) = v15;
  *(a2 + 152) = v16;
  *(a2 + 160) = 1;
  *(a2 + 168) = 0;

  sub_1E134FD1C(v34, v43, &qword_1ECEBAC00);
  sub_1E1431110(v10, v12, v23 & 1);

  sub_1E1431100(v10, v12, v23 & 1);

  v47 = *&v26[32];
  v48 = *&v26[48];
  v49 = *&v26[64];
  v50 = *&v26[80];
  v45 = *v26;
  v43[0] = v25;
  v43[1] = 0;
  v44 = v24;
  v46 = *&v26[16];
  return sub_1E1308058(v43, &qword_1ECEBAC00);
}

uint64_t sub_1E18C47B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (*(a1 + 32) == 1)
  {

    v5 = sub_1E1AF2B6C();
    v6 = sub_1E1AF25BC();
    v7 = sub_1E1AF270C();
    sub_1E1AF207C();
    LOBYTE(v24[0]) = 0;
    v12 = v7;
    v13 = v6;
  }

  else
  {

    v5 = 0;
    v12 = 0;
    v13 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v20 = 1;
  *&v21 = v5;
  *(&v21 + 1) = v13;
  *&v22 = v12;
  *(&v22 + 1) = v8;
  *v23 = v9;
  *&v23[8] = v10;
  *&v23[16] = v11;
  v23[24] = 0;
  *&v19[7] = v21;
  *&v19[23] = v22;
  *&v19[39] = *v23;
  *&v19[48] = *&v23[9];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v14 = *v19;
  v15 = *&v19[16];
  v16 = *&v19[32];
  *(a2 + 73) = *&v19[48];
  *(a2 + 57) = v16;
  *(a2 + 41) = v15;
  *(a2 + 25) = v14;
  v24[0] = v5;
  v24[1] = v13;
  v24[2] = v12;
  v24[3] = v8;
  v24[4] = v9;
  v24[5] = v10;
  v24[6] = v11;
  v25 = 0;

  sub_1E134FD1C(&v21, v18, &qword_1ECEBAC08);
  sub_1E1308058(v24, &qword_1ECEBAC08);
}

uint64_t sub_1E18C4938@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v32 = *a1;
  v5 = a1[3];
  v40 = a1[2];
  v41 = v5;
  sub_1E13B8AA4();

  v6 = sub_1E1AF293C();
  v8 = v7;
  v10 = v9;
  if (qword_1ECEB1588 != -1)
  {
    swift_once();
  }

  v11 = sub_1E1AF28EC();
  v13 = v12;
  v31 = v14;
  v16 = v15;
  sub_1E1431100(v6, v8, v10 & 1);

  v17 = a1[5];
  if (*(a1 + 32) == 1)
  {

    v18 = sub_1E1AF2B6C();
    v19 = sub_1E1AF25BC();
    v20 = sub_1E1AF270C();
    sub_1E1AF207C();
    LOBYTE(v40) = 0;
    v25 = v20;
    v26 = v19;
  }

  else
  {

    v18 = 0;
    v25 = 0;
    v26 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v36 = 0;
  v35 = v31 & 1;
  *&v37 = v18;
  *(&v37 + 1) = v26;
  *&v38 = v25;
  *(&v38 + 1) = v21;
  *v39 = v22;
  *&v39[8] = v23;
  *&v39[16] = v24;
  v39[24] = 0;
  *&v34[48] = *&v39[9];
  *&v34[39] = *v39;
  *&v34[23] = v38;
  *&v34[7] = v37;
  *a2 = v32;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0x4034000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v31 & 1;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  v27 = *v34;
  v28 = *&v34[16];
  v29 = *&v34[32];
  *(a2 + 129) = *&v34[48];
  *(a2 + 113) = v29;
  *(a2 + 97) = v28;
  *(a2 + 81) = v27;
  v40 = v18;
  v41 = v26;
  v42 = v25;
  v43 = v21;
  v44 = v22;
  v45 = v23;
  v46 = v24;
  v47 = 0;

  sub_1E1431110(v11, v13, v31 & 1);

  sub_1E134FD1C(&v37, v33, &qword_1ECEBAC08);
  sub_1E1308058(&v40, &qword_1ECEBAC08);
  sub_1E1431100(v11, v13, v31 & 1);
}

double sub_1E18C4BE8()
{
  v1 = v0;
  v2 = sub_1E1AF25CC();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v33 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBABB8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5340);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - v13;
  v15 = sub_1E1AF227C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AnnotationView.ExpandedView(0);
  sub_1E18710E0(v19);
  v20 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v16 + 8))(v18, v15);
  result = 2.0;
  if ((v20 & 1) == 0)
  {
    v32[0] = v19;
    v32[1] = v1;
    sub_1E18707EC(v14);
    v22 = v35;
    v23 = v36;
    (*(v35 + 104))(v11, *MEMORY[0x1E697FF40], v36);
    (*(v22 + 56))(v11, 0, 1, v23);
    v24 = *(v4 + 48);
    sub_1E134FD1C(v14, v6, &qword_1ECEB5340);
    sub_1E134FD1C(v11, &v6[v24], &qword_1ECEB5340);
    v25 = *(v22 + 48);
    if (v25(v6, 1, v23) == 1)
    {
      sub_1E1308058(v11, &qword_1ECEB5340);
      sub_1E1308058(v14, &qword_1ECEB5340);
      if (v25(&v6[v24], 1, v23) == 1)
      {
        sub_1E1308058(v6, &qword_1ECEB5340);
        return 2.0;
      }
    }

    else
    {
      v26 = v34;
      sub_1E134FD1C(v6, v34, &qword_1ECEB5340);
      if (v25(&v6[v24], 1, v23) != 1)
      {
        v27 = &v6[v24];
        v28 = v33;
        (*(v22 + 32))(v33, v27, v23);
        sub_1E18C3734(&qword_1ECEBABF0, MEMORY[0x1E697FF50]);
        v29 = v26;
        v30 = sub_1E1AF5DAC();
        v31 = *(v22 + 8);
        v31(v28, v23);
        sub_1E1308058(v11, &qword_1ECEB5340);
        sub_1E1308058(v14, &qword_1ECEB5340);
        v31(v29, v23);
        sub_1E1308058(v6, &qword_1ECEB5340);
        result = 2.0;
        if (v30)
        {
          return result;
        }

        return ScaledSpaceMetric.wrappedValue.getter();
      }

      sub_1E1308058(v11, &qword_1ECEB5340);
      sub_1E1308058(v14, &qword_1ECEB5340);
      (*(v22 + 8))(v26, v23);
    }

    sub_1E1308058(v6, &qword_1ECEBABB8);
    return ScaledSpaceMetric.wrappedValue.getter();
  }

  return result;
}

uint64_t sub_1E18C5118@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAC18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = a1[1];
  v13[0] = *a1;

  *v9 = sub_1E1AF257C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAC20);
  v13[1] = a1[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAC28);
  sub_1E1AEFEAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAC30);
  sub_1E1302CD4(&qword_1ECEBAC38, &qword_1ECEBAC28);
  sub_1E18C92C4();
  sub_1E18C97EC();
  sub_1E1AF2CBC();
  sub_1E134FD1C(v9, v6, &qword_1ECEBAC18);
  *a2 = v13[0];
  a2[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBACD0);
  sub_1E134FD1C(v6, a2 + *(v11 + 48), &qword_1ECEBAC18);

  sub_1E1308058(v9, &qword_1ECEBAC18);
  sub_1E1308058(v6, &qword_1ECEBAC18);
}

uint64_t sub_1E18C535C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v97 = type metadata accessor for AnnotationView.ArtworkAnnotationItemView(0);
  MEMORY[0x1EEE9AC00](v97);
  v88 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ArtworkAnnotationItem(0);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v85 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBACD8);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v85 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBACE0);
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v85 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBACB0);
  MEMORY[0x1EEE9AC00](v102);
  v96 = &v85 - v9;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBACA0);
  MEMORY[0x1EEE9AC00](v129);
  v105 = &v85 - v10;
  v94 = type metadata accessor for AnnotationView.TextEncapsulationAnnotationItemView(0);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for TextEncapsulationAnnotationItem(0);
  MEMORY[0x1EEE9AC00](v99);
  v91 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v85 - v14;
  v114 = type metadata accessor for AnnotationView.SpacerAnnotationItemView(0);
  MEMORY[0x1EEE9AC00](v114);
  v101 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for SpacerAnnotationItem(0);
  MEMORY[0x1EEE9AC00](v107);
  v100 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v106 = &v85 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBACE8);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v85 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAC80);
  MEMORY[0x1EEE9AC00](v125);
  v113 = &v85 - v20;
  v111 = type metadata accessor for AnnotationView.TextPairAnnotationItemView(0);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for TextPairAnnotationItem(0);
  MEMORY[0x1EEE9AC00](v116);
  v108 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v115 = &v85 - v24;
  v124 = type metadata accessor for AnnotationView.ButtonAnnotationItemView(0);
  MEMORY[0x1EEE9AC00](v124);
  v118 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for ButtonAnnotationItem(0);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v119 = &v85 - v28;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBACF0);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v85 - v29;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBACF8);
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v85 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAD00);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v85 - v32;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAC60);
  MEMORY[0x1EEE9AC00](v122);
  v35 = &v85 - v34;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAC50);
  MEMORY[0x1EEE9AC00](v130);
  v37 = &v85 - v36;
  v38 = type metadata accessor for AnnotationView.LinkableTextAnnotationItemView(0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LinkableTextAnnotationItem(0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v85 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v85 - v45;
  sub_1E1300B24(a1, v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4EB0);
  if (swift_dynamicCast())
  {
    sub_1E18C9840(v46, v43, type metadata accessor for LinkableTextAnnotationItem);
    sub_1E18C98A8(v43, v40, type metadata accessor for LinkableTextAnnotationItem);
    sub_1E18C98A8(v40, v33, type metadata accessor for AnnotationView.LinkableTextAnnotationItemView);
    swift_storeEnumTagMultiPayload();
    sub_1E18C3734(&qword_1ECEBAC68, type metadata accessor for AnnotationView.LinkableTextAnnotationItemView);
    sub_1E18C3734(&qword_1ECEBAC70, type metadata accessor for AnnotationView.ButtonAnnotationItemView);
    sub_1E1AF259C();
    sub_1E134FD1C(v35, v123, &qword_1ECEBAC60);
    swift_storeEnumTagMultiPayload();
    sub_1E18C93DC();
    sub_1E18C9508();
    sub_1E1AF259C();
    sub_1E1308058(v35, &qword_1ECEBAC60);
    sub_1E134FD1C(v37, v126, &qword_1ECEBAC50);
    swift_storeEnumTagMultiPayload();
    sub_1E18C9350();
    sub_1E18C9634();
    sub_1E1AF259C();
    sub_1E1308058(v37, &qword_1ECEBAC50);
    sub_1E18C9910(v40, type metadata accessor for AnnotationView.LinkableTextAnnotationItemView);
    v47 = type metadata accessor for LinkableTextAnnotationItem;
    v48 = v43;
    goto LABEL_12;
  }

  v49 = v33;
  v50 = v35;
  v52 = v123;
  v51 = v124;
  v86 = v37;
  v53 = v119;
  if (swift_dynamicCast())
  {
    v54 = v117;
    sub_1E18C9840(v53, v117, type metadata accessor for ButtonAnnotationItem);
    v55 = v118;
    sub_1E18C98A8(v54, v118, type metadata accessor for ButtonAnnotationItem);
    KeyPath = swift_getKeyPath();
    v57 = v55 + *(v51 + 20);
    *v57 = KeyPath;
    *(v57 + 8) = 0;
    sub_1E18C98A8(v55, v49, type metadata accessor for AnnotationView.ButtonAnnotationItemView);
    swift_storeEnumTagMultiPayload();
    sub_1E18C3734(&qword_1ECEBAC68, type metadata accessor for AnnotationView.LinkableTextAnnotationItemView);
    sub_1E18C3734(&qword_1ECEBAC70, type metadata accessor for AnnotationView.ButtonAnnotationItemView);
    sub_1E1AF259C();
    sub_1E134FD1C(v50, v52, &qword_1ECEBAC60);
    swift_storeEnumTagMultiPayload();
    sub_1E18C93DC();
    sub_1E18C9508();
    v58 = v86;
    sub_1E1AF259C();
    sub_1E1308058(v50, &qword_1ECEBAC60);
    sub_1E134FD1C(v58, v126, &qword_1ECEBAC50);
    swift_storeEnumTagMultiPayload();
    sub_1E18C9350();
    sub_1E18C9634();
    sub_1E1AF259C();
    sub_1E1308058(v58, &qword_1ECEBAC50);
    sub_1E18C9910(v55, type metadata accessor for AnnotationView.ButtonAnnotationItemView);
    v47 = type metadata accessor for ButtonAnnotationItem;
    v48 = v54;
    goto LABEL_12;
  }

  v59 = v115;
  if (swift_dynamicCast())
  {
    v60 = v108;
    sub_1E18C9840(v59, v108, type metadata accessor for TextPairAnnotationItem);
    v61 = v109;
    sub_1E18C98A8(v60, v109, type metadata accessor for TextPairAnnotationItem);
    *(v61 + *(v111 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
    swift_storeEnumTagMultiPayload();
    sub_1E18C98A8(v61, v112, type metadata accessor for AnnotationView.TextPairAnnotationItemView);
    swift_storeEnumTagMultiPayload();
    sub_1E18C3734(&qword_1ECEBAC88, type metadata accessor for AnnotationView.TextPairAnnotationItemView);
    sub_1E18C3734(&qword_1ECEBAC90, type metadata accessor for AnnotationView.SpacerAnnotationItemView);
    v62 = v113;
    sub_1E1AF259C();
    sub_1E134FD1C(v62, v52, &qword_1ECEBAC80);
    swift_storeEnumTagMultiPayload();
    sub_1E18C93DC();
    sub_1E18C9508();
    v63 = v86;
    sub_1E1AF259C();
    sub_1E1308058(v62, &qword_1ECEBAC80);
    sub_1E134FD1C(v63, v126, &qword_1ECEBAC50);
    swift_storeEnumTagMultiPayload();
    sub_1E18C9350();
    sub_1E18C9634();
    sub_1E1AF259C();
    sub_1E1308058(v63, &qword_1ECEBAC50);
    sub_1E18C9910(v61, type metadata accessor for AnnotationView.TextPairAnnotationItemView);
    v47 = type metadata accessor for TextPairAnnotationItem;
    v48 = v60;
    goto LABEL_12;
  }

  v64 = v106;
  v65 = swift_dynamicCast();
  v66 = v86;
  if (v65)
  {
    v67 = v52;
    v68 = v100;
    sub_1E18C9840(v64, v100, type metadata accessor for SpacerAnnotationItem);
    v69 = v101;
    sub_1E18C98A8(v68, v101, type metadata accessor for SpacerAnnotationItem);
    sub_1E18C98A8(v69, v112, type metadata accessor for AnnotationView.SpacerAnnotationItemView);
    swift_storeEnumTagMultiPayload();
    sub_1E18C3734(&qword_1ECEBAC88, type metadata accessor for AnnotationView.TextPairAnnotationItemView);
    sub_1E18C3734(&qword_1ECEBAC90, type metadata accessor for AnnotationView.SpacerAnnotationItemView);
    v70 = v113;
    sub_1E1AF259C();
    sub_1E134FD1C(v70, v67, &qword_1ECEBAC80);
    swift_storeEnumTagMultiPayload();
    sub_1E18C93DC();
    sub_1E18C9508();
    sub_1E1AF259C();
    sub_1E1308058(v70, &qword_1ECEBAC80);
    sub_1E134FD1C(v66, v126, &qword_1ECEBAC50);
    swift_storeEnumTagMultiPayload();
    sub_1E18C9350();
    sub_1E18C9634();
    sub_1E1AF259C();
    sub_1E1308058(v66, &qword_1ECEBAC50);
    sub_1E18C9910(v69, type metadata accessor for AnnotationView.SpacerAnnotationItemView);
    v71 = type metadata accessor for SpacerAnnotationItem;
LABEL_11:
    v47 = v71;
    v48 = v68;
    goto LABEL_12;
  }

  v72 = v98;
  v73 = swift_dynamicCast();
  v74 = v126;
  if (v73)
  {
    v68 = v91;
    sub_1E18C9840(v72, v91, type metadata accessor for TextEncapsulationAnnotationItem);
    v75 = v92;
    sub_1E18C98A8(v68, v92, type metadata accessor for TextEncapsulationAnnotationItem);
    sub_1E18C98A8(v75, v95, type metadata accessor for AnnotationView.TextEncapsulationAnnotationItemView);
    swift_storeEnumTagMultiPayload();
    sub_1E18C3734(&qword_1ECEBACB8, type metadata accessor for AnnotationView.TextEncapsulationAnnotationItemView);
    sub_1E18C3734(&qword_1ECEBACC0, type metadata accessor for AnnotationView.ArtworkAnnotationItemView);
    v76 = v96;
    sub_1E1AF259C();
    sub_1E134FD1C(v76, v104, &qword_1ECEBACB0);
    swift_storeEnumTagMultiPayload();
    sub_1E18C96C0();
    v77 = v105;
    sub_1E1AF259C();
    sub_1E1308058(v76, &qword_1ECEBACB0);
    sub_1E134FD1C(v77, v74, &qword_1ECEBACA0);
    swift_storeEnumTagMultiPayload();
    sub_1E18C9350();
    sub_1E18C9634();
    sub_1E1AF259C();
    sub_1E1308058(v77, &qword_1ECEBACA0);
    sub_1E18C9910(v75, type metadata accessor for AnnotationView.TextEncapsulationAnnotationItemView);
    v71 = type metadata accessor for TextEncapsulationAnnotationItem;
    goto LABEL_11;
  }

  v79 = v89;
  if (!swift_dynamicCast())
  {
    swift_storeEnumTagMultiPayload();
    sub_1E18C96C0();
    v84 = v105;
    sub_1E1AF259C();
    sub_1E134FD1C(v84, v74, &qword_1ECEBACA0);
    swift_storeEnumTagMultiPayload();
    sub_1E18C9350();
    sub_1E18C9634();
    sub_1E1AF259C();
    sub_1E1308058(v84, &qword_1ECEBACA0);
    return __swift_destroy_boxed_opaque_existential_1(v131);
  }

  v80 = v87;
  sub_1E18C9840(v79, v87, type metadata accessor for ArtworkAnnotationItem);
  v81 = v88;
  sub_1E18C98A8(v80, v88, type metadata accessor for ArtworkAnnotationItem);
  sub_1E18C98A8(v81, v95, type metadata accessor for AnnotationView.ArtworkAnnotationItemView);
  swift_storeEnumTagMultiPayload();
  sub_1E18C3734(&qword_1ECEBACB8, type metadata accessor for AnnotationView.TextEncapsulationAnnotationItemView);
  sub_1E18C3734(&qword_1ECEBACC0, type metadata accessor for AnnotationView.ArtworkAnnotationItemView);
  v82 = v96;
  sub_1E1AF259C();
  sub_1E134FD1C(v82, v104, &qword_1ECEBACB0);
  swift_storeEnumTagMultiPayload();
  sub_1E18C96C0();
  v83 = v105;
  sub_1E1AF259C();
  sub_1E1308058(v82, &qword_1ECEBACB0);
  sub_1E134FD1C(v83, v74, &qword_1ECEBACA0);
  swift_storeEnumTagMultiPayload();
  sub_1E18C9350();
  sub_1E18C9634();
  sub_1E1AF259C();
  sub_1E1308058(v83, &qword_1ECEBACA0);
  sub_1E18C9910(v81, type metadata accessor for AnnotationView.ArtworkAnnotationItemView);
  v47 = type metadata accessor for ArtworkAnnotationItem;
  v48 = v80;
LABEL_12:
  sub_1E18C9910(v48, v47);
  return __swift_destroy_boxed_opaque_existential_1(v131);
}

uint64_t sub_1E18C6BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF257C();
  v4 = sub_1E18C4BE8();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAC10);
  return sub_1E18C5118(v1, (a1 + *(v5 + 44)));
}

uint64_t sub_1E18C6C40@<X0>(uint64_t a1@<X8>)
{
  sub_1E13B8AA4();

  v2 = sub_1E1AF293C();
  v4 = v3;
  v6 = v5;
  if (qword_1ECEB1588 != -1)
  {
    swift_once();
  }

  v7 = sub_1E1AF28EC();
  v9 = v8;
  v11 = v10;
  sub_1E1431100(v2, v4, v6 & 1);

  sub_1E1AF25BC();
  v12 = sub_1E1AF28DC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1E1431100(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1E18C6DB8()
{
  v1 = sub_1E1AF24DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AnnotationView.ButtonAnnotationItemView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1E1AF682C();
    v7 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();
    sub_1E161B3FC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1E18C6F18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v22 = sub_1E1AF22DC();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnnotationView.ButtonAnnotationItemView(0);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5350);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBADE0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = sub_1E1AF206C();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = *(v2 + *(type metadata accessor for ButtonAnnotationItem(0) + 20));
  v25 = type metadata accessor for Action();
  v26 = sub_1E18C3734(qword_1EE1D2F80, type metadata accessor for Action);
  v24 = v16;
  sub_1E18C98A8(v2, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnnotationView.ButtonAnnotationItemView);
  v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v18 = swift_allocObject();
  sub_1E18C9840(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AnnotationView.ButtonAnnotationItemView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBADE8);
  sub_1E18CA280();
  sub_1E1AF0C7C();
  sub_1E1AF22CC();
  sub_1E1302CD4(&qword_1ECEBAE18, &qword_1ECEBADE0);
  sub_1E18C3734(&qword_1ECEB5378, MEMORY[0x1E697C248]);
  v19 = v22;
  sub_1E1AF299C();
  (*(v3 + 8))(v5, v19);
  return (*(v12 + 8))(v14, v11);
}

__n128 sub_1E18C732C@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for ButtonAnnotationItem(0);
  sub_1E13B8AA4();

  v2 = sub_1E1AF293C();
  v4 = v3;
  v6 = v5;
  sub_1E18C6DB8();
  v7 = sub_1E1AF291C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1E1431100(v2, v4, v6 & 1);

  sub_1E1AF2D2C();
  sub_1E1AF230C();
  if (qword_1ECEB1588 != -1)
  {
    swift_once();
  }

  v14 = qword_1ECEBAAF0;
  KeyPath = swift_getKeyPath();
  v16 = qword_1EE1E3210;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE1E3218;
  v18 = sub_1E1AF2AAC();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 96) = v24;
  *(a1 + 112) = v25;
  *(a1 + 128) = v26;
  *(a1 + 32) = v20;
  *(a1 + 48) = v21;
  result = v23;
  *(a1 + 64) = v22;
  *(a1 + 80) = v23;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v14;
  *(a1 + 160) = v18;
  return result;
}

uint64_t sub_1E18C7544@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v22 - v4;
  v6 = *(v1 + *(type metadata accessor for LinkableTextAnnotationItem(0) + 20));

  v7 = sub_1E1AF2B1C();
  v8 = sub_1E1AF2ABC();
  if (qword_1ECEB1588 != -1)
  {
    swift_once();
  }

  v9 = qword_1ECEBAAF0;
  type metadata accessor for LinkableTextViewModel();
  v10 = swift_allocObject();

  v12 = sub_1E142E020(v11);

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB37B8);
    v13 = sub_1E1AF72CC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  v22[0] = v13;

  sub_1E142E5BC(v14, 1, v22);

  *(v10 + qword_1ECEB46A0) = v22[0];
  v10[3] = v8;
  v10[4] = v7;
  LinkableText.asMarkdownAttributedString()(v5);
  v15 = sub_1E1AEF91C();
  if (!(*(*(v15 - 8) + 48))(v5, 1, v15))
  {
    v22[0] = v9;
    sub_1E142E9DC();

    sub_1E1AEF93C();
  }

  sub_1E134FD1C(v5, v10 + qword_1ECEB4698, &qword_1ECEB3B50);
  v10[2] = v6;
  sub_1E1308058(v5, &qword_1ECEB3B50);
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 56) = 0;
  v16 = type metadata accessor for LinkableTextView();
  v17 = v16[8];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6DC0);
  swift_storeEnumTagMultiPayload();
  v18 = a1 + v16[9];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a1 + v16[10];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a1 + v16[11];
  result = swift_getKeyPath();
  *v20 = result;
  *(v20 + 8) = 0;
  *a1 = v10;
  *(a1 + 8) = 256;
  return result;
}

uint64_t sub_1E18C7874@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF24DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AnnotationView.TextPairAnnotationItemView(0);
  sub_1E134FD1C(v1 + *(v10 + 20), v9, &qword_1ECEB3BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E1AF227C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1E1AF682C();
    v13 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_1E18C7A80@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AF227C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E18C7874(v7);
  v8 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = sub_1E1AF257C();
    LOBYTE(v48[0]) = 0;
    sub_1E18C7E60(&v31);
    *&v12[7] = v31;
    *&v12[55] = v34;
    *&v12[39] = v33;
    *&v12[23] = v32;
    v47[0] = v9;
    v47[1] = 0;
    LOBYTE(v47[2]) = v48[0];
    *(&v47[2] + 1) = *v12;
    v47[10] = *(&v34 + 1);
    *(&v47[8] + 1) = *&v12[48];
    *(&v47[6] + 1) = *&v12[32];
    *(&v47[4] + 1) = *&v12[16];
    sub_1E18CA41C(v47);
  }

  else
  {
    v10 = sub_1E1AF250C();
    v13[0] = 0;
    sub_1E18C807C(v2, v48);
    v27 = v48[12];
    v28 = v48[13];
    v29 = v48[14];
    v30 = v48[15];
    v23 = v48[8];
    v24 = v48[9];
    v25 = v48[10];
    v26 = v48[11];
    v19 = v48[4];
    v20 = v48[5];
    v21 = v48[6];
    v22 = v48[7];
    v15 = v48[0];
    v16 = v48[1];
    v17 = v48[2];
    v18 = v48[3];
    v43 = v48[12];
    v44 = v48[13];
    v45 = v48[14];
    v46 = v48[15];
    v39 = v48[8];
    v40 = v48[9];
    v41 = v48[10];
    v42 = v48[11];
    v35 = v48[4];
    v36 = v48[5];
    v37 = v48[6];
    v38 = v48[7];
    v31 = v48[0];
    v32 = v48[1];
    v33 = v48[2];
    v34 = v48[3];
    sub_1E134FD1C(&v15, v47, &qword_1ECEBAE20);
    sub_1E1308058(&v31, &qword_1ECEBAE20);
    *&v14[199] = v27;
    *&v14[215] = v28;
    *&v14[231] = v29;
    *&v14[247] = v30;
    *&v14[135] = v23;
    *&v14[151] = v24;
    *&v14[167] = v25;
    *&v14[183] = v26;
    *&v14[71] = v19;
    *&v14[87] = v20;
    *&v14[103] = v21;
    *&v14[119] = v22;
    *&v14[7] = v15;
    *&v14[23] = v16;
    *&v14[39] = v17;
    *&v14[55] = v18;
    v47[0] = v10;
    v47[1] = 0;
    LOBYTE(v47[2]) = v13[0];
    memcpy(&v47[2] + 1, v14, 0x107uLL);
    sub_1E18CA410(v47);
  }

  memcpy(v13, v47, sizeof(v13));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAE28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAE30);
  sub_1E1302CD4(&qword_1ECEBAE38, &qword_1ECEBAE28);
  sub_1E1302CD4(&qword_1ECEBAE40, &qword_1ECEBAE30);
  sub_1E1AF259C();
  return memcpy(a1, v48, 0x119uLL);
}

uint64_t sub_1E18C7E60@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TextPairAnnotationItem(0);
  sub_1E13B8AA4();

  v2 = sub_1E1AF293C();
  v4 = v3;
  v6 = v5;
  if (qword_1ECEB1588 != -1)
  {
    swift_once();
  }

  v25 = sub_1E1AF28EC();
  v26 = v7;
  v9 = v8;
  v24 = v10;
  sub_1E1431100(v2, v4, v6 & 1);

  v11 = sub_1E1AF293C();
  v13 = v12;
  v15 = v14;
  v16 = sub_1E1AF28EC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1E1431100(v11, v13, v15 & 1);

  *a1 = v25;
  *(a1 + 8) = v9;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_1E1431110(v25, v9, v24 & 1);

  sub_1E1431110(v16, v18, v20 & 1);

  sub_1E1431100(v16, v18, v20 & 1);

  sub_1E1431100(v25, v9, v24 & 1);
}

uint64_t sub_1E18C807C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *(a1 + *(type metadata accessor for TextPairAnnotationItem(0) + 20));
  sub_1E13B8AA4();

  v3 = sub_1E1AF293C();
  v5 = v4;
  v7 = v6;
  if (qword_1ECEB1588 != -1)
  {
    swift_once();
  }

  v8 = sub_1E1AF28EC();
  v28 = v9;
  v29 = v8;
  v11 = v10;
  v30 = v12;
  sub_1E1431100(v3, v5, v7 & 1);

  KeyPath = swift_getKeyPath();
  v39 = v11 & 1;
  sub_1E1AF2D1C();
  sub_1E1AF230C();
  *&v31[55] = v35;
  *&v31[71] = v36;
  *&v31[87] = v37;
  *&v31[103] = v38;
  *&v31[23] = v33;
  *&v31[39] = v34;
  *&v31[7] = v32;

  v13 = sub_1E1AF293C();
  v15 = v14;
  v17 = v16;
  v18 = sub_1E1AF28EC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1E1431100(v13, v15, v17 & 1);

  v25 = swift_getKeyPath();
  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v39;
  *(a2 + 24) = v30;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x3FF0000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 121) = *&v31[48];
  *(a2 + 105) = *&v31[32];
  *(a2 + 89) = *&v31[16];
  *(a2 + 73) = *v31;
  *(a2 + 184) = *(&v38 + 1);
  *(a2 + 192) = v18;
  *(a2 + 169) = *&v31[96];
  *(a2 + 153) = *&v31[80];
  *(a2 + 137) = *&v31[64];
  *(a2 + 200) = v20;
  *(a2 + 208) = v22 & 1;
  *(a2 + 216) = v24;
  *(a2 + 224) = v25;
  *(a2 + 232) = 1;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0x4000000000000000;
  sub_1E1431110(v29, v28, v39 & 1);

  sub_1E1431110(v18, v20, v22 & 1);

  sub_1E1431100(v18, v20, v22 & 1);

  sub_1E1431100(v29, v28, v39);
}

uint64_t sub_1E18C83D8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SpacerAnnotationItem(0);
  result = sub_1E1AF259C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 9) = v5;
  return result;
}

uint64_t sub_1E18C8474()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAE48);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v25[0] = v25 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAE50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAE58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAE60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAE68);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  v17 = sub_1E1AEF97C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1E1AF2ABC();
  type metadata accessor for TextEncapsulationAnnotationItem(0);

  sub_1E1AEF96C();
  sub_1E1AEF92C();
  sub_1E1AF287C();
  v19 = sub_1E1AF288C();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  v20 = sub_1E1AF289C();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21 = sub_1E1AF28AC();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  v22 = sub_1E1AF286C();
  (*(*(v22 - 8) + 56))(v25[0], 1, 1, v22);
  swift_retain_n();
  sub_1E1AF28BC();
  v23 = sub_1E1AF28CC();
  (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
  sub_1E134FD1C(v16, v13, &qword_1ECEBAE68);
  sub_1E18CA488();
  sub_1E1AEF93C();
  sub_1E1308058(v16, &qword_1ECEBAE68);
  v25[1] = v18;
  sub_1E18CA4DC();
  sub_1E1AEF93C();
}

uint64_t sub_1E18C88EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1AEF91C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E18C8474();
  v3 = sub_1E1AF292C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E1AF26FC();
  result = sub_1E1AF207C();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1E18C89C0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAE80);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = *(v1 + *(type metadata accessor for ArtworkAnnotationItem(0) + 20));
  v14 = *(v12 + 32);
  v13 = *(v12 + 40);
  v15 = type metadata accessor for SwiftUIArtworkView(0);
  v16 = v15[6];
  v17 = *MEMORY[0x1E6981688];
  v18 = sub_1E1AF2BAC();
  (*(*(v18 - 8) + 104))(&v11[v16], v17, v18);
  *v11 = v12;
  *(v11 + 1) = v14;
  *(v11 + 2) = v13;
  v11[24] = 0;
  v19 = &v11[v15[7]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v11[v15[8]] = 2;
  v11[v15[9]] = 0;

  sub_1E1AF2D1C();
  sub_1E1AF214C();
  v20 = &v11[*(v9 + 44)];
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  *(v20 + 2) = v34;
  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v22 = sub_1E1AF127C();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v7, 0, 1, v22);
  sub_1E134FD1C(v7, v4, &qword_1ECEB2AD8);
  v24 = (*(v23 + 48))(v4, 1, v22);
  if (v24 == 1)
  {
    sub_1E1308058(v7, &qword_1ECEB2AD8);
    sub_1E1308058(v4, &qword_1ECEB2AD8);
    v25 = 0;
  }

  else
  {
    sub_1E1AF121C();
    v25 = v26;
    sub_1E1308058(v7, &qword_1ECEB2AD8);
    (*(v23 + 8))(v4, v22);
  }

  v27 = v31;
  sub_1E137F600(v11, v31, &qword_1ECEBAE80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBAE88);
  v29 = v27 + *(result + 36);
  *v29 = v25;
  *(v29 + 8) = v24 == 1;
  *(v29 + 9) = 1;
  return result;
}

uint64_t sub_1E18C8D38()
{
  result = sub_1E1AF052C();
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

unint64_t sub_1E18C8E60()
{
  result = qword_1ECEBAB70;
  if (!qword_1ECEBAB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAB48);
    sub_1E18C8F18();
    sub_1E1302CD4(&qword_1ECEBAB80, &qword_1ECEBAB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAB70);
  }

  return result;
}

unint64_t sub_1E18C8F18()
{
  result = qword_1ECEBAB78;
  if (!qword_1ECEBAB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAB08);
    sub_1E1302CD4(&qword_1ECEBAB28, &qword_1ECEBAB08);
    swift_getOpaqueTypeConformance2();
    sub_1E18C3734(&qword_1ECEB6E58, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAB78);
  }

  return result;
}

void sub_1E18C908C()
{
  type metadata accessor for TruncationState();
  if (v0 <= 0x3F)
  {
    sub_1E1430C30();
    if (v1 <= 0x3F)
    {
      sub_1E1537F58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E18C9190()
{
  sub_1E18C9E74(319, &qword_1ECEBABB0, &type metadata for AnyAnnotationItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E1430C30();
    if (v1 <= 0x3F)
    {
      sub_1E1537F58();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ScaledSpaceMetric();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E18C92C4()
{
  result = qword_1ECEBAC40;
  if (!qword_1ECEBAC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAC30);
    sub_1E18C9350();
    sub_1E18C9634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAC40);
  }

  return result;
}

unint64_t sub_1E18C9350()
{
  result = qword_1ECEBAC48;
  if (!qword_1ECEBAC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAC50);
    sub_1E18C93DC();
    sub_1E18C9508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAC48);
  }

  return result;
}

unint64_t sub_1E18C93DC()
{
  result = qword_1ECEBAC58;
  if (!qword_1ECEBAC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAC60);
    sub_1E18C3734(&qword_1ECEBAC68, type metadata accessor for AnnotationView.LinkableTextAnnotationItemView);
    sub_1E18C3734(&qword_1ECEBAC70, type metadata accessor for AnnotationView.ButtonAnnotationItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAC58);
  }

  return result;
}

unint64_t sub_1E18C9508()
{
  result = qword_1ECEBAC78;
  if (!qword_1ECEBAC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAC80);
    sub_1E18C3734(&qword_1ECEBAC88, type metadata accessor for AnnotationView.TextPairAnnotationItemView);
    sub_1E18C3734(&qword_1ECEBAC90, type metadata accessor for AnnotationView.SpacerAnnotationItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAC78);
  }

  return result;
}

unint64_t sub_1E18C9634()
{
  result = qword_1ECEBAC98;
  if (!qword_1ECEBAC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBACA0);
    sub_1E18C96C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAC98);
  }

  return result;
}

unint64_t sub_1E18C96C0()
{
  result = qword_1ECEBACA8;
  if (!qword_1ECEBACA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBACB0);
    sub_1E18C3734(&qword_1ECEBACB8, type metadata accessor for AnnotationView.TextEncapsulationAnnotationItemView);
    sub_1E18C3734(&qword_1ECEBACC0, type metadata accessor for AnnotationView.ArtworkAnnotationItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBACA8);
  }

  return result;
}

unint64_t sub_1E18C97EC()
{
  result = qword_1ECEBACC8;
  if (!qword_1ECEBACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBACC8);
  }

  return result;
}

uint64_t sub_1E18C9840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E18C98A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E18C9910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E18C9970()
{
  result = qword_1ECEBAD28;
  if (!qword_1ECEBAD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAD20);
    sub_1E18C99FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAD28);
  }

  return result;
}

unint64_t sub_1E18C99FC()
{
  result = qword_1ECEBAD30;
  if (!qword_1ECEBAD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAD38);
    sub_1E18C3734(&qword_1ECEBAD40, type metadata accessor for AnnotationView.ExpandedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAD30);
  }

  return result;
}

unint64_t sub_1E18C9AB8()
{
  result = qword_1ECEBAD48;
  if (!qword_1ECEBAD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAD10);
    sub_1E18C9B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAD48);
  }

  return result;
}

unint64_t sub_1E18C9B44()
{
  result = qword_1ECEBAD50;
  if (!qword_1ECEBAD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAD08);
    sub_1E18C3734(&qword_1ECEBAD58, type metadata accessor for AnnotationView.CollapsedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAD50);
  }

  return result;
}

uint64_t sub_1E18C9D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E18C9DCC()
{
  type metadata accessor for ButtonAnnotationItem(319);
  if (v0 <= 0x3F)
  {
    sub_1E18C9E74(319, &qword_1ECEB3BE8, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E18C9E74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_49Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_50Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1E18C9FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E18CA068()
{
  result = qword_1ECEBADC0;
  if (!qword_1ECEBADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBADC8);
    sub_1E1302CD4(&qword_1ECEBABD8, &qword_1ECEBABC8);
    sub_1E1302CD4(&qword_1ECEBABE0, &qword_1ECEBABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBADC0);
  }

  return result;
}

double sub_1E18CA210@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnnotationView.ButtonAnnotationItemView(0);

  *&result = sub_1E18C732C(a1).n128_u64[0];
  return result;
}

unint64_t sub_1E18CA280()
{
  result = qword_1ECEBADF0;
  if (!qword_1ECEBADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBADE8);
    sub_1E18CA338();
    sub_1E1302CD4(&qword_1ECEB6E20, &qword_1ECEB6E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBADF0);
  }

  return result;
}

unint64_t sub_1E18CA338()
{
  result = qword_1ECEBADF8;
  if (!qword_1ECEBADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAE00);
    sub_1E18CA690(&qword_1ECEBAE08, &qword_1ECEBAE10);
    sub_1E1302CD4(&qword_1ECEB3C60, &qword_1ECEB3C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBADF8);
  }

  return result;
}

uint64_t sub_1E18CA424@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E1AF24AC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1E18CA488()
{
  result = qword_1ECEBAE70;
  if (!qword_1ECEBAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAE70);
  }

  return result;
}

unint64_t sub_1E18CA4DC()
{
  result = qword_1ECEBAE78;
  if (!qword_1ECEBAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAE78);
  }

  return result;
}

unint64_t sub_1E18CA530()
{
  result = qword_1ECEBAE90;
  if (!qword_1ECEBAE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAE98);
    sub_1E1302CD4(&qword_1ECEBAE38, &qword_1ECEBAE28);
    sub_1E1302CD4(&qword_1ECEBAE40, &qword_1ECEBAE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAE90);
  }

  return result;
}

unint64_t sub_1E18CA614()
{
  result = qword_1ECEBAEA0;
  if (!qword_1ECEBAEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAEA0);
  }

  return result;
}

uint64_t sub_1E18CA690(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1E18CA700()
{
  result = qword_1ECEBAEB8;
  if (!qword_1ECEBAEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAE88);
    sub_1E18CA78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAEB8);
  }

  return result;
}

unint64_t sub_1E18CA78C()
{
  result = qword_1ECEBAEC0;
  if (!qword_1ECEBAEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAE80);
    sub_1E18C3734(&qword_1ECEB3C58, type metadata accessor for SwiftUIArtworkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAEC0);
  }

  return result;
}

unint64_t sub_1E18CA848()
{
  result = qword_1ECEBAEC8;
  if (!qword_1ECEBAEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBAED0);
    sub_1E1302CD4(&qword_1ECEBAED8, qword_1ECEBAEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAEC8);
  }

  return result;
}

uint64_t sub_1E18CA920()
{
  sub_1E1AF762C();
  sub_1E1465304(v2, *v0);
  return sub_1E1AF767C();
}

uint64_t sub_1E18CA968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA190);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA198);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-1] - v11;
  v13 = sub_1E1AF3E2C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x1E69AB010], v13, v15);
  sub_1E1AF586C();
  (*(v14 + 8))(v17, v13);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4448);
  sub_1E1AF413C();
  sub_1E134FD1C(v12, v9, &qword_1ECEBA198);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    sub_1E1308058(v12, &qword_1ECEBA198);
    return sub_1E1308058(v9, &qword_1ECEBA198);
  }

  else
  {
    v22[3] = type metadata accessor for Action();
    v22[4] = sub_1E18CB670(qword_1EE1D2F80, type metadata accessor for Action);
    v22[0] = v21;
    (*(v4 + 104))(v6, *MEMORY[0x1E69AB128], v3);

    sub_1E1AF43FC();

    (*(v4 + 8))(v6, v3);
    sub_1E1308058(v12, &qword_1ECEBA198);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return (*(v19 + 8))(v9, v18);
  }
}

uint64_t sub_1E18CAD04()
{
  v0 = sub_1E1AF3E2C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69AB010], v0, v2);
  sub_1E1AF586C();
  return (*(v1 + 8))(v4, v0);
}

void sub_1E18CADF0()
{
  type metadata accessor for ArcadeActionImplementation.ArcadeActionImplementationError();
  swift_getWitnessTable();
  v0 = swift_allocError();
  *v1 = 1;
  sub_1E1AF584C();
}

uint64_t sub_1E18CAE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v6 = sub_1E1AF588C();
  v7 = v6;
  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_productId + 8);
  if (v8 && (v9 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_appAdamId + 8)) != 0)
  {
    v39 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_appAdamId);
    v41 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_productId);
    v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_postSubscribeAction);
    if (v10)
    {
      v11 = swift_allocObject();
      v11[2] = v7;
      v11[3] = a2;
      v11[4] = v10;

      v12 = sub_1E18CB664;
    }

    else
    {
      v12 = sub_1E18CB614;
      v11 = v6;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = v7;
    v16 = v15;
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    memset(v54, 0, sizeof(v54));
    sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_subscriptionToken, &v44, &qword_1ECEB2DF0);
    v17 = *(&v45 + 1);

    swift_retain_n();
    v37 = v11;

    if (v17)
    {
      sub_1E1308058(v54, &qword_1ECEB69E8);
      sub_1E1301CF0(&v44, &v49);
      sub_1E1301CF0(&v49, &v54[1]);
      v54[0] = a2;
      *(&v55 + 1) = v41;
      *&v56 = v8;
      *(&v56 + 1) = v39;
      v57 = v9;

      v18 = v9;
    }

    else
    {
      v18 = v9;
      sub_1E1308058(&v44, &qword_1ECEB2DF0);
    }

    v38 = v7;
    type metadata accessor for CommerceDialogHandler();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v19 = v49;
    type metadata accessor for ArcadeSubscriptionManager();
    sub_1E1AF55EC();
    v20 = v49;
    v21 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12ArcadeAction_paymentMetricsOverlay);
    v22 = *(v49 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_dialogHandler);
    *(v49 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_dialogHandler) = v19;

    sub_1E134FD1C(v54, &v44, &qword_1ECEB69E8);
    if (v44)
    {
      v52 = v47;
      v53 = v48;
      v50 = v45;
      v51 = v46;
      v49 = v44;
      v23 = v19;
      ArcadeSubscriptionDecorator.decorate()();
      v24 = swift_allocObject();
      v24[2] = v20;
      v24[3] = v21;
      v24[4] = v12;
      v24[5] = v37;
      v24[6] = sub_1E18CB61C;
      v24[7] = v16;
      v25 = swift_allocObject();
      v26 = v12;
      v27 = v16;
      v25[2] = v20;
      v25[3] = v41;
      v25[4] = v8;
      v25[5] = v39;
      v25[6] = v18;
      v25[7] = v21;
      v25[8] = v26;
      v25[9] = v37;
      v25[10] = sub_1E18CB61C;
      v25[11] = v16;
      v40 = sub_1E1361A80();

      v28 = v20;
      sub_1E1300E34(sub_1E18CB61C);

      v29 = v28;

      sub_1E1300E34(sub_1E18CB61C);
      v30 = sub_1E1AF68EC();
      *(&v45 + 1) = v40;
      *&v46 = MEMORY[0x1E69AB720];
      *&v44 = v30;
      sub_1E1AF57FC();

      sub_1E15F8178(&v49);
      __swift_destroy_boxed_opaque_existential_1(&v44);
    }

    else
    {
      v31 = v19;
      sub_1E1308058(&v44, &qword_1ECEB69E8);
      *&v44 = v39;
      *(&v44 + 1) = v18;
      *&v49 = v12;
      *(&v49 + 1) = v37;
      *&v50 = sub_1E18CB61C;
      *(&v50 + 1) = v16;
      sub_1E15F3278(v41, v8, &v44, 0, v21, &v49);
      v27 = v16;
    }

    __swift_project_boxed_opaque_existential_1Tm(&v20[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger], *&v20[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    *(&v50 + 1) = MEMORY[0x1E69E6158];
    *&v49 = v41;
    *(&v49 + 1) = v8;

    sub_1E1AF38BC();
    sub_1E1308058(&v49, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    v32 = swift_allocObject();
    v33 = &v20[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
    swift_beginAccess();
    v34 = *v33;
    v35 = v33[8];
    *(v32 + 16) = *v33;
    *(v32 + 24) = v35;
    v42 = v32;
    v43 = 64;
    sub_1E1361A40(v34, v35);
    ArcadeSubscriptionManager.setSubscriptionState(_:notifyingObservers:)(&v42, 1, &v44);

    sub_1E1361B18(sub_1E18CB61C, v27);

    sub_1E1308058(v54, &qword_1ECEB69E8);
    sub_1E1361A60(v42, v43);
    sub_1E1361A60(v44, BYTE8(v44));
    return v38;
  }

  else
  {
    type metadata accessor for ArcadeActionImplementation.ArcadeActionImplementationError();
    swift_getWitnessTable();
    v13 = swift_allocError();
    *v14 = 0;
    sub_1E1AF584C();
  }

  return v7;
}

uint64_t sub_1E18CB670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Conditional<>.init(regularValue:rightToLeftValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v20[0] = v14;
  v20[1] = v15;
  KeyPath = swift_getKeyPath();
  v17 = *(v8 + 16);
  v17(v13, a2, a3);
  v17(v10, a1, a3);
  Conditional<>.init(property:trueValue:falseValue:)(KeyPath, v13, v10, a3, &v21);
  v18 = *(v8 + 8);
  v18(a2, a3);
  result = (v18)(a1, a3);
  *a4 = v21;
  return result;
}

void *SearchChartOrCategory.backgroundColor.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t SearchChartOrCategory.brickBadge.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchChartOrCategory.brickTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SearchChartOrCategory.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_impressionMetrics;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &unk_1ECEB1770);
}

uint64_t SearchChartOrCategory.impressionMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_impressionMetrics;
  swift_beginAccess();
  sub_1E13619D8(a1, v1 + v3, &unk_1ECEB1770);
  return swift_endAccess();
}

uint64_t SearchChartOrCategory.clickAction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickAction;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SearchChartOrCategory.clickSender.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickSender;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB2DF0);
}

uint64_t SearchChartOrCategory.clickSender.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickSender;
  swift_beginAccess();
  sub_1E13619D8(a1, v1 + v3, &qword_1ECEB2DF0);
  return swift_endAccess();
}

__n128 SearchChartOrCategory.artworkSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_artworkSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_artworkSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_artworkSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 SearchChartOrCategory.textSafeArea.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_textSafeArea;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_textSafeArea + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_textSafeArea);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t SearchChartOrCategory.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchChartOrCategory.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SearchChartOrCategory.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v89 = *v2;
  v87 = sub_1E1AEFEAC();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1E1AF39DC();
  v6 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v99 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v84 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  v103 = sub_1E1AF380C();
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v92 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v84 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v84 - v26;
  v28 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_impressionMetrics;
  v102 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_impressionMetrics;
  v29 = sub_1E1AF46DC();
  (*(*(v29 - 8) + 56))(&v2[v28], 1, 1, v29);
  v90 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickAction;
  v30 = v2;
  *&v2[OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickAction] = 0;
  v31 = &v2[OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickSender];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  sub_1E1AF381C();
  v100 = v6;
  v32 = *(v6 + 16);
  v32(v14, a2, v118);
  v95 = v24;
  v91 = v14;
  sub_1E1AF464C();
  v33 = v102;
  swift_beginAccess();
  v96 = v30;
  sub_1E13619D8(v27, v33 + v30, &unk_1ECEB1770);
  swift_endAccess();
  v34 = v106;
  v101 = a2;
  v35 = a2;
  v36 = v118;
  v32(v106, v35, v118);
  sub_1E1AF381C();
  v102 = v32;
  v32(v97, v34, v36);
  type metadata accessor for Artwork();
  sub_1E18CD18C(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  v37 = v104;
  v38 = sub_1E1AF62EC();
  if (v37)
  {

    v97 = 0;
  }

  else
  {
    v97 = v38;
  }

  sub_1E1AF381C();
  v102(v99, v106, v118);
  v39 = sub_1E1AF62EC();
  v40 = v95;
  v99 = v39;
  v41 = v103;
  v42 = v98;
  sub_1E1AF381C();
  v43 = sub_1E1AF37CC();
  v45 = v44;
  v104 = *(v105 + 8);
  v105 += 8;
  v104(v42, v41);
  if (v45)
  {
    v98 = 0;
    v94 = v45;
    sub_1E1AF381C();
    v88 = a1;
    v46 = v91;
    v47 = v118;
    v48 = v102;
    v102(v91, v106, v118);
    sub_1E18CCB00();
    sub_1E1AF464C();
    v93 = v43;
    v49 = v96;
    v50 = (v96 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_artworkSafeArea);
    v51 = v113;
    *v50 = v112;
    v50[1] = v51;
    v50[2] = *v114;
    *(v50 + 42) = *&v114[10];
    sub_1E1AF381C();
    v52 = v106;
    v53 = v47;
    v54 = v103;
    v48(v46, v106, v53);
    sub_1E1AF464C();
    v55 = (v49 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_textSafeArea);
    v56 = v116;
    *v55 = v115;
    v55[1] = v56;
    v55[2] = *v117;
    *(v55 + 42) = *&v117[10];
    type metadata accessor for Action();
    v57 = v88;
    sub_1E1AF381C();
    v58 = static Action.tryToMakeInstance(byDeserializing:using:)(v40, v52);
    v59 = v104;
    v104(v40, v54);
    v60 = v90;
    swift_beginAccess();
    *(v49 + v60) = v58;

    sub_1E1AF381C();
    sub_1E18CCB54();
    sub_1E1AF369C();
    v59(v40, v54);
    *(v49 + 48) = v109;
    v61 = v99;
    v49[7] = v97;
    v49[8] = v61;
    sub_1E1AF381C();
    v62 = JSONObject.appStoreColor.getter();
    v59(v40, v54);
    v49[10] = v62;
    sub_1E1AF381C();
    v63 = sub_1E1AF37CC();
    v65 = v64;
    v59(v40, v54);
    v49[2] = v63;
    v49[3] = v65;
    v66 = v94;
    v49[4] = v93;
    v49[5] = v66;
    v67 = v92;
    sub_1E1AF381C();
    v68 = sub_1E1AF37CC();
    if (v69)
    {
      v107 = v68;
      v108 = v69;
      sub_1E1AF6F6C();
      v70 = v67;
    }

    else
    {
      v75 = v85;
      sub_1E1AEFE9C();
      v76 = sub_1E1AEFE7C();
      v78 = v77;
      (*(v86 + 8))(v75, v87);
      v107 = v76;
      v108 = v78;
      sub_1E1AF6F6C();
      v70 = v92;
    }

    v104(v70, v54);
    v79 = v110;
    *(v49 + 11) = v109;
    *(v49 + 13) = v79;
    v49[15] = v111;
    sub_1E1AF381C();
    sub_1E1822FCC();
    sub_1E1AF369C();

    v80 = *(v100 + 8);
    v81 = v118;
    v80(v101, v118);
    v82 = v104;
    v104(v57, v54);
    v82(v40, v54);
    v80(v106, v81);
    *(v49 + 72) = v109;
  }

  else
  {

    v71 = sub_1E1AF5A7C();
    sub_1E18CD18C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v72 = 0x656C746974;
    v72[1] = 0xE500000000000000;
    v72[2] = v89;
    (*(*(v71 - 8) + 104))(v72, *MEMORY[0x1E69AB690], v71);
    swift_willThrow();
    v73 = *(v100 + 8);
    v74 = v118;
    v73(v101, v118);
    v104(a1, v41);
    v73(v106, v74);
    v49 = v96;
    sub_1E1308058(v96 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_impressionMetrics, &unk_1ECEB1770);

    sub_1E1308058(v49 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickSender, &qword_1ECEB2DF0);
    swift_deallocPartialClassInstance();
  }

  return v49;
}

unint64_t sub_1E18CCB00()
{
  result = qword_1EE1D6D68;
  if (!qword_1EE1D6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D6D68);
  }

  return result;
}

unint64_t sub_1E18CCB54()
{
  result = qword_1EE1D8E88;
  if (!qword_1EE1D8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D8E88);
  }

  return result;
}

uint64_t SearchChartOrCategory.deinit()
{

  sub_1E134B88C(v0 + 88);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_impressionMetrics, &unk_1ECEB1770);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickSender, &qword_1ECEB2DF0);
  return v0;
}

uint64_t SearchChartOrCategory.__deallocating_deinit()
{
  SearchChartOrCategory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E18CCCB4()
{
  v1 = *(*v0 + 32);

  return v1;
}

__n128 sub_1E18CCCE8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_artworkSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

__n128 sub_1E18CCD14@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_textSafeArea;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v2 + 32);
  result = *(v2 + 42);
  *(a1 + 42) = result;
  return result;
}

uint64_t type metadata accessor for SearchChartOrCategory()
{
  result = qword_1EE1ECF58;
  if (!qword_1EE1ECF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18CCDD4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickAction;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = type metadata accessor for Action();
    v7 = sub_1E18CD18C(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = v6;
  a1[4] = v7;
}

void *sub_1E18CCE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = SearchChartOrCategory.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E18CCF40@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_clickSender;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a1, &qword_1ECEB2DF0);
}

void *sub_1E18CCFB8()
{
  v1 = *(*v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t sub_1E18CCFF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit21SearchChartOrCategory_impressionMetrics;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a1, &unk_1ECEB1770);
}

void sub_1E18CD068()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E18CD18C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E18CD248(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v6 = sub_1E1AF708C();
  v27 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = sub_1E1AF39DC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  MEMORY[0x1E68FE9D0](v14);
  sub_1E18D0344();
  sub_1E1AF377C();
  if (v3)
  {
    v26 = a2;
    v28 = a1;

    v30 = v3;
    v15 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
    if (swift_dynamicCast())
    {

      v16 = v27;
      (*(v27 + 32))(v29, v10, v6);
      v17 = sub_1E1AF5A7C();
      sub_1E18D0050(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1E1B02CC0;
      *(v20 + 32) = swift_allocError();
      v21 = v29;
      (*(v16 + 16))(v22, v29, v6);
      *v19 = &type metadata for VideoControls;
      v19[1] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69AB698], v17);
      swift_willThrow();
      (*(v12 + 8))(v26, v11);
      v23 = sub_1E1AF380C();
      (*(*(v23 - 8) + 8))(v28, v23);
      (*(v16 + 8))(v21, v6);
    }

    else
    {
      (*(v12 + 8))(v26, v11);
      v25 = sub_1E1AF380C();
      (*(*(v25 - 8) + 8))(v28, v25);
    }
  }

  else
  {

    (*(v12 + 8))(a2, v11);
    v24 = sub_1E1AF380C();
    (*(*(v24 - 8) + 8))(a1, v24);
    *v28 = v30;
  }
}

void sub_1E18CD6CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1E1AF708C();
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = sub_1E1AF39DC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v14);
  MEMORY[0x1E68FE9D0](v16);
  sub_1E18D02F0();
  sub_1E1AF377C();
  if (v3)
  {
    v30 = a1;
    v31 = a2;

    *&v33 = v3;
    v17 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
    if (swift_dynamicCast())
    {

      v18 = v35;
      v19 = v32;
      (*(v35 + 32))(v32, v11, v7);
      v20 = sub_1E1AF5A7C();
      sub_1E18D0050(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1E1B02CC0;
      *(v23 + 32) = swift_allocError();
      (*(v18 + 16))(v24, v19, v7);
      *v22 = &type metadata for GamesUIDeepLinkTarget;
      v22[1] = v23;
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69AB698], v20);
      swift_willThrow();
      (*(v13 + 8))(v31, v12);
      v25 = sub_1E1AF380C();
      (*(*(v25 - 8) + 8))(v30, v25);
      (*(v18 + 8))(v19, v7);
    }

    else
    {
      (*(v13 + 8))(v31, v12);
      v28 = sub_1E1AF380C();
      (*(*(v28 - 8) + 8))(v30, v28);
    }
  }

  else
  {

    (*(v13 + 8))(a2, v12);
    v26 = sub_1E1AF380C();
    (*(*(v26 - 8) + 8))(a1, v26);
    v27 = v34;
    *a3 = v33;
    *(a3 + 16) = v27;
  }
}

uint64_t Video.__allocating_init(id:videoUrl:preview:allowsAutoPlay:looping:canPlayFullScreen:playbackControls:autoPlayPlaybackControls:templateMediaEvent:templateClickEvent:segue:impressionMetrics:editorialMediaFlavor:editorialMediaPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, unsigned __int8 *a14)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v54 = a12;
  v55 = a2;
  v50 = a10;
  v48 = a3;
  v49 = a9;
  v17 = sub_1E1AEFEAC();
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = *a7;
  v22 = *a8;
  v42 = *(a8 + 8);
  v23 = *a14;
  v46 = *a13;
  v47 = v23;
  v24 = v20 + OBJC_IVAR____TtC11AppStoreKit5Video_id;
  v51 = a1;
  sub_1E134FD1C(a1, &v58, &unk_1ECEB5670);
  if (*(&v59 + 1))
  {
    v25 = v59;
    *v24 = v58;
    *(v24 + 16) = v25;
    *(v24 + 32) = v60;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v22;
    v29 = v28;
    (*(v52 + 8))(v19, v53);
    v56 = v26;
    v57 = v29;
    v22 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v58, &unk_1ECEB5670);
  }

  v41 = a11;
  sub_1E134FD1C(a11, v20 + OBJC_IVAR____TtC11AppStoreKit5Video_segue, &unk_1ECEB1780);
  sub_1E134FD1C(v54, v20 + OBJC_IVAR____TtC11AppStoreKit5Video_impressionMetrics, &unk_1ECEB1770);
  v30 = OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl;
  v31 = sub_1E1AEFCCC();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v20 + v30, v55, v31);
  *(v20 + OBJC_IVAR____TtC11AppStoreKit5Video_preview) = v48;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit5Video_allowsAutoPlay) = v43 & 1;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit5Video_looping) = v44 & 1;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit5Video_canPlayFullScreen) = v45 & 1;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit5Video_playbackControls) = v21;
  if (v42)
  {
    v33 = v21;
  }

  else
  {
    v33 = v22;
  }

  *(v20 + OBJC_IVAR____TtC11AppStoreKit5Video_autoPlayPlaybackControls) = v33;
  v34 = v49;
  sub_1E134FD1C(v49, v20 + OBJC_IVAR____TtC11AppStoreKit5Video_templateMediaEvent, &qword_1ECEB36B0);
  v35 = v50;
  sub_1E134FD1C(v50, v20 + OBJC_IVAR____TtC11AppStoreKit5Video_templateClickEvent, &qword_1ECEB36B0);

  sub_1E1AEFE9C();
  v36 = sub_1E1AEFE7C();
  v38 = v37;
  (*(v52 + 8))(v19, v53);
  *&v58 = v36;
  *(&v58 + 1) = v38;
  sub_1E1AF6F6C();

  sub_1E1308058(v54, &unk_1ECEB1770);
  sub_1E1308058(v41, &unk_1ECEB1780);
  sub_1E1308058(v35, &qword_1ECEB36B0);
  sub_1E1308058(v34, &qword_1ECEB36B0);
  (*(v32 + 8))(v55, v31);
  sub_1E1308058(v51, &unk_1ECEB5670);
  v39 = v47;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit5Video_editorialMediaFlavor) = v46;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit5Video_editorialMediaPlacement) = v39;
  return v20;
}

uint64_t Video.init(id:videoUrl:preview:allowsAutoPlay:looping:canPlayFullScreen:playbackControls:autoPlayPlaybackControls:templateMediaEvent:templateClickEvent:segue:impressionMetrics:editorialMediaFlavor:editorialMediaPlacement:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, unsigned __int8 *a14)
{
  v15 = v14;
  v47 = a5;
  v48 = a6;
  v46 = a4;
  v57 = a2;
  v51 = a10;
  v49 = a3;
  v50 = a9;
  v19 = sub_1E1AEFEAC();
  v55 = *(v19 - 8);
  v56 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a7;
  v45 = *a8;
  v44 = *(a8 + 8);
  LODWORD(v20) = *a14;
  v52 = *a13;
  v53 = v20;
  v54 = a1;
  sub_1E134FD1C(a1, &v60, &unk_1ECEB5670);
  if (*(&v61 + 1))
  {
    v63 = v60;
    v64 = v61;
    v65 = v62;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v55 + 8))(v21, v56);
    v58 = v23;
    v59 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v60, &unk_1ECEB5670);
  }

  v26 = v15 + OBJC_IVAR____TtC11AppStoreKit5Video_id;
  v27 = v64;
  *v26 = v63;
  *(v26 + 16) = v27;
  *(v26 + 32) = v65;
  v43 = a11;
  sub_1E134FD1C(a11, v15 + OBJC_IVAR____TtC11AppStoreKit5Video_segue, &unk_1ECEB1780);
  v42 = a12;
  sub_1E134FD1C(a12, v15 + OBJC_IVAR____TtC11AppStoreKit5Video_impressionMetrics, &unk_1ECEB1770);
  v28 = OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl;
  v29 = sub_1E1AEFCCC();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v15 + v28, v57, v29);
  *(v15 + OBJC_IVAR____TtC11AppStoreKit5Video_preview) = v49;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit5Video_allowsAutoPlay) = v46 & 1;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit5Video_looping) = v47 & 1;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit5Video_canPlayFullScreen) = v48 & 1;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit5Video_playbackControls) = v22;
  v31 = v45;
  if (v44)
  {
    v31 = v22;
  }

  *(v15 + OBJC_IVAR____TtC11AppStoreKit5Video_autoPlayPlaybackControls) = v31;
  v32 = v50;
  sub_1E134FD1C(v50, v15 + OBJC_IVAR____TtC11AppStoreKit5Video_templateMediaEvent, &qword_1ECEB36B0);
  v33 = v51;
  sub_1E134FD1C(v51, v15 + OBJC_IVAR____TtC11AppStoreKit5Video_templateClickEvent, &qword_1ECEB36B0);

  sub_1E1AEFE9C();
  v34 = sub_1E1AEFE7C();
  v36 = v35;
  (*(v55 + 8))(v21, v56);
  *&v60 = v34;
  *(&v60 + 1) = v36;
  sub_1E1AF6F6C();

  sub_1E1308058(v42, &unk_1ECEB1770);
  sub_1E1308058(v43, &unk_1ECEB1780);
  sub_1E1308058(v33, &qword_1ECEB36B0);
  sub_1E1308058(v32, &qword_1ECEB36B0);
  (*(v30 + 8))(v57, v29);
  sub_1E1308058(v54, &unk_1ECEB5670);
  v37 = v15 + OBJC_IVAR____TtC11AppStoreKit5Video_playbackId;
  v38 = v64;
  *v37 = v63;
  *(v37 + 16) = v38;
  *(v37 + 32) = v65;
  v39 = v53;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit5Video_editorialMediaFlavor) = v52;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit5Video_editorialMediaPlacement) = v39;
  return v15;
}

uint64_t Video.__allocating_init(deserializing:using:)(char *a1, char *a2)
{
  v4 = swift_allocObject();
  Video.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Video.init(deserializing:using:)(char *a1, char *a2)
{
  v177 = a2;
  v169 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB36B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v156 = &v149 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v172 = (&v149 - v7);
  v8 = sub_1E1AEFCCC();
  v174 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v165 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF39DC();
  v178 = *(v10 - 8);
  v179 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v154 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v158 = &v149 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v163 = &v149 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v180 = &v149 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v173 = &v149 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v149 - v21;
  v23 = sub_1E1AEFEAC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1E1AF380C();
  v27 = *(v184 - 8);
  v28 = MEMORY[0x1EEE9AC00](v184);
  v155 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v153 = &v149 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v157 = &v149 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v161 = &v149 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v160 = &v149 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v159 = &v149 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v162 = &v149 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v171 = &v149 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v176 = &v149 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v149 - v46;
  sub_1E1AF381C();
  v48 = sub_1E1AF37CC();
  v182 = a1;
  v175 = v8;
  v152 = v23;
  v151 = v24;
  v150 = v26;
  if (v49)
  {
    v185 = v48;
    v186 = v49;
  }

  else
  {
    sub_1E1AEFE9C();
    v51 = sub_1E1AEFE7C();
    v53 = v52;
    (*(v24 + 8))(v26, v23);
    v185 = v51;
    v186 = v53;
  }

  sub_1E1AF6F6C();
  v50 = *(v27 + 8);
  v50(v47, v184);
  v183 = v50;
  v181 = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54 = v190;
  v55 = v190 + OBJC_IVAR____TtC11AppStoreKit5Video_id;
  v56 = v188;
  *v55 = v187;
  *(v55 + 16) = v56;
  v168 = v55;
  *(v55 + 32) = v189;
  sub_1E1AF46DC();
  v57 = v176;
  sub_1E1AF381C();
  v58 = v177;
  v59 = v178 + 16;
  v60 = *(v178 + 16);
  v61 = v179;
  v60(v173, v177, v179);
  sub_1E1AF464C();
  v167 = OBJC_IVAR____TtC11AppStoreKit5Video_impressionMetrics;
  sub_1E137F600(v22, v54 + OBJC_IVAR____TtC11AppStoreKit5Video_impressionMetrics, &unk_1ECEB1770);
  v62 = v180;
  v170 = v59;
  v166 = v60;
  v60(v180, v58, v61);
  v63 = type metadata accessor for Action();
  sub_1E1AF381C();
  v64 = static Action.tryToMakeInstance(byDeserializing:using:)(v57, v62);
  v183(v57, v184);
  if (v64)
  {
    v65 = sub_1E18D0050(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v66 = v175;
  v67 = v171;
  v68 = v172;
  v69 = (v190 + OBJC_IVAR____TtC11AppStoreKit5Video_segue);
  *v69 = v64;
  v69[1] = 0;
  v69[2] = 0;
  v69[3] = v63;
  v172 = v69;
  v69[4] = v65;
  v70 = v182;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v71 = v67;
  v72 = v183;
  v73 = v184;
  v183(v71, v184);
  v74 = v174;
  if ((*(v174 + 48))(v68, 1, v66) == 1)
  {
    sub_1E1308058(v68, &unk_1ECEB4B60);
    v75 = sub_1E1AF5A7C();
    sub_1E18D0050(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v76 = 0x6C72556F65646976;
    v76[1] = 0xE800000000000000;
    v76[2] = v169;
    (*(*(v75 - 8) + 104))(v76, *MEMORY[0x1E69AB690], v75);
    swift_willThrow();
    v77 = *(v178 + 8);
    v78 = v179;
    v77(v177, v179);
    v72(v70, v73);
    v77(v180, v78);
LABEL_21:
    sub_1E134B88C(v168);
    sub_1E1308058(v172, &unk_1ECEB1780);
    sub_1E1308058(v190 + v167, &unk_1ECEB1770);
    swift_deallocPartialClassInstance();
    return v190;
  }

  v79 = v165;
  (*(v74 + 32))(v165, v68, v66);
  v80 = *(v74 + 16);
  v149 = OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl;
  v80(v190 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v79, v66);
  type metadata accessor for Artwork();
  v81 = v162;
  v82 = v74;
  sub_1E1AF381C();
  v83 = v163;
  v85 = v179;
  v84 = v180;
  v166(v163, v180, v179);
  v86 = v164;
  v87 = Artwork.__allocating_init(deserializing:using:)(v81, v83);
  v171 = v86;
  if (v86)
  {
    v88 = *(v178 + 8);
    v88(v177, v85);
    v183(v70, v184);
    v89 = *(v82 + 8);
    v89(v79, v66);
    v88(v84, v85);
    v89((v190 + v149), v66);
    goto LABEL_21;
  }

  v90 = v85;
  v91 = v190;
  *(v190 + OBJC_IVAR____TtC11AppStoreKit5Video_preview) = v87;
  v92 = v159;
  sub_1E1AF381C();
  v93 = sub_1E1AF370C();
  v94 = v92;
  v95 = v183;
  v96 = v184;
  v183(v94, v184);
  *(v91 + OBJC_IVAR____TtC11AppStoreKit5Video_allowsAutoPlay) = (v93 == 2) | v93 & 1;
  v97 = v160;
  sub_1E1AF381C();
  v98 = sub_1E1AF370C();
  v95(v97, v96);
  *(v91 + OBJC_IVAR____TtC11AppStoreKit5Video_looping) = (v98 == 2) | v98 & 1;
  v99 = v161;
  sub_1E1AF381C();
  v100 = sub_1E1AF370C();
  v95(v99, v96);
  *(v91 + OBJC_IVAR____TtC11AppStoreKit5Video_canPlayFullScreen) = (v100 == 2) | v100 & 1;
  v101 = v176;
  sub_1E1AF381C();
  v102 = sub_1E1AF37AC();
  v95(v101, v96);
  if (v102)
  {
    v103 = 15;
    v104 = v180;
  }

  else
  {
    v105 = v157;
    sub_1E1AF381C();
    v106 = v158;
    v104 = v180;
    v107 = v90;
    v166(v158, v180, v90);
    v108 = v171;
    sub_1E18CD248(v105, v106, &v187);
    v171 = v108;
    if (v108)
    {
      v109 = v96;
      v110 = v104;
      v111 = *(v178 + 8);
      v111(v177, v107);
      v112 = v70;
      goto LABEL_20;
    }

    v103 = v187;
  }

  v113 = OBJC_IVAR____TtC11AppStoreKit5Video_playbackControls;
  *(v190 + OBJC_IVAR____TtC11AppStoreKit5Video_playbackControls) = v103;
  v114 = v176;
  v115 = v182;
  sub_1E1AF381C();
  v116 = sub_1E1AF37AC();
  v183(v114, v96);
  if ((v116 & 1) == 0)
  {
    v120 = v153;
    sub_1E1AF381C();
    v121 = v154;
    v107 = v179;
    v166(v154, v104, v179);
    v122 = v171;
    sub_1E18CD248(v120, v121, &v187);
    v171 = v122;
    if (!v122)
    {
      v118 = v187;
      v119 = OBJC_IVAR____TtC11AppStoreKit5Video_autoPlayPlaybackControls;
      v117 = v190;
      goto LABEL_24;
    }

    v109 = v96;
    v110 = v104;
    v111 = *(v178 + 8);
    v111(v177, v107);
    v112 = v115;
LABEL_20:
    v183(v112, v109);
    v123 = v175;
    v124 = *(v174 + 8);
    v124(v165, v175);
    v111(v110, v107);
    v124((v190 + v149), v123);

    goto LABEL_21;
  }

  v117 = v190;
  v118 = *(v190 + v113);
  v119 = OBJC_IVAR____TtC11AppStoreKit5Video_autoPlayPlaybackControls;
LABEL_24:
  *(v117 + v119) = v118;
  sub_1E1AF3ABC();
  sub_1E1AF381C();
  v126 = v173;
  v127 = v179;
  v128 = v180;
  v129 = v166;
  v166(v173, v180, v179);
  v130 = v156;
  sub_1E1AF464C();
  v131 = v190;
  sub_1E137F600(v130, v190 + OBJC_IVAR____TtC11AppStoreKit5Video_templateMediaEvent, &qword_1ECEB36B0);
  sub_1E1AF381C();
  v132 = v128;
  v133 = v127;
  v129(v126, v132, v127);
  v134 = v182;
  sub_1E1AF464C();
  sub_1E137F600(v130, v131 + OBJC_IVAR____TtC11AppStoreKit5Video_templateClickEvent, &qword_1ECEB36B0);
  v135 = v155;
  sub_1E1AF381C();
  v136 = sub_1E1AF37CC();
  if (v137)
  {
    v185 = v136;
    v186 = v137;
  }

  else
  {
    v138 = v150;
    sub_1E1AEFE9C();
    v139 = sub_1E1AEFE7C();
    v141 = v140;
    (*(v151 + 8))(v138, v152);
    v185 = v139;
    v186 = v141;
  }

  sub_1E1AF6F6C();
  v183(v135, v184);
  v142 = v190;
  v143 = v190 + OBJC_IVAR____TtC11AppStoreKit5Video_playbackId;
  v144 = v188;
  *v143 = v187;
  *(v143 + 16) = v144;
  *(v143 + 32) = v189;
  sub_1E1AF381C();
  v145 = v173;
  v146 = v177;
  v147 = v166;
  v166(v173, v177, v133);
  sub_1E18CF73C();
  sub_1E1AF464C();
  *(v142 + OBJC_IVAR____TtC11AppStoreKit5Video_editorialMediaFlavor) = v187;
  sub_1E1AF381C();
  v147(v145, v146, v133);
  sub_1E18CF790();
  sub_1E1AF464C();
  v148 = *(v178 + 8);
  v148(v146, v133);
  v183(v134, v184);
  (*(v174 + 8))(v165, v175);
  v148(v180, v133);
  *(v142 + OBJC_IVAR____TtC11AppStoreKit5Video_editorialMediaPlacement) = v187;
  return v190;
}

unint64_t sub_1E18CF73C()
{
  result = qword_1EE1DC338[0];
  if (!qword_1EE1DC338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DC338);
  }

  return result;
}

unint64_t sub_1E18CF790()
{
  result = qword_1EE1D9BA0;
  if (!qword_1EE1D9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D9BA0);
  }

  return result;
}

uint64_t Video.videoUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl;
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static Video.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E1AEFC4C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit5Video_preview);
  v5 = *(a2 + OBJC_IVAR____TtC11AppStoreKit5Video_preview);

  return _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v4, v5);
}

uint64_t Video.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_playbackId);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_templateMediaEvent, &qword_1ECEB36B0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_templateClickEvent, &qword_1ECEB36B0);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_segue, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t Video.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_playbackId);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_templateMediaEvent, &qword_1ECEB36B0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_templateClickEvent, &qword_1ECEB36B0);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_segue, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Video_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t Video.hashValue.getter()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E18CFD98@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Video.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E18CFE00()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E18CFE80()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E18CFF08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_1E1AEFC4C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + OBJC_IVAR____TtC11AppStoreKit5Video_preview);
  v5 = *(v3 + OBJC_IVAR____TtC11AppStoreKit5Video_preview);

  return _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v4, v5);
}

uint64_t type metadata accessor for Video()
{
  result = qword_1EE1E52C0;
  if (!qword_1EE1E52C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18D0050(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E18D00A0()
{
  sub_1E1AEFCCC();
  if (v0 <= 0x3F)
  {
    sub_1E18D029C(319, qword_1EE1E3B30, MEMORY[0x1E69AAF48]);
    if (v1 <= 0x3F)
    {
      sub_1E18D029C(319, &qword_1EE1E39F0, MEMORY[0x1E69AB1E8]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1E18D029C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E18D02F0()
{
  result = qword_1EE1DAA10;
  if (!qword_1EE1DAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DAA10);
  }

  return result;
}

unint64_t sub_1E18D0344()
{
  result = qword_1EE1DFEE8;
  if (!qword_1EE1DFEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFEE8);
  }

  return result;
}

uint64_t ExternalLinkLayout.init(metrics:descriptionTextView:summaryTextView:disclosureIndicatorView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1E18D0480(a1, (a5 + 15));
  sub_1E1300B24(a2, a5);
  sub_1E1300B24(a3, (a5 + 5));
  sub_1E1300B24(a4, (a5 + 10));
  __swift_project_boxed_opaque_existential_1Tm(a5, a5[3]);
  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(a5 + 5, a5[8]);
  sub_1E1AF146C();
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);

  return sub_1E18D04B8(a1);
}

uint64_t ExternalLinkLayout.Metrics.init(horizontalMargin:descriptionTopSpace:descriptionMaxLines:summaryBottomSpace:summaryMaxLines:disclosureIndicatorMargin:disclosureIndicatorSize:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  sub_1E1361B28(a1, a7);
  sub_1E1361B28(a2, a7 + 40);
  *(a7 + 80) = a3;
  sub_1E1361B28(a4, a7 + 88);
  *(a7 + 128) = a5;
  result = sub_1E1361B28(a6, a7 + 136);
  *(a7 + 176) = a8;
  *(a7 + 184) = a9;
  return result;
}

double ExternalLinkLayout.measurements(fitting:in:)(double a1)
{
  v2 = v1;
  v10 = a1;
  v3 = sub_1E1AF745C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v1 + 15, v1[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v7 = *(v4 + 8);
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 15, v2[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 32, v2[35]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 5, v2[8]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 20, v2[23]);
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 26, v2[29]);
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v2 + 26, v2[29]);
  sub_1E1AF12CC();
  return v10;
}

uint64_t ExternalLinkLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57.origin.x = a1;
  v57.origin.y = a2;
  v57.size.width = a3;
  v47 = a3;
  v57.size.height = a4;
  CGRectGetWidth(v57);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 15, v4[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v14 = *(v11 + 8);
  v14(v13, v10);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 15, v5[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v14(v13, v10);
  v55 = v4[37];
  __swift_project_boxed_opaque_existential_1Tm(v5 + 32, v5[35]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v14(v13, v10);
  v58.origin.x = a1;
  v56 = a2;
  v58.origin.y = a2;
  v58.size.width = a3;
  v58.size.height = a4;
  CGRectGetHeight(v58);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF11CC();
  v16 = v15;
  v18 = v17;
  v48 = v19;
  v46 = v20;
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  sub_1E1AF11CC();
  v51 = v22;
  v52 = v21;
  v53 = v24;
  v54 = v23;
  v59.origin.x = a1;
  v49 = a1;
  v59.origin.y = a2;
  v25 = v47;
  v59.size.width = v47;
  v59.size.height = a4;
  v26 = a4;
  MinY = CGRectGetMinY(v59);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 20, v5[23]);
  v28 = v46;
  sub_1E1AF12FC();
  v30 = MinY + v29;
  __swift_project_boxed_opaque_existential_1Tm(v5 + 15, v5[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v32 = v31;
  v14(v13, v10);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  v50 = v26;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v60.origin.x = v32;
  v60.origin.y = v30;
  v60.size.width = v16;
  v60.size.height = v18;
  MaxY = CGRectGetMaxY(v60);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 26, v5[29]);
  sub_1E1AF12FC();
  v35 = MaxY + v34 - v28;
  __swift_project_boxed_opaque_existential_1Tm(v5 + 15, v5[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v37 = v36;
  v14(v13, v10);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 5, v5[8]);
  v38 = v49;
  v39 = v56;
  v41 = v51;
  v40 = v52;
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v61.origin.x = v37;
  v61.origin.y = v35;
  v61.size.width = v40;
  v61.size.height = v41;
  v42 = CGRectGetMaxY(v61);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 26, v5[29]);
  sub_1E1AF12CC();
  v44 = v42 + v43;
  v62.origin.x = v38;
  v62.origin.y = v39;
  v62.size.width = v25;
  v62.size.height = v44;
  CGRectGetMaxX(v62);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 15, v5[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v14(v13, v10);
  v63.origin.x = v38;
  v63.origin.y = v39;
  v63.size.width = v25;
  v63.size.height = v44;
  CGRectGetMidY(v63);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 10, v5[13]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

uint64_t sub_1E18D1028(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E18D1070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t InformationContainer.__allocating_init(id:annotationGroups:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  sub_1E138853C(a1, &v15);
  if (*(&v16 + 1))
  {
    sub_1E13E2E98(a1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
  }

  else
  {
    sub_1E1AEFE9C();
    v9 = sub_1E1AEFE7C();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    v14[1] = v9;
    v14[2] = v11;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v15);
  }

  v12 = v19;
  *(v8 + 24) = v18;
  *(v8 + 40) = v12;
  *(v8 + 56) = v20;
  *(v8 + 16) = a2;
  return v8;
}

uint64_t InformationContainer.init(id:annotationGroups:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v16);
  if (*(&v17 + 1))
  {
    sub_1E13E2E98(a1);
    v19 = v16;
    v20 = v17;
    v21 = v18;
  }

  else
  {
    sub_1E1AEFE9C();
    v10 = sub_1E1AEFE7C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    v15[1] = v10;
    v15[2] = v12;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v16);
  }

  v13 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v13;
  *(v3 + 56) = v21;
  *(v3 + 16) = a2;
  return v3;
}

uint64_t InformationContainer.deinit()
{

  sub_1E134B88C(v0 + 24);
  return v0;
}

uint64_t InformationContainer.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18D1480@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E18D14BC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E18D14BC(char *a1, uint64_t a2)
{
  v27 = a2;
  v26 = sub_1E1AF39DC();
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E1AF380C();
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v28 = a1;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  if (v14)
  {
    v29 = v13;
    v30 = v14;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v29 = v15;
    v30 = v17;
  }

  sub_1E1AF6F6C();
  v18 = *(v9 + 8);
  v18(v12, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB000);
  v19 = v28;
  sub_1E1AF381C();
  v20 = v26;
  v21 = v27;
  (*(v3 + 16))(v25, v27, v26);
  sub_1E18D18E8();
  sub_1E1AF464C();
  if (v29)
  {
    v22 = v29;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for InformationContainer();
  v23 = swift_allocObject();
  InformationContainer.init(id:annotationGroups:)(v31, v22);
  (*(v3 + 8))(v21, v20);
  v18(v19, v32);
  return v23;
}

unint64_t sub_1E18D181C()
{
  result = qword_1ECEBAFF8;
  if (!qword_1ECEBAFF8)
  {
    type metadata accessor for InformationContainer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBAFF8);
  }

  return result;
}

unint64_t sub_1E18D18E8()
{
  result = qword_1ECEBB008;
  if (!qword_1ECEBB008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBB000);
    sub_1E18D196C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB008);
  }

  return result;
}

unint64_t sub_1E18D196C()
{
  result = qword_1ECEBB010;
  if (!qword_1ECEBB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBB010);
  }

  return result;
}

uint64_t sub_1E18D19C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for UnboundedCache();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t LinkLoader.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1E18D32C8(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t LinkLoader.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1E18D32C8(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_1E18D1BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(v3 + 88);
  v5 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1E1AF6D9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  (*(v4 + 48))(v20, v5, v4, v13);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v16 = swift_getAssociatedTypeWitness();
    return (*(*(v16 - 8) + 56))(v21, 1, 1, v16);
  }

  else
  {
    (*(v11 + 32))(v15, v10, AssociatedTypeWitness);
    sub_1E18D19C0(v22);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v18 = type metadata accessor for UnboundedCache();
    UnboundedCache.subscript.getter();
    (*(*(v18 - 8) + 8))(v22, v18);
    return (*(v11 + 8))(v15, AssociatedTypeWitness);
  }
}

uint64_t sub_1E18D1F20(uint64_t a1, int a2)
{
  v3 = v2;
  v65 = a2;
  v71 = a1;
  v4 = *v2;
  v5 = v4[11];
  v6 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = sub_1E1AF6D9C();
  v58 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v53 - v10;
  v59 = AssociatedTypeWitness;
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v53 - v15;
  v16 = sub_1E1AF6D9C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v62 = v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v53 - v25;
  v27 = *(v5 + 48);
  v61 = v4[12];
  v68 = v6;
  v28 = v6;
  v29 = v5;
  v30 = v14;
  v27(v71, v28, v29, v24);
  v31 = *(v17 + 16);
  v72 = v26;
  v60 = v31;
  v31(v21, v26, v16);
  v32 = *(v14 + 48);
  v69 = v13;
  v33 = v32(v21, 1, v13);
  v64 = v3;
  if (v33 == 1)
  {
    v34 = v68;
    (*(v17 + 8))(v21, v16);
    v35 = v17;
  }

  else
  {
    v54 = v16;
    (*(v14 + 32))(v67, v21, v69);
    sub_1E18D19C0(v73);
    v36 = v29;
    v37 = v68;
    swift_getAssociatedConformanceWitness();
    v38 = v59;
    v39 = type metadata accessor for UnboundedCache();
    v40 = v66;
    UnboundedCache.subscript.getter();
    (*(*(v39 - 8) + 8))(v73, v39);
    v41 = v57;
    if ((*(v57 + 48))(v40, 1, v38) != 1)
    {
      v49 = v55;
      (*(v41 + 32))(v55, v66, v38);
      v50 = v70;
      sub_1E1AF589C();
      v48 = sub_1E1AF588C();
      v51 = v56;
      (*(v41 + 16))(v56, v49, v38);
      (*(v41 + 56))(v51, 0, 1, v38);
      sub_1E1AF586C();
      (*(v58 + 8))(v51, v50);
      (*(v41 + 8))(v49, v38);
      (*(v30 + 8))(v67, v69);
      (*(v17 + 8))(v72, v54);
      return v48;
    }

    v34 = v37;
    (*(v14 + 8))(v67, v69);
    (*(v58 + 8))(v66, v70);
    v16 = v54;
    v35 = v17;
    v29 = v36;
  }

  v42 = v64;
  v71 = (*(v29 + 40))(v71, v34, v29);
  v43 = v63;
  v60(v63, v72, v16);
  v44 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v45 = v44 + v62;
  v46 = (v44 + v62) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v34;
  *(v47 + 24) = v29;
  v48 = v71;
  (*(v35 + 32))(v47 + v44, v43, v16);
  *(v47 + v45) = v65 & 1;
  *(v47 + v46 + 8) = v42;

  sub_1E1365864(v73);
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v73);
  (*(v35 + 8))(v72, v16);
  return v48;
}

uint64_t sub_1E18D268C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v31 = a3;
  v36 = a2;
  v34 = a1;
  v4 = *(*a4 + 88);
  v5 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1E1AF6D9C();
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30[0] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v32 = v30 - v13;
  v30[1] = v5;
  v30[2] = v4;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1E1AF6D9C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v30 - v17;
  v19 = *(v14 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v30 - v22;
  (*(v16 + 16))(v18, v36, v15, v21);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    return (*(v16 + 8))(v18, v15);
  }

  (*(v19 + 32))(v23, v18, v14);
  v25 = v33;
  (*(v33 + 16))(v11, v34, v7);
  v26 = v35;
  if ((*(v35 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v23, v14);
    return (*(v25 + 8))(v11, v7);
  }

  else
  {
    v27 = v32;
    (*(v26 + 32))(v32, v11, AssociatedTypeWitness);
    if (v31)
    {
      v28 = v30[0];
      (*(v26 + 16))(v30[0], v27, AssociatedTypeWitness);
      (*(v26 + 56))(v28, 0, 1, AssociatedTypeWitness);
      swift_beginAccess();
      swift_getAssociatedConformanceWitness();
      v29 = type metadata accessor for UnboundedCache();
      sub_1E174DDCC(v28, v23, v29);
      (*(v25 + 8))(v28, v7);
      swift_endAccess();
      (*(v26 + 8))(v32, AssociatedTypeWitness);
    }

    else
    {
      (*(v26 + 8))(v27, AssociatedTypeWitness);
    }

    return (*(v19 + 8))(v23, v14);
  }
}

uint64_t sub_1E18D2B84()
{
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E13E44F8(v4);
  sub_1E1AF54AC();
}

uint64_t sub_1E18D2D40(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = *v2;
  v4 = *(v3 + 88);
  v5 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1E1AF6D9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  (*(v4 + 48))(v21, v5, v4, v13);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1E1AF591C();
    __swift_project_value_buffer(v16, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF549C();
  }

  else
  {
    (*(v11 + 32))(v15, v10, AssociatedTypeWitness);
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v18 = type metadata accessor for UnboundedCache();
    sub_1E174DDCC(v20, v15, v18);
    swift_endAccess();
    return (*(v11 + 8))(v15, AssociatedTypeWitness);
  }
}