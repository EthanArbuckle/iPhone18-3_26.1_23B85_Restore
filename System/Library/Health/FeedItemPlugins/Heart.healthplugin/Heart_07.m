void sub_29D73F1B0(char a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_29D73C65C(a1, *(v1 + 16));
}

void sub_29D73F1BC()
{
  if (!qword_2A17B3708)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_29D740418(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3708);
    }
  }
}

uint64_t sub_29D73F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_29D73F2CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x29EDC9D48];
    sub_29D73FF48(0, &qword_2A17B3770);
    v4 = sub_29D93ABA8();
    v5 = a1 + 32;

    while (1)
    {
      sub_29D73F25C(v5, v14, &unk_2A17B3778, v3, sub_29D73FF9C);
      result = sub_29D6908F8(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_29D6940E0(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 72;
      if (!--v1)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D73F430(uint64_t a1)
{
  sub_29D73F6F0();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_29D6942F0();
    v10 = sub_29D93ABA8();
    v11 = *(v3 + 48);
    v12 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);

    while (1)
    {
      sub_29D73F758(v12, v8);
      v14 = *v8;
      v15 = v8[1];
      result = sub_29D6907F0(*v8, v15);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v10[6] + 16 * result);
      *v19 = v14;
      v19[1] = v15;
      v20 = v10[7];
      v21 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
      result = sub_29D6943BC(v8 + v11, v20 + *(*(v21 - 8) + 72) * v18);
      v22 = v10[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v10[2] = v24;
      v12 += v13;
      if (!--v9)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D73F5E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D73FF48(0, &qword_2A17B1098);
    v3 = sub_29D93ABA8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_29D935E88();
      result = sub_29D6907F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29D73F6F0()
{
  if (!qword_2A17B3730)
  {
    type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B3730);
    }
  }
}

uint64_t sub_29D73F758(uint64_t a1, uint64_t a2)
{
  sub_29D73F6F0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D73F804(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_29D93ABA8();
    v11 = a1 + 32;

    while (1)
    {
      sub_29D73F25C(v11, &v18, a3, a4, sub_29D7400A0);
      v12 = v18;
      result = a5(v18);
      if (v14)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v12;
      result = sub_29D6940E0(&v19, (v10[7] + 32 * result));
      v15 = v10[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v10[2] = v17;
      v11 += 40;
      if (!--v5)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D73F938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D695790();
    v3 = sub_29D93ABA8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_29D6959E0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29D73FA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x29EDCA198];
  }

  sub_29D7402F4();
  v3 = sub_29D93ABA8();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_29D6959E4(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
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

    v14 = v9 + 4;
    v4 = *(v9 - 3);
    v17 = *(v9 - 1);
    v5 = *v9;
    swift_unknownObjectRetain();
    result = sub_29D6959E4(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_29D73FB40(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x29EDCA198];
  }

  sub_29D73FC3C();
  v3 = sub_29D93ABA8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_29D6959E4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_29D935E88();
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
    sub_29D935E88();
    v8 = sub_29D6959E4(v4);
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

void sub_29D73FC3C()
{
  if (!qword_2A1A21FA0)
  {
    type metadata accessor for HKBloodPressureClassificationGuidelines(255);
    sub_29D73FCE8();
    sub_29D740418(qword_2A1A22018, type metadata accessor for HKBloodPressureClassificationGuidelines);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21FA0);
    }
  }
}

void sub_29D73FCE8()
{
  if (!qword_2A1A22288)
  {
    sub_29D7403BC(255, &qword_2A1A25730);
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22288);
    }
  }
}

unint64_t sub_29D73FD5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D73FF48(0, &unk_2A17B3740);
    v3 = sub_29D93ABA8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_29D935E88();
      sub_29D935E88();
      result = sub_29D6907F0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29D73FE80(uint64_t a1)
{
  sub_29D73FEDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D73FEDC()
{
  if (!qword_2A17B3768)
  {
    sub_29D695734(255, &qword_2A17B3760);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3768);
    }
  }
}

void sub_29D73FF48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D93ABB8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29D73FF9C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29D740000()
{
  if (!qword_2A17B3780)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_29D740418(&unk_2A17B55C0, type metadata accessor for OpenURLOptionsKey);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3780);
    }
  }
}

void sub_29D7400A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29D740108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29D740178()
{
  if (!qword_2A17B2910)
  {
    sub_29D740108(255, &qword_2A17B2918, MEMORY[0x29EDBA210]);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2910);
    }
  }
}

void sub_29D7401EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D740240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29D6AC948;

  return sub_29D73D0C8(a1, v4, v5, v6);
}

void sub_29D7402F4()
{
  if (!qword_2A17B37D0)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29D7403BC(255, &qword_2A17B37D8);
    sub_29D740418(&unk_2A17B37E0, type metadata accessor for UIUserInterfaceSizeClass);
    v0 = sub_29D93ABB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B37D0);
    }
  }
}

uint64_t sub_29D7403BC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D740418(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D740490()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:51.0];
  v2 = [objc_opt_self() systemPinkColor];
  v4 = [v0 configurationWithHierarchicalColor_];

  v3 = [v1 configurationByApplyingConfiguration_];
  sub_29D934778();
}

void sub_29D74059C()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v6)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7406DC()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_29D74081C()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_29D7409C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_29D9336B8();
  sub_29D73F168(MEMORY[0x29EDCA190]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_29D7427BC(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey);
  v9 = sub_29D939C58();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v12[4] = sub_29D73F1B0;
  v12[5] = v10;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = sub_29D73C804;
  v12[3] = &unk_2A2443928;
  v11 = _Block_copy(v12);
  sub_29D695554(a2);

  [v7 openURL:v8 options:v9 completionHandler:v11];
  _Block_release(v11);
}

void sub_29D740C58(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1107296256;
    v8[2] = sub_29D6C1F10;
    v8[3] = &unk_2A2443950;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 presentViewController:a1 animated:a2 & 1 completion:v7];
  _Block_release(v7);
}

void sub_29D740D40(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 1107296256;
    v6[2] = sub_29D6C1F10;
    v6[3] = &unk_2A2443860;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 dismissViewControllerAnimated:a1 & 1 completion:v5];
  _Block_release(v5);
}

void sub_29D740E10()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v0 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model) + 24);
  sub_29D9339E8();
  v9 = sub_29D81CBA0(v7);
  (*(v3 + 8))(v7, v2);
  if (*(v1 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isInNavigationController))
  {
    sub_29D74109C(v9 & 1);
  }

  else
  {
    v10 = *(v1 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_vcFactory);
    v11 = sub_29D8EB3E8(v9 & 1);
    v13 = v12;
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 24);
    v16 = swift_unknownObjectRetain();
    v15(v16, &off_2A2443808, ObjectType, v13);
    v17 = v1 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 8);
      v19 = swift_getObjectType();
      sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_29D940030;
      *(v20 + 32) = v11;
      v21 = *(v18 + 24);
      v22 = v11;
      v21(v20, 0, v19, v18);

      sub_29D936978();
    }

    else
    {
    }
  }

  v23 = v1 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    v25 = swift_getObjectType();
    v26 = (*(v24 + 8))(v25, v24);
    sub_29D936978();
    if (v26)
    {
      [v26 setDelegate_];
    }
  }
}

void sub_29D74109C(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_vcFactory);
  v18 = sub_29D8EB3E8(a1);
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 24);
  v9 = swift_unknownObjectRetain();
  v8(v9, &off_2A2443808, ObjectType, v6);
  if (v3 == 2)
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    v11 = v2 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      v13 = swift_getObjectType();
      (*(v12 + 16))(v10, 1, 0, 0, v13, v12);

      sub_29D936978();
    }

    else
    {
    }
  }

  else
  {
    v14 = v2 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      swift_getObjectType();
      memset(v19, 0, sizeof(v19));
      v16 = *(v15 + 32);
      v17 = v18;
      v16();
      sub_29D936978();

      sub_29D742868(v19, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29D6C5040);
      return;
    }
  }
}

uint64_t sub_29D74129C(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_29D741ED4(a1, a2, a3, a5, ObjectType, a4);
}

void sub_29D74130C(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == 2)
  {
    v6 = *(a2 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model);
    ObjectType = swift_getObjectType();
    v8 = (*(a4 + 8))(ObjectType, a4);
    v9 = 1;
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v8)
      {
LABEL_13:
        sub_29D74109C(v9);
        return;
      }

      swift_getKeyPath();
      v27 = v6;
      sub_29D7427BC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
      sub_29D933E18();

      v10 = *(v6 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis);
      if (v10 != 2 && (v10 & 1) != 0)
      {
        v9 = 2;
        goto LABEL_13;
      }
    }

    sub_29D741688(1, 0, 0, a3);
    return;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v11 = sub_29D937898();
  sub_29D69C6C0(v11, qword_2A1A2C008);
  v12 = a3;
  oslog = sub_29D937878();
  v13 = sub_29D93A2A8();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446978;
    v16 = sub_29D93AF08();
    v18 = sub_29D6C2364(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D95DD60, &v27);
    *(v14 + 22) = 2080;
    v19 = swift_getObjectType();
    (*(a4 + 8))(v19, a4);
    v20 = sub_29D939DA8();
    v22 = sub_29D6C2364(v20, v21, &v27);

    *(v14 + 24) = v22;
    *(v14 + 32) = 2080;
    v23 = sub_29D939DA8();
    v25 = sub_29D6C2364(v23, v24, &v27);

    *(v14 + 34) = v25;
    _os_log_impl(&dword_29D677000, oslog, v13, "[%{public}s.%{public}s]: Unable to proceed to next stage from %s due to reason: %s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_29D741688(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v15 = &v40 - v14;
  if (a1)
  {
    if (a4)
    {
      [a4 dismissViewControllerAnimated:1 completion:0];
    }

    if (*(v5 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isDetailRoomOnStack))
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v16 = sub_29D937898();
      sub_29D69C6C0(v16, qword_2A1A2C008);
      v17 = sub_29D937878();
      v18 = sub_29D93A2A8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v41 = v20;
        *v19 = 136446466;
        v21 = sub_29D93AF08();
        v23 = sub_29D6C2364(v21, v22, &v41);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2082;
        *(v19 + 14) = sub_29D6C2364(0xD000000000000037, 0x800000029D95DD90, &v41);
        _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s.%{public}s]: Finished logging, dismissing root view controller", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v20, -1, -1);
        MEMORY[0x29ED6BE30](v19, -1, -1);
      }

      v24 = v5 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v25 = *(v24 + 8);
        ObjectType = swift_getObjectType();
        (*(v25 + 48))(1, a2, a3, ObjectType, v25);

        return sub_29D936978();
      }
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v27 = sub_29D937898();
      sub_29D69C6C0(v27, qword_2A1A2C008);
      v28 = sub_29D937878();
      v29 = sub_29D93A2A8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v41 = v31;
        *v30 = 136446466;
        v32 = sub_29D93AF08();
        v34 = sub_29D6C2364(v32, v33, &v41);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        *(v30 + 14) = sub_29D6C2364(0xD000000000000037, 0x800000029D95DD90, &v41);
        _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s.%{public}s]: Finished logging, routing to blood pressure data room", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v31, -1, -1);
        MEMORY[0x29ED6BE30](v30, -1, -1);
      }

      v35 = v5 + OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController;
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v36 = *(v35 + 8);
        v37 = swift_getObjectType();
        v38 = HKHRBloodPressureDetailRoomBaseLink();
        sub_29D9336D8();

        v39 = sub_29D9336F8();
        (*(*(v39 - 8) + 56))(v15, 0, 1, v39);
        (*(v36 + 40))(1, v15, a2, a3, v37, v36);
        sub_29D936978();
        return sub_29D742868(v15, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
      }
    }
  }

  return result;
}

id sub_29D741BE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D741CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D741CC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_29D7427BC(&qword_2A17B3830, type metadata accessor for BloodPressureJournalLoggingModel);
  sub_29D933E18();

  *a2 = *(v3 + OBJC_IVAR____TtC5Heart32BloodPressureJournalLoggingModel__isHypertensiveCrisis);
  return result;
}

id sub_29D741DA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = type metadata accessor for BloodPressureJournalLoggingCoordinator();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a9;
  swift_unknownObjectWeakAssign();
  sub_29D936978();
  *&v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_model] = a2;
  *&v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_vcFactory] = a3;
  *&v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_healthStore] = a4;
  v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isInNavigationController] = a5;
  v15[OBJC_IVAR____TtC5Heart38BloodPressureJournalLoggingCoordinator_isDetailRoomOnStack] = a6;
  v19.receiver = v15;
  v19.super_class = v14;

  v16 = a4;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  sub_29D740E10();

  return v17;
}

uint64_t sub_29D741ED4(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v29 = a4;
  v9 = sub_29D939968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_29D939998();
  v15 = *(v30 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v30, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v20 = sub_29D93A468();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  v22 = v29;
  *(v21 + 40) = v28;
  *(v21 + 48) = v22;
  aBlock[4] = sub_29D7427AC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A24439A0;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  v25 = a3;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D7427BC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D742804(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v19, v14, v23);
  _Block_release(v23);

  (*(v10 + 8))(v14, v9);
  return (*(v15 + 8))(v19, v30);
}

void sub_29D7421D8(uint64_t a1, void (*a2)(), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_29D742804(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v40 - v11;
  v13 = sub_29D9336F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v40 - v20;
  sub_29D6D962C(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29D742868(v12, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68], sub_29D742804);
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2BF10);
    v23 = sub_29D937878();
    v24 = sub_29D93A288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315394;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D95DB60, &aBlock);
      _os_log_impl(&dword_29D677000, v23, v24, "[%s.%s]: Failed to construct deep link URL to go to detail room", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v25, -1, -1);
    }

    if (a2)
    {
      v48 = a2;
      v49 = a3;
      aBlock = MEMORY[0x29EDCA5F8];
      v45 = 1107296256;
      v46 = sub_29D6C1F10;
      v47 = &unk_2A2443888;
      v30 = _Block_copy(&aBlock);
    }

    else
    {
      v30 = 0;
    }

    [v4 dismissViewControllerAnimated:1 completion:v30];
    _Block_release(v30);
  }

  else
  {
    v42 = v4;
    v31 = *(v14 + 32);
    v31(v21, v12, v13);
    (*(v14 + 16))(v18, v21, v13);
    v32 = *(v14 + 80);
    v40 = a3;
    v41 = a2;
    v33 = (v32 + 16) & ~v32;
    v34 = (v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v31((v35 + v33), v18, v13);
    v36 = (v35 + v34);
    v38 = v40;
    v37 = v41;
    *v36 = v41;
    v36[1] = v38;
    *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    v48 = sub_29D742710;
    v49 = v35;
    aBlock = MEMORY[0x29EDCA5F8];
    v45 = 1107296256;
    v46 = sub_29D6C1F10;
    v47 = &unk_2A24438D8;
    v39 = _Block_copy(&aBlock);
    sub_29D695554(v37);

    [v42 dismissViewControllerAnimated:1 completion:v39];
    _Block_release(v39);
    (*(v14 + 8))(v21, v13);
  }
}

void sub_29D742710()
{
  v1 = *(sub_29D9336F8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_29D7409C4(v0 + v2, v6, v7, v8);
}

uint64_t sub_29D7427BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D742804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D742868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void *sub_29D7428F0(uint64_t a1)
{
  v1[2] = 0xD00000000000001DLL;
  v1[3] = 0x800000029D95E0C0;
  v1[4] = 0x5F4D50425F4449;
  v1[5] = 0xE700000000000000;
  v3 = objc_opt_self();
  v4 = [v3 heartRateSectionDescription];
  v5 = sub_29D939D68();
  v7 = v6;

  v1[7] = v5;
  v1[8] = v7;
  v8 = [v3 heartRateThresholdOffDescription];
  v9 = sub_29D939D68();
  v11 = v10;

  v1[9] = v9;
  v1[10] = v11;
  v1[6] = a1;
  return v1;
}

uint64_t sub_29D7429C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_29D9346E8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x2A1C7C4A8](v4, v7);
  v36 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = v34 - v12;
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v34 - v15;
  v17 = sub_29D934798();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7D00B0();
  v23 = sub_29D934758();
  (*(v18 + 8))(v22, v17);
  if (v23)
  {
    v34[0] = objc_opt_self();
    v24 = [v34[0] isTachycardiaDetectionEnabled];
    v25 = v5[13];
    v34[1] = v23;
    v35 = a1;
    if (v24)
    {
      v26 = *MEMORY[0x29EDC1760];
      v25(v16, v26, v4);
    }

    else
    {
      v25(v16, *MEMORY[0x29EDC1768], v4);
      v26 = *MEMORY[0x29EDC1760];
    }

    v25(v13, v26, v4);
    v28 = sub_29D9346D8();
    v29 = v5[1];
    v29(v13, v4);
    v29(v16, v4);
    sub_29D7D0144(v28 & 1);
    if ([v34[0] isTachycardiaDetectionEnabled])
    {
      v30 = v26;
    }

    else
    {
      v30 = *MEMORY[0x29EDC1768];
    }

    v31 = v36;
    v25(v36, v30, v4);
    sub_29D9347C8();
    sub_29D9347A8();
    v29(v31, v4);
    a1 = v35;
    sub_29D9368E8();
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v32 = sub_29D9368F8();
  return (*(*(v32 - 8) + 56))(a1, v27, 1, v32);
}

uint64_t sub_29D742D70(void *a1)
{
  sub_29D744388(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29D93F680;
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  *(v3 + 56) = MEMORY[0x29EDC99B0];
  *(v3 + 64) = sub_29D69AD24();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;
  v6 = objc_opt_self();
  sub_29D935E88();
  v7 = [v6 _countPerMinuteUnit];
  [a1 doubleValueForUnit_];
  v9 = v8;

  v10 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  v11 = [v10 integerValue];

  v12 = MEMORY[0x29EDC9C10];
  *(v3 + 96) = MEMORY[0x29EDC9BA8];
  *(v3 + 104) = v12;
  *(v3 + 72) = v11;

  return sub_29D939D88();
}

uint64_t sub_29D742ED0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_29D742F8C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() isTachycardiaDetectionEnabled];
  v3 = sub_29D9346E8();
  v4 = *(*(v3 - 8) + 104);
  v5 = MEMORY[0x29EDC1760];
  if (!v2)
  {
    v5 = MEMORY[0x29EDC1768];
  }

  v6 = *v5;

  return v4(a1, v6, v3);
}

uint64_t sub_29D74304C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D743080()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);
  sub_29D935E88();
  return v1;
}

id sub_29D7430BC()
{
  v0 = objc_opt_self();
  if (![v0 isTachycardiaDetectionEnabled])
  {
    return 0;
  }

  v1 = [v0 tachycardiaThresholdHeartRate];
  v2 = [objc_opt_self() _countPerMinuteUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

  return v3;
}

uint64_t sub_29D743198(void *a1)
{
  [a1 _beatsPerMinute];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  v3 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v4 = sub_29D8EFDF0(v2, v3);

  return v4;
}

void sub_29D743240(void *a1)
{
  [a1 _beatsPerMinute];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
  [objc_opt_self() setTachycardiaThresholdHeartRate_];
}

id sub_29D7432C4()
{
  v0 = objc_opt_self();

  return [v0 setTachycardiaThresholdHeartRate_];
}

uint64_t sub_29D743300()
{
  sub_29D744388(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = v34 - v4;
  sub_29D7061EC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D706220();
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7062B4();
  v20 = *(v19 - 8);
  v36 = v19;
  v37 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + qword_2A17B3838);
  swift_beginAccess();
  sub_29D744388(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);

  sub_29D9383A8();
  swift_endAccess();

  sub_29D7443EC(&qword_2A1A249F0, sub_29D7061EC);
  sub_29D938548();
  (*(v8 + 8))(v12, v7);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v26 = sub_29D93A468();
  v38 = v26;
  v27 = sub_29D93A448();
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  sub_29D7443EC(&qword_2A17B2A18, sub_29D706220);
  sub_29D706380();
  v28 = v35;
  sub_29D938538();
  sub_29D7339C0(v5);

  (*(v14 + 8))(v18, v28);
  swift_allocObject();
  v29 = v34[1];
  swift_unknownObjectWeakInit();
  sub_29D7443EC(&qword_2A17B2A28, sub_29D7062B4);
  v30 = v36;
  v31 = sub_29D938588();

  (*(v37 + 8))(v24, v30);
  v32 = *(v29 + qword_2A17B3840);
  *(v29 + qword_2A17B3840) = v31;
}

void sub_29D7437C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_29D936E98();

    if (v2)
    {
      swift_getObjectType();
      sub_29D9367C8();
      sub_29D936978();
    }
  }
}

uint64_t sub_29D743874()
{
  v1 = *(v0 + qword_2A17B3838);

  v2 = *(v0 + qword_2A17B3840);
}

uint64_t sub_29D7438CC(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B3838);

  v3 = *(a1 + qword_2A17B3840);
}

uint64_t sub_29D743A30()
{
  v1 = *(v0 + qword_2A17B3870);
}

id sub_29D743A88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D743AC8(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B3870);
}

