void sub_1E1985D8C(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBAA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;

    *(inited + 32) = [a4 accountID];
    *(inited + 40) = a1;
    sub_1E159E56C(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &qword_1ECEBBAB0);
LABEL_3:
    sub_1E1AF586C();

    return;
  }

  if (!a2)
  {
    sub_1E159E56C(MEMORY[0x1E69E7CC0]);
    goto LABEL_3;
  }

  v8 = a2;
  sub_1E1AF584C();
}

id sub_1E1985EC8(uint64_t a1)
{
  v2 = PurchaseHistory.defaultPurchaseQuery.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B06D70;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1E13006E4(0, &qword_1EE1E31F0);
  v4 = sub_1E1AF620C();

  [v2 setStoreIDs_];

  return v2;
}

void sub_1E1985FB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a3;
  v13[4] = a4;
  v15[4] = sub_1E1986BD0;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1E1306F24;
  v15[3] = &block_descriptor_71;
  v14 = _Block_copy(v15);

  [v12 setHidden:a1 & 1 forStoreItemID:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void sub_1E19860F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 sharedInstance];
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  v11[4] = sub_1E1986BCC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1306F24;
  v11[3] = &block_descriptor_64_0;
  v10 = _Block_copy(v11);

  [v8 showAllWithCompletionHandler_];
  _Block_release(v10);
}

void sub_1E1986210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v15[4] = sub_1E1986BC4;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1E1306F24;
  v15[3] = &block_descriptor_57_2;
  v14 = _Block_copy(v15);

  [v12 updateForAccountID:a1 withContext:a2 withCompletionHandler:v14];
  _Block_release(v14);
}

void sub_1E1986350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedInstance];
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v13[4] = sub_1E1986BC0;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E1306F24;
  v13[3] = &block_descriptor_50_0;
  v12 = _Block_copy(v13);

  [v10 updateWithContext:a1 withCompletionHandler:v12];
  _Block_release(v12);
}

void sub_1E1986498(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, uint64_t a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v17)
  {
    if (!v9)
    {
      v18 = i;
      while (1)
      {
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v17 >= v10)
        {
          sub_1E1337ECC();

          return;
        }

        v16 = *(v6 + 8 * v17);
        ++v18;
        if (v16)
        {
          v37 = a4;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_1E1AF757C();
      __break(1u);
      goto LABEL_34;
    }

    v37 = a4;
    v16 = v9;
    v17 = i;
LABEL_15:
    v19 = (v17 << 9) | (8 * __clz(__rbit64(v16)));
    v20 = *(*(a1 + 56) + v19);
    v42 = *(*(a1 + 48) + v19);
    v43 = v20;

    a2(&v40, &v42);

    v22 = v40;
    v21 = v41;
    v44 = v41;
    v23 = *a5;
    v25 = sub_1E15A47C8(v40);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_31;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (v37)
    {
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1E141B554();
      if (v29)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    v12 = *a5;
    *(*a5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    *(v12[6] + 8 * v25) = v22;
    *(v12[7] + 8 * v25) = v21;
    v13 = v12[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_32;
    }

    v12[2] = v15;
LABEL_7:
    v9 = (v16 - 1) & v16;
    a4 = 1;
  }

  sub_1E1693268(v28, v37 & 1);
  v30 = sub_1E15A47C8(v22);
  if ((v29 & 1) != (v31 & 1))
  {
    goto LABEL_33;
  }

  v25 = v30;
  if ((v29 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v32 = *a5;
  v39 = *(*(*a5 + 56) + 8 * v25);

  sub_1E1985A74(&v39, &v44, &v42);
  if (!v35)
  {

    *(v32[7] + 8 * v25) = v42;

    goto LABEL_7;
  }

  v39 = v35;
  v33 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1E1337ECC();

    return;
  }

LABEL_34:
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD00000000000001BLL, 0x80000001E1B5E120);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](39, 0xE100000000000000);
  sub_1E1AF71FC();
  __break(1u);
}

uint64_t sub_1E19868A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E19868EC()
{
  v1 = *(v0 + 16);
  sub_1E159E56C(MEMORY[0x1E69E7CC0]);
  v1();
}

uint64_t objectdestroy_33Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_73Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_85Tm_0()
{

  return swift_deallocObject();
}

uint64_t GameCenterAchievementsAction.bundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28GameCenterAchievementsAction_bundleId);

  return v1;
}

uint64_t GameCenterAchievementsAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v59 = a2;
  v3 = v2;
  v52 = *v3;
  v5 = sub_1E1AF39DC();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_1E1AF5A6C();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v55 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v61 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v23 = v22;
  v24 = v20;
  v25 = *(v13 + 8);
  v25(v24, v12);
  if (v23)
  {
    v48 = v21;
    v52 = v3;
    v26 = v25;
    v27 = v61;
    sub_1E1AF381C();
    sub_1E1AF374C();
    v49 = v12;
    v50 = v26;
    v26(v18, v12);
    v29 = v53;
    v28 = v54;
    if ((*(v53 + 48))(v9, 1, v54) == 1)
    {
      sub_1E1308058(v9, &qword_1ECEB1F90);
      v30 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v34 = v51;
      (*(v29 + 32))(v51, v9, v28);
      v35 = v60;
      v30 = sub_1E1AF59FC();
      v60 = v35;
      (*(v29 + 8))(v34, v28);
    }

    v31 = v52;
    v36 = v57;
    *(v52 + OBJC_IVAR____TtC11AppStoreKit28GameCenterAchievementsAction_achievementIdsToHighlight) = v30;
    v37 = (v31 + OBJC_IVAR____TtC11AppStoreKit28GameCenterAchievementsAction_bundleId);
    *v37 = v48;
    v37[1] = v23;
    v38 = v55;
    v39 = v27;
    v40 = v49;
    (*(v13 + 16))(v55, v39, v49);
    v41 = v56;
    v43 = v58;
    v42 = v59;
    (*(v36 + 16))(v56, v59, v58);
    v44 = v60;
    v45 = Action.init(deserializing:using:)(v38, v41);
    if (!v44)
    {
      v31 = v45;
    }

    (*(v36 + 8))(v42, v43);
    v50(v61, v40);
  }

  else
  {
    v31 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v32 = 0x6449656C646E7562;
    v33 = v52;
    v32[1] = 0xE800000000000000;
    v32[2] = v33;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v31);
    swift_willThrow();
    (*(v57 + 8))(v59, v58);
    v25(v61, v12);
    swift_deallocPartialClassInstance();
  }

  return v31;
}

char *GameCenterAchievementsAction.__allocating_init(bundleID:achievementIdsToHighlight:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = &v12[OBJC_IVAR____TtC11AppStoreKit28GameCenterAchievementsAction_bundleId];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC11AppStoreKit28GameCenterAchievementsAction_achievementIdsToHighlight] = a3;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v12[v14], a4, v15);
  v17 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
  v19 = &v12[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v12[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v30, &v27);
  if (*(&v28 + 1))
  {
    v21 = v28;
    *v20 = v27;
    *(v20 + 1) = v21;
    *(v20 + 4) = v29;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v26[1] = v22;
    v26[2] = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v27, &unk_1ECEB5670);
  }

  (*(v16 + 8))(a4, v15);
  sub_1E1308058(v30, &unk_1ECEB5670);
  *(v12 + 2) = 0xD00000000000001FLL;
  *(v12 + 3) = 0x80000001E1B810F0;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  return v12;
}

void *GameCenterAchievementsAction.init(bundleID:achievementIdsToHighlight:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v5 + OBJC_IVAR____TtC11AppStoreKit28GameCenterAchievementsAction_bundleId);
  *v20 = a1;
  v20[1] = a2;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit28GameCenterAchievementsAction_achievementIdsToHighlight) = a3;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  (*(v17 + 16))(v19, a4, v16);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v5 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_1E138853C(v40, &v34);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v30 + 8))(v12, v31);
    v32 = v23;
    v33 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v34, &unk_1ECEB5670);
  }

  (*(v17 + 8))(a4, v16);
  sub_1E1308058(v40, &unk_1ECEB5670);
  v26 = v5 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v26 + 4) = v39;
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v5[2] = 0xD00000000000001FLL;
  v5[3] = 0x80000001E1B810F0;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t sub_1E19878F0()
{
}

uint64_t GameCenterAchievementsAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t GameCenterAchievementsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterAchievementsAction()
{
  result = qword_1EE1E9CB8;
  if (!qword_1EE1E9CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareSheetGenericMetadata.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetGenericMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ShareSheetGenericMetadata.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v31 = *v3;
  v33 = sub_1E1AF39DC();
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v35 = a1;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v3[2] = v14;
    v3[3] = v16;
    v18 = v35;
    sub_1E1AF381C();
    v19 = sub_1E1AF37CC();
    v21 = v20;
    v30 = v17;
    v17(v11, v7);
    v3[4] = v19;
    v3[5] = v21;
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v22 = *(v5 + 16);
    v31 = v7;
    v24 = v33;
    v23 = v34;
    v22(v32, v34, v33);
    sub_1E13ECC08(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    (*(v5 + 8))(v23, v24);
    v30(v18, v31);
    v3[6] = v36;
  }

  else
  {
    v25 = sub_1E1AF5A7C();
    sub_1E13ECC08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v26 = 1954047348;
    v27 = v31;
    v26[1] = 0xE400000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    (*(v5 + 8))(v34, v33);
    v17(v35, v7);
    type metadata accessor for ShareSheetGenericMetadata();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *ShareSheetGenericMetadata.__allocating_init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ShareSheetGenericMetadata.init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ShareSheetGenericMetadata.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetGenericMetadata.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetGenericMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetGenericMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_1E1988228@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetGenericMetadata();
  v7 = swift_allocObject();
  result = ShareSheetGenericMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E198830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1E1301CF0(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1E13E44F8(v13);
}

id NSAttributedString.baseWritingDirection(forCharacterAt:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E1B03760;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1E13C2F48();
    v8 = MEMORY[0x1E69E6530];
    v9 = MEMORY[0x1E69E65A8];
    *(v6 + 32) = 0xD000000000000025;
    *(v6 + 40) = 0x80000001E1B811E0;
    *(v6 + 96) = v8;
    *(v6 + 104) = v9;
    *(v6 + 64) = v7;
    *(v6 + 72) = a1;
    v10 = [v1 length];
    *(v6 + 136) = v8;
    *(v6 + 144) = v9;
    *(v6 + 112) = v10;
    sub_1E1AF5E3C();
    v11 = *MEMORY[0x1E695DA20];
    v12 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    v13 = sub_1E1AF5DBC();

    v4 = [v12 initWithName:v11 reason:v13 userInfo:0];

    [v4 raise];
    v5 = 0;
  }

  else
  {
    v3 = [v1 paragraphStyleAtIndex:a1 effectiveRange:0];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 baseWritingDirection];
  }

  return v5;
}

uint64_t NSAttributedString.baseWritingDirectionForCharacterAtIndex(_:unknownStyle:)(uint64_t a1, _BYTE *a2)
{
  result = NSAttributedString.baseWritingDirection(forCharacterAt:)(a1);
  if (a2)
  {
    *a2 = v4 & 1;
  }

  if (v4)
  {
    return -1;
  }

  return result;
}

uint64_t sub_1E19885AC(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1;
  v7 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a3);
  if (a4)
  {
    *a4 = v8 & 1;
  }

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

Swift::String __swiftcall NSAttributedString.convertedWritingDirectionToBidiControlCharacters()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  if (qword_1ECEB1618 != -1)
  {
    swift_once();
  }

  [v1 performSelector_];
  v2 = [v1 string];
  v3 = sub_1E1AF5DFC();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()()
{
  if (qword_1ECEB1618 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECEBBAC0;
  v2 = v0;

  [v2 performSelector_];
}

void sub_1E1988748()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v1 = sub_1E1AF5DBC();
  v2 = [v0 initWithString_];

  qword_1ECEBBAB8 = v2;
}

id static NSAttributedString.empty.getter()
{
  if (qword_1ECEB1610 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECEBBAB8;

  return v1;
}

id sub_1E1988804()
{
  if (qword_1ECEB1610 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECEBBAB8;

  return v1;
}

uint64_t NSAttributedString.paragraphStyle(at:effectiveRange:)(uint64_t a1, uint64_t a2)
{
  if ([v2 attribute:*MEMORY[0x1E69DB688] atIndex:a1 effectiveRange:a2])
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1E13006E4(0, &qword_1EE1E3458);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E13E44F8(v7);
    return 0;
  }
}

id sub_1E198898C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = NSAttributedString.paragraphStyle(at:effectiveRange:)(a3, a4);

  return v7;
}

uint64_t NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(uint64_t a1)
{
  if ([v1 length] <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E1B03760;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1E13C2F48();
    v12 = MEMORY[0x1E69E6530];
    v13 = MEMORY[0x1E69E65A8];
    *(v10 + 32) = 0xD000000000000032;
    *(v10 + 40) = 0x80000001E1B81210;
    *(v10 + 96) = v12;
    *(v10 + 104) = v13;
    *(v10 + 64) = v11;
    *(v10 + 72) = a1;
    v14 = [v1 length];
    *(v10 + 136) = v12;
    *(v10 + 144) = v13;
    *(v10 + 112) = v14;
    sub_1E1AF5E3C();
    v15 = *MEMORY[0x1E695DA20];
    v16 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    v17 = sub_1E1AF5DBC();

    v18 = [v16 initWithName:v15 reason:v17 userInfo:0];

    [v18 raise];
    return 0;
  }

  v20 = 0;
  v21 = 1;
  v3 = *MEMORY[0x1E69DB688];
  v4 = swift_allocObject();
  *(v4 + 16) = &v20;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E1988E58;
  *(v5 + 24) = v4;
  v19[4] = sub_1E1988E60;
  v19[5] = v5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1E198830C;
  v19[3] = &block_descriptor_91;
  v6 = _Block_copy(v19);

  [v1 enumerateAttribute:v3 inRange:0 options:a1 usingBlock:{2, v6}];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v20;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_1E1988CC4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  sub_1E13BFF54(a1, v8);
  if (v9)
  {
    sub_1E13006E4(0, &qword_1EE1E3458);
    if (swift_dynamicCast())
    {
      if ([v7 baseWritingDirection] == 1 || !objc_msgSend(v7, sel_baseWritingDirection))
      {
        *a5 = [v7 baseWritingDirection];
        *(a5 + 8) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_1E13E44F8(v8);
  }
}

uint64_t NSAttributedString.strongBaseWritingDirectionOfParagraphAtOrBeforeIndex(_:)(uint64_t a1)
{
  result = NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(a1);
  if (v2)
  {
    return -1;
  }

  return result;
}

uint64_t sub_1E1988DBC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(a3);
  v7 = v6;

  if (v7)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void sub_1E1988E08()
{
  v0 = sub_1E1AF5DBC();
  v1 = NSSelectorFromString(v0);

  qword_1ECEBBAC0 = v1;
}

Swift::Void __swiftcall NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(Swift::OpaquePointer at, Swift::OpaquePointer paragraphRanges)
{
  v3 = *(at._rawValue + 2);
  if (v3)
  {
    v5 = (at._rawValue + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1E1988EF0(&v7, v2, paragraphRanges._rawValue);
      --v3;
    }

    while (v3);
  }
}

void sub_1E1988EF0(uint64_t *a1, void *a2, unint64_t a3)
{
  v5 = *a1;
  v6 = sub_1E1AF5DBC();
  [a2 replaceCharactersInRange:v5 withString:{1, v6}];

  if (a3 >> 62)
  {
LABEL_25:
    v7 = sub_1E1AF71CC();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E68FFD80](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    v10 = v9;
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [v9 directionalRangeValue];
    if (v5 >= v17)
    {
      if (__OFSUB__(v5, v17))
      {
        goto LABEL_24;
      }

      if (v5 - v17 < v18)
      {
        break;
      }
    }

    if (v11 == v7)
    {
      return;
    }
  }

  [v10 directionalRangeValue];
  v12 = [a2 paragraphStyleAtIndex:v17 effectiveRange:0];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  [v12 paragraphSpacing];
  if (v14 == 0.0)
  {

LABEL_19:
    return;
  }

  [v13 mutableCopy];
  sub_1E1AF6EBC();
  swift_unknownObjectRelease();
  sub_1E13006E4(0, &qword_1EE1E3380);
  if (swift_dynamicCast())
  {
    [v19 setParagraphSpacing_];
    v15 = *MEMORY[0x1E69DB688];
    v16 = v19;
    [a2 addAttribute:v15 value:v16 range:{v17, v18}];

    goto LABEL_19;
  }
}

Swift::Void __swiftcall NSMutableString.convertLineSeparatorsIntoLineFeeds(at:)(Swift::OpaquePointer at)
{
  v2 = *(at._rawValue + 2);
  if (v2)
  {
    v3 = (at._rawValue + 32);
    do
    {
      v4 = *v3++;
      v5 = sub_1E1AF5DBC();
      [v1 replaceCharactersInRange:v4 withString:{1, v5}];

      --v2;
    }

    while (v2);
  }
}

id NSParagraphStyle.withBaseWritingDirection(_:)(uint64_t a1)
{
  [v1 mutableCopy];
  sub_1E1AF6EBC();
  swift_unknownObjectRelease();
  sub_1E13006E4(0, &qword_1EE1E3380);
  swift_dynamicCast();
  [v4 setBaseWritingDirection_];
  [v4 copy];
  sub_1E1AF6EBC();

  swift_unknownObjectRelease();
  sub_1E13006E4(0, &qword_1EE1E3458);
  swift_dynamicCast();
  return v4;
}

id sub_1E19892E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NSParagraphStyle.withBaseWritingDirection(_:)(a3);

  return v5;
}

uint64_t UIUserInterfaceLayoutDirection.textAlignment(whenLeftToRight:rightToLeft:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return a2;
  }

  return result;
}

id sub_1E1989338(void *a1, uint64_t a2, uint64_t a3, id a4, id a5, void *a6)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    return [a5 paragraphStyleWithBaseWritingDirection_];
  }

  v19[0] = 0;
  v19[1] = 0;
  v11 = [a1 paragraphStyleAtIndex:a2 effectiveRange:v19];
  if (!v11)
  {
    return a6;
  }

  v12 = v11;
  v14 = sub_1E1AF6D3C();
  result = v12;
  if ((v15 & 1) != 0 || v14 != a2 || v13 != a3)
  {
    goto LABEL_11;
  }

  if ([v12 baseWritingDirection] == a4)
  {
    return v12;
  }

  result = v12;
  if (a4 != -1 || (v18 = [v12 baseWritingDirection], result = v12, v18 == -1))
  {
LABEL_11:
    v16 = result;
    v17 = [result paragraphStyleWithBaseWritingDirection_];

    return v17;
  }

  return result;
}

