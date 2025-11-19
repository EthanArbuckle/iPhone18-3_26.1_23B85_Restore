uint64_t FlowPreviewActionsConfiguration.__allocating_init(actions:offerDisplayProperties:offerActionIndex:destructiveActionIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4 & 1;
  swift_beginAccess();
  *(v12 + 48) = a5;
  *(v12 + 56) = a6 & 1;
  return v12;
}

uint64_t FlowPreviewActionsConfiguration.actions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t FlowPreviewActionsConfiguration.destructiveActionIndex.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t FlowPreviewActionsConfiguration.init(actions:offerDisplayProperties:offerActionIndex:destructiveActionIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4 & 1;
  swift_beginAccess();
  *(v6 + 48) = a5;
  *(v6 + 56) = a6 & 1;
  return v6;
}

uint64_t FlowPreviewActionsConfiguration.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FlowPreviewActionsConfiguration.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t FlowPreviewActionsConfiguration.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v48 = a2;
  v46 = sub_1E1AF39DC();
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E1AF5A6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  *(v2 + 48) = 0;
  v38 = v2 + 48;
  *(v2 + 56) = 1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v18 = *(v8 + 8);
  v42 = v7;
  v40 = v8 + 8;
  v37 = v18;
  v18(v13, v7);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_1E14352B8(v6);
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v15 + 32))(v17, v6, v14);
    v20 = type metadata accessor for Action();
    MEMORY[0x1EEE9AC00](v20);
    v21 = v48;
    *(&v36 - 2) = v22;
    *(&v36 - 1) = v21;
    v23 = v44;
    v19 = sub_1E1AF59FC();
    v44 = v23;
    (*(v15 + 8))(v17, v14);
  }

  v24 = v41;
  *(v41 + 16) = v19;
  type metadata accessor for OfferDisplayProperties();
  v25 = v45;
  sub_1E1AF381C();
  v26 = v43;
  (*(v43 + 16))(v39, v48, v46);
  sub_1E14E9760();
  sub_1E1AF464C();
  *(v24 + 24) = v47;
  sub_1E1AF381C();
  v27 = sub_1E1AF36EC();
  v29 = v28;
  v30 = v42;
  v31 = v37;
  v37(v10, v42);
  *(v24 + 32) = v27;
  *(v24 + 40) = v29 & 1;
  sub_1E1AF381C();
  v32 = sub_1E1AF36EC();
  v34 = v33;
  v31(v25, v30);
  v31(v10, v30);
  (*(v26 + 8))(v48, v46);
  swift_beginAccess();
  *(v24 + 48) = v32;
  *(v24 + 56) = v34 & 1;
  return v24;
}

unint64_t sub_1E14E9760()
{
  result = qword_1EE1EC410;
  if (!qword_1EE1EC410)
  {
    type metadata accessor for OfferDisplayProperties();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EC410);
  }

  return result;
}

uint64_t FlowPreviewActionsConfiguration.deinit()
{

  return v0;
}

uint64_t FlowPreviewActionsConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E14E9820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = FlowPreviewActionsConfiguration.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t GameCenterLeaderboardsAction.leaderboardID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterLeaderboardsAction_leaderboardID);

  return v1;
}

uint64_t GameCenterLeaderboardsAction.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterLeaderboardsAction_bundleID);

  return v1;
}

uint64_t GameCenterLeaderboardsAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v5 = *v2;
  v48 = v3;
  v49 = v5;
  v6 = sub_1E1AF39DC();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = 0xED00004449647261;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v20 = v19;
  v21 = v16;
  v22 = v8;
  v23 = *(v9 + 8);
  v23(v21, v22);
  if (!v20)
  {
    v41 = 0x6F6272656461656CLL;
    v48 = v23;
    v28 = a1;
    v42 = v52;
LABEL_8:
    v37 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v43 = v41;
    v43[1] = v17;
    v43[2] = v49;
    (*(*(v37 - 8) + 104))(v43, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    (*(v50 + 8))(v42, v51);
    v48(v28, v22);
    swift_deallocPartialClassInstance();
    return v37;
  }

  v45 = v18;
  sub_1E1AF381C();
  v24 = v22;
  v25 = sub_1E1AF37CC();
  v27 = v26;
  v23(v13, v24);
  v28 = a1;
  if (!v27)
  {
    v41 = 0x4449656C646E7562;
    v48 = v23;

    v17 = 0xE800000000000000;
    v42 = v52;
    v22 = v24;
    goto LABEL_8;
  }

  v29 = v24;
  v30 = v53;
  v31 = (v53 + OBJC_IVAR____TtC11AppStoreKit28GameCenterLeaderboardsAction_leaderboardID);
  *v31 = v45;
  v31[1] = v20;
  v32 = (v30 + OBJC_IVAR____TtC11AppStoreKit28GameCenterLeaderboardsAction_bundleID);
  *v32 = v25;
  v32[1] = v27;
  v33 = *(v9 + 16);
  v34 = v46;
  v45 = a1;
  v49 = v29;
  v33(v46);
  v36 = v50;
  v35 = v51;
  v37 = v47;
  v38 = v52;
  (*(v50 + 16))(v47, v52, v51);
  v39 = v48;
  v40 = Action.init(deserializing:using:)(v34, v37);
  if (!v39)
  {
    v37 = v40;
  }

  (*(v36 + 8))(v38, v35);
  v23(v45, v49);
  return v37;
}

char *GameCenterLeaderboardsAction.__allocating_init(leaderboardID:bundleID:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC11AppStoreKit28GameCenterLeaderboardsAction_leaderboardID];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v14[OBJC_IVAR____TtC11AppStoreKit28GameCenterLeaderboardsAction_bundleID];
  *v16 = a3;
  *(v16 + 1) = a4;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v17 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v18 = sub_1E1AF3E1C();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v14[v17], a5, v18);
  v20 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
  v22 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v33, &v30);
  if (*(&v31 + 1))
  {
    v24 = v31;
    *v23 = v30;
    *(v23 + 1) = v24;
    *(v23 + 4) = v32;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v29[1] = v25;
    v29[2] = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v30, &unk_1ECEB5670);
  }

  (*(v19 + 8))(a5, v18);
  sub_1E1308058(v33, &unk_1ECEB5670);
  *(v14 + 2) = 0xD00000000000001FLL;
  *(v14 + 3) = 0x80000001E1B63420;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *GameCenterLeaderboardsAction.init(leaderboardID:bundleID:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a5;
  v11 = sub_1E1AEFEAC();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (v6 + OBJC_IVAR____TtC11AppStoreKit28GameCenterLeaderboardsAction_leaderboardID);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v6 + OBJC_IVAR____TtC11AppStoreKit28GameCenterLeaderboardsAction_bundleID);
  *v22 = a3;
  v22[1] = a4;
  v23 = v34;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  (*(v18 + 16))(v20, v34, v17);
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v25 = 0u;
  v25[1] = 0u;
  sub_1E138853C(v43, &v37);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v28 = v27;
    (*(v32 + 8))(v13, v33);
    v35 = v26;
    v36 = v28;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670);
  }

  (*(v18 + 8))(v23, v17);
  sub_1E1308058(v43, &unk_1ECEB5670);
  v29 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v42;
  v30 = v41;
  *v29 = v40;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v16, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v6[2] = 0xD00000000000001FLL;
  v6[3] = 0x80000001E1B63420;
  v6[4] = 0;
  v6[5] = 0;
  (*(v18 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v20, v17);
  return v6;
}

uint64_t sub_1E14EA504()
{
}

uint64_t GameCenterLeaderboardsAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t GameCenterLeaderboardsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterLeaderboardsAction()
{
  result = qword_1EE1E9A60;
  if (!qword_1EE1E9A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 OnDeviceAdvert.init(instanceId:impressionId:adamId:placementType:metadata:privacy:positionInfo:appMetadata:cppIds:alignedRegionDetails:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13)
{
  result = a11;
  v14 = *a5;
  v15 = a5[1];
  v16 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v14;
  *(a9 + 40) = v15;
  *(a9 + 48) = v16;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = a13;
  return result;
}

uint64_t OnDeviceAdvert.instanceId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OnDeviceAdvert.impressionId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OnDeviceAdvert.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t OnDeviceAdvert.metadata.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t OnDeviceAdvert.privacy.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

JSValue __swiftcall OnDeviceAdvert.makeValue(in:)(JSContext in)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v43 = *(v1 + 64);
  v44 = *(v1 + 32);
  v41 = *(v1 + 80);
  v42 = *(v1 + 56);
  v39 = *(v1 + 88);
  v40 = *(v1 + 72);
  v37 = *(v1 + 104);
  v38 = *(v1 + 96);
  v36 = *(v1 + 112);
  v9 = objc_opt_self();
  result.super.isa = [v9 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_35;
  }

  isa = result.super.isa;
  v45 = v4;
  v46 = v3;

  v12 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1E1AF6C5C();
  v45 = v6;
  v46 = v5;

  v13 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1E1AF6C5C();
  v45 = v44;
  v46 = v7;

  v14 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_1E1AF6C5C();
  if (v8 <= 1)
  {
    if (v8)
    {
      v15 = 0xED000073746C7573;
      v16 = 0x6552686372616573;
    }

    else
    {
      v15 = 0xED0000676E69646ELL;
      v16 = 0x614C686372616573;
    }
  }

  else if (v8 == 2)
  {
    v15 = 0xE500000000000000;
    v16 = 0x7961646F74;
  }

  else if (v8 == 3)
  {
    v15 = 0xEF4C414D59656761;
    v16 = 0x50746375646F7270;
  }

  else
  {
    v15 = 0x80000001E1B55C90;
    v16 = 0xD00000000000001DLL;
  }

  v45 = v16;
  v46 = v15;
  v17 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v17)
  {
    goto LABEL_38;
  }

  sub_1E1AF6C5C();
  v45 = v42;
  v46 = v43;

  v18 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_1E1AF6C5C();
  v45 = v40;
  v46 = v41;

  v19 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v19)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_1E1AF6C5C();
  if (v39)
  {
    v45 = v39;

    v20 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
    v21 = sub_1E1AF748C();
    sub_1E1308058(&v45, &unk_1ECEB4B50);
  }

  else
  {
    v22 = in.super.isa;
    v21 = 0;
  }

  v23 = [v9 valueWithObject:v21 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_41;
  }

  sub_1E1AF6C5C();
  v24 = v38;
  if (v38)
  {
    v45 = v38;
    v25 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
    v24 = sub_1E1AF748C();
    sub_1E1308058(&v45, &unk_1ECEB4B50);
  }

  else
  {
    v26 = in.super.isa;
  }

  v27 = [v9 valueWithObject:v24 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v27)
  {
    goto LABEL_42;
  }

  sub_1E1AF6C5C();
  v28 = v37;
  if (v37)
  {
    v45 = v37;
    v29 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    v28 = sub_1E1AF748C();
    sub_1E1308058(&v45, &unk_1ECEB2D10);
  }

  else
  {
    v30 = in.super.isa;
  }

  v31 = [v9 valueWithObject:v28 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v31)
  {
    goto LABEL_43;
  }

  sub_1E1AF6C5C();
  v32 = v36;
  if (v36)
  {
    v45 = v36;
    v33 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D70);
    v32 = sub_1E1AF748C();
    sub_1E1308058(&v45, &qword_1ECEB4D70);
  }

  else
  {
    v34 = in.super.isa;
  }

  v35 = [v9 valueWithObject:v32 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v35)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1E14EB05C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1E14EB0A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SearchFocusPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_1E1AF39DC();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v35 = *(v7 - 8);
  v8 = v35;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  sub_1E1AF381C();
  v16 = sub_1E1AF36EC();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v15, v7);
  v20 = v3 + OBJC_IVAR____TtC11AppStoreKit15SearchFocusPage_maxShelfRowCount;
  *v20 = v16;
  v21 = v18 & 1;
  v22 = v36;
  *(v20 + 8) = v21;
  sub_1E1AF381C();
  LOBYTE(v16) = sub_1E1AF370C();
  v37 = v19;
  v19(v12, v7);
  v23 = v16 & 1;
  v24 = v3;
  v25 = v7;
  *(v24 + OBJC_IVAR____TtC11AppStoreKit15SearchFocusPage_prefersSmallShelfTitles) = v23;
  v26 = v34;
  v27 = *(v35 + 16);
  v35 = a1;
  v27(v34, a1, v7);
  v28 = v40;
  v29 = v39;
  v30 = v38;
  (*(v39 + 16))(v38, v22, v40);
  v31 = GenericPage.init(deserializing:using:)(v26, v30);
  (*(v29 + 8))(v22, v28);
  v37(v35, v25);
  return v31;
}

uint64_t SearchFocusPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v83 = a8;
  LODWORD(v76) = a7;
  v71 = a5;
  v81 = a4;
  v70 = a3;
  v69 = a2;
  v68 = a1;
  v78 = a12;
  v82 = a10;
  v73 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v67 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v84 = &v66 - v21;
  v23 = sub_1E1AF3C3C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66 - v28;
  v30 = swift_allocObject();
  v31 = v30 + OBJC_IVAR____TtC11AppStoreKit15SearchFocusPage_maxShelfRowCount;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit15SearchFocusPage_prefersSmallShelfTitles) = 0;
  v77 = a6;
  sub_1E134FD1C(a6, v86, &qword_1ECEB2DF0);
  v72 = v24;
  v32 = *(v24 + 16);
  v75 = a11;
  v32(v29, a11, v23);
  v74 = a13;
  sub_1E134FD1C(a13, v22, &qword_1ECEB3B28);
  v33 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v34 = sub_1E175EC2C(v68);
  v36 = v35;

  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v34;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v38 = v70;
  *v37 = v69;
  v37[1] = v38;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v81;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v71;
  sub_1E134FD1C(v86, v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v76;
  swift_beginAccess();
  *(v30 + v33) = v83;
  v39 = v78;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v32(v26, v29, v23);
  v40 = v79;
  sub_1E134FD1C(v84, v79, &qword_1ECEB3B28);
  *(v30 + 16) = v82;
  v76 = v26;
  v32((v30 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v26, v23);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v39;
  v41 = v80;
  sub_1E134FD1C(v40, v80, &qword_1ECEB3B28);
  v42 = sub_1E1AF39DC();
  v43 = *(v42 - 8);
  v71 = *(v43 + 48);
  if (v71(v41, 1, v42) == 1)
  {

    sub_1E1308058(v74, &qword_1ECEB3B28);
    v44 = *(v72 + 8);
    v44(v75, v23);
    sub_1E1308058(v77, &qword_1ECEB2DF0);
    sub_1E1308058(v40, &qword_1ECEB3B28);
    v44(v76, v23);
    sub_1E1308058(v84, &qword_1ECEB3B28);
    v44(v29, v23);
    sub_1E1308058(v86, &qword_1ECEB2DF0);
    v45 = v41;
    v46 = &qword_1ECEB3B28;
  }

  else
  {
    v69 = v29;
    v47 = v72;
    v48 = qword_1EE1E3BC8;

    if (v48 != -1)
    {
      swift_once();
    }

    v70 = v23;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v49, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v50 = v85;
    v51 = v47;
    if (v85)
    {
    }

    v52 = *(v43 + 8);
    v52(v80, v42);
    v53 = v84;
    v54 = v79;
    v55 = v75;
    if (v50)
    {
      v56 = v67;
      sub_1E134FD1C(v79, v67, &qword_1ECEB3B28);
      if (v71(v56, 1, v42) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v74, &qword_1ECEB3B28);
        v64 = *(v51 + 8);
        v65 = v70;
        v64(v55, v70);
        sub_1E1308058(v77, &qword_1ECEB2DF0);
        sub_1E1308058(v79, &qword_1ECEB3B28);
        v64(v76, v65);
        sub_1E1308058(v53, &qword_1ECEB3B28);
        v64(v69, v65);
        sub_1E1308058(v86, &qword_1ECEB2DF0);
        v52(v67, v42);
        return v30;
      }

      sub_1E1308058(v74, &qword_1ECEB3B28);
      v57 = *(v51 + 8);
      v58 = v55;
      v59 = v70;
      v57(v58, v70);
      sub_1E1308058(v77, &qword_1ECEB2DF0);
      sub_1E1308058(v79, &qword_1ECEB3B28);
      v57(v76, v59);
      sub_1E1308058(v53, &qword_1ECEB3B28);
      v57(v69, v59);
      sub_1E1308058(v86, &qword_1ECEB2DF0);
      v45 = v56;
      v46 = &qword_1ECEB3B28;
    }

    else
    {

      sub_1E1308058(v74, &qword_1ECEB3B28);
      v60 = *(v51 + 8);
      v61 = v55;
      v62 = v70;
      v60(v61, v70);
      sub_1E1308058(v77, &qword_1ECEB2DF0);
      sub_1E1308058(v54, &qword_1ECEB3B28);
      v60(v76, v62);
      sub_1E1308058(v53, &qword_1ECEB3B28);
      v60(v69, v62);
      v45 = v86;
      v46 = &qword_1ECEB2DF0;
    }
  }

  sub_1E1308058(v45, v46);
  return v30;
}

