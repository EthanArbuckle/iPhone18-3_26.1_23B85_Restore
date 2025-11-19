uint64_t sub_1974B5D4C()
{
  sub_1974433A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1974B5D80(__int128 *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v19 = *a1;
  v7 = *a1;
  ObjectType = swift_getObjectType();
  sub_1974A7FC4(0, ObjectType, *(&v19 + 1));
  swift_beginAccess();
  v9 = *(a2 + 80);

  v10 = sub_197473494(v7, *(&v19 + 1), v9);

  if (v10)
  {
    swift_beginAccess();
    sub_1974580E0(v7, *(&v19 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(v7, *(&v19 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1974556E8(0, ObjectType, *(&v19 + 1));
    result = sub_1974A7EA0(ObjectType, *(&v19 + 1));
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v20, v7, *(&v19 + 1));
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_beginAccess();
      sub_1974580E0(v7, *(&v19 + 1));
      swift_endAccess();
      swift_unknownObjectRelease();
      sub_197432360(0, ObjectType, *(&v19 + 1));
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v20, v7, *(&v19 + 1));
      swift_endAccess();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (sub_197442A30(ObjectType, *(&v19 + 1)))
    {
      swift_beginAccess();
      v12 = sub_1974580E0(v7, *(&v19 + 1));
      swift_endAccess();
      if (!v12)
      {
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000014, 0x80000001975279A0);
        sub_19752235C();
        MEMORY[0x19A8DFF80](0xD000000000000087, 0x80000001975279C0);
        result = sub_1975223EC();
        __break(1u);
        return result;
      }

      v13 = v4;
      swift_unknownObjectRelease();
      sub_197458088(0, ObjectType, *(&v19 + 1));
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v20, v7, *(&v19 + 1));
      swift_endAccess();
    }

    else
    {
      v13 = v4;
      if (sub_19745805C(ObjectType, *(&v19 + 1)))
      {
        swift_beginAccess();
        sub_1974580E0(v7, *(&v19 + 1));
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1974327FC(v20, v7, *(&v19 + 1));
        swift_endAccess();
        swift_unknownObjectRelease();
        sub_197442A5C(0, ObjectType, *(&v19 + 1));
      }

      sub_1974A7F6C(1, ObjectType, *(&v19 + 1));
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v20, v7, *(&v19 + 1));
      swift_endAccess();
    }

    swift_unknownObjectRelease();
    v14 = *a4;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = a4;
    *a4 = v14;
    v20[6] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_197442AD4(0, *(v14 + 2) + 1, 1, v14);
      *a4 = v14;
    }

    v18 = *(v14 + 2);
    v17 = *(v14 + 3);
    if (v18 >= v17 >> 1)
    {
      v14 = sub_197442AD4((v17 > 1), v18 + 1, 1, v14);
      *v16 = v14;
    }

    *(v14 + 2) = v18 + 1;
    *&v14[16 * v18 + 32] = v19;
    swift_beginAccess();
    sub_1974580E0(v7, *(&v19 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_197432360(0, ObjectType, *(&v19 + 1));
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(v20, v7, *(&v19 + 1));
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1974B6340(uint64_t a1, char a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_197457A40(1, ObjectType, v15);
      result = swift_unknownObjectRelease();
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;

  for (i = 0; v19; result = swift_unknownObjectRelease())
  {
    v22 = i;
LABEL_19:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = (*(a1 + 48) + ((v22 << 10) | (16 * v23)));
    v26 = *v24;
    v25 = v24[1];
    v27 = swift_unknownObjectRetain();
    sub_1974B6940(v27, v25, a2 & 1, 1);
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v20)
    {
    }

    v19 = *(v4 + 8 * v22);
    ++i;
    if (v19)
    {
      i = v22;
      goto LABEL_19;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1974B651C(char a1)
{
  v24 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  if (*(v1[14] + 16))
  {
    v3 = v1[14];

    sub_1974AE3E0(v4);
  }

  swift_beginAccess();
  if (*(v1[12] + 16))
  {
    v5 = v1[12];

    sub_1974AE500(v6);
  }

  v7 = v1[15];
  if ((v7 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v8 = v1[15];
    }

    v9 = v1[15];

    v10 = sub_1975220EC();

    if (v10 >= 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(v7 + 16) >= 1)
  {
LABEL_9:
    v11 = v1[15];

    sub_1974C0170(v12, v1);
  }

  result = sub_1974B5018(v24);
  if (a1)
  {
    v14 = 0;
    v15 = v1[14];
    v18 = *(v15 + 56);
    v16 = v15 + 56;
    v17 = v18;
    v19 = 1 << *(v16 - 24);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v17;
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
LABEL_14:
      v21 &= v21 - 1;
    }

    while (1)
    {
      v23 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        goto LABEL_20;
      }

      v21 = *(v16 + 8 * v23);
      ++v14;
      if (v21)
      {
        v14 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return 1;
  }

  return result;
}

void sub_1974B66EC(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  if ([a1 object])
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1974050A8(v12, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_12;
  }

  sub_1974C179C(0, &qword_1EAF2B910, 0x1E696AFC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *&v12[0] = 0;
    *(&v12[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197527420);
    v5 = [a1 description];
    v6 = sub_1975217BC();
    v8 = v7;

    MEMORY[0x19A8DFF80](v6, v8);

    sub_1975223EC();
    __break(1u);
    return;
  }

LABEL_8:
  if ((*(v1 + 60) & 1) == 0)
  {
    sub_19743FB78(0);
  }
}

uint64_t sub_1974B68DC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

void sub_1974B6940(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for EditingState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v43);
  v16 = v43;
  v17 = BYTE8(v43);
  if (a4)
  {
    v43 = xmmword_19752EA60;
    v44 = 0;
    v45 = 0;
    swift_beginAccess();
    sub_1974028EC(v16, v17);
    sub_197433D4C(&v43, v16, v17);
    swift_endAccess();
  }

  sub_197452A84(0, ObjectType, a2);
  v18 = sub_197432B8C(ObjectType, a2);
  sub_197433EE8(v18 | 0x80080, ObjectType, a2);
  swift_unknownObjectRetain();
  if (sub_19745805C(ObjectType, a2) & 1) != 0 || (sub_1974A8048(ObjectType, a2))
  {
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  if (sub_197442A30(ObjectType, a2) & 1) != 0 || (sub_1974A801C(ObjectType, a2))
  {
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  if (sub_19744377C(ObjectType, a2) & 1) != 0 || (sub_1974412B4(ObjectType, a2))
  {
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(a1, a2);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  sub_1974A7F38(ObjectType, a2);
  sub_1974A4718(0, 0, ObjectType, a2);
  sub_197442F3C(0, 0, ObjectType, a2);
  if ((a3 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v17)
  {
    if (![v16 isTemporaryID])
    {
      v27 = [v16 storeIdentifier];
      v20 = sub_1975217BC();
      v19 = v28;

      v22 = *(v5 + 16);
      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

LABEL_23:
    sub_1974028C8(v16, v17);
    swift_unknownObjectRelease();
    return;
  }

  if (v17 != 1)
  {
    swift_unknownObjectRelease();
    v25 = v16;
    v26 = 2;
    goto LABEL_25;
  }

  if (*(v16 + 33))
  {
    goto LABEL_23;
  }

  v19 = *(v16 + 24);
  if (!v19)
  {
    goto LABEL_41;
  }

  v20 = *(v16 + 16);
  v21 = *(v16 + 24);

  v22 = *(v5 + 16);
  if (!v22)
  {
LABEL_18:
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      goto LABEL_29;
    }

    __break(1u);
LABEL_41:
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000004FLL, 0x80000001975273D0);
    v48 = v16;
    v49 = 1;
    sub_19752235C();
    sub_1975223EC();
    __break(1u);
    return;
  }

LABEL_28:
  v24 = v22;
LABEL_29:
  swift_beginAccess();
  v29 = *(v24 + 56);

  if (!*(v29 + 16))
  {
    swift_unknownObjectRelease();
    sub_1974028C8(v16, v17);

LABEL_36:

    return;
  }

  v30 = sub_1973F4028(v20, v19);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    swift_unknownObjectRelease();
    sub_1974028C8(v16, v17);
    goto LABEL_36;
  }

  v33 = *(*(v29 + 56) + 16 * v30);
  swift_unknownObjectRetain();

  type metadata accessor for DefaultStore(0);
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v35 = v34;
    v36 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v37 = sub_197404E70(v5 + v36, v14);
    v38 = *(v35 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
    v40 = MEMORY[0x1EEE9AC00](v37, v39);
    MEMORY[0x1EEE9AC00](v40, v41);

    os_unfair_lock_lock(v38 + 4);
    sub_1974C1DD8(&v46);
    os_unfair_lock_unlock(v38 + 4);
    v42 = v46;

    if (v42)
    {
      v46 = v16;
      v47 = v17;
      sub_19746C460(&v46);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    sub_19740BE74(v14, type metadata accessor for EditingState);
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
LABEL_20:
  swift_unknownObjectRelease();
LABEL_21:
  v25 = v16;
  v26 = v17;
LABEL_25:
  sub_1974028C8(v25, v26);
}

uint64_t sub_1974B7028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_197407130();
  result = PersistentModel.modelContext.getter(a2, a3);
  if (result)
  {
    if (result == v3)
    {
      sub_197440AC4();
      sub_1974A7FC4(1, a2, a3);
      sub_197440D38(a1, a2, a3);
      *(v3 + 50) = 1;
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(&v11, a1, a3);
      swift_endAccess();
      swift_unknownObjectRelease();
      if ((*(v3 + 58) & 1) == 0 && *(v3 + 59) != 1)
      {
        swift_beginAccess();
        v9 = *(v3 + 40);
        if (v9)
        {
          v10 = v9;
          if ([v10 groupsByEvent])
          {
            type metadata accessor for ModelContext(0);
            sub_197521DBC();
          }
        }

        *(v4 + 58) = 1;
      }

      *(v4 + 48) = 1;
      sub_1974A8074(a2, a3);
    }

    else
    {
    }
  }

  return result;
}

void sub_1974B71DC()
{
  if (*(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_contextChanged) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_contextChanged) = 0;
    v1 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay);
    v2 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME);
    v3 = v2 * 0.5;
    if (v1 == 0.0)
    {
      *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = v3;
      sub_1974B72B4(v3);
    }

    else
    {
      v4 = v2 * 0.25;
      if (v1 == v3)
      {
        *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = v4;
        sub_1974B72B4(v2 * 0.25);
      }

      else if (v1 == v4)
      {
        *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = v2 * 0.125;
        sub_1974B72B4(v2 * 0.125);
      }

      else
      {
        v5 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME);
        *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = v2;
        sub_1974B72B4(v5);
      }
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
    sub_1974B72B4(0.0);
  }
}

void sub_1974B72B4(double a1)
{
  if (a1 != 0.0 && *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME) > a1)
  {
    v5 = objc_opt_self();
    aBlock[4] = sub_1974C1730;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1974B7418;
    aBlock[3] = &block_descriptor_3;
    v6 = _Block_copy(aBlock);

    v7 = [v5 scheduledTimerWithTimeInterval:0 repeats:v6 block:a1];
    _Block_release(v6);
  }

  else
  {
    v3 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
    swift_beginAccess();
    if (*(v1 + v3) == 1 && *(v1 + 48) == 1)
    {
      *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
      sub_19740FF68();
    }
  }
}

void sub_1974B7418(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1974B7514(void (*a1)(void))
{
  v4 = MEMORY[0x19A8E1370]();
  a1();
  if (!v2 && *(v1 + 48) == 1)
  {
    sub_19740FF68();
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1974B7594(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 24);
  v5 = swift_checkMetadataState();
  v4(&v19, v5, AssociatedConformanceWitness);
  v6 = v19;
  v7 = v20;
  v8 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v9 = *(a2 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_197403C30(v6, v7);
    if (v11)
    {
      sub_19742FE50(*(v9 + 56) + 32 * v10, &v16);
      sub_1974028C8(v6, v7);

      v12 = *(&v16 + 1) != 1;
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  sub_1974028C8(v6, v7);
  v12 = 0;
  v16 = xmmword_19752EA60;
  v17 = 0;
  v18 = 0;
LABEL_7:
  if (!v12)
  {
    return sub_1974050A8(&v16, &qword_1EAF2B640, &unk_19752F160);
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(&v16 + 1);
  result = sub_1974050A8(&v16, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    sub_1974B6940(Strong, v15, 1, 1);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1974B7780(void *a1@<X1>, uint64_t a2@<X8>)
{
  (*(*(*a1 + 88) + 24))(&v12, *(*a1 + 80));
  v4 = v12;
  v5 = v13;
  v6 = a1[2];
  if (*(v6 + 16))
  {
    v7 = sub_197403C30(v12, v13);
    if (v8)
    {
      v9 = *(v6 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      sub_1974028EC(*v9, v11);
      sub_1974028C8(v4, v5);
      v4 = v10;
      v5 = v11;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v5;
}

uint64_t sub_1974B786C()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 24);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

unint64_t ModelContext.NotificationKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6164696C61766E69;
  v3 = 0x6465747265736E69;
  v4 = 0x64657461647075;
  if (v1 != 3)
  {
    v4 = 0x646574656C6564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1974B79D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a5;
  v31 = a1;
  v32 = a4;
  v33 = a3;
  Descriptor = type metadata accessor for FetchDescriptor();
  v10 = *(Descriptor - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Descriptor, v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for EditingState();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest();
  v20 = *(Request - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](Request, v22);
  v24 = &v28 - v23;
  sub_197407130();
  v25 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  sub_197404E70(v7 + v25, v19);
  v26 = v31;
  (*(v10 + 16))(v14, v31, Descriptor);
  sub_197407438(v19, v14, v24);
  v36 = a6;
  v37 = a7;
  v38 = v24;
  v39 = v7;
  v40 = v26;
  v41 = v32;
  v42 = v34;
  v43 = v33;
  sub_1974072C4(sub_1974C0B50, v35, a6, a7);
  return (*(v20 + 8))(v24, Request);
}

void sub_1974B7C2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v64 = a5;
  v54 = a7;
  v55 = a8;
  v65 = a6;
  v68 = a4;
  v62 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  v15 = *(v67 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v18 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v66 = &v52 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = a10;
  v70 = AssociatedTypeWitness;
  v71 = a12;
  v72 = AssociatedConformanceWitness;
  Result = type metadata accessor for DataStoreFetchResult();
  v58 = *(Result - 8);
  v22 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](Result, v23);
  v69 = a2;
  v70 = v62;
  v25 = &v52 - v24;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  v26 = v73;
  v27 = *(a13 + 80);
  v28 = v68;
  v68 = a10;
  v29 = v63;
  v27(v28, a10, a12, a11, a13);
  if (v29)
  {
    swift_unknownObjectRelease();
    return;
  }

  v53 = v15;
  v61 = a11;
  v62 = a12;
  v57 = v26;
  v69 = sub_1975215CC();
  v30 = *(Result + 52);
  v63 = v25;
  v31 = *&v25[v30];

  if (sub_197521A5C())
  {
    v32 = 0;
    v33 = v67;
    v59 = a13;
    v60 = (v67 + 16);
    v34 = (v67 + 32);
    v35 = (v67 + 8);
    do
    {
      v36 = sub_197521A3C();
      sub_1975219EC();
      if (v36)
      {
        v37 = v66;
        (*(v33 + 16))(v66, v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32, AssociatedTypeWitness);
        v38 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v42 = sub_19752222C();
        if (v53 != 8)
        {
          __break(1u);
          objc_autoreleasePoolPop(v36);
          __break(1u);
          return;
        }

        v73 = v42;
        v43 = v66;
        (*v60)(v66, &v73, AssociatedTypeWitness);
        v37 = v43;
        swift_unknownObjectRelease();
        v38 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      v39 = (*v34)(v18, v37, AssociatedTypeWitness);
      v40 = MEMORY[0x19A8E1370](v39);
      sub_1974B818C(v64, v18, v65, v63, &v69, v68, v61, v62);
      objc_autoreleasePoolPop(v40);
      (*v35)(v18, AssociatedTypeWitness);
      ++v32;
      v41 = v38 == sub_197521A5C();
      v33 = v67;
    }

    while (!v41);
  }

  v44 = v69;

  if (sub_197521A5C())
  {
    v45 = 0;
    v46 = v54;
    while (1)
    {
      v47 = sub_197521A3C();
      sub_1975219EC();
      if (v47)
      {
        v48 = *(v44 + 8 * v45 + 32);
        swift_unknownObjectRetain();
        v49 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v48 = sub_19752222C();
        v49 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      v50 = MEMORY[0x19A8E1370]();
      v46(v48);
      objc_autoreleasePoolPop(v50);
      swift_unknownObjectRelease();
      ++v45;
      v41 = v49 == sub_197521A5C();
      v51 = v58;
      if (v41)
      {
        goto LABEL_25;
      }
    }
  }

  v51 = v58;
LABEL_25:
  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();
  (*(v51 + 8))(v63, Result);
}

uint64_t sub_1974B818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a3 + *(type metadata accessor for FetchDescriptor() + 48));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for DataStoreFetchResult();
  sub_197401480(a2, a6, v12, *(a4 + *(v13 + 56)), AssociatedTypeWitness, a6, AssociatedConformanceWitness, a8);
  sub_197521AAC();
  return sub_197521A7C();
}

uint64_t sub_1974B82B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23[4] = AssociatedConformanceWitness;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v23);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1Tm_0, a2, AssociatedTypeWitness);
  v22[0] = a7;
  v22[1] = AssociatedTypeWitness;
  v22[2] = a9;
  v22[3] = AssociatedConformanceWitness;
  v17 = type metadata accessor for DataStoreFetchResult();
  sub_1974006D8(a7, v23, *(a3 + *(v17 + 56)), AssociatedTypeWitness, a7, AssociatedConformanceWitness, a9, v24);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v23);
  if (v21)
  {
    *a11 = v21;
  }

  else
  {
    sub_1973FFC48(v24, v22);
    swift_beginAccess();
    sub_1974028EC(a5, a6);
    v24[7] = a7;
    swift_getExtendedExistentialTypeMetadata();
    sub_197405108();
    sub_19752166C();
    sub_19752168C();
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  return result;
}

uint64_t sub_1974B84A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v128[3] = a3;
  v111 = sub_19752139C();
  v9 = sub_197521F5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v109 = &v108 - v13;
  v118 = a3;
  v113 = a4;
  Descriptor = type metadata accessor for FetchDescriptor();
  v14 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor, v15);
  v119 = &v108 - v17;
  v128[0] = MEMORY[0x1E69E7CD0];
  v18 = *(a2 + 16);
  v122 = v5;
  v108 = v19;
  v112 = v9;
  v110 = v10;
  if (v18)
  {
    v20 = (a2 + 40);
    v21 = MEMORY[0x1E69E7CC8];
    *&v16 = 136315394;
    v116 = v16;
    *&v16 = 136315138;
    v117 = v16;
    while (1)
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      if (*v20)
      {
        if (v23 != 1 || (v24 = v22[3]) == 0)
        {
          sub_1974028EC(*(v20 - 1), *v20);
          if (qword_1EAF2AD00 != -1)
          {
            swift_once();
          }

          v26 = sub_19752157C();
          __swift_project_value_buffer(v26, qword_1EAF33E50);
          sub_1974028EC(v22, v23);
          v27 = sub_19752155C();
          v28 = sub_197521DDC();
          sub_1974028C8(v22, v23);
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v124 = v21;
            v30 = v29;
            v31 = swift_slowAlloc();
            v123 = v18;
            v32 = v31;
            v127 = v31;
            *v30 = v117;
            v125 = v22;
            v126 = v23;
            sub_1974028EC(v22, v23);
            v33 = sub_1975217CC();
            v35 = sub_197462310(v33, v34, &v127);

            *(v30 + 4) = v35;
            v5 = v122;
            _os_log_impl(&dword_1973F2000, v27, v28, "cannot fulfill model without a store identifier:%s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v32);
            v36 = v32;
            v18 = v123;
            MEMORY[0x19A8E1B50](v36, -1, -1);
            v37 = v30;
            v21 = v124;
            MEMORY[0x19A8E1B50](v37, -1, -1);
            sub_1974028C8(v22, v23);
          }

          else
          {

            sub_1974028C8(v22, v23);
          }

          goto LABEL_4;
        }

        v123 = v18;
        v25 = v22[2];
        sub_1974028EC(v22, 1);
      }

      else
      {
        v123 = v18;
        sub_1974028EC(v22, 0);
        v38 = [v22 storeIdentifier];
        v25 = sub_1975217BC();
        v24 = v39;
      }

      v40 = *(v5 + 16);
      v124 = v21;
      if (v40)
      {
        Strong = v40;
      }

      else
      {
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          goto LABEL_58;
        }
      }

      v42 = Strong;
      swift_beginAccess();
      v43 = *(v42 + 56);

      if (!*(v43 + 16))
      {
        break;
      }

      v44 = sub_1973F4028(v25, v24);
      v46 = v45;

      if ((v46 & 1) == 0)
      {
        goto LABEL_24;
      }

      v121 = *(*(v43 + 56) + 16 * v44);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v48 = (*(*(&v121 + 1) + 40))(ObjectType);
      v50 = v49;
      swift_unknownObjectRetain();
      v51 = v124;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = v51;
      v120 = v48;
      v54 = sub_1973F4028(v48, v50);
      v55 = v51[2];
      v56 = (v53 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_56;
      }

      v58 = v53;
      if (v51[3] >= v57)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19747B284();
        }
      }

      else
      {
        sub_19740CAD4(v57, isUniquelyReferenced_nonNull_native);
        v59 = sub_1973F4028(v120, v50);
        if ((v58 & 1) != (v60 & 1))
        {
          goto LABEL_60;
        }

        v54 = v59;
      }

      v5 = v122;
      if (v58)
      {

        v21 = v125;
        v69 = v125[7];
        v70 = *(v69 + 16 * v54);
        *(v69 + 16 * v54) = v121;
        swift_unknownObjectRelease();
      }

      else
      {
        v71 = v125;
        v125[(v54 >> 6) + 8] |= 1 << v54;
        v72 = (v71[6] + 16 * v54);
        *v72 = v120;
        v72[1] = v50;
        *(v71[7] + 16 * v54) = v121;
        v73 = v71[2];
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          goto LABEL_57;
        }

        v21 = v71;
        v71[2] = v75;
      }

      sub_1974028EC(v22, v23);
      sub_19742AE44(&v125, v22, v23);
      swift_unknownObjectRelease();
      sub_1974028C8(v22, v23);
      sub_1974028C8(v125, v126);
LABEL_41:
      v18 = v123;
LABEL_4:
      v20 += 16;
      if (!--v18)
      {
        goto LABEL_43;
      }
    }

LABEL_24:

    if (qword_1EAF2AD00 != -1)
    {
      swift_once();
    }

    v61 = sub_19752157C();
    __swift_project_value_buffer(v61, qword_1EAF33E50);
    sub_1974028EC(v22, v23);

    v62 = sub_19752155C();
    v63 = sub_197521DDC();
    sub_1974028C8(v22, v23);

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *&v121 = swift_slowAlloc();
      v127 = v121;
      *v64 = v116;
      v125 = v22;
      v126 = v23;
      sub_1974028EC(v22, v23);
      v65 = sub_1975217CC();
      v67 = sub_197462310(v65, v66, &v127);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2080;
      if (*(v5 + 16))
      {
        v68 = *(v5 + 16);
      }

      else
      {
        v76 = swift_weakLoadStrong();
        if (!v76)
        {
          goto LABEL_59;
        }

        v68 = v76;
      }

      swift_beginAccess();
      v77 = *(v68 + 56);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
      v78 = sub_19752160C();
      v80 = v79;

      v81 = sub_197462310(v78, v80, &v127);

      *(v64 + 14) = v81;
      _os_log_impl(&dword_1973F2000, v62, v63, "data store not found for:%s in: %s", v64, 0x16u);
      v82 = v121;
      swift_arrayDestroy();
      MEMORY[0x19A8E1B50](v82, -1, -1);
      MEMORY[0x19A8E1B50](v64, -1, -1);
      sub_1974028C8(v22, v23);

      v5 = v122;
    }

    else
    {

      sub_1974028C8(v22, v23);
    }

    v21 = v124;
    goto LABEL_41;
  }

  v21 = MEMORY[0x1E69E7CC8];
LABEL_43:
  v83 = v111;
  v84 = *(*(v111 - 8) + 56);
  v85 = v109;
  v84(v109, 1, 1, v111);
  v86 = v118;
  sub_197520C4C();
  v87 = sub_197521A1C();
  v88 = v119;
  v89 = v113;
  v90 = FetchDescriptor.init(predicate:sortBy:)(v85, v87, v119);
  v124 = &v108;
  MEMORY[0x1EEE9AC00](v90, v91);
  *(&v108 - 4) = v86;
  *(&v108 - 3) = v89;
  *(&v108 - 2) = v128;
  sub_1975213AC();
  v84(v85, 0, 1, v83);
  (*(v110 + 40))(v88, v85, v112);
  v92 = Descriptor;
  v88[*(Descriptor + 48)] = 0;
  v88[*(v92 + 60)] = 0;
  v93 = v21 + 8;
  v94 = 1 << *(v21 + 32);
  v95 = -1;
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  v96 = v95 & v21[8];
  v97 = (v94 + 63) >> 6;
  v98 = v21;

  v99 = 0;
  v100 = v114;
  if (v96)
  {
    while (1)
    {
      v101 = v99;
LABEL_50:
      v102 = (v98[7] + ((v101 << 10) | (16 * __clz(__rbit64(v96)))));
      v103 = *v102;
      v104 = v102[1];
      v105 = swift_getObjectType();
      v106 = swift_unknownObjectRetain();
      sub_1974B8FB8(v106, v119, v122, v128, v118, v105, v89, v104);
      if (v100)
      {
        break;
      }

      v96 &= v96 - 1;
      swift_unknownObjectRelease();
      v99 = v101;
      if (!v96)
      {
        goto LABEL_47;
      }
    }

    swift_unknownObjectRelease();
LABEL_54:

    (*(v108 + 8))(v119, Descriptor);
  }

  else
  {
LABEL_47:
    while (1)
    {
      v101 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        break;
      }

      if (v101 >= v97)
      {
        goto LABEL_54;
      }

      v96 = v93[v101];
      ++v99;
      if (v96)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    result = sub_1975229CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974B8FB8(__int128 *a1, char *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7, char *a8)
{
  v100 = a4;
  v126 = a1;
  v127 = a3;
  v123 = a2;
  v135[10] = a5;
  v13 = sub_19752139C();
  v111 = sub_197521F5C();
  v102 = *(v111 - 1);
  v14 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v111, v15);
  v110 = (&v96 - v16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = sub_197521F5C();
  v99 = *(v105 - 8);
  v18 = *(v99 + 64);
  v20 = MEMORY[0x1EEE9AC00](v105, v19);
  v107 = &v96 - v21;
  v98 = *(AssociatedTypeWitness - 8);
  v22 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v104 = (&v96 - v24);
  v122 = a6;
  v25 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v135[4] = a5;
  v135[5] = AssociatedTypeWitness;
  v108 = AssociatedTypeWitness;
  v135[6] = a7;
  v135[7] = AssociatedConformanceWitness;
  v103 = AssociatedConformanceWitness;
  v106 = type metadata accessor for DataStoreFetchResult();
  v97 = *(v106 - 8);
  v27 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v106, v28);
  v128 = &v96 - v29;
  v30 = type metadata accessor for EditingState();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v120 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest();
  v34 = *(Request - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](Request, v36);
  v129 = &v96 - v37;
  v124 = a5;
  v125 = a7;
  Descriptor = type metadata accessor for FetchDescriptor();
  v39 = *(Descriptor - 8);
  v40 = *(v39 + 64);
  v42 = MEMORY[0x1EEE9AC00](Descriptor, v41);
  v44 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v45);
  v47 = &v96 - v46;
  v48 = v123;
  swift_beginAccess();
  v101 = v39;
  v49 = *(v39 + 16);
  v121 = Descriptor;
  v119 = v39 + 16;
  v118 = v49;
  v49(v47, v48, Descriptor);
  v123 = a8;
  v116 = *(a8 + 80);
  v117 = (a8 + 80);
  v115 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v112 = (v34 + 8);
  v50 = (v102 + 16);
  v109 = (v13 - 8);
  v51 = (v102 + 8);
  v114 = v47;
  while (1)
  {
    v52 = v120;
    sub_197404E70(v115 + v127, v120);
    v118(v44, v47, v121);
    v53 = v129;
    v54 = v52;
    v55 = v124;
    v56 = v125;
    sub_197407438(v54, v44, v129);
    v57 = v25;
    (v116)(v53, v55, v56, v122, v123);
    if (!v25)
    {
      v65 = *&v128[*(v106 + 52)];

      v66 = v108;
      v67 = sub_197521A5C();
      v119 = sub_197405108();
      v51 = &v96;
      v135[0] = MEMORY[0x19A8DFD40](v67, &type metadata for PersistentIdentifier, v66);
      v133 = v65;
      MEMORY[0x1EEE9AC00](v135[0], v68);
      v60 = (&v96 - 4);
      v69 = v123;
      v70 = v122;
      *(&v96 - 6) = v124;
      *(&v96 - 5) = v70;
      *(&v96 - 4) = v125;
      *(&v96 - 3) = v69;
      v94 = v135;
      sub_197521AAC();
      swift_getWitnessTable();
      sub_19752195C();

      v71 = v100;
      swift_beginAccess();
      v72 = *v71;
      v73 = *v71 + 56;
      v74 = 1 << *(*v71 + 32);
      v75 = -1;
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      v76 = v75 & *(*v71 + 56);
      v77 = (v74 + 63) >> 6;
      v117 = (v98 + 48);
      v116 = (v98 + 32);
      v115 = (v98 + 8);
      v111 = (v99 + 8);
      v98 = v69 + 40;
      v120 = v72;

      v78 = 0;
      *&v79 = 136315394;
      v96 = v79;
      v118 = v77;
      while (v76)
      {
        v62 = v78;
LABEL_20:
        v80 = *(v120 + 48) + ((v62 << 10) | (16 * __clz(__rbit64(v76))));
        v82 = *(v80 + 8);
        v76 &= v76 - 1;
        v131 = *v80;
        v81 = v131;
        v132 = v82;
        sub_1974028EC(v131, v82);
        sub_1974028EC(v81, v82);
        v83 = v107;
        v51 = v108;
        sub_19752167C();
        sub_1974028C8(v131, v132);
        if ((*v117)(v83, 1, v51) == 1)
        {
          (*v111)(v83, v105);
          if (qword_1EAF2AD00 != -1)
          {
            swift_once();
          }

          v84 = sub_19752157C();
          __swift_project_value_buffer(v84, qword_1EAF33E50);
          sub_1974028EC(v81, v82);
          v51 = v126;
          swift_unknownObjectRetain();
          v60 = sub_19752155C();
          v85 = sub_197521DDC();
          swift_unknownObjectRelease();
          sub_1974028C8(v81, v82);
          if (os_log_type_enabled(v60, v85))
          {
            v51 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v130 = v110;
            *v51 = v96;
            v86 = *(v123 + 40);
            v109 = v60;
            LODWORD(v102) = v85;
            v87 = v86(v122);
            v99 = sub_197462310(v87, v88, &v130);

            *(v51 + 4) = v99;
            *(v51 + 6) = 2080;
            v131 = v81;
            v132 = v82;
            sub_1974028EC(v81, v82);
            v89 = sub_1975217CC();
            v99 = sub_197462310(v89, v90, &v130);

            v100 = v51;
            *(v51 + 14) = v99;
            v91 = v109;
            _os_log_impl(&dword_1973F2000, v109, v102, "data store (%s) did not return a snapshot for: %s", v51, 0x16u);
            v60 = v110;
            swift_arrayDestroy();
            MEMORY[0x19A8E1B50](v60, -1, -1);
            MEMORY[0x19A8E1B50](v100, -1, -1);
            sub_1974028C8(v81, v82);
          }

          else
          {

            sub_1974028C8(v81, v82);
          }
        }

        else
        {
          v60 = v104;
          (*v116)(v104, v83, v51);
          sub_197401480(v60, v124, 0, *&v128[*(v106 + 56)], v51, v124, v103, v125);
          swift_unknownObjectRelease();
          sub_1974028C8(v81, v82);
          (*v115)(v60, v51);
        }

        v78 = v62;
        v53 = v129;
        v77 = v118;
      }

      while (1)
      {
        v62 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        if (v62 >= v77)
        {
          (*v112)(v53, Request);

          (*(v97 + 8))(v128, v106);

          return (*(v101 + 8))(v114, v121);
        }

        v76 = *(v73 + 8 * v62);
        ++v78;
        if (v76)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_29:
      (*v51)(v60, v62);
      v133 = 0;
      v134 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000007FLL, 0x8000000197527130);
      sub_1975227FC();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      v93 = (*(v123 + 40))(v122);
      MEMORY[0x19A8DFF80](v93);

      v95 = 0;
      v94 = 2773;
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    (*v112)(v53, Request);
    v131 = v25;
    v58 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    if (!swift_dynamicCast() || LOBYTE(v135[0]) != 1)
    {
      break;
    }

    v60 = v110;
    v47 = v114;
    v61 = v13;
    v62 = v111;
    (*v50)(v110, v114, v111);
    v63 = *(v61 - 8);
    if ((*(v63 + 48))(v60, 1, v61) == 1)
    {
      goto LABEL_29;
    }

    v64 = *v51;
    (*v51)(v60, v62);
    v64(v47, v62);
    (*(v63 + 56))(v47, 1, 1, v61);

    v25 = 0;
    v13 = v61;
  }

  return (*(v101 + 8))(v114, v121);
}

uint64_t sub_1974B9E14(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(a1 + v14);

    v18 = sub_197403C30(a2, a3);
    if (v19)
    {
      sub_19742FE50(*(v15 + 56) + 32 * v18, &v28);

      LOBYTE(v16) = *(&v28 + 1) != 1;
      if (v28)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    LOBYTE(v16) = 0;
  }

  v28 = xmmword_19752EA60;
  v29 = 0;
  LOBYTE(v30) = 0;
LABEL_7:
  if ((v16 & 1) == 0)
  {
    sub_1974050A8(&v28, &qword_1EAF2B640, &unk_19752F160);
    Strong = 0;
    goto LABEL_13;
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = *(&v28 + 1);
  sub_1974050A8(&v28, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    *&v28 = Strong;
    *(&v28 + 1) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (swift_dynamicCast())
    {
      Strong = v32;
    }

    else
    {
      Strong = 0;
    }
  }

LABEL_13:
  v22 = *(a4 + *(type metadata accessor for FetchDescriptor() + 48)) != 1 || Strong == 0;
  if (v22 || (swift_unknownObjectRetain(), v23 = PersistentModel.hasChanges.getter(a6, a8), swift_unknownObjectRelease(), !v23))
  {
    v25 = type metadata accessor for _FullFutureBackingData();
    *&v28 = a2;
    BYTE8(v28) = a3;

    sub_1974028EC(a2, a3);
    v26 = sub_197449BBC(a6, &v28, a1);
    if (Strong)
    {
      v30 = v25;
      WitnessTable = swift_getWitnessTable();
      *&v28 = v26;

      sub_1974C2050(&v28, a6, a8);
      __swift_destroy_boxed_opaque_existential_0Tm(&v28);
    }

    else
    {
      _SD_set_faulting_backingdata_tsd(1);
      v30 = v25;
      WitnessTable = swift_getWitnessTable();
      *&v28 = v26;
      v27 = *(a8 + 48);

      Strong = v27(&v28, a6, a8);
      sub_19743371C(Strong, a6, a8);
    }

    v32 = Strong;
    swift_beginAccess();
    sub_197521AAC();
    swift_unknownObjectRetain();
    sub_197521A7C();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = Strong;
    swift_beginAccess();
    sub_197521AAC();
    swift_unknownObjectRetain();
    sub_197521A7C();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1974BA1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v47 = a6;
  v45 = a1;
  v46 = a5;
  v43 = a4;
  v44 = a2;
  v56 = a7;
  v13 = sub_19752139C();
  v14 = sub_197521F5C();
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = *(v39 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &Descriptor - v18;
  v38 = *(v13 - 8);
  v20 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v17, v21);
  v41 = &Descriptor - v22;
  Descriptor = type metadata accessor for FetchDescriptor();
  v23 = *(Descriptor + 48);
  v42 = a3;
  LOBYTE(a3) = *(a3 + v23);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = a7;
  v53 = AssociatedTypeWitness;
  v54 = a9;
  v55 = AssociatedConformanceWitness;
  v26 = type metadata accessor for DataStoreFetchResult();
  v27 = sub_197401480(v44, a7, a3, *(v43 + *(v26 + 56)), AssociatedTypeWitness, a7, AssociatedConformanceWitness, a9);
  v28 = v27;
  if (*v46 == 1)
  {
    v30 = v39;
    v29 = v40;
    (*(v39 + 16))(v19, v42, v40);
    v31 = v38;
    if ((*(v38 + 48))(v19, 1, v13) == 1)
    {
      (*(v30 + 8))(v19, v29);
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000005FLL, 0x8000000197527770);
      sub_1975227FC();
      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      v32 = v41;
      (*(v31 + 32))(v41, v19, v13);
      v50 = v28;
      v51 = &v50;
      swift_unknownObjectRetain();
      v33 = v48;
      v34 = sub_19752137C();
      if (v33)
      {
        (*(v31 + 8))(v32, v13);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        *a11 = v33;
      }

      else
      {
        v36 = v34;
        swift_unknownObjectRelease();
        if (v36)
        {
          v49 = v28;
          swift_beginAccess();
          sub_197521AAC();
          swift_unknownObjectRetain();
          sub_197521A7C();
          swift_endAccess();
          swift_unknownObjectRelease();
          return (*(v31 + 8))(v32, v13);
        }

        else
        {
          (*(v31 + 8))(v32, v13);
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    v51 = v27;
    swift_beginAccess();
    sub_197521AAC();
    swift_unknownObjectRetain();
    sub_197521A7C();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1974BA630(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_197520C4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v18 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = *(a3 + *(type metadata accessor for FetchDescriptor() + 36));

  if (sub_197521A5C())
  {
    v15 = sub_197521A3C();
    sub_1975219EC();
    if (v15)
    {
      (*(v7 + 16))(v11, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
    }

    else
    {
      v17 = sub_19752222C();
      if (v8 != 8)
      {
        __break(1u);
LABEL_12:
        type metadata accessor for ComparisonResult(0);
        v19 = v8;
        result = sub_19752299C();
        __break(1u);
        return result;
      }

      v19 = v17;
      (*(v7 + 16))(v11, &v19, v6);
      swift_unknownObjectRelease();
    }

    v19 = v12;
    v18[1] = v13;
    v8 = sub_197520C2C();
    (*(v7 + 8))(v11, v6);
    if (v8 != -1)
    {
      if (v8 <= 1)
      {

        return 0;
      }

      goto LABEL_12;
    }
  }

  return 1;
}

void sub_1974BA86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = MEMORY[0x19A8E1370]();
  sub_1974BA928(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  objc_autoreleasePoolPop(v17);
  if (v18)
  {
    __break(1u);
  }
}

uint64_t sub_1974BA928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a8;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v55 = a3;
  v66 = a2;
  v54 = a9;
  v60 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = v52 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v19);
  v21 = v52 - v20;
  v22 = *(v17 + 16);
  v22(v52 - v20, a1, TupleTypeMetadata2);
  v61 = *v21;
  v23 = v21[8];
  v24 = &v21[*(TupleTypeMetadata2 + 48)];
  v52[0] = v11[1];
  v52[1] = v11 + 1;
  (v52[0])(v24, AssociatedTypeWitness);
  v22(v21, a1, TupleTypeMetadata2);
  v25 = v66;
  sub_1974028C8(*v21, v21[8]);
  v26 = v11[4];
  v27 = &v21[*(TupleTypeMetadata2 + 48)];
  v53 = AssociatedTypeWitness;
  v26(v15, v27, AssociatedTypeWitness);
  if (*(v25 + 16))
  {
    v28 = *(v25 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v28 = Strong;
  }

  v30 = v61;
  v31 = *(v28 + 16);

  v32 = *(v31 + 72);

  if (v23)
  {
    if (v23 == 1)
    {
      v34 = v30[9];
      v33 = v30[10];
    }

    else
    {
      v34 = sub_19750A588();
      v33 = v37;
    }
  }

  else
  {
    v35 = [v30 entityName];
    v34 = sub_1975217BC();
    v33 = v36;
  }

  if (!*(v32 + 16))
  {

    goto LABEL_15;
  }

  v38 = sub_1973F4028(v34, v33);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v41 = *(*(v32 + 56) + 8 * v38);

  v42 = *(v41 + 144);
  v43 = *(v41 + 152);

  if (v42)
  {
    sub_1974BAE10(v42, v55, v25, v15, v57, v58, v59, v60, v42, v56, v54, v43);
    sub_1974028C8(v30, v23);
    return (v52[0])(v15, v53);
  }

LABEL_16:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197527710);
  v62 = v30;
  v63 = v23;
  sub_19752235C();
  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197527750);
  Strong = *(v25 + 16);
  if (!Strong)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v45 = Strong;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  v45 = Strong;
LABEL_22:
  v46 = *(v45 + 16);

  v47 = *(v46 + 64);

  v48 = type metadata accessor for Schema.Entity();
  v49 = MEMORY[0x19A8E0100](v47, v48);
  v51 = v50;

  MEMORY[0x19A8DFF80](v49, v51);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974BAE10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a5 + *(type metadata accessor for FetchDescriptor() + 48));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for DataStoreFetchResult();
  v15 = sub_197401480(a4, a1, v13, *(a6 + *(v14 + 56)), AssociatedTypeWitness, a9, AssociatedConformanceWitness, a12);
  swift_beginAccess();
  v16 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_197433F80(0, v16[2] + 1, 1, v16);
    *(a2 + 16) = v16;
  }

  v18 = v16[2];
  v19 = v16[3];
  if (v18 >= v19 >> 1)
  {
    v21 = v16[2];
    v16 = sub_197433F80((v19 > 1), v18 + 1, 1, v16);
    v18 = v21;
    *(a2 + 16) = v16;
  }

  sub_19743F3E4(v18, v15, (a2 + 16), a9, a12);
  *(a2 + 16) = v16;
  return swift_endAccess();
}

uint64_t sub_1974BAFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v47 = a2;
  v42 = a5;
  Descriptor = type metadata accessor for FetchDescriptor();
  v46 = *(Descriptor - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](Descriptor, v12);
  v45 = &v41 - v13;
  v14 = type metadata accessor for EditingState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreBatchFetchRequest();
  v43 = *(Request - 8);
  v44 = Request;
  v20 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](Request, v21);
  v23 = &v41 - v22;
  sub_197407130();
  if (*(a1 + *(Descriptor + 48)))
  {
    if (qword_1EAF2AD18 == -1)
    {
LABEL_3:
      v24 = byte_1EAF2B6C8;
      v26 = qword_1EAF2B6D0;
      v25 = unk_1EAF2B6D8;
      sub_19744BE3C();
      swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      *(v27 + 16) = v25;
      swift_willThrow();
    }

LABEL_17:
    swift_once();
    goto LABEL_3;
  }

  v29 = a1;
  v52 = MEMORY[0x1E69E7CC0];
  v30 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  sub_197404E70(v5 + v30, v18);
  v31 = v45;
  (*(v46 + 16))(v45, v29, Descriptor);
  sub_19749E874(v18, v31, v47, v23);
  v32 = *(v5 + 16);
  v41 = v5;
  v48 = v23;
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v33 = result;
  }

  v34 = a3;
  swift_beginAccess();
  v35 = *(v33 + 48);

  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = 0;
    v38 = v35 + 32;
    while (v37 < *(v35 + 16))
    {
      sub_1974047F8(v38, v49, &qword_1EAF2AF38, &qword_19752C6A8);
      sub_1974BB3EC(v49, v50, v51, &v52, v48, v34, a4);
      if (v6)
      {

        sub_1974050A8(v49, &qword_1EAF2AF38, &qword_19752C6A8);
        (*(v43 + 8))(v48, v44);
      }

      ++v37;
      sub_1974050A8(v49, &qword_1EAF2AF38, &qword_19752C6A8);
      v38 += 56;
      if (v36 == v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_13:

  v39 = v52;

  v40 = v41;

  sub_19751E8C0(v39, v40, v47, 0, v42);
  (*(v43 + 8))(v48, v44);
}

uint64_t sub_1974BB3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a2)
  {
    swift_unknownObjectRetain();
    v12 = sub_19746A79C(a5, a6, a7);
    if (!v7)
    {
      sub_1974EE6D0(v12);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x80000001975275E0);
    MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197527610);
    MEMORY[0x19A8DFF80](0xD000000000000040, 0x8000000197527630);
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974BB550@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = sub_1974BFC08(MEMORY[0x1E69E7CC0]);
  if (a4 & 1 | (a3 < 1))
  {
    a3 = a1[2];
  }

  if (!a3)
  {
    goto LABEL_23;
  }

  v11 = v10;
  v32 = a2;
  v31 = a1[2];
  v12 = sub_1974C1878(0, v31, a3, a1, a3);

  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_19:

    *a5 = v11;
    a5[1] = v32;
    a5[2] = a3;
    a5[3] = v31;
    return result;
  }

  v14 = 0;
  while (v14 < *(v12 + 16))
  {
    v17 = *(v12 + 32 + 8 * v14);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_19749ED9C(v14);
    v21 = v11[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_21;
    }

    v25 = v20;
    if (v11[3] < v24)
    {
      sub_197479384(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_19749ED9C(v14);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if (v25)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v29 = v19;
    sub_19747BF8C();
    v19 = v29;
    if (v25)
    {
LABEL_6:
      v15 = v11[7];
      v16 = *(v15 + 8 * v19);
      *(v15 + 8 * v19) = v17;

      goto LABEL_7;
    }

LABEL_15:
    v11[(v19 >> 6) + 8] |= 1 << v19;
    *(v11[6] + 8 * v19) = v14;
    *(v11[7] + 8 * v19) = v17;
    v27 = v11[2];
    v23 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v23)
    {
      goto LABEL_22;
    }

    v11[2] = v28;
LABEL_7:
    if (v13 == ++v14)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t sub_1974BB758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Descriptor = type metadata accessor for FetchDescriptor();
  v36 = *(Descriptor - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](Descriptor, v9);
  v11 = &v34[-v10];
  v12 = type metadata accessor for EditingState();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v34[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Request = type metadata accessor for DataStoreFetchRequest();
  v38 = *(Request - 8);
  v39 = Request;
  v18 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](Request, v19);
  v21 = &v34[-v20];
  v40 = v3;
  sub_197407130();
  v35 = *(a1 + *(Descriptor + 48));
  if (v35 == 1 && (v41 = *(a1 + *(Descriptor + 36)), sub_197520C4C(), sub_197521AAC(), swift_getWitnessTable(), (sub_197521D0C() & 1) == 0))
  {
    if (qword_1EAF2AD30 != -1)
    {
      swift_once();
    }

    v29 = byte_1EAF2B710;
    v30 = qword_1EAF2B718;
    v26 = unk_1EAF2B720;
    sub_19744BE3C();
    swift_allocError();
    *v31 = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = v26;
    swift_willThrow();
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
    v22 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    v23 = v40;
    swift_beginAccess();
    sub_197404E70(v23 + v22, v16);
    (*(v36 + 16))(v11, a1, Descriptor);
    v24 = v23;
    v25 = sub_197407438(v16, v11, v21);
    v26 = a1;
    MEMORY[0x1EEE9AC00](v25, v27);
    *&v34[-32] = a2;
    *&v34[-24] = a3;
    *&v34[-16] = &v42;
    *&v34[-8] = v21;
    v28 = v37;
    sub_1974072C4(sub_1974C1DF0, &v34[-48], a2, a3);
    if (!v28)
    {
      if ((v35 & 1) != 0 && *(v24 + 48) == 1)
      {
        sub_1974BD55C(a1, v42, a2, a3);
        v26 = v33;
      }

      else
      {
        v26 = v42;
      }
    }

    (*(v38 + 8))(v21, v39);
  }

  return v26;
}

uint64_t sub_1974BBB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v36 = a5;
  v37 = a2;
  Descriptor = type metadata accessor for FetchDescriptor();
  v38 = *(Descriptor - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](Descriptor, v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for EditingState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest();
  v39 = *(Request - 8);
  v40 = Request;
  v20 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](Request, v21);
  v23 = &v35 - v22;
  sub_197407130();
  if (*(a1 + *(Descriptor + 48)))
  {
    if (qword_1EAF2AD18 != -1)
    {
      swift_once();
    }

    v24 = byte_1EAF2B6C8;
    v26 = qword_1EAF2B6D0;
    v25 = unk_1EAF2B6D8;
    sub_19744BE3C();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    *(v27 + 16) = v25;
    swift_willThrow();
  }

  else
  {
    v29 = a1;
    v42 = MEMORY[0x1E69E7CC0];
    v30 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    sub_197404E70(v5 + v30, v18);
    (*(v38 + 16))(v13, v29, Descriptor);
    v31 = sub_197407438(v18, v13, v23);
    MEMORY[0x1EEE9AC00](v31, v32);
    *(&v35 - 4) = a3;
    *(&v35 - 3) = a4;
    *(&v35 - 2) = &v42;
    *(&v35 - 1) = v23;
    v33 = v41;
    sub_1974072C4(sub_1974C0BE8, (&v35 - 6), a3, a4);
    if (!v33)
    {
      v34 = sub_1974AE8BC(v42);

      sub_1974BB550(v34, v5, v37, 0, v36);
    }

    (*(v39 + 8))(v23, v40);
  }
}

uint64_t sub_1974BBEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 96))(a4, a5, a6, ObjectType, a2);
  if (!v6)
  {
    return sub_19744673C(result);
  }

  return result;
}