id sub_29D743B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_29D744388(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v22 - v9;
  *(v3 + qword_2A17B3840) = 0;
  v11 = [objc_allocWithZone(MEMORY[0x29EDBABF8]) initWithHealthStore_];
  v12 = type metadata accessor for TachycardiaFeatureStatusAvailability();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v3 + qword_2A17B3838) = sub_29D700E18(v11);
  v15 = type metadata accessor for TachycardiaThresholdSpecifierConfiguration();
  swift_allocObject();

  v17 = sub_29D7428F0(v16);
  sub_29D7D048C();
  v18 = sub_29D934C58();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v10, a2, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  v22[4] = v15;
  v22[5] = sub_29D7443EC(&qword_2A17B3888, type metadata accessor for TachycardiaThresholdSpecifierConfiguration);
  v22[1] = v17;

  v20 = sub_29D936E88();
  sub_29D743300();

  (*(v19 + 8))(a2, v18);
  return v20;
}

char *sub_29D743DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_29D934C58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a2, v6);
  v12 = objc_allocWithZone(type metadata accessor for TachycardiaSettingsDataSource(0));
  v13 = sub_29D743B1C(a1, v11);
  v14 = qword_2A17B3868;
  *(v3 + qword_2A17B3868) = v13;
  v15 = v13;
  sub_29D936EB8();

  v16 = sub_29D936CF8();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v3 + qword_2A17B3870) = sub_29D936CE8();
  v19 = *(v3 + v14);

  v20 = v19;
  v21 = sub_29D9365D8();
  sub_29D7D04B0();
  v22 = sub_29D939D28();

  [v21 setTitle_];

  v23 = *&v21[qword_2A17B3868];
  sub_29D936E98();
  sub_29D936EA8();

  (*(v7 + 8))(a2, v6);
  return v21;
}

uint64_t sub_29D743FC4()
{
  v0 = objc_opt_self();
  if ([v0 isTachycardiaDetectionEnabled])
  {
    v1 = [v0 tachycardiaThresholdHeartRate];
    v2 = [objc_opt_self() _countPerMinuteUnit];
    v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:v1];

    [v3 _beatsPerMinute];
    v5 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
    v6 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D8EFDF0(v5, v6);

    v7 = sub_29D939D28();

    v8 = [v0 tachycardiaHeartThresholdFooterDescriptionWithThresholdValue_];

    v9 = sub_29D939D68();
  }

  else
  {
    v10 = sub_29D939D28();
    v8 = [v0 tachycardiaHeartThresholdFooterDescriptionWithThresholdValue_];

    v9 = sub_29D939D68();
  }

  return v9;
}

uint64_t sub_29D744190()
{
  v0 = [objc_opt_self() tachycardiaHeartRateOptions];
  sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
  v1 = sub_29D939F38();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x29EDCA190];
  }

  v2 = sub_29D93A928();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v14 = MEMORY[0x29EDCA190];
  result = sub_29D93AAD8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = objc_opt_self();
    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED6AE30](v6, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      [v7 doubleValue];
      v10 = v9;
      v11 = [v4 _countPerMinuteUnit];
      v12 = [v5 quantityWithUnit:v11 doubleValue:v10];

      sub_29D93AAB8();
      v13 = *(v14 + 16);
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
    }

    while (v2 != v6);

    return v14;
  }

  return result;
}

void sub_29D744388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7443EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D74445C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D744A08();
  *a2 = result;
  return result;
}

void sub_29D74448C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v7 = 0xEE00646577656956;
    v8 = 0x73676E6974746573;
    if (v2 != 6)
    {
      v8 = 0x6E776F6E6B6E75;
      v7 = 0xE700000000000000;
    }

    v9 = 0x800000029D956CA0;
    v10 = 0xD000000000000016;
    if (v2 == 4)
    {
      v10 = 0xD000000000000019;
    }

    else
    {
      v9 = 0x800000029D956CC0;
    }

    if (*v1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (*v1 <= 5u)
    {
      v7 = v9;
    }

    *a1 = v11;
    a1[1] = v7;
  }

  else
  {
    v3 = 0x800000029D956C60;
    v4 = 0xD00000000000001FLL;
    if (v2 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x800000029D956C80;
    }

    v5 = 0x800000029D956C20;
    if (*v1)
    {
      v5 = 0x800000029D956C40;
    }

    if (*v1 <= 1u)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

void sub_29D74466C(void *a1)
{
  v4 = *v1;
  v5 = [a1 healthDataSource];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 environmentDataSource];
    v8 = sub_29D744A54(v6, v7);
    if (v2)
    {
      sub_29D936978();
    }

    else
    {
      v17 = v8;

      sub_29D8C3BB0(v17);
      sub_29D936978();
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v9 = sub_29D937898();
    sub_29D69C6C0(v9, qword_2A1A2C008);
    v10 = sub_29D937878();
    v11 = sub_29D93A298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29D677000, v10, v11, "[%s] Tried to create a payload with a dataSource containing nil healthDataSource", v12, 0xCu);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    sub_29D73F010(MEMORY[0x29EDCA190]);
  }
}

unint64_t sub_29D7449B4()
{
  result = qword_2A17B3890;
  if (!qword_2A17B3890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3890);
  }

  return result;
}

uint64_t sub_29D744A08()
{
  v0 = sub_29D93ABF8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29D744A54(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = MEMORY[0x29EDCA198];
  v83 = MEMORY[0x29EDCA198];
  v7 = v3[16];
  if (v7 > 3)
  {
    if (v3[16] > 5u)
    {
      if (v7 == 6)
      {
        v9 = 0xEE00646577656956;
        v10 = 0x73676E6974746573;
      }

      else
      {
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E75;
      }
    }

    else if (v7 == 4)
    {
      v9 = 0x800000029D956CA0;
      v10 = 0xD000000000000019;
    }

    else
    {
      v9 = 0x800000029D956CC0;
      v10 = 0xD000000000000016;
    }
  }

  else if (v3[16] > 1u)
  {
    if (v7 == 2)
    {
      v9 = 0x800000029D956C60;
      v10 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x800000029D956C80;
      v10 = 0xD00000000000001FLL;
    }
  }

  else
  {
    if (v3[16])
    {
      v8 = "notificationViewed";
    }

    else
    {
      v8 = "dataTypeRoomViewed";
    }

    v9 = (v8 - 32) | 0x8000000000000000;
    v10 = 0xD000000000000012;
  }

  *(&v81 + 1) = MEMORY[0x29EDC99B0];
  v82 = MEMORY[0x29EDC99D8];
  *&v80 = v10;
  *(&v80 + 1) = v9;
  sub_29D6959E8(&v80, &v77);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v6;
  v12 = v78;
  v13 = sub_29D693DDC(&v77, v78);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13, v13);
  v16 = (&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  sub_29D8C439C(*v16, v16[1], 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native, &v76);
  sub_29D69417C(&v77);
  v18 = v76;
  v19 = v3[17];
  if (v19 <= 2)
  {
    if (v3[17])
    {
      v20 = MEMORY[0x29EDC99B0];
      v21 = MEMORY[0x29EDC99D8];
      if (v19 == 1)
      {
        v22 = 0xE600000000000000;
        v23 = 0x6573776F7262;
      }

      else
      {
        v22 = 0xEC0000006E6F6974;
        v23 = 0x6163696669746F6ELL;
      }
    }

    else
    {
      v22 = 0xE700000000000000;
      v23 = 0x7972616D6D7573;
      v20 = MEMORY[0x29EDC99B0];
      v21 = MEMORY[0x29EDC99D8];
    }
  }

  else if (v3[17] > 4u)
  {
    v20 = MEMORY[0x29EDC99B0];
    v21 = MEMORY[0x29EDC99D8];
    if (v19 == 5)
    {
      v22 = 0xED0000656C69666FLL;
      v23 = 0x725068746C616568;
    }

    else
    {
      v22 = 0xE700000000000000;
      v23 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v20 = MEMORY[0x29EDC99B0];
    v21 = MEMORY[0x29EDC99D8];
    if (v19 == 3)
    {
      v22 = 0xEC0000006D6F6F52;
      v23 = 0x6570795461746164;
    }

    else
    {
      v22 = 0xEF7473696C6B6365;
      v23 = 0x684368746C616568;
    }
  }

  *(&v81 + 1) = v20;
  v82 = v21;
  *&v80 = v23;
  *(&v80 + 1) = v22;
  sub_29D6959E8(&v80, &v77);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v18;
  v25 = v78;
  v26 = sub_29D693DDC(&v77, v78);
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26, v26);
  v29 = (&v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  sub_29D8C439C(*v29, v29[1], 0x6E616E65766F7270, 0xEA00000000006563, v24, &v76);
  sub_29D69417C(&v77);
  v31 = v76;
  v83 = v76;
  v32 = v3[18];
  if (v32 == 2)
  {
    v82 = 0;
    v80 = 0u;
    v81 = 0u;
  }

  else
  {
    v78 = MEMORY[0x29EDC9A98];
    v79 = MEMORY[0x29EDC9AB0];
    LOBYTE(v77) = v32 & 1;
    sub_29D6959E8(&v77, &v80);
    if (*(&v81 + 1))
    {
      sub_29D6959E8(&v80, &v77);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v31;
      v34 = v78;
      v35 = v79;
      v36 = sub_29D693DDC(&v77, v78);
      v37 = *(*(v34 - 8) + 64);
      MEMORY[0x2A1C7C4A8](v36, v36);
      v39 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 16))(v39);
      sub_29D8C4A50(v39, 0x6E6F69746361, 0xE600000000000000, v33, &v76, v34, v35);
      sub_29D69417C(&v77);
      v83 = v76;
      goto LABEL_35;
    }
  }

  sub_29D745454(&v80);
  sub_29D8C424C(0x6E6F69746361, 0xE600000000000000, &v77);
  sub_29D745454(&v77);
LABEL_35:
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v41 = sub_29D937898();
  sub_29D69C6C0(v41, qword_2A1A2C008);
  v42 = sub_29D93A2F8();
  *(&v81 + 1) = sub_29D6B73CC();
  v82 = sub_29D6B7418();
  *&v80 = v42;
  sub_29D6959E8(&v80, &v77);
  v43 = v83;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v43;
  v45 = v78;
  v46 = sub_29D693DDC(&v77, v78);
  v47 = *(*(v45 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v46, v46);
  v49 = (&v75 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  sub_29D8C46F4(*v49, 6645601, 0xE300000000000000, v44, &v76);
  sub_29D69417C(&v77);
  v51 = v76;
  v52 = sub_29D93A308();
  v53 = MEMORY[0x29EDC99B0];
  *(&v81 + 1) = MEMORY[0x29EDC99B0];
  v54 = MEMORY[0x29EDC99D8];
  v82 = MEMORY[0x29EDC99D8];
  *&v80 = v52;
  *(&v80 + 1) = v55;
  sub_29D6959E8(&v80, &v77);
  LOBYTE(v45) = swift_isUniquelyReferenced_nonNull_native();
  v76 = v51;
  v56 = v78;
  v57 = sub_29D693DDC(&v77, v78);
  v58 = *(*(v56 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v57, v57);
  v60 = (&v75 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  sub_29D8C439C(*v60, v60[1], 0x6369676F6C6F6962, 0xED00007865536C61, v45, &v76);
  sub_29D69417C(&v77);
  v62 = v76;
  v63 = [a2 activePairedDeviceProductType];
  if (v63)
  {
    v64 = v63;
    v65 = sub_29D939D68();
    v67 = v66;

    *(&v81 + 1) = v53;
    v82 = v54;
    *&v80 = v65;
    *(&v80 + 1) = v67;
    sub_29D6959E8(&v80, &v77);
    LOBYTE(v64) = swift_isUniquelyReferenced_nonNull_native();
    v76 = v62;
    v68 = v78;
    v69 = sub_29D693DDC(&v77, v78);
    v70 = *(*(v68 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v69, v69);
    v72 = (&v75 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v73 + 16))(v72);
    sub_29D8C439C(*v72, v72[1], 0xD000000000000016, 0x800000029D95E150, v64, &v76);
    sub_29D69417C(&v77);
    return v76;
  }

  return v62;
}

uint64_t sub_29D745454(uint64_t a1)
{
  sub_29D7454B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7454B0()
{
  if (!qword_2A17B1B30)
  {
    sub_29D745508();
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1B30);
    }
  }
}

unint64_t sub_29D745508()
{
  result = qword_2A17B1120;
  if (!qword_2A17B1120)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1120);
  }

  return result;
}

uint64_t sub_29D74556C()
{

  return swift_deallocClassInstance();
}

id sub_29D7455C8()
{
  v0 = sub_29D933AA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29D933A78();
  v7 = sub_29D933A68();
  (*(v1 + 8))(v5, v0);
  [v6 setLocale_];

  [v6 setDateStyle_];
  [v6 setTimeStyle_];
  result = [v6 setDoesRelativeDateFormatting_];
  qword_2A17D0928 = v6;
  return result;
}

uint64_t sub_29D745710()
{
  v0 = sub_29D9338C8();
  v61 = *(v0 - 8);
  v62 = v0;
  v1 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v60 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D933858();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D933868();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v54 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D933828();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29D9338A8();
  v17 = *(v51 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v51, v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29D9338F8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v22, v25);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v32 = &v50 - v31;
  v34 = MEMORY[0x2A1C7C4A8](v30, v33);
  v36 = &v50 - v35;
  v38 = MEMORY[0x2A1C7C4A8](v34, v37);
  v40 = &v50 - v39;
  v42 = MEMORY[0x2A1C7C4A8](v38, v41);
  v44 = &v50 - v43;
  MEMORY[0x29ED63900](v42);
  sub_29D933898();
  sub_29D933808();
  (*(v17 + 8))(v21, v51);
  v45 = *(v23 + 8);
  v45(v28, v22);
  sub_29D933818();
  sub_29D9337C8();
  (*(v52 + 8))(v16, v53);
  v45(v32, v22);
  v46 = v55;
  sub_29D933848();
  v47 = v54;
  sub_29D933838();
  (*(v58 + 8))(v46, v59);
  sub_29D9337E8();
  (*(v56 + 8))(v47, v57);
  v45(v36, v22);
  v48 = v60;
  sub_29D9338B8();
  sub_29D9338E8();
  (*(v61 + 8))(v48, v62);
  v45(v40, v22);
  sub_29D72EF70();
  sub_29D9339D8();
  v45(v44, v22);
  return v63;
}

uint64_t sub_29D745C20()
{
  v0 = sub_29D933CC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9339F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D933CE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933C88();
  if (sub_29D933B18() & 1) != 0 || (sub_29D933B78())
  {
    (*(v13 + 8))(v17, v12);
    v18 = 1;
  }

  else
  {
    sub_29D9339A8();
    (*(v1 + 104))(v5, *MEMORY[0x29EDB9CD0], v0);
    v19 = sub_29D933C58();
    (*(v1 + 8))(v5, v0);
    (*(v7 + 8))(v11, v6);
    (*(v13 + 8))(v17, v12);
    v18 = v19 ^ 1;
  }

  return v18 & 1;
}

uint64_t type metadata accessor for ECGFeatureRegulatoryInfoTransformProvider()
{
  result = qword_2A17B3898;
  if (!qword_2A17B3898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D745F2C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_29D939A98();
}

uint64_t sub_29D745F60()
{
  if (qword_2A17B0D58 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D745FFC()
{
  if (qword_2A17B0D58 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9336E8();
}

uint64_t sub_29D7460BC()
{
  sub_29D939AA8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ElectrocardiogramFeatureStatusActionHandler()
{
  result = qword_2A1A23210;
  if (!qword_2A1A23210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29D74618C(void *a1)
{
  v2 = [a1 onboardingNavigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setModalInPresentation_];
    return v3;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2C008);
    v6 = v1;
    v7 = sub_29D937878();
    v8 = sub_29D93A298();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446466;
      swift_getObjectType();
      sub_29D747508();
      v11 = sub_29D939DA8();
      v13 = sub_29D6C2364(v11, v12, &v14);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_29D6C2364(0xD00000000000002FLL, 0x800000029D95E360, &v14);
      _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s] Onboarding navigation controller not initialized", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v10, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }

    return 0;
  }
}

void sub_29D746368()
{
  ObjectType = swift_getObjectType();
  sub_29D6D22BC(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v80 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_29D934C58();
  v91 = *(v93 - 8);
  v5 = *(v91 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v93, v6);
  v84 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v90 = &v77 - v10;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v11, v14);
  v88 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v83 = &v77 - v19;
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v23 = &v77 - v22;
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = &v77 - v25;
  v27 = sub_29D936638();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v0;
  sub_29D936B88();
  sub_29D9369E8();
  v33 = MEMORY[0x29EDC2970];
  sub_29D7474C0(&qword_2A17B1E40, MEMORY[0x29EDC2970]);
  sub_29D7474C0(&qword_2A17B3920, v33);
  sub_29D936628();
  v34 = *(v28 + 8);
  v87 = v27;
  v34(v32, v27);
  if (v94)
  {
    v81 = v34;
    v82 = v94;
    sub_29D9369B8();
    if (qword_2A1A24670 != -1)
    {
      swift_once();
    }

    v35 = sub_29D937898();
    sub_29D69C6C0(v35, qword_2A1A2BF40);
    v36 = *(v12 + 16);
    v92 = v26;
    v86 = v36;
    v36(v23, v26, v11);
    v37 = sub_29D937878();
    v38 = sub_29D93A2A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v94 = v78;
      *v39 = 136315394;
      v40 = sub_29D93AF08();
      v79 = v12;
      v42 = sub_29D6C2364(v40, v41, &v94);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      v86(v83, v23, v11);
      v43 = sub_29D939DA8();
      v45 = v44;
      ObjectType = *(v79 + 8);
      ObjectType(v23, v11);
      v46 = sub_29D6C2364(v43, v45, &v94);

      *(v39 + 14) = v46;
      v12 = v79;
      _os_log_impl(&dword_29D677000, v37, v38, "[%s] Did select cell with featureStatusKind %s", v39, 0x16u);
      v47 = v78;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v39, -1, -1);
    }

    else
    {

      ObjectType = *(v12 + 8);
      ObjectType(v23, v11);
    }

    sub_29D936B88();
    v56 = sub_29D936618();
    v57 = v87;
    v58 = v81;
    v81(v32, v87);
    sub_29D936B88();
    v59 = v90;
    sub_29D9347B8();
    v58(v32, v57);
    v60 = v88;
    v86(v88, v92, v11);
    v61 = (*(v12 + 88))(v60, v11);
    if (v61 == *MEMORY[0x29EDC1760])
    {
      v62 = v91;
      v63 = v84;
      (*(v91 + 16))(v84, v59, v93);
      v64 = objc_allocWithZone(type metadata accessor for ElectrocardiogramSettingsViewController(0));
      v65 = sub_29D8D0CA0(v63);
      v66 = [v56 navigationController];
      if (v66)
      {
        v67 = v66;
        [v66 pushViewController:v65 animated:1];
      }

      else
      {
      }

      (*(v62 + 8))(v59, v93);
      v71 = v92;
      goto LABEL_23;
    }

    v68 = v91;
    v69 = v56;
    if (v61 == *MEMORY[0x29EDC1768])
    {
LABEL_16:
      v70 = v92;
      sub_29D746D74(v92, v56);

      (*(v68 + 8))(v59, v93);
      v71 = v70;
LABEL_23:
      ObjectType(v71, v11);
      return;
    }

    if (v61 != *MEMORY[0x29EDC1758] && v61 != *MEMORY[0x29EDC1750])
    {
      if (v61 != *MEMORY[0x29EDC1748])
      {

        (*(v68 + 8))(v59, v93);
        v72 = ObjectType;
        ObjectType(v92, v11);
        v72(v60, v11);
        return;
      }

      goto LABEL_16;
    }

    v73 = v91;
    v74 = v80;
    sub_29D9369D8();
    v75 = sub_29D9336F8();
    v76 = *(v75 - 8);
    if ((*(v76 + 48))(v74, 1, v75) == 1)
    {

      (*(v73 + 8))(v59, v93);
      ObjectType(v92, v11);
      sub_29D6D96C0(v74);
    }

    else
    {
      sub_29D9336A8();

      (*(v73 + 8))(v59, v93);
      ObjectType(v92, v11);
      (*(v76 + 8))(v74, v75);
    }
  }

  else
  {
    if (qword_2A1A24670 != -1)
    {
      swift_once();
    }

    v48 = sub_29D937898();
    sub_29D69C6C0(v48, qword_2A1A2BF40);
    v49 = sub_29D937878();
    v50 = sub_29D93A298();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v94 = v52;
      *v51 = 136315138;
      v53 = sub_29D93AF08();
      v55 = sub_29D6C2364(v53, v54, &v94);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_29D677000, v49, v50, "[%s] Could not access action handler user data!", v51, 0xCu);
      sub_29D69417C(v52);
      MEMORY[0x29ED6BE30](v52, -1, -1);
      MEMORY[0x29ED6BE30](v51, -1, -1);
    }
  }
}

void sub_29D746D74(uint64_t a1, void *a2)
{
  v3 = v2;
  v38 = a2;
  v39 = sub_29D933CE8();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v39, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D936638();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D9346E8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v20, *MEMORY[0x29EDC1748], v15);
  v21 = sub_29D9346D8();
  (*(v16 + 8))(v20, v15);
  v22 = type metadata accessor for ElectrocardiogramFeatureStatusOnboardingManagerDelegate();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC5HeartP33_83D08B8D42E0F7375EF54A8E4D22046B55ElectrocardiogramFeatureStatusOnboardingManagerDelegate_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A2443AA0;
  swift_unknownObjectWeakAssign();
  v41.receiver = v23;
  v41.super_class = v22;
  v24 = objc_msgSendSuper2(&v41, sel_init);
  sub_29D936B88();
  sub_29D936608();
  (*(v10 + 8))(v14, v9);
  sub_29D693E2C(v40, v40[3]);
  v25 = sub_29D936588();
  sub_29D933C88();
  v26 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v27 = sub_29D933BB8();
  v28 = [v26 initWithCalendar_];

  (*(v4 + 8))(v8, v39);
  LOBYTE(v36) = 0;
  v29 = [objc_allocWithZone(MEMORY[0x29EDC52B8]) initWithOnboardingType:v21 & 1 isFirstTimeOnboarding:(v21 & 1) == 0 healthStore:v25 dateCache:v28 provenance:4 delegate:v24 isSampleInteractive:v36];

  sub_29D69417C(v40);
  v30 = *(v3 + qword_2A1A23240);
  *(v3 + qword_2A1A23240) = v29;
  v31 = v29;

  v32 = *(v3 + qword_2A1A23238);
  *(v3 + qword_2A1A23238) = v24;
  v33 = v24;

  v34 = sub_29D74618C(v31);
  if (v34)
  {
    v35 = v34;
    [v38 presentViewController:v34 animated:1 completion:0];
  }
}