uint64_t SearchFocusPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v76 = a4;
  v77 = a8;
  LODWORD(v75) = a7;
  v74 = a5;
  v72 = a3;
  v67 = a2;
  v78 = a12;
  v81 = a10;
  v69 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v65 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = sub_1E1AF3C3C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  v32 = v13 + OBJC_IVAR____TtC11AppStoreKit15SearchFocusPage_maxShelfRowCount;
  *v32 = 0;
  *(v32 + 8) = 1;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit15SearchFocusPage_prefersSmallShelfTitles) = 0;
  v73 = a6;
  sub_1E134FD1C(a6, v83, &qword_1ECEB2DF0);
  v68 = v26;
  v66 = *(v26 + 16);
  v71 = a11;
  (v66)(v31, a11, v25);
  v70 = a13;
  sub_1E134FD1C(a13, v24, &qword_1ECEB3B28);
  v33 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v34 = sub_1E175EC2C(a1);
  v36 = v35;

  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v34;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v38 = v72;
  *v37 = v67;
  v37[1] = v38;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v76;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v74;
  sub_1E134FD1C(v83, v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v75;
  swift_beginAccess();
  *(v13 + v33) = v77;

  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v74 = v31;
  v39 = v66;
  (v66)(v28, v31, v25);
  v75 = v24;
  v40 = v24;
  v41 = v79;
  sub_1E134FD1C(v40, v79, &qword_1ECEB3B28);
  *(v13 + 16) = v81;
  v72 = v28;
  v39(v13 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v28, v25);
  v67 = v13;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v78;
  v42 = v80;
  sub_1E134FD1C(v41, v80, &qword_1ECEB3B28);
  v43 = sub_1E1AF39DC();
  v66 = *(v43 - 8);
  v44 = *(v66 + 48);
  v45 = v43;
  if ((v44)(v42, 1) == 1)
  {

    sub_1E1308058(v70, &qword_1ECEB3B28);
    v46 = *(v68 + 8);
    v46(v71, v25);
    sub_1E1308058(v73, &qword_1ECEB2DF0);
    sub_1E1308058(v41, &qword_1ECEB3B28);
    v46(v72, v25);
    sub_1E1308058(v75, &qword_1ECEB3B28);
    v46(v74, v25);
    sub_1E1308058(v83, &qword_1ECEB2DF0);
    v47 = v42;
    v48 = &qword_1ECEB3B28;
  }

  else
  {
    v49 = v44;
    v50 = v68;
    v51 = qword_1EE1E3BC8;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v52, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v53 = v82;
    v54 = v25;
    v55 = v50;
    v56 = v45;
    v57 = v66;
    if (v82)
    {
    }

    v58 = *(v57 + 8);
    v58(v80, v45);
    v59 = v79;
    if (v53)
    {
      v60 = v65;
      sub_1E134FD1C(v79, v65, &qword_1ECEB3B28);
      if (v49(v60, 1, v56) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v70, &qword_1ECEB3B28);
        v64 = *(v55 + 8);
        v64(v71, v54);
        sub_1E1308058(v73, &qword_1ECEB2DF0);
        sub_1E1308058(v59, &qword_1ECEB3B28);
        v64(v72, v54);
        sub_1E1308058(v75, &qword_1ECEB3B28);
        v64(v74, v54);
        sub_1E1308058(v83, &qword_1ECEB2DF0);
        v58(v60, v56);
        return v67;
      }

      sub_1E1308058(v70, &qword_1ECEB3B28);
      v61 = *(v55 + 8);
      v61(v71, v54);
      sub_1E1308058(v73, &qword_1ECEB2DF0);
      sub_1E1308058(v59, &qword_1ECEB3B28);
      v61(v72, v54);
      sub_1E1308058(v75, &qword_1ECEB3B28);
      v61(v74, v54);
      sub_1E1308058(v83, &qword_1ECEB2DF0);
      v47 = v60;
      v48 = &qword_1ECEB3B28;
    }

    else
    {

      sub_1E1308058(v70, &qword_1ECEB3B28);
      v62 = *(v55 + 8);
      v62(v71, v54);
      sub_1E1308058(v73, &qword_1ECEB2DF0);
      sub_1E1308058(v59, &qword_1ECEB3B28);
      v62(v72, v54);
      sub_1E1308058(v75, &qword_1ECEB3B28);
      v62(v74, v54);
      v47 = v83;
      v48 = &qword_1ECEB2DF0;
    }
  }

  sub_1E1308058(v47, v48);
  return v67;
}

uint64_t SearchFocusPage.__deallocating_deinit()
{
  GenericPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchFocusPage()
{
  result = qword_1EE1DF810;
  if (!qword_1EE1DF810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t CGFloat.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E1AF755C();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  result = sub_1E14EC9A0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_1E14EC9A0()
{
  result = qword_1ECEB4D80;
  if (!qword_1ECEB4D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4D80);
  }

  return result;
}

unint64_t sub_1E14ECA1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E1AF755C();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  result = sub_1E14EC9A0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t Float.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E1AF755C();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  result = sub_1E14EC9A0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_1E14ECB70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E1AF755C();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  result = sub_1E14EC9A0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_1E14ECC58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E1AF755C();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  result = sub_1E14EC9A0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_1E14ECD00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E1AF755C();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  result = sub_1E14EC9A0();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t Data.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1E14708A0(a2, a3);
  v6 = sub_1E1AF755C();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:{a1, a2, a3}];
  swift_unknownObjectRelease();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  result = sub_1E14EC9A0();
  a4[4] = result;
  *a4 = v7;
  return result;
}

unint64_t sub_1E14ECE60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1E14708A0(*v2, *(v2 + 8));
  v5 = sub_1E1AF755C();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  result = sub_1E14EC9A0();
  a2[4] = result;
  *a2 = v6;
  return result;
}