uint64_t sub_1974BBF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = a4;
  v119 = a2;
  v112 = a1;
  v122 = a3;
  v127[17] = a3;
  v114 = sub_19752139C();
  v5 = sub_197521F5C();
  v111 = *(v5 - 8);
  v6 = *(v111 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v104 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v103 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v121 = (v13 + 16);
  swift_beginAccess();
  v14 = *(v4 + 104);
  swift_beginAccess();
  v105 = v4;
  v15 = *(v4 + 112);

  v17 = sub_19743E380(v16, v14);
  v18 = v17 + 56;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 56);
  v22 = (v19 + 63) >> 6;
  v117 = v17;

  v24 = 0;
  *&v116 = v12;
  while (v21)
  {
    v25 = v24;
    v26 = v122;
LABEL_12:
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v123 = *(*(v117 + 48) + ((v25 << 10) | (16 * v27)));
    v115 = v123;
    v28 = v123;
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_1974BCF24(v13, v119, v26, v120);
      swift_beginAccess();
      if (*(v13 + 16))
      {
        sub_1974580E0(v28, *(&v115 + 1));
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
      }
    }

    result = swift_unknownObjectRelease();
    v24 = v25;
    v12 = v116;
  }

  v26 = v122;
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v25 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v25);
    ++v24;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  v29 = v117;

  v30 = v105;
  swift_beginAccess();
  v31 = *(v30 + 88);
  swift_beginAccess();
  v32 = *(v30 + 96);

  v34 = sub_19743E380(v33, v31);
  if (*(v29 + 16) <= *(v34 + 16) >> 3)
  {
    *&v123 = v34;
    sub_1974AA194(v29);
    result = v123;
  }

  else
  {
    result = sub_1974AA2BC(v29, v34);
  }

  v35 = v12;
  v36 = 0;
  v37 = result + 56;
  v38 = 1 << *(result + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(result + 56);
  v41 = (v38 + 63) >> 6;
  v110 = (v111 + 16);
  v109 = v114 - 8;
  v106 = (v111 + 8);
  v118 = v13;
  v107 = v5;
  v111 = result;
  if (v40)
  {
    while (1)
    {
      v42 = v36;
      v43 = v122;
LABEL_26:
      v44 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v123 = *(*(result + 48) + ((v42 << 10) | (16 * v44)));
      v115 = v123;
      v45 = v123;
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      if (swift_dynamicCast())
      {
        v108 = v45;
        v46 = v127[0];
        (*v110)(v35, v112, v5);
        v47 = v5;
        v48 = v114;
        v49 = *(v114 - 8);
        if ((*(v49 + 48))(v35, 1, v114) == 1)
        {
          (*v106)(v35, v47);
          v50 = v118;
          v51 = v120;
          v5 = v47;
          v52 = v122;
          v45 = v108;
LABEL_35:
          sub_1974BCF24(v50, v119, v52, v51);
          swift_beginAccess();
          if (*(v50 + 16))
          {
            swift_unknownObjectRetain();
            sub_1974327FC(v127, v45, *(&v115 + 1));
            swift_endAccess();
            swift_unknownObjectRelease();
          }

          else
          {
            swift_endAccess();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v36 = v42;
          v35 = v116;
          goto LABEL_41;
        }

        v127[0] = v46;
        *&v123 = v127;
        v103 = v46;
        swift_unknownObjectRetain();
        v56 = v113;
        v57 = sub_19752137C();
        v113 = v56;
        if (v56)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v49 + 8))(v35, v48);
          goto LABEL_77;
        }

        v58 = v57;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v35, v48);
        v45 = v108;
        if (v58)
        {
          v50 = v118;
          v52 = v122;
          v51 = v120;
          v5 = v107;
          goto LABEL_35;
        }

        v53 = v35;
        swift_unknownObjectRelease();
        v43 = v122;
        v5 = v107;
      }

      else
      {
        v53 = v35;
      }

      v54 = v43;
      v55 = v118;
      sub_1974BCF24(v118, v119, v54, v120);
      swift_beginAccess();
      if (*(v55 + 16))
      {
        sub_1974580E0(v45, *(&v115 + 1));
        swift_endAccess();
        swift_unknownObjectRelease();
        v35 = v53;
        swift_unknownObjectRelease();
        v36 = v42;
LABEL_41:
        result = v111;
        if (!v40)
        {
          break;
        }
      }

      else
      {
        swift_endAccess();
        swift_unknownObjectRelease();
        v36 = v42;
        result = v111;
        v35 = v53;
        if (!v40)
        {
          break;
        }
      }
    }
  }

  v43 = v122;
  while (1)
  {
    v42 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_82;
    }

    if (v42 >= v41)
    {
      break;
    }

    v40 = *(v37 + 8 * v42);
    ++v36;
    if (v40)
    {
      goto LABEL_26;
    }
  }

  v59 = v105;
  swift_beginAccess();
  v60 = *(v59 + 72);
  swift_beginAccess();
  v61 = *(v59 + 80);

  v63 = sub_19743E380(v62, v60);
  if (*(v117 + 16) <= *(v63 + 16) >> 3)
  {
    *&v123 = v63;
    sub_1974AA194(v117);
    v66 = v121;
    v43 = v122;

    result = v123;
    v65 = v104;
  }

  else
  {
    v64 = sub_1974AA2BC(v117, v63);

    result = v64;
    v65 = v104;
    v66 = v121;
  }

  v67 = 0;
  v68 = result + 56;
  v69 = 1 << *(result + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(result + 56);
  v72 = (v69 + 63) >> 6;
  v117 = result;
  if (v71)
  {
    while (2)
    {
      v40 = v67;
LABEL_54:
      v73 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v123 = *(*(result + 48) + ((v40 << 10) | (16 * v73)));
      v116 = v123;
      v74 = v123;
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_65;
      }

      v111 = v74;
      v75 = v126[0];
      v76 = v107;
      (*v110)(v65, v112, v107);
      v77 = v114;
      v78 = *(v114 - 8);
      v79 = (*(v78 + 48))(v65, 1, v114);
      *&v115 = v75;
      if (v79 == 1)
      {
        (*v106)(v65, v76);
        v80 = v118;
        v43 = v122;
        goto LABEL_61;
      }

      v126[0] = v75;
      *&v123 = v126;
      swift_unknownObjectRetain();
      v81 = v113;
      v82 = sub_19752137C();
      v113 = v81;
      if (v81)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v78 + 8))(v65, v77);
        goto LABEL_77;
      }

      v83 = v82;
      swift_unknownObjectRelease();
      (*(v78 + 8))(v65, v77);
      if (v83)
      {
        v80 = v118;
        v43 = v122;
        v65 = v104;
LABEL_61:
        sub_1974BCF24(v80, v119, v43, v120);
        v66 = v121;
        swift_beginAccess();
        if (*(v80 + 16))
        {
          v84 = v111;
          swift_unknownObjectRetain();
          sub_1974327FC(v126, v84, *(&v116 + 1));
          v66 = v121;
          v43 = v122;
          swift_endAccess();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_endAccess();
        }

        swift_unknownObjectRelease();
LABEL_65:
        swift_unknownObjectRelease();
        v67 = v40;
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v67 = v40;
        v43 = v122;
        v65 = v104;
        v66 = v121;
      }

      result = v117;
      if (!v71)
      {
        break;
      }

      continue;
    }
  }

  while (1)
  {
    v40 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v40 >= v72)
    {

      v85 = swift_beginAccess();
      if (*v66)
      {
        *&v123 = *v66;
        MEMORY[0x1EEE9AC00](v85, v86);
        v87 = v120;
        *(&v103 - 2) = v43;
        *(&v103 - 1) = v87;

        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
        v89 = sub_19742A020(&qword_1ED7C7138, &qword_1EAF2B678, &unk_19752F340);
        v40 = sub_1974048EC(sub_1974C1C48, (&v103 - 4), v88, v43, MEMORY[0x1E69E73E0], v89, MEMORY[0x1E69E7410], v90);

        Descriptor = type metadata accessor for FetchDescriptor();
        v92 = v112;
        v93 = *(v112 + *(Descriptor + 36));
        sub_197520C4C();
        v94 = sub_197521A5C();
        if (v94 > 0)
        {
          *&v123 = v40;
          MEMORY[0x1EEE9AC00](v94, v95);
          *(&v103 - 4) = v43;
          *(&v103 - 3) = v87;
          *(&v103 - 2) = v92;
          sub_197521AAC();

          swift_getWitnessTable();
          v92 = v112;
          v96 = sub_19752194C();
          swift_bridgeObjectRelease_n();
          v40 = v96;
        }

        v97 = v92 + *(Descriptor + 40);
        if (*(v97 + 8) == 1 || *v97 < 1 || (v98 = *v97, v98 >= sub_197521A5C()))
        {
LABEL_77:
        }

        else
        {
          *&v123 = sub_197521AEC();
          *(&v123 + 1) = v99;
          v124 = v100;
          v125 = v101;
          sub_19752203C();
          swift_getWitnessTable();
          v102 = sub_197521ADC();

          return v102;
        }
      }

      else
      {
        v40 = v119;
      }

      return v40;
    }

    v71 = *(v68 + 8 * v40);
    ++v67;
    if (v71)
    {
      goto LABEL_54;
    }
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_1974BCF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (!*(a1 + 16))
  {
    v16[5] = a2;
    MEMORY[0x1EEE9AC00](result, v9);
    v16[2] = a3;
    v16[3] = a4;
    v10 = sub_197521AAC();
    WitnessTable = swift_getWitnessTable();
    v13 = sub_1974048EC(sub_1974C1C8C, v16, v10, &type metadata for ModelContext.AnyPersistentObject, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);
    v14 = sub_1974F9648(v13);

    swift_beginAccess();
    v15 = *(a1 + 16);
    *(a1 + 16) = v14;
  }

  return result;
}

