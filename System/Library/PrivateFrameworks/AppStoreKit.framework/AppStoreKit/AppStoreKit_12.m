void sub_1E143CE24()
{
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v0 = sub_1E1AF482C();
  sub_1E1AF0F3C();
}

void sub_1E143CEAC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  if (a2)
  {
    v7 = a2;
    sub_1E1AF584C();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_1E1AEFE5C();
      v10 = sub_1E1AEFE6C();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
      v11 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_lastServerRefreshTime;
      swift_beginAccess();
      sub_1E13A92CC(v6, v9 + v11);
      swift_endAccess();
    }

    v12 = a1;
    sub_1E1AF586C();
  }
}

void sub_1E143D02C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1E13006E4(0, &qword_1ECEB39B8);
  v5 = sub_1E1AF621C();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1E143D0DC(unint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    *(result + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_haveDoneInitialUpdatesFetch) = 1;
    swift_beginAccess();
    *(v7 + 32) = 0;
    sub_1E143F5F4(v5);
    if ((v9 & 1) == 0)
    {
      sub_1E143A334(a4 & 1, v8, 0);
    }
  }

  return result;
}

uint64_t sub_1E143D188()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_haveDoneInitialUpdatesFetch) = 1;
  }

  swift_beginAccess();
  v1 = swift_weakLoadStrong();
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    *(v2 + 32) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1E1AF5BCC();
  }

  return result;
}

BOOL sub_1E143D274(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v2 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingAutomaticUpdates;
    }

    else
    {
      v2 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_recentUpdates;
    }
  }

  else
  {
    v2 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingManualUpdates;
  }

  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    v4 = sub_1E1AF71CC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 != 0;
}

uint64_t sub_1E143D2E8(uint64_t result, char a2)
{
  v2 = *(result + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_whatsNew);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 16);
    v5 = *(result + 24);
    if (a2)
    {
      result = swift_beginAccess();
      if (*(v2 + 50) != 1)
      {
        return result;
      }

      swift_beginAccess();

      sub_1E18943C0(&v7, v4, v5);
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();

      sub_1E18943C0(&v6, v4, v5);
      swift_endAccess();

      swift_beginAccess();
    }

    *(v2 + 50) = 0;
    v6 = v3;
    sub_1E1AF5BCC();
  }

  return result;
}

uint64_t sub_1E143D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17[0] = 1;
    updated = _s11AppStoreKit13UpdatesSorterO19sortedUpdateLockups3for8ordering28isAppleSiliconSupportEnabled0K16RosettaAvailableSayAA0D6LockupCGSaySo011ASDSoftwareG0CG_AC8OrderingOS2btFZ_0(a2, v17);
    v17[0] = 1;
    v11 = _s11AppStoreKit13UpdatesSorterO19sortedUpdateLockups3for8ordering28isAppleSiliconSupportEnabled0K16RosettaAvailableSayAA0D6LockupCGSaySo011ASDSoftwareG0CG_AC8OrderingOS2btFZ_0(a3, v17);
    v17[0] = 0;
    v12 = _s11AppStoreKit13UpdatesSorterO19sortedUpdateLockups3for8ordering28isAppleSiliconSupportEnabled0K16RosettaAvailableSayAA0D6LockupCGSaySo011ASDSoftwareG0CG_AC8OrderingOS2btFZ_0(a4, v17);
    if (updated >> 62)
    {
      if (sub_1E1AF71CC())
      {
        goto LABEL_9;
      }
    }

    else if (*((updated & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    if (qword_1ECEB0DC8 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    __swift_project_value_buffer(v13, qword_1ECEB3EB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF382C();
    if (a5 >> 62)
    {
      v14 = sub_1E1AF71CC();
    }

    else
    {
      v14 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = MEMORY[0x1E69E6530];
    *v17 = v14;
    sub_1E1AF38BC();
    sub_1E1308058(v17, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF549C();

LABEL_9:
    if (v11 >> 62)
    {
      if (!sub_1E1AF71CC())
      {
        goto LABEL_11;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      if (qword_1ECEB0DC8 != -1)
      {
        swift_once();
      }

      v15 = sub_1E1AF591C();
      __swift_project_value_buffer(v15, qword_1ECEB3EB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B03760;
      sub_1E1AF382C();
      if (a5 >> 62)
      {
        v16 = sub_1E1AF71CC();
      }

      else
      {
        v16 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = MEMORY[0x1E69E6530];
      *v17 = v16;
      sub_1E1AF38BC();
      sub_1E1308058(v17, &qword_1ECEB2DF0);
      sub_1E1AF382C();
      sub_1E1AF549C();
    }

    sub_1E143DC24(updated, v11, v12);
  }

  return result;
}

uint64_t sub_1E143D8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E143D8E8, 0, 0);
}

id sub_1E143D8E8()
{
  v1 = v0[6];
  v2 = *(v0[5] + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateController + 8);
  v0[4] = [v1 storeItemIdentifier];
  v0[2] = sub_1E1AF742C();
  v0[3] = v3;
  result = [v1 externalVersionIdentifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = v0[6];
  v7 = [result longLongValue];

  result = [v6 buyParams];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  ObjectType = swift_getObjectType();
  v10 = sub_1E1AF5DFC();
  v12 = v11;

  v0[7] = v12;
  v14 = (*(v2 + 80) + **(v2 + 80));
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  v13[1] = sub_1E143DAF0;

  return v14(v0 + 2, v7, v10, v12, ObjectType, v2);
}

uint64_t sub_1E143DAF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E143DC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF320C();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v12 = sub_1E1AF68EC();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1E143F530;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_64;
  v15 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E13029BC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v11, v8, v15);
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_1E143DF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingManualUpdates) = a2;
    v8 = result;

    *(v8 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingAutomaticUpdates) = a3;

    *(v8 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_recentUpdates) = a4;

    sub_1E143E03C();
    sub_1E1AF5BCC();
    sub_1E143E840();
  }

  return result;
}

void sub_1E143E03C()
{
  *&v50 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingManualUpdates);

  sub_1E1728330(v1);
  v2 = v50;
  if (v50 >> 62)
  {
LABEL_23:
    v3 = sub_1E1AF71CC();
    v4 = &qword_1ECEB3000;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = &qword_1ECEB3000;
    if (v3)
    {
LABEL_3:
      v5 = *(v44 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateController + 8);
      ObjectType = swift_getObjectType();
      v39 = v5;
      v34 = 0;
      v6 = 0;
      v37 = *(v5 + 56);
      v41 = v2 & 0xC000000000000001;
      v35 = v2 & 0xFFFFFFFFFFFFFF8;
      v40 = v2;
      v36 = v3;
      while (1)
      {
        if (v41)
        {
          v7 = MEMORY[0x1E68FFD80](v6, v2);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v6 >= *(v35 + 16))
          {
            __break(1u);
            goto LABEL_23;
          }

          v7 = *(v2 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:

            v34 = 1;
LABEL_19:
            v4 = &qword_1ECEB3000;
            goto LABEL_25;
          }
        }

        v43 = v8;
        v9 = *(v7 + 24);
        *&v46 = *(v7 + 16);
        *(&v46 + 1) = v9;

        v37(&v46, ObjectType, v39);
        v11 = v10;

        v12 = swift_getObjectType();
        (*(v11 + 80))(v44, v12, v11);
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = *(v11 + 72);

        v14(v44, sub_1E143F444, v13, v12, v11);

        (*(v11 + 16))(&v46, v12, v11);
        v50 = v46;
        v51 = v47;
        v52 = v48;
        v53 = v49;
        if ((v49 >> 60) <= 6 && ((1 << (v49 >> 60)) & 0x75) != 0)
        {

          sub_1E139CEA8(&v50);
          swift_unknownObjectRelease();
          if (v43 == v36)
          {

            goto LABEL_19;
          }

          ++v6;
          v2 = v40;
        }

        else
        {
          if (qword_1ECEB0DC8 != -1)
          {
            swift_once();
          }

          v15 = sub_1E1AF591C();
          __swift_project_value_buffer(v15, qword_1ECEB3EB8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = xmmword_1E1B05090;
          sub_1E1AF382C();
          v16 = *(v7 + 16);
          v17 = *(v7 + 24);

          *(&v47 + 1) = &type metadata for AdamId;
          *&v46 = v16;
          *(&v46 + 1) = v17;
          sub_1E1AF383C();
          sub_1E1308058(&v46, &qword_1ECEB2DF0);
          sub_1E1AF382C();
          v45[3] = &type metadata for LegacyAppState;
          v18 = swift_allocObject();
          v45[0] = v18;
          v19 = v51;
          v18[1] = v50;
          v18[2] = v19;
          v20 = v53;
          v18[3] = v52;
          v18[4] = v20;
          sub_1E141CF5C(&v50, &v46);
          sub_1E1AF38BC();
          sub_1E1308058(v45, &qword_1ECEB2DF0);
          sub_1E1AF549C();

          sub_1E139CEA8(&v50);

          swift_unknownObjectRelease();
          v6 = v43;
          if (v43 == v36)
          {
            goto LABEL_21;
          }

          v34 = 1;
          v2 = v40;
        }
      }
    }
  }

  v34 = 0;
LABEL_25:
  v21 = *(v44 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_recentUpdates);
  if (v21 >> 62)
  {
    v22 = sub_1E1AF71CC();
    if (!v22)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_34;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_36;
  }

  v23 = *(v44 + v4[476] + 8);
  v42 = swift_getObjectType();
  v24 = *(v23 + 56);
  v25 = v21 & 0xC000000000000001;

  v26 = 0;
  v27 = v21;
  do
  {
    if (v25)
    {
      v28 = MEMORY[0x1E68FFD80](v26, v21);
    }

    else
    {
      v28 = *(v21 + 8 * v26 + 32);
    }

    ++v26;
    v29 = *(v28 + 24);
    *&v50 = *(v28 + 16);
    *(&v50 + 1) = v29;

    v24(&v50, v42, v23);
    v31 = v30;

    v32 = swift_getObjectType();
    (*(v31 + 80))(v44, v32, v31);

    swift_unknownObjectRelease();
    v21 = v27;
  }

  while (v22 != v26);

LABEL_34:
  if ((v34 & 1) == 0)
  {
    return;
  }

  if (qword_1ECEB0DC8 != -1)
  {
    goto LABEL_41;
  }

LABEL_36:
  v33 = sub_1E1AF591C();
  __swift_project_value_buffer(v33, qword_1ECEB3EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF549C();

  swift_getObjectType();
  AppStateController.refreshDataSources()();
}

uint64_t sub_1E143E7E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E143E840();
  }

  return result;
}

uint64_t sub_1E143E840()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CD0;
  *(inited + 32) = 0;
  *(inited + 40) = *(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingManualUpdates);
  *(inited + 48) = 1;
  *(inited + 56) = *(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_pendingAutomaticUpdates);
  v2 = sub_1E15A00C0(inited);
  swift_setDeallocating();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F40);
  result = swift_arrayDestroy();
  v4 = 0;
  v5 = v2 + 8;
  v32 = v0;
  v33 = v2;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v2[8];
  v37 = v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateController;
  v9 = (v6 + 63) >> 6;
  v29 = v9;
  v30 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_isUpdateAllEnabledForSection;
  v31 = v2 + 8;
  while (1)
  {
    if (!v8)
    {
      do
      {
        v14 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_29;
        }

        if (v14 >= v9)
        {
        }

        v8 = v5[v14];
        ++v4;
      }

      while (!v8);
      v4 = v14;
    }

    v34 = v4;
    v35 = v8;
    v15 = __clz(__rbit64(v8)) | (v4 << 6);
    v16 = *(v33[7] + 8 * v15);
    v36 = *(v33[6] + v15);
    v17 = v16 >> 62 ? sub_1E1AF71CC() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v17)
    {
      break;
    }

LABEL_4:

    v10 = 0;
LABEL_5:
    v8 = (v35 - 1) & v35;
    v11 = *(v32 + v30);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = v11;
    sub_1E1599DA8(v10, v36, isUniquelyReferenced_nonNull_native);
    v13 = *(v32 + v30);
    *(v32 + v30) = *&v40[0];
    sub_1E143B0FC(v13);

    v5 = v31;
    v9 = v29;
    v4 = v34;
  }

  v18 = 0;
  while ((v16 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1E68FFD80](v18, v16);
    v19 = result;
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_27;
    }

LABEL_18:
    v21 = *(v37 + 8);
    ObjectType = swift_getObjectType();
    v23 = *(v19 + 24);
    *&v38[0] = *(v19 + 16);
    *(&v38[0] + 1) = v23;
    v24 = *(v21 + 56);

    v24(v38, ObjectType, v21);
    v26 = v25;

    v27 = swift_getObjectType();
    (*(v26 + 16))(v38, v27, v26);

    swift_unknownObjectRelease();
    v40[0] = v38[0];
    v40[1] = v38[1];
    v40[2] = v38[2];
    v40[3] = v39;
    v28 = ((v39 >> 60) - 2) & 0xFFFFFFFD;
    result = sub_1E139CEA8(v40);
    if (!v28)
    {

      v10 = 1;
      goto LABEL_5;
    }

    ++v18;
    if (v20 == v17)
    {
      goto LABEL_4;
    }
  }

  if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  v19 = *(v16 + 8 * v18 + 32);

  v20 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E143EBAC()
{
  v1 = v0;
  v46 = sub_1E1AF320C();
  v2 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_isUpdateAllEnabledForSection;
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_isUpdateAllEnabledForSection);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v41 = (v2 + 8);
  v42 = v52;
  v40 = (v4 + 8);
  v49 = v6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v10)
  {
LABEL_9:
    v14 = *(*(v49 + 48) + (__clz(__rbit64(v10)) | (v12 << 6)));
    v15 = *(v1 + v50);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v15;
    v18 = sub_1E130A768(v14);
    v19 = *(v15 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_24;
    }

    v22 = v17;
    if (*(v15 + 24) >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = aBlock[0];
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1E1417624();
        v25 = aBlock[0];
        if (v22)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_1E168B790(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_1E130A768(v14);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_26;
      }

      v18 = v23;
      v25 = aBlock[0];
      if (v22)
      {
LABEL_16:
        *(v25[7] + v18) = 0;
        goto LABEL_20;
      }
    }

    v25[(v18 >> 6) + 8] |= 1 << v18;
    *(v25[6] + v18) = v14;
    *(v25[7] + v18) = 0;
    v26 = v25[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_25;
    }

    v25[2] = v28;
LABEL_20:
    v10 &= v10 - 1;
    v29 = *(v1 + v50);
    *(v1 + v50) = v25;
    v30 = sub_1E14F9DB8(v25, v29);

    if ((v30 & 1) == 0)
    {
      sub_1E13006E4(0, &qword_1EE1E3430);
      v48 = sub_1E1AF68EC();
      v31 = swift_allocObject();
      swift_weakInit();
      v52[2] = sub_1E143F43C;
      v52[3] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v52[0] = sub_1E1302D64;
      v52[1] = &block_descriptor_48;
      v47 = _Block_copy(aBlock);

      v32 = v43;
      sub_1E1AF322C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E13029BC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
      v33 = v1;
      v34 = v45;
      v35 = v46;
      sub_1E1AF6EEC();
      v37 = v47;
      v36 = v48;
      MEMORY[0x1E68FF640](0, v32, v34, v47);
      _Block_release(v37);

      v38 = v34;
      v1 = v33;
      (*v41)(v38, v35);
      (*v40)(v32, v44);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E143F1F0(uint64_t result, char a2, char a3)
{
  if (*(*v3 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateControllerReady) == 1)
  {
    return sub_1E143C3C8(result & 1, a2 & 1, a3 & 1);
  }

  return result;
}

uint64_t sub_1E143F25C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_expandedUpdates;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  v8 = sub_1E14AACA8(v6, v7, v5);

  v9 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_whatsNew);
  if (v9)
  {
    swift_beginAccess();
    *(v9 + 50) = (v8 ^ 1) & 1;
  }

  return (v8 ^ 1) & 1;
}

uint64_t sub_1E143F344()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1E143F44C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, unint64_t a7)
{
  v9 = a7 >> 60;
  if ((a7 >> 60) > 4)
  {
    if (v9 == 5 || v9 == 6)
    {
LABEL_12:

      return;
    }

    if (v9 == 7)
    {
    }
  }

  else
  {
    if (v9 != 2 && v9 != 3)
    {
      if (v9 != 4)
      {
        return;
      }

      goto LABEL_12;
    }
  }
}

void sub_1E143F53C()
{
  sub_1E1AF0F7C();

  sub_1E143CE24();
}

void sub_1E143F5F4(unint64_t a1)
{
  v62 = *v1;
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF324C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v62 - v15;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v75 = &v62 - v18;
  v90 = MEMORY[0x1E69E7CC0];
  v91 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v19 = sub_1E1AF71CC();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v3;
  v67 = v4;
  v66 = v7;
  v65 = v6;
  v64 = v8;
  if (v19)
  {
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = a1 & 0xC000000000000001;
      v22 = &selRef_remoteDownloadIdentifiersDidChange_;
      v70 = MEMORY[0x1E69E7CC0];
      v72 = MEMORY[0x1E69E7CC0];
      v71 = MEMORY[0x1E69E7CC0];
      v74 = a1;
      v73 = a1 & 0xC000000000000001;
      while (1)
      {
        v23 = v21 ? MEMORY[0x1E68FFD80](v20, a1, v17) : *(a1 + 8 * v20 + 32);
        v24 = v23;
        v25 = [v23 v22[179]];
        if (v25 <= 2)
        {
          break;
        }

        if (v25 == 3)
        {
          goto LABEL_26;
        }

        if (v25 != 4)
        {
          goto LABEL_31;
        }

        if (![v24 autoUpdateEnabled])
        {
LABEL_21:
          v27 = v24;
          MEMORY[0x1E68FEF20]();
          if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();
          v71 = v91;
          v28 = sub_1E1AF649C();
          v29 = *(v28 - 8);
          v30 = v77;
          (*(v29 + 56))(v77, 1, 1, v28);
          v31 = swift_allocObject();
          v31[2] = 0;
          v31[3] = 0;
          v31[4] = v78;
          v31[5] = v27;
          v32 = v69;
          sub_1E134FD1C(v30, v69, &qword_1ECEB2D20);
          LODWORD(v30) = (*(v29 + 48))(v32, 1, v28);

          if (v30 == 1)
          {
            sub_1E1308058(v32, &qword_1ECEB2D20);
          }

          else
          {
            sub_1E1AF648C();
            (*(v29 + 8))(v32, v28);
          }

          v41 = v31[2];
          swift_unknownObjectRetain();

          a1 = v74;
          if (v41)
          {
            swift_getObjectType();
            v42 = sub_1E1AF63CC();
            v44 = v43;
            swift_unknownObjectRelease();
          }

          else
          {
            v42 = 0;
            v44 = 0;
          }

          sub_1E1308058(v77, &qword_1ECEB2D20);
          v49 = swift_allocObject();
          *(v49 + 16) = &unk_1E1B0A0A0;
          *(v49 + 24) = v31;
          if (v44 | v42)
          {
            v83 = 0;
            v84 = 0;
            v85 = v42;
            v86 = v44;
          }

          v22 = &selRef_remoteDownloadIdentifiersDidChange_;
          v21 = v73;
          goto LABEL_8;
        }

LABEL_27:
        v33 = v24;
        MEMORY[0x1E68FEF20]();
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();
        v70 = v90;
        v34 = sub_1E1AF649C();
        v35 = *(v34 - 8);
        v36 = v75;
        (*(v35 + 56))(v75, 1, 1, v34);
        v37 = swift_allocObject();
        v37[2] = 0;
        v37[3] = 0;
        v37[4] = v78;
        v37[5] = v33;
        v38 = v36;
        v39 = v76;
        sub_1E134FD1C(v38, v76, &qword_1ECEB2D20);
        v40 = (*(v35 + 48))(v39, 1, v34);

        if (v40 == 1)
        {
          sub_1E1308058(v39, &qword_1ECEB2D20);
        }

        else
        {
          sub_1E1AF648C();
          (*(v35 + 8))(v76, v34);
        }

        v45 = v37[2];
        swift_unknownObjectRetain();

        a1 = v74;
        if (v45)
        {
          swift_getObjectType();
          v46 = sub_1E1AF63CC();
          v48 = v47;
          swift_unknownObjectRelease();
        }

        else
        {
          v46 = 0;
          v48 = 0;
        }

        v21 = v73;
        sub_1E1308058(v75, &qword_1ECEB2D20);
        v50 = swift_allocObject();
        *(v50 + 16) = &unk_1E1B0A0B8;
        *(v50 + 24) = v37;
        if (v48 | v46)
        {
          v79 = 0;
          v80 = 0;
          v81 = v46;
          v82 = v48;
        }

        v22 = &selRef_remoteDownloadIdentifiersDidChange_;
LABEL_8:
        swift_task_create();

LABEL_9:
        if (v19 == ++v20)
        {
          goto LABEL_46;
        }
      }

      if ((v25 - 1) < 2)
      {
        v26 = v24;
        MEMORY[0x1E68FEF20]();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();

        v72 = v89;
        goto LABEL_9;
      }

      if (v25)
      {
LABEL_31:

        goto LABEL_9;
      }

LABEL_26:
      if (([v24 autoUpdateEnabled] & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    v71 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v51 = *(v78 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_organizationQueue);
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = swift_allocObject();
    v54 = v71;
    v53[2] = v52;
    v53[3] = v54;
    v55 = v72;
    v53[4] = v70;
    v53[5] = v55;
    v56 = v62;
    v53[6] = a1;
    v53[7] = v56;
    aBlock[4] = sub_1E1440114;
    aBlock[5] = v53;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_89;
    v57 = _Block_copy(aBlock);
    v58 = v51;

    v59 = v63;
    sub_1E1AF322C();
    v87 = MEMORY[0x1E69E7CC0];
    sub_1E13029BC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v60 = v65;
    v61 = v68;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v59, v60, v57);
    _Block_release(v57);

    (*(v67 + 8))(v60, v61);
    (*(v64 + 8))(v59, v66);

    if (v54 >> 62)
    {
      sub_1E1AF71CC();
    }
  }
}

uint64_t sub_1E1440124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E143D8C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1E14401E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5D8;

  return sub_1E1305374(a1, v4);
}