void *sub_1E14ECF1C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D88);
  result = sub_1E1AF729C();
  v3 = 0;
  v29 = result;
  v30 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v28 = result + 8;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v32 = 16 * v14;
      v15 = *(v30 + 56);
      v16 = (*(v30 + 48) + 16 * v14);
      v17 = v16[1];
      v33 = *v16;
      sub_1E1300B24(v15 + 40 * v14, v37);
      v31 = v37[4];
      v18 = __swift_project_boxed_opaque_existential_1Tm(v37, v37[3]);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(v21 + 16))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);

      sub_1E1AF50CC();
      __swift_destroy_boxed_opaque_existential_1(v37);
      result = v29;
      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v22 = (result[6] + v32);
      *v22 = v33;
      v22[1] = v17;
      v23 = result[7] + 40 * v14;
      v24 = v35;
      *v23 = v34;
      *(v23 + 16) = v24;
      *(v23 + 32) = v36;
      v25 = result[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      result[2] = v27;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t JSONObject.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1E1AF37EC();
  v4 = v14;
  if (v14)
  {
    v5 = __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_1E1AF748C();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() valueWithObject:v10 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  result = sub_1E14EC9A0();
  a2[4] = result;
  *a2 = v11;
  return result;
}

uint64_t sub_1E14ED310@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF40C();
  swift_allocObject();
  sub_1E1AEF3FC();
  sub_1E1AF3D4C();
  sub_1E14ED6C0(&qword_1ECEB4D90, MEMORY[0x1E69AAFD8]);
  v8 = sub_1E1AEF3EC();
  if (v2)
  {
  }

  v10 = v8;
  v11 = v9;
  v26 = a1;
  sub_1E1AEF3DC();
  swift_allocObject();
  sub_1E1AEF3CC();
  sub_1E14ED6C0(&qword_1ECEB4D98, MEMORY[0x1E69AAEF8]);
  sub_1E1AEF3BC();
  v25 = v5;

  sub_1E1AF37EC();
  v13 = v28;
  if (v28)
  {
    v14 = __swift_project_boxed_opaque_existential_1Tm(v27, v28);
    v24[1] = v24;
    v15 = *(v13 - 8);
    v16 = MEMORY[0x1EEE9AC00](v14);
    v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_1E1AF748C();
    v20 = v13;
    v13 = v19;
    (*(v15 + 8))(v18, v20);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v21 = [objc_opt_self() valueWithObject:v13 inContext:v26];
  swift_unknownObjectRelease();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  v23 = v29;
  v29[3] = v22;
  v23[4] = sub_1E14EC9A0();

  sub_1E14283DC(v10, v11);
  *v23 = v21;
  return (*(v25 + 8))(v7, v4);
}

uint64_t sub_1E14ED6C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E14ED724(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v10 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *a2;
    v13 = v28;
    *a2 = 0x8000000000000000;
    v14 = sub_1E15A47D8(v11, v10);
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v13[3] < v19)
    {
      sub_1E168C478(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1E15A47D8(v11, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v26 = v14;
    sub_1E1417D08();
    v14 = v26;
    if (v20)
    {
LABEL_3:
      v5 = v28;
      v6 = v28[7] + (v14 << 6);
      v7 = *(v6 + 48);
      v9 = *v6;
      v8 = *(v6 + 16);
      v27[2] = *(v6 + 32);
      v27[3] = v7;
      v27[0] = v9;
      v27[1] = v8;
      *v6 = 4;
      *(v6 + 8) = 0u;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0;
      *(v6 + 48) = xmmword_1E1B11BA0;
      sub_1E139CEA8(v27);
      goto LABEL_4;
    }

LABEL_11:
    v5 = v28;
    v28[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v5[6] + 16 * v14);
    *v22 = v11;
    v22[1] = v10;
    v23 = v5[7] + (v14 << 6);
    *v23 = 4;
    *(v23 + 40) = 0;
    *(v23 + 24) = 0u;
    *(v23 + 8) = 0u;
    *(v23 + 48) = xmmword_1E1B11BA0;
    v24 = v5[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    v5[2] = v25;

LABEL_4:
    *a2 = v5;

    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E14ED958(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1E14ED9B8(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E14EDA4C;
}

uint64_t DefaultAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t DefaultAppStateDataSource.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t (*sub_1E14EDABC(uint64_t (*result)(_OWORD *)))(_OWORD *)
{
  if (result)
  {
    memset(v1, 0, sizeof(v1));
    v2 = -1;
    return result(v1);
  }

  return result;
}

uint64_t sub_1E14EDB10(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  memset(v3, 0, sizeof(v3));
  v4 = -1;
  return a2(v3);
}

double sub_1E14EDB58@<D0>(uint64_t a1@<X8>)
{
  *a1 = 4;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  result = -0.0;
  *(a1 + 48) = xmmword_1E1B11BA0;
  return result;
}

uint64_t sub_1E14EDB80(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  sub_1E14ED724(a1, &v2);
  return v2;
}

uint64_t DefaultAppStateDataSource.__deallocating_deinit()
{
  sub_1E1337DEC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1E14EDC18(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E14EDF0C;
}

void sub_1E14EDCAC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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
  }

  free(v3);
}

uint64_t RenderPipelineDiagnostics.Recorder.__allocating_init()()
{
  v0 = swift_allocObject();
  RenderPipelineDiagnostics.Recorder.init()();
  return v0;
}

uint64_t RenderPipelineDiagnostics.Recorder.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

uint64_t RenderPipelineDiagnostics.Recorder.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return swift_deallocClassInstance();
}

id sub_1E14EE030(uint64_t a1)
{
  v3 = sub_1E1AEF55C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 24);
  [v8 lock];
  (*(v4 + 16))(v7, a1, v3);
  swift_beginAccess();
  v9 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1E172E5A4(0, v9[2] + 1, 1, v9);
    *(v1 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1E172E5A4(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v7, v3);
  *(v1 + 16) = v9;
  swift_endAccess();
  return [v8 unlock];
}

uint64_t RenderPipelineDiagnostics.Recorder.snapshot()()
{
  v1 = *(v0 + 24);
  [v1 lock];
  swift_beginAccess();
  v2 = *(v0 + 16);

  [v1 unlock];
  return v2;
}

id sub_1E14EE39C(void *a1, void **a2)
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

void sub_1E14EE420(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1EE1EAD00 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE1EAD08;
  sub_1E13BFF54(a2, v19);
  v5 = v20;
  if (v20)
  {
    v6 = __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1E1AF748C();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  v19[0] = 0x726F727265;
  v19[1] = 0xE500000000000000;
  sub_1E1AF6F6C();
  swift_getErrorValue();
  v13 = v17[1];
  v14 = v18;
  *(inited + 96) = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v13, v14);
  sub_1E13609A4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEBCAA0);
  v16 = sub_1E1AF5C6C();

  [v3 postNotificationName:v4 object:v11 userInfo:v16];

  swift_unknownObjectRelease();
}

void sub_1E14EE6E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = [objc_opt_self() defaultCenter];
    if (qword_1EE1EACE8 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE1EACF0;
    sub_1E13BFF54(a2, v16);
    v6 = v17;
    if (v17)
    {
      v7 = __swift_project_boxed_opaque_existential_1Tm(v16, v17);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x1EEE9AC00](v7);
      v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 96;
      (*(v8 + 16))(v11, v9);
      v12 = sub_1E1AF748C();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      v12 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    v16[0] = 0x746E656469636E69;
    v16[1] = 0xE900000000000073;
    sub_1E1AF6F6C();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA0);
    *(inited + 72) = a1;

    sub_1E13609A4(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &qword_1ECEBCAA0);
    v14 = sub_1E1AF5C6C();

    [v4 postNotificationName:v5 object:v12 userInfo:v14];

    swift_unknownObjectRelease();
  }
}

uint64_t _s11AppStoreKit25RenderPipelineDiagnosticsV5error2ofs5Error_pSg10Foundation12NotificationV_tFZ_0()
{
  v0 = sub_1E1AEF54C();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  *&v6 = 0x726F727265;
  *(&v6 + 1) = 0xE500000000000000;
  sub_1E1AF6F6C();
  if (!*(v1 + 16) || (v2 = sub_1E135FCF4(v5), (v3 & 1) == 0))
  {

    sub_1E134B88C(v5);
LABEL_9:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_10;
  }

  sub_1E137A5C4(*(v1 + 56) + 32 * v2, &v6);
  sub_1E134B88C(v5);

  if (!*(&v7 + 1))
  {
LABEL_10:
    sub_1E1308058(&v6, &qword_1ECEB2DF0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _s11AppStoreKit25RenderPipelineDiagnosticsV9incidents2ofSay9JetEngine10JSIncidentVGSg10Foundation12NotificationV_tFZ_0()
{
  v0 = sub_1E1AEF54C();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = v0;
  *&v6 = 0x746E656469636E69;
  *(&v6 + 1) = 0xE900000000000073;
  sub_1E1AF6F6C();
  if (!*(v1 + 16) || (v2 = sub_1E135FCF4(v5), (v3 & 1) == 0))
  {

    sub_1E134B88C(v5);
LABEL_9:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_10;
  }

  sub_1E137A5C4(*(v1 + 56) + 32 * v2, &v6);
  sub_1E134B88C(v5);

  if (!*(&v7 + 1))
  {
LABEL_10:
    sub_1E1308058(&v6, &qword_1ECEB2DF0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA0);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E14EEC04()
{
  v0 = sub_1E1AF48BC();
  __swift_allocate_value_buffer(v0, qword_1EE216EF8);
  __swift_project_value_buffer(v0, qword_1EE216EF8);
  return sub_1E1AF48AC();
}

void sub_1E14EEC8C(void *a1)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1E1AEFCCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = 0;
  v7 = [a1 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:{v21, v4}];
  v8 = v21[0];
  if (v7)
  {
    v9 = v7;
    sub_1E1AEFC5C();
    v10 = v8;

    sub_1E1AEFC0C();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = v21[0];
    v12 = sub_1E1AEFB2C();

    swift_willThrow();
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    v20[1] = __swift_project_value_buffer(v13, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v14 = sub_1E1AEFB1C();
    v15 = AMSLogableError();

    v16 = sub_1E1AF5DFC();
    v18 = v17;

    v21[3] = MEMORY[0x1E69E6158];
    v21[0] = v16;
    v21[1] = v18;
    sub_1E1AF38BC();
    sub_1E13E44F8(v21);
    sub_1E1AF54AC();

    v19 = [a1 temporaryDirectory];
    sub_1E1AEFC5C();
  }
}

id sub_1E14EEFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v39 = a1;
  v40 = a2;
  v5 = sub_1E1AEFCCC();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v33 - v10;
  v11 = sub_1E1AF48BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  swift_getObjectType();
  v19 = qword_1EE1F3D60;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_1EE216EF8);
  (*(v12 + 16))(v14, v20, v11);
  sub_1E1AF3F8C();
  sub_1E1AF3C8C();
  (*(v16 + 8))(v18, v15);
  if (!v44)
  {
    return 0;
  }

  if (v43 == v39 && v44 == v40)
  {
  }

  else
  {
    v22 = sub_1E1AF74AC();

    result = 0;
    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  v25 = [v23 defaultManager];
  v26 = v34;
  sub_1E14EEC8C(v25);

  v27 = v35;
  sub_1E1AEFC0C();
  v28 = v36;
  sub_1E1AEFC2C();
  v29 = v38;
  v30 = *(v37 + 8);
  v30(v27, v38);
  v30(v26, v29);
  sub_1E1AEFC7C();
  v30(v28, v29);
  v31 = sub_1E1AF5DBC();

  v32 = [v24 fileExistsAtPath_];

  return v32;
}

uint64_t sub_1E14EF420(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v55 = a3;
  v56 = a4;
  v57 = a1;
  v58 = a2;
  v70[5] = *MEMORY[0x1E69E9840];
  v65 = sub_1E1AF48BC();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  MEMORY[0x1EEE9AC00](v62);
  v54 = v50 - v12;
  v69 = sub_1E1AEFCCC();
  v13 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v61 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v50 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v50 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v50 - v22;
  v24 = [objc_opt_self() defaultManager];
  v66 = a5;
  v67 = a6;
  sub_1E14EEC8C(v24);
  v25 = sub_1E1AEFBEC();
  v70[0] = 0;
  LODWORD(a5) = [v24 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v70];

  if (!a5)
  {
    v40 = v70[0];
    sub_1E1AEFB2C();

    swift_willThrow();
    (*(v13 + 8))(v23, v69);
    goto LABEL_8;
  }

  v26 = v70[0];

  sub_1E1AEFC0C();
  sub_1E1AEFC2C();
  v59 = v23;
  v29 = *(v13 + 8);
  v28 = v13 + 8;
  v27 = v29;
  v29(v17, v69);
  sub_1E1AEFC7C();
  v30 = sub_1E1AF5DBC();

  v53 = v24;
  v31 = [v24 fileExistsAtPath_];

  if (v31)
  {
    v51 = v27;
    v52 = v28;
    v32 = v69;
    v50[1] = a7;
    v33 = sub_1E1AEFBEC();
    v70[0] = 0;
    v34 = v53;
    v35 = [v53 removeItemAtURL:v33 error:v70];

    if (!v35)
    {
      v48 = v70[0];

      sub_1E1AEFB2C();

      swift_willThrow();
      v49 = v51;
      v51(v20, v32);
      v49(v59, v32);
      goto LABEL_8;
    }

    v36 = v70[0];
    v28 = v52;
    v27 = v51;
  }

  sub_1E1AEFC0C();
  v37 = v61;
  sub_1E1AEFC2C();
  v38 = v69;
  v27(v17, v69);
  v39 = v60;
  sub_1E1AEFD4C();
  if (v39)
  {

    v27(v37, v38);
    v27(v20, v38);
    v27(v59, v38);
LABEL_8:
    swift_getObjectType();
    v70[3] = v62;
    v70[4] = sub_1E14F0120();
    __swift_allocate_boxed_opaque_existential_0(v70);
    v41 = qword_1EE1F3D60;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = v65;
    v43 = __swift_project_value_buffer(v65, qword_1EE216EF8);
    (*(v63 + 16))(v64, v43, v42);
    sub_1E1AF3F8C();
    sub_1E1AF3C4C();
    __swift_destroy_boxed_opaque_existential_1(v70);
    return swift_willThrow();
  }

  v51 = v27;
  v52 = v28;
  swift_getObjectType();
  if (qword_1EE1F3D60 != -1)
  {
    swift_once();
  }

  v45 = v65;
  v46 = __swift_project_value_buffer(v65, qword_1EE216EF8);
  (*(v63 + 16))(v64, v46, v45);
  sub_1E1AF3F8C();
  v70[0] = v55;
  v70[1] = v56;

  sub_1E1AF3C9C();

  v47 = v51;
  v51(v61, v38);
  v47(v20, v38);
  return (v47)(v59, v38);
}

uint64_t sub_1E14EFB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v47 = a2;
  v53[5] = *MEMORY[0x1E69E9840];
  v48 = sub_1E1AEFCCC();
  v51 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v44 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v44 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v44 - v9;
  v10 = sub_1E1AF48BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v53[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  v53[4] = sub_1E14F0120();
  __swift_allocate_boxed_opaque_existential_0(v53);
  v14 = qword_1EE1F3D60;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_1EE216EF8);
  (*(v11 + 16))(v13, v15, v10);
  sub_1E1AF3F8C();
  sub_1E1AF3C4C();
  __swift_destroy_boxed_opaque_existential_1(v53);
  v16 = [objc_opt_self() defaultManager];
  v17 = v46;
  sub_1E14EEC8C(v16);
  v18 = v49;
  sub_1E1AEFC0C();
  sub_1E1AEFC2C();
  v19 = *(v51 + 8);
  v20 = v18;
  v21 = v48;
  v22 = v51 + 8;
  v19(v20, v48);
  sub_1E1AEFC7C();
  v23 = sub_1E1AF5DBC();

  v24 = [v16 fileExistsAtPath_];

  if (v24)
  {
    v51 = v22;
    v25 = sub_1E1AEFBEC();
    v53[0] = 0;
    v26 = [v16 removeItemAtURL:v25 error:v53];

    if (!v26)
    {
      v42 = v53[0];
      sub_1E1AEFB2C();

      swift_willThrow();
      v36 = v19;
      v19(v52, v21);
      return v36(v17, v21);
    }

    v27 = v53[0];
  }

  v28 = v49;
  sub_1E1AEFC0C();
  v29 = v45;
  sub_1E1AEFC2C();
  v30 = v29;
  v19(v28, v21);
  sub_1E1AEFC7C();
  v31 = sub_1E1AF5DBC();

  v32 = [v16 fileExistsAtPath_];

  v33 = v17;
  v34 = v52;
  v35 = v16;
  v36 = v19;
  if (!v32)
  {
LABEL_9:

    v36(v30, v21);
    v36(v34, v21);
    return v36(v33, v21);
  }

  v37 = v33;
  v38 = sub_1E1AEFBEC();
  v53[0] = 0;
  v39 = [v35 removeItemAtURL:v38 error:v53];

  if (v39)
  {
    v40 = v53[0];
    v33 = v37;
    goto LABEL_9;
  }

  v43 = v53[0];
  sub_1E1AEFB2C();

  swift_willThrow();
  v36(v30, v21);
  v17 = v37;
  v36(v34, v21);
  return v36(v17, v21);
}

unint64_t sub_1E14F0120()
{
  result = qword_1ECEB8F70;
  if (!qword_1ECEB8F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8F70);
  }

  return result;
}

void *sub_1E14F0184()
{
  result = sub_1E15A0650(MEMORY[0x1E69E7CC0]);
  qword_1EE2169E8 = result;
  return result;
}

void *sub_1E14F01AC()
{
  result = sub_1E15A0650(MEMORY[0x1E69E7CC0]);
  qword_1EE2169F8 = result;
  return result;
}

void *sub_1E14F01D4()
{
  result = sub_1E15A0650(MEMORY[0x1E69E7CC0]);
  qword_1EE2169F0 = result;
  return result;
}

id CompoundScrollObserver.__allocating_init(children:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id CompoundScrollObserver.init(children:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompoundScrollObserver();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1E14F02B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t CompoundScrollObserver.addChild(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
    swift_beginAccess();
    v6 = *(v2 + v5);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v5) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1E172E3E8(0, v6[2] + 1, 1, v6);
      *(v2 + v5) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1E172E3E8((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = v4;
    v10[5] = a2;
    *(v2 + v5) = v6;
    return swift_endAccess();
  }

  return result;
}

uint64_t CompoundScrollObserver.removeChild(_:)(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
    result = swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      for (i = (v4 + 32); *i != v2; i += 2)
      {
        if (v5 == ++v6)
        {
          return result;
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1E14878DC(v6);
      swift_endAccess();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundScrollObserver.removeAllChildren()()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E14F0568(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1E14F0638(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1E14F0708(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 24);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1E14F07D8(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 32);
      swift_unknownObjectRetain();
      v12(a1, a2 & 1, ObjectType, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1E14F08B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 40);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1E14F0980(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v11 = *(v4 + v9);
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = (v11 + 40);
    do
    {
      v14 = *v13;
      ObjectType = swift_getObjectType();
      v16 = *(v14 + 48);
      swift_unknownObjectRetain();
      v16(a1, a2, ObjectType, v14, a3, a4);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1E14F0A70(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 32;
    do
    {
      v9 = *(v6 + v8);
      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = v10;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 16);
        swift_unknownObjectRetain();
        v14(a1, a2, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1E14F0B84(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v10 = *(v4 + v8);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = 32;
    do
    {
      v13 = *(v10 + v12);
      swift_getObjectType();
      v14 = swift_conformsToProtocol2();
      if (v14)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = v14;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 8);
        v19 = *(v18 + 56);
        swift_unknownObjectRetain();
        v19(a1, a2, ObjectType, v18, a3, a4);
        swift_unknownObjectRelease();
      }

      v12 += 16;
      --v11;
    }

    while (v11);
  }

  return result;
}

id CompoundScrollObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompoundScrollObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompoundScrollObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *BlankAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_1E1AEFEAC();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_1E134FD1C(a1, v39, &unk_1ECEB5670);
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_1E134FD1C(a7, &v13[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], &unk_1ECEB1770);
  v18 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E134FD1C(v39, &v36, &unk_1ECEB5670);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  sub_1E1308058(a7, &unk_1ECEB1770);
  (*(v16 + 8))(v28, v15);
  sub_1E1308058(v29, &unk_1ECEB5670);
  sub_1E1308058(v39, &unk_1ECEB5670);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

uint64_t BlankAction.__allocating_init(actionMetrics:)(uint64_t a1)
{
  v2 = sub_1E1AEFEAC();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1E1AF3E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v12 = *(v9 + 16);
  v26 = a1;
  v12(v11, a1, v8);
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  sub_1E134FD1C(v33, v32, &unk_1ECEB5670);
  v12((v14 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics), v11, v8);
  sub_1E134FD1C(v7, v14 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  v15 = (v14 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = v14 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v32, &v29, &unk_1ECEB5670);
  if (*(&v30 + 1))
  {
    v17 = v30;
    *v16 = v29;
    *(v16 + 16) = v17;
    *(v16 + 32) = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v20 = v19;
    (*(v24 + 8))(v4, v25);
    v27 = v18;
    v28 = v20;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670);
  }

  v21 = *(v9 + 8);
  v21(v26, v8);
  sub_1E1308058(v32, &unk_1ECEB5670);
  sub_1E1308058(v7, &unk_1ECEB1770);
  v21(v11, v8);
  sub_1E1308058(v33, &unk_1ECEB5670);
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  return v14;
}

void *BlankAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_1E1AEFEAC();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_1E134FD1C(v20, v52, &unk_1ECEB5670);
  (*(v17 + 16))(v19, v21, v16);
  sub_1E134FD1C(v22, v15, &unk_1ECEB1770);
  v23 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E134FD1C(v52, &v46, &unk_1ECEB5670);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = v22;
    v25 = sub_1E1AEFE7C();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v46, &unk_1ECEB5670);
  }

  sub_1E1308058(v22, &unk_1ECEB1770);
  (*(v17 + 8))(v21, v16);
  sub_1E1308058(v39, &unk_1ECEB5670);
  sub_1E1308058(v52, &unk_1ECEB5670);
  v29 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v15, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *BlankAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *BlankAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t BlankAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  return v0;
}

uint64_t BlankAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BlankAction()
{
  result = qword_1EE1F7908;
  if (!qword_1EE1F7908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14F202C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1E68FFD80](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1E1AF71CC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1E14F2168(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1E14F2214(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1E14F22C0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t SearchActionCalculator.searchAction(modifying:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = sub_1E1AEFEAC();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1E1AF3E1C();
  v7 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = &v60 - v10;
  v11 = *(a2 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_targetToken);
  v12 = *(a2 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_targetToken + 8);
  if (*(a1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchTokens))
  {
    v13 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchTokens);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  *&v79[0] = *(a2 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *(&v79[0] + 1) = v12;
  v73 = v79;
  swift_bridgeObjectRetain_n();

  v14 = sub_1E14F2168(sub_1E14F35A4, v72, v13);

  v67 = v7;
  if ((v14 & 1) == 0)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_8:
      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        v13 = sub_1E130C06C((v19 > 1), v20 + 1, 1, v13);
      }

      *(v13 + 2) = v20 + 1;
      v21 = &v13[16 * v20];
      *(v21 + 4) = v11;
      *(v21 + 5) = v12;
      goto LABEL_23;
    }

LABEL_51:
    v13 = sub_1E130C06C(0, *(v13 + 2) + 1, 1, v13);
    goto LABEL_8;
  }

  result = sub_1E14F35FC(v13, v11, v12);
  if (v16)
  {
    v17 = *(v13 + 2);
    v18 = v17;
    goto LABEL_15;
  }

  v18 = result;
  v66 = v3;
  v3 = (result + 1);
  if (__OFADD__(result, 1))
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v70 = a1;
  v22 = *(v13 + 2);

  if (v3 != v22)
  {
    a1 = 16 * v18;
    v61 = a2;
    while (v3 < v22)
    {
      v54 = *&v13[a1 + 48];
      v7 = *&v13[a1 + 56];
      if (v54 != v11 || v7 != v12)
      {
        result = sub_1E1AF74AC();
        if ((result & 1) == 0)
        {
          if (v3 != v18)
          {
            if (v18 >= v22)
            {
              goto LABEL_55;
            }

            v56 = &v13[16 * v18 + 32];
            v58 = *v56;
            v57 = *(v56 + 1);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1E14E69A4(v13);
            }

            v59 = &v13[16 * v18];
            *(v59 + 4) = v54;
            *(v59 + 5) = v7;

            if (v3 >= *(v13 + 2))
            {
              goto LABEL_56;
            }

            v53 = &v13[a1];
            *(v53 + 6) = v58;
            *(v53 + 7) = v57;

            a2 = v61;
          }

          ++v18;
        }
      }

      v3 = (v3 + 1);
      v22 = *(v13 + 2);
      a1 += 16;
      if (v3 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_13:

  v17 = *(v13 + 2);
  v7 = v67;
  a1 = v70;
  if (v17 < v18)
  {
    __break(1u);
    goto LABEL_53;
  }

  v3 = v66;
  if (v18 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_15:
  if (__OFADD__(v17, v18 - v17))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v18 > *(v13 + 3) >> 1)
  {
    if (v17 <= v18)
    {
      v24 = v18;
    }

    else
    {
      v24 = v17;
    }

    v13 = sub_1E130C06C(isUniquelyReferenced_nonNull_native, v24, 1, v13);
    v81 = v13;
  }

  sub_1E14F36E4(v18, v17, 0);

LABEL_23:
  v25 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term + 8);
  v70 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term);
  if (v25 && *(v13 + 2))
  {
    v26 = v3[3];
    v27 = v3[4];
    __swift_project_boxed_opaque_existential_1Tm(v3, v26);
    v66 = (*(v27 + 8))(v70, v25, v13, v26, v27);
    v65 = v28;
  }

  else
  {
    v66 = 0;
    v65 = 0;
  }

  v29 = sub_1E1AEFCCC();
  (*(*(v29 - 8) + 56))(v71, 1, 1, v29);
  v30 = *(a2 + OBJC_IVAR____TtC11AppStoreKit29GuidedSearchTokenToggleAction_searchOrigin);
  v31 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_entity);
  if (*(v13 + 2))
  {
  }

  else
  {

    v13 = 0;
  }

  v32 = *(v7 + 16);
  v33 = a2 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v35 = v68;
  v34 = v69;
  v32(v68, v33, v69);
  type metadata accessor for SearchAction();
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term);
  *v37 = v70;
  v37[1] = v25;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_origin) = v30;
  v38 = (v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_source);
  *v38 = 0;
  v38[1] = 0;
  sub_1E134FD1C(v71, v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_url, &unk_1ECEB4B60);
  *(v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_entity) = v31;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_spellCheckEnabled) = 1;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_excludedTerms) = 0;
  v39 = (v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_originatingTerm);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_prefixTerm);
  *v40 = 0;
  v40[1] = 0;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchTokens) = v13;
  v41 = (v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm);
  v42 = v65;
  *v41 = v66;
  v41[1] = v42;
  v43 = v36 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData;
  *v43 = xmmword_1E1B04490;
  *(v43 + 3) = 0;
  *(v43 + 4) = 0;
  *(v43 + 2) = 0;
  v43[40] = 0;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v32(v36 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v35, v34);
  v44 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v45 = sub_1E1AF46DC();
  (*(*(v45 - 8) + 56))(v36 + v44, 1, 1, v45);
  v46 = (v36 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v46 = 0u;
  v46[1] = 0u;
  v47 = v36 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v79, &v76, &unk_1ECEB5670);
  if (*(&v77 + 1))
  {
    v48 = v77;
    *v47 = v76;
    *(v47 + 1) = v48;
    *(v47 + 4) = v78;
  }

  else
  {

    v49 = v62;
    sub_1E1AEFE9C();
    v50 = sub_1E1AEFE7C();
    v52 = v51;
    (*(v63 + 8))(v49, v64);
    v74 = v50;
    v75 = v52;
    sub_1E1AF6F6C();
    sub_1E1308058(&v76, &unk_1ECEB5670);
  }

  sub_1E1308058(v79, &unk_1ECEB5670);
  (*(v67 + 8))(v68, v69);
  sub_1E1308058(v71, &unk_1ECEB4B60);
  v36[2] = v70;
  v36[3] = v25;
  v36[4] = 0;
  v36[5] = 0;
  return v36;
}

void *SearchActionCalculator.searchAction(modifying:with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFEAC();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF3E1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - v11;
  v14 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term);
  v13 = *(a1 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term + 8);
  v15 = sub_1E1AEFCCC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = *(a2 + OBJC_IVAR____TtC11AppStoreKit24SearchEntityChangeAction_searchOrigin);
  LOBYTE(a1) = *(a2 + OBJC_IVAR____TtC11AppStoreKit24SearchEntityChangeAction_entity);
  v40 = v7;
  v17 = *(v7 + 16);
  v17(v9, a2 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v6);
  type metadata accessor for SearchAction();
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_term);
  *v19 = v14;
  v19[1] = v13;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_origin) = v16;
  v20 = (v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_source);
  *v20 = 0;
  v20[1] = 0;
  sub_1E134FD1C(v12, v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_url, &unk_1ECEB4B60);
  *(v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_entity) = a1;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_spellCheckEnabled) = 1;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_excludedTerms) = 0;
  v21 = (v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_originatingTerm);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_prefixTerm);
  *v22 = 0;
  v22[1] = 0;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchTokens) = 0;
  v23 = (v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm);
  *v23 = 0;
  v23[1] = 0;
  v24 = v18 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_referrerData;
  *v24 = xmmword_1E1B04490;
  *(v24 + 3) = 0;
  *(v24 + 4) = 0;
  *(v24 + 2) = 0;
  v24[40] = 0;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v17(v18 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v9, v6);
  v25 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v26 = sub_1E1AF46DC();
  (*(*(v26 - 8) + 56))(v18 + v25, 1, 1, v26);
  v27 = (v18 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  v28 = v18 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v46, &v43, &unk_1ECEB5670);
  if (*(&v44 + 1))
  {
    v29 = v44;
    *v28 = v43;
    *(v28 + 1) = v29;
    *(v28 + 4) = v45;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v30 = v37;
    sub_1E1AEFE9C();
    v31 = v14;
    v32 = sub_1E1AEFE7C();
    v34 = v33;
    (*(v38 + 8))(v30, v39);
    v41 = v32;
    v42 = v34;
    v14 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v43, &unk_1ECEB5670);
  }

  sub_1E1308058(v46, &unk_1ECEB5670);
  (*(v40 + 8))(v9, v6);
  sub_1E1308058(v12, &unk_1ECEB4B60);
  v18[2] = v14;
  v18[3] = v13;
  v18[4] = 0;
  v18[5] = 0;
  return v18;
}