uint64_t sub_29D747144(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  *&v9[qword_2A1A23240] = 0;
  *&v9[qword_2A1A23238] = 0;
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

void sub_29D74725C()
{
  v1 = *(v0 + qword_2A1A23238);
}

void sub_29D7472B4(uint64_t a1)
{
  v2 = *(a1 + qword_2A1A23238);
}

void sub_29D74730C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_2A1A23240];
    *&Strong[qword_2A1A23240] = 0;
  }
}

id sub_29D7473BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D7474C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D747508()
{
  result = qword_2A17B3928;
  if (!qword_2A17B3928)
  {
    type metadata accessor for ElectrocardiogramFeatureStatusActionHandler();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B3928);
  }

  return result;
}

uint64_t sub_29D747558@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29D938B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74C354(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D74D860(v2, v14, sub_29D74C354);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_29D938738();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_29D93A298();
    v18 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

void sub_29D74774C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a1;
  v3 = sub_29D933AB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9339F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v30 - v17;
  *a2 = swift_getKeyPath();
  sub_29D74C354(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for AFibBurdenAddDataView();
  v20 = (a2 + v19[7]);
  v31 = 0x3FE0000000000000;
  sub_29D939688();
  v21 = v33;
  *v20 = v32;
  v20[1] = v21;
  v22 = v19[8];
  sub_29D9339E8();
  (*(v10 + 16))(v15, v18, v9);
  sub_29D939688();
  (*(v10 + 8))(v18, v9);
  v23 = a2 + v19[9];
  LOBYTE(v31) = 0;
  sub_29D939688();
  v24 = v33;
  *v23 = v32;
  *(v23 + 1) = v24;
  v25 = a2 + v19[10];
  LOBYTE(v31) = 0;
  sub_29D939688();
  v26 = v33;
  *v25 = v32;
  *(v25 + 1) = v26;
  v27 = v30;
  *(a2 + v19[5]) = v30;
  (*(v4 + 104))(v8, *MEMORY[0x29EDB9C78], v3);
  v28 = v19[6];
  v29 = v27;
  sub_29D933AC8();
  (*(v4 + 8))(v8, v3);
  sub_29D933B08();
}

uint64_t sub_29D747A38@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_29D74C618();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74D240();
  v33 = v9;
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1;
  v35 = v1;
  sub_29D74C798();
  sub_29D74C8E8();
  v15 = v14;
  sub_29D74C9EC();
  v17 = v16;
  sub_29D74CDE8();
  v19 = v18;
  v20 = sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC);
  v21 = sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8);
  v40 = v17;
  v41 = v19;
  v42 = v20;
  v43 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_29D69AB60();
  v40 = v15;
  v41 = MEMORY[0x29EDC99B0];
  v42 = OpaqueTypeConformance2;
  v43 = v23;
  swift_getOpaqueTypeConformance2();
  sub_29D938848();
  v24 = sub_29D74D9E0(&qword_2A17B3A10, sub_29D74C618);
  sub_29D939448();
  (*(v4 + 8))(v8, v3);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v38 = sub_29D9334A8();
  v39 = v25;
  v26 = (v32 + *(type metadata accessor for AFibBurdenAddDataView() + 36));
  v27 = *v26;
  v28 = *(v26 + 1);
  v36 = v27;
  v37 = v28;
  sub_29D74D170(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D9396B8();
  v40 = v3;
  v41 = v24;
  swift_getOpaqueTypeConformance2();
  v29 = v33;
  sub_29D939498();

  return (*(v31 + 8))(v13, v29);
}

id sub_29D747EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[1] = a2;
  sub_29D74C9EC();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74C8E8();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v10, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[8] = a1;
  sub_29D74CA9C();
  sub_29D74D9E0(&qword_2A17B39C0, sub_29D74CA9C);
  sub_29D939278();
  v29[4] = a1;
  sub_29D74CDE8();
  v18 = v17;
  v19 = sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC);
  v20 = sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8);
  sub_29D9394C8();
  (*(v5 + 8))(v9, v4);
  result = [*(a1 + *(type metadata accessor for AFibBurdenAddDataView() + 20)) displayTypeController];
  if (result)
  {
    v22 = result;
    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    v23 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    v24 = [v22 displayTypeForObjectType_];

    if (v24)
    {
      v25 = [v24 localization];

      v26 = [v25 displayName];
      v24 = sub_29D939D68();
      v28 = v27;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v29[14] = v24;
    v29[15] = v28;
    v29[10] = v4;
    v29[11] = v18;
    v29[12] = v19;
    v29[13] = v20;
    swift_getOpaqueTypeConformance2();
    sub_29D69AB60();
    sub_29D9393F8();

    return (*(v12 + 8))(v16, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D748274@<X0>(char *a1@<X8>)
{
  v38 = a1;
  sub_29D74CC78(0);
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v42 = &v33 - v7;
  sub_29D74CB24(0);
  v36 = v8;
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v41 = &v33 - v14;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v15 = sub_29D9334A8();
  v33 = &v33;
  v43 = v15;
  v44 = v16;
  MEMORY[0x2A1C7C4A8](v15, v16);
  sub_29D74CB44(0);
  sub_29D74D9E0(&qword_2A17B3A20, sub_29D74CB44);
  sub_29D69AB60();
  v17 = v41;
  sub_29D9397F8();
  v43 = sub_29D9334A8();
  v44 = v18;
  MEMORY[0x2A1C7C4A8](v43, v18);
  sub_29D74CCFC(0);
  sub_29D74D9E0(&qword_2A17B3A28, sub_29D74CCFC);
  v19 = v42;
  sub_29D9397F8();
  v21 = v34;
  v20 = v35;
  v22 = *(v34 + 16);
  v23 = v36;
  v22(v35, v17, v36);
  v24 = v39;
  v33 = *(v39 + 16);
  v25 = v37;
  v26 = v19;
  v27 = v40;
  v33(v37, v26, v40);
  v28 = v38;
  v22(v38, v20, v23);
  sub_29D74CE70(0, &qword_2A17B3978, sub_29D74CB24, sub_29D74CC78);
  v33(&v28[*(v29 + 48)], v25, v27);
  v30 = *(v24 + 8);
  v30(v42, v27);
  v31 = *(v21 + 8);
  v31(v41, v23);
  v30(v25, v27);
  return (v31)(v20, v23);
}

uint64_t sub_29D748744@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  sub_29D74CC0C();
  v4 = v3;
  v44 = *(v3 - 8);
  v5 = *(v44 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v40 - v11;
  sub_29D74CF80(0, &qword_2A17B3998, MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v13, v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v40 - v22;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v47 = sub_29D9334A8();
  v48 = v24;
  MEMORY[0x2A1C7C4A8](v47, v24);
  sub_29D69AB60();
  sub_29D9387A8();
  v25 = (a1 + *(type metadata accessor for AFibBurdenAddDataView() + 28));
  v26 = *v25;
  v27 = v25[1];
  *&v49 = v26;
  *(&v49 + 1) = v27;
  sub_29D74D170(0, &qword_2A17B3948, MEMORY[0x29EDC9AD8], MEMORY[0x29EDBCB00]);
  sub_29D9396B8();
  v49 = xmmword_29D945890;
  v46 = 0x3F847AE147AE147BLL;
  sub_29D74D930();
  sub_29D939738();
  v28 = v15;
  v29 = *(v15 + 16);
  v29(v20, v23, v14);
  v30 = v44;
  v42 = v12;
  v43 = v23;
  v31 = v12;
  v32 = *(v44 + 16);
  v32(v9, v31, v4);
  v41 = v9;
  v33 = v4;
  v34 = v45;
  v29(v45, v20, v14);
  sub_29D74CB78();
  v36 = v41;
  v32(&v34[*(v35 + 48)], v41, v33);
  v37 = *(v30 + 8);
  v37(v42, v33);
  v38 = *(v28 + 8);
  v38(v43, v14);
  v37(v36, v33);
  return (v38)(v20, v14);
}

uint64_t sub_29D748B84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D748BE8();
  sub_29D748CBC(v2, v3 & 1);
  sub_29D69AB60();
  result = sub_29D9392F8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_29D748BE8()
{
  v1 = (v0 + *(type metadata accessor for AFibBurdenAddDataView() + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_29D74D170(0, &qword_2A17B3948, MEMORY[0x29EDC9AD8], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  result = 0;
  if (v5 > 0.02)
  {
    sub_29D939698();
    return *&v5;
  }

  return result;
}

uint64_t sub_29D748CBC(uint64_t a1, char a2)
{
  v4 = sub_29D933AA8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  sub_29D74D984();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
    v15 = HKAFibBurdenClampedLowerBoundLocalizedString();

    v16 = sub_29D939D68();
    return v16;
  }

  else
  {
    v18[1] = a1;
    sub_29D933A78();
    sub_29D74D930();
    sub_29D9335C8();
    sub_29D74D9E0(&qword_2A17B3A48, sub_29D74D984);
    sub_29D939C48();
    (*(v9 + 8))(v13, v8);
    return v18[2];
  }
}

uint64_t sub_29D748EB4@<X0>(char *a1@<X8>)
{
  v49 = a1;
  v1 = sub_29D938E18();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74C3E8(0, &qword_2A17B3370, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB78]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  sub_29D74CF80(0, &qword_2A17B2FC0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBBE80]);
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v51 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v50 = &v42 - v14;
  sub_29D74CF80(0, &qword_2A17B3998, MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
  v45 = v15;
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v44 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v42 - v21;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v52 = sub_29D9334A8();
  v53 = v23;
  MEMORY[0x2A1C7C4A8](v52, v23);
  sub_29D69AB60();
  v42 = v22;
  sub_29D9387A8();
  v52 = sub_29D9334A8();
  v53 = v24;
  v25 = *(type metadata accessor for AFibBurdenAddDataView() + 32);
  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
  sub_29D9396B8();
  sub_29D938E08();
  v26 = v50;
  sub_29D9385F8();
  v28 = v43;
  v27 = v44;
  v29 = *(v43 + 16);
  v30 = v22;
  v31 = v45;
  v29(v44, v30, v45);
  v33 = v47;
  v32 = v48;
  v34 = *(v47 + 16);
  v34(v51, v26, v48);
  v35 = v49;
  v29(v49, v27, v31);
  sub_29D74CD30();
  v37 = &v35[*(v36 + 48)];
  v38 = v51;
  v34(v37, v51, v32);
  v39 = *(v33 + 8);
  v39(v50, v32);
  v40 = *(v28 + 8);
  v40(v42, v31);
  v39(v38, v32);
  return (v40)(v27, v31);
}

uint64_t sub_29D7493E8@<X0>(uint64_t a1@<X8>)
{
  sub_29D749444();
  sub_29D69AB60();
  result = sub_29D9392F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

id sub_29D749444()
{
  v0 = type metadata accessor for AFibBurdenAddDataView();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v115 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_29D937898();
  v113 = *(v114 - 8);
  v4 = *(v113 + 64);
  MEMORY[0x2A1C7C4A8](v114, v5);
  v116 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D9339F8();
  v8 = *(v7 - 8);
  v142 = v7;
  v143 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D933CC8();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_29D9331D8();
  v19 = *(v134 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v134, v21);
  v111 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v22, v24);
  v119 = &v110 - v26;
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v131 = &v110 - v29;
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = &v110 - v31;
  sub_29D74D42C(0);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x2A1C7C4A8](v33 - 8, v35);
  v112 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v120 = &v110 - v40;
  v42 = MEMORY[0x2A1C7C4A8](v39, v41);
  v130 = &v110 - v43;
  v45 = MEMORY[0x2A1C7C4A8](v42, v44);
  v129 = &v110 - v46;
  v48 = MEMORY[0x2A1C7C4A8](v45, v47);
  v50 = &v110 - v49;
  MEMORY[0x2A1C7C4A8](v48, v51);
  v53 = &v110 - v52;
  result = [objc_opt_self() hk_mediumDateStyleIntervalFormatter];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v133 = result;
  v139 = v53;
  v55 = *(v0 + 24);
  v56 = v14[13];
  v125 = *MEMORY[0x29EDB9CA0];
  v126 = v14 + 13;
  v124 = v56;
  v56(v18);
  v110 = v0;
  v57 = *(v0 + 32);
  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
  v117 = v57;
  v123 = v58;
  sub_29D939698();
  sub_29D933AE8();
  v59 = *(v143 + 8);
  v118 = v12;
  v143 += 8;
  v122 = v59;
  v59(v12, v142);
  v60 = v14[1];
  v127 = v18;
  v128 = v14 + 1;
  v132 = v13;
  v121 = v60;
  v60(v18, v13);
  v61 = (v19 + 48);
  v62 = v134;
  v140 = *(v19 + 48);
  result = v140(v50, 1, v134);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v63 = objc_opt_self();
  v135 = *(v19 + 32);
  v136 = v19 + 32;
  v135(v32, v50, v62);
  v64 = sub_29D933148();
  v137 = *(v19 + 8);
  v138 = v19 + 8;
  v137(v32, v62);
  v65 = v141;
  v66 = sub_29D933BB8();
  v67 = sub_29D933BB8();
  v68 = [v63 hk:v64 julianDayDateIntervalFromOpenUpperBoundDateInterval:v66 sourceCalendar:v67 localCalendar:?];

  if (v68)
  {
    v69 = v129;
    sub_29D933168();

    v70 = 0;
    v71 = v139;
    v73 = v132;
    v72 = v133;
    v74 = v131;
  }

  else
  {
    v70 = 1;
    v71 = v139;
    v73 = v132;
    v72 = v133;
    v74 = v131;
    v69 = v129;
  }

  (*(v19 + 56))(v69, v70, 1, v62);
  sub_29D74D7F8(v69, v71, sub_29D74D42C);
  v75 = v130;
  sub_29D74D860(v71, v130, sub_29D74D42C);
  v131 = v61;
  v76 = v140(v75, 1, v62);
  v77 = v142;
  if (v76 == 1)
  {
    sub_29D74D8C8(v75, sub_29D74D42C);
  }

  else
  {
    v135(v74, v75, v62);
    v78 = v72;
    v79 = v74;
    v80 = sub_29D933148();
    v81 = [v78 stringFromDateInterval_];

    if (v81)
    {
      v82 = sub_29D939D68();

      v137(v79, v62);
LABEL_21:
      sub_29D74D8C8(v71, sub_29D74D42C);
      return v82;
    }

    v137(v79, v62);
    v72 = v78;
  }

  v83 = v127;
  v124(v127, v125, v73);
  v84 = v118;
  sub_29D939698();
  v85 = v65;
  v86 = v120;
  sub_29D933AE8();
  v122(v84, v77);
  v121(v83, v73);
  result = v140(v86, 1, v62);
  if (result == 1)
  {
    goto LABEL_24;
  }

  v87 = v119;
  v135(v119, v86, v62);
  v88 = sub_29D933148();
  v137(v87, v62);
  v89 = [v72 stringFromDateInterval_];

  if (v89)
  {
    v82 = sub_29D939D68();

    v71 = v139;
    goto LABEL_21;
  }

  v90 = v116;
  sub_29D937858();
  v91 = v115;
  sub_29D74D860(v85, v115, type metadata accessor for AFibBurdenAddDataView);
  v92 = sub_29D937878();
  v93 = sub_29D93A298();
  if (!os_log_type_enabled(v92, v93))
  {

    sub_29D74D8C8(v91, type metadata accessor for AFibBurdenAddDataView);
    (*(v113 + 8))(v90, v114);
    v71 = v139;
    goto LABEL_18;
  }

  v94 = v84;
  v95 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v144 = v96;
  *v95 = 136446466;
  *(v95 + 4) = sub_29D6C2364(0xD000000000000015, 0x800000029D9458C0, &v144);
  *(v95 + 12) = 2080;
  v97 = v110;
  v98 = *(v110 + 24);
  v99 = v127;
  v100 = v132;
  v124(v127, v125, v132);
  v101 = v91 + *(v97 + 32);
  sub_29D939698();
  v102 = v112;
  sub_29D933AE8();
  v103 = v94;
  v104 = v134;
  v122(v103, v142);
  v121(v99, v100);
  result = v140(v102, 1, v104);
  if (result != 1)
  {
    v105 = v111;
    v135(v111, v102, v104);
    sub_29D74D9E0(&qword_2A17B3A30, MEMORY[0x29EDB98E8]);
    v106 = sub_29D93AD38();
    v108 = v107;
    v137(v105, v104);
    sub_29D74D8C8(v91, type metadata accessor for AFibBurdenAddDataView);
    v109 = sub_29D6C2364(v106, v108, &v144);

    *(v95 + 14) = v109;
    _os_log_impl(&dword_29D677000, v92, v93, "[%{public}s] Unable to format date interval of %s", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v96, -1, -1);
    MEMORY[0x29ED6BE30](v95, -1, -1);

    (*(v113 + 8))(v116, v114);
    v72 = v133;
    v71 = v139;
LABEL_18:
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    v82 = sub_29D9334A8();

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_29D74A12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  sub_29D74CE70(0, &qword_2A17B39D0, sub_29D74CEEC, sub_29D74D050);
  v27[0] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v27 - v6;
  sub_29D74D050();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29D938E68();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  sub_29D74CEEC();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v18, v22);
  v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938E38();
  v27[8] = a1;
  sub_29D74CF80(0, &qword_2A17B3610, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  sub_29D74CFD4();
  sub_29D9386E8();
  sub_29D938E48();
  v27[4] = a1;
  sub_29D74D0C0();
  sub_29D74D1C0();
  sub_29D9386E8();
  v25 = *(v27[0] + 48);
  (*(v20 + 16))(v7, v24, v19);
  (*(v10 + 16))(&v7[v25], v14, v9);
  sub_29D938CD8();
  (*(v10 + 8))(v14, v9);
  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_29D74A460(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenAddDataView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v5);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v10[0] = sub_29D9334A8();
  v10[1] = v6;
  sub_29D74D860(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AFibBurdenAddDataView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_29D74D7F8(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AFibBurdenAddDataView);
  sub_29D69AB60();
  return sub_29D939708();
}

uint64_t sub_29D74A61C(uint64_t a1)
{
  v2 = sub_29D938B68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74C354(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_29D938738();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D74D860(a1, v12, sub_29D74C354);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v18, v12, v13);
  }

  else
  {
    v19 = *v12;
    sub_29D93A298();
    v20 = sub_29D9390A8();
    sub_29D937758();

    sub_29D938B58();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v2);
  }

  sub_29D938728();
  return (*(v14 + 8))(v18, v13);
}

void sub_29D74A890(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AFibBurdenAddDataView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v20 = sub_29D9334A8();
  v21 = v8;
  sub_29D74D860(a1, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AFibBurdenAddDataView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_29D74D7F8(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for AFibBurdenAddDataView);
  sub_29D69AB60();
  sub_29D939708();
  v11 = a1 + *(v4 + 40);
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v20) = v12;
  v21 = v13;
  sub_29D74D170(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  v14 = v19[15];
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  sub_29D74D0C0();
  v18 = (a2 + *(v17 + 36));
  *v18 = KeyPath;
  v18[1] = sub_29D74D334;
  v18[2] = v16;
}

uint64_t sub_29D74AAFC(uint64_t a1)
{
  v2 = type metadata accessor for AFibBurdenAddDataView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v7 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D74C3E8(0, &unk_2A17B37B0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v22[-v11];
  v13 = a1 + *(v3 + 48);
  v14 = *v13;
  v15 = *(v13 + 8);
  v22[16] = v14;
  v23 = v15;
  v22[15] = 1;
  sub_29D74D170(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D9396A8();
  v16 = sub_29D93A028();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_29D74D860(a1, v7, type metadata accessor for AFibBurdenAddDataView);
  sub_29D939FF8();
  v17 = sub_29D939FE8();
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x29EDCA390];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_29D74D7F8(v7, v19 + v18, type metadata accessor for AFibBurdenAddDataView);
  sub_29D6BEBA4(0, 0, v12, &unk_29D945980, v19);
}

uint64_t sub_29D74AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_29D938738();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_29D937898();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = sub_29D939FF8();
  v4[15] = sub_29D939FE8();
  v11 = swift_task_alloc();
  v4[16] = v11;
  *v11 = v4;
  v11[1] = sub_29D74AED8;

  return sub_29D74B778();
}

uint64_t sub_29D74AED8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v11 = *v1;
  v3[17] = v2;

  v8 = sub_29D939FD8();
  v3[18] = v8;
  v3[19] = v7;
  if (v2)
  {
    v9 = sub_29D74B344;
  }

  else
  {
    v9 = sub_29D74B038;
  }

  return MEMORY[0x2A1C73D48](v9, v8, v7);
}

uint64_t sub_29D74B038()
{
  v12 = v0;
  v1 = v0[13];
  sub_29D937858();
  v2 = sub_29D937878();
  v3 = sub_29D93A2A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_29D6C2364(0xD000000000000015, 0x800000029D9458C0, &v11);
    _os_log_impl(&dword_29D677000, v2, v3, "[%{public}s] Successfully saved sample", v8, 0xCu);
    sub_29D69417C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);

  return MEMORY[0x2A1C73D48](sub_29D74B1A0, 0, 0);
}

uint64_t sub_29D74B1A0()
{
  v1 = *(v0 + 112);
  *(v0 + 160) = sub_29D939FE8();
  v3 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D74B22C, v3, v2);
}

uint64_t sub_29D74B22C()
{
  v1 = v0[20];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];

  sub_29D747558(v2);
  sub_29D938728();
  (*(v3 + 8))(v2, v5);
  v6 = v0[18];
  v7 = v0[19];

  return MEMORY[0x2A1C73D48](sub_29D74B2C8, v6, v7);
}

uint64_t sub_29D74B2C8()
{
  v1 = v0[15];

  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_29D74B344()
{
  v20 = v0;
  v1 = v0[17];
  v2 = v0[12];
  sub_29D937858();
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_29D6C2364(0xD000000000000015, 0x800000029D9458C0, &v19);
    *(v10 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Error when saving sample: %@", v10, 0x16u);
    sub_29D74D8C8(v11, sub_29D6ACA98);
    MEMORY[0x29ED6BE30](v11, -1, -1);
    sub_29D69417C(v12);
    MEMORY[0x29ED6BE30](v12, -1, -1);
    MEMORY[0x29ED6BE30](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[10];

    (*(v16 + 8))(v15, v17);
  }

  return MEMORY[0x2A1C73D48](sub_29D74B550, 0, 0);
}

uint64_t sub_29D74B550()
{
  v1 = *(v0 + 112);
  *(v0 + 168) = sub_29D939FE8();
  v3 = sub_29D939FD8();

  return MEMORY[0x2A1C73D48](sub_29D74B5DC, v3, v2);
}

uint64_t sub_29D74B5DC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);

  v3 = type metadata accessor for AFibBurdenAddDataView();
  v4 = (v2 + *(v3 + 36));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 176) = 1;
  sub_29D74D170(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D9396A8();
  v7 = (v2 + *(v3 + 40));
  v8 = *v7;
  v9 = *(v7 + 1);
  *(v0 + 32) = v8;
  *(v0 + 40) = v9;
  *(v0 + 177) = 0;
  sub_29D9396A8();
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);

  return MEMORY[0x2A1C73D48](sub_29D74B6F0, v10, v11);
}

uint64_t sub_29D74B6F0()
{
  v1 = v0[17];
  v2 = v0[15];

  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_29D74B778()
{
  v1[36] = v0;
  v2 = sub_29D933D38();
  v1[37] = v2;
  v3 = *(v2 - 8);
  v1[38] = v3;
  v4 = *(v3 + 64) + 15;
  v1[39] = swift_task_alloc();
  v5 = sub_29D9339F8();
  v1[40] = v5;
  v6 = *(v5 - 8);
  v1[41] = v6;
  v7 = *(v6 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v8 = sub_29D933CC8();
  v1[44] = v8;
  v9 = *(v8 - 8);
  v1[45] = v9;
  v10 = *(v9 + 64) + 15;
  v1[46] = swift_task_alloc();
  sub_29D74D42C(0);
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[47] = swift_task_alloc();
  v13 = sub_29D9331D8();
  v1[48] = v13;
  v14 = *(v13 - 8);
  v1[49] = v14;
  v15 = *(v14 + 64) + 15;
  v1[50] = swift_task_alloc();
  sub_29D939FF8();
  v1[51] = sub_29D939FE8();
  v17 = sub_29D939FD8();
  v1[52] = v17;
  v1[53] = v16;

  return MEMORY[0x2A1C73D48](sub_29D74B9B8, v17, v16);
}

uint64_t sub_29D74B9B8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v54 = *(v0 + 376);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);
  v55 = *(v0 + 320);
  v56 = *(v0 + 384);
  v7 = *(v0 + 288);
  v8 = type metadata accessor for AFibBurdenAddDataView();
  v9 = *(v8 + 24);
  (*(v3 + 104))(v2, *MEMORY[0x29EDB9CA0], v4);
  v53 = v8;
  v10 = *(v8 + 32);
  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  sub_29D933AE8();
  v52 = *(v6 + 8);
  v52(v5, v55);
  (*(v3 + 8))(v2, v4);
  v11 = (*(v1 + 48))(v54, 1, v56);
  if (v11 == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v0 + 304);
    v12 = *(v0 + 312);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    (*(*(v0 + 392) + 32))(*(v0 + 400), *(v0 + 376), *(v0 + 384));
    sub_29D74C3E8(0, &qword_2A17B7B00, sub_29D74D460, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D93DDB0;
    v17 = *MEMORY[0x29EDBA810];
    *(inited + 32) = sub_29D939D68();
    *(inited + 40) = v18;
    sub_29D933CA8();
    v19 = sub_29D933D08();
    (*(v13 + 8))(v12, v15);
    v20 = [v19 name];

    v21 = sub_29D939D68();
    v23 = v22;

    *(inited + 72) = MEMORY[0x29EDC99B0];
    *(inited + 48) = v21;
    *(inited + 56) = v23;
    sub_29D73F010(inited);
    swift_setDeallocating();
    sub_29D74D8C8(inited + 32, sub_29D74D460);
    sub_29D748BE8();
    if (v24)
    {
      v25 = *MEMORY[0x29EDBA7F0];
      v26 = sub_29D939D68();
      v28 = v27;
      v29 = sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
      v30 = sub_29D93A6D8();
      *(v0 + 248) = v29;
      *(v0 + 224) = v30;
      sub_29D6940E0((v0 + 224), (v0 + 256));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_29D69242C((v0 + 256), v26, v28, isUniquelyReferenced_nonNull_native);
    }

    v32 = *(v0 + 400);
    v34 = *(v0 + 336);
    v33 = *(v0 + 344);
    v35 = *(v0 + 288);
    v50 = v35;
    v51 = *(v0 + 320);
    sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
    v36 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
    v37 = [objc_opt_self() percentUnit];
    v38 = COERCE_DOUBLE(sub_29D748BE8());
    if (v39)
    {
      v40 = 0.02;
    }

    else
    {
      v40 = v38;
    }

    v41 = [objc_opt_self() quantityWithUnit:v37 doubleValue:v40];

    sub_29D9331A8();
    sub_29D933178();
    v42 = sub_29D933958();
    v43 = sub_29D933958();
    v44 = sub_29D939C58();

    v45 = [objc_opt_self() quantitySampleWithType:v36 quantity:v41 startDate:v42 endDate:v43 metadata:v44];
    *(v0 + 432) = v45;

    v52(v34, v51);
    v52(v33, v51);
    v46 = *(v50 + *(v53 + 20));
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_29D74BF68;
    v47 = swift_continuation_init();
    sub_29D74D4C4();
    *(v0 + 216) = v48;
    *(v0 + 160) = MEMORY[0x29EDCA5F8];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_29D806FD4;
    *(v0 + 184) = &unk_2A2443B50;
    *(v0 + 192) = v47;
    [v46 saveObject:v45 withCompletion:?];
    v11 = v0 + 16;
  }

  return MEMORY[0x2A1C73CC0](v11);
}

uint64_t sub_29D74BF68()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 440) = v3;
  v4 = *(v1 + 424);
  v5 = *(v1 + 416);
  if (v3)
  {
    v6 = sub_29D74C17C;
  }

  else
  {
    v6 = sub_29D74C098;
  }

  return MEMORY[0x2A1C73D48](v6, v5, v4);
}