void sub_1E19894A0(id a1@<X0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, unint64_t a5@<X8>)
{
  if (a1)
  {
    v9 = [a1 mutableString];
  }

  else
  {
    if (!a2)
    {
      if (qword_1EE1EBB80 != -1)
      {
        goto LABEL_325;
      }

      goto LABEL_296;
    }

    v9 = a2;
  }

  v10 = v9;
  v11 = [v9 length];
  if (v11 < 1)
  {
    if (qword_1EE1EBB80 != -1)
    {
LABEL_314:
      swift_once();
    }

    v80 = qword_1EE1EBB88;

    goto LABEL_297;
  }

  v12 = v11;
  v88 = a3;
  v97 = a5;
  a5 = MEMORY[0x1E69E7CC0];
  v92 = a1;
  v13 = a1 == 0;
  v96 = v10;
  sub_1E198BB0C(v96, 0, v12, &v124);
  v14 = sub_1E1AEF2DC();
  v15 = sub_1E1AEF2DC();
  v111 = 0;
  v112 = 0;
  v104 = 0;
  v99 = 0;
  v100 = 0;
  v16 = 0;
  v115 = 0;
  v116 = 0;
  v119 = 0;
  v101 = 0;
  v17 = 0;
  v122 = a5;
  v123 = a5;
  v91 = *MEMORY[0x1E69DB778];
  v102 = a4;
  v89 = v13 | a4;
  v87 = *MEMORY[0x1E69DB688];
  v118 = v14;
  v110 = v14;
  v120 = v14;
  v106 = a5;
  v18 = a5;
  v98 = a5;
  v103 = a5;
LABEL_7:
  v93 = 0;
  v19 = 0;
  v94 = 0;
  v95 = 0;
  v20 = 0;
  v90 = v16;
  v105 = v16;
  while (2)
  {
    v107 = v19;
    v108 = v15;
    v109 = v17;
    v113 = 0;
    v21 = 0;
    v117 = -1;
    while (1)
    {
      while (1)
      {
        if (v16 < 0 || (v10 = v125, v16 >= v125))
        {
          v10 = 0;
LABEL_16:
          v23 = 1;
          v24 = __OFADD__(v16++, 1);
          if (v24)
          {
            goto LABEL_300;
          }

          goto LABEL_17;
        }

        if (*(&v125 + 1))
        {
          if (__OFADD__(v16, *(&v124 + 1)))
          {
            goto LABEL_302;
          }

          LOWORD(v22) = *(*(&v125 + 1) + 2 * (v16 + *(&v124 + 1)));
        }

        else if (v126)
        {
          if (__OFADD__(v16, *(&v124 + 1)))
          {
            goto LABEL_304;
          }

          LODWORD(v22) = *(v126 + v16 + *(&v124 + 1));
          if ((v22 & 0x80000000) != 0)
          {
            goto LABEL_305;
          }
        }

        else
        {
          if (v16 >= *(&v127 + 1) || (a5 = v127, v16 < v127))
          {
            if (v16 >= 4)
            {
              a5 = v16 - 4;
            }

            else
            {
              a5 = 0;
            }

            *&v127 = a5;
            v46 = a5 + 2048;
            if (__OFADD__(a5, 2048))
            {
              goto LABEL_312;
            }

            if (v125 < v46)
            {
              v46 = v125;
            }

            *(&v127 + 1) = v46;
            if (__OFADD__(*(&v124 + 1), a5))
            {
              goto LABEL_313;
            }

            v128.length = v46 - a5;
            v22 = *(&v126 + 1);
            v128.location = *(&v124 + 1) + a5;
            CFStringGetCharacters(v124, v128, *(&v126 + 1));
          }

          else
          {
            v22 = *(&v126 + 1);
          }

          if (!v22)
          {
            goto LABEL_337;
          }

          if (__OFSUB__(v16, a5))
          {
            goto LABEL_307;
          }

          LOWORD(v22) = *(v22 + 2 * (v16 - a5));
        }

        if (((v22 + 9216) >> 10) < 0x3Fu)
        {
          if (((v22 + 0x2000) >> 11) >= 0x1Fu)
          {
            goto LABEL_157;
          }

          v10 = v22;
          goto LABEL_16;
        }

        if (v16 >= (v10 - 1) || (v10 = &v124, v47 = sub_1E198BA0C(v16 + 1), ((v47 + 0x2000) >> 10) < 0x3Fu))
        {
LABEL_157:
          LODWORD(v27) = 0;
          ++v16;
          v43 = 1;
          v37 = 1;
          v44 = 1;
          v23 = 1;
          goto LABEL_202;
        }

        v10 = ((v22 + 10240) << 10) + (v47 + 9216) + 0x10000;
        v23 = 2;
        v24 = __OFADD__(v16, 2);
        v16 += 2;
        if (v24)
        {
          goto LABEL_300;
        }

LABEL_17:
        v25 = AMPGetBidiClass(v10);
        v26 = v25;
        LODWORD(v27) = 0;
        if (v25 > 10)
        {
          if (v25 > 12)
          {
            if (v25 == 13)
            {
              goto LABEL_176;
            }

            if (v25 == 14)
            {
              if (v10 > 0x7F)
              {
                v59 = (v10 & 0x3F) << 8;
                if (v10 >= 0x800)
                {
                  v60 = (v59 | (v10 >> 6) & 0x3F) << 8;
                  v61 = (((v60 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
                  v29 = (v10 >> 12) + v60 + 8487393;
                  if (WORD1(v10))
                  {
                    v29 = v61;
                  }
                }

                else
                {
                  v29 = (v10 >> 6) + v59 + 33217;
                }
              }

              else
              {
                v29 = v10 + 1;
              }

              *&v121[0] = (v29 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v29) >> 3))));
              v30 = sub_1E1AF5EFC();
              v32 = sub_1E161E5D8(v30, v31);
              if ((v32 & 0x100000000) != 0)
              {
                goto LABEL_336;
              }

              v33 = v32;

              if ((v33 - 14) > 0xFFFFFFFB || (v33 - 8232) < 2 || v33 == 133)
              {
LABEL_40:
                if (v10 == 8232)
                {
                  v10 = v16 - v23;
                  if (__OFSUB__(v16, v23))
                  {
                    goto LABEL_303;
                  }

                  v34 = v112;
                  if (!v112)
                  {
                    v34 = MEMORY[0x1E69E7CC0];
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v34 = sub_1E172CD18(0, *(v34 + 2) + 1, 1, v34);
                  }

                  a5 = *(v34 + 2);
                  v35 = *(v34 + 3);
                  v112 = v34;
                  if (a5 >= v35 >> 1)
                  {
                    v112 = sub_1E172CD18((v35 > 1), a5 + 1, 1, v34);
                  }

                  *(v112 + 2) = a5 + 1;
                  *&v112[8 * a5 + 32] = v10;
                  LODWORD(v27) = 1;
                }

                else
                {
                  LODWORD(v27) = 1;
                  if (v12 > v16 && v10 == 13)
                  {
                    v10 = &v124;
                    v42 = sub_1E198BA0C(v16);
                    if (((v42 + 9216) >> 10) > 0x3Eu)
                    {
                      if (__OFSUB__(v125, 1))
                      {
                        goto LABEL_311;
                      }

                      if (v16 < v125 - 1)
                      {
                        sub_1E198BA0C(v16 + 1);
                      }
                    }

                    else if (v42 == 10)
                    {
                      ++v23;
                      ++v16;
                      LODWORD(v27) = 1;
                      goto LABEL_176;
                    }

                    LODWORD(v27) = 1;
                  }
                }
              }

              else
              {
                LODWORD(v27) = 0;
              }

LABEL_176:
              v43 = 1;
LABEL_177:
              v37 = 1;
              v44 = 1;
              goto LABEL_202;
            }

LABEL_61:
            v37 = 0;
            goto LABEL_97;
          }

          if (v25 != 11)
          {
            goto LABEL_40;
          }

          v27 = *(v18 + 2);
          if (!v27)
          {
            goto LABEL_96;
          }

          if ((*&v18[4 * v27 + 28] - 8294) > 2)
          {
            goto LABEL_85;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v38 = *(v18 + 2);
            if (!v38)
            {
              goto LABEL_310;
            }
          }

          else
          {
            v18 = sub_1E14E6918(v18);
            v38 = *(v18 + 2);
            if (!v38)
            {
              goto LABEL_310;
            }
          }

          goto LABEL_74;
        }

        if (v25 != 8)
        {
          if (v25 != 9)
          {
            if (v25 != 10)
            {
              goto LABEL_61;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_1E172CC14(0, *(v18 + 2) + 1, 1, v18);
            }

            a5 = *(v18 + 2);
            v28 = *(v18 + 3);
            if (a5 >= v28 >> 1)
            {
              v18 = sub_1E172CC14((v28 > 1), a5 + 1, 1, v18);
            }

            *(v18 + 2) = a5 + 1;
            *&v18[4 * a5 + 32] = v10;
            switch(v10)
            {
              case 0x2068:
                v116 = 0;
                v119 = 0;
                LOBYTE(v27) = v115 ^ 1;
                v115 = 1;
                break;
              case 0x2067:
                v115 = 0;
                v119 = 0;
                LOBYTE(v27) = v116 ^ 1;
                v116 = 1;
                break;
              case 0x2066:
                v115 = 0;
                v116 = 0;
                LOBYTE(v27) = v119 ^ 1;
                v119 = 1;
                break;
              default:
LABEL_85:
                LOBYTE(v27) = 0;
                break;
            }

            goto LABEL_96;
          }

          v27 = *(v18 + 2);
          if (!v27)
          {
            goto LABEL_96;
          }

          v39 = *&v18[4 * v27 + 28] - 8234;
          if (v39 > 4 || v39 == 2)
          {
            goto LABEL_85;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v38 = *(v18 + 2);
            if (!v38)
            {
              goto LABEL_306;
            }
          }

          else
          {
            v18 = sub_1E14E6918(v18);
            v38 = *(v18 + 2);
            if (!v38)
            {
              goto LABEL_306;
            }
          }

LABEL_74:
          *(v18 + 2) = v38 - 1;
          if (v38 != 1)
          {
            LOBYTE(v27) = 0;
            v37 = 1;
            v41 = (*&v18[4 * v38 + 24] - 8234);
            if (v41 > 0x3E)
            {
              goto LABEL_97;
            }

            if (((1 << v41) & 0x1000000000000009) != 0)
            {
              goto LABEL_88;
            }

            if (((1 << v41) & 0x2000000000000012) != 0)
            {
              goto LABEL_89;
            }

            if (v41 == 62)
            {
              v116 = 0;
              v119 = 0;
              LOBYTE(v27) = v115 ^ 1;
              v115 = 1;
            }

            goto LABEL_97;
          }

          LOBYTE(v27) = 1;
LABEL_96:
          v37 = 1;
          goto LABEL_97;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1E172CC14(0, *(v18 + 2) + 1, 1, v18);
        }

        a5 = *(v18 + 2);
        v36 = *(v18 + 3);
        if (a5 >= v36 >> 1)
        {
          v18 = sub_1E172CC14((v36 > 1), a5 + 1, 1, v18);
        }

        LOBYTE(v27) = 0;
        *(v18 + 2) = a5 + 1;
        *&v18[4 * a5 + 32] = v10;
        v37 = 1;
        if (v10 > 8236)
        {
          if (v10 != 8238)
          {
            if (v10 != 8237)
            {
              goto LABEL_97;
            }

LABEL_88:
            v115 = 0;
            v116 = 0;
            LOBYTE(v27) = v119 ^ 1;
            v119 = 1;
            goto LABEL_97;
          }

LABEL_89:
          v115 = 0;
          v119 = 0;
          LOBYTE(v27) = v116 ^ 1;
          v116 = 1;
          goto LABEL_97;
        }

        if (v10 == 8234)
        {
          goto LABEL_88;
        }

        if (v10 == 8235)
        {
          goto LABEL_89;
        }

LABEL_97:
        v24 = __OFADD__(v21, v23);
        v21 += v23;
        if (v24)
        {
          goto LABEL_301;
        }

        if ((*(v18 + 2) != 0) | v27 & 1)
        {
          if (v119)
          {
            LODWORD(v27) = 0;
            v43 = 0;
            v113 = v117 != 0;
            v119 = 1;
            v44 = v37;
            v117 = 0;
            goto LABEL_202;
          }

          if (v116)
          {
            v119 = 0;
            LODWORD(v27) = 0;
            v43 = 0;
            v113 = v117 != 1;
            v116 = 1;
            v117 = 1;
          }

          else
          {
            if ((v115 & 1) == 0)
            {
              v115 = 0;
              v116 = 0;
              v119 = 0;
              goto LABEL_200;
            }

            v119 = 0;
            LODWORD(v27) = 0;
            v43 = 0;
            v113 = v117 != -1;
            v116 = 0;
            v117 = -1;
            v115 = 1;
          }

          goto LABEL_201;
        }

        LODWORD(v27) = 0;
        v44 = 1;
        if (v26 > 6)
        {
          if (v26 > 9)
          {
            if ((v26 - 15) < 2)
            {
LABEL_120:
              v43 = 0;
              v37 = 1;
              goto LABEL_202;
            }

            if (v26 != 10 && v26 != 11)
            {
              goto LABEL_338;
            }
          }

          else if (v26 == 7)
          {
            if (sub_1E1AEF2DC() == v118)
            {
              if (sub_1E1AEF2DC() != v120)
              {
                v24 = __OFADD__(v111, v23);
                v111 += v23;
                if (v24)
                {
                  goto LABEL_327;
                }
              }
            }

            else
            {
              v24 = __OFADD__(v109, v23);
              v109 += v23;
              if (v24)
              {
                goto LABEL_316;
              }
            }
          }

          goto LABEL_200;
        }

        if (v26 <= 2)
        {
          switch(v26)
          {
            case 0:
              goto LABEL_120;
            case 1:
              if (v117 == -1)
              {
                v117 = 0;
                LODWORD(v27) = 0;
                v43 = 0;
                goto LABEL_177;
              }

              LODWORD(v27) = 0;
              v43 = 0;
              v45 = v117 == 0;
              break;
            case 2:
              if (v117 == -1)
              {
                LODWORD(v27) = 0;
                v43 = 0;
                v117 = 1;
                goto LABEL_177;
              }

              LODWORD(v27) = 0;
              v43 = 0;
              v45 = v117 == 1;
              break;
            default:
              goto LABEL_338;
          }

          v48 = !v45;
          v113 |= v48;
          goto LABEL_177;
        }

        if ((v26 - 3) >= 2)
        {
          if (v26 == 5)
          {
            if (sub_1E1AEF2DC() == v118)
            {
              if (sub_1E1AEF2DC() != v120)
              {
                LODWORD(v27) = 0;
                v43 = 0;
                v44 = 1;
                goto LABEL_202;
              }

              v120 = v16 - v23;
              if (__OFSUB__(v16, v23))
              {
                goto LABEL_329;
              }

              v24 = __OFADD__(v111, v23);
              v111 += v23;
              if (v24)
              {
                goto LABEL_332;
              }
            }

            else
            {
              v24 = __OFADD__(v109, v23);
              v109 += v23;
              if (v24)
              {
                goto LABEL_319;
              }
            }
          }

          else
          {
            if (v26 != 6)
            {
              goto LABEL_338;
            }

            if (sub_1E1AEF2DC() == v118)
            {
              if (sub_1E1AEF2DC() == v120)
              {
                v120 = v16 - v23;
                if (__OFSUB__(v16, v23))
                {
                  goto LABEL_328;
                }

                v24 = __OFADD__(v111, v23);
                v111 += v23;
                if (v24)
                {
                  goto LABEL_331;
                }
              }

              else
              {
                v24 = __OFADD__(v111, v23);
                v111 += v23;
                if (v24)
                {
                  goto LABEL_330;
                }
              }
            }

            else
            {
              v24 = __OFADD__(v109, v23);
              v109 += v23;
              if (v24)
              {
                goto LABEL_321;
              }
            }
          }

LABEL_200:
          LODWORD(v27) = 0;
          v43 = 0;
LABEL_201:
          v44 = v37;
          goto LABEL_202;
        }

        if (sub_1E1AEF2DC() == v118)
        {
          if (sub_1E1AEF2DC() != v120)
          {
            v109 = v111 + v23;
            if (__OFADD__(v111, v23))
            {
              goto LABEL_320;
            }

            v44 = 1;
            v118 = v120;
            goto LABEL_183;
          }

          v118 = v16 - v23;
          if (__OFSUB__(v16, v23))
          {
            goto LABEL_322;
          }
        }

        v44 = v37;
LABEL_183:
        v49 = v109 + v23;
        if (__OFADD__(v109, v23))
        {
          goto LABEL_308;
        }

        v109 += v23;
        v50 = v49 + v118;
        v108 = v50 - 1;
        if (__OFSUB__(v50, 1))
        {
          goto LABEL_309;
        }

        if (v117 == -1)
        {
          LODWORD(v27) = 0;
          v43 = 0;
          v51 = 1;
          if (v26 != 4)
          {
            v51 = -1;
          }

          v117 = v51;
        }

        else
        {
          LODWORD(v27) = 0;
          v43 = 0;
        }

LABEL_202:
        v24 = __OFADD__(v20, v23);
        v20 += v23;
        if (v24)
        {
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
          goto LABEL_314;
        }

        a5 = v16 == v12;
        if (v16 == v12)
        {
          v44 = 1;
          v52 = 1;
        }

        else
        {
          v52 = v27;
        }

        v53 = v16 == v12 ? 1 : v43;
        v54 = v16 == v12 ? 1 : v37;
        if (v44 != 1)
        {
          break;
        }

        if (sub_1E1AEF2DC() == v120)
        {
          LODWORD(v27) = v52;
          v43 = v53;
          v37 = v54;
          break;
        }

        if (v54)
        {
          v111 = 0;
          v120 = v110;
          goto LABEL_219;
        }

        v111 = 0;
        v120 = v110;
        if (v53)
        {
          a5 = 0;
          v120 = v110;
          goto LABEL_245;
        }
      }

      v52 = v27;
      v53 = v43;
      if (!v37)
      {
        goto LABEL_220;
      }

LABEL_219:
      if (sub_1E1AEF2DC() == v118)
      {
LABEL_220:
        if (v53)
        {
          goto LABEL_245;
        }

        goto LABEL_221;
      }

      if (__OFSUB__(v118 + v109, 1))
      {
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      if (v108 < v118 + v109 - 1)
      {
        v55 = v108 - v118;
        if (__OFSUB__(v108, v118))
        {
          goto LABEL_323;
        }

        v109 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_324;
        }
      }

      if (v102)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1E172CC00(0, *(v106 + 2) + 1, 1, v106);
        }

        v57 = *(v106 + 2);
        v56 = *(v106 + 3);
        if (v57 >= v56 >> 1)
        {
          v106 = sub_1E172CC00((v56 > 1), v57 + 1, 1, v106);
        }

        *(v106 + 2) = v57 + 1;
        v58 = &v106[16 * v57];
        *(v58 + 4) = v118;
        *(v58 + 5) = v109;
      }

      v108 = sub_1E1AEF2DC();
      if (v53)
      {
        break;
      }

      v109 = 0;
      v118 = v110;
LABEL_221:
      if (v16 == v12)
      {
        goto LABEL_290;
      }
    }

    v109 = 0;
    v118 = v110;
LABEL_245:
    if (v117 == 1)
    {
      v62 = __CFADD__(v94++, 1);
      if (!v62)
      {
        goto LABEL_251;
      }

      goto LABEL_317;
    }

    if (v117)
    {
      if (v21 < 1)
      {
        goto LABEL_263;
      }

      v62 = __CFADD__(v107++, 1);
      if (v62)
      {
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        sub_1E1AF6FEC();

        v86 = sub_1E1AF742C();
        MEMORY[0x1E68FECA0](v86);

        sub_1E1AF71FC();
        __break(1u);
        return;
      }

LABEL_255:
      if (v102)
      {
        v63 = [objc_opt_self() valueWithRange:v105 direction:v21 hasMixedDirectionality:{v117, v113 & 1}];
        MEMORY[0x1E68FEF20]();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();

        v103 = v123;
      }

      if (v113)
      {
        if (v92)
        {
          v64 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          v114 = v92;
          v65 = [v64 initWithInteger_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
          v66 = swift_allocObject();
          *(v66 + 16) = xmmword_1E1B06D70;
          *(v66 + 32) = v65;
          sub_1E1380D6C();
          v67 = v65;
          v68 = sub_1E1AF620C();

          [v114 addAttribute:v91 value:v68 range:{v105, v21}];
        }

        v104 = 1;
        v93 = 1;
      }

LABEL_263:
      v15 = v108;
      v17 = v109;
      v19 = v107;
      if (!v52)
      {
        v105 = v16;
        if ((a5 & 1) == 0)
        {
          continue;
        }

LABEL_290:

        if (*(&v126 + 1))
        {
          MEMORY[0x1E6901640](*(&v126 + 1), -1, -1);
        }

        *(&v126 + 1) = 0;
        v79 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
        v80 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v99, v101, v100);

        v121[0] = v124;
        v121[1] = v125;
        v121[2] = v126;
        v121[3] = v127;
        sub_1E198A8E4(v121);
        a5 = v97;
        v81 = v98;
        v82 = v112;
        v83 = v104;
        v84 = v106;
        v85 = v103;
        goto LABEL_298;
      }

      if (__CFADD__(v101, v95))
      {
        goto LABEL_333;
      }

      if (__CFADD__(v100, v94))
      {
        goto LABEL_334;
      }

      v100 += v94;
      v101 += v95;
      v62 = __CFADD__(v99, v107);
      v99 = &v107[v99];
      if (v62)
      {
        goto LABEL_335;
      }

      v69 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
      v70 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v107, v95, v94);
      v71 = v70;
      if (v70[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough])
      {
        v72 = 1;
      }

      else
      {
        v72 = v70[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] - 1;
      }

      if ((v89 & 1) == 0)
      {
        goto LABEL_277;
      }

      v73 = [objc_opt_self() valueWithRange:v90 direction:v20 hasMixedDirectionality:{v72, v93 & 1}];
      MEMORY[0x1E68FEF20]();
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();

      v98 = v122;
      if (!v92)
      {
      }

      else
      {
LABEL_277:
        if (v72 == -1)
        {
          v74 = &qword_1EE216520;
          if (qword_1EE1E6A48 != -1)
          {
            swift_once();
            v74 = &qword_1EE216520;
          }
        }

        else if (v72 == 1)
        {
          v74 = &qword_1ECEF4D50;
          if (qword_1ECEB1640 != -1)
          {
            swift_once();
            v74 = &qword_1ECEF4D50;
          }
        }

        else
        {
          v74 = &qword_1EE216560;
          if (qword_1EE1E7600 != -1)
          {
            swift_once();
            v74 = &qword_1EE216560;
          }
        }

        v75 = *v74;
        v76 = sub_1E1989338(v92, v90, v20, v72, v88, v75);
        v78 = v77;

        if (v78)
        {
          [v92 addAttribute:v87 value:v76 range:{v90, v20}];
        }

        else
        {
        }
      }

      v15 = v108;
      v17 = v109;
      if (a5)
      {
        goto LABEL_290;
      }

      goto LABEL_7;
    }

    break;
  }

  v62 = __CFADD__(v95++, 1);
  if (!v62)
  {
LABEL_251:
    if (v21 < 1)
    {
      goto LABEL_263;
    }

    goto LABEL_255;
  }

LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  swift_once();
LABEL_296:
  v80 = qword_1EE1EBB88;
LABEL_297:
  v83 = 0;
  v82 = 0;
  v84 = MEMORY[0x1E69E7CC0];
  v85 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
LABEL_298:
  *a5 = v84;
  *(a5 + 8) = v85;
  *(a5 + 16) = v81;
  *(a5 + 24) = v80;
  *(a5 + 32) = v83 & 1;
  *(a5 + 40) = v82;
}

uint64_t sub_1E198A984()
{
  result = sub_1E1AF742C();
  qword_1ECEBBAC8 = result;
  unk_1ECEBBAD0 = v1;
  return result;
}

uint64_t sub_1E198A9D4()
{
  result = sub_1E1AF742C();
  qword_1ECEBBAD8 = result;
  unk_1ECEBBAE0 = v1;
  return result;
}

char *WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(char *result, uint64_t a2, unint64_t a3)
{
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_natural] = result;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight] = a2;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft] = a3;
  v4 = &result[a2];
  if (__CFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(v4, a3);
  v6 = &v4[a3];
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_total] = v6;
  v7 = result != 0;
  if (!a3)
  {
    if (a2)
    {
      ++v7;
    }

    *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_significantValues] = v7;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] = a2 != 0;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = 0;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = 0;
    goto LABEL_12;
  }

  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_significantValues] = v8 + v7;
  v3[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] = 1;
  if (!__CFADD__(a3, a2))
  {
    v9 = a3 / (a3 + a2);
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = v9 >= 0.4;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = v9 >= 0.15;
LABEL_12:
    v10.receiver = v3;
    v10.super_class = type metadata accessor for WritingDirectionsCounts();
    return objc_msgSendSuper2(&v10, sel_init);
  }

LABEL_15:
  __break(1u);
  return result;
}