unint64_t sub_1E14F3120(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = v9 + 32 + 136 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = v10 + 136 * a3;
      v15 = (v9 + 32 + 136 * a2);
      if (result != v15 || result >= v15 + 136 * v14)
      {
        result = memmove(result, v15, 136 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 < 1)
  {
    return sub_1E1308058(a4, &qword_1ECEB4DC0);
  }

  result = sub_1E149BCE4(a4, v10);
  if (a3 == 1)
  {
    return sub_1E1308058(a4, &qword_1ECEB4DC0);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1E14F3228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1E1AF38EC();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1E1308058(v25, &qword_1ECEB4DB8);
  }

  if (v18 < 1)
  {
    return sub_1E1308058(v25, &qword_1ECEB4DB8);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1E1308058(v25, &qword_1ECEB4DB8);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E14F33C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for GuidedSearchToken();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14F342C(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_1E14F3490(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void *sub_1E14F3490(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1E14E65A8(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1E14F354C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E1AF74AC() & 1;
  }
}

uint64_t sub_1E14F35A4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E1AF74AC() & 1;
  }
}

uint64_t sub_1E14F35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_1E1AF74AC() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_1E14F36E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E14F37A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E14F37EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E14F3858(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for GuidedSearchToken();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_1E1AF71CC();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_1E1AF71CC();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1E14F342C(v4, sub_1E14F3F98);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E14F39F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for GuidedSearchToken();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1E1AF71CC();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1E1AF71CC();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_1E14F3B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1E14F3C74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1E14F3D98(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1E14F3E94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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
  a4(0);
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
  result = sub_1E1AF71CC();
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
    result = sub_1E1AF71CC();
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

uint64_t ArcadeWelcomePagePresenter.__allocating_init(objectGraph:contentType:welcomePage:url:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *a2;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage) = 0;
  v11 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_url;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v8 + v11, a4, v12);
  *(v8 + v10) = a3;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_contentType) = v9;
  v14 = sub_1E138C578(a1, 0, 0, 0);

  (*(v13 + 8))(a4, v12);
  return v14;
}

uint64_t ArcadeWelcomePagePresenter.init(objectGraph:contentType:welcomePage:url:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage) = 0;
  v10 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_url;
  v11 = sub_1E1AEFCCC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4 + v10, a4, v11);
  *(v4 + v9) = a3;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_contentType) = v8;
  v13 = sub_1E138C578(a1, 0, 0, 0);

  (*(v12 + 8))(a4, v11);
  return v13;
}

uint64_t sub_1E14F424C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E14F42B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E14F4358()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_contentType))
  {
    if (*(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_contentType) != 1)
    {
      goto LABEL_21;
    }

    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage);
    if (!v1)
    {
      goto LABEL_21;
    }

    v2 = 24;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage);
    if (!v1)
    {
      goto LABEL_21;
    }

    v2 = 16;
  }

  v3 = *(v1 + v2);
  v4 = v3[9];
  v5 = v3[10];
  v6 = v3[7];

  if (v5)
  {
    v7 = v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v29 = type metadata accessor for ArcadeWelcomePagePresenter();
      v28[0] = v0;
      v10 = *(v8 + 8);
      v11 = *(v10 + 8);

      v11(v5, v28, ObjectType, v10);

      swift_unknownObjectRelease();
      sub_1E1308058(v28, &qword_1ECEB2DF0);
    }
  }

  if (v4)
  {
    v12 = v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      v14 = swift_getObjectType();
      v29 = type metadata accessor for ArcadeWelcomePagePresenter();
      v28[0] = v0;
      v15 = *(v13 + 8);
      v16 = *(v15 + 8);

      v16(v17, v28, v14, v15);
      swift_unknownObjectRelease();
      sub_1E1308058(v28, &qword_1ECEB2DF0);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v12 + 8);
      v19 = swift_getObjectType();
      (*(v18 + 32))(v19, v18);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  if (v5)
  {
  }

  if (v4)
  {
LABEL_21:
  }

  v21 = v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    v23 = swift_getObjectType();
    v29 = type metadata accessor for ArcadeWelcomePagePresenter();
    v28[0] = v0;
    v24 = *(v22 + 8);
    v25 = *(v24 + 8);

    v25(v6, v28, v23, v24);
    swift_unknownObjectRelease();
    sub_1E1308058(v28, &qword_1ECEB2DF0);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v26 = *(v21 + 8);
  v27 = swift_getObjectType();
  (*(v26 + 32))(v27, v26);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E14F46E0()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_contentType))
  {
    if (*(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_contentType) != 1)
    {
      goto LABEL_21;
    }

    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage);
    if (!v1)
    {
      goto LABEL_21;
    }

    v2 = 24;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage);
    if (!v1)
    {
      goto LABEL_21;
    }

    v2 = 16;
  }

  v3 = *(v1 + v2);
  v4 = v3[11];
  v5 = v3[12];
  v6 = v3[8];

  if (v5)
  {
    v7 = v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v29 = type metadata accessor for ArcadeWelcomePagePresenter();
      v28[0] = v0;
      v10 = *(v8 + 8);
      v11 = *(v10 + 8);

      v11(v5, v28, ObjectType, v10);

      swift_unknownObjectRelease();
      sub_1E1308058(v28, &qword_1ECEB2DF0);
    }
  }

  if (v4)
  {
    v12 = v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      v14 = swift_getObjectType();
      v29 = type metadata accessor for ArcadeWelcomePagePresenter();
      v28[0] = v0;
      v15 = *(v13 + 8);
      v16 = *(v15 + 8);

      v16(v17, v28, v14, v15);
      swift_unknownObjectRelease();
      sub_1E1308058(v28, &qword_1ECEB2DF0);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v12 + 8);
      v19 = swift_getObjectType();
      (*(v18 + 32))(v19, v18);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (!v6)
  {
    goto LABEL_21;
  }

  if (v5)
  {
  }

  if (v4)
  {
LABEL_21:
  }

  v21 = v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    v23 = swift_getObjectType();
    v29 = type metadata accessor for ArcadeWelcomePagePresenter();
    v28[0] = v0;
    v24 = *(v22 + 8);
    v25 = *(v24 + 8);

    v25(v6, v28, v23, v24);
    swift_unknownObjectRelease();
    sub_1E1308058(v28, &qword_1ECEB2DF0);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v26 = *(v21 + 8);
  v27 = swift_getObjectType();
  (*(v26 + 32))(v27, v26);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E14F4ACC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    *(v3 + 32) = 0;
    v4 = v3 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      v8 = *(v7 + 16);

      v8(ObjectType, v7);
      swift_unknownObjectRelease();
    }

    *(v3 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage) = v1;

    sub_1E14F4F8C();
  }

  return result;
}

uint64_t sub_1E14F4BF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    *(v1 + 32) = 0;
    v2 = v1 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 16);
      v6 = *(v5 + 16);

      v6(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v2 + 8);
      v8 = swift_getObjectType();
      (*(v7 + 32))(v8, v7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E14F4D5C()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view);
  v1 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t ArcadeWelcomePagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view);
  v1 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_url;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArcadeWelcomePagePresenter.__deallocating_deinit()
{
  v0 = BasePresenter.deinit();
  v1 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;

  sub_1E1337DEC(v2 + v1);
  v3 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_url;
  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeWelcomePagePresenter()
{
  result = qword_1ECEB4DE0;
  if (!qword_1ECEB4DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14F4F8C()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeWelcomePageIntent();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if ((*(v0 + 32) & 1) == 0)
  {
    v6 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage;
    v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_welcomePage);
    if (v7)
    {
      v8 = type metadata accessor for ArcadeWelcomePage();
      v9 = &protocol witness table for ArcadeWelcomePage;
      v10 = sub_1E14F55D8();
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v26[1] = 0;
      v26[2] = 0;
    }

    v26[0] = v7;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    swift_beginAccess();

    sub_1E13891EC(v26, v1 + 40);
    swift_endAccess();
    sub_1E138B568();
    sub_1E1308058(v26, &qword_1ECEB2588);
    if (*(v1 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_contentType))
    {
      if (*(v1 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_contentType) == 1 && *(v1 + v6))
      {
        goto LABEL_10;
      }
    }

    else if (*(v1 + v6))
    {
LABEL_10:
      v11 = v1 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 24);

        v14(v15, ObjectType, v12);

        return swift_unknownObjectRelease();
      }

      return result;
    }

    *(v1 + 32) = 1;
    v16 = v1 + OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      v18 = swift_getObjectType();
      (*(*(v17 + 16) + 8))(v18);
      swift_unknownObjectRelease();
    }

    v19 = OBJC_IVAR____TtC11AppStoreKit26ArcadeWelcomePagePresenter_url;
    v20 = *(v2 + 20);
    v21 = sub_1E1AEFCCC();
    (*(*(v21 - 8) + 16))(&v4[v20], v1 + v19, v21);
    *v4 = 0xD000000000000017;
    *(v4 + 1) = 0x80000001E1B637A0;
    type metadata accessor for JSIntentDispatcher();
    v22 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E1368880(v4, v22, "AppStoreKit/ArcadeWelcomePagePresenter.swift", 44, 2);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v23 = sub_1E1361A80();

    v24 = sub_1E1AF68EC();
    v27 = v23;
    v28 = MEMORY[0x1E69AB720];
    v26[0] = v24;
    sub_1E1AF57FC();

    sub_1E14F557C(v4);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t sub_1E14F53B4()
{
  result = sub_1E1AEFCCC();
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

uint64_t sub_1E14F557C(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeWelcomePageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E14F55D8()
{
  result = qword_1ECEB4DF0;
  if (!qword_1ECEB4DF0)
  {
    type metadata accessor for ArcadeWelcomePage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4DF0);
  }

  return result;
}

uint64_t AchievementSummaryLayout.Metrics.achievementStackInsets.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t AchievementSummaryLayout.Metrics.outOfTotalLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 8);

  return sub_1E1308EC0(a1, v1 + 8);
}

uint64_t AchievementSummaryLayout.Metrics.chevronLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 48);

  return sub_1E1308EC0(a1, v1 + 48);
}

uint64_t AchievementSummaryLayout.Metrics.chevronTrailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 88);

  return sub_1E1308EC0(a1, v1 + 88);
}

uint64_t AchievementSummaryLayout.Metrics.componentHeight.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 128) = v2;
  return result;
}

uint64_t AchievementSummaryLayout.Metrics.init(achievementStackInsets:outOfTotalLeadingMargin:chevronLeadingMargin:chevronTrailingMargin:componentHeight:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v9 = *a5;
  *a6 = *a1;
  sub_1E1308EC0(a2, (a6 + 1));
  sub_1E1308EC0(a3, (a6 + 6));
  result = sub_1E1308EC0(a4, (a6 + 11));
  a6[16] = v9;
  return result;
}

uint64_t sub_1E14F59A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 112);
  *(a7 + 96) = *(a1 + 96);
  *(a7 + 112) = v12;
  *(a7 + 128) = *(a1 + 128);
  v13 = *(a1 + 48);
  *(a7 + 32) = *(a1 + 32);
  *(a7 + 48) = v13;
  v14 = *(a1 + 80);
  *(a7 + 64) = *(a1 + 64);
  *(a7 + 80) = v14;
  v15 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v15;
  sub_1E1308EC0(a2, a7 + 136);
  sub_1E1308EC0(a3, a7 + 176);
  sub_1E1308EC0(a4, a7 + 216);
  sub_1E1308EC0(a5, a7 + 256);
  result = *a6;
  v17 = *(a6 + 16);
  *(a7 + 296) = *a6;
  *(a7 + 312) = v17;
  *(a7 + 328) = *(a6 + 32);
  return result;
}

double AchievementSummaryLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v12 = sub_1E1AF698C();

  if (v12)
  {
    sub_1E14F59A8((v3 + 37), &v19);
    if (v20)
    {
      sub_1E1308EC0(&v19, v21);
      __swift_project_boxed_opaque_existential_1Tm(v21, v22);
      sub_1E1AF11DC();
      __swift_project_boxed_opaque_existential_1Tm(v3 + 6, v3[9]);
      sub_1E13BC274();
      sub_1E1AF12DC();
      v13 = *(v7 + 8);
      v13(v10, v6);
      __swift_project_boxed_opaque_existential_1Tm(v3 + 11, v3[14]);
      sub_1E13BC274();
      sub_1E1AF12DC();
      v13(v10, v6);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_1E14F60F8(&v19);
      __swift_project_boxed_opaque_existential_1Tm(v3 + 6, v3[9]);
      sub_1E13BC274();
      sub_1E1AF12DC();
      v15 = *(v7 + 8);
      v15(v10, v6);
      __swift_project_boxed_opaque_existential_1Tm(v3 + 11, v3[14]);
      sub_1E13BC274();
      sub_1E1AF12DC();
      v15(v10, v6);
    }

    __swift_project_boxed_opaque_existential_1Tm(v3 + 17, v3[20]);
    sub_1E1AF6B5C();
    sub_1E1AF11DC();
    v16 = *v3;
    *&v19 = a1;
    v17 = *(*v16 + 104);
    v17(v21, &v19);
    *&v19 = a1;
    v17(v21, &v19);
    __swift_project_boxed_opaque_existential_1Tm(v3 + 22, v3[25]);
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(v3 + 32, v3[35]);
    sub_1E1AF11DC();
  }

  else
  {
    v14 = v3[16];
    *&v19 = a1;
    (*(*v14 + 104))(v21, &v19);
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v7 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return a2;
}

double static AchievementSummaryLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 128);
  v13 = a2;
  (*(*v11 + 104))(v14, &v13, v8);
  __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return a3;
}