uint64_t sub_29D74C098()
{
  v1 = v0[54];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v5 = v0[49];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[42];
  v8 = v0[43];
  v10 = v0[39];

  (*(v5 + 8))(v3, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_29D74C17C()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[48];
  v6 = v0[49];
  v8 = v0[46];
  v7 = v0[47];
  v10 = v0[42];
  v9 = v0[43];
  v14 = v0[39];

  swift_willThrow();

  (*(v6 + 8))(v4, v5);

  v11 = v0[1];
  v12 = v0[55];

  return v11();
}

uint64_t sub_29D74C268@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D69AB60();
  result = sub_29D9392F8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t type metadata accessor for AFibBurdenAddDataView()
{
  result = qword_2A17B3938;
  if (!qword_2A17B3938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D74C3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D74C460()
{
  sub_29D74C3E8(319, &qword_2A17B2378, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
    if (v1 <= 0x3F)
    {
      sub_29D933CE8();
      if (v2 <= 0x3F)
      {
        sub_29D74D170(319, &qword_2A17B3948, MEMORY[0x29EDC9AD8], MEMORY[0x29EDBCB00]);
        if (v3 <= 0x3F)
        {
          sub_29D74C3E8(319, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
          if (v4 <= 0x3F)
          {
            sub_29D74D170(319, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_29D74C618()
{
  if (!qword_2A17B3950)
  {
    sub_29D9387D8();
    sub_29D74C798();
    sub_29D74C8E8();
    sub_29D74C9EC();
    sub_29D74CDE8();
    sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC);
    sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8);
    swift_getOpaqueTypeConformance2();
    sub_29D69AB60();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29D938858();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3950);
    }
  }
}

void sub_29D74C798()
{
  if (!qword_2A17B3958)
  {
    sub_29D74C8E8();
    sub_29D74C9EC();
    sub_29D74CDE8();
    sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC);
    sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8);
    swift_getOpaqueTypeConformance2();
    sub_29D69AB60();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3958);
    }
  }
}

void sub_29D74C8E8()
{
  if (!qword_2A17B3960)
  {
    sub_29D74C9EC();
    sub_29D74CDE8();
    sub_29D74D9E0(&qword_2A17B39F8, sub_29D74C9EC);
    sub_29D74D9E0(&qword_2A17B3A00, sub_29D74CDE8);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3960);
    }
  }
}

void sub_29D74C9EC()
{
  if (!qword_2A17B3968)
  {
    sub_29D74CA9C();
    sub_29D74D9E0(&qword_2A17B39C0, sub_29D74CA9C);
    v0 = sub_29D939288();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3968);
    }
  }
}

void sub_29D74CA9C()
{
  if (!qword_2A17B3970)
  {
    sub_29D74CE70(255, &qword_2A17B3978, sub_29D74CB24, sub_29D74CC78);
    v0 = sub_29D9398E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3970);
    }
  }
}

void sub_29D74CB78()
{
  if (!qword_2A17B3990)
  {
    sub_29D74CF80(255, &qword_2A17B3998, MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    sub_29D74CC0C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B3990);
    }
  }
}

void sub_29D74CC0C()
{
  if (!qword_2A17B39A0)
  {
    v0 = sub_29D939748();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B39A0);
    }
  }
}

void sub_29D74CC98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D939838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D74CD30()
{
  if (!qword_2A17B39B8)
  {
    sub_29D74CF80(255, &qword_2A17B3998, MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    sub_29D74CF80(255, &qword_2A17B2FC0, MEMORY[0x29EDBCA10], MEMORY[0x29EDBBE80]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B39B8);
    }
  }
}

void sub_29D74CDE8()
{
  if (!qword_2A17B39C8)
  {
    sub_29D74CE70(255, &qword_2A17B39D0, sub_29D74CEEC, sub_29D74D050);
    v0 = sub_29D938CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B39C8);
    }
  }
}

void sub_29D74CE70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29D74CEEC()
{
  if (!qword_2A17B39D8)
  {
    sub_29D74CF80(255, &qword_2A17B3610, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29D74CFD4();
    v0 = sub_29D9386F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B39D8);
    }
  }
}

void sub_29D74CF80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x29EDBCA18]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D74CFD4()
{
  result = qword_2A17B3618;
  if (!qword_2A17B3618)
  {
    sub_29D74CF80(255, &qword_2A17B3610, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3618);
  }

  return result;
}

void sub_29D74D050()
{
  if (!qword_2A17B39E0)
  {
    sub_29D74D0C0();
    sub_29D74D1C0();
    v0 = sub_29D9386F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B39E0);
    }
  }
}

void sub_29D74D0C0()
{
  if (!qword_2A17B39E8)
  {
    sub_29D74CF80(255, &qword_2A17B3610, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29D74D170(255, &qword_2A17B2FE0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B39E8);
    }
  }
}

void sub_29D74D170(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D74D1C0()
{
  result = qword_2A17B39F0;
  if (!qword_2A17B39F0)
  {
    sub_29D74D0C0();
    sub_29D74CFD4();
    sub_29D72883C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B39F0);
  }

  return result;
}

void sub_29D74D240()
{
  if (!qword_2A17B3A08)
  {
    sub_29D74C618();
    sub_29D74D9E0(&qword_2A17B3A10, sub_29D74C618);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3A08);
    }
  }
}

uint64_t sub_29D74D33C(uint64_t a1)
{
  v4 = *(type metadata accessor for AFibBurdenAddDataView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29D6AC948;

  return sub_29D74AD64(a1, v6, v7, v1 + v5);
}

void sub_29D74D460()
{
  if (!qword_2A17B3750)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B3750);
    }
  }
}

void sub_29D74D4C4()
{
  if (!qword_2A17B72C0)
  {
    sub_29D6A0CD0();
    v0 = sub_29D93A038();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B72C0);
    }
  }
}

uint64_t sub_29D74D548()
{
  v1 = type metadata accessor for AFibBurdenAddDataView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_29D74C354(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29D938738();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[6];
  v9 = sub_29D933CE8();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  v10 = *&v5[v1[7] + 8];

  v11 = &v5[v1[8]];
  v12 = sub_29D9339F8();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_29D74C3E8(0, &qword_2A17B3930, MEMORY[0x29EDB9BC8], MEMORY[0x29EDBCB00]);
  v14 = *&v11[*(v13 + 28)];

  v15 = *&v5[v1[9] + 8];

  v16 = *&v5[v1[10] + 8];

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D74D76C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AFibBurdenAddDataView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_29D74D7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D74D860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D74D8C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29D74D930()
{
  result = qword_2A17B3A38;
  if (!qword_2A17B3A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3A38);
  }

  return result;
}

void sub_29D74D984()
{
  if (!qword_2A17B3A40)
  {
    sub_29D74D930();
    v0 = sub_29D9335D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3A40);
    }
  }
}

uint64_t sub_29D74D9E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D74DA28(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29D74EBE8();
  if ((v9 & 1) == 0)
  {
    v34 = v8;
    if ([v3 selectedIndex] != v8)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v35 = sub_29D937898();
      sub_29D69C6C0(v35, qword_2A1A2C008);
      v36 = v3;
      v37 = a1;
      v38 = sub_29D937878();
      v39 = sub_29D93A2A8();

      if (os_log_type_enabled(v38, v39))
      {
        v88 = a3;
        v40 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v90 = v87;
        *v40 = 136446722;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v41 = sub_29D939DA8();
        v86 = v39;
        v43 = a2;
        v44 = sub_29D6C2364(v41, v42, &v90);

        *(v40 + 4) = v44;
        a2 = v43;
        *(v40 + 12) = 2082;
        *(v40 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D95E5C0, &v90);
        *(v40 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v45 = sub_29D939DA8();
        v47 = sub_29D6C2364(v45, v46, &v90);

        *(v40 + 24) = v47;
        _os_log_impl(&dword_29D677000, v38, v86, "[%{public}s.%{public}s] %{public}s already presented in a different tab. Switching to that tab.", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v87, -1, -1);
        v48 = v40;
        a3 = v88;
        MEMORY[0x29ED6BE30](v48, -1, -1);
      }

      [v36 setSelectedIndex_];
    }

    if (sub_29D74EE40(a1, v34))
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v49 = sub_29D937898();
      sub_29D69C6C0(v49, qword_2A1A2C008);
      v50 = v4;
      v51 = a1;
      sub_29D935E88();
      v52 = sub_29D937878();
      v53 = sub_29D93A2A8();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90 = v89;
        *v54 = 136446978;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v55 = sub_29D939DA8();
        v57 = sub_29D6C2364(v55, v56, &v90);

        *(v54 + 4) = v57;
        *(v54 + 12) = 2082;
        *(v54 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D95E5C0, &v90);
        *(v54 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v58 = sub_29D939DA8();
        v60 = a3;
        v61 = sub_29D6C2364(v58, v59, &v90);

        *(v54 + 24) = v61;
        a3 = v60;
        *(v54 + 32) = 2082;
        v62 = sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
        v63 = MEMORY[0x29ED6A340](a2, v62);
        v65 = sub_29D6C2364(v63, v64, &v90);

        *(v54 + 34) = v65;
        _os_log_impl(&dword_29D677000, v52, v53, "[%{public}s.%{public}s] %{public}s is the topmost VC. Presenting %{public}s ontop.", v54, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v89, -1, -1);
        MEMORY[0x29ED6BE30](v54, -1, -1);
      }

      v66 = [v50 selectedViewController];
      if (!v66)
      {
        return;
      }

      v67 = v66;
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (v68)
      {
        v69 = v68;
        v70 = v67;
        v71 = [v69 viewControllers];
        sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
        v72 = sub_29D939F38();

        v90 = v72;
        v73 = sub_29D935E88();
        sub_29D88BCD4(v73);
        v33 = sub_29D939F18();

        [v69 setViewControllers:v33 animated:a3 & 1];

        goto LABEL_23;
      }
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v74 = sub_29D937898();
      sub_29D69C6C0(v74, qword_2A1A2C008);
      v75 = v4;
      v76 = a1;
      v67 = sub_29D937878();
      v77 = sub_29D93A2A8();

      if (os_log_type_enabled(v67, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v90 = v79;
        *v78 = 136446722;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v80 = sub_29D939DA8();
        v82 = sub_29D6C2364(v80, v81, &v90);

        *(v78 + 4) = v82;
        *(v78 + 12) = 2082;
        *(v78 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D95E5C0, &v90);
        *(v78 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v83 = sub_29D939DA8();
        v85 = sub_29D6C2364(v83, v84, &v90);

        *(v78 + 24) = v85;
        _os_log_impl(&dword_29D677000, v67, v77, "[%{public}s.%{public}s] %{public}s is not the topmost VC. We will not mess with the view hierarchy.", v78, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v79, -1, -1);
        MEMORY[0x29ED6BE30](v78, -1, -1);
      }
    }

    return;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v10 = sub_29D937898();
  sub_29D69C6C0(v10, qword_2A1A2C008);
  v11 = v3;
  v12 = a1;
  v13 = sub_29D937878();
  v14 = sub_29D93A2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v90 = v16;
    *v15 = 136446722;
    swift_getObjectType();
    sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
    v17 = sub_29D939DA8();
    v19 = sub_29D6C2364(v17, v18, &v90);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D95E5C0, &v90);
    *(v15 + 22) = 2082;
    swift_getObjectType();
    sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
    v20 = sub_29D939DA8();
    v22 = sub_29D6C2364(v20, v21, &v90);

    *(v15 + 24) = v22;
    _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s.%{public}s] %{public}s not already presented. Presenting now.", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  v23 = [v11 selectedViewController];
  if (v23)
  {
    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      sub_29D6A0C58();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29D940030;
      *(inited + 32) = v12;
      v90 = inited;
      v28 = v12;
      sub_29D935E88();
      v29 = v24;
      sub_29D88BCD4(a2);
      v30 = v90;
      v31 = [v26 viewControllers];
      sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
      v32 = sub_29D939F38();

      v90 = v32;
      sub_29D88BCD4(v30);
      v33 = sub_29D939F18();

      [v26 setViewControllers:v33 animated:a3 & 1];

LABEL_23:
      return;
    }
  }
}

