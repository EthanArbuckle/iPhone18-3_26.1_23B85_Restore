void sub_100021968(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002180C(v2);
}

uint64_t sub_100021998()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_10006B05C;
  }

  else
  {
    v3 = sub_100021AAC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100021AC8()
{
  v1 = v0[8];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    AsyncStream.Continuation.yield<A>()();
    (*(v7 + 8))(v6, v9);
    sub_1000068B0(v1, &unk_10015FCF0, &unk_100117B60);
    v10 = sub_100015348(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v11 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_100021998;
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v14, v15, v10);
  }
}

uint64_t sub_100021CA8()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_100021DA4, 0, 0);
}

uint64_t sub_100021DA4()
{
  if ((*(v0 + 151) & 1) != 0 || (v1 = *(v0 + 48), Strong = swift_weakLoadStrong(), (*(v0 + 120) = Strong) == 0))
  {
    v5 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_100021EAC;

    return sub_10001ACB0();
  }
}

uint64_t sub_100021EAC(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_100021FAC, 0, 0);
}

uint64_t sub_100021FAC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v0 + 144) = v1 & 1;
  v7 = vdupq_n_s64(v1);
  *v7.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_100112CF0), vshlq_u64(v7, xmmword_100112CE0))), 0x1000100010001);
  *(v0 + 145) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
  *(v0 + 149) = BYTE5(v1) & 1;
  *(v0 + 150) = BYTE6(v1);
  sub_10004DED0(&qword_10015CB48, &unk_100113070);
  AsyncStream.Continuation.yield(_:)();

  (*(v4 + 8))(v3, v6);
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_100021CA8;
  v10 = *(v0 + 104);
  v11 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v0 + 151, 0, 0, v11);
}