uint64_t sub_1E14F60F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AchievementSummaryLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v101 = a2;
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 17, v6[20]);
  sub_1E1AF11DC();
  v18 = v17;
  v20 = v19;
  v126.origin.x = a3;
  v126.origin.y = a4;
  v126.size.width = a5;
  v126.size.height = a6;
  MidX = CGRectGetMidX(v126);
  v22 = *v6;
  *&v120 = a1;
  v23 = *(*v22 + 104);
  *&v24 = *v22 + 104;
  v23(&v122, &v120);
  v107 = v18;
  v25 = MidX - *&v125 - v18;
  v127.origin.x = a3;
  v127.origin.y = a4;
  v127.size.width = a5;
  v127.size.height = a6;
  MinX = CGRectGetMinX(v127);
  *&v120 = a1;
  v23(&v122, &v120);
  v27 = MinX + v123;
  if (v25 > MinX + v123)
  {
    v27 = v25;
  }

  v116 = v27;
  v128.origin.x = a3;
  v128.origin.y = a4;
  v128.size.width = a5;
  v128.size.height = a6;
  MinY = CGRectGetMinY(v128);
  *&v120 = a1;
  v111 = *&v23;
  v110 = v24;
  v23(&v122, &v120);
  v29 = v122;
  sub_1E14F59A8((v6 + 37), &v120);
  v117 = a3;
  height = v20;
  v112 = v14;
  if (v121)
  {
    sub_1E1308EC0(&v120, &v122);
    __swift_project_boxed_opaque_existential_1Tm(&v122, v125);
    sub_1E1AF11DC();
    v31 = v30;
    v119 = MinY;
    v33 = v32;
    v129.origin.x = a3;
    v129.origin.y = a4;
    v129.size.width = a5;
    v129.size.height = a6;
    MaxX = CGRectGetMaxX(v129);
    x = v29;
    v35 = MaxX;
    __swift_project_boxed_opaque_existential_1Tm(v6 + 11, v6[14]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v37 = v36;
    v38 = *(*&v14 + 8);
    v38(v16, v13);
    v98 = v35 - v37 - v31;
    v130.origin.x = a3;
    v130.origin.y = a4;
    v130.size.width = a5;
    v130.size.height = a6;
    MidY = CGRectGetMidY(v130);
    v99 = v33;
    v40 = v33 * -0.5;
    MinY = v119;
    v97 = floor(MidY + v40);
    __swift_project_boxed_opaque_existential_1Tm(v6 + 6, v6[9]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v42 = v41;
    v38(v16, v13);
    v100 = v31;
    v43 = v31 + v42;
    v20 = height;
    __swift_project_boxed_opaque_existential_1Tm(v6 + 11, v6[14]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v45 = v44;
    v46 = v13;
    v38(v16, v13);
    v47 = v43 + v45;
    v29 = x;
    __swift_destroy_boxed_opaque_existential_1(&v122);
  }

  else
  {
    v46 = v13;
    sub_1E14F60F8(&v120);
    v98 = 0.0;
    v97 = 0.0;
    v100 = 0.0;
    v99 = 0.0;
    v47 = 0.0;
  }

  v106 = MinY + v29;
  v48 = [a1 traitCollection];
  v49 = sub_1E1AF698C();

  v50 = v116;
  if ((v49 & 1) == 0)
  {
    v51 = v117;
    v131.origin.x = v117;
    v131.origin.y = a4;
    v131.size.width = a5;
    v131.size.height = a6;
    v50 = CGRectGetMidX(v131);
    v132.origin.x = v51;
    v132.origin.y = a4;
    v132.size.width = a5;
    v132.size.height = a6;
    v52 = CGRectGetMinX(v132);
    *&v120 = a1;
    v53 = v111;
    (*&v111)(&v122, &v120);
    v54 = v52 + v123;
    v133.origin.x = v116;
    v133.origin.y = v106;
    v133.size.width = v107;
    v133.size.height = v20;
    v55 = v54 + CGRectGetWidth(v133);
    *&v120 = a1;
    (*&v53)(&v122, &v120);
    if (v50 <= v55 + *&v125)
    {
      v50 = v55 + *&v125;
    }
  }

  v56 = v117;
  v134.origin.x = v117;
  v134.origin.y = a4;
  v134.size.width = a5;
  v134.size.height = a6;
  v57 = CGRectGetMaxX(v134);
  x = v50;
  v58 = v57 - v47 - v50;
  v59 = ceil(v58 * 0.44);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 22, v7[25]);
  v135.origin.x = v56;
  v135.origin.y = a4;
  v135.size.width = a5;
  v135.size.height = a6;
  CGRectGetHeight(v135);
  sub_1E1AF11CC();
  v61 = v60;
  v119 = v62;
  y = v63;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 27, v7[30]);
  v136.origin.x = v56;
  v136.origin.y = a4;
  v136.size.width = a5;
  v136.size.height = a6;
  CGRectGetHeight(v136);
  sub_1E1AF11CC();
  width = v64;
  v113 = v65;
  v108 = v66;
  __swift_project_boxed_opaque_existential_1Tm(v7 + 32, v7[35]);
  v137.origin.x = v56;
  v137.origin.y = a4;
  v137.size.width = a5;
  v137.size.height = a6;
  CGRectGetHeight(v137);
  sub_1E1AF11DC();
  v104 = v67;
  v69 = v68;
  v70 = [a1 traitCollection];
  v71 = sub_1E1AF698C();

  v102 = a6;
  v103 = a4;
  v114 = v69;
  if (v71)
  {
    v138.origin.x = v116;
    v138.origin.y = v106;
    v138.size.width = v107;
    v138.size.height = height;
    MaxY = CGRectGetMaxY(v138);
    *&v120 = a1;
    (*&v111)(&v122, &v120);
    v73 = MaxY + v124;
  }

  else
  {
    v139.origin.x = v56;
    v139.origin.y = a4;
    v139.size.width = a5;
    v139.size.height = a6;
    v73 = floor((CGRectGetHeight(v139) - (v119 + v69)) * 0.5);
  }

  if (v59 >= v61)
  {
    v74 = v61;
  }

  else
  {
    v74 = v59;
  }

  v75 = x;
  v140.origin.x = x;
  v140.origin.y = v73;
  v140.size.width = v74;
  v76 = v119;
  v140.size.height = v119;
  v77 = CGRectGetMaxX(v140);
  __swift_project_boxed_opaque_existential_1Tm(v7 + 1, v7[4]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v79 = v78;
  (*(*&v112 + 8))(v16, v46);
  v141.origin.x = v75;
  v141.origin.y = v73;
  v141.size.width = v74;
  v141.size.height = v76;
  v80 = v58 - CGRectGetWidth(v141);
  if (v80 >= width)
  {
    v80 = width;
  }

  v111 = v80;
  v110 = v77 + v79;
  y = y + v73 - v108;
  v142.origin.x = v75;
  v142.origin.y = v73;
  v142.size.width = v74;
  v142.size.height = v76;
  v112 = CGRectGetMinX(v142);
  v143.origin.x = v75;
  v143.origin.y = v73;
  width = v74;
  v143.size.width = v74;
  v143.size.height = v76;
  v108 = CGRectGetMaxY(v143);
  if (v58 >= v104)
  {
    v81 = v104;
  }

  else
  {
    v81 = v58;
  }

  v82 = [a1 traitCollection];
  v83 = sub_1E1AF695C();

  v104 = v81;
  if ((v83 & 1) == 0)
  {
    v84 = v106;
    v85 = v116;
    v144.origin.x = v116;
    v144.origin.y = v106;
    v96 = a5;
    v86 = v107;
    v144.size.width = v107;
    v87 = height;
    v144.size.height = height;
    v88 = CGRectGetMinX(v144);
    v145.origin.x = v110;
    v145.origin.y = y;
    v145.size.width = v111;
    v145.size.height = v113;
    v89 = CGRectGetMaxX(v145);
    v146.origin.x = v112;
    v146.origin.y = v108;
    v146.size.width = v81;
    v146.size.height = v114;
    v90 = CGRectGetMaxX(v146);
    if (v89 > v90)
    {
      v90 = v89;
    }

    v91 = v90 - v88;
    v147.origin.x = v117;
    v147.origin.y = v103;
    v147.size.width = v96;
    v147.size.height = v102;
    v92 = ceil((CGRectGetWidth(v147) - v91) * 0.5);
    v148.origin.x = v85;
    v148.origin.y = v84;
    v148.size.width = v86;
    v148.size.height = v87;
    v93 = v92 - CGRectGetMinX(v148);
    v149.origin.x = v85;
    v149.origin.y = v84;
    v149.size.width = v86;
    v149.size.height = v87;
    v150 = CGRectOffset(v149, v93, 0.0);
    height = v150.size.height;
    v150.origin.x = x;
    v150.origin.y = v73;
    v150.size.width = width;
    v150.size.height = v119;
    v151 = CGRectOffset(v150, v93, 0.0);
    x = v151.origin.x;
    width = v151.size.width;
    v119 = v151.size.height;
    v151.origin.x = v110;
    v151.origin.y = y;
    v151.size.width = v111;
    v151.size.height = v113;
    v152 = CGRectOffset(v151, v93, 0.0);
    v110 = v152.origin.x;
    y = v152.origin.y;
    v111 = v152.size.width;
    v113 = v152.size.height;
    v152.origin.x = v112;
    v152.origin.y = v108;
    v152.size.width = v104;
    v152.size.height = v114;
    v153 = CGRectOffset(v152, v93, 0.0);
    v112 = v153.origin.x;
    v108 = v153.origin.y;
    v104 = v153.size.width;
    v114 = v153.size.height;
  }

  __swift_project_boxed_opaque_existential_1Tm(v7 + 17, v7[20]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 22, v7[25]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 27, v7[30]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 32, v7[35]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  sub_1E14F59A8((v7 + 37), &v122);
  if (*&v125 == 0.0)
  {
    sub_1E14F60F8(&v122);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(&v122, v125);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v122);
  }

  return sub_1E1AF106C();
}

uint64_t sub_1E14F6E38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
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

uint64_t sub_1E14F6E80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1E14F6F5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1E14F6FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 TitleEffectUpdate.init(effect:isAnimated:animationDuration:timingFunction:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  result = *a1;
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 32) = v6;
  *(a6 + 40) = v7;
  *(a6 + 41) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4 & 1;
  *(a6 + 64) = a5;
  return result;
}

id TitleEffectUpdate.effect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_1E13E653C(v2, v3, v4, v5, v6, v7);
}

void *TitleEffectUpdate.timingFunction.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit11TitleEffectO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E14F70E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_1E14F7140(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_1E14F71DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_allocate_value_buffer(v0, qword_1ECEB4E08);
  __swift_project_value_buffer(v0, qword_1ECEB4E08);
  return sub_1E1AF3F9C();
}

uint64_t static ArcadeSeeAllGamesPagePresenter.displayStyleKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB0E10 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  v3 = __swift_project_value_buffer(v2, qword_1ECEB4E08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ArcadeSeeAllGamesPagePresenter.init(objectGraph:pageUrl:facetsPresenter:automaticallyManageFacetChanges:)(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v62 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30A0);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v44 - v9;
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF361C();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v49 = sub_1E1AF3D0C();
  v18 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (v5 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  v22._object = 0x80000001E1B637F0;
  v22._countAndFlagsBits = 0xD000000000000010;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  *v21 = localizedString(_:comment:)(v22, v23);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v58 = v11;
  v59 = v10;
  v24 = *(v11 + 16);
  v60 = a2;
  v52 = v24;
  v48 = v11 + 16;
  v24(v5 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl, a2, v10);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_facetsPresenter) = a3;
  v57 = a4;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_automaticallyManageFacetChanges) = a4;
  sub_1E1AF44CC();

  sub_1E1AF44BC();
  if (qword_1ECEB0E10 != -1)
  {
    swift_once();
  }

  v61 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  __swift_project_value_buffer(v25, qword_1ECEB4E08);
  sub_1E1AF3C8C();

  v26 = sub_1E1AF72FC();

  v27 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle) = v26 == 1;
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v28 = v63[0];
  sub_1E1AF4EAC();
  if (qword_1EE1E2FE8 != -1)
  {
    swift_once();
  }

  v29 = v49;
  (*(v18 + 104))(v20, *MEMORY[0x1E69AAFB8], v49);
  sub_1E1AF52AC();
  (*(v18 + 8))(v20, v29);
  v30 = v51;
  sub_1E1AF532C();
  (*(v50 + 8))(v17, v30);
  v31 = sub_1E1AF4E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  v51 = v31;
  v63[0] = v31;
  v63[1] = MEMORY[0x1E69AB380];
  v32 = v53;
  sub_1E1AF360C();
  sub_1E1AF41CC();
  (*(v54 + 8))(v32, v55);
  v55 = v28;
  v33 = v56;
  v34 = v59;
  v35 = v52;
  v52(v56, v60, v59);
  swift_beginAccess();
  LOBYTE(v32) = *(v5 + v27);
  type metadata accessor for ArcadeSeeAllGamesContentPresenter();
  v36 = swift_allocObject();
  *(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x1E69E7CC0];
  *(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x1E69E7CD0];
  *(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v37 = (v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v37 = 0u;
  v37[1] = 0u;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  v35(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl, v33, v34);
  *(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = v61;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v32;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v36 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];

  v39 = sub_1E138C578(v38, 0, 0, 0);

  v58 = *(v58 + 8);
  (v58)(v33, v34);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter) = v39;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];

  v41 = sub_1E138C578(v40, 0, 0, 0);

  if (v57)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB30D0);
    sub_1E14F9FF4();

    sub_1E1AF3CDC();
    type metadata accessor for ArcadeSeeAllGamesPagePresenter();
    v42 = v45;
    sub_1E1AF3CEC();

    (v58)(v60, v59);
    __swift_destroy_boxed_opaque_existential_1(v63);
    (*(v46 + 8))(v42, v47);
  }

  else
  {

    (v58)(v60, v59);
  }

  return v41;
}

uint64_t sub_1E14F7D00(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1E14F7D6C()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_pageTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E14F7DC4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_1E14F7E28(&v7);
}

uint64_t sub_1E14F7E28(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  if (*(v1 + v8))
  {
    v9 = 0x746361706D6F63;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (v7)
  {
    v10 = 0x746361706D6F63;
  }

  else
  {
    v10 = 0x746C7561666564;
  }

  if (v9 == v10)
  {
    return swift_bridgeObjectRelease_n();
  }

  v12 = sub_1E1AF74AC();
  result = swift_bridgeObjectRelease_n();
  if ((v12 & 1) == 0)
  {
    sub_1E1AF44CC();
    sub_1E1AF44BC();
    if (qword_1ECEB0E10 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v3, qword_1ECEB4E08);
    (*(v4 + 16))(v6, v13, v3);
    if (*(v1 + v8))
    {
      v14 = 0x746361706D6F63;
    }

    else
    {
      v14 = 0x746C7561666564;
    }

    v15[1] = v14;
    v15[2] = 0xE700000000000000;
    sub_1E1AF3C9C();

    return sub_1E14FA0A4();
  }

  return result;
}

uint64_t sub_1E14F803C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1E14F8090(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  return sub_1E14F7E28(&v6);
}

void (*sub_1E14F80F0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1E14F8184;
}

void sub_1E14F8184(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_1E14F7E28(v6);

  free(v2);
}

uint64_t sub_1E14F8200(uint64_t a1)
{
  v3 = a1 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(a1 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v6 = v1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v7 = *(v6 + 8);
  v8 = v5 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  swift_beginAccess();
  *(v8 + 8) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(*(v1 + v4) + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = &off_1F5C38F00;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(*(*(v10 + 16) + 16) + 8))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E14F83AC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E14F8418(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E14F851C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v3 + v4) = a1;
  v5 = v3 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view;
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 8);
    v10 = *(v9 + 8);

    v10(ObjectType, v9);
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v11 = *(v5 + 8);
    v12 = swift_getObjectType();
    v13 = *(v11 + 8);
    v14 = *(v13 + 16);

    v14(v12, v13);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1E14F864C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v2 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*sub_1E14F86A0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v6 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + v6);
  return sub_1E14F8744;
}

void sub_1E14F8744(uint64_t a1)
{
  v1 = *a1;
  sub_1E14F851C(*(*a1 + 32));

  free(v1);
}

BOOL sub_1E14F8784()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v2 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken;
  swift_beginAccess();
  sub_1E13BFF54(v1 + v2, v5);
  v3 = v6 != 0;
  sub_1E1308058(v5, &qword_1ECEB2DF0);
  return v3;
}

uint64_t sub_1E14F8804()
{

  sub_1E13BEF54();
}

