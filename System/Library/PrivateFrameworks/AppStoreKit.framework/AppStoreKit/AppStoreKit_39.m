void sub_1E16C4A64(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = [a1 isUpdateAvailable] | a2;
  v6 = [a1 progressPhase];
  if (v6 > 2)
  {
    if (v6 <= 4)
    {
      if (v6 == 3)
      {
        v7 = [a1 progress];
        if (v7)
        {
LABEL_22:
          v28 = v7;
          [v7 fractionCompleted];
          v30 = v29;
          v31 = v28;
          v32 = [a1 downloadProgress];
          v33 = [a1 installProgress];
          v16 = [a1 postProcessProgress];
          v17 = [a1 essentialBackgroundAssetDownloadEstimate];
          v34 = [a1 hasPostProcessing];
          v19 = [a1 storeExternalVersionID];

          v35 = 0x6000000000000000;
          if (v5)
          {
            v35 = 0x6000000000000100;
          }

          *a3 = v30;
          a3[1] = v28;
          a3[2] = v32;
          v21 = v35 | v34;
          a3[3] = v33;
LABEL_25:
          a3[4] = v16;
          a3[5] = v17;
LABEL_39:
          a3[6] = v21;
          v27 = 7;
          goto LABEL_40;
        }
      }

      else
      {
        v7 = [a1 progress];
        if (v7)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_32;
    }

    if (v6 != 5)
    {
      if (v6 == 7)
      {
        v22 = [a1 progress];
        if (v22)
        {
          v23 = v22;
          [v22 fractionCompleted];
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v47 = [a1 progress];
        if (!v47)
        {
          v47 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
        }

        v48 = [a1 downloadProgress];
        v49 = [a1 installProgress];
        v50 = [a1 postProcessProgress];
        v51 = [a1 essentialBackgroundAssetDownloadEstimate];
        v52 = [a1 hasPostProcessing];
        v19 = [a1 storeExternalVersionID];
        v53 = 0x4000000000000000;
        *a3 = v25;
        a3[1] = v47;
        a3[2] = v48;
        if (v5)
        {
          v53 = 0x4000000000000100;
        }

        v21 = v53 | v52;
        a3[3] = v49;
        a3[4] = v50;
        a3[5] = v51;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    v36 = [a1 postProcessProgress];
    if (!v36)
    {
LABEL_32:
      v19 = 0;
      *(a3 + 1) = 0u;
      *(a3 + 2) = 0u;
      *a3 = 0u;
      v21 = 0x3FFFFFEFELL;
      goto LABEL_39;
    }

    v9 = v36;
    v37 = [a1 progress];
    if (v37)
    {
      v38 = v37;
      [v37 fractionCompleted];
      v40 = v39;
      v41 = v38;
      v42 = [a1 downloadProgress];
      v43 = v9;
      v44 = [a1 essentialBackgroundAssetDownloadEstimate];
      v45 = [a1 hasPostProcessing];
      v19 = [a1 storeExternalVersionID];

      v46 = 0x5000000000000000;
      if (v5)
      {
        v46 = 0x5000000000000100;
      }

      *a3 = v40;
      a3[1] = v38;
      a3[2] = v42;
      v21 = v46 | v45;
      a3[3] = 0;
      a3[4] = v9;
      a3[5] = v44;
      goto LABEL_39;
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_32;
      }

      v8 = [a1 downloadProgress];
      if (!v8)
      {
        goto LABEL_32;
      }

      v9 = v8;
      v10 = [a1 progress];
      if (v10)
      {
        v11 = v10;
        [v10 fractionCompleted];
        v13 = v12;
        v14 = v11;
        v15 = v9;
        v16 = [a1 postProcessProgress];
        v17 = [a1 essentialBackgroundAssetDownloadEstimate];
        v18 = [a1 hasPostProcessing];
        v19 = [a1 storeExternalVersionID];

        v20 = 0x5000000000000000;
        if (v5)
        {
          v20 = 0x5000000000000100;
        }

        *a3 = v13;
        a3[1] = v11;
        a3[2] = v9;
        v21 = v20 | v18;
        a3[3] = 0;
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v26 = [a1 installError];
    if (!v26)
    {
      goto LABEL_32;
    }
  }

  v19 = 0;
  *a3 = 0;
  v27 = 6;
LABEL_40:
  a3[v27] = v19;
}

uint64_t sub_1E16C5004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_previouslyInstalledLibraryItems;
  v7 = *(v2 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_previouslyInstalledLibraryItems);
  v8 = MEMORY[0x1E69E7CD0];
  if (v7)
  {
    if (*(a1 + 16) <= *(v7 + 16) >> 3)
    {

      sub_1E15CEBB8(a1);
      v8 = v7;
    }

    else
    {

      v8 = sub_1E15CEF44(a1, v7);
    }
  }

  v37 = a1;
  v38 = v6;
  v36 = a2;
  if (a2)
  {
    v8 = sub_1E15E7B3C(a2, v8);
  }

  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_expectedAppStates;
  v14 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  v15 = (v10 + 63) >> 6;

  v17 = 0;
  v40 = v8;
  v41 = v13;
  v39 = v14;
  while (v12)
  {
LABEL_17:
    v19 = (*(v8 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v12)))));
    v21 = *v19;
    v20 = v19[1];
    swift_beginAccess();

    v22 = sub_1E15A47D8(v21, v20);
    if (v23)
    {
      v24 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v3 + v41);
      *(v3 + v41) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E1417D08();
      }

      v27 = *(v26 + 56) + (v24 << 6);
      sub_1E143F44C(*v27, *(v27 + 8), *(v27 + 16), *(v27 + 24), *(v27 + 32), *(v27 + 40), *(v27 + 48));
      sub_1E1413F60(v24, v26);
      *(v3 + v41) = v26;
      v14 = v39;
    }

    swift_endAccess();
    swift_beginAccess();
    v28 = sub_1E15A47D8(v21, v20);
    if (v29)
    {
      v30 = v28;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v3 + v14);
      *(v3 + v14) = 0x8000000000000000;
      if (!v31)
      {
        sub_1E141A1C0();
      }

      sub_1E14132F4(v30, v32);
      *(v3 + v14) = v32;
    }

    v12 &= v12 - 1;
    swift_endAccess();

    v8 = v40;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v12 = *(v9 + 8 * v18);
    ++v17;
    if (v12)
    {
      v17 = v18;
      goto LABEL_17;
    }
  }

  if (v36)
  {
    if (*(v3 + v38))
    {
      v33 = *(v3 + v38);
    }

    else
    {
      v33 = MEMORY[0x1E69E7CD0];
    }

    v34 = sub_1E15C6544(v37, v33);
    if (*(v8 + 16) <= *(v34 + 16) >> 3)
    {
      v42 = v34;
      sub_1E15CEBB8(v8);
      v35 = v42;
    }

    else
    {
      v35 = sub_1E15CEF44(v8, v34);
    }

    *(v3 + v38) = v35;
  }

  else
  {
    *(v3 + v38) = v37;
  }

  return v8;
}

uint64_t sub_1E16C5368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = sub_1E1AF0F7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1E1AF483C();
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  if (*(v2 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource))
  {
    v11 = "DeviceAppStateDataSource.BetaApps[ASDAppQuery]:refreshData";
  }

  else
  {
    v11 = "DeviceAppStateDataSource[ASDAppQuery]:refreshData";
  }

  if (*(v2 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource))
  {
    v12 = 58;
  }

  else
  {
    v12 = 49;
  }

  sub_1E1AF6A1C();
  v13 = sub_1E1AF482C();
  v24 = v11;
  sub_1E1AF0F3C();

  if (*(v3 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_store) != 1)
  {
    [*(v3 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_greenTeaLogger) willRequestAppList];
  }

  v25 = *(v3 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_appQuery);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, v10, v4);
  v15 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v4;
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  *(v18 + 24) = v12;
  *(v18 + 32) = 2;
  (*(v5 + 32))(v18 + v15, v7, v4);
  *(v18 + v16) = v14;
  v19 = (v18 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v26;
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  aBlock[4] = sub_1E16C73E8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E16C3118;
  aBlock[3] = &block_descriptor_49;
  v22 = _Block_copy(aBlock);
  sub_1E1300E34(v21);

  [v25 executeQueryWithResultHandler_];
  _Block_release(v22);
  return (*(v5 + 8))(v10, v17);
}

void sub_1E16C567C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *), uint64_t a9)
{
  v26 = a9;
  v27 = a8;
  v10 = sub_1E1AF320C();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v13 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v15 = Strong;
  if (a1)
  {
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = MEMORY[0x1E69E7CD0];
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v15;
    v17[4] = v16;
    v17[5] = 0;
    v24[1] = *(v15 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_accessQueue);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v18 = v25;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E1B02CC0;

    v24[0] = v15;
    sub_1E1AF31FC();
    *&v29 = v19;
    sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v20 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v20);
    v24[-2] = sub_1E16C8D74;
    v24[-1] = v17;
    sub_1E1AF68FC();

    (*(v18 + 8))(v12, v10);
    swift_beginAccess();
    v21 = *(v16 + 16);
    v22 = *(v21 + 16);
    if (v22)
    {
      v15 = sub_1E1545BF4(*(*(v16 + 16) + 16), 0);
      v23 = sub_1E1546A64(&v29, v15 + 4, v22, v21);

      sub_1E1337ECC();
      if (v23 != v22)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v32 = -1;
    sub_1E16C5AAC(v15, &v29, v28, v27);

    MEMORY[0x1E6901750](v28);
    return;
  }

LABEL_6:

LABEL_7:
  if (v27)
  {
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v32 = -1;
    v27(&v29);
  }
}

void sub_1E16C5AAC(uint64_t a1, __int128 *a2, uint64_t a3, void (*a4)(__int128 *))
{
  v14 = *a2;
  v15 = a2[1];
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *(a2 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      v11 = &Strong[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 1);
        ObjectType = swift_getObjectType();
        (*(v12 + 16))(a1, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      if (a4)
      {
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        v19 = -1;
        a4(&v16);
      }

      return;
    }
  }

  if (a4)
  {
    v16 = v14;
    v17 = v15;
    *&v18 = v6;
    *(&v18 + 1) = v7;
    v19 = v8;
    a4(&v16);
  }
}

void sub_1E16C5BEC(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v7 = sub_1E1AF0F7C();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = a1[1];
  v53 = *a1;
  aBlock = v53;
  v55 = v12;
  AdamId.numberValue.getter();
  if (v13)
  {
    v14 = v13;
    sub_1E1AF483C();
    sub_1E1AF482C();
    sub_1E1AF0F4C();
    v15 = *(v3 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource);
    v47 = v7;
    v50 = a2;
    sub_1E1AF6A1C();
    v49 = a3;
    v16 = sub_1E1AF482C();
    if (v15)
    {
      v17 = "DeviceAppStateDataSource.BetaApps[ASDAppQuery]:refreshDataForAdamId";
    }

    else
    {
      v17 = "DeviceAppStateDataSource[ASDAppQuery]:refreshDataForAdamId";
    }

    if (v15)
    {
      v18 = 67;
    }

    else
    {
      v18 = 58;
    }

    v45 = v18;
    v46 = v17;
    if (v15)
    {
      v19 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v19 = &selRef_queryForStoreItemIDs_;
    }

    v20 = v11;
    v43 = v11;
    sub_1E1AF0F3C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1E1B06D70;
    *(v21 + 32) = v14;
    sub_1E13006E4(0, &qword_1EE1E31F0);
    v48 = v14;
    v22 = sub_1E1AF620C();

    v44 = [objc_opt_self() *v19];

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = v51;
    v24 = v52;
    v26 = v47;
    (*(v51 + 16))(v52, v20, v47);
    v27 = (*(v25 + 80) + 33) & ~*(v25 + 80);
    v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v45;
    *(v30 + 16) = v46;
    *(v30 + 24) = v31;
    *(v30 + 32) = 2;
    (*(v25 + 32))(v30 + v27, v24, v26);
    *(v30 + v28) = v23;
    v32 = (v30 + v29);
    v33 = v49;
    *v32 = v50;
    v32[1] = v33;
    v34 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v34 = v53;
    v34[1] = v12;
    v58 = sub_1E16C7570;
    v59 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1E16C3118;
    v57 = &block_descriptor_10;
    v35 = _Block_copy(&aBlock);

    v36 = v44;
    [v44 executeQueryWithResultHandler_];
    _Block_release(v35);

    (*(v25 + 8))(v43, v26);
  }

  else
  {
    aBlock = type metadata accessor for DeviceAppStateDataSource();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7AA0);
    v37 = sub_1E1AF5E8C();
    v39 = v38;
    aBlock = 0;
    v55 = 0xE000000000000000;
    sub_1E1AF6FEC();

    aBlock = 0xD000000000000013;
    v55 = 0x80000001E1B6FF60;

    v40 = v53;
    MEMORY[0x1E68FECA0](v53, v12);

    v41 = aBlock;
    v42 = v55;
    aBlock = v37;
    v55 = v39;
    v56 = v41;
    v57 = v42;
    v58 = v40;
    v59 = v12;
    v60 = 1;
    swift_bridgeObjectRetain_n();

    a2(&aBlock);

    sub_1E16C74AC(aBlock, v55, v56, v57, v58, v59, v60);
  }
}

void sub_1E16C60CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a8;
  v32 = a9;
  v12 = sub_1E1AF320C();
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v15 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v17 = Strong;
  if (!a1)
  {

LABEL_7:
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v37 = -1;
    v33(&v34);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B60);
  inited = swift_initStackObject();
  v29 = xmmword_1E1B02CC0;
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = a10;
  *(inited + 40) = a11;

  v19 = sub_1E13C49CC(inited);
  swift_setDeallocating();
  sub_1E16C8A2C(inited + 32);
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CD0];
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = v17;
  v21[4] = v20;
  v21[5] = v19;
  v30 = *&v17[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_accessQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v22 = v31;
  v23 = swift_allocObject();
  *(v23 + 16) = v29;

  *&v29 = v17;
  sub_1E1AF31FC();
  *&v34 = v23;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  v24 = sub_1E1AF6EEC();
  MEMORY[0x1EEE9AC00](v24);
  *(&v29 - 2) = sub_1E16C8D74;
  *(&v29 - 1) = v21;
  sub_1E1AF68FC();

  (*(v22 + 8))(v14, v12);
  swift_beginAccess();
  v25 = *(v20 + 16);
  v26 = *(v25 + 16);
  if (v26 && (v27 = sub_1E1545BF4(*(*(v20 + 16) + 16), 0), v28 = sub_1E1546A64(&v34, v27 + 4, v26, v25), , sub_1E1337ECC(), , v28 != v26))
  {
    __break(1u);
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v37 = -1;
    v33(&v34);
  }
}

uint64_t sub_1E16C6578()
{
  result = 0;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource) == 1)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
    sub_1E1AF690C();
    return v2;
  }

  return result;
}

uint64_t sub_1E16C6648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_betaAppBundleVersions;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (*(v10 + 16))
  {

    v11 = sub_1E15A47D8(a2, a3);
    if (v12)
    {
      v13 = (*(v10 + 56) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a4 = v15;
  a4[1] = v14;
  return result;
}

uint64_t sub_1E16C670C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_1E1AF74AC();
  }
}

uint64_t sub_1E16C6754(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = v8;
  v10[7] = v7;

  sub_1E1556848(1, sub_1E16C7594, v10);
}

void sub_1E16C6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_availableUpdatesCache;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *&v12[v13];
    *&v12[v13] = 0x8000000000000000;
    sub_1E159BB08(a2, a3, a4, a5, a6, isUniquelyReferenced_nonNull_native);

    *&v12[v13] = v16;
    swift_endAccess();
    v17[0] = a5;
    v17[1] = a6;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1E16C75A4(v17, v12, v15, a5, a6);
  }
}

void sub_1E16C6990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v5 = sub_1E1AF591C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 48);
  if (v9 != 255)
  {
    v10 = v8;
    v11 = *a1;
    v12 = *(a1 + 8);
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v42 = v13;
    v43 = v15;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = v6;
      v18 = *(v6 + 16);
      v19 = Strong;
      v39 = v10;
      v38 = v5;
      v18(v10, Strong + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_logger, v5);
      sub_1E16C8C80(v11, v12, v14, v42, v43, v16, v9);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      v36 = *(*(sub_1E1AF38EC() - 8) + 72);
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      v20 = v37;
      v35 = v14;
      v34 = v12;
      sub_1E1AF382C();
      v44 = v11;
      v45 = v12;
      v46 = v14;
      v21 = v42;
      v22 = v43;
      v47 = v42;
      v48 = v43;
      v49 = v16;
      v50 = v9;
      sub_1E1431B6C();
      v23 = sub_1E1AF75AC();
      v51[3] = MEMORY[0x1E69E6158];
      v51[0] = v23;
      v51[1] = v24;
      sub_1E1AF38BC();
      sub_1E1308058(v51, &qword_1ECEB2DF0);
      v25 = v38;
      v26 = v39;
      sub_1E1AF549C();
      sub_1E16C74AC(v11, v34, v35, v21, v22, v16, v9);

      (*(v20 + 8))(v26, v25);
    }
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate;
    v29 = v27;
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    v31 = *(v28 + 8);

    if (v30)
    {
      ObjectType = swift_getObjectType();
      v52[0] = v40;
      v52[1] = v41;
      (*(v31 + 8))(v52, ObjectType, v31);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E16C6DCC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 >> 62)
  {
    v30 = a1;
    v4 = sub_1E1AF71CC();
    a1 = v30;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a1;
    v35 = MEMORY[0x1E69E7CC0];
    result = sub_1E135C028(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v31 = a3;
      v5 = v35;
      v34 = v6 & 0xC000000000000001;
      v32 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_adamIdsByBundleId;
      swift_beginAccess();
      v8 = v6;
      v9 = 0;
      v10 = &selRef_remoteDownloadIdentifiersDidChange_;
      v11 = v8;
      while (1)
      {
        if (v34)
        {
          v12 = MEMORY[0x1E68FFD80](v9);
        }

        else
        {
          v12 = *(v8 + 8 * v9 + 32);
        }

        v13 = v12;
        if (![v12 v10[69]])
        {
          v20 = [v13 bundleID];
          v21 = sub_1E1AF5DFC();
          v23 = v22;

          v24 = *(a2 + v32);
          if (*(v24 + 16))
          {

            v25 = sub_1E13018F8(v21, v23);
            v27 = v26;

            if (v27)
            {
              v28 = (*(v24 + 56) + 16 * v25);
              v14 = *v28;
              v16 = v28[1];

              goto LABEL_11;
            }

            v10 = &selRef_remoteDownloadIdentifiersDidChange_;
          }

          else
          {
          }
        }

        [v13 v10[69]];
        v14 = sub_1E1AF742C();
        v16 = v15;
LABEL_11:

        v18 = *(v35 + 16);
        v17 = *(v35 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1E135C028((v17 > 1), v18 + 1, 1);
        }

        ++v9;
        *(v35 + 16) = v18 + 1;
        v19 = v35 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v8 = v11;
        v10 = &selRef_remoteDownloadIdentifiersDidChange_;
        if (v4 == v9)
        {
          a3 = v31;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    v29 = sub_1E13C49CC(v5);

    *a3 = v29;
  }

  return result;
}

id DeviceAppStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceAppStateDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceAppStateDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E16C7214(uint64_t *a1))(uint64_t, char)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E16C8D6C;
}