char *WritingDirectionsCounts.__allocating_init(summing:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  if (!v1)
  {
LABEL_10:

    v13 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v3, v2);
  }

  v5 = (a1 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_3;
    }

    result = [v6 writingDirectionsQuantities];
    v9 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
    v10 = __CFADD__(v4, v9);
    v4 += v9;
    if (v10)
    {
      break;
    }

    v11 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
    v10 = __CFADD__(v3, v11);
    v3 += v11;
    if (v10)
    {
      goto LABEL_12;
    }

    v12 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

    v10 = __CFADD__(v2, v12);
    v2 += v12;
    if (v10)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_3:
    if (!--v1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void WritingDirectionsCounts.__allocating_init(counting:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_14:
    v4 = 0;
    v3 = 0;
    v2 = 0;
LABEL_15:

    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v2, v3, v4);
    return;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (a1 + 32);
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = [v7 writingDirectionsQuantities];
    if (v9[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough])
    {
      break;
    }

    v10 = v9[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts];

    if (v10 == 1)
    {
      v6 = __CFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = __CFADD__(v2++, 1);
      if (v6)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

LABEL_4:
    if (!--v1)
    {
      goto LABEL_15;
    }
  }

  v6 = __CFADD__(v4++, 1);
  if (!v6)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

BOOL sub_1E198AEBC(uint64_t a1)
{
  sub_1E13BFF54(a1, v6);
  if (v7)
  {
    type metadata accessor for WritingDirectionsCounts();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_natural) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_natural] && *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight])
      {
        v2 = *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
        v3 = *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_1E13E44F8(v6);
  }

  return 0;
}

char *+ infix(_:_:)(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1E198B14C()
{
  v0 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
  result = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(0, 0, 0);
  qword_1EE1EBB88 = result;
  return result;
}

id static WritingDirectionsCounts.zero.getter()
{
  if (qword_1EE1EBB80 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1EBB88;

  return v1;
}

uint64_t sub_1E198B2AC()
{
  strcpy(v16, "Natural: ");
  WORD1(v16[1]) = 0;
  HIDWORD(v16[1]) = -385875968;
  v1 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v1);

  MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
  v2 = v16[0];
  v3 = v16[1];
  strcpy(v16, "{ Counts: { ");
  MEMORY[0x1E68FECA0](v2, v3);

  sub_1E1AF6FEC();

  v4 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v4);

  MEMORY[0x1E68FECA0](8236, 0xE200000000000000);

  MEMORY[0x1E68FECA0](0x2D6F742D7466654CLL, 0xEF203A7468676972);

  v5 = v16[0];
  sub_1E1AF6FEC();

  v6 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v6);

  MEMORY[0x1E68FECA0](32, 0xE100000000000000);

  MEMORY[0x1E68FECA0](0x6F742D7468676952, 0xEF203A7466656C2DLL);

  MEMORY[0x1E68FECA0](2108541, 0xE300000000000000);

  sub_1E1AF6FEC();

  v16[0] = 0x45204C5452207349;
  v16[1] = 0xEF28206867756F6ELL;
  if (qword_1ECEB1620 != -1)
  {
    swift_once();
  }

  v7 = qword_1ECEBBAC8;
  v8 = unk_1ECEBBAD0;

  MEMORY[0x1E68FECA0](v7, v8);

  MEMORY[0x1E68FECA0](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E68FECA0](v9, v10);

  MEMORY[0x1E68FECA0](8236, 0xE200000000000000);

  MEMORY[0x1E68FECA0](v16[0], v16[1]);

  sub_1E1AF6FEC();

  v16[0] = 0xD000000000000010;
  v16[1] = 0x80000001E1B81380;
  if (qword_1ECEB1628 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECEBBAD8;
  v12 = unk_1ECEBBAE0;

  MEMORY[0x1E68FECA0](v11, v12);

  MEMORY[0x1E68FECA0](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1E68FECA0](v13, v14);

  MEMORY[0x1E68FECA0](32, 0xE100000000000000);

  MEMORY[0x1E68FECA0](v16[0], v16[1]);

  MEMORY[0x1E68FECA0](125, 0xE100000000000000);

  return v5;
}

id WritingDirectionsCounts.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WritingDirectionsCounts.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WritingDirectionsCounts();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void += infix(_:_:)(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v5 = (v3 + v4);
  if (__CFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v8 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v9 = v7 + v8;
  if (__CFADD__(v7, v8))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

  v12 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v13 = v11 + v12;
  if (!__CFADD__(v11, v12))
  {
    v14 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    *a1 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v5, v9, v13);
    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_1E198B934(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t sub_1E198BA0C(int64_t result)
{
  if (result < 0)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (v2 <= result)
  {
    return 0;
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 8);
    v5 = __OFADD__(result, v4);
    v6 = result + v4;
    if (!v5)
    {
      return *(v3 + 2 * v6);
    }

    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v1 + 32);
  if (!v7)
  {
LABEL_12:
    if (*(v1 + 56) <= result || (v9 = *(v1 + 48), v9 > result))
    {
      if (result >= 4)
      {
        v9 = result - 4;
      }

      else
      {
        v9 = 0;
      }

      *(v1 + 48) = v9;
      if (__OFADD__(v9, 2048))
      {
        goto LABEL_28;
      }

      if (v2 >= v9 + 2048)
      {
        v2 = v9 + 2048;
      }

      *(v1 + 56) = v2;
      v10 = *(v1 + 8);
      if (__OFADD__(v10, v9))
      {
        goto LABEL_29;
      }

      v11 = result;
      v13.length = v2 - v9;
      v13.location = v10 + v9;
      CFStringGetCharacters(*v1, v13, *(v1 + 40));
      result = v11;
    }

    v12 = *(v1 + 40);
    if (!v12)
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (!__OFSUB__(result, v9))
    {
      return *(v12 + 2 * (result - v9));
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v1 + 8);
  v5 = __OFADD__(result, v8);
  v2 = result + v8;
  if (v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = *(v7 + v2);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  return result;
}

const char *sub_1E198BB0C@<X0>(const __CFString *a1@<X0>, const __CFString *a2@<X1>, int64_t a3@<X2>, const __CFString **a4@<X8>)
{
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    result = 0;
    v10 = 0;
LABEL_8:
    *a4 = a1;
    a4[1] = a2;
    a4[2] = a3;
    a4[3] = CharactersPtr;
    a4[4] = result;
    a4[5] = v10;
    a4[6] = 0;
    a4[7] = 0;
    return result;
  }

  v11 = sub_1E1AEFB3C();
  result = CFStringGetCStringPtr(a1, v11);
  if (result)
  {
    v10 = 0;
LABEL_7:
    CharactersPtr = 0;
    goto LABEL_8;
  }

  if (a3 >= 0xC000000000000000)
  {
    v10 = swift_slowAlloc();
    result = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E198BBC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E198BC0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if (!a2)
  {
    v9 = [v3 layoutManagers];
    sub_1E13006E4(0, &qword_1ECEBBB28);
    v10 = sub_1E1AF621C();
    v11 = v10;
    if (v10 >> 62)
    {
      goto LABEL_24;
    }

    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v7 = a2;
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  for (i = v4; ; i = v5)
  {
    v18 = v5;
    v19 = v4;
    [v7 ensureLayoutForTextContainer_];
    v31 = i;

    v20 = [v3 fullRange];
    v32 = [v7 glyphRangeForCharacterRange:v20 actualCharacterRange:{v21, 0}];
    v23 = v22;
    v4 = swift_allocObject();
    v4[2] = 0;
    v5 = swift_allocObject();
    v5[2] = sub_1E1AEF2DC();
    v24 = v5 + 2;
    v5[3] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 1;
    v26 = swift_allocObject();
    v26[2] = v4;
    v26[3] = a1;
    v26[4] = v5;
    v26[5] = v7;
    v26[6] = v25;
    aBlock[4] = sub_1E198C210;
    v34 = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E198C240;
    aBlock[3] = &block_descriptor_92;
    v3 = _Block_copy(aBlock);
    v9 = v34;
    v27 = v7;

    [v27 enumerateLineFragmentsForGlyphRange:v32 usingBlock:{v23, v3}];
    _Block_release(v3);
    if (a1 == -1)
    {
      swift_beginAccess();
      if ((*(v25 + 32) & 1) == 0)
      {
        v28 = [v27 characterRangeForGlyphRange:*(v25 + 16) actualGlyphRange:{*(v25 + 24), 0}];
        v3 = v29;
        swift_beginAccess();
        v5[2] = v28;
        v5[3] = v3;
      }
    }

    v11 = sub_1E1AEF2DC();
    swift_beginAccess();
    if (v11 == *v24)
    {

      return;
    }

    v30 = v5[3] + *v24;
    if (!__OFSUB__(v30, 1))
    {
      NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)(v30 - 1);

      return;
    }

    __break(1u);
LABEL_24:
    if (!sub_1E1AF71CC())
    {
LABEL_25:

      __break(1u);
      goto LABEL_26;
    }

LABEL_6:

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_26:
    v12 = MEMORY[0x1E68FFD80](0, v11);
LABEL_9:
    v7 = v12;

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = v5;
    v14 = [v7 textContainers];
    sub_1E13006E4(0, &unk_1ECEBBB30);
    v15 = sub_1E1AF621C();
    v16 = v15;
    if (v15 >> 62)
    {
      if (!sub_1E1AF71CC())
      {
LABEL_28:

        __break(1u);
LABEL_29:
        v17 = MEMORY[0x1E68FFD80](0, v16);
        goto LABEL_15;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v17 = *(v16 + 32);
LABEL_15:
    v5 = v17;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1E198C0F0(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v28.size.height = a8;
  v28.size.width = a7;
  v28.origin.y = a6;
  v28.origin.x = a5;
  if (CGRectGetHeight(v28) != 0.0)
  {
    swift_beginAccess();
    v24 = *(a13 + 16);
    if (v24 == a14)
    {
      v25 = [a16 characterRangeForGlyphRange:a10 actualGlyphRange:{a11, 0}];
      v27 = v26;
      swift_beginAccess();
      *(a15 + 16) = v25;
      *(a15 + 24) = v27;
      *a12 = 1;
    }

    else
    {
      swift_beginAccess();
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      else
      {
        *(a13 + 16) = v24 + 1;
        swift_beginAccess();
        *(a17 + 16) = a10;
        *(a17 + 24) = a11;
        *(a17 + 32) = 0;
      }
    }
  }
}

void sub_1E198C240(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1E198C32C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a1;
  NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(a3, a4, a5);
  v13 = v12;

  return v13;
}

id sub_1E198C3F4()
{
  v1 = OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E198C4A8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id LanguageAwareTextStorage.__allocating_init(_:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage] = a1;
  v5 = a1;
  v6 = [v5 delegate];
  *&v4[OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate] = v6;
  swift_beginAccess();
  v7 = byte_1ECEBBB89;
  objc_allocWithZone(type metadata accessor for LanguageAwareString());
  v8 = v5;
  v9 = sub_1E1991650(v8, v7);

  *&v4[OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString] = v9;
  v12.receiver = v4;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v8 setDelegate_];

  return v10;
}

id LanguageAwareTextStorage.init(_:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___AMPLanguageAwareTextStorage_textStorage] = a1;
  v3 = a1;
  v4 = [v3 delegate];
  *&v2[OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate] = v4;
  swift_beginAccess();
  v5 = byte_1ECEBBB89;
  objc_allocWithZone(type metadata accessor for LanguageAwareString());
  v6 = v3;
  v7 = sub_1E1991650(v6, v5);

  *&v2[OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString] = v7;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for LanguageAwareTextStorage();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [v6 setDelegate_];

  return v8;
}

id sub_1E198C74C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate);
  if (v6)
  {
    v11 = result;
    result = [v6 respondsToSelector_];
    if (result)
    {

      return [v6 textStorage:v11 willProcessEditing:a2 range:a3 changeInLength:{a4, a5}];
    }
  }

  return result;
}

void sub_1E198C8BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = a2;
  if ((a2 & 2) != 0)
  {
    swift_beginAccess();
    v12 = byte_1ECEBBB89;
    objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v13 = a1;
    v14 = sub_1E1991650(v13, v12);

    v15 = *(v6 + OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString);
    *(v6 + OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString) = v14;

    v10 |= 1uLL;
  }

  v16 = *(v6 + OBJC_IVAR___AMPLanguageAwareTextStorage_originalTextStorageDelegate);
  if (v16)
  {
    if ([v16 respondsToSelector_])
    {
      [v16 textStorage:a1 didProcessEditing:v10 range:a3 changeInLength:{a4, a5}];
    }
  }
}

uint64_t sub_1E198CA94(uint64_t a1, void *a2, void *a3, char a4, double a5)
{
  v11 = *(v5 + OBJC_IVAR___AMPLanguageAwareTextStorage_languageAwareString);
  sub_1E198FE40(a1, a2, a3, a4, a5);
  v13 = v12;

  return v13;
}

id LanguageAwareTextStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageAwareTextStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareTextStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E198CEA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaterialView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E198CF54()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit12MaterialView_saturateFilter;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v2 = OBJC_IVAR____TtC11AppStoreKit12MaterialView_blurFilter;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_1E1AF71FC();
  __break(1u);
}

unint64_t sub_1E198D01C()
{
  result = qword_1ECEBBB80;
  if (!qword_1ECEBBB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEBBB80);
  }

  return result;
}

uint64_t LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v12 = (*(ObjectType + 504))(a1, a2, a3, a4 & 1, byte_1ECEBBB89);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1E1990A0C(a1, a2, a3);

  return v8;
}

id sub_1E198D200()
{
  v1 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  }

  else
  {
    v4 = sub_1E198D2E4(*(v0 + OBJC_IVAR___AMPLanguageAwareString_baseAttributedString), *(v0 + OBJC_IVAR___AMPLanguageAwareString_paragraphs), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E198D2D0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = a1;
}

id sub_1E198D2E4(void *a1, unint64_t a2, uint64_t a3, id a4)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    v8 = a2 >> 62;
    if (a2 >> 62)
    {
      if (sub_1E1AF71CC() != 1 || !sub_1E1AF71CC())
      {
        goto LABEL_15;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_15;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      for (i = *(a2 + 32); ; i = MEMORY[0x1E68FFD80](0, a2))
      {
        v10 = i;
        [i directionalRangeValue];

        v11 = MEMORY[0x1E68FED30](a3, a4);
        if (!v31 && v32 == v11)
        {
          v12 = sub_1E1990DC0(v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E1B02CC0;
          v14 = *MEMORY[0x1E69DB688];
          *(inited + 32) = *MEMORY[0x1E69DB688];
          *(inited + 64) = sub_1E13006E4(0, &qword_1EE1E3458);
          *(inited + 40) = v12;
          v15 = v12;
          v16 = v14;
          sub_1E159D27C(inited);
          swift_setDeallocating();
          sub_1E16FAC1C(inited + 32);
          v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v18 = sub_1E1AF5DBC();
          type metadata accessor for Key(0);
          sub_1E16FAC84();
          v19 = sub_1E1AF5C6C();

          v20 = [v17 initWithString:v18 attributes:v19];

          return v20;
        }

LABEL_15:
        v21 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v22 = sub_1E1AF5DBC();
        a4 = [v21 initWithString_];

        if (v8)
        {
          a3 = sub_1E1AF71CC();
          if (!a3)
          {
LABEL_35:
            v29 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

            return v29;
          }
        }

        else
        {
          a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a3)
          {
            goto LABEL_35;
          }
        }

        v23 = 0;
        v8 = a2 & 0xFFFFFFFFFFFFFF8;
        v24 = *MEMORY[0x1E69DB688];
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x1E68FFD80](v23, a2);
          }

          else
          {
            if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v26 = *(a2 + 8 * v23 + 32);
          }

          v27 = v26;
          v28 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          [v26 directionalRangeValue];
          if (v33 == -1)
          {
            v25 = &qword_1EE216520;
            if (qword_1EE1E6A48 != -1)
            {
              swift_once();
              v25 = &qword_1EE216520;
            }
          }

          else if (v33 == 1)
          {
            v25 = &qword_1ECEF4D50;
            if (qword_1ECEB1640 != -1)
            {
              swift_once();
              v25 = &qword_1ECEF4D50;
            }
          }

          else
          {
            if (v33)
            {
              goto LABEL_40;
            }

            v25 = &qword_1EE216560;
            if (qword_1EE1E7600 != -1)
            {
              swift_once();
              v25 = &qword_1EE216560;
            }
          }

          [a4 addAttribute:v24 value:*v25 range:?];

          ++v23;
          if (v28 == a3)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }
    }

    __break(1u);
LABEL_40:
    sub_1E1AF6FEC();

    v30 = sub_1E1AF742C();
    MEMORY[0x1E68FECA0](v30);

    result = sub_1E1AF71FC();
    __break(1u);
  }

  return result;
}

void (*sub_1E198D7FC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E198D200();
  return sub_1E198D844;
}

void sub_1E198D844(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = v2;
}

uint64_t LanguageAwareString.string.getter()
{
  v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);

  return v1;
}

void sub_1E198D9A4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = a1;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1E1990F50(a1, a2, a3, a4, a5);

  return v12;
}

void (*sub_1E198DA28(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E198D93C();
  return sub_1E198DA70;
}

void sub_1E198DA70(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = v2;
}

id sub_1E198DAEC(uint64_t *a1, uint64_t (*a2)(void, unint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_1E13B8AA4();
    v8 = v2;
    v9 = a2(MEMORY[0x1E69E6158], v7);
    v11 = v10;
    swift_beginAccess();
    v12 = byte_1ECEBBB88;
    swift_beginAccess();
    v13 = byte_1ECEBBB89;
    v14 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v15 = sub_1E1990F50(v9, v11, 0, v12, v13);
    v16 = *(v8 + v3);
    *(v8 + v3) = v15;
    v5 = v15;

    v4 = 0;
  }

  v17 = v4;
  return v5;
}

void sub_1E198DC44(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = a1;
}

void (*sub_1E198DC58(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E198DACC();
  return sub_1E198DCA0;
}

void sub_1E198DCA0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = v2;
}

id sub_1E198DCFC()
{
  v1 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  }

  else
  {
    sub_1E13B8AA4();
    v4 = v0;
    v5 = sub_1E1AF6E2C();
    v7 = v6;
    swift_beginAccess();
    v8 = byte_1ECEBBB88;
    swift_beginAccess();
    v9 = byte_1ECEBBB89;
    v10 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v11 = sub_1E1990F50(v5, v7, 0, v8, v9);
    v12 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_1E198DE94(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = a1;
}

void (*sub_1E198DEA8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E198DCFC();
  return sub_1E198DEF0;
}

void sub_1E198DEF0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = v2;
}

id sub_1E198DF4C()
{
  v1 = sub_1E1AEF4AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  v6 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
    v21 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);
    v22 = v8;

    sub_1E1AEF46C();
    sub_1E13B8AA4();
    v9 = v0;
    v10 = sub_1E1AF6E0C();
    v12 = v11;
    (*(v2 + 8))(v4, v1);

    swift_beginAccess();
    v13 = byte_1ECEBBB88;
    swift_beginAccess();
    v14 = byte_1ECEBBB89;
    v15 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v16 = sub_1E1990F50(v10, v12, 0, v13, v14);
    v17 = *(v9 + v5);
    *(v9 + v5) = v16;
    v7 = v16;

    v6 = 0;
  }

  v18 = v6;
  return v7;
}

void sub_1E198E154(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = a1;
}

void (*sub_1E198E168(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E198DF4C();
  return sub_1E198E1B0;
}

void sub_1E198E1B0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = v2;
}

id sub_1E198E248()
{
  sub_1E13006E4(0, &qword_1EE1E32A0);

  v0 = sub_1E1AF620C();

  return v0;
}

uint64_t sub_1E198E328()
{
  v1 = v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange + 16) != 1)
  {
    return *v1;
  }

  v2 = sub_1E198E538();
  result = 0;
  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_1E198E390(uint64_t result, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = 0;
  return result;
}

__n128 (*sub_1E198E3A8(uint64_t *a1))(__n128 *a1)
{
  a1[2] = v1;
  *a1 = sub_1E198E328();
  a1[1] = v3;
  return sub_1E198E3F0;
}

__n128 sub_1E198E3F0(__n128 *a1)
{
  v1 = a1[1].n128_u64[0] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  result = *a1;
  *v1 = *a1;
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_1E198E438()
{
  LODWORD(v1) = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty);
  if (v1 == 2)
  {
    v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
    if ((v2 & 0x2000000000000000) != 0)
    {
      v1 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string) & 0xFFFFFFFFFFFFLL;
    }

    LOBYTE(v1) = v1 == 0;
    *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty) = v1;
  }

  return v1 & 1;
}

uint64_t (*sub_1E198E4A0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E198E438() & 1;
  return sub_1E198E4EC;
}