uint64_t type metadata accessor for PrimarySettingsListSectionModel()
{
  result = qword_10015BFA8;
  if (!qword_10015BFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022168()
{
  sub_100006EE0();
  if (v0 <= 0x3F)
  {
    sub_100022274(319, &qword_10015BFC0, &type metadata accessor for LocalizedStringResource, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100022274(319, &unk_10015BFC8, type metadata accessor for PrimarySettingsListItemModel, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100022274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PrimarySettingsListItemModel()
{
  result = qword_10015B3F8;
  if (!qword_10015B3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PrimarySettingsListItemViewType()
{
  result = qword_10015B4B8;
  if (!qword_10015B4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022370()
{
  result = type metadata accessor for PrimarySettingsListItemViewType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000223F4()
{
  sub_10002251C();
  if (v0 <= 0x3F)
  {
    sub_100022598();
    if (v1 <= 0x3F)
    {
      sub_100022654();
      if (v2 <= 0x3F)
      {
        sub_100022714();
        if (v3 <= 0x3F)
        {
          sub_1000226B4();
          if (v4 <= 0x3F)
          {
            sub_100022774();
            if (v5 <= 0x3F)
            {
              sub_1000227A4();
              if (v6 <= 0x3F)
              {
                sub_100022744();
                if (v7 <= 0x3F)
                {
                  sub_1000227D4();
                  if (v8 <= 0x3F)
                  {
                    sub_100022684();
                    if (v9 <= 0x3F)
                    {
                      sub_1000226E4();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
}

ValueMetadata *sub_10002251C()
{
  result = qword_10015B4C8;
  if (!qword_10015B4C8)
  {
    result = &type metadata for PrimarySettingsListAppleAccountLinkModel;
    atomic_store(&type metadata for PrimarySettingsListAppleAccountLinkModel, &qword_10015B4C8);
  }

  return result;
}

uint64_t type metadata accessor for PrimarySettingsListFamilyLinkModel()
{
  result = qword_10015B308;
  if (!qword_10015B308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022598()
{
  if (!qword_10015B4D0)
  {
    v0 = type metadata accessor for PrimarySettingsListFamilyLinkModel();
    if (!v1)
    {
      atomic_store(v0, &qword_10015B4D0);
    }
  }
}

uint64_t sub_1000225E0()
{
  result = type metadata accessor for FamilyRowStatus();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

ValueMetadata *sub_100022654()
{
  result = qword_10015B4D8;
  if (!qword_10015B4D8)
  {
    result = &type metadata for PrimarySettingsListToggleModel;
    atomic_store(&type metadata for PrimarySettingsListToggleModel, &qword_10015B4D8);
  }

  return result;
}

ValueMetadata *sub_100022684()
{
  result = qword_10015B510;
  if (!qword_10015B510)
  {
    result = &type metadata for PrimarySettingsListFollowUpHeaderModel;
    atomic_store(&type metadata for PrimarySettingsListFollowUpHeaderModel, &qword_10015B510);
  }

  return result;
}

ValueMetadata *sub_1000226B4()
{
  result = qword_10015B4E8;
  if (!qword_10015B4E8)
  {
    result = &type metadata for PrimarySettingsListBadgedImagelessLinkModel;
    atomic_store(&type metadata for PrimarySettingsListBadgedImagelessLinkModel, &qword_10015B4E8);
  }

  return result;
}

ValueMetadata *sub_1000226E4()
{
  result = qword_10015B518;
  if (!qword_10015B518)
  {
    result = &type metadata for PrimarySettingsListFollowUpActionModel;
    atomic_store(&type metadata for PrimarySettingsListFollowUpActionModel, &qword_10015B518);
  }

  return result;
}

ValueMetadata *sub_100022714()
{
  result = qword_10015B4E0;
  if (!qword_10015B4E0)
  {
    result = &type metadata for PrimarySettingsListImagelessLinkModel;
    atomic_store(&type metadata for PrimarySettingsListImagelessLinkModel, &qword_10015B4E0);
  }

  return result;
}

ValueMetadata *sub_100022744()
{
  result = qword_10015B500;
  if (!qword_10015B500)
  {
    result = &type metadata for PrimarySettingsListValueLinkModel;
    atomic_store(&type metadata for PrimarySettingsListValueLinkModel, &qword_10015B500);
  }

  return result;
}

ValueMetadata *sub_100022774()
{
  result = qword_10015B4F0;
  if (!qword_10015B4F0)
  {
    result = &type metadata for PrimarySettingsListLinkModel;
    atomic_store(&type metadata for PrimarySettingsListLinkModel, &qword_10015B4F0);
  }

  return result;
}

ValueMetadata *sub_1000227A4()
{
  result = qword_10015B4F8;
  if (!qword_10015B4F8)
  {
    result = &type metadata for PrimarySettingsListBadgedLinkModel;
    atomic_store(&type metadata for PrimarySettingsListBadgedLinkModel, &qword_10015B4F8);
  }

  return result;
}

ValueMetadata *sub_1000227D4()
{
  result = qword_10015B508;
  if (!qword_10015B508)
  {
    result = &type metadata for PrimarySettingsListSubtitleLinkModel;
    atomic_store(&type metadata for PrimarySettingsListSubtitleLinkModel, &qword_10015B508);
  }

  return result;
}

uint64_t type metadata accessor for PrimarySettingsListSection()
{
  result = qword_10015C058;
  if (!qword_10015C058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022860()
{
  sub_1000228E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PrimarySettingsListSectionModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000228E4()
{
  if (!qword_10015B9B0)
  {
    type metadata accessor for SettingsAppModel();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10015B9B0);
    }
  }
}

unint64_t sub_100022944()
{
  result = qword_10015BF38;
  if (!qword_10015BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BF38);
  }

  return result;
}

unint64_t sub_100022998()
{
  result = qword_10015B368;
  if (!qword_10015B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B368);
  }

  return result;
}

uint64_t type metadata accessor for FamilyListItemProvider()
{
  result = qword_1001607B0;
  if (!qword_1001607B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022AD0()
{
  result = type metadata accessor for FamilyRowStatus();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100022B88(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  static FamilySettingsFactory.sharedProvider.getter();
  sub_100018544(v6, v6[3]);
  dispatch thunk of FamilySettingsViewsProtocol.rowStatus.getter();
  sub_10000665C(v6);
  v3 = (a2 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_familyRowInfo);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(a2 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_invalidator + 8) = 0;
  v4 = swift_unknownObjectWeakInit();
  *(a2 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask) = 0;
  *(v4 + 8) = &off_100150230;
  swift_unknownObjectWeakAssign();
  return a2;
}

void *sub_100022C64(void *result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v4 = result[2];
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v8 = result + 4;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = *v8;
    v11 = *(*v8 + 16);
    v12 = v9[2];
    if (__OFADD__(v12, v11))
    {
      break;
    }

    v13 = *v8;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 + v11 <= v9[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = a2();
      v9 = result;
      if (*(v10 + 16))
      {
LABEL_11:
        if ((v9[3] >> 1) - v9[2] < v11)
        {
          goto LABEL_19;
        }

        sub_10004DED0(a3, a4);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v14 = v9[2];
          v15 = __OFADD__(v14, v11);
          v16 = v14 + v11;
          if (v15)
          {
            goto LABEL_20;
          }

          v9[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_18;
    }

LABEL_4:
    ++v8;
    if (!--v4)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_100022DB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10004DED0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10004DED0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t type metadata accessor for CoreFollowUpSectionModelProvider()
{
  result = qword_10015FA88;
  if (!qword_10015FA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022F94()
{
  sub_1000231B0(319, &unk_10015F8A0, &qword_10015C900, &qword_1001123C0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1000231B0(319, &unk_10015F8B0, &unk_10015FAA0, qword_100112870, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1000231B0(319, &unk_10015F8C0, qword_10015FAB0, &unk_100115D00, &type metadata accessor for AsyncStream);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1000231B0(319, &unk_10015F8D0, qword_10015FAB0, &unk_100115D00, &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1000231B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100052374(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100023214(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100052374(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100023268(uint64_t a1, int a2, uint64_t a3)
{
  v24 = a2;
  v23[1] = a1;
  v4 = sub_10004DED0(&unk_10015EA10, &unk_1001170D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v23 - v7);
  v25 = sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v25);
  v12 = v23 - v11;
  v13 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v23 - v16;
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  v18 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStream;
  v19 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v19 - 8) + 56))(a3 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStreamContinuation;
  v21 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  (*(*(v21 - 8) + 56))(a3 + v20, 1, 1, v21);
  *(a3 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_observationTasks) = &_swiftEmptyArrayStorage;
  *(a3 + 24) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *(a3 + 32) = v24;
  *v8 = 1;
  (*(v5 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v4);
  sub_10004DED0(qword_10015FAB0, &unk_100115D00);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v8, v4);
  (*(v14 + 32))(a3 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStream, v17, v13);
  (*(v9 + 32))(a3 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStreamContinuation, v12, v25);
  return a3;
}

uint64_t type metadata accessor for CoreFollowUpNoGroupSectionCollectionModelProvider()
{
  result = qword_10015F890;
  if (!qword_10015F890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002367C()
{
  sub_1000231B0(319, &unk_10015F8A0, &qword_10015C900, &qword_1001123C0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1000231B0(319, &unk_10015F8B0, &unk_10015FAA0, qword_100112870, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1000231B0(319, &unk_10015F8C0, qword_10015FAB0, &unk_100115D00, &type metadata accessor for AsyncStream);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1000231B0(319, &unk_10015F8D0, qword_10015FAB0, &unk_100115D00, &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100023898(uint64_t a1, uint64_t a2, int a3)
{
  v24 = a3;
  v23[0] = a2;
  v23[1] = a1;
  v4 = sub_10004DED0(&unk_10015EA10, &unk_1001170D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v23 - v7);
  v25 = sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v25);
  v12 = v23 - v11;
  v13 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v23 - v16;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = 0;
  v18 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStream;
  v19 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStreamContinuation;
  v21 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  *(v3 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_observationTasks) = &_swiftEmptyArrayStorage;
  *(v3 + 24) = v23[0];
  swift_unknownObjectWeakAssign();
  *(v3 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_group) = v24;
  *v8 = 1;
  (*(v5 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v4);
  sub_10004DED0(qword_10015FAB0, &unk_100115D00);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v8, v4);
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStream, v17, v13);
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStreamContinuation, v12, v25);
  return v3;
}

uint64_t type metadata accessor for ConnectedHeadphonesSectionModelProvider()
{
  result = qword_10015F6B8;
  if (!qword_10015F6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100023CA8()
{
  v1 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___connectedHeadphonesSectionModelProvider;
  if (*(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___connectedHeadphonesSectionModelProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___connectedHeadphonesSectionModelProvider);
  }

  else
  {
    v3 = type metadata accessor for ConnectedHeadphonesSectionModelProvider();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v6 = swift_allocObject();

    v2 = sub_100023E64(v7, v6);

    v8 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100023D38()
{
  sub_10001D810(319, &unk_10015C500, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10001D810(319, &unk_10015C358, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100023E64(uint64_t a1, uint64_t a2)
{
  v19[1] = a1;
  v3 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v19 - v6);
  v8 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  v13 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v19 - v16;
  *(a2 + 16) = xmmword_100115880;
  *(a2 + 32) = 3;
  *(a2 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 56) = &_swiftEmptyArrayStorage;
  *(a2 + 64) = 0;
  *(a2 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask) = 0;
  *(a2 + 48) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v7 = 1;
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v7, v3);
  (*(v14 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStream, v17, v13);
  (*(v9 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStreamContinuation, v12, v8);
  return a2;
}

uint64_t type metadata accessor for BluetoothListItemProvider()
{
  result = qword_100160230;
  if (!qword_100160230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024254()
{
  sub_10001D810(319, &unk_10015C500, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10001D810(319, &unk_10015C358, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10002437C(uint64_t a1, uint64_t a2)
{
  v19[1] = a1;
  v3 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v19 - v6);
  v8 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  v13 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v19 - v16;
  *(a2 + 16) = 5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask) = 0;
  *(a2 + 80) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v7 = 1;
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v7, v3);
  (*(v14 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStream, v17, v13);
  (*(v9 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v12, v8);
  return a2;
}

uint64_t type metadata accessor for VPNListItemProvider()
{
  result = qword_100160D70;
  if (!qword_100160D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000246E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100052374(&qword_10015EA08, &unk_100115CE0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10002474C()
{
  sub_1000246E0(319, &qword_100160D80, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000246E0(319, &unk_100160D88, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000248B0(uint64_t a1, uint64_t a2)
{
  v19[1] = a1;
  v3 = sub_10004DED0(&qword_10015E9F0, &qword_100115CC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v19 - v6);
  v8 = sub_10004DED0(&qword_10015E9F8, &unk_100115CD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  v13 = sub_10004DED0(&qword_10015EA00, &qword_100118250);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v19 - v16;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  *(a2 + 56) = xmmword_100115890;
  *(a2 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 88) = 0;
  *(a2 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask) = 0;
  *(a2 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState) = 0;
  *(a2 + 80) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v7 = 1;
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  sub_10004DED0(&qword_10015EA08, &unk_100115CE0);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v7, v3);
  (*(v14 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStream, v17, v13);
  (*(v9 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation, v12, v8);
  return a2;
}

uint64_t type metadata accessor for GeneralSettingsListItemProvider()
{
  result = qword_1001608C8;
  if (!qword_1001608C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100024C64()
{
  sub_100024C10(319, &qword_10015FD78, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100024C10(319, &qword_10015FD80, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

id sub_100024D8C(uint64_t a1, _BYTE *a2)
{
  v20 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_10015E9D8, &unk_100115CB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v20 - v6);
  v8 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  v18 = &a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_id];
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v18[32] = 6;
  a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_badgedForSoftwareUpdate] = 0;
  *&a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient] = 0;
  *&a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_invalidator + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v7 = 1;
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v7, v3);
  (*(v14 + 32))(&a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_shouldBadgeStream], v17, v13);
  (*(v9 + 32))(&a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_shouldBadgeStreamContinuation], v12, v8);
  v22.receiver = a2;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "init", v20);
}

uint64_t type metadata accessor for WalletAndApplePayOrPaymentAndContactlessListItemProvider()
{
  result = qword_100160F28;
  if (!qword_100160F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025148()
{
  sub_100023214(319, &unk_10015F8A0, &qword_10015C900, &qword_1001123C0);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_100023214(319, &unk_10015F8B0, &unk_10015FAA0, qword_100112870);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_100025324(319, &qword_100160F38, &type metadata accessor for AsyncStream);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_100025324(319, &unk_100160F40, &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100025324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PaymentAndContactlessState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100025378(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_10004DED0(&qword_10015E9A0, &qword_100115C78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v22 - v6);
  v23 = sub_10004DED0(&qword_10015E9A8, &unk_100115C80);
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v23);
  v11 = &v22 - v10;
  v12 = sub_10004DED0(&qword_10015E9B0, &qword_100118370);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  *(a2 + 16) = 32;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  *(a2 + 64) = 0;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStream;
  v18 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v18 - 8) + 56))(a2 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStreamContinuation;
  v20 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
  *(a2 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_appSettingsContext) = 0;
  *(a2 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_observationTasks) = &_swiftEmptyArrayStorage;
  *(a2 + 64) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v7 = 1;
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v7, v3);
  (*(v13 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStream, v16, v12);
  (*(v8 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStreamContinuation, v11, v23);
  return a2;
}

uint64_t sub_100025750(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100025790()
{
  _StringGuts.grow(_:)(26);
  v1 = *v0;
  v2 = _typeName(_:qualified:)();

  v9 = v2;
  v3._object = 0x80000001001212A0;
  v3._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v3);
  v4 = v0[5];
  v5 = v0[6];
  sub_100018544(v0 + 2, v4);
  v6._countAndFlagsBits = (*(v5 + 16))(v4, v5);
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32032;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  return v9;
}

uint64_t sub_100025894(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v13 = _typeName(_:qualified:)();
  v6._countAndFlagsBits = 0x203A6469207B20;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  sub_100025974(a1, a2, a3);
  v7 = sub_10002598C(a1, a2, a3);
  v9 = v8;
  sub_100025CD8(a1, a2, a3);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  return v13;
}

uint64_t sub_100025974(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_10002598C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    _StringGuts.grow(_:)(29);

    v5 = 0xD00000000000001BLL;
LABEL_5:
    v8 = v5;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    return v8;
  }

  if (a3 == 2)
  {
    _StringGuts.grow(_:)(24);

    v5 = 0xD000000000000016;
    goto LABEL_5;
  }

  result = 0x7974697275636573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6F46656369766564;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6C616E6F73726570;
      break;
    case 16:
      result = 0x65636976726573;
      break;
    case 17:
      result = 1936748641;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_100025CD8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100025CF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100025DBC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001EE30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000665C(v11);
  return v7;
}

unint64_t sub_100025DBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10002D948(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100025EC8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100025EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100025FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000260A0(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015BDA8, &unk_100111BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_100026144(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10004DED0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t sub_100026320(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  v15 = _typeName(_:qualified:)();
  v4._countAndFlagsBits = 0x203A6469207B20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = (*(a2 + 8))(a1, a2);
  v7 = v6;
  LOBYTE(a2) = v8;
  v9 = sub_10002598C(v5, v6, v8);
  v11 = v10;
  sub_100025CD8(v5, v7, a2);
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  return v15;
}

uint64_t sub_100026414()
{
  v1 = *(*v0 + 16);
  sub_100025974(v1, *(*v0 + 24), *(*v0 + 32));
  return v1;
}

uint64_t sub_100026460()
{
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v1 = *v0;
  v2 = _typeName(_:qualified:)();
  v4 = v3;

  v30 = v2;
  v31 = v4;
  v5._countAndFlagsBits = 0x203A6469207B20;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_10002598C(v0[2], v0[3], *(v0 + 32));
  String.append(_:)(v6);

  v7._object = 0x8000000100121110;
  v7._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v7);
  v8 = v0[5];
  v9 = *(v8 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v29 = &_swiftEmptyArrayStorage;
    sub_1000267D0(0, v9, 0);
    v10 = &_swiftEmptyArrayStorage;
    v11 = v8 + 32;
    do
    {
      sub_10000B270(v11, v26);
      v12 = v27;
      v13 = v28;
      sub_100018544(v26, v27);
      v14 = (*(v13 + 16))(v12, v13);
      v16 = v15;
      sub_10000665C(v26);
      v29 = v10;
      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        sub_1000267D0((v17 > 1), v18 + 1, 1);
        v10 = v29;
      }

      v10[2] = v18 + 1;
      v19 = &v10[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  v26[0] = v10;
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v20 = BidirectionalCollection<>.joined(separator:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 2099272992;
  v24._object = 0xE400000000000000;
  String.append(_:)(v24);
  return v30;
}

char *sub_1000266C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015C470, &qword_100112480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000267D0(char *a1, int64_t a2, char a3)
{
  result = sub_1000266C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100026814()
{
  v1 = *v0;
  v10 = _typeName(_:qualified:)();
  v2._countAndFlagsBits = 0x203A6469207B20;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3 = qword_100111DB0[*(v0 + 32)];
  v4 = sub_10002598C(v3, 0, 3u);
  v6 = v5;
  sub_100025CD8(v3, 0, 3u);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32032;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  return v10;
}

unint64_t sub_1000268F8()
{
  result = qword_10015EF80;
  if (!qword_10015EF80)
  {
    sub_100052374(&unk_10015FC00, &qword_100111C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EF80);
  }

  return result;
}

uint64_t sub_1000269E8(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

void *sub_100027320()
{
  if (*(v0 + 32) == 6)
  {
    v1 = *v0;
    v2 = v0[1];
    v3 = v0[2] | v0[3];
    if (!(v3 | *v0 | v2))
    {
      goto LABEL_99;
    }

    v4 = v3 | v2;
    if (v1 == 2 && v4 == 0)
    {
      goto LABEL_61;
    }

    if (v1 == 3 && v4 == 0)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v15 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v16 = *(v15 + 72);
      v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1001103D0;
      v19 = v18 + v17;
      *v19 = swift_getKeyPath();
      *(v19 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v20 = (v19 + v16);
      v21 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      v22 = 0x7474655369466957;
      v23 = 0xEC00000073676E69;
LABEL_15:
      *v20 = v22;
      v20[1] = v23;
LABEL_16:
      static NSBundle.PluginLocation.preferences.getter();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      *(v7 + 40) = v18;
LABEL_101:
      v158 = sub_100029C78(v7);
      swift_setDeallocating();
      sub_100029EBC(v8);
      swift_deallocClassInstance();
      return v158;
    }

    if (v1 == 4 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v9 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1001103C0;
      v13 = (v12 + v11);
      v14 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      *v13 = 0xD000000000000020;
      v13[1] = 0x800000010011F160;
      static NSBundle.PluginLocation.preferences.getter();
LABEL_100:
      swift_storeEnumTagMultiPayload();
      *(v7 + 40) = v12;
      goto LABEL_101;
    }

    if (v1 == 5 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v24 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v27 = 2 * v25;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1001103E0;
      v28 = v18 + v26;
      *v28 = swift_getKeyPath();
      *(v28 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v29 = v28 + v25;
      *v29 = swift_getKeyPath();
      *(v29 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v30 = (v28 + v27);
      v31 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      *v30 = 0xD000000000000011;
      v30[1] = 0x800000010011F140;
      goto LABEL_16;
    }

    if (v1 == 6 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v32 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v33 = *(v32 + 72);
      v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1001103F0;
      v35 = (v18 + v34);
      *v35 = 1;
      swift_storeEnumTagMultiPayload();
      v36 = &v35[v33];
      *v36 = swift_getKeyPath();
      v36[8] = 1;
      swift_storeEnumTagMultiPayload();
      v37 = &v35[2 * v33];
      *v37 = swift_getKeyPath();
      v37[8] = 0;
      swift_storeEnumTagMultiPayload();
      v38 = &v35[3 * v33];
      v39 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      *v38 = 0xD000000000000010;
      v38[1] = 0x800000010011F120;
      goto LABEL_16;
    }

    if (v1 == 7 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v40 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v43 = 2 * v41;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1001103E0;
      v44 = (v18 + v42);
      *v44 = 1;
      swift_storeEnumTagMultiPayload();
      v45 = &v44[v41];
      *v45 = swift_getKeyPath();
      v45[8] = 0;
      swift_storeEnumTagMultiPayload();
      v46 = &v44[v43];
      *v46 = swift_getKeyPath();
      v46[8] = 0;
      goto LABEL_17;
    }

    if (v1 == 8 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v47 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v48 = *(v47 + 72);
      v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v50 = 2 * v48;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1001103E0;
      v51 = (v18 + v49);
      *v51 = 1;
      swift_storeEnumTagMultiPayload();
      v52 = &v51[v48];
      *v52 = swift_getKeyPath();
      v52[8] = 1;
      swift_storeEnumTagMultiPayload();
      v20 = &v51[v50];
      v53 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      v22 = 0x65666572504E5056;
      v23 = 0xEE007365636E6572;
      goto LABEL_15;
    }

    if (v1 == 9 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v54 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v55 = *(v54 + 72);
      v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1001103D0;
      v57 = v12 + v56;
      *v57 = swift_getKeyPath();
      *(v57 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v58 = v57 + v55;
      *v58 = swift_getKeyPath();
      *(v58 + 8) = 0;
      goto LABEL_100;
    }

    if (v1 == 11 && !v4)
    {
      goto LABEL_35;
    }

    if (v1 == 12 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v66 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v67 = *(v66 + 72);
      v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1001103C0;
      v69 = v64 + v68;
      *v69 = swift_getKeyPath();
      *(v69 + 8) = 1;
      goto LABEL_39;
    }

    if (v1 == 13 && !v4)
    {
LABEL_35:
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v61 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v62 = *(v61 + 72);
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1001103D0;
      v65 = v64 + v63;
      *v65 = swift_getKeyPath();
      *(v65 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      *(v65 + v62) = 1;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      *(inited + 40) = v64;
LABEL_40:
      v70 = sub_100029C78(inited);
      swift_setDeallocating();
      sub_100029EBC(v60);
      return v70;
    }

    if (v1 == 14 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v72 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v73 = *(v72 + 72);
      v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1001103D0;
      v75 = (v64 + v74);
      *v75 = 1;
      swift_storeEnumTagMultiPayload();
      v76 = &v75[v73];
      v77 = &MCFeatureScreenTimeModificationAllowed;
LABEL_46:
      v78 = *v77;
      *v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76[1] = v79;
      goto LABEL_39;
    }

    if (v1 == 16 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v80 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v81 = *(v80 + 72);
      v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1001103D0;
      v83 = v12 + v82;
      *v83 = swift_getKeyPath();
      *(v83 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      *(v83 + v81) = 1;
      goto LABEL_100;
    }

    if (v1 == 17 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v84 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v85 = *(v84 + 72);
      v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1001103D0;
      v88 = v87 + v86;
      *v88 = swift_getKeyPath();
      *(v88 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v89 = (v88 + v85);
      v90 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      v91 = 0x800000010011F0A0;
      v92 = 0xD000000000000014;
LABEL_53:
      *v89 = v92;
      v89[1] = v91;
LABEL_54:
      static NSBundle.PluginLocation.preferences.getter();
LABEL_55:
      swift_storeEnumTagMultiPayload();
      *(inited + 40) = v87;
      goto LABEL_40;
    }

    if (v1 == 18 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v93 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v94 = *(v93 + 72);
      v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1001103C0;
      v96 = v12 + v95;
      *v96 = swift_getKeyPath();
      *(v96 + 8) = 1;
      goto LABEL_100;
    }

    if (v1 == 19 && !v4)
    {
LABEL_61:
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v97 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v98 = *(v97 + 72);
      v99 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1001103C0;
      *(v12 + v99) = 1;
      goto LABEL_100;
    }

    if (v1 == 20 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v100 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v101 = *(v100 + 72);
      v102 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1001103E0;
      v103 = v87 + v102;
      *v103 = swift_getKeyPath();
      *(v103 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      *(v103 + v101) = 1;
      swift_storeEnumTagMultiPayload();
      v89 = (v103 + 2 * v101);
      v104 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      v91 = 0x800000010011F100;
      v92 = 0xD00000000000001FLL;
      goto LABEL_53;
    }

    if (v1 == 21 && !v4)
    {
LABEL_67:
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v105 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v106 = *(v105 + 72);
      v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1001103C0;
      v108 = v64 + v107;
      *v108 = swift_getKeyPath();
      *(v108 + 8) = 0;
      goto LABEL_39;
    }

    if (v1 == 22 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v109 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v110 = *(v109 + 72);
      v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1001103E0;
      v112 = v87 + v111;
      *v112 = swift_getKeyPath();
      *(v112 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      *(v112 + v110) = 1;
      swift_storeEnumTagMultiPayload();
      v113 = (v112 + 2 * v110);
      v114 = &MCFeatureWallpaperModificationAllowed;
LABEL_71:
      v115 = *v114;
      *v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113[1] = v116;
      goto LABEL_55;
    }

    if (v1 == 23 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v117 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v118 = *(v117 + 72);
      v119 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1001103D0;
      v120 = v87 + v119;
      *v120 = swift_getKeyPath();
      *(v120 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v121 = (v120 + v118);
      v122 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      *v121 = 0x53746E6569626D41;
      v121[1] = 0xEF73676E69747465;
      goto LABEL_54;
    }

    if (v1 == 24 && !v4)
    {
      goto LABEL_67;
    }

    if (v1 == 25 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v123 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v124 = *(v123 + 72);
      v125 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1001103C0;
      v76 = (v64 + v125);
      v77 = &MCFeatureSpotlightAllowed;
      goto LABEL_46;
    }

    if (v1 == 26 && !v4)
    {
      goto LABEL_67;
    }

    if (v1 == 27 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v126 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v127 = *(v126 + 72);
      v128 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v129 = 2 * v127;
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1001103E0;
      v130 = (v87 + v128);
      *v130 = 1;
      swift_storeEnumTagMultiPayload();
      v131 = &v130[v127];
      *v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v131[1] = v132;
      swift_storeEnumTagMultiPayload();
      v133 = &v130[v129];
      *v133 = sub_10002EB34();
      v133[1] = 1;
      goto LABEL_55;
    }

    if (v1 == 29 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v134 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v135 = *(v134 + 72);
      v136 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1001103D0;
      v137 = v87 + v136;
      *v137 = swift_getKeyPath();
      *(v137 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v89 = (v137 + v135);
      v138 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      v91 = 0x800000010011F0E0;
      v92 = 0xD00000000000001ELL;
      goto LABEL_53;
    }

    if (v1 == 30 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v139 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v140 = *(v139 + 72);
      v141 = (*(v139 + 80) + 32) & ~*(v139 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1001103C0;
      v142 = (v64 + v141);
      v143 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      strcpy(v142, "BatteryUsageUI");
      v142[15] = -18;
      static NSBundle.PluginLocation.preferences.getter();
      goto LABEL_39;
    }

    if (v1 == 35 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v144 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v145 = *(v144 + 72);
      v146 = (*(v144 + 80) + 32) & ~*(v144 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1001103E0;
      v147 = (v87 + v146);
      *v147 = 1;
      swift_storeEnumTagMultiPayload();
      v148 = &v147[v145];
      *v148 = 0xD000000000000010;
      v148[1] = 0x800000010011F0C0;
      swift_storeEnumTagMultiPayload();
      v113 = &v147[2 * v145];
      v114 = &MCFeatureCameraAllowed;
      goto LABEL_71;
    }

    if (v1 == 36 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v149 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v150 = *(v149 + 72);
      v151 = (*(v149 + 80) + 32) & ~*(v149 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1001103D0;
      v152 = (v64 + v151);
      *v152 = 1;
      swift_storeEnumTagMultiPayload();
      v76 = &v152[v150];
      v77 = &MCFeatureGameCenterAllowed;
      goto LABEL_46;
    }

    if (v1 == 37 && !v4)
    {
LABEL_99:
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 1;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v153 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v154 = *(v153 + 72);
      v155 = (*(v153 + 80) + 32) & ~*(v153 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1001103C0;
      v156 = (v12 + v155);
      *v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v156[1] = v157;
      goto LABEL_100;
    }

    if (v1 == 38 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v159 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v160 = *(v159 + 72);
      v161 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1001103C0;
      v162 = v64 + v161;
      *(v162 + 24) = &type metadata for SettingsAppFeatureFlags;
      *(v162 + 32) = sub_10000631C();
      *v162 = 1;
      *(v162 + 40) = 1;
      goto LABEL_39;
    }

    if (v1 == 39 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v163 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v164 = *(v163 + 72);
      v165 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1001103D0;
      v166 = (v87 + v165);
      v167 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      *v166 = 0xD000000000000010;
      v166[1] = 0x800000010011F060;
      static NSBundle.PluginLocation.appleInternalPreferences.getter();
      swift_storeEnumTagMultiPayload();
      v168 = v166 + v164;
      *(v168 + 3) = &type metadata for SettingsAppFeatureFlags;
      *(v168 + 4) = sub_10000631C();
      v169 = 2;
LABEL_111:
      *v168 = v169;
      v168[40] = 1;
      goto LABEL_55;
    }

    if (v1 == 40 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v60 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v170 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule() - 8);
      v171 = *(v170 + 72);
      v172 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_1001103D0;
      v173 = (v87 + v172);
      v174 = *(sub_10004DED0(&qword_10015B390, &qword_100110640) + 48);
      *v173 = 0xD000000000000011;
      v173[1] = 0x800000010011F080;
      static NSBundle.PluginLocation.appleInternalPreferences.getter();
      swift_storeEnumTagMultiPayload();
      v168 = v173 + v171;
      *(v168 + 3) = &type metadata for SettingsAppFeatureFlags;
      *(v168 + 4) = sub_10000631C();
      v169 = 3;
      goto LABEL_111;
    }
  }

  return sub_100029C78(&_swiftEmptyArrayStorage);
}

uint64_t sub_10002973C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_ringerButtonCapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029768@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_iPadCapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029794@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_isSimulator();
  *a2 = result;
  return result;
}

uint64_t sub_1000297C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_deviceSupportsApplePencil();
  *a2 = result;
  return result;
}

uint64_t sub_1000297EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_assistantCapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029818@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_accessibilityCapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_bluetoothLECapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029870@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_cellularDataCapability();
  *a2 = result;
  return result;
}

uint64_t sub_10002989C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_personalHotspotCapability();
  *a2 = result;
  return result;
}

uint64_t sub_1000298C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_bluetoothCapability();
  *a2 = result;
  return result;
}

uint64_t sub_1000298F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = MobileGestalt_get_wifiCapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 5u)
  {
    if (((1 << a5) & 0x3A) != 0)
    {
    }

    else
    {
    }
  }

  return result;
}

uint64_t type metadata accessor for PrimarySettingsListItemVisibilityRule()
{
  result = qword_10015C180;
  if (!qword_10015C180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000299F0()
{
  sub_100029B1C();
  if (v0 <= 0x3F)
  {
    sub_100029B88();
    if (v1 <= 0x3F)
    {
      sub_100029BB8();
      if (v2 <= 0x3F)
      {
        sub_100061A58();
        if (v3 <= 0x3F)
        {
          sub_100061AD0(319, &qword_10015C1B0, &qword_10015C1B8, &qword_1001121E0);
          if (v4 <= 0x3F)
          {
            sub_100061AD0(319, &qword_10015C1C0, &qword_10015C1C8, &qword_1001121E8);
            if (v5 <= 0x3F)
            {
              sub_100029BE8();
              if (v6 <= 0x3F)
              {
                sub_100029C48();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100029B1C()
{
  if (!qword_10015C190)
  {
    type metadata accessor for NSBundle.PluginLocation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10015C190);
    }
  }
}

void *sub_100029B88()
{
  result = qword_10015C198;
  if (!qword_10015C198)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10015C198);
  }

  return result;
}

void *sub_100029BB8()
{
  result = qword_10015C1A0;
  if (!qword_10015C1A0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10015C1A0);
  }

  return result;
}

void sub_100029BE8()
{
  if (!qword_10015C1D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10015C1D0);
    }
  }
}

void *sub_100029C48()
{
  result = qword_10015C1D8;
  if (!qword_10015C1D8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_10015C1D8);
  }

  return result;
}

void *sub_100029C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10004DED0(&unk_10015EDC0, &unk_100116020);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100029DE0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100029DE0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100029D8C()
{
  result = qword_10015C208;
  if (!qword_10015C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C208);
  }

  return result;
}

unint64_t sub_100029DE0(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v4 = Hasher._finalize()();

  return sub_100029E4C(a1 & 1, v4);
}

unint64_t sub_100029E4C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100029EBC(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015B388, &qword_100110638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemVisibilityRule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029F88()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  result = 0;
  if (((1 << v2) & 0x37) != 0)
  {
    return result;
  }

  if (v2 == 3)
  {
    return 0xD00000000000001ALL;
  }

  v4 = v0[1];
  v5 = v0[2] | v0[3];
  if (!(v5 | v1 | v4))
  {
    return 0xD00000000000001ELL;
  }

  v6 = v5 | v4;
  if (v1 == 1 && v6 == 0)
  {
    return 0xD000000000000021;
  }

  if (v1 == 2 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 3 && !v6)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 4 && !v6)
  {
    return 0xD00000000000001FLL;
  }

  if (v1 == 5 && !v6)
  {
    return 0xD000000000000020;
  }

  if (v1 == 6 && !v6)
  {
    return 0xD000000000000028;
  }

  if (v1 == 7 && !v6)
  {
    return 0xD000000000000027;
  }

  if (v1 == 8 && !v6)
  {
    return 0xD00000000000001ALL;
  }

  if (v1 == 9 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 10 && !v6)
  {
    return 0xD000000000000020;
  }

  if (v1 == 11 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 12 && !v6 || v1 == 13 && !v6)
  {
    return 0xD00000000000001CLL;
  }

  if (v1 == 14 && !v6)
  {
    return 0xD000000000000022;
  }

  if (v1 == 15 && !v6)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 16 && !v6)
  {
    return 0xD000000000000025;
  }

  if (v1 == 17 && !v6)
  {
    return 0xD00000000000002BLL;
  }

  if (v1 == 18 && !v6)
  {
    return 0xD00000000000001ELL;
  }

  if (v1 == 19 && !v6)
  {
    v8 = MobileGestalt_get_current_device();
    if (v8)
    {
      v9 = v8;
      iPadCapability = MobileGestalt_get_iPadCapability();

      if (iPadCapability)
      {
        return 0xD000000000000023;
      }

      else
      {
        return 0xD000000000000025;
      }
    }

    __break(1u);
    goto LABEL_131;
  }

  if (v1 == 20 && !v6 || v1 == 21 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 22 && !v6)
  {
    return 0xD000000000000020;
  }

  if (v1 == 23 && !v6)
  {
    return 0xD00000000000001ELL;
  }

  if (v1 == 24 && !v6)
  {
    if ((sub_10002DBB0() & 1) == 0)
    {
      return 0x6C7070612E6D6F63;
    }

    return 0xD00000000000002DLL;
  }

  if (v1 == 25 && !v6 || v1 == 26 && !v6)
  {
    return 0xD00000000000001DLL;
  }

  if (v1 == 27 && !v6)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v11 = result;
      pearlIDCapability = MobileGestalt_get_pearlIDCapability();

      if (pearlIDCapability)
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v13 = result;
        isSimulator = MobileGestalt_get_isSimulator();

        if ((isSimulator & 1) == 0)
        {
          return 0xD00000000000001ELL;
        }
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v15 = result;
        touchIDCapability = MobileGestalt_get_touchIDCapability();

        if (!touchIDCapability)
        {
          return 0xD00000000000001FLL;
        }

        result = MobileGestalt_get_current_device();
        if (result)
        {
          v17 = result;
          MobileGestalt_get_isSimulator();

          return 0xD00000000000001FLL;
        }

        goto LABEL_140;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_139;
  }

  if (v1 == 28 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 29 && !v6)
  {
    return 0xD00000000000002DLL;
  }

  if (v1 == 30 && !v6)
  {
    return 0xD00000000000001ELL;
  }

  if (v1 == 31 && !v6)
  {
    return 0xD00000000000001ELL;
  }

  if (v1 == 32 && !v6)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v18 = result;
      v19 = MobileGestalt_get_iPadCapability();

      if (v19)
      {
        return 0xD000000000000016;
      }

      else
      {
        return 0xD000000000000012;
      }
    }

LABEL_141:
    __break(1u);
    return result;
  }

  if (v1 == 33 && !v6)
  {
    return 0xD00000000000002ELL;
  }

  if (v1 == 34 && !v6)
  {
    return 0xD000000000000023;
  }

  if (v1 == 35 && !v6)
  {
    return 0xD00000000000001DLL;
  }

  if (v1 == 36 && !v6)
  {
    return 0xD00000000000001CLL;
  }

  if (v1 == 37 && !v6)
  {
    return 0xD000000000000021;
  }

  if (v1 == 38 && !v6)
  {
    return 0xD000000000000026;
  }

  if (v1 == 39 && !v6)
  {
    return 0xD000000000000027;
  }

LABEL_131:
  if (v1 == 40 && !v6)
  {
    return 0xD000000000000028;
  }

  if ((v1 - 41) > 3 || v6)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD000000000000023;
  }
}

void sub_10002A748(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_10002BB48(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (a2[2].i8[0] == 1)
        {
          goto LABEL_27;
        }

        return 0;
      }

      if (a2[2].i8[0] != 2)
      {
        return 0;
      }

      v8 = a2[1].i64[0];
      v9 = a2[1].i64[1];
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (a2[2].i8[0])
      {
        return 0;
      }

      v8 = a2[1].i64[0];
      v9 = a2[1].i64[1];
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
LABEL_22:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v5 == v8 && v6 == v9)
    {
      return 1;
    }

    goto LABEL_30;
  }

  if (v7 > 4)
  {
    if (v7 == 5)
    {
      if (a2[2].i8[0] != 5)
      {
        return 0;
      }

      goto LABEL_27;
    }

    v12 = v5 | v4;
    if (v12 | v3 | v6)
    {
      v13 = v12 | v6;
      if (v3 != 1 || v13)
      {
        if (v3 != 2 || v13)
        {
          if (v3 != 3 || v13)
          {
            if (v3 != 4 || v13)
            {
              if (v3 != 5 || v13)
              {
                if (v3 != 6 || v13)
                {
                  if (v3 != 7 || v13)
                  {
                    if (v3 != 8 || v13)
                    {
                      if (v3 != 9 || v13)
                      {
                        if (v3 != 10 || v13)
                        {
                          if (v3 != 11 || v13)
                          {
                            if (v3 != 12 || v13)
                            {
                              if (v3 != 13 || v13)
                              {
                                if (v3 != 14 || v13)
                                {
                                  if (v3 != 15 || v13)
                                  {
                                    if (v3 != 16 || v13)
                                    {
                                      if (v3 != 17 || v13)
                                      {
                                        if (v3 != 18 || v13)
                                        {
                                          if (v3 != 19 || v13)
                                          {
                                            if (v3 != 20 || v13)
                                            {
                                              if (v3 != 21 || v13)
                                              {
                                                if (v3 != 22 || v13)
                                                {
                                                  if (v3 != 23 || v13)
                                                  {
                                                    if (v3 != 24 || v13)
                                                    {
                                                      if (v3 != 25 || v13)
                                                      {
                                                        if (v3 != 26 || v13)
                                                        {
                                                          if (v3 != 27 || v13)
                                                          {
                                                            if (v3 != 28 || v13)
                                                            {
                                                              if (v3 != 29 || v13)
                                                              {
                                                                if (v3 != 30 || v13)
                                                                {
                                                                  if (v3 != 31 || v13)
                                                                  {
                                                                    if (v3 != 32 || v13)
                                                                    {
                                                                      if (v3 != 33 || v13)
                                                                      {
                                                                        if (v3 != 34 || v13)
                                                                        {
                                                                          if (v3 != 35 || v13)
                                                                          {
                                                                            if (v3 != 36 || v13)
                                                                            {
                                                                              if (v3 != 37 || v13)
                                                                              {
                                                                                if (v3 != 38 || v13)
                                                                                {
                                                                                  if (v3 != 39 || v13)
                                                                                  {
                                                                                    if (v3 != 40 || v13)
                                                                                    {
                                                                                      if (v3 != 41 || v13)
                                                                                      {
                                                                                        if (v3 != 42 || v13)
                                                                                        {
                                                                                          if (v3 != 43 || v13)
                                                                                          {
                                                                                            if (v3 != 44 || v13)
                                                                                            {
                                                                                              if (a2[2].i8[0] != 6 || a2->i64[0] != 45)
                                                                                              {
                                                                                                return 0;
                                                                                              }
                                                                                            }

                                                                                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 44)
                                                                                            {
                                                                                              return 0;
                                                                                            }
                                                                                          }

                                                                                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 43)
                                                                                          {
                                                                                            return 0;
                                                                                          }
                                                                                        }

                                                                                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 42)
                                                                                        {
                                                                                          return 0;
                                                                                        }
                                                                                      }

                                                                                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 41)
                                                                                      {
                                                                                        return 0;
                                                                                      }
                                                                                    }

                                                                                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 40)
                                                                                    {
                                                                                      return 0;
                                                                                    }
                                                                                  }

                                                                                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 39)
                                                                                  {
                                                                                    return 0;
                                                                                  }
                                                                                }

                                                                                else if (a2[2].i8[0] != 6 || a2->i64[0] != 38)
                                                                                {
                                                                                  return 0;
                                                                                }
                                                                              }

                                                                              else if (a2[2].i8[0] != 6 || a2->i64[0] != 37)
                                                                              {
                                                                                return 0;
                                                                              }
                                                                            }

                                                                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 36)
                                                                            {
                                                                              return 0;
                                                                            }
                                                                          }

                                                                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 35)
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 34)
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 33)
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 32)
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 31)
                                                                  {
                                                                    return 0;
                                                                  }
                                                                }

                                                                else if (a2[2].i8[0] != 6 || a2->i64[0] != 30)
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else if (a2[2].i8[0] != 6 || a2->i64[0] != 29)
                                                              {
                                                                return 0;
                                                              }
                                                            }

                                                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 28)
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 27)
                                                          {
                                                            return 0;
                                                          }
                                                        }

                                                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 26)
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 25)
                                                      {
                                                        return 0;
                                                      }
                                                    }

                                                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 24)
                                                    {
                                                      return 0;
                                                    }
                                                  }

                                                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 23)
                                                  {
                                                    return 0;
                                                  }
                                                }

                                                else if (a2[2].i8[0] != 6 || a2->i64[0] != 22)
                                                {
                                                  return 0;
                                                }
                                              }

                                              else if (a2[2].i8[0] != 6 || a2->i64[0] != 21)
                                              {
                                                return 0;
                                              }
                                            }

                                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 20)
                                            {
                                              return 0;
                                            }
                                          }

                                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 19)
                                          {
                                            return 0;
                                          }
                                        }

                                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 18)
                                        {
                                          return 0;
                                        }
                                      }

                                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 17)
                                      {
                                        return 0;
                                      }
                                    }

                                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 16)
                                    {
                                      return 0;
                                    }
                                  }

                                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 15)
                                  {
                                    return 0;
                                  }
                                }

                                else if (a2[2].i8[0] != 6 || a2->i64[0] != 14)
                                {
                                  return 0;
                                }
                              }

                              else if (a2[2].i8[0] != 6 || a2->i64[0] != 13)
                              {
                                return 0;
                              }
                            }

                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 12)
                            {
                              return 0;
                            }
                          }

                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 11)
                          {
                            return 0;
                          }
                        }

                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 10)
                        {
                          return 0;
                        }
                      }

                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 9)
                      {
                        return 0;
                      }
                    }

                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 8)
                    {
                      return 0;
                    }
                  }

                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 7)
                  {
                    return 0;
                  }
                }

                else if (a2[2].i8[0] != 6 || a2->i64[0] != 6)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 6 || a2->i64[0] != 5)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 6 || a2->i64[0] != 4)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 6 || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else if (a2[2].i8[0] != 6 || a2->i64[0] != 2)
        {
          return 0;
        }
      }

      else if (a2[2].i8[0] != 6 || a2->i64[0] != 1)
      {
        return 0;
      }

      if (a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
      {
        return 0;
      }
    }

    else
    {
      if (a2[2].i8[0] != 6)
      {
        return 0;
      }

      v14 = vorrq_s8(*a2, a2[1]);
      if (vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (v7 != 3)
  {
    if (a2[2].i8[0] == 4)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (a2[2].i8[0] != 3)
  {
    return 0;
  }

LABEL_27:
  if (v3 == a2->i64[0] && v4 == a2->i64[1])
  {
    return 1;
  }

LABEL_30:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10002C3F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemViewType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C468(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *(result + 32) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PrimarySettingsListItemViewType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002C51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *(a1 + 32);
    if (v4 > 6)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PrimarySettingsListItemViewType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 5u)
  {
    if (((1 << a5) & 0x3A) != 0)
    {
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10002C634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C7B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
  }

  return result;
}

uint64_t sub_10002C7D0(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10002C7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C8C0(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002C928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListSectionModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CA38(uint64_t a1)
{
  v2 = type metadata accessor for PrimarySettingsListSectionModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002CA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CB58()
{
  v1 = *v0;
  v13 = _typeName(_:qualified:)();
  v14 = v2;
  v3._countAndFlagsBits = 0x203A6469207B20;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4 = *(v0 + 3);
  v15[0] = *(v0 + 2);
  v15[1] = v4;
  v16 = *(v0 + 64);
  v5 = sub_10002698C(v15, v12);
  v6 = sub_100026A58(v5);
  v8 = v7;
  sub_100026A04(v15);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32032;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  return v13;
}

unint64_t sub_10002CC5C()
{
  result = qword_10015C2B0;
  if (!qword_10015C2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015C2B0);
  }

  return result;
}

uint64_t sub_10002CE7C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_10002CE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemViewType();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D10C(uint64_t a1)
{
  v2 = type metadata accessor for PrimarySettingsListItemModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D348()
{
  v12 = _typeName(_:qualified:)();
  v13 = v1;
  v2._countAndFlagsBits = 0x203A6469207B20;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v3;
  v15 = *(v0 + 32);
  v4 = sub_10002698C(v14, v11);
  v5 = sub_100026A58(v4);
  v7 = v6;
  sub_100026A04(v14);
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32032;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  return v12;
}

uint64_t sub_10002D408()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_10002D348();
}

uint64_t sub_10002D778(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_10002D78C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

id sub_10002D7CC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void *sub_10002D8D4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10004DED0(&unk_10015ED80, &qword_100115FC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002D948(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002D994(a1, a2);
  sub_10002DAC4(&off_10014CBE8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002D994(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10002D8D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002D8D4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10002DAC4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000B883C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10002DBB0()
{
  v43 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v47 = *(v43 - 8);
  v0 = *(v47 + 64);
  __chkstk_darwin(v43);
  v42 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  __chkstk_darwin(v2);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GenerativeModelsAvailability();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v14 + 8))(v17, v13);
  GenerativeModelsAvailability.availability.getter();
  (*(v6 + 16))(v10, v12, v5);
  if ((*(v6 + 88))(v10, v5) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v40 = v19;
    v41 = v18;
    (*(v6 + 96))(v10, v5);
    (*(v45 + 32))(v44, v10, v46);
    v23 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v24 = v47;
    v26 = v42;
    v25 = v43;
    v39 = *(v47 + 104);
    v39(v42, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.deviceNotCapable(_:), v43);
    v27 = sub_100061E00(v26, v23);

    v28 = v25;
    v29 = *(v24 + 8);
    v47 = v24 + 8;
    v29(v26, v28);
    if (v27)
    {
      (*(v45 + 8))(v44, v46);
      (*(v6 + 8))(v12, v5);
      (*(v40 + 8))(v22, v41);
      v30 = 0;
    }

    else
    {
      v32 = v44;
      v33 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
      v35 = v42;
      v34 = v43;
      v39(v42, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.regionIneligible(_:), v43);
      v36 = sub_100061E00(v35, v33);

      v29(v35, v34);
      (*(v45 + 8))(v32, v46);
      (*(v6 + 8))(v12, v5);
      (*(v40 + 8))(v22, v41);
      v30 = v36 ^ 1;
    }
  }

  else
  {
    v31 = *(v6 + 8);
    v31(v12, v5);
    (*(v19 + 8))(v22, v18);
    v31(v10, v5);
    v30 = 1;
  }

  return v30 & 1;
}

uint64_t sub_10002E120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PrimarySettingsListItemViewType();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v61 - v13;
  v15 = type metadata accessor for PrimarySettingsListItemModel();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v70 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v79 = &v61 - v20;
  result = __chkstk_darwin(v19);
  v24 = &v61 - v23;
  v63 = a2;
  if (a3 != a2)
  {
    v25 = result;
    v26 = *a4;
    v27 = *(v22 + 72);
    v28 = *a4 + v27 * (a3 - 1);
    v68 = -v27;
    v69 = v26;
    v29 = a1 - a3;
    v62 = v27;
    v30 = v26 + v27 * a3;
    v72 = result;
    v73 = v8;
    v71 = &v61 - v23;
LABEL_6:
    v66 = v28;
    v67 = a3;
    v64 = v30;
    v65 = v29;
    v31 = v29;
    while (1)
    {
      sub_10002E9A8(v30, v24, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E9A8(v28, v79, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E9A8(&v24[*(v25 + 20)], v14, type metadata accessor for PrimarySettingsListItemViewType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v41 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
          }

          else
          {
            v41 = type metadata accessor for PrimarySettingsListItemViewType;
          }

          sub_10002E888(v14, v41);
          v33 = 0;
          v34 = 0;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v42 = *v14;
          v43 = *(v14 + 1);
          v34 = *(v14 + 4);
          v74 = *(v14 + 3);
          v44 = *(v14 + 5);
          sub_10002A748(v42, v43, v14[16]);
          v33 = v74;
        }

        else
        {
          v33 = *v14;
          v34 = *(v14 + 1);
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 7)
        {
          if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
          {
            v33 = *(v14 + 3);
            v34 = *(v14 + 4);
            sub_10002A748(*v14, *(v14 + 1), v14[16]);
            goto LABEL_26;
          }

LABEL_18:
          v38 = *v14;
          v39 = *(v14 + 1);
          v34 = *(v14 + 4);
          v74 = *(v14 + 3);
          v40 = *(v14 + 6);
          sub_10002A748(v38, v39, v14[16]);
LABEL_19:
          v33 = v74;

          goto LABEL_26;
        }

        if (EnumCaseMultiPayload == 8)
        {
          goto LABEL_18;
        }

        if (EnumCaseMultiPayload == 9)
        {
          v35 = *v14;
          v36 = *(v14 + 1);
          v34 = *(v14 + 4);
          v74 = *(v14 + 3);
          v37 = *(v14 + 6);
          sub_100054F18(v35, v36, v14[16]);
          goto LABEL_19;
        }

        v33 = *(v14 + 3);
        v34 = *(v14 + 4);
        sub_100054F18(*v14, *(v14 + 1), v14[16]);
      }

LABEL_26:
      sub_10002E9A8(v79 + *(v25 + 20), v12, type metadata accessor for PrimarySettingsListItemViewType);
      v45 = swift_getEnumCaseMultiPayload();
      if (v45 <= 4)
      {
        if (v45 <= 1)
        {
          if (v45)
          {
            v54 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
          }

          else
          {
            v54 = type metadata accessor for PrimarySettingsListItemViewType;
          }

          sub_10002E888(v12, v54);
          v46 = 0;
          v47 = 0;
          if (!v34)
          {
LABEL_58:
            if (v47)
            {
            }

            sub_10002E888(v79, type metadata accessor for PrimarySettingsListItemModel);
            v24 = v71;
            result = sub_10002E888(v71, type metadata accessor for PrimarySettingsListItemModel);
            v25 = v72;
LABEL_5:
            a3 = v67 + 1;
            v28 = v66 + v62;
            v29 = v65 - 1;
            v30 = v64 + v62;
            if (v67 + 1 == v63)
            {
              return result;
            }

            goto LABEL_6;
          }
        }

        else if (v45 == 2)
        {
          v55 = *v12;
          v56 = *(v12 + 1);
          v46 = *(v12 + 3);
          v47 = *(v12 + 4);
          v74 = v33;
          v57 = *(v12 + 5);
          sub_10002A748(v55, v56, v12[16]);
          v33 = v74;

          if (!v34)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v46 = *v12;
          v47 = *(v12 + 1);
          if (!v34)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            v46 = *(v12 + 3);
            v47 = *(v12 + 4);
            sub_10002A748(*v12, *(v12 + 1), v12[16]);
            if (!v34)
            {
              goto LABEL_58;
            }

            goto LABEL_50;
          }

LABEL_39:
          v51 = *v12;
          v52 = *(v12 + 1);
          v46 = *(v12 + 3);
          v47 = *(v12 + 4);
          v74 = v33;
          v53 = *(v12 + 6);
          sub_10002A748(v51, v52, v12[16]);
LABEL_40:
          v33 = v74;

          if (!v34)
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }

        if (v45 == 8)
        {
          goto LABEL_39;
        }

        if (v45 == 9)
        {
          v48 = *v12;
          v49 = *(v12 + 1);
          v46 = *(v12 + 3);
          v47 = *(v12 + 4);
          v74 = v33;
          v50 = *(v12 + 6);
          sub_100054F18(v48, v49, v12[16]);
          goto LABEL_40;
        }

        v46 = *(v12 + 3);
        v47 = *(v12 + 4);
        sub_100054F18(*v12, *(v12 + 1), v12[16]);
        if (!v34)
        {
          goto LABEL_58;
        }
      }

LABEL_50:
      if (v47)
      {
        v77 = v33;
        v78 = v34;
        v75 = v46;
        v76 = v47;
        sub_10002EAE0();
        v58 = StringProtocol.localizedStandardCompare<A>(_:)();

        sub_10002E888(v79, type metadata accessor for PrimarySettingsListItemModel);
        v24 = v71;
        result = sub_10002E888(v71, type metadata accessor for PrimarySettingsListItemModel);
        v25 = v72;
        if (v58 != -1)
        {
          goto LABEL_5;
        }

        if (!v69)
        {
          goto LABEL_60;
        }
      }

      else
      {

        sub_10002E888(v79, type metadata accessor for PrimarySettingsListItemModel);
        v24 = v71;
        result = sub_10002E888(v71, type metadata accessor for PrimarySettingsListItemModel);
        v25 = v72;
        if (!v69)
        {
LABEL_60:
          __break(1u);
          return result;
        }
      }

      v59 = v70;
      sub_10002C634(v30, v70);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002C634(v59, v28);
      v28 += v68;
      v30 += v68;
      if (__CFADD__(v31++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

Swift::Int sub_10002E75C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for PrimarySettingsListItemModel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for PrimarySettingsListItemModel() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10005C190(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10002E120(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002E888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002E8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002E948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002E9A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002EAE0()
{
  result = qword_10015EB20;
  if (!qword_10015EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EB20);
  }

  return result;
}

BOOL sub_10002EB34()
{
  keyExistsAndHasValidFormat = 0;
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t sub_10002EC04()
{
  _StringGuts.grow(_:)(30);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();

  v2._countAndFlagsBits = 0x203A6469207B20;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v8 = *(v0 + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id);
  v9 = *(v0 + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id + 16);
  v10 = *(v0 + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_id + 32);
  v4._countAndFlagsBits = sub_100026A58(v3);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x6C7561666564202CLL;
  v5._object = 0xEF203A79654B7374;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey));
  v6._countAndFlagsBits = 32032;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return v1;
}

uint64_t sub_10002ED3C(uint64_t a1)
{
  v2 = type metadata accessor for PrimarySettingsListItemModel();
  v71 = *(v2 - 8);
  v3 = *(v71 + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v62 - v6;
  v8 = type metadata accessor for PrimarySettingsListSectionModel();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v68 = &v62 - v14;
  v66 = *(a1 + 16);
  if (v66)
  {
    v15 = 0;
    v16 = &_swiftEmptyDictionarySingleton;
    v65 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v17 = *(v12 + 28);
    v63 = a1;
    v64 = v17;
    v70 = &_swiftEmptyDictionarySingleton;
    v62 = v13;
    while (1)
    {
      if (v15 >= *(a1 + 16))
      {
        goto LABEL_35;
      }

      v18 = *(v13 + 72);
      v67 = v15;
      v19 = v65 + v18 * v15;
      v20 = v68;
      sub_10002F2E0(v19, v68, type metadata accessor for PrimarySettingsListSectionModel);
      v22 = *v20;
      v21 = *(v20 + 8);
      v23 = *(v20 + 16);
      sub_10002F2E0(v20, v69, type metadata accessor for PrimarySettingsListSectionModel);
      v24 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v24;
      v27 = sub_10002F348(v22, v21, v23);
      v28 = v24[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v26;
      if (v24[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B9DA8();
        }
      }

      else
      {
        sub_10002F55C(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_10002F348(v22, v21, v23);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_39;
        }

        v27 = v32;
      }

      v34 = v73;
      v70 = v73;
      if (v31)
      {
        sub_1000C564C(v69, v73[7] + v27 * v18, type metadata accessor for PrimarySettingsListSectionModel);
      }

      else
      {
        v73[(v27 >> 6) + 8] |= 1 << v27;
        v35 = v34[6] + 24 * v27;
        *v35 = v22;
        *(v35 + 8) = v21;
        *(v35 + 16) = v23;
        sub_10002FE10(v69, v34[7] + v27 * v18, type metadata accessor for PrimarySettingsListSectionModel);
        v36 = v70[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_37;
        }

        v70[2] = v38;
        sub_100025974(v22, v21, v23);
      }

      v39 = v68;
      v40 = *(v68 + v64);

      sub_10002CA38(v39);
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = 0;
        v43 = v40 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
        while (1)
        {
          if (v42 >= *(v40 + 16))
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v45 = *(v71 + 72);
          sub_10002F2E0(v43 + v45 * v42, v7, type metadata accessor for PrimarySettingsListItemModel);
          v46 = *(v7 + 1);
          v74 = *v7;
          v75 = v46;
          v76 = v7[32];
          sub_10002FE10(v7, v72, type metadata accessor for PrimarySettingsListItemModel);
          sub_10002698C(&v74, &v73);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v73 = v16;
          v48 = sub_100030300(&v74);
          v50 = v16[2];
          v51 = (v49 & 1) == 0;
          v37 = __OFADD__(v50, v51);
          v52 = v50 + v51;
          if (v37)
          {
            goto LABEL_33;
          }

          v53 = v49;
          if (v16[3] < v52)
          {
            break;
          }

          if (v47)
          {
            goto LABEL_25;
          }

          v60 = v48;
          sub_1000B9B18();
          v48 = v60;
          if (v53)
          {
LABEL_17:
            v44 = v48;
            sub_100026A04(&v74);
            v16 = v73;
            sub_1000C564C(v72, v73[7] + v44 * v45, type metadata accessor for PrimarySettingsListItemModel);
            goto LABEL_18;
          }

LABEL_26:
          v16 = v73;
          v73[(v48 >> 6) + 8] |= 1 << v48;
          v55 = v16[6] + 40 * v48;
          v56 = v76;
          v57 = v75;
          *v55 = v74;
          *(v55 + 16) = v57;
          *(v55 + 32) = v56;
          sub_10002FE10(v72, v16[7] + v48 * v45, type metadata accessor for PrimarySettingsListItemModel);
          v58 = v16[2];
          v37 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v37)
          {
            goto LABEL_34;
          }

          v16[2] = v59;
LABEL_18:
          if (v41 == ++v42)
          {
            goto LABEL_3;
          }
        }

        sub_10003036C(v52, v47);
        v48 = sub_100030300(&v74);
        if ((v53 & 1) != (v54 & 1))
        {
          goto LABEL_38;
        }

LABEL_25:
        if (v53)
        {
          goto LABEL_17;
        }

        goto LABEL_26;
      }

LABEL_3:
      v15 = v67 + 1;

      v13 = v62;
      a1 = v63;
      if (v15 == v66)
      {
        return a1;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_39:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v70 = &_swiftEmptyDictionarySingleton;
    return a1;
  }

  return result;
}

uint64_t sub_10002F2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002F348(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  sub_10002F3D4(v10, a1, a2, a3);
  v8 = Hasher._finalize()();

  return sub_10002FA68(a1, a2, a3, v8);
}

void sub_10002F3D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      v4 = 6;
    }

    else
    {
      v4 = 5;
    }

LABEL_7:
    Hasher._combine(_:)(v4);

    String.hash(into:)();
    return;
  }

  if (a4 == 2)
  {
    v4 = 7;
    goto LABEL_7;
  }

  switch(a2)
  {
    case 1:
      v5 = 1;
      break;
    case 2:
      v5 = 2;
      break;
    case 3:
      v5 = 3;
      break;
    case 4:
      v5 = 4;
      break;
    case 5:
      v5 = 8;
      break;
    case 6:
      v5 = 9;
      break;
    case 7:
      v5 = 10;
      break;
    case 8:
      v5 = 11;
      break;
    case 9:
      v5 = 12;
      break;
    case 10:
      v5 = 13;
      break;
    case 11:
      v5 = 14;
      break;
    case 12:
      v5 = 15;
      break;
    case 13:
      v5 = 16;
      break;
    case 14:
      v5 = 17;
      break;
    case 15:
      v5 = 18;
      break;
    case 16:
      v5 = 19;
      break;
    case 17:
      v5 = 20;
      break;
    default:
      v5 = 0;
      break;
  }

  Hasher._combine(_:)(v5);
}

uint64_t sub_10002F55C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PrimarySettingsListSectionModel();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  __chkstk_darwin(v6 - 8);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_10004DED0(&qword_10015EF38, &qword_100116178);
  v50 = a2;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (!*(v9 + 16))
  {
LABEL_62:

    goto LABEL_63;
  }

  v47 = v2;
  v48 = v9;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = v11 + 64;
  while (v17)
  {
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_17:
    v25 = v22 | (v13 << 6);
    v26 = *(v9 + 56);
    v27 = *(v9 + 48) + 24 * v25;
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    v31 = *(v49 + 72);
    v32 = v26 + v31 * v25;
    if (v50)
    {
      sub_100030854(v32, v52, type metadata accessor for PrimarySettingsListSectionModel);
    }

    else
    {
      sub_10000822C(v32, v52, type metadata accessor for PrimarySettingsListSectionModel);
      sub_100025974(v28, v29, v30);
    }

    v33 = *(v12 + 40);
    Hasher.init(_seed:)();
    v51 = v31;
    if (v30 <= 1)
    {
      if (v30)
      {
        v34 = 6;
      }

      else
      {
        v34 = 5;
      }

      goto LABEL_26;
    }

    if (v30 == 2)
    {
      v34 = 7;
LABEL_26:
      Hasher._combine(_:)(v34);
      String.hash(into:)();
      goto LABEL_47;
    }

    switch(v28)
    {
      case 1:
        v35 = 1;
        break;
      case 2:
        v35 = 2;
        break;
      case 3:
        v35 = 3;
        break;
      case 4:
        v35 = 4;
        break;
      case 5:
        v35 = 8;
        break;
      case 6:
        v35 = 9;
        break;
      case 7:
        v35 = 10;
        break;
      case 8:
        v35 = 11;
        break;
      case 9:
        v35 = 12;
        break;
      case 10:
        v35 = 13;
        break;
      case 11:
        v35 = 14;
        break;
      case 12:
        v35 = 15;
        break;
      case 13:
        v35 = 16;
        break;
      case 14:
        v35 = 17;
        break;
      case 15:
        v35 = 18;
        break;
      case 16:
        v35 = 19;
        break;
      case 17:
        v35 = 20;
        break;
      default:
        v35 = 0;
        break;
    }

    Hasher._combine(_:)(v35);
LABEL_47:
    v36 = Hasher._finalize()();
    v37 = -1 << *(v12 + 32);
    v38 = v36 & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v19 + 8 * (v38 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v38) & ~*(v19 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v40 = 0;
      v41 = (63 - v37) >> 6;
      do
      {
        if (++v39 == v41 && (v40 & 1) != 0)
        {
          goto LABEL_65;
        }

        v42 = v39 == v41;
        if (v39 == v41)
        {
          v39 = 0;
        }

        v40 |= v42;
        v43 = *(v19 + 8 * v39);
      }

      while (v43 == -1);
      v20 = __clz(__rbit64(~v43)) + (v39 << 6);
    }

    *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v21 = *(v12 + 48) + 24 * v20;
    *v21 = v28;
    *(v21 + 8) = v29;
    *(v21 + 16) = v30;
    sub_100030854(v52, *(v12 + 56) + v51 * v20, type metadata accessor for PrimarySettingsListSectionModel);
    ++*(v12 + 16);
    v9 = v48;
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      JUMPOUT(0x10002FA20);
    }

    if (v13 >= v18)
    {
      break;
    }

    v24 = v14[v13];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v17 = (v24 - 1) & v24;
      goto LABEL_17;
    }
  }

  if (v50)
  {
    v44 = 1 << *(v9 + 32);
    v3 = v47;
    if (v44 >= 64)
    {
      bzero(v14, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v44;
    }

    *(v9 + 16) = 0;
    goto LABEL_62;
  }

  v3 = v47;
LABEL_63:
  *v3 = v12;
  return result;
}

unint64_t sub_10002FA68(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if (((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return v7;
  }

  v11 = ~v6;
  v12 = *(v4 + 48);
  v13 = a3;
  v14 = a1 != 17;
  v15 = a1 != 16;
  v16 = a1 != 15;
  v17 = a1 != 14;
  v18 = a1 != 13;
  v19 = a1 != 12;
  v20 = a1 != 11;
  v21 = a1 != 10;
  v22 = a1 == 9;
  v23 = a1 == 8;
  v24 = a1 == 7;
  v25 = a1 == 6;
  v26 = a1 == 5;
  v27 = a1 == 4;
  v28 = a1 == 3;
  v29 = a1 == 2;
  v30 = a1 == 1;
  if (a2)
  {
    v14 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  v31 = v13 == 3;
  if (!v31)
  {
    v22 = 0;
  }

  v69 = v22;
  v32 = v31 && v23;
  v68 = v32;
  v33 = v31 && v24;
  v34 = v31 && v25;
  v66 = v34;
  v67 = v33;
  v35 = v31 && v26;
  v36 = v31 && v27;
  v64 = v36;
  v65 = v35;
  v37 = v31 && v28;
  v38 = v31 && v29;
  v62 = v38;
  v63 = v37;
  v39 = v31 && v30;
  if (!v31)
  {
    v14 = 1;
  }

  v60 = v14;
  v61 = v39;
  v40 = !v31 || v15;
  v59 = v40;
  v41 = !v31 || v16;
  v42 = !v31 || v17;
  v57 = v42;
  v58 = v41;
  v43 = !v31 || v18;
  v44 = !v31 || v19;
  v55 = v44;
  v56 = v43;
  v45 = !v31 || v20;
  v54 = v45;
  v46 = !v31 || v21;
  if (a2 | a1)
  {
    v47 = 0;
  }

  else
  {
    v47 = v31;
  }

  while (1)
  {
    v48 = (v12 + 24 * v7);
    v49 = *v48;
    v50 = v48[1];
    v51 = *(v48 + 16);
    if (v51 > 1)
    {
      break;
    }

    if (v51)
    {
      if (a3 != 1)
      {
        goto LABEL_57;
      }
    }

    else if (a3)
    {
      goto LABEL_57;
    }

LABEL_64:
    v52 = v49 == a1 && v50 == a2;
    if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v7;
    }

LABEL_57:
    v7 = (v7 + 1) & v11;
    if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return v7;
    }
  }

  if (v51 == 2)
  {
    if (a3 != 2)
    {
      goto LABEL_57;
    }

    goto LABEL_64;
  }

  switch(v49)
  {
    case 1:
      if (!v61)
      {
        goto LABEL_57;
      }

      break;
    case 2:
      if (!v62)
      {
        goto LABEL_57;
      }

      break;
    case 3:
      if (!v63)
      {
        goto LABEL_57;
      }

      break;
    case 4:
      if (!v64)
      {
        goto LABEL_57;
      }

      break;
    case 5:
      if (!v65)
      {
        goto LABEL_57;
      }

      break;
    case 6:
      if (!v66)
      {
        goto LABEL_57;
      }

      break;
    case 7:
      if (!v67)
      {
        goto LABEL_57;
      }

      break;
    case 8:
      if (!v68)
      {
        goto LABEL_57;
      }

      break;
    case 9:
      if (!v69)
      {
        goto LABEL_57;
      }

      break;
    case 10:
      if (v46)
      {
        goto LABEL_57;
      }

      break;
    case 11:
      if (v54)
      {
        goto LABEL_57;
      }

      break;
    case 12:
      if (v55)
      {
        goto LABEL_57;
      }

      break;
    case 13:
      if (v56)
      {
        goto LABEL_57;
      }

      break;
    case 14:
      if (v57)
      {
        goto LABEL_57;
      }

      break;
    case 15:
      if (v58)
      {
        goto LABEL_57;
      }

      break;
    case 16:
      if (v59)
      {
        goto LABEL_57;
      }

      break;
    case 17:
      if (v60)
      {
        goto LABEL_57;
      }

      break;
    default:
      if (!v47)
      {
        goto LABEL_57;
      }

      break;
  }

  return v7;
}

uint64_t sub_10002FE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10002FE78()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  if (v5 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v5 == 1)
      {
        v6 = 3;
LABEL_14:
        Hasher._combine(_:)(v6);
        goto LABEL_15;
      }

      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    Hasher._combine(_:)(v7);
    String.hash(into:)();
LABEL_15:

    String.hash(into:)();
    return;
  }

  if (*(v0 + 32) <= 4u)
  {
    if (v5 == 3)
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }

    goto LABEL_14;
  }

  if (v5 == 5)
  {
    v6 = 7;
    goto LABEL_14;
  }

  if (v4 | v2 | v1 | v3)
  {
    v8 = v4 | v2 | v3;
    if (v1 != 1 || v8)
    {
      if (v1 != 2 || v8)
      {
        if (v1 != 3 || v8)
        {
          if (v1 != 4 || v8)
          {
            if (v1 != 5 || v8)
            {
              if (v1 != 6 || v8)
              {
                if (v1 != 7 || v8)
                {
                  if (v1 != 8 || v8)
                  {
                    if (v1 != 9 || v8)
                    {
                      if (v1 != 10 || v8)
                      {
                        if (v1 != 11 || v8)
                        {
                          if (v1 != 12 || v8)
                          {
                            if (v1 != 13 || v8)
                            {
                              if (v1 != 14 || v8)
                              {
                                if (v1 != 15 || v8)
                                {
                                  if (v1 != 16 || v8)
                                  {
                                    if (v1 != 17 || v8)
                                    {
                                      if (v1 != 18 || v8)
                                      {
                                        if (v1 != 19 || v8)
                                        {
                                          if (v1 != 20 || v8)
                                          {
                                            if (v1 != 21 || v8)
                                            {
                                              if (v1 != 22 || v8)
                                              {
                                                if (v1 != 23 || v8)
                                                {
                                                  if (v1 != 24 || v8)
                                                  {
                                                    if (v1 != 25 || v8)
                                                    {
                                                      if (v1 != 26 || v8)
                                                      {
                                                        if (v1 != 27 || v8)
                                                        {
                                                          if (v1 != 28 || v8)
                                                          {
                                                            if (v1 != 29 || v8)
                                                            {
                                                              if (v1 != 30 || v8)
                                                              {
                                                                if (v1 != 31 || v8)
                                                                {
                                                                  if (v1 != 32 || v8)
                                                                  {
                                                                    if (v1 != 33 || v8)
                                                                    {
                                                                      if (v1 != 34 || v8)
                                                                      {
                                                                        if (v1 != 35 || v8)
                                                                        {
                                                                          if (v1 != 36 || v8)
                                                                          {
                                                                            if (v1 != 37 || v8)
                                                                            {
                                                                              if (v1 != 38 || v8)
                                                                              {
                                                                                if (v1 != 39 || v8)
                                                                                {
                                                                                  if (v1 != 40 || v8)
                                                                                  {
                                                                                    if (v1 != 41 || v8)
                                                                                    {
                                                                                      if (v1 != 42 || v8)
                                                                                      {
                                                                                        if (v1 != 43 || v8)
                                                                                        {
                                                                                          if (v1 != 44 || v8)
                                                                                          {
                                                                                            v9 = 51;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v9 = 50;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v9 = 49;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v9 = 48;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v9 = 47;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v9 = 46;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v9 = 45;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v9 = 44;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v9 = 43;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v9 = 42;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v9 = 41;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v9 = 40;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v9 = 39;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v9 = 38;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v9 = 37;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v9 = 36;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v9 = 35;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v9 = 34;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v9 = 33;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v9 = 32;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v9 = 31;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v9 = 30;
                                                  }
                                                }

                                                else
                                                {
                                                  v9 = 29;
                                                }
                                              }

                                              else
                                              {
                                                v9 = 28;
                                              }
                                            }

                                            else
                                            {
                                              v9 = 27;
                                            }
                                          }

                                          else
                                          {
                                            v9 = 26;
                                          }
                                        }

                                        else
                                        {
                                          v9 = 25;
                                        }
                                      }

                                      else
                                      {
                                        v9 = 24;
                                      }
                                    }

                                    else
                                    {
                                      v9 = 23;
                                    }
                                  }

                                  else
                                  {
                                    v9 = 22;
                                  }
                                }

                                else
                                {
                                  v9 = 21;
                                }
                              }

                              else
                              {
                                v9 = 20;
                              }
                            }

                            else
                            {
                              v9 = 19;
                            }
                          }

                          else
                          {
                            v9 = 18;
                          }
                        }

                        else
                        {
                          v9 = 17;
                        }
                      }

                      else
                      {
                        v9 = 16;
                      }
                    }

                    else
                    {
                      v9 = 15;
                    }
                  }

                  else
                  {
                    v9 = 14;
                  }
                }

                else
                {
                  v9 = 13;
                }
              }

              else
              {
                v9 = 12;
              }
            }

            else
            {
              v9 = 11;
            }
          }

          else
          {
            v9 = 10;
          }
        }

        else
        {
          v9 = 9;
        }
      }

      else
      {
        v9 = 8;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  Hasher._combine(_:)(v9);
}

unint64_t sub_100030300(int8x16_t *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10002FE78();
  v4 = Hasher._finalize()();

  return sub_100030730(a1, v4);
}

uint64_t sub_10003036C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PrimarySettingsListItemModel();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v6 - 8);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_10004DED0(&qword_10015EF40, &qword_100116180);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v44 = v2;
    v45 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v49 = (v17 - 1) & v17;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(v9 + 56);
      v28 = *(v9 + 48) + 40 * v26;
      v29 = *v28;
      v30 = *(v28 + 8);
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      v33 = *(v28 + 32);
      v48 = *(v46 + 72);
      v34 = v27 + v48 * v26;
      if (v47)
      {
        sub_100030854(v34, v50, type metadata accessor for PrimarySettingsListItemModel);
      }

      else
      {
        sub_10000822C(v34, v50, type metadata accessor for PrimarySettingsListItemModel);
        sub_100029920(v29, v30, v32, v31, v33);
      }

      *&v51 = v29;
      *(&v51 + 1) = v30;
      *&v52 = v32;
      *(&v52 + 1) = v31;
      v53 = v33;
      v35 = *(v12 + 40);
      Hasher.init(_seed:)();
      sub_10002FE78();
      result = Hasher._finalize()();
      v36 = -1 << *(v12 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v19 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v9 = v45;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v19 + 8 * v38);
          if (v42 != -1)
          {
            v20 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v37) & ~*(v19 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v9 = v45;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 40 * v20;
      v22 = v52;
      *v21 = v51;
      *(v21 + 16) = v22;
      *(v21 + 32) = v53;
      result = sub_100030854(v50, *(v12 + 56) + v48 * v20, type metadata accessor for PrimarySettingsListItemModel);
      ++*(v12 + 16);
      v17 = v49;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v49 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v9 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v14, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v43;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_100030730(int8x16_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 40 * v4;
      v8 = *(v7 + 16);
      v10[0] = *v7;
      v10[1] = v8;
      v11 = *(v7 + 32);
      if (sub_10002BB48(v10, a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000307EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100030854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000308BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v8 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v9 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8);
  v10 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16);
  sub_100030A7C(v8);
  v11 = sub_100030B14(v8, v9, v10, a1, a2, a3);
  sub_100030AC8(v8);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100030AC8(a1);
  }

  else
  {
    v13 = *v7;
    v14 = v7[1];
    v15 = v7[2];
    *v7 = a1;
    v7[1] = a2;
    v7[2] = a3;
    sub_100030AC8(v13);

    sub_100030BD8();
  }
}

uint64_t sub_100030A7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100030AC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_100030B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (a1 | a4) == 0;
  if (a1 && a4)
  {

    if (sub_10006C7EC(a1, a4) & 1) != 0 && (sub_1000A2E68(a2, a5))
    {
      v6 = sub_1000A3B54(a3, a6);
    }

    else
    {
      v6 = 0;
    }
  }

  return (v6 & 1) == 0;
}

void sub_100030BD8()
{
  v1 = v0;
  v2 = type metadata accessor for PrimarySettingsListSectionModel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel___observationRegistrar;
  v58 = v0;
  v7 = sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel;
  v9 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  if (v9)
  {
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    swift_getKeyPath();
    v58 = v0;

    v51 = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100031408(v0, v9, v11);
      swift_unknownObjectRelease();
    }

    if (qword_10015ABA8 != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v12 = byte_1001698C0;

      if (v12 != 1)
      {

        return;
      }

      v48 = *(v9 + 16);
      if (!v48)
      {
        break;
      }

      v13 = 0;
      v47 = *(v2 + 28);
      v55 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager;
      v46 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v45 = v3;
      v44 = v9;
      while (v13 < *(v9 + 16))
      {
        v14 = *(v3 + 72);
        v50 = v13;
        v15 = v49;
        sub_10002EA78(v46 + v14 * v13, v49, type metadata accessor for PrimarySettingsListSectionModel);
        v16 = *(v15 + v47);

        sub_10002E948(v15, type metadata accessor for PrimarySettingsListSectionModel);
        v54 = *(v16 + 16);
        if (v54)
        {
          v17 = 0;
          v53 = *(type metadata accessor for PrimarySettingsListItemModel() - 8);
          v52 = v16 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
          while (v17 < *(v16 + 16))
          {
            v19 = (v52 + *(v53 + 72) * v17);
            v20 = v19[1];
            v60 = *v19;
            v61 = v20;
            v62 = *(v19 + 32);
            v21 = sub_100029F88();
            v24 = v21;
            v25 = v22;
            if (v23 != 2 && v23 != 1)
            {
              sub_10002A748(v21, v22, v23);
              v24 = 0;
              v25 = 0xE000000000000000;
            }

            v26 = HIBYTE(v25) & 0xF;
            if ((v25 & 0x2000000000000000) == 0)
            {
              v26 = v24 & 0xFFFFFFFFFFFFLL;
            }

            if (v26)
            {
              swift_getKeyPath();
              v58 = v1;
              v9 = v6;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v27 = *(v1 + v55);
              swift_beginAccess();
              v28 = *(v27 + 24);

              v30 = sub_10002A770(v29);
              v32 = v31;
              if (*(v28 + 16) && (v33 = v30, v34 = *(v28 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v35 = Hasher._finalize()(), v36 = -1 << *(v28 + 32), v3 = v35 & ~v36, ((*(v28 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) != 0))
              {
                v2 = ~v36;
                while (1)
                {
                  v37 = (*(v28 + 48) + 16 * v3);
                  v38 = *v37 == v33 && v37[1] == v32;
                  if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v3 = (v3 + 1) & v2;
                  if (((*(v28 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                v6 = v9;
              }

              else
              {
LABEL_13:

                swift_getKeyPath();
                v58 = v1;
                v6 = v9;
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                v18 = *(v1 + v55);

                sub_1001092E0();
              }
            }

            if (++v17 == v54)
            {

              v3 = v45;
              v9 = v44;
              goto LABEL_9;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:
        v13 = v50 + 1;
        if (v50 + 1 == v48)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_41:
      swift_once();
    }

LABEL_35:

    swift_getKeyPath();
    v58 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v39 = *(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager) + 32);
    v40 = qword_10015AB98;

    v41 = v39;
    if (v40 != -1)
    {
      swift_once();
    }

    v58 = 0xD000000000000017;
    v59 = 0x8000000100123FC0;
    v56 = qword_100169898;
    v57 = unk_1001698A0;

    v56 = String.init<A>(_:)();
    v57 = v42;
    String.append<A>(contentsOf:)();
    v43 = String._bridgeToObjectiveC()();

    [v41 writeToFile:v43 atomically:1];
  }
}

uint64_t sub_100031344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10009963C(v4);
}

void sub_100031370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v5 = *(a1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v6 = *(a1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8);
  v7 = *(a1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16);
  *v4 = a2;
  v4[1] = a3;
  v4[2] = a4;
  sub_100030A7C(a2);
  sub_100030AC8(v5);
  sub_100030BD8();
}

void sub_100031408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v85 = a2;
  v81 = a1;
  v5 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v74 = &v70 - v7;
  v77 = type metadata accessor for SettingsURLDestination.Action(0);
  v8 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v78 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v87 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = &v70 - v14;
  v15 = type metadata accessor for SettingsURLDestination(0);
  v16 = *(v15 - 8);
  v83 = v15;
  v84 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v71 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v70 = &v70 - v21;
  __chkstk_darwin(v20);
  v79 = &v70 - v22;
  v72 = type metadata accessor for PrimarySettingsListItemModel();
  v23 = *(v72 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v72);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100010CD0();
  swift_getKeyPath();
  *&v92[0] = v27;
  v80 = sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v27 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
  v28 = *(v27 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8);
  v31 = *(v27 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
  v30 = *(v27 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24);
  v32 = *(v27 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32);
  sub_100031DF8(v29, v28, v31, v30, *(v27 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32));

  v33 = v87;
  v86 = v4;
  if (v32 != 255)
  {
    v93.i64[0] = v29;
    v93.i64[1] = v28;
    v75 = v31;
    v76 = v30;
    v94 = v31;
    v95 = v30;
    v96 = v32;
    v34 = sub_1000C5400(v85);
    v35 = 0;
    v36 = v34[2];
    while (1)
    {
      if (v36 == v35)
      {
        sub_100032660(v29, v28, v75, v76, v32);

LABEL_10:
        v88 = 0u;
        v89 = 0u;
        v90 = 6;
        sub_1000A57A4(&v88);
        return;
      }

      if (v35 >= v34[2])
      {
        break;
      }

      sub_10000822C(v34 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v35++, v26, type metadata accessor for PrimarySettingsListItemModel);
      v37 = *(v26 + 1);
      v97[0] = *v26;
      v97[1] = v37;
      v98 = v26[32];
      v27 = sub_10002BB48(v97, &v93);
      sub_100046460(v26, type metadata accessor for PrimarySettingsListItemModel);
      if (v27)
      {

        v38 = sub_100027320();
        sub_100032660(v29, v28, v75, v76, v32);
        swift_getKeyPath();
        v39 = v81;
        *&v92[0] = v81;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v40 = *(v39 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
        v92[2] = *(v39 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
        v92[3] = v40;
        v92[4] = *(v39 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
        v41 = *(v39 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
        v92[0] = *(v39 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
        v92[1] = v41;
        sub_100063D94(v92, &v88);
        v42 = sub_100063C90(v38, v92);
        sub_100063DF0(v92);

        v4 = v86;
        v33 = v87;
        if (v42)
        {
          goto LABEL_7;
        }

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_7:
  v43 = v33;
  v44 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  v45 = v4 + v44;
  v46 = v82;
  sub_100059CA0(v45, v82, &qword_10015ED78, &qword_100115FB8);
  v27 = v83;
  v47 = v84 + 48;
  v28 = *(v84 + 48);
  if (v28(v46, 1, v83) == 1)
  {
    v48 = &qword_10015ED78;
    v49 = &qword_100115FB8;
LABEL_21:
    sub_1000068B0(v46, v48, v49);
    return;
  }

  v32 = v79;
  sub_100030854(v46, v79, type metadata accessor for SettingsURLDestination);
  v50 = v78;
  sub_10000822C(v32 + *(v27 + 20), v78, type metadata accessor for SettingsURLDestination.Action);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100046460(v32, type metadata accessor for SettingsURLDestination);
    sub_100046460(v50, type metadata accessor for SettingsURLDestination.Action);
    return;
  }

  v51 = *(v50 + 16);
  v88 = *v50;
  v89 = v51;
  v90 = *(v50 + 32);
  if (!*(v73 + 16))
  {
    sub_100046460(v32, type metadata accessor for SettingsURLDestination);
    sub_100026A04(&v88);
LABEL_20:
    v46 = v74;
    (*(v23 + 56))(v74, 1, 1, v72);
    v48 = &unk_10015EDB0;
    v49 = &unk_100111C70;
    goto LABEL_21;
  }

  v52 = v73;
  v53 = sub_100030300(&v88);
  v55 = v54;
  sub_100026A04(&v88);
  if ((v55 & 1) == 0)
  {
    sub_100046460(v32, type metadata accessor for SettingsURLDestination);
    goto LABEL_20;
  }

  v84 = v47;
  v29 = v43;
  v56 = *(v52 + 56) + *(v23 + 72) * v53;
  v57 = v74;
  sub_10000822C(v56, v74, type metadata accessor for PrimarySettingsListItemModel);
  (*(v23 + 56))(v57, 0, 1, v72);
  sub_1000068B0(v57, &unk_10015EDB0, &unk_100111C70);
  if (qword_10015AAB8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_10000659C(v58, qword_1001696A0);
  v59 = v70;
  sub_10000822C(v32, v70, type metadata accessor for SettingsURLDestination);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v91 = v63;
    *v62 = 141558275;
    *(v62 + 4) = 1752392040;
    *(v62 + 12) = 2081;
    v64 = sub_1000F41C0();
    v65 = v59;
    v67 = v66;
    sub_100046460(v65, type metadata accessor for SettingsURLDestination);
    v68 = sub_100025CF0(v64, v67, &v91);

    *(v62 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v60, v61, "Pending URL Destination '%{private,mask.hash}s' has actionable selection now.", v62, 0x16u);
    sub_10000665C(v63);
    v27 = v83;

    v32 = v79;
  }

  else
  {

    sub_100046460(v59, type metadata accessor for SettingsURLDestination);
  }

  v69 = v71;
  sub_1000A94D8(v29);
  if (v28(v29, 1, v27) == 1)
  {
    sub_10000822C(v32, v69, type metadata accessor for SettingsURLDestination);
    if (v28(v29, 1, v27) != 1)
    {
      sub_1000068B0(v29, &qword_10015ED78, &qword_100115FB8);
    }
  }

  else
  {
    sub_100030854(v29, v69, type metadata accessor for SettingsURLDestination);
  }

  sub_1000A59A0(v69);
  sub_100046460(v69, type metadata accessor for SettingsURLDestination);
  sub_100046460(v32, type metadata accessor for SettingsURLDestination);
}

uint64_t sub_100031DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_100029920(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100031E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SettingsURLDestination.Action(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_100031F2C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 sf_isInternalInstall];

  if (v1)
  {
    if (qword_10015AB10 != -1)
    {
      swift_once();
    }

    v2 = qword_100169798;
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  byte_1001698C0 = v4;
}

uint64_t sub_10003201C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection;
  v5 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
  v6 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8);
  v7 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
  v8 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v9 = *(v4 + 32);
  *(a2 + 32) = v9;
  return sub_100031DF8(v5, v6, v7, v8, v9);
}

uint64_t sub_1000320E8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *a2;
  sub_100059CA0(v6, v5, &qword_10015E690, &qword_100115788);
  return sub_1000954AC(v6);
}

unint64_t sub_100032144()
{
  result = qword_10015B370;
  if (!qword_10015B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B370);
  }

  return result;
}

unint64_t sub_100032198()
{
  result = qword_10015E638;
  if (!qword_10015E638)
  {
    sub_100052374(&qword_10015E630, &qword_100115738);
    sub_100020BE0(&qword_10015E640, type metadata accessor for PrimarySettingsListSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E638);
  }

  return result;
}

uint64_t sub_10003224C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_10004DED0(&qword_10015E6B0, &qword_100115790);
  type metadata accessor for PrimarySettingsListSection();
  sub_1000525A0(&qword_10015E6B8, &qword_10015E6B0, &qword_100115790);
  sub_100020BE0(&qword_10015E640, type metadata accessor for PrimarySettingsListSection);
  sub_100020BE0(&qword_10015E6C0, type metadata accessor for PrimarySettingsListSectionModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000323C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100032408()
{
  result = qword_10015BF40;
  if (!qword_10015BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BF40);
  }

  return result;
}

unint64_t sub_100032460()
{
  result = qword_10015E650;
  if (!qword_10015E650)
  {
    sub_100052374(&qword_10015E610, &qword_1001156F0);
    sub_100032518();
    sub_1000525A0(&qword_10015E680, &qword_10015E688, &qword_100115758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E650);
  }

  return result;
}

unint64_t sub_100032518()
{
  result = qword_10015E658;
  if (!qword_10015E658)
  {
    sub_100052374(&qword_10015E648, &qword_100115740);
    sub_1000525A0(&qword_10015E660, &qword_10015E668, &qword_100115748);
    sub_1000525A0(&qword_10015E670, &qword_10015E678, &qword_100115750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E658);
  }

  return result;
}

uint64_t sub_1000325FC()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169820);
  sub_10000659C(v0, qword_100169820);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100032660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_10002C5C0(a1, a2, a3, a4, a5);
  }

  return a1;
}

double sub_100032674()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v8 = v15;
  }

  swift_getKeyPath();
  v15 = v8;
  sub_100020BE0(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v8 + 16);

  result = 0.0;
  if (v10 != 2)
  {

    if ((v7 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v2 + 8))(v5, v1);
      v6 = v15;
    }

    swift_getKeyPath();
    v15 = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v6 + 16);

    result = 1.0;
    if (v13 == 3)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_100032944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *(result + 32) = ~a2;
  }

  else
  {
    v7 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000329F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *(a1 + 32);
    if (v4 <= 6)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

BOOL sub_100032A9C(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  if (v8 != 255)
  {
    if (v13 != 255)
    {
      v20.i64[0] = *a2;
      v20.i64[1] = v9;
      v21 = v12;
      v22 = v11;
      v23 = v13;
      v18[0] = v5;
      v18[1] = v4;
      v18[2] = v7;
      v18[3] = v6;
      v19 = v8;
      if (sub_10002BB48(v18, &v20))
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_6:
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    sub_100031DF8(*a1, v4, v7, v6, v8);
    sub_100031DF8(v10, v9, v12, v11, v13);
    sub_100032660(v5, v4, v14, v15, v8);
    sub_100032660(v10, v9, v12, v11, v13);
    return 0;
  }

  if (v13 != 255)
  {
    goto LABEL_6;
  }

LABEL_8:
  v17 = *(type metadata accessor for SettingsAppDetailContent(0) + 20);

  return sub_100032BF8(a1 + v17, a2 + v17);
}

BOOL sub_100032BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = (&v44 - v17);
  __chkstk_darwin(v16);
  v20 = (&v44 - v19);
  v21 = sub_10004DED0(&qword_10015E4C8, &qword_1001155F8);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v44 - v24;
  v26 = (&v44 + *(v23 + 56) - v24);
  sub_100032FE4(a1, &v44 - v24);
  sub_100032FE4(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100032FE4(v25, v18);
      v41 = *v18;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = *v26;
        type metadata accessor for PreferencesControllerRepresentableModel();
        v30 = static PreferencesControllerRepresentableModel.== infix(_:_:)();
        goto LABEL_11;
      }
    }

    else
    {
      sub_100032FE4(v25, v20);
      v28 = *v20;
      if (!swift_getEnumCaseMultiPayload())
      {
        v29 = *v26;
        type metadata accessor for SettingsAnyPlatformViewControllerModel();
        v30 = static SettingsAnyPlatformViewControllerModel.== infix(_:_:)();
LABEL_11:
        v40 = v30;

LABEL_18:
        sub_100033048(v25);
        return v40;
      }
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100032FE4(v25, v15);
    v31 = *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48);
    v32 = *&v15[v31];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v33 = *(v26 + v31);
      v34 = v44;
      v35 = *(v44 + 32);
      v36 = v15;
      v37 = v45;
      v35(v10, v36, v45);
      v35(v8, v26, v37);
      v38 = static SettingsPaneRecipe.== infix(_:_:)();
      v39 = *(v34 + 8);
      v39(v8, v37);
      v39(v10, v37);

      v40 = (v38 & 1) != 0 && v32 == v33;
      goto LABEL_18;
    }

    (*(v44 + 8))(v15, v45);
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_16:
    sub_100092A80(v25);
    return 0;
  }

  sub_100033048(v25);
  return 1;
}

uint64_t sub_100032FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033048(uint64_t a1)
{
  v2 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000330A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = sub_10004DED0(&qword_10015DE38, &qword_100114968);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_10004DED0(&qword_10015DE40, &qword_100114970) + 36));
  *v11 = sub_10003F038;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
}

uint64_t sub_1000331A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000331E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_100025974(v2, v3, v4);
}

__n128 sub_1000331FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

Swift::Int sub_100033210()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10002F3D4(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100033268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1000332AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000332F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for PrimarySettingsListItem()
{
  result = qword_10015B9A0;
  if (!qword_10015B9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100033368()
{
  sub_1000228E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PrimarySettingsListItemModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10003340C()
{
  result = qword_10015C100;
  if (!qword_10015C100)
  {
    sub_100052374(&qword_10015C108, qword_100112170);
    sub_10000A5B0();
    sub_1000334AC();
    sub_1000335A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C100);
  }

  return result;
}

unint64_t sub_1000334AC()
{
  result = qword_10015C0B0;
  if (!qword_10015C0B0)
  {
    sub_100052374(&qword_10015C0A0, &qword_100112100);
    sub_100033560(&qword_10015C0B8, type metadata accessor for PrimarySettingsListItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C0B0);
  }

  return result;
}

uint64_t sub_100033560(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000335A8()
{
  result = qword_10015C0C0;
  if (!qword_10015C0C0)
  {
    sub_100052374(&qword_10015C090, &unk_1001120F0);
    sub_10003362C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C0C0);
  }

  return result;
}

unint64_t sub_10003362C()
{
  result = qword_10015C0C8;
  if (!qword_10015C0C8)
  {
    sub_100052374(&qword_10015C0D0, &qword_100112108);
    sub_1000525A0(&qword_10015C0D8, &qword_10015C0E0, &unk_100112110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C0C8);
  }

  return result;
}

uint64_t sub_10003373C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      if (a6 != 3 || a4 != 1 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 2:
      if (a6 != 3 || a4 != 2 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 3:
      if (a6 != 3 || a4 != 3 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 4:
      if (a6 != 3 || a4 != 4 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 5:
      if (a6 != 3 || a4 != 5 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 6:
      if (a6 != 3 || a4 != 6 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 7:
      if (a6 != 3 || a4 != 7 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 8:
      if (a6 != 3 || a4 != 8 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 9:
      if (a6 != 3 || a4 != 9 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 10:
      if (a6 != 3 || a4 != 10 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 11:
      if (a6 != 3 || a4 != 11 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 12:
      if (a6 != 3 || a4 != 12 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 13:
      if (a6 != 3 || a4 != 13 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 14:
      if (a6 != 3 || a4 != 14 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 15:
      if (a6 != 3 || a4 != 15 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 16:
      if (a6 != 3 || a4 != 16 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 17:
      if (a6 != 3 || a4 != 17 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    default:
      if (a6 != 3 || a5 | a4)
      {
        return 0;
      }

      result = 1;
      break;
  }

  return result;
}

uint64_t sub_100033A7C()
{
  v1 = sub_10004DED0(&qword_10015C090, &unk_1001120F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  v7 = v0;
  sub_100033BB4(v0, v8);
  sub_100033C60(v0, v4);
  sub_10004DED0(&qword_10015C098, &qword_100116660);
  sub_10004DED0(&qword_10015C0A0, &qword_100112100);
  sub_10000A5B0();
  sub_1000334AC();
  sub_1000335A8();
  return Section<>.init(header:footer:content:)();
}

uint64_t sub_100033BB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PrimarySettingsListSection() + 20);
  v4 = *(v3 + 32);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 24);
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_10002EAE0();

    result = Text.init<A>(_:)();
    v11 = v10 & 1;
  }

  else
  {
LABEL_6:
    result = 0;
    v8 = 0;
    v11 = 0;
    v9 = 0;
  }

  *a2 = result;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

uint64_t sub_100033C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for PrimarySettingsListSection();
  v4 = v3 - 8;
  v46 = *(v3 - 8);
  v5 = *(v46 + 64);
  __chkstk_darwin(v3);
  v47 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_10004DED0(&qword_10015C0D0, &qword_100112108);
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v48);
  v9 = &v41[-v8];
  v10 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v41[-v12];
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v41[-v20];
  v22 = *(v4 + 28);
  v23 = type metadata accessor for PrimarySettingsListSectionModel();
  sub_10002C98C(a1 + *(v23 + 24) + v22, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000341D8(v13);
    v24 = 1;
    v26 = v48;
    v25 = v49;
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    (*(v15 + 16))(v19, v21, v14);
    v27 = Text.init(_:)();
    v43 = v28;
    v44 = v27;
    v42 = v29;
    v45 = v30;
    KeyPath = swift_getKeyPath();
    v32 = v47;
    sub_100034514(a1, v47, type metadata accessor for PrimarySettingsListSection);
    v33 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v34 = swift_allocObject();
    sub_100061724(v32, v34 + v33);
    v35 = v48;
    v36 = &v9[*(v48 + 36)];
    v37 = *(sub_10004DED0(&qword_10015C0E0, &unk_100112110) + 28);
    OpenURLAction.init(handler:)();
    (*(v15 + 8))(v21, v14);
    *v36 = KeyPath;
    v38 = v43;
    *v9 = v44;
    *(v9 + 1) = v38;
    v9[16] = v42 & 1;
    *(v9 + 3) = v45;
    v39 = v49;
    sub_100061808(v9, v49);
    v24 = 0;
    v25 = v39;
    v26 = v35;
  }

  return (*(v6 + 56))(v25, v24, 1, v26);
}

uint64_t sub_100034074()
{
  v1 = (type metadata accessor for PrimarySettingsListSection() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[7];
  sub_100025CD8(*v6, *(v6 + 8), *(v6 + 16));
  v7 = *(v6 + 32);

  v8 = type metadata accessor for PrimarySettingsListSectionModel();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = *(v6 + *(v8 + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000341D8(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100034240(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for PrimarySettingsListSection() + 20);
  v3 = *(v1 + *(type metadata accessor for PrimarySettingsListSectionModel() + 28));

  sub_10004DED0(&qword_10015C0E8, &qword_100112168);
  type metadata accessor for PrimarySettingsListItem();
  sub_1000525A0(&qword_10015C0F0, &qword_10015C0E8, &qword_100112168);
  sub_100033560(&qword_10015C0B8, type metadata accessor for PrimarySettingsListItem);
  sub_100033560(&qword_10015C0F8, type metadata accessor for PrimarySettingsListItemModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000343B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_100029920(v2, v3, v4, v5, v6);
}

__n128 sub_1000343D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

Swift::Int sub_1000343E4()
{
  Hasher.init(_seed:)();
  sub_10002FE78();
  return Hasher._finalize()();
}

uint64_t sub_100034420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_100034468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimarySettingsListItem();
  sub_100034514(a1, a2 + *(v4 + 20), type metadata accessor for PrimarySettingsListItemModel);
  type metadata accessor for SettingsAppModel();
  sub_100033560(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
  result = Environment.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100034514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000345A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for PrimarySettingsListFamilyLink()
{
  result = qword_10015B7C0;
  if (!qword_10015B7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003462C()
{
  result = type metadata accessor for PrimarySettingsListFamilyLinkModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PrimarySettingsListFollowUpHeader()
{
  result = qword_10015B8A8;
  if (!qword_10015B8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100034754()
{
  sub_10003483C(319, &qword_10015B8B8, sub_10003489C);
  if (v0 <= 0x3F)
  {
    sub_10003483C(319, &qword_10015B8C8, sub_1000348F0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003483C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ScaledMetric();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10003489C()
{
  result = qword_10015B8C0;
  if (!qword_10015B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B8C0);
  }

  return result;
}

unint64_t sub_1000348F0()
{
  result = qword_10015B8D0;
  if (!qword_10015B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B8D0);
  }

  return result;
}

uint64_t sub_100034960(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1001694F8 == -1)
  {
    if (qword_100169500)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100034AEC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100169500)
    {
      return _availability_version_check();
    }
  }

  if (qword_1001694F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10010949C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1001694E0 < v11;
    if (dword_1001694E0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1001694E4 > a3)
      {
        return 1;
      }

      if (dword_1001694E4 >= a3)
      {
        return dword_1001694E8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1001694E0 < a2;
  if (dword_1001694E0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100034B0C(uint64_t result)
{
  v1 = qword_100169500;
  if (qword_100169500)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100169500 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1001694E0, &dword_1001694E4, &dword_1001694E8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

uint64_t sub_100034E50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_100034960(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_100034FB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_100034960(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1000351B8()
{
  result = qword_10015BB70;
  if (!qword_10015BB70)
  {
    sub_100052374(&qword_10015BA20, &qword_1001115A0);
    sub_100035270();
    sub_1000525A0(&qword_10015BB88, &qword_10015BB90, &unk_100111650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB70);
  }

  return result;
}

unint64_t sub_100035270()
{
  result = qword_10015BB78;
  if (!qword_10015BB78)
  {
    sub_100052374(&qword_10015B9F8, &unk_100111558);
    sub_100052374(&qword_10015B9E8, &qword_100111548);
    sub_100035368();
    swift_getOpaqueTypeConformance2();
    sub_1000354E8(&qword_10015BB80, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB78);
  }

  return result;
}

unint64_t sub_100035368()
{
  result = qword_10015BA08;
  if (!qword_10015BA08)
  {
    sub_100052374(&qword_10015B9E8, &qword_100111548);
    sub_100052374(&qword_10015ABC8, &qword_100111540);
    sub_100052374(&qword_10015B9E0, &qword_100111538);
    sub_1000525A0(&qword_10015BA00, &qword_10015B9E0, &qword_100111538);
    swift_getOpaqueTypeConformance2();
    sub_100032144();
    swift_getOpaqueTypeConformance2();
    sub_1000525A0(&qword_10015BA10, &qword_10015BA18, &qword_100111568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BA08);
  }

  return result;
}

uint64_t sub_1000354E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100035530(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_10002BB48(v5, v7) & 1;
}

uint64_t sub_10003557C@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v77 = type metadata accessor for PrimarySettingsListItemViewType();
  v2 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v75 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityTraits();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  v6 = __chkstk_darwin(v4);
  v78 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v61 - v8;
  v9 = type metadata accessor for AccessibilityChildBehavior();
  v73 = *(v9 - 8);
  v74 = v9;
  v10 = *(v73 + 64);
  __chkstk_darwin(v9);
  v69 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrimarySettingsListItem();
  v13 = v12 - 8;
  v61 = *(v12 - 8);
  v14 = *(v61 + 64);
  __chkstk_darwin(v12);
  *&v63 = sub_10004DED0(&qword_10015B9E0, &qword_100111538);
  v15 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v17 = &v61 - v16;
  v65 = sub_10004DED0(&qword_10015ABC8, &qword_100111540);
  *&v64 = *(v65 - 8);
  v18 = *(v64 + 64);
  __chkstk_darwin(v65);
  v20 = &v61 - v19;
  v66 = sub_10004DED0(&qword_10015B9E8, &qword_100111548);
  v21 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v23 = &v61 - v22;
  v67 = sub_10004DED0(&qword_10015B9F0, &qword_100111550);
  v68 = *(v67 - 8);
  v24 = *(v68 + 64);
  __chkstk_darwin(v67);
  v62 = &v61 - v25;
  v71 = sub_10004DED0(&qword_10015B9F8, &unk_100111558);
  v26 = *(*(v71 - 8) + 64);
  v27 = __chkstk_darwin(v71);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v70 = &v61 - v31;
  __chkstk_darwin(v30);
  v72 = &v61 - v32;
  sub_100036178(v17);
  v33 = v1;
  sub_100038C3C(v1, &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimarySettingsListItem);
  v34 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v35 = swift_allocObject();
  sub_100039318(&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for PrimarySettingsListItem);
  sub_1000525A0(&qword_10015BA00, &qword_10015B9E0, &qword_100111538);
  View.onScrollVisibilityChange(threshold:_:)();

  sub_1000068B0(v17, &qword_10015B9E0, &qword_100111538);
  v36 = v33 + *(v13 + 28);
  v84 = *(v36 + 32);
  v37 = v84;
  v38 = *(v36 + 16);
  v63 = *v36;
  v83[0] = v63;
  v83[1] = v38;
  v39 = *(v64 + 32);
  v64 = *(v36 + 16);
  v39(v23, v20, v65);
  v40 = &v23[*(sub_10004DED0(&unk_10015ABD0, &qword_10010EBC0) + 36)];
  v41 = v64;
  *v40 = v63;
  *(v40 + 1) = v41;
  v40[32] = v37;
  v40[33] = 1;
  v42 = type metadata accessor for PrimarySettingsListItemModel();
  v65 = *(v36 + *(v42 + 24));
  v43 = v66;
  v23[*(v66 + 36)] = (v65 & 5) == 0;
  sub_10002698C(v83, v82);
  v44 = v69;
  static AccessibilityChildBehavior.combine.getter();
  v45 = sub_100035368();
  v46 = v62;
  View.accessibilityElement(children:)();
  (*(v73 + 8))(v44, v74);
  v47 = sub_1000068B0(v23, &qword_10015B9E8, &qword_100111548);
  sub_100039380(v47);
  v82[0] = v43;
  v82[1] = v45;
  swift_getOpaqueTypeConformance2();
  v48 = v67;
  View.accessibility(identifier:)();

  (*(v68 + 8))(v46, v48);
  v49 = v75;
  sub_100038C3C(v36 + *(v42 + 20), v75, type metadata accessor for PrimarySettingsListItemViewType);
  LODWORD(v42) = swift_getEnumCaseMultiPayload();
  sub_10002C6F8(v49, type metadata accessor for PrimarySettingsListItemViewType);
  if (v42 == 9)
  {
    v50 = v76;
    static AccessibilityTraits.isHeader.getter();
  }

  else
  {
    v50 = v76;
    static AccessibilityTraits.isButton.getter();
  }

  v51 = v70;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v52 = v80;
  v53 = *(v79 + 8);
  v53(v50, v80);
  sub_1000068B0(v29, &qword_10015B9F8, &unk_100111558);
  v54 = v78;
  static AccessibilityTraits.isStaticText.getter();
  v55 = v72;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v53(v54, v52);
  sub_1000068B0(v51, &qword_10015B9F8, &unk_100111558);
  KeyPath = swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = v65 & 1;
  v58 = v81;
  sub_100036104(v55, v81);
  result = sub_10004DED0(&qword_10015BA20, &qword_1001115A0);
  v60 = (v58 + *(result + 36));
  *v60 = KeyPath;
  v60[1] = sub_10003F730;
  v60[2] = v57;
  return result;
}

uint64_t sub_100035E64()
{
  v1 = (type metadata accessor for PrimarySettingsListItem() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[7];
  sub_10002C5C0(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));
  v7 = v6 + *(type metadata accessor for PrimarySettingsListItemModel() + 20);
  type metadata accessor for PrimarySettingsListItemViewType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
LABEL_20:
        v16 = *v7;
        v17 = *(v7 + 8);
        LOBYTE(v18) = *(v7 + 16);
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload == 9)
      {
        v18 = *(v7 + 16);
        if (v18 == 255)
        {
LABEL_25:
          v19 = *(v7 + 32);

          v20 = *(v7 + 48);
          goto LABEL_26;
        }

        v16 = *v7;
        v17 = *(v7 + 8);
LABEL_24:
        sub_10002A748(v16, v17, v18);
        goto LABEL_25;
      }

      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_27;
      }

      v10 = *(v7 + 16);
      if (v10 == 255)
      {
        goto LABEL_19;
      }

      v11 = *v7;
      v12 = *(v7 + 8);
    }

    else
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        goto LABEL_20;
      }

      v11 = *v7;
      v12 = *(v7 + 8);
      LOBYTE(v10) = *(v7 + 16);
    }

    sub_10002A748(v11, v12, v10);
LABEL_19:
    v15 = *(v7 + 32);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100045DB4(*v7, *(v7 + 8), *(v7 + 16));
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_27;
    }

    v13 = type metadata accessor for FamilyRowStatus();
    (*(*(v13 - 8) + 8))(v7, v13);
    v14 = *(v7 + *(type metadata accessor for PrimarySettingsListFamilyLinkModel() + 20) + 8);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v9 = *(v7 + 8);
LABEL_26:

    goto LABEL_27;
  }

  sub_10002A748(*v7, *(v7 + 8), *(v7 + 16));
  v21 = *(v7 + 32);

  v22 = *(v7 + 40);

LABEL_27:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003609C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100036104(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B9F8, &unk_100111558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036178@<X0>(uint64_t a1@<X8>)
{
  v233 = a1;
  v224 = type metadata accessor for PrimarySettingsListFollowUpHeader();
  v2 = *(*(v224 - 1) + 64);
  __chkstk_darwin(v224);
  v221 = &v210[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v226 = sub_10004DED0(&qword_10015BA28, &qword_1001115A8);
  v4 = *(*(v226 - 8) + 64);
  __chkstk_darwin(v226);
  v228 = &v210[-v5];
  v222 = sub_10004DED0(&qword_10015BA30, &qword_1001115B0);
  v6 = *(*(v222 - 1) + 64);
  __chkstk_darwin(v222);
  v223 = &v210[-v7];
  v227 = sub_10004DED0(&qword_10015BA38, &qword_1001115B8);
  v8 = *(*(v227 - 1) + 64);
  __chkstk_darwin(v227);
  v225 = &v210[-v9];
  v232 = sub_10004DED0(&qword_10015BA40, &qword_1001115C0);
  v10 = *(*(v232 - 8) + 64);
  __chkstk_darwin(v232);
  *&v229 = &v210[-v11];
  v12 = type metadata accessor for PrimarySettingsListFamilyLink();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v16 = &v210[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v210[-v17];
  v19 = type metadata accessor for PrimarySettingsListFamilyLinkModel();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v210[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v230 = sub_10004DED0(&qword_10015BA48, &qword_1001115C8);
  v23 = *(*(v230 - 8) + 64);
  __chkstk_darwin(v230);
  v231 = &v210[-v24];
  v25 = type metadata accessor for PrimarySettingsListItemViewType();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v210[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = (v1 + *(type metadata accessor for PrimarySettingsListItem() + 20));
  v30 = type metadata accessor for PrimarySettingsListItemModel();
  sub_100038C3C(v29 + *(v30 + 20), v28, type metadata accessor for PrimarySettingsListItemViewType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v121 = *v28;
        v122 = *(v28 + 1);
        v124 = *(v28 + 3);
        v123 = *(v28 + 4);
        v126 = *(v28 + 5);
        v125 = *(v28 + 6);
        v127 = *v29;
        v214 = v29[1];
        v215 = v127;
        v128 = v29[2];
        v212 = v29[3];
        v213 = v128;
        v216 = *(v29 + *(v30 + 24));
        v129 = v28[16];
        LODWORD(v218) = v129;
        v211 = *(v29 + 32);
        v130 = swift_allocObject();
        v219 = v122;
        v220 = v121;
        *(v130 + 16) = v121;
        *(v130 + 24) = v122;
        *(v130 + 32) = v129;
        *(v130 + 40) = v124;
        *(v130 + 48) = v123;
        v221 = v123;
        *(v130 + 56) = v126;
        *(v130 + 64) = v125;
        v217 = v125;
        type metadata accessor for SettingsAppModel();
        sub_100039F14(v121, v122, v129);

        v132 = v214;
        v131 = v215;
        v134 = v212;
        v133 = v213;
        LOBYTE(v126) = v211;
        sub_100029920(v215, v214, v213, v212, v211);
        sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
        v135 = Environment.init<A>(_:)();
        LOBYTE(v252) = v136 & 1;
        *&v247 = v135;
        BYTE8(v247) = v136 & 1;
        HIDWORD(v247) = *(&v234 + 3);
        *(&v247 + 9) = v234;
        *&v248 = v131;
        *(&v248 + 1) = v132;
        *&v249 = v133;
        *(&v249 + 1) = v134;
        LOBYTE(v250) = v126;
        *(&v250 + 1) = v241;
        DWORD1(v250) = *(&v241 + 3);
        *(&v250 + 1) = v216;
        *&v251[0] = sub_100043284;
        *(&v251[0] + 1) = v130;
        v137 = v250;
        v138 = v223;
        *(v223 + 2) = v249;
        *(v138 + 3) = v137;
        *(v138 + 4) = v251[0];
        v139 = v248;
        *v138 = v247;
        *(v138 + 1) = v139;
        swift_storeEnumTagMultiPayload();
        sub_100059CA0(&v247, &v234, &qword_10015BA68, &qword_1001115D8);
        sub_10004DED0(&qword_10015BA68, &qword_1001115D8);
        sub_1000525A0(&qword_10015BA60, &qword_10015BA68, &qword_1001115D8);
        sub_1000354E8(&qword_10015BA70, type metadata accessor for PrimarySettingsListFollowUpHeader);
        v140 = v225;
        _ConditionalContent<>.init(storage:)();
        sub_100059CA0(v140, v228, &qword_10015BA38, &qword_1001115B8);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA50, &qword_1001115D0);
        sub_100039230();
        sub_1000525A0(&qword_10015BA78, &qword_10015BA50, &qword_1001115D0);
        v141 = v229;
        _ConditionalContent<>.init(storage:)();
        sub_1000068B0(v140, &qword_10015BA38, &qword_1001115B8);
        sub_100059CA0(v141, v231, &qword_10015BA40, &qword_1001115C0);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
        sub_100059E10();
        sub_100039178();
        _ConditionalContent<>.init(storage:)();
        sub_1000068B0(&v247, &qword_10015BA68, &qword_1001115D8);
        sub_10002A748(v220, v219, v218);

        v51 = v141;
        v52 = &qword_10015BA40;
        v53 = &qword_1001115C0;
        return sub_1000068B0(v51, v52, v53);
      }

      if (EnumCaseMultiPayload == 9)
      {
        v68 = v28[16];
        v69 = *(v28 + 24);
        v70 = *(v28 + 5);
        v71 = *(v28 + 6);
        v72 = v221;
        *v221 = *v28;
        *(v72 + 16) = v68;
        *(v72 + 6) = v69;
        *(v72 + 5) = v70;
        *(v72 + 6) = v71;
        v73 = v224;
        v74 = v224[5];
        *&v247 = 0x403C000000000000;
        sub_10003489C();
        ScaledMetric.init(wrappedValue:)();
        *(v72 + v73[6]) = 0x4020000000000000;
        *(v72 + v73[7]) = 0xC01E000000000000;
        v75 = v73[8];
        *&v247 = 0x4014000000000000;
        sub_1000348F0();
        ScaledMetric.init(wrappedValue:)();
        *(v72 + v73[9]) = 0xC000000000000000;
        sub_100038C3C(v72, v223, type metadata accessor for PrimarySettingsListFollowUpHeader);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA68, &qword_1001115D8);
        sub_1000525A0(&qword_10015BA60, &qword_10015BA68, &qword_1001115D8);
        sub_1000354E8(&qword_10015BA70, type metadata accessor for PrimarySettingsListFollowUpHeader);
        v76 = v225;
        _ConditionalContent<>.init(storage:)();
        sub_100059CA0(v76, v228, &qword_10015BA38, &qword_1001115B8);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA50, &qword_1001115D0);
        sub_100039230();
        sub_1000525A0(&qword_10015BA78, &qword_10015BA50, &qword_1001115D0);
        v77 = v229;
        _ConditionalContent<>.init(storage:)();
        sub_1000068B0(v76, &qword_10015BA38, &qword_1001115B8);
        sub_100059CA0(v77, v231, &qword_10015BA40, &qword_1001115C0);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
        sub_100059E10();
        sub_100039178();
        _ConditionalContent<>.init(storage:)();
        sub_1000068B0(v77, &qword_10015BA40, &qword_1001115C0);
        return sub_10002C6F8(v72, type metadata accessor for PrimarySettingsListFollowUpHeader);
      }

      v191 = *v28;
      v192 = *(v28 + 1);
      v193 = *(v28 + 3);
      v194 = *(v28 + 4);
      v196 = *v29;
      v195 = v29[1];
      v197 = v29[3];
      v219 = v29[2];
      v220 = v195;
      v218 = v197;
      v221 = *(v29 + *(v30 + 24));
      v198 = v28[16];
      LODWORD(v222) = v198;
      v199 = *(v29 + 32);
      v200 = swift_allocObject();
      v223 = v192;
      v224 = v191;
      *(v200 + 16) = v191;
      *(v200 + 24) = v192;
      *(v200 + 32) = v198;
      *(v200 + 40) = v193;
      *(v200 + 48) = v194;
      v225 = v194;
      type metadata accessor for SettingsAppModel();
      sub_10005950C(v191, v192, v198);

      v202 = v219;
      v201 = v220;
      v203 = v218;
      sub_100029920(v196, v220, v219, v218, v199);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
      v204 = Environment.init<A>(_:)();
      LOBYTE(v252) = v205 & 1;
      *&v247 = v204;
      BYTE8(v247) = v205 & 1;
      HIDWORD(v247) = *(&v234 + 3);
      *(&v247 + 9) = v234;
      *&v248 = v196;
      *(&v248 + 1) = v201;
      *&v249 = v202;
      *(&v249 + 1) = v203;
      LOBYTE(v250) = v199;
      *(&v250 + 1) = v241;
      DWORD1(v250) = *(&v241 + 3);
      *(&v250 + 1) = v221;
      *&v251[0] = sub_100059E08;
      *(&v251[0] + 1) = v200;
      v206 = v250;
      v207 = v228;
      *(v228 + 2) = v249;
      *(v207 + 3) = v206;
      *(v207 + 4) = v251[0];
      v208 = v248;
      *v207 = v247;
      *(v207 + 1) = v208;
      swift_storeEnumTagMultiPayload();
      sub_100059CA0(&v247, &v234, &qword_10015BA50, &qword_1001115D0);
      sub_10004DED0(&qword_10015BA50, &qword_1001115D0);
      sub_100039230();
      sub_1000525A0(&qword_10015BA78, &qword_10015BA50, &qword_1001115D0);
      v209 = v229;
      _ConditionalContent<>.init(storage:)();
      v187 = &qword_1001115C0;
      sub_100059CA0(v209, v231, &qword_10015BA40, &qword_1001115C0);
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
      sub_100059E10();
      sub_100039178();
      _ConditionalContent<>.init(storage:)();
      sub_1000068B0(&v247, &qword_10015BA50, &qword_1001115D0);
      sub_100054F18(v224, v223, v222);

      v51 = v209;
      v52 = &qword_10015BA40;
    }

    else
    {
      if (EnumCaseMultiPayload == 5)
      {
        v103 = *v28;
        v104 = *(v28 + 1);
        v105 = *(v28 + 3);
        v106 = *(v28 + 4);
        v108 = *v29;
        v107 = v29[1];
        v109 = v29[3];
        v223 = v29[2];
        v224 = v107;
        v222 = v109;
        v225 = *(v29 + *(v30 + 24));
        v110 = v28[16];
        LODWORD(v226) = v110;
        v111 = *(v29 + 32);
        v112 = swift_allocObject();
        v227 = v104;
        v228 = v103;
        *(v112 + 16) = v103;
        *(v112 + 24) = v104;
        *(v112 + 32) = v110;
        *(v112 + 40) = v105;
        *(v112 + 48) = v106;
        *&v229 = v106;
        type metadata accessor for SettingsAppModel();
        sub_100039F14(v103, v104, v110);

        v114 = v223;
        v113 = v224;
        v115 = v222;
        sub_100029920(v108, v224, v223, v222, v111);
        sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
        v116 = Environment.init<A>(_:)();
        LOBYTE(v241) = v117 & 1;
        *&v252 = v116;
        BYTE8(v252) = v117 & 1;
        *(&v252 + 9) = v247;
        HIDWORD(v252) = *(&v247 + 3);
        *&v253 = v108;
        *(&v253 + 1) = v113;
        *&v254 = v114;
        *(&v254 + 1) = v115;
        LOBYTE(v255) = v111;
        *(&v255 + 1) = v234;
        DWORD1(v255) = *(&v234 + 3);
        *(&v255 + 1) = v225;
        *&v256 = sub_1000437EC;
        *(&v256 + 1) = v112;
        v249 = v254;
        v250 = v255;
        v251[0] = v256;
        v247 = v252;
        v248 = v253;
        v257 = 1;
        LOBYTE(v251[1]) = 1;
        sub_100059CA0(&v252, &v234, &qword_10015BB30, &qword_100111630);
        sub_10004DED0(&qword_10015BB20, &qword_100111628);
        sub_10004DED0(&qword_10015BB30, &qword_100111630);
        sub_1000525A0(&qword_10015BB18, &qword_10015BB20, &qword_100111628);
        sub_1000525A0(&qword_10015BB28, &qword_10015BB30, &qword_100111630);
        _ConditionalContent<>.init(storage:)();
        v249 = v236;
        v250 = v237;
        v251[0] = v238;
        LOWORD(v251[1]) = v239;
        v247 = v234;
        v248 = v235;
        v258 = 0;
        sub_10004DED0(&qword_10015BB10, &qword_100111620);
        sub_10004DED0(&qword_10015BB40, &qword_100111638);
        sub_100038F2C();
        sub_100039098();
        _ConditionalContent<>.init(storage:)();
        v236 = v243;
        v237 = v244;
        v238 = v245;
        v239 = v246;
        v234 = v241;
        v235 = v242;
        v259 = 1;
        v240 = 1;
        sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
        sub_10004DED0(&qword_10015BB00, &qword_100111618);
        sub_100038EA0();
        sub_10003900C();
        _ConditionalContent<>.init(storage:)();
        v118 = v250;
        v119 = v231;
        *(v231 + 2) = v249;
        *(v119 + 3) = v118;
        *(v119 + 4) = v251[0];
        *(v119 + 79) = *(v251 + 15);
        v120 = v248;
        *v119 = v247;
        *(v119 + 1) = v120;
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
        sub_100059E10();
        sub_100039178();
        _ConditionalContent<>.init(storage:)();
        sub_10002A748(v228, v227, v226);

        v51 = &v252;
        v52 = &qword_10015BB30;
        v53 = &qword_100111630;
        return sub_1000068B0(v51, v52, v53);
      }

      if (EnumCaseMultiPayload == 6)
      {
        v32 = *v28;
        v33 = *(v28 + 1);
        v34 = *(v28 + 3);
        v35 = *(v28 + 4);
        v36 = *(v28 + 5);
        v37 = *v29;
        v223 = v29[1];
        v224 = v37;
        v38 = v29[2];
        v221 = v29[3];
        v222 = v38;
        v225 = *(v29 + *(v30 + 24));
        v39 = v28[16];
        LODWORD(v226) = v39;
        v40 = *(v29 + 32);
        v41 = swift_allocObject();
        v227 = v33;
        v228 = v32;
        *(v41 + 16) = v32;
        *(v41 + 24) = v33;
        *(v41 + 32) = v39;
        *(v41 + 40) = v34;
        *(v41 + 48) = v35;
        *&v229 = v35;
        *(v41 + 56) = v36;
        type metadata accessor for SettingsAppModel();
        sub_100039F14(v32, v33, v39);

        v43 = v223;
        v42 = v224;
        v45 = v221;
        v44 = v222;
        sub_100029920(v224, v223, v222, v221, v40);
        sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
        v46 = Environment.init<A>(_:)();
        LOBYTE(v241) = v47 & 1;
        *&v252 = v46;
        BYTE8(v252) = v47 & 1;
        *(&v252 + 9) = v247;
        HIDWORD(v252) = *(&v247 + 3);
        *&v253 = v42;
        *(&v253 + 1) = v43;
        *&v254 = v44;
        *(&v254 + 1) = v45;
        LOBYTE(v255) = v40;
        *(&v255 + 1) = v234;
        DWORD1(v255) = *(&v234 + 3);
        *(&v255 + 1) = v225;
        *&v256 = sub_100059F40;
        *(&v256 + 1) = v41;
        v249 = v254;
        v250 = v255;
        v251[0] = v256;
        v247 = v252;
        v248 = v253;
        v257 = 0;
        LOBYTE(v251[1]) = 0;
        sub_100059CA0(&v252, &v234, &qword_10015BB50, &qword_100111640);
        sub_10004DED0(&qword_10015BB50, &qword_100111640);
        sub_10004DED0(&qword_10015BB60, &qword_100111648);
        sub_1000525A0(&qword_10015BB48, &qword_10015BB50, &qword_100111640);
        sub_1000525A0(&qword_10015BB58, &qword_10015BB60, &qword_100111648);
        _ConditionalContent<>.init(storage:)();
        v249 = v236;
        v250 = v237;
        v251[0] = v238;
        LOBYTE(v251[1]) = v239;
        v247 = v234;
        v248 = v235;
        v258 = 1;
        BYTE1(v251[1]) = 1;
        sub_10004DED0(&qword_10015BB10, &qword_100111620);
        sub_10004DED0(&qword_10015BB40, &qword_100111638);
        sub_100038F2C();
        sub_100039098();
        _ConditionalContent<>.init(storage:)();
        v236 = v243;
        v237 = v244;
        v238 = v245;
        v239 = v246;
        v234 = v241;
        v235 = v242;
        v259 = 1;
        v240 = 1;
        sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
        sub_10004DED0(&qword_10015BB00, &qword_100111618);
        sub_100038EA0();
        sub_10003900C();
        _ConditionalContent<>.init(storage:)();
        v48 = v250;
        v49 = v231;
        *(v231 + 2) = v249;
        *(v49 + 3) = v48;
        *(v49 + 4) = v251[0];
        *(v49 + 79) = *(v251 + 15);
        v50 = v248;
        *v49 = v247;
        *(v49 + 1) = v50;
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
        sub_100059E10();
        sub_100039178();
        _ConditionalContent<>.init(storage:)();
        sub_10002A748(v228, v227, v226);

        v51 = &v252;
        v52 = &qword_10015BB50;
        v53 = &qword_100111640;
        return sub_1000068B0(v51, v52, v53);
      }

      v171 = *v28;
      v172 = *(v28 + 1);
      v174 = *(v28 + 3);
      v173 = *(v28 + 4);
      v175 = *(v28 + 5);
      v176 = *(v28 + 6);
      v177 = *v29;
      v222 = v29[1];
      v223 = v177;
      v178 = v29[2];
      v220 = v29[3];
      v221 = v178;
      v224 = *(v29 + *(v30 + 24));
      v179 = v28[16];
      LODWORD(v226) = v179;
      LODWORD(v219) = *(v29 + 32);
      v180 = swift_allocObject();
      v227 = v172;
      v228 = v171;
      *(v180 + 16) = v171;
      *(v180 + 24) = v172;
      *(v180 + 32) = v179;
      *(v180 + 40) = v174;
      *(v180 + 48) = v173;
      *&v229 = v173;
      *(v180 + 56) = v175;
      *(v180 + 64) = v176;
      v225 = v176;
      type metadata accessor for SettingsAppModel();
      sub_100039F14(v171, v172, v179);

      v182 = v222;
      v181 = v223;
      v184 = v220;
      v183 = v221;
      LOBYTE(v171) = v219;
      sub_100029920(v223, v222, v221, v220, v219);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
      v185 = Environment.init<A>(_:)();
      LOBYTE(v241) = v186 & 1;
      *&v252 = v185;
      BYTE8(v252) = v186 & 1;
      *(&v252 + 9) = v247;
      HIDWORD(v252) = *(&v247 + 3);
      *&v253 = v181;
      *(&v253 + 1) = v182;
      *&v254 = v183;
      *(&v254 + 1) = v184;
      LOBYTE(v255) = v171;
      *(&v255 + 1) = v234;
      DWORD1(v255) = *(&v234 + 3);
      *(&v255 + 1) = v224;
      *&v256 = sub_100043300;
      *(&v256 + 1) = v180;
      v249 = v254;
      v250 = v255;
      v251[0] = v256;
      v247 = v252;
      v248 = v253;
      v257 = 1;
      LOBYTE(v251[1]) = 1;
      v187 = &qword_100111648;
      sub_100059CA0(&v252, &v234, &qword_10015BB60, &qword_100111648);
      sub_10004DED0(&qword_10015BB50, &qword_100111640);
      sub_10004DED0(&qword_10015BB60, &qword_100111648);
      sub_1000525A0(&qword_10015BB48, &qword_10015BB50, &qword_100111640);
      sub_1000525A0(&qword_10015BB58, &qword_10015BB60, &qword_100111648);
      _ConditionalContent<>.init(storage:)();
      v249 = v236;
      v250 = v237;
      v251[0] = v238;
      LOBYTE(v251[1]) = v239;
      v247 = v234;
      v248 = v235;
      v258 = 1;
      BYTE1(v251[1]) = 1;
      sub_10004DED0(&qword_10015BB10, &qword_100111620);
      sub_10004DED0(&qword_10015BB40, &qword_100111638);
      sub_100038F2C();
      sub_100039098();
      _ConditionalContent<>.init(storage:)();
      v236 = v243;
      v237 = v244;
      v238 = v245;
      v239 = v246;
      v234 = v241;
      v235 = v242;
      v259 = 1;
      v240 = 1;
      sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
      sub_10004DED0(&qword_10015BB00, &qword_100111618);
      sub_100038EA0();
      sub_10003900C();
      _ConditionalContent<>.init(storage:)();
      v188 = v250;
      v189 = v231;
      *(v231 + 2) = v249;
      *(v189 + 3) = v188;
      *(v189 + 4) = v251[0];
      *(v189 + 79) = *(v251 + 15);
      v190 = v248;
      *v189 = v247;
      *(v189 + 1) = v190;
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
      sub_100059E10();
      sub_100039178();
      _ConditionalContent<>.init(storage:)();
      sub_10002A748(v228, v227, v226);

      v51 = &v252;
      v52 = &qword_10015BB60;
    }

    v53 = v187;
    return sub_1000068B0(v51, v52, v53);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v220 = v22;
      sub_100039318(v28, v22, type metadata accessor for PrimarySettingsListFamilyLinkModel);
      sub_100038C3C(v22, v18, type metadata accessor for PrimarySettingsListFamilyLinkModel);
      v153 = *v29;
      v154 = v29[1];
      v155 = v29[2];
      v227 = v29[3];
      v228 = v155;
      *&v229 = *(v29 + *(v30 + 24));
      v156 = *(v29 + 32);
      sub_100038C3C(v18, v16, type metadata accessor for PrimarySettingsListFamilyLink);
      v157 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v158 = swift_allocObject();
      sub_100039318(v16, v158 + v157, type metadata accessor for PrimarySettingsListFamilyLink);
      type metadata accessor for SettingsAppModel();
      v159 = v153;
      v160 = v153;
      v161 = v154;
      v162 = v154;
      v164 = v227;
      v163 = v228;
      sub_100029920(v160, v162, v228, v227, v156);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
      v165 = Environment.init<A>(_:)();
      v167 = v166;
      sub_10002C6F8(v18, type metadata accessor for PrimarySettingsListFamilyLink);
      LOBYTE(v241) = v167 & 1;
      *&v252 = v165;
      BYTE8(v252) = v167 & 1;
      *(&v252 + 9) = v247;
      HIDWORD(v252) = *(&v247 + 3);
      *&v253 = v159;
      *(&v253 + 1) = v161;
      *&v254 = v163;
      *(&v254 + 1) = v164;
      LOBYTE(v255) = v156;
      *(&v255 + 1) = v234;
      DWORD1(v255) = *(&v234 + 3);
      *(&v255 + 1) = v229;
      *&v256 = sub_100059FB8;
      *(&v256 + 1) = v158;
      v249 = v254;
      v250 = v255;
      v251[0] = v256;
      v247 = v252;
      v248 = v253;
      v257 = 1;
      LOBYTE(v251[1]) = 1;
      sub_100059CA0(&v252, &v234, &qword_10015BAC8, &qword_100111600);
      sub_10004DED0(&qword_10015BAB8, &qword_1001115F8);
      sub_10004DED0(&qword_10015BAC8, &qword_100111600);
      sub_1000525A0(&qword_10015BAB0, &qword_10015BAB8, &qword_1001115F8);
      sub_1000525A0(&qword_10015BAC0, &qword_10015BAC8, &qword_100111600);
      _ConditionalContent<>.init(storage:)();
      v249 = v236;
      v250 = v237;
      v251[0] = v238;
      LOWORD(v251[1]) = v239;
      v247 = v234;
      v248 = v235;
      v258 = 0;
      sub_10004DED0(&qword_10015BAA8, &qword_1001115F0);
      sub_10004DED0(&qword_10015BAD8, &qword_100111608);
      sub_100038CB4();
      sub_100038D94();
      _ConditionalContent<>.init(storage:)();
      v236 = v243;
      v237 = v244;
      v238 = v245;
      v239 = v246;
      v234 = v241;
      v235 = v242;
      v259 = 0;
      v240 = 0;
      sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
      sub_10004DED0(&qword_10015BB00, &qword_100111618);
      sub_100038EA0();
      sub_10003900C();
      _ConditionalContent<>.init(storage:)();
      v168 = v250;
      v169 = v231;
      *(v231 + 2) = v249;
      *(v169 + 3) = v168;
      *(v169 + 4) = v251[0];
      *(v169 + 79) = *(v251 + 15);
      v170 = v248;
      *v169 = v247;
      *(v169 + 1) = v170;
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
      sub_100059E10();
      sub_100039178();
      _ConditionalContent<>.init(storage:)();
      sub_1000068B0(&v252, &qword_10015BAC8, &qword_100111600);
      return sub_10002C6F8(v220, type metadata accessor for PrimarySettingsListFamilyLinkModel);
    }

    v80 = *v28;
    v79 = *(v28 + 1);
    v81 = v28[16];
    v82 = *v29;
    v84 = v29[2];
    v83 = v29[3];
    v85 = *(v29 + *(v30 + 24));
    v228 = v29[1];
    *&v229 = v85;
    v86 = *(v29 + 32);
    v87 = swift_allocObject();
    *(v87 + 16) = v80;
    *(v87 + 24) = v79;
    *(v87 + 32) = v81;
    type metadata accessor for SettingsAppModel();
    v88 = v228;
    sub_100029920(v82, v228, v84, v83, v86);
    sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
    v89 = Environment.init<A>(_:)();
    LOBYTE(v241) = v90 & 1;
    *&v252 = v89;
    BYTE8(v252) = v90 & 1;
    *(&v252 + 9) = v247;
    HIDWORD(v252) = *(&v247 + 3);
    *&v253 = v82;
    *(&v253 + 1) = v88;
    *&v254 = v84;
    *(&v254 + 1) = v83;
    LOBYTE(v255) = v86;
    *(&v255 + 1) = v234;
    DWORD1(v255) = *(&v234 + 3);
    *(&v255 + 1) = v229;
    *&v256 = sub_1000407DC;
    *(&v256 + 1) = v87;
    v249 = v254;
    v250 = v255;
    v251[0] = v256;
    v247 = v252;
    v248 = v253;
    v257 = 0;
    LOBYTE(v251[1]) = 0;
    sub_100059CA0(&v252, &v234, &qword_10015BAB8, &qword_1001115F8);
    sub_10004DED0(&qword_10015BAB8, &qword_1001115F8);
    sub_10004DED0(&qword_10015BAC8, &qword_100111600);
    sub_1000525A0(&qword_10015BAB0, &qword_10015BAB8, &qword_1001115F8);
    sub_1000525A0(&qword_10015BAC0, &qword_10015BAC8, &qword_100111600);
    _ConditionalContent<>.init(storage:)();
    v249 = v236;
    v250 = v237;
    v251[0] = v238;
    LOWORD(v251[1]) = v239;
    v247 = v234;
    v248 = v235;
    v258 = 0;
    sub_10004DED0(&qword_10015BAA8, &qword_1001115F0);
    sub_10004DED0(&qword_10015BAD8, &qword_100111608);
    sub_100038CB4();
    sub_100038D94();
    _ConditionalContent<>.init(storage:)();
    v236 = v243;
    v237 = v244;
    v238 = v245;
    v239 = v246;
    v234 = v241;
    v235 = v242;
    v259 = 0;
    v240 = 0;
    sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
    sub_10004DED0(&qword_10015BB00, &qword_100111618);
    sub_100038EA0();
    sub_10003900C();
    _ConditionalContent<>.init(storage:)();
    v91 = v250;
    v92 = v231;
    *(v231 + 2) = v249;
    *(v92 + 3) = v91;
    *(v92 + 4) = v251[0];
    *(v92 + 79) = *(v251 + 15);
    v93 = v248;
    *v92 = v247;
    *(v92 + 1) = v93;
    swift_storeEnumTagMultiPayload();
    sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
    sub_100059E10();
    sub_100039178();
    _ConditionalContent<>.init(storage:)();
    v51 = &v252;
    v52 = &qword_10015BAB8;
    v53 = &qword_1001115F8;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v94 = *v28;
      v95 = *(v28 + 1);
      v96 = *(v28 + 3);
      v97 = *(v28 + 4);
      v98 = *(v28 + 5);
      v99 = v28[16];
      v258 = 0;
      *&v247 = v94;
      *(&v247 + 1) = v95;
      LOBYTE(v248) = v99;
      *(&v248 + 1) = v96;
      *&v249 = v97;
      *(&v249 + 1) = v98;
      LOBYTE(v251[1]) = 0;
      sub_100039F14(v94, v95, v99);

      sub_10004DED0(&qword_10015BAF0, &qword_100111610);
      sub_100038E4C();
      sub_1000525A0(&qword_10015BAE8, &qword_10015BAF0, &qword_100111610);
      _ConditionalContent<>.init(storage:)();
      v249 = v236;
      v250 = v237;
      v251[0] = v238;
      LOBYTE(v251[1]) = v239;
      v247 = v234;
      v248 = v235;
      v259 = 1;
      BYTE1(v251[1]) = 1;
      sub_10004DED0(&qword_10015BAA8, &qword_1001115F0);
      sub_10004DED0(&qword_10015BAD8, &qword_100111608);
      sub_100038CB4();
      sub_100038D94();
      _ConditionalContent<>.init(storage:)();
      v236 = v243;
      v237 = v244;
      v238 = v245;
      v239 = v246;
      v234 = v241;
      v235 = v242;
      LOBYTE(v252) = 0;
      v240 = 0;
      sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
      sub_10004DED0(&qword_10015BB00, &qword_100111618);
      sub_100038EA0();
      sub_10003900C();
      _ConditionalContent<>.init(storage:)();
      v100 = v250;
      v101 = v231;
      *(v231 + 2) = v249;
      *(v101 + 3) = v100;
      *(v101 + 4) = v251[0];
      *(v101 + 79) = *(v251 + 15);
      v102 = v248;
      *v101 = v247;
      *(v101 + 1) = v102;
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
      sub_100059E10();
      sub_100039178();
      _ConditionalContent<>.init(storage:)();
      sub_10002A748(v94, v95, v99);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v54 = *v28;
      v55 = *(v28 + 1);
      v56 = *v29;
      v57 = v29[1];
      v59 = v29[2];
      v58 = v29[3];
      *&v229 = *(v29 + *(v30 + 24));
      v60 = *(v29 + 32);
      v61 = swift_allocObject();
      *(v61 + 16) = v54;
      *(v61 + 24) = v55;
      type metadata accessor for SettingsAppModel();
      sub_100029920(v56, v57, v59, v58, v60);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
      v62 = Environment.init<A>(_:)();
      LOBYTE(v241) = v63 & 1;
      *&v252 = v62;
      BYTE8(v252) = v63 & 1;
      *(&v252 + 9) = v247;
      HIDWORD(v252) = *(&v247 + 3);
      *&v253 = v56;
      *(&v253 + 1) = v57;
      *&v254 = v59;
      *(&v254 + 1) = v58;
      LOBYTE(v255) = v60;
      *(&v255 + 1) = v234;
      DWORD1(v255) = *(&v234 + 3);
      *(&v255 + 1) = v229;
      *&v256 = sub_100059FAC;
      *(&v256 + 1) = v61;
      v249 = v254;
      v250 = v255;
      v251[0] = v256;
      v247 = v252;
      v248 = v253;
      v257 = 1;
      LOBYTE(v251[1]) = 1;
      v64 = &qword_10015BAF0;
      v65 = &qword_100111610;
      sub_100059CA0(&v252, &v234, &qword_10015BAF0, &qword_100111610);
      sub_10004DED0(&qword_10015BAF0, &qword_100111610);
      sub_100038E4C();
      sub_1000525A0(&qword_10015BAE8, &qword_10015BAF0, &qword_100111610);
      _ConditionalContent<>.init(storage:)();
      v249 = v236;
      v250 = v237;
      v251[0] = v238;
      LOBYTE(v251[1]) = v239;
      v247 = v234;
      v248 = v235;
      v258 = 1;
      BYTE1(v251[1]) = 1;
      sub_10004DED0(&qword_10015BAA8, &qword_1001115F0);
      sub_10004DED0(&qword_10015BAD8, &qword_100111608);
      sub_100038CB4();
      sub_100038D94();
      _ConditionalContent<>.init(storage:)();
      v236 = v243;
      v237 = v244;
      v238 = v245;
      v239 = v246;
      v234 = v241;
      v235 = v242;
      v259 = 0;
      v240 = 0;
    }

    else
    {
      v229 = *v28;
      v142 = *(v28 + 2);
      v143 = *v29;
      v144 = v29[1];
      v146 = v29[2];
      v145 = v29[3];
      v147 = *(v29 + *(v30 + 24));
      v148 = *(v29 + 32);
      v149 = swift_allocObject();
      *(v149 + 16) = v229;
      *(v149 + 32) = v142;
      type metadata accessor for SettingsAppModel();
      sub_100029920(v143, v144, v146, v145, v148);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel);
      v150 = Environment.init<A>(_:)();
      LOBYTE(v241) = v151 & 1;
      *&v252 = v150;
      BYTE8(v252) = v151 & 1;
      *(&v252 + 9) = v247;
      HIDWORD(v252) = *(&v247 + 3);
      *&v253 = v143;
      *(&v253 + 1) = v144;
      *&v254 = v146;
      *(&v254 + 1) = v145;
      LOBYTE(v255) = v148;
      *(&v255 + 1) = v234;
      DWORD1(v255) = *(&v234 + 3);
      *(&v255 + 1) = v147;
      *&v256 = sub_100059F98;
      *(&v256 + 1) = v149;
      v249 = v254;
      v250 = v255;
      v251[0] = v256;
      v247 = v252;
      v248 = v253;
      v257 = 0;
      LOBYTE(v251[1]) = 0;
      v64 = &qword_10015BB20;
      v65 = &qword_100111628;
      sub_100059CA0(&v252, &v234, &qword_10015BB20, &qword_100111628);
      sub_10004DED0(&qword_10015BB20, &qword_100111628);
      sub_10004DED0(&qword_10015BB30, &qword_100111630);
      sub_1000525A0(&qword_10015BB18, &qword_10015BB20, &qword_100111628);
      sub_1000525A0(&qword_10015BB28, &qword_10015BB30, &qword_100111630);
      _ConditionalContent<>.init(storage:)();
      v249 = v236;
      v250 = v237;
      v251[0] = v238;
      LOWORD(v251[1]) = v239;
      v247 = v234;
      v248 = v235;
      v258 = 0;
      sub_10004DED0(&qword_10015BB10, &qword_100111620);
      sub_10004DED0(&qword_10015BB40, &qword_100111638);
      sub_100038F2C();
      sub_100039098();
      _ConditionalContent<>.init(storage:)();
      v236 = v243;
      v237 = v244;
      v238 = v245;
      v239 = v246;
      v234 = v241;
      v235 = v242;
      v259 = 1;
      v240 = 1;
    }

    sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
    sub_10004DED0(&qword_10015BB00, &qword_100111618);
    sub_100038EA0();
    sub_10003900C();
    _ConditionalContent<>.init(storage:)();
    v66 = v250;
    v67 = v231;
    *(v231 + 2) = v249;
    *(v67 + 3) = v66;
    *(v67 + 4) = v251[0];
    *(v67 + 79) = *(v251 + 15);
    v152 = v248;
    *v67 = v247;
    *(v67 + 1) = v152;
    swift_storeEnumTagMultiPayload();
    sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
    sub_100059E10();
    sub_100039178();
    _ConditionalContent<>.init(storage:)();
    v51 = &v252;
    v52 = v64;
    v53 = v65;
  }

  return sub_1000068B0(v51, v52, v53);
}