uint64_t sub_1E16C72CC()
{
  result = 0;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource) == 1)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
    sub_1E1AF690C();
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for DeviceAppStateDataSource()
{
  result = qword_1ECEB7B20;
  if (!qword_1ECEB7B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E16C73E8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1E16C567C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1E16C74AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_1E16C74C0(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1E16C74C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (a7 == 2)
  {
  }

  else
  {
    if (a7 != 1)
    {
      if (!a7)
      {
      }

      return;
    }
  }
}

uint64_t sub_1E16C75A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a2;
  v9 = sub_1E1AF0F7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v53 = a4;
  v15[4] = a5;
  v16 = a1[1];
  v55 = *a1;
  aBlock = v55;
  v58 = v16;

  AdamId.numberValue.getter();
  if (v17)
  {
    v18 = v17;
    sub_1E1AF483C();
    sub_1E1AF482C();
    sub_1E1AF0F4C();
    v19 = *(v56 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_isBetaAppsDataSource);
    v51 = v9;
    v53 = v15;
    sub_1E1AF6A1C();
    v20 = sub_1E1AF482C();
    if (v19)
    {
      v21 = "DeviceAppStateDataSource.BetaApps[ASDAppQuery]:refreshDataForAdamId";
    }

    else
    {
      v21 = "DeviceAppStateDataSource[ASDAppQuery]:refreshDataForAdamId";
    }

    if (v19)
    {
      v22 = 67;
    }

    else
    {
      v22 = 58;
    }

    v49 = v22;
    v50 = v21;
    if (v19)
    {
      v23 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v23 = &selRef_queryForStoreItemIDs_;
    }

    v47 = v14;
    sub_1E1AF0F3C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E1B06D70;
    *(v24 + 32) = v18;
    sub_1E13006E4(0, &qword_1EE1E31F0);
    v52 = v18;
    v25 = sub_1E1AF620C();

    v48 = [objc_opt_self() *v23];

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v54;
    v28 = v51;
    (*(v10 + 16))(v54, v14, v51);
    v29 = (*(v10 + 80) + 33) & ~*(v10 + 80);
    v30 = (v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v33 = v49;
    *(v32 + 16) = v50;
    *(v32 + 24) = v33;
    *(v32 + 32) = 2;
    (*(v10 + 32))(v32 + v29, v27, v28);
    *(v32 + v30) = v26;
    v34 = (v32 + v31);
    v35 = v53;
    *v34 = sub_1E16C8AD0;
    v34[1] = v35;
    v36 = (v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v36 = v55;
    v36[1] = v16;
    v61 = sub_1E16C8D70;
    v62 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1E16C3118;
    v60 = &block_descriptor_67_0;
    v37 = _Block_copy(&aBlock);

    v38 = v48;
    [v48 executeQueryWithResultHandler_];
    _Block_release(v37);

    (*(v10 + 8))(v47, v28);
  }

  else
  {
    aBlock = type metadata accessor for DeviceAppStateDataSource();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7AA0);
    v39 = sub_1E1AF5E8C();
    v41 = v40;
    aBlock = 0;
    v58 = 0xE000000000000000;
    sub_1E1AF6FEC();

    aBlock = 0xD000000000000013;
    v58 = 0x80000001E1B6FF60;

    v42 = v55;
    MEMORY[0x1E68FECA0](v55, v16);

    v43 = aBlock;
    v44 = v58;
    aBlock = v39;
    v58 = v41;
    v59 = v43;
    v60 = v44;
    v61 = v42;
    v62 = v16;
    v63 = 1;
    swift_bridgeObjectRetain_n();

    sub_1E16C6990(&aBlock, a3, v53, a5);

    sub_1E16C74AC(aBlock, v58, v59, v60, v61, v62, v63);
  }
}

uint64_t sub_1E16C7AD0(void *a1)
{
  v31 = [a1 storeItemID];
  sub_1E1AF742C();
  v2 = sub_1E1AF5DBC();

  v3 = AMSHashIfNeeded();

  if (v3)
  {
    v4 = sub_1E1AF5DFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [a1 progress];
  if (v7)
  {
    v8 = v7;
    v32 = v4;
    MEMORY[0x1E68FECA0](8250, 0xE200000000000000);
    v9 = v8;
    v10 = [v9 description];
    v11 = sub_1E1AF5DFC();
    v13 = v12;

    MEMORY[0x1E68FECA0](v11, v13);
  }

  else
  {
    v32 = 0;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](v4, v6);

    MEMORY[0x1E68FECA0](0x6C646E75423C203ALL, 0xEC0000003D444965);
    v14 = [a1 bundleID];
    v15 = sub_1E1AF5DFC();
    v17 = v16;

    MEMORY[0x1E68FECA0](v15, v17);

    MEMORY[0x1E68FECA0](0x6C6174736E49202CLL, 0xEC0000003D64656CLL);
    v18 = [a1 isInstalled];
    v19 = v18 == 0;
    if (v18)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v19)
    {
      v21 = 0xE500000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    MEMORY[0x1E68FECA0](v20, v21);

    MEMORY[0x1E68FECA0](0xD000000000000013, 0x80000001E1B701C0);
    v22 = [a1 isLaunchProhibited];
    v23 = v22 == 0;
    if (v22)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v23)
    {
      v25 = 0xE500000000000000;
    }

    else
    {
      v25 = 0xE400000000000000;
    }

    MEMORY[0x1E68FECA0](v24, v25);

    MEMORY[0x1E68FECA0](0x617465427349202CLL, 0xE90000000000003DLL);
    v26 = [a1 isBetaApp];
    v27 = v26 == 0;
    if (v26)
    {
      v28 = 1702195828;
    }

    else
    {
      v28 = 0x65736C6166;
    }

    if (v27)
    {
      v29 = 0xE500000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

    MEMORY[0x1E68FECA0](v28, v29);

    MEMORY[0x1E68FECA0](62, 0xE100000000000000);
  }

  return v32;
}

uint64_t sub_1E16C7DD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v3 = 0;
    v4 = 0;
    v5 = 0xE000000000000000;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E68FFD80](v3, a1);
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v8 = v6;
      v9 = sub_1E16C7AD0(v8);
      v11 = v10;

      if (sub_1E1AF5F1C() < 1)
      {
      }

      else
      {

        MEMORY[0x1E68FECA0](8236, 0xE200000000000000);
        MEMORY[0x1E68FECA0](v9, v11);

        v9 = v4;
        v11 = v5;
      }

      ++v3;
      v5 = v11;
      v4 = v9;
      if (v7 == i)
      {
        return v9;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(a1 + 8 * v3 + 32);
    v7 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return 0;
}

uint64_t sub_1E16C7F48(uint64_t a1)
{
  v2 = v1;
  v40 = sub_1E1AF320C();
  v38 = *(v40 - 8);
  v41 = v38;
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF38EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF382C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E1B02CD0;
  v35 = v6;
  v11 = *(v6 + 16);
  v34 = v8;
  v36 = v5;
  v11(v10 + v9, v8, v5);

  v13 = sub_1E16C7DD0(v12);
  v15 = v14;

  v46[3] = MEMORY[0x1E69E6158];
  v46[0] = v13;
  v46[1] = v15;
  sub_1E1AF38BC();
  sub_1E1308058(v46, &qword_1ECEB2DF0);
  sub_1E1AF591C();
  sub_1E1AF548C();

  v37 = *&v2[OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_accessQueue];
  v44 = a1;
  v45 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B38);
  sub_1E1AF690C();
  v16 = v46[0];
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CD0];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v2;
  v18[4] = v17;
  v18[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E1B02CC0;

  v20 = v2;
  sub_1E1AF31FC();
  v46[0] = v19;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  v21 = v39;
  v22 = v40;
  sub_1E1AF6EEC();
  v42 = sub_1E16C8A20;
  v43 = v18;
  sub_1E1AF68FC();
  v38 = v17;

  (*(v41 + 8))(v21, v22);
  swift_beginAccess();
  v23 = *(v17 + 16);
  v24 = *(v23 + 16);
  if (!v24)
  {
    goto LABEL_4;
  }

  v25 = sub_1E1545BF4(*(*(v17 + 16) + 16), 0);
  v26 = sub_1E1546A64(v46, v25 + 4, v24, v23);

  sub_1E1337ECC();
  if (v26 != v24)
  {
    __break(1u);
LABEL_4:
    v25 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v28 = Strong + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_delegate, v29 = Strong, swift_beginAccess(), v30 = swift_unknownObjectWeakLoadStrong(), v31 = *(v28 + 8), v29, v30))
  {
    ObjectType = swift_getObjectType();
    (*(v31 + 16))(v25, ObjectType, v31);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  MEMORY[0x1E6901750](v47);
  (*(v35 + 8))(v34, v36);
}

unint64_t sub_1E16C85A4()
{
  result = qword_1ECEB7AB0;
  if (!qword_1ECEB7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7AB0);
  }

  return result;
}

uint64_t sub_1E16C8600()
{
  result = sub_1E1AF591C();
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

uint64_t objectdestroy_42Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm()
{
  v1 = sub_1E1AF0F7C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 33) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1E16C8BA8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1E16C60CC(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1E16C8C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_1E16C8C94(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1E16C8C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  if (a7 == 2)
  {
  }

  else
  {
    if (a7 != 1)
    {
      if (!a7)
      {

        v8 = a5;
      }

      return;
    }
  }
}

uint64_t IndeterminateProgressConfiguration.__allocating_init(metrics:alignment:theme:)(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v6 = swift_allocObject();
  v7 = *(a2 + 4);
  v8 = *a3;
  v10 = *(a3 + 1);
  v9 = *(a3 + 2);
  *(v6 + 16) = 0;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_hasBeenUnapplied) = 0;
  sub_1E16C8F24(a1, v6 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_metrics);
  v11 = v6 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment;
  *v11 = *a2;
  *(v11 + 4) = v7;
  v12 = v6 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme;
  *v12 = v8;
  *(v12 + 8) = v10;
  *(v12 + 16) = v9;
  v13 = *(a1 + *(type metadata accessor for OfferButtonMetrics() + 56));
  sub_1E16C8F88(a1);
  v14 = (v6 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_outlineShapeSize);
  *v14 = v13;
  v14[1] = v13;
  return v6;
}

uint64_t IndeterminateProgressConfiguration.init(metrics:alignment:theme:)(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v6 = *(a2 + 4);
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  *(v3 + 16) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_hasBeenUnapplied) = 0;
  sub_1E16C8F24(a1, v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_metrics);
  v10 = v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment;
  *v10 = *a2;
  *(v10 + 4) = v6;
  v11 = v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  v12 = *(a1 + *(type metadata accessor for OfferButtonMetrics() + 56));
  sub_1E16C8F88(a1);
  v13 = (v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_outlineShapeSize);
  *v13 = v12;
  v13[1] = v12;
  return v3;
}

uint64_t sub_1E16C8F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16C8F88(uint64_t a1)
{
  v2 = type metadata accessor for OfferButtonMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E16C9018(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

id sub_1E16C90BC()
{
  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    if (qword_1EE1EF8D8 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE1EF8E0;
LABEL_44:

    return v1;
  }

  v2 = (v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme + 1);
  if ((v3 - 7) < 2)
  {
LABEL_6:
    if (qword_1ECEB11D0 != -1)
    {
      swift_once();
    }

    v1 = qword_1ECEB95E8;
    goto LABEL_44;
  }

  if (v3 == 2)
  {
    v4 = *v2;
    if (v4 == 4)
    {
      goto LABEL_6;
    }

    if (v4 == 3)
    {
LABEL_12:
      if (qword_1ECEB11A8 != -1)
      {
        swift_once();
      }

      v1 = qword_1ECEB95C0;
      goto LABEL_44;
    }
  }

  else
  {
    v4 = *v2;
    if (v4 == 3)
    {
      goto LABEL_12;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme + 1) > 0xCu)
  {
    if (v3 != 13)
    {
      if (v3 != 14)
      {
        if (v3 == 15 && v4 != 4)
        {
          if (qword_1EE1DDC38 != -1)
          {
            swift_once();
          }

          v1 = qword_1EE1DDC40;
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      goto LABEL_38;
    }

LABEL_34:
    if (qword_1ECEB1218 != -1)
    {
      swift_once();
    }

    v1 = qword_1ECEB9628;
    goto LABEL_44;
  }

  if (!*(v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme + 1))
  {
    if (v4 != 6)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v3 == 2)
  {
    if (v4 != 6)
    {
      goto LABEL_41;
    }

LABEL_38:
    if (qword_1EE1DDC50 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE1DDC58;
    goto LABEL_44;
  }

  if (v3 != 6)
  {
LABEL_41:
    if (qword_1EE1DDCB0 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE1DDCB8;
    goto LABEL_44;
  }

  v9[3] = &type metadata for Feature;
  v9[4] = sub_1E1309EB0();
  LOBYTE(v9[0]) = 17;
  v5 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v9);
  if ((v5 & 1) == 0)
  {
    if (qword_1EE1E3260 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE1E3268;
    goto LABEL_44;
  }

  v6 = [objc_opt_self() systemGrayColor];

  return v6;
}

uint64_t sub_1E16C93E8(uint64_t a1)
{
  sub_1E1300B24(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  type metadata accessor for IndeterminateProgressConfiguration();
  if (swift_dynamicCast())
  {
    v2 = (v1 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment);
    v3 = (v9 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment);
    if (*(v1 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment) == *(v9 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment) && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3] && v2[4] == v3[4] && v2[5] == v3[5] && (v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme), v5 = *(v9 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme), (v4 == 3) != (v5 != 3)) && (v4 == 6) != (v5 != 6) && (swift_beginAccess(), v6 = *(v1 + 16), swift_beginAccess(), v6 == *(v9 + 16)))
    {
      v8 = OfferButtonMetrics.isEqual(to:with:)(v9 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_metrics);

      if (v8)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t type metadata accessor for IndeterminateProgressConfiguration()
{
  result = qword_1EE1D54A8;
  if (!qword_1EE1D54A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16C95D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v46 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v41 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = *(v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_outlineShapeSize);
  v15 = *(v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_outlineShapeSize + 8);
  v16 = v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_metrics;
  v17 = *&v16[*(type metadata accessor for OfferButtonMetrics() + 60)];
  v18 = v14 - v17;
  v19 = v15 - v17;
  if (v18 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:v17 * 0.5 cornerRadii:{v17 * 0.5, v18, v19, v20 * 0.5, v20 * 0.5}];
  v22 = [v21 CGPath];

  v23 = (*(a3 + 120))(a2, a3);
  v47 = v22;
  ConfigurableOfferButton.apply(outlineShapePath:isIndeterminateProgress:animated:)(v22, 1, v23 & 1);
  if (*(v4 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme) == 3)
  {
    v41 = v8;
    if (qword_1ECEB0E88 != -1)
    {
      swift_once();
    }

    v24 = qword_1ECEB5A30;
    v25 = unk_1ECEB5A38;
    aBlock = qword_1ECEB5A20;
    v49 = *algn_1ECEB5A28;
    v50 = qword_1ECEB5A30;
    v51 = unk_1ECEB5A38;
    v26 = *(a3 + 72);

    v27 = v24;
    v28 = v25;
    v29 = v26(a2, a3);
    LayerVisualEffect.apply(to:)(v29);

    v30 = v50;

    v8 = v41;
  }

  else
  {
    v26 = *(a3 + 72);
  }

  v31 = v26(a2, a3);
  [v31 setFillColor_];

  v32 = v26(a2, a3);
  [v32 setLineWidth_];

  (*(a3 + 96))(a2, a3);
  v33 = v43;
  swift_getAssociatedConformanceWitness();
  sub_1E1AF118C();
  (*(v42 + 8))(v13, v33);
  v34 = v44;
  (*(a3 + 80))(a2, a3);
  v35 = v46;
  swift_getAssociatedConformanceWitness();
  sub_1E1AF118C();
  (*(v45 + 8))(v34, v35);
  v36 = (*(a3 + 64))(a2, a3);
  [v36 setHidden_];

  (*(a3 + 208))(0, a2, a3);
  (*(a3 + 232))(0, 0, a2, a3);
  v51 = &type metadata for Feature;
  v52 = sub_1E1309EB0();
  LOBYTE(aBlock) = 17;
  LOBYTE(v36) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v36)
  {
    (*(a3 + 168))(0, a2, a3);
  }

  sub_1E16CA180(a1, a2, a3);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_hasBeenUnapplied) = 0;
  v37 = swift_allocObject();
  v37[2] = a2;
  v37[3] = a3;
  v37[4] = v4;
  v37[5] = a1;
  v37[6] = v8;
  v38 = objc_opt_self();
  v52 = sub_1E16CA2C0;
  v53 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1E1302D64;
  v51 = &block_descriptor_50;
  v39 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  [v38 setCompletionBlock_];
  _Block_release(v39);
}

void sub_1E16C9C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_hasBeenUnapplied) & 1) == 0)
  {
    v6 = *(a5 + 72);
    v9 = v6(a4, a5);
    v10 = sub_1E1AF5DBC();
    v14 = [v9 animationForKey_];

    v11 = v14;
    if (!v14)
    {
      v12 = v6(a4, a5);
      v13 = sub_1E16CA530();
      v15 = sub_1E1AF5DBC();
      [v12 addAnimation:v13 forKey:v15];

      v11 = v15;
    }
  }
}

void sub_1E16C9D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_hasBeenUnapplied) = 1;
  v6 = *(a3 + 72);
  v7 = v6(a2, a3);
  v8 = sub_1E1AF5DBC();
  [v7 removeAnimationForKey_];

  if (*(v3 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme) == 3)
  {
    if (qword_1ECEB0E88 != -1)
    {
      swift_once();
    }

    v9 = qword_1ECEB5A30;
    v10 = unk_1ECEB5A38;
    v14 = qword_1ECEB5A30;
    v15 = unk_1ECEB5A38;

    v11 = v9;
    v12 = v10;
    v13 = v6(a2, a3);
    LayerVisualEffect.unapply(to:)(v13);
  }
}

void sub_1E16C9EE4(void *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a2 >> 8;
  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_1E1AF5DFC();
  v9 = v8;
  if (v7 == sub_1E1AF5DFC() && v9 == v10)
  {
    goto LABEL_14;
  }

  v12 = sub_1E1AF74AC();

  if (v12)
  {
LABEL_6:

    goto LABEL_15;
  }

  v5 = a2 >> 16;
  v13 = sub_1E1AF5DFC();
  v15 = v14;
  if (v13 == sub_1E1AF5DFC() && v15 == v16)
  {
    goto LABEL_14;
  }

  v18 = sub_1E1AF74AC();

  if (v18)
  {
    goto LABEL_6;
  }

  v5 = a2 >> 24;
  v19 = sub_1E1AF5DFC();
  v21 = v20;
  if (v19 == sub_1E1AF5DFC() && v21 == v22)
  {
    goto LABEL_14;
  }

  v23 = sub_1E1AF74AC();

  if (v23)
  {
    goto LABEL_6;
  }

  v5 = HIDWORD(a2);
  v24 = sub_1E1AF5DFC();
  v26 = v25;
  if (v24 == sub_1E1AF5DFC() && v26 == v27)
  {
    goto LABEL_14;
  }

  v28 = sub_1E1AF74AC();

  if (v28)
  {
    goto LABEL_6;
  }

  v5 = a2 >> 40;
  v29 = sub_1E1AF5DFC();
  v31 = v30;
  if (v29 == sub_1E1AF5DFC() && v31 == v32)
  {
LABEL_14:

    goto LABEL_15;
  }

  v33 = sub_1E1AF74AC();

  if ((v33 & 1) == 0)
  {
    LOBYTE(v5) = a2;
  }

LABEL_15:
  *a3 = v5;
}

void sub_1E16CA180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 72);
  v9 = v8(a2, a3);
  [v9 setBackgroundColor_];

  v10 = v8(a2, a3);
  v11 = sub_1E16C90BC();
  v12 = [v11 CGColor];

  [v10 setStrokeColor_];
  v13 = *(v4 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme + 1);
  if (v13 == 2)
  {
    if (*(v4 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme) != 4)
    {
      return;
    }
  }

  else if ((v13 - 7) > 1)
  {
    return;
  }

  sub_1E16CA658(a1, a2, a3);
}

double sub_1E16CA2D0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment + 2);
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment);
  v4 = [a1 traitCollection];
  sub_1E16C9EE4(v4, v3 | (v2 << 16), &v8);

  if (v8 == 1)
  {
    v5 = v1 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_outlineShapeSize;
    type metadata accessor for OfferButtonMetrics();
  }

  else
  {
    v6 = v1 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_metrics;
    v5 = v6 + *(type metadata accessor for OfferButtonMetrics() + 52);
  }

  return *v5;
}

uint64_t IndeterminateProgressConfiguration.deinit()
{
  sub_1E16C8F88(v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_metrics);
  sub_1E139D53C(*(v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme + 16));
  return v0;
}

uint64_t IndeterminateProgressConfiguration.__deallocating_deinit()
{
  sub_1E16C8F88(v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_metrics);
  sub_1E139D53C(*(v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme + 8), *(v0 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_theme + 16));

  return swift_deallocClassInstance();
}

id sub_1E16CA530()
{
  v0 = sub_1E1AF5DBC();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = sub_1E1AF65DC();
  [v1 setFromValue_];

  v3 = sub_1E1AF053C();
  [v1 setToValue_];

  v4 = sub_1E1AF053C();
  [v1 setByValue_];

  v5 = v1;
  [v5 setDuration_];
  [v5 setRemovedOnCompletion_];
  LODWORD(v6) = 2139095040;
  [v5 setRepeatCount_];

  return v5;
}

void sub_1E16CA658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 104))(a2, a3);
  v6 = (*(a3 + 72))(a2, a3);
  v8 = v6;
  LODWORD(v7) = 1046562734;
  if ((v5 & 1) == 0)
  {
    *&v7 = 1.0;
  }

  [v6 setOpacity_];
}

void sub_1E16CA708(void *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = v7;
  v15 = *(v8 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment + 2);
  v16 = *(v8 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_alignment);
  v17 = [a1 traitCollection];
  sub_1E16C9EE4(v17, v16 | (v15 << 16), v44);

  v18 = v44[0];
  v45 = &type metadata for Feature;
  v46 = sub_1E1309EB0();
  v44[0] = 17;
  LOBYTE(v17) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v44);
  if ((v17 & 1) == 0)
  {
    v27 = a4;
    v28 = a5;
    v29 = a6;
    if (v18)
    {
      if (v18 == 1)
      {
        v30 = a7;
        CGRectGetMidY(*&v27);
LABEL_16:
        v39 = (*(a3 + 72))(a2, a3);
        v42 = [a1 traitCollection];
        [v42 layoutDirection];

        goto LABEL_17;
      }

      v32 = a7;
      v41 = a7;
      CGRectGetMaxX(*&v27);
    }

    else
    {
      v32 = a7;
      v33 = a7;
      CGRectGetMidX(*&v27);
    }

    v51.origin.x = a4;
    v51.origin.y = a5;
    v51.size.width = a6;
    v51.size.height = v32;
    CGRectGetMidY(v51);
    goto LABEL_16;
  }

  v19 = v8 + OBJC_IVAR____TtC11AppStoreKit34IndeterminateProgressConfiguration_metrics;
  v20 = *(v19 + *(type metadata accessor for OfferButtonMetrics() + 52) + 8);
  v21 = a4;
  v22 = a5;
  v23 = a6;
  if (v18)
  {
    v24 = a7;
    if (v18 == 1)
    {
      v25 = CGRectGetMidY(*&v21) + v20 * -0.5;
      v26 = 0.0;
    }

    else
    {
      v26 = CGRectGetMaxX(*&v21) - v20;
      v48.origin.x = a4;
      v48.origin.y = a5;
      v48.size.width = a6;
      v48.size.height = a7;
      v25 = CGRectGetMidY(v48) + v20 * -0.5;
    }
  }

  else
  {
    v31 = a7;
    v26 = CGRectGetMidX(*&v21) - v20 * 0.5;
    v47.origin.x = a4;
    v47.origin.y = a5;
    v47.size.width = a6;
    v47.size.height = a7;
    v25 = CGRectGetMidY(v47) - v20 * 0.5;
  }

  v34 = floor(v26);
  v35 = floor(v25);
  v36 = (*(a3 + 192))(a2, a3);
  if (v36)
  {
    v37 = v36;
    v38 = [a1 traitCollection];
    [v38 layoutDirection];

    sub_1E1AF6B2C();
    [v37 setFrame_];
  }

  v39 = (*(a3 + 72))(a2, a3);
  v49.origin.x = v34;
  v49.origin.y = v35;
  v49.size.width = v20;
  v49.size.height = v20;
  CGRectGetMidX(v49);
  v50.origin.x = v34;
  v50.origin.y = v35;
  v50.size.width = v20;
  v50.size.height = v20;
  CGRectGetMidY(v50);
  v40 = [a1 traitCollection];
  [v40 layoutDirection];