uint64_t sub_1E198E570(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_1E198E588(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_1E198E538();
  return sub_1E198E5D0;
}

void *sub_1E198E5D0(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

unint64_t sub_1E198E610()
{
  v1 = (v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count);
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);
  v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);
  }

  v5 = 7;
  if (((v3 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  result = sub_1E19906F0(0xFuLL, v5 | (v4 << 16), v2, v3);
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_1E198E6B0(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_1E198E6C8(unint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_1E198E610();
  return sub_1E198E710;
}

void *sub_1E198E710(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_1E198E780(void *a1, uint64_t (*a2)(void, void))
{
  v3 = (v2 + *a1);
  if (v3[8] != 1)
  {
    return *v3;
  }

  result = a2(*(v2 + OBJC_IVAR___AMPLanguageAwareString_string), *(v2 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
  *v3 = result;
  v3[8] = 0;
  return result;
}

uint64_t sub_1E198E7F4(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_1E198E80C(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_1E198E760();
  return sub_1E198E854;
}

void *sub_1E198E854(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t static LanguageAwareString.alwaysGenerateAttributedString.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECEBBB88 = a1;
  return result;
}

uint64_t static LanguageAwareString.keepStatisticsOnLanguageComponents.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECEBBB89 = a1;
  return result;
}

uint64_t static LanguageAwareString.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_1EE1DCDF0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E198ECFC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  qword_1EE1DCDF0 = v1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_1E198ED60()
{
  swift_beginAccess();
  v0 = byte_1ECEBBB88;
  swift_beginAccess();
  v1 = byte_1ECEBBB89;
  v2 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  result = sub_1E1990F50(0, 0xE000000000000000, 0, v0, v1);
  qword_1ECEBBB90 = result;
  return result;
}

id static LanguageAwareString.empty.getter()
{
  if (qword_1ECEB1638 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECEBBB90;

  return v1;
}

id LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, char a3)
{
  v5 = sub_1E1990A0C(a1, a2, a3);

  return v5;
}

id LanguageAwareString.__allocating_init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1E1991948(a1, a2, a3, a4, a5);

  return v12;
}

id LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = sub_1E1991948(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v9 = (*(ObjectType + 504))(a1, a2, a3, a4 & 1, byte_1ECEBBB89);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

id LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v6 = sub_1E1990F50(a1, a2, a3, a4, a5);

  return v6;
}

id LanguageAwareString.__allocating_init(_:attributes:keepStatisticsOnLanguageComponents:)(void *a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1E1991D5C(a1, a2, a3);

  return v8;
}

id LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(void *a1, uint64_t a2, char a3)
{
  v4 = sub_1E1991D5C(a1, a2, a3);

  return v4;
}

char *LanguageAwareString.init(from:)(void *a1)
{
  v3 = v1;
  v4 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  v5 = OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage;
  *&v1[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  v6 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  v7 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  v73 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  v75 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v8 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v9 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v12 = 0;
  v12[8] = 1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E1AF769C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v79, v80);
    v13 = sub_1E1AF74BC();
    v16 = v15;
    v17 = v13;
    __swift_destroy_boxed_opaque_existential_1(v79);
    swift_beginAccess();
    v18 = qword_1EE1DCDF0;
    if (qword_1EE1DCDF0)
    {
      swift_unknownObjectRetain();
      v19 = sub_1E1AF5DBC();
      v20 = [v18 preprocessForLanguageAwarenessString_];

      v76 = sub_1E1AF5DFC();
      v22 = v21;

      swift_unknownObjectRelease();

      v16 = v22;
    }

    else
    {
      v76 = v17;
    }

    swift_beginAccess();
    if (byte_1ECEBBB88 == 1)
    {
      v23 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v24 = sub_1E1AF5DBC();
      v25 = [v23 initWithString_];

      v26 = 0;
      v27 = v25;
    }

    else
    {
      v25 = sub_1E1AF5DBC();
      v27 = 0;
      v26 = v25;
    }

    v28 = v25;
    swift_beginAccess();
    v29 = byte_1ECEBBB89;
    v30 = v27;
    sub_1E19894A0(v27, v26, 0, v29, v79);
    v31 = v27;
    v33 = v79[0];
    v32 = v79[1];
    v34 = v79[2];
    v74 = v80;
    v71 = v81;
    v35 = v82;

    v70 = v31;
    v72 = v32;
    if (v31)
    {
      if (!v35)
      {

        goto LABEL_29;
      }

      v66 = v33;
      v33 = v16;
      v36 = v35[2];
      if (v36)
      {
        v37 = 0;
        while (v37 < v35[2])
        {
          v38 = v37 + 1;
          v79[0] = v35[v37 + 4];
          sub_1E1988EF0(v79, v30, v34);
          v37 = v38;
          if (v36 == v38)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_17:

      v16 = v33;
    }

    else
    {
      if (!v35)
      {
LABEL_24:
        if (v71)
        {
          v69 = v34;
          v47 = sub_1E198D2E4(0, v34, v76, v16);
          *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v47;
          v48 = objc_allocWithZone(MEMORY[0x1E696AD40]);
          v49 = v47;
          v50 = [v48 initWithAttributedString_];
          if (qword_1ECEB1618 != -1)
          {
            swift_once();
          }

          [v50 performSelector_];
          v51 = [v50 string];
          v52 = sub_1E1AF5DFC();
          v54 = v53;

          v34 = v69;
          goto LABEL_38;
        }

        *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = 0;
        goto LABEL_37;
      }

      v66 = v33;
      v68 = v34;
      v39 = sub_1E1AF5DBC();
      [v39 mutableCopy];

      sub_1E1AF6EBC();
      swift_unknownObjectRelease();
      sub_1E13006E4(0, &qword_1ECEBBC28);
      swift_dynamicCast();
      v40 = v83;
      v41 = v35[2];
      if (v41)
      {
        v42 = v35 + 4;
        do
        {
          v43 = *v42++;
          v44 = sub_1E1AF5DBC();
          [v40 replaceCharactersInRange:v43 withString:{1, v44}];

          --v41;
        }

        while (v41);
      }

      [v40 copy];
      sub_1E1AF6EBC();
      swift_unknownObjectRelease();
      sub_1E13006E4(0, &qword_1ECEBBC30);
      swift_dynamicCast();
      v45 = v83;
      v76 = sub_1E1AF5DFC();
      v16 = v46;

      v34 = v68;
    }

    v33 = v66;
    if (!v70)
    {
      goto LABEL_24;
    }

LABEL_29:
    [v30 copy];

    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
    sub_1E13006E4(0, &qword_1EE1E3420);
    v55 = swift_dynamicCast();
    v56 = v83;
    if (!v55)
    {
      v56 = 0;
    }

    *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v56;
    if (v71)
    {
      v67 = v34;
      v57 = qword_1ECEB1618;
      v35 = v56;
      if (v57 == -1)
      {
LABEL_33:
        [v30 performSelector_];
        v58 = [v30 string];
        v52 = sub_1E1AF5DFC();
        v54 = v59;

        v34 = v67;
LABEL_38:
        v64 = &v3[OBJC_IVAR___AMPLanguageAwareString_string];
        *v64 = v52;
        v64[1] = v54;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v34;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_numbers] = v33;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_words] = v72;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v74;
        v78.receiver = v3;
        v78.super_class = type metadata accessor for LanguageAwareString();
        v3 = objc_msgSendSuper2(&v78, sel_init);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v3;
      }

LABEL_40:
      swift_once();
      goto LABEL_33;
    }

    if (v56)
    {
      v60 = v56;
      v65 = v26;
      v61 = v34;
      v62 = [v60 string];
      v52 = sub_1E1AF5DFC();
      v54 = v63;

      v34 = v61;
      goto LABEL_38;
    }

LABEL_37:

    v54 = v16;
    v52 = v76;
    goto LABEL_38;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  type metadata accessor for LanguageAwareString();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1E198FC78(uint64_t a1)
{
  v2 = sub_1E198D200();
  v3 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a1);
  v5 = v4;

  if (v5)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E198FD44()
{
  v1 = (v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection);
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  if (*(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts) == 1)
  {
    result = *(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough);
  }

  else
  {
    result = -1;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_1E198FDC4(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_1E198FDDC(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_1E198FD44();
  return sub_1E198FE24;
}

void *sub_1E198FE24(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

void sub_1E198FE40(uint64_t a1, id a2, id a3, char a4, double a5)
{
  v6 = *(v5 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  if (*(v6 + OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts) == 1)
  {
    v7 = *(v6 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
    v8 = *(v6 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
    if (v7)
    {
      if (!v8)
      {
        return;
      }
    }

    else if (v8)
    {
      return;
    }

    if ((a4 & 1) == 0 || (v13 = *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage)) == 0)
    {
      v33 = sub_1E198D200();
      v34 = [objc_allocWithZone(MEMORY[0x1E69DB850]) initWithAttributedString_];

      v35 = objc_allocWithZone(MEMORY[0x1E69DB7C0]);
      v14 = v34;
      v15 = [v35 init];
      [v14 addLayoutManager_];

      v23 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
      [v23 setLineFragmentPadding_];
      [v23 setMaximumNumberOfLines_];
      [v23 setLineBreakMode_];
      [v15 addTextContainer_];

      if (a4)
      {
        v36 = *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage);
        *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage) = v14;
        v14 = v14;
      }

      else
      {
        v37 = *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage);
        *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage) = 0;
      }

      goto LABEL_35;
    }

    v14 = v13;
    v15 = [v14 layoutManagers];
    sub_1E13006E4(0, &qword_1ECEBBB28);
    v16 = sub_1E1AF621C();
    v17 = v16;
    if (v16 >> 62)
    {
      if (sub_1E1AF71CC())
      {
LABEL_11:

        if ((v17 & 0xC000000000000001) == 0)
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v18 = *(v17 + 32);
LABEL_14:
          v15 = v18;

          v19 = [v15 textContainers];
          sub_1E13006E4(0, &unk_1ECEBBB30);
          v20 = sub_1E1AF621C();
          v17 = v20;
          if (v20 >> 62)
          {
            if (sub_1E1AF71CC())
            {
LABEL_16:

              if ((v17 & 0xC000000000000001) == 0)
              {
                if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v21 = *(v17 + 32);
LABEL_19:
                v22 = v21;

                v23 = v22;
                [v23 size];
                v25 = v24;
                v27 = v26;
                [v23 lineFragmentPadding];
                v29 = v28;
                v30 = [v23 maximumNumberOfLines];
                v31 = [v23 lineBreakMode];

                if (v25 == a5 && v27 == 1.79769313e308)
                {
                  if (v29 == 0.0)
                  {
                    if (v30 == a2)
                    {
                      if (v31 == a3)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_33;
                    }

LABEL_31:
                    [v23 setMaximumNumberOfLines_];
LABEL_32:
                    if (v31 == a3)
                    {
LABEL_34:
                      v38 = [v14 fullRange];
                      [v15 invalidateLayoutForCharacterRange:v38 actualCharacterRange:{v39, 0}];
LABEL_35:
                      [v14 writingDirectionOfLine:a1 usingLayoutManager:v15 textContainer:v23];

                      return;
                    }

LABEL_33:
                    [v23 setLineBreakMode_];
                    goto LABEL_34;
                  }
                }

                else
                {
                  [v23 setSize_];
                  if (v29 == 0.0)
                  {
                    goto LABEL_30;
                  }
                }

                [v23 setLineFragmentPadding_];
LABEL_30:
                if (v30 == a2)
                {
                  goto LABEL_32;
                }

                goto LABEL_31;
              }

LABEL_43:
              v21 = MEMORY[0x1E68FFD80](0, v17);
              goto LABEL_19;
            }
          }

          else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_39:
        v18 = MEMORY[0x1E68FFD80](0, v17);
        goto LABEL_14;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_39;
  }
}

id LanguageAwareString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageAwareString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E1990568@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 528))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E19905A4()
{
  result = sub_1E19905EC(0);
  qword_1EE216560 = result;
  return result;
}

uint64_t sub_1E19905C8()
{
  result = sub_1E19905EC(-1);
  qword_1EE216520 = result;
  return result;
}

uint64_t sub_1E19905EC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v2 setAlignment_];
  [v2 setBaseWritingDirection_];
  [v2 setLineBreakMode_];
  [v2 copy];
  sub_1E1AF6EBC();

  swift_unknownObjectRelease();
  sub_1E13006E4(0, &qword_1EE1E3458);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_1E19906CC()
{
  result = sub_1E19905EC(1);
  qword_1ECEF4D50 = result;
  return result;
}

unint64_t sub_1E19906F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1E1990900(a1, a3, a4);
  v8 = sub_1E1990900(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1E1AF5EDC();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_1E1AF709C();
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
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1E1AF5EEC();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_1E1AF709C();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_1E1990900(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_1E1990998(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1E161E834(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1E1990998(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_1E161E958(result, a2, a3);
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

id sub_1E1990A0C(void *a1, void *a2, char a3)
{
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v7 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v8 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v11 = 0;
  v11[8] = 1;
  swift_beginAccess();
  v12 = qword_1EE1DCDF0;
  if (qword_1EE1DCDF0 && ([qword_1EE1DCDF0 respondsToSelector_] & 1) != 0)
  {
    v13 = [v12 preprocessForLanguageAwarenessAttributedString_];
  }

  else
  {
    v13 = a1;
  }

  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v16 = v15;
  sub_1E19894A0(v15, 0, a2, a3 & 1, v40);
  v37 = v40[0];
  v38 = v40[1];
  v17 = v40[2];
  v18 = v40[3];
  v19 = v41;
  v20 = v42;

  if (v20)
  {
    v36 = v18;
    v21 = v14;
    v18 = *(v20 + 16);
    if (v18)
    {
      v22 = 0;
      v23 = 0;
      v14 = (v20 + 32);
      while (v22 < *(v20 + 16))
      {
        v24 = v22 + 1;
        v40[0] = v14[v22];
        sub_1E1988EF0(v40, v16, v17);
        v22 = v24;
        if (v18 == v24)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_17:
      swift_once();
      goto LABEL_13;
    }

LABEL_10:

    v14 = v21;
    v18 = v36;
  }

  v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = v16;
  v26 = [v25 initWithAttributedString_];
  v16 = v26;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v26;
  if (!v19)
  {
    v30 = v26;

    v29 = [v30 string];
    goto LABEL_15;
  }

  v27 = qword_1ECEB1618;
  v28 = v26;
  if (v27 != -1)
  {
    goto LABEL_17;
  }

LABEL_13:
  [v23 performSelector_];
  v29 = [v23 string];

LABEL_15:
  v31 = sub_1E1AF5DFC();
  v33 = v32;

  v34 = &v3[OBJC_IVAR___AMPLanguageAwareString_string];
  *v34 = v31;
  v34[1] = v33;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v17;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_numbers] = v37;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_words] = v38;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v18;
  v39.receiver = v3;
  v39.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t sub_1E1990DC0(uint64_t a1)
{
  switch(a1)
  {
    case -1:
      if (qword_1EE1E6A48 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE216520;
      return *v1;
    case 1:
      if (qword_1ECEB1640 != -1)
      {
        swift_once();
      }

      v1 = &qword_1ECEF4D50;
      return *v1;
    case 0:
      if (qword_1EE1E7600 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EE216560;
      return *v1;
  }

  sub_1E1AF6FEC();

  v3 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v3);

  result = sub_1E1AF71FC();
  __break(1u);
  return result;
}

id sub_1E1990F50(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v11 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v12 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v15 = 0;
  v15[8] = 1;
  swift_beginAccess();
  v16 = qword_1EE1DCDF0;
  if (qword_1EE1DCDF0)
  {
    swift_unknownObjectRetain();
    v17 = sub_1E1AF5DBC();
    v18 = [v16 preprocessForLanguageAwarenessString_];

    a1 = sub_1E1AF5DFC();
    v20 = v19;

    swift_unknownObjectRelease();

    a2 = v20;
  }

  if ((a4 & 1) != 0 || a3)
  {
    v24 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v25 = sub_1E1AF5DBC();
    v21 = [v24 initWithString_];

    v23 = 0;
    v22 = v21;
  }

  else
  {
    v21 = sub_1E1AF5DBC();
    v22 = 0;
    v23 = v21;
  }

  v26 = v21;
  v27 = v22;
  sub_1E19894A0(v22, v23, a3, a5 & 1, v65);
  v61 = v65[0];
  v28 = v22;
  v29 = v65[1];
  v30 = v65[2];
  v31 = v65[3];
  v60 = v66;
  v32 = v67;

  v58 = v28;
  v59 = v29;
  v62 = v23;
  if (v28)
  {
    if (!v32)
    {

      goto LABEL_25;
    }

    v57 = v31;
    v31 = *(v32 + 16);
    if (v31)
    {
      v33 = 0;
      while (v33 < *(v32 + 16))
      {
        v23 = (v33 + 1);
        v65[0] = *(v32 + 32 + 8 * v33);
        sub_1E1988EF0(v65, v27, v30);
        v33 = v23;
        if (v31 == v23)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_13:
  }

  else
  {
    if (!v32)
    {
      goto LABEL_20;
    }

    v57 = v31;
    v34 = sub_1E1AF5DBC();
    [v34 mutableCopy];

    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
    sub_1E13006E4(0, &qword_1ECEBBC28);
    swift_dynamicCast();
    v35 = *(v32 + 16);
    if (v35)
    {
      v36 = (v32 + 32);
      do
      {
        v37 = *v36++;
        v38 = sub_1E1AF5DBC();
        [v63 replaceCharactersInRange:v37 withString:{1, v38}];

        --v35;
      }

      while (v35);
    }

    [v63 copy];
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
    sub_1E13006E4(0, &qword_1ECEBBC30);
    swift_dynamicCast();
    a1 = sub_1E1AF5DFC();
    a2 = v39;
  }

  v31 = v57;
  v29 = v59;
  v23 = v62;
  if (v58)
  {
LABEL_25:
    [v27 copy];

    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
    sub_1E13006E4(0, &qword_1EE1E3420);
    v47 = swift_dynamicCast();
    v48 = v63;
    if (!v47)
    {
      v48 = 0;
    }

    *&v5[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v48;
    if (v60)
    {
      v49 = qword_1ECEB1618;
      v23 = v48;
      if (v49 == -1)
      {
LABEL_29:
        [v27 performSelector_];
        v50 = [v27 string];
        a1 = sub_1E1AF5DFC();
        v46 = v51;

        v29 = v59;
        goto LABEL_34;
      }

LABEL_36:
      swift_once();
      goto LABEL_29;
    }

    if (v48)
    {
      v52 = v48;
      v53 = [v52 string];
      a1 = sub_1E1AF5DFC();
      v46 = v54;

      goto LABEL_34;
    }

LABEL_33:

    v46 = a2;
    goto LABEL_34;
  }

LABEL_20:
  if ((v60 & 1) == 0)
  {
    *&v5[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = 0;
    goto LABEL_33;
  }

  v40 = sub_1E198D2E4(0, v30, a1, a2);
  *&v5[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v40;
  v41 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v42 = v40;
  v43 = [v41 initWithAttributedString_];
  if (qword_1ECEB1618 != -1)
  {
    swift_once();
  }

  [v43 performSelector_];
  v44 = [v43 string];
  a1 = sub_1E1AF5DFC();
  v46 = v45;

LABEL_34:
  v55 = &v5[OBJC_IVAR___AMPLanguageAwareString_string];
  *v55 = a1;
  v55[1] = v46;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v30;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_numbers] = v61;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_words] = v29;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v31;
  v64.receiver = v5;
  v64.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v64, sel_init);
}

id sub_1E1991650(void *a1, char a2)
{
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  v5 = OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage;
  *&v2[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v6 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v7 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v10 = 0;
  v10[8] = 1;
  v11 = a1;
  sub_1E19894A0(a1, 0, 0, a2, v33);
  v30 = v33[0];
  v31 = v33[1];
  v12 = v33[2];
  v13 = v33[3];
  v14 = v34;
  v15 = v35;

  if (v15)
  {
    v28 = v13;
    v29 = v5;
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v13 = v15 + 32;
      while (v17 < *(v15 + 16))
      {
        v5 = v17 + 1;
        v33[0] = *(v13 + 8 * v17);
        sub_1E1988EF0(v33, v11, v12);
        v17 = v5;
        if (v16 == v5)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_13:
      swift_once();
      goto LABEL_9;
    }

LABEL_6:

    v13 = v28;
    v5 = v29;
  }

  *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = a1;
  if (!v14)
  {
    v19 = [v11 string];
    v20 = sub_1E1AF5DFC();
    v22 = v23;
    goto LABEL_11;
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  if (qword_1ECEB1618 != -1)
  {
    goto LABEL_13;
  }

LABEL_9:
  [v18 performSelector_];
  v19 = [v18 string];
  v20 = sub_1E1AF5DFC();
  v22 = v21;

LABEL_11:
  v24 = &v2[OBJC_IVAR___AMPLanguageAwareString_string];
  *v24 = v20;
  v24[1] = v22;
  v25 = *&v2[v5];
  *&v2[v5] = a1;
  v26 = v11;

  *&v2[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v12;
  *&v2[OBJC_IVAR___AMPLanguageAwareString_numbers] = v30;
  *&v2[OBJC_IVAR___AMPLanguageAwareString_words] = v31;
  *&v2[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v13;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v32, sel_init);
}

id sub_1E1991948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v9 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v10 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v13 = 0;
  v13[8] = 1;
  swift_beginAccess();
  v14 = qword_1EE1DCDF0;
  if (qword_1EE1DCDF0)
  {
    swift_unknownObjectRetain();
    v15 = sub_1E1AF5DBC();

    v16 = [v14 preprocessForLanguageAwarenessString_];

    sub_1E1AF5DFC();
    swift_unknownObjectRelease();
  }

  v17 = sub_1E1AF5DBC();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1E16FAC84();
    v18 = sub_1E1AF5C6C();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString:v17 attributes:v18];

  v20 = v19;
  sub_1E19894A0(v19, 0, a4, a5 & 1, v44);
  v22 = v44[0];
  v21 = v44[1];
  v23 = v44[2];
  v24 = v44[3];
  v25 = v45;
  v26 = v46;

  if (v26)
  {
    v41 = v22;
    v42 = v21;
    v22 = v24;
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v24 = v26 + 32;
      while (v28 < *(v26 + 16))
      {
        v21 = v28 + 1;
        v44[0] = *(v24 + 8 * v28);
        sub_1E1988EF0(v44, v20, v23);
        v28 = v21;
        if (v27 == v21)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      swift_once();
      goto LABEL_14;
    }

LABEL_11:

    v24 = v22;
    v22 = v41;
    v21 = v42;
  }

  v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v29 = v20;
  v31 = [v30 initWithAttributedString_];
  v20 = v31;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v31;
  if (!v25)
  {
    v35 = v31;

    v34 = [v35 string];
    goto LABEL_16;
  }

  v32 = qword_1ECEB1618;
  v33 = v31;
  if (v32 != -1)
  {
    goto LABEL_18;
  }

LABEL_14:
  [v29 performSelector_];
  v34 = [v29 string];

LABEL_16:
  v36 = sub_1E1AF5DFC();
  v38 = v37;

  v39 = &v5[OBJC_IVAR___AMPLanguageAwareString_string];
  *v39 = v36;
  v39[1] = v38;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v23;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_numbers] = v22;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_words] = v21;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v24;
  v43.receiver = v5;
  v43.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v43, sel_init);
}

id sub_1E1991D5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v8 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v9 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v12 = 0;
  v12[8] = 1;
  v13 = sub_1E198D200();
  v14 = v13;
  if (a2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    type metadata accessor for Key(0);
    sub_1E16FAC84();
    v16 = sub_1E1AF5C6C();

    v17 = [v14 fullRange];
    [v15 addAttributes:v16 range:{v17, v18}];

    v19 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  }

  else
  {
    v19 = v13;
  }

  *&v4[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v19;
  v20 = v19;
  v21 = [v20 string];
  v22 = sub_1E1AF5DFC();
  v24 = v23;

  v25 = &v4[OBJC_IVAR___AMPLanguageAwareString_string];
  *v25 = v22;
  v25[1] = v24;
  if (a3)
  {
    *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = *(a1 + OBJC_IVAR___AMPLanguageAwareString_paragraphs);
    *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = *(a1 + OBJC_IVAR___AMPLanguageAwareString_numbers);

    v26 = OBJC_IVAR___AMPLanguageAwareString_words;
    v27 = *(a1 + OBJC_IVAR___AMPLanguageAwareString_words);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = MEMORY[0x1E69E7CC0];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = v27;

    v26 = OBJC_IVAR___AMPLanguageAwareString_words;
  }

  *&v4[v26] = v27;
  v28 = *(a1 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  *&v4[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v28;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for LanguageAwareString();
  v29 = v28;
  return objc_msgSendSuper2(&v31, sel_init);
}

AppStoreKit::FamilyCircleAction::EventType_optional __swiftcall FamilyCircleAction.EventType.init(rawValue:)(Swift::String rawValue)
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

uint64_t FamilyCircleAction.EventType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C696D6146646461;
  }

  else
  {
    return 0x6574616974696E69;
  }
}

uint64_t sub_1E1992A08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C696D6146646461;
  }

  else
  {
    v3 = 0x6574616974696E69;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF7265626D654D79;
  }

  if (*a2)
  {
    v5 = 0x6C696D6146646461;
  }

  else
  {
    v5 = 0x6574616974696E69;
  }

  if (*a2)
  {
    v6 = 0xEF7265626D654D79;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1E1992ABC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1992B4C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1992BC8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1992C54@<X0>(char *a1@<X8>)
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

void sub_1E1992CB4(uint64_t *a1@<X8>)
{
  v2 = 0x6574616974696E69;
  if (*v1)
  {
    v2 = 0x6C696D6146646461;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF7265626D654D79;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FamilyCircleAction.clientName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_clientName);

  return v1;
}

char *FamilyCircleAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v46 = *v3;
  v5 = sub_1E1AF39DC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v51 = a1;
  sub_1E1AF381C();
  v22 = sub_1E1AF37CC();
  v24 = v23;
  v47 = v11;
  v25 = v21;
  v26 = *(v11 + 8);
  v26(v25, v10);
  if (v24)
  {
    v27 = &v3[OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_clientName];
    *v27 = v22;
    v27[1] = v24;
    v28 = v51;
    sub_1E1AF381C();
    sub_1E199333C();
    sub_1E1AF36DC();
    v26(v19, v10);
    v3[OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_eventType] = v55 & 1;
    sub_1E1AF381C();
    sub_1E1AF368C();
    v46 = v26;
    v26(v16, v10);
    v29 = sub_1E1AF40DC();
    v30 = *(v29 - 8);
    v31 = v28;
    if ((*(v30 + 48))(v9, 1, v29) == 1)
    {
      sub_1E1308058(v9, &qword_1ECEB2B28);
      v32 = 0;
    }

    else
    {
      v32 = sub_1E1AF40BC();
      (*(v30 + 8))(v9, v29);
    }

    *&v3[OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_additionalParameters] = v32;
    v37 = v48;
    (*(v47 + 16))(v48, v31, v10);
    v39 = v52;
    v38 = v53;
    v40 = v49;
    v41 = v54;
    (*(v52 + 16))(v49, v54, v53);
    v42 = v50;
    v43 = Action.init(deserializing:using:)(v37, v40);
    if (!v42)
    {
      v3 = v43;
    }

    (*(v39 + 8))(v41, v38);
    v46(v31, v10);
  }

  else
  {
    v33 = v26;
    v34 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v35 = 0x614E746E65696C63;
    v36 = v46;
    v35[1] = 0xEA0000000000656DLL;
    v35[2] = v36;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x1E69AB690], v34);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v33(v51, v10);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

unint64_t sub_1E199333C()
{
  result = qword_1ECEBBC38;
  if (!qword_1ECEBBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBC38);
  }

  return result;
}

uint64_t FamilyCircleAction.__allocating_init(clientName:eventType:additionalParameters:actionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = *a3;
  v16 = (v14 + OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_clientName);
  *v16 = a1;
  v16[1] = a2;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_eventType) = v15;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_additionalParameters) = a4;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v17 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v18 = sub_1E1AF3E1C();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v14 + v17, a5, v18);
  v20 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
  v22 = (v14 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = v14 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v33, &v30);
  if (*(&v31 + 1))
  {
    v24 = v31;
    *v23 = v30;
    *(v23 + 16) = v24;
    *(v23 + 32) = v32;
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
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  return v14;
}

uint64_t FamilyCircleAction.init(clientName:eventType:additionalParameters:actionMetrics:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a4;
  v11 = sub_1E1AEFEAC();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *a3;
  v21 = (v6 + OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_clientName);
  *v21 = a1;
  v21[1] = a2;
  v22 = a5;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_eventType) = v19;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit18FamilyCircleAction_additionalParameters) = v33;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  (*(v18 + 16))(v20, a5, v17);
  v23 = sub_1E1AF46DC();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  v24 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  sub_1E138853C(v42, &v36);
  if (*(&v37 + 1))
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v27 = v26;
    (*(v31 + 8))(v13, v32);
    v34 = v25;
    v35 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  (*(v18 + 8))(v22, v17);
  sub_1E1308058(v42, &unk_1ECEB5670);
  v28 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v28 + 32) = v41;
  v29 = v40;
  *v28 = v39;
  *(v28 + 16) = v29;
  sub_1E134B7C8(v16, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  (*(v18 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v20, v17);
  return v6;
}

uint64_t sub_1E19939FC()
{
}

uint64_t FamilyCircleAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t FamilyCircleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

unint64_t sub_1E1993C80()
{
  result = qword_1ECEBBC40;
  if (!qword_1ECEBBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBC40);
  }

  return result;
}

uint64_t type metadata accessor for FamilyCircleAction()
{
  result = qword_1EE1EFDC8;
  if (!qword_1EE1EFDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShareSheetArticleMetadata.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetArticleMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ShareSheetArticleMetadata.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetArticleMetadata.text.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetArticleMetadata.subtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *ShareSheetArticleMetadata.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v47 = a2;
  v5 = *v2;
  v42 = v3;
  v43 = v5;
  v6 = sub_1E1AF39DC();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v20 = v19;
  v21 = *(v9 + 8);
  v21(v17, v8);
  if (!v20)
  {
    v33 = 25705;
    v34 = 0xE200000000000000;
LABEL_6:
    v35 = sub_1E1AF5A7C();
    sub_1E13ECC08(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v36 = v33;
    v36[1] = v34;
    v36[2] = v43;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    (*(v45 + 8))(v47, v46);
    v21(a1, v8);
    type metadata accessor for ShareSheetArticleMetadata();
    v26 = v44;
    swift_deallocPartialClassInstance();
    return v26;
  }

  v40 = v18;
  sub_1E1AF381C();
  v22 = sub_1E1AF37CC();
  v24 = v23;
  v21(v15, v8);
  v25 = a1;
  if (!v24)
  {
    v33 = 1954047348;

    v34 = 0xE400000000000000;
    goto LABEL_6;
  }

  v26 = v44;
  v44[2] = v40;
  v26[3] = v20;
  v26[4] = v22;
  v26[5] = v24;
  v39 = v25;
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  v29 = v28;
  v21(v12, v8);
  v26[6] = v27;
  v26[7] = v29;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v43 = v8;
  v31 = v45;
  v30 = v46;
  v32 = v47;
  (*(v45 + 16))(v41, v47, v46);
  sub_1E13ECC08(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  (*(v31 + 8))(v32, v30);
  v21(v39, v43);
  v26[8] = v48;
  return v26;
}

void *ShareSheetArticleMetadata.__allocating_init(id:text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

void *ShareSheetArticleMetadata.init(id:text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = a7;
  return v7;
}

uint64_t ShareSheetArticleMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetArticleMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1E1994490@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetArticleMetadata();
  v7 = swift_allocObject();
  result = ShareSheetArticleMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E199454C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0) + 44));
  if (*(v5 + 16) && (v6 = sub_1E15952E8(a1), (v7 & 1) != 0))
  {
    sub_1E134FD1C(*(v5 + 56) + 88 * v6, v12, &qword_1ECEB36F0);
    sub_1E1300B24(v12, v13);
    sub_1E1308058(v12, &qword_1ECEB36F0);
    sub_1E1361B28(v13, v14);
    sub_1E1300B24(v14, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    sub_1E1AF3DDC();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

char *sub_1E19946F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v20 - v10;
  (*(v5 + 16))(v7, a1, v4, v9);
  v12 = type metadata accessor for Shelf();
  v20[0] = v12;
  v13 = sub_1E19A0FD8(&qword_1EE1E5478, type metadata accessor for Shelf);
  v20[1] = v13;
  swift_getKeyPath();
  sub_1E1AF3DAC();

  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_1E19949E0(v21, v11);
  sub_1E138867C(v21);
  v15 = (*(v5 + 48))(v11, 1, v4);
  if (v15 == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB75A0);
    return 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15);
    v20[-2] = v12;
    v20[-1] = v13;
    swift_getKeyPath();
    sub_1E1AF3DAC();

    v17 = v21[0];
    v18 = (v14)(v11, v4);
    MEMORY[0x1EEE9AC00](v18);
    v20[-2] = v2;
    v19 = sub_1E1683670(sub_1E19A1048, &v20[-4], v17);

    return v19;
  }
}

uint64_t sub_1E19949E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0) + 40)) + 16) && (sub_1E15952E8(a1), (v5 & 1) != 0))
  {
    type metadata accessor for Shelf();

    sub_1E1AF3DDC();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    v9 = *(*(v8 - 8) + 56);

    return v9(a2, 1, 1, v8);
  }
}

uint64_t sub_1E1994B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  v13 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0) + 40));
  if (*(v13 + 16) && (v14 = sub_1E15952E8(a1), (v15 & 1) != 0))
  {
    v18[1] = *(*(v13 + 56) + 8 * v14);
    type metadata accessor for Shelf();

    sub_1E1AF3DDC();
    (*(v7 + 32))(v12, v9, v6);
    v16 = a3(v12);
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1E1994CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1300B24(a1, v4);
  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E1AF3FEC();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_1E199454C(v5, a2);
  return sub_1E138867C(v5);
}