void sub_29D74E500(void *a1, char a2)
{
  v5 = sub_29D74EBE8();
  if (v6)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = v2;
    v9 = a1;
    v10 = sub_29D937878();
    v11 = sub_29D93A2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v50 = v13;
      *v12 = 136446722;
      swift_getObjectType();
      sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
      v14 = sub_29D939DA8();
      v16 = sub_29D6C2364(v14, v15, &v50);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_29D6C2364(0xD00000000000001CLL, 0x800000029D95E5A0, &v50);
      *(v12 + 22) = 2082;
      swift_getObjectType();
      sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
      v17 = sub_29D939DA8();
      v19 = sub_29D6C2364(v17, v18, &v50);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s.%{public}s] %{public}s not already presented. Presenting now.", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    v20 = [v8 selectedViewController];
    if (v20)
    {
      v21 = v20;
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (!v22)
      {
      }
    }

    else
    {
      v22 = 0;
    }

    [v22 pushViewController:v9 animated:a2 & 1];
  }

  else
  {
    v23 = v5;
    if ([v2 selectedIndex] == v5)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v24 = sub_29D937898();
      sub_29D69C6C0(v24, qword_2A1A2C008);
      v25 = v2;
      v26 = a1;
      oslog = sub_29D937878();
      v27 = sub_29D93A2A8();

      if (os_log_type_enabled(oslog, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v50 = v29;
        *v28 = 136446722;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v30 = sub_29D939DA8();
        v32 = sub_29D6C2364(v30, v31, &v50);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2082;
        *(v28 + 14) = sub_29D6C2364(0xD00000000000001CLL, 0x800000029D95E5A0, &v50);
        *(v28 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v33 = sub_29D939DA8();
        v35 = sub_29D6C2364(v33, v34, &v50);

        *(v28 + 24) = v35;
        _os_log_impl(&dword_29D677000, oslog, v27, "[%{public}s.%{public}s] %{public}s already presented.", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v29, -1, -1);
        MEMORY[0x29ED6BE30](v28, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v36 = sub_29D937898();
      sub_29D69C6C0(v36, qword_2A1A2C008);
      v37 = v2;
      v38 = a1;
      v39 = sub_29D937878();
      v40 = sub_29D93A2A8();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v50 = v42;
        *v41 = 136446722;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A50, &qword_2A17B3A58, 0x29EDC7CF8);
        v43 = sub_29D939DA8();
        v45 = sub_29D6C2364(v43, v44, &v50);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2082;
        *(v41 + 14) = sub_29D6C2364(0xD00000000000001CLL, 0x800000029D95E5A0, &v50);
        *(v41 + 22) = 2082;
        swift_getObjectType();
        sub_29D74F050(0, &qword_2A17B3A60, &unk_2A17B3720, 0x29EDC7DA8);
        v46 = sub_29D939DA8();
        v48 = sub_29D6C2364(v46, v47, &v50);

        *(v41 + 24) = v48;
        _os_log_impl(&dword_29D677000, v39, v40, "[%{public}s.%{public}s] %{public}s already presented in a different tab. Switching to that tab.", v41, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v42, -1, -1);
        MEMORY[0x29ED6BE30](v41, -1, -1);
      }

      [v37 setSelectedIndex_];
    }
  }
}

unint64_t sub_29D74EBE8()
{
  v1 = [v0 viewControllers];
  if (v1)
  {
    v2 = sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
    v3 = sub_29D939F38();

    if (v3 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
    {
      v1 = 0;
      v5 = v3 & 0xC000000000000001;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      v7 = v3 + 32;
      v8 = &off_29F357000;
      v21 = v3 & 0xC000000000000001;
      v22 = i;
      v19 = v3 + 32;
      v20 = v3 & 0xFFFFFFFFFFFFFF8;
      v23 = v2;
      v25 = v3;
      while (2)
      {
        if (v5)
        {
          v9 = MEMORY[0x29ED6AE30](v1, v3);
          v10 = (v1 + 1);
          if (!__OFADD__(v1, 1))
          {
LABEL_8:
            v24 = v10;
            v26 = v9;
            v11 = [v9 v8[431]];
            v12 = sub_29D939F38();

            v3 = v12 & 0xFFFFFFFFFFFFFF8;
            if (v12 >> 62)
            {
              v13 = sub_29D93A928();
            }

            else
            {
              v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            for (j = 0; v13 != j; ++j)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v15 = MEMORY[0x29ED6AE30](j, v12);
              }

              else
              {
                if (j >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_26;
                }

                v15 = *(v12 + 8 * j + 32);
              }

              v16 = v15;
              if (__OFADD__(j, 1))
              {
                __break(1u);
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }

              ObjectType = swift_getObjectType();
              v2 = swift_getObjectType();

              if (ObjectType == v2)
              {

                return v1;
              }
            }

            v2 = v23;
            v1 = v24;
            v5 = v21;
            v3 = v25;
            v7 = v19;
            v6 = v20;
            v8 = &off_29F357000;
            if (v24 != v22)
            {
              continue;
            }

            goto LABEL_30;
          }
        }

        else
        {
          if (v1 >= *(v6 + 16))
          {
            goto LABEL_28;
          }

          v9 = *(v7 + 8 * v1);
          v10 = (v1 + 1);
          if (!__OFADD__(v1, 1))
          {
            goto LABEL_8;
          }
        }

        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:

    return 0;
  }

  return v1;
}

uint64_t sub_29D74EE40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 viewControllers];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
  v8 = sub_29D939F38();

  if (a2 < 0)
  {
    goto LABEL_17;
  }

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a2)
    {
      goto LABEL_5;
    }

LABEL_17:

    return 0;
  }

  result = sub_29D93A928();
  if (result <= a2)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x29ED6AE30](a2, v8);
  }

  else
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
    {
      __break(1u);
      goto LABEL_24;
    }

    v9 = *(v8 + 8 * a2 + 32);
  }

  a2 = v9;

  v10 = [a2 childViewControllers];
  v7 = sub_29D939F38();

  if (!(v7 >> 62))
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  v11 = sub_29D93A928();
  if (!v11)
  {
LABEL_22:

    return 0;
  }

LABEL_10:
  v12 = __OFSUB__(v11, 1);
  result = v11 - 1;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_25:
    MEMORY[0x29ED6AE30](result, v7);

    ObjectType = swift_getObjectType();
    sub_29D936978();
    return ObjectType == swift_getObjectType();
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v7 + 8 * result + 32);

    ObjectType = swift_getObjectType();

    return ObjectType == swift_getObjectType();
  }

  __break(1u);
  return result;
}

uint64_t sub_29D74F050(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a2;
  if (!*a2)
  {
    sub_29D69567C(255, a3, a4);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_29D74F0A0()
{
  [*(*sub_29D693E2C(&v0[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider] *&v0[OBJC:sel_removeHeartRhythmAvailabilityObserver_ IVAR:v0 :? :? :? TtC5Heart36BradycardiaAdvertisableFeatureSource:?heartSettingsUtilityProvider + 24]) + 16)];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BradycardiaAdvertisableFeatureSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BradycardiaAdvertisableFeatureSource()
{
  result = qword_2A17B3A80;
  if (!qword_2A17B3A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D74F280()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D9334A8();
  v3 = v2;
  v4 = sub_29D9334A8();
  v6 = v5;
  v7 = v0;
  v8 = sub_29D939D28();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:{v7, 0xE000000000000000}];

  return MEMORY[0x2A1C60BA0](v1, v3, v4, v6, v9);
}

void sub_29D74F434(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_29D74FD94(a2, a3);
  }
}

uint64_t sub_29D74F4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v8 = sub_29D939968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D939998();
  v14 = *(v27 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v27, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v5 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_queue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);

  sub_29D939988();
  v28 = MEMORY[0x29EDCA190];
  sub_29D750EDC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D750EDC(&qword_2A1A24980, sub_29D6C2DFC);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v18, v13, v21);
  _Block_release(v21);
  (*(v9 + 8))(v13, v8);
  (*(v14 + 8))(v18, v27);
}

void *sub_29D74F7D0(uint64_t a1, void (*a2)(char *))
{
  sub_29D750F34(0, &qword_2A17B1710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v9 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_29D934928();
    sub_29D750EDC(&qword_2A17B1718, MEMORY[0x29EDC1918]);
    sub_29D93AEA8();
    a2(v7);
    return sub_29D750FD0(v7, &qword_2A17B1710);
  }

  return result;
}

uint64_t sub_29D74F8F8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_29D939968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D939998();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v24, v16);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v4 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_queue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  aBlock[4] = sub_29D750F24;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2443C20;
  v21 = _Block_copy(aBlock);

  sub_29D939988();
  v25 = MEMORY[0x29EDCA190];
  sub_29D750EDC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D750EDC(&qword_2A1A24980, sub_29D6C2DFC);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v18, v13, v21);
  _Block_release(v21);
  (*(v9 + 8))(v13, v8);
  (*(v14 + 8))(v18, v24);
}

void *sub_29D74FC14(uint64_t a1, char a2, void (*a3)(char *))
{
  sub_29D750F34(0, &qword_2A17B1710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v12 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    if (a2)
    {
      [objc_opt_self() bradycardiaThresholdHeartRate];
      v11 = sub_29D93A138();
    }

    else
    {
      v11 = 0;
    }

    [objc_opt_self() setBradycardiaThresholdHeartRate_];

    sub_29D934928();
    sub_29D750EDC(&qword_2A17B1718, MEMORY[0x29EDC1918]);
    sub_29D93AEA8();
    a3(v9);

    return sub_29D750FD0(v9, &qword_2A17B1710);
  }

  return result;
}

uint64_t sub_29D74FD94(void (*a1)(uint64_t), uint64_t a2)
{
  v80 = a2;
  v81 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29D937898();
  v4 = *(v3 - 8);
  v76 = v3;
  v77 = v4;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v74 = &v71 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v71 = &v71 - v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v72 = &v71 - v17;
  sub_29D750F34(0, &qword_2A17B3A90);
  v79 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v78 = &v71 - v21;
  v22 = sub_29D9339F8();
  v73 = *(v22 - 8);
  v23 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29D933A58();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v27, v30);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = (v2 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider);
  v34 = *sub_29D693E2C((v2 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider), *(v2 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_heartSettingsUtilityProvider + 24)) + OBJC_IVAR____TtC5Heart40AdvertisableFeatureHeartSettingsProvider_activeDeviceSource;
  sub_29D852AAC();
  if (!v35)
  {
    goto LABEL_8;
  }

  v36 = v35;
  v37 = HKNRDeviceCapabilityHeartRateV2();
  sub_29D933A38();

  v38 = sub_29D933A28();
  (*(v28 + 8))(v32, v27);
  v39 = [v36 supportsCapability_];

  if (!v39)
  {
LABEL_8:
    sub_29D937848();
    v56 = sub_29D937878();
    v57 = sub_29D93A2A8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v82 = v59;
      *v58 = 136315394;
      v60 = sub_29D93AF08();
      v62 = sub_29D6C2364(v60, v61, &v82);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v82);
      _os_log_impl(&dword_29D677000, v56, v57, "[%s] %s -> false: heart rate motion context not supported on active watch", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v59, -1, -1);
      MEMORY[0x29ED6BE30](v58, -1, -1);
    }

    (*(v77 + 8))(v9, v76);
    goto LABEL_18;
  }

  v40 = objc_opt_self();
  if ([v40 isBackgroundHeartRateEnabled])
  {
    v41 = *sub_29D693E2C(v33, v33[3]);
    sub_29D852AAC();
    if (!v42)
    {
      goto LABEL_13;
    }

    v43 = v42;
    v44 = *(v41 + 16);
    sub_29D9339E8();
    v45 = sub_29D933958();
    (*(v73 + 8))(v26, v22);
    v46 = [v44 isHeartAgeGatingEnabledOnWatch:v43 currentDate:v45];

    if ((v46 & 1) == 0)
    {
LABEL_13:
      if (([v40 isBradycardiaDetectionEnabled] & 1) == 0)
      {
        v69 = v78;
        *v78 = 1;
        goto LABEL_19;
      }

      v47 = v72;
      sub_29D937848();
      v48 = sub_29D937878();
      v49 = sub_29D93A2A8();
      if (!os_log_type_enabled(v48, v49))
      {
        goto LABEL_17;
      }

      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v82 = v51;
      *v50 = 136315394;
      v66 = sub_29D93AF08();
      v68 = sub_29D6C2364(v66, v67, &v82);

      *(v50 + 4) = v68;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v82);
      v55 = "[%s] %s -> false: detection already enabled";
      goto LABEL_16;
    }

    v47 = v71;
    sub_29D937848();
    v48 = sub_29D937878();
    v49 = sub_29D93A2A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v82 = v51;
      *v50 = 136315394;
      v52 = sub_29D93AF08();
      v54 = sub_29D6C2364(v52, v53, &v82);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v82);
      v55 = "[%s] %s -> false: heart age gating enabled on active watch";
LABEL_16:
      _os_log_impl(&dword_29D677000, v48, v49, v55, v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v51, -1, -1);
      MEMORY[0x29ED6BE30](v50, -1, -1);
    }
  }

  else
  {
    v47 = v74;
    sub_29D937848();
    v48 = sub_29D937878();
    v49 = sub_29D93A2A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v82 = v51;
      *v50 = 136315394;
      v63 = sub_29D93AF08();
      v65 = sub_29D6C2364(v63, v64, &v82);

      *(v50 + 4) = v65;
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_29D6C2364(0xD00000000000002BLL, 0x800000029D95E650, &v82);
      v55 = "[%s] %s -> false: background heart rate not enabled";
      goto LABEL_16;
    }
  }

LABEL_17:

  (*(v77 + 8))(v47, v76);
LABEL_18:
  v69 = v78;
  *v78 = 0;
LABEL_19:
  swift_storeEnumTagMultiPayload();
  v81(v69);
  return sub_29D750FD0(v69, &qword_2A17B3A90);
}

uint64_t sub_29D7505C4()
{
  result = sub_29D934718();
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

uint64_t sub_29D750678@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_identifier;
  v4 = sub_29D934718();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29D7506F0()
{
  v1 = v0 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D750740(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D7507AC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D705FAC;
}

uint64_t sub_29D750870()
{
  v1 = sub_29D939968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939998();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = *(v0 + OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_queue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_29D750E40;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2443BD0;
  v14 = _Block_copy(aBlock);

  sub_29D939988();
  v16[1] = MEMORY[0x29EDCA190];
  sub_29D750EDC(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6C2DFC(0);
  sub_29D750EDC(&qword_2A1A24980, sub_29D6C2DFC);
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v12, v6, v14);
  _Block_release(v14);
  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
}

uint64_t sub_29D750B54(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    sub_29D74FD94(sub_29D750E60, a1);
  }

  return result;
}

void sub_29D750BD0(uint64_t a1)
{
  sub_29D750F34(0, &qword_2A17B3A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v12[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29D750E68(a1, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_29D750FD0(v6, &qword_2A17B3A90);
      v9 = &v8[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = *v6;
      v9 = &v8[OBJC_IVAR____TtC5Heart36BradycardiaAdvertisableFeatureSource_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
LABEL_6:
        v11 = *(v9 + 1);
        swift_getObjectType();
        sub_29D750EDC(&qword_2A17B3A98, type metadata accessor for BradycardiaAdvertisableFeatureSource);
        sub_29D934A38();

        sub_29D936978();
        return;
      }
    }
  }
}

uint64_t sub_29D750E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D750E68(uint64_t a1, uint64_t a2)
{
  sub_29D750F34(0, &qword_2A17B3A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D750EDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D750F34(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29D934928();
    sub_29D750EDC(&qword_2A17B1718, MEMORY[0x29EDC1918]);
    v3 = sub_29D93AEB8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29D750FD0(uint64_t a1, unint64_t *a2)
{
  sub_29D750F34(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D751038()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t protocol witness for RawStringContaining.rawString.getter in conformance HKHRAFibBurdenLoggingCategory()
{
  if (*v0 > 4uLL)
  {
    return 0;
  }

  v1 = **(&unk_29F356B18 + *v0);
  return sub_29D939E58();
}

unint64_t sub_29D7510F4()
{
  result = qword_2A1A22260;
  if (!qword_2A1A22260)
  {
    sub_29D75114C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A22260);
  }

  return result;
}

void sub_29D75114C()
{
  if (!qword_2A1A22268)
  {
    type metadata accessor for HKHRAFibBurdenLoggingCategory(255);
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22268);
    }
  }
}

id sub_29D7511A4()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
  [v0 setNumberStyle_];

  [v0 setRoundingMode_];
  result = [v0 setMaximumFractionDigits_];
  qword_2A17D0950 = v0;
  return result;
}

uint64_t sub_29D751228(double a1)
{
  v3 = sub_29D93A048();
  v4 = [v1 stringFromNumber_];

  if (v4)
  {
    v5 = sub_29D939D68();

    return v5;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = v1;
    v9 = sub_29D937878();
    v10 = sub_29D93A298();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 134218242;
      *(v11 + 4) = a1;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_29D677000, v9, v10, "Unable to format double %f using %@.", v11, 0x16u);
      sub_29D6ACA3C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    v14.n128_f64[0] = a1;

    return MEMORY[0x2A1C72718](v14);
  }
}

uint64_t sub_29D7513E4(uint64_t a1)
{
  v3 = sub_29D93A138();
  v4 = [v1 stringFromNumber_];

  if (v4)
  {
    v5 = sub_29D939D68();

    return v5;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = v1;
    v9 = sub_29D937878();
    v10 = sub_29D93A298();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 134218242;
      *(v11 + 4) = a1;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_29D677000, v9, v10, "Unable to format int %ld using %@.", v11, 0x16u);
      sub_29D6ACA3C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    return sub_29D93AD38();
  }
}

unint64_t sub_29D751594()
{
  result = qword_2A1A21FD0;
  if (!qword_2A1A21FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A21FD0);
  }

  return result;
}

unint64_t sub_29D7515F4()
{
  result = qword_2A17B3AA0;
  if (!qword_2A17B3AA0)
  {
    sub_29D75164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3AA0);
  }

  return result;
}

void sub_29D75164C()
{
  if (!qword_2A17B3AA8)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3AA8);
    }
  }
}

unint64_t sub_29D7516B0()
{
  result = qword_2A17B3AB0;
  if (!qword_2A17B3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3AB0);
  }

  return result;
}

uint64_t sub_29D751704()
{
  v1 = v0[4];
  sub_29D693E2C(v0, v0[3]);
  return sub_29D934128();
}

uint64_t sub_29D751768()
{
  sub_29D69417C((v0 + 24));
  v1 = OBJC_IVAR____TtCC5Heart27RelatedSampleTypesGenerator11Environment_logger;
  v2 = sub_29D937898();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D751814@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_29D934148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933FE8();
  sub_29D754194(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v8 = sub_29D933F58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D93DDB0;
  (*(v9 + 104))(v12 + v11, *MEMORY[0x29EDC3740], v8);
  sub_29D6E4080(v12);
  swift_setDeallocating();
  (*(v9 + 8))(v12 + v11, v8);
  swift_deallocClassInstance();
  v13 = *(v1 + 8);
  sub_29D7546B8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  v15 = *v1;
  *(inited + 32) = *v1;
  sub_29D935E88();
  v16 = v15;
  v17 = sub_29D7DB0E8(inited, v13);
  swift_setDeallocating();
  v18 = *(inited + 16);
  swift_arrayDestroy();
  sub_29D8E8608(v17);

  (*(v3 + 104))(v7, *MEMORY[0x29EDC3898], v2);
  return sub_29D934168();
}

uint64_t sub_29D751AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v44 = a3;
  v54 = a4;
  sub_29D753DCC();
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D753EF0();
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D753F84();
  v20 = *(v19 - 8);
  v50 = v19;
  v51 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19, v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D754054();
  v26 = *(v25 - 8);
  v52 = v25;
  v53 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v47 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  v31 = *(a1 + 8);
  v56 = *(a1 + 16);
  v32 = v30;
  sub_29D935E88();
  sub_29D738808(&v56, v55);

  v33 = sub_29D753630(v31, a3, a1, a2);

  sub_29D6AA360(&v56);
  v55[0] = v33;
  sub_29D753E60();
  sub_29D754194(0, &qword_2A17B3B18, sub_29D753E60, MEMORY[0x29EDC9A40]);
  sub_29D75490C(&qword_2A17B3AE0, sub_29D753E60);
  sub_29D7540E8();
  sub_29D9381D8();
  sub_29D75490C(&qword_2A17B3AF0, sub_29D753DCC);
  v34 = v45;
  sub_29D9384E8();
  (*(v46 + 8))(v12, v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v44;
  v36 = *(a1 + 16);
  *(v35 + 24) = *a1;
  *(v35 + 40) = v36;
  *(v35 + 56) = *(a1 + 32);
  *(v35 + 64) = a2;
  v37 = v32;
  sub_29D935E88();
  sub_29D738808(&v56, v55);
  sub_29D7546B8(0, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
  sub_29D75490C(&qword_2A17B3B00, sub_29D753EF0);

  v38 = v48;
  sub_29D9384C8();

  (*(v49 + 8))(v18, v38);
  v55[0] = MEMORY[0x29EDCA190];
  sub_29D75490C(&qword_2A17B3B10, sub_29D753F84);
  v39 = v47;
  v40 = v50;
  sub_29D938448();
  (*(v51 + 8))(v24, v40);
  sub_29D75490C(&qword_2A17B3B28, sub_29D754054);
  v41 = v52;
  v42 = sub_29D938418();
  result = (*(v53 + 8))(v39, v41);
  *v54 = v42;
  return result;
}

uint64_t sub_29D752070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[0] = a1;
  v6 = sub_29D93A218();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7547C8(0, &qword_2A17B3B48, sub_29D754874);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = v38 - v16;
  sub_29D7548DC(0);
  v19 = *(v18 - 8);
  v41 = v18;
  v42 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7546B8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29D940030;
  *(v24 + 32) = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:a1 predicate:0];
  v25 = [objc_opt_self() sortDescriptorsForMostRecentSamples];
  sub_29D69567C(0, &qword_2A17B50C0, 0x29EDBA0F0);
  sub_29D939F38();

  v26 = *(a3 + 16);
  sub_29D93A228();

  sub_29D754874();
  sub_29D75490C(&qword_2A17B3B58, MEMORY[0x29EDC2E58]);
  sub_29D938468();
  (*(v7 + 8))(v11, v6);
  v27 = *a2;
  v45 = *(a2 + 8);
  v44 = *(a2 + 16);
  v28 = swift_allocObject();
  v30 = v38[0];
  v29 = v38[1];
  *(v28 + 16) = a3;
  *(v28 + 24) = v29;
  v31 = *(a2 + 16);
  *(v28 + 32) = *a2;
  *(v28 + 48) = v31;
  *(v28 + 64) = *(a2 + 32);
  *(v28 + 72) = v30;

  v32 = v27;
  sub_29D753C5C(&v45, v43);
  sub_29D738808(&v44, v43);
  type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  v33 = v30;
  v34 = v39;
  sub_29D9380E8();

  (*(v40 + 8))(v17, v34);
  sub_29D75490C(&qword_2A17B3B68, sub_29D7548DC);
  v35 = v41;
  v36 = sub_29D938418();
  (*(v42 + 8))(v23, v35);
  return v36;
}