LABEL_17:
  sub_1E1AF6B2C();
  [v39 setFrame_];

  sub_1E16CA658(a1, a2, a3);
}

uint64_t sub_1E16CAB60()
{
  result = type metadata accessor for OfferButtonMetrics();
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

uint64_t ArcadeDownloadPackCard.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeDownloadPackCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ArcadeDownloadPackCard.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v66 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v64 - v6;
  v7 = sub_1E1AF39DC();
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = &v64 - v13;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF380C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v85 = a1;
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  v71 = v9;
  v75 = v18;
  if (v27)
  {
    v80 = v26;
    v81 = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v28 = sub_1E1AEFE7C();
    v29 = v15;
    v31 = v30;
    (*(v29 + 8))(v17, v14);
    v80 = v28;
    v81 = v31;
  }

  sub_1E1AF6F6C();
  v32 = *(v19 + 8);
  v74 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67 = v32;
  v32(v25, v18);
  v33 = v83;
  *(v3 + 40) = v82;
  *(v3 + 56) = v33;
  *(v3 + 9) = v84;
  sub_1E1AF46DC();
  v34 = v3;
  sub_1E1AF381C();
  v35 = v78;
  v36 = *(v77 + 16);
  v37 = v79;
  v36(v72, v79, v78);
  v38 = v69;
  sub_1E1AF464C();
  v72 = v34;
  v65 = OBJC_IVAR____TtC11AppStoreKit22ArcadeDownloadPackCard_impressionMetrics;
  sub_1E134B7C8(v38, &v34[OBJC_IVAR____TtC11AppStoreKit22ArcadeDownloadPackCard_impressionMetrics]);
  v39 = v71;
  v36(v71, v37, v35);
  v40 = v68;
  sub_1E1AF381C();
  v41 = v70;
  sub_1E1AF374C();
  v42 = v67;
  v67(v40, v75);
  v43 = sub_1E1AF5A6C();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 48))(v41, 1, v43);
  if (v45 == 1)
  {
    v46 = v39;
    sub_1E1308058(v41, &qword_1ECEB1F90);
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](v45);
  v46 = v39;
  *(&v64 - 2) = v39;
  type metadata accessor for Lockup();
  v48 = v73;
  v49 = sub_1E1AF59FC();
  if (!v48)
  {
    v47 = v49;
    (*(v44 + 8))(v41, v43);
LABEL_8:
    v50 = v72;
    *(v72 + 2) = v47;
    v51 = v76;
    sub_1E1AF381C();
    v52 = sub_1E1AF36EC();
    v54 = v53;
    v55 = v75;
    v42(v51, v75);
    *(v50 + 3) = v52;
    v50[32] = v54 & 1;
    v56 = *(v50 + 2);
    if (v56 >> 62)
    {
      if (!sub_1E1AF71CC())
      {
LABEL_10:
        if (v50[32])
        {
          v57 = sub_1E1AF5A7C();
          sub_1E16CBAC8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
          swift_allocError();
          v58 = MEMORY[0x1E69E7CC0];
          *v59 = v66;
          v59[1] = v58;
          (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69AB698], v57);
          swift_willThrow();
        }
      }
    }

    else if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    v60 = v78;
    v61 = *(v77 + 8);
    v61(v79, v78);
    v42(v85, v55);
    v61(v46, v60);
    return v50;
  }

  v63 = v72;
  sub_1E134B88C((v72 + 40));
  sub_1E1308058(&v63[v65], &unk_1ECEB1770);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E16CB5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lockup();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E16CBAC8(&qword_1EE1E4F60, type metadata accessor for Lockup);
  return sub_1E1AF464C();
}

uint64_t ArcadeDownloadPackCard.deinit()
{

  sub_1E134B88C(v0 + 40);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22ArcadeDownloadPackCard_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t ArcadeDownloadPackCard.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 40);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22ArcadeDownloadPackCard_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeDownloadPackCard()
{
  result = qword_1EE1EC838;
  if (!qword_1EE1EC838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16CB94C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = ArcadeDownloadPackCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E16CB9D4()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E16CBAC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CopyTextAction.text.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit14CopyTextAction_text);

  return v1;
}

char *CopyTextAction.__allocating_init(title:text:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC11AppStoreKit14CopyTextAction_text];
  *v15 = a3;
  *(v15 + 1) = a4;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v25 = v10;
    v26 = a5;
    v27 = a1;
    v28 = a2;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a2 = v28;
    a1 = v27;
    a5 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  (*(v18 + 8))(a5, v17);
  sub_1E1308058(v38, &unk_1ECEB5670);
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *CopyTextAction.init(title:text:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a1;
  v32 = a2;
  v10 = sub_1E1AEFEAC();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC11AppStoreKit14CopyTextAction_text);
  *v20 = a3;
  v20[1] = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_1E138853C(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  (*(v17 + 8))(a5, v16);
  sub_1E1308058(v41, &unk_1ECEB5670);
  v26 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_1E134B7C8(v15, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t CopyTextAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_1E1AF39DC();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v33 = a1;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC11AppStoreKit14CopyTextAction_text);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v10, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v10, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v24 = 1954047348;
    v25 = v27;
    v24[1] = 0xE400000000000000;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t CopyTextAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t CopyTextAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CopyTextAction()
{
  result = qword_1EE1F4048;
  if (!qword_1EE1F4048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EmptyConfiguration.isEqual(to:with:)(uint64_t a1)
{
  sub_1E1300B24(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  return swift_dynamicCast();
}

uint64_t sub_1E16CC934(uint64_t a1)
{
  sub_1E1300B24(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  return swift_dynamicCast();
}

unint64_t ClickableModel<>.segue.getter@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  result = (*(a1 + 8))();
  v4 = result;
  if (result)
  {
    v5 = type metadata accessor for Action();
    result = sub_1E16CCA08();
  }

  else
  {
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = v5;
  a2[4] = result;
  return result;
}

unint64_t sub_1E16CCA08()
{
  result = qword_1EE1D2F80[0];
  if (!qword_1EE1D2F80[0])
  {
    type metadata accessor for Action();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D2F80);
  }

  return result;
}

void *ShareSheetAction.__allocating_init(title:artwork:data:activities:shareSheetStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_data) = a4;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_activities) = a5;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_shareSheetStyle) = *a6;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15 + v16, a7, v17);
  v19 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(v15 + v19, 1, 1, v20);
  v21 = (v15 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = v15 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v37, &v34, &unk_1ECEB5670);
  if (*(&v35 + 1))
  {
    v23 = v35;
    *v22 = v34;
    *(v22 + 1) = v23;
    *(v22 + 4) = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v26 = v25;
    (*(v12 + 8))(v14, v11);
    v32 = v24;
    v33 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v34, &unk_1ECEB5670);
  }

  (*(v18 + 8))(a7, v17);
  sub_1E1308058(v37, &unk_1ECEB5670);
  v27 = v30;
  v15[2] = v29;
  v15[3] = v27;
  v15[4] = v31;
  v15[5] = 0;
  return v15;
}

uint64_t ShareSheetAction.ShareSheetStyle.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1E1AF37CC();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1E1AF72FC();
    if (!v10)
    {
      v11 = 0;
      goto LABEL_7;
    }

    if (v10 == 1)
    {
      v11 = 1;
LABEL_7:

      v17 = sub_1E1AF39DC();
      (*(*(v17 - 8) + 8))(a2, v17);
      v18 = sub_1E1AF380C();
      result = (*(*(v18 - 8) + 8))(a1, v18);
      *a3 = v11;
      return result;
    }

    v12 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v14 = v20;
    *v20 = v8;
    v20[1] = v9;
    v20[2] = &type metadata for ShareSheetAction.ShareSheetStyle;
    v16 = MEMORY[0x1E69AB680];
  }

  else
  {
    v12 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v14 = v13;
    v15 = MEMORY[0x1E69E7CC0];
    *v13 = &type metadata for ShareSheetAction.ShareSheetStyle;
    v13[1] = v15;
    v16 = MEMORY[0x1E69AB698];
  }

  (*(*(v12 - 8) + 104))(v14, *v16, v12);
  swift_willThrow();
  v21 = sub_1E1AF39DC();
  (*(*(v21 - 8) + 8))(a2, v21);
  v22 = sub_1E1AF380C();
  return (*(*(v22 - 8) + 8))(a1, v22);
}

AppStoreKit::ShareSheetAction::ShareSheetStyle_optional __swiftcall ShareSheetAction.ShareSheetStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t ShareSheetAction.ShareSheetStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x657370616C6C6F63;
  }

  else
  {
    return 0x6465646E61707865;
  }
}

uint64_t sub_1E16CD010(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657370616C6C6F63;
  }

  else
  {
    v3 = 0x6465646E61707865;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657370616C6C6F63;
  }

  else
  {
    v5 = 0x6465646E61707865;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
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

uint64_t sub_1E16CD0BC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16CD144()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E16CD1B8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16CD23C@<X0>(char *a1@<X8>)
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

void sub_1E16CD29C(uint64_t *a1@<X8>)
{
  v2 = 0x6465646E61707865;
  if (*v1)
  {
    v2 = 0x657370616C6C6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ShareSheetAction.Activity.activityType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShareSheetAction.Activity.init(activityType:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ShareSheetAction.Activity.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  type metadata accessor for Action();
  v13 = a1;
  sub_1E1AF381C();
  v14 = static Action.makeInstance(byDeserializing:using:)(v12, a2);
  if (v3)
  {
    v15 = sub_1E1AF39DC();
    (*(*(v15 - 8) + 8))(a2, v15);
    v16 = *(v7 + 8);
    v16(a1, v6);
    return (v16)(v12, v6);
  }

  else
  {
    v27 = a2;
    v28 = v14;
    v18 = *(v7 + 8);
    v18(v12, v6);
    sub_1E1AF381C();
    v19 = sub_1E1AF37CC();
    v21 = v20;
    v18(v10, v6);
    if (v21)
    {
      v22 = sub_1E1AF39DC();
      (*(*(v22 - 8) + 8))(v27, v22);
      result = (v18)(v13, v6);
      v23 = v29;
      *v29 = v19;
      v23[1] = v21;
      v23[2] = v28;
    }

    else
    {
      v24 = sub_1E1AF5A7C();
      sub_1E1380704();
      swift_allocError();
      strcpy(v25, "activityType");
      v25[13] = 0;
      *(v25 + 7) = -5120;
      *(v25 + 2) = &type metadata for ShareSheetAction.Activity;
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x1E69AB690], v24);
      swift_willThrow();

      v26 = sub_1E1AF39DC();
      (*(*(v26 - 8) + 8))(v27, v26);
      return (v18)(v13, v6);
    }
  }

  return result;
}

uint64_t sub_1E16CD6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = sub_1E1AF39DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E1AF37AC();
  if (result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    (*(v13 + 16))(v15, a1, v12);
    (*(v9 + 16))(v11, v21, v8);
    v17 = v26;
    result = ShareSheetAction.Activity.init(deserializing:using:)(v15, v11, &v24);
    if (v17)
    {
      sub_1E1AF397C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0);
      sub_1E1AF39FC();
      (*(v19 + 8))(v7, v20);
      sub_1E134FD1C(&v24, v22, &qword_1ECEB43C8);
      if (v23)
      {
        __swift_project_boxed_opaque_existential_1Tm(v22, v23);
        sub_1E1AF4EBC();

        sub_1E1308058(&v24, &qword_1ECEB43C8);
        result = __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        sub_1E1308058(&v24, &qword_1ECEB43C8);

        result = sub_1E1308058(v22, &qword_1ECEB43C8);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      *a3 = v24;
      *(a3 + 1) = v25;
    }
  }

  return result;
}

void *ShareSheetAction.init(title:artwork:data:activities:shareSheetStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v8 = v7;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v32 = sub_1E1AEFEAC();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - v16;
  v18 = sub_1E1AF3E1C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_data) = a4;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_activities) = a5;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_shareSheetStyle) = *a6;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  (*(v19 + 16))(v21, a7, v18);
  v22 = sub_1E1AF46DC();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E134FD1C(v44, &v38, &unk_1ECEB5670);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v26 = v25;
    (*(v31 + 8))(v14, v32);
    v36 = v24;
    v37 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  (*(v19 + 8))(a7, v18);
  sub_1E1308058(v44, &unk_1ECEB5670);
  v27 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v27 + 4) = v43;
  v28 = v42;
  *v27 = v41;
  *(v27 + 1) = v28;
  sub_1E134B7C8(v17, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v29 = v34;
  v8[2] = v33;
  v8[3] = v29;
  v8[4] = v35;
  v8[5] = 0;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

char *ShareSheetAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v63 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v52 - v7;
  v60 = sub_1E1AF5A6C();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF39DC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - v15;
  v17 = sub_1E1AF380C();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v59 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v52 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v52 - v26;
  v70 = a1;
  sub_1E1AF381C();
  v67 = v10;
  v30 = *(v10 + 16);
  v29 = v10 + 16;
  v28 = v30;
  v71 = a2;
  v30(v16, a2, v9);
  type metadata accessor for ShareSheetData();
  swift_allocObject();
  v31 = v65;
  v32 = ShareSheetData.init(deserializing:using:)(v27, v16);
  if (v31)
  {
    (*(v68 + 8))(v70, v69);
    (*(v67 + 8))(v71, v9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v55 = v28;
    v56 = v29;
    v63 = v22;
    v33 = v57;
    v65 = v9;
    v34 = v71;
    v35 = v66;
    *&v66[OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_data] = v32;
    sub_1E1AF381C();
    v36 = v64;
    sub_1E1AF374C();
    v53 = *(v68 + 8);
    v54 = v68 + 8;
    v53(v25, v69);
    v37 = v58;
    v38 = v60;
    if ((*(v58 + 48))(v36, 1, v60) == 1)
    {
      sub_1E1308058(v64, &qword_1ECEB1F90);
      v39 = MEMORY[0x1E69E7CC0];
      v40 = v61;
      v64 = 0;
    }

    else
    {
      v41 = (*(v37 + 32))(v33, v64, v38);
      MEMORY[0x1EEE9AC00](v41);
      *(&v52 - 2) = v34;
      v39 = sub_1E1AF59FC();
      v64 = 0;
      (*(v37 + 8))(v33, v38);
      v40 = v61;
    }

    v27 = v35;
    *&v35[OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_activities] = v39;
    v42 = v70;
    sub_1E1AF381C();
    v43 = v71;
    v44 = v65;
    v45 = v55;
    v55(v40, v71, v65);
    sub_1E16CE7DC();
    sub_1E1AF464C();
    v27[OBJC_IVAR____TtC11AppStoreKit16ShareSheetAction_shareSheetStyle] = v72 & 1;
    v46 = v69;
    v47 = v59;
    (*(v68 + 16))(v59, v42, v69);
    v48 = v62;
    v45(v62, v43, v44);
    v49 = v64;
    v50 = Action.init(deserializing:using:)(v47, v48);
    if (!v49)
    {
      v27 = v50;
    }

    v53(v42, v46);
    (*(v67 + 8))(v71, v44);
  }

  return v27;
}

uint64_t sub_1E16CE54C()
{
}

uint64_t ShareSheetAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t ShareSheetAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

unint64_t sub_1E16CE7DC()
{
  result = qword_1EE1F1B98[0];
  if (!qword_1EE1F1B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F1B98);
  }

  return result;
}

unint64_t sub_1E16CE834()
{
  result = qword_1ECEB7B70;
  if (!qword_1ECEB7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7B70);
  }

  return result;
}

uint64_t type metadata accessor for ShareSheetAction()
{
  result = qword_1EE1F1B88;
  if (!qword_1EE1F1B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MetricsActivity.current.getter()
{
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1E16CEA0C()
{
  type metadata accessor for MetricsActivity();
  v0 = swift_allocObject();
  result = sub_1E16CED9C();
  off_1EE1F3438 = v0;
  return result;
}

uint64_t sub_1E16CEA48()
{
  v0 = [objc_opt_self() sharedCoordinator];
  v4[4] = sub_1E16CEB40;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1E1302D64;
  v4[3] = &block_descriptor_51;
  v1 = _Block_copy(v4);
  v2 = [v0 registerCleanupHandler_];
  _Block_release(v1);

  sub_1E1AF6EBC();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E16CEB40()
{
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v0 = off_1EE1F3438;
  *(off_1EE1F3438 + 2) = 0;
  *(v0 + 3) = 0;

  swift_beginAccess();
  *&v23[11] = *(v0 + 219);
  v1 = *(v0 + 12);
  v22[2] = *(v0 + 11);
  v22[3] = v1;
  *v23 = *(v0 + 13);
  v2 = *(v0 + 10);
  v22[0] = *(v0 + 9);
  v22[1] = v2;
  v3 = v23[26];
  if (*(&v22[0] + 1) == 2)
  {
    *&v16 = *&v22[0];
    *(&v16 + 1) = 2;
    v4 = *(v0 + 12);
    v5 = *(v0 + 13);
    v6 = *(v0 + 10);
    v18 = *(v0 + 11);
    v19 = v4;
    *v20 = v5;
    *&v20[10] = *(v0 + 218);
    v17 = v6;
    v21 = v23[26];
    sub_1E134FD1C(v22, v14, &qword_1ECEB7B78);
    v7 = &v16;
  }

  else
  {
    v16 = v22[0];
    v8 = *(v0 + 12);
    v9 = *(v0 + 13);
    v10 = *(v0 + 10);
    v18 = *(v0 + 11);
    v19 = v8;
    *v20 = v9;
    *&v20[10] = *(v0 + 218);
    v17 = v10;
    v21 = v23[26];
    sub_1E134FD1C(v22, v14, &qword_1ECEB7B78);
    result = sub_1E1308058(&v16, &qword_1ECEB7B78);
    if ((v3 & 1) == 0)
    {
      return result;
    }

    v12 = *(v0 + 12);
    v14[2] = *(v0 + 11);
    v14[3] = v12;
    v15[0] = *(v0 + 13);
    *(v15 + 11) = *(v0 + 219);
    v13 = *(v0 + 10);
    v14[0] = *(v0 + 9);
    v14[1] = v13;
    *(v0 + 9) = xmmword_1E1B28A10;
    *(v0 + 10) = 0u;
    *(v0 + 11) = 0u;
    *(v0 + 12) = 0u;
    *(v0 + 13) = 0u;
    *(v0 + 219) = 0u;
    v7 = v14;
  }

  return sub_1E1308058(v7, &qword_1ECEB7B78);
}

uint64_t sub_1E16CED08()
{
  result = sub_1E1AF5DBC();
  qword_1EE1DF928 = result;
  return result;
}

id static MetricsActivity.CurrentPageFieldsUpdatedNotification.getter()
{
  if (qword_1EE1DF920 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1DF928;

  return v1;
}

uint64_t sub_1E16CED9C()
{
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 80) = 2;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 2;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 219) = 0u;
  if (qword_1EE1F3468 != -1)
  {
    swift_once();
  }

  sub_1E137A5C4(&unk_1EE1F3440, v4);
  nullsub_5(v4, v1, v2);
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  return v0;
}

void sub_1E16CEE88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF32BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E1361A80();
  *v7 = sub_1E1AF68EC();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1E1AF32EC();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  swift_beginAccess();
  *(v2 + 88) = a1;

  v8 = [objc_opt_self() defaultCenter];
  if (qword_1EE1DF920 != -1)
  {
LABEL_5:
    swift_once();
  }

  [v8 postNotificationName:qword_1EE1DF928 object:v2];
}

void (*sub_1E16CF038(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 88);

  return sub_1E16CF0CC;
}

void sub_1E16CF0CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E16CEE88(v4);
  }

  else
  {
    sub_1E16CEE88(v3);
  }

  free(v2);
}

uint64_t sub_1E16CF130(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v5, &unk_1ECEB7230);
  v3 = *a2;
  swift_beginAccess();
  sub_1E1533994(v5, v3 + 96);
  return swift_endAccess();
}

uint64_t sub_1E16CF1F4(uint64_t a1)
{
  swift_beginAccess();
  sub_1E1533994(a1, v1 + 96);
  return swift_endAccess();
}

uint64_t sub_1E16CF244(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 136) = v2;
}