uint64_t sub_1E1994D70(uint64_t result)
{
  v43 = result;
  if ((*(v1 + qword_1EE2166D0) & 1) == 0)
  {
    v2 = v1;
    v3 = *(v1 + qword_1EE1E9D48);
    if (v3)
    {
      v4 = *(*v3 + 184);
      swift_beginAccess();
      LOBYTE(v40) = *(v3 + v4);
      v5 = ProductShelfOrderingId.rawValue.getter();
      v7 = v6;
      if (v5 == ProductShelfOrderingId.rawValue.getter() && v7 == v8)
      {
      }

      v9 = sub_1E1AF74AC();

      if (v9)
      {
      }

      *(v3 + v4) = v43;
      (*(*v1 + 896))(&v43);
      v10 = sub_1E19A0FD8(&qword_1ECEB7188, type metadata accessor for ShelfBasedProductPage);
      v11 = *(v10 + 56);
      v12 = type metadata accessor for ShelfBasedProductPage();
      v13 = v11(v12, v10);
      v14 = MEMORY[0x1E69E7CC0];
      if (*(v13 + 16))
      {
        v15 = sub_1E159549C(*(v3 + v4));
        if (v16)
        {
          v17 = *(*(v13 + 56) + 8 * v15);
        }

        else
        {
          v17 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      v18 = qword_1EE1E9DF8;
      *(v2 + qword_1EE1E9DF8) = v17;

      v20 = (*(*v2 + 904))(v19);
      v21 = *(v2 + v18);
      if (v20)
      {
        v42 = v14;
        v22 = *(v21 + 16);
        v23 = qword_1EE2166A0;

        result = swift_beginAccess();
        if (!v22)
        {
          goto LABEL_38;
        }

        v24 = 0;
        v25 = v21 + 32;
        while (1)
        {
          v26 = v25 + 40 * v24;
          v27 = v24;
          while (1)
          {
            if (v27 >= *(v21 + 16))
            {
              __break(1u);
              goto LABEL_43;
            }

            sub_1E134E724(v26, &v40);
            if (*(*(v2 + v23) + 16))
            {
              break;
            }

LABEL_18:
            ++v27;
            result = sub_1E134B88C(&v40);
            v26 += 40;
            if (v22 == v27)
            {
              goto LABEL_38;
            }
          }

          sub_1E135FCF4(&v40);
          if ((v28 & 1) == 0)
          {
            break;
          }

          v29 = sub_1E134B88C(&v40);
          MEMORY[0x1E68FEF20](v29);
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v24 = v27 + 1;
          result = sub_1E1AF62AC();
          v14 = v42;
          v25 = v21 + 32;
          if (v22 - 1 == v27)
          {
LABEL_38:

            v38 = 112;
            goto LABEL_40;
          }
        }

        goto LABEL_18;
      }

      v42 = v14;
      v30 = *(v21 + 16);
      v31 = qword_1EE2166A0;

      result = swift_beginAccess();
      if (v30)
      {
        v32 = 0;
        v33 = v21 + 32;
        while (1)
        {
          v34 = v33 + 40 * v32;
          v35 = v32;
          while (1)
          {
            if (v35 >= *(v21 + 16))
            {
LABEL_43:
              __break(1u);
              return result;
            }

            sub_1E134E724(v34, &v40);
            if (*(*(v2 + v31) + 16))
            {
              break;
            }

LABEL_29:
            ++v35;
            result = sub_1E134B88C(&v40);
            v34 += 40;
            if (v30 == v35)
            {
              goto LABEL_39;
            }
          }

          sub_1E135FCF4(&v40);
          if ((v36 & 1) == 0)
          {
            break;
          }

          v37 = sub_1E134B88C(&v40);
          MEMORY[0x1E68FEF20](v37);
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v32 = v35 + 1;
          result = sub_1E1AF62AC();
          v14 = v42;
          v33 = v21 + 32;
          if (v30 - 1 == v35)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_29;
      }

LABEL_39:

      v38 = 0;
LABEL_40:
      v40 = v14;
      v41 = v38;
      sub_1E1AF5BCC();

      v39 = sub_1E1360914(v14, v38);
      return (*(*v2 + 912))(v39);
    }
  }

  return result;
}

uint64_t sub_1E19952E0(uint64_t result, uint64_t a2)
{
  v3 = v2;
  if ((*(v2 + qword_1EE2166D0) & 1) == 0)
  {
    v4 = *(v2 + qword_1EE1E9D48);
    if (v4)
    {
      v6 = result;
      v7 = (v4 + *(*v4 + 184));
      swift_beginAccess();
      result = *v7;
      if (*v7 != v6 || v7[1] != a2)
      {
        result = sub_1E1AF74AC();
        if ((result & 1) == 0)
        {
          *v7 = v6;
          v7[1] = a2;

          v9 = sub_1E19A0FD8(&qword_1ECEB7180, type metadata accessor for SearchChartsAndCategoriesPage);
          v10 = *(v9 + 56);
          v11 = type metadata accessor for SearchChartsAndCategoriesPage();
          v12 = v10(v11, v9);
          v13 = MEMORY[0x1E69E7CC0];
          if (*(v12 + 16))
          {
            v16 = v7;
            v14 = *v7;
            v15 = v16[1];

            v17 = sub_1E15A47D8(v14, v15);
            v19 = v18;

            if (v19)
            {
              v20 = *(*(v12 + 56) + 8 * v17);
            }

            else
            {
              v20 = MEMORY[0x1E69E7CC0];
            }
          }

          else
          {
            v20 = MEMORY[0x1E69E7CC0];
          }

          v21 = qword_1EE1E9DF8;
          *(v3 + qword_1EE1E9DF8) = v20;

          v22 = *(v3 + v21);
          v33 = v13;
          v23 = *(v22 + 16);
          v24 = qword_1EE2166A0;

          result = swift_beginAccess();
          if (v23)
          {
            v25 = 0;
            v26 = v22 + 32;
            while (1)
            {
              v27 = v26 + 40 * v25;
              v28 = v25;
              while (1)
              {
                if (v28 >= *(v22 + 16))
                {
                  __break(1u);
                  return result;
                }

                sub_1E134E724(v27, &v31);
                if (*(*(v3 + v24) + 16))
                {
                  break;
                }

LABEL_16:
                ++v28;
                result = sub_1E134B88C(&v31);
                v27 += 40;
                if (v23 == v28)
                {
                  goto LABEL_24;
                }
              }

              sub_1E135FCF4(&v31);
              if ((v29 & 1) == 0)
              {
                break;
              }

              v30 = sub_1E134B88C(&v31);
              MEMORY[0x1E68FEF20](v30);
              if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E1AF625C();
              }

              v25 = v28 + 1;
              result = sub_1E1AF62AC();
              v13 = v33;
              v26 = v22 + 32;
              if (v23 - 1 == v28)
              {
                goto LABEL_24;
              }
            }

            goto LABEL_16;
          }

LABEL_24:

          v31 = v13;
          v32 = 0;
          sub_1E1AF5BCC();
        }
      }
    }
  }

  return result;
}

uint64_t (*sub_1E1995618(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E19A0FC8;
  *(v2 + 24) = a1;

  return sub_1E19A10AC;
}

uint64_t (*sub_1E1995690(uint64_t a1))(void *)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E19A0FC8;
  *(v2 + 24) = a1;

  return sub_1E19A10AC;
}

uint64_t (*sub_1E1995708(uint64_t a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E19A0FD0;
  *(v2 + 24) = a1;

  return sub_1E17B87D4;
}

uint64_t ProductDiffablePagePresenter.PageWidth.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

BOOL sub_1E199580C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[4];
  if (v2[3] && (v7 = sub_1E1AF5DBC(), v8 = [objc_opt_self() applicationProxyForSystemPlaceholder_], v7, v8))
  {
  }

  else
  {
    ObjectType = swift_getObjectType();
    v16 = v5;
    v17 = v4;
    v10 = *(a2 + 56);

    v10(&v16, ObjectType, a2);
    v12 = v11;

    v13 = swift_getObjectType();
    (*(v12 + 16))(v18, v13, v12);
    if (v18[6] >> 60 == 7)
    {
      v14 = [v18[1] integerValue];
      sub_1E139CEA8(v18);
      swift_unknownObjectRelease();
      return v14 < v6;
    }

    sub_1E139CEA8(v18);
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t ProductDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:sidePackedPageRenderMetrics:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:pageWidth:isDownloadingOrderingEnabled:downloadingOrderingTimeout:supportsFastImpressions:advertLifecycleMetricsReporter:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, unsigned __int8 *a11, unsigned __int8 a12, char a13, uint64_t a14, __int128 *a15)
{
  v197 = a8;
  v198 = a7;
  v189 = a4;
  v194 = a3;
  v199 = a2;
  v200 = a1;
  v176 = a12;
  v172 = sub_1E1AF361C();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1E1AF68DC();
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v186 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v182 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v192 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v193 = &v164 - v26;
  v177 = sub_1E1AF4B2C();
  v169 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v168 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v195 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v180 = &v164 - v28;
  v179 = sub_1E1AF3D0C();
  v190 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  LODWORD(v196) = *a11;
  v31 = *a15;
  v174 = a15[1];
  v175 = v31;
  v173 = *(a15 + 4);
  v32 = (v30 + qword_1EE216608);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v30 + qword_1EE1E9640);
  *v33 = 0;
  v33[1] = 0;
  v34 = qword_1EE1E9680;
  *(v30 + qword_1EE1E9680) = 0;
  *(v30 + qword_1EE1E9658) = 0;
  v35 = *(a15 + 40);
  *(v30 + qword_1EE215688) = 0;
  *(v30 + qword_1EE216640) = 0;
  *(v30 + qword_1EE1E9618) = 2;
  *(v30 + qword_1EE1E9688) = 2;
  v36 = v30 + qword_1EE1E9660;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0;
  *(v30 + qword_1EE216648) = 0;
  *(v30 + qword_1EE1E9610) = 2;
  v37 = qword_1EE216628;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC48);
  swift_allocObject();
  *(v30 + v37) = sub_1E1AF5BEC();
  v38 = qword_1EE216610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC50);
  swift_allocObject();
  *(v30 + v38) = sub_1E1AF5BEC();
  v39 = qword_1EE1E9648;
  v40 = sub_1E1AEFE6C();
  (*(*(v40 - 8) + 56))(v30 + v39, 1, 1, v40);
  v41 = qword_1EE216618;
  *(v30 + qword_1EE216618) = 2;
  *(v30 + qword_1EE1E9620) = 0;
  v42 = qword_1EE1E9608;
  *(v30 + qword_1EE1E9608) = 0;
  *(v30 + qword_1EE216620) = 0;
  v43 = (v30 + qword_1EE216630);
  *v43 = a5;
  v43[1] = a6;
  sub_1E1300B24(v198, v30 + qword_1EE1E9650);
  v44 = v197;
  sub_1E1300B24(v197, v30 + qword_1EE1D6470);
  *(v30 + v34) = a10;
  swift_unknownObjectRetain();
  v187 = a10;

  *(v30 + v42) = v196;
  v45 = v44;
  v46 = v200;
  sub_1E1300B24(v45, &v202);
  type metadata accessor for ProductAskToBuyPresenter();
  swift_allocObject();
  swift_unknownObjectRetain();

  v47 = sub_1E18B1298(a5, a6, &v202);
  swift_unknownObjectRelease();

  *(v30 + qword_1EE1E9678) = v47;
  type metadata accessor for ProductPrimaryBannerPresenter();
  swift_allocObject();
  v48 = swift_unknownObjectRetain();
  v49 = sub_1E19DA90C(v48, a6);
  swift_unknownObjectRelease();
  *(v30 + qword_1EE1E9690) = v49;
  type metadata accessor for ProductBetaBannerPresenter();
  swift_allocObject();
  v50 = swift_unknownObjectRetain();
  v51 = v194;
  v52 = sub_1E13C30E8(v50, a6);
  v188 = a5;
  swift_unknownObjectRelease();
  *(v30 + qword_1EE1E9698) = v52;
  if (v51)
  {
    v53 = *(v51 + qword_1EE216920);
  }

  else
  {
    v53 = 0;
  }

  v196 = a14;
  *(v30 + qword_1EE216638) = v53;
  *(v30 + qword_1EE1E9628) = v176 & 1;
  *(v30 + qword_1EE1E9630) = a9;
  type metadata accessor for CompleteMyBundleController();
  v54 = swift_allocObject();
  v54[4] = 0;
  swift_unknownObjectWeakInit();
  v55 = MEMORY[0x1E69E7CD0];
  v54[5] = 0;
  v54[6] = v55;
  v54[2] = v46;
  *(v30 + qword_1EE1E9638) = v54;
  v56 = v191;
  v57 = v195;
  if (v51)
  {
    v58 = *(v51 + qword_1EE2168E8);
  }

  else
  {
    v58 = 2;
  }

  swift_beginAccess();
  *(v30 + v41) = v58;
  v59 = v30 + qword_1EE1E9668;
  v60 = v174;
  *v59 = v175;
  *(v59 + 16) = v60;
  *(v59 + 32) = v173;
  *(v59 + 40) = v35;
  if (a13)
  {
    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();

    sub_1E1AF55EC();
    v61 = v202;
    v166 = "GenericPagePresenter";
    v62 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    v63 = v190;
    v64 = *(v190 + 104);
    v65 = v178;
    v176 = *MEMORY[0x1E69AAFB8];
    v66 = v179;
    *&v175 = v190 + 104;
    *&v174 = v64;
    v64(v178);
    v192 = v61;
    v67 = v180;
    sub_1E1AF52AC();
    v68 = *(v63 + 8);
    v190 = v63 + 8;
    v173 = v68;
    v68(v65, v66);
    sub_1E1AF532C();
    v69 = *(v57 + 8);
    v195 = v57 + 8;
    v167 = v69;
    v69(v67, v56);
    v70 = v202;
    type metadata accessor for FastImpressionsV5Tracker();
    v71 = swift_allocObject();
    v71[3] = 0;
    swift_unknownObjectWeakInit();
    sub_1E1AF4EAC();
    swift_allocObject();
    v71[5] = sub_1E1AF4E8C();
    swift_allocObject();
    v71[6] = sub_1E1AF4E8C();
    v71[4] = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F70);
    v72 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F78) - 8);
    v73 = *(*v72 + 72);
    v74 = *(*v72 + 80);
    v166 = v62;
    v75 = (v74 + 32) & ~v74;
    v76 = 2 * v73;
    v77 = swift_allocObject();
    v165 = v77;
    *(v77 + 16) = xmmword_1E1B03760;
    v78 = v77 + v75;
    v79 = (v78 + v72[14]);
    v80 = v72[18];
    sub_1E1AF4B0C();
    v81 = MEMORY[0x1E69AB380];
    *v79 = v71[5];
    v79[1] = v81;
    *(v78 + v80) = 0;
    v82 = v78 + v73;
    v83 = (v82 + v72[14]);
    v164 = v72[18];

    v84 = v168;
    sub_1E1AF4B1C();
    sub_1E1AF4AFC();
    v169 = *(v169 + 8);
    (v169)(v84, v177);
    v85 = sub_1E19A0FD8(&qword_1ECEB3F80, type metadata accessor for FastImpressionsV5Tracker);
    *v83 = v71;
    v83[1] = v85;
    *(v82 + v164) = 1;
    v86 = v78 + v76;
    v87 = (v86 + v72[14]);
    v88 = v72[18];

    sub_1E1AF4B0C();
    sub_1E1AF4AFC();
    (v169)(v84, v177);
    *v87 = v71;
    v87[1] = v85;
    v177 = v85;
    *(v86 + v88) = 1;
    v89 = v71;
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();

    v90 = ImpressionsCalculator.init(configurationTrackerPairs:)(v165);
    if (qword_1EE1D21E8 != -1)
    {
      swift_once();
    }

    v91 = v178;
    v92 = v179;
    (v174)(v178, v176, v179);
    v93 = v180;
    sub_1E1AF52AC();
    v173(v91, v92);
    v94 = v191;
    sub_1E1AF532C();
    v167(v93, v94);
    v95 = v202;
    type metadata accessor for FastImpressionFlushGate();
    v96 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v96[4] = 0;
    v96[5] = 0;
    v96[2] = v95;
    *(v30 + qword_1EE1E9670) = v96;
    v97 = sub_1E1AEFCCC();
    v98 = *(v97 - 8);
    v99 = v193;
    v98[2](v193, v199, v97);
    v180 = v98;
    v100 = v98[7];
    v190 = v97;
    (v100)(v99, 0, 1, v97);
    sub_1E134FD1C(v196, &v202, &qword_1ECEB24F8);
    *(v30 + qword_1EE2169B8) = 0;
    v101 = MEMORY[0x1E69E7CC0];
    *(v30 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
    *(v30 + qword_1EE1ED400) = 0;
    v102 = *(*v30 + 640);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A8);
    v104 = *(*(v103 - 8) + 56);
    v104(v30 + v102, 1, 1, v103);
    v105 = *(*v30 + 648);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
    (*(*(v106 - 8) + 56))(v30 + v105, 1, 1, v106);
    v107 = *(*v30 + 656);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A0);
    (*(*(v108 - 8) + 56))(v30 + v107, 1, 1, v108);
    v104(v30 + *(*v30 + 664), 1, 1, v103);
    v109 = *(*v30 + 672);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
    (*(*(v110 - 8) + 56))(v30 + v109, 1, 1, v110);
    v111 = *(*v30 + 680);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
    (*(*(v112 - 8) + 56))(v30 + v111, 1, 1, v112);
    v179 = *(*v30 + 688);
    v178 = sub_1E1361A80();
    v113 = v189;

    v114 = v200;

    v195 = v89;

    v191 = v90;

    v115 = v194;

    sub_1E1AF322C();
    v201 = v101;
    sub_1E19A0FD8(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
    sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
    sub_1E1AF6EEC();
    (*(v184 + 104))(v186, *MEMORY[0x1E69E8090], v185);
    *(v30 + v179) = sub_1E1AF692C();
    sub_1E13C6184(v30 + *(*v30 + 696));
    v116 = (v30 + *(*v30 + 704));
    *v116 = 0u;
    v116[1] = 0u;
    *(v116 + 25) = 0u;
    v117 = *(*v30 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
    swift_allocObject();
    *(v30 + v117) = sub_1E1AF5BEC();
    v118 = *(*v30 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
    swift_allocObject();
    *(v30 + v118) = sub_1E1AF5BEC();
    v119 = *(*v30 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    swift_allocObject();
    *(v30 + v119) = sub_1E1AF5BEC();
    *(v30 + *(*v30 + 736)) = 0;
    v120 = (v30 + *(*v30 + 752));
    *v120 = 0;
    v120[1] = 0;
    sub_1E134FD1C(v193, v30 + qword_1EE2169A8, &unk_1ECEB4B60);
    sub_1E134FD1C(&v202, v30 + *(*v30 + 744), &qword_1ECEB24F8);
    v121 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

    *(v30 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v122);
    if (v115 && v113)
    {
      sub_1E1AF50BC();
      v201 = v113;

      v123 = v170;
      sub_1E1AF35FC();
      v124 = sub_1E1AF41CC();
      (*(v171 + 8))(v123, v172);
    }

    else
    {

      v124 = v114;
    }

    v152 = v195;

    v153 = v191;

    v154 = sub_1E13C5A14(v124, v152, v177, v153);
    v155 = *(*v154 + 1112);

    *(v154 + qword_1EE2169B8) = v155(v115);

    sub_1E13CA1E8(0);
    swift_unknownObjectRelease();

    sub_1E1308058(v196, &qword_1ECEB24F8);
    __swift_destroy_boxed_opaque_existential_1(v197);
    __swift_destroy_boxed_opaque_existential_1(v198);
    (*(v180 + 1))(v199, v190);
    sub_1E1308058(&v202, &qword_1ECEB24F8);
    v156 = v193;
  }

  else
  {
    *(v30 + qword_1EE1E9670) = 0;
    v125 = sub_1E1AEFCCC();
    v126 = *(v125 - 8);
    v127 = v192;
    (*(v126 + 16))(v192, v199, v125);
    v193 = v126;
    v128 = *(v126 + 56);
    v195 = v125;
    v128(v127, 0, 1, v125);
    sub_1E134FD1C(v196, &v202, &qword_1ECEB24F8);
    *(v30 + qword_1EE2169B8) = 0;
    v129 = MEMORY[0x1E69E7CC0];
    *(v30 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
    *(v30 + qword_1EE1ED400) = 0;
    v130 = *(*v30 + 640);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A8);
    v132 = *(*(v131 - 8) + 56);
    v132(v30 + v130, 1, 1, v131);
    v133 = *(*v30 + 648);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
    (*(*(v134 - 8) + 56))(v30 + v133, 1, 1, v134);
    v135 = *(*v30 + 656);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A0);
    (*(*(v136 - 8) + 56))(v30 + v135, 1, 1, v136);
    v132(v30 + *(*v30 + 664), 1, 1, v131);
    v137 = *(*v30 + 672);
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
    (*(*(v138 - 8) + 56))(v30 + v137, 1, 1, v138);
    v139 = *(*v30 + 680);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
    (*(*(v140 - 8) + 56))(v30 + v139, 1, 1, v140);
    v191 = *(*v30 + 688);
    sub_1E1361A80();
    v141 = v189;

    swift_retain_n();

    sub_1E1AF322C();
    v201 = v129;
    sub_1E19A0FD8(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
    sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
    sub_1E1AF6EEC();
    (*(v184 + 104))(v186, *MEMORY[0x1E69E8090], v185);
    *(v30 + v191) = sub_1E1AF692C();
    sub_1E13C6184(v30 + *(*v30 + 696));
    v142 = (v30 + *(*v30 + 704));
    *v142 = 0u;
    v142[1] = 0u;
    *(v142 + 25) = 0u;
    v143 = *(*v30 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
    swift_allocObject();
    *(v30 + v143) = sub_1E1AF5BEC();
    v144 = *(*v30 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
    swift_allocObject();
    *(v30 + v144) = sub_1E1AF5BEC();
    v145 = *(*v30 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    swift_allocObject();
    *(v30 + v145) = sub_1E1AF5BEC();
    *(v30 + *(*v30 + 736)) = 0;
    v146 = (v30 + *(*v30 + 752));
    *v146 = 0;
    v146[1] = 0;
    sub_1E134FD1C(v192, v30 + qword_1EE2169A8, &unk_1ECEB4B60);
    sub_1E134FD1C(&v202, v30 + *(*v30 + 744), &qword_1ECEB24F8);
    v147 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

    *(v30 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v148);
    if (v51 && v141)
    {
      sub_1E1AF50BC();
      v201 = v141;

      v149 = v170;
      sub_1E1AF35FC();
      v150 = sub_1E1AF41CC();
      (*(v171 + 8))(v149, v172);
      v151 = v150;
    }

    else
    {
    }

    v154 = sub_1E13C5A14(v151, 0, 0, 0);
    v157 = *(*v154 + 1112);

    *(v154 + qword_1EE2169B8) = v157(v51);

    sub_1E13CA1E8(0);
    swift_unknownObjectRelease();

    sub_1E1308058(v196, &qword_1ECEB24F8);
    __swift_destroy_boxed_opaque_existential_1(v197);
    __swift_destroy_boxed_opaque_existential_1(v198);
    (*(v193 + 8))(v199, v195);
    sub_1E1308058(&v202, &qword_1ECEB24F8);
    v156 = v192;
  }

  sub_1E1308058(v156, &unk_1ECEB4B60);
  type metadata accessor for FastImpressionsV5Tracker();
  v158 = swift_dynamicCastClass();
  if (v158)
  {
    v159 = v158;
    swift_beginAccess();
    *(v159 + 24) = &protocol witness table for ProductDiffablePagePresenter;
    swift_unknownObjectWeakAssign();
    v160 = *(v154 + qword_1EE1E9670);
    if (v160)
    {
      v161 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v162 = *(v160 + 32);
      *(v160 + 32) = sub_1E19A08C8;
      *(v160 + 40) = v161;

      sub_1E1300EA8(v162);
    }
  }

  return v154;
}

uint64_t ProductDiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:sidePackedPageRenderMetrics:appStateController:purchaseHistory:restrictions:fullProductFetchedAction:pageWidth:isDownloadingOrderingEnabled:downloadingOrderingTimeout:supportsFastImpressions:advertLifecycleMetricsReporter:referrerData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, unsigned __int8 *a11, unsigned __int8 a12, char a13, uint64_t a14, __int128 *a15)
{
  v16 = v15;
  v195 = a8;
  v196 = a7;
  v187 = a4;
  v192 = a3;
  v197 = a2;
  v198 = a1;
  v174 = a12;
  v169 = sub_1E1AF361C();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1E1AF68DC();
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v184 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v179);
  v181 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v180 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v190 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v162 - v28;
  v175 = sub_1E1AF4B2C();
  v166 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v165 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v193 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v178 = &v162 - v30;
  v177 = sub_1E1AF3D0C();
  v188 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v194) = *a11;
  v32 = *a15;
  v172 = a15[1];
  v173 = v32;
  v171 = *(a15 + 4);
  v33 = (v15 + qword_1EE216608);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v15 + qword_1EE1E9640);
  *v34 = 0;
  v34[1] = 0;
  v35 = qword_1EE1E9680;
  *(v15 + qword_1EE1E9680) = 0;
  *(v15 + qword_1EE1E9658) = 0;
  LODWORD(v170) = *(a15 + 40);
  *(v15 + qword_1EE215688) = 0;
  *(v15 + qword_1EE216640) = 0;
  *(v15 + qword_1EE1E9618) = 2;
  *(v15 + qword_1EE1E9688) = 2;
  v36 = v15 + qword_1EE1E9660;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0u;
  *(v36 + 48) = 0;
  *(v15 + qword_1EE216648) = 0;
  *(v15 + qword_1EE1E9610) = 2;
  v37 = qword_1EE216628;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC48);
  swift_allocObject();
  *(v15 + v37) = sub_1E1AF5BEC();
  v38 = qword_1EE216610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC50);
  swift_allocObject();
  *(v15 + v38) = sub_1E1AF5BEC();
  v39 = qword_1EE1E9648;
  v40 = sub_1E1AEFE6C();
  (*(*(v40 - 8) + 56))(v16 + v39, 1, 1, v40);
  v41 = qword_1EE216618;
  *(v16 + qword_1EE216618) = 2;
  *(v16 + qword_1EE1E9620) = 0;
  v42 = qword_1EE1E9608;
  *(v16 + qword_1EE1E9608) = 0;
  *(v16 + qword_1EE216620) = 0;
  v43 = (v16 + qword_1EE216630);
  *v43 = a5;
  v43[1] = a6;
  v44 = v198;
  sub_1E1300B24(v196, v16 + qword_1EE1E9650);
  v45 = v195;
  sub_1E1300B24(v195, v16 + qword_1EE1D6470);
  *(v16 + v35) = a10;
  swift_unknownObjectRetain();
  v185 = a10;

  *(v16 + v42) = v194;
  v46 = v192;
  sub_1E1300B24(v45, &v200);
  type metadata accessor for ProductAskToBuyPresenter();
  swift_allocObject();
  swift_unknownObjectRetain();

  v47 = sub_1E18B1298(a5, a6, &v200);
  swift_unknownObjectRelease();

  *(v16 + qword_1EE1E9678) = v47;
  type metadata accessor for ProductPrimaryBannerPresenter();
  swift_allocObject();
  v48 = swift_unknownObjectRetain();
  v49 = sub_1E19DA90C(v48, a6);
  swift_unknownObjectRelease();
  *(v16 + qword_1EE1E9690) = v49;
  type metadata accessor for ProductBetaBannerPresenter();
  swift_allocObject();
  v50 = swift_unknownObjectRetain();
  v51 = sub_1E13C30E8(v50, a6);
  v186 = a5;
  swift_unknownObjectRelease();
  *(v16 + qword_1EE1E9698) = v51;
  if (v46)
  {
    v52 = *(v46 + qword_1EE216920);
  }

  else
  {
    v52 = 0;
  }

  v194 = a14;
  *(v16 + qword_1EE216638) = v52;
  *(v16 + qword_1EE1E9628) = v174 & 1;
  *(v16 + qword_1EE1E9630) = a9;
  type metadata accessor for CompleteMyBundleController();
  v53 = swift_allocObject();
  v53[4] = 0;
  swift_unknownObjectWeakInit();
  v54 = MEMORY[0x1E69E7CD0];
  v53[5] = 0;
  v53[6] = v54;
  v53[2] = v44;
  *(v16 + qword_1EE1E9638) = v53;
  v55 = v189;
  v56 = v193;
  if (v46)
  {
    v57 = *(v46 + qword_1EE2168E8);
  }

  else
  {
    v57 = 2;
  }

  swift_beginAccess();
  *(v16 + v41) = v57;
  v58 = v16 + qword_1EE1E9668;
  v59 = v172;
  *v58 = v173;
  *(v58 + 16) = v59;
  *(v58 + 32) = v171;
  *(v58 + 40) = v170;
  if (a13)
  {
    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();

    sub_1E1AF55EC();
    v60 = v200;
    v164 = "GenericPagePresenter";
    v61 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    v62 = v188;
    v63 = *(v188 + 104);
    v64 = v176;
    v174 = *MEMORY[0x1E69AAFB8];
    v65 = v177;
    *&v173 = v188 + 104;
    *&v172 = v63;
    v63(v176);
    v190 = v60;
    v66 = v178;
    sub_1E1AF52AC();
    v67 = *(v62 + 8);
    v188 = v62 + 8;
    v171 = v67;
    v67(v64, v65);
    sub_1E1AF532C();
    v68 = *(v56 + 8);
    v193 = v56 + 8;
    v170 = v68;
    v68(v66, v55);
    v69 = v200;
    type metadata accessor for FastImpressionsV5Tracker();
    v70 = swift_allocObject();
    v70[3] = 0;
    swift_unknownObjectWeakInit();
    sub_1E1AF4EAC();
    swift_allocObject();
    v70[5] = sub_1E1AF4E8C();
    swift_allocObject();
    v70[6] = sub_1E1AF4E8C();
    v70[4] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F70);
    v71 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F78) - 8);
    v72 = *(*v71 + 72);
    v73 = (*(*v71 + 80) + 32) & ~*(*v71 + 80);
    v164 = v61;
    v74 = 2 * v72;
    v75 = swift_allocObject();
    v163 = v75;
    *(v75 + 16) = xmmword_1E1B03760;
    v76 = v75 + v73;
    v77 = (v76 + v71[14]);
    v78 = v71[18];
    sub_1E1AF4B0C();
    v79 = MEMORY[0x1E69AB380];
    *v77 = v70[5];
    v77[1] = v79;
    *(v76 + v78) = 0;
    v80 = v76 + v72;
    v81 = (v80 + v71[14]);
    v162 = v71[18];

    v82 = v165;
    sub_1E1AF4B1C();
    sub_1E1AF4AFC();
    v166 = *(v166 + 8);
    (v166)(v82, v175);
    v83 = sub_1E19A0FD8(&qword_1ECEB3F80, type metadata accessor for FastImpressionsV5Tracker);
    *v81 = v70;
    v81[1] = v83;
    *(v80 + v162) = 1;
    v84 = v76 + v74;
    v85 = (v84 + v71[14]);
    v86 = v71[18];

    sub_1E1AF4B0C();
    sub_1E1AF4AFC();
    (v166)(v82, v175);
    *v85 = v70;
    v85[1] = v83;
    v175 = v83;
    *(v84 + v86) = 1;
    v87 = v70;
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();

    v88 = ImpressionsCalculator.init(configurationTrackerPairs:)(v163);
    if (qword_1EE1D21E8 != -1)
    {
      swift_once();
    }

    v89 = v176;
    v90 = v177;
    (v172)(v176, v174, v177);
    v91 = v178;
    sub_1E1AF52AC();
    v171(v89, v90);
    v92 = v189;
    sub_1E1AF532C();
    v170(v91, v92);
    v93 = v200;
    type metadata accessor for FastImpressionFlushGate();
    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94[4] = 0;
    v94[5] = 0;
    v94[2] = v93;
    *(v16 + qword_1EE1E9670) = v94;
    v95 = sub_1E1AEFCCC();
    v96 = *(v95 - 8);
    v97 = v191;
    v96[2](v191, v197, v95);
    v178 = v96;
    v98 = v96[7];
    v188 = v95;
    (v98)(v97, 0, 1, v95);
    sub_1E134FD1C(v194, &v200, &qword_1ECEB24F8);
    *(v16 + qword_1EE2169B8) = 0;
    v99 = MEMORY[0x1E69E7CC0];
    *(v16 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
    *(v16 + qword_1EE1ED400) = 0;
    v100 = *(*v16 + 640);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A8);
    v102 = *(*(v101 - 8) + 56);
    v102(v16 + v100, 1, 1, v101);
    v103 = *(*v16 + 648);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
    (*(*(v104 - 8) + 56))(v16 + v103, 1, 1, v104);
    v105 = *(*v16 + 656);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A0);
    (*(*(v106 - 8) + 56))(v16 + v105, 1, 1, v106);
    v102(v16 + *(*v16 + 664), 1, 1, v101);
    v107 = *(*v16 + 672);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
    (*(*(v108 - 8) + 56))(v16 + v107, 1, 1, v108);
    v109 = *(*v16 + 680);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
    (*(*(v110 - 8) + 56))(v16 + v109, 1, 1, v110);
    v177 = *(*v16 + 688);
    v176 = sub_1E1361A80();
    v111 = v187;

    v112 = v198;

    v193 = v87;

    v189 = v88;

    v113 = v192;

    sub_1E1AF322C();
    v199 = v99;
    sub_1E19A0FD8(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
    sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
    sub_1E1AF6EEC();
    (*(v182 + 104))(v184, *MEMORY[0x1E69E8090], v183);
    *(v16 + v177) = sub_1E1AF692C();
    sub_1E13C6184(v16 + *(*v16 + 696));
    v114 = (v16 + *(*v16 + 704));
    *v114 = 0u;
    v114[1] = 0u;
    *(v114 + 25) = 0u;
    v115 = *(*v16 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
    swift_allocObject();
    *(v16 + v115) = sub_1E1AF5BEC();
    v116 = *(*v16 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
    swift_allocObject();
    *(v16 + v116) = sub_1E1AF5BEC();
    v117 = *(*v16 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    swift_allocObject();
    *(v16 + v117) = sub_1E1AF5BEC();
    *(v16 + *(*v16 + 736)) = 0;
    v118 = (v16 + *(*v16 + 752));
    *v118 = 0;
    v118[1] = 0;
    sub_1E134FD1C(v191, v16 + qword_1EE2169A8, &unk_1ECEB4B60);
    sub_1E134FD1C(&v200, v16 + *(*v16 + 744), &qword_1ECEB24F8);
    v119 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

    *(v16 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v120);
    if (v113 && v111)
    {
      sub_1E1AF50BC();
      v199 = v111;

      v121 = v167;
      sub_1E1AF35FC();
      v122 = sub_1E1AF41CC();
      (*(v168 + 8))(v121, v169);
    }

    else
    {

      v122 = v112;
    }

    v150 = v193;

    v151 = v189;

    v152 = sub_1E13C5A14(v122, v150, v175, v151);
    v153 = *(*v152 + 1112);

    *(v152 + qword_1EE2169B8) = v153(v113);

    sub_1E13CA1E8(0);
    swift_unknownObjectRelease();

    sub_1E1308058(v194, &qword_1ECEB24F8);
    __swift_destroy_boxed_opaque_existential_1(v195);
    __swift_destroy_boxed_opaque_existential_1(v196);
    (*(v178 + 1))(v197, v188);
    sub_1E1308058(&v200, &qword_1ECEB24F8);
    v154 = v191;
  }

  else
  {
    *(v16 + qword_1EE1E9670) = 0;
    v123 = sub_1E1AEFCCC();
    v124 = *(v123 - 8);
    v125 = v190;
    (*(v124 + 16))(v190, v197, v123);
    v191 = v124;
    v126 = *(v124 + 56);
    v193 = v123;
    v126(v125, 0, 1, v123);
    sub_1E134FD1C(v194, &v200, &qword_1ECEB24F8);
    *(v16 + qword_1EE2169B8) = 0;
    v127 = MEMORY[0x1E69E7CC0];
    *(v16 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
    *(v16 + qword_1EE1ED400) = 0;
    v128 = *(*v16 + 640);
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A8);
    v130 = *(*(v129 - 8) + 56);
    v130(v16 + v128, 1, 1, v129);
    v131 = *(*v16 + 648);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
    (*(*(v132 - 8) + 56))(v16 + v131, 1, 1, v132);
    v133 = *(*v16 + 656);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32A0);
    (*(*(v134 - 8) + 56))(v16 + v133, 1, 1, v134);
    v130(v16 + *(*v16 + 664), 1, 1, v129);
    v135 = *(*v16 + 672);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
    (*(*(v136 - 8) + 56))(v16 + v135, 1, 1, v136);
    v137 = *(*v16 + 680);
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
    (*(*(v138 - 8) + 56))(v16 + v137, 1, 1, v138);
    v189 = *(*v16 + 688);
    v188 = sub_1E1361A80();
    v139 = v187;

    swift_retain_n();

    sub_1E1AF322C();
    v199 = v127;
    sub_1E19A0FD8(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
    sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
    sub_1E1AF6EEC();
    (*(v182 + 104))(v184, *MEMORY[0x1E69E8090], v183);
    *(v16 + v189) = sub_1E1AF692C();
    sub_1E13C6184(v16 + *(*v16 + 696));
    v140 = (v16 + *(*v16 + 704));
    *v140 = 0u;
    v140[1] = 0u;
    *(v140 + 25) = 0u;
    v141 = *(*v16 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
    swift_allocObject();
    *(v16 + v141) = sub_1E1AF5BEC();
    v142 = *(*v16 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
    swift_allocObject();
    *(v16 + v142) = sub_1E1AF5BEC();
    v143 = *(*v16 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    swift_allocObject();
    *(v16 + v143) = sub_1E1AF5BEC();
    *(v16 + *(*v16 + 736)) = 0;
    v144 = (v16 + *(*v16 + 752));
    *v144 = 0;
    v144[1] = 0;
    sub_1E134FD1C(v190, v16 + qword_1EE2169A8, &unk_1ECEB4B60);
    sub_1E134FD1C(&v200, v16 + *(*v16 + 744), &qword_1ECEB24F8);
    v145 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

    *(v16 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v146);
    if (v46 && v139)
    {
      sub_1E1AF50BC();
      v199 = v139;

      v147 = v167;
      sub_1E1AF35FC();
      v148 = sub_1E1AF41CC();
      (*(v168 + 8))(v147, v169);
      v149 = v148;
    }

    else
    {
    }

    v152 = sub_1E13C5A14(v149, 0, 0, 0);
    v155 = *(*v152 + 1112);

    *(v152 + qword_1EE2169B8) = v155(v46);

    sub_1E13CA1E8(0);
    swift_unknownObjectRelease();

    sub_1E1308058(v194, &qword_1ECEB24F8);
    __swift_destroy_boxed_opaque_existential_1(v195);
    __swift_destroy_boxed_opaque_existential_1(v196);
    (*(v191 + 8))(v197, v193);
    sub_1E1308058(&v200, &qword_1ECEB24F8);
    v154 = v190;
  }

  sub_1E1308058(v154, &unk_1ECEB4B60);
  type metadata accessor for FastImpressionsV5Tracker();
  v156 = swift_dynamicCastClass();
  if (v156)
  {
    v157 = v156;
    swift_beginAccess();
    *(v157 + 24) = &protocol witness table for ProductDiffablePagePresenter;
    swift_unknownObjectWeakAssign();
    v158 = *(v152 + qword_1EE1E9670);
    if (v158)
    {
      v159 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v160 = *(v158 + 32);
      *(v158 + 32) = sub_1E19A1040;
      *(v158 + 40) = v159;

      sub_1E1300EA8(v160);
    }
  }

  return v152;
}

uint64_t sub_1E199983C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EE1D29E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1E1AF3C1C();
    v2 = __swift_project_value_buffer(v1, qword_1EE1D29E8);
    sub_1E183B8E8(v2);
  }

  return result;
}

uint64_t ProductDiffablePagePresenter.adamId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + qword_1EE216608);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ProductDiffablePagePresenter.alwaysAllowReviews.getter()
{
  v1 = qword_1EE216638;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ProductDiffablePagePresenter.hasDarkUserInterfaceStyle.getter()
{
  v1 = qword_1EE216618;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ProductDiffablePagePresenter.hasDarkUserInterfaceStyle.setter(char a1)
{
  v3 = qword_1EE216618;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ProductDiffablePagePresenter.titleOfferDisplayProperties.getter()
{
  v1 = *(v0 + qword_1EE1E9620);
  v2 = *(*(v0 + qword_1EE1E9638) + 40);
  if (!v2)
  {
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
  }

  if (!v1)
  {
    v5 = 16;
    goto LABEL_5;
  }

  v4 = *(v1 + 96);
  v5 = *(v1 + 97);
  if (v4 == 7)
  {
LABEL_5:
    LOBYTE(v4) = *(v3 + 96);
  }

  v45 = v4;
  v44 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  v42 = *(v3 + 40);
  v43 = *(v3 + 24);
  v8 = *(v3 + 64);
  v41 = *(v3 + 56);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
  if (v5 == 16)
  {
    LOBYTE(v5) = *(v3 + 97);
  }

  v12 = *(v3 + 104);
  v13 = *(v3 + 112);
  v26 = v13;
  v27 = v12;
  v36 = *(v3 + 121);
  v37 = *(v3 + 120);
  v34 = *(v3 + 123);
  v35 = *(v3 + 122);
  v32 = v5;
  v33 = *(v3 + 124);
  v40 = *(v3 + 126);
  v39 = *(v3 + 128);
  v38 = *(v3 + 136);
  sub_1E134FD1C(v3 + 144, v46, &qword_1ECEB2DF0);

  sub_1E139D580(v12, v13);
  v14 = *(v3 + 240);
  v31 = *(v3 + 232);
  v25 = v10;
  v15 = v6;
  v16 = *(v3 + 224);
  v17 = v11;
  v18 = v7;
  v19 = *(v3 + 200);
  v29 = *(v3 + 192);
  v30 = *(v3 + 216);
  v20 = v9;
  v21 = v8;
  v22 = *(v3 + 184);
  v28 = *(v3 + 176);

  type metadata accessor for OfferDisplayProperties();
  result = swift_allocObject();
  *(result + 16) = v44;
  *(result + 24) = v43;
  *(result + 32) = v15;
  *(result + 40) = v42;
  *(result + 48) = v18;
  *(result + 56) = v41;
  *(result + 64) = v21;
  *(result + 72) = v20;
  *(result + 80) = v25;
  *(result + 88) = v17;
  *(result + 96) = v45;
  *(result + 97) = v32;
  *(result + 104) = v27;
  *(result + 112) = v26;
  *(result + 120) = v37;
  *(result + 121) = v36;
  *(result + 122) = v35;
  *(result + 123) = v34;
  *(result + 124) = v33;
  *(result + 125) = 0;
  *(result + 126) = v40;
  *(result + 128) = v39;
  *(result + 136) = v38;
  v24 = v46[1];
  *(result + 144) = v46[0];
  *(result + 160) = v24;
  *(result + 176) = v28;
  *(result + 184) = v22;
  *(result + 192) = v29;
  *(result + 200) = v19;
  *(result + 208) = 0;
  *(result + 216) = v30;
  *(result + 224) = v16;
  *(result + 232) = v31;
  *(result + 240) = v14;
  return result;
}

uint64_t sub_1E1999D90(uint64_t (*a1)(uint64_t a1))
{
  v115 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA2C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v110 = &v102 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA2C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v111 = &v102 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v105 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v114 = (&v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v120 = (&v102 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v102 - v11;
  v124 = v1[2];
  sub_1E134FD1C(v1 + qword_1EE2169A8, &v102 - v11, &unk_1ECEB4B60);
  v112 = *(v1 + qword_1EE216630);
  sub_1E1300B24(v1 + qword_1EE1E9650, v128);
  v12 = *(v1 + qword_1EE1E9638);
  sub_1E1300B24(v1 + qword_1EE1D6470, v127);
  v125 = *(v1 + qword_1EE1E9678);
  v13 = *(v1 + qword_1EE1E9690);
  v14 = *(v1 + qword_1EE1E9698);
  v15 = *(v1 + qword_1EE1E9608);
  swift_beginAccess();
  v122 = v1[3];
  swift_beginAccess();
  v16 = v1[4];
  v17 = *(v1 + qword_1EE1E9668 + 16);
  v129 = *(v1 + qword_1EE1E9668);
  *v130 = v17;
  *&v130[9] = *(v1 + qword_1EE1E9668 + 25);
  v109 = type metadata accessor for ProductDiffablePageContentPresenter();
  v18 = swift_allocObject();
  *(v18 + qword_1EE1E7298) = 1;
  *(v18 + qword_1EE1E7278) = 0;
  v19 = qword_1EE1D3C38;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA258);
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v22(v18 + v19, 1, 1, v20);
  v24 = qword_1EE1E7248;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA260);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v108 = v25;
  v107 = v27;
  v106 = v26 + 56;
  (v27)(v18 + v24, 1, 1);
  v119 = v20;
  v118 = v22;
  v116 = v23;
  v22(v18 + qword_1EE1E7250, 1, 1, v20);
  *(v18 + qword_1EE216528) = 0;
  *(v18 + qword_1EE1E7258) = 0;
  v28 = qword_1EE1E7260;
  v29 = sub_1E1AEFEAC();
  (*(*(v29 - 8) + 56))(v18 + v28, 1, 1, v29);
  *(v18 + qword_1EE1E7270) = 0;
  *(v18 + qword_1EE1E7280) = v112;
  sub_1E1300B24(v128, v18 + qword_1EE1E7290);
  *(v18 + qword_1EE1E7268) = v12;
  sub_1E1300B24(v127, v18 + qword_1EE1D3C40);
  *(v18 + qword_1EE1E72A0) = v125;
  v113 = v13;
  *(v18 + qword_1EE1E72A8) = v13;
  v117 = v14;
  *(v18 + qword_1EE1E72B0) = v14;
  *(v18 + qword_1EE1E7240) = v15;
  type metadata accessor for JSIntentDispatcher();
  v121 = v16;

  swift_unknownObjectRetain();
  *&v112 = v12;

  sub_1E134FD1C(&v129, v126, &qword_1ECEBA2B8);
  sub_1E1AF416C();
  *(v18 + qword_1EE1E7288) = v126[0];
  v30 = v120;
  sub_1E134FD1C(v123, v120, &unk_1ECEB4B60);
  sub_1E134FD1C(v30, v114, &unk_1ECEB4B60);
  *(v18 + qword_1EE1E9D48) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(v18 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v32 = qword_1EE2166A0;

  *(v18 + v32) = sub_1E159D6F0(v31);
  v33 = (v18 + qword_1EE1E9E00);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v18 + qword_1EE1E9EA0);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v18 + qword_1EE1E9E08);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v18 + qword_1EE1E9DF0);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v18 + qword_1EE1E9E98);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v18 + qword_1EE216698);
  *v38 = 0u;
  v38[1] = 0u;
  *(v38 + 25) = 0u;
  *(v18 + qword_1EE2166D0) = 0;
  *(v18 + qword_1EE1E9D50) = 0;
  *(v18 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v18 + qword_1EE2166C8) = 0;
  v39 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32B0);
  swift_allocObject();
  *(v18 + v39) = sub_1E1AF5BEC();
  v40 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v18 + v40) = sub_1E1AF5BEC();
  v41 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32C0);
  swift_allocObject();
  *(v18 + v41) = sub_1E1AF5BEC();
  v42 = qword_1EE2166B0;
  swift_allocObject();
  *(v18 + v42) = sub_1E1AF5BEC();
  v43 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v18 + v43) = sub_1E1AF5BEC();
  v44 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v45 = sub_1E1AF5BEC();
  sub_1E1308058(v120, &unk_1ECEB4B60);
  *(v18 + v44) = v45;
  v46 = qword_1EE1E9DD8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v48 = *(*(v47 - 8) + 56);
  v48(v18 + v46, 1, 1, v47);
  v48(v18 + qword_1EE1E9DE0, 1, 1, v47);
  *(v18 + 16) = v124;
  sub_1E137F600(v114, v18 + qword_1EE216678, &unk_1ECEB4B60);
  v49 = *v33;
  *v33 = 0;
  v33[1] = 0;
  sub_1E1300EA8(v49);
  v50 = *v35;
  *v35 = 0;
  v35[1] = 0;
  sub_1E1300EA8(v50);
  v51 = *v34;
  *v34 = 0;
  v34[1] = 0;
  sub_1E1300EA8(v51);
  v52 = *v36;
  *v36 = 0;
  v36[1] = 0;
  sub_1E1300EA8(v52);
  v53 = *v37;
  *v37 = 0;
  v37[1] = 0;
  sub_1E1300EA8(v53);
  *(v18 + qword_1EE1E9E90) = v122;
  *(v18 + qword_1EE216690) = v121;
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v114 = v55;
  v56 = v115;
  v55[2] = v54;
  v55[3] = v56;
  v57 = v125;
  v55[4] = v125;
  v102 = qword_1EE1E7288;
  v103 = *(v18 + qword_1EE1E7288);
  v58 = v103;
  v59 = v120;
  sub_1E134FD1C(v123, v120, &unk_1ECEB4B60);
  v60 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v61 = (v60 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v60 + v104 + 55) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  sub_1E137F600(v59, v64 + v60, &unk_1ECEB4B60);
  v65 = (v64 + v61);
  v66 = *v130;
  *v65 = v129;
  v65[1] = v66;
  *(v65 + 25) = *&v130[9];
  v67 = v124;
  *(v64 + v62) = v124;
  v68 = v121;
  *(v64 + v63) = v121;
  v69 = v113;
  *(v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = swift_allocObject();
  v71[2] = v70;
  v71[3] = v57;
  v72 = v117;
  v71[4] = v69;
  v71[5] = v72;
  v71[6] = v115;
  v71[7] = v67;
  v120 = *(v18 + v102);
  v73 = v120;
  v74 = swift_allocObject();
  *(v74 + 2) = v67;
  *(v74 + 3) = v68;
  *(v74 + 4) = v73;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1E19A0E98;
  *(v75 + 24) = v64;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1E1543608;
  *(v76 + 24) = v75;
  v77 = (v18 + qword_1EE1E9E00);
  v78 = *(v18 + qword_1EE1E9E00);
  *v77 = sub_1E13E24A0;
  v77[1] = v76;
  swift_retain_n();
  swift_retain_n();

  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v124 = v64;

  sub_1E1300EA8(v78);
  v79 = swift_allocObject();
  v80 = v114;
  *(v79 + 16) = sub_1E19A0E8C;
  *(v79 + 24) = v80;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1E154366C;
  *(v81 + 24) = v79;
  v82 = (v18 + qword_1EE1E9EA0);
  v83 = *(v18 + qword_1EE1E9EA0);
  *v82 = sub_1E13E24C0;
  v82[1] = v81;

  sub_1E1300EA8(v83);
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1E19A0F64;
  *(v84 + 24) = v71;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1E1543638;
  *(v85 + 24) = v84;
  v86 = (v18 + qword_1EE1E9E08);
  v87 = *(v18 + qword_1EE1E9E08);
  *v86 = sub_1E13E24B0;
  v86[1] = v85;
  v120 = v71;

  sub_1E1300EA8(v87);
  v88 = (v18 + qword_1EE1E9DF0);
  v89 = *(v18 + qword_1EE1E9DF0);
  *v88 = sub_1E19A0FBC;
  v88[1] = v74;
  v115 = v74;

  sub_1E1300EA8(v89);
  v90 = (v18 + qword_1EE1E9E98);
  v91 = *(v18 + qword_1EE1E9E98);
  v92 = *(v18 + qword_1EE1E9E98 + 8);
  if (v91)
  {
    v93 = swift_allocObject();
    *(v93 + 16) = v91;
    *(v93 + 24) = v92;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_1E1543608;
    *(v94 + 24) = v93;
    v95 = sub_1E13E24A0;
  }

  else
  {
    v95 = 0;
    v94 = *(v18 + qword_1EE1E9E98 + 8);
  }

  *v90 = v95;
  v90[1] = v94;
  sub_1E1300E34(v91);
  sub_1E1300EA8(v91);
  *(v112 + 32) = &off_1F5C528A8;
  swift_unknownObjectWeakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3098);
  sub_1E1302CD4(&qword_1EE1E3C58, &qword_1ECEB3098);
  sub_1E1AF3CDC();
  v96 = v111;
  sub_1E1AF3CEC();
  __swift_destroy_boxed_opaque_existential_1(v126);
  v118(v96, 0, 1, v119);
  v97 = qword_1EE1D3C38;
  swift_beginAccess();
  sub_1E13619D8(v96, v18 + v97, &qword_1ECEBA2C0);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC70);
  sub_1E1302CD4(&unk_1EE1E3C60, &qword_1ECEBBC70);
  sub_1E1AF3CDC();
  v98 = v110;
  sub_1E1AF3CEC();
  __swift_destroy_boxed_opaque_existential_1(v126);
  v107(v98, 0, 1, v108);
  v99 = qword_1EE1E7248;
  swift_beginAccess();
  sub_1E13619D8(v98, v18 + v99, &qword_1ECEBA2C8);
  swift_endAccess();
  sub_1E1AF3CDC();
  sub_1E1AF3CEC();

  __swift_destroy_boxed_opaque_existential_1(v126);
  __swift_destroy_boxed_opaque_existential_1(v127);
  __swift_destroy_boxed_opaque_existential_1(v128);
  sub_1E1308058(v123, &unk_1ECEB4B60);
  v118(v96, 0, 1, v119);
  v100 = qword_1EE1E7250;
  swift_beginAccess();
  sub_1E13619D8(v96, v18 + v100, &qword_1ECEBA2C0);
  swift_endAccess();

  return v18;
}