uint64_t sub_1974BD058(__int128 *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  return swift_dynamicCast();
}

uint64_t sub_1974BD0D0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_197520C4C();
  v7 = *(v6 - 8);
  v19 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  v11 = *a1;
  v20 = *a2;
  v21 = v11;
  v12 = *(a3 + *(type metadata accessor for FetchDescriptor() + 36));
  v22 = (v7 + 16);

  v13 = 0;
  while (1)
  {
    v14 = sub_197521A5C();
    v15 = v13 != v14;
    if (v13 == v14)
    {
      goto LABEL_14;
    }

    v16 = sub_197521A3C();
    sub_1975219EC();
    if (v16)
    {
      (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v6);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      goto LABEL_5;
    }

    v17 = sub_19752222C();
    if (v19 != 8)
    {
      __break(1u);
      goto LABEL_16;
    }

    v24 = v17;
    (*v22)(v10, &v24, v6);
    swift_unknownObjectRelease();
    if (__OFADD__(v13, 1))
    {
      break;
    }

LABEL_5:
    v24 = v21;
    v23 = v20;
    a2 = sub_197520C2C();
    (*(v7 + 8))(v10, v6);
    type metadata accessor for ComparisonResult(0);
    ++v13;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (a2 == -1)
  {
LABEL_14:

    return v15;
  }

  if (a2 == 1)
  {
    v15 = 0;
    goto LABEL_14;
  }

LABEL_16:
  v24 = a2;
  result = sub_19752299C();
  __break(1u);
  return result;
}