uint64_t sub_1E14F884C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v2 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    return sub_1E1AF71CC();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1E14F88C0(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = MEMORY[0x1E68FFD80](a1, v6);

    return v7;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v7 = *(v6 + 8 * a1 + 32);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14F8988(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v6 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v7 = *(v5 + v6);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v5 + v6) = v7;
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = sub_1E14E7234(v7);
    v7 = result;
    *(v5 + v6) = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;
    *(v5 + v6) = v7;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

BOOL sub_1E14F8A6C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  v4 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 >> 62)
  {
    v6 = sub_1E1AF71CC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 > a1;
}

unint64_t sub_1E14F8AF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);

  v2 = sub_1E1AF019C();
  v3 = OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (v2 < sub_1E1AF71CC())
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  result = sub_1E1AF019C();
  v6 = *(v1 + v3);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v11 = result;

    v7 = MEMORY[0x1E68FFD80](v11, v6);

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 8 * result + 32);

LABEL_7:
    v8 = *(v7 + 24);

    v9 = *(v8 + 16);

    v10 = sub_1E1AF018C();

    return v10 < v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14F8C40()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
  }

  else
  {
    v2 = sub_1E1AF74AC();

    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + v1);
      *(v0 + v1) = 1;
      goto LABEL_6;
    }
  }

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;
LABEL_6:
  v5 = v3;
  return sub_1E14F7E28(&v5);
}

uint64_t sub_1E14F8D04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3060);
  sub_1E1AF690C();
  v1 = *(*(v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter) + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions);
  if (!v1)
  {

    return sub_1E14FA0A4();
  }

  v2 = sub_1E14F9568(v4, v1);

  if ((v2 & 1) == 0)
  {
    return sub_1E14FA0A4();
  }

  return result;
}

uint64_t sub_1E14F8E14()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_view;

  return sub_1E13C04E4(v3);
}

uint64_t ArcadeSeeAllGamesPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();

  v1 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E13C04E4(v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_view);
  return v0;
}

uint64_t ArcadeSeeAllGamesPagePresenter.__deallocating_deinit()
{
  ArcadeSeeAllGamesPagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E14F8FF4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v50 = result + 64;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v51 = v7;
  v52 = result;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v59 = (v6 - 1) & v6;
LABEL_16:
    v60 = v3;
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(result + 56) + 8 * v11);

    v16 = sub_1E13018F8(v13, v14);
    v18 = v17;

    if ((v18 & 1) == 0 || (v19 = *(*(v2 + 56) + 8 * v16), v20 = *(v19 + 16), v20 != *(v15 + 16)))
    {
LABEL_57:

      return 0;
    }

    if (v20 && v19 != v15)
    {
      v21 = v19 + 32;
      v22 = v15 + 32;

      v23 = 0;
      v56 = v2;
      v57 = result;
      v58 = v15;
      v54 = v21;
      v55 = v20;
      v53 = v15 + 32;
      while (v23 < *(result + 16))
      {
        if (v23 >= *(v15 + 16))
        {
          goto LABEL_62;
        }

        v24 = *(v21 + 8 * v23);
        v25 = *(v22 + 8 * v23);
        if (v24 != v25)
        {
          if (*(v24 + 16) != *(v25 + 16))
          {

            goto LABEL_57;
          }

          v61 = v23;
          v26 = v24 + 64;
          v27 = 1 << *(v24 + 32);
          if (v27 < 64)
          {
            v28 = ~(-1 << v27);
          }

          else
          {
            v28 = -1;
          }

          v29 = v28 & *(v24 + 64);
          v30 = (v27 + 63) >> 6;

          v31 = 0;
          while (v29)
          {
            v32 = __clz(__rbit64(v29));
            v62 = (v29 - 1) & v29;
LABEL_39:
            v35 = 16 * (v32 | (v31 << 6));
            v36 = v24;
            v37 = (*(v24 + 48) + v35);
            v38 = *v37;
            v39 = v37[1];
            v40 = (*(v24 + 56) + v35);
            v42 = *v40;
            v41 = v40[1];

            v43 = sub_1E13018F8(v38, v39);
            v45 = v44;

            if ((v45 & 1) == 0)
            {
LABEL_52:

LABEL_56:

              goto LABEL_57;
            }

            v46 = (*(v25 + 56) + 16 * v43);
            v47 = v46[1];
            if (v47)
            {
              if (!v41)
              {
                goto LABEL_55;
              }

              if (*v46 == v42 && v47 == v41)
              {

                v24 = v36;
                v29 = v62;
              }

              else
              {
                v49 = sub_1E1AF74AC();

                v24 = v36;
                v29 = v62;
                if ((v49 & 1) == 0)
                {
LABEL_55:

                  goto LABEL_56;
                }
              }
            }

            else
            {
              v24 = v36;
              v29 = v62;
              if (v41)
              {
                goto LABEL_52;
              }
            }
          }

          v33 = v31;
          while (1)
          {
            v31 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v31 >= v30)
            {

              v2 = v56;
              result = v57;
              v15 = v58;
              v21 = v54;
              v20 = v55;
              v22 = v53;
              v23 = v61;
              goto LABEL_22;
            }

            v34 = *(v26 + 8 * v31);
            ++v33;
            if (v34)
            {
              v32 = __clz(__rbit64(v34));
              v62 = (v34 - 1) & v34;
              goto LABEL_39;
            }
          }

          __break(1u);
          goto LABEL_60;
        }

LABEL_22:
        if (++v23 == v20)
        {

          goto LABEL_8;
        }
      }

      goto LABEL_61;
    }

LABEL_8:

    v7 = v51;
    result = v52;
    v6 = v59;
    v3 = v60;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v50 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v59 = (v10 - 1) & v10;
      goto LABEL_16;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1E14F93C4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1E13018F8(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1E1AF74AC();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14F9568(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    sub_1E141D0E8(*(v2 + 48) + 136 * v11, &v27);
    v12 = *(*(v2 + 56) + 8 * v11);
    v25 = v30;
    v26 = v28;
    v20 = v31;
    v21 = v29;
    v23 = v34;
    v24 = v32;
    v19 = v33;
    v13 = v35;
    v22 = v27;
    v14 = *(&v27 + 1);

    if (!v14)
    {
      return 1;
    }

    v27 = v22;
    v28 = v26;
    v29 = v21;
    v30 = v25;
    v31 = v20;
    v32 = v24;
    v33 = v19;
    v34 = v23;
    v35 = v13;
    sub_1E15951A4(&v27);
    v16 = v15;
    sub_1E141D144(&v27);
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v18 = sub_1E16B0884(v17, v12);

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14F973C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1E134E724(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_1E13018F8(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1E134B88C(&v24);
      return 0;
    }

    sub_1E134E724(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x1E68FFC60](v23, &v24);
    sub_1E134B88C(v23);
    result = sub_1E134B88C(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14F98D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AEFCCC();
  v54 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E50);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v48 = &v45 - v11;
  v49 = v12;
  v13 = 0;
  v46 = a1;
  v14 = *(a1 + 64);
  v45 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v50 = v54 + 16;
  v51 = (v54 + 32);
  v47 = (v54 + 8);
  while (1)
  {
    v19 = v49;
    if (!v17)
    {
      break;
    }

    v52 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v13 << 6);
LABEL_16:
    v25 = *(*(v46 + 48) + v20);
    v27 = v53;
    v26 = v54;
    (*(v54 + 16))(v53, *(v46 + 56) + *(v54 + 72) * v20, v4);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E58);
    v29 = *(v28 + 48);
    *v19 = v25;
    (*(v26 + 32))(&v19[v29], v27, v4);
    (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
LABEL_17:
    v30 = v19;
    v31 = v48;
    sub_1E14FA798(v30, v48);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E58);
    v33 = (*(*(v32 - 8) + 48))(v31, 1, v32);
    v34 = v33 == 1;
    if (v33 == 1)
    {
      return v34;
    }

    v35 = *(v32 + 48);
    v36 = *v31;
    (*v51)(v55, &v31[v35], v4);
    v37 = sub_1E1595210(v36);
    if ((v38 & 1) == 0)
    {
      (*v47)(v55, v4);
      return 0;
    }

    v39 = v53;
    v40 = v54;
    (*(v54 + 16))(v53, *(v56 + 56) + *(v54 + 72) * v37, v4);
    sub_1E14FA808(&qword_1EE1E2328, MEMORY[0x1E6968FB0]);
    v41 = v55;
    v42 = sub_1E1AF5DAC();
    v43 = *(v40 + 8);
    v43(v39, v4);
    result = (v43)(v41, v4);
    v17 = v52;
    if ((v42 & 1) == 0)
    {
      return v34;
    }
  }

  if (v18 <= v13 + 1)
  {
    v21 = v13 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E58);
      (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
      v52 = 0;
      v13 = v22;
      goto LABEL_17;
    }

    v24 = *(v45 + 8 * v23);
    ++v13;
    if (v24)
    {
      v52 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v13 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14F9DB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_1E130A768(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E14F9EC0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1E13018F8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E14F9FF4()
{
  result = qword_1EE1D2A68;
  if (!qword_1EE1D2A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB30D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2A68);
  }

  return result;
}

uint64_t type metadata accessor for ArcadeSeeAllGamesPagePresenter()
{
  result = qword_1ECEB4E40;
  if (!qword_1ECEB4E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14FA0A4()
{
  v1 = v0;
  v2 = sub_1E1AEFCCC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
  v8 = *(v3 + 16);
  v8(v6, v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_pageUrl, v2, v4);
  v9 = *(v0 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_facetsPresenter);
  v10 = OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_displayStyle;
  swift_beginAccess();
  v11 = *(v1 + v10);
  type metadata accessor for ArcadeSeeAllGamesContentPresenter();
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelves) = MEMORY[0x1E69E7CC0];
  *(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_shelfContentTypes) = MEMORY[0x1E69E7CD0];
  *(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_presentationOptions) = 0;
  v13 = (v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_nextPageToken);
  *v13 = 0u;
  v13[1] = 0u;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_selectedFacetOptions) = 0;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_isPreparingNextPage) = 0;
  (v8)(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_pageUrl, v6, v2);
  *(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_facetsPresenter) = v9;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit33ArcadeSeeAllGamesContentPresenter_displayStyle) = v11;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v12 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];

  v14 = sub_1E138C578(v7, 0, 0, 0);

  (*(v3 + 8))(v6, v2);
  v15 = *(v1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter);
  *(v1 + OBJC_IVAR____TtC11AppStoreKit30ArcadeSeeAllGamesPagePresenter_seeAllGamesContentPresenter) = v14;

  sub_1E14F8200(v15);

  memset(v18, 0, sizeof(v18));
  swift_beginAccess();
  sub_1E13891EC(v18, v1 + 40);
  swift_endAccess();
  sub_1E138B568();
  sub_1E1308058(v18, &qword_1ECEB2588);
  sub_1E1389D04();

  sub_1E13BD9A4();
}

uint64_t sub_1E14FA3E4(uint64_t a1)
{
  result = sub_1E14FA808(&qword_1ECEB4E38, type metadata accessor for ArcadeSeeAllGamesPagePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E14FA444()
{
  result = sub_1E1AEFCCC();
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

uint64_t sub_1E14FA798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E14FA808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DynamicPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v114 = a1;
  v97 = *v2;
  v104 = v2;
  v3 = *(v97 + 152);
  v87 = sub_1E1AF6D9C();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v85 - v4;
  v108 = v3;
  v103 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v85 - v8;
  v9 = sub_1E1AF39DC();
  v105 = *(v9 - 8);
  v106 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v95 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v85 - v16;
  v18 = sub_1E1AF380C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v98 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v85 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v94 = &v85 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v85 - v30;
  v32 = sub_1E1AF40DC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v90 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v85 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v85 - v39;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v100 = v19;
  v42 = *(v19 + 8);
  v41 = v19 + 8;
  v110 = v18;
  v111 = v42;
  v43 = v18;
  v44 = v33;
  v42(v31, v43);
  v93 = *(v33 + 48);
  if (v93(v17, 1, v32) == 1)
  {
    sub_1E1308058(v17, &qword_1ECEB2B28);
    v45 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    (*(v33 + 32))(v40, v17, v32);
    (*(v33 + 16))(v37, v40, v32);
    (*(v105 + 16))(v89, v109, v106);
    type metadata accessor for Shelf();
    sub_1E14FC394();
    v46 = sub_1E1AF5C9C();
    v45 = sub_1E14FB44C(v46);

    (*(v33 + 8))(v40, v32);
  }

  v47 = v104;
  *&v104[qword_1EE217318] = v45;
  v48 = v94;
  sub_1E1AF381C();
  v49 = v95;
  sub_1E1AF368C();
  v111(v48, v110);
  if (v93(v49, 1, v32) == 1)
  {
    sub_1E1308058(v49, &qword_1ECEB2B28);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2AB0);
    v51 = v108;
    swift_getTupleTypeMetadata2();
    v52 = sub_1E1AF627C();
    v53 = *(v97 + 160);
    v54 = sub_1E1694F24(v52, v51, v50, *(v53 + 8));
  }

  else
  {
    v55 = v90;
    v56 = (*(v44 + 32))(v90, v49, v32);
    MEMORY[0x1EEE9AC00](v56);
    v53 = *(v97 + 160);
    *(&v85 - 2) = v108;
    *(&v85 - 1) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0);
    v57 = v107;
    v54 = sub_1E1AF40AC();
    v107 = v57;
    v47 = v104;
    (*(v44 + 8))(v55, v32);
  }

  v59 = v105;
  v58 = v106;
  *&v47[qword_1EE217310] = v54;
  v60 = v96;
  sub_1E1AF381C();
  v61 = sub_1E1AF37CC();
  v63 = v62;
  v64 = v60;
  v65 = v110;
  v111(v64, v110);
  if (v63)
  {
    v106 = v41;
    *&v112 = v61;
    *(&v112 + 1) = v63;
    v66 = v91;
    v67 = v108;
    sub_1E1AF619C();
    v68 = v103;
    v69 = *(v103 + 48);
    if (v69(v66, 1, v67) == 1)
    {
      (*(v53 + 24))(v67, v53);
      if (v69(v66, 1, v67) != 1)
      {
        (*(v86 + 8))(v66, v87);
      }

      v65 = v110;
      v67 = v108;
      v68 = v103;
      v70 = v92;
    }

    else
    {
      v72 = v92;
      (*(v68 + 32))(v92, v66, v67);
      v70 = v72;
      v65 = v110;
    }
  }

  else
  {
    v71 = v88;
    v67 = v108;
    (*(v53 + 24))(v108, v53);
    v70 = v71;
    v68 = v103;
  }

  v73 = v114;
  (*(v68 + 32))(&v47[*(*v47 + 184)], v70, v67);
  v74 = v98;
  sub_1E1AF381C();
  v75 = sub_1E1AF370C();
  v76 = v74;
  v77 = v111;
  v111(v76, v65);
  v47[*(*v47 + 200)] = v75 & 1;
  v78 = v99;
  sub_1E1AF381C();
  sub_1E1AF37EC();
  v77(v78, v65);
  v79 = &v47[*(*v47 + 192)];
  v80 = v113;
  *v79 = v112;
  *(v79 + 1) = v80;
  sub_1E1AF381C();
  *&v47[*(*v47 + 208)] = _sSo26ASKPagePresentationOptionsV11AppStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v78);
  v81 = v101;
  (*(v100 + 16))(v101, v73, v65);
  v82 = v102;
  (*(v59 + 16))(v102, v109, v58);
  v83 = BasePage.init(deserializing:using:)(v81, v82);
  (*(v59 + 8))(v109, v58);
  v77(v73, v65);
  return v83;
}

uint64_t sub_1E14FB44C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  while (v5)
  {
LABEL_11:
    v10 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v7 << 6)));
    swift_bridgeObjectRetain_n();

    sub_1E1AF6F6C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_1E135FCF4(v25);
    v14 = v8[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_23;
    }

    v18 = v13;
    if (v8[3] < v17)
    {
      sub_1E16889E4(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1E135FCF4(v25);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v23 = v12;
    sub_1E1415C9C();
    v12 = v23;
    if (v18)
    {
LABEL_4:
      *(v8[7] + 8 * v12) = v10;

      goto LABEL_5;
    }

LABEL_17:
    v8[(v12 >> 6) + 8] |= 1 << v12;
    v20 = v12;
    sub_1E134E724(v25, v8[6] + 40 * v12);
    *(v8[7] + 8 * v20) = v10;
    v21 = v8[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_24;
    }

    v8[2] = v22;
LABEL_5:
    v5 &= v5 - 1;
    sub_1E134B88C(v25);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E14FB694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29[1] = a3;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = v29 - v9;
  v10 = sub_1E1AF6D9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;

  sub_1E1AF619C();
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2AB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v31, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v14 + 32))(v17, v13, a4);
    v20 = *(v14 + 16);
    v21 = v31;
    v29[0] = v17;
    v20(v31, v17, a4);
    v22 = v30;
    sub_1E1AF374C();
    v23 = sub_1E1AF5A6C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_1E1308058(v22, &qword_1ECEB1F90);
      v25 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v25 = sub_1E1AF59FC();
      (*(v24 + 8))(v22, v23);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2AB0);
    v26 = swift_getTupleTypeMetadata2();
    v27 = *(v26 + 48);
    v28 = sub_1E14D6BA0(v25);

    (*(v14 + 8))(v29[0], a4);
    *(v21 + v27) = v28;
    return (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  }
}