uint64_t sub_1E16CF32C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;

  swift_beginAccess();
  *&v23[11] = *(v0 + 219);
  v1 = *(v0 + 192);
  v22[2] = *(v0 + 176);
  v22[3] = v1;
  *v23 = *(v0 + 208);
  v2 = *(v0 + 160);
  v22[0] = *(v0 + 144);
  v22[1] = v2;
  v3 = v23[26];
  if (*(&v22[0] + 1) == 2)
  {
    *&v16 = *&v22[0];
    *(&v16 + 1) = 2;
    v4 = *(v0 + 192);
    v5 = *(v0 + 208);
    v6 = *(v0 + 160);
    v18 = *(v0 + 176);
    v19 = v4;
    *v20 = v5;
    *&v20[10] = *(v0 + 218);
    v17 = v6;
    v21 = v23[26];
    sub_1E134FD1C(v22, v14, &qword_1ECEB7B78);
    v7 = &v16;
  }

  else
  {
    v16 = v22[0];
    v8 = *(v0 + 192);
    v9 = *(v0 + 208);
    v10 = *(v0 + 160);
    v18 = *(v0 + 176);
    v19 = v8;
    *v20 = v9;
    *&v20[10] = *(v0 + 218);
    v17 = v10;
    v21 = v23[26];
    sub_1E134FD1C(v22, v14, &qword_1ECEB7B78);
    result = sub_1E1308058(&v16, &qword_1ECEB7B78);
    if ((v3 & 1) == 0)
    {
      return result;
    }

    v12 = *(v0 + 192);
    v14[2] = *(v0 + 176);
    v14[3] = v12;
    v15[0] = *(v0 + 208);
    *(v15 + 11) = *(v0 + 219);
    v13 = *(v0 + 160);
    v14[0] = *(v0 + 144);
    v14[1] = v13;
    *(v0 + 144) = xmmword_1E1B28A10;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 219) = 0u;
    v7 = v14;
  }

  return sub_1E1308058(v7, &qword_1ECEB7B78);
}

uint64_t sub_1E16CF4BC()
{
  v1 = v0;
  v2 = v0[3];
  v3 = MEMORY[0x1E69E7CC8];
  v4 = MEMORY[0x1E69E6158];
  if (v2)
  {
    v5 = v1[2];
    v16 = MEMORY[0x1E69E6158];
    *&v15 = v5;
    *(&v15 + 1) = v2;
    sub_1E1301CF0(&v15, v14);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v14, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
  }

  v7 = v1[7];
  if (v7)
  {
    v8 = v1[6];
    v16 = v4;
    *&v15 = v8;
    *(&v15 + 1) = v7;
    sub_1E1301CF0(&v15, v14);

    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v14, 0xD000000000000013, 0x80000001E1B70460, v9);
  }

  v10 = v1[5];
  if (v10)
  {
    v11 = v1[4];
    v16 = v4;
    *&v15 = v11;
    *(&v15 + 1) = v10;
    sub_1E1301CF0(&v15, v14);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v14, 0x70704174736F68, 0xE700000000000000, v12);
  }

  return v3;
}