uint64_t objectdestroy_91Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E14402E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5DC;

  return sub_1E143D8C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1E14403A4()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit22LegacyUpdatesPresenter_appStateControllerReady) == 1)
  {
    return sub_1E143C3C8(0, 0, 1);
  }

  return result;
}

uint64_t sub_1E1440480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1E1AEFE6C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CreateCalendarEventAction.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_name);

  return v1;
}

uint64_t CreateCalendarEventAction.location.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_location);

  return v1;
}

uint64_t CreateCalendarEventAction.notes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_notes);

  return v1;
}

char *CreateCalendarEventAction.__allocating_init(title:startDate:endDate:isAllDay:name:location:notes:url:notAuthorizedAction:availability:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v59 = a8;
  v55 = a7;
  v54 = a6;
  v52 = a5;
  v62 = a1;
  v63 = a2;
  v58 = a15;
  v56 = a13;
  v57 = a14;
  v53 = a11;
  v51 = a10;
  v50 = a9;
  v49 = sub_1E1AEFEAC();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_startDate;
  v21 = sub_1E1AEFE6C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v61 = a3;
  v23(&v19[v20], a3, v21);
  v60 = a4;
  v23(&v19[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_endDate], a4, v21);
  v19[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_isAllDay] = v52;
  v24 = &v19[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_name];
  v25 = v55;
  *v24 = v54;
  *(v24 + 1) = v25;
  v26 = &v19[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_location];
  v27 = v50;
  *v26 = v59;
  *(v26 + 1) = v27;
  v28 = &v19[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_notes];
  v29 = v53;
  *v28 = v51;
  *(v28 + 1) = v29;
  v59 = a12;
  sub_1E134FD1C(a12, &v19[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_url], &unk_1ECEB4B60);
  v30 = v57;
  *&v19[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_notAuthorizedAction] = v56;
  v31 = &v19[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_availability];
  *v31 = v30;
  v31[8] = v58 & 1;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v32 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v33 = sub_1E1AF3E1C();
  v34 = *(v33 - 8);
  (*(v34 + 16))(&v19[v32], a16, v33);
  v35 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v36 = sub_1E1AF46DC();
  (*(*(v36 - 8) + 56))(&v19[v35], 1, 1, v36);
  v37 = &v19[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = &v19[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E134FD1C(v69, &v66, &unk_1ECEB5670);
  if (*(&v67 + 1))
  {
    v39 = v67;
    *v38 = v66;
    *(v38 + 1) = v39;
    *(v38 + 4) = v68;
  }

  else
  {
    v40 = v47;
    sub_1E1AEFE9C();
    v41 = sub_1E1AEFE7C();
    v43 = v42;
    (*(v48 + 8))(v40, v49);
    v64 = v41;
    v65 = v43;
    sub_1E1AF6F6C();
    sub_1E1308058(&v66, &unk_1ECEB5670);
  }

  (*(v34 + 8))(a16, v33);
  sub_1E1308058(v59, &unk_1ECEB4B60);
  v44 = *(v22 + 8);
  v44(v60, v21);
  v44(v61, v21);
  sub_1E1308058(v69, &unk_1ECEB5670);
  v45 = v63;
  *(v19 + 2) = v62;
  *(v19 + 3) = v45;
  *(v19 + 4) = 0;
  *(v19 + 5) = 0;
  return v19;
}

char *CreateCalendarEventAction.init(title:startDate:endDate:isAllDay:name:location:notes:url:notAuthorizedAction:availability:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v17 = v16;
  v69 = a8;
  v68 = a7;
  v67 = a6;
  v65 = a5;
  v62 = a3;
  v75 = a2;
  v74 = a1;
  v77 = a16;
  v72 = a15;
  v71 = a14;
  v70 = a13;
  v78 = a12;
  v66 = a11;
  v64 = a10;
  v63 = a9;
  v61 = sub_1E1AEFEAC();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v58 - v21;
  v23 = sub_1E1AF3E1C();
  v76 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_startDate;
  v27 = sub_1E1AEFE6C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v30 = &v17[v26];
  v31 = v62;
  v29(v30, v62, v27);
  v73 = a4;
  v29(&v17[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_endDate], a4, v27);
  v32 = v22;
  v17[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_isAllDay] = v65;
  v33 = &v17[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_name];
  v34 = v68;
  *v33 = v67;
  *(v33 + 1) = v34;
  v35 = &v17[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_location];
  v36 = v63;
  *v35 = v69;
  *(v35 + 1) = v36;
  v37 = &v17[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_notes];
  v38 = v66;
  *v37 = v64;
  *(v37 + 1) = v38;
  v39 = v25;
  v40 = v23;
  v41 = v76;
  sub_1E134FD1C(v78, &v17[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_url], &unk_1ECEB4B60);
  *&v17[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_notAuthorizedAction] = v70;
  v42 = &v17[OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_availability];
  *v42 = v71;
  v42[8] = v72 & 1;
  v88 = 0;
  memset(v87, 0, sizeof(v87));
  (*(v41 + 16))(v39, v77, v40);
  v43 = sub_1E1AF46DC();
  (*(*(v43 - 8) + 56))(v22, 1, 1, v43);
  v44 = &v17[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v44 = 0u;
  *(v44 + 1) = 0u;
  sub_1E134FD1C(v87, &v81, &unk_1ECEB5670);
  if (*(&v82 + 1))
  {
    v84 = v81;
    v85 = v82;
    v86 = v83;
  }

  else
  {
    v45 = v59;
    sub_1E1AEFE9C();
    v46 = v31;
    v47 = sub_1E1AEFE7C();
    v48 = v40;
    v49 = v39;
    v50 = v32;
    v52 = v51;
    (*(v60 + 8))(v45, v61);
    v79 = v47;
    v80 = v52;
    v31 = v46;
    v32 = v50;
    v39 = v49;
    v40 = v48;
    v41 = v76;
    sub_1E1AF6F6C();
    sub_1E1308058(&v81, &unk_1ECEB5670);
  }

  (*(v41 + 8))(v77, v40);
  sub_1E1308058(v78, &unk_1ECEB4B60);
  v53 = *(v28 + 8);
  v53(v73, v27);
  v53(v31, v27);
  sub_1E1308058(v87, &unk_1ECEB5670);
  v54 = &v17[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  *(v54 + 4) = v86;
  v55 = v85;
  *v54 = v84;
  *(v54 + 1) = v55;
  sub_1E137F600(v32, &v17[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], &unk_1ECEB1770);
  v56 = v75;
  *(v17 + 2) = v74;
  *(v17 + 3) = v56;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0;
  (*(v41 + 32))(&v17[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v39, v40);
  return v17;
}

char *CreateCalendarEventAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v120 = a2;
  v121 = v2;
  v115 = *v3;
  v5 = sub_1E1AF39DC();
  v117 = *(v5 - 8);
  v118 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v110 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v107 = v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = (v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = v102 - v12;
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v109 = v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v106 = v102 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v105 = v102 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v104 = v102 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v113 = v102 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v102 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v102 - v29;
  v31 = sub_1E1AEFE6C();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v114 = v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v119 = v102 - v35;
  v123 = a1;
  sub_1E1AF381C();
  sub_1E1AF371C();
  v36 = v32;
  v108 = v15;
  v39 = *(v15 + 8);
  v37 = v15 + 8;
  v38 = v39;
  v124 = v14;
  v39(v30, v14);
  v40 = *(v32 + 48);
  v122 = v31;
  if (v40(v13, 1, v31) == 1)
  {
    sub_1E1308058(v13, &unk_1ECEBB780);
    v41 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v42 = 0x7461447472617473;
    v43 = v115;
    v42[1] = 0xE900000000000065;
    v42[2] = v43;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x1E69AB690], v41);
    swift_willThrow();
    (*(v117 + 8))(v120, v118);
    v38(v123, v124);
LABEL_14:
    swift_deallocPartialClassInstance();
    return v43;
  }

  v44 = v13;
  v45 = v122;
  v103 = *(v36 + 32);
  v103(v119, v44, v122);
  v112 = v36;
  sub_1E1AF381C();
  v46 = v116;
  sub_1E1AF371C();
  v38(v28, v124);
  if (v40(v46, 1, v45) == 1)
  {
    sub_1E1308058(v116, &unk_1ECEBB780);
    v47 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v48 = 0x65746144646E65;
    v43 = v115;
    v48[1] = 0xE700000000000000;
    v48[2] = v43;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x1E69AB690], v47);
    swift_willThrow();
    (*(v117 + 8))(v120, v118);
    v38(v123, v124);
    (*(v112 + 8))(v119, v122);
    goto LABEL_14;
  }

  v49 = v38;
  v50 = v37;
  v51 = v114;
  v103(v114, v116, v122);
  v52 = v113;
  v53 = v123;
  sub_1E1AF381C();
  v54 = sub_1E1AF37CC();
  v56 = v55;
  v49(v52, v124);
  if (!v56)
  {
    v91 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v92 = 1701667182;
    v92[1] = 0xE400000000000000;
    v92[2] = v115;
    (*(*(v91 - 8) + 104))(v92, *MEMORY[0x1E69AB690], v91);
    swift_willThrow();
    (*(v117 + 8))(v120, v118);
    v49(v53, v124);
    v43 = *(v112 + 8);
    v93 = v122;
    (v43)(v51, v122);
    (v43)(v119, v93);
    goto LABEL_14;
  }

  v116 = v54;
  v57 = *(v112 + 16);
  v58 = v50;
  v59 = v49;
  v60 = v121;
  v61 = v122;
  v57(v121 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_startDate, v119, v122);
  v57(v60 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_endDate, v51, v61);
  v62 = v104;
  sub_1E1AF381C();
  LOBYTE(v57) = sub_1E1AF370C();
  v63 = v62;
  v64 = v124;
  v65 = v58;
  v59(v63, v124);
  *(v60 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_isAllDay) = v57 & 1;
  v66 = (v60 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_name);
  *v66 = v116;
  v66[1] = v56;
  v67 = v105;
  sub_1E1AF381C();
  v68 = sub_1E1AF37CC();
  v70 = v69;
  v59(v67, v64);
  v71 = v65;
  v72 = (v60 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_location);
  *v72 = v68;
  v72[1] = v70;
  sub_1E1AF381C();
  v73 = sub_1E1AF37CC();
  v75 = v74;
  v59(v67, v64);
  v76 = (v60 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_notes);
  *v76 = v73;
  v76[1] = v75;
  sub_1E1AF381C();
  v77 = v107;
  sub_1E1AF36FC();
  v59(v67, v64);
  sub_1E137F600(v77, v60 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_url, &unk_1ECEB4B60);
  type metadata accessor for Action();
  sub_1E1AF381C();
  v78 = static Action.tryToMakeInstance(byDeserializing:using:)(v67, v120);
  v59(v67, v64);
  *(v60 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_notAuthorizedAction) = v78;
  v79 = v106;
  sub_1E1AF381C();
  v80 = sub_1E1AF37CC();
  v82 = v81;
  v116 = v59;
  v59(v79, v64);
  v83 = v122;
  v84 = v64;
  v85 = v53;
  v102[1] = v71;
  if (v82)
  {
    v86 = v120;
    if (v80 == 2037609826 && v82 == 0xE400000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {
      v87 = 0;
      v88 = v117;
    }

    else
    {
      v88 = v117;
      if (v80 != 1701147238 || v82 != 0xE400000000000000)
      {
        v101 = sub_1E1AF74AC();

        v87 = v101 & 1;
        v89 = v101 ^ 1;
        goto LABEL_12;
      }

      v87 = 1;
    }

    v89 = 0;
LABEL_12:
    v90 = v118;
    goto LABEL_17;
  }

  v87 = 0;
  v89 = 1;
  v88 = v117;
  v90 = v118;
  v86 = v120;
LABEL_17:
  v95 = v121 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_availability;
  *v95 = v87;
  *(v95 + 8) = v89 & 1;
  v96 = v109;
  (*(v108 + 16))(v109, v85, v84);
  v97 = v110;
  (*(v88 + 16))(v110, v86, v90);
  v98 = v111;
  v99 = Action.init(deserializing:using:)(v96, v97);
  if (v98)
  {
    (*(v88 + 8))(v86, v90);
    v116(v85, v84);
    v43 = *(v112 + 8);
    (v43)(v114, v83);
    (v43)(v119, v83);
  }

  else
  {
    v43 = v99;
    (*(v88 + 8))(v86, v90);
    v116(v85, v84);
    v100 = *(v112 + 8);
    v100(v114, v83);
    v100(v119, v83);
  }

  return v43;
}

uint64_t sub_1E1441E10()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_startDate;
  v2 = sub_1E1AEFE6C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_endDate, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_url, &unk_1ECEB4B60);
}

uint64_t CreateCalendarEventAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  v3 = OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_startDate;
  v4 = sub_1E1AEFE6C();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_endDate, v4);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit25CreateCalendarEventAction_url, &unk_1ECEB4B60);

  return v0;
}

uint64_t CreateCalendarEventAction.__deallocating_deinit()
{
  CreateCalendarEventAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CreateCalendarEventAction()
{
  result = qword_1EE1EB0B0;
  if (!qword_1EE1EB0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E144216C()
{
  sub_1E1AEFE6C();
  if (v0 <= 0x3F)
  {
    sub_1E130072C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t TodayDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:triggerController:supportsFastImpressions:accountStore:shouldUpdateOnAccountChange:advertLifecycleMetricsReporter:isRunningPPTs:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, int a6, uint64_t a7, char a8)
{
  swift_allocObject();
  v16 = sub_1E1444448(a1, a2, a3, a4, a5, a6, a7, a8);

  return v16;
}

uint64_t TodayDiffablePagePresenter.init(objectGraph:pageUrl:triggerController:supportsFastImpressions:accountStore:shouldUpdateOnAccountChange:advertLifecycleMetricsReporter:isRunningPPTs:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, int a6, uint64_t a7, char a8)
{
  v9 = sub_1E1444448(a1, a2, a3, a4, a5, a6, a7, a8);

  return v9;
}

uint64_t sub_1E14423D8()
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
    sub_1E183B6D8(v2);
  }

  return result;
}

uint64_t sub_1E14424BC(uint64_t a1)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v83 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v84 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - v5;
  v79 = &v78 - v5;
  v82 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v78 - v9;
  v78 = v1[2];
  sub_1E134FD1C(v1 + qword_1EE2169A8, &v78 - v9, &unk_1ECEB4B60);
  v11 = *(v1 + qword_1EE1D8248);
  swift_beginAccess();
  v12 = v1[3];
  swift_beginAccess();
  v13 = v1[4];
  v14 = *(v1 + qword_1EE1D8250);
  type metadata accessor for TodayDiffablePageContentPresenter();
  v15 = swift_allocObject();
  *(v15 + qword_1EE1D5C80) = v11;
  v81 = v14;
  *(v15 + qword_1EE1D5C88) = v14;
  v87 = v10;
  sub_1E134FD1C(v10, v6, &unk_1ECEB4B60);
  *(v15 + qword_1EE1E9D48) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v17 = qword_1EE2166A0;

  v86 = v12;
  swift_retain_n();
  v85 = v13;
  swift_retain_n();

  *(v15 + v17) = sub_1E159D6F0(v16);
  v18 = (v15 + qword_1EE1E9E00);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v15 + qword_1EE1E9EA0);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v15 + qword_1EE1E9E08);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + qword_1EE1E9DF0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + qword_1EE1E9E98);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + qword_1EE216698);
  *v23 = 0u;
  v23[1] = 0u;
  *(v23 + 25) = 0u;
  *(v15 + qword_1EE2166D0) = 0;
  *(v15 + qword_1EE1E9D50) = 0;
  *(v15 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v15 + qword_1EE2166C8) = 0;
  v24 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D0);
  swift_allocObject();
  *(v15 + v24) = sub_1E1AF5BEC();
  v25 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v15 + v25) = sub_1E1AF5BEC();
  v26 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31E0);
  swift_allocObject();
  *(v15 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE2166B0;
  swift_allocObject();
  *(v15 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v15 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v15 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE1E9DD8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v32 = *(*(v31 - 8) + 56);
  v32(v15 + v30, 1, 1, v31);
  v32(v15 + qword_1EE1E9DE0, 1, 1, v31);
  v33 = v79;
  v34 = v78;
  *(v15 + 16) = v78;
  sub_1E13E23F8(v33, v15 + qword_1EE216678);
  v35 = *v18;
  *v18 = 0;
  v18[1] = 0;
  sub_1E1300EA8(v35);
  v36 = *v20;
  *v20 = 0;
  v20[1] = 0;
  v37 = v80;
  sub_1E1300EA8(v36);
  if (v37)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    v39 = sub_1E1445E6C;
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v40 = *v19;
  *v19 = v39;
  v19[1] = v38;

  sub_1E1300EA8(v40);
  v41 = *v21;
  *v21 = 0;
  v21[1] = 0;
  sub_1E1300EA8(v41);
  v42 = *v22;
  *v22 = 0;
  v22[1] = 0;
  sub_1E1300EA8(v42);
  v43 = v85;
  *(v15 + qword_1EE1E9E90) = v86;
  *(v15 + qword_1EE216690) = v43;
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = v84;
  sub_1E134FD1C(v87, v84, &unk_1ECEB4B60);
  v46 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v47 = (v46 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v46 + v82 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  sub_1E13E23F8(v45, v50 + v46);
  v51 = v50 + v47;
  *v51 = v44;
  *(v51 + 8) = v81;
  *(v50 + v48) = v34;
  v52 = v34;
  *(v50 + v49) = v43;
  v53 = swift_allocObject();
  *(v53 + 16) = v34;
  *(v53 + 24) = v43;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E1445E64;
  *(v54 + 24) = v52;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1E1445D94;
  *(v55 + 24) = v50;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1E13E2498;
  *(v56 + 24) = v55;
  v57 = (v15 + qword_1EE1E9E00);
  v58 = *(v15 + qword_1EE1E9E00);
  *v57 = sub_1E13E24A0;
  v57[1] = v56;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E1300EA8(v58);
  v59 = (v15 + qword_1EE1E9EA0);
  v60 = *(v15 + qword_1EE1E9EA0);
  v61 = *(v15 + qword_1EE1E9EA0 + 8);
  if (v60)
  {
    v62 = swift_allocObject();
    *(v62 + 16) = v60;
    *(v62 + 24) = v61;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1E13E24B8;
    *(v63 + 24) = v62;
    v64 = sub_1E13E24C0;
  }

  else
  {
    v64 = 0;
    v63 = *(v15 + qword_1EE1E9EA0 + 8);
  }

  *v59 = v64;
  v59[1] = v63;
  sub_1E1300E34(v60);
  sub_1E1300EA8(v60);
  v65 = (v15 + qword_1EE1E9E08);
  v66 = *(v15 + qword_1EE1E9E08);
  v67 = *(v15 + qword_1EE1E9E08 + 8);
  if (v66)
  {
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    *(v68 + 24) = v67;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1E13E24A8;
    *(v69 + 24) = v68;
    v70 = sub_1E13E24B0;
  }

  else
  {
    v70 = 0;
    v69 = *(v15 + qword_1EE1E9E08 + 8);
  }

  *v65 = v70;
  v65[1] = v69;
  sub_1E1300E34(v66);
  sub_1E1300EA8(v66);
  v71 = (v15 + qword_1EE1E9DF0);
  v72 = *(v15 + qword_1EE1E9DF0);
  *v71 = sub_1E1445E5C;
  v71[1] = v53;

  sub_1E1300EA8(v72);
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1E13E2490;
  *(v73 + 24) = v54;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1E13E2498;
  *(v74 + 24) = v73;
  v75 = (v15 + qword_1EE1E9E98);
  v76 = *(v15 + qword_1EE1E9E98);
  *v75 = sub_1E13E24A0;
  v75[1] = v74;

  sub_1E1300EA8(v76);

  sub_1E1308058(v87, &unk_1ECEB4B60);
  return v15;
}

uint64_t sub_1E1442E20(char **a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  result = sub_1E1A7BC80(*a1, a1[1], *(a1 + 16));
  if ((v2 & 0x80000000) == 0)
  {
    v4 = *&v1[OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind];
    v5 = *&v1[OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind + 8];
    v6 = *&v1[OBJC_IVAR____TtC11AppStoreKit9TodayPage_dateRelevance];

    _s11AppStoreKit26TodayDiffablePagePresenterC17registerRelevance3for04dateI0ySSSg_SaySo06INDateI8ProviderCGtF_0(v4, v5, v6);
  }

  return result;
}

uint64_t sub_1E1442ED0(uint64_t a1, char a2)
{
  sub_1E1A7F300(a1, a2);
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title + 8);
  v6 = (v2 + qword_1EE215758);
  swift_beginAccess();
  *v6 = v5;
  v6[1] = v4;

  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);
  v7 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail + 8);
  v9 = (v2 + qword_1EE215770);
  swift_beginAccess();
  *v9 = v8;
  v9[1] = v7;

  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);
  v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail + 8);
  v12 = (v2 + qword_1EE215768);
  swift_beginAccess();
  *v12 = v11;
  v12[1] = v10;

  v14 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);
  v13 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle + 8);
  v15 = (v2 + qword_1EE215780);
  swift_beginAccess();
  *v15 = v14;
  v15[1] = v13;

  v17 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);
  v16 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle + 8);
  v18 = (v2 + qword_1EE215760);
  swift_beginAccess();
  *v18 = v17;
  v18[1] = v16;

  v19 = (a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl);
  v20 = *(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl + 8);
  if (v20)
  {
    v21 = *v19;
    v22 = v20;
  }

  else
  {
    v23 = (v2 + qword_1EE215778);
    swift_beginAccess();
    v21 = *v23;
    v22 = v23[1];
  }

  v24 = (v2 + qword_1EE215778);
  swift_beginAccess();
  *v24 = v21;
  v24[1] = v22;
}