void sub_1974BD55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a1;
  v92[1] = a4;
  v100 = a2;
  v109 = a3;
  v124 = a3;
  v108 = sub_19752139C();
  v103 = sub_197521F5C();
  v98 = *(v103 - 8);
  v5 = *(v98 + 64);
  v7 = MEMORY[0x1EEE9AC00](v103 - 8, v6);
  v93 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v96 = v92 - v10;
  v123 = 0;
  swift_beginAccess();
  v11 = *(v4 + 104);
  swift_beginAccess();
  v94 = v4;
  v12 = *(v4 + 112);

  v14 = sub_19743E380(v13, v11);
  v15 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 56);

  swift_beginAccess();
  v19 = 0;
  v20 = (v16 + 63) >> 6;
  for (i = v14; v18; v14 = i)
  {
LABEL_10:
    while (1)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v110[0] = *(*(v14 + 48) + ((v19 << 10) | (16 * v22)));
      v107 = v110[0];
      swift_unknownObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
      if (swift_dynamicCast())
      {
        break;
      }

      swift_unknownObjectRelease();
      if (!v18)
      {
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
    if (!v123)
    {

      v24 = sub_1974F96E0(v23);

      v123 = v24;
    }

    swift_beginAccess();
    ObjectType = swift_getObjectType();
    PersistentModel.persistentModelID.getter(ObjectType, *(&v107 + 1), &v119);
    v26 = v119;
    v27 = v120;
    sub_19751C33C(v119, v120, &v121);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1974028C8(v26, v27);
    sub_1974A1014(v121, v122);
  }

  while (1)
  {
LABEL_6:
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (v21 >= v20)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v19;
    if (v18)
    {
      v19 = v21;
      goto LABEL_10;
    }
  }

  v28 = v94;
  swift_beginAccess();
  v29 = *(v28 + 88);
  swift_beginAccess();
  v30 = *(v28 + 96);

  v32 = sub_19743E380(v31, v29);
  if (*(v14 + 16) <= *(v32 + 16) >> 3)
  {
    *&v110[0] = v32;
    sub_1974AA194(v14);
    v33 = *&v110[0];
  }

  else
  {
    v33 = sub_1974AA2BC(v14, v32);
  }

  v34 = v33 + 56;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v33 + 56);
  swift_beginAccess();
  v38 = 0;
  v39 = (v35 + 63) >> 6;
  v40 = v108;
  v101 = v108 - 8;
  v102 = (v98 + 16);
  v95 = (v98 + 8);
  v104 = v33;
  while (v37)
  {
LABEL_31:
    v45 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v110[0] = *(*(v33 + 48) + ((v38 << 10) | (16 * v45)));
    v107 = v110[0];
    v46 = *&v110[0];
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if (swift_dynamicCast())
    {
      v98 = v46;
      v47 = v40;
      v48 = v117;
      v49 = v103;
      v50 = v96;
      (*v102)(v96, v105, v103);
      v97 = *(v47 - 8);
      if ((*(v97 + 48))(v50, 1, v47) == 1)
      {
        (*v95)(v50, v49);
LABEL_36:
        if (!v123)
        {

          v55 = sub_1974F96E0(v54);

          v123 = v55;
        }

        swift_beginAccess();
        v56 = swift_getObjectType();
        PersistentModel.persistentModelID.getter(v56, *(&v107 + 1), &v115);
        sub_19742AE44(&v117, v115, v116);
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1974028C8(v117, v118);
        goto LABEL_25;
      }

      v117 = v48;
      *&v110[0] = &v117;
      swift_unknownObjectRetain();
      v51 = v106;
      v52 = sub_19752137C();
      v106 = v51;
      if (v51)
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v97 + 8))(v50, v47);
LABEL_71:

        return;
      }

      v53 = v52;
      swift_unknownObjectRelease();
      (*(v97 + 8))(v50, v47);
      if (v53)
      {
        goto LABEL_36;
      }

      swift_unknownObjectRelease();
    }

    if (!v123)
    {

      v58 = sub_1974F96E0(v57);

      v123 = v58;
    }

    swift_beginAccess();
    v41 = swift_getObjectType();
    PersistentModel.persistentModelID.getter(v41, *(&v107 + 1), &v115);
    v42 = v115;
    v43 = v116;
    sub_19751C33C(v115, v116, &v117);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1974028C8(v42, v43);
    sub_1974A1014(v117, v118);
LABEL_25:
    v40 = v108;
    v33 = v104;
  }

  while (1)
  {
    v44 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_75;
    }

    if (v44 >= v39)
    {
      break;
    }

    v37 = *(v34 + 8 * v44);
    ++v38;
    if (v37)
    {
      v38 = v44;
      goto LABEL_31;
    }
  }

  v59 = v94;
  swift_beginAccess();
  v60 = *(v59 + 72);
  swift_beginAccess();
  v61 = *(v59 + 80);

  v63 = sub_19743E380(v62, v60);
  if (*(i + 16) <= *(v63 + 16) >> 3)
  {
    *&v110[0] = v63;
    sub_1974AA194(i);

    v64 = *&v110[0];
  }

  else
  {
    v64 = sub_1974AA2BC(i, v63);
  }

  v65 = v64 + 56;
  v66 = 1 << *(v64 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v64 + 56);
  swift_beginAccess();
  v69 = 0;
  v70 = (v66 + 63) >> 6;
  v71 = v108;
  v97 = v64;
  while (v68)
  {
LABEL_51:
    v73 = __clz(__rbit64(v68));
    v68 &= v68 - 1;
    v110[0] = *(*(v64 + 48) + ((v69 << 10) | (16 * v73)));
    v107 = v110[0];
    v74 = *&v110[0];
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_unknownObjectRelease();
      continue;
    }

    i = v74;
    v75 = v111;
    v76 = v103;
    v77 = v93;
    (*v102)(v93, v105, v103);
    v98 = *(v71 - 8);
    v78 = (*(v98 + 48))(v77, 1, v71);
    v104 = v75;
    if (v78 == 1)
    {
      (*v95)(v77, v76);
      v64 = v97;
      if (!v123)
      {
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    v111 = v75;
    *&v110[0] = &v111;
    swift_unknownObjectRetain();
    v82 = v106;
    v83 = sub_19752137C();
    v106 = v82;
    if (v82)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v98 + 8))(v77, v71);
      goto LABEL_71;
    }

    v84 = v83;
    swift_unknownObjectRelease();
    (*(v98 + 8))(v77, v71);
    if (v84)
    {
      v64 = v97;
      if (!v123)
      {
LABEL_54:

        v80 = sub_1974F96E0(v79);

        v123 = v80;
      }

LABEL_55:
      swift_beginAccess();
      v81 = swift_getObjectType();
      PersistentModel.persistentModelID.getter(v81, *(&v107 + 1), &v113);
      sub_19742AE44(&v111, v113, v114);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1974028C8(v111, v112);
      v71 = v108;
      continue;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v71 = v108;
    v64 = v97;
  }

  while (1)
  {
    v72 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v72 >= v70)
    {

      swift_beginAccess();
      v85 = v123;
      if (!v123)
      {

        return;
      }

      v86 = *(v123 + 16);
      if (v86)
      {
        v87 = sub_1974D1EFC(*(v123 + 16), 0);
        v88 = sub_1974D373C(v110, (v87 + 4), v86, v85);

        sub_197458C2C();
        if (v88 != v86)
        {
          goto LABEL_77;
        }

        v89 = v87;
      }

      else
      {
        v89 = MEMORY[0x1E69E7CC0];
      }

      v90 = v105 + *(type metadata accessor for FetchDescriptor() + 40);
      if ((*(v90 + 8) & 1) == 0)
      {
        v91 = *v90;
        if (v91 >= 1 && v91 < *(v89 + 16))
        {
          sub_1974F64F8(v89, v89 + 32, 0, (2 * v91) | 1);

          return;
        }
      }

      goto LABEL_71;
    }

    v68 = *(v65 + 8 * v72);
    ++v69;
    if (v68)
    {
      v69 = v72;
      goto LABEL_51;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_1974BE168@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_197404860(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_1974028B8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_1974050A8(v22, &qword_1EAF2B930, &unk_19752FC38);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1974BE358(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1974BE3F0(void *a1, void **a2)
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

SwiftData::ModelContext::NotificationKey_optional __swiftcall ModelContext.NotificationKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1975224CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1974BE4B8()
{
  v1 = *v0;
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

uint64_t sub_1974BE5AC()
{
  *v0;
  *v0;
  sub_19752180C();
}

uint64_t sub_1974BE68C()
{
  v1 = *v0;
  sub_197522A5C();
  sub_19752180C();

  return sub_197522A9C();
}

void sub_1974BE788(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006C6C41646574;
  v4 = 0x6164696C61766E69;
  v5 = 0xE800000000000000;
  v6 = 0x6465747265736E69;
  v7 = 0x64657461647075;
  if (v2 != 3)
  {
    v7 = 0x646574656C6564;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000197523740;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1974BE838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  if (*(v3 + 16))
  {
    v7 = *(v3 + 16);
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_13;
    }

    v7 = result;
  }

  swift_beginAccess();
  v9 = *(v7 + 48);

  v10 = *(v9 + 16);
  if (!v10)
  {
  }

  v11 = 0;
  v12 = v9 + 32;
  while (v11 < *(v9 + 16))
  {
    sub_1974047F8(v12, v13, &qword_1EAF2AF38, &qword_19752C6A8);
    sub_1974BE99C(v13, v13[5], v13[6], a1, a2, v14);
    if (v4)
    {

      return sub_1974050A8(v13, &qword_1EAF2AF38, &qword_19752C6A8);
    }

    ++v11;
    result = sub_1974050A8(v13, &qword_1EAF2AF38, &qword_19752C6A8);
    v12 += 56;
    if (v10 == v11)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1974BE99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  v14 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B980, &qword_19752FCC8);
  if (swift_dynamicCast())
  {
    sub_197402778(v11, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    DynamicType = swift_getDynamicType();
    sub_1974BEAB4(DynamicType, v15, a4, a5, DynamicType, a6, v15[4]);
    return __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    return sub_1974050A8(v11, &qword_1EAF2B988, &unk_19752FCD0);
  }
}

uint64_t sub_1974BEAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a2, a2);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1973FFC48(v14, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B980, &qword_19752FCC8);
  swift_dynamicCast();
  if ((*(a7 + 24))(a5, a7) == a4)
  {
    sub_1974BEC20(a4, a3, v16, a4, a5, a4, a6, a7);
  }

  return (*(v12 + 8))(v16, a5);
}

uint64_t sub_1974BEC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[1] = a3;
  v11 = type metadata accessor for HistoryDescriptor();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v24 - v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for HistoryDescriptor();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v24 - v21;
  (*(v12 + 16))(v16, a2, v11);
  swift_dynamicCast();
  (*(a8 + 40))(v22, a5, a8);
  return (*(v18 + 8))(v22, v17);
}

BOOL sub_1974BEE44(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = v4 - 1;
  if (v4 < 1)
  {
    goto LABEL_33;
  }

  do
  {
    v6 = 0;
    if (!v5)
    {
LABEL_6:
      if ((v6 & 1) == 0)
      {
        v7 = 0;
        v6 = 1;
        goto LABEL_9;
      }

      break;
    }

    while (1)
    {
      v7 = v5 - 1;
LABEL_9:
      v8 = *(v1 + 16);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v21 = *(v1 + 16);

        v9 = MEMORY[0x19A8E0960](v5, v8);

        goto LABEL_12;
      }

      if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v9 = *(v8 + 8 * v5 + 32);

LABEL_12:
      if (swift_weakLoadStrong())
      {

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v11 = Strong;

          if (v11 == a1)
          {
            swift_beginAccess();
            v12 = *(v1 + 16);
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v1 + 16) = v12;
            if (!isUniquelyReferenced_nonNull_bridgeObject || v12 < 0 || (v12 & 0x4000000000000000) != 0)
            {
              v12 = sub_19751E880(v12);
              *(v1 + 16) = v12;
            }

            v14 = v12 & 0xFFFFFFFFFFFFFF8;
            v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v5 >= v15)
            {
              goto LABEL_31;
            }

            goto LABEL_26;
          }
        }

        v5 = v7;
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      else
      {
        swift_beginAccess();
        v12 = *(v1 + 16);
        v16 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v1 + 16) = v12;
        if (!v16 || v12 < 0 || (v12 & 0x4000000000000000) != 0)
        {
          v12 = sub_19751E880(v12);
          *(v1 + 16) = v12;
        }

        v14 = v12 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5 >= v15)
        {
          goto LABEL_30;
        }

LABEL_26:
        v17 = v15 - 1;
        v18 = v14 + 8 * v5;
        v19 = *(v18 + 32);
        memmove((v18 + 32), (v18 + 40), 8 * (v15 - 1 - v5));
        *(v14 + 16) = v17;
        *(v1 + 16) = v12;
        swift_endAccess();

        v20 = *(v9 + 24);
        *(v9 + 24) = 0;

        v5 = v7;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v22 = sub_1975220EC();
    v5 = v22 - 1;
  }

  while (v22 >= 1);
LABEL_33:
  v23 = *(v1 + 16);
  if (v23 >> 62)
  {
    if (v23 < 0)
    {
      v26 = *(v1 + 16);
    }

    v24 = sub_1975220EC();
    if (!v24)
    {
LABEL_35:
      _SD_remove_current_context_tsd();
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_35;
    }
  }

  return v24 == 0;
}

uint64_t sub_1974BF0C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1974432E0(a1, a2);
  return v4;
}

uint64_t sub_1974BF118(uint64_t a1)
{
  swift_beginAccess();
  sub_19743B4F0(a1, v1 + 56);
  return swift_endAccess();
}

uint64_t sub_1974BF168(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  v8 = *(*a3 + 80);
  v9 = sub_197521F5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v22 - v13;
  v15 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  swift_beginAccess();
  v16 = a3[4];
  *&v22[0] = v15;
  BYTE8(v22[0]) = a1;
  sub_1974028EC(v15, a1);
  sub_197405108();

  sub_19752167C();

  sub_1974028C8(*&v22[0], SBYTE8(v22[0]));
  LODWORD(v8) = (*(*(v8 - 8) + 48))(v14, 1, v8);
  result = (*(v10 + 8))(v14, v9);
  if (v8 == 1)
  {
    sub_1973FFC48(a2, v22);
    v18 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_197443758(0, v18[2] + 1, 1, v18);
      *a4 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_197443758((v20 > 1), v21 + 1, 1, v18);
      *a4 = v18;
    }

    v18[2] = v21 + 1;
    return sub_197402778(v22, &v18[5 * v21 + 4]);
  }

  return result;
}

void _Destroy_SwiftDataContextThreadLocalState()
{
  v0 = MEMORY[0x19A8E1370]();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1974BF3EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_197404860((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void sub_1974BF438(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  PersistentModel.persistentModelID.getter(a3, a4, &v16);
  v8 = v16;
  v9 = BYTE8(v16);
  v10 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v11 = *(a2 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = sub_197403C30(v8, v9);
    if (v14)
    {
      sub_19742FE50(*(v11 + 56) + 32 * v13, &v16);

      LODWORD(v12) = *(&v16 + 1) != 1;
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    LODWORD(v12) = 0;
  }

  v16 = xmmword_19752EA60;
  v17 = 0;
  v18 = 0;
LABEL_7:
  if (!v12)
  {
    sub_1974050A8(&v16, &qword_1EAF2B640, &unk_19752F160);
LABEL_11:
    sub_1974339E4(a1, a2, a3, a4);
    swift_unknownObjectRelease();
    sub_1974028C8(v8, v9);
    return;
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1974050A8(&v16, &qword_1EAF2B640, &unk_19752F160);
  if (!Strong || Strong == a1)
  {
    goto LABEL_11;
  }

  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000026, 0x8000000197527B00);
  sub_19752235C();
  sub_1975223EC();
  __break(1u);
}

unint64_t sub_1974BF658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8C0, &qword_19752FB68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3A0, &unk_19752FB70);
    v9 = sub_19752245C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    while (1)
    {
      sub_1974047F8(v11, v7, &qword_1EAF2B8C0, &qword_19752FB68);
      v21 = *v7;
      result = sub_1973F7950(v21, *(&v21 + 1));
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 16 * result) = v21;
      v16 = v9[7];
      v17 = sub_1975213EC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v7[v10], v17);
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

BOOL sub_1974BF844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v19);
  v7 = v19;
  v8 = v20;
  v9 = swift_getObjectType();
  v16 = a4;
  PersistentModel.persistentModelID.getter(v9, a4, &v17);
  v10 = v17;
  v11 = v18;
  LOBYTE(a4) = sub_19742291C(v7, v8, v17, v18);
  sub_1974028C8(v10, v11);
  sub_1974028C8(v7, v8);
  if (a4)
  {
    v12 = PersistentModel.modelContext.getter(ObjectType, a2);
    v13 = PersistentModel.modelContext.getter(v9, v16);
    if (v12)
    {
      if (v13)
      {
        v14 = v13;

        return v12 == v14;
      }
    }

    else if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1974BF988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B950, &qword_19752FC68);
    v3 = sub_19752245C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1974047F8(v4, v13, &qword_1EAF2B958, &qword_19752FC70);
      result = sub_197445520(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1974028B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1974BFAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B258, &qword_19752D3F0);
    v3 = sub_19752245C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1974047F8(v4, &v15, &qword_1EAF2B938, &qword_19752FC48);
      v5 = v15;
      v6 = v16;
      result = sub_1973F4028(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1974BFC08(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3B8, &qword_19752D578);
  v3 = sub_19752245C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_19749ED9C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_19749ED9C(v4);
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

uint64_t sub_1974BFD24(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v12;
    v14 = v12[1];
    v15 = swift_unknownObjectRetain();
    if (sub_197473494(v15, v14, a2))
    {
      sub_1974580E0(v13, v14);
      swift_unknownObjectRelease();
    }

    v7 &= v7 - 1;
    result = swift_unknownObjectRelease();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1974BFE44(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1975220AC();
    sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630);
    sub_1974C1734();
    sub_197521C1C();
    v2 = v29;
    v3 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    v15 = sub_19752212C();
    if (!v15 || (v34 = v15, sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630), swift_dynamicCast(), v14 = v26, v12 = v5, v13 = v6, !v26))
    {
LABEL_28:
      sub_197458C2C();
      return;
    }

LABEL_19:
    v16 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
    swift_beginAccess();
    v17 = *(a2 + v16);
    if (*(v17 + 16))
    {
      v18 = v14;

      v19 = sub_197403C30(v14, 0);
      if (v20)
      {
        sub_19742FE50(*(v17 + 56) + 32 * v19, &v26);

        v21 = *(&v26 + 1) != 1;
        if (v26)
        {
          goto LABEL_26;
        }
      }

      else
      {

        v21 = 0;
        v26 = xmmword_19752EA60;
        v27 = 0;
        v28 = 0;
      }
    }

    else
    {
      v26 = xmmword_19752EA60;
      v27 = 0;
      v28 = 0;
      v22 = v14;
      v21 = 0;
    }

    if (!v21)
    {
      sub_1974050A8(&v26, &qword_1EAF2B640, &unk_19752F160);

LABEL_8:
      goto LABEL_9;
    }

LABEL_26:
    Strong = swift_unknownObjectWeakLoadStrong();
    v24 = *(&v26 + 1);
    sub_1974050A8(&v26, &qword_1EAF2B640, &unk_19752F160);

    if (!Strong)
    {
      goto LABEL_8;
    }

    sub_1974327FC(&v26, Strong, v24);

    swift_unknownObjectRelease();
LABEL_9:
    v5 = v12;
    v6 = v13;
  }

  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_15:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1974C0170(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1975220AC();
    sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630);
    sub_1974C1734();
    sub_197521C1C();
    v2 = v31;
    v3 = v32;
    v4 = v33;
    v5 = v34;
    v6 = v35;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    v16 = sub_19752212C();
    if (!v16 || (v36 = v16, sub_1974C179C(0, qword_1ED7C7910, 0x1E695D630), swift_dynamicCast(), v15 = v28, v13 = v5, v14 = v6, !v28))
    {
LABEL_31:
      sub_197458C2C();
      return;
    }

LABEL_20:
    v17 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
    swift_beginAccess();
    v18 = *(a2 + v17);
    if (*(v18 + 16))
    {
      v19 = v15;

      v20 = sub_197403C30(v15, 0);
      if (v21)
      {
        sub_19742FE50(*(v18 + 56) + 32 * v20, &v28);

        v22 = *(&v28 + 1) != 1;
        if (v28)
        {
          goto LABEL_27;
        }
      }

      else
      {

        v22 = 0;
        v28 = xmmword_19752EA60;
        v29 = 0;
        v30 = 0;
      }
    }

    else
    {
      v28 = xmmword_19752EA60;
      v29 = 0;
      v30 = 0;
      v23 = v15;
      v22 = 0;
    }

    if (!v22)
    {
      sub_1974050A8(&v28, &qword_1EAF2B640, &unk_19752F160);

LABEL_9:
      goto LABEL_10;
    }

LABEL_27:
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = *(&v28 + 1);
    sub_1974050A8(&v28, &qword_1EAF2B640, &unk_19752F160);

    if (!Strong)
    {
      goto LABEL_9;
    }

    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_19744377C(ObjectType, v25))
    {
      sub_1974327FC(&v28, Strong, v25);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease_n();
    }