uint64_t sub_1E16CF628(uint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;
  v5 = sub_1E14F2168(sub_1E14A937C, v7, &unk_1F5C2D960);
  result = swift_arrayDestroy();
  if ((v5 & 1) == 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  return result;
}

uint64_t sub_1E16CF6D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1E16CF710(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void sub_1E16CF750(uint64_t a1, char a2)
{
  v6 = v3;
  v89 = a1;
  if ((a2 & 1) == 0)
  {
    v13 = sub_1E16CF4BC();
    v14 = 0;
    v11 = v13 + 64;
    v15 = *(v13 + 64);
    v70 = v13;
    v16 = 1 << *(v13 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    if ((v17 & v15) != 0)
    {
      do
      {
        v20 = v14;
LABEL_15:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = v22 | (v20 << 6);
        v24 = (*(v70 + 48) + 16 * v23);
        v25 = *v24;
        v26 = v24[1];
        sub_1E137A5C4(*(v70 + 56) + 32 * v23, &v75);
        *&v78 = v25;
        *(&v78 + 1) = v26;
        sub_1E1301CF0(&v75, &v79);

        v10 = v20;
LABEL_16:
        v84 = v78;
        v85 = v79;
        v86 = *v80;
        if (!*(&v78 + 1))
        {
          goto LABEL_41;
        }

        sub_1E1301CF0(&v85, &v78);
        v5 = *(v89 + 24);
        v4 = *(v89 + 32);
        v2 = __swift_mutable_project_boxed_opaque_existential_1(v89, v5);
        sub_1E1AF4A1C();
        if (v3)
        {
          __swift_destroy_boxed_opaque_existential_1(&v78);

          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_1(&v78);

        v14 = v10;
      }

      while (v18);
    }

    if (v19 <= v14 + 1)
    {
      v21 = v14 + 1;
    }

    else
    {
      v21 = v19;
    }

    v10 = v21 - 1;
    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        v18 = 0;
        v79 = 0u;
        *v80 = 0u;
        v78 = 0u;
        goto LABEL_16;
      }

      v18 = *(v11 + 8 * v20);
      ++v14;
      if (v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  swift_beginAccess();
  v7 = *(v2 + 160);
  v84 = *(v2 + 144);
  v85 = v7;
  v8 = *(v2 + 192);
  v86 = *(v2 + 176);
  v87 = v8;
  v88[0] = *(v2 + 208);
  *(v88 + 11) = *(v2 + 219);
  v5 = *(&v84 + 1);
  v9 = v84;
  v4 = *(&v85 + 1);
  v10 = v85;
  v11 = v86;
  v12 = BYTE8(v86);
  if (*(&v84 + 1) == 2)
  {
    *&v78 = v84;
    *(&v78 + 1) = 2;
    v79 = v85;
    *v80 = v86;
    v80[8] = BYTE8(v86);
    *&v80[9] = *(v2 + 185);
    v81 = *(v2 + 201);
    v82 = *(v2 + 217);
    v83 = *(v2 + 233);
    sub_1E134FD1C(&v84, &v75, &qword_1ECEB7B78);
    sub_1E1308058(&v78, &qword_1ECEB7B78);
LABEL_23:
    v27 = sub_1E16CF4BC();
    v28 = 0;
    v30 = v27 + 64;
    v29 = *(v27 + 64);
    v70 = v27;
    v31 = 1 << *(v27 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v18 = v32 & v29;
    v11 = (v31 + 63) >> 6;
    if ((v32 & v29) != 0)
    {
      while (1)
      {
        v10 = v28;
LABEL_34:
        v34 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v35 = v34 | (v10 << 6);
        v36 = (*(v70 + 48) + 16 * v35);
        v38 = *v36;
        v37 = v36[1];
        sub_1E137A5C4(*(v70 + 56) + 32 * v35, &v72);
        *&v75 = v38;
        *(&v75 + 1) = v37;
        sub_1E1301CF0(&v72, &v76);

        v4 = v10;
LABEL_35:
        v78 = v75;
        v79 = v76;
        *v80 = v77;
        if (!*(&v75 + 1))
        {
          break;
        }

        sub_1E1301CF0(&v79, &v75);
        v5 = *(v89 + 24);
        v2 = __swift_mutable_project_boxed_opaque_existential_1(v89, v5);
        sub_1E1AF4A1C();
        __swift_destroy_boxed_opaque_existential_1(&v75);

        if (v6)
        {
          break;
        }

        v28 = v4;
        if (!v18)
        {
          goto LABEL_27;
        }
      }

LABEL_41:

      return;
    }

LABEL_27:
    if (v11 <= v28 + 1)
    {
      v33 = v28 + 1;
    }

    else
    {
      v33 = v11;
    }

    v4 = v33 - 1;
    while (1)
    {
      v10 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        v18 = 0;
        v76 = 0u;
        v77 = 0u;
        v75 = 0u;
        goto LABEL_35;
      }

      v18 = *(v30 + 8 * v10);
      ++v28;
      if (v18)
      {
        goto LABEL_34;
      }
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v70 = v3;
  v78 = v84;
  v79 = v85;
  *v80 = v86;
  v80[8] = BYTE8(v86);
  *&v80[9] = *(v2 + 185);
  v81 = *(v2 + 201);
  v82 = *(v2 + 217);
  v83 = *(v2 + 233);
  sub_1E134FD1C(&v84, &v75, &qword_1ECEB7B78);
  sub_1E13E2380(v9, v5, v10, v4, v11, v12);
  sub_1E1308058(&v78, &qword_1ECEB7B78);
  if (v5 == 1)
  {
    v6 = v3;
    goto LABEL_23;
  }

  v6 = v9;
  v2 = sub_1E16CF4BC();
  v18 = MEMORY[0x1E69E6158];
  if (v5)
  {
    *(&v76 + 1) = MEMORY[0x1E69E6158];
    v75 = __PAIR128__(v5, v6);
    sub_1E1301CF0(&v75, &v72);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_1E159827C(&v72, 0x707041666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v4)
  {
    *(&v76 + 1) = v18;
    *&v75 = v10;
    *(&v75 + 1) = v4;
    sub_1E1301CF0(&v75, &v72);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_1E159827C(&v72, 0x7255666552747865, 0xE90000000000006CLL, v40);
  }

  if (!v12)
  {
    *(&v76 + 1) = v18;
    *&v75 = 0x696C6F706D617274;
    *(&v75 + 1) = 0xEA0000000000656ELL;
    sub_1E1301CF0(&v75, &v72);

    v49 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(&v72, 0x7954707041666572, 0xEA00000000006570, v49);
    *(&v76 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26F0);
    *&v75 = v11;
    sub_1E1301CF0(&v75, &v72);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_1E159827C(&v72, 0xD000000000000011, 0x80000001E1B70400, v50);
    v43 = v6;
    v44 = v5;
    v45 = v10;
    v46 = v4;
    v47 = v11;
    v48 = 0;
    goto LABEL_50;
  }

  if (v12 == 1)
  {
    *(&v76 + 1) = v18;
    *&v75 = 0x746567646977;
    *(&v75 + 1) = 0xE600000000000000;
    sub_1E1301CF0(&v75, &v72);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(&v72, 0x7954707041666572, 0xEA00000000006570, v41);
    *(&v76 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26F0);
    *&v75 = v11;
    sub_1E1301CF0(&v75, &v72);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_1E159827C(&v72, 0x6F43746567646977, 0xED0000747865746ELL, v42);
    v43 = v6;
    v44 = v5;
    v45 = v10;
    v46 = v4;
    v47 = v11;
    v48 = 1;
LABEL_50:
    sub_1E13DED78(v43, v44, v45, v46, v47, v48);
    v2 = *&v71[0];
    goto LABEL_51;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(&v76 + 1) = v18;
      *&v75 = 0x65726F7473707061;
      *(&v75 + 1) = 0xE800000000000000;
      sub_1E1301CF0(&v75, &v72);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      *&v71[0] = v2;
      sub_1E159827C(&v72, 0x7954707041666572, 0xEA00000000006570, v66);
      v43 = v6;
      v44 = v5;
      v45 = v10;
      v46 = v4;
      v47 = 2;
      v48 = 2;
    }

    else
    {
      *(&v76 + 1) = v18;
      if (v11 == 3)
      {
        *&v75 = 0x746E6563656D6167;
        *(&v75 + 1) = 0xEA00000000007265;
        sub_1E1301CF0(&v75, &v72);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v2;
        sub_1E159827C(&v72, 0x7954707041666572, 0xEA00000000006570, v65);
        v43 = v6;
        v44 = v5;
        v45 = v10;
        v46 = v4;
        v47 = 3;
      }

      else
      {
        *&v75 = 0x6867696C746F7073;
        *(&v75 + 1) = 0xE900000000000074;
        sub_1E1301CF0(&v75, &v72);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *&v71[0] = v2;
        sub_1E159827C(&v72, 0x7954707041666572, 0xEA00000000006570, v67);
        v43 = v6;
        v44 = v5;
        v45 = v10;
        v46 = v4;
        v47 = 4;
      }

      v48 = 2;
    }

    goto LABEL_50;
  }

LABEL_77:
  if (v11)
  {
    *(&v76 + 1) = v18;
    *&v75 = 1885957219;
    *(&v75 + 1) = 0xE400000000000000;
    sub_1E1301CF0(&v75, &v72);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *&v71[0] = v2;
    sub_1E159827C(&v72, 0x7954707041666572, 0xEA00000000006570, v68);
    v43 = v6;
    v44 = v5;
    v45 = v10;
    v46 = v4;
    v47 = 1;
    v48 = 2;
    goto LABEL_50;
  }

  sub_1E13DED78(v6, v5, v10, v4, 0, 2u);
LABEL_51:
  v51 = 0;
  v69 = v2;
  v52 = v2 + 64;
  v53 = 1 << *(v2 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v2 + 64);
  v56 = (v53 + 63) >> 6;
  if (v55)
  {
    while (1)
    {
      v57 = v51;
LABEL_62:
      v60 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v61 = v60 | (v57 << 6);
      v62 = (*(v69 + 48) + 16 * v61);
      v64 = *v62;
      v63 = v62[1];
      sub_1E137A5C4(*(v69 + 56) + 32 * v61, v71);
      *&v72 = v64;
      *(&v72 + 1) = v63;
      sub_1E1301CF0(v71, &v73);

      v59 = v57;
LABEL_63:
      v75 = v72;
      v76 = v73;
      v77 = v74;
      if (!*(&v72 + 1))
      {
        break;
      }

      sub_1E1301CF0(&v76, &v72);
      __swift_mutable_project_boxed_opaque_existential_1(v89, *(v89 + 24));
      sub_1E1AF4A1C();
      if (v70)
      {
        __swift_destroy_boxed_opaque_existential_1(&v72);

        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v72);

      v51 = v59;
      if (!v55)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    if (v56 <= v51 + 1)
    {
      v58 = v51 + 1;
    }

    else
    {
      v58 = v56;
    }

    v59 = v58 - 1;
    while (1)
    {
      v57 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v57 >= v56)
      {
        v55 = 0;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        goto LABEL_63;
      }

      v55 = *(v52 + 8 * v57);
      ++v51;
      if (v55)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E16D0204()
{
  v1 = v0;
  v2 = sub_1E16CF4BC();
  swift_beginAccess();
  *v42 = *(v0 + 208);
  *&v42[11] = *(v0 + 219);
  v3 = *(v0 + 192);
  v41[2] = *(v0 + 176);
  v41[3] = v3;
  v4 = *(v0 + 160);
  v41[0] = *(v0 + 144);
  v41[1] = v4;
  v5 = v3;
  v6 = *v42;
  v7 = *&v42[16];
  v8 = v42[24];
  if (*(&v41[0] + 1) == 2)
  {
    *&v33 = *&v41[0];
    *(&v33 + 1) = 2;
    v9 = *(v0 + 176);
    v34 = *(v0 + 160);
    v35 = v9;
    v36 = v3;
    v37 = *v42;
    v38 = *&v42[16];
    v39 = v42[24];
    v40 = *&v42[25];
    sub_1E134FD1C(v41, &v31, &qword_1ECEB7B78);
    sub_1E1308058(&v33, &qword_1ECEB7B78);
LABEL_5:
    sub_1E16D0AB4();
    goto LABEL_24;
  }

  v33 = v41[0];
  v10 = *(v0 + 176);
  v34 = *(v0 + 160);
  v35 = v10;
  v36 = v3;
  v37 = *v42;
  v38 = *&v42[16];
  v39 = v42[24];
  v40 = *&v42[25];
  sub_1E134FD1C(v41, &v31, &qword_1ECEB7B78);
  sub_1E13E2380(v5, *(&v5 + 1), v6, *(&v6 + 1), v7, v8);
  sub_1E1308058(&v33, &qword_1ECEB7B78);
  if (*(&v5 + 1))
  {
    if (*(&v5 + 1) == 1)
    {
      goto LABEL_5;
    }

    v32 = MEMORY[0x1E69E6158];
    v31 = v5;
    sub_1E1301CF0(&v31, v30);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v30, 0x7041666552747865, 0xEA00000000003270, isUniquelyReferenced_nonNull_native);
  }

  if (*(&v6 + 1))
  {
    v32 = MEMORY[0x1E69E6158];
    v31 = v6;
    sub_1E1301CF0(&v31, v30);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v30, 0x7255666552747865, 0xEA0000000000326CLL, v12);
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v32 = MEMORY[0x1E69E6158];
      *&v31 = 0x746567646977;
      *(&v31 + 1) = 0xE600000000000000;
      sub_1E1301CF0(&v31, v30);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v2;
      sub_1E159827C(v30, 0x7041666552747865, 0xED00006570795470, v13);
      v15 = v5 >> 64;
      v14 = v5;
      v17 = v6 >> 64;
      v16 = v6;
      v18 = v7;
      v19 = 1;
    }

    else
    {
      if (v7 <= 1)
      {
        if (!v7)
        {
          sub_1E13DED78(v5, *(&v5 + 1), v6, *(&v6 + 1), 0, 2u);
          goto LABEL_24;
        }

        v32 = MEMORY[0x1E69E6158];
        *&v31 = 1885957219;
        *(&v31 + 1) = 0xE400000000000000;
        sub_1E1301CF0(&v31, v30);
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v29 = v2;
        sub_1E159827C(v30, 0x7041666552747865, 0xED00006570795470, v24);
        v15 = v5 >> 64;
        v14 = v5;
        v17 = v6 >> 64;
        v16 = v6;
        v18 = 1;
      }

      else if (v7 == 2)
      {
        v32 = MEMORY[0x1E69E6158];
        *&v31 = 0x65726F7453707061;
        *(&v31 + 1) = 0xE800000000000000;
        sub_1E1301CF0(&v31, v30);
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v29 = v2;
        sub_1E159827C(v30, 0x7041666552747865, 0xED00006570795470, v22);
        v15 = v5 >> 64;
        v14 = v5;
        v17 = v6 >> 64;
        v16 = v6;
        v18 = 2;
      }

      else
      {
        v32 = MEMORY[0x1E69E6158];
        if (v7 == 3)
        {
          *&v31 = 0x746E6563656D6167;
          *(&v31 + 1) = 0xEA00000000007265;
          sub_1E1301CF0(&v31, v30);
          v21 = swift_isUniquelyReferenced_nonNull_native();
          v29 = v2;
          sub_1E159827C(v30, 0x7041666552747865, 0xED00006570795470, v21);
          v15 = v5 >> 64;
          v14 = v5;
          v17 = v6 >> 64;
          v16 = v6;
          v18 = 3;
        }

        else
        {
          *&v31 = 0x6867696C746F7073;
          *(&v31 + 1) = 0xE900000000000074;
          sub_1E1301CF0(&v31, v30);
          v23 = swift_isUniquelyReferenced_nonNull_native();
          v29 = v2;
          sub_1E159827C(v30, 0x7041666552747865, 0xED00006570795470, v23);
          v15 = v5 >> 64;
          v14 = v5;
          v17 = v6 >> 64;
          v16 = v6;
          v18 = 4;
        }
      }

      v19 = 2;
    }
  }

  else
  {
    v32 = MEMORY[0x1E69E6158];
    *&v31 = 0x696C6F706D617274;
    *(&v31 + 1) = 0xEA0000000000656ELL;
    sub_1E1301CF0(&v31, v30);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v2;
    sub_1E159827C(v30, 0x7041666552747865, 0xED00006570795470, v20);
    v15 = v5 >> 64;
    v14 = v5;
    v17 = v6 >> 64;
    v16 = v6;
    v18 = v7;
    v19 = 0;
  }

  sub_1E13DED78(v14, v15, v16, v17, v18, v19);
  v2 = v29;
LABEL_24:
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;

  v25 = *(v0 + 72);
  if (v25)
  {
    v26 = *(v1 + 64);
    *(&v34 + 1) = MEMORY[0x1E69E6158];
    *&v33 = v26;
    *(&v33 + 1) = v25;
    sub_1E1301CF0(&v33, &v31);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v30[0] = v2;
    sub_1E159827C(&v31, 0x6C7255666572, 0xE600000000000000, v27);
    return *&v30[0];
  }

  return v2;
}

uint64_t sub_1E16D0820(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  v18 = a1[2];
  v19 = *a1;
  v4 = a1[4];
  v5 = *(a1 + 40);
  v7 = ((v4 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0 && v5 == 2;
  swift_beginAccess();
  *&v27[11] = *(v1 + 219);
  v8 = *(v1 + 192);
  v26[2] = *(v1 + 176);
  v26[3] = v8;
  *v27 = *(v1 + 208);
  v9 = *(v1 + 160);
  v26[0] = *(v1 + 144);
  v26[1] = v9;
  v10 = v27[26];
  if (*(&v26[0] + 1) == 2)
  {
    *&v21 = *&v26[0];
    *(&v21 + 1) = 2;
    v11 = *(v1 + 208);
    v24 = *(v1 + 192);
    *v25 = v11;
    *&v25[10] = *(v1 + 218);
    v12 = *(v1 + 176);
    v22 = *(v1 + 160);
    v23 = v12;
    v25[26] = v27[26];
    sub_1E134FD1C(v26, v20, &qword_1ECEB7B78);
    sub_1E1308058(&v21, &qword_1ECEB7B78);
  }

  else
  {
    v21 = v26[0];
    v13 = *(v1 + 208);
    v24 = *(v1 + 192);
    *v25 = v13;
    *&v25[10] = *(v1 + 218);
    v14 = *(v1 + 176);
    v22 = *(v1 + 160);
    v23 = v14;
    v25[26] = v27[26];
    sub_1E134FD1C(v26, v20, &qword_1ECEB7B78);
    result = sub_1E1308058(&v21, &qword_1ECEB7B78);
    if (v10 & v7)
    {
      return result;
    }
  }

  v16 = *(v1 + 192);
  v23 = *(v1 + 176);
  v24 = v16;
  *v25 = *(v1 + 208);
  *&v25[11] = *(v1 + 219);
  v17 = *(v1 + 160);
  v21 = *(v1 + 144);
  v22 = v17;
  *(v1 + 144) = v19;
  *(v1 + 152) = v2;
  *(v1 + 160) = v18;
  *(v1 + 168) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  *(v1 + 192) = v19;
  *(v1 + 200) = v2;
  *(v1 + 208) = v18;
  *(v1 + 216) = v3;
  *(v1 + 224) = v4;
  *(v1 + 232) = v5;
  *(v1 + 233) = v7;
  *(v1 + 234) = 0;

  sub_1E13E23E4(v4, v5);

  sub_1E13E23E4(v4, v5);
  return sub_1E1308058(&v21, &qword_1ECEB7B78);
}

uint64_t sub_1E16D0A28()
{
  result = swift_beginAccess();
  v2 = *(v0 + 152);
  if (v2 != 2 && (v2 != 1 || *(v0 + 200) != 1))
  {
    v5 = sub_1E16CF2DC();
    if (*(v4 + 8) != 2)
    {
      *(v4 + 90) = 1;
    }

    return (v5)(v6, 0);
  }

  return result;
}

uint64_t sub_1E16D0AB4()
{
  swift_beginAccess();
  *&v23[11] = *(v0 + 219);
  v1 = v0[12];
  v22[2] = v0[11];
  v22[3] = v1;
  *v23 = v0[13];
  v2 = v0[10];
  v22[0] = v0[9];
  v22[1] = v2;
  v3 = v23[26];
  if (*(&v22[0] + 1) == 2)
  {
    *&v16 = *&v22[0];
    *(&v16 + 1) = 2;
    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[10];
    v18 = v0[11];
    v19 = v4;
    *v20 = v5;
    *&v20[10] = *(v0 + 218);
    v17 = v6;
    v21 = v23[26];
    sub_1E134FD1C(v22, v14, &qword_1ECEB7B78);
    v7 = &v16;
  }

  else
  {
    v16 = v22[0];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[10];
    v18 = v0[11];
    v19 = v8;
    *v20 = v9;
    *&v20[10] = *(v0 + 218);
    v17 = v10;
    v21 = v23[26];
    sub_1E134FD1C(v22, v14, &qword_1ECEB7B78);
    result = sub_1E1308058(&v16, &qword_1ECEB7B78);
    if ((v3 & 1) == 0)
    {
      return result;
    }

    v12 = v0[12];
    v14[2] = v0[11];
    v14[3] = v12;
    v15[0] = v0[13];
    *(v15 + 11) = *(v0 + 219);
    v13 = v0[10];
    v14[0] = v0[9];
    v14[1] = v13;
    v0[9] = xmmword_1E1B28A10;
    v0[10] = 0u;
    v0[11] = 0u;
    v0[12] = 0u;
    v0[13] = 0u;
    *(v0 + 219) = 0u;
    v7 = v14;
  }

  return sub_1E1308058(v7, &qword_1ECEB7B78);
}

uint64_t sub_1E16D0C38(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_1E16D0C78(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  *(v2 + 136) = a1;

  a2(v5);
  *(v2 + 136) = 0;
}

uint64_t MetricsActivity.deinit()
{

  sub_1E1308058(v0 + 96, &unk_1ECEB7230);

  sub_1E16D0DCC(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
  return v0;
}

uint64_t MetricsActivity.__deallocating_deinit()
{
  MetricsActivity.deinit();

  return swift_deallocClassInstance();
}

void sub_1E16D0DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  if (a2 != 2)
  {
    sub_1E13DED78(a1, a2, a3, a4, a5, a6);

    sub_1E13DED78(a7, a8, a9, a10, a11, a12);
  }
}

void sub_1E16D128C()
{
  v0 = *MEMORY[0x1E695E4D0];
  v1 = objc_allocWithZone(ASKAtomicBox);
  v2 = v0;
  v3 = [v1 initWithValue_];

  qword_1ECEB7B80 = v3;
}

id sub_1E16D12F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7438);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = [objc_opt_self() ams:a3 configurationWithProcessInfo:a1 bag:?];
  swift_unknownObjectRetain();
  sub_1E1AF530C();
  v9 = sub_1E1AF539C();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_1E1AF352C();
  sub_1E1308058(v7, &qword_1ECEB7438);
  return v8;
}

uint64_t sub_1E16D1430@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v93 = a4;
  v94 = a5;
  v100 = a1;
  v8 = sub_1E1AF5E5C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v95 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  v16 = sub_1E1AEFCCC();
  v96 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v25)
    {
      goto LABEL_18;
    }

    LODWORD(v26) = HIDWORD(v100) - v100;
    if (!__OFSUB__(HIDWORD(v100), v100))
    {
      v26 = v26;
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  if (v25 != 2)
  {
    goto LABEL_18;
  }

  v28 = *(v100 + 16);
  v27 = *(v100 + 24);
  v29 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v29)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (v26 < 460801)
  {
    goto LABEL_18;
  }

  v80 = v24;
  v81 = v15;
  v90 = v22;
  v91 = v16;
  v87 = v12;
  if (qword_1EE1E3598 != -1)
  {
    goto LABEL_24;
  }

LABEL_9:
  v30 = sub_1E1AF591C();
  v31 = __swift_project_value_buffer(v30, qword_1EE216110);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v33 = *(sub_1E1AF38EC() - 8);
  v34 = *(v33 + 72);
  v35 = *(v33 + 80);
  v36 = (v35 + 32) & ~v35;
  v83 = v32;
  v84 = v34;
  v88 = v35;
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v82 = v36;
  sub_1E1AF382C();
  v89 = v30;
  v85 = v31;
  sub_1E1AF54BC();

  v37 = a3[3];
  v38 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v37);
  v39 = (*(v38 + 8))(v37, v38);
  v41 = v40;
  sub_1E1AF44CC();
  v42 = sub_1E1AF44BC();
  v43 = sub_1E14EEFD0(v39, v41, v42, MEMORY[0x1E69AB170], 7368801);
  v86 = a2;
  v92 = v42;
  if ((v43 & 1) != 0 || (sub_1E14EF420(v100, a2, v39, v41, v42, MEMORY[0x1E69AB170], 7368801, 0xE300000000000000), !v5))
  {
    v44 = v91;

    v45 = [objc_opt_self() defaultManager];
    v46 = v90;
    sub_1E14EEC8C(v45);

    sub_1E1AEFC0C();
    sub_1E1AEFC2C();
    v47 = v96;
    v48 = *(v96 + 8);
    v48(v19, v44);
    v48(v46, v44);
    v49 = a3[3];
    v50 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm(a3, v49);
    (*(v50 + 16))(v49, v50);
    (*(v47 + 56))(v81, 1, 1, v44);
    v51 = sub_1E1AF447C();
    v52 = MEMORY[0x1E69AB160];
    v53 = v94;
    v94[3] = v51;
    v53[4] = v52;
    __swift_allocate_boxed_opaque_existential_0(v53);
    v54 = v93;
    sub_1E1AF446C();
    if (!v5)
    {
    }

    __swift_deallocate_boxed_opaque_existential_1(v53);
  }

  else
  {
  }

  v93 = v5;
  v80 = v82 + 2 * v84;
  v81 = 0;
  v55 = swift_allocObject();
  v79 = xmmword_1E1B02CD0;
  *(v55 + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v56 = sub_1E1AEFB1C();
  v57 = AMSLogableError();

  v58 = sub_1E1AF5DFC();
  v60 = v59;

  v99 = MEMORY[0x1E69E6158];
  v97 = v58;
  v98 = v60;
  sub_1E1AF38BC();
  sub_1E1308058(&v97, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  v61 = v81;
  sub_1E14EFB84(v92, MEMORY[0x1E69AB170], 7368801);
  if (v61)
  {
    *(swift_allocObject() + 16) = v79;
    sub_1E1AF382C();
    v62 = sub_1E1AEFB1C();
    v63 = AMSLogableError();

    v64 = sub_1E1AF5DFC();
    v66 = v65;

    v99 = MEMORY[0x1E69E6158];
    v97 = v64;
    v98 = v66;
    sub_1E1AF38BC();
    sub_1E1308058(&v97, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    v67 = v61;
    v12 = v87;
    v22 = v90;
  }

  else
  {

    v12 = v87;
    v22 = v90;
    v67 = v93;
  }

  v16 = v91;
LABEL_18:
  sub_1E1AF5E4C();
  sub_1E1AF5E1C();
  if (v68)
  {
    v69 = a3[3];
    v70 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm(a3, v69);
    (*(v70 + 16))(v69, v70);
    (*(v96 + 56))(v12, 0, 1, v16);
    v71 = sub_1E1AF58DC();
    v72 = MEMORY[0x1E69AB660];
    v73 = v94;
    v94[3] = v71;
    v73[4] = v72;
    __swift_allocate_boxed_opaque_existential_0(v73);
    return sub_1E1AF58CC();
  }

  else
  {
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v97 = 0xD000000000000012;
    v98 = 0x80000001E1B70560;
    v75 = v22;
    v76 = a3[3];
    v77 = a3[4];
    __swift_project_boxed_opaque_existential_1Tm(a3, v76);
    (*(v77 + 16))(v76, v77);
    sub_1E1308E74(&qword_1ECEB7B88, MEMORY[0x1E6968FB0]);
    v78 = sub_1E1AF742C();
    MEMORY[0x1E68FECA0](v78);

    (*(v96 + 8))(v75, v16);
    MEMORY[0x1E68FECA0](0x746F6E207369203ELL, 0xED00003846545520);
    sub_1E1AF56FC();
    sub_1E1308E74(&qword_1EE1D2810, MEMORY[0x1E69AB618]);
    swift_allocError();
    sub_1E1AF569C();
    return swift_willThrow();
  }
}

void *ComponentContainerCollectionElementsObserver.__allocating_init(presenter:parent:scrollObserver:impressionsCalculator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[2] = a1;
  v12[3] = a2;
  swift_unknownObjectWeakAssign();

  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  return v12;
}

void *ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  v6[2] = a1;
  v6[3] = a2;
  swift_unknownObjectWeakAssign();

  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.__allocating_init(itemLayoutContext:doesModelContainment:presenter:scrollObserver:impressionsCalculator:parent:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E16D33C0(a1, v16 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  *(v16 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) = a2;
  v17 = (v16 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter);
  *v17 = a3;
  v17[1] = a4;
  v18 = (v16 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_scrollObserver);
  *v18 = a5;
  v18[1] = a6;
  *(v16 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_impressionsCalculator) = a7;
  swift_unknownObjectWeakAssign();

  return v16;
}

void sub_1E16D2078(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v6 = a1;
    v5(ObjectType, v3);
  }
}

uint64_t ComponentContainerCollectionElementsObserver.deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E6901750](v0 + 32);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ComponentContainerCollectionElementsObserver.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E6901750](v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.init(itemLayoutContext:doesModelContainment:presenter:scrollObserver:impressionsCalculator:parent:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_unknownObjectWeakInit();
  sub_1E16D33C0(a1, v8 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  *(v8 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) = a2;
  v17 = (v8 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter);
  *v17 = a3;
  v17[1] = a4;
  v18 = (v8 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_scrollObserver);
  *v18 = a5;
  v18[1] = a6;
  *(v8 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_impressionsCalculator) = a7;
  swift_unknownObjectWeakAssign();

  return v8;
}

uint64_t sub_1E16D2320()
{
  type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  sub_1E1AF3DAC();

  return v1;
}

void sub_1E16D23A8()
{
  type metadata accessor for ItemLayoutContext();
  type metadata accessor for ShelfLayoutContext();

  JUMPOUT(0x1E68F8EA0);
}

uint64_t sub_1E16D2418()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for ItemLayoutContext();
  type metadata accessor for ShelfLayoutContext();
  sub_1E1AF6F6C();
  sub_1E1AF5BAC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C00);
  sub_1E1302CD4(&qword_1EE1E39E0, &qword_1ECEB2C00);
  return sub_1E1AF471C();
}

void sub_1E16D2578(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) == 1)
  {
    type metadata accessor for ItemLayoutContext();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
    sub_1E1AF3DBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7BA8);
    if (swift_dynamicCast())
    {
      if (*(&v5 + 1))
      {
        sub_1E1308EC0(&v4, v7);
        v3 = v7[1];
        *a1 = v7[0];
        *(a1 + 16) = v3;
        *(a1 + 32) = v8;
        return;
      }
    }

    else
    {
      v6 = 0;
      v4 = 0u;
      v5 = 0u;
    }

    sub_1E16D3424(&v4);
    sub_1E1AF71FC();
    __break(1u);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1E16D26D4()
{
  sub_1E16D2578(&v4);
  if (v5)
  {
    sub_1E1308EC0(&v4, v6);
    v0 = v7;
    v1 = v8;
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    v2 = (*(v1 + 32))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_1E16D3424(&v4);
    type metadata accessor for ItemLayoutContext();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    sub_1E1AF3DAC();

    v2 = *(v6[0] + 16);
  }

  return v2;
}

uint64_t sub_1E16D27CC(uint64_t a1)
{
  sub_1E16D2578(&v5);
  if (v6)
  {
    sub_1E1308EC0(&v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    (*(v3 + 16))(a1, v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1E16D3424(&v5);
    type metadata accessor for ItemLayoutContext();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
    return sub_1E1AF3DBC();
  }
}

uint64_t sub_1E16D28F0@<X0>(void (*a1)(char *, uint64_t *, void, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v27 - v4;
  v6 = sub_1E1AF01FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  v16 = v2 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v17 = *(v2 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  v18 = v16 + *(type metadata accessor for ItemLayoutContext() + 32);
  v19 = type metadata accessor for ShelfLayoutContext();
  MEMORY[0x1E68F8EA0](v17, *(v18 + *(v19 + 20)));
  v20 = *(v7 + 16);
  v20(v12, v15, v6);
  v20(v9, v12, v6);
  sub_1E16D348C();
  v21 = sub_1E1AF60CC();
  v22 = sub_1E14D70F4(v21);

  v29 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0);
  sub_1E1302CD4(&qword_1ECEB7BC0, &qword_1ECEB2AB0);
  sub_1E1AF5B9C();
  v23 = *(v7 + 8);
  v23(v12, v6);
  v29 = *(v18 + *(v19 + 36));

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C00);
  v25 = sub_1E1302CD4(&qword_1EE1E39E0, &qword_1ECEB2C00);
  v28(v5, &v29, MEMORY[0x1E69E73E0], v24, v25);
  return (v23)(v15, v6);
}

uint64_t sub_1E16D2C04@<X0>(void (*a1)(uint64_t, uint64_t *, void, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22[0] = v22 - v4;
  v5 = sub_1E1AF01FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v12 = v2 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v13 = v12 + *(type metadata accessor for ItemLayoutContext() + 32);
  v14 = type metadata accessor for ShelfLayoutContext();
  sub_1E1AF01BC();
  sub_1E1AF01DC();
  v15 = *(v6 + 8);
  v15(v8, v5);
  (*(v6 + 16))(v8, v11, v5);
  sub_1E16D348C();
  v16 = sub_1E1AF60CC();
  v17 = sub_1E14D70F4(v16);

  v24 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0);
  sub_1E1302CD4(&qword_1ECEB7BC0, &qword_1ECEB2AB0);
  v18 = v22[0];
  sub_1E1AF5B9C();
  v24 = *(v13 + *(v14 + 36));

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C00);
  v20 = sub_1E1302CD4(&qword_1EE1E39E0, &qword_1ECEB2C00);
  v23(v18, &v24, MEMORY[0x1E69E73E0], v19, v20);
  return (v15)(v11, v5);
}

uint64_t sub_1E16D2ED8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment);
  v4 = *(v1 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter + 8);
  ObjectType = swift_getObjectType();
  v6 = v1 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v7 = v6 + *(type metadata accessor for ItemLayoutContext() + 20);
  if (v3 == 1)
  {
    v8 = a1;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  return (*(v4 + 8))(v7, v8, v9, ObjectType, v4);
}

uint64_t sub_1E16D2F88()
{
  v1 = *(v0 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter + 8);
  ObjectType = swift_getObjectType();
  v3 = v0 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext;
  v4 = type metadata accessor for ItemLayoutContext();
  return (*(v1 + 16))(v3 + *(v4 + 32), ObjectType, v1);
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.deinit()
{
  sub_1E148BB20(v0 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  swift_unknownObjectRelease();
  MEMORY[0x1E6901750](v0 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_parent);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ComponentContainerCollectionElementsObserver.ContainerDelegate.__deallocating_deinit()
{
  sub_1E148BB20(v0 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
  swift_unknownObjectRelease();
  MEMORY[0x1E6901750](v0 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_parent);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1E16D3170(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ItemLayoutContext();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a1)
    {
      v12 = result;
      sub_1E148BABC(a2, v10);
      swift_getKeyPath();
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
      sub_1E1AF3DAC();

      v14 = v25 == 25;
      v15 = *(v4 + 56);
      type metadata accessor for ComponentContainerCollectionElementsObserver.ContainerDelegate();
      v16 = *(v4 + 40);
      v23 = *(v4 + 16);
      v24 = v16;
      Strong = swift_unknownObjectWeakLoadStrong();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1E16D33C0(v10, v18 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_itemLayoutContext);
      *(v18 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_doesModelContainment) = v14;
      v19 = v24;
      *(v18 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_presenter) = v23;
      *(v18 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_scrollObserver) = v19;
      *(v18 + OBJC_IVAR____TtCC11AppStoreKit44ComponentContainerCollectionElementsObserver17ContainerDelegate_impressionsCalculator) = v15;
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v21 = *(v12 + 16);

      v21(v22, &protocol witness table for ComponentContainerCollectionElementsObserver.ContainerDelegate, a2, a3, ObjectType, v12);
    }
  }

  return result;
}

uint64_t sub_1E16D33C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemLayoutContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16D3424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E16D348C()
{
  result = qword_1ECEB7BB8;
  if (!qword_1ECEB7BB8)
  {
    sub_1E1AF01FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7BB8);
  }

  return result;
}

uint64_t type metadata accessor for ComponentContainerCollectionElementsObserver.ContainerDelegate()
{
  result = qword_1ECEB7BC8;
  if (!qword_1ECEB7BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16D35D0()
{
  result = type metadata accessor for ItemLayoutContext();
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

uint64_t sub_1E16D3884(uint64_t a1)
{
  sub_1E1300B24(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  return swift_dynamicCast() ^ 1;
}

uint64_t sub_1E16D3914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(v7, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  v8 = swift_dynamicCast();
  if (v8)
  {
    sub_1E16D3B94(v6, a4);
  }

  return v8 ^ 1u;
}

uint64_t _s11AppStoreKit24OfferButtonConfigurationPAAE24preferDisabledAnimations16whenUpdatingFromSbAaB_p_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(v6, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68);
  v7 = swift_dynamicCast();
  if (v7)
  {
    (*(v3 + 8))(v5, a2);
  }

  return v7 ^ 1u;
}

uint64_t sub_1E16D3B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E16D3BF4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2FC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC11AppStoreKit20JSResilientDeepLinks_bag);

  result = ASKBagContract.resilientDeepLinkPatterns.getter();
  v10 = result;
  v11 = *(result + 16);
  if (v11)
  {
    v19[1] = v8;
    v12 = 0;
    v13 = (result + 40);
    while (v12 < *(v10 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v19[4] = a1;
      v19[5] = a2;
      v19[2] = v14;
      v19[3] = v15;
      v16 = sub_1E1AEFF8C();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
      sub_1E13B8AA4();

      sub_1E1AF6E6C();
      v18 = v17;
      sub_1E14B7D18(v7);

      if ((v18 & 1) == 0)
      {

        return 1;
      }

      ++v12;
      v13 += 2;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

void sub_1E16D4010(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void trackArcadeLaunchAttribution(_:)(uint64_t a1)
{
  v2 = [objc_opt_self() defaultService];
  v3 = sub_1E1AF5DBC();
  v4 = sub_1E1AF5C6C();
  v6[4] = sub_1E16D4684;
  v6[5] = a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1E16D4010;
  v6[3] = &block_descriptor_52;
  v5 = _Block_copy(v6);

  [v2 recordAppLaunchForBundleID:v3 additionalMetrics:v4 replyHandler:v5];
  _Block_release(v5);
}

void sub_1E16D41F0(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_1ECEB12B8 != -1)
    {
      swift_once();
    }

    v6 = sub_1E1AF591C();
    __swift_project_value_buffer(v6, qword_1ECEF4BF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    sub_1E1AF382C();
    v8 = *(a3 + OBJC_IVAR____TtC11AppStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);
    v7 = *(a3 + OBJC_IVAR____TtC11AppStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier + 8);
    v16 = MEMORY[0x1E69E6158];
    v14 = v8;
    v15 = v7;

    sub_1E1AF38BC();
    sub_1E13E44F8(&v14);
    sub_1E1AF382C();
    swift_getErrorValue();
    v16 = v13;
    v9 = __swift_allocate_boxed_opaque_existential_0(&v14);
    (*(*(v13 - 8) + 16))(v9);
    sub_1E1AF38DC();
    sub_1E13E44F8(&v14);
    sub_1E1AF54AC();
  }

  else
  {
    if (qword_1ECEB12B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1ECEF4BF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v12 = *(a3 + OBJC_IVAR____TtC11AppStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);
    v11 = *(a3 + OBJC_IVAR____TtC11AppStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier + 8);
    v16 = MEMORY[0x1E69E6158];
    v14 = v12;
    v15 = v11;

    sub_1E1AF38BC();
    sub_1E13E44F8(&v14);
    sub_1E1AF548C();
  }
}

uint64_t sub_1E16D4590(uint64_t a1)
{
  v2 = sub_1E1AF3E2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  trackArcadeLaunchAttribution(_:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  (*(v3 + 104))(v5, *MEMORY[0x1E69AB010], v2);
  return sub_1E1AF582C();
}

unint64_t sub_1E16D4690()
{
  result = qword_1ECEB7390;
  if (!qword_1ECEB7390)
  {
    type metadata accessor for ArcadeLaunchAttributionAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7390);
  }

  return result;
}

uint64_t ProductStarRatings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  LOBYTE(a2) = *a2;
  sub_1E138853C(a1, v30);
  v22 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_1E138853C(v30, v29);
  v28 = a2;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_1E1A572C0(v29, &v28, v20);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v30, &unk_1ECEB5670);
  return v25;
}

uint64_t ProductStarRatings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v27 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v27 - v20;
  LOBYTE(a2) = *a2;
  sub_1E138853C(a1, v30);
  v22 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  v23 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v27;
  v23[1] = a10;
  sub_1E138853C(v30, v29);
  v28 = a2;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_1E1A572C0(v29, &v28, v21);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v30, &unk_1ECEB5670);
  return v25;
}

uint64_t ProductStarRatings.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t ProductStarRatings.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductStarRatings()
{
  result = qword_1ECEB7C60;
  if (!qword_1ECEB7C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *ShowSettingsAction.__allocating_init(title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v11 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v12 = sub_1E1AF3E1C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v10[v11], a3, v12);
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v15 = sub_1E1AF46DC();
  (*(*(v15 - 8) + 56))(&v10[v14], 1, 1, v15);
  v16 = &v10[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v17 = &v10[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v33, &v30);
  if (*(&v31 + 1))
  {
    v18 = v31;
    *v17 = v30;
    *(v17 + 1) = v18;
    *(v17 + 4) = v32;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v20 = v6;
    v21 = a3;
    v22 = a1;
    v23 = a2;
    v24 = v19;
    v25 = v7;
    v27 = v26;
    (*(v25 + 8))(v9, v20);
    v29[1] = v24;
    v29[2] = v27;
    a2 = v23;
    a1 = v22;
    a3 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v30, &unk_1ECEB5670);
  }

  (*(v13 + 8))(a3, v12);
  sub_1E1308058(v33, &unk_1ECEB5670);
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  return v10;
}

void *ShowSettingsAction.init(title:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v15 + 16))(v17, a3, v14);
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v19 = 0u;
  v19[1] = 0u;
  sub_1E138853C(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = v8;
    v22 = v20;
    v31 = a3;
    v23 = a1;
    v24 = a2;
    v26 = v25;
    (*(v32 + 8))(v10, v21);
    v33 = v22;
    v34 = v26;
    a2 = v24;
    a1 = v23;
    a3 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  (*(v15 + 8))(a3, v14);
  sub_1E1308058(v41, &unk_1ECEB5670);
  v27 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_1E134B7C8(v13, v4 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = 0;
  v4[5] = 0;
  (*(v15 + 32))(v4 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v17, v14);
  return v4;
}

char *ShowSettingsAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
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

char *ShowSettingsAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
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

uint64_t ShowSettingsAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  return v0;
}

uint64_t ShowSettingsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShowSettingsAction()
{
  result = qword_1ECEB7C70;
  if (!qword_1ECEB7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeWelcomeItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeWelcomeItem.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeWelcomeItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v27 = a2;
  v3 = v2;
  v26 = sub_1E1AF39DC();
  v23 = *(v26 - 8);
  v5 = v23;
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  sub_1E1AF381C();
  v12 = sub_1E1AF37CC();
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  v3[2] = v12;
  v3[3] = v14;
  v24 = v11;
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  v18 = v17;
  v15(v10, v7);
  v3[4] = v16;
  v3[5] = v18;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v19 = *(v5 + 16);
  v20 = v26;
  v21 = v27;
  v19(v25, v27, v26);
  sub_1E16D776C(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
  sub_1E1AF464C();
  (*(v23 + 8))(v21, v20);
  v15(v24, v7);
  v3[6] = v28;
  return v3;
}

void *ArcadeWelcomeItem.__allocating_init(headline:body:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ArcadeWelcomeItem.init(headline:body:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ArcadeWelcomeItem.headline.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeWelcomeItem.body.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArcadeWelcomeItem.deinit()
{

  return v0;
}

uint64_t ArcadeWelcomeItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ArcadeWelcomeContent.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeWelcomeContent.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ArcadeWelcomeContent.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v48 - v6;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v15, v7);
  v3[2] = v16;
  v3[3] = v18;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  v22 = v21;
  v19(v15, v7);
  v3[4] = v20;
  v3[5] = v22;
  v54 = v3;
  v55 = a1;
  v23 = v8 + 8;
  v24 = v7;
  v25 = v49;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v53 = v19;
  v51 = v23;
  v19(v13, v7);
  v26 = sub_1E1AF5A6C();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v25, 1, v26);
  if (v28 == 1)
  {
    v29 = v50;
    sub_1E14352B8(v25);
    v30 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v28);
    *(&v48 - 2) = v56;
    type metadata accessor for ArcadeWelcomeItem();
    v31 = v50;
    v32 = sub_1E1AF59FC();
    v29 = v31;
    if (v31)
    {

      type metadata accessor for ArcadeWelcomeContent();
      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v30 = v32;
    (*(v27 + 8))(v25, v26);
  }

  v33 = v54;
  v54[6] = v30;
  type metadata accessor for Action();
  v34 = v52;
  v35 = v55;
  sub_1E1AF381C();
  v36 = v56;
  v37 = static Action.makeInstance(byDeserializing:using:)(v34, v56);
  if (v29)
  {
    v38 = v53;
    v53(v35, v24);
    v38(v34, v24);

    type metadata accessor for ArcadeWelcomeContent();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v37;
    v54 = 0;
    v40 = v53;
    v53(v34, v24);
    v33[7] = v39;
    sub_1E1AF381C();
    v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v15, v24);
    v33[9] = v41;
    sub_1E1AF381C();
    v42 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v15, v24);
    v33[10] = v42;
    sub_1E1AF381C();
    v43 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v15, v24);
    v33[8] = v43;
    sub_1E1AF381C();
    v44 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v15, v24);
    v33[11] = v44;
    sub_1E1AF381C();
    v45 = static Action.tryToMakeInstance(byDeserializing:using:)(v15, v36);
    v40(v35, v24);
    v40(v15, v24);
    v33[12] = v45;
  }

  v46 = sub_1E1AF39DC();
  (*(*(v46 - 8) + 8))(v36, v46);
  return v33;
}

uint64_t sub_1E16D65BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeWelcomeItem();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E16D776C(&qword_1ECEB7C88, v13, type metadata accessor for ArcadeWelcomeItem);
  return sub_1E1AF464C();
}

__n128 ArcadeWelcomeContent.__allocating_init(title:subtitle:items:continueAction:familyAction:dismissingContinueAction:nonDismissingContinueAction:dismissingFamilyAction:nonDismissingFamilyAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  result = a9;
  *(v18 + 80) = a9;
  *(v18 + 96) = a10;
  return result;
}

uint64_t ArcadeWelcomeContent.init(title:subtitle:items:continueAction:familyAction:dismissingContinueAction:nonDismissingContinueAction:dismissingFamilyAction:nonDismissingFamilyAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 96) = a10;
  return v10;
}

uint64_t ArcadeWelcomeContent.deinit()
{

  return v0;
}

uint64_t ArcadeWelcomeContent.__deallocating_deinit()
{
  ArcadeWelcomeContent.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E16D69A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X4>, uint64_t (*a4)(uint64_t, uint64_t)@<X6>, uint64_t *a5@<X8>)
{
  a3();
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t ArcadeWelcomePage.ContentType.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t ArcadeWelcomePage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeWelcomePage.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ArcadeWelcomePage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF3C3C();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v42 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v43 = v39 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = v39 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - v14;
  v49 = sub_1E1AF380C();
  v16 = *(v49 - 8);
  v17 = MEMORY[0x1EEE9AC00](v49);
  v39[1] = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v39 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v45 = v39 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v39 - v24;
  v53 = a1;
  sub_1E1AF381C();
  v26 = *(v7 + 16);
  v51 = v6;
  v52 = a2;
  v47 = v26;
  v26(v15, a2, v6);
  type metadata accessor for ArcadeWelcomeContent();
  v27 = swift_allocObject();
  v28 = v48;
  ArcadeWelcomeContent.init(deserializing:using:)(v25, v15);
  if (v28)
  {
    (*(v7 + 8))(v52, v51);
    (*(v16 + 8))(v53, v49);
    v29 = v50;
    type metadata accessor for ArcadeWelcomePage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v21;
    v30 = v50;
    *(v50 + 16) = v27;
    v31 = v45;
    sub_1E1AF381C();
    v32 = v46;
    v47(v46, v52, v51);
    v33 = swift_allocObject();
    ArcadeWelcomeContent.init(deserializing:using:)(v31, v32);
    *(v30 + 24) = v33;
    sub_1E1AF381C();
    v47(v43, v52, v51);
    v34 = v44;
    sub_1E1AF3BAC();
    (*(v40 + 32))(v30 + OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageMetrics, v34, v41);
    v48 = type metadata accessor for PageRenderMetricsEvent();
    v36 = v53;
    sub_1E1AF381C();
    v37 = v51;
    v38 = v52;
    v47(v42, v52, v51);
    sub_1E16D776C(&qword_1EE1EC280, 255, type metadata accessor for PageRenderMetricsEvent);
    v29 = v50;
    sub_1E1AF464C();
    (*(v7 + 8))(v38, v37);
    (*(v16 + 8))(v36, v49);
    *(v29 + OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageRenderEvent) = v54;
  }

  return v29;
}

uint64_t type metadata accessor for ArcadeWelcomePage()
{
  result = qword_1EE1DED38;
  if (!qword_1EE1DED38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeWelcomePage.__allocating_init(createNewFamilyContent:familyOrganizerContent:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageMetrics;
  v10 = sub_1E1AF3C3C();
  (*(*(v10 - 8) + 32))(v8 + v9, a3, v10);
  *(v8 + OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageRenderEvent) = a4;
  return v8;
}

uint64_t ArcadeWelcomePage.init(createNewFamilyContent:familyOrganizerContent:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v7 = OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageMetrics;
  v8 = sub_1E1AF3C3C();
  (*(*(v8 - 8) + 32))(v4 + v7, a3, v8);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageRenderEvent) = a4;
  return v4;
}

uint64_t ArcadeWelcomePage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeWelcomePage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArcadeWelcomePage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1E16D7450()
{
  result = qword_1ECEB7C80;
  if (!qword_1ECEB7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7C80);
  }

  return result;
}

uint64_t sub_1E16D74A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArcadeWelcomePage();
  v7 = swift_allocObject();
  result = ArcadeWelcomePage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E16D7524@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit17ArcadeWelcomePage_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E16D7660()
{
  result = sub_1E1AF3C3C();
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

uint64_t sub_1E16D776C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E16D77BC(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 120) - 8) + 32))(v2 + *(*v2 + 128), a1);
  return sub_1E14FC3EC();
}

uint64_t sub_1E16D7850()
{
  MEMORY[0x1E68FECA0](0x203A65756C6176, 0xE700000000000000);
  sub_1E1AF746C();
  return 0;
}

uint64_t sub_1E16D7994()
{
  v1 = *v0;
  v2 = sub_1E14FC3EC();
  (*(*(*(v1 + 120) - 8) + 8))(v2 + *(*v2 + 128));
  return v2;
}

uint64_t sub_1E16D7A1C()
{
  sub_1E16D7994();

  return swift_deallocClassInstance();
}

uint64_t Conditional<>.init(roundedCornersValue:nonRoundedCornersValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v8 + 16);
  v12 = (v8 + 8);
  if (JUScreenClassHasRoundedCorners())
  {
    type metadata accessor for InvariantExpression();
    (*v11)(v10, a1, a3);
  }

  else
  {
    type metadata accessor for InvariantExpression();
    (*v11)(v10, a2, a3);
  }

  v13 = sub_1E16D77BC(v10);
  v14 = *v12;
  (*v12)(a2, a3);
  v14(a1, a3);
  result = sub_1E130C97C(v13, &v17);
  *a4 = v17;
  return result;
}