void sub_1E144311C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (a1)
  {
    v7 = a1;
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v14 = MEMORY[0x1E69E6158];
    v12 = a2;
    v13 = a3;

    sub_1E1AF385C();
    sub_1E1308058(&v12, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    swift_getErrorValue();
    v14 = v11;
    v9 = __swift_allocate_boxed_opaque_existential_0(&v12);
    (*(*(v11 - 8) + 16))(v9);
    sub_1E1AF385C();
    sub_1E1308058(&v12, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();
  }

  else
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v14 = MEMORY[0x1E69E6158];
    v12 = a2;
    v13 = a3;

    sub_1E1AF385C();
    sub_1E1308058(&v12, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }
}

Swift::Void __swiftcall TodayDiffablePagePresenter.impressionsTrackerDidRecordFastImpression()()
{
  v1 = *(v0 + qword_1EE1D8258);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_1E137A684;
      v9[5] = v4;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1E1367148;
      v9[3] = &block_descriptor_14;
      v5 = _Block_copy(v9);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);

      v8 = [objc_opt_self() mainRunLoop];
      [v8 addTimer:v7 forMode:*MEMORY[0x1E695DA28]];

      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_1E14436F4()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_1EE1D8238) != 1)
  {
    return;
  }

  v9 = qword_1EE1D8268;
  v10 = *(v0 + qword_1EE1D8260);
  v24 = *(v0 + qword_1EE1D8268);
  v11 = [v10 ams_activeiTunesAccount];
  v12 = *(v0 + v9);
  *(v0 + v9) = v11;

  v13 = *(v0 + v9);
  if (v13)
  {
    v14 = [v13 ams_DSID];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v24 ams_DSID];
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      sub_1E13006E4(0, &qword_1EE1E31F0);
      v17 = sub_1E1AF6D0C();

      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v16 = v14;
LABEL_14:

LABEL_15:
    swift_getObjectType();
    sub_1E1AF477C();
    ImpressionsCalculator.removeAllElements()();
    sub_1E13006E4(0, &qword_1EE1E3430);
    v23 = sub_1E1AF68EC();
    aBlock[4] = sub_1E1445E74;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_67;
    v19 = _Block_copy(aBlock);

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E1302A04(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    v22 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    sub_1E1AF6EEC();
    v20 = v23;
    MEMORY[0x1E68FF640](0, v8, v4, v19);
    _Block_release(v19);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v22);
    return;
  }

  if (v15)
  {
    goto LABEL_14;
  }

LABEL_10:
  v18 = v24;
}

void sub_1E1443B34()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_1E1AEFE5C();
    *(v5 + 40) = 1;
    sub_1E1889F10();
    sub_1E188B030(v4);

    (*(v2 + 8))(v4, v1);
  }

  sub_1E14436F4();
}

Swift::Void __swiftcall TodayDiffablePagePresenter.appEnteredWhileAppeared()()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(*v0 + 736));
  if (v5)
  {

    sub_1E1AEFE5C();
    *(v5 + 41) = 1;
    sub_1E1889F10();
    sub_1E188B030(v4);

    (*(v2 + 8))(v4, v1);
  }

  sub_1E14436F4();
}

uint64_t sub_1E1443D6C(uint64_t result)
{
  if (*(*(*(result + qword_1EE216750) + 16) + 16))
  {

    v1 = sub_1E1AF4B9C();

    if (v1)
    {
      sub_1E14436F4();
    }
  }

  return result;
}

uint64_t sub_1E1443E24()
{
}

uint64_t TodayDiffablePagePresenter.deinit()
{
  v0 = sub_1E13DABF4();

  return v0;
}