LABEL_10:
    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_31;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1974C04E4(uint64_t result, void **a2, _BYTE *a3, uint64_t a4, char **a5)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = (result + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1974A6118(ObjectType, v8);
      v11 = v10;
      v13 = v12;
      v14 = *a2;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_197477820(0, v14[2] + 1, 1, v14);
        *a2 = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_197477820((v16 > 1), v17 + 1, 1, v14);
        *a2 = v14;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v11;
      v18[5] = v13;
      if (*a3 == 1)
      {
        v19 = sub_197473494(v7, v8, a4);
        v20 = *a5;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v20;
        if (v19)
        {
          if ((v21 & 1) == 0)
          {
            v20 = sub_19747772C(0, *(v20 + 2) + 1, 1, v20);
            *a5 = v20;
          }

          v23 = *(v20 + 2);
          v22 = *(v20 + 3);
          if (v23 >= v22 >> 1)
          {
            *a5 = sub_19747772C((v22 > 1), v23 + 1, 1, v20);
          }

          swift_unknownObjectRelease();
          v24 = *a5;
          *(v24 + 2) = v23 + 1;
          v24[v23 + 32] = 1;
        }

        else
        {
          if ((v21 & 1) == 0)
          {
            v20 = sub_19747772C(0, *(v20 + 2) + 1, 1, v20);
            *a5 = v20;
          }

          v26 = *(v20 + 2);
          v25 = *(v20 + 3);
          if (v26 >= v25 >> 1)
          {
            *a5 = sub_19747772C((v25 > 1), v26 + 1, 1, v20);
          }

          swift_unknownObjectRelease();
          v27 = *a5;
          *(v27 + 2) = v26 + 1;
          v27[v26 + 32] = 0;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      result = swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1974C075C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1974C07C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_1974BE168(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_1974028B8(v46, v44);
  v14 = *a5;
  result = sub_1973F4028(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1973FF860(v20, a4 & 1);
    v22 = *a5;
    result = sub_1973F4028(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1975229CC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_197422CFC();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    sub_1974028B8(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1974028B8(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_1974BE168(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_1974028B8(v46, v44);
        v33 = *a5;
        result = sub_1973F4028(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_1973FF860(v37, 1);
          v38 = *a5;
          result = sub_1973F4028(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
          sub_1974028B8(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1974028B8(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1974BE168(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_197458C2C();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1974C0AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1974A46D0(a2, a3);
  if (!result)
  {
    sub_1974A6118(a2, a3);
    v7 = v6;
    v9 = v8;
    v10 = swift_unknownObjectRetain();
    sub_1974A4718(v10, v9, a2, a3);
    swift_unknownObjectRelease();
    return v7;
  }

  return result;
}

void sub_1974C0B50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v14 = *(v2 + 32);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  LOBYTE(v13) = v11;
  sub_1974B7C2C(ObjectType, a1, a2, v14, v7, v8, v9, v10, v13, v5, ObjectType, v6, a2);
}

unint64_t sub_1974C0C0C()
{
  result = qword_1EAF2B860;
  if (!qword_1EAF2B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B860);
  }

  return result;
}

unint64_t sub_1974C0C64()
{
  result = qword_1EAF2B868;
  if (!qword_1EAF2B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B868);
  }

  return result;
}

uint64_t sub_1974C0CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1974C0D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelContext.NotificationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelContext.NotificationKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1974C1460(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1974C14A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwiftDataError._Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SwiftDataError._Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1974C1638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1974C1684()
{
  result = qword_1EAF2B8A0;
  if (!qword_1EAF2B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B8A0);
  }

  return result;
}

unint64_t sub_1974C16DC()
{
  result = qword_1EAF2B8A8;
  if (!qword_1EAF2B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B8A8);
  }

  return result;
}

unint64_t sub_1974C1734()
{
  result = qword_1EAF2B918;
  if (!qword_1EAF2B918)
  {
    sub_1974C179C(255, qword_1ED7C7910, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B918);
  }

  return result;
}

uint64_t sub_1974C179C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_324Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  v1 = *(v0 + 104);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1974C1878(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
  result = sub_1974F6650(0, v9, 0);
  v35 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_59;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
        goto LABEL_61;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B330, &unk_19752FCE0);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size_1(v20);
            v20[2] = v19;
            v20[3] = 2 * ((v23 - 32) / 40);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B338, &qword_19752D4E0);
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1974F6650((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v36 + 16) = v22 + 1;
      *(v36 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v35;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_34:
    v24 = v17 <= v7;
    if (a3 > 0)
    {
      v24 = v17 >= v7;
    }

    if (v24)
    {
      return v36;
    }

    while (1)
    {
      v25 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v26 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v27 = a4[2];
      if (v27 < v26)
      {
        v26 = a4[2];
      }

      v28 = v26 - v17;
      if (v26 < v17)
      {
        goto LABEL_63;
      }

      if (v17 < 0)
      {
        goto LABEL_64;
      }

      if (v27 == v28)
      {

        v29 = a4;
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
        if (v26 != v17)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B330, &unk_19752FCE0);
            v29 = swift_allocObject();
            v33 = _swift_stdlib_malloc_size_1(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v33 - 32) / 40);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B338, &qword_19752D4E0);
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_1974F6650((v30 > 1), v31 + 1, 1);
        v15 = a5;
      }

      *(v36 + 16) = v31 + 1;
      *(v36 + 8 * v31 + 32) = v29;
      v32 = v25 <= v35;
      if (a3 > 0)
      {
        v32 = v25 >= v35;
      }

      v17 = v25;
      if (v32)
      {
        return v36;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1974C1C48(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1974BD058(a1);
}

uint64_t sub_1974C1C68(void *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1974BD0D0(a1, a2, v2[4]) & 1;
}

uint64_t sub_1974C1C8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 24);
  *a2 = *a1;
  a2[1] = v3;
  return swift_unknownObjectRetain();
}

uint64_t sub_1974C1CE4(unint64_t *a1, uint64_t *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1974BA630(a1, a2, v2[6]) & 1;
}

unint64_t sub_1974C1D0C()
{
  result = qword_1EAF2B990;
  if (!qword_1EAF2B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2B990);
  }

  return result;
}

uint64_t sub_1974C1D60(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1974B7594(a1, v1[4]);
}

void sub_1974C1D80(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1974B7780(*(v1 + 32), a1);
}

uint64_t sub_1974C1E20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v21 - v11;
  v13 = sub_1975213EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1973FE21C(a2, v12, &qword_1EAF2B658, &unk_19752F180);
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_1974CD170(a3, a3, a4, a4, v18);
    if (v19(v12, 1, v13) != 1)
    {
      sub_1973F7E04(v12, &qword_1EAF2B658, &unk_19752F180);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
  }

  sub_1974CD3CC(v22, v18, v4, a3);
  return (*(v14 + 8))(v18, v13);
}

BOOL PersistentModel.hasChanges.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 & 0x3F) != 0;
}

uint64_t sub_1974C2050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1973FFCAC(a1, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
  type metadata accessor for _StitchedBackingData();
  if (swift_dynamicCast())
  {
    *(&v14 + 1) = a2;
    *&v13 = v3;
    __swift_project_boxed_opaque_existential_1Tm_2(&v13, a2);
    DynamicType = swift_getDynamicType();
    swift_unknownObjectRetain();
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v13);
    sub_1974CBBF0(DynamicType, a2, v3, v12[0], a2, a3);
    goto LABEL_6;
  }

  sub_1973FFCAC(a1, v12);
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    sub_197434660(&v11, &v13);
    sub_1973FFCAC(&v13, v12);
    (*(a3 + 64))(v12, a2, a3);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v13);
LABEL_7:
    sub_197458088(0, a2, a3);
    sub_197442A5C(0, a2, a3);
    sub_1974A7F6C(0, a2, a3);
    sub_1974A7F04(a2, a3);
    sub_1974A7ED0(a2, a3);
    return sub_1974A7F38(a2, a3);
  }

  *(&v14 + 1) = a2;
  *&v13 = v3;
  __swift_project_boxed_opaque_existential_1Tm_2(&v13, a2);
  v8 = swift_getDynamicType();
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm_3(&v13);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  sub_1974CC0F4(v8, a2, &v13, a1, v9, v3, a2, a2, a3, a3);
  sub_1973F7E04(&v13, &qword_1EAF2B9B0, &qword_19752FE10);
  swift_beginAccess();
  if (*(v9 + 16))
  {
LABEL_6:

    goto LABEL_7;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000023, 0x8000000197527F70);
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974C2378(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 80);

  return v2;
}

void *sub_1974C23A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for _StitchedBackingData();
  PersistentModel.persistentModelID.getter(a1, a2, &v11);
  v14 = v11;
  v15 = v12;
  v6 = sub_197512F10(a1, &v14);
  v7 = sub_1973FE074(a1, a2);
  v8 = v6[3];
  v6[3] = v7;

  v13 = a1;
  v11 = v2;
  __swift_project_boxed_opaque_existential_1Tm_2(&v11, a1);
  DynamicType = swift_getDynamicType();
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1Tm_3(&v11);
  sub_1974C2924(DynamicType, a1, v3, v6, a1, a2);
  return v6;
}

uint64_t sub_1974C24A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a8;
  v31 = a3;
  v35 = a7;
  v36 = a6;
  v33 = a2;
  v34 = a5;
  v32 = a4;
  v37 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9B8, &qword_19752FE18);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v28 - v13;
  v29 = sub_197522AEC();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v29, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_197522ADC();
  sub_19752233C();
  sub_19752248C();
  if (!*(&v42 + 1))
  {
LABEL_17:

    v21 = v36;
LABEL_18:
    sub_197522AAC();
    v26 = v29;
    if ((*(v15 + 48))(v14, 1, v29) == 1)
    {
      sub_1973F7E04(v14, &qword_1EAF2B9B8, &qword_19752FE18);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1975221EC();

      *&v43 = 0xD000000000000021;
      *(&v43 + 1) = 0x8000000197528270;
      v27 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v27);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      (*(v15 + 32))(v19, v14, v26);
      sub_1974C24A0(v19, v33, v31, v32, v34, v21, v35, v30);
      return (*(v15 + 8))(v19, v26);
    }

    return result;
  }

  while (1)
  {
    v38 = v41[0];
    v39 = v41[1];
    v40 = v42;
    if (*(&v41[0] + 1))
    {
      v20 = v38 == 0x6E696B636162245FLL && *(&v41[0] + 1) == 0xED00006174614467;
      if (v20 || (sub_19752282C() & 1) != 0)
      {
        break;
      }
    }

    sub_1973F7E04(&v38, &qword_1EAF2B9C0, &qword_19752FE20);
    sub_19752248C();
    if (!*(&v42 + 1))
    {
      goto LABEL_17;
    }
  }

  v43 = v38;
  v44[0] = v39;
  v44[1] = v40;

  sub_1974028B8(v44, &v45);
  v21 = v36;
  *&v43 = v36;
  swift_getExtendedExistentialTypeMetadata();
  if ((swift_dynamicCast() & 1) == 0 || !v47)
  {
    goto LABEL_18;
  }

  sub_197434660(&v46, v48);
  sub_1973FFCAC(v48, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9C8, &qword_19752FE28);
  if (swift_dynamicCast())
  {
    v22 = *(&v41[0] + 1);
    sub_1973FE074(v34, v35);
    v23 = sub_1974CE0F0();
    if (*v24)
    {
      *(&v41[0] + 1) = v22;
      swift_unknownObjectWeakInit();
      sub_19749B4B8(v41, v31, v32);
    }

    (v23)(&v43, 0);

    swift_unknownObjectRelease();
  }

  return sub_197434660(v48, v37);
}

uint64_t sub_1974C2924(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  sub_197434244(*(*a4 + 232), a5, *(*a4 + 240), a6, v48);
  v47 = a5;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    result = sub_1975214CC();
    if (result)
    {
      v39 = result;
      result = swift_conformsToProtocol2();
      if (result)
      {
        return sub_1974C2924(v39, v39, a3, a4, v39, result);
      }
    }

    return result;
  }

  v43 = *&v46[0];
  type metadata accessor for Schema.Entity();
  v10 = sub_1973FDF38(a2, v6);
  swift_beginAccess();
  v11 = *(v10 + 64);
  v42 = *(v11 + 16);
  if (!v42)
  {

LABEL_23:
    v37 = sub_197512FA0();

    sub_197512F08(v37 & 1);
    goto LABEL_24;
  }

  v40 = a3;
  v12 = v11 + 32;

  v13 = 0;
  v41 = v11;
  while (v13 < *(v11 + 16))
  {
    sub_1973FFCAC(v12, v48);
    v14 = a4[2];
    v15 = v49;
    v16 = v50;
    __swift_project_boxed_opaque_existential_1Tm_2(v48, v49);
    v17 = *(v16 + 32);

    v45 = v17(v15, v16);
    v6 = v18;
    v19 = *(v43 + 16);
    v20 = v49;
    v21 = v50;
    __swift_project_boxed_opaque_existential_1Tm_2(v48, v49);
    v22 = *(v21 + 32);

    v23 = v22(v20, v21);
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1Tm_3(v48);
    v26 = *(v19 + 16);
    if (!*(v26 + 16))
    {

LABEL_11:
      memset(v46, 0, sizeof(v46));
      goto LABEL_12;
    }

    v27 = sub_1973F4028(v23, v25);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = *(*(v26 + 56) + 8 * v27);
    swift_beginAccess();
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    v30 = *(v19 + 32);
    if (v11 >= *(v30 + 16))
    {
      goto LABEL_31;
    }

    sub_1973FE21C(v30 + 32 * v11 + 32, v46, &qword_1EAF2AF20, &unk_19752F320);
LABEL_12:

    v31 = *(v14 + 16);
    v11 = v45;
    if (!*(v31 + 16))
    {
      goto LABEL_32;
    }

    v32 = sub_1973F4028(v45, v6);
    if ((v33 & 1) == 0)
    {
      goto LABEL_32;
    }

    v34 = v32;

    v11 = *(*(v31 + 56) + 8 * v34);
    swift_beginAccess();
    v35 = *(v14 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + 32) = v35;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v35 = sub_19751C104(v35);
      *(v14 + 32) = v35;
      if ((v11 & 0x8000000000000000) != 0)
      {
LABEL_20:
        __break(1u);
LABEL_21:

        a3 = v40;
        goto LABEL_23;
      }
    }

    if (v11 >= v35[2])
    {
      goto LABEL_29;
    }

    ++v13;
    sub_1973F7958(v46, &v35[4 * v11 + 4]);
    *(v14 + 32) = v35;
    swift_endAccess();
    sub_1973F7E04(v46, &qword_1EAF2AF20, &unk_19752F320);

    v12 += 40;
    v11 = v41;
    if (v42 == v13)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_1975221EC();

  MEMORY[0x19A8DFF80](v11, v6);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974C2DAC@<X0>(void *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x1E69E6B90]);
  sub_1973F51F0(v6, a2, v23);
  sub_1974D4F38(a1, v16);
  v7 = v23[0];
  v24 = v23[2];
  v25 = v23[1];
  if (*(&v16[0] + 1))
  {
    v19 = v16[2];
    v20 = v16[3];
    v21 = v16[4];
    v22 = v16[5];
    v17 = v16[0];
    v18 = v16[1];
LABEL_3:
    v8 = v20;
    a3[2] = v19;
    a3[3] = v8;
    v9 = v22;
    a3[4] = v21;
    a3[5] = v9;
    v10 = v18;
    *a3 = v17;
    a3[1] = v10;

    sub_1973F7E04(&v25, &qword_1EAF2B570, &qword_19752E998);
    return sub_1973F7E04(&v24, &qword_1EAF2B578, &qword_19752E9A0);
  }

  sub_1973FE21C(&v24, v15, &qword_1EAF2B578, &qword_19752E9A0);

  sub_1973FE21C(&v25, v15, &qword_1EAF2B570, &qword_19752E998);
  v12 = sub_1973F7BBC(a1, v6, a2);
  sub_1974D4CB4(v12, v13, &v17);

  if (*(&v16[0] + 1))
  {
    sub_1973F7E04(v16, &qword_1EAF2B580, &qword_19752E9A8);
  }

  sub_1973F7E04(&v25, &qword_1EAF2B570, &qword_19752E998);
  sub_1973F7E04(&v24, &qword_1EAF2B578, &qword_19752E9A0);
  if (*(&v17 + 1))
  {
    goto LABEL_3;
  }

  sub_1973F7E04(&v17, &qword_1EAF2B580, &qword_19752E9A8);
  *&v17 = 0;
  *(&v17 + 1) = 0xE000000000000000;
  sub_1973FE21C(&v24, v16, &qword_1EAF2B578, &qword_19752E9A0);

  sub_1973FE21C(&v25, v16, &qword_1EAF2B570, &qword_19752E998);
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197528460);
  *&v16[0] = a1;
  sub_19752228C();
  sub_1975227FC();
  MEMORY[0x19A8DFF80](544106784, 0xE400000000000000);
  v14 = MEMORY[0x19A8E0100](v7, &type metadata for Schema.PropertyMetadata);
  MEMORY[0x19A8DFF80](v14);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974C30BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_197522B2C();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    sub_197434244(a4, a6, a7, a9, &v21);
    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v21, v22);
    (*(v17 + 64))(v15, a5, a8, v16, v17);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v21);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t PersistentModel.getValue<A, B>(forKey:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v11, a3))
  {
    sub_1974258A4(v11, a3);
  }

  if (PersistentModel.modelContext.getter(v11, a3))
  {
    sub_1974B3098(a1, a3);
  }

  if (swift_getAssociatedTypeWitness() == v11)
  {
    (*(a3 + 56))(&v22, v11, a3);
    v18 = v24;
    v19 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(&v22, v24);
    (*(v19 + 96))(a1, *(v10 + *MEMORY[0x1E69E77B0] + 8), a2, a4, a5, v18, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v22);
  }

  else
  {
    sub_1974C2DAC(a1, a3, &v22);
    v12 = v23;
    v13 = *v23;
    v14 = sub_197521FFC();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v20 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v20);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C384C(v14, v12, v5, v11, *(v10 + *MEMORY[0x1E69E77B0] + 8), a2, v14, a3, a4, a5, v15);
      return sub_1973F82A8(&v22);
    }
  }

  return result;
}

uint64_t sub_1974C384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_197522B2C();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    sub_197434244(a4, a7, a8, a11, &v23);
    v16 = v24;
    v17 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(&v23, v24);
    (*(v17 + 96))(v15, a5, a6, a9, a10, v16, v17);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v23);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C3A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_197522B2C();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;

    sub_197434244(a4, a6, a7, a8, &v20);
    v15 = v21;
    v16 = v22;
    __swift_project_boxed_opaque_existential_1Tm_2(&v20, v21);
    (*(v16 + 104))(v14, a5, v15, v16);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v18 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v18);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C3C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a7, a8, a10, &v22);
    v17 = v23;
    v18 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v22, v23);
    (*(v18 + 112))(v16, a4, a6, a9, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v22);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C457C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = MEMORY[0x1E69E77B0];
  v10 = *(*a2 + *MEMORY[0x1E69E77B0]);
  if (swift_getAssociatedTypeWitness() == v10)
  {
    (*(a3 + 56))(&v20, v10, a3);
    v17 = v22;
    v18 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v20, v22);
    v16 = (*(v18 + 72))(a2, *(v8 + *v9 + 8), a4, v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
    return v16;
  }

  sub_1974C2DAC(a2, a3, &v20);
  v11 = v21;
  v12 = *v21;

  v13 = sub_197521FFC();
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
    v16 = sub_1974C47A8(v13, v11, a1, v10, *(v8 + *v9 + 8), v13, a3, a4, v14);

    sub_1973F82A8(&v20);
    return v16;
  }

  sub_1973F82A8(&v20);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974C47A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_197522B2C();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    sub_197434244(a4, a6, a7, a9, &v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v22, v23);
    v18 = (*(v17 + 72))(v15, a5, a8, v16, v17);

    __swift_destroy_boxed_opaque_existential_1Tm_3(&v22);
    return v18;
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C49B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a7, a8, a10, &v22);
    v17 = v23;
    v18 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v22, v23);
    (*(v18 + 120))(v16, a4, a6, a9, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v22);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C4BBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = MEMORY[0x1E69E77B0];
  v10 = *(*a2 + *MEMORY[0x1E69E77B0]);
  if (swift_getAssociatedTypeWitness() == v10)
  {
    (*(a3 + 56))(&v20, v10, a3);
    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v20, v22);
    v18 = (*(v17 + 80))(a2, *(*(v8 + *v9 + 8) + 16), a4, v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
  }

  else
  {
    sub_1974C2DAC(a2, a3, &v20);
    v11 = v21;
    v12 = *v21;

    v13 = sub_197521FFC();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      sub_1973F82A8(&v20);

      return 0;
    }

    else
    {
      v18 = sub_1974C4DD8(v13, v11, a1, v10, *(*(v8 + *v9 + 8) + 16), v13, a3, a4, v14, 44, 0x20646E6120, 0xE500000000000000);

      sub_1973F82A8(&v20);
    }
  }

  return v18;
}