uint64_t sub_29D7524E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v86 = a4;
  v83 = a5;
  sub_29D754194(0, &qword_2A1A25768, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v84 = &v68 - v12;
  v13 = sub_29D9340F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v68 - v21;
  v23 = sub_29D7541F8(*a1);
  v85 = a3;
  sub_29D752BF8(a3, v23, v22);

  if (!v5)
  {
    v76 = a2;
    v77 = v19;
    v81 = 0;
    sub_29D754194(0, &qword_2A1A21F70, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v25 = *(v14 + 72);
    v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v71 = *(v14 + 80);
    v72 = v25;
    v73 = v27;
    v28 = swift_allocObject();
    v78 = xmmword_29D93DDB0;
    *(v28 + 16) = xmmword_29D93DDB0;
    v29 = *(v14 + 16);
    v74 = v26;
    v70 = v14 + 16;
    v69 = v29;
    v29(v28 + v26, v22, v13);
    v30 = sub_29D693E2C((v86 + 24), *(v86 + 48));
    v32 = v85[2];
    v31 = v85[3];
    v33 = v30[4];
    sub_29D693E2C(v30, v30[3]);
    v34 = v84;
    v75 = v32;
    v82 = v31;
    sub_29D934128();
    v35 = (*(v14 + 48))(v34, 1, v13);
    v79 = v14;
    v80 = v22;
    if (v35 == 1)
    {
      v36 = v28;
      sub_29D754518(v34);
      v37 = *v85;
      v90 = v85[1];
      sub_29D935E88();
      v38 = v37;
      sub_29D753C5C(&v90, &v88);
      v39 = sub_29D937878();
      v40 = sub_29D93A268();

      sub_29D7545A4(&v90);

      v41 = os_log_type_enabled(v39, v40);
      v42 = v76;
      if (v41)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v87 = v42;
        v88 = v44;
        *v43 = 136446466;
        sub_29D75461C();
        v45 = sub_29D939DA8();
        v47 = sub_29D6C2364(v45, v46, &v88);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        *(v43 + 14) = sub_29D6C2364(v75, v82, &v88);
        _os_log_impl(&dword_29D677000, v39, v40, "[%{public}s(%{public}s)]: No previous feed item found, adding new feed item.", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v44, -1, -1);
        MEMORY[0x29ED6BE30](v43, -1, -1);
      }

      v48 = v83;
      sub_29D7546B8(0, &qword_2A1A21F60, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
      v49 = swift_allocObject();
      *(v49 + 16) = v78;
      *(v49 + 32) = v36;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      result = (*(v79 + 8))(v80, v13);
      *v48 = v49;
    }

    else
    {
      v50 = v77;
      v51 = v13;
      (*(v14 + 32))(v77, v34, v13);
      v52 = *v85;
      v89[0] = v85[1];
      v53 = v52;
      sub_29D753C5C(v89, &v88);
      sub_29D935E88();
      v54 = sub_29D937878();
      v55 = sub_29D93A268();

      sub_29D7545A4(v89);

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 136446466;
        v87 = v76;
        v88 = v57;
        sub_29D75461C();
        v58 = sub_29D939DA8();
        v60 = sub_29D6C2364(v58, v59, &v88);
        v50 = v77;

        *(v56 + 4) = v60;
        *(v56 + 12) = 2082;
        *(v56 + 14) = sub_29D6C2364(v75, v82, &v88);
        _os_log_impl(&dword_29D677000, v54, v55, "[%{public}s(%{public}s)]: Previous feed item found, returning changes", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v57, -1, -1);
        MEMORY[0x29ED6BE30](v56, -1, -1);
      }

      v61 = v74;
      v62 = swift_allocObject();
      *(v62 + 16) = v78;
      v69(v62 + v61, v50, v51);
      v63 = v81;
      v64 = sub_29D939F58();
      if (v63)
      {

        v65 = *(v79 + 8);
        v65(v50, v51);
        return (v65)(v80, v51);
      }

      else
      {
        v66 = v64;

        v67 = *(v79 + 8);
        v67(v50, v51);
        result = (v67)(v80, v51);
        *v83 = v66;
      }
    }
  }

  return result;
}

uint64_t sub_29D752BF8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D933108();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_29D9330F8();
  v34 = a2;
  sub_29D754664();
  v15 = sub_29D9330E8();
  v17 = v16;

  if (!v3)
  {
    v19 = a1[2];
    v20 = a1[3];
    v30 = v17;
    v31 = v19;
    v21 = a1[4];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_29D935E88();
    v23 = NSStringFromClass(ObjCClassFromMetadata);
    v29 = sub_29D939D68();
    v32 = a1;

    (*(v7 + 104))(v11, *MEMORY[0x29EDC3740], v6);
    v24 = v30;
    sub_29D6AA230(v15, v30);
    sub_29D933FE8();
    sub_29D9340A8();
    sub_29D7546B8(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29D940030;
    v26 = *v32;
    *(inited + 32) = *v32;
    v27 = v26;
    sub_29D6E3D70(inited);
    swift_setDeallocating();
    v28 = *(inited + 16);
    swift_arrayDestroy();
    sub_29D9340B8();
    sub_29D934088();
    sub_29D934078();
    return sub_29D6AA284(v15, v24);
  }

  return result;
}

id sub_29D752E78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    if (v3 < 0)
    {
      v5 = *a1;
    }

    result = sub_29D93A928();
    if (!result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_6:
      *a2 = result;
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x29ED6AE30](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_29D752EFC@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X8>)
{
  v45 = a5;
  sub_29D754194(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v13 = &v44 - v12;
  v14 = *a1;
  v15 = *a3;
  v49 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = v15;
  sub_29D753C5C(&v49, &v48);
  v19 = v14;
  v46 = a4;
  sub_29D935E88();
  v20 = sub_29D937878();
  v21 = sub_29D93A278();

  sub_29D7545A4(&v49);

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v44 = v19;
    v24 = v23;
    v47 = a2;
    v48 = v23;
    *v22 = 136446978;
    sub_29D75461C();
    v25 = sub_29D939DA8();
    v27 = sub_29D6C2364(v25, v26, &v48);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_29D6C2364(v16, v17, &v48);
    *(v22 + 22) = 2080;
    if (v14)
    {
      v28 = 0x646E756F66;
    }

    else
    {
      v28 = 0x6E756F6620746F6ELL;
    }

    if (v14)
    {
      v29 = 0xE500000000000000;
    }

    else
    {
      v29 = 0xE900000000000064;
    }

    v30 = sub_29D6C2364(v28, v29, &v48);

    *(v22 + 24) = v30;
    *(v22 + 32) = 2080;
    v31 = [v46 identifier];
    v32 = sub_29D939D68();
    v34 = v33;

    v35 = sub_29D6C2364(v32, v34, &v48);

    *(v22 + 34) = v35;
    _os_log_impl(&dword_29D677000, v20, v21, "[%{public}s(%{public}s)]: Recent sample %s for %s", v22, 0x2Au);
    swift_arrayDestroy();
    v36 = v24;
    v19 = v44;
    MEMORY[0x29ED6BE30](v36, -1, -1);
    MEMORY[0x29ED6BE30](v22, -1, -1);
  }

  if (v14)
  {
    v37 = [v19 endDate];
    sub_29D933998();

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = sub_29D9339F8();
  (*(*(v39 - 8) + 56))(v13, v38, 1, v39);
  v40 = v45;
  *v45 = v46;
  v41 = type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  sub_29D6B1204(v13, v40 + *(v41 + 20));
  v42 = v46;

  return v42;
}

uint64_t sub_29D753288()
{
  v1 = OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_publisher);

  v5 = *(v0 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_configuration);
  v4 = *(v0 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_configuration + 8);
  v6 = *(v0 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_configuration + 24);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29D753388()
{
  result = sub_29D934178();
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

uint64_t sub_29D753458()
{
  result = sub_29D937898();
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

uint64_t sub_29D753500(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29D753548(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_29D7535B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29D753630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_29D93A928();
    result = MEMORY[0x29EDCA190];
    if (!v5)
    {
      return result;
    }

    v35 = MEMORY[0x29EDCA190];
    sub_29D93AAD8();
    result = sub_29D93A8C8();
    v32 = result;
    v33 = v7;
    v34 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  result = MEMORY[0x29EDCA190];
  if (!v5)
  {
    return result;
  }

  v35 = MEMORY[0x29EDCA190];
  sub_29D93AAD8();
  v8 = -1 << *(a1 + 32);
  result = sub_29D93A898();
  v9 = *(a1 + 36);
  v32 = result;
  v33 = v9;
  v34 = 0;
LABEL_7:
  v10 = 0;
  while (v10 < v5)
  {
    if (__OFADD__(v10++, 1))
    {
      goto LABEL_31;
    }

    v14 = v32;
    v13 = v33;
    v15 = v34;
    sub_29D703A78(v32, v33, v34, a1);
    v17 = v16;
    sub_29D752070(v16, a3, a4);

    sub_29D93AAB8();
    v18 = *(v35 + 16);
    sub_29D93AAE8();
    sub_29D93AAF8();
    result = sub_29D93AAC8();
    if (v28)
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      if (sub_29D93A8E8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_29D753CDC(0, &qword_2A17B3B40, MEMORY[0x29EDC9B88]);
      v11 = sub_29D93A108();
      sub_29D93A978();
      result = v11(v31, 0);
      if (v10 == v5)
      {
LABEL_28:
        sub_29D703574(v32, v33, v34);
        return v35;
      }
    }

    else
    {
      if (v15)
      {
        goto LABEL_36;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v19 = 1 << *(a1 + 32);
      if (v14 >= v19)
      {
        goto LABEL_32;
      }

      v20 = v14 >> 6;
      v21 = *(a1 + 56 + 8 * (v14 >> 6));
      if (((v21 >> v14) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v13)
      {
        goto LABEL_34;
      }

      v22 = v21 & (-2 << (v14 & 0x3F));
      if (v22)
      {
        v19 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v20 << 6;
        v24 = v20 + 1;
        v25 = (a1 + 64 + 8 * v20);
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_29D703574(v14, v13, 0);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_27;
          }
        }

        result = sub_29D703574(v14, v13, 0);
      }

LABEL_27:
      v32 = v19;
      v33 = v13;
      v34 = 0;
      if (v10 == v5)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t *sub_29D753950(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v30 = *v3;
  sub_29D6CE508();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D934178();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v33 = *(a1 + 1);
  v21 = *a1;
  v32 = a1[1];
  v20 = v32;
  v22 = v3 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_configuration;
  *v22 = v21;
  *(v22 + 1) = v20;
  *(v22 + 4) = *(a1 + 4);
  v23 = v19;
  sub_29D753C5C(&v33, v31);
  sub_29D738808(&v32, v31);
  sub_29D751814(v18);
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_domain, v18, v13);
  v24 = swift_allocObject();
  v25 = a1[1];
  *(v24 + 16) = *a1;
  *(v24 + 32) = v25;
  *(v24 + 48) = *(a1 + 4);
  *(v24 + 56) = a2;
  *(v24 + 64) = v30;
  v26 = v23;
  sub_29D753C5C(&v33, v31);
  sub_29D738808(&v32, v31);
  sub_29D6CE59C();
  sub_29D75490C(&qword_2A1A24AB0, sub_29D6CE59C);

  sub_29D938378();
  sub_29D75490C(&qword_2A1A24A00, sub_29D6CE508);
  v27 = sub_29D938418();
  (*(v8 + 8))(v12, v7);
  *(v3 + OBJC_IVAR____TtC5Heart27RelatedSampleTypesGenerator_publisher) = v27;
  return v3;
}

uint64_t sub_29D753C5C(uint64_t a1, uint64_t a2)
{
  sub_29D753CDC(0, &qword_2A1A22248, MEMORY[0x29EDC9B90]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D753CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D69567C(255, &qword_2A1A24930, 0x29EDBAD78);
    v7 = sub_29D753D58();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D753D58()
{
  result = qword_2A1A24920;
  if (!qword_2A1A24920)
  {
    sub_29D69567C(255, &qword_2A1A24930, 0x29EDBAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24920);
  }

  return result;
}

void sub_29D753DCC()
{
  if (!qword_2A17B3AD0)
  {
    sub_29D753E60();
    sub_29D75490C(&qword_2A17B3AE0, sub_29D753E60);
    v0 = sub_29D9381C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3AD0);
    }
  }
}

void sub_29D753E60()
{
  if (!qword_2A17B3AD8)
  {
    type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(255);
    sub_29D6A0CD0();
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3AD8);
    }
  }
}

void sub_29D753EF0()
{
  if (!qword_2A17B3AE8)
  {
    sub_29D753DCC();
    sub_29D75490C(&qword_2A17B3AF0, sub_29D753DCC);
    v0 = sub_29D938188();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3AE8);
    }
  }
}

void sub_29D753F84()
{
  if (!qword_2A17B3AF8)
  {
    sub_29D753EF0();
    sub_29D7546B8(255, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    sub_29D75490C(&qword_2A17B3B00, sub_29D753EF0);
    v0 = sub_29D938178();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3AF8);
    }
  }
}

void sub_29D754054()
{
  if (!qword_2A17B3B08)
  {
    sub_29D753F84();
    sub_29D75490C(&qword_2A17B3B10, sub_29D753F84);
    v0 = sub_29D9380A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3B08);
    }
  }
}

unint64_t sub_29D7540E8()
{
  result = qword_2A17B3B20;
  if (!qword_2A17B3B20)
  {
    sub_29D754194(255, &qword_2A17B3B18, sub_29D753E60, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3B20);
  }

  return result;
}