uint64_t TodayDiffablePagePresenter.__deallocating_deinit()
{
  TodayDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

void _s11AppStoreKit26TodayDiffablePagePresenterC17registerRelevance3for04dateI0ySSSg_SaySo06INDateI8ProviderCGtF_0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v5 = a3 >> 62;
    if (a3 >> 62)
    {
      if (sub_1E1AF71CC() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v6 = objc_allocWithZone(MEMORY[0x1E696E970]);

      v7 = [v6 init];
      v8 = sub_1E1AF5DBC();
      [v7 setWidgetKind_];

      if (v5)
      {
        sub_1E13006E4(0, &qword_1ECEB3F60);

        sub_1E1AF720C();
      }

      else
      {

        sub_1E1AF74DC();
        sub_1E13006E4(0, &qword_1ECEB3F60);
      }

      sub_1E13006E4(0, &qword_1ECEB3F60);
      v9 = sub_1E1AF620C();

      [v7 setRelevanceProviders_];

      v10 = [objc_opt_self() defaultStore];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1E1B06D70;
      *(v11 + 32) = v7;
      sub_1E13006E4(0, &qword_1ECEB3F68);
      v12 = v7;
      v13 = sub_1E1AF620C();

      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      v17[4] = sub_1E1445E7C;
      v17[5] = v14;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 1107296256;
      v17[2] = sub_1E1306F24;
      v17[3] = &block_descriptor_73;
      v15 = _Block_copy(v17);

      [v10 setRelevantShortcuts:v13 completionHandler:v15];
      _Block_release(v15);

      return;
    }
  }

  if (qword_1EE1D27B0 != -1)
  {
    swift_once();
  }

  v16 = sub_1E1AF591C();
  __swift_project_value_buffer(v16, qword_1EE215450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();
}

uint64_t sub_1E1444448(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, int a6, uint64_t a7, char a8)
{
  v9 = v8;
  v157 = a7;
  LODWORD(v142) = a4;
  v158 = a2;
  v152 = sub_1E1AF68DC();
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v147);
  v149 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v148 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v128 - v20;
  v143 = sub_1E1AF4B2C();
  v140 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v139 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v154 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v128 - v23;
  v144 = sub_1E1AF3D0C();
  v24 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v9 + qword_1EE215758);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v9 + qword_1EE215770);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v9 + qword_1EE215768);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v9 + qword_1EE215780);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v9 + qword_1EE215760);
  *v31 = 0;
  v31[1] = 0;
  *(v9 + qword_1EE1D8240) = 0;
  v32 = qword_1EE1D8268;
  *(v9 + qword_1EE1D8268) = 0;
  v33 = (v9 + qword_1EE215778);
  *v33 = 0;
  v33[1] = 0;
  *(v9 + qword_1EE1D8248) = a3;
  *(v9 + qword_1EE1D8260) = a5;
  v153 = a6;
  *(v9 + qword_1EE1D8238) = a6;

  v141 = a5;
  v34 = [v141 ams_activeiTunesAccount];
  v35 = *(v9 + v32);
  *(v9 + v32) = v34;

  *(v9 + qword_1EE1D8250) = a8;
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v155 = v160;
  v156 = v21;
  if (v142)
  {
    v142 = a1;
    v36 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    v37 = *(v24 + 104);
    v38 = v26;
    v136 = *MEMORY[0x1E69AAFB8];
    v39 = v144;
    v135 = v24 + 104;
    v134 = v37;
    v37(v26);
    v132 = v36;
    v40 = v145;
    sub_1E1AF52AC();
    v41 = *(v24 + 8);
    v137 = v38;
    v138 = v24 + 8;
    v133 = v41;
    v41(v38, v39);
    v42 = v146;
    sub_1E1AF532C();
    v43 = v154[1];
    ++v154;
    v131 = v43;
    v43(v40, v42);
    v44 = v160;
    type metadata accessor for FastImpressionsV5Tracker();
    v45 = swift_allocObject();
    v45[3] = 0;
    swift_unknownObjectWeakInit();
    sub_1E1AF4EAC();
    swift_allocObject();
    v45[5] = sub_1E1AF4E8C();
    swift_allocObject();
    v45[6] = sub_1E1AF4E8C();
    v45[4] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F70);
    v46 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F78) - 8);
    v47 = *(*v46 + 72);
    v48 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
    v49 = 2 * v47;
    v50 = swift_allocObject();
    v130 = v50;
    *(v50 + 16) = xmmword_1E1B03760;
    v51 = v50 + v48;
    v52 = (v51 + v46[14]);
    v53 = v46[18];
    sub_1E1AF4B0C();
    v54 = MEMORY[0x1E69AB380];
    *v52 = v45[5];
    v52[1] = v54;
    *(v51 + v53) = 0;
    v55 = v51 + v47;
    v56 = (v55 + v46[14]);
    v129 = v46[18];

    v57 = v139;
    sub_1E1AF4B1C();
    sub_1E1AF4AFC();
    v140 = *(v140 + 8);
    (v140)(v57, v143);
    v58 = sub_1E1302A04(&qword_1ECEB3F80, type metadata accessor for FastImpressionsV5Tracker);
    *v56 = v45;
    v56[1] = v58;
    *(v55 + v129) = 1;
    v59 = v51 + v49;
    v60 = (v51 + v49 + v46[14]);
    v61 = v46[18];

    sub_1E1AF4B0C();
    sub_1E1AF4AFC();
    (v140)(v57, v143);
    *v60 = v45;
    v60[1] = v58;
    v143 = v58;
    *(v59 + v61) = 1;
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();

    v62 = ImpressionsCalculator.init(configurationTrackerPairs:)(v130);
    if (qword_1EE1D21E8 != -1)
    {
      swift_once();
    }

    v63 = v137;
    v64 = v144;
    v134(v137, v136, v144);
    v65 = v145;
    sub_1E1AF52AC();
    v133(v63, v64);
    v66 = v146;
    sub_1E1AF532C();
    v131(v65, v66);
    v67 = v160;
    type metadata accessor for FastImpressionFlushGate();
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v68[4] = 0;
    v68[5] = 0;
    v68[2] = v67;
    *(v9 + qword_1EE1D8258) = v68;
    sub_1E134FD1C(v158, v156, &unk_1ECEB4B60);
    sub_1E134FD1C(v157, &v160, &qword_1ECEB24F8);
    *(v9 + qword_1EE2169B8) = 0;
    v69 = MEMORY[0x1E69E7CC0];
    *(v9 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
    *(v9 + qword_1EE1ED400) = 0;
    v70 = *(*v9 + 640);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31C8);
    v72 = *(*(v71 - 8) + 56);
    v72(v9 + v70, 1, 1, v71);
    v73 = *(*v9 + 648);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
    (*(*(v74 - 8) + 56))(v9 + v73, 1, 1, v74);
    v75 = *(*v9 + 656);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31B8);
    (*(*(v76 - 8) + 56))(v9 + v75, 1, 1, v76);
    v72(v9 + *(*v9 + 664), 1, 1, v71);
    v77 = *(*v9 + 672);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
    (*(*(v78 - 8) + 56))(v9 + v77, 1, 1, v78);
    v79 = *(*v9 + 680);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
    (*(*(v80 - 8) + 56))(v9 + v79, 1, 1, v80);
    v81 = *(*v9 + 688);
    sub_1E13006E4(0, &qword_1EE1E3430);

    v154 = v45;
    v82 = v142;

    v146 = v62;
    sub_1E1AF322C();
    v159 = v69;
    sub_1E1302A04(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
    sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
    sub_1E1AF6EEC();
    (*(v150 + 104))(v151, *MEMORY[0x1E69E8090], v152);
    *(v9 + v81) = sub_1E1AF692C();
    sub_1E13C6184(v9 + *(*v9 + 696));
    v83 = (v9 + *(*v9 + 704));
    *v83 = 0u;
    v83[1] = 0u;
    *(v83 + 25) = 0u;
    v84 = *(*v9 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
    swift_allocObject();
    *(v9 + v84) = sub_1E1AF5BEC();
    v85 = *(*v9 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
    swift_allocObject();
    *(v9 + v85) = sub_1E1AF5BEC();
    v86 = *(*v9 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    swift_allocObject();
    *(v9 + v86) = sub_1E1AF5BEC();
    *(v9 + *(*v9 + 736)) = 0;
    v87 = (v9 + *(*v9 + 752));
    *v87 = 0;
    v87[1] = 0;
    v88 = v156;
    sub_1E134FD1C(v156, v9 + qword_1EE2169A8, &unk_1ECEB4B60);
    sub_1E134FD1C(&v160, v9 + *(*v9 + 744), &qword_1ECEB24F8);
    v89 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

    *(v9 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v90);
    v91 = v154;

    v92 = v146;

    v93 = sub_1E13C5270(v82, v91, v143, v92);
    v94 = *(*v93 + 1112);

    *(v93 + qword_1EE2169B8) = v94(0);

    sub_1E13C63E4(0);

    sub_1E1308058(&v160, &qword_1ECEB24F8);
    v95 = v88;
  }

  else
  {
    *(v9 + qword_1EE1D8258) = 0;
    sub_1E134FD1C(v158, v21, &unk_1ECEB4B60);
    sub_1E134FD1C(v157, &v160, &qword_1ECEB24F8);
    *(v9 + qword_1EE2169B8) = 0;
    v96 = MEMORY[0x1E69E7CC0];
    *(v9 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
    *(v9 + qword_1EE1ED400) = 0;
    v97 = *(*v9 + 640);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31C8);
    v99 = *(*(v98 - 8) + 56);
    v99(v9 + v97, 1, 1, v98);
    v100 = *(*v9 + 648);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
    (*(*(v101 - 8) + 56))(v9 + v100, 1, 1, v101);
    v102 = *(*v9 + 656);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31B8);
    (*(*(v103 - 8) + 56))(v9 + v102, 1, 1, v103);
    v99(v9 + *(*v9 + 664), 1, 1, v98);
    v104 = *(*v9 + 672);
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
    (*(*(v105 - 8) + 56))(v9 + v104, 1, 1, v105);
    v106 = *(*v9 + 680);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
    (*(*(v107 - 8) + 56))(v9 + v106, 1, 1, v107);
    v108 = *(*v9 + 688);
    sub_1E13006E4(0, &qword_1EE1E3430);

    sub_1E1AF322C();
    v159 = v96;
    sub_1E1302A04(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
    sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
    sub_1E1AF6EEC();
    (*(v150 + 104))(v151, *MEMORY[0x1E69E8090], v152);
    *(v9 + v108) = sub_1E1AF692C();
    sub_1E13C6184(v9 + *(*v9 + 696));
    v109 = (v9 + *(*v9 + 704));
    *v109 = 0u;
    v109[1] = 0u;
    *(v109 + 25) = 0u;
    v110 = *(*v9 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
    swift_allocObject();
    *(v9 + v110) = sub_1E1AF5BEC();
    v111 = *(*v9 + 720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
    swift_allocObject();
    *(v9 + v111) = sub_1E1AF5BEC();
    v112 = *(*v9 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
    swift_allocObject();
    *(v9 + v112) = sub_1E1AF5BEC();
    *(v9 + *(*v9 + 736)) = 0;
    v113 = (v9 + *(*v9 + 752));
    *v113 = 0;
    v113[1] = 0;
    v114 = v156;
    sub_1E134FD1C(v156, v9 + qword_1EE2169A8, &unk_1ECEB4B60);
    sub_1E134FD1C(&v160, v9 + *(*v9 + 744), &qword_1ECEB24F8);
    v115 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

    *(v9 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v116);

    v93 = sub_1E13C5270(v117, 0, 0, 0);
    v118 = *(*v93 + 1112);

    *(v93 + qword_1EE2169B8) = v118(0);

    sub_1E13C63E4(0);

    sub_1E1308058(&v160, &qword_1ECEB24F8);
    v95 = v114;
  }

  sub_1E1308058(v95, &unk_1ECEB4B60);
  type metadata accessor for FastImpressionsV5Tracker();
  v119 = swift_dynamicCastClass();
  if (v119)
  {
    v120 = v119;
    swift_beginAccess();
    *(v120 + 24) = &protocol witness table for TodayDiffablePagePresenter;
    swift_unknownObjectWeakAssign();
    v121 = *(v93 + qword_1EE1D8258);
    if (v121)
    {
      v122 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v123 = *(v121 + 32);
      *(v121 + 32) = sub_1E1445E84;
      *(v121 + 40) = v122;

      sub_1E1300EA8(v123);
    }
  }

  v125 = v157;
  v124 = v158;
  if (v153)
  {
    v126 = [objc_opt_self() defaultCenter];
    [v126 addObserver:v93 selector:sel_storeAccountDidChange name:*MEMORY[0x1E69597D8] object:v141];
  }

  else
  {
  }

  sub_1E1308058(v125, &qword_1ECEB24F8);
  sub_1E1308058(v124, &unk_1ECEB4B60);
  return v93;
}

uint64_t type metadata accessor for TodayDiffablePagePresenter()
{
  result = qword_1EE1D8228;
  if (!qword_1EE1D8228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1445D94(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E1A4710C(a1, v1 + v4, v9, v10, v11, v12);
}

_BYTE *Artwork.Variant.init(format:quality:supportsWideGamut:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

uint64_t Artwork.Variant.init(deserializing:using:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18[-v10];
  sub_1E1AF381C();
  sub_1E144611C();
  sub_1E1AF369C();
  v12 = *(v6 + 8);
  v12(v11, v5);
  v21 = v22;
  sub_1E1AF381C();
  v13 = sub_1E1AF36EC();
  v19 = v14;
  v12(v11, v5);
  sub_1E1AF381C();
  v15 = sub_1E1AF370C();
  v16 = sub_1E1AF39DC();
  (*(*(v16 - 8) + 8))(v20, v16);
  v12(a1, v5);
  result = (v12)(v8, v5);
  *a3 = v21;
  *(a3 + 8) = v13;
  *(a3 + 16) = v19 & 1;
  *(a3 + 17) = v15 & 1;
  return result;
}

unint64_t sub_1E144611C()
{
  result = qword_1EE1E4BD0;
  if (!qword_1EE1E4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4BD0);
  }

  return result;
}

uint64_t Artwork.Variant.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E1AF5F0C();

  sub_1E1AF764C();
  if (!v2)
  {
    MEMORY[0x1E6900360](v1);
  }

  return sub_1E1AF764C();
}

uint64_t Artwork.Variant.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  sub_1E1AF764C();
  if (!v2)
  {
    MEMORY[0x1E6900360](v1);
  }

  sub_1E1AF764C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1446378()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  sub_1E1AF764C();
  if (!v2)
  {
    MEMORY[0x1E6900360](v1);
  }

  sub_1E1AF764C();
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit7ArtworkC7VariantV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  if ((sub_1E1457AD8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return v4 ^ v7 ^ 1u;
}

unint64_t sub_1E14464E4()
{
  result = qword_1ECEB3F88;
  if (!qword_1ECEB3F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3F88);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t _s7VariantVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s7VariantVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t Artwork.Format.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Artwork.Format.rawValue.getter()
{
  v1 = 6778480;
  v2 = 1667851624;
  if (*v0 != 2)
  {
    v2 = 7496556;
  }

  if (*v0)
  {
    v1 = 1734701162;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E14466D8()
{
  result = qword_1ECEB3F90;
  if (!qword_1ECEB3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3F90);
  }

  return result;
}

uint64_t sub_1E144672C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14467D0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1446860()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E144690C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6778480;
  v4 = 0xE400000000000000;
  v5 = 1667851624;
  if (*v1 != 2)
  {
    v5 = 7496556;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 1734701162;
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

uint64_t _s6FormatOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6FormatOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Artwork.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v89 = a2;
  v3 = 0x6574616C706D6574;
  v4 = sub_1E1AEFEAC();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v59 - v7;
  v8 = sub_1E1AF39DC();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v77 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v76 = &v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v59 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v74 = &v59 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v59 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - v26;
  sub_1E1AF381C();
  sub_1E1447940();
  sub_1E1AF36DC();
  v28 = *(v11 + 8);
  v28(v27, v10);
  if (!*(&v86 + 1))
  {
    v32 = v28;
    v33 = 0xE800000000000000;
    v31 = v10;
    goto LABEL_7;
  }

  v80 = *(&v86 + 1);
  v70 = v86;
  v3 = 0x6874646977;
  sub_1E1AF381C();
  v69 = sub_1E1AF379C();
  v30 = v29;
  v28(v25, v10);
  v31 = v10;
  if (v30)
  {
    v32 = v28;

    v33 = 0xE500000000000000;
LABEL_7:
    v37 = sub_1E1AF5A7C();
    sub_1E1449290(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v38 = v3;
    v38[1] = v33;
    v38[2] = v81;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    (*(v82 + 8))(v89, v83);
    (v32)(a1, v31);
    return v32;
  }

  v3 = 0x746867696568;
  sub_1E1AF381C();
  v34 = sub_1E1AF379C();
  v36 = v35;
  v28(v22, v31);
  if (v36)
  {
    v32 = v28;

    v33 = 0xE600000000000000;
    goto LABEL_7;
  }

  v68 = v34;
  sub_1E1AF381C();
  sub_1E1447994();
  sub_1E1AF369C();
  v28(v27, v31);
  v67 = v86;
  sub_1E1AF381C();
  sub_1E14479F8();
  sub_1E1AF369C();
  v28(v27, v31);
  v40 = v86;
  v41 = v74;
  sub_1E1AF381C();
  v81 = sub_1E1AF36EC();
  v43 = v42;
  v28(v41, v31);
  v65 = *(&v40 + 1);
  v66 = v40;
  if (v43)
  {
    v86 = v40;
    v81 = Artwork.Crop.preferredContentMode.getter();
  }

  sub_1E1AF381C();
  sub_1E1447A4C();
  sub_1E1AF36DC();
  v28(v27, v31);
  LODWORD(v74) = v86;
  sub_1E1AF381C();
  v62 = *(v82 + 16);
  v44 = v78;
  v62(v78, v89, v83);
  sub_1E1447AA0();
  v64 = sub_1E1AF630C();
  v45 = v75;
  sub_1E1AF381C();
  v60 = sub_1E1AF37CC();
  v61 = v46;
  v28(v45, v31);
  v47 = v76;
  sub_1E1AF381C();
  v75 = JSONObject.appStoreColor.getter();
  v28(v47, v31);
  v48 = v77;
  sub_1E1AF381C();
  v63 = JSONObject.appStoreColor.getter();
  v76 = v28;
  v28(v48, v31);
  sub_1E1AF46DC();
  v77 = a1;
  sub_1E1AF381C();
  v62(v44, v89, v83);
  v49 = v79;
  v50 = v61;
  sub_1E1AF464C();
  type metadata accessor for Artwork();
  v32 = swift_allocObject();
  *(v32 + 152) = 0u;
  *(v32 + 168) = 0u;
  *(v32 + 184) = 0;
  if (v50)
  {
    v51 = v65;
    v52 = v60;
  }

  else
  {
    v53 = v71;
    sub_1E1AEFE9C();
    v52 = sub_1E1AEFE7C();
    v50 = v54;
    (*(v72 + 8))(v53, v73);
    v51 = v65;
  }

  v84 = v52;
  v85 = v50;
  sub_1E1AF6F6C();
  v55 = v87;
  *(v32 + 112) = v86;
  *(v32 + 128) = v55;
  *(v32 + 144) = v88;
  sub_1E134FD1C(v49, v32 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
  v56 = v80;
  *(v32 + 16) = v70;
  *(v32 + 24) = v56;
  v57 = v68;
  *(v32 + 32) = v69;
  *(v32 + 40) = v57;
  v58 = v63;
  *(v32 + 48) = v75;
  *(v32 + 56) = v58;
  *(v32 + 72) = v66;
  *(v32 + 80) = v51;
  *(v32 + 64) = v67;
  *(v32 + 104) = v64;
  (*(v82 + 8))(v89, v83);
  (v76)(v77, v31);
  sub_1E1308058(v49, &unk_1ECEB1770);
  *(v32 + 88) = v81;
  *(v32 + 96) = v74;
  return v32;
}

uint64_t Artwork.__allocating_init(id:template:size:backgroundColor:backgroundGradientColor:style:crop:contentMode:imageScale:variants:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t *a7, uint64_t a8, double a9, double a10, unsigned __int8 a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14)
{
  v38 = a8;
  v44 = a4;
  v45 = a5;
  v46 = a14;
  v43 = a11;
  v42 = a13;
  v21 = sub_1E1AEFEAC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v26 = *a3;
  v39 = a3[1];
  v40 = v26;
  v27 = *a6;
  v28 = *a7;
  v29 = a7[1];
  v41 = *a12;
  *(v25 + 152) = 0u;
  *(v25 + 168) = 0u;
  *(v25 + 184) = 0;
  if (!a2)
  {
    sub_1E1AEFE9C();
    a1 = sub_1E1AEFE7C();
    a2 = v30;
    (*(v22 + 8))(v24, v21);
  }

  v47 = a1;
  v48 = a2;
  sub_1E1AF6F6C();
  v31 = v50;
  *(v25 + 112) = v49;
  *(v25 + 128) = v31;
  *(v25 + 144) = v51;
  v32 = v46;
  sub_1E134FD1C(v46, v25 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
  v33 = v39;
  *(v25 + 16) = v40;
  *(v25 + 24) = v33;
  *(v25 + 32) = a9;
  *(v25 + 40) = a10;
  v34 = v45;
  *(v25 + 48) = v44;
  *(v25 + 56) = v34;
  *(v25 + 72) = v28;
  *(v25 + 80) = v29;
  *(v25 + 64) = v27;
  *(v25 + 104) = v42;
  if (v43)
  {
    *&v49 = v28;
    *(&v49 + 1) = v29;
    v35 = Artwork.Crop.preferredContentMode.getter();
    sub_1E1308058(v32, &unk_1ECEB1770);
  }

  else
  {
    sub_1E1308058(v32, &unk_1ECEB1770);
    v35 = v38;
  }

  *(v25 + 88) = v35;
  *(v25 + 96) = v41;
  return v25;
}

uint64_t Artwork.init(id:template:size:backgroundColor:backgroundGradientColor:style:crop:contentMode:imageScale:variants:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t *a7, uint64_t a8, double a9, double a10, unsigned __int8 a11, char *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v39 = a8;
  v44 = a4;
  v45 = a5;
  v46 = a14;
  v43 = a11;
  v42 = a13;
  v23 = sub_1E1AEFEAC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a3;
  v40 = a3[1];
  v41 = v27;
  v28 = *a6;
  v29 = *a7;
  v30 = a7[1];
  v31 = *a12;
  *(v15 + 152) = 0u;
  *(v15 + 168) = 0u;
  *(v15 + 184) = 0;
  if (!a2)
  {
    sub_1E1AEFE9C();
    a1 = sub_1E1AEFE7C();
    a2 = v32;
    (*(v24 + 8))(v26, v23);
  }

  v47 = a1;
  v48 = a2;
  sub_1E1AF6F6C();
  v33 = v50;
  *(v15 + 112) = v49;
  *(v15 + 128) = v33;
  *(v15 + 144) = v51;
  v34 = v46;
  sub_1E134FD1C(v46, v15 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
  v35 = v40;
  *(v15 + 16) = v41;
  *(v15 + 24) = v35;
  *(v15 + 32) = a9;
  *(v15 + 40) = a10;
  v36 = v45;
  *(v15 + 48) = v44;
  *(v15 + 56) = v36;
  *(v15 + 72) = v29;
  *(v15 + 80) = v30;
  *(v15 + 64) = v28;
  *(v15 + 104) = v42;
  if (v43)
  {
    *&v49 = v29;
    *(&v49 + 1) = v30;
    v37 = Artwork.Crop.preferredContentMode.getter();
    sub_1E1308058(v34, &unk_1ECEB1770);
  }

  else
  {
    sub_1E1308058(v34, &unk_1ECEB1770);
    v37 = v39;
  }

  *(v15 + 88) = v37;
  *(v15 + 96) = v31;
  return v15;
}

unint64_t sub_1E1447940()
{
  result = qword_1EE1E4BE8;
  if (!qword_1EE1E4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4BE8);
  }

  return result;
}

unint64_t sub_1E1447994()
{
  result = qword_1EE1E4BD8;
  if (!qword_1EE1E4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4BD8);
  }

  return result;
}

unint64_t sub_1E14479F8()
{
  result = qword_1EE1E4BE0;
  if (!qword_1EE1E4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4BE0);
  }

  return result;
}

unint64_t sub_1E1447A4C()
{
  result = qword_1EE1D2F68;
  if (!qword_1EE1D2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2F68);
  }

  return result;
}

unint64_t sub_1E1447AA0()
{
  result = qword_1EE1E4BC8;
  if (!qword_1EE1E4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4BC8);
  }

  return result;
}

uint64_t type metadata accessor for Artwork()
{
  result = qword_1EE1E4B98;
  if (!qword_1EE1E4B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Artwork.template.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void *Artwork.backgroundColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *Artwork.backgroundGradientColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t Artwork.crop.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t sub_1E1447BD8()
{
  v25 = sub_1E1AEFEAC();
  v1 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v23 = *(v0 + 16);
  v24 = v11;
  v26 = *(v0 + 96);
  v13 = *(v0 + 104);
  v14 = sub_1E1AF46DC();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  type metadata accessor for Artwork();
  v15 = swift_allocObject();
  *(v15 + 152) = 0u;
  *(v15 + 168) = 0u;
  *(v15 + 184) = 0;
  v16 = v10;

  sub_1E1AEFE9C();
  v17 = sub_1E1AEFE7C();
  v19 = v18;
  (*(v1 + 8))(v3, v25);
  v27 = v17;
  v28 = v19;
  sub_1E1AF6F6C();
  sub_1E134FD1C(v6, v15 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
  v20 = v24;
  *(v15 + 16) = v23;
  *(v15 + 24) = v7;
  *(v15 + 32) = v8;
  *(v15 + 40) = v9;
  *(v15 + 48) = v10;
  *(v15 + 56) = 0;
  *(v15 + 72) = v20;
  *(v15 + 80) = v12;
  *(v15 + 64) = 0;
  *(v15 + 104) = v13;
  v27 = v20;
  v28 = v12;
  v21 = Artwork.Crop.preferredContentMode.getter();

  sub_1E1308058(v6, &unk_1ECEB1770);
  *(v15 + 88) = v21;
  *(v15 + 96) = v26;
  return v15;
}

uint64_t sub_1E1447E54@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 104);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 49);
    while (1)
    {
      v6 = *(v5 - 17);
      if ((v6 == 3) == (result & 1))
      {
        break;
      }

      v5 += 24;
      if (!--v4)
      {
        LOBYTE(v6) = *(v3 + 32);
        v7 = (v3 + 40);
        v8 = (v3 + 48);
        v5 = (v3 + 49);
        goto LABEL_8;
      }
    }

    v7 = (v5 - 9);
    v8 = v5 - 1;
LABEL_8:
    v11 = *v8;
    v9 = *v7;
    v10 = *v5;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    LOBYTE(v6) = 2;
  }

  *a2 = v6;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 17) = v10;
  return result;
}

void sub_1E1447EF8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v39 = v7;
  v40 = v6;
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    v33 = a1;
    v34 = v5;
    v8 = sub_1E159F330(MEMORY[0x1E69E7CC0]);
    v9 = v8;
    v10 = v8 + 64;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    if (v13)
    {
      while (1)
      {
        v16 = v15;
LABEL_10:
        v17 = __clz(__rbit64(v13)) | (v16 << 6);
        v18 = *(*(v9 + 48) + v17);
        v13 &= v13 - 1;
        v19 = (*(v9 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v39 = v7;
        v40 = v6;
        v37 = qword_1E1B0A6D0[v18];
        v38 = 0xE300000000000000;
        v35 = v20;
        v36 = v21;
        sub_1E13B8AA4();

        v7 = sub_1E1AF6E2C();
        v23 = v22;

        v6 = v23;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_10;
      }
    }

    v24 = v34;
    sub_1E1AEFCAC();

    v25 = sub_1E1AEFCCC();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_1E1308058(v24, &unk_1ECEB4B60);
    }

    else
    {
      sub_1E1AEFC6C();
      v28 = v27;
      (*(v26 + 8))(v24, v25);
      if (v28)
      {
        if (v33)
        {
          v29 = v33;
          v30 = sub_1E1AF5DBC();

          v31 = [objc_opt_self() _systemImageNamed_withConfiguration_];
        }

        else
        {
          v29 = sub_1E1AF5DBC();

          v31 = [objc_opt_self() _systemImageNamed_withConfiguration_];
        }

        if (v31)
        {
          v32 = v31;
          [v32 size];
          [v32 size];
          [v32 size];
          sub_1E1AF6CCC();
          sub_1E1AF6CCC();
        }
      }
    }
  }
}

uint64_t sub_1E1448380()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v33 = v5;
  v34 = v4;
  if (!Artwork.URLTemplate.isSystemImage.getter())
  {
    return 0;
  }

  v28 = v3;
  v6 = sub_1E159F330(MEMORY[0x1E69E7CC0]);
  v7 = v6;
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = *(*(v7 + 48) + v16);
      v11 &= v11 - 1;
      v18 = (*(v7 + 56) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v33 = v5;
      v34 = v4;
      v31 = qword_1E1B0A6D0[v17];
      v32 = 0xE300000000000000;
      v29 = v19;
      v30 = v20;
      sub_1E13B8AA4();

      v5 = sub_1E1AF6E2C();
      v22 = v21;

      v4 = v22;
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  v23 = v28;
  sub_1E1AEFCAC();

  v24 = sub_1E1AEFCCC();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1E1308058(v23, &unk_1ECEB4B60);
    return 0;
  }

  v26 = sub_1E1AEFC6C();
  (*(v25 + 8))(v23, v24);
  return v26;
}

uint64_t sub_1E1448710()
{
  sub_1E1AF5F0C();
  v1 = *(v0 + 32);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E6900390](*&v1);
  v2 = *(v0 + 40);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E6900390](*&v2);

  return sub_1E1AF5F0C();
}

uint64_t sub_1E144878C(void *a1)
{
  v35 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 104);
  v33 = *(v3 + 16);
  if (v33)
  {
    result = objc_opt_self();
    v34 = result;
    v5 = 0;
    v6 = v3 + 49;
    v31 = v3;
    while (v5 < *(v3 + 16))
    {
      v7 = *(v6 - 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E1B03760;
      *(inited + 32) = 0x74616D726F66;
      *(inited + 40) = 0xE600000000000000;
      v9 = [v34 valueWithObject:sub_1E1AF755C() inContext:a1];
      swift_unknownObjectRelease();
      *(inited + 48) = v9;
      *(inited + 56) = 0x7974696C617571;
      *(inited + 64) = 0xE700000000000000;
      v10 = a1;
      if (v7)
      {
        v11 = 0;
      }

      else
      {
        v11 = sub_1E1AF748C();
      }

      v12 = [v34 valueWithObject:v11 inContext:a1];
      swift_unknownObjectRelease();

      *(inited + 72) = v12;
      *(inited + 80) = 0xD000000000000011;
      *(inited + 88) = 0x80000001E1B5EA90;
      v13 = [v34 valueWithObject:sub_1E1AF755C() inContext:a1];
      swift_unknownObjectRelease();
      *(inited + 96) = v13;
      sub_1E15A00D4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3FA0);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3FA8);
      v14 = [v34 valueWithObject:sub_1E1AF755C() inContext:a1];
      result = swift_unknownObjectRelease();
      if (!v14)
      {
        goto LABEL_25;
      }

      MEMORY[0x1E68FEF20](result);
      v3 = v31;
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      ++v5;
      result = sub_1E1AF62AC();
      v6 += 24;
      if (v33 == v5)
      {
        goto LABEL_11;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F98);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1E1B05090;
    *(v15 + 32) = 0x6574616C706D6574;
    v32 = v15;
    *(v15 + 40) = 0xE800000000000000;
    v16 = sub_1E159F330(MEMORY[0x1E69E7CC0]);
    v17 = v16 + 64;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    if (v20)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v23 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        do
        {
LABEL_19:
          v20 &= v20 - 1;
          sub_1E13B8AA4();

          sub_1E1AF6E2C();
        }

        while (v20);
        continue;
      }
    }

    v24 = sub_1E1AF755C();
    v25 = objc_opt_self();
    v26 = [v25 valueWithObject:v24 inContext:a1];
    swift_unknownObjectRelease();
    v32[6] = v26;
    v32[7] = 0x6874646977;
    v32[8] = 0xE500000000000000;
    v27 = [v25 valueWithObject:sub_1E1AF755C() inContext:a1];
    swift_unknownObjectRelease();
    v32[9] = v27;
    v32[10] = 0x746867696568;
    v32[11] = 0xE600000000000000;
    v28 = [v25 valueWithObject:sub_1E1AF755C() inContext:a1];
    swift_unknownObjectRelease();
    v32[12] = v28;
    v32[13] = 0x73746E6169726176;
    v32[14] = 0xE800000000000000;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38);
    v29 = [v25 valueWithObject:sub_1E1AF755C() inContext:a1];
    swift_unknownObjectRelease();
    v32[15] = v29;
    sub_1E15A00D4(v32);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3FA0);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3FA8);
    v30 = [v25 valueWithObject:sub_1E1AF755C() inContext:a1];
    result = swift_unknownObjectRelease();
    if (!v30)
    {
      goto LABEL_26;
    }

    return v30;
  }

  return result;
}