uint64_t sub_1E14FBAC0()
{
  sub_1E14FC334();
}

uint64_t sub_1E14FBAF4()
{
  sub_1E14FC2F0();
}

uint64_t sub_1E14FBB28(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1E14FBB7C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1E14FBCDC(v3);
}

uint64_t sub_1E14FBC3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  swift_beginAccess();
  return (*(*(*(v3 + 152) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1E14FBCDC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  swift_beginAccess();
  (*(*(*(v3 + 152) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1E14FBE48(uint64_t (*a1)(uint64_t))
{
  swift_beginAccess();

  v4 = sub_1E14E6CA4(v3, a1);

  v5 = qword_1EE217318;
  swift_beginAccess();
  *(v1 + v5) = v4;
}

uint64_t sub_1E14FBEEC()
{
  sub_1E14FC3EC();
}

uint64_t sub_1E14FBF80()
{
  v1 = *v0;

  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 184));
  return sub_1E1308058(v0 + *(*v0 + 192), &qword_1ECEB2DF0);
}

uint64_t *DynamicPage.deinit()
{
  v1 = *v0;

  v2 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v3 = sub_1E1AF3C3C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 184));
  sub_1E1308058(v0 + *(*v0 + 192), &qword_1ECEB2DF0);
  return v0;
}

uint64_t DynamicPage.__deallocating_deinit()
{
  DynamicPage.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1E14FC1CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E14FBD84();
  return sub_1E135BEB4;
}

uint64_t sub_1E14FC288@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E14FC3EC();
}

uint64_t sub_1E14FC2F0()
{
  v1 = qword_1EE217310;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E14FC334()
{
  v1 = qword_1EE217318;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_1E14FC394()
{
  result = qword_1EE1E5488;
  if (!qword_1EE1E5488)
  {
    type metadata accessor for Shelf();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E5488);
  }

  return result;
}

uint64_t keypath_getTm_1@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
}

uint64_t sub_1E14FC4A0()
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

uint64_t Banner.__allocating_init(id:message:focusedMessage:action:buttonActions:leadingArtwork:leadingArtworkTintColor:leadingArtworkSymbolConfiguration:includeBackgroundBorder:hideCriteria:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, char *a13)
{
  v36 = a7;
  v37 = a8;
  v35 = a6;
  v34 = a11;
  v32 = a3;
  v33 = a10;
  v30 = a2;
  v31 = a9;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  v18 = swift_allocObject();
  v19 = *a12;
  v20 = a12[1];
  v21 = *a13;
  sub_1E138853C(a1, &v40);
  if (*(&v41 + 1))
  {
    v22 = v41;
    *(v18 + 104) = v40;
    *(v18 + 120) = v22;
    *(v18 + 136) = v42;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v15 + 8))(v17, v14);
    v38 = v23;
    v39 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v40, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v26 = v32;
  *(v18 + 16) = v30;
  *(v18 + 24) = v26;
  v27 = v36;
  *(v18 + 32) = v35;
  *(v18 + 40) = v27;
  v28 = v31;
  *(v18 + 48) = v37;
  *(v18 + 56) = v28;
  *(v18 + 64) = v33;
  *(v18 + 72) = v34 & 1;
  *(v18 + 80) = v19;
  *(v18 + 88) = v20;
  *(v18 + 96) = v21;
  return v18;
}

uint64_t Banner.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Banner.init(deserializing:using:)(a1, a2);
  return v4;
}

AppStoreKit::Banner::Kind_optional __swiftcall Banner.Kind.init(rawValue:)(Swift::String rawValue)
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

uint64_t Banner.Kind.rawValue.getter()
{
  if (*v0)
  {
    return 0x7975426F546B7361;
  }

  else
  {
    return 0x73776F7242626577;
  }
}

uint64_t sub_1E14FC9B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7975426F546B7361;
  }

  else
  {
    v3 = 0x73776F7242626577;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEE00776569766552;
  }

  if (*a2)
  {
    v5 = 0x7975426F546B7361;
  }

  else
  {
    v5 = 0x73776F7242626577;
  }

  if (*a2)
  {
    v6 = 0xEE00776569766552;
  }

  else
  {
    v6 = 0xEA00000000007265;
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

uint64_t sub_1E14FCA6C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14FCB00()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E14FCB80()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14FCC10@<X0>(char *a1@<X8>)
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

void sub_1E14FCC70(uint64_t *a1@<X8>)
{
  v2 = 0x73776F7242626577;
  if (*v1)
  {
    v2 = 0x7975426F546B7361;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEE00776569766552;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Banner.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Banner.linkableMessage.getter()
{
  v1 = v0[4];
  if (v1 && (v2 = *(v1 + 24)) != 0)
  {
    v3 = *(v1 + 16);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v5 = v0[2];
    v4 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 32) = v3;
    *(inited + 40) = v2;
    *(inited + 48) = v1;
    swift_retain_n();

    v7 = sub_1E159D240(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &qword_1ECEB4E68);
    sub_1E138853C(&v23, v22);
    type metadata accessor for StyledText();
    v8 = swift_allocObject();
    *(v8 + 40) = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
    v9 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
    v10 = sub_1E1AEF91C();
    (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
    v11 = (v8 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
    *v11 = 0;
    v11[1] = 0;
    *(v8 + 16) = v5;
    *(v8 + 24) = v4;
    *(v8 + 32) = 0;
    type metadata accessor for LinkableText();
    swift_allocObject();
    v12 = LinkableText.init(id:styledText:linkedSubstrings:)(v22, v8, v7);
    sub_1E1308058(&v23, &unk_1ECEB5670);
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v14 = v0[2];
    v13 = v0[3];

    v15 = MEMORY[0x1E69E7CC0];
    v16 = sub_1E159D240(MEMORY[0x1E69E7CC0]);
    sub_1E138853C(&v23, v22);
    type metadata accessor for StyledText();
    v17 = swift_allocObject();
    *(v17 + 40) = sub_1E15A0328(v15);
    v18 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
    v19 = sub_1E1AEF91C();
    (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
    v20 = (v17 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
    *v20 = 0;
    v20[1] = 0;
    *(v17 + 16) = v14;
    *(v17 + 24) = v13;
    *(v17 + 32) = 0;
    type metadata accessor for LinkableText();
    swift_allocObject();
    v12 = LinkableText.init(id:styledText:linkedSubstrings:)(v22, v17, v16);
    sub_1E1308058(&v23, &unk_1ECEB5670);
  }

  return v12;
}

void *Banner.leadingArtworkTintColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *Banner.leadingArtworkSymbolConfiguration.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t Banner.hideCriteria.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  a1[1] = v3;
  return sub_1E14FDDEC(v2, v3);
}

uint64_t Banner.init(id:message:focusedMessage:action:buttonActions:leadingArtwork:leadingArtworkTintColor:leadingArtworkSymbolConfiguration:includeBackgroundBorder:hideCriteria:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t *a12, char *a13)
{
  v14 = v13;
  v38 = a7;
  v39 = a8;
  v37 = a6;
  v36 = a11;
  v34 = a3;
  v35 = a10;
  v32 = a2;
  v33 = a9;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v20 = *a12;
  v21 = a12[1];
  v22 = *a13;
  sub_1E138853C(a1, &v42);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v17 + 8))(v19, v16);
    v40 = v23;
    v41 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v42, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v26 = v46;
  *(v14 + 104) = v45;
  *(v14 + 120) = v26;
  *(v14 + 136) = v47;
  v27 = v34;
  *(v14 + 16) = v32;
  *(v14 + 24) = v27;
  v28 = v38;
  *(v14 + 32) = v37;
  *(v14 + 40) = v28;
  v29 = v33;
  *(v14 + 48) = v39;
  *(v14 + 56) = v29;
  *(v14 + 64) = v35;
  *(v14 + 72) = v36 & 1;
  *(v14 + 80) = v20;
  *(v14 + 88) = v21;
  *(v14 + 96) = v22;
  return v14;
}

uint64_t *Banner.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v102 = a2;
  v5 = *v3;
  v96 = v3;
  v94 = v5;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  v100 = v6;
  v101 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v85 - v10;
  v91 = sub_1E1AF5A6C();
  v95 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v98 = &v85 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v85 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v85 - v30;
  v108 = a1;
  sub_1E1AF381C();
  v32 = sub_1E1AF37CC();
  if (v33)
  {
    v103 = v32;
    v104 = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v34 = sub_1E1AEFE7C();
    v35 = v13;
    v37 = v36;
    (*(v35 + 8))(v15, v12);
    v103 = v34;
    v104 = v37;
  }

  sub_1E1AF6F6C();
  v38 = *(v17 + 8);
  v39 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v31, v16);
  v40 = v38;
  v41 = v106;
  v42 = v96;
  *(v96 + 13) = v105;
  *(v42 + 15) = v41;
  v42[17] = v107;
  v43 = v108;
  sub_1E1AF381C();
  v44 = sub_1E1AF37CC();
  v46 = v45;
  v40(v28, v16);
  v47 = v101;
  if (!v46)
  {
    v58 = sub_1E1AF5A7C();
    sub_1E14FDF5C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v59 = 0x6567617373656DLL;
    v60 = v94;
    v59[1] = 0xE700000000000000;
    v59[2] = v60;
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x1E69AB690], v58);
    swift_willThrow();
    v40(v43, v16);
    (*(v47 + 8))(v102, v100);
    sub_1E134B88C((v42 + 13));
    swift_deallocPartialClassInstance();
    return v42;
  }

  v42[2] = v44;
  v42[3] = v46;
  v48 = type metadata accessor for Action();
  v49 = v98;
  sub_1E1AF381C();
  v86 = v48;
  v50 = static Action.tryToMakeInstance(byDeserializing:using:)(v49, v102);
  v40(v49, v16);
  v42[4] = v50;
  sub_1E1AF381C();
  v51 = v90;
  sub_1E1AF374C();
  v93 = v40;
  v94 = v16;
  v40(v23, v16);
  v52 = v95;
  v53 = v91;
  v54 = (*(v95 + 48))(v51, 1, v91);
  v92 = v39;
  if (v54 == 1)
  {
    sub_1E1308058(v51, &qword_1ECEB1F90);
    v55 = MEMORY[0x1E69E7CC0];
    v56 = v101;
    v57 = v102;
LABEL_21:
    v42[5] = v55;
    type metadata accessor for Artwork();
    v72 = v98;
    sub_1E1AF381C();
    v96 = *(v56 + 16);
    v73 = v100;
    (v96)(v97, v57, v100);
    sub_1E14FDF5C(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v42[6] = v105;
    sub_1E1AF381C();
    v74 = JSONObject.appStoreColor.getter();
    v76 = v93;
    v75 = v94;
    v93(v72, v94);
    v42[7] = v74;
    v42[8] = 0;
    v77 = v88;
    sub_1E1AF381C();
    LOBYTE(v74) = sub_1E1AF370C();
    v76(v77, v75);
    *(v42 + 72) = v74 & 1;
    sub_1E1AF381C();
    (v96)(v97, v102, v73);
    v78 = v108;
    sub_1E14FDE00();
    sub_1E1AF464C();
    *(v42 + 5) = v105;
    v79 = v89;
    sub_1E1AF381C();
    sub_1E14FDE54();
    v80 = v99;
    sub_1E1AF36AC();
    if (v80)
    {

      v81 = 2;
    }

    else
    {
      v81 = v105;
    }

    v82 = v78;
    v84 = v93;
    v83 = v94;
    v93(v82, v94);
    v84(v79, v83);
    (*(v101 + 8))(v102, v100);
    *(v42 + 96) = v81;
    return v42;
  }

  v61 = (*(v52 + 32))(v87, v51, v53);
  MEMORY[0x1EEE9AC00](v61);
  v57 = v102;
  *(&v85 - 2) = v86;
  *(&v85 - 1) = v57;
  v62 = v99;
  v63 = sub_1E1AF59FC();
  v64 = v63;
  v99 = v62;
  if (!(v63 >> 62))
  {
    v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v101;
    if (v65)
    {
      goto LABEL_10;
    }

LABEL_20:

    (*(v95 + 8))(v87, v53);
    v55 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v65 = sub_1E1AF71CC();
  v56 = v101;
  if (!v65)
  {
    goto LABEL_20;
  }

LABEL_10:
  *&v105 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C580(0, v65 & ~(v65 >> 63), 0);
  if ((v65 & 0x8000000000000000) == 0)
  {
    v67 = 0;
    v55 = v105;
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1E68FFD80](v67, v64);
      }

      else
      {
        v68 = *(v64 + 8 * v67 + 32);
      }

      *&v105 = v55;
      v70 = *(v55 + 16);
      v69 = *(v55 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1E135C580((v69 > 1), v70 + 1, 1);
        v55 = v105;
      }

      ++v67;
      *(v55 + 16) = v70 + 1;
      v71 = v55 + 16 * v70;
      *(v71 + 32) = v68;
      *(v71 + 40) = 1;
    }

    while (v65 != v67);
    (*(v95 + 8))(v87, v91);

    v42 = v96;
    v56 = v101;
    v57 = v102;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t Banner.deinit()
{

  sub_1E14FDEA8(*(v0 + 80), *(v0 + 88));
  sub_1E134B88C(v0 + 104);
  return v0;
}

uint64_t Banner.__deallocating_deinit()
{
  Banner.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_1E14FDD84@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = Banner.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E14FDDEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1E14FDE00()
{
  result = qword_1ECEB4E70;
  if (!qword_1ECEB4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4E70);
  }

  return result;
}

unint64_t sub_1E14FDE54()
{
  result = qword_1ECEB4E78;
  if (!qword_1ECEB4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4E78);
  }

  return result;
}

uint64_t sub_1E14FDEA8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1E14FDEC0()
{
  result = qword_1ECEB4E80;
  if (!qword_1ECEB4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4E80);
  }

  return result;
}