void sub_1E199AFA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  sub_1E1A7CFF8(*a1, *(a1 + 8), *(a1 + 16));
  if ((v2 & 0x80000000) == 0 && (v2 & 1) == 0)
  {
    v4 = qword_1EE1E9680;
    if (*(v1 + qword_1EE1E9680))
    {
      v5[0] = *(v1 + qword_1EE1E9680);
      v5[1] = v1;
      v5[4] = v3;
      swift_retain_n();

      sub_1E1AF5BCC();

      sub_1E1308058(v5, &qword_1ECEB24C8);
      *(v1 + v4) = 0;
    }

    ProductDiffablePagePresenter.reconfigureProductTopLockup()();
  }
}

Swift::Void __swiftcall ProductDiffablePagePresenter.reconfigureProductTopLockup()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  if (qword_1EE1F1D28 != -1)
  {
    swift_once();
  }

  sub_1E134E724(&unk_1EE216D48, v10);
  DiffablePageContentIdentifier.init(_:)(v10, v2 + 32);
  v3 = sub_1E13C17AC();
  if (v3)
  {
  }

  v4 = v3 == 0;
  v5 = *(v1 + *(*v1 + 688));
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = 352;
  *(v6 + 34) = v4;
  *(v6 + 35) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E19A08D0;
  *(v7 + 24) = v6;
  v10[4] = sub_1E137AFA8;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1E1551FBC;
  v10[3] = &block_descriptor_93;
  v8 = _Block_copy(v10);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1E199B2BC(void *a1, char a2)
{
  sub_1E1A8006C(a1, a2);
  v4 = *(a1 + qword_1EE2168A8);
  v6 = v4[2];
  v5 = v4[3];
  v7 = (v2 + qword_1EE216608);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;

  *(v2 + qword_1EE1E9658) = *(a1 + qword_1EE216940);

  v8 = *(a1 + qword_1EE2158C8);
  v9 = qword_1EE215688;
  swift_beginAccess();
  *(v2 + v9) = v8;

  v10 = *(a1 + qword_1EE216950);
  v11 = qword_1EE216640;
  swift_beginAccess();
  *(v2 + v11) = v10;

  LOBYTE(v10) = *(a1 + qword_1EE2168E8);
  v12 = qword_1EE216618;
  swift_beginAccess();
  *(v2 + v12) = v10;
  v13 = *(a1 + qword_1EE2168D8);
  if (!v13)
  {
    v14 = v4[30];
    if (v14)
    {
      v53 = *(v14 + 16);
      v15 = *(v14 + 32);
      v51 = *(v14 + 40);
      v52 = *(v14 + 24);
      v62 = *(v14 + 48);
      v49 = *(v14 + 64);
      v50 = *(v14 + 56);
      v46 = *(v14 + 80);
      v47 = *(v14 + 72);
      v16 = *(v14 + 104);
      v17 = *(v14 + 112);
      v42 = v16;
      v40 = *(v14 + 88);
      v41 = v17;
      v57 = *(v14 + 121);
      v58 = *(v14 + 120);
      v55 = *(v14 + 123);
      v56 = *(v14 + 122);
      v54 = *(v14 + 124);
      v61 = *(v14 + 126);
      v60 = *(v14 + 128);
      v59 = *(v14 + 136);
      sub_1E134FD1C(v14 + 144, v63, &qword_1ECEB2DF0);

      v18 = v15;

      sub_1E139D580(v16, v17);
      v19 = *(v14 + 240);
      v48 = *(v14 + 232);
      v20 = *(v14 + 224);
      v21 = *(v14 + 200);
      v44 = *(v14 + 192);
      v45 = *(v14 + 216);
      v22 = *(v14 + 184);
      v43 = *(v14 + 176);

      type metadata accessor for OfferDisplayProperties();
      v13 = swift_allocObject();
      *(v13 + 16) = v53;
      *(v13 + 24) = v52;
      *(v13 + 32) = v18;
      *(v13 + 40) = v51;
      *(v13 + 48) = v62;
      *(v13 + 56) = v50;
      *(v13 + 64) = v49;
      *(v13 + 72) = v47;
      *(v13 + 80) = v46;
      *(v13 + 88) = v40;
      *(v13 + 96) = 1538;
      *(v13 + 104) = v42;
      *(v13 + 112) = v41;
      *(v13 + 120) = v58;
      *(v13 + 121) = v57;
      *(v13 + 122) = v56;
      *(v13 + 123) = v55;
      *(v13 + 124) = v54;
      *(v13 + 125) = 0;
      *(v13 + 126) = v61;
      *(v13 + 128) = v60;
      *(v13 + 136) = v59;
      v23 = v63[1];
      *(v13 + 144) = v63[0];
      *(v13 + 160) = v23;
      *(v13 + 176) = v43;
      *(v13 + 184) = v22;
      *(v13 + 192) = v44;
      *(v13 + 200) = v21;
      *(v13 + 208) = 0;
      *(v13 + 216) = v45;
      *(v13 + 224) = v20;
      *(v13 + 232) = v48;
      *(v13 + 240) = v19;
    }

    else
    {
      v13 = 0;
    }
  }

  *(v2 + qword_1EE1E9620) = v13;

  v24 = 0;
  if (*(a1 + qword_1EE2168F0 + 8))
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = *(a1 + qword_1EE216930 + 8);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (v27)
    {
      v30 = *(a1 + qword_1EE216930);
      v29 = *(a1 + qword_1EE2168F0);
      v26 = v4[4];
      v28 = v4[5];
      v24 = v4[2];
      v25 = v4[3];

      v31 = v27;
    }
  }

  v32 = (v2 + qword_1EE1E9660);
  v33 = *(v2 + qword_1EE1E9660);
  v34 = *(v2 + qword_1EE1E9660 + 8);
  *v32 = v24;
  v32[1] = v25;
  v32[2] = v26;
  v32[3] = v28;
  v32[4] = v29;
  v32[5] = v30;
  v32[6] = v31;
  sub_1E19A090C(v33, v34);
  v35 = *(a1 + qword_1EE216968);
  v36 = qword_1EE216648;
  swift_beginAccess();
  *(v2 + v36) = v35;

  v37 = *(a1 + qword_1EE216910);
  v38 = qword_1EE216620;
  swift_beginAccess();
  *(v2 + v38) = v37;

  sub_1E199B7B0();
  return sub_1E199BC08();
}