uint64_t Artwork.deinit()
{

  sub_1E134B88C(v0 + 112);
  sub_1E1308058(v0 + 152, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t Artwork.__deallocating_deinit()
{
  Artwork.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1448F94()
{
  sub_1E1AF762C();
  sub_1E1448710();
  return sub_1E1AF767C();
}

uint64_t sub_1E1449008@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Artwork.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1449058()
{
  sub_1E1AF762C();
  sub_1E1448710();
  return sub_1E1AF767C();
}

uint64_t sub_1E14490C0()
{
  sub_1E1AF762C();
  sub_1E1448710();
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v5 || (sub_1E1457BE4(*(a1 + 64), *(a2 + 64)) & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 104);
  v7 = *(a2 + 104);

  return sub_1E156F1DC(v6, v7);
}

uint64_t sub_1E1449290(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E14492E0()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double Artwork.Style.iconCornerRadius(for:isPlaceholder:)(char a1, double a2, double a3)
{
  v5 = *v3;
  result = 0.0;
  if (v5 > 3)
  {
    if (*v3 > 5u)
    {
      if (v5 == 6)
      {
        Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, a2 + a2, a3 + a3);
      }

      else if (v5 == 7)
      {

        return ASKHomeScreenIconsGetScaledTVCornerRadiusForSize(a2);
      }

      return result;
    }

    if (v5 != 4)
    {
      return a3 * 0.5;
    }

    if ((a1 & 1) == 0)
    {
      return result;
    }

LABEL_18:
    if (a2 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

    return v7 * 0.5;
  }

  if (*v3 > 1u)
  {
    if (v5 != 2)
    {
      goto LABEL_18;
    }

    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  else if (!*v3)
  {
    return result;
  }

  return ASKHomeScreenIconsGetScaledCornerRadiusForSize(a2, a3);
}

unint64_t Artwork.Style.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6669636570736E75;
    v7 = 0xD000000000000016;
    if (v1 != 2)
    {
      v7 = 0x646E756F72;
    }

    if (*v0)
    {
      v6 = 0x526465646E756F72;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 7364969;
    v3 = 0x746365527674;
    if (v1 != 7)
    {
      v3 = 0x656E726F64616E75;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (v1 != 4)
    {
      v4 = 1819044208;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t Artwork.Style.orIfUnspecified(_:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if (*v2 > 3u || *v2)
  {
    v7 = sub_1E1AF74AC();

    if ((v7 & 1) == 0)
    {
      v4 = v5;
    }
  }

  else
  {
  }

  *a2 = v4;
  return result;
}

double Artwork.Style.iconHeight(fromWidth:)(double result)
{
  v2 = *v1;
  if (((1 << v2) & 0x15F) == 0)
  {
    v3 = result * 3.0;
    if (v2 == 5)
    {
      return v3 * 0.25;
    }

    else
    {
      return v3 / 5.0;
    }
  }

  return result;
}

double Artwork.Style.iconWidth(fromHeight:)(double result)
{
  v2 = *v1;
  if (((1 << v2) & 0x15F) == 0)
  {
    if (v2 == 5)
    {
      v3 = 4.0;
    }

    else
    {
      v3 = 5.0;
    }

    return result * v3 / 3.0;
  }

  return result;
}

uint64_t Artwork.Style.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1E1449AD8()
{
  sub_1E1AF762C();
  sub_1E19DB4A4();
  return sub_1E1AF767C();
}

uint64_t sub_1E1449B28()
{
  sub_1E1AF762C();
  sub_1E19DB4A4();
  return sub_1E1AF767C();
}

unint64_t sub_1E1449B78@<X0>(unint64_t *a1@<X8>)
{
  result = Artwork.Style.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1E1449BA4()
{
  result = qword_1EE1D2F50;
  if (!qword_1EE1D2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2F50);
  }

  return result;
}

uint64_t _s5StyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL Artwork.URLTemplate.isBundleImage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFCAC();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1E13ECBA0(v2);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_1E1AEFC9C();
  if (!v9)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v8 != 0x656372756F736572 || v9 != 0xE800000000000000)
  {
    v11 = sub_1E1AF74AC();

    (*(v4 + 8))(v6, v3);
    return (v11 & 1) != 0;
  }

  (*(v4 + 8))(v6, v3);
  return 1;
}

BOOL Artwork.URLTemplate.isSystemImage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFCAC();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1E13ECBA0(v2);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_1E1AEFC9C();
  if (!v9)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v8 != 0x6D696D6574737973 || v9 != 0xEB00000000656761)
  {
    v11 = sub_1E1AF74AC();

    (*(v4 + 8))(v6, v3);
    return (v11 & 1) != 0;
  }

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t Artwork.URLTemplate.systemImageName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v5 = *v0;
  v4 = v0[1];
  v33 = *v0;
  v34 = v4;
  if (!Artwork.URLTemplate.isSystemImage.getter())
  {
    return 0;
  }

  v28 = v3;
  v6 = sub_1E159F330(MEMORY[0x1E69E7CC0]);
  v7 = v6;
  v8 = v6 + 64;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = *(*(v7 + 48) + v16);
      v11 &= v11 - 1;
      v18 = (*(v7 + 56) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v33 = v5;
      v34 = v4;
      v31 = qword_1E1B0A978[v17];
      v32 = 0xE300000000000000;
      v29 = v19;
      v30 = v20;
      sub_1E13B8AA4();

      v5 = sub_1E1AF6E2C();
      v22 = v21;

      v4 = v22;
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  v23 = v28;
  sub_1E1AEFCAC();

  v24 = sub_1E1AEFCCC();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1E13ECBA0(v23);
    return 0;
  }

  v26 = sub_1E1AEFC6C();
  (*(v25 + 8))(v23, v24);
  return v26;
}

Swift::String __swiftcall Artwork.URLTemplate.makeString(withSubstitutions:)(Swift::OpaquePointer withSubstitutions)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = withSubstitutions._rawValue + 64;
  v5 = 1 << *(withSubstitutions._rawValue + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(withSubstitutions._rawValue + 8);
  v8 = (v5 + 63) >> 6;

  v11 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v9 = v3;
      v10 = v2;
      goto LABEL_13;
    }

    v7 = *&v4[8 * v12];
    ++v11;
    if (v7)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        sub_1E13B8AA4();

        v3 = sub_1E1AF6E2C();
        v14 = v13;

        v2 = v14;
      }

      while (v7);
      continue;
    }
  }

  __break(1u);
LABEL_13:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t Artwork.URLTemplate.Key.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1E144A664()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E144A6C0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E144A700()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t Artwork.URLTemplate.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Artwork.URLTemplate.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E1AF37CC();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1E1AF39DC();
    (*(*(v10 - 8) + 8))(a2, v10);
    v11 = sub_1E1AF380C();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v13 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v14 = MEMORY[0x1E69E7CC0];
    *v15 = &type metadata for Artwork.URLTemplate;
    v15[1] = v14;
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69AB698], v13);
    swift_willThrow();
    v16 = sub_1E1AF39DC();
    (*(*(v16 - 8) + 8))(a2, v16);
    v17 = sub_1E1AF380C();
    return (*(*(v17 - 8) + 8))(a1, v17);
  }

  return result;
}

uint64_t Artwork.URLTemplate.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Artwork.URLTemplate.makeURL(withSubstitutions:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      sub_1E1AEFCAC();
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;
        sub_1E13B8AA4();

        sub_1E1AF6E2C();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E144AB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1E1AF37CC();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_1E1AF39DC();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_1E1AF380C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v10;
    a3[1] = v11;
  }

  else
  {
    v15 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v16 = MEMORY[0x1E69E7CC0];
    *v17 = v4;
    v17[1] = v16;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69AB698], v15);
    swift_willThrow();
    v18 = sub_1E1AF39DC();
    (*(*(v18 - 8) + 8))(a2, v18);
    v19 = sub_1E1AF380C();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  return result;
}

void *sub_1E144ACFC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1E144AD08@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1E144AD14()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E144AD68()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit20HttpTemplateFormBodyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E1AF74AC();
  }
}

unint64_t sub_1E144ADE4()
{
  result = qword_1EE1E4BF0;
  if (!qword_1EE1E4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4BF0);
  }

  return result;
}

unint64_t sub_1E144AE3C()
{
  result = qword_1EE1D2F60;
  if (!qword_1EE1D2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2F60);
  }

  return result;
}

double sub_1E144AEB0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_1E1AF105C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v63 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3FB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = sub_1E1AF227C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v61 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v53 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  v60 = a1;
  sub_1E144B530(a1, v15);
  v29 = *(v17 + 48);
  if (v29(v15, 1, v16) == 1)
  {
    sub_1E144B5A0(v15);
    v30 = v58;
  }

  else
  {
    v53 = v4;
    v54 = v3;
    v31 = *(v17 + 32);
    v31(v28, v15, v16);
    v30 = v58;
    sub_1E144B530(v58, v12);
    if (v29(v12, 1, v16) == 1)
    {
      (*(v17 + 8))(v28, v16);
      sub_1E144B5A0(v12);
    }

    else
    {
      v31(v25, v12, v16);
      sub_1E144B89C();
      sub_1E1AF5D7C();
      v32 = *(v17 + 8);
      v32(v25, v16);
      v32(v28, v16);
    }

    v4 = v53;
    v3 = v54;
  }

  v33 = *MEMORY[0x1E69DDCF8];
  v34 = v63;
  *v63 = *MEMORY[0x1E69DDCF8];
  (*(v4 + 104))(v34, *MEMORY[0x1E69AB868], v3);
  v35 = v59;
  sub_1E144B530(v60, v59);
  if (v29(v35, 1, v16) == 1)
  {
    v36 = v33;
    sub_1E144B5A0(v35);
    v37 = v62;
  }

  else
  {
    v38 = v56;
    (*(v17 + 32))();
    v39 = v33;
    v37 = v62;
    if (sub_1E1AF226C())
    {
      v40 = v61;
      (*(v17 + 16))(v61, v38, v16);
      v41 = sub_1E144B608(v40);
      (*(v17 + 8))(v38, v16);
      goto LABEL_19;
    }

    (*(v17 + 8))(v38, v16);
  }

  v42 = v57;
  sub_1E144B530(v30, v57);
  if (v29(v42, 1, v16) == 1)
  {
    sub_1E144B5A0(v42);
  }

  else
  {
    v43 = v55;
    (*(v17 + 32))(v55, v42, v16);
    sub_1E144B89C();
    if (sub_1E1AF5D7C())
    {
      v44 = v61;
      (*(v17 + 16))(v61, v43, v16);
      v41 = sub_1E144B608(v44);
      (*(v17 + 8))(v43, v16);
      goto LABEL_19;
    }

    (*(v17 + 8))(v43, v16);
  }

  v45 = v61;
  (*(v17 + 16))(v61, v37, v16);
  v41 = sub_1E144B608(v45);
LABEL_19:
  v46 = objc_opt_self();
  v47 = v41;
  v48 = [v46 traitCollectionWithPreferredContentSizeCategory_];

  v64[3] = v3;
  v64[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
  (*(v4 + 16))(boxed_opaque_existential_0, v34, v3);
  sub_1E1AF054C();
  v51 = v50;

  (*(v4 + 8))(v34, v3);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v51;
}

uint64_t sub_1E144B530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E144B5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E144B608(uint64_t a1)
{
  v2 = sub_1E1AF227C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697E718])
  {
    v8 = MEMORY[0x1E69DDC68];
LABEL_25:
    v9 = *v8;
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  if (v7 == *MEMORY[0x1E697E6F0])
  {
    v8 = MEMORY[0x1E69DDC88];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E6F8])
  {
    v8 = MEMORY[0x1E69DDC78];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E6E8])
  {
    v8 = MEMORY[0x1E69DDC70];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E708])
  {
    v8 = MEMORY[0x1E69DDC60];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E720])
  {
    v8 = MEMORY[0x1E69DDC58];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E728])
  {
    v8 = MEMORY[0x1E69DDC50];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E6C0])
  {
    v8 = MEMORY[0x1E69DDC40];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E6C8])
  {
    v8 = MEMORY[0x1E69DDC38];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E6D0])
  {
    v8 = MEMORY[0x1E69DDC30];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E6D8])
  {
    v8 = MEMORY[0x1E69DDC28];
    goto LABEL_25;
  }

  if (v7 == *MEMORY[0x1E697E6E0])
  {
    v8 = MEMORY[0x1E69DDC20];
    goto LABEL_25;
  }

  result = sub_1E1AF749C();
  __break(1u);
  return result;
}

unint64_t sub_1E144B89C()
{
  result = qword_1ECEB3FB8;
  if (!qword_1ECEB3FB8)
  {
    sub_1E1AF227C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3FB8);
  }

  return result;
}

uint64_t Artwork.Crop.preferredContentMode.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v1 == 25186 && v2 == 0xE200000000000000;
  if (v3 || (sub_1E1AF74AC() & 1) != 0)
  {
    return 1;
  }

  if (v1 == 24934 && v2 == 0xE200000000000000)
  {
    return 0;
  }

  v5 = sub_1E1AF74AC();
  result = 0;
  v7 = v1 == 24948 && v2 == 0xE200000000000000;
  if ((v5 & 1) == 0 && !v7)
  {
    if (sub_1E1AF74AC() & 1) != 0 || v1 == 0x7070412E45474D44 && v2 == 0xEC00000031305453 || (sub_1E1AF74AC())
    {
      return 0;
    }

    if (v1 == 0x435370412E424353 && v2 == 0xEC00000031304C42)
    {
      return 8;
    }

    v8 = sub_1E1AF74AC();
    v10 = v1 == 0x435370412E424353 && v2 == 0xEC00000032305342;
    result = 8;
    if ((v8 & 1) == 0 && !v10)
    {
      if (sub_1E1AF74AC())
      {
        return 8;
      }

      if (v1 == 0x435370412E424353 && v2 == 0xEC00000032304C42)
      {
        return 7;
      }

      else
      {
        v11 = sub_1E1AF74AC();
        v13 = v1 == 0x435370412E424353 && v2 == 0xEC00000031305342;
        result = 7;
        if ((v11 & 1) == 0 && !v13)
        {
          if (sub_1E1AF74AC())
          {
            return 7;
          }

          else
          {
            return 2;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Artwork.Crop.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void static Artwork.Crop.condensedSearchStory.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "DMGE.AppST01");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryTile.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBL01");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryTileRTL.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBL02");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryPill.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBS01");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void static Artwork.Crop.searchLandingCategoryPillRTL.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "SCB.ApSCBS02");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t Artwork.Crop.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1E144BD38()
{
  result = qword_1ECEB3FC0;
  if (!qword_1ECEB3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB3FC0);
  }

  return result;
}

uint64_t ChartOrCategoryBrickStyle.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    if (*v1 == 1)
    {
      if (qword_1ECEB0DD8 != -1)
      {
        swift_once();
      }

      v3 = qword_1ECEB3FC8;
    }

    else
    {
      if (qword_1ECEB0DE0 != -1)
      {
        swift_once();
      }

      v3 = qword_1ECEB3FE0;
    }
  }

  else
  {
    if (qword_1EE1D8E90 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE1D8EA0;
  }

  v4 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  v5 = __swift_project_value_buffer(v4, v3);
  return sub_1E144E844(v5, a1, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
}

uint64_t ChartOrCategoryBrickCollectionViewCellLayout.Metrics.margins.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t ChartOrCategoryBrickCollectionViewCellLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0) + 20);

  return sub_1E144E7D4(a1, v3);
}

uint64_t ChartOrCategoryBrickCollectionViewCellLayout.Metrics.artworkSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  v8 = v3 + *(result + 24);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t ChartOrCategoryBrickCollectionViewCellLayout.Metrics.init(margins:artworkAspectRatio:artworkSize:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  v11 = *a1;
  v12 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  v13 = *(v12 + 20);
  v14 = sub_1E1AF127C();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 24)];
  *a6 = v11;
  result = sub_1E144E7D4(a2, &a6[v13]);
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = a5 & 1;
  return result;
}

__n128 ChartOrCategoryBrickCollectionViewCellLayout.textExclusionRect.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout(0) + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 ChartOrCategoryBrickCollectionViewCellLayout.init(context:badgeTextView:titleTextView:artworkView:textExclusionRect:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1E144E8CC(a1, a6, type metadata accessor for ChartOrCategoryBrickContext);
  v11 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout(0);
  v12 = a6 + v11[5];
  v13 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v13;
  *(v12 + 32) = *(a2 + 32);
  v14 = a6 + v11[6];
  v15 = *(a3 + 16);
  *v14 = *a3;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(a3 + 32);
  v16 = a6 + v11[7];
  *(v16 + 32) = *(a4 + 32);
  v17 = *(a4 + 16);
  *v16 = *a4;
  *(v16 + 16) = v17;
  v18 = a6 + v11[8];
  result = *a5;
  v20 = *(a5 + 16);
  *v18 = *a5;
  *(v18 + 16) = v20;
  *(v18 + 32) = *(a5 + 32);
  return result;
}

double static ChartOrCategoryBrickCollectionViewCellLayout.estimatedMeasurements(fitting:using:in:)(double a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D7520 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for ChartOrCategoryBrickContext(0);
  v9 = __swift_project_value_buffer(v8, qword_1EE1D7528);
  sub_1E144E844(v9, v7, type metadata accessor for ChartOrCategoryBrickContext);
  v10 = &v7[v5[5]];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = &v7[v5[6]];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &v7[v5[7]];
  v13 = sub_1E1AF196C();
  swift_allocObject();
  v14 = sub_1E1AF195C();
  v15 = MEMORY[0x1E69ABA68];
  v12[3] = v13;
  v12[4] = v15;
  *v12 = v14;
  v16 = &v7[v5[8]];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v17 = ChartOrCategoryBrickCollectionViewCellLayout.measurements(fitting:in:)(a3, a1);
  sub_1E144E934(v7, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout);
  return v17;
}

double ChartOrCategoryBrickCollectionViewCellLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31[-v6 - 8];
  v8 = sub_1E1AF127C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31[-v13 - 8];
  v15 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18 = type metadata accessor for ChartOrCategoryBrickContext(0);
  v19 = *(v18 + 20);
  if (*(v2 + *(v18 + 24)) > 1u)
  {
    sub_1E144C998(a1, (v2 + v19));
    return v22;
  }

  else
  {
    sub_1E144E844(v2 + v19, v17, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
    sub_1E134FD1C(&v17[*(v15 + 20)], v7, &qword_1ECEB2AD8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v20 = &qword_1ECEB2AD8;
      v21 = v7;
LABEL_9:
      sub_1E1308058(v21, v20);
      a2 = *MEMORY[0x1E69ABBD0];
      sub_1E144E934(v17, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
      return a2;
    }

    (*(v9 + 32))(v14, v7, v8);
    v23 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout(0);
    sub_1E134FD1C(v2 + *(v23 + 28), v31, &qword_1ECEB4E00);
    if (!v32)
    {
      (*(v9 + 8))(v14, v8);
      v20 = &qword_1ECEB4E00;
      v21 = v31;
      goto LABEL_9;
    }

    sub_1E1308058(v31, &qword_1ECEB4E00);
    _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_1E1AF121C();
    v25 = v24;
    sub_1E1AF121C();
    if (v26 >= v25)
    {
      sub_1E1AF123C();
    }

    else
    {
      sub_1E1AF122C();
      a2 = v27;
    }

    v28 = *(v9 + 8);
    v28(v11, v8);
    v28(v14, v8);
    sub_1E144E934(v17, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
  }

  return a2;
}

uint64_t sub_1E144C998(uint64_t a1, void *a2)
{
  result = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  if ((*(a2 + *(result + 24) + 16) & 1) == 0)
  {
    v6 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout(0);
    sub_1E134FD1C(v2 + *(v6 + 24), &v10, &qword_1ECEB2AD0);
    if (v11)
    {
      v7 = v2;
      sub_1E1361B28(&v10, v12);
      __swift_project_boxed_opaque_existential_1Tm(v12, v13);
      if (sub_1E1AF117C())
      {
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }

      else
      {
        v8 = *a2;
        v9 = a1;
        (*(*v8 + 104))(&v10, &v9);
        sub_1E134FD1C(v7 + *(v6 + 20), &v10, &qword_1ECEB2AD0);
        if (v11)
        {
          __swift_project_boxed_opaque_existential_1Tm(&v10, v11);
          sub_1E1AF11DC();
          __swift_destroy_boxed_opaque_existential_1(&v10);
        }

        else
        {
          sub_1E1308058(&v10, &qword_1ECEB2AD0);
        }

        __swift_project_boxed_opaque_existential_1Tm(v12, v13);
        sub_1E1AF11DC();
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      return sub_1E1308058(&v10, &qword_1ECEB2AD0);
    }
  }

  return result;
}

uint64_t ChartOrCategoryBrickCollectionViewCellLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = type metadata accessor for ChartOrCategoryBrickContext(0);
  v12 = *(v11 + 20);
  if (*(v5 + *(v11 + 24)))
  {
    v13 = (v5 + v12);
    if (*(v5 + *(v11 + 24)) == 1)
    {
      sub_1E144D2CC(a1, v13, a2, a3, a4, a5);
    }

    else
    {
      sub_1E144D8D4(a1, v13, a2, a3, a4, a5);
    }
  }

  else
  {
    sub_1E144CCCC(a1, (v5 + v12));
  }

  return sub_1E1AF106C();
}

uint64_t sub_1E144CCCC(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout(0);
  sub_1E134FD1C(v2 + v6[7], v41, &qword_1ECEB4E00);
  if (v43)
  {
    __swift_project_boxed_opaque_existential_1Tm(v41, v43);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_1E1308058(v41, &qword_1ECEB4E00);
  }

  v7 = *a2;
  *&v39 = a1;
  (*(*v7 + 104))(v41, &v39);
  v8 = [a1 traitCollection];
  [v8 layoutDirection];

  sub_1E1AF6B0C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v3[3];
  v18 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v17);
  (*(v18 + 56))(v41, v17, v18);
  if (v42 != 2)
  {
    if (v44 && v44 == 1)
    {
      if (v42)
      {
        v45.origin.x = v10;
        v38 = v41[1];
        v45.origin.y = v12;
        v45.size.width = v14;
        v45.size.height = v16;
        CGRectGetHeight(v45);
      }
    }

    else if (v42)
    {
      v46.origin.x = v10;
      v38 = v41[0];
      v46.origin.y = v12;
      v46.size.width = v14;
      v46.size.height = v16;
      CGRectGetWidth(v46);
    }
  }

  v19 = [a1 traitCollection];
  [v19 layoutDirection];

  sub_1E1AF6B0C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v6[6];
  sub_1E134FD1C(v3 + v28, v41, &qword_1ECEB2AD0);
  if (v43)
  {
    __swift_project_boxed_opaque_existential_1Tm(v41, v43);
    sub_1E1AF11CC();
    Width = v29;
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_1E1308058(v41, &qword_1ECEB2AD0);
    Width = 0.0;
    v32 = 0.0;
  }

  v47.origin.x = v21;
  v47.origin.y = v23;
  v47.size.width = v25;
  v47.size.height = v27;
  if (Width > CGRectGetWidth(v47))
  {
    sub_1E134FD1C(v3 + v28, &v39, &qword_1ECEB2AD0);
    if (v40)
    {
      sub_1E1361B28(&v39, v41);
      v48.origin.x = v21;
      v48.origin.y = v23;
      v48.size.width = v25;
      v48.size.height = v27;
      Width = CGRectGetWidth(v48);
      __swift_project_boxed_opaque_existential_1Tm(v41, v43);
      sub_1E1AF11CC();
      v32 = v33;
      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    else
    {
      sub_1E1308058(&v39, &qword_1ECEB2AD0);
      Width = 0.0;
      v32 = 0.0;
    }
  }

  v49.origin.x = v21;
  v49.origin.y = v23;
  v49.size.width = v25;
  v49.size.height = v27;
  MinX = CGRectGetMinX(v49);
  v50.origin.x = v21;
  v50.origin.y = v23;
  v50.size.width = v25;
  v50.size.height = v27;
  v35 = CGRectGetMaxY(v50) - v32;
  sub_1E134FD1C(v3 + v28, &v39, &qword_1ECEB2AD0);
  if (v40)
  {
    sub_1E1361B28(&v39, v41);
    __swift_project_boxed_opaque_existential_1Tm(v41, v43);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_1E1308058(&v39, &qword_1ECEB2AD0);
  }

  v51.origin.x = MinX;
  v51.origin.y = v35;
  v51.size.width = Width;
  v51.size.height = v32;
  MinY = CGRectGetMinY(v51);
  sub_1E134FD1C(v3 + v6[5], &v39, &qword_1ECEB2AD0);
  if (!v40)
  {
    return sub_1E1308058(&v39, &qword_1ECEB2AD0);
  }

  sub_1E1361B28(&v39, v41);
  __swift_project_boxed_opaque_existential_1Tm(v41, v43);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v41, v43);
  v52.origin.x = v21;
  v52.origin.y = v23;
  v52.size.width = v25;
  v52.size.height = MinY;
  CGRectGetMinX(v52);
  v53.origin.x = v21;
  v53.origin.y = v23;
  v53.size.width = v25;
  v53.size.height = MinY;
  CGRectGetMaxY(v53);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1E144D2CC(void *a1, uint64_t *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v14 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout(0);
  sub_1E134FD1C(v6 + v14[7], &v26, &qword_1ECEB4E00);
  if (v28)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v26, v28);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    sub_1E1308058(&v26, &qword_1ECEB4E00);
  }

  sub_1E134FD1C(v6 + v14[6], &v26, &qword_1ECEB2AD0);
  if (!v28)
  {
    sub_1E1308058(&v26, &qword_1ECEB2AD0);
    goto LABEL_8;
  }

  sub_1E1361B28(&v26, v30);
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  if (sub_1E1AF117C())
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_8:
    sub_1E134FD1C(v6 + v14[5], &v26, &qword_1ECEB2AD0);
    if (!v28)
    {
      return sub_1E1308058(&v26, &qword_1ECEB2AD0);
    }

    __swift_project_boxed_opaque_existential_1Tm(&v26, v28);
    sub_1E1AF116C();
    v15 = &v26;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  v16 = *a2;
  *&v24 = a1;
  (*(*v16 + 104))(&v26, &v24);
  v17 = v7[3];
  v18 = v7[4];
  __swift_project_boxed_opaque_existential_1Tm(v7, v17);
  (*(v18 + 56))(&v26, v17, v18);
  if (v27 != 2)
  {
    if (v29 && v29 == 1)
    {
      if (v27)
      {
        v32.origin.x = a3;
        v32.origin.y = a4;
        v32.size.width = a5;
        v32.size.height = a6;
        CGRectGetHeight(v32);
      }
    }

    else if (v27)
    {
      v33.origin.x = a3;
      v33.origin.y = a4;
      v33.size.width = a5;
      v33.size.height = a6;
      CGRectGetWidth(v33);
    }
  }

  v20 = [a1 traitCollection];
  [v20 layoutDirection];

  sub_1E1AF6B0C();
  CGRectGetMinX(v34);
  sub_1E134FD1C(v7 + v14[5], &v24, &qword_1ECEB2AD0);
  if (!v25)
  {
    sub_1E1308058(&v24, &qword_1ECEB2AD0);
    goto LABEL_22;
  }

  sub_1E1361B28(&v24, &v26);
  __swift_project_boxed_opaque_existential_1Tm(&v26, v28);
  if (sub_1E1AF117C())
  {
    __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_22:
    __swift_project_boxed_opaque_existential_1Tm(v30, v31);
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(v30, v31);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
LABEL_25:
    v15 = v30;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  v21 = (v7 + *(type metadata accessor for ChartOrCategoryBrickContext(0) + 28));
  v22 = *v21;
  v23 = *(v21 + *(type metadata accessor for ChartOrCategoryBrickContext.BrickLabelMetrics(0) + 24));
  result = v22 - v23;
  if (!__OFSUB__(v22, v23))
  {
    sub_1E1AF146C();
    __swift_project_boxed_opaque_existential_1Tm(v30, v31);
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(&v26, v28);
    sub_1E1AF11CC();
    v35.origin.x = a3;
    v35.origin.y = a4;
    v35.size.width = a5;
    v35.size.height = a6;
    CGRectGetHeight(v35);
    v36.origin.x = a3;
    v36.origin.y = a4;
    v36.size.width = a5;
    v36.size.height = a6;
    CGRectGetMinY(v36);
    __swift_project_boxed_opaque_existential_1Tm(v30, v31);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm(&v26, v28);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v26);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E144D8D4(uint64_t a1, uint64_t *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v12 = *a2;
  v19 = a1;
  (*(*v12 + 104))(&v17, &v19);
  type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  CGRectGetMinY(v20);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  CGRectGetMinX(v21);
  v13 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout(0);
  v14 = v13[5];
  sub_1E134FD1C(v7 + v14, &v17, &qword_1ECEB2AD0);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
    sub_1E1AF11CC();
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    sub_1E1308058(&v17, &qword_1ECEB2AD0);
  }

  v15 = v13[6];
  sub_1E134FD1C(v7 + v15, &v17, &qword_1ECEB2AD0);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
    sub_1E1AF11CC();
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    sub_1E1308058(&v17, &qword_1ECEB2AD0);
  }

  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  CGRectGetMinX(v22);
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  CGRectGetMinX(v23);
  sub_1E134FD1C(v7 + v13[7], &v17, &qword_1ECEB4E00);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    sub_1E1308058(&v17, &qword_1ECEB4E00);
  }

  sub_1E134FD1C(v7 + v15, &v17, &qword_1ECEB2AD0);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    sub_1E1308058(&v17, &qword_1ECEB2AD0);
  }

  sub_1E134FD1C(v7 + v14, &v17, &qword_1ECEB2AD0);
  if (!v18)
  {
    return sub_1E1308058(&v17, &qword_1ECEB2AD0);
  }

  __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  return __swift_destroy_boxed_opaque_existential_1(&v17);
}

uint64_t sub_1E144DD70(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = type metadata accessor for ChartOrCategoryBrickContext(0);
  v12 = *(v11 + 20);
  if (*(v5 + *(v11 + 24)))
  {
    v13 = (v5 + v12);
    if (*(v5 + *(v11 + 24)) == 1)
    {
      sub_1E144D2CC(a1, v13, a2, a3, a4, a5);
    }

    else
    {
      sub_1E144D8D4(a1, v13, a2, a3, a4, a5);
    }
  }

  else
  {
    sub_1E144CCCC(a1, (v5 + v12));
  }

  return sub_1E1AF106C();
}

double sub_1E144DE44(uint64_t a1, uint64_t a2, int *a3, double a4)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1D7520 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for ChartOrCategoryBrickContext(0);
  v10 = __swift_project_value_buffer(v9, qword_1EE1D7528);
  sub_1E144E844(v10, v8, type metadata accessor for ChartOrCategoryBrickContext);
  v11 = a3[6];
  v12 = &v8[a3[5]];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v13 = &v8[v11];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v8[a3[7]];
  v15 = sub_1E1AF196C();
  swift_allocObject();
  v16 = sub_1E1AF195C();
  v17 = MEMORY[0x1E69ABA68];
  v14[3] = v15;
  v14[4] = v17;
  *v14 = v16;
  v18 = &v8[a3[8]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  v19 = ChartOrCategoryBrickCollectionViewCellLayout.measurements(fitting:in:)(a2, a4);
  sub_1E144E934(v8, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout);
  return v19;
}

uint64_t sub_1E144E068@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_1E1AF127C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4000);
  type metadata accessor for NSDirectionalEdgeInsets(0);
  v17[1] = v9;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4008);
  v11 = swift_allocObject();
  *(v11 + 16) = KeyPath;
  *(v11 + 24) = xmmword_1E1B0AA70;
  *(v11 + 40) = xmmword_1E1B0AA80;
  *(v11 + 56) = xmmword_1E1B0AA90;
  *(v11 + 72) = xmmword_1E1B0AAA0;
  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  (*(v6 + 32))(v4, v8, v5);
  v12 = *(v6 + 56);
  v12(v4, 0, 1, v5);
  v13 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  v14 = *(v13 + 20);
  v12(a1 + v14, 1, 1, v5);
  v15 = a1 + *(v13 + 24);
  *a1 = v11;
  result = sub_1E144E7D4(v4, a1 + v14);
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  return result;
}

uint64_t static ChartOrCategoryBrickStyle.tileMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1D8E90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE1D8EA0);
  return sub_1E144E844(v3, a1, type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics);
}

uint64_t sub_1E144E344(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t sub_1E144E39C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_1E1AF127C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4000);
  type metadata accessor for NSDirectionalEdgeInsets(0);
  v17[1] = v9;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4008);
  v11 = swift_allocObject();
  *(v11 + 16) = KeyPath;
  *(v11 + 24) = xmmword_1E1B0AAB0;
  *(v11 + 40) = xmmword_1E1B0AAC0;
  *(v11 + 56) = xmmword_1E1B0AAD0;
  *(v11 + 72) = xmmword_1E1B0AAE0;
  _sSo6CGSizeV11AppStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  (*(v6 + 32))(v4, v8, v5);
  v12 = *(v6 + 56);
  v12(v4, 0, 1, v5);
  v13 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  v14 = *(v13 + 20);
  v12(a1 + v14, 1, 1, v5);
  v15 = a1 + *(v13 + 24);
  *a1 = v11;
  result = sub_1E144E7D4(v4, a1 + v14);
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  return result;
}

int64x2_t sub_1E144E5E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v13 - v1;
  v3 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics(0);
  __swift_allocate_value_buffer(v3, qword_1ECEB3FE0);
  v4 = __swift_project_value_buffer(v3, qword_1ECEB3FE0);
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4000);
  type metadata accessor for NSDirectionalEdgeInsets(0);
  v13[1] = v5;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4008);
  v7 = swift_allocObject();
  *(v7 + 16) = KeyPath;
  *(v7 + 24) = xmmword_1E1B0AAF0;
  *(v7 + 40) = xmmword_1E1B0AB00;
  *(v7 + 56) = xmmword_1E1B0AAF0;
  *(v7 + 72) = xmmword_1E1B0AB00;
  v8 = sub_1E1AF127C();
  v9 = *(*(v8 - 8) + 56);
  v9(v2, 1, 1, v8);
  v10 = *(v3 + 20);
  v9(&v4[v10], 1, 1, v8);
  v11 = &v4[*(v3 + 24)];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *v4 = v7;
  sub_1E144E7D4(v2, &v4[v10]);
  result = vdupq_n_s64(0x4051000000000000uLL);
  *v11 = result;
  v11[16] = 0;
  return result;
}

uint64_t sub_1E144E7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E144E844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E144E8CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E144E934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E144E998()
{
  result = qword_1EE1D3030;
  if (!qword_1EE1D3030)
  {
    type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D3030);
  }

  return result;
}

void sub_1E144EA18()
{
  type metadata accessor for ChartOrCategoryBrickContext(319);
  if (v0 <= 0x3F)
  {
    sub_1E1300690(319, &unk_1EE1D2AA0, &qword_1ECEB2AC8);
    if (v1 <= 0x3F)
    {
      sub_1E1300690(319, &qword_1EE1D2AD0, &qword_1ECEB2AC0);
      if (v2 <= 0x3F)
      {
        sub_1E144EC88(319, &unk_1EE1D2410, type metadata accessor for CGRect);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E144EB40()
{
  sub_1E144EC14();
  if (v0 <= 0x3F)
  {
    sub_1E144EC88(319, &qword_1EE1E3CE8, MEMORY[0x1E69AB8B0]);
    if (v1 <= 0x3F)
    {
      sub_1E144EC88(319, &qword_1EE1D23F0, type metadata accessor for CGSize);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E144EC14()
{
  if (!qword_1EE1E0778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4000);
    type metadata accessor for NSDirectionalEdgeInsets(255);
    v0 = type metadata accessor for Conditional();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E0778);
    }
  }
}

void sub_1E144EC88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t AccessibilityFeature.__allocating_init(id:title:description:artwork:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a2;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = v17 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_segue;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  sub_1E134FD1C(a1, &v33, &unk_1ECEB5670);
  if (*(&v34 + 1))
  {
    v19 = v34;
    *(v17 + 16) = v33;
    *(v17 + 32) = v19;
    *(v17 + 48) = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v28 = a3;
    v29 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v14 + 8))(v16, v13);
    v31 = v23;
    v32 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a3 = v28;
    a4 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  *(v17 + 56) = v30;
  *(v17 + 64) = a3;
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  *(v17 + 88) = a6;
  sub_1E134B7C8(a7, v17 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_impressionMetrics);
  return v17;
}

uint64_t AccessibilityFeature.init(id:title:description:artwork:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a2;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v8 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_segue;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  sub_1E134FD1C(a1, &v35, &unk_1ECEB5670);
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
    v30 = a3;
    v31 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v16 + 8))(v18, v15);
    v33 = v23;
    v34 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a3 = v30;
    a4 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v27 = v39;
  *(v8 + 16) = v38;
  *(v8 + 32) = v27;
  v28 = v32;
  *(v8 + 48) = v40;
  *(v8 + 56) = v28;
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  sub_1E134B7C8(a7, v8 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_impressionMetrics);
  return v8;
}

uint64_t AccessibilityFeature.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v79 = a2;
  v64 = sub_1E1AEFEAC();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1E1AF39DC();
  v4 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v61 - v7;
  v80 = sub_1E1AF380C();
  v87 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v71 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v74 = v4;
  v22 = *(v4 + 16);
  v23 = v8;
  v24 = v8;
  v25 = v76;
  v22(v24, v79, v76);
  v75 = v21;
  v69 = v16;
  v70 = v23;
  sub_1E1AF464C();
  v26 = v78;
  v68 = v22;
  (v22)();
  v27 = 0xE500000000000000;
  v28 = v72;
  v77 = a1;
  sub_1E1AF381C();
  v67 = sub_1E1AF37CC();
  v30 = v29;
  v31 = *(v87 + 8);
  v87 += 8;
  v31(v28, v80);
  v72 = v30;
  if (!v30)
  {
    v37 = 0x656C746974;
    v38 = v25;
    v39 = v77;
LABEL_7:
    v40 = sub_1E1AF5A7C();
    sub_1E1450080(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v41 = v37;
    v41[1] = v27;
    v41[2] = v73;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v40);
    swift_willThrow();
    v42 = *(v74 + 8);
    v42(v79, v38);
    v31(v39, v80);
    v42(v78, v38);
    sub_1E1308058(v75, &unk_1ECEB1770);
    return v38;
  }

  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v68(v70, v26, v25);
  sub_1E1450080(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v32 = v86[0];
  if (!v86[0])
  {
    v37 = 0x6B726F77747261;
    v38 = v25;
    v39 = v77;

    v27 = 0xE700000000000000;
    goto LABEL_7;
  }

  v33 = v65;
  v34 = v77;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  if (v36)
  {
    *&v83 = v35;
    *(&v83 + 1) = v36;
  }

  else
  {
    v43 = v62;
    sub_1E1AEFE9C();
    v44 = sub_1E1AEFE7C();
    v46 = v45;
    (*(v63 + 8))(v43, v64);
    *&v83 = v44;
    *(&v83 + 1) = v46;
  }

  sub_1E1AF6F6C();
  v47 = v80;
  v31(v33, v80);
  v48 = v66;
  sub_1E1AF381C();
  v70 = sub_1E1AF37CC();
  v50 = v49;
  v31(v48, v47);
  sub_1E134FD1C(v75, v71, &unk_1ECEB1770);
  v38 = swift_allocObject();
  v51 = v38 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_segue;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0;
  sub_1E134FD1C(v86, &v83, &unk_1ECEB5670);
  if (*(&v84 + 1))
  {
    v52 = v84;
    *(v38 + 16) = v83;
    *(v38 + 32) = v52;
    *(v38 + 48) = v85;
  }

  else
  {
    v53 = v62;
    sub_1E1AEFE9C();
    v54 = sub_1E1AEFE7C();
    v56 = v55;
    (*(v63 + 8))(v53, v64);
    v81 = v54;
    v82 = v56;
    sub_1E1AF6F6C();
    sub_1E1308058(&v83, &unk_1ECEB5670);
  }

  v57 = *(v74 + 8);
  v58 = v76;
  v57(v79, v76);
  v31(v34, v80);
  sub_1E1308058(v86, &unk_1ECEB5670);
  v57(v78, v58);
  sub_1E1308058(v75, &unk_1ECEB1770);
  v59 = v72;
  *(v38 + 56) = v67;
  *(v38 + 64) = v59;
  *(v38 + 72) = v70;
  *(v38 + 80) = v50;
  *(v38 + 88) = v32;
  sub_1E134B7C8(v71, v38 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_impressionMetrics);
  return v38;
}

uint64_t AccessibilityFeature.title.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AccessibilityFeature.description.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t AccessibilityFeature.hash(into:)()
{
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E1AF5F0C();
  if (*(v0 + 80))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  return sub_1E1448710();
}

uint64_t AccessibilityFeature.deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_segue, &unk_1ECEB1780);
  return v0;
}