void sub_29D754194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7541F8(uint64_t a1)
{
  v2 = type metadata accessor for RelatedSampleTypesCacheObject.DataTypeState(0);
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_29D73F430(MEMORY[0x29EDCA190]);
  v18 = *(a1 + 16);
  if (!v18)
  {
    return v17;
  }

  v19 = *(v11 + 20);
  v20 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v40 = *(v12 + 72);
  v41 = v19;
  while (1)
  {
    sub_29D754708(v20, v16);
    v22 = [*v16 identifier];
    v23 = sub_29D939D68();
    v25 = v24;

    sub_29D6A0A20(v16 + v41, v10);
    sub_29D75476C(v16);
    sub_29D6943BC(v10, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v17;
    v27 = sub_29D6907F0(v23, v25);
    v29 = v17[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = v28;
    if (v17[3] < v32)
    {
      sub_29D6913D4(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_29D6907F0(v23, v25);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v33)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v38 = v27;
    sub_29D693480();
    v27 = v38;
    if (v33)
    {
LABEL_3:
      v21 = v27;

      v17 = v43;
      sub_29D72EE5C(v7, v43[7] + *(v42 + 72) * v21);
      goto LABEL_4;
    }

LABEL_11:
    v17 = v43;
    v43[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (v17[6] + 16 * v27);
    *v35 = v23;
    v35[1] = v25;
    sub_29D6943BC(v7, v17[7] + *(v42 + 72) * v27);
    v36 = v17[2];
    v31 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v31)
    {
      goto LABEL_17;
    }

    v17[2] = v37;
LABEL_4:
    v20 += v40;
    if (!--v18)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_29D93ADC8();
  __break(1u);
  return result;
}

uint64_t sub_29D754518(uint64_t a1)
{
  sub_29D754194(0, &qword_2A1A25768, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D7545A4(uint64_t a1)
{
  sub_29D753CDC(0, &qword_2A1A22248, MEMORY[0x29EDC9B90]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D75461C()
{
  result = qword_2A17B3B30;
  if (!qword_2A17B3B30)
  {
    type metadata accessor for RelatedSampleTypesGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B3B30);
  }

  return result;
}

unint64_t sub_29D754664()
{
  result = qword_2A17B3B38;
  if (!qword_2A17B3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3B38);
  }

  return result;
}

void sub_29D7546B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D754708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D75476C(uint64_t a1)
{
  v2 = type metadata accessor for RelatedSampleTypesGenerator.SampleTypeDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D7547C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_29D93A218();
    a3(255);
    sub_29D75490C(&qword_2A17B3B58, MEMORY[0x29EDC2E58]);
    v5 = sub_29D9380F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D754874()
{
  if (!qword_2A17B3B50)
  {
    sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3B50);
    }
  }
}

uint64_t sub_29D75490C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D75497C()
{
  sub_29D69567C(319, &qword_2A1A24930, 0x29EDBAD78);
  if (v0 <= 0x3F)
  {
    sub_29D754194(319, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29D754A40(uint64_t a1, int a2)
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

uint64_t sub_29D754A88(uint64_t result, int a2, int a3)
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

uint64_t sub_29D754BA4()
{
  v1 = v0;
  v2 = type metadata accessor for HypertensionNotificationDetailView();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v27[-v10];
  v12 = sub_29D933D88();
  v13 = [v0 objectAtIndex:v12 forSection:sub_29D933DA8()];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();
  swift_unknownObjectRetain();
  v15 = sub_29D6F82E0();
  swift_unknownObjectRetain();
  v16 = v15;
  v17 = [v1 healthStore];
  *v11 = swift_getKeyPath();
  sub_29D755978(0, &qword_2A17B2398, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v18 = v11 + v3[8];
  v28 = 0;
  sub_29D939688();
  v19 = v30;
  *v18 = v29;
  *(v18 + 1) = v19;
  v20 = v11 + v3[9];
  v28 = 0;
  sub_29D939688();
  v21 = v30;
  *v20 = v29;
  *(v20 + 1) = v21;
  v22 = v11 + v3[10];
  *v22 = v16;
  *(v22 + 1) = v14;
  v22[16] = 3;
  *(v11 + v3[11]) = v17;
  *(v11 + v3[7]) = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B8] healthStore:v17];
  sub_29D7559DC(v11, v8);
  sub_29D755A40();
  v24 = objc_allocWithZone(v23);
  v25 = sub_29D939A28();
  swift_unknownObjectRelease_n();

  sub_29D755AFC(v11);
  return v25;
}

id sub_29D755184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionEventListDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D7551EC(uint64_t a1, void *a2, void *a3)
{
  v60[1] = a2;
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D694294(a1, v63);
  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  if (!swift_dynamicCast())
  {
    goto LABEL_18;
  }

  v11 = v62;
  v12 = sub_29D939D28();
  v13 = [a3 dequeueReusableCellWithIdentifier_];

  v14 = v13;
  if (!v13)
  {
    v15 = objc_allocWithZone(MEMORY[0x29EDC7D10]);
    v16 = sub_29D939D28();
    v17 = [v15 initWithStyle:3 reuseIdentifier:v16];

    if (v17)
    {
      v14 = v17;
      goto LABEL_5;
    }

    __break(1u);
LABEL_18:
    result = sub_29D93AB28();
    __break(1u);
    return result;
  }

LABEL_5:
  v60[0] = v11;
  v18 = v13;
  v19 = [v14 textLabel];

  if (v19)
  {
    v20 = [objc_opt_self() localizedPossibleHypertensionTitle];
    [v19 setText_];
  }

  v21 = [v14 detailTextLabel];
  if (v21)
  {
    v22 = v21;
    v23 = [v60[0] endDate];
    sub_29D933998();

    v24 = sub_29D933958();
    (*(v6 + 8))(v10, v5);
    v25 = HKLocalizedStringForDateAndTemplate();

    [v22 setText_];
  }

  v26 = [v14 detailTextLabel];
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() secondaryLabelColor];
    [v27 setTextColor_];
  }

  [v14 setAccessoryType_];
  [v14 setSelectionStyle_];
  sub_29D755978(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v29 = swift_allocObject();
  v61 = xmmword_29D93DDB0;
  *(v29 + 16) = xmmword_29D93DDB0;
  v30 = sub_29D933D98();
  v31 = MEMORY[0x29EDC9C10];
  *(v29 + 56) = MEMORY[0x29EDC9BA8];
  *(v29 + 64) = v31;
  *(v29 + 32) = v30;
  v32 = sub_29D939D88();
  v34 = v33;
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  inited = swift_initStackObject();
  *(inited + 16) = v61;
  *(inited + 32) = v32;
  *(inited + 40) = v34;
  sub_29D935E88();
  v36 = v14;
  static String.hypertensionAccessibilityIdentifier(_:)();
  swift_setDeallocating();
  v37 = *(inited + 16);
  swift_arrayDestroy();
  v38 = sub_29D939D28();

  [v36 setAccessibilityIdentifier_];

  v39 = swift_allocObject();
  *(v39 + 16) = v61;
  v40 = sub_29D933D98();
  *(v39 + 56) = MEMORY[0x29EDC9BA8];
  *(v39 + 64) = MEMORY[0x29EDC9C10];
  *(v39 + 32) = v40;
  v41 = sub_29D939D88();
  v43 = v42;
  v44 = [v36 textLabel];
  if (v44)
  {
    v45 = v44;
    v46 = swift_initStackObject();
    *(v46 + 16) = v61;
    *(v46 + 32) = v41;
    *(v46 + 40) = v43;
    sub_29D935E88();
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_setDeallocating();
    v47 = *(v46 + 16);
    swift_arrayDestroy();
    v48 = sub_29D939D28();

    [v45 setAccessibilityIdentifier_];
  }

  v49 = swift_allocObject();
  *(v49 + 16) = v61;
  v50 = sub_29D933D98();
  *(v49 + 56) = MEMORY[0x29EDC9BA8];
  *(v49 + 64) = MEMORY[0x29EDC9C10];
  *(v49 + 32) = v50;
  v51 = sub_29D939D88();
  v53 = v52;
  v54 = [v36 detailTextLabel];
  if (v54)
  {
    v55 = v54;
    v56 = swift_initStackObject();
    *(v56 + 16) = v61;
    *(v56 + 32) = v51;
    *(v56 + 40) = v53;
    sub_29D935E88();
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_setDeallocating();
    v57 = *(v56 + 16);
    swift_arrayDestroy();
    v58 = sub_29D939D28();

    [v55 setAccessibilityIdentifier_];
  }

  else
  {

    v58 = v60[0];
  }

  return v36;
}

void sub_29D755978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D7559DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationDetailView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D755A40()
{
  if (!qword_2A17B3B88)
  {
    type metadata accessor for HypertensionNotificationDetailView();
    sub_29D755AA4();
    v0 = sub_29D939A38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3B88);
    }
  }
}

unint64_t sub_29D755AA4()
{
  result = qword_2A17B3B90;
  if (!qword_2A17B3B90)
  {
    type metadata accessor for HypertensionNotificationDetailView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3B90);
  }

  return result;
}

uint64_t sub_29D755AFC(uint64_t a1)
{
  v2 = type metadata accessor for HypertensionNotificationDetailView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DataTypeDetailHeartbeatSeriesDisclosureItemsDataSource()
{
  result = qword_2A17B3B98;
  if (!qword_2A17B3B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D755C44()
{
  sub_29D935BA8();

  return swift_deallocClassInstance();
}

uint64_t sub_29D755C7C()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  sub_29D935F18();
  v6 = sub_29D935CF8();
  sub_29D936978();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_29D755D9C()
{
  v1 = *v0;
  v45 = sub_29D933A58();
  v44 = *(v45 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v45, v3);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_29D9334A8();

  v8 = [v6 bundleForClass_];
  sub_29D9334A8();

  sub_29D934B38();
  v9 = objc_opt_self();
  v10 = [v9 heartbeatSeriesType];
  sub_29D934B08();

  v11 = [v9 heartbeatSeriesType];
  sub_29D934B18();

  sub_29D69F108(&v56, &v52);
  v47 = v53;
  v46 = v52;
  v48 = v54;
  if (*(&v53 + 1))
  {
    sub_29D679D3C(&v46, v49);
    v12 = MEMORY[0x29EDCA190];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_29D68FAC0(0, v12[2] + 1, 1, v12);
      v55 = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_29D68FAC0((v14 > 1), v15 + 1, 1, v12);
      v55 = v12;
    }

    v16 = v50;
    v17 = v51;
    v18 = sub_29D693DDC(v49, v50);
    v19 = *(*(v16 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v18, v18);
    v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21);
    sub_29D693D44(v15, v21, &v55, v16, v17);
    sub_29D69417C(v49);
  }

  else
  {
    sub_29D69F230(&v46);
    v12 = MEMORY[0x29EDCA190];
  }

  sub_29D69F108(&v57, &v52);
  v47 = v53;
  v46 = v52;
  v48 = v54;
  if (*(&v53 + 1))
  {
    sub_29D679D3C(&v46, v49);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v12;
    if ((v23 & 1) == 0)
    {
      v12 = sub_29D68FAC0(0, v12[2] + 1, 1, v12);
      v55 = v12;
    }

    v25 = v12[2];
    v24 = v12[3];
    if (v25 >= v24 >> 1)
    {
      v12 = sub_29D68FAC0((v24 > 1), v25 + 1, 1, v12);
      v55 = v12;
    }

    v26 = v50;
    v27 = v51;
    v28 = sub_29D693DDC(v49, v50);
    v29 = *(*(v26 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v28, v28);
    v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31);
    sub_29D693D44(v25, v31, &v55, v26, v27);
    sub_29D69417C(v49);
  }

  else
  {
    sub_29D69F230(&v46);
  }

  sub_29D756818(0, &qword_2A17B1830, sub_29D69F188, MEMORY[0x29EDC9C68]);
  swift_arrayDestroy();
  sub_29D756818(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v33 = *(sub_29D9359D8() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  sub_29D775BD0(v12);

  v36 = v43;
  sub_29D933A48();
  sub_29D933A18();
  v37 = *(v44 + 8);
  v38 = v45;
  v37(v36, v45);
  sub_29D9359C8();
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(&v52, "MutableArray<");
  HIWORD(v52) = -4864;
  sub_29D933A48();
  v39 = sub_29D933A18();
  v41 = v40;
  v37(v36, v38);
  MEMORY[0x29ED6A240](v39, v41);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  return sub_29D935B28();
}

uint64_t sub_29D756570()
{
  if (sub_29D936368() > 1u)
  {
    v4 = sub_29D935248();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_29D935238();
    sub_29D935438();

    sub_29D9353F8();

    type metadata accessor for DataTypeDetailHeartbeatSeriesDisclosureItemsDataSource();

    sub_29D935418();
  }

  else
  {
    v0 = sub_29D936338();
    v1 = type metadata accessor for DataTypeDetailHeartbeatSeriesDisclosureItemsDataSource();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    sub_29D755D9C();

    sub_29D935438();

    sub_29D9353F8();

    sub_29D935248();

    sub_29D935408();
  }

  sub_29D75673C();
  sub_29D7567C0();

  v7 = sub_29D9353F8();

  return v7;
}

void sub_29D75673C()
{
  if (!qword_2A17B3BA8)
  {
    type metadata accessor for DataTypeDetailHeartbeatSeriesDisclosureItemsDataSource();
    sub_29D935248();
    v0 = sub_29D935C38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3BA8);
    }
  }
}

unint64_t sub_29D7567C0()
{
  result = qword_2A17B3BB0;
  if (!qword_2A17B3BB0)
  {
    sub_29D75673C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B3BB0);
  }

  return result;
}

void sub_29D756818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D75687C()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDB9F88]) init];
  v1 = sub_29D939D28();
  [v0 setDateTemplate_];

  qword_2A17D0978 = v0;
}

uint64_t sub_29D7568EC()
{
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v1 = v0 + *(type metadata accessor for AFibBurdenPDFChartHeaderContentProvider() + 20);
  v2 = [*(v1 + *(type metadata accessor for AFibBurdenPDFChartViewModel() + 28)) localization];
  v3 = [v2 displayName];

  v4 = sub_29D939D68();
  v6 = v5;

  v7 = sub_29D756A80();
  v9 = v8;
  sub_29D6CC0B8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D93F680;
  v11 = MEMORY[0x29EDC99B0];
  *(v10 + 56) = MEMORY[0x29EDC99B0];
  v12 = sub_29D69AD24();
  *(v10 + 32) = v4;
  *(v10 + 40) = v6;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = v7;
  *(v10 + 80) = v9;
  v13 = sub_29D939D88();

  return v13;
}

uint64_t sub_29D756A80()
{
  v1 = &v0[*(type metadata accessor for AFibBurdenPDFChartHeaderContentProvider() + 20)];
  v2 = type metadata accessor for AFibBurdenPDFChartViewModel();
  v3 = &v1[*(v2 + 32)];
  v4 = *v3;
  if (v4 == 2)
  {
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    return sub_29D9334A8();
  }

  else
  {
    v6 = v2;
    v8 = *(v3 + 1);
    v7 = *(v3 + 2);
    v9 = *&v1[*(v2 + 28)];
    v10 = [v9 presentation];
    v11 = sub_29D93A048();
    v12 = [v10 adjustedValueForDaemonValue_];

    v13 = [v9 presentation];
    v14 = sub_29D93A048();
    v15 = [v13 adjustedValueForDaemonValue_];

    if ((v4 & 1) == 0 || *v0)
    {
      v18 = sub_29D8A4D08(*v0);
      v19 = *&v1[*(v6 + 24)];
      if ([v12 isEqualToNumber_])
      {
        [v12 doubleValue];
        v21 = [objc_opt_self() quantityWithUnit:v19 doubleValue:v20];
        v22 = [v21 localizedStringForType_];
        v23 = sub_29D939D68();
      }

      else
      {
        v24 = objc_opt_self();
        [v12 doubleValue];
        v26 = v25;
        v27 = objc_opt_self();
        v28 = [v27 quantityWithUnit:v19 doubleValue:v26];
        [v15 doubleValue];
        v29 = [v27 quantityWithUnit:v19 doubleValue:?];
        v30 = [v24 inclusiveRangeWithMinimum:v28 maximum:v29];

        v31 = [v30 localizedStringForType_];
        v23 = sub_29D939D68();
      }

      return v23;
    }

    else
    {
      v16 = HKAFibBurdenClampedLowerBoundLocalizedString();
      v17 = sub_29D939D68();

      return v17;
    }
  }
}

uint64_t type metadata accessor for AFibBurdenPDFChartHeaderContentProvider()
{
  result = qword_2A17B3BB8;
  if (!qword_2A17B3BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D756E64()
{
  result = type metadata accessor for AFibBurdenPDFChartViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29D756EE0()
{
  v1 = v0;
  v2 = MEMORY[0x29EDC2008];
  sub_29D75AB90(0, &qword_2A17B3C58, type metadata accessor for HypertensionNotificationsStatusSectionDataSource, MEMORY[0x29EDC2280], MEMORY[0x29EDC2008]);
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v75 = &v71 - v9;
  sub_29D75AAFC();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v72 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v74 = &v71 - v16;
  sub_29D75AB90(0, &unk_2A17B6110, type metadata accessor for HypertensionNotificationsEducationSectionDataSource, MEMORY[0x29EDC1E78], v2);
  v76 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v24);
  v71 = &v71 - v25;
  v77 = sub_29D9371A8();
  v82 = *(v77 - 8);
  v26 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v77, v27);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D75A6F4(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x2A1C7C4A8](v30 - 8, v32);
  v35 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v33, v36);
  v38 = &v71 - v37;
  v39 = sub_29D9399A8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v39, v42);
  v44 = (&v71 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D6FC794();
  *v44 = sub_29D93A468();
  (*(v40 + 104))(v44, *MEMORY[0x29EDCA278], v39);
  LOBYTE(v2) = sub_29D9399B8();
  result = (*(v40 + 8))(v44, v39);
  if (v2)
  {
    v46 = v1[4];
    v47 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus;
    swift_beginAccess();
    sub_29D6E8508(v1 + v47, v38);
    v48 = qword_2A17D08C0;
    swift_beginAccess();

    sub_29D70D908(v38, v46 + v48);
    swift_endAccess();
    sub_29D710DE8();

    sub_29D6AC7A0(v38);
    sub_29D6E8508(v1 + v47, v35);
    v49 = v77;
    if ((*(v82 + 48))(v35, 1, v77) == 1)
    {
      sub_29D6AC7A0(v35);
      v50 = v1[3];
      v51 = *MEMORY[0x29EDC1FF8];
      (*(v18 + 104))(v23, v51, v76);

      sub_29D935528();

      v52 = v1[5];
      (*(v80 + 104))(v73, v51, v81);

      sub_29D935528();

      v53 = v1[7];
      (*(v78 + 104))(v72, v51, v79);

      sub_29D935528();
    }

    else
    {
      v54 = v82;
      (*(v82 + 32))(v29, v35, v49);
      v55 = *MEMORY[0x29EDC5160];
      v73 = sub_29D9371B8();
      v56 = [v73 areAllRequirementsSatisfied];
      v57 = v1[3];
      v58 = *MEMORY[0x29EDC2000];
      v59 = *MEMORY[0x29EDC1FF8];
      if (v56)
      {
        v60 = v58;
      }

      else
      {
        v60 = v59;
      }

      (*(v18 + 104))(v71, v60, v76);

      sub_29D935528();

      v61 = *MEMORY[0x29EDBA570];
      v62 = sub_29D9371B8();
      v63 = [v62 areAllRequirementsSatisfied];

      v64 = v1[7];
      if (v63)
      {
        v65 = v58;
      }

      else
      {
        v65 = v59;
      }

      (*(v78 + 104))(v74, v65, v79);

      sub_29D935528();

      v66 = *MEMORY[0x29EDC5168];
      v67 = sub_29D9371B8();
      v68 = [v67 areAllRequirementsSatisfied];

      v69 = v1[5];
      if (v63 & 1 | ((v68 & 1) == 0))
      {
        v70 = v59;
      }

      else
      {
        v70 = v58;
      }

      (*(v80 + 104))(v75, v70, v81);

      sub_29D935528();

      return (*(v54 + 8))(v29, v49);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_29D75765C(uint64_t a1, void *a2)
{
  v63 = a2;
  v68 = a1;
  *&v74 = sub_29D936058();
  v73 = *(v74 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v74, v4);
  v72 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29D9362D8();
  v70 = *(v71 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v71, v7);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_29D936D58();
  v66 = *(v67 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v67, v10);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_29D936D68();
  v60 = *(v61 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v61, v13);
  v59 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_29D936128();
  v62 = *(v64 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x2A1C7C4A8](v64, v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_29D936258();
  v19 = *(v55 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v55, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9364C8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v58 = sub_29D9334A8();
  v57 = v26;

  v27 = v2[7];
  v28 = sub_29D75A88C(&qword_2A17B3BE0, sub_29D75A2F8);
  v76 = v27;
  v77 = v28;
  v29 = v2[5];
  v30 = sub_29D75A4B4(&qword_2A17B3C08, &qword_2A17B3C10, type metadata accessor for HypertensionNotificationsStatusSectionDataSource, MEMORY[0x29EDC2280]);
  v78 = v29;
  v79 = v30;
  v31 = v2[8];
  v56 = v2;
  v32 = sub_29D75A88C(&qword_2A17B3C18, type metadata accessor for HypertensionNotificationsSampleListHideableDataSource);
  v80 = v31;
  v81 = v32;
  v33 = v2[3];
  v34 = sub_29D75A4B4(&qword_2A17B3C20, &unk_2A17B6130, type metadata accessor for HypertensionNotificationsEducationSectionDataSource, MEMORY[0x29EDC1E78]);
  v82 = v33;
  v83 = v34;
  v35 = v63;

  sub_29D936238();
  v36 = sub_29D936248();
  (*(v19 + 8))(v23, v55);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = v36;
  v85 = OpaqueTypeConformance2;
  v38 = v59;
  *v59 = v35;
  (*(v60 + 104))(v38, *MEMORY[0x29EDC2B00], v61);
  (*(v66 + 104))(v65, *MEMORY[0x29EDC2AF0], v67);
  sub_29D9360F8();
  sub_29D936118();
  v39 = sub_29D936108();
  (*(v62 + 8))(v18, v64);
  v40 = swift_getOpaqueTypeConformance2();
  v86 = v39;
  v87 = v40;
  v41 = v69;
  sub_29D9362A8();
  v42 = sub_29D9362B8();
  (*(v70 + 8))(v41, v71);
  v43 = swift_getOpaqueTypeConformance2();
  v88 = v42;
  v89 = v43;

  v44 = v35;
  v45 = v72;
  sub_29D936038();
  sub_29D936048();
  (*(v73 + 8))(v45, v74);
  v46 = sub_29D758278();
  v48 = v47;
  sub_29D936978();
  v90 = v46;
  v91 = v48;
  v49 = 32;
  v50 = MEMORY[0x29EDCA190];
  do
  {
    v74 = *&v75[v49];
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_29D68FDBC(0, v50[2] + 1, 1, v50);
    }

    v52 = v50[2];
    v51 = v50[3];
    if (v52 >= v51 >> 1)
    {
      v50 = sub_29D68FDBC((v51 > 1), v52 + 1, 1, v50);
    }

    v50[2] = v52 + 1;
    *&v50[2 * v52 + 4] = v74;
    v49 += 16;
  }

  while (v49 != 160);
  sub_29D695734(0, &qword_2A17B1090);
  swift_arrayDestroy();
  return v50;
}

void *sub_29D757EA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_29D936258();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = sub_29D936228();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_29D6945AC(v3 + 88, v32);
  v17 = a2;
  sub_29D936218();
  v18 = sub_29D936208();
  (*(v12 + 8))(v16, v11);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v33 = v18;
  *(&v33 + 1) = OpaqueTypeConformance2;
  *&v34 = *(v3 + 16);
  *(&v34 + 1) = MEMORY[0x29EDC1E78];
  v20 = v17;

  sub_29D936238();
  v21 = sub_29D936248();
  (*(v6 + 8))(v10, v5);
  v22 = swift_getOpaqueTypeConformance2();
  *&v35 = v21;
  *(&v35 + 1) = v22;
  v31 = v33;
  swift_unknownObjectRetain();
  v23 = MEMORY[0x29EDCA190];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_29D68FDBC(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_29D68FDBC((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  *&v23[2 * v25 + 4] = v31;
  v31 = v34;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_29D68FDBC(0, v23[2] + 1, 1, v23);
  }

  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = sub_29D68FDBC((v26 > 1), v27 + 1, 1, v23);
  }

  v23[2] = v27 + 1;
  *&v23[2 * v27 + 4] = v31;
  v31 = v35;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_29D68FDBC(0, v23[2] + 1, 1, v23);
  }

  v29 = v23[2];
  v28 = v23[3];
  if (v29 >= v28 >> 1)
  {
    v23 = sub_29D68FDBC((v28 > 1), v29 + 1, 1, v23);
  }

  v23[2] = v29 + 1;
  *&v23[2 * v29 + 4] = v31;
  sub_29D695734(0, &qword_2A17B1090);
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_29D758278()
{
  v1 = [objc_opt_self() dataTypeWithCode_];
  if (v1)
  {
    v2 = v1;
    sub_29D934B38();
    v3 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_context;
    v4 = v0;
    v5 = sub_29D936338();
    sub_29D934B08();

    sub_29D75A518();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    v7 = v19;
    v8 = v20;
    v9 = sub_29D693E2C(v18, v19);
    *(v6 + 56) = v7;
    *(v6 + 64) = *(v8 + 8);
    v10 = sub_29D693F78((v6 + 32));
    (*(*(v7 - 8) + 16))(v10, v9, v7);
    sub_29D75A584();
    swift_getOpaqueTypeConformance2();
    sub_29D935578();

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_29D93DDB0;
    *(v11 + 56) = sub_29D935DA8();
    *(v11 + 64) = sub_29D75A88C(&qword_2A17B2708, MEMORY[0x29EDC23F8]);
    v12 = sub_29D693F78((v11 + 32));
    sub_29D758628(v4 + v3, v12);
    sub_29D75A5E4();
    sub_29D75A88C(&qword_2A17B3C30, sub_29D75A5E4);
    v13 = sub_29D9355F8();

    sub_29D75A88C(&qword_2A17B3C40, sub_29D75A660);
    sub_29D69417C(v18);
  }

  else
  {
    sub_29D75A518();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29D93DDB0;
    v15 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_context;
    *(v14 + 56) = sub_29D935DA8();
    *(v14 + 64) = sub_29D75A88C(&qword_2A17B2708, MEMORY[0x29EDC23F8]);
    v16 = sub_29D693F78((v14 + 32));
    sub_29D758628(v0 + v15, v16);
    sub_29D75A584();
    swift_getOpaqueTypeConformance2();
    v13 = sub_29D9355F8();

    sub_29D75A88C(&qword_2A17B3C30, sub_29D75A5E4);
  }

  return v13;
}

uint64_t sub_29D758628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v78 = a2;
  v73 = *v2;
  v3 = sub_29D936BE8();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v75 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D935C78();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v74 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC9C68];
  sub_29D75A6F4(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v70 = v59 - v15;
  v68 = sub_29D936378();
  v64 = *(v68 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v68, v17);
  v66 = v18;
  v67 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D75A6F4(0, &unk_2A17B5520, MEMORY[0x29EDC7770], v11);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19 - 8, v21);
  v62 = v59 - v22;
  v63 = sub_29D937928();
  v61 = *(v63 - 8);
  v23 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v63, v24);
  v26 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_29D9378C8();
  v27 = *(v60 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v60, v29);
  v31 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D933A58();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v32, v35);
  v37 = v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29D937B88();
  v38 = *(v65 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v65, v40);
  v42 = v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B78();
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v79 = 0x65744974756F6241;
  v80 = 0xE90000000000006DLL;
  sub_29D933A48();
  sub_29D75A88C(&qword_2A17B3C50, MEMORY[0x29EDB9C08]);
  v43 = sub_29D93AD38();
  MEMORY[0x29ED6A240](v43);

  (*(v33 + 8))(v37, v32);
  v59[2] = v79;
  v59[1] = v80;
  v44 = v65;
  v81 = v65;
  v82 = MEMORY[0x29EDC7800];
  v45 = sub_29D693F78(&v79);
  (*(v38 + 16))(v45, v42, v44);
  sub_29D75A6F4(0, &qword_2A17B2C60, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v46 = *(sub_29D937948() - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v49 = v60;
  (*(v27 + 104))(v31, *MEMORY[0x29EDC7768], v60);
  v50 = sub_29D9378D8();
  (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
  sub_29D937918();
  sub_29D937908();
  (*(v61 + 8))(v26, v63);
  (*(v27 + 8))(v31, v49);
  v51 = v64;
  v53 = v67;
  v52 = v68;
  (*(v64 + 16))(v67, v69, v68);
  v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v55 = (v66 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v51 + 32))(v56 + v54, v53, v52);
  *(v56 + v55) = v73;
  v57 = sub_29D9379E8();
  (*(*(v57 - 8) + 56))(v70, 1, 1, v57);
  (*(v71 + 104))(v74, *MEMORY[0x29EDC22C8], v72);
  (*(v76 + 104))(v75, *MEMORY[0x29EDC2A38], v77);
  sub_29D935D98();
  return (*(v38 + 8))(v42, v44);
}

void sub_29D758F40(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a3;
  v40 = sub_29D937898();
  v38 = *(v40 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v40, v5);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D75A6F4(0, &qword_2A17B2B20, MEMORY[0x29EDC4378], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v36 - v10;
  v12 = sub_29D939A78();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v15 = sub_29D936378();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15, v18);
  v19 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a2, v15);
  v20 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v16 + 32))(v22 + v20, v19, v15);
  v23 = v36;
  *(v22 + v21) = v36;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v36 = v23;
  sub_29D936338();
  v24 = *MEMORY[0x29EDBA6F0];
  v25 = type metadata accessor for HypertensionNotificationsFeatureRegulatoryInfoTransformProvider();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = v24;
  v29 = sub_29D939A98();
  v42 = v25;
  v43 = MEMORY[0x29EDC43B8];
  v41 = v29;
  v30 = sub_29D936338();
  sub_29D7596EC(v30, v11);

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v31 = v40;
  v32 = sub_29D69C6C0(v40, qword_2A1A2C008);
  (*(v38 + 16))(v39, v32, v31);
  sub_29D939A68();
  sub_29D71B61C();
  v34 = objc_allocWithZone(v33);
  v35 = sub_29D939A28();
  [v36 showAdaptively:v35 sender:0];
}