void sub_1E199B7B0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1E1AF591C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v31 - v8;
  v10 = (v1 + qword_1EE1E9660);
  v11 = *(v1 + qword_1EE1E9660 + 8);
  if (v11)
  {
    v31[1] = v2;
    v32 = v6;
    v33 = v4;
    v34 = v3;
    v12 = *v10;
    v13 = v10[2];
    v14 = v10[3];
    v16 = v10[4];
    v15 = v10[5];
    v17 = v10[6];
    v37 = *v10;
    v38 = v11;
    v39 = v13;
    v40 = v14;
    v35 = v16;
    v36 = v15;
    v41 = v16;
    v42 = v15;
    v43 = v17;
    v18 = *(v1 + qword_1EE216630);
    v19 = *(v1 + qword_1EE216630 + 8);

    if (sub_1E199580C(v18, v19))
    {
      v20 = sub_1E1AF649C();
      (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v1;
      v21[5] = v12;
      v21[6] = v11;
      v21[7] = v13;
      v23 = v35;
      v22 = v36;
      v21[8] = v14;
      v21[9] = v23;
      v21[10] = v22;
      v21[11] = v17;
      sub_1E19A0E3C(v12, v11);

      sub_1E154AF74(0, 0, v9, &unk_1E1B48420, v21);

      v37 = v12;
      v38 = v11;
      AdamId.numberValue.getter();
      if (v24)
      {
        v25 = v24;
        v26 = [v24 longLongValue];
        sub_1E19A090C(v12, v11);

        v27 = [objc_opt_self() defaultService];
        [v27 refreshUpdateForApp_];
      }

      else
      {
        v28 = sub_1E19A090C(v12, v11);
        v29 = v32;
        sub_1E1A1E038(v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF382C();
        v30 = v34;
        sub_1E1AF54AC();

        (*(v33 + 8))(v29, v30);
      }
    }

    else
    {

      sub_1E19A090C(v12, v11);
    }
  }
}

uint64_t sub_1E199BC08()
{
  v1 = v0;
  v2 = (v0 + qword_1EE216608);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  v5 = (v0 + qword_1EE1E9640);
  v6 = *(v0 + qword_1EE1E9640 + 8);
  if (!v3)
  {
    if (!v6)
    {
    }

    v9 = 0;
LABEL_12:

    v10 = v5[1];
    if (!v10)
    {
LABEL_25:
      if (!v3)
      {
        goto LABEL_69;
      }

      v9 = v3;
      v19 = v5[1];
      if (!v19)
      {
        goto LABEL_39;
      }

LABEL_30:
      if (v3 == v19 && v4 == *v5)
      {
      }

      else
      {
        v21 = sub_1E1AF74AC();

        if ((v21 & 1) == 0)
        {
LABEL_40:
          v22 = *(v1 + qword_1EE216630 + 8);
          ObjectType = swift_getObjectType();
          v50 = v4;
          v51 = v9;
          (*(v22 + 56))(&v50, ObjectType, v22);
          v25 = v24;

          v26 = swift_getObjectType();
          v27 = *(v25 + 16);
          v27(&v50, v26, v25);
          if (v56 >> 60)
          {
            if (v56 >> 60 != 8)
            {
LABEL_47:
              sub_1E139CEA8(&v50);
LABEL_50:
              LOBYTE(v30) = 1;
LABEL_51:
              *(v1 + qword_1EE1E9618) = v30;
              v31 = 1;
              (*(v25 + 40))(v40, 1, v26, v25);
              v32 = v43 >> 60;
              if (v43 >> 60 != 2 && v32 != 7)
              {
                if (v32 != 8 || v44 || v43 != 0x8000000000000000 || v40[0] != 1 || (v33 = vorrq_s8(v41, v42), *&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | v40[1]))
                {
                  v31 = 0;
                }
              }

              sub_1E139CEA8(v40);
              *(v1 + qword_1EE1E9688) = v31;
              v27(v45, v26, v25);
              v36 = 1;
              if (v48 >> 60 != 3)
              {
                if (v48 >> 60 != 8 || ((v34 = v47 | v49, v35 = v45[3] | v45[2] | v45[1], v48 != 0x8000000000000000) || v34 | v45[0] | v46 | v35) && (v48 != 0x8000000000000000 || v45[0] != 4 || v34 | v46 | v35))
                {
                  v36 = 0;
                }
              }

              sub_1E139CEA8(v45);
              *(v1 + qword_1EE1E9610) = v36;
              v37 = swift_allocObject();
              swift_weakInit();
              v38 = *(v25 + 72);

              v38(v1, sub_1E19A0CD4, v37, v26, v25);
              swift_unknownObjectRelease();

              goto LABEL_69;
            }

            v28 = v55 | v57;
            v29 = v53 | v52 | v51;
            if (v56 != 0x8000000000000000 || v28 | v50 | v54 | v29)
            {
              if (v56 == 0x8000000000000000 && v50 == 4)
              {
                v30 = v28 | v54 | v29;
                if (!v30)
                {
                  goto LABEL_51;
                }
              }

              goto LABEL_47;
            }
          }

          else if (v50 != 1)
          {
            goto LABEL_50;
          }

          LOBYTE(v30) = 0;
          goto LABEL_51;
        }
      }

LABEL_69:
      *v5 = v4;
      v5[1] = v3;
    }

    v11 = *v5;
    if (!v3)
    {

LABEL_24:
      v14 = *(v1 + qword_1EE216630 + 8);
      v15 = swift_getObjectType();
      v50 = v11;
      v51 = v10;
      (*(v14 + 56))(&v50, v15, v14);
      v17 = v16;

      v18 = swift_getObjectType();
      (*(v17 + 80))(v1, v18, v17);
      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (!v6)
  {

    v9 = v3;
    goto LABEL_12;
  }

  if (v4 != *v5 || v3 != v6)
  {
    v8 = sub_1E1AF74AC();

    if (v8)
    {
    }

    v10 = v5[1];
    if (!v10)
    {
      v9 = v3;
      goto LABEL_39;
    }

    v11 = *v5;
    v9 = v3;
LABEL_19:
    if (v11 == v4 && v10 == v3)
    {
    }

    else
    {
      v13 = sub_1E1AF74AC();

      if ((v13 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v19 = v5[1];
    if (v19)
    {
      goto LABEL_30;
    }

LABEL_39:

    goto LABEL_40;
  }
}

uint64_t sub_1E199C15C(uint64_t result)
{
  isEscapingClosureAtFileLocation = *result;
  v3 = *(result + 8);
  if ((v3 & 0xF0) != 0x10)
  {
    goto LABEL_14;
  }

  v4 = (isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8);
  if (isEscapingClosureAtFileLocation >> 62)
  {
    goto LABEL_17;
  }

  if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_4:
    if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
    {
      v5 = v1;
      v6 = MEMORY[0x1E68FFD80](0, isEscapingClosureAtFileLocation);
    }

    else
    {
      if (!v4[2].isa)
      {
        __break(1u);
        return result;
      }

      v5 = v1;
      v6 = *(isEscapingClosureAtFileLocation + 32);
    }

    LOBYTE(v16) = *(v6 + 16);
    if (Shelf.ContentType.rawValue.getter() == 0x42746375646F7270 && v7 == 0xEC00000065676461)
    {

      v1 = v5;
    }

    else
    {
      v8 = sub_1E1AF74AC();

      v1 = v5;
      if ((v8 & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    v9 = *(v1 + *(*v1 + 688));
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = isEscapingClosureAtFileLocation;
    *(v10 + 32) = v3;
    *(v10 + 33) = 1;
    *(v10 + 35) = 0;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1E19A1044;
    *(v11 + 24) = v10;
    v20 = sub_1E13E2A70;
    v21 = v11;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1E1551FBC;
    v19 = &block_descriptor_92;
    v12 = _Block_copy(&v16);

    sub_1E13E2150(isEscapingClosureAtFileLocation, v3);

    dispatch_sync(v9, v12);

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
LABEL_14:
    while (1)
    {
      v4 = *(v1 + *(*v1 + 688));
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      *(v13 + 24) = isEscapingClosureAtFileLocation;
      *(v13 + 32) = v3;
      *(v13 + 33) = 257;
      *(v13 + 35) = 0;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1E19A08D0;
      *(v14 + 24) = v13;
      v20 = sub_1E13E2A70;
      v21 = v14;
      v16 = MEMORY[0x1E69E9820];
      v17 = 1107296256;
      v18 = sub_1E1551FBC;
      v19 = &block_descriptor_81;
      v15 = _Block_copy(&v16);

      sub_1E13E2150(isEscapingClosureAtFileLocation, v3);

      dispatch_sync(v4, v15);
      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_17:
      if (sub_1E1AF71CC() == 1)
      {
        result = sub_1E1AF71CC();
        if (result)
        {
          goto LABEL_4;
        }
      }
    }
  }

  return result;
}

Swift::Void __swiftcall ProductDiffablePagePresenter.reloadProductReviewsSection()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-v3];
  v5 = *(*v0 + 696);
  swift_beginAccess();
  sub_1E134FD1C(v0 + v5, v4, &qword_1ECEB24A0);
  v6 = *&v4[*(v2 + 44)];
  v14 = v4;
  v15 = sub_1E199C7C0;
  v16 = 0;

  v7 = sub_1E1683A94(sub_1E19A08E8, v13, v6);
  sub_1E1308058(v4, &qword_1ECEB24A0);
  v8 = *(v0 + *(*v0 + 688));
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v7;
  *(v9 + 32) = 65824;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E19A1044;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1E13E2A70;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1551FBC;
  aBlock[3] = &block_descriptor_19_1;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1E199C7C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  sub_1E1AF3DBC();

  if (Shelf.ContentType.rawValue.getter() == 0x52746375646F7270 && v0 == 0xED00007765697665)
  {
    goto LABEL_3;
  }

  v1 = sub_1E1AF74AC();

  if (v1)
  {
    goto LABEL_5;
  }

  sub_1E1AF3DBC();

  if (Shelf.ContentType.rawValue.getter() == 0x7553776569766572 && v4 == 0xED00007972616D6DLL)
  {
LABEL_3:

LABEL_5:
    v2 = 1;
    return v2 & 1;
  }

  v5 = sub_1E1AF74AC();

  if (v5)
  {
    goto LABEL_5;
  }

  sub_1E1AF3DBC();

  if (Shelf.ContentType.rawValue.getter() == 0xD000000000000013 && 0x80000001E1B57E00 == v6)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1E1AF74AC();
  }

  return v2 & 1;
}

BOOL sub_1E199C998()
{
  v0 = sub_1E13C17AC();
  if (v0)
  {
  }

  return v0 == 0;
}

uint64_t ProductDiffablePagePresenter.didSelectDeveloper(sender:)(uint64_t result)
{
  if (*(v1 + qword_1EE1E9658))
  {
    v2 = *(v1 + qword_1EE1E9658);
    sub_1E134FD1C(result, &v3, &qword_1ECEB2DF0);
    swift_retain_n();
    sub_1E1AF5BCC();

    return sub_1E1308058(&v2, &qword_1ECEB24C8);
  }

  return result;
}

uint64_t ProductDiffablePagePresenter.didSelectShare(sender:)(uint64_t a1)
{
  v3 = qword_1EE216640;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    v6 = v5;
    sub_1E134FD1C(a1, &v7, &qword_1ECEB2DF0);
    swift_retain_n();
    sub_1E1AF5BCC();

    return sub_1E1308058(&v6, &qword_1ECEB24C8);
  }

  return result;
}

uint64_t ProductDiffablePagePresenter.didSelectExpandMedia(on:sender:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - v6;
  v8 = *(v1 + qword_1EE2169B8);
  if (v8 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC58), (v9 = swift_dynamicCastClass()) != 0) && (v10 = *(v9 + qword_1EE1E9D48)) != 0)
  {
    v11 = (v10 + *(*v10 + 184));
  }

  else
  {
    v11 = &byte_1ECEB71A8;
  }

  swift_beginAccess();
  if (v8)
  {
    v12 = byte_1E1B48470[*v11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC58);
    if (swift_dynamicCastClass())
    {

      sub_1E1994D70(v12);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E1B02CC0;
  v14 = (*(v5 + 16))(v7, a1, v4);
  MEMORY[0x1EEE9AC00](v14);
  *(&v21 - 2) = type metadata accessor for Shelf();
  *(&v21 - 1) = sub_1E19A0FD8(&qword_1EE1E5478, type metadata accessor for Shelf);
  swift_getKeyPath();
  sub_1E1AF3DAC();

  (*(v5 + 8))(v7, v4);
  v15 = *(v2 + *(*v2 + 688));
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v13;
  *(v16 + 32) = 65824;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1E19A1044;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1E13E2A70;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1551FBC;
  aBlock[3] = &block_descriptor_30;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v15, v18);
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ProductDiffablePagePresenter.didChangePageWidth(_:)(AppStoreKit::ProductDiffablePagePresenter::PageWidth a1)
{
  v2 = *(v1 + qword_1EE2169B8);
  if (*a1 == 1)
  {
    if (v2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC58), (v3 = swift_dynamicCastClass()) != 0) && (v4 = *(v3 + qword_1EE1E9D48)) != 0)
    {
      v5 = (v4 + *(*v4 + 184));
    }

    else
    {
      v5 = &byte_1ECEB71A8;
    }

    swift_beginAccess();
    v8 = &unk_1E1B4847C;
    if (!v2)
    {
      return;
    }

LABEL_15:
    v9 = v8[*v5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC58);
    if (swift_dynamicCastClass())
    {

      sub_1E1994D70(v9);
    }

    return;
  }

  if (v2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC58), (v6 = swift_dynamicCastClass()) != 0) && (v7 = *(v6 + qword_1EE1E9D48)) != 0)
  {
    v5 = (v7 + *(*v7 + 184));
  }

  else
  {
    v5 = &byte_1ECEB71A8;
  }

  swift_beginAccess();
  v8 = &unk_1E1B48488;
  if (v2)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1E199D0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    ObjectType = swift_getObjectType();
    v10 = *(a2 + 16);
    v10(&v17, ObjectType, a2);
    sub_1E19D91CC(&v17, 1);
    v15[0] = v17;
    v15[1] = v18;
    v15[2] = v19;
    v15[3] = v20;
    sub_1E139CEA8(v15);
    sub_1E199D328(a1, a2);
    sub_1E199D784(a1, a2);
    v11 = *(v8 + qword_1EE1E9698);
    v12 = sub_1E1AF649C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = a2;
    v13[6] = v11;
    swift_unknownObjectRetain();

    sub_1E154AF74(0, 0, v6, &unk_1E1B05E40, v13);

    sub_1E199B7B0();
    v10(&v17, ObjectType, a2);
    sub_1E199DAF8(&v17);
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    v16[3] = v20;
    sub_1E139CEA8(v16);
    v10(v14, ObjectType, a2);
    sub_1E199DCD4(v14);
    v17 = v14[0];
    v18 = v14[1];
    v19 = v14[2];
    v20 = v14[3];
    sub_1E139CEA8(&v17);
    sub_1E199DEF8();
  }

  return result;
}