uint64_t AccessibilityFeature.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit20AccessibilityFeature_segue, &unk_1ECEB1780);

  return swift_deallocClassInstance();
}

uint64_t AccessibilityFeature.hashValue.getter()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E1AF5F0C();
  if (*(v0 + 80))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  sub_1E1448710();
  return sub_1E1AF767C();
}

uint64_t sub_1E144FD30@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AccessibilityFeature.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E144FD80()
{
  v1 = *v0;
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E1AF5F0C();
  if (*(v1 + 80))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  return sub_1E1448710();
}

uint64_t sub_1E144FE0C()
{
  v1 = *v0;
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E1AF5F0C();
  if (*(v1 + 80))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  sub_1E1448710();
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit20AccessibilityFeatureC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if ((MEMORY[0x1E68FFC60](a1 + 2, a2 + 2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[7] == a2[7] && a1[8] == a2[8];
  if (!v4 && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[10];
  v6 = a2[10];
  if (v5)
  {
    if (v6 && (a1[9] == a2[9] && v5 == v6 || (sub_1E1AF74AC() & 1) != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_12:
  v7 = a1[11];
  v8 = a2[11];

  return _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v7, v8);
}

uint64_t type metadata accessor for AccessibilityFeature()
{
  result = qword_1ECEB4020;
  if (!qword_1ECEB4020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1450080(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E14500D0()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t AccountPresenter.Section.Identifier.metricsId.getter()
{
  v1 = *v0;
  v2 = 0x5264657461647075;
  v3 = 0xD000000000000013;
  if (v1 != 7)
  {
    v3 = 0;
  }

  if (v1 != 8)
  {
    v2 = v3;
  }

  if (v1 == 6)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v2;
  }
}

uint64_t AccountPresenter.Section.Identifier.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t AccountPresenter.Section.Identifier.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x754F6E496E676973;
    v7 = 0x4C65636E616E6966;
    if (v1 != 2)
    {
      v7 = 0xD000000000000014;
    }

    if (*v0)
    {
      v6 = 0x736B6E696CLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    v3 = 0xD000000000000017;
    if (v1 != 7)
    {
      v3 = 0x796C746E65636572;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6341657461657263;
    if (v1 != 4)
    {
      v4 = 0x6F666E4972657375;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E1450414()
{
  sub_1E1AF762C();
  sub_1E19DBF18();
  return sub_1E1AF767C();
}

uint64_t sub_1E1450464()
{
  sub_1E1AF762C();
  sub_1E19DBF18();
  return sub_1E1AF767C();
}

unint64_t sub_1E14504B4@<X0>(unint64_t *a1@<X8>)
{
  result = AccountPresenter.Section.Identifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AccountPresenter.Section.headerText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_headerText);

  return v1;
}

uint64_t AccountPresenter.Section.footerText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerText);

  return v1;
}

uint64_t AccountPresenter.Section.footerButtonHandler.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerButtonHandler);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t AccountPresenter.Section.identifier.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_identifier;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t AccountPresenter.Section.identifier.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_identifier;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t AccountPresenter.Section.withUpdatedItems(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_identifier;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v2 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_headerText + 8);
  v20 = *(v2 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_headerText);
  v8 = *(v2 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerText);
  v7 = *(v2 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerText + 8);
  v9 = v2 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerButtonHandler;
  v10 = *(v2 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerButtonHandler);
  v11 = *(v9 + 8);
  v12 = swift_allocObject();
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0;
  v13 = OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_impressionMetrics;
  v14 = sub_1E1AF46DC();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  if (v5 <= 6)
  {
    v15 = &unk_1ECEF4000;
  }

  else
  {
    v15 = &unk_1ECEF4000;
  }

  sub_1E1300E34(v10);
  sub_1E1AF6F6C();
  *(v12 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_identifier) = v5;
  *(v12 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_contents) = a1;
  v16 = (v12 + v15[105]);
  *v16 = v20;
  v16[1] = v6;
  v17 = (v12 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerText);
  *v17 = v8;
  v17[1] = v7;
  v18 = (v12 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerButtonHandler);
  *v18 = v10;
  v18[1] = v11;

  return v12;
}

uint64_t AccountPresenter.Section.deinit()
{
  sub_1E134B88C(v0 + 16);
  sub_1E1308058(v0 + 56, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_impressionMetrics, &unk_1ECEB1770);

  sub_1E1361B18(*(v0 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerButtonHandler), *(v0 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerButtonHandler + 8));

  return v0;
}

uint64_t AccountPresenter.Section.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);
  sub_1E1308058(v0 + 56, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_impressionMetrics, &unk_1ECEB1770);

  sub_1E1361B18(*(v0 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerButtonHandler), *(v0 + OBJC_IVAR____TtCC11AppStoreKit16AccountPresenter7Section_footerButtonHandler + 8));

  return swift_deallocClassInstance();
}

unint64_t sub_1E1450B78(char a1)
{
  result = 0x6E496E676973;
  switch(a1)
  {
    case 1:
      result = 0x74754F6E676973;
      break;
    case 2:
      result = 0x6341657461657263;
      break;
    case 3:
      result = 0x6F666E4972657375;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x6C41657461647075;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 1936748641;
      break;
    case 8:
      result = 0x7069726373627573;
      break;
    case 9:
      result = 0x6573616863727570;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6D6565646572;
      break;
    case 12:
      result = 0x74666947646E6573;
      break;
    case 13:
      result = 0x7055706F74;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      v3 = 5;
      goto LABEL_14;
    case 17:
      v3 = 9;
LABEL_14:
      result = v3 | 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E1450D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AccountPresenter.Section.withUpdatedItems(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E1450DF8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1E1450B78(*a1);
  v5 = v4;
  if (v3 == sub_1E1450B78(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E1450E80()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E1450B78(v1);
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1450EE4()
{
  sub_1E1450B78(*v0);
  sub_1E1AF5F0C();
}

uint64_t sub_1E1450F38()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E1450B78(v1);
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1450F98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E1452F60();
  *a1 = result;
  return result;
}

unint64_t sub_1E1450FC8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E1450B78(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AccountPresenter.Item.deinit()
{
  sub_1E134B88C(v0 + 16);
  sub_1E1308058(v0 + 56, &unk_1ECEB1780);
  return v0;
}

uint64_t AccountPresenter.Item.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);
  sub_1E1308058(v0 + 56, &unk_1ECEB1780);

  return swift_deallocClassInstance();
}

uint64_t AccountPresenter.AccountDetailItem.Accessory.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = *(v0 + 16);
      MEMORY[0x1E6900360](2);
      sub_1E1448710();
      if (v1 == 0.0)
      {
        v4 = 0.0;
      }

      else
      {
        v4 = v1;
      }

      MEMORY[0x1E6900390](*&v4);
      if (v3 == 0.0)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v3;
      }

      MEMORY[0x1E6900390](*&v5);
      return sub_1E1AF6D1C();
    }

    else
    {
      return MEMORY[0x1E6900360](3);
    }
  }

  else
  {
    MEMORY[0x1E6900360](v2 != 0);

    return sub_1E1AF5F0C();
  }
}

uint64_t AccountPresenter.AccountDetailItem.Accessory.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  sub_1E1AF762C();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x1E6900360](2);
      sub_1E1448710();
      if (v1 == 0.0)
      {
        v4 = 0.0;
      }

      else
      {
        v4 = v1;
      }

      MEMORY[0x1E6900390](*&v4);
      if (v2 == 0.0)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v2;
      }

      MEMORY[0x1E6900390](*&v5);
      sub_1E1AF6D1C();
    }

    else
    {
      MEMORY[0x1E6900360](3);
    }
  }

  else
  {
    MEMORY[0x1E6900360](v3 != 0);
    sub_1E1AF5F0C();
  }

  return sub_1E1AF767C();
}

uint64_t sub_1E1451318()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = *(v0 + 16);
      MEMORY[0x1E6900360](2);
      sub_1E1448710();
      sub_1E1451978(v1, v3);
      return sub_1E1AF6D1C();
    }

    else
    {
      return MEMORY[0x1E6900360](3);
    }
  }

  else
  {
    MEMORY[0x1E6900360](v2 != 0);

    return sub_1E1AF5F0C();
  }
}

uint64_t sub_1E1451404()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  sub_1E1AF762C();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x1E6900360](2);
      sub_1E1448710();
      sub_1E1451978(v1, v2);
      sub_1E1AF6D1C();
    }

    else
    {
      MEMORY[0x1E6900360](3);
    }
  }

  else
  {
    MEMORY[0x1E6900360](v3 != 0);
    sub_1E1AF5F0C();
  }

  return sub_1E1AF767C();
}

uint64_t AccountPresenter.AccountDetailItem.TitleStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t AccountPresenter.AccountDetailItem.title.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t AccountPresenter.AccountDetailItem.subtitle.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t AccountPresenter.AccountDetailItem.detail.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

id AccountPresenter.AccountDetailItem.image.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 184);
  *(a1 + 32) = v6;
  return sub_1E1451F0C(v2, v3, v4, v5, v6);
}

void AccountPresenter.AccountDetailItem.accessory.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 224);
  *(a1 + 32) = v6;
  sub_1E1451F34(v2, v3, v4, v5, v6);
}

void AccountPresenter.AccountDetailItem.secondaryAccessory.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 264);
  *(a1 + 32) = v6;
  sub_1E1451F34(v2, v3, v4, v5, v6);
}

uint64_t AccountPresenter.AccountDetailItem.selectionHandler.getter()
{
  v1 = *(v0 + 288);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t sub_1E14516B8()
{

  sub_1E1452698(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  sub_1E14526C0(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));
  sub_1E14526C0(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return sub_1E1361B18(v1, v2);
}

uint64_t AccountPresenter.AccountDetailItem.deinit()
{
  sub_1E134B88C(v0 + 16);
  sub_1E1308058(v0 + 56, &unk_1ECEB1780);

  sub_1E1452698(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  sub_1E14526C0(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));
  sub_1E14526C0(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));
  sub_1E1361B18(*(v0 + 288), *(v0 + 296));
  return v0;
}

uint64_t AccountPresenter.AccountDetailItem.__deallocating_deinit()
{
  AccountPresenter.AccountDetailItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t AccountPresenter.UpdatesLockupItem.moreButtonHandler.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_1E1451830@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;
}

uint64_t sub_1E1451880()
{
}

uint64_t AccountPresenter.UpdatesLockupItem.deinit()
{
  sub_1E134B88C(v0 + 16);
  sub_1E1308058(v0 + 56, &unk_1ECEB1780);

  return v0;
}

uint64_t AccountPresenter.UpdatesLockupItem.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);
  sub_1E1308058(v0 + 56, &unk_1ECEB1780);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1451978(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E6900390](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1E6900390](*&v3);
}

uint64_t _s11AppStoreKit16AccountPresenterC0D10DetailItemC18ImageConfigurationO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v6 == 1)
    {
      if (v11 == 1)
      {
        sub_1E1452D6C();
        sub_1E1451F20(v8, v7, v10, v9, 1u);
        sub_1E1451F20(v3, v2, v5, v4, 1u);
        v12 = sub_1E1AF6D0C();
        sub_1E14526AC(v3, v2, v5, v4, 1u);
        sub_1E14526AC(v8, v7, v10, v9, 1u);
        return v12 & 1;
      }

      goto LABEL_6;
    }

    if (v11 != 2)
    {
      goto LABEL_11;
    }

    v20 = SystemImage.rawValue.getter();
    v15 = v14;
    if (v20 == SystemImage.rawValue.getter() && v15 == v16)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1E1AF74AC();
    }

    sub_1E14526AC(v3, v2, v5, v4, 2u);
    sub_1E14526AC(v8, v7, v10, v9, 2u);
  }

  else
  {
    if (*(a2 + 32))
    {
LABEL_6:
      v13 = v3;
LABEL_11:
      sub_1E1451F20(v8, v7, v10, v9, v11);
      sub_1E14526AC(v3, v2, v5, v4, v6);
      sub_1E14526AC(v8, v7, v10, v9, v11);
      v12 = 0;
      return v12 & 1;
    }

    sub_1E1452D6C();
    sub_1E1451F20(v8, v7, v10, v9, 0);
    sub_1E1451F20(v3, v2, v5, v4, 0);
    v17 = sub_1E1AF6D0C();
    sub_1E14526AC(v3, v2, v5, v4, 0);
    sub_1E14526AC(v8, v7, v10, v9, 0);
    v12 = 0;
    if ((v17 & 1) != 0 && *&v2 == *&v7 && *&v5 == *&v10)
    {
      v12 = *&v4 == *&v9;
    }
  }

  return v12 & 1;
}

uint64_t _s11AppStoreKit16AccountPresenterC0D10DetailItemC9AccessoryO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v29[0] = v4;
  v29[1] = v3;
  v29[2] = v6;
  v29[3] = v5;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v12 == 3 && !(v9 | v8 | v10 | v11))
      {
        v13 = 1;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v12 != 2)
    {
LABEL_19:
      sub_1E1451F48(v8, v9, v10, v11, v12);
      sub_1E1451F48(v4, v3, v6, v5, v7);
      v13 = 0;
      goto LABEL_20;
    }

    v14 = v8;
    v15 = *&v9;
    v16 = *&v10;
    sub_1E1451F48(v8, v9, v10, v11, 2u);
    sub_1E1451F48(v4, v3, v6, v5, 2u);
    v17 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v4, v14);
    v13 = 0;
    if ((v17 & 1) != 0 && *&v3 == v15 && *&v6 == v16)
    {
      sub_1E1452D6C();
      v13 = sub_1E1AF6D0C();
    }
  }

  else
  {
    if (!v7)
    {
      if (!v12)
      {
        if (v4 == v8 && v3 == v9)
        {
          sub_1E1451F48(v4, v3, v10, v11, 0);
          sub_1E1451F48(v4, v3, v6, v5, 0);
          v13 = 1;
        }

        else
        {
          v25 = v8;
          v26 = v9;
          v27 = v10;
          v28 = v11;
          v13 = sub_1E1AF74AC();
          sub_1E1451F48(v25, v26, v27, v28, 0);
          sub_1E1451F48(v4, v3, v6, v5, 0);
        }

        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v12 != 1)
    {
      goto LABEL_19;
    }

    if (v4 == v8 && v3 == v9)
    {
      v13 = 1;
      v18 = v4;
      v19 = v3;
    }

    else
    {
      v21 = v8;
      v22 = v9;
      v23 = v10;
      v24 = v11;
      v13 = sub_1E1AF74AC();
      v18 = v21;
      v19 = v22;
      v10 = v23;
      v11 = v24;
    }

    sub_1E1451F48(v18, v19, v10, v11, 1u);
    sub_1E1451F48(v4, v3, v6, v5, 1u);
  }

LABEL_20:
  sub_1E1308058(v29, &qword_1ECEB4078);
  return v13 & 1;
}

id sub_1E1451F0C(id result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_1E1451F20(result, a2, a3, a4, a5);
  }

  return result;
}

id sub_1E1451F20(id result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_1E1451F34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_1E1451F48(a1, a2, a3, a4, a5);
  }
}

void sub_1E1451F48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  if (a5 == 2)
  {

    v6 = a4;
  }

  else if (a5 <= 1u)
  {
  }
}