uint64_t sub_1E14FDF5C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t LegacyAllStateRule.canMove(from:to:)(_OWORD *a1, _OWORD *a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v6 = *v2 + 32;
    v7 = 1;
    do
    {
      sub_1E1300B24(v6, v17);
      if (v7)
      {
        v8 = v18;
        v9 = v19;
        __swift_project_boxed_opaque_existential_1Tm(v17, v18);
        v10 = a1[1];
        v16[0] = *a1;
        v16[1] = v10;
        v11 = a1[3];
        v16[2] = a1[2];
        v16[3] = v11;
        v12 = a2[1];
        v15[0] = *a2;
        v15[1] = v12;
        v13 = a2[3];
        v15[2] = a2[2];
        v15[3] = v13;
        v7 = (*(v9 + 8))(v16, v15, v8, v9);
      }

      else
      {
        v7 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v17);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t LegacyAnyStateRule.canMove(from:to:)(_OWORD *a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = v3 + 32;
    do
    {
      sub_1E1300B24(v8, v18);
      if (v7)
      {
        v7 = 1;
      }

      else
      {
        v9 = v19;
        v10 = v20;
        __swift_project_boxed_opaque_existential_1Tm(v18, v19);
        v11 = a1[1];
        v17[0] = *a1;
        v17[1] = v11;
        v12 = a1[3];
        v17[2] = a1[2];
        v17[3] = v12;
        v13 = a2[1];
        v16[0] = *a2;
        v16[1] = v13;
        v14 = a2[3];
        v16[2] = a2[2];
        v16[3] = v14;
        v7 = (*(v10 + 8))(v17, v16, v9, v10);
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
      v8 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1E14FE250()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B12510;
  *(inited + 32) = 0x656C6261797562;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for LegacyBuyableRules;
  *(inited + 80) = &off_1F5C39440;
  *(inited + 88) = 0x676E6974696177;
  *(inited + 96) = 0xE700000000000000;
  *(inited + 128) = &type metadata for LegacyWaitingRules;
  *(inited + 136) = &off_1F5C39430;
  if (qword_1ECEB1128 != -1)
  {
    swift_once();
  }

  *(inited + 144) = 0x64616F6C6E776F64;
  *(inited + 152) = 0xEB00000000676E69;
  *(inited + 184) = &type metadata for LegacyDownloadingRules;
  *(inited + 192) = &off_1F5C39420;
  *(inited + 200) = 0x646573756170;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 240) = &type metadata for LegacyPausedRules;
  *(inited + 248) = &off_1F5C39410;
  *(inited + 256) = 0x696C6C6174736E69;
  *(inited + 264) = 0xEA0000000000676ELL;
  *(inited + 296) = &type metadata for LegacyInstallingRules;
  *(inited + 304) = &off_1F5C39400;
  *(inited + 312) = 0x656C6C6174736E69;
  *(inited + 320) = 0xE900000000000064;
  *(inited + 352) = &type metadata for LegacyInstalledRules;
  *(inited + 360) = &off_1F5C393F0;
  *(inited + 368) = 0x6573616863727570;
  *(inited + 376) = 0xE900000000000064;
  *(inited + 408) = &type metadata for LegacyPurchasedRules;
  *(inited + 416) = &off_1F5C393E0;
  *(inited + 424) = 0x6C62617461647075;
  *(inited + 432) = 0xE900000000000065;
  *(inited + 464) = &type metadata for LegacyUpdatableRules;
  *(inited + 472) = &off_1F5C393D0;
  strcpy((inited + 480), "downloadable");
  *(inited + 493) = 0;
  *(inited + 494) = -5120;
  *(inited + 520) = &type metadata for LegacyDownloadableRules;
  *(inited + 528) = &off_1F5C393C0;
  sub_1E1380D6C();

  *(inited + 536) = 0x656C62616E65706FLL;
  *(inited + 544) = 0xE800000000000000;
  *(inited + 576) = &type metadata for LegacyOpenableRules;
  *(inited + 584) = &off_1F5C393B0;
  *(inited + 592) = 0x6E776F6E6B6E75;
  *(inited + 600) = 0xE700000000000000;
  *(inited + 632) = &type metadata for LegacyNoneStateRule;
  *(inited + 640) = &protocol witness table for LegacyNoneStateRule;
  v1 = sub_1E15A0764(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6000);
  result = swift_arrayDestroy();
  qword_1ECEB4E88 = v1;
  return result;
}

uint64_t defaultLegacyAppTransitionRules.getter()
{
  if (qword_1ECEB0E18 != -1)
  {
    swift_once();
  }
}

BOOL sub_1E14FE5E0(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 3)
  {
    return 0;
  }

  v2 = a1[6];
  v3 = v2 >> 60;
  if ((v2 >> 60) > 8)
  {
    return 0;
  }

  if (((1 << v3) & 0xB7) != 0)
  {
    return 1;
  }

  if (v3 != 8)
  {
    return 0;
  }

  v5 = *a1;
  v6 = a1[7];
  v7 = a1[2] | a1[1] | a1[3] | a1[4] | a1[5];
  if (!v6 && v2 == 0x8000000000000000 && v5 == 1 && !v7)
  {
    return 1;
  }

  return !v6 && v2 == 0x8000000000000000 && v5 == 4 && !v7;
}

BOOL sub_1E14FE69C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 4)
  {
    return 0;
  }

  v2 = a1[6];
  v3 = v2 >> 60;
  if ((v2 >> 60) < 6 || v3 == 7)
  {
    return 1;
  }

  if (v3 != 8)
  {
    return 0;
  }

  v6 = *a1;
  v7 = a1[7];
  v8 = a1[2] | a1[1] | a1[3] | a1[4] | a1[5];
  if (!v7 && v2 == 0x8000000000000000 && v6 == 1 && !v8)
  {
    return 1;
  }

  return !v7 && v2 == 0x8000000000000000 && v6 == 4 && !v8;
}

BOOL sub_1E14FE748(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 7)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  *&v18 = *a1;
  *(&v18 + 1) = v4;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v13 = 4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = xmmword_1E1B11BA0;
  return (_s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v18, &v13) & 1) != 0 || (v10 >> 60) < 7 || v10 >> 60 == 8 && !v11 && v10 == 0x8000000000000000 && v5 == 1 && !(v6 | v4 | v7 | v8 | v9);
}

BOOL sub_1E14FE840(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4 >> 60 != 8)
  {
    return 0;
  }

  if (v4 != 0x8000000000000000)
  {
    return 0;
  }

  v5 = vorrq_s8(*(a2 + 8), *(a2 + 24));
  if (*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *(a2 + 40) | *(a2 + 56) | *a2)
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v25[0] = *a1;
  v25[1] = v6;
  v25[2] = v9;
  v25[3] = v8;
  v25[4] = v10;
  v25[5] = v11;
  v25[6] = v12;
  v25[7] = v13;
  v25[8] = 4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v14 = v12 >> 60;
  v29 = xmmword_1E1B11BA0;
  if ((v12 >> 60) > 3)
  {
    if (v14 <= 6)
    {
      v18 = v10;
      v19 = v6;
      v20 = v9;
      v21 = v8;
    }

    else if (v14 == 7)
    {
      v15 = v6;
    }

    else
    {
      v22 = v9 | v6;
      v23 = v10 | v11;
      if (v12 != 0x8000000000000000 || v22 | v7 | v8 | v23 | v13)
      {
        v24 = v22 | v8 | v23;
        if ((v13 || v12 != 0x8000000000000000 || v7 != 1 || v24) && (v13 || v12 != 0x8000000000000000 || v7 != 2 || v24) && (v13 || v12 != 0x8000000000000000 || v7 != 3 || v24))
        {
          sub_1E14FF768(v25);
          return 1;
        }
      }
    }

    goto LABEL_15;
  }

  if (v14 > 1)
  {

    goto LABEL_15;
  }

  if (v14)
  {
LABEL_15:
    sub_1E14FF768(v25);
    return 0;
  }

  sub_1E14FF768(v25);
  return (v7 & 0xFE) == 0;
}

uint64_t sub_1E14FEA2C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = a2[6];
  if (v2 >> 60)
  {
    return 0;
  }

  v3 = *a1;
  v4 = *(a1 + 6);
  v6 = *a2;
  v5 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v12 = v4 >> 60;
  if ((v4 >> 60) <= 2)
  {
    if (v12 == 1)
    {
      return (v3 & 1) != 0;
    }

    if (v12 != 2)
    {
      return 0;
    }

LABEL_12:
    *&v19 = *a2;
    *(&v19 + 1) = v5;
    v20 = v8;
    v21 = v7;
    v22 = v10;
    v23 = v9;
    v24 = v2;
    v25 = v11;
    *&v17[0] = 2;
    v18 = 0;
    if (_s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v19, v17))
    {
      return 1;
    }

    goto LABEL_13;
  }

  if ((v12 - 3) < 3)
  {
    return 1;
  }

  if (v12 == 7)
  {
    goto LABEL_12;
  }

  if (v12 != 8)
  {
    return 0;
  }

  v13 = (*(a1 + 1) << 8) | ((*(a1 + 5) | (a1[7] << 16)) << 40) | v3;
  v14 = *(a1 + 2) | *(a1 + 1) | *(a1 + 3) | *(a1 + 4) | *(a1 + 5) | *(a1 + 7);
  if (v4 != 0x8000000000000000 || v14 | v13)
  {
    return v4 == 0x8000000000000000 && !v14 && v13 == 4;
  }

  *&v19 = *a2;
  *(&v19 + 1) = v5;
  v20 = v8;
  v21 = v7;
  v22 = v10;
  v23 = v9;
  v24 = v2;
  v25 = v11;
  v15 = 1;
  *&v17[0] = 1;
  v18 = 0;
  if ((_s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v19, v17) & 1) == 0)
  {
LABEL_13:
    *&v19 = v6;
    *(&v19 + 1) = v5;
    v20 = v8;
    v21 = v7;
    v22 = v10;
    v23 = v9;
    v24 = v2;
    v25 = v11;
    *&v17[0] = 0;
    v18 = 0;
    return (_s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v19, v17) & 1) != 0;
  }

  return v15;
}

BOOL sub_1E14FEBD0(uint64_t *a1, int8x16_t *a2)
{
  v4 = a2[3].u64[0];
  if (v4 >> 60 != 8)
  {
    return 0;
  }

  result = 0;
  if (!a2[3].i64[1] && v4 == 0x8000000000000000 && a2->i64[0] == 1)
  {
    v7 = vorrq_s8(a2[1], a2[2]);
    if (!(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | a2->i64[1]))
    {
      v34 = v2;
      v35 = v3;
      v9 = *a1;
      v8 = a1[1];
      v11 = a1[2];
      v10 = a1[3];
      v12 = a1[4];
      v13 = a1[5];
      v15 = a1[6];
      v14 = a1[7];
      v29[0] = v9;
      v29[1] = v8;
      v29[2] = v11;
      v29[3] = v10;
      v29[4] = v12;
      v29[5] = v13;
      v29[6] = v15;
      v29[7] = v14;
      v29[8] = 4;
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
      v16 = v15 >> 60;
      v33 = xmmword_1E1B11BA0;
      if ((v15 >> 60) <= 3)
      {
        if (v16 > 1)
        {

          goto LABEL_19;
        }

        if (v16)
        {
          sub_1E14FF768(v29);
          return (v9 & 1) != 0;
        }
      }

      else
      {
        if (v16 <= 5)
        {
          v18 = v12;
          v19 = v8;
          v20 = v11;
          v21 = v10;
          goto LABEL_19;
        }

        if (v16 == 6)
        {
          v22 = v12;
          v23 = v8;
          v24 = v11;
          v25 = v10;
        }

        else
        {
          if (v16 == 7)
          {
            v17 = v8;
LABEL_19:
            sub_1E14FF768(v29);
            return 1;
          }

          v26 = v11 | v8;
          v27 = v12 | v13;
          if (v15 != 0x8000000000000000 || v26 | v9 | v10 | v27 | v14)
          {
            v28 = v26 | v10 | v27;
            if ((v14 || v15 != 0x8000000000000000 || v9 != 1 || v28) && (v14 || v15 != 0x8000000000000000 || v9 != 2 || v28) && (v14 || v15 != 0x8000000000000000 || v9 != 3 || v28))
            {
              sub_1E14FF768(v29);
              return 1;
            }
          }
        }
      }

      sub_1E14FF768(v29);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E14FEDD4(__int128 *a1, char *a2)
{
  v2 = a1[1];
  v32 = *a1;
  v33 = v2;
  v3 = a1[3];
  v34 = a1[2];
  v35 = v3;
  v4 = *(a2 + 6);
  if (v4 >> 60 == 1)
  {
    v5 = *a2;
    v7 = *(a2 + 1);
    v6 = a2 + 1;
    v8 = *(v6 + 55);
    v9 = *(v6 + 2);
    v10 = *(v6 + 39);
    v11 = v6[6];
    v12 = a1[1];
    v22[0] = *a1;
    v22[1] = v12;
    v13 = a1[3];
    v22[2] = a1[2];
    v22[3] = v13;
    v23 = v5;
    v26 = v11;
    v25 = v9;
    v24 = v7;
    v27 = *(v6 + 7);
    v28 = *(v6 + 23);
    v29 = v10;
    v30 = v4;
    v31 = v8;
    v14 = v35 >> 60;
    if (!(v35 >> 60))
    {
      if (v32 >= 2u)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v14 != 1)
    {
      if (v14 != 8 || ((v15 = (*(&v32 + 1) << 8) | ((*(&v32 + 5) | (BYTE7(v32) << 16)) << 40) | v32, v16 = v34.i64[1] | *(&v35 + 1) | v34.i64[0], v35 != 0x8000000000000000) || v16 | v33.i64[1] | v33.i64[0] | *(&v32 + 1) | v15) && (v35 != 0x8000000000000000 || v15 != 4 || v16 | v33.i64[1] | v33.i64[0] | *(&v32 + 1)))
      {
LABEL_16:
        sub_1E141CF5C(&v32, v21);
        sub_1E14FF768(v22);
        if ((v5 & 1) == 0)
        {
          return 0;
        }

        v17 = v35 >> 60;
        if ((v35 >> 60) > 8)
        {
          return 0;
        }

        if (((1 << v17) & 0xB7) == 0)
        {
          if (v17 != 8)
          {
            return 0;
          }

          v19 = vorrq_s8(v33, v34);
          v20 = *&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *(&v32 + 1);
          if ((v35 != 0x8000000000000000 || v32 != 1 || v20) && (v35 != 0x8000000000000000 || v32 != 4 || v20))
          {
            return 0;
          }
        }

        return 1;
      }

LABEL_15:
      sub_1E141CF5C(&v32, v21);
      sub_1E14FF768(v22);
      return 1;
    }

    if (v32)
    {
      goto LABEL_16;
    }

    if (v5)
    {
      goto LABEL_15;
    }

    sub_1E141CF5C(&v32, v21);
    sub_1E14FF768(v22);
  }

  return 0;
}

BOOL sub_1E14FEFF0(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 48) >> 60 != 2)
  {
    return 0;
  }

  v31 = v2;
  v32 = v3;
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v26[0] = *a1;
  v26[1] = v4;
  v26[2] = v7;
  v26[3] = v6;
  v26[4] = v8;
  v26[5] = v9;
  v26[6] = v10;
  v26[7] = v11;
  v26[8] = 4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v12 = v10 >> 60;
  v30 = xmmword_1E1B11BA0;
  if ((v10 >> 60) > 3)
  {
    if (v12 <= 5)
    {
      v15 = v8;
      v16 = v4;
      v17 = v7;
      v18 = v6;
      goto LABEL_25;
    }

    if (v12 == 6)
    {
      v19 = v8;
      v20 = v4;
      v21 = v7;
      v22 = v6;
    }

    else
    {
      if (v12 == 7)
      {
        v13 = v4;
LABEL_25:
        sub_1E14FF768(v26);
        return 1;
      }

      v23 = v7 | v4;
      v24 = v8 | v9;
      if (v10 != 0x8000000000000000 || v23 | v5 | v6 | v24 | v11)
      {
        v25 = v23 | v6 | v24;
        if (!v11 && v10 == 0x8000000000000000 && v5 == 1 && !v25)
        {
          goto LABEL_25;
        }

        if ((v11 || v10 != 0x8000000000000000 || v5 != 2 || v25) && (v11 || v10 != 0x8000000000000000 || v5 != 3 || v25))
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_19;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {

      goto LABEL_25;
    }

LABEL_19:
    sub_1E14FF768(v26);
    return 0;
  }

  if (v12)
  {
    goto LABEL_25;
  }

  sub_1E14FF768(v26);
  return (v5 | 2) == 2;
}

BOOL sub_1E14FF1BC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v37 = *a1;
  v38 = v2;
  v3 = a1[3];
  v39 = a1[2];
  v40 = v3;
  v4 = a2[1];
  v41 = *a2;
  v42 = v4;
  v5 = a2[3];
  v43 = a2[2];
  v44 = v5;
  if (v5 >> 60 != 6)
  {
    return 0;
  }

  v6 = a1[1];
  v31[0] = *a1;
  v31[1] = v6;
  v7 = a1[3];
  v31[2] = a1[2];
  v31[3] = v7;
  v33 = 0u;
  v34 = 0u;
  v32 = 4;
  v35 = 0;
  v8 = v40 >> 60;
  v36 = xmmword_1E1B11BA0;
  if ((v40 >> 60) <= 3)
  {
    if (v8 > 1)
    {
    }

    goto LABEL_11;
  }

  if (v8 <= 5)
  {
    v11 = a1[1];
    v23 = *a1;
    v24 = v11;
    v12 = a1[3];
    v25 = a1[2];
    *(&v26 + 1) = *(&v12 + 1);
    *&v26 = v12 & 0xFFFFFFFFFFFFFFFLL;
    sub_1E14FF7D0(&v23, v20);
    goto LABEL_11;
  }

  if (v8 != 6)
  {
    if (v8 == 7)
    {
      v9 = *(&v37 + 1);
    }

    else
    {
      v17 = v39 | *(&v38 + 1);
      if (v40 != 0x8000000000000000 || *(&v37 + 1) | v37 | *(&v40 + 1) | *(&v39 + 1) | v17 | v38)
      {
        v18 = *(&v39 + 1) | *(&v37 + 1) | v17 | v38;
        if ((v40 != 0x8000000000000000 || v37 != 1 || v18) && (v40 != 0x8000000000000000 || v37 != 2 || v18) && (v40 != 0x8000000000000000 || v37 != 3 || v18))
        {
          v13 = v31;
          goto LABEL_12;
        }
      }
    }

LABEL_11:
    sub_1E14FF768(v31);
    v23 = v41;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    sub_1E141CF5C(&v37, v20);
    sub_1E141CF5C(&v41, v20);
    v13 = &v23;
LABEL_12:
    sub_1E14FF768(v13);
    return 1;
  }

  v14 = a1[1];
  v20[0] = *a1;
  v20[1] = v14;
  v15 = a1[3];
  v20[2] = a1[2];
  v22 = *(&v15 + 1);
  v21 = v15 & 0xFFFFFFFFFFFFFFFLL;
  sub_1E14FF7D0(v20, &v23);
  sub_1E14FF768(v31);
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v16 = *&v41;
  sub_1E141CF5C(&v37, v19);
  sub_1E141CF5C(&v41, v19);
  sub_1E14FF768(&v23);
  return *v20 < v16;
}