uint64_t Conditional<>.init(whenOneOf:use:otherwiseUse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Main = JUScreenClassGetMain();
  v14 = sub_1E14AB290(Main, a1);

  v15 = (v10 + 16);
  v16 = (v10 + 8);
  type metadata accessor for InvariantExpression();
  if (v14)
  {
    (*v15)(v12, a2, a4);
  }

  else
  {
    (*v15)(v12, a3, a4);
  }

  v17 = sub_1E16D77BC(v12);
  v18 = *v16;
  (*v16)(a3, a4);
  v18(a2, a4);
  result = sub_1E130C97C(v17, &v21);
  *a5 = v21;
  return result;
}

uint64_t sub_1E16D7DA4()
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

uint64_t InAppPurchaseStateDataSource.__allocating_init(withStateProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  InAppPurchaseStateDataSource.init(withStateProvider:)(a1);
  return v2;
}

void *InAppPurchaseStateDataSource.init(withStateProvider:)(uint64_t a1)
{
  v1[8] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  sub_1E1300B24(a1, (v1 + 2));
  v1[7] = MEMORY[0x1E69E7CC0];
  v3 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v4 = v1[5];
  v5 = v1[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v4);
  v6 = *(v5 + 16);

  v6(sub_1E16D80B8, v3, v4, v5);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a1);

  return v1;
}

uint64_t sub_1E16D7FA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    sub_1E1300B24(v1 + 16, v6);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1Tm(v6, v7);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = *(v3 + 40);

    v5(sub_1E16D89C0, v4, v2, v3);

    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

Swift::Void __swiftcall InAppPurchaseStateDataSource.refreshData()()
{
  swift_beginAccess();
  sub_1E1300B24(v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v2 + 40);

  v4(sub_1E16D8314, v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t InAppPurchaseStateDataSource.state(for:subscriptionFamilyId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  swift_beginAccess();
  sub_1E1300B24(v3 + 16, v12);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1Tm(v12, v13);
  v11[0] = v6;
  v11[1] = v7;
  (*(v9 + 32))(v11, a2, a3, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1E16D8260()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    [v2 lock];
    sub_1E16D831C(v1);
    [v2 unlock];
  }

  return result;
}

uint64_t sub_1E16D831C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_1E16D8638(v4, v15);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v16(a1);
      }

      sub_1E16D88BC(v15);
      v4 += 24;
      --v3;
    }

    while (v3);

    v5 = *(a1 + 56);
    v6 = *(v5 + 16);

    if (v6)
    {
      v8 = 0;
      v9 = v5 + 32;
      v10 = MEMORY[0x1E69E7CC0];
      while (v8 < *(v5 + 16))
      {
        sub_1E16D8638(v9, v15);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1E16D8884(v15, v14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E135C9A8(0, *(v10 + 16) + 1, 1);
            v10 = v17;
          }

          v13 = *(v10 + 16);
          v12 = *(v10 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_1E135C9A8((v12 > 1), v13 + 1, 1);
            v10 = v17;
          }

          *(v10 + 16) = v13 + 1;
          result = sub_1E16D8884(v14, v10 + 24 * v13 + 32);
        }

        else
        {
          result = sub_1E16D88BC(v15);
        }

        ++v8;
        v9 += 24;
        if (v6 == v8)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *(a1 + 56) = v10;
}

id InAppPurchaseStateDataSource.addObserver(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 64);
  [v6 lock];
  swift_unknownObjectWeakInit();
  v14 = a2;
  v15 = a3;
  sub_1E16D8638(v13, v12);
  swift_beginAccess();
  v7 = *(v3 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 56) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1E172EDD0(0, v7[2] + 1, 1, v7);
    *(v3 + 56) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1E172EDD0((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  sub_1E16D8884(v12, &v7[3 * v10 + 4]);
  *(v3 + 56) = v7;
  swift_endAccess();
  sub_1E16D88BC(v13);
  return [v6 unlock];
}

id InAppPurchaseStateDataSource.removeObserver(_:)(uint64_t a1)
{
  v2 = v1;
  v15 = *(v1 + 64);
  [v15 lock];
  swift_beginAccess();
  v4 = *(v1 + 56);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = v4 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    while (v7 < *(v4 + 16))
    {
      sub_1E16D8638(v8, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = Strong, swift_unknownObjectRelease(), v11 == a1))
      {
        result = sub_1E16D88BC(v17);
      }

      else
      {
        sub_1E16D8884(v17, v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E135C9A8(0, *(v9 + 16) + 1, 1);
          v9 = v18;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1E135C9A8((v13 > 1), v14 + 1, 1);
          v9 = v18;
        }

        *(v9 + 16) = v14 + 1;
        result = sub_1E16D8884(v16, v9 + 24 * v14 + 32);
      }

      ++v7;
      v8 += 24;
      if (v5 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_14:

    *(v2 + 56) = v9;

    return [v15 unlock];
  }

  return result;
}

uint64_t InAppPurchaseStateDataSource.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t InAppPurchaseStateDataSource.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ImageButton.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E16D89FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
}

uint64_t sub_1E16D8A94(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_1E16D8ADC(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v5, &qword_1ECEB2DF0);
  v3 = *a2;
  swift_beginAccess();
  sub_1E137F818(v5, v3 + 48);
  return swift_endAccess();
}

uint64_t sub_1E16D8BA0(uint64_t a1)
{
  swift_beginAccess();
  sub_1E137F818(a1, v1 + 48);
  return swift_endAccess();
}

uint64_t ImageButton.__allocating_init(id:title:artwork:clickAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = sub_1E1AEFEAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 65) = 0u;
  sub_1E134FD1C(a1, &v24, &unk_1ECEB5670);
  if (*(&v25 + 1))
  {
    v14 = v25;
    *(v13 + 88) = v24;
    *(v13 + 104) = v14;
    *(v13 + 120) = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v20 = a3;
    v17 = v16;
    (*(v10 + 8))(v12, v9);
    v22 = v15;
    v23 = v17;
    a3 = v20;
    sub_1E1AF6F6C();
    sub_1E1308058(&v24, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  swift_beginAccess();
  *(v13 + 40) = v21;
  return v13;
}

uint64_t ImageButton.init(id:title:artwork:clickAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a5;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 40) = 0u;
  *(v6 + 65) = 0u;
  *(v6 + 56) = 0u;
  sub_1E134FD1C(a1, &v25, &unk_1ECEB5670);
  if (*(&v26 + 1))
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v21 = a3;
    v17 = v16;
    (*(v12 + 8))(v14, v11);
    v23 = v15;
    v24 = v17;
    a3 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v25, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v18 = v29;
  *(v6 + 88) = v28;
  *(v6 + 104) = v18;
  *(v6 + 120) = v30;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  swift_beginAccess();
  *(v6 + 40) = v22;

  return v6;
}