uint64_t sub_1974C4DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_197521F5C();
  sub_197522B2C();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;

    sub_197434244(a4, a6, a7, a9, &v25);
    v19 = v26;
    v20 = v27;
    __swift_project_boxed_opaque_existential_1Tm_2(&v25, v26);
    v21 = (*(v20 + 80))(v18, a5, a8, v19, v20);

    __swift_destroy_boxed_opaque_existential_1Tm_3(&v25);
    return v21;
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v23 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v23);

    MEMORY[0x19A8DFF80](a11, a12);
    v24 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v24);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C4FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_197521F5C();
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a7, a8, a10, &v22);
    v17 = v23;
    v18 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v22, v23);
    (*(v18 + 128))(v16, a4, a6, a9, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v22);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x74706F20646E6120, 0xEE00206C616E6F69);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t PersistentModel.setValue<A, B>(forKey:to:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v107 = a5;
  v105 = a1;
  v8 = (*a1 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v96 = sub_197521F5C();
  v95 = *(v96 - 8);
  v10 = *(v95 + 64);
  v12 = MEMORY[0x1EEE9AC00](v96, v11);
  v100 = &v95 - v13;
  v103 = *(v9 - 8);
  v14 = *(v103 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v95 - v20;
  v22 = *v8;
  if (sub_1973FE6F0(*v8, a4))
  {
    sub_1974258A4(v22, a4);
  }

  v108 = v5;
  v122 = PersistentModel.modelContext.getter(v22, a4);
  v121 = MEMORY[0x1E69E7CD0];
  v120 = sub_1975215CC();
  v118 = MEMORY[0x1E69E7CC0];
  v119 = MEMORY[0x1E69E7CC0];
  v23 = sub_19744C800(v105, v22, a4);
  v24 = swift_beginAccess();
  v25 = *(v23 + 112);
  MEMORY[0x1EEE9AC00](v24, v26);
  *(&v95 - 12) = v22;
  *(&v95 - 11) = v9;
  *(&v95 - 10) = a3;
  *(&v95 - 9) = a4;
  v27 = v107;
  *(&v95 - 8) = v107;
  LODWORD(v104) = v28;
  *(&v95 - 56) = v28;
  *(&v95 - 6) = &v118;
  *(&v95 - 5) = &v121;
  v91 = &v120;
  v92 = &v122;
  v93 = &v119;
  sub_197512FA8(sub_1974CEB60, (&v95 - 14), v9, v27);
  v29 = v118;
  if (*(v118 + 16) && v122)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1974BD348(a3, v29, a3, AssociatedConformanceWitness);
  }

  v101 = v29;
  v31 = PersistentModel.modelContext.getter(v22, a4);
  v106 = v23;
  if (!v31)
  {
    v32 = v122;
    v33 = v107;
    if (v122)
    {
      v34 = v119;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v34;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }

    goto LABEL_14;
  }

  while (1)
  {
    v33 = v107;
LABEL_14:
    v117 = MEMORY[0x1E69E7CD0];
    v34 = sub_197405108();
    v116 = sub_1975215BC();
    v39 = v108;
    v40 = sub_1974C6238(v108, v105, a3, a4, v33);
    MEMORY[0x1EEE9AC00](v40, v41);
    *(&v95 - 12) = v22;
    *(&v95 - 11) = v9;
    *(&v95 - 10) = a3;
    *(&v95 - 9) = a4;
    *(&v95 - 8) = v42;
    *(&v95 - 7) = &v117;
    *(&v95 - 6) = &v121;
    *(&v95 - 40) = v104;
    v91 = &v116;
    v92 = v39;
    v93 = v106;
    sub_197512FA8(sub_1974CEBA4, (&v95 - 14), v9, v42);
    v43 = v103;
    v44 = *(v103 + 8);
    v99 = v103 + 8;
    v98 = v44;
    v44(v21, v9);
    v45 = v116;
    v46 = MEMORY[0x19A8DFD80](v116, &type metadata for PersistentIdentifier, a3, v34);
    v102 = v18;
    if (v46)
    {
      break;
    }

    v104 = a4;
    if (v122)
    {
      *&v112 = v45;
      sub_19752163C();

      swift_getWitnessTable();
      v34 = sub_197521ADC();
      v47 = swift_getAssociatedConformanceWitness();
      sub_1974BD348(a3, v34, a3, v47);
    }

    a4 = v9;
    v48 = v45;
    v50 = *(v45 + 64);
    v21 = (v45 + 64);
    v49 = v50;
    v51 = 1 << *(v48 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v18 = v52 & v49;
    v32 = (v51 + 63) >> 6;
    v9 = v48;

    v53 = 0;
    while (v18)
    {
      v54 = v53;
LABEL_25:
      v55 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v34 = *(*(v9 + 56) + ((v54 << 9) | (8 * v55)));
      v56 = swift_getAssociatedConformanceWitness();
      swift_unknownObjectRetain();
      sub_197454D38(v106, v34, v22, a3, v104, v56);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v54 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v54 >= v32)
      {
        v45 = v9;

        v18 = v102;
        v43 = v103;
        v9 = a4;
        a4 = v104;
        goto LABEL_28;
      }

      v18 = *&v21[8 * v54];
      ++v53;
      if (v18)
      {
        v53 = v54;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_45:
    v34 = sub_197433F80(0, v34[2] + 1, 1, v34);
    v119 = v34;
LABEL_10:
    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_197433F80((v36 > 1), v37 + 1, 1, v34);
    }

    v34[2] = v37 + 1;
    v38 = &v34[2 * v37];
    v38[4] = v108;
    v38[5] = a4;
    v119 = v34;
    sub_197452A84(v32, v22, a4);
  }

LABEL_28:
  v97 = v45;
  v57 = v120;
  *&v112 = v120;
  v58 = sub_197521AAC();
  v104 = v57;
  swift_bridgeObjectRetain_n();
  v59 = v100;
  v60 = swift_dynamicCast();
  v61 = *(v43 + 56);
  if (!v60)
  {
    v61(v59, 1, 1, v9);
    (*(v95 + 8))(v59, v96);
    *&v112 = 0;
    *(&v112 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197527E30);
    v90 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v90);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v110 = v104;
    swift_getWitnessTable();
    sub_19752280C();
    LODWORD(v94) = 0;
    v89 = 547;
    goto LABEL_48;
  }

  v61(v59, 0, 1, v9);
  (*(v43 + 32))(v18, v59, v9);
  v62 = v108;
  v63 = PersistentModel.modelContext.getter(v22, a4);
  v64 = v107;
  if (v63)
  {
    sub_197432658(v62, v22, a4);
  }

  v103 = v58;
  if (swift_getAssociatedTypeWitness() == v22)
  {
    (*(a4 + 56))(&v112, v22, a4);
    v73 = v114;
    v74 = v115;
    __swift_project_boxed_opaque_existential_1Tm_2(&v112, v114);
    v75 = *(v74 + 136);
    v76 = v74;
    v70 = v108;
    v75(v105, v18, v9, a3, v64, v73, v76);
    v71 = __swift_destroy_boxed_opaque_existential_1Tm_3(&v112);
    goto LABEL_36;
  }

  sub_1974C2DAC(v105, a4, &v112);
  v65 = v113;
  v66 = *v113;
  v67 = sub_197521FFC();
  v68 = swift_conformsToProtocol2();
  if (!v68 || !v67)
  {
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
    v88 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v88);

    LODWORD(v94) = 0;
    v89 = 566;
LABEL_48:
    v93 = v89;
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v69 = v65;
  v70 = v108;
  sub_1974C682C(v67, v69, v108, v18, v22, v9, a3, v67, a4, v64, v68);
  v71 = sub_1973F82A8(&v112);
LABEL_36:
  *&v112 = v104;
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v95 - 8) = v22;
  *(&v95 - 7) = v9;
  *(&v95 - 6) = a3;
  *(&v95 - 5) = a4;
  v91 = v64;
  v92 = &v117;
  v93 = v70;
  v94 = v106;
  v109 = swift_getAssociatedConformanceWitness();
  v77 = v103;
  WitnessTable = swift_getWitnessTable();
  sub_197512FA8(sub_1974CEBE8, (&v95 - 10), v77, WitnessTable);

  if (v122)
  {
    v79 = v119;
    v80 = v119[2];
    v81 = v102;
    if (v80)
    {

      v82 = v79 + 5;
      do
      {
        v83 = *(v82 - 1);
        v84 = *v82;
        ObjectType = swift_getObjectType();
        v86 = swift_unknownObjectRetain();
        sub_197454EEC(v86, ObjectType, v84);
        swift_unknownObjectRelease();
        v82 += 2;
        --v80;
      }

      while (v80);
    }

    v98(v81, v9);
  }

  else
  {
    v98(v102, v9);
  }
}

void sub_1974C5F20(void *a1, char a2, char **a3, uint64_t *a4, uint64_t a5, uint64_t *a6, void **a7, uint64_t a8, uint64_t a9, void *a10)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a10, AssociatedConformanceWitness, &v36);
  v16 = v36;
  v17 = v37;
  if (a2 & 1) != 0 && (sub_1973FE6F0(a10, AssociatedConformanceWitness))
  {
    v18 = *a3;
    sub_1974028EC(v16, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v18;
    v34 = a6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_197445BA8(0, *(v18 + 2) + 1, 1, v18);
      *a3 = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_197445BA8((v20 > 1), v21 + 1, 1, v18);
      *a3 = v18;
    }

    *(v18 + 2) = v21 + 1;
    v22 = &v18[16 * v21];
    *(v22 + 4) = v16;
    v22[40] = v17;
    a6 = v34;
  }

  v23 = *a4;

  v24 = sub_197455CE4(v16, v17, v23);

  if (v24)
  {

    goto LABEL_14;
  }

  sub_1974028EC(v16, v17);
  sub_19742AE44(&v36, v16, v17);
  sub_1974028C8(v36, v37);
  v36 = a1;
  sub_197521AAC();
  swift_unknownObjectRetain();
  sub_197521A7C();
  if (PersistentModel.modelContext.getter(a10, AssociatedConformanceWitness))
  {

    if (*a6)
    {
LABEL_14:
      sub_1974028C8(v16, v17);
      return;
    }
  }

  else if (*a6)
  {
    v25 = *a7;
    swift_unknownObjectRetain();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_197433F80(0, v25[2] + 1, 1, v25);
      *a7 = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_197433F80((v27 > 1), v28 + 1, 1, v25);
      *a7 = v25;
    }

    v25[2] = v28 + 1;
    v29 = &v25[2 * v28];
    v29[4] = a1;
    v29[5] = AssociatedConformanceWitness;
    v30 = *a6;

    sub_197452A84(v31, a10, AssociatedConformanceWitness);
    sub_1974028C8(v16, v17);
    goto LABEL_22;
  }

  v32 = PersistentModel.modelContext.getter(a10, AssociatedConformanceWitness);
  sub_1974028C8(v16, v17);
  v33 = *a6;
  *a6 = v32;
LABEL_22:
}

uint64_t sub_1974C6238(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = MEMORY[0x1E69E77B0];
  v12 = *(*a2 + *MEMORY[0x1E69E77B0]);
  if (swift_getAssociatedTypeWitness() == v12)
  {
    (*(a4 + 56))(&v21, v12, a4);
    v19 = v23;
    v20 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v21, v23);
    (*(v20 + 88))(a2, *(v10 + *v11 + 8), a3, a5, v19, v20);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v21);
  }

  else
  {
    sub_1974C2DAC(a2, a4, &v21);
    v13 = v22;
    v14 = *v22;

    v15 = sub_197521FFC();
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      sub_1973F82A8(&v21);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C6478(v15, v13, a1, v12, *(v10 + *v11 + 8), a3, v15, a4, a5, v16);

      return sub_1973F82A8(&v21);
    }
  }

  return result;
}

uint64_t sub_1974C6478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_197522B2C();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    sub_197434244(a4, a7, a8, a10, &v22);
    v16 = v23;
    v17 = v24;
    __swift_project_boxed_opaque_existential_1Tm_2(&v22, v23);
    (*(v17 + 88))(v15, a5, a6, a9, v16, v17);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v22);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void sub_1974C6688(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a10, AssociatedConformanceWitness, &v20);
  v15 = v20;
  v16 = v21;
  sub_1974028EC(v20, v21);
  sub_19742AE44(&v20, v15, v16);
  sub_1974028C8(v20, v21);
  v17 = *a3;

  LOBYTE(a3) = sub_197455CE4(v15, v16, v17);

  if (a3 & 1) == 0 && (a4)
  {
    if (sub_1973FE6F0(a10, AssociatedConformanceWitness))
    {
      v20 = v15;
      v21 = v16;
      sub_197405108();
      sub_19752166C();
      swift_unknownObjectRetain();
      sub_19752168C();
      return;
    }

    sub_197454D38(a7, a1, a8, a10, a11, AssociatedConformanceWitness);
  }

  sub_1974028C8(v15, v16);
}

uint64_t sub_1974C682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a8, a9, a11, &v23);
    v17 = v24;
    v18 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(&v23, v24);
    (*(v18 + 136))(v16, a4, a6, a7, a10, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v23);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void sub_1974C6A38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  PersistentModel.persistentModelID.getter(a7, AssociatedConformanceWitness, &v18);
  v14 = v18;
  v15 = v19;
  v16 = sub_197455CE4(v18, v19, v12);

  sub_1974028C8(v14, v15);
  if ((v16 & 1) == 0)
  {
    sub_197452DB8(a1, AssociatedConformanceWitness, a5, a8);
    sub_1974530DC(a4, a1, a5, a7, a8, AssociatedConformanceWitness);
  }
}

uint64_t PersistentModel.setValue<A, B>(forKey:to:)(uint64_t *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a6;
  v117 = a5;
  v116 = a1;
  v9 = (*a1 + *MEMORY[0x1E69E77B0]);
  v10 = v9[1];
  v106 = sub_197521F5C();
  v105 = *(v106 - 8);
  v11 = *(v105 + 64);
  v13 = MEMORY[0x1EEE9AC00](v106, v12);
  v108 = &v105 - v14;
  v112 = *(v10 - 8);
  v15 = *(v112 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v105 - v21;
  v23 = *v9;
  if (sub_1973FE6F0(*v9, a4))
  {
    sub_1974258A4(v23, a4);
  }

  v119 = v6;
  v134 = PersistentModel.modelContext.getter(v23, a4);
  v24 = MEMORY[0x1E69E7CC0];
  v133 = MEMORY[0x1E69E7CC0];
  v132 = MEMORY[0x1E69E7CD0];
  v131 = sub_1975215CC();
  v25 = sub_19744C800(v116, v23, a4);
  v26 = swift_beginAccess();
  v118 = v25;
  v27 = *(v25 + 112);
  v130 = v24;
  MEMORY[0x1EEE9AC00](v26, v28);
  *(&v105 - 12) = v23;
  *(&v105 - 11) = v10;
  *(&v105 - 10) = a3;
  *(&v105 - 9) = a4;
  v29 = v120;
  *(&v105 - 8) = v117;
  *(&v105 - 7) = v29;
  LODWORD(v115) = v30;
  *(&v105 - 48) = v30;
  *(&v105 - 5) = &v130;
  v101 = &v132;
  v102 = &v131;
  v103 = &v134;
  v104 = &v133;
  sub_197512FA8(sub_1974CEC1C, (&v105 - 14), v10, v29);
  v31 = v130;
  if (*(v130 + 16) && v134)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1974BD348(a3, v31, a3, AssociatedConformanceWitness);
  }

  v111 = v31;
  v33 = v119;
  v34 = PersistentModel.modelContext.getter(v23, a4);
  v113 = v19;
  if (v34)
  {

    v35 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v36 = v134;
    v35 = MEMORY[0x1E69E7CD0];
    if (v134)
    {
      v37 = v133;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_197433F80(0, v37[2] + 1, 1, v37);
        v133 = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_197433F80((v39 > 1), v40 + 1, 1, v37);
      }

      v37[2] = v40 + 1;
      v41 = &v37[2 * v40];
      v33 = v119;
      v41[4] = v119;
      v41[5] = a4;
      v133 = v37;
      sub_197452A84(v36, v23, a4);
    }
  }

  v129 = v35;
  v42 = sub_197405108();
  v43 = &type metadata for PersistentIdentifier;
  v128 = sub_1975215BC();
  v44 = v117;
  v45 = v120;
  v46 = sub_1974C7C68(v33, v116, a3, a4, v117, v120);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v105 - 12) = v23;
  *(&v105 - 11) = v10;
  *(&v105 - 10) = a3;
  *(&v105 - 9) = a4;
  *(&v105 - 8) = v44;
  *(&v105 - 7) = v45;
  *(&v105 - 6) = &v129;
  *(&v105 - 5) = &v132;
  LOBYTE(v101) = v115;
  v102 = &v128;
  v103 = v48;
  v104 = v118;
  sub_197512FA8(sub_1974CEC64, (&v105 - 14), v10, v45);
  v49 = v112;
  v50 = *(v112 + 8);
  v110 = v112 + 8;
  v109 = v50;
  v50(v22, v10);
  v51 = v128;
  v52 = MEMORY[0x19A8DFD80](v128, &type metadata for PersistentIdentifier, a3, v42);
  v53 = v113;
  if ((v52 & 1) == 0)
  {
    v54 = v134;
    if (v134)
    {
      *&v124 = v51;
      sub_19752163C();

      swift_getWitnessTable();
      v55 = sub_197521ADC();
      v56 = swift_getAssociatedConformanceWitness();
      sub_1974BD348(a3, v55, a3, v56);
    }

    v115 = a3;
    v114 = v10;
    v53 = v51 + 64;
    v57 = 1 << *(v51 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v51 + 64);
    v60 = (v57 + 63) >> 6;
    v10 = v51;

    v61 = 0;
    a3 = v23;
    while (v59)
    {
      v62 = a4;
      v63 = v61;
LABEL_25:
      v64 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v43 = *(*(v10 + 56) + ((v63 << 9) | (8 * v64)));
      v65 = v115;
      v66 = swift_getAssociatedConformanceWitness();
      swift_unknownObjectRetain();
      v67 = v65;
      a4 = v62;
      v23 = a3;
      v68 = v66;
      v54 = v119;
      sub_197454D38(v118, v43, a3, v67, a4, v68);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v63 >= v60)
      {
        v51 = v10;

        v53 = v113;
        v10 = v114;
        a3 = v115;
        v49 = v112;
        goto LABEL_28;
      }

      v59 = *(v53 + 8 * v63);
      ++v61;
      if (v59)
      {
        v62 = a4;
        v61 = v63;
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_28:
  v107 = v51;
  v69 = v131;
  *&v124 = v131;
  v70 = sub_197521AAC();
  swift_bridgeObjectRetain_n();
  v71 = v108;
  v72 = swift_dynamicCast();
  v73 = *(v49 + 56);
  if (!v72)
  {
    v73(v71, 1, 1, v10);
    (*(v105 + 8))(v71, v106);
    *&v124 = 0;
    *(&v124 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197527E30);
    v100 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v100);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    v122 = v69;
    swift_getWitnessTable();
    sub_19752280C();
    LODWORD(v104) = 0;
    v99 = 663;
    goto LABEL_55;
  }

  v73(v71, 0, 1, v10);
  (*(v49 + 32))(v53, v71, v10);
  v74 = v119;
  if (PersistentModel.modelContext.getter(v23, a4))
  {
    sub_197432658(v74, v23, a4);
  }

  v59 = v70;
  v115 = v69;
  if (swift_getAssociatedTypeWitness() != v23)
  {
    sub_1974C2DAC(v116, a4, &v124);
    v75 = v125;
    v76 = *v125;
    v77 = sub_197521FFC();
    v78 = swift_conformsToProtocol2();
    if (v78 && v77)
    {
      sub_1974C8268(v77, v75, v74, v53, v23, v10, a3, v77, a4, v117, v120, v78);
      sub_1973F82A8(&v124);
      goto LABEL_36;
    }

    v122 = 0;
    v123 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
    v98 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v98);

    LODWORD(v104) = 0;
    v99 = 683;
LABEL_55:
    v103 = v99;
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  (*(a4 + 56))(&v124, v23, a4);
  v79 = v126;
  v80 = v127;
  __swift_project_boxed_opaque_existential_1Tm_2(&v124, v126);
  (*(v80 + 144))(v116, v53, v10, a3, v117, v120, v79, v80);
  __swift_destroy_boxed_opaque_existential_1Tm_3(&v124);
LABEL_36:
  v81 = PersistentModel.modelContext.getter(v23, a4);
  v43 = v115;
  if (!v81)
  {
    v54 = v133;
    swift_unknownObjectRetain();
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v54;
    if (v82)
    {
LABEL_39:
      v85 = v54[2];
      v84 = v54[3];
      if (v85 >= v84 >> 1)
      {
        v82 = sub_197433F80((v84 > 1), v85 + 1, 1, v54);
        v54 = v82;
      }

      v54[2] = v85 + 1;
      v86 = &v54[2 * v85];
      v86[4] = v119;
      v86[5] = a4;
      v133 = v54;
      goto LABEL_42;
    }

LABEL_52:
    v82 = sub_197433F80(0, v54[2] + 1, 1, v54);
    v54 = v82;
    v133 = v82;
    goto LABEL_39;
  }

LABEL_42:
  *&v124 = v43;
  MEMORY[0x1EEE9AC00](v82, v83);
  *(&v105 - 10) = v23;
  *(&v105 - 9) = v10;
  *(&v105 - 8) = a3;
  *(&v105 - 7) = a4;
  v87 = v120;
  *(&v105 - 6) = v117;
  *(&v105 - 5) = v87;
  v101 = &v129;
  v102 = v88;
  v103 = v118;
  v121 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  sub_197512FA8(sub_1974CECAC, (&v105 - 12), v59, WitnessTable);

  if (v134)
  {
    v90 = v133;
    v91 = v133[2];
    if (v91)
    {

      v92 = v90 + 5;
      do
      {
        v93 = *(v92 - 1);
        v94 = *v92;
        ObjectType = swift_getObjectType();
        v96 = swift_unknownObjectRetain();
        sub_197454EEC(v96, ObjectType, v94);
        swift_unknownObjectRelease();
        v92 += 2;
        --v91;
      }

      while (v91);
    }

    else
    {
    }

    v109(v53, v10);
  }

  else
  {
    v109(v53, v10);
  }
}