void sub_1E199D328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &aBlock[-1] - v6;
  v8 = qword_1EE1E9618;
  v9 = *(v2 + qword_1EE1E9618);
  if (v9 != 2)
  {
    ObjectType = swift_getObjectType();
    v11 = *(a2 + 16);
    v11(v33, ObjectType, a2);
    if (v36 >> 60)
    {
      if (v36 >> 60 != 8 || ((v12 = v35 | v37, v13 = v33[3] | v33[2] | v33[1], v36 != 0x8000000000000000) || v12 | v33[0] | v34 | v13) && (v36 != 0x8000000000000000 || v33[0] != 4 || v12 | v34 | v13))
      {
        sub_1E139CEA8(v33);
        if (v9)
        {
          return;
        }

        goto LABEL_15;
      }
    }

    else if (LOBYTE(v33[0]) != 1)
    {
      if (v9)
      {
        return;
      }

LABEL_15:
      v11(v28, ObjectType, a2);
      if (v31 >> 60)
      {
        if (v31 >> 60 != 8)
        {
LABEL_22:
          sub_1E139CEA8(v28);
LABEL_25:
          LOBYTE(v16) = 1;
LABEL_26:
          *(v2 + v8) = v16;
          v17 = *(*v2 + 696);
          swift_beginAccess();
          v18 = sub_1E134FD1C(v2 + v17, v7, &qword_1ECEB24A0);
          v19 = *&v7[*(v5 + 36)];
          MEMORY[0x1EEE9AC00](v18);
          *(&v26 - 4) = v7;
          *(&v26 - 3) = sub_1E199FC74;
          *(&v26 - 2) = 0;

          v20 = sub_1E1683A94(sub_1E19A1060, (&v26 - 6), v19);
          sub_1E1308058(v7, &qword_1ECEB24A0);
          v21 = *(v2 + *(*v2 + 688));
          v22 = swift_allocObject();
          *(v22 + 16) = v3;
          *(v22 + 24) = v20;
          *(v22 + 32) = 65824;
          v23 = swift_allocObject();
          *(v23 + 16) = sub_1E19A1044;
          *(v23 + 24) = v22;
          aBlock[4] = sub_1E13E2A70;
          aBlock[5] = v23;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1E1551FBC;
          aBlock[3] = &block_descriptor_134;
          v24 = _Block_copy(aBlock);

          dispatch_sync(v21, v24);
          _Block_release(v24);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
          }

          return;
        }

        v14 = v30 | v32;
        v15 = v28[3] | v28[2] | v28[1];
        if (v31 != 0x8000000000000000 || v14 | v28[0] | v29 | v15)
        {
          if (v31 == 0x8000000000000000 && v28[0] == 4)
          {
            v16 = v14 | v29 | v15;
            if (!v16)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_22;
        }
      }

      else if (LOBYTE(v28[0]) != 1)
      {
        goto LABEL_25;
      }

      LOBYTE(v16) = 0;
      goto LABEL_26;
    }

    if ((v9 & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }
}