uint64_t ImageButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImageButton.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ImageButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v65 = a2;
  v6 = *v4;
  v61 = v3;
  v62 = v6;
  v73 = sub_1E1AF39DC();
  v67 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v64 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = v57 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v57 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v57 - v21;
  *(v4 + 5) = 0u;
  v57[1] = v4 + 5;
  *(v4 + 65) = 0u;
  *(v4 + 7) = 0u;
  v66 = a1;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  if (v24)
  {
    v68 = v23;
    v69 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v26 = v9;
    v28 = v27;
    (*(v26 + 8))(v11, v8);
    v68 = v25;
    v69 = v28;
  }

  sub_1E1AF6F6C();
  v29 = *(v13 + 8);
  v30 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v22, v12);
  v31 = v71;
  *(v4 + 11) = v70;
  *(v4 + 13) = v31;
  v4[15] = v72;
  v32 = v66;
  sub_1E1AF381C();
  v33 = sub_1E1AF37CC();
  v35 = v34;
  v29(v19, v12);
  if (v35)
  {
    v57[2] = v30;
    v58 = v29;
    v59 = v12;
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v36 = v67;
    v37 = v65;
    (*(v67 + 16))(v64, v65, v73);
    sub_1E16D98E8(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v38 = v32;
    v39 = v70;
    if (v70)
    {
      v4[2] = v33;
      v4[3] = v35;
      type metadata accessor for Action();
      v40 = v60;
      sub_1E1AF381C();
      v41 = v61;
      v42 = static Action.makeInstance(byDeserializing:using:)(v40, v37);
      if (!v41)
      {
        v53 = v42;
        (*(v67 + 8))(v37, v73);
        v54 = v38;
        v56 = v58;
        v55 = v59;
        v58(v54, v59);
        v56(v40, v55);
        swift_beginAccess();
        v4[5] = v53;

        v4[4] = v39;
        return v4;
      }

      (*(v67 + 8))(v37, v73);
      v44 = v58;
      v43 = v59;
      v58(v38, v59);
      v44(v40, v43);
    }

    else
    {

      v49 = sub_1E1AF5A7C();
      sub_1E16D98E8(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      *v50 = 0x6B726F77747261;
      v51 = v62;
      v50[1] = 0xE700000000000000;
      v50[2] = v51;
      (*(*(v49 - 8) + 104))(v50, *MEMORY[0x1E69AB690], v49);
      swift_willThrow();
      (*(v36 + 8))(v37, v73);
      v58(v38, v59);
    }
  }

  else
  {
    v45 = v32;
    v46 = sub_1E1AF5A7C();
    sub_1E16D98E8(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v47 = 0x656C746974;
    v48 = v62;
    v47[1] = 0xE500000000000000;
    v47[2] = v48;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x1E69AB690], v46);
    swift_willThrow();
    (*(v67 + 8))(v65, v73);
    v29(v45, v12);
  }

  sub_1E1308058((v4 + 6), &qword_1ECEB2DF0);
  sub_1E134B88C((v4 + 11));
  type metadata accessor for ImageButton();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ImageButton.deinit()
{

  sub_1E1308058(v0 + 48, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 88);
  return v0;
}

uint64_t ImageButton.__deallocating_deinit()
{

  sub_1E1308058(v0 + 48, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_1E16D98E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t *sub_1E16D9940@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ImageButton();
  v7 = swift_allocObject();
  result = ImageButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E16D99EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 48, a1, &qword_1ECEB2DF0);
}

uint64_t sub_1E16D9BF0()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit18ImpressionableRect_impressionId;
  v2 = sub_1E1AF468C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11AppStoreKit18ImpressionableRect_customFields;
  v4 = sub_1E1AF45FC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImpressionableRect()
{
  result = qword_1ECEB7CA0;
  if (!qword_1ECEB7CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16D9D40()
{
  result = sub_1E1AF468C();
  if (v1 <= 0x3F)
  {
    result = sub_1E1AF45FC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E16D9E60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E16D9EB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1E16D9F20()
{
  result = qword_1ECEB7CB0;
  if (!qword_1ECEB7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7CB0);
  }

  return result;
}

uint64_t OfferButtonMetrics.isEqual(to:with:)(uint64_t a1)
{
  v2 = v1;
  if ((MEMORY[0x1E68F9D60](v1, a1) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OfferButtonMetrics();
  if ((MEMORY[0x1E68F9D60](v1 + v4[5], a1 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1Tm((v1 + v4[6]), *(v1 + v4[6] + 24));
  sub_1E1AF12EC();
  v6 = v5;
  __swift_project_boxed_opaque_existential_1Tm((a1 + v4[6]), *(a1 + v4[6] + 24));
  sub_1E1AF12EC();
  if (v6 != v7)
  {
    return 0;
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v1 + v4[7]), *(a1 + v4[7])), vceqq_f64(*(v1 + v4[7] + 16), *(a1 + v4[7] + 16))))) & 1) == 0)
  {
    return 0;
  }

  sub_1E13006E4(0, &qword_1EE1E31E0);
  v8 = (*(v1 + v4[8]))();
  v9 = (*(a1 + v4[8]))();
  v10 = sub_1E1AF6D0C();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v4[10];
  v12 = *(v2 + v11);
  v13 = *(a1 + v11);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_1E13006E4(0, &qword_1EE1D2430);
    v14 = v13;
    v15 = v12;
    v16 = sub_1E1AF6D0C();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = (*(v2 + v4[9]))();
  v18 = (*(a1 + v4[9]))();
  v19 = sub_1E1AF6D0C();

  if ((v19 & 1) == 0 || (sub_1E1AF6D0C() & 1) == 0)
  {
    return 0;
  }

  v20 = v4[12];
  v21 = *(v2 + v20);
  v22 = *(a1 + v20);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    sub_1E13006E4(0, &qword_1EE1D2430);
    v23 = v22;
    v24 = v21;
    v25 = sub_1E1AF6D0C();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  result = 0;
  v27 = v4[13];
  v28 = v2 + v27;
  v29 = *(v2 + v27);
  v30 = (a1 + v27);
  if (v29 == *v30 && *(v28 + 8) == v30[1])
  {
    if (*(v2 + v4[14]) != *(a1 + v4[14]) || *(v2 + v4[15]) != *(a1 + v4[15]) || *(v2 + v4[19]) != *(a1 + v4[19]))
    {
      return 0;
    }

    v31 = v4[20];
    v32 = (v2 + v31);
    v33 = *(v2 + v31 + 8);
    v34 = (a1 + v31);
    v35 = *(a1 + v31 + 8);
    if (v33)
    {
      if (!v35)
      {
        return 0;
      }
    }

    else
    {
      if (*v32 != *v34)
      {
        LOBYTE(v35) = 1;
      }

      if (v35)
      {
        return 0;
      }
    }

    if (*(v2 + v4[21]) == *(a1 + v4[21]))
    {
      v36 = v4[16];
      v37 = (v2 + v36);
      v38 = *(v2 + v36 + 8);
      v39 = a1 + v36;
      result = *(v39 + 8);
      if ((v38 & 1) == 0)
      {
        return (*v37 == *v39) & ~result;
      }

      return result;
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for OfferButtonMetrics()
{
  result = qword_1EE1EF950;
  if (!qword_1EE1EF950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, uint64_t a18, uint64_t a19, uint64_t a20, char a21, char a22, uint64_t a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  v39 = type metadata accessor for OfferButtonMetrics();
  v51 = v39[10];
  v52 = v39[12];
  v40 = a9 + v39[16];
  v41 = a9 + v39[17];
  v42 = a9 + v39[18];
  v43 = a9 + v39[20];
  v44 = sub_1E1AF105C();
  v45 = *(*(v44 - 8) + 32);
  v45(a9, a1, v44);
  v45(a9 + v39[5], a2, v44);
  result = sub_1E1361B28(a3, a9 + v39[6]);
  v47 = (a9 + v39[7]);
  *v47 = a10;
  v47[1] = a11;
  v47[2] = a12;
  v47[3] = a13;
  v48 = (a9 + v39[8]);
  *v48 = a4;
  v48[1] = a5;
  *(a9 + v51) = a8;
  v49 = (a9 + v39[9]);
  *v49 = a6;
  v49[1] = a7;
  *(a9 + v39[11]) = a18;
  *(a9 + v52) = a19;
  v50 = (a9 + v39[13]);
  *v50 = a14;
  v50[1] = a15;
  *(a9 + v39[14]) = a16;
  *(a9 + v39[15]) = a17;
  *v40 = a20;
  *(v40 + 8) = a21 & 1;
  *(a9 + v39[19]) = a22;
  *v43 = a23;
  *(v43 + 8) = a24 & 1;
  *(a9 + v39[21]) = a25;
  *v41 = a26;
  *(v41 + 8) = a27 & 1;
  *v42 = a28;
  *(v42 + 8) = a29 & 1;
  return result;
}

uint64_t OfferButtonMetrics.fontSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF105C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OfferButtonMetrics.fontSource.setter(uint64_t a1)
{
  v3 = sub_1E1AF105C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OfferButtonMetrics.subtitleFontSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfferButtonMetrics() + 20);
  v4 = sub_1E1AF105C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OfferButtonMetrics.subtitleFontSource.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfferButtonMetrics() + 20);
  v4 = sub_1E1AF105C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OfferButtonMetrics.inAppPurchaseTextSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OfferButtonMetrics() + 24);

  return sub_1E1300B24(v3, a1);
}

uint64_t OfferButtonMetrics.inAppPurchaseTextSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for OfferButtonMetrics() + 24);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1361B28(a1, v1 + v3);
}

uint64_t OfferButtonMetrics.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for OfferButtonMetrics();
  v10 = (v4 + *(result + 28));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t sub_1E16DA984@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for OfferButtonMetrics() + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1E16DBD44;
  a2[1] = v6;
}

uint64_t sub_1E16DAA04(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for OfferButtonMetrics() + 32));

  *v6 = sub_1E16DBD48;
  v6[1] = v5;
  return result;
}

uint64_t OfferButtonMetrics.redownloadImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for OfferButtonMetrics() + 32));

  return v1;
}

uint64_t OfferButtonMetrics.redownloadImage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OfferButtonMetrics() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1E16DAB54@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for OfferButtonMetrics() + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1E154366C;
  a2[1] = v6;
}

uint64_t sub_1E16DABD4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for OfferButtonMetrics() + 36));

  *v6 = sub_1E16DBD0C;
  v6[1] = v5;
  return result;
}

uint64_t OfferButtonMetrics.pauseImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for OfferButtonMetrics() + 36));

  return v1;
}

uint64_t OfferButtonMetrics.pauseImage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OfferButtonMetrics() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *OfferButtonMetrics.pausedImageSymbolConfiguration.getter()
{
  v1 = *(v0 + *(type metadata accessor for OfferButtonMetrics() + 40));
  v2 = v1;
  return v1;
}

void OfferButtonMetrics.pausedImageSymbolConfiguration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfferButtonMetrics() + 40);

  *(v1 + v3) = a1;
}

id OfferButtonMetrics.symbolConfiguration.getter()
{
  v1 = *(v0 + *(type metadata accessor for OfferButtonMetrics() + 44));

  return v1;
}

void OfferButtonMetrics.symbolConfiguration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfferButtonMetrics() + 44);

  *(v1 + v3) = a1;
}

void *OfferButtonMetrics.redownloadImageSymbolConfiguration.getter()
{
  v1 = *(v0 + *(type metadata accessor for OfferButtonMetrics() + 48));
  v2 = v1;
  return v1;
}

void OfferButtonMetrics.redownloadImageSymbolConfiguration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OfferButtonMetrics() + 48);

  *(v1 + v3) = a1;
}

uint64_t OfferButtonMetrics.minimumSize.setter(double a1, double a2)
{
  result = type metadata accessor for OfferButtonMetrics();
  v6 = (v2 + *(result + 52));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t OfferButtonMetrics.progressDiameter.setter(double a1)
{
  result = type metadata accessor for OfferButtonMetrics();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t OfferButtonMetrics.lineWidth.setter(double a1)
{
  result = type metadata accessor for OfferButtonMetrics();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t OfferButtonMetrics.textShapeLineWidth.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OfferButtonMetrics();
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OfferButtonMetrics.resumeImageNavigationHeight.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OfferButtonMetrics();
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OfferButtonMetrics.resumeImageNavigationBaselineOffset.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OfferButtonMetrics();
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OfferButtonMetrics.expandsToFit.setter(char a1)
{
  result = type metadata accessor for OfferButtonMetrics();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t OfferButtonMetrics.cornerRadius.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for OfferButtonMetrics();
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t OfferButtonMetrics.includeTopPadding.setter(char a1)
{
  result = type metadata accessor for OfferButtonMetrics();
  *(v1 + *(result + 84)) = a1;
  return result;
}

void OfferButtonMetrics.estimatedHeight.getter()
{
  sub_1E13006E4(0, &qword_1EE1E3428);
  v0 = sub_1E1AF69AC();
  v1 = sub_1E1AF104C();

  type metadata accessor for OfferButtonMetrics();
  [v1 lineHeight];
}

double OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v48 = a3;
  v7 = type metadata accessor for OfferButtonMetrics();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46.i8[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TextConfiguration(0);
  *&v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (v46.i64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11.i32[0] = *a2;
  v46 = vmovl_u8(v11);
  v14 = *(a2 + 4);
  v47 = *(a2 + 5);
  if (a1)
  {
    v15 = 0x80000001E1B5B320;
    v16 = 0xD000000000000015;
    if (*(a1 + 208) == 1)
    {
      v19 = localizedStringForAdsLanguage(_:)(*&v16);
      object = v19._object;
      countAndFlagsBits = v19._countAndFlagsBits;
    }

    else
    {
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v26 = localizedString(_:comment:)(*&v16, v25);
      object = v26._object;
      countAndFlagsBits = v26._countAndFlagsBits;
    }

    v23 = countAndFlagsBits;
    v24 = object;
    v27 = *(a1 + 72);
    if (*(v27 + 16))
    {
      v28 = sub_1E1595560(0);
      if (v29)
      {
        v30 = (*(v27 + 56) + 16 * v28);
        v23 = *v30;
        v31 = v30[1];

        v24 = v31;
      }
    }

    sub_1E16C8F24(v4, v9);
    v32 = *(a1 + 88);
    if (*(v32 + 16))
    {
      v33 = sub_1E1595560(0);
      if (v34)
      {
        v35 = (*(v32 + 56) + 16 * v33);
        a1 = *v35;
        v36 = v35[1];

        goto LABEL_14;
      }
    }

    a1 = 0;
  }

  else
  {
    v20._object = 0x80000001E1B5B320;
    v20._countAndFlagsBits = 0xD000000000000015;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v22 = localizedString(_:comment:)(v20, v21);
    v23 = v22._countAndFlagsBits;
    v24 = v22._object;
    sub_1E16C8F24(v4, v9);
  }

  v36 = 0;
LABEL_14:
  if (qword_1EE1EBFE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v53 = unk_1EE1EC018;
  v54[0] = xmmword_1EE1EC028;
  *(v54 + 9) = *(&xmmword_1EE1EC028 + 9);
  v51 = unk_1EE1EBFF8;
  v52 = xmmword_1EE1EC008;
  v50 = xmmword_1EE1EBFE8;
  *v13 = 0x4018000000000000;
  sub_1E16DB95C(v9, v13 + v10[5]);
  v37 = (v13 + v10[6]);
  *v37 = v23;
  v37[1] = v24;
  *(v13 + v10[7]) = 0;
  v38 = (v13 + v10[10]);
  v39 = v53;
  v40 = v54[0];
  v41 = v51;
  v38[2] = v52;
  v38[3] = v39;
  v38[4] = v40;
  *(v38 + 73) = *(v54 + 9);
  *v38 = v50;
  v38[1] = v41;
  v42 = (v13 + v10[8]);
  *v42 = a1;
  v42[1] = v36;
  v43 = v13 + v10[9];
  *v43 = vuzp1_s8(*v46.i8, *v46.i8).u32[0];
  v43[4] = v14;
  v43[5] = v47;
  sub_1E16DB9C0(&v50, v49);
  v44 = TextConfiguration.size(in:)(v48);
  sub_1E16DBA1C(v13);
  return v44;
}

uint64_t sub_1E16DB95C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16DBA1C(uint64_t a1)
{
  v2 = type metadata accessor for TextConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E16DBAA0()
{
  sub_1E1AF105C();
  if (v0 <= 0x3F)
  {
    sub_1E16DBBF0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        sub_1E1300784();
        if (v3 <= 0x3F)
        {
          sub_1E16DBC54();
          if (v4 <= 0x3F)
          {
            sub_1E13006E4(319, &qword_1EE1D2430);
            if (v5 <= 0x3F)
            {
              type metadata accessor for CGSize(319);
              if (v6 <= 0x3F)
              {
                sub_1E16DBCBC();
                if (v7 <= 0x3F)
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

unint64_t sub_1E16DBBF0()
{
  result = qword_1EE1D2AC0;
  if (!qword_1EE1D2AC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1D2AC0);
  }

  return result;
}

void sub_1E16DBC54()
{
  if (!qword_1EE1D2428)
  {
    sub_1E13006E4(255, &qword_1EE1D2430);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2428);
    }
  }
}

void sub_1E16DBCBC()
{
  if (!qword_1EE1D2AF8[0])
  {
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE1D2AF8);
    }
  }
}

id static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = objc_opt_self();
  if (a5)
  {
    v11 = [v10 configurationWithTextStyle_];
  }

  else
  {
    v11 = [v10 configurationWithTextStyle:a1 scale:a4];
  }

  result = v11;
  if ((a3 & 1) == 0)
  {
    v13 = result;
    v14 = [objc_opt_self() configurationWithWeight_];
    v15 = [v13 configurationByApplyingConfiguration_];

    return v15;
  }

  return result;
}

uint64_t sub_1E16DBE28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B070F0;
  v1 = *MEMORY[0x1E69CDA78];
  *(inited + 32) = *MEMORY[0x1E69CDA78];
  v2 = *MEMORY[0x1E69CDA90];
  v3 = *MEMORY[0x1E69CDAB0];
  *(inited + 40) = *MEMORY[0x1E69CDA90];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x1E69CDAC0];
  v5 = *MEMORY[0x1E69CDAD8];
  *(inited + 56) = *MEMORY[0x1E69CDAC0];
  *(inited + 64) = v5;
  v6 = *MEMORY[0x1E69CDAE8];
  *(inited + 72) = *MEMORY[0x1E69CDAE8];
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = sub_1E1497E68(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_1ECEB7CB8 = v13;
  return result;
}

double sub_1E16DBF38@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2 && (v5 = *(v3 + OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes), v6 = a2, LOBYTE(v5) = sub_1E14AB35C(v6, v5), v6, (v5 & 1) != 0) || (MEMORY[0x1EEE9AC00](a1), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64E8), sub_1E1AF690C(), , !v8))
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    v9 = sub_1E13006E4(0, &qword_1EE1D22C0);
    sub_1E1301CF0(&v8, a3);
  }

  return result;
}

void sub_1E16DC248(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AF326C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = [v1 activityType];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  if (sub_1E14AB35C(v12, *&v1[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_excludedActivityTypes]))
  {

LABEL_4:
    v14 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    a1[3] = sub_1E13006E4(0, &qword_1EE1D22C0);
    goto LABEL_8;
  }

  v15 = dispatch_semaphore_create(0);
  v24[1] = *&v1[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkLoader];
  v16 = *&v1[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v25 = a1;
  v19 = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  v20 = v15;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v16, 1, v26, sub_1E16DCD28, v19);

  sub_1E13E2E98(v26);

  sub_1E1AF325C();
  sub_1E1AF32DC();
  v21 = *(v5 + 8);
  v21(v7, v4);
  sub_1E1AF6A8C();
  v22 = (v21)(v11, v4);
  a1 = v25;
  v23 = *&v2[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox];
  MEMORY[0x1EEE9AC00](v22);
  v24[-4] = sub_1E16DCE88;
  v24[-3] = 0;
  v24[-2] = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB64E8);
  sub_1E1AF690C();

  v14 = *&v26[0];
  a1[3] = sub_1E13006E4(0, &qword_1EE1D22C0);
  if (!v14)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

LABEL_8:
  *a1 = v14;
}

uint64_t sub_1E16DC5A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E1AF320C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF127C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1E1AF6AAC();
  }

  v16 = Strong;
  if (!a1)
  {

    return sub_1E1AF6AAC();
  }

  v54 = v10;
  v55 = v8;
  v56 = v7;
  v57 = a5;
  v17 = OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig;
  v18 = *&Strong[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_artworkConfig];
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  v21 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v22 = a1;
  v23 = [v21 initWithFrame_];
  [v23 setOpaque_];
  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v24 = sub_1E1AF125C();
  (*(v12 + 8))(v14, v11);
  if (v24)
  {
    if (v16[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_enablePrerenderedIconArtwork])
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_style;
    swift_beginAccess();
    v27 = *(v23 + v26);
    *(v23 + v26) = v25;
  }

  else
  {
    v29 = OBJC_IVAR____TtC11AppStoreKit11ArtworkView_style;
    swift_beginAccess();
    v27 = *(v23 + v29);
    *(v23 + v29) = 8;
  }

  LOBYTE(aBlock[0]) = v27;
  sub_1E1354900(aBlock);
  v30 = v22;
  v59.value.super.isa = a1;
  v59.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v59, v31);

  sub_1E13006E4(0, &qword_1ECEB7CF0);
  v32 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v32 setScale_];
  [v32 setOpaque_];
  [v30 size];
  v35 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v32 format:{v33, v34}];
  v36 = swift_allocObject();
  *(v36 + 16) = v23;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1E16DCDE0;
  *(v37 + 24) = v36;
  aBlock[4] = sub_1E16DCE30;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E190C7A4;
  aBlock[3] = &block_descriptor_53;
  v38 = _Block_copy(aBlock);
  v39 = v23;

  v40 = [v35 imageWithActions_];
  _Block_release(v38);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v53 = &v48;
    v42 = *&v16[OBJC_IVAR____TtC11AppStoreKit27ArtworkActivityItemProvider_imageBox];
    MEMORY[0x1EEE9AC00](result);
    v51 = v30;
    *(&v48 - 2) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
    v52 = v36;
    v43 = v55;
    v50 = v35;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    aBlock[0] = v44;
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    v48 = v40;
    v45 = v54;
    v49 = v39;
    v46 = v56;
    v47 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v47);
    *(&v48 - 4) = sub_1E16DCE38;
    *(&v48 - 3) = &v48 - 4;
    *(&v48 - 2) = v42;
    sub_1E1AF68FC();

    (*(v43 + 8))(v45, v46);

    sub_1E1AF6AAC();
  }

  return result;
}

id sub_1E16DCC54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E16DCD30(void (*a1)(uint64_t *__return_ptr, id *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(a2 + 24);
  v6 = v7;
  a1(&v8, &v7);

  *a3 = v8;
}

id sub_1E16DCDE0()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

id sub_1E16DCE38(id *a1)
{
  v4 = *(v1 + 16);

  *a1 = v4;

  return v4;
}

unint64_t NetworkReachabilityError.errorDescription.getter()
{
  v1 = 0xD00000000000003ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000035;
  }
}

uint64_t NetworkReachabilityError.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E16DCF88()
{
  result = qword_1ECEB7CF8;
  if (!qword_1ECEB7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7CF8);
  }

  return result;
}