void sub_1974C7950(void *a1, char a2, char **a3, uint64_t *a4, uint64_t a5, uint64_t *a6, void **a7, uint64_t a8, uint64_t a9, void *a10)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a10, AssociatedConformanceWitness, &v36);
  v16 = v36;
  v17 = v37;
  if (a2 & 1) != 0 && (sub_1973FE6F0(a10, AssociatedConformanceWitness))
  {
    v18 = *a3;
    sub_1974028EC(v16, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v18;
    v34 = a6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_197445BA8(0, *(v18 + 2) + 1, 1, v18);
      *a3 = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_197445BA8((v20 > 1), v21 + 1, 1, v18);
      *a3 = v18;
    }

    *(v18 + 2) = v21 + 1;
    v22 = &v18[16 * v21];
    *(v22 + 4) = v16;
    v22[40] = v17;
    a6 = v34;
  }

  v23 = *a4;

  v24 = sub_197455CE4(v16, v17, v23);

  if (v24)
  {

    goto LABEL_14;
  }

  sub_1974028EC(v16, v17);
  sub_19742AE44(&v36, v16, v17);
  sub_1974028C8(v36, v37);
  v36 = a1;
  sub_197521AAC();
  swift_unknownObjectRetain();
  sub_197521A7C();
  if (PersistentModel.modelContext.getter(a10, AssociatedConformanceWitness))
  {

    if (*a6)
    {
LABEL_14:
      sub_1974028C8(v16, v17);
      return;
    }
  }

  else if (*a6)
  {
    v25 = *a7;
    swift_unknownObjectRetain();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_197433F80(0, v25[2] + 1, 1, v25);
      *a7 = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_197433F80((v27 > 1), v28 + 1, 1, v25);
      *a7 = v25;
    }

    v25[2] = v28 + 1;
    v29 = &v25[2 * v28];
    v29[4] = a1;
    v29[5] = AssociatedConformanceWitness;
    v30 = *a6;

    sub_197452A84(v31, a10, AssociatedConformanceWitness);
    sub_1974028C8(v16, v17);
    goto LABEL_22;
  }

  v32 = PersistentModel.modelContext.getter(a10, AssociatedConformanceWitness);
  sub_1974028C8(v16, v17);
  v33 = *a6;
  *a6 = v32;
LABEL_22:
}

uint64_t sub_1974C7C68(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a2;
  v13 = MEMORY[0x1E69E77B0];
  v14 = *(*a2 + *MEMORY[0x1E69E77B0]);
  if (swift_getAssociatedTypeWitness() == v14)
  {
    (*(a4 + 56))(&v24, v14, a4);
    v22 = v26;
    v23 = v27;
    __swift_project_boxed_opaque_existential_1Tm_2(&v24, v26);
    (*(v23 + 88))(a2, *(v12 + *v13 + 8), a3, a6, v22, v23);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v24);
  }

  else
  {
    v15 = a5;
    sub_1974C2DAC(a2, a4, &v24);
    v16 = v25;
    v17 = *v25;

    v18 = sub_197521FFC();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      sub_1973F82A8(&v24);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C7EB0(v18, v16, a1, v14, *(v12 + *v13 + 8), a3, v18, a4, v15, a6, v19);

      return sub_1973F82A8(&v24);
    }
  }

  return result;
}

uint64_t sub_1974C7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a4, a7, a8, a11, &v23);
    v17 = v24;
    v18 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(&v23, v24);
    (*(v18 + 88))(v16, a5, a6, a10, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v23);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void sub_1974C80C0(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a10, AssociatedConformanceWitness, &v20);
  v15 = v20;
  v16 = v21;
  sub_1974028EC(v20, v21);
  sub_19742AE44(&v20, v15, v16);
  sub_1974028C8(v20, v21);
  v17 = *a3;

  LOBYTE(a3) = sub_197455CE4(v15, v16, v17);

  if (a3 & 1) == 0 && (a4)
  {
    if (sub_1973FE6F0(a10, AssociatedConformanceWitness))
    {
      v20 = v15;
      v21 = v16;
      sub_197405108();
      sub_19752166C();
      swift_unknownObjectRetain();
      sub_19752168C();
      return;
    }

    sub_197454D38(a7, a1, a8, a10, a11, AssociatedConformanceWitness);
  }

  sub_1974028C8(v15, v16);
}

uint64_t sub_1974C8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_197522B2C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;

    sub_197434244(a5, a8, a9, a12, &v24);
    v17 = v25;
    v18 = v26;
    __swift_project_boxed_opaque_existential_1Tm_2(&v24, v25);
    (*(v18 + 144))(v16, a4, a6, a7, a10, a11, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v24);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v21 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v21);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void sub_1974C8470(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  PersistentModel.persistentModelID.getter(a7, AssociatedConformanceWitness, &v18);
  v14 = v18;
  v15 = v19;
  v16 = sub_197455CE4(v18, v19, v12);

  sub_1974028C8(v14, v15);
  if ((v16 & 1) == 0)
  {
    sub_197452DB8(a1, AssociatedConformanceWitness, a5, a8);
    sub_1974530DC(a4, a1, a5, a7, a8, AssociatedConformanceWitness);
  }
}

uint64_t sub_1974C8578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_197522B2C();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    sub_197434244(a5, a7, a8, a9, &v21);
    v16 = v22;
    v17 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v21, v22);
    (*(v17 + 152))(v15, a4, a6, v16, v17);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v21);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975282D0);
    sub_19752202C();
    sub_19752235C();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v19 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v19);

    MEMORY[0x19A8DFF80](0x20646E6120, 0xE500000000000000);
    v20 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v20);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (sub_1973FE6F0(a6, a9))
  {
    sub_1974258A4(a6, a9);
  }

  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a10;
  v15[6] = a2;
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a2;
  v20 = a6;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a2;
  v17[7] = a3;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a2;
  v18[7] = a3;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  sub_1974CE944(a4, sub_1974CF524, v15, sub_1974CF53C, v16, sub_1974CF56C, v17, sub_1974CF5C4, v18, a5, a7, v20, a8, a10, a9);
}

uint64_t sub_1974C8948(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (PersistentModel.modelContext.getter(v8, a5))
  {
    sub_197432658(a2, v8, a5);
  }

  sub_197434244(v8, v8, a5, a5, v11);
  sub_1973FFCAC(v11, v10);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if (swift_dynamicCast())
  {
    sub_197513168(a1);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(v11);
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975283C0);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C8B0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v11 = *a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v46 = &v38 - v15;
  v16 = MEMORY[0x1E69E77B0];
  v43 = *(v11 + *MEMORY[0x1E69E77B0]);
  v45 = a6;
  v47 = a2;
  sub_197434244(v43, v43, a6, a6, v50);
  v17 = v51;
  v18 = v52;
  __swift_project_boxed_opaque_existential_1Tm_2(v50, v51);
  v19 = *(v18 + 88);
  v20 = *(v11 + *v16 + 8);
  v21 = *(*(v20 + 16) + 16);
  v48[2] = swift_getWitnessTable();
  v48[3] = a7;
  v44 = a7;
  WitnessTable = swift_getWitnessTable();
  v19(v48, a1, v20, v21, WitnessTable, v17, v18);
  if (v48[0])
  {
    v39 = WitnessTable;
    v49 = v48[0];
    v24 = v41;
    v23 = v42;
    v25 = PersistentModel.persistentModelID.getter(v41, v42, v48);
    MEMORY[0x1EEE9AC00](v25, v26);
    *(&v38 - 8) = v24;
    v28 = v43;
    v27 = v44;
    *(&v38 - 7) = v43;
    *(&v38 - 6) = v21;
    v29 = v45;
    *(&v38 - 5) = v23;
    *(&v38 - 4) = v29;
    *(&v38 - 3) = v27;
    *(&v38 - 2) = v30;
    v44 = v30;
    LODWORD(v42) = v31;
    *(&v38 - 8) = v31;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_197521D3C();
    v32 = v47;
    if (PersistentModel.modelContext.getter(v28, v29))
    {
      sub_197432658(v32, v28, v29);
    }

    v33 = v51;
    v34 = v52;
    __swift_project_boxed_opaque_existential_1Tm_2(v50, v51);
    v48[0] = v49;
    (*(v34 + 136))(a1, v48, v20, v21, v39, v33, v34);

    v35 = sub_1975213EC();
    v36 = v46;
    (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
    sub_1974C1E20(a1, v36, v28, v29);
    sub_1974028C8(v44, v42);
    sub_1973F7E04(v36, &qword_1EAF2B658, &unk_19752F180);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v50);
}

uint64_t sub_1974C8EA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v37 = a5;
  v34 = a4;
  v36 = a3;
  v32 = a2;
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v38 = &v30 - v13;
  v14 = MEMORY[0x1E69E77B0];
  v15 = *(v9 + *MEMORY[0x1E69E77B0]);
  sub_197434244(v15, v15, a6, a6, v52);
  v16 = v54;
  __swift_project_boxed_opaque_existential_1Tm_2(v52, v53);
  v31 = *(v16 + 88);
  v17 = *(v9 + *v14 + 8);
  v18 = *(v17 + 16);
  v19 = v33;
  v50 = v33;
  WitnessTable = swift_getWitnessTable();
  v39 = a1;
  v35 = WitnessTable;
  v21 = v32;
  v31(&v51, a1, v17, v18);
  v22 = v34;
  v23 = v37;
  PersistentModel.persistentModelID.getter(v34, v37, &v48);
  v40 = v22;
  v41 = v15;
  v34 = v18;
  v42 = v18;
  v43 = v23;
  v44 = a6;
  v45 = v19;
  v37 = v48;
  v46 = v48;
  LODWORD(v36) = v49;
  v47 = v49;
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_197521D3C();
  if (PersistentModel.modelContext.getter(v15, a6))
  {
    sub_197432658(v21, v15, a6);
  }

  v24 = v53;
  v25 = v54;
  __swift_project_boxed_opaque_existential_1Tm_2(v52, v53);
  v48 = v51;
  v26 = v39;
  (*(v25 + 136))(v39, &v48, v17, v34, v35, v24, v25);

  v27 = sub_1975213EC();
  v28 = v38;
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  sub_1974C1E20(v26, v28, v15, a6);
  sub_1974028C8(v37, v36);
  sub_1973F7E04(v28, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v52);
}

uint64_t sub_1974C9260(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  PersistentModel.persistentModelID.getter(a6, a9, &v16);
  v12 = v16;
  v13 = v17;
  sub_1974028EC(a2, a3);
  v14 = sub_19742291C(v12, v13, a2, a3);
  sub_1974028C8(a2, a3);
  sub_1974028C8(v12, v13);
  return v14 & 1;
}

uint64_t sub_1974C9300(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v22[-1] - v13;
  v15 = MEMORY[0x1E69E77B0];
  v16 = *(v9 + *MEMORY[0x1E69E77B0]);
  if (PersistentModel.modelContext.getter(v16, a5))
  {
    sub_197432658(a2, v16, a5);
  }

  sub_197434244(v16, v16, a5, a5, v22);
  v17 = v23;
  v18 = v24;
  __swift_project_boxed_opaque_existential_1Tm_2(v22, v23);
  (*(v18 + 128))(a1, 0, *(*(v9 + *v15 + 8) + 16), v21, v17, v18);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v22);
  v19 = sub_1975213EC();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  sub_1974C1E20(a1, v14, v16, a5);
  return sub_1973F7E04(v14, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974C94E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a1;
  if (PersistentModel.modelContext.getter(a4, a7))
  {
    sub_197432658(a2, a4, a7);
  }

  sub_197434244(a4, *(v13 + *MEMORY[0x1E69E77B0]), a7, a8, v16);
  sub_1973FFCAC(v16, v15);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if (swift_dynamicCast())
  {
    sub_197513168(a1);

    return __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
  }

  else
  {
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x80000001975283C0);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974C96C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a8;
  v42 = a6;
  v37 = a5;
  v41 = a4;
  v39 = a3;
  v35 = a2;
  v38 = a9;
  v13 = *a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v43 = &v35 - v17;
  v18 = MEMORY[0x1E69E77B0];
  v19 = *(v13 + *MEMORY[0x1E69E77B0]);
  sub_197434244(a5, v19, a8, a9, v59);
  v20 = v61;
  __swift_project_boxed_opaque_existential_1Tm_2(v59, v60);
  v21 = *(v20 + 88);
  v22 = *(v13 + *v18 + 8);
  v23 = *(v22 + 16);
  v57 = a7;
  WitnessTable = swift_getWitnessTable();
  v44 = a1;
  v25 = a1;
  v40 = WitnessTable;
  v26 = v35;
  v27 = v36;
  v28 = v37;
  v21(&v58, v25, v22, v23);
  PersistentModel.persistentModelID.getter(v23, a7, &v55);
  v45 = v41;
  v46 = v23;
  v47 = v28;
  v48 = v19;
  v49 = v42;
  v50 = a7;
  v51 = v27;
  v52 = v38;
  v42 = v55;
  v53 = v55;
  LODWORD(v41) = v56;
  v54 = v56;
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_197521D3C();
  if (PersistentModel.modelContext.getter(v28, v27))
  {
    sub_197432658(v26, v28, v27);
  }

  v29 = v60;
  v30 = v61;
  __swift_project_boxed_opaque_existential_1Tm_2(v59, v60);
  v55 = v58;
  v31 = v44;
  (*(v30 + 136))(v44, &v55, v22, v23, v40, v29, v30);

  v32 = sub_1975213EC();
  v33 = v43;
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  sub_1974C1E20(v31, v33, v28, v27);
  sub_1974028C8(v42, v41);
  sub_1973F7E04(v33, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v59);
}

uint64_t sub_1974C9A8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v48 = a6;
  v45 = a3;
  v46 = a4;
  v14 = *a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v50 = &v43 - v18;
  v19 = MEMORY[0x1E69E77B0];
  v20 = *(v14 + *MEMORY[0x1E69E77B0]);
  v53 = a5;
  v44 = v20;
  v54 = a8;
  v47 = a9;
  v52 = a2;
  sub_197434244(a5, v20, a8, a9, v57);
  v21 = v58;
  v22 = v59;
  __swift_project_boxed_opaque_existential_1Tm_2(v57, v58);
  v23 = *(v22 + 88);
  v24 = *(v14 + *v19 + 8);
  v25 = *(*(v24 + 16) + 16);
  v55[2] = swift_getWitnessTable();
  v55[3] = a7;
  v49 = a7;
  WitnessTable = swift_getWitnessTable();
  v51 = a1;
  v23(v55, a1, v24, v25, WitnessTable, v21, v22);
  if (v55[0])
  {
    v43 = WitnessTable;
    v56 = v55[0];
    v27 = v49;
    v28 = PersistentModel.persistentModelID.getter(v25, v49, v55);
    MEMORY[0x1EEE9AC00](v28, v29);
    *(&v43 - 10) = v46;
    *(&v43 - 9) = v25;
    v31 = v53;
    v30 = v54;
    v32 = v44;
    *(&v43 - 8) = v53;
    *(&v43 - 7) = v32;
    v33 = v47;
    *(&v43 - 6) = v48;
    *(&v43 - 5) = v27;
    *(&v43 - 4) = v30;
    *(&v43 - 3) = v33;
    v49 = v34;
    *(&v43 - 2) = v34;
    LODWORD(v48) = v35;
    *(&v43 - 8) = v35;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_197521D3C();
    v36 = v52;
    if (PersistentModel.modelContext.getter(v31, v30))
    {
      sub_197432658(v36, v31, v30);
    }

    v37 = v58;
    v38 = v59;
    __swift_project_boxed_opaque_existential_1Tm_2(v57, v58);
    v55[0] = v56;
    v39 = v51;
    (*(v38 + 136))(v51, v55, v24, v25, v43, v37, v38);

    v40 = sub_1975213EC();
    v41 = v50;
    (*(*(v40 - 8) + 56))(v50, 1, 1, v40);
    sub_1974C1E20(v39, v41, v31, v30);
    sub_1974028C8(v49, v48);
    sub_1973F7E04(v41, &qword_1EAF2B658, &unk_19752F180);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v57);
}

uint64_t sub_1974C9E60(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  PersistentModel.persistentModelID.getter(a5, a9, &v16);
  v12 = v16;
  v13 = v17;
  sub_1974028EC(a2, a3);
  v14 = sub_19742291C(v12, v13, a2, a3);
  sub_1974028C8(a2, a3);
  sub_1974028C8(v12, v13);
  return v14 & 1;
}

uint64_t sub_1974C9F00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a6;
  v13 = *a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v25[-1] - v17;
  if (PersistentModel.modelContext.getter(a4, a7))
  {
    sub_197432658(a2, a4, a7);
  }

  v19 = MEMORY[0x1E69E77B0];
  sub_197434244(a4, *(v13 + *MEMORY[0x1E69E77B0]), a7, a8, v25);
  v20 = v26;
  v21 = v27;
  __swift_project_boxed_opaque_existential_1Tm_2(v25, v26);
  (*(v21 + 128))(a1, 0, *(*(v13 + *v19 + 8) + 16), v24, v20, v21);
  __swift_destroy_boxed_opaque_existential_1Tm_3(v25);
  v22 = sub_1975213EC();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  sub_1974C1E20(a1, v18, a4, a7);
  return sub_1973F7E04(v18, &qword_1EAF2B658, &unk_19752F180);
}

uint64_t sub_1974CA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a10;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a2;
  v17[7] = a3;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a2;
  v18[7] = a3;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  v19 = swift_retain_n();
  sub_1974CE944(v19, sub_1974CEF0C, v15, sub_1974CEF6C, v16, sub_1974CEFA0, v17, sub_1974CEFB8, v18, a5, a7, a6, a8, a10, a9);
}