uint64_t _s11AppStoreKit16AccountPresenterC0D10DetailItemC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E68FFC60](a1 + 16, a2 + 16) & 1) == 0 || *(a1 + 96) != *(a2 + 96))
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 112);
  v7 = *(a2 + 112);
  if (v6)
  {
    if (!v7 || (*(a1 + 104) != *(a2 + 104) || v6 != v7) && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 128);
  v9 = *(a2 + 128);
  if (v8)
  {
    if (!v9 || (*(a1 + 120) != *(a2 + 120) || v8 != v9) && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (v9)
  {
    goto LABEL_3;
  }

  v10 = *(a1 + 144);
  v11 = *(a2 + 144);
  if (v10)
  {
    if (!v11 || (*(a1 + 136) != *(a2 + 136) || v10 != v11) && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if (v11)
  {
    goto LABEL_3;
  }

  v12 = *(a1 + 152);
  v13 = *(a1 + 160);
  v15 = *(a1 + 168);
  v14 = *(a1 + 176);
  v16 = *(a1 + 184);
  v18 = *(a2 + 152);
  v17 = *(a2 + 160);
  v19 = *(a2 + 168);
  v51 = *(a2 + 176);
  v20 = *(a2 + 184);
  if (v16 == 255)
  {
    v48 = *(a1 + 152);
    sub_1E1451F0C(v12, v13, v15, v14, 0xFFu);
    if (v20 == 255)
    {
      sub_1E1451F0C(v18, v17, v19, v51, 0xFFu);
      sub_1E1452698(v48, v13, v15, v14, 0xFFu);
      goto LABEL_35;
    }

    v22 = v51;
    sub_1E1451F0C(v18, v17, v19, v51, v20);
    v23 = v48;
LABEL_33:
    sub_1E1452698(v23, v13, v15, v14, v16);
    sub_1E1452698(v18, v17, v19, v22, v20);
    goto LABEL_3;
  }

  v59 = *(a1 + 152);
  v60 = v13;
  v61 = v15;
  v62 = v14;
  v63 = v16;
  if (v20 == 255)
  {
    v23 = v12;
    sub_1E1451F0C(v12, v13, v15, v14, v16);
    v22 = v51;
    sub_1E1451F0C(v18, v17, v19, v51, 0xFFu);
    sub_1E1451F0C(v23, v13, v15, v14, v16);
    sub_1E14526AC(v23, v13, v15, v14, v16);
    goto LABEL_33;
  }

  v54 = v18;
  v55 = v17;
  v56 = v19;
  v57 = v51;
  v58 = v20;
  v47 = v12;
  sub_1E1451F0C(v12, v13, v15, v14, v16);
  sub_1E1451F0C(v18, v17, v19, v51, v20);
  sub_1E1451F0C(v47, v13, v15, v14, v16);
  v21 = _s11AppStoreKit16AccountPresenterC0D10DetailItemC18ImageConfigurationO2eeoiySbAG_AGtFZ_0(&v59, &v54);
  sub_1E14526AC(v54, v55, v56, v57, v58);
  sub_1E14526AC(v59, v60, v61, v62, v63);
  sub_1E1452698(v47, v13, v15, v14, v16);
  if ((v21 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_35:
  if (*(a1 + 185) != *(a2 + 185) || *(a1 + 186) != *(a2 + 186))
  {
    goto LABEL_3;
  }

  v25 = *(a1 + 192);
  v24 = *(a1 + 200);
  v26 = *(a1 + 208);
  v27 = *(a1 + 216);
  v28 = *(a1 + 224);
  v30 = *(a2 + 192);
  v29 = *(a2 + 200);
  v31 = *(a2 + 208);
  v32 = *(a2 + 216);
  v33 = *(a2 + 224);
  if (v28 == 255)
  {
    v50 = *(a1 + 208);
    v53 = *(a1 + 216);
    sub_1E1451F34(*(a1 + 192), *(a1 + 200), v26, v27, 0xFFu);
    if (v33 == 255)
    {
      sub_1E1451F34(v30, v29, v31, v32, 0xFFu);
      sub_1E14526C0(v25, v24, v50, v53, 0xFFu);
LABEL_46:
      v38 = *(a1 + 232);
      v37 = *(a1 + 240);
      v40 = *(a1 + 248);
      v39 = *(a1 + 256);
      v41 = *(a1 + 264);
      v43 = *(a2 + 232);
      v42 = *(a2 + 240);
      v45 = *(a2 + 248);
      v44 = *(a2 + 256);
      v46 = *(a2 + 264);
      if (v41 == 255)
      {
        sub_1E1451F34(v38, v37, v40, v39, 0xFFu);
        if (v46 == 255)
        {
          sub_1E1451F34(v43, v42, v45, v44, 0xFFu);
          sub_1E14526C0(v38, v37, v40, v39, 0xFFu);
          v4 = 1;
          return v4 & 1;
        }

        sub_1E1451F34(v43, v42, v45, v44, v46);
      }

      else
      {
        v59 = v38;
        v60 = v37;
        v61 = v40;
        v62 = v39;
        v63 = v41;
        if (v46 != 255)
        {
          v54 = v43;
          v55 = v42;
          v56 = v45;
          v57 = v44;
          v58 = v46;
          sub_1E1451F34(v38, v37, v40, v39, v41);
          sub_1E1451F34(v43, v42, v45, v44, v46);
          sub_1E1451F34(v38, v37, v40, v39, v41);
          v4 = _s11AppStoreKit16AccountPresenterC0D10DetailItemC9AccessoryO2eeoiySbAG_AGtFZ_0(&v59, &v54);
          sub_1E14526D4(v54, v55, v56, v57, v58);
          sub_1E14526D4(v59, v60, v61, v62, v63);
          sub_1E14526C0(v38, v37, v40, v39, v41);
          return v4 & 1;
        }

        sub_1E1451F34(v38, v37, v40, v39, v41);
        sub_1E1451F34(v43, v42, v45, v44, 0xFFu);
        sub_1E1451F34(v38, v37, v40, v39, v41);
        sub_1E14526D4(v38, v37, v40, v39, v41);
      }

      v59 = v38;
      v60 = v37;
      v61 = v40;
      v62 = v39;
      v63 = v41;
      v64 = v43;
      v65 = v42;
      v66 = v45;
      v67 = v44;
      v68 = v46;
      goto LABEL_53;
    }

    sub_1E1451F34(v30, v29, v31, v32, v33);
    v36 = v50;
    v35 = v53;
LABEL_44:
    v59 = v25;
    v60 = v24;
    v61 = v36;
    v62 = v35;
    v63 = v28;
    v64 = v30;
    v65 = v29;
    v66 = v31;
    v67 = v32;
    v68 = v33;
LABEL_53:
    sub_1E1308058(&v59, &qword_1ECEB4070);
    goto LABEL_3;
  }

  v59 = *(a1 + 192);
  v60 = v24;
  v61 = v26;
  v62 = v27;
  v63 = v28;
  if (v33 == 255)
  {
    v36 = v26;
    v35 = v27;
    sub_1E1451F34(v25, v24, v26, v27, v28);
    sub_1E1451F34(v30, v29, v31, v32, 0xFFu);
    sub_1E1451F34(v25, v24, v36, v35, v28);
    sub_1E14526D4(v25, v24, v36, v35, v28);
    goto LABEL_44;
  }

  v54 = v30;
  v55 = v29;
  v56 = v31;
  v57 = v32;
  v58 = v33;
  v49 = v26;
  v52 = v27;
  sub_1E1451F34(v25, v24, v26, v27, v28);
  sub_1E1451F34(v30, v29, v31, v32, v33);
  sub_1E1451F34(v25, v24, v49, v52, v28);
  v34 = _s11AppStoreKit16AccountPresenterC0D10DetailItemC9AccessoryO2eeoiySbAG_AGtFZ_0(&v59, &v54);
  sub_1E14526D4(v54, v55, v56, v57, v58);
  sub_1E14526D4(v59, v60, v61, v62, v63);
  sub_1E14526C0(v25, v24, v49, v52, v28);
  if (v34)
  {
    goto LABEL_46;
  }

LABEL_3:
  v4 = 0;
  return v4 & 1;
}

void sub_1E1452698(id a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_1E14526AC(a1, a2, a3, a4, a5);
  }
}

void sub_1E14526AC(id a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }
}

void sub_1E14526C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_1E14526D4(a1, a2, a3, a4, a5);
  }
}

void sub_1E14526D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  if (a5 == 2)
  {
  }

  else if (a5 <= 1u)
  {
  }
}

unint64_t sub_1E1452740()
{
  result = qword_1ECEB4030;
  if (!qword_1ECEB4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4030);
  }

  return result;
}

uint64_t sub_1E1452794(uint64_t a1)
{
  result = sub_1E14528D0(&qword_1ECEB4038, 255, type metadata accessor for AccountPresenter.Section);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AccountPresenter.Section()
{
  result = qword_1ECEB4060;
  if (!qword_1ECEB4060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E14528D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1E1452940()
{
  result = qword_1ECEB4050;
  if (!qword_1ECEB4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4050);
  }

  return result;
}

unint64_t sub_1E1452998()
{
  result = qword_1ECEB4058;
  if (!qword_1ECEB4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4058);
  }

  return result;
}

void sub_1E14529F4()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit16AccountPresenterC0D10DetailItemC9AccessoryO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E1452B8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1E1452BD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E1452C1C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1E1452C64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1E1452CAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E1452D6C()
{
  result = qword_1EE1E31E0;
  if (!qword_1EE1E31E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E31E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfferTitleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfferTitleType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E1452F0C()
{
  result = qword_1ECEB4080;
  if (!qword_1ECEB4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4080);
  }

  return result;
}

uint64_t sub_1E1452F60()
{
  v0 = sub_1E1AF750C();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t GameCenterPlayer.init(id:playerId:alias:displayName:artwork:size:action:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v17 = a10;
  v35 = a11;
  v18 = sub_1E1AEFEAC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a9;
  *(v12 + 72) = 0;
  sub_1E134FD1C(a1, &v42, &unk_1ECEB5670);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v32 = a6;
    v33 = a7;
    v23 = a8;
    v24 = v22;
    v26 = v25;
    (*(v19 + 8))(v21, v18);
    v40 = v24;
    v41 = v26;
    a8 = v23;
    v17 = a10;
    a6 = v32;
    a7 = v33;
    sub_1E1AF6F6C();
    sub_1E1308058(&v42, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v27 = v46;
  *(v12 + 88) = v45;
  *(v12 + 104) = v27;
  *(v12 + 120) = v47;
  sub_1E134B7C8(v35, v12 + OBJC_IVAR____TtC11AppStoreKit16GameCenterPlayer_impressionMetrics);
  v28 = v37;
  *(v12 + 16) = v36;
  *(v12 + 24) = v28;
  v29 = v39;
  *(v12 + 56) = v38;
  *(v12 + 64) = v29;
  *(v12 + 40) = a6;
  *(v12 + 48) = a7;
  *(v12 + 32) = v34;
  swift_beginAccess();
  *(v12 + 72) = a8;

  *(v12 + 80) = v17;
  return v12;
}

uint64_t sub_1E1453264()
{

  sub_1E134B88C(v0 + 88);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16GameCenterPlayer_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t GameCenterPlayer.__allocating_init(friendInternal:)(void *a1)
{
  v2 = sub_1E1454DDC(a1);

  return v2;
}

uint64_t GameCenterPlayer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v75 = sub_1E1AF39DC();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v59 - v9;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  v23 = a1;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  v26 = v25;
  v27 = *(v11 + 8);
  v78 = v10;
  v28 = v10;
  v29 = v27;
  v72 = v11 + 8;
  v27(v22, v28);
  v66 = v26;
  if (v26)
  {
    v60 = v24;
    sub_1E1AF381C();
    v30 = sub_1E1AF37CC();
    v32 = v31;
    v33 = v78;
    v29(v19, v78);
    if (v32)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0;
    }

    if (v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    v63 = v35;
    v64 = v34;
    sub_1E1AF381C();
    v36 = sub_1E1AF37CC();
    v38 = v37;
    v29(v16, v33);
    if (v38)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    v62 = v39;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v61 = v40;
    sub_1E1AF46DC();
    v41 = v23;
    sub_1E1AF381C();
    v42 = v74;
    v43 = *(v73 + 16);
    v44 = v67;
    v69 = v29;
    v45 = v75;
    v43(v67, v74, v75);
    sub_1E1AF464C();
    v43(v44, v42, v45);
    type metadata accessor for Artwork();
    sub_1E1AF381C();
    v43(v65, v44, v45);
    sub_1E1455068(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v65 = v77;
    v59 = v41;
    sub_1E1AF381C();
    sub_1E14550B0();
    sub_1E1AF369C();
    v46 = v78;
    v47 = v69;
    v69(v13, v78);
    LOBYTE(v43) = v77;
    type metadata accessor for Action();
    sub_1E1AF381C();
    v48 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, v44);
    v47(v13, v46);
    v49 = v60;
    v50 = v66;
    v76[0] = v60;
    v76[1] = v66;

    sub_1E1AF6F6C();
    LOBYTE(v76[0]) = v43;
    v51 = v71;
    v52 = v68;
    sub_1E134FD1C(v71, v68, &unk_1ECEB1770);
    v53 = (*(v70 + 144))(&v77, v49, v50, v62, v61, v64, v63, v65, v76, v48, v52);
    v54 = *(v73 + 8);
    v55 = v75;
    v54(v74, v75);
    v69(v59, v78);
    v54(v44, v55);
    sub_1E1308058(v51, &unk_1ECEB1770);
  }

  else
  {
    v53 = sub_1E1AF5A7C();
    sub_1E1455068(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v56 = 0x6449726579616C70;
    v57 = v70;
    v56[1] = 0xE800000000000000;
    v56[2] = v57;
    (*(*(v53 - 8) + 104))(v56, *MEMORY[0x1E69AB690], v53);
    swift_willThrow();
    (*(v73 + 8))(v74, v75);
    v29(v23, v78);
  }

  return v53;
}

uint64_t sub_1E1453AC0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

void sub_1E1453B58(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  if (![v4 valueWithNewObjectInContext_])
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v1[3];
  v17 = v1[2];
  v18 = v5;

  v6 = [v4 valueWithObject:sub_1E1AF755C() inContext:a1];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1E1AF6C5C();
  v7 = v1[8];
  if (v7)
  {
    v17 = v1[7];
    v18 = v7;

    v8 = a1;
    v9 = sub_1E1AF748C();
    sub_1E1455104(&v17);
  }

  else
  {
    v10 = a1;
    v9 = 0;
  }

  v11 = [v4 valueWithObject:v9 inContext:a1];
  swift_unknownObjectRelease();

  if (!v11)
  {
    goto LABEL_17;
  }

  sub_1E1AF6C5C();
  v12 = v2[6];
  if (v12)
  {
    v17 = v2[5];
    v18 = v12;
    v13 = a1;

    v12 = sub_1E1AF748C();
    sub_1E1455104(&v17);
  }

  else
  {
    v14 = a1;
  }

  v15 = [v4 valueWithObject:v12 inContext:a1];
  swift_unknownObjectRelease();

  if (!v15)
  {
    goto LABEL_18;
  }

  sub_1E1AF6C5C();
  LOBYTE(v17) = *(v2 + 32);
  v16 = [v4 valueWithObject:sub_1E1AF755C() inContext:a1];
  swift_unknownObjectRelease();
  if (!v16)
  {
LABEL_19:
    __break(1u);
    return;
  }

  sub_1E1AF6C5C();
  swift_beginAccess();
  if (v2[9])
  {

    sub_1E144878C(a1);

    sub_1E1AF6C5C();
  }
}

uint64_t sub_1E1453E38@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for GameCenterPlayer(0);
  *a1 = v1;
}

uint64_t sub_1E1453E84()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1453F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a12;
  v35 = a10;
  v36 = a8;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_1E134FD1C(a1, v42, &unk_1ECEB5670);
  sub_1E134FD1C(a11, v18 + OBJC_IVAR____TtC11AppStoreKit16GameCenterPlayer_impressionMetrics, &unk_1ECEB1770);
  *(v18 + 72) = 0;
  sub_1E134FD1C(v42, &v39, &unk_1ECEB5670);
  if (*(&v40 + 1))
  {
    v19 = v40;
    *(v18 + 88) = v39;
    *(v18 + 104) = v19;
    *(v18 + 120) = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v15 + 8))(v17, v14);
    v37 = v20;
    v38 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670);
  }

  sub_1E1308058(a11, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v42, &unk_1ECEB5670);
  v23 = v29;
  *(v18 + 16) = a2;
  *(v18 + 24) = v23;
  v24 = v32;
  *(v18 + 56) = v31;
  *(v18 + 64) = v24;
  v25 = v34;
  *(v18 + 40) = v33;
  *(v18 + 48) = v25;
  *(v18 + 32) = v30;
  swift_beginAccess();
  v26 = v35;
  *(v18 + 72) = v36;
  *(v18 + 80) = v26;
  return v18;
}

uint64_t sub_1E14541A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v39 = a8;
  v37 = a7;
  v36 = a6;
  v35 = a5;
  v34 = a4;
  v32 = a3;
  v31 = a2;
  v33 = a12;
  v38 = a10;
  v15 = sub_1E1AEFEAC();
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - v19;
  v30 = a1;
  sub_1E134FD1C(a1, v48, &unk_1ECEB5670);
  sub_1E134FD1C(a11, v20, &unk_1ECEB1770);
  *(v13 + 72) = 0;
  sub_1E134FD1C(v48, &v42, &unk_1ECEB5670);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v29 + 8))(v17, v15);
    v40 = v21;
    v41 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v42, &unk_1ECEB5670);
  }

  sub_1E1308058(a11, &unk_1ECEB1770);
  sub_1E1308058(v30, &unk_1ECEB5670);
  sub_1E1308058(v48, &unk_1ECEB5670);
  v24 = v46;
  *(v13 + 88) = v45;
  *(v13 + 104) = v24;
  *(v13 + 120) = v47;
  sub_1E134B7C8(v20, v13 + OBJC_IVAR____TtC11AppStoreKit16GameCenterPlayer_impressionMetrics);
  v25 = v32;
  *(v13 + 16) = v31;
  *(v13 + 24) = v25;
  v26 = v35;
  *(v13 + 56) = v34;
  *(v13 + 64) = v26;
  v27 = v37;
  *(v13 + 40) = v36;
  *(v13 + 48) = v27;
  *(v13 + 32) = v33;
  swift_beginAccess();
  *(v13 + 72) = v39;

  *(v13 + 80) = v38;
  return v13;
}

uint64_t _s11AppStoreKit16GameCenterPlayerCfD_0()
{

  sub_1E134B88C(v0 + 88);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit16GameCenterPlayer_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

AppStoreKit::GameCenterPlayer::Size_optional __swiftcall GameCenterPlayer.Size.init(rawValue:)(Swift::String rawValue)
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

uint64_t GameCenterPlayer.Size.rawValue.getter()
{
  if (*v0)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_1E1454608(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x656772616CLL;
  }

  else
  {
    v2 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v3 = 0x656772616CLL;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E1AF74AC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E1454688()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14546F8()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E145474C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E14547B8@<X0>(char *a1@<X8>)
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

void sub_1E1454818(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C616D73;
  if (*v1)
  {
    v2 = 0x656772616CLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t GameCenterPlayer.__allocating_init(id:playerId:alias:displayName:artwork:size:action:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v15 = a10;
  v34 = a11;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v33 = *a9;
  *(v20 + 72) = 0;
  sub_1E134FD1C(a1, &v41, &unk_1ECEB5670);
  if (*(&v42 + 1))
  {
    v21 = v42;
    *(v20 + 88) = v41;
    *(v20 + 104) = v21;
    *(v20 + 120) = v43;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v31 = a6;
    v32 = a7;
    v23 = a8;
    v24 = v22;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v39 = v24;
    v40 = v26;
    a8 = v23;
    v15 = a10;
    a6 = v31;
    a7 = v32;
    sub_1E1AF6F6C();
    sub_1E1308058(&v41, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(v34, v20 + OBJC_IVAR____TtC11AppStoreKit16GameCenterPlayer_impressionMetrics);
  v27 = v36;
  *(v20 + 16) = v35;
  *(v20 + 24) = v27;
  v28 = v38;
  *(v20 + 56) = v37;
  *(v20 + 64) = v28;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
  *(v20 + 32) = v33;
  swift_beginAccess();
  *(v20 + 72) = a8;
  *(v20 + 80) = v15;
  return v20;
}

uint64_t GameCenterPlayer.playerId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GameCenterPlayer.displayName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t GameCenterPlayer.alias.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1E1454B0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

uint64_t static GameCenterPlayer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E1AF74AC();
  }
}

uint64_t sub_1E1454BF4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = GameCenterPlayer.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1454C94@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for GameCenterPlayer(0);
  *a1 = v3;
}

uint64_t sub_1E1454CDC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1454D30()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1454DB0(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E1AF74AC();
  }
}

uint64_t sub_1E1454DDC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31[-1] - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E69A0290]) initWithInternalRepresentation_];
  v8 = [a1 contact];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _gkCompositeName];

    v30 = sub_1E1AF5DFC();
    v12 = v11;
  }

  else
  {
    v30 = 0;
    v12 = 0;
  }

  v13 = [v7 playerID];
  v14 = sub_1E1AF5DFC();
  v16 = v15;

  v31[0] = v14;
  v31[1] = v16;
  sub_1E1AF6F6C();
  v17 = [v7 playerID];
  v18 = sub_1E1AF5DFC();
  v20 = v19;

  v21 = [v7 alias];
  v22 = sub_1E1AF5DFC();
  v24 = v23;

  v25 = [v7 internal];
  v26 = sub_1E1515164(300.0, 300.0);

  LOBYTE(v31[0]) = 1;
  v27 = sub_1E1AF46DC();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  v28 = (*(v2 + 144))(v32, v18, v20, v22, v24, v30, v12, v26, v31, 0, v6);

  return v28;
}