unint64_t sub_1E16DCFE0()
{
  result = qword_1ECEB7D00;
  if (!qword_1ECEB7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7D00);
  }

  return result;
}

unint64_t sub_1E16DD034()
{
  v1 = 0xD00000000000003ELL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000035;
  }
}

uint64_t type metadata accessor for RefURLFieldsProvider()
{
  result = qword_1EE1ED690;
  if (!qword_1EE1ED690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16DD110(uint64_t a1)
{
  if (qword_1EE1E3970 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  __swift_project_value_buffer(v2, qword_1EE1E3978);
  v3 = MEMORY[0x1E69E6158];
  result = sub_1E1AF4ABC();
  if (v5[1])
  {
    v5[3] = v3;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1E16DD210(uint64_t a1)
{
  v37 = a1;
  v1 = sub_1E1AF005C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEFF8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AEF75C();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AEFE6C();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFE5C();
  sub_1E1AEFF4C();
  sub_1E1AEFF7C();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35A0);
  v15 = sub_1E1AF004C();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v36 = xmmword_1E1B02CC0;
  *(v18 + 16) = xmmword_1E1B02CC0;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x1E6969A48], v15);
  sub_1E1497560(v18);
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v15);
  swift_deallocClassInstance();
  sub_1E1AEFFCC();

  (*(v2 + 8))(v4, v1);
  v19 = sub_1E1AEF70C();
  countAndFlagsBits = 0;
  if ((v21 & 1) == 0)
  {
    if ((v19 - 2) < 2)
    {
      v24._object = 0x80000001E1B70F40;
      v25 = v19;
      v24._countAndFlagsBits = 0xD000000000000010;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      localizedString(_:comment:)(v24, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
      v27 = swift_allocObject();
      *(v27 + 16) = v36;
      v42 = v25;
      v28 = sub_1E1AF742C();
      v30 = v29;
      *(v27 + 56) = MEMORY[0x1E69E6158];
      *(v27 + 64) = sub_1E13C2F48();
      *(v27 + 32) = v28;
      *(v27 + 40) = v30;
      countAndFlagsBits = sub_1E1AF5E3C();
    }

    else
    {
      if (v19 == 1)
      {
        v22 = 0xD000000000000011;
        v23 = 0x80000001E1B70F60;
      }

      else
      {
        if (v19)
        {
          v32 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
          [v32 setDateStyle_];
          [v32 setTimeStyle_];
          v33 = sub_1E1AEFDBC();
          v34 = [v32 stringFromDate_];

          countAndFlagsBits = sub_1E1AF5DFC();
          goto LABEL_10;
        }

        v22 = 0x5F5350554B434F4CLL;
        v23 = 0xED00005941444F54;
      }

      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      countAndFlagsBits = localizedString(_:comment:)(*&v22, v31)._countAndFlagsBits;
    }
  }

LABEL_10:
  (*(v40 + 8))(v11, v41);
  (*(v38 + 8))(v14, v39);
  return countAndFlagsBits;
}

uint64_t sub_1E16DD798()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF46A8);
  __swift_project_value_buffer(v4, qword_1ECEF46A8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E16DD990(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v38 - v7;
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v13 = MEMORY[0x1E68FD610]();
  if (!v13)
  {
    if (qword_1ECEB0FB8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1ECEF46A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    v20 = *(sub_1E1AF38EC() - 8);
    v18 = ((*(v20 + 80) + 32) & ~*(v20 + 80));
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
    return v18;
  }

  v40 = v13;
  sub_1E1AF6C0C();
  if (v3)
  {
    if (qword_1ECEB0FB8 != -1)
    {
      swift_once();
    }

    v14 = sub_1E1AF591C();
    __swift_project_value_buffer(v14, qword_1ECEF46A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v15 = v42;
    v16 = v43;
    v46 = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v44);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v15, v16);
    sub_1E1AF38BC();
    sub_1E1308058(&v44, &qword_1ECEB2DF0);
    sub_1E1AF54AC();

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD000000000000021, 0x80000001E1B71420);
    MEMORY[0x1E68FECA0](0xD00000000000003ALL, 0x80000001E1B71450);
    v41 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
    sub_1E1AF714C();
    MEMORY[0x1E68FECA0](46, 0xE100000000000000);
    v18 = v45;
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();

    return v18;
  }

  v39 = a1;
  sub_1E1AF374C();
  v21 = sub_1E1AF5A6C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    (*(v10 + 8))(v12, v9);
    sub_1E1308058(v8, &qword_1ECEB1F90);
LABEL_17:
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD000000000000021, 0x80000001E1B71420);
    MEMORY[0x1E68FECA0](0xD000000000000031, 0x80000001E1B71490);
    v18 = v45;
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
LABEL_18:

    return v18;
  }

  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D20);
  v23 = sub_1E1AF5A0C();
  (*(v10 + 8))(v12, v9);
  (*(v22 + 8))(v8, v21);
  if (!v23)
  {
    goto LABEL_17;
  }

  v24 = objc_opt_self();
  v25 = sub_1E1AF620C();
  v26 = [v24 selectionFromRawMarketingItems_];

  if (a3)
  {
    v27 = a3;
    [v27 doubleValue];
    v28 = [v26 promiseWithTimeout_];

    v26 = v28;
  }

  v29 = v39;
  v44 = 0;
  v30 = [v26 resultWithError_];
  if (!v30)
  {
    v37 = v44;

    v18 = sub_1E1AEFB2C();

    swift_willThrow();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD000000000000021, 0x80000001E1B71420);
    MEMORY[0x1E68FECA0](0xD00000000000002ELL, 0x80000001E1B714D0);
    v41 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
    sub_1E1AF714C();
    MEMORY[0x1E68FECA0](46, 0xE100000000000000);
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();

    goto LABEL_18;
  }

  v31 = v30;
  v32 = v44;
  v33 = [v31 rawValues];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6938);
  v34 = sub_1E1AF5C7C();

  v44 = v34;

  v35 = sub_1E1AF755C();
  v18 = [objc_opt_self() valueWithObject:v35 inContext:v29];
  result = swift_unknownObjectRelease();
  if (v18)
  {

    return v18;
  }

  __break(1u);
  return result;
}

const char *sub_1E16DE470(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_1E1AF5AAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v11 = MEMORY[0x1E68FD610]();
  if (v11)
  {
    v12 = v11;
    v21 = v8;
    v13 = *(a2 + OBJC_IVAR____TtC11AppStoreKit14JSArcadeObject_accounts);
    v14 = *(a2 + OBJC_IVAR____TtC11AppStoreKit14JSArcadeObject_arcadeStore);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = a3;
    v15[4] = v12;
    v15[5] = v14;
    v16 = a3;

    v17 = v14;
    v18 = a1;

    sub_1E1AF5A8C();
    if (v3)
    {
    }

    else
    {
      v13 = sub_1E1AF5A9C();

      (*(v21 + 8))(v10, v7);
    }
  }

  else
  {
    v13 = "No active account.";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v13;
}

void sub_1E16DE690(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v74 = a7;
  v84 = a6;
  v72 = a5;
  v82 = a3;
  v73 = a2;
  v83 = a1;
  v86 = sub_1E1AF0F7C();
  v80 = *(v86 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v78 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v66 - v9;
  v76 = sub_1E1AF364C();
  v75 = *(v76 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v66 - v12;
  v71 = sub_1E1AF48CC();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF56FC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBA70);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v66 - v20;
  MEMORY[0x1E68FE6D0](v19);
  v22 = sub_1E1AF594C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1E1308058(v21, &qword_1ECEBBA70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E1B02CC0;
    sub_1E1AF569C();
    v25 = sub_1E1AF56DC();
    (*(v15 + 8))(v17, v14);
    *(v24 + 56) = sub_1E13006E4(0, &qword_1EE1E32A8);
    *(v24 + 32) = v25;
    v26 = v81;
    v27 = sub_1E1AF363C();
    if (v26)
    {

      if (qword_1ECEB0FB8 != -1)
      {
        swift_once();
      }

      v28 = sub_1E1AF591C();
      __swift_project_value_buffer(v28, qword_1ECEF46A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      swift_getErrorValue();
      v29 = v91;
      v30 = v92;
      v88 = v92;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(aBlock);
      (*(*(v30 - 1) + 16))(boxed_opaque_existential_0, v29, v30);
      sub_1E1AF38BC();
      sub_1E1308058(aBlock, &qword_1ECEB2DF0);
      sub_1E1AF54AC();
    }

    else
    {
      v46 = v27;
    }
  }

  else
  {
    v68 = sub_1E1AF593C();
    (*(v23 + 8))(v21, v22);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = v82;
    if (v72)
    {
      v34 = v72;
      [v34 doubleValue];
      if (v35 <= COERCE_DOUBLE(1))
      {
      }

      else
      {
        [v34 doubleValue];
        v36 = v75;
        v37 = v33;
        v38 = v32;
        v39 = v76;
        (*(v75 + 16))(v85, v37, v76);
        v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = v38;
        v42 = v39;
        v32 = v38;
        v33 = v82;
        (*(v36 + 32))(v41 + v40, v85, v42);
        v43 = v83;
        *(v41 + ((v10 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;

        v44 = v43;
        v45 = v69;
        sub_1E1AF48DC();

        (*(v70 + 8))(v45, v71);
      }
    }

    v67 = v32;
    sub_1E1AF483C();
    sub_1E1AF482C();
    v47 = v79;
    sub_1E1AF0F4C();
    sub_1E1AF6A1C();
    v48 = sub_1E1AF482C();
    sub_1E1AF0F3C();

    v49 = v80;
    (*(v80 + 16))(v78, v47, v86);
    v50 = v75;
    v51 = *(v75 + 16);
    v52 = v76;
    v51(v85, v33, v76);
    v51(v77, v73, v52);
    v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v82 = (v7 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = *(v50 + 80);
    v56 = (v55 + 8 + v54) & ~v55;
    v57 = (v10 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v55 + 8 + v57) & ~v55;
    v59 = swift_allocObject();
    (*(v49 + 32))(v59 + v53, v78, v86);
    v60 = v85;
    *(v59 + v82) = v84;
    *(v59 + v54) = v67;
    v61 = *(v50 + 32);
    v61(v59 + v56, v60, v52);
    v62 = v83;
    *(v59 + v57) = v83;
    v61(v59 + v58, v77, v52);
    v89 = sub_1E16E0568;
    v90 = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E16DFFF8;
    v88 = &block_descriptor_54;
    v63 = _Block_copy(aBlock);

    v64 = v62;

    v65 = v68;
    [v74 topAppsForAccount:v68 completionBlock:v63];
    _Block_release(v63);

    (*(v80 + 8))(v79, v86);
  }
}

uint64_t sub_1E16DF0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1ECEB0FB8 != -1)
    {
      swift_once();
    }

    v5 = sub_1E1AF591C();
    __swift_project_value_buffer(v5, qword_1ECEF46A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  else
  {
    if (qword_1ECEB0FB8 != -1)
    {
      swift_once();
    }

    v7 = sub_1E1AF591C();
    __swift_project_value_buffer(v7, qword_1ECEF46A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E1B02CC0;
    v9 = sub_1E13006E4(0, &qword_1EE1E32A8);
    sub_1E1AF56FC();
    sub_1E13EB868();
    v10 = swift_allocError();
    sub_1E1AF569C();
    v11 = MEMORY[0x1E68FF960](v10, a3);

    *(v8 + 56) = v9;
    *(v8 + 32) = v11;
    v12 = sub_1E1AF363C();

    result = swift_beginAccess();
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t sub_1E16DF538(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v34 = a8;
  v35 = a2;
  v37 = a7;
  v38 = a4;
  v32[1] = a5;
  v36 = a1;
  v10 = sub_1E1AF364C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v33 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v16 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  v17 = *(v11 + 16);
  v17(v15, a6, v10);
  v18 = v10;
  v17(v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v10);
  v19 = *(v11 + 80);
  v20 = (v19 + 32) & ~v19;
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v19 + v22 + 8) & ~v19;
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  v25 = v35;
  *(v24 + 24) = v35;
  v26 = *(v11 + 32);
  v26(v24 + v20, v15, v18);
  v28 = v36;
  v27 = v37;
  *(v24 + v21) = v37;
  *(v24 + v22) = v28;
  v26(v24 + v23, v33, v18);

  v29 = v25;

  v30 = v27;
  sub_1E1AF48FC();
}

uint64_t sub_1E16DF78C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E1AF591C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_1ECEB0FB8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_1ECEF46A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  else
  {
    v31 = a4;
    if (a2)
    {
      v14 = a2;
      if (qword_1ECEB0FB8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_1ECEF46A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      swift_getErrorValue();
      v15 = v32;
      v16 = v33;
      v35 = v33;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
      (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v15, v16);
      sub_1E1AF38BC();
      sub_1E1308058(v34, &qword_1ECEB2DF0);
      sub_1E1AF548C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1E1B02CC0;
      v19 = sub_1E13006E4(0, &qword_1EE1E32A8);
      v20 = MEMORY[0x1E68FF960](a2, v31);
      *(v18 + 56) = v19;
      *(v18 + 32) = v20;
      v25 = sub_1E1AF363C();
    }

    else
    {
      if (qword_1ECEB0FB8 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v9, qword_1ECEF46A8);
      (*(v10 + 16))(v12, v21, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      if (a5)
      {
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
        v23 = a5;
        v24 = a5;
      }

      else
      {
        v24 = 0;
        v22 = 0;
        v34[1] = 0;
        v34[2] = 0;
        v23 = MEMORY[0x1E69E7CC0];
      }

      v34[0] = v24;
      v35 = v22;

      sub_1E1AF383C();
      sub_1E1308058(v34, &qword_1ECEB2DF0);
      sub_1E1AF548C();

      (*(v10 + 8))(v12, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1E1B02CC0;
      v34[0] = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
      v27 = sub_1E1AF755C();
      v28 = [objc_opt_self() valueWithObject:v27 inContext:v31];
      swift_unknownObjectRelease();
      *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
      *(v26 + 32) = v28;
      v29 = sub_1E1AF363C();
    }

    result = swift_beginAccess();
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t sub_1E16DFFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1E1AF621C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id sub_1E16E0148(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D18);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  MEMORY[0x1E68FE6C0](v3);
  v6 = sub_1E1AF561C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E1308058(v5, &qword_1ECEB7D18);
  }

  else
  {
    v8 = MEMORY[0x1E68FE320]();
    (*(v7 + 8))(v5, v6);
    v9 = [v8 ams_altDSID];

    if (v9)
    {
      v10 = sub_1E1AF5DFC();
      v12 = v11;

      v18 = [objc_opt_self() standardUserDefaults];
      [a1 doubleValue];
      v14 = sub_1E1ABF97C(v10, v12, v13);

      return v14;
    }
  }

  if (qword_1ECEB0FB8 != -1)
  {
    swift_once();
  }

  v16 = sub_1E1AF591C();
  __swift_project_value_buffer(v16, qword_1ECEF46A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  return 0;
}

uint64_t sub_1E16E0568(uint64_t a1, void *a2)
{
  v5 = *(sub_1E1AF0F7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1E1AF364C() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 8 + v8) & ~v10;
  v12 = (*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v2 + v7);
  v14 = *(v2 + v8);
  v15 = *(v2 + v12);

  return sub_1E16DF538(a1, a2, v2 + v6, v13, v14, v2 + v11, v15, v2 + ((v10 + 8 + v12) & ~v10));
}

uint64_t sub_1E16E06A0()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E16DF0A0(v3, v0 + v2, v4);
}

uint64_t sub_1E16E0730()
{
  v1 = *(sub_1E1AF364C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E16DF78C(v4, v5, v0 + v2, v6, v7);
}

uint64_t TodayCardMediaBrandedSingleApp.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v57 = *v2;
  v74 = sub_1E1AF39DC();
  v5 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v70 = sub_1E1AF380C();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v57 - v17;
  sub_1E1AF46DC();

  sub_1E1AF381C();
  v69 = v5;
  v71 = *(v5 + 16);
  v63 = v11;
  v19 = v11;
  v20 = a2;
  v21 = a2;
  v22 = v74;
  v71(v19, v21, v74);
  v66 = v18;
  v64 = v15;
  sub_1E1AF464C();
  v23 = v73;
  v68 = v20;
  v24 = v71;
  v71(v73, v20, v22);
  v72 = a1;
  sub_1E1AF381C();
  v25 = v63;
  v24(v63, v23, v22);
  type metadata accessor for Artwork();
  sub_1E1517448(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  v26 = v25;
  v27 = sub_1E1AF630C();
  v28 = OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_artworks;
  v29 = v65;
  *(v65 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_artworks) = v27;
  sub_1E1AF381C();
  v30 = v25;
  v31 = v74;
  v24(v30, v23, v74);
  type metadata accessor for Video();
  sub_1E1517448(&qword_1EE1E52D0, type metadata accessor for Video);
  v32 = sub_1E1AF630C();
  v58 = OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_videos;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_videos) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35B0);
  sub_1E1AF381C();
  v59 = v5 + 16;
  v24(v26, v73, v31);
  sub_1E13F6220();
  sub_1E1AF464C();
  *(v29 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_artworkLayoutsWithMetrics) = v75;
  v33 = *(v29 + v28);
  if (v33 >> 62)
  {
    v34 = sub_1E1AF71CC();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v70;
  v36 = v67;
  if (v34)
  {
  }

  else
  {
    v37 = *(v29 + v58);
    if (v37 >> 62)
    {
      v38 = sub_1E1AF71CC();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v38)
    {
      v52 = sub_1E1AF5A7C();
      sub_1E1517448(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      *v53 = 0x736B726F77747261;
      v53[1] = 0xE800000000000000;
      v53[2] = v57;
      (*(*(v52 - 8) + 104))(v53, *MEMORY[0x1E69AB690], v52);
      swift_willThrow();
      v54 = *(v69 + 8);
      v55 = v36;
      v56 = v74;
      v54(v68, v74);
      (*(v55 + 8))(v72, v70);
      v54(v73, v56);
      sub_1E1308058(v66, &unk_1ECEB1770);

      return swift_deallocPartialClassInstance();
    }
  }

  v39 = *(v36 + 16);
  v40 = v36;
  v41 = v60;
  v42 = v72;
  v39(v60, v72, v35);
  v43 = v61;
  v44 = v68;
  v45 = v74;
  v71(v61, v68, v74);
  v46 = v62;
  v47 = TodayCardMediaAppIcon.init(deserializing:using:)(v41, v43);
  if (v46)
  {
    v48 = *(v69 + 8);
    v48(v44, v45);
    (*(v40 + 8))(v42, v35);
    v48(v73, v45);
    return sub_1E1308058(v66, &unk_1ECEB1770);
  }

  else
  {
    v50 = *(v69 + 8);
    v51 = v47;
    v50(v44, v45);
    (*(v40 + 8))(v42, v35);
    v50(v73, v45);
    sub_1E1308058(v66, &unk_1ECEB1770);
    return v51;
  }
}

uint64_t TodayCardMediaBrandedSingleApp.__allocating_init(artworks:videos:artworkLayoutsWithMetrics:otdTextStyle:icon:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v11 = sub_1E1AEFEAC();
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - v15;
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_artworks) = a1;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_videos) = a2;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_artworkLayoutsWithMetrics) = a3;
  sub_1E134FD1C(a6, v16, &unk_1ECEB1770);
  *(v17 + OBJC_IVAR____TtC11AppStoreKit21TodayCardMediaAppIcon_icon) = a5;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_1E134FD1C(v16, v17 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v31, &v28, &unk_1ECEB5670);
  if (*(&v29 + 1))
  {
    v18 = v29;
    *(v17 + 32) = v28;
    *(v17 + 48) = v18;
    *(v17 + 64) = v30;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v21 = v20;
    (*(v23 + 8))(v13, v24);
    v26 = v19;
    v27 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v28, &unk_1ECEB5670);
  }

  sub_1E1308058(a6, &unk_1ECEB1770);
  sub_1E1308058(v31, &unk_1ECEB5670);
  sub_1E1308058(v16, &unk_1ECEB1770);
  *(v17 + 16) = 1;
  *(v17 + 24) = 1;
  *(v17 + 25) = v25 & 1;
  return v17;
}

uint64_t TodayCardMediaBrandedSingleApp.init(artworks:videos:artworkLayoutsWithMetrics:otdTextStyle:icon:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v28 = a5;
  v29 = a4;
  v27 = sub_1E1AEFEAC();
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_artworks) = a1;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_videos) = a2;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit30TodayCardMediaBrandedSingleApp_artworkLayoutsWithMetrics) = a3;
  sub_1E134FD1C(a6, &v25 - v18, &unk_1ECEB1770);
  *(v7 + OBJC_IVAR____TtC11AppStoreKit21TodayCardMediaAppIcon_icon) = v28;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_1E134FD1C(v19, v16, &unk_1ECEB1770);
  sub_1E134FD1C(v38, &v32, &unk_1ECEB5670);
  if (*(&v33 + 1))
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v26 + 8))(v13, v27);
    v30 = v20;
    v31 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v32, &unk_1ECEB5670);
  }

  sub_1E1308058(a6, &unk_1ECEB1770);
  sub_1E1308058(v38, &unk_1ECEB5670);
  sub_1E1308058(v19, &unk_1ECEB1770);
  v23 = v36;
  *(v7 + 32) = v35;
  *(v7 + 48) = v23;
  *(v7 + 64) = v37;
  sub_1E134B7C8(v16, v7 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v7 + 16) = 1;
  *(v7 + 24) = 1;
  *(v7 + 25) = v29 & 1;
  return v7;
}