uint64_t sub_1974CA2AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v34 = a4;
  v14 = *a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v38 = &v33 - v18;
  v19 = MEMORY[0x1E69E77B0];
  v20 = *(v14 + *MEMORY[0x1E69E77B0]);
  v35 = a7;
  v39 = a2;
  sub_197434244(v20, v20, a7, a7, v42);
  v22 = v43;
  v21 = v44;
  __swift_project_boxed_opaque_existential_1Tm_2(v42, v43);
  v23 = *(v14 + *v19 + 8);
  v24 = (*(v21 + 72))(a1, v23, a8, v22, v21);
  v41 = a3;
  swift_unknownObjectRetain();
  v36 = a5;
  swift_dynamicCast();
  v25 = v40;
  v41 = v24;
  v26 = *(*(a8 + 16) + 8);
  if (sub_19752173C())
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = v35;
    if (PersistentModel.modelContext.getter(v20, v35))
    {
      sub_197432658(v39, v20, v27);
    }

    v28 = v43;
    v29 = v44;
    __swift_project_boxed_opaque_existential_1Tm_2(v42, v43);
    (*(v29 + 120))(a1, v25, v23, a8, v28, v29);
    sub_1974CF1AC(v39, v34, v24, v36, v20, v23, v37, v27, a8);
    v30 = sub_1975213EC();
    v31 = v38;
    (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
    sub_1974C1E20(a1, v31, v20, v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1973F7E04(v31, &qword_1EAF2B658, &unk_19752F180);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v42);
}

uint64_t sub_1974CA590(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a6;
  v38 = a4;
  v14 = *a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v42 = &v37 - v18;
  v19 = MEMORY[0x1E69E77B0];
  v20 = *(v14 + *MEMORY[0x1E69E77B0]);
  v41 = a7;
  v43 = a2;
  sub_197434244(v20, v20, a7, a7, v46);
  v21 = v47;
  v22 = v48;
  __swift_project_boxed_opaque_existential_1Tm_2(v46, v47);
  v23 = *(*(v14 + *v19 + 8) + 16);
  v24 = (*(v22 + 80))(a1, v23, a8, v21, v22);
  v45 = a3;
  swift_unknownObjectRetain();
  v39 = a5;
  swift_dynamicCast();
  v25 = v44;
  if (v24)
  {
    v45 = v24;
    v26 = *(*(a8 + 16) + 8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v27 = sub_19752173C();
    swift_unknownObjectRelease();
    if (v27)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      return __swift_destroy_boxed_opaque_existential_1Tm_3(v46);
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v28 = v41;
  v29 = v43;
  if (PersistentModel.modelContext.getter(v20, v41))
  {
    sub_197432658(v29, v20, v28);
  }

  v30 = v47;
  v31 = v48;
  __swift_project_boxed_opaque_existential_1Tm_2(v46, v47);
  v32 = v30;
  v33 = v43;
  (*(v31 + 128))(a1, v25, v23, a8, v32, v31);
  swift_unknownObjectRelease();
  if (v24)
  {
    swift_unknownObjectRetain();
    sub_1974CF1AC(v33, v38, v24, v39, v20, v23, v40, v28, a8);
    swift_unknownObjectRelease();
  }

  v34 = sub_1975213EC();
  v35 = v42;
  (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
  sub_1974C1E20(a1, v35, v20, v28);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1973F7E04(v35, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v46);
}

uint64_t sub_1974CA8CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v31 = a3;
  v32 = a4;
  v10 = *a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v33 = &v29 - v14;
  v15 = MEMORY[0x1E69E77B0];
  v16 = *(v10 + *MEMORY[0x1E69E77B0]);
  v34 = a2;
  v35 = a6;
  sub_197434244(v16, v16, a6, a6, v42);
  v17 = v44;
  __swift_project_boxed_opaque_existential_1Tm_2(v42, v43);
  v18 = *(v17 + 88);
  v19 = *(v10 + *v15 + 8);
  v20 = *(*(v19 + 16) + 16);
  WitnessTable = swift_getWitnessTable();
  v39 = v30;
  v30 = swift_getWitnessTable();
  v18(&v40, a1, v19, v20);
  v21 = v40;
  if (!v40)
  {
    v21 = sub_197521A1C();
  }

  v41 = v21;
  v40 = v31;
  swift_unknownObjectRetain();
  swift_dynamicCast();
  v36 = v37;
  sub_197521A7C();
  v23 = v34;
  v22 = v35;
  if (PersistentModel.modelContext.getter(v16, v35))
  {
    sub_197432658(v23, v16, v22);
  }

  v24 = v43;
  v25 = v44;
  __swift_project_boxed_opaque_existential_1Tm_2(v42, v43);
  v40 = v41;
  (*(v25 + 136))(a1, &v40, v19, v20, v30, v24, v25);

  v26 = sub_1975213EC();
  v27 = v33;
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  sub_1974C1E20(a1, v27, v16, v22);
  sub_1973F7E04(v27, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v42);
}

uint64_t sub_1974CABBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v30 = a7;
  v31 = a3;
  v32 = a4;
  v28 = a2;
  v9 = *a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B658, &unk_19752F180);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v33 = &v28 - v13;
  v14 = MEMORY[0x1E69E77B0];
  v15 = *(v9 + *MEMORY[0x1E69E77B0]);
  sub_197434244(v15, v15, a6, a6, v38);
  v16 = v40;
  __swift_project_boxed_opaque_existential_1Tm_2(v38, v39);
  v17 = *(v16 + 88);
  v18 = *(v9 + *v14 + 8);
  v19 = *(v18 + 16);
  v36[1] = v30;
  WitnessTable = swift_getWitnessTable();
  v30 = a1;
  v20 = a6;
  v21 = v28;
  v17(&v37, a1, v18, v19);
  v36[0] = v31;
  swift_unknownObjectRetain();
  swift_dynamicCast();
  v34 = v35;
  sub_197521A7C();
  if (PersistentModel.modelContext.getter(v15, v20))
  {
    sub_197432658(v21, v15, v20);
  }

  v22 = v39;
  v23 = v40;
  __swift_project_boxed_opaque_existential_1Tm_2(v38, v39);
  v36[0] = v37;
  v24 = v30;
  (*(v23 + 136))(v30, v36, v18, v19, WitnessTable, v22, v23);

  v25 = sub_1975213EC();
  v26 = v33;
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  sub_1974C1E20(v24, v26, v15, v20);
  sub_1973F7E04(v26, &qword_1EAF2B658, &unk_19752F180);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v38);
}

uint64_t sub_1974CAE7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    a1(a3);

    return sub_19745E20C(a1);
  }

  else
  {
    sub_1975221EC();

    v6 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v6);

    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1974CAF78(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*a1 + *MEMORY[0x1E69E77B0]);
  v8 = *v6;
  v7 = v6[1];
  sub_197522B2C();
  return sub_1974CAE7C(a2, v5, a1);
}

uint64_t sub_1974CB04C(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*a1 + *MEMORY[0x1E69E77B0]);
  v7 = *v6;
  v8 = *(v6[1] + 16);
  sub_197522B2C();
  return sub_1974CAE7C(a2, v5, a1);
}

uint64_t sub_1974CB120(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*a1 + *MEMORY[0x1E69E77B0]);
  v7 = *v6;
  v8 = *(*(v6[1] + 16) + 16);
  sub_197522B2C();
  return sub_1974CAE7C(a2, v5, a1);
}

uint64_t sub_1974CB1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_197434244(a4, a5, a6, a7, v19);
  sub_1973FFCAC(v19, v18);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if (swift_dynamicCast())
  {

    sub_1975131E4(v11);
  }

  else
  {
    sub_1973FFCAC(v19, v18);
    type metadata accessor for _FullFutureBackingData();
    if (!swift_dynamicCast())
    {
      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000030, 0x80000001975282F0);
      sub_1975227FC();
      result = sub_1975223EC();
      __break(1u);
      return result;
    }

    *(a3 + 112) = 1;
    v12 = *(v17 + 40);
    *(v17 + 40) = a3;
  }

  v13 = sub_1975214CC();
  if (v13)
  {
    v14 = v13;
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      sub_1974CB1F8(v14, a2, a3, a4, v14, a6, v15);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v19);
}

void *sub_1974CB414(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = *result;
  if ((*result - 2048) < 0xFFFFFFFFFFFFF801 || ((result = sub_19752147C(), result < 0x800) ? (v11 = result == v10) : (v11 = 0), !v11 ? (v12 = 0) : (v12 = 1), v10 - 515 >= 2 ? (v13 = v12 == 0) : (v13 = 0), !v13))
  {
    if (v9[1])
    {
      v14 = v9[1];
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_197434244(a4, v14, a5, result, v21);
        v15 = v22;
        v16 = v23;
        v17 = __swift_project_boxed_opaque_existential_1Tm_2(v21, v22);
        v24[3] = v15;
        v24[4] = v16;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
        (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
        __swift_destroy_boxed_opaque_existential_1Tm_3(v21);
        v19 = sub_1973FE71C(v15, v16);
        v20 = *(v19 + 16);
        *(v19 + 16) = a3;

        sub_1974CB414(v14, a2, a3, a4, a5);
        return __swift_destroy_boxed_opaque_existential_1Tm_3(v24);
      }
    }
  }

  return result;
}

uint64_t sub_1974CB5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a5;
  v33 = a4;
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9B8, &qword_19752FE18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v30 - v10;
  v12 = sub_197522AEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_197522ADC();
  sub_19752233C();
  sub_19752248C();
  if (!*(&v41 + 1))
  {
LABEL_12:

    goto LABEL_13;
  }

  while (1)
  {
    v36 = v39;
    v37 = v40;
    v38 = v41;
    if (*(&v39 + 1))
    {
      v18 = v36 == 0x6E696B636162245FLL && *(&v39 + 1) == 0xED00006174614467;
      if (v18 || (sub_19752282C() & 1) != 0)
      {
        break;
      }
    }

    sub_1973F7E04(&v36, &qword_1EAF2B9C0, &qword_19752FE20);
    sub_19752248C();
    if (!*(&v41 + 1))
    {
      goto LABEL_12;
    }
  }

  v42 = v36;
  v43[0] = v37;
  v43[1] = v38;

  sub_1974028B8(v43, &v44);
  v19 = v33;
  v20 = v34;
  type metadata accessor for _KKMDBackingData();
  if (swift_dynamicCast())
  {
    v21 = v42;
    sub_197512E44();
    sub_19743A12C();

    type metadata accessor for KnownKeysDictionary();
    v22 = swift_allocObject();
    v23 = sub_1973FCD6C(v19, v20);
    v22[2] = v23;
    v22[3] = v24;
    v42 = 0u;
    v43[0] = 0u;
    v22[4] = sub_1973FE64C(&v42, *(v23 + 16));
    v25 = *(v21 + 16);
    *(v21 + 16) = v22;

LABEL_13:
  }

  sub_197522AAC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1973F7E04(v11, &qword_1EAF2B9B8, &qword_19752FE18);
  }

  (*(v13 + 32))(v17, v11, v12);
  v27 = sub_197522ACC();
  v28 = swift_conformsToProtocol2();
  if (v28)
  {
    v29 = v27 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    sub_1974CB5B4(v17, v27, v31, v27, v32, v28);
  }

  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_1974CB990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Schema();
  sub_1974D4C70(a1, a6, v15);
  v11 = v15[0];
  v12 = v15[2];
  v17 = v15[1];
  sub_1973F7E04(&v17, &qword_1EAF2B570, &qword_19752E998);
  v16 = v12;
  sub_1973F7E04(&v16, &qword_1EAF2B578, &qword_19752E9A0);
  swift_beginAccess();
  sub_1974EE598(v11);
  swift_endAccess();
  result = sub_1975214CC();
  if (result)
  {
    v14 = result;
    result = swift_conformsToProtocol2();
    if (result)
    {
      return sub_1974CB990(v14, a2, a3, v14, a5, result);
    }
  }

  return result;
}

uint64_t PersistentModel.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v12 - v9;
  v13 = v3;
  sub_19752220C();
  swift_getAssociatedConformanceWitness();
  sub_1975216BC();
  return (*(v6 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1974CBBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v11 = *a4;
  sub_197434244(*(*a4 + 232), a5, *(*a4 + 240), a6, &v54);
  v53 = a5;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    result = sub_1975214CC();
    if (result)
    {
      v44 = result;
      result = swift_conformsToProtocol2();
      if (result)
      {
        return sub_1974CBBF0(v44, v44, a3, a4, v44, result);
      }
    }

    return result;
  }

  v49 = *&v52[0];
  type metadata accessor for Schema.Entity();
  v12 = sub_1973FDF38(a2, v7);
  swift_beginAccess();
  v13 = *(v12 + 64);
  v48 = *(v13 + 16);
  if (!v48)
  {
LABEL_22:
    sub_1975131F4(&v54);
    *&v52[0] = v54;
    BYTE8(v52[0]) = v55;
    sub_197459D38(v52);
    v54 = a4;
    WitnessTable = swift_getWitnessTable();
    v41 = sub_1973FE71C(v11, WitnessTable);
    sub_1975131E4(v41);
    v42 = sub_197513208();
    sub_197430254(v42 & 1);

    goto LABEL_23;
  }

  v45 = v11;
  v46 = a3;
  v14 = v13 + 32;

  v16 = 0;
  v47 = v15;
  while (v16 < *(v15 + 16))
  {
    sub_1973FFCAC(v14, &v54);
    v17 = *(v49 + 16);
    v18 = v56;
    v19 = v57;
    __swift_project_boxed_opaque_existential_1Tm_2(&v54, v56);
    v20 = *(v19 + 32);

    v51 = v20(v18, v19);
    v7 = v21;
    v22 = a4[2];
    v23 = v56;
    v24 = v57;
    __swift_project_boxed_opaque_existential_1Tm_2(&v54, v56);
    v25 = *(v24 + 32);

    v26 = v25(v23, v24);
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v54);
    v29 = *(v22 + 16);
    if (!*(v29 + 16))
    {

LABEL_11:
      memset(v52, 0, sizeof(v52));
      goto LABEL_12;
    }

    v30 = sub_1973F4028(v26, v28);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = *(*(v29 + 56) + 8 * v30);
    swift_beginAccess();
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v33 = *(v22 + 32);
    if (v6 >= *(v33 + 16))
    {
      goto LABEL_30;
    }

    sub_1973FE21C(v33 + 32 * v6 + 32, v52, &qword_1EAF2AF20, &unk_19752F320);
LABEL_12:

    v34 = *(v17 + 16);
    v6 = v51;
    if (!*(v34 + 16))
    {
      goto LABEL_31;
    }

    v35 = sub_1973F4028(v51, v7);
    if ((v36 & 1) == 0)
    {
      goto LABEL_31;
    }

    v37 = v35;

    v6 = *(*(v34 + 56) + 8 * v37);
    swift_beginAccess();
    v38 = *(v17 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 32) = v38;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v38 = sub_19751C104(v38);
      *(v17 + 32) = v38;
      if ((v6 & 0x8000000000000000) != 0)
      {
LABEL_20:
        __break(1u);
LABEL_21:

        a3 = v46;
        v11 = v45;
        goto LABEL_22;
      }
    }

    if (v6 >= v38[2])
    {
      goto LABEL_28;
    }

    ++v16;
    sub_1973F7958(v52, &v38[4 * v6 + 4]);
    *(v17 + 32) = v38;
    swift_endAccess();
    sub_1973F7E04(v52, &qword_1EAF2AF20, &unk_19752F320);

    v14 += 40;
    v15 = v47;
    if (v48 == v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1975221EC();

  MEMORY[0x19A8DFF80](v6, v7);
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974CC0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1973FE21C(a3, v72, &qword_1EAF2B9B0, &qword_19752FE10);
  sub_1973FE21C(v72, &v68, &qword_1EAF2B9B0, &qword_19752FE10);
  if (v70)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
    type metadata accessor for _StitchedBackingData();
    if (swift_dynamicCast())
    {
      v13 = v67;
      v14 = a9;
      if (!v67)
      {
        goto LABEL_33;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1973F7E04(&v68, &qword_1EAF2B9B0, &qword_19752FE10);
  }

  sub_1973FFCAC(a4, &v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
  type metadata accessor for _StitchedBackingData();
  if (swift_dynamicCast())
  {
    v13 = *&v65[0];
  }

  else
  {
    v13 = 0;
  }

  v14 = a9;
  if (!v13)
  {
LABEL_33:
    v49 = sub_1975214CC();
    if (v49)
    {
      v50 = v49;
      v51 = swift_conformsToProtocol2();
      if (v51)
      {
        sub_1974CC0F4(v50, v50, v72, a4, a5, a6, a7, v50, v14, v51);
      }
    }

    return sub_1973F7E04(v72, &qword_1EAF2B9B0, &qword_19752FE10);
  }

LABEL_10:
  v15 = type metadata accessor for _StitchedBackingData();
  WitnessTable = swift_getWitnessTable();

  sub_1973F7E04(v72, &qword_1EAF2B9B0, &qword_19752FE10);
  v72[0] = v13;
  v54 = WitnessTable;
  v55 = v15;
  v72[3] = v15;
  v72[4] = WitnessTable;
  v17 = a5;
  swift_beginAccess();
  *(a5 + 16) = 1;
  v56 = v14;
  sub_197434244(a7, a8, v14, a10, &v68);
  v66 = a8;
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:

    v14 = v56;
    goto LABEL_33;
  }

  v62 = *&v65[0];
  type metadata accessor for Schema.Entity();
  v18 = sub_1973FDF38(a2, a10);
  swift_beginAccess();
  v19 = v18[8];
  v61 = *(v19 + 16);
  if (!v61)
  {
LABEL_31:
    sub_1975131F4(&v68);
    *&v65[0] = v68;
    BYTE8(v65[0]) = v69;
    sub_197459D38(v65);
    v68 = v13;
    v47 = sub_1973FE71C(v55, v54);
    sub_1975131E4(v47);
    v48 = sub_197513208();
    sub_197430254(v48 & 1);

    goto LABEL_32;
  }

  v53 = a7;
  v20 = v19 + 32;

  v22 = 0;
  v60 = v21;
  while (v22 < *(v21 + 16))
  {
    sub_1973FFCAC(v20, &v68);
    v23 = *(v62 + 16);
    v24 = v70;
    v25 = v71;
    __swift_project_boxed_opaque_existential_1Tm_2(&v68, v70);
    v26 = *(v25 + 32);

    v63 = v26(v24, v25);
    v64 = v27;
    v17 = v13;
    v18 = *(v13 + 16);
    v28 = v70;
    v29 = v71;
    __swift_project_boxed_opaque_existential_1Tm_2(&v68, v70);
    v30 = *(v29 + 32);

    v31 = v30(v28, v29);
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm_3(&v68);
    v34 = v18[2];
    if (!*(v34 + 16))
    {

LABEL_20:
      memset(v65, 0, sizeof(v65));
      v13 = v17;
      goto LABEL_21;
    }

    v35 = sub_1973F4028(v31, v33);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      goto LABEL_20;
    }

    v38 = *(*(v34 + 56) + 8 * v35);
    swift_beginAccess();
    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    v39 = v18[4];
    if (v38 >= *(v39 + 16))
    {
      goto LABEL_40;
    }

    v13 = v17;
    sub_1973FE21C(v39 + 32 * v38 + 32, v65, &qword_1EAF2AF20, &unk_19752F320);
LABEL_21:

    v40 = *(v23 + 16);
    v17 = v63;
    v18 = v64;
    if (!*(v40 + 16))
    {
      goto LABEL_41;
    }

    v41 = sub_1973F4028(v63, v64);
    if ((v42 & 1) == 0)
    {
      goto LABEL_41;
    }

    v43 = v41;

    v44 = *(*(v40 + 56) + 8 * v43);
    swift_beginAccess();
    v45 = *(v23 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 32) = v45;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v44 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v45 = sub_19751C104(v45);
      *(v23 + 32) = v45;
      if ((v44 & 0x8000000000000000) != 0)
      {
LABEL_29:
        __break(1u);
LABEL_30:

        a7 = v53;
        goto LABEL_31;
      }
    }

    if (v44 >= v45[2])
    {
      goto LABEL_38;
    }

    ++v22;
    sub_1973F7958(v65, &v45[4 * v44 + 4]);
    *(v23 + 32) = v45;
    swift_endAccess();
    sub_1973F7E04(v65, &qword_1EAF2AF20, &unk_19752F320);

    v20 += 40;
    v21 = v60;
    if (v61 == v22)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_1975221EC();

  MEMORY[0x19A8DFF80](v17, v18);
  result = sub_1975223EC();
  __break(1u);
  return result;
}