void sub_29D759304(uint64_t a1, void *a2)
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2C008);
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136446466;
    v7 = sub_29D93AF08();
    v9 = sub_29D6C2364(v7, v8, &v27);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D95EE60, &v27);
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s.%{public}s]: Presenting onboarding", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  v10 = sub_29D936338();
  v11 = type metadata accessor for HypertensionNotificationsOnboardingViewController();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = 0;
  v12[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_navigateToDetailRoomUponOnboardingCompletion] = 0;
  v13 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:v10];
  type metadata accessor for HypertensionNotificationsOnboardingFlowManager();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  sub_29D933F18();

  v15 = sub_29D933F08();
  v16 = sub_29D6C9F00(v14, v15);
  type metadata accessor for HypertensionNotificationsOnboardingViewControllerFactory();
  v17 = swift_allocObject();
  *(v17 + 16) = 1;
  v29.receiver = v12;
  v29.super_class = v11;
  v18 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
  [v18 setModalPresentationStyle_];
  v19 = type metadata accessor for HypertensionNotificationsOnboardingCoordinator();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_rootViewController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2A244D708;
  swift_unknownObjectWeakAssign();
  *&v20[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_model] = v16;
  *&v20[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_factory] = v17;
  v21 = v16;

  v22 = HKLogHeartRateCategory();
  v23 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v22 healthDataSource:v10];

  *&v20[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_eventSubmissionManager] = v23;
  v20[OBJC_IVAR____TtC5Heart46HypertensionNotificationsOnboardingCoordinator_provenance] = 1;
  v28.receiver = v20;
  v28.super_class = v19;
  v24 = objc_msgSendSuper2(&v28, sel_init);
  sub_29D8E53B0();
  sub_29D8E5270(0, 0, 5);

  v25 = *&v18[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator];
  *&v18[OBJC_IVAR____TtC5Heart49HypertensionNotificationsOnboardingViewController_coordinator] = v24;

  [a2 presentViewController:v18 animated:1 completion:0];
}

uint64_t sub_29D7596EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53[1] = *MEMORY[0x29EDCA608];
  sub_29D75A6F4(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v7 = [HKPreferredRegulatoryDomainProvider() currentEstimate];
  sub_29D936978();
  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F0] healthStore:a1];
    v9 = [v7 ISOCode];
    if (!v9)
    {
      sub_29D939D68();
      v9 = sub_29D939D28();
    }

    v53[0] = 0;
    v10 = [v8 onboardingEligibilityForCountryCode:v9 error:v53];

    if (v10)
    {
      v11 = v53[0];
      if ([v10 isEligible])
      {
        if (qword_2A17B0D68 != -1)
        {
          swift_once();
        }

        sub_29D9334A8();
        sub_29D9334A8();
        sub_29D9334A8();
        sub_29D9336E8();

        sub_29D939A48();

        v12 = sub_29D939A58();
        result = (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
        goto LABEL_28;
      }

      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v36 = sub_29D937898();
      sub_29D69C6C0(v36, qword_2A1A2C008);
      v37 = v10;
      v38 = sub_29D937878();
      v39 = sub_29D93A2A8();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v53[0] = v41;
        *v40 = 136446722;
        v42 = sub_29D93AF08();
        v52 = v8;
        v44 = sub_29D6C2364(v42, v43, v53);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2082;
        *(v40 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D95ED60, v53);
        *(v40 + 22) = 2082;
        v45 = [v37 ineligibilityReasonsDescription];
        v46 = sub_29D939D68();
        v48 = v47;

        v49 = sub_29D6C2364(v46, v48, v53);

        *(v40 + 24) = v49;
        _os_log_impl(&dword_29D677000, v38, v39, "[%{public}s.%{public}s]: Not eligible for onboarding with ineligibility reasons: %{public}s", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v41, -1, -1);
        MEMORY[0x29ED6BE30](v40, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v25 = v53[0];
      v26 = sub_29D933598();

      swift_willThrow();
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v27 = sub_29D937898();
      sub_29D69C6C0(v27, qword_2A1A2C008);
      v28 = sub_29D937878();
      v29 = sub_29D93A2A8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v53[0] = v31;
        *v30 = 136446466;
        v32 = sub_29D93AF08();
        v34 = v8;
        v35 = sub_29D6C2364(v32, v33, v53);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2082;
        *(v30 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D95ED60, v53);
        _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s.%{public}s]: Failed to check eligibility for re-enable action", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v31, -1, -1);
        MEMORY[0x29ED6BE30](v30, -1, -1);
      }

      else
      {
      }
    }

    v50 = sub_29D939A58();
    result = (*(*(v50 - 8) + 56))(a2, 1, 1, v50);
LABEL_28:
    v51 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v14 = sub_29D937898();
  sub_29D69C6C0(v14, qword_2A1A2C008);
  v15 = sub_29D937878();
  v16 = sub_29D93A288();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v53[0] = v18;
    *v17 = 136446466;
    v19 = sub_29D93AF08();
    v21 = sub_29D6C2364(v19, v20, v53);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_29D6C2364(0xD000000000000038, 0x800000029D95ED60, v53);
    _os_log_impl(&dword_29D677000, v15, v16, "[%{public}s.%{public}s]: Failed to get current country estimate", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v18, -1, -1);
    MEMORY[0x29ED6BE30](v17, -1, -1);
  }

  v22 = sub_29D939A58();
  v23 = *(*(v22 - 8) + 56);
  v24 = *MEMORY[0x29EDCA608];

  return v23(a2, 1, 1, v22);
}

uint64_t sub_29D759FD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  sub_29D69417C((v0 + 88));
  v8 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_context;
  v9 = sub_29D936378();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_29D6AC7A0(v0 + OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus);
  return v0;
}

uint64_t sub_29D75A098()
{
  sub_29D759FD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HypertensionNotificationsDataTypeDetailDataSourceProvider()
{
  result = qword_2A17B3BD0;
  if (!qword_2A17B3BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D75A144()
{
  v0 = sub_29D936378();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_29D75A6F4(319, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_29D75A270(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x29EDBA6F0];
  v5 = objc_allocWithZone(sub_29D936E78());
  v6 = v4;
  v7 = sub_29D936E68();
  [a1 showViewController:v7 sender:v3];
}

void sub_29D75A2F8()
{
  if (!qword_2A17B3BE8)
  {
    sub_29D75A38C();
    sub_29D75A88C(&qword_2A17B3C00, sub_29D75A38C);
    v0 = sub_29D935548();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3BE8);
    }
  }
}

void sub_29D75A38C()
{
  if (!qword_2A17B3BF0)
  {
    sub_29D75A420();
    sub_29D75A88C(&unk_2A17B6100, sub_29D75A420);
    v0 = sub_29D9357B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3BF0);
    }
  }
}

void sub_29D75A420()
{
  if (!qword_2A17B60F0)
  {
    sub_29D934528();
    sub_29D75A88C(&qword_2A17B3BF8, MEMORY[0x29EDC3C88]);
    v0 = sub_29D936A28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B60F0);
    }
  }
}

uint64_t sub_29D75A4B4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D75AB90(255, a2, a3, a4, MEMORY[0x29EDC2020]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D75A518()
{
  if (!qword_2A17B1138)
  {
    sub_29D695734(255, &qword_2A17B1140);
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1138);
    }
  }
}

void sub_29D75A584()
{
  if (!qword_2A17B3C28)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B3C28);
    }
  }
}

void sub_29D75A5E4()
{
  if (!qword_2A17B3C38)
  {
    sub_29D75A584();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29D935E48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3C38);
    }
  }
}

void sub_29D75A660()
{
  if (!qword_2A17B3C48)
  {
    sub_29D75A5E4();
    sub_29D75A88C(&qword_2A17B3C30, sub_29D75A5E4);
    v0 = sub_29D935E48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B3C48);
    }
  }
}

void sub_29D75A6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D75A758(void *a1)
{
  v3 = *(sub_29D936378() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29D758F40(a1, v1 + v4, v5);
}

void sub_29D75A7F4()
{
  v1 = *(sub_29D936378() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_29D759304(v0 + v2, v4);
}

uint64_t sub_29D75A88C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D75A8D4()
{
  v0 = sub_29D9356A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v22[-1] - v8;
  sub_29D936318();
  sub_29D693E2C(v22, v22[3]);
  v10 = sub_29D933EC8();
  v11 = sub_29D93A598();

  sub_29D69417C(v22);
  sub_29D75A420();
  v13 = objc_allocWithZone(v12);
  v14 = v11;
  v15 = sub_29D936A38();
  sub_29D935658();
  sub_29D935618();
  v16 = *(v1 + 8);
  v16(v6, v0);
  v17 = sub_29D935638();
  *v18 = 0x4034000000000000;
  v17(v22, 0);
  sub_29D75A88C(&unk_2A17B6100, sub_29D75A420);
  v19 = sub_29D9355A8();

  v16(v9, v0);
  return v19;
}

void sub_29D75AAFC()
{
  if (!qword_2A17B60E0)
  {
    sub_29D75A38C();
    sub_29D75A88C(&qword_2A17B3C00, sub_29D75A38C);
    v0 = sub_29D935508();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B60E0);
    }
  }
}

void sub_29D75AB90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D75ABFC()
{
  v31 = sub_29D933AB8();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v31, v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D933CE8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  v9 = sub_29D9334A8();
  v29 = v10;
  v30 = v9;
  v28 = sub_29D9356E8();
  sub_29D6945AC(v0 + 24, v33);
  v11 = sub_29D9334A8();
  v27[0] = v12;
  v27[1] = v11;
  sub_29D75BFC4(0, &qword_2A17B3C60, MEMORY[0x29EDC2148], MEMORY[0x29EDC9E90]);
  v13 = sub_29D9357D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29D93F680;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x29EDC2138], v13);
  v19(v18 + v15, *MEMORY[0x29EDC2140], v13);
  sub_29D6E573C(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = v31;
  (*(v1 + 104))(v5, *MEMORY[0x29EDB9C78], v31);
  sub_29D933AC8();
  (*(v1 + 8))(v5, v20);
  v21 = v28;
  v22 = sub_29D9356D8();
  v33[3] = v21;
  v33[4] = MEMORY[0x29EDC20A0];
  v33[0] = v22;
  sub_29D75B008(v32);
  v23 = objc_allocWithZone(sub_29D935BD8());
  v24 = sub_29D935BC8();
  sub_29D75C318(&qword_2A17B3C68, v25, type metadata accessor for AFibBurdenPDFProvider);
  swift_unknownObjectRetain();
  sub_29D935BB8();
  return v24;
}

uint64_t sub_29D75B008@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_29D935C28();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29D935348();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v32, v9);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D9356F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_29D9363E8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6945AC(v1 + 24, v37);
  sub_29D9363D8();
  v23 = sub_29D9359A8();
  (*(v18 + 8))(v22, v17);
  sub_29D75BF64();
  v24 = sub_29D9359A8();
  *v16 = sub_29D935708();
  (*(v12 + 104))(v16, *MEMORY[0x29EDC20A8], v11);
  v25 = swift_allocObject();
  v25[2] = v2;
  v25[3] = v23;
  v25[4] = v24;
  (*(v7 + 104))(v31, *MEMORY[0x29EDC1F40], v32);
  (*(v34 + 104))(v33, *MEMORY[0x29EDC22A0], v35);
  v26 = sub_29D935368();
  v27 = MEMORY[0x29EDC1F50];
  v28 = v36;
  v36[3] = v26;
  v28[4] = v27;
  sub_29D693F78(v28);

  return sub_29D935358();
}

uint64_t sub_29D75B398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D937898();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v62 = &v57 - v12;
  sub_29D75BFC4(0, &qword_2A17B3C78, MEMORY[0x29EDC1C50], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v57 - v16;
  sub_29D75BFC4(0, &qword_2A17B3C80, sub_29D75C028, MEMORY[0x29EDC16E0]);
  v19 = v18;
  v70 = v18;
  v20 = sub_29D75C114();
  v71 = v20;
  v68 = v20;
  *&v69 = a2;
  v67 = v19;
  *&v66 = a3;

  sub_29D934DE8();
  v21 = sub_29D934DF8();
  (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  sub_29D6945AC(&v69, v65);
  v22 = swift_allocObject();
  sub_29D679D3C(v65, v22 + 16);
  sub_29D6945AC(&v66, v64);
  v23 = swift_allocObject();
  sub_29D679D3C(v64, v23 + 16);
  *(&v73 + 1) = sub_29D9352D8();
  v74 = MEMORY[0x29EDC1EE8];
  sub_29D693F78(&v72);

  sub_29D9352C8();
  sub_29D69417C(&v66);
  sub_29D69417C(&v69);
  v61 = sub_29D935E78();
  sub_29D69417C(&v72);
  v24 = *(a1 + 16);
  *(&v73 + 1) = &type metadata for AFibBurdenPDFChartProvider;
  v74 = sub_29D75C1AC();
  v25 = swift_allocObject();
  *&v72 = v25;
  v25[7] = v19;
  v25[8] = v20;
  v25[4] = a2;
  v25[12] = v19;
  v25[13] = v20;
  v25[9] = a3;
  v26 = objc_allocWithZone(sub_29D934948());

  v25[14] = [v26 init];
  v25[2] = v24;
  v27 = objc_opt_self();
  v28 = v24;
  v29 = [v27 sharedInstanceForHealthStore_];
  v30 = [v29 createHKUnitPreferenceController];

  v25[3] = v30;
  v60 = sub_29D935E78();
  sub_29D69417C(&v72);
  sub_29D75C0AC(0, &qword_2A17B3CA0, &qword_2A17B3CA8, MEMORY[0x29EDC2208], MEMORY[0x29EDC9E90]);
  v31 = swift_allocObject();
  v59 = xmmword_29D93DDB0;
  *(v31 + 16) = xmmword_29D93DDB0;
  *(v31 + 56) = v19;
  *(v31 + 64) = v20;
  *(v31 + 32) = a2;
  v32 = swift_allocObject();
  *(v32 + 16) = v59;
  *(v32 + 56) = v19;
  *(v32 + 64) = v20;
  *(v32 + 32) = a3;
  v33 = qword_2A1A24660;

  v34 = v28;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_29D69C6C0(v6, qword_2A1A2BF28);
  v36 = v63;
  v37 = *(v63 + 16);
  v38 = v62;
  v37(v62, v35, v6);
  v39 = type metadata accessor for AFibBurdenPDFHistogramSectionProvider();
  v72 = 0u;
  v73 = 0u;
  v74 = 0;
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  *(v42 + 2) = v31;
  *(v42 + 3) = v32;
  *(v42 + 4) = v34;
  v37(&v42[OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_logger], v38, v6);
  v43 = &v42[OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_analysisBlock];
  *v43 = sub_29D918AC8;
  v43[1] = 0;
  sub_29D75C200(&v72, &v66);
  v44 = v38;
  if (v67)
  {
    sub_29D75C290(&v72);
    (*(v36 + 8))(v38, v6);
    sub_29D679D3C(&v66, &v69);
  }

  else
  {
    v45 = v58;
    v37(v58, v44, v6);
    v46 = type metadata accessor for AFibBurdenPDFHistogramRenderableFactory();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = v44;
    v50 = v34;
    v51 = sub_29D916EEC(v50, v45);

    v70 = v46;
    v71 = &off_2A244E798;
    *&v69 = v51;
    sub_29D75C290(&v72);
    (*(v36 + 8))(v49, v6);
    if (v67)
    {
      sub_29D75C290(&v66);
    }
  }

  sub_29D679D3C(&v69, &v42[OBJC_IVAR____TtC5Heart37AFibBurdenPDFHistogramSectionProvider_renderableFactory]);
  *(&v73 + 1) = v39;
  v74 = sub_29D75C318(&qword_2A17B3CC0, 255, type metadata accessor for AFibBurdenPDFHistogramSectionProvider);
  *&v72 = v42;
  v52 = sub_29D935E78();
  sub_29D69417C(&v72);
  sub_29D75C360();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_29D943EA0;
  v54 = v60;
  *(v53 + 32) = v61;
  *(v53 + 40) = v54;
  *(v53 + 48) = v52;
  v55 = sub_29D935E68();

  return v55;
}

uint64_t sub_29D75BAE4()
{
  sub_29D69417C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_29D75BB74(char a1)
{
  v3 = *v1;
  type metadata accessor for AFibBurdenDataTypeInteractionAnalyticsEvent();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = v1[8];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  v9[4] = sub_29D75C3E4;
  v9[5] = v6;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29D8E44F0;
  v9[3] = &unk_2A2444040;
  v7 = _Block_copy(v9);

  [v5 submitEvent:v4 completion:v7];
  _Block_release(v7);
}

void sub_29D75BCAC(int a1, id a2, char a3, void *a4)
{
  if (a2)
  {
    v7 = a2;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v8 = sub_29D937898();
    sub_29D69C6C0(v8, qword_2A1A2BF28);
    v9 = a2;
    v10 = sub_29D937878();
    v11 = sub_29D93A288();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      v25 = a4;
      *v12 = 136446723;
      swift_getMetatypeMetadata();
      v14 = sub_29D939DA8();
      v16 = sub_29D6C2364(v14, v15, &v24);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2081;
      if (a3)
      {
        if (a3 == 1)
        {
          v17 = 0x7765695620464450;
        }

        else
        {
          v17 = 0xD00000000000001ALL;
        }

        if (a3 == 1)
        {
          v18 = 0xEA00000000006465;
        }

        else
        {
          v18 = 0x800000029D95EF70;
        }
      }

      else
      {
        v17 = 0xD000000000000010;
        v18 = 0x800000029D95EF90;
      }

      v19 = sub_29D6C2364(v17, v18, &v24);

      *(v12 + 14) = v19;
      *(v12 + 22) = 2082;
      v25 = a2;
      v20 = a2;
      sub_29D6B7370(0, &qword_2A1A24850);
      v21 = sub_29D939DA8();
      v23 = sub_29D6C2364(v21, v22, &v24);

      *(v12 + 24) = v23;
      _os_log_impl(&dword_29D677000, v10, v11, "[%{public}s] Error when sending analytics event for interaction %{private}s): %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v12, -1, -1);
    }

    else
    {
    }
  }
}