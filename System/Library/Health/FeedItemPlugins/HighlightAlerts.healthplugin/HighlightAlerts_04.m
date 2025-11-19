uint64_t sub_29DA232FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29DA2334C(uint64_t a1)
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
  v11[1] = sub_29D9CFE50;

  return sub_29D9ED89C(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_29DA2344C()
{
  if (!qword_2A1A2CB80)
  {
    sub_29D9C79FC(255, &qword_2A1A2CAA0, 0x29EDBAD30);
    v0 = sub_29DA349A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CB80);
    }
  }
}

void sub_29DA234BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D9FA590(255, &qword_2A1A2D3E8);
    v4 = sub_29DA35204();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29DA23540()
{
  if (!qword_2A1A2DAF8)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB00, 0x29EDBAD38);
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2DAF8);
    }
  }
}

uint64_t sub_29DA235A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29DA235E8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

void sub_29DA23634()
{
  if (!qword_2A1A2DA20)
  {
    sub_29DA234BC(255, &qword_2A1A2D3C0, sub_29DA236A8);
    v0 = sub_29DA33B64();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2DA20);
    }
  }
}

void sub_29DA236A8()
{
  if (!qword_2A1A2D440)
  {
    sub_29D9C79FC(255, &qword_2A1A2E010, 0x29EDBAD60);
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D440);
    }
  }
}

uint64_t sub_29DA2373C()
{
  v1 = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_29DA336F4() - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + 16);
  v9 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  return sub_29D9E6C10(v8, v0 + v2, v6, v7, v9);
}

uint64_t sub_29DA23828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DA23890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29DA238F8()
{
  v1 = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_29DA336F4() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for HighlightAlertDistributionConfiguration() - 8);
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  sub_29D9D67DC(v8, v9, v10, v0 + v2, v0 + v5, v11);
}

uint64_t sub_29DA23A54(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(a1(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_29DA336F4() - 8);
  v12 = *(v2 + 16);
  v13 = *(v2 + v6);
  v14 = *(v2 + v7);
  v15 = v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return a2(v12, v2 + v5, v13, v14, v2 + v9, v15);
}

uint64_t sub_29DA23BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29DA23C20()
{
  if (!qword_2A17D1728)
  {
    sub_29DA23C90(255, &qword_2A17D1730);
    v0 = sub_29DA35104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17D1728);
    }
  }
}

void sub_29DA23C90(uint64_t a1, unint64_t *a2)
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

uint64_t sub_29DA23D04(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
  return sub_29DA34CB4() & 1;
}

uint64_t sub_29DA23D6C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29DA234BC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29DA23DD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29DA23E28()
{
  if (!qword_2A1A2E008)
  {
    sub_29D9FA590(255, &qword_2A1A2DFF8);
    v0 = sub_29DA35104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2E008);
    }
  }
}

unint64_t sub_29DA23E90()
{
  result = qword_2A1A2E020;
  if (!qword_2A1A2E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2E020);
  }

  return result;
}

uint64_t sub_29DA23EE4()
{
  v1 = *(sub_29DA34604() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_29DA0C63C(v0 + v2, v6, v7);
}

void sub_29DA23F90()
{
  if (!qword_2A17D14B0)
  {
    sub_29DA24014(255, &qword_2A17D14B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    v0 = sub_29DA35104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17D14B0);
    }
  }
}

void sub_29DA24014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29DA24068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    v7 = sub_29D9C79FC(255, &qword_2A1A2D460, 0x29EDBAD80);
    v8 = sub_29D9D0160();
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29DA2410C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_29DA24118()
{
  v1 = *(sub_29DA34604() - 8);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v0 + 16);
  return sub_29DA33BF4();
}

uint64_t sub_29DA241A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29DA0A764();
}

uint64_t sub_29DA241D4()
{
  v1 = sub_29DA336F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

void sub_29DA24324(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t sub_29DA243A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DA243E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29DA1BF9C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29DA2458C(void *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = sub_29DA34644();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29DA336F4();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v49 - v10;
  sub_29DA25048();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29DA33754();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v49 - v22;
  v24 = [a1 eventUUID];
  if (!v24)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v25 = v24;
  sub_29DA34854();

  sub_29DA33704();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_29DA250A0(v15);
    v26 = type metadata accessor for HighlightAlertState();
    v56 = v26;
    sub_29DA250FC();
    v27 = sub_29DA34894();
    v29 = v28;
    v30 = v53;
    sub_29DA34614();

    v31 = a1;
    v32 = sub_29DA34634();
    v33 = sub_29DA34B84();

    if (!os_log_type_enabled(v32, v33))
    {

      (*(v49 + 8))(v30, v50);
      goto LABEL_9;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v56 = v35;
    *v34 = 136446467;
    v36 = sub_29D9EBB44(v27, v29, &v56);

    *(v34 + 4) = v36;
    *(v34 + 12) = 2081;
    v37 = [v31 eventUUID];

    if (v37)
    {
      v38 = sub_29DA34854();
      v40 = v39;

      v41 = sub_29D9EBB44(v38, v40, &v56);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_29D9BB000, v32, v33, "%{public}s unable to decode UUID with string value: %{private}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v35, -1, -1);
      MEMORY[0x29ED6E4C0](v34, -1, -1);

      (*(v49 + 8))(v53, v50);
LABEL_9:
      (*(*(v26 - 8) + 56))(v54, 1, 1, v26);
      return;
    }

    goto LABEL_14;
  }

  v42 = *(v17 + 32);
  v42(v23, v15, v16);
  (*(v17 + 16))(v21, v23, v16);
  [a1 eventDate];
  sub_29DA33634();
  [a1 expirationDate];
  sub_29DA33634();
  v43 = [a1 acknowledged];
  if ([a1 hasDismissed])
  {
    v44 = [a1 dismissed];

    (*(v17 + 8))(v23, v16);
  }

  else
  {
    (*(v17 + 8))(v23, v16);

    v44 = 2;
  }

  v45 = v54;
  v42(v54, v21, v16);
  v46 = type metadata accessor for HighlightAlertState();
  v47 = v52;
  v48 = *(v51 + 32);
  v48(&v45[v46[5]], v11, v52);
  v48(&v45[v46[6]], v55, v47);
  v45[v46[7]] = v43;
  v45[v46[8]] = v44;
  (*(*(v46 - 1) + 56))(v45, 0, 1, v46);
}

id sub_29DA24BD4()
{
  v1 = v0;
  v2 = sub_29DA33B04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(HighlightAlertCodableState) init];
  if (result)
  {
    v8 = result;
    sub_29DA33AD4();
    v9 = sub_29DA33AE4();
    v10 = *(v3 + 8);
    v10(v6, v2);
    [v8 setLatestSupportedVersion_];
    sub_29DA33AD4();
    v11 = sub_29DA33AF4();
    v10(v6, v2);
    [v8 setMinimumSupportedVersion_];
    v12 = type metadata accessor for HighlightAlertState();
    v13 = v1 + v12[5];
    sub_29DA33644();
    [v8 setEventDate_];
    v14 = v1 + v12[6];
    sub_29DA33644();
    [v8 setExpirationDate_];
    sub_29DA33714();
    v15 = sub_29DA34824();

    [v8 setEventUUID_];

    [v8 setAcknowledged_];
    v16 = *(v1 + v12[8]);
    if (v16 != 2)
    {
      [v8 setDismissed_];
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_29DA24E20(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_29DA24E74;
}

id (*sub_29DA24EB0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_29DA24F04;
}

id (*sub_29DA24F50(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_29DA24FA4;
}

id (*sub_29DA24FE0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_29DA25034;
}

void sub_29DA25048()
{
  if (!qword_2A1A2D330)
  {
    sub_29DA33754();
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D330);
    }
  }
}

uint64_t sub_29DA250A0(uint64_t a1)
{
  sub_29DA25048();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29DA250FC()
{
  result = qword_2A17D1738;
  if (!qword_2A17D1738)
  {
    type metadata accessor for HighlightAlertState();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17D1738);
  }

  return result;
}

uint64_t sub_29DA25160(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x29ED6D970](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_29DA34D34();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_29DA25288()
{
  v0 = sub_29DA33BE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34014();
  v5 = sub_29DA343C4();
  v6 = [v5 displayTypeIdentifier];

  if (v6 != 254)
  {
    if (v6 == 276)
    {
      if (qword_2A17D11F8 != -1)
      {
        swift_once();
      }

      v7 = qword_2A17D5098;
      v8 = sub_29DA34824();
      v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

      if (v9)
      {
        return;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_13:
    v21 = sub_29DA343C4();
    v22 = [v21 displayTypeIcon];

    if (!v22)
    {
      v23 = sub_29DA34474();
      v24 = [v23 listIcon];

      if (!v24)
      {
        v25 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

        [v25 init];
      }
    }

    return;
  }

  v10 = [objc_opt_self() sharedBehavior];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  v12 = [v10 features];

  if (!v12)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v13 = [v12 hermit];

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [objc_opt_self() systemPinkColor];
  v15 = objc_opt_self();
  v16 = [v15 configurationWithHierarchicalColor_];

  v17 = [v15 configurationWithPointSize:4 weight:38.0];
  v18 = [v16 configurationByApplyingConfiguration_];

  v19 = v18;
  sub_29DA33BD4();
  v20 = sub_29DA33BC4();
  (*(v1 + 8))(v4, v0);
  if (!v20)
  {
    [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }
}

void sub_29DA25680()
{
  sub_29DA34014();
  v0 = sub_29DA343C4();
  v1 = [v0 displayTypeIdentifier];

  if (v1 != 254)
  {
    if (v1 == 276)
    {
      if (qword_2A17D11F0 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v6 = sub_29DA343C4();
    v7 = [v6 localization];

    v8 = [v7 displayName];
    sub_29DA34854();

    return;
  }

  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 features];

    if (v4)
    {
      v5 = [v4 hermit];

      if (v5)
      {
        if (qword_2A17D11F0 == -1)
        {
LABEL_9:
          sub_29DA335C4();
          return;
        }

LABEL_11:
        swift_once();
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29DA2591C()
{
  v0 = sub_29DA25B00();
  sub_29D9CA300();
  if (v1)
  {
    sub_29D9CA1C8();
    sub_29DA340D4();
    v4[3] = type metadata accessor for HighlightAlertTextSupport();
    v4[0] = v0;

    v2 = sub_29DA340B4();

    sub_29DA2B8A8(v4);
  }

  else
  {

    return 0;
  }

  return v2;
}

id sub_29DA25A14()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore) viewControllerFactory];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_29DA25A88()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_29DA25A14();
    v4 = [v3 createHKUnitPreferenceController];

    v5 = *(v0 + 24);
    *(v0 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_29DA25B00()
{
  v1 = type metadata accessor for HighlightAlert(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel____lazy_storage___textSupport;
  if (*(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel____lazy_storage___textSupport))
  {
    v6 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel____lazy_storage___textSupport);
  }

  else
  {
    sub_29DA2B704(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert, v4, type metadata accessor for HighlightAlert);
    v7 = sub_29DA25A88();
    v8 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore);
    v9 = type metadata accessor for HighlightAlertTextSupport();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v6 = swift_allocObject();
    *(v6 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport____lazy_storage___shouldNotShowPregnancy) = 2;
    sub_29DA2B840(v4, v6 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_highlightAlert, type metadata accessor for HighlightAlert);
    *(v6 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_unitPreferenceController) = v7;
    *(v6 + OBJC_IVAR____TtC15HighlightAlerts25HighlightAlertTextSupport_healthStore) = v8;
    v12 = *(v0 + v5);
    *(v0 + v5) = v6;
    v13 = v8;
  }

  return v6;
}

uint64_t sub_29DA25C58(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  sub_29DA262B4(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29DA34014();
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel____lazy_storage___textSupport) = 0;
  sub_29DA2B704(a1, v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert, type metadata accessor for HighlightAlert);
  *(v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore) = a2;
  v31 = a3;
  sub_29D9FA5EC(a3, v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_pinnedContentManager);
  LODWORD(a3) = *(type metadata accessor for HighlightAlert(0) + 20);
  sub_29D9CC410();
  v15 = a2;
  v16 = sub_29DA34774();
  v17 = [v16 sampleType];

  v18 = [v17 identifier];
  sub_29DA34854();

  v19 = v11;
  v20 = v30;
  sub_29DA34004();
  (*(v20 + 32))(v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_primaryDataType, v14, v19);
  v21 = sub_29DA34774();
  v22 = [v21 sampleType];

  v23 = [v22 hk:v15 metadataValueDisplayTypeInStore:?];
  if (v23)
  {
    v24 = [v23 objectType];

    v25 = [v24 identifier];
    sub_29DA34854();

    v26 = v29;
    sub_29DA34004();

    sub_29D9C7968(v31);
    sub_29DA29E08(a1, type metadata accessor for HighlightAlert);
    (*(v20 + 56))(v26, 0, 1, v19);
    sub_29DA2B840(v26, v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_associatedDataType, sub_29DA262B4);
  }

  else
  {

    sub_29D9C7968(v31);
    sub_29DA29E08(a1, type metadata accessor for HighlightAlert);
    (*(v20 + 56))(v4 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_associatedDataType, 1, 1, v19);
  }

  return v4;
}

uint64_t sub_29DA26014()
{
  sub_29DA29E08(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert, type metadata accessor for HighlightAlert);
  v1 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_primaryDataType;
  v2 = sub_29DA34014();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_29DA29E08(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_associatedDataType, sub_29DA262B4);
  v3 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel____lazy_storage___textSupport);

  sub_29D9C7968((v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_pinnedContentManager));
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HighlightAlertViewModel()
{
  result = qword_2A1A2DA00;
  if (!qword_2A1A2DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DA2618C()
{
  v0 = type metadata accessor for HighlightAlert(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_29DA34014();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_29DA262B4(319);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_29DA262E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *&v314 = sub_29DA34274();
  v313 = *(v314 - 8);
  v4 = *(v313 + 8);
  MEMORY[0x2A1C7C4A8](v314);
  v312 = &v290 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = sub_29DA34364();
  v319 = *(v318 - 1);
  v6 = *(v319 + 64);
  MEMORY[0x2A1C7C4A8](v318);
  v326 = &v290 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_29DA336F4();
  v303 = *(v304 - 8);
  v8 = *(v303 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v304);
  v302 = &v290 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v301 = &v290 - v11;
  v12 = sub_29DA33554();
  v323 = *(v12 - 8);
  v324 = v12;
  v13 = *(v323 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v299 = &v290 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v307 = &v290 - v16;
  v17 = sub_29DA340E4();
  v320 = *(v17 - 8);
  v321 = v17;
  v18 = *(v320 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v309 = &v290 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_29DA34154();
  v327 = *(v325 - 8);
  v20 = *(v327 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v325);
  v296 = &v290 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v311 = &v290 - v24;
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v305 = &v290 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v297 = &v290 - v28;
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v308 = &v290 - v30;
  MEMORY[0x2A1C7C4A8](v29);
  v316 = &v290 - v31;
  sub_29D9E5E4C(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x2A1C7C4A8](v32 - 8);
  v298 = &v290 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v38 = &v290 - v37;
  v39 = MEMORY[0x2A1C7C4A8](v36);
  v306 = &v290 - v40;
  MEMORY[0x2A1C7C4A8](v39);
  v322 = &v290 - v41;
  v42 = sub_29DA343B4();
  v43 = *(v42 - 8);
  v328 = v42;
  v329 = v43;
  v44 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v42);
  v46 = &v290 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2B62C(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v47 - 8);
  v50 = &v290 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for HighlightAlertDiagramInfo(0);
  v52 = *(v51 - 1);
  v53 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v51);
  v55 = &v290 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v1 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
  v57 = type metadata accessor for HighlightAlert(0);
  sub_29DA2B704(v56 + *(v57 + 32), v50, sub_29DA2B62C);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_29DA29E08(v50, sub_29DA2B62C);
    v58 = sub_29DA34094();
    return (*(*(v58 - 8) + 56))(a1, 1, 1, v58);
  }

  v294 = a1;
  sub_29DA2B840(v50, v55, type metadata accessor for HighlightAlertDiagramInfo);
  v60 = *(v57 + 20);
  sub_29D9CC410();
  v295 = v60;
  v300 = v61;
  v62 = sub_29DA34774();
  v63 = [v62 sampleType];

  v64 = &v55[v51[7]];
  v65 = *v64;
  v66 = v64[8] == 1;
  v315 = v63;
  if (!v66)
  {
    sub_29DA2949C(0, &qword_2A1A2D3F0, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
    v79 = swift_allocObject();
    v80 = 0;
    v293 = 0;
    v310 = 0;
    *(v79 + 16) = xmmword_29DA3AB40;
    *(v79 + 32) = 0;
    *(v79 + 40) = v65;
    v317 = v79;
    goto LABEL_40;
  }

  v80 = v65;
  v293 = v65;
  v310 = v65;
  v317 = v65;
  if (v65)
  {
    if (v65 == 1)
    {
      v67 = sub_29DA34774();
      v68 = [v67 sampleType];

      v69 = [v68 hk_primaryMetadataKey];
      if (v69)
      {
        v70 = sub_29DA34854();
        v72 = v71;

        v73 = sub_29D9C4534(v70, v72);

        if (v73)
        {
          v74 = v73;
          v75 = [v74 _unit];
          [v74 doubleValueForUnit_];
          v77 = v76;

          sub_29DA2949C(0, &qword_2A1A2D3F0, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_29DA3AB40;
          *(v78 + 32) = 0;
          v317 = v78;
          *(v78 + 40) = v77;
        }

        else
        {
          v317 = 0;
        }

        v63 = v315;
      }

      else
      {
        v317 = 0;
      }

      v93 = sub_29DA34774();
      v94 = [v93 sampleType];

      v95 = [v94 hk_primaryMetadataKey];
      if (v95 && (v96 = sub_29DA34854(), v98 = v97, v95, v99 = v96, v63 = v315, v100 = sub_29D9C4534(v99, v98), , v100))
      {
        v101 = *(v2 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore);
        v102 = v63;
        v310 = v100;
        v103 = [v102 hk:v101 metadataValueDisplayTypeInStore:?];
        v104 = sub_29DA25A88();
        v290 = v102;
        v291 = v103;
        v105 = [v102 hk:v310 formatMetadataValue:v103 displayType:v104 unitPreferencesController:?];

        if (v105)
        {
          v293 = sub_29DA34854();
          v107 = v106;

          v108 = v310;
        }

        else
        {

          v127 = v310;
          v293 = 0;
          v107 = 0;
        }

        v63 = v315;
      }

      else
      {
        v109 = v63;
        v293 = 0;
        v107 = 0;
      }

      v128 = v63;
      v129 = [v128 code];
      v310 = v107;
      if (v129 != 236 || (v130 = [objc_opt_self() localizedStringForCardioFitnessLevel_]) == 0)
      {
LABEL_39:

        v80 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v81 = sub_29DA34774();
      v82 = [v81 sampleType];

      v83 = [v82 hk_secondaryMetadataKey];
      if (v83)
      {
        v84 = sub_29DA34854();
        v86 = v85;

        v87 = sub_29D9C4534(v84, v86);

        if (v87)
        {
          v88 = v87;
          v89 = [v88 _unit];
          [v88 doubleValueForUnit_];
          v91 = v90;

          sub_29DA2949C(0, &qword_2A1A2D3F0, type metadata accessor for CGPoint, MEMORY[0x29EDC9E90]);
          v92 = swift_allocObject();
          *(v92 + 16) = xmmword_29DA3AB40;
          *(v92 + 32) = 0;
          v317 = v92;
          *(v92 + 40) = v91;
        }

        else
        {
          v317 = 0;
        }

        v63 = v315;
      }

      else
      {
        v317 = 0;
      }

      v110 = sub_29DA34774();
      v111 = [v110 sampleType];

      v112 = [v111 hk_secondaryMetadataKey];
      if (v112 && (v113 = sub_29DA34854(), v115 = v114, v112, v116 = v113, v63 = v315, v117 = sub_29D9C4534(v116, v115), , v117))
      {
        v118 = *(v2 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore);
        v119 = v63;
        v310 = v117;
        v120 = [v119 hk:v118 metadataValueDisplayTypeInStore:?];
        v121 = sub_29DA25A88();
        v290 = v119;
        v291 = v120;
        v122 = [v119 hk:v310 formatMetadataValue:v120 displayType:v121 unitPreferencesController:?];

        if (v122)
        {
          v293 = sub_29DA34854();
          v124 = v123;

          v125 = v310;
        }

        else
        {

          v131 = v310;
          v293 = 0;
          v124 = 0;
        }

        v63 = v315;
      }

      else
      {
        v126 = v63;
        v293 = 0;
        v124 = 0;
      }

      v128 = v63;
      v132 = [v128 code];
      v310 = v124;
      if (v132 != 236)
      {
        goto LABEL_39;
      }

      v130 = [objc_opt_self() localizedStringForCardioFitnessLevel_];
      if (!v130)
      {
        goto LABEL_39;
      }
    }

    v133 = v130;
    sub_29DA34854();
    v80 = v134;

    v63 = v315;
  }

LABEL_40:
  v135 = v328;
  v136 = v329;
  (*(v329 + 16))(v46, &v55[v51[6]], v328);
  v137 = (*(v136 + 88))(v46, v135);
  if (v137 != *MEMORY[0x29EDC4C88])
  {
    if (v137 == *MEMORY[0x29EDC4B30])
    {

      v148 = *&v55[v51[8]];
      v149 = *&v55[v51[9]];
      v151 = v322;
      v150 = v323;
      v152 = &v55[v51[5]];
      v153 = v324;
      (*(v323 + 16))(v322, v152, v324);
      (*(v150 + 56))(v151, 0, 1, v153);

      v154 = v316;
      sub_29DA34144();
      sub_29DA2949C(0, &qword_2A1A2D408, sub_29DA2B694, MEMORY[0x29EDC9E90]);
      sub_29DA2B694();
      v156 = v155 - 8;
      v157 = *(*(v155 - 8) + 72);
      v158 = (*(*(v155 - 8) + 80) + 32) & ~*(*(v155 - 8) + 80);
      v159 = swift_allocObject();
      v314 = xmmword_29DA3AB40;
      *(v159 + 16) = xmmword_29DA3AB40;
      v160 = v159 + v158;
      v161 = *(v156 + 56);
      v162 = *MEMORY[0x29EDC4920];
      v319 = *(v320 + 104);
      (v319)(v160, v162, v321);
      v318 = *(v327 + 16);
      v318(v160 + v161, v154, v325);
      v326 = sub_29DA213C4(v159);
      swift_setDeallocating();
      sub_29DA29E08(v160, sub_29DA2B694);
      swift_deallocClassInstance();
      sub_29DA34074();
      x = v163;
      y = v165;
      width = v167;
      height = v169;
      v292 = v46;
      if (v149 && *(v149 + 16))
      {

        v171 = v308;
        sub_29DA34144();
        v172 = v309;
        v173 = v321;
        (v319)(v309, *MEMORY[0x29EDC4918], v321);
        v174 = v297;
        v175 = v325;
        v318(v297, v171, v325);
        v176 = v326;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v330 = *&v176;
        sub_29DA2A938(v174, v172, isUniquelyReferenced_nonNull_native);
        v178 = v320;
        (*(v320 + 8))(v172, v173);
        v326 = *&v330;
        sub_29DA34074();
        v341.origin.x = v179;
        v341.origin.y = v180;
        v341.size.width = v181;
        v341.size.height = v182;
        v335.origin.x = x;
        v335.origin.y = y;
        v335.size.width = width;
        v335.size.height = height;
        v336 = CGRectUnion(v335, v341);
        x = v336.origin.x;
        y = v336.origin.y;
        width = v336.size.width;
        height = v336.size.height;
        v183 = v175;
        v46 = v292;
        (*(v327 + 8))(v171, v183);
        v184 = v317;
      }

      else
      {
        v184 = v317;
        v178 = v320;
        v173 = v321;
      }

      v194 = v305;
      if (v184)
      {

        sub_29DA34144();
        v195 = v309;
        (v319)(v309, *MEMORY[0x29EDC4910], v173);
        v196 = v308;
        v197 = v325;
        v318(v308, v194, v325);
        v198 = v326;
        v199 = swift_isUniquelyReferenced_nonNull_native();
        v330 = *&v198;
        sub_29DA2A938(v196, v195, v199);
        (*(v178 + 8))(v195, v173);
        v200 = v330;
        if (v184[2])
        {
          sub_29DA34074();
          v342.origin.y = v201;
          v342.size.height = v202;
          v337.origin.x = x;
          v337.origin.y = y;
          v337.size.width = width;
          v337.size.height = height;
          v342.origin.x = x;
          v342.size.width = width;
          v338 = CGRectUnion(v337, v342);
          x = v338.origin.x;
          y = v338.origin.y;
          width = v338.size.width;
          height = v338.size.height;
        }

        (*(v327 + 8))(v194, v197);
        v203 = v323;
        v135 = v328;
        v204 = v307;
        v205 = v306;
        v206 = v197;
        v46 = v292;
      }

      else
      {

        v203 = v323;
        v135 = v328;
        v204 = v307;
        v205 = v306;
        v206 = v325;
        v200 = *&v326;
      }

      v247 = v324;
      sub_29DA2B704(v322, v205, sub_29D9E5E4C);
      if ((*(v203 + 48))(v205, 1, v247) == 1)
      {
        sub_29DA29E08(v205, sub_29D9E5E4C);
      }

      else
      {
        v326 = *&v200;
        (*(v203 + 32))(v204, v205, v247);
        v248 = v301;
        sub_29DA33524();
        sub_29DA33644();
        v250 = v249;
        v251 = *(v303 + 8);
        v252 = v248;
        v253 = v304;
        v251(v252, v304);
        v254 = v247;
        v255 = v302;
        sub_29DA334F4();
        sub_29DA33644();
        v257 = v256;
        result = (v251)(v255, v253);
        if (v250 > v257)
        {
          __break(1u);
          goto LABEL_89;
        }

        sub_29DA34C74();
        x = v258;
        y = v259;
        width = v260;
        height = v261;
        (*(v203 + 8))(v204, v254);
        v135 = v328;
        v206 = v325;
        v200 = *&v326;
      }

      if (width <= 2.22507386e-308 || height <= 2.22507386e-308)
      {
        sub_29DA34C84();
        if (width > v262)
        {
          v262 = width;
        }

        if (height > v263)
        {
          v263 = height;
        }

        x = x - (v262 - width) * 0.5;
        y = y - (v263 - height) * 0.5;
        width = v262;
        height = v263;
      }

      v330 = x;
      v331 = y;
      v332 = width;
      v333 = height;
      v334 = 0;
      sub_29DA2949C(0, &qword_2A1A2D400, sub_29DA2B76C, MEMORY[0x29EDC9E90]);
      v264 = swift_allocObject();
      *(v264 + 16) = v314;
      *(v264 + 32) = v200;
      v265 = v294;
      sub_29DA34084();

      (*(v327 + 8))(v316, v206);
      sub_29DA29E08(v322, sub_29D9E5E4C);
      sub_29DA29E08(v55, type metadata accessor for HighlightAlertDiagramInfo);
      v266 = sub_29DA34094();
      (*(*(v266 - 8) + 56))(v265, 0, 1, v266);
    }

    else
    {

      sub_29DA29E08(v55, type metadata accessor for HighlightAlertDiagramInfo);
      v193 = sub_29DA34094();
      (*(*(v193 - 8) + 56))(v294, 1, 1, v193);
    }

    return (*(v329 + 8))(v46, v135);
  }

  v322 = v38;
  (*(v329 + 96))(v46, v135);
  v138 = v319;
  v139 = v318;
  (*(v319 + 32))(v326, v46, v318);
  v140 = sub_29DA34774();
  v141 = [v140 sampleType];

  v142 = [v141 identifier];
  v143 = sub_29DA34854();
  v145 = v144;

  v146 = *MEMORY[0x29EDBA450];
  if (v143 == sub_29DA34854() && v145 == v147)
  {

LABEL_49:

    v186 = *&v55[v51[8]];
    v187 = v312;
    v188 = v326;
    sub_29DA34354();
    v189 = v294;
    sub_29DA34124();

    (*(v313 + 1))(v187, v314);
    (*(v138 + 8))(v188, v139);
    sub_29DA29E08(v55, type metadata accessor for HighlightAlertDiagramInfo);
    v190 = sub_29DA34094();
    v191 = *(*(v190 - 8) + 56);
    v192 = v189;
    return v191(v192, 0, 1, v190);
  }

  v185 = sub_29DA35114();

  if (v185)
  {
    goto LABEL_49;
  }

  v328 = v80;
  v207 = *&v55[v51[8]];
  v208 = v51[5];
  v209 = v323;
  v210 = *(v323 + 16);
  v312 = v55;
  v211 = &v55[v208];
  v212 = v322;
  v213 = v324;
  v210(v322, v211, v324);
  (*(v209 + 56))(v212, 0, 1, v213);
  v316 = v207;

  sub_29DA34144();
  sub_29DA2949C(0, &qword_2A1A2D408, sub_29DA2B694, MEMORY[0x29EDC9E90]);
  sub_29DA2B694();
  v215 = v214;
  v329 = v214;
  v216 = *(*(v214 - 8) + 72);
  v217 = (*(*(v214 - 8) + 80) + 32) & ~*(*(v214 - 8) + 80);
  v218 = swift_allocObject();
  *&v314 = v218;
  *(v218 + 16) = xmmword_29DA3A6C0;
  v219 = v218 + v217;
  v220 = *(v215 + 48);
  v221 = v321;
  v222 = *(v320 + 104);
  (v222)(v218 + v217, *MEMORY[0x29EDC4920], v321);
  v223 = *(v327 + 16);
  v224 = v219 + v220;
  v225 = v311;
  v226 = v325;
  v223(v224, v311, v325);
  v227 = v219 + v216;
  v313 = *(v329 + 48);
  v228 = *MEMORY[0x29EDC4918];
  v307 = v222;
  (v222)(v227, v228, v221);
  v229 = v313 + v227;
  v313 = v223;
  v223(v229, v225, v226);
  *&v230 = COERCE_DOUBLE(sub_29DA213C4(v314));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29DA34074();
  v232 = v231;
  v234 = v233;
  v236 = v235;
  v238 = v237;
  v239 = v317;
  if (v317)
  {

    v240 = v296;
    sub_29DA34144();
    v241 = v309;
    v242 = v321;
    (v307)(v309, *MEMORY[0x29EDC4910], v321);
    v243 = v308;
    v313(v308, v240, v226);
    v244 = swift_isUniquelyReferenced_nonNull_native();
    v330 = *&v230;
    sub_29DA2A938(v243, v241, v244);
    (*(v320 + 8))(v241, v242);
    *&v230 = v330;
    if (v239[2])
    {
      sub_29DA34074();
      v343.origin.y = v245;
      v343.size.height = v246;
      v339.origin.x = v232;
      v339.origin.y = v234;
      v339.size.width = v236;
      v339.size.height = v238;
      v343.origin.x = v232;
      v343.size.width = v236;
      v340 = CGRectUnion(v339, v343);
      v232 = v340.origin.x;
      v234 = v340.origin.y;
      v236 = v340.size.width;
      v238 = v340.size.height;
    }

    (*(v327 + 8))(v240, v226);
  }

  else
  {
  }

  v267 = v294;
  v268 = v324;
  v269 = v319;
  v270 = v322;
  v271 = v299;
  v272 = v298;
  sub_29DA2B704(v322, v298, sub_29D9E5E4C);
  v273 = v323;
  if ((*(v323 + 48))(v272, 1, v268) == 1)
  {
    sub_29DA29E08(v272, sub_29D9E5E4C);
    goto LABEL_79;
  }

  (*(v273 + 32))(v271, v272, v268);
  v274 = v301;
  sub_29DA33524();
  sub_29DA33644();
  v276 = v275;
  v277 = *(v303 + 8);
  v278 = v304;
  v277(v274, v304);
  v279 = v302;
  sub_29DA334F4();
  sub_29DA33644();
  v281 = v280;
  result = (v277)(v279, v278);
  if (v276 <= v281)
  {
    sub_29DA34C74();
    v232 = v282;
    v234 = v283;
    v236 = v284;
    v238 = v285;
    (*(v273 + 8))(v271, v268);
    v269 = v319;
    v270 = v322;
    v226 = v325;
LABEL_79:
    v286 = v318;
    if (v236 <= 2.22507386e-308 || v238 <= 2.22507386e-308)
    {
      sub_29DA34C84();
      if (v236 > v287)
      {
        v287 = v236;
      }

      if (v238 > v288)
      {
        v288 = v238;
      }

      v232 = v232 - (v287 - v236) * 0.5;
      v234 = v234 - (v288 - v238) * 0.5;
      v236 = v287;
      v238 = v288;
    }

    v330 = v232;
    v331 = v234;
    v332 = v236;
    v333 = v238;
    v334 = 0;
    sub_29DA2949C(0, &qword_2A1A2D400, sub_29DA2B76C, MEMORY[0x29EDC9E90]);
    v289 = swift_allocObject();
    *(v289 + 16) = xmmword_29DA3AB40;
    *(v289 + 32) = *&v230;
    sub_29DA34084();

    (*(v327 + 8))(v311, v226);
    sub_29DA29E08(v270, sub_29D9E5E4C);
    (*(v269 + 8))(v326, v286);
    sub_29DA29E08(v312, type metadata accessor for HighlightAlertDiagramInfo);
    v190 = sub_29DA34094();
    v191 = *(*(v190 - 8) + 56);
    v192 = v267;
    return v191(v192, 0, 1, v190);
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_29DA2843C(uint64_t a1)
{
  v2 = *v1;
  v45[1] = a1;
  v45[2] = v2;
  v3 = sub_29DA34644();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2B62C(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29DA343B4();
  v45[0] = *(v11 - 8);
  v12 = *(v45[0] + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = v45 - v16;
  sub_29DA2B660(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_29DA34094();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA262E8(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v27 = sub_29DA2B660;
    v28 = v21;
  }

  else
  {
    (*(v23 + 32))(v26, v21, v22);
    v29 = v1 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
    v30 = type metadata accessor for HighlightAlert(0);
    sub_29DA2B704(&v29[*(v30 + 32)], v10, sub_29DA2B62C);
    v31 = type metadata accessor for HighlightAlertDiagramInfo(0);
    if ((*(*(v31 - 8) + 48))(v10, 1, v31) != 1)
    {
      v40 = *(v31 + 24);
      v41 = v45[0];
      (*(v45[0] + 16))(v15, &v10[v40], v11);
      sub_29DA29E08(v10, type metadata accessor for HighlightAlertDiagramInfo);
      (*(v41 + 32))(v17, v15, v11);
      sub_29DA25A14();
      v42 = sub_29DA34114();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      sub_29DA340F4();
      sub_29DA34104();

      (*(v41 + 8))(v17, v11);
      return (*(v23 + 8))(v26, v22);
    }

    (*(v23 + 8))(v26, v22);
    v27 = sub_29DA2B62C;
    v28 = v10;
  }

  sub_29DA29E08(v28, v27);
  sub_29DA34624();
  v32 = sub_29DA34634();
  v33 = sub_29DA34B84();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136315138;
    v36 = sub_29DA35254();
    v38 = sub_29D9EBB44(v36, v37, &v48);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_29D9BB000, v32, v33, "%s HighlightAlert asked to render diagram without data nor configuration provided in cache", v34, 0xCu);
    sub_29D9C7968(v35);
    MEMORY[0x29ED6E4C0](v35, -1, -1);
    MEMORY[0x29ED6E4C0](v34, -1, -1);
  }

  return (*(v46 + 8))(v6, v47);
}

void *sub_29DA2899C()
{
  v1 = v0;
  v95 = *v0;
  v93 = sub_29DA33CB4();
  v2 = *(*(v93 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v93);
  v92 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29DA336F4();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v86 = &v84 - v8;
  v9 = sub_29DA33554();
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2949C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v84 - v15;
  v17 = sub_29DA34644();
  v96 = *(v17 - 8);
  v18 = *(v96 + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v19);
  v24 = &v84 - v23;
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v84 - v25;
  sub_29DA262B4(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v27 - 8);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29DA34014();
  v32 = sub_29DA34454();
  if (v32)
  {
    v85 = v17;
    v94 = v32;
    sub_29DA2B704(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_associatedDataType, v30, sub_29DA262B4);
    v33 = *(v31 - 8);
    if ((*(v33 + 48))(v30, 1, v31) == 1)
    {
      sub_29DA29E08(v30, sub_29DA262B4);
LABEL_13:
      sub_29DA34624();
      v69 = sub_29DA34634();
      v70 = sub_29DA34B84();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v97[0] = v72;
        *v71 = 136315138;
        v73 = sub_29DA35254();
        v75 = sub_29D9EBB44(v73, v74, v97);

        *(v71 + 4) = v75;
        _os_log_impl(&dword_29D9BB000, v69, v70, "%s HighlightAlert not associated with any object types. Displaying notification room", v71, 0xCu);
        sub_29D9C7968(v72);
        MEMORY[0x29ED6E4C0](v72, -1, -1);
        MEMORY[0x29ED6E4C0](v71, -1, -1);
      }

      (*(v96 + 8))(v24, v85);
      sub_29DA33CE4();
      v76 = *(type metadata accessor for HighlightAlert(0) + 20);
      sub_29D9CC410();
      v77 = sub_29DA34774();
      v78 = [v77 startDate];

      sub_29DA336C4();
      v79 = sub_29DA34774();
      v80 = [v79 endDate];

      sub_29DA336C4();
      sub_29DA33504();
      sub_29DA33524();
      (*(v87 + 8))(v12, v88);
      (*(v90 + 56))(v16, 0, 1, v91);
      v97[0] = MEMORY[0x29EDCA190];
      sub_29DA29E68(&qword_2A17D1210, MEMORY[0x29EDC1CD0]);
      sub_29D9C7558(0);
      sub_29DA29E68(&qword_2A17D1220, sub_29D9C7558);
      sub_29DA34CD4();
      v81 = sub_29DA33CD4();
      v82 = v94;
      v68 = sub_29DA29500(v94, v81);

      return v68;
    }

    v41 = sub_29DA34454();
    v42 = v31;
    v43 = v41;
    (*(v33 + 8))(v30, v42);
    if (!v43)
    {
      goto LABEL_13;
    }

    sub_29DA2B92C(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29DA3B570;
    sub_29D9C79FC(0, &qword_2A17D1740, 0x29EDBAA68);
    *(inited + 32) = MEMORY[0x29ED6D720](*MEMORY[0x29EDBA498]);
    v45 = MEMORY[0x29ED6D720](*MEMORY[0x29EDBA458]);
    *(inited + 40) = v45;
    v46 = v94;
    v97[0] = v94;
    MEMORY[0x2A1C7C4A8](v45);
    *(&v84 - 2) = v97;
    v47 = sub_29DA25160(sub_29DA2B590, (&v84 - 4), inited);
    swift_setDeallocating();
    v48 = *(inited + 16);
    swift_arrayDestroy();
    if (v47)
    {
      v49 = v46;
    }

    else
    {
      v49 = v43;
    }

    v50 = v49;
    sub_29DA34624();
    v51 = v50;
    v52 = sub_29DA34634();
    v53 = sub_29DA34BA4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v97[0] = v93;
      *v54 = 136315394;
      v55 = sub_29DA35254();
      v57 = sub_29D9EBB44(v55, v56, v97);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      v58 = [v51 identifier];
      v59 = sub_29DA34854();
      v60 = v43;
      v62 = v61;

      v63 = sub_29D9EBB44(v59, v62, v97);
      v43 = v60;

      *(v54 + 14) = v63;
      _os_log_impl(&dword_29D9BB000, v52, v53, "%s HighlightAlert should use the alert type; creating data room from %s", v54, 0x16u);
      v64 = v93;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v64, -1, -1);
      MEMORY[0x29ED6E4C0](v54, -1, -1);
    }

    (*(v96 + 8))(v26, v85);
    v65 = v1 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
    v66 = &v65[*(type metadata accessor for HighlightAlert(0) + 20)];
    v67 = sub_29D9C489C();
    v68 = sub_29DA29500(v51, v67);
  }

  else
  {
    sub_29DA34624();
    v34 = sub_29DA34634();
    v35 = sub_29DA34B84();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v97[0] = v37;
      *v36 = 136315138;
      v38 = sub_29DA35254();
      v40 = sub_29D9EBB44(v38, v39, v97);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_29D9BB000, v34, v35, "%s HighlightAlert associated with invalid object type. Not doing anything", v36, 0xCu);
      sub_29D9C7968(v37);
      MEMORY[0x29ED6E4C0](v37, -1, -1);
      MEMORY[0x29ED6E4C0](v36, -1, -1);
    }

    (*(v96 + 8))(v21, v17);
    return 0;
  }

  return v68;
}

void sub_29DA2949C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_29DA29500(uint64_t a1, void *a2)
{
  v3 = v2;
  v57 = a1;
  v52 = *v2;
  v56 = sub_29DA34644();
  v55 = *(v56 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v56);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDC9C68];
  sub_29DA2949C(0, &qword_2A1A2D330, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v54 = &v52 - v10;
  sub_29DA2949C(0, &qword_2A17D1748, MEMORY[0x29EDC2B20], v7);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v53 = &v52 - v13;
  sub_29DA2B5F8(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_29DA33E04();
  v18 = *(v60 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v60);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2949C(0, &qword_2A17D1758, MEMORY[0x29EDB9B18], v7);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v22 - 8);
  v25 = &v52 - v24;
  v26 = sub_29DA33DC4();
  v58 = *(v26 - 8);
  v59 = v26;
  v27 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33DB4();
  v30 = sub_29DA335E4();
  (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  v31 = sub_29DA337D4();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_29DA337C4();
  v64 = v31;
  v65 = MEMORY[0x29EDC3640];
  v63 = v34;
  v35 = *(v3 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore);

  v36 = v35;
  v37 = [v36 profileIdentifier];
  v38 = sub_29DA33CF4();
  (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
  MEMORY[0x29ED6C870](v37, v17);

  v39 = v21;
  sub_29DA29E08(v17, sub_29DA2B5F8);
  sub_29D9FA5EC(v3 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_pinnedContentManager, v62);
  v40 = a2;
  sub_29DA33DF4();
  v41 = sub_29DA33DA4();
  v42 = v53;
  v43 = v54;
  sub_29DA33EE4();
  if (swift_dynamicCastClass())
  {
    v44 = v41;
    v57 = v18;
    v45 = v44;
    sub_29DA33ED4();
    v46 = *(type metadata accessor for HighlightAlert(0) + 20);
    sub_29D9CC410();
    v47 = sub_29DA34774();
    v48 = [v47 UUID];

    sub_29DA33744();
    v49 = sub_29DA33754();
    (*(*(v49 - 8) + 56))(v43, 0, 1, v49);
    sub_29DA33EA4();
    v50 = sub_29DA33EB4();
    (*(*(v50 - 8) + 56))(v42, 0, 1, v50);
    sub_29DA33EC4();

    v18 = v57;
  }

  else
  {
  }

  (*(v18 + 8))(v39, v60);
  (*(v58 + 8))(v29, v59);
  return v41;
}

uint64_t sub_29DA29E08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DA29E68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DA29EB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29DA051EC();
  result = sub_29DA34F94();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_29DA34CA4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_29DA2A10C(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_29DA34154();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29DA340E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_29DA2B78C(0, &qword_2A1A2D430, MEMORY[0x29EDC9E70]);
  v52 = a2;
  result = sub_29DA34F94();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_29DA29E68(&qword_2A1A2D4F0, MEMORY[0x29EDC4928]);
      result = sub_29DA347D4();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_29DA2A5C4(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_29DA33964();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_29DA2B97C();
  v46 = a2;
  result = sub_29DA34F94();
  v12 = result;
  if (*(v9 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_29DA351B4();
      sub_29DA348D4();
      result = sub_29DA351E4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_29DA2A938(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29DA340E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_29DA1EEE0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_29DA2AFB4();
      goto LABEL_7;
    }

    sub_29DA2A10C(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_29DA1EEE0(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_29DA2ACBC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_29DA35144();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_29DA34154();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_29DA2AB3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_29DA1EDE0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_29DA2B318();
      goto LABEL_7;
    }

    sub_29DA2A5C4(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_29DA1EDE0(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_29DA35144();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_29DA33964();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_29DA2ADB0(v12, a2, a3, a1, v18);
}

uint64_t sub_29DA2ACBC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29DA340E4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_29DA34154();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_29DA2ADB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_29DA33964();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_29DA2AE60()
{
  v1 = v0;
  sub_29DA051EC();
  v2 = *v0;
  v3 = sub_29DA34F84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_29DA2AFB4()
{
  v1 = v0;
  v43 = sub_29DA34154();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29DA340E4();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2B78C(0, &qword_2A1A2D430, MEMORY[0x29EDC9E70]);
  v6 = *v0;
  v7 = sub_29DA34F84();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_29DA2B318()
{
  v1 = v0;
  v39 = sub_29DA33964();
  v41 = *(v39 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2B97C();
  v4 = *v0;
  v5 = sub_29DA34F84();
  v6 = v5;
  if (*(v4 + 16))
  {
    v34 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v40 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v37 = v4;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v42 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 56);
        v23 = (*(v4 + 48) + 16 * v20);
        v24 = *v23;
        v25 = v23[1];
        v26 = v41;
        v27 = *(v41 + 72) * v20;
        v28 = v38;
        v29 = v39;
        (*(v41 + 16))(v38, v22 + v27, v39);
        v30 = v40;
        v31 = (*(v40 + 48) + v21);
        *v31 = v24;
        v31[1] = v25;
        v32 = *(v30 + 56) + v27;
        v4 = v37;
        (*(v26 + 32))(v32, v28, v29);

        v15 = v42;
      }

      while (v42);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v34;
        v6 = v40;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_29DA2B590(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_29D9C79FC(0, &qword_2A1A2CB38, 0x29EDBACB8);
  return sub_29DA34CB4() & 1;
}

void sub_29DA2B694()
{
  if (!qword_2A1A2D4E0)
  {
    sub_29DA340E4();
    sub_29DA34154();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2D4E0);
    }
  }
}

uint64_t sub_29DA2B704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29DA2B78C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DA340E4();
    v7 = sub_29DA34154();
    v8 = sub_29DA29E68(&qword_2A1A2D4F0, MEMORY[0x29EDC4928]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29DA2B840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DA2B8A8(uint64_t a1)
{
  sub_29DA2B92C(0, &qword_2A1A2DA78, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DA2B92C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29DA2B97C()
{
  if (!qword_2A1A2CA78)
  {
    sub_29DA33964();
    v0 = sub_29DA34FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CA78);
    }
  }
}

uint64_t sub_29DA2B9E4()
{
  result = sub_29DA34824();
  qword_2A1A31338 = result;
  return result;
}

uint64_t sub_29DA2BA1C()
{
  result = sub_29DA34824();
  qword_2A1A312D0 = result;
  return result;
}

uint64_t sub_29DA2BA54()
{
  result = sub_29DA34824();
  qword_2A1A31330 = result;
  return result;
}

uint64_t sub_29DA2BAA4(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_29D9D5748(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_29DA33964();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29DA2BBD0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_29DA34D34();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_29DA34D34();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_29DA313A8(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_29DA2BCC8()
{
  v1 = sub_29DA34644();
  v64 = *(v1 - 8);
  v65 = v1;
  v2 = *(v64 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v59 = &v59 - v6;
  sub_29DA31204(0, &qword_2A1A2DC70, type metadata accessor for HighlightAlert, MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v59 - v9;
  v11 = type metadata accessor for HighlightAlert(0);
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v60 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v61 = &v59 - v15;
  v62 = v0;
  v16 = &v0[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context];
  result = swift_beginAccess();
  v18 = *(v16 + 3);
  if (!v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = *(v16 + 4);
  v20 = sub_29D9C706C(v16, *(v16 + 3));
  v21 = *(v18 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24);
  v25 = sub_29DA33E64();
  v27 = v26;
  (*(v21 + 8))(v24, v18);
  if (v27 >> 60 != 15)
  {
    v31 = sub_29DA33474();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_29DA33464();
    sub_29DA31DA4(&qword_2A1A2DC88, 255, type metadata accessor for HighlightAlert);
    sub_29DA33454();
    v34 = v25;

    (*(v63 + 56))(v10, 0, 1, v11);
    v35 = v10;
    v36 = v61;
    sub_29D9CFC9C(v35, v61);
    result = sub_29DA31124(v36, v60);
    v37 = *(v16 + 3);
    if (v37)
    {
      v38 = v27;
      v39 = *(v16 + 4);
      v40 = sub_29D9C706C(v16, *(v16 + 3));
      v41 = *(v37 - 8);
      v42 = *(v41 + 64);
      MEMORY[0x2A1C7C4A8](v40);
      v44 = &v59 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v44);
      v45 = sub_29DA33E34();
      result = (*(v41 + 8))(v44, v37);
      v46 = *(v16 + 3);
      if (v46)
      {
        v47 = *(v16 + 4);
        v48 = sub_29D9C706C(v16, *(v16 + 3));
        v49 = *(v46 - 8);
        v50 = *(v49 + 64);
        MEMORY[0x2A1C7C4A8](v48);
        v52 = &v59 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v52);
        sub_29DA33E54();
        (*(v49 + 8))(v52, v46);
        v53 = type metadata accessor for HighlightAlertViewModel();
        v54 = *(v53 + 48);
        v55 = *(v53 + 52);
        swift_allocObject();
        v56 = sub_29DA25C58(v60, v45, v66);
        v57 = v62;
        v58 = *&v62[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel];
        *&v62[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel] = v56;
        swift_retain_n();
        if ([v57 isViewLoaded])
        {
          sub_29DA2E0A8(v58);

          sub_29D9CFBBC(v34, v38);
          return sub_29D9CFD00(v61);
        }

        else
        {
          sub_29D9CFD00(v61);

          return sub_29D9CFBBC(v34, v38);
        }
      }

LABEL_14:
      __break(1u);
      return result;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29DA34624();
  v28 = sub_29DA34634();
  v29 = sub_29DA34B84();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_29D9BB000, v28, v29, "HighlightAlert context updated without expected userData.", v30, 2u);
    MEMORY[0x29ED6E4C0](v30, -1, -1);
  }

  return (*(v64 + 8))(v5, v65);
}

id sub_29DA2C564()
{
  v1 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView;
  v2 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView);
  }

  else
  {
    sub_29DA34174();
    sub_29DA31DA4(&qword_2A1A2D520, v4, type metadata accessor for HighlightAlertsTileViewController);
    swift_unknownObjectRetain();
    v5 = v0;
    v6 = sub_29DA34164();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_29DA2C62C()
{
  v1 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent;
  v2 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent);
  }

  else
  {
    v4 = v0;
    sub_29DA33C74();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = sub_29DA33C34();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29DA33DD4();

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_29DA2C714()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29DA2EC1C();
  }
}

uint64_t sub_29DA2C768()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34624();
  v6 = v0;
  v7 = sub_29DA34634();
  v8 = sub_29DA34B64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v9 = 136446210;
    v10 = v6;
    v11 = [v10 description];
    v12 = sub_29DA34854();
    v20 = v1;
    v14 = v13;

    v15 = sub_29D9EBB44(v12, v14, &v22);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_29D9BB000, v7, v8, "%{public}s: viewDidLoad", v9, 0xCu);
    v16 = v21;
    sub_29D9C7968(v21);
    MEMORY[0x29ED6E4C0](v16, -1, -1);
    MEMORY[0x29ED6E4C0](v9, -1, -1);

    (*(v2 + 8))(v5, v20);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v17 = type metadata accessor for HighlightAlertsTileViewController();
  v23.receiver = v6;
  v23.super_class = v17;
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  sub_29DA344E4();
  sub_29DA2CC88();
  return sub_29DA2E0A8(0);
}

id sub_29DA2CA4C()
{
  v1 = type metadata accessor for HighlightAlertsTileViewController();
  sub_29DA344F4();
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_29DA2CC88()
{
  v1 = v0;
  sub_29DA31D4C(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v56 = v2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DA3B570;
  *(inited + 32) = sub_29DA2C62C();
  *(inited + 40) = sub_29DA2C564();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x29ED6D970](0, inited))
  {
    v5 = i;
    sub_29DA34A14();
    sub_29DA34A04();
    sub_29DA349B4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v0 view];
    if (!result)
    {
      goto LABEL_24;
    }

    v7 = result;
    [result addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v8 = MEMORY[0x29ED6D970](1, inited);
LABEL_10:
  v9 = v8;
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v0 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = result;
  [result addSubview_];

  swift_setDeallocating();
  v11 = *(inited + 16);
  swift_arrayDestroy();
  v12 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent;
  v13 = [*&v0[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent] topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = result;
  v15 = [result topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:0.0];
  [v16 setActive_];

  v17 = [*&v1[v12] leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = result;
  v19 = [result leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:0.0];
  [v20 setActive_];

  v21 = [*&v1[v12] trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = result;
  v23 = [result trailingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23 constant:0.0];
  [v24 setActive_];

  v25 = [*&v1[v12] bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = result;
  v27 = [result bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:0.0];
  v29 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint];
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint] = v28;

  v30 = [*&v1[v12] bottomAnchor];
  v31 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView;
  v32 = [*&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView] topAnchor];
  v33 = [v30 constraintEqualToAnchor:v32 constant:0.0];

  v34 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint];
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint] = v33;

  v35 = [*&v1[v31] widthAnchor];
  v36 = [*&v1[v31] heightAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 multiplier:2.4];

  type metadata accessor for UILayoutPriority(0);
  sub_29DA31DA4(&qword_2A1A2D470, 255, type metadata accessor for UILayoutPriority);
  sub_29DA34654();
  LODWORD(v38) = v57;
  [v37 setPriority_];
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_29DA3BBE0;
  v40 = [*&v1[v31] leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v41 = result;
  v42 = [result leadingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:16.0];
  *(v39 + 32) = v43;
  v44 = [*&v1[v31] trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v45 = result;
  v46 = [result trailingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:-16.0];
  *(v39 + 40) = v47;
  *(v39 + 48) = v37;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29DA3B8B0;
  v49 = *&v1[v31];
  v50 = v37;
  v51 = [v49 bottomAnchor];
  result = [v1 view];
  if (result)
  {
    v52 = result;
    v53 = [result bottomAnchor];

    v54 = [v51 constraintEqualToAnchor:v53 constant:-16.0];
    *(v48 + 32) = v54;
    sub_29DA2BBD0(v39, sub_29DA31610);

    v55 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints];
    *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints] = v48;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_29DA2D4C0(char a1)
{
  v3 = sub_29DA34644();
  v118 = *(v3 - 8);
  v119 = v3;
  v4 = *(v118 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = (&v110 - v9);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v110 - v12;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v110 - v14;
  v16 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints;
  v17 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints];
  if (!v17)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v20 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints];
    }

    if (sub_29DA34D34())
    {
      goto LABEL_4;
    }

LABEL_11:
    v120 = 0;
    goto LABEL_12;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v17 & 0xC000000000000001) != 0)
  {

    v18 = MEMORY[0x29ED6D970](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v18 = *(v17 + 32);
  }

  v19 = [v18 isActive];

  v120 = v19;
LABEL_12:
  v21 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel];

  v22 = [v1 traitCollection];
  v23 = sub_29DA31904(v21);

  v24 = a1;
  if ((a1 & 1) != 0 || v120 != v23)
  {
    v114 = v13;
    v115 = v10;
    v112 = v16;
    sub_29DA34614();
    v113 = v1;
    v25 = v1;
    v26 = sub_29DA34634();
    v27 = sub_29DA34B74();
    v117 = v25;

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v123 = v111;
      *v28 = 136447234;
      v29 = v117;
      v116 = v7;
      v30 = v29;
      v31 = [v29 description];
      v32 = sub_29DA34854();
      v33 = v24;
      v35 = v34;

      v36 = v32;
      v37 = v118;
      v38 = v119;
      v39 = sub_29D9EBB44(v36, v35, &v123);
      v24 = v33;

      *(v28 + 4) = v39;
      v7 = v116;
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_29D9EBB44(0xD000000000000034, 0x800000029DA38540, &v123);
      *(v28 + 22) = 2050;
      *(v28 + 24) = v23;
      *(v28 + 32) = 2050;
      *(v28 + 34) = v120;
      *(v28 + 42) = 1026;
      *(v28 + 44) = v33 & 1;
      _os_log_impl(&dword_29D9BB000, v26, v27, "%{public}s: %{public}s updating constraints, preferred options: %{public}ld, active options: %{public}ld (forced: %{BOOL,public}d)", v28, 0x30u);
      v40 = v111;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v40, -1, -1);
      MEMORY[0x29ED6E4C0](v28, -1, -1);

      v10 = *(v37 + 8);
      (v10)(v15, v38);
    }

    else
    {

      v10 = *(v118 + 8);
      (v10)(v15, v119);
    }

    v15 = MEMORY[0x29EDCA190];
    v122 = MEMORY[0x29EDCA190];
    v123 = MEMORY[0x29EDCA190];
    if ((v24 & 1) == 0)
    {
      v41 = MEMORY[0x29EDCA190];
      if ((v23 & 1) == v120)
      {
LABEL_31:
        if (!(v41 >> 62))
        {
          v82 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_33;
        }

LABEL_55:
        v82 = sub_29DA34D34();
LABEL_33:
        if (v82)
        {
          v83 = objc_opt_self();
          sub_29D9C79FC(0, &qword_2A1A2D458, 0x29EDBA008);
          v84 = sub_29DA34944();

          [v83 deactivateConstraints_];

          if (!(v15 >> 62))
          {
            goto LABEL_35;
          }
        }

        else
        {

          if (!(v15 >> 62))
          {
LABEL_35:
            if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_36:
              v85 = objc_opt_self();
              sub_29D9C79FC(0, &qword_2A1A2D458, 0x29EDBA008);
              v86 = sub_29DA34944();

              [v85 activateConstraints_];

              goto LABEL_40;
            }

LABEL_39:

LABEL_40:
            sub_29DA34614();
            v87 = v117;
            v88 = sub_29DA34634();
            v89 = sub_29DA34B74();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              v121 = v91;
              *v90 = 136446466;
              v92 = v87;
              v93 = v10;
              v94 = [v92 description];
              v95 = v7;
              v96 = sub_29DA34854();
              v98 = v97;

              v99 = sub_29D9EBB44(v96, v98, &v121);

              *(v90 + 4) = v99;
              *(v90 + 12) = 2082;
              *(v90 + 14) = sub_29D9EBB44(0xD000000000000034, 0x800000029DA38540, &v121);
              _os_log_impl(&dword_29D9BB000, v88, v89, "%{public}s: %{public}s finished updating constraints.", v90, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x29ED6E4C0](v91, -1, -1);
              MEMORY[0x29ED6E4C0](v90, -1, -1);

              (v93)(v95, v119);
            }

            else
            {

              (v10)(v7, v119);
            }

            return;
          }
        }

        if (sub_29DA34D34())
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }
    }

    if (v23)
    {
      v116 = v7;
      v59 = v114;
      sub_29DA34614();
      v60 = v117;
      v61 = sub_29DA34634();
      v62 = sub_29DA34B74();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v115 = v61;
        v64 = v63;
        v120 = swift_slowAlloc();
        v121 = v120;
        *v64 = 136446466;
        v65 = v60;
        v66 = [v65 description];
        v67 = sub_29DA34854();
        LODWORD(v111) = v62;
        v68 = v67;
        v70 = v69;

        v71 = v119;
        v72 = sub_29D9EBB44(v68, v70, &v121);

        *(v64 + 4) = v72;
        *(v64 + 12) = 2082;
        *(v64 + 14) = sub_29D9EBB44(0xD000000000000034, 0x800000029DA38540, &v121);
        v73 = v115;
        _os_log_impl(&dword_29D9BB000, v115, v111, "%{public}s: %{public}s ...adding diagram", v64, 0x16u);
        v74 = v120;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v74, -1, -1);
        MEMORY[0x29ED6E4C0](v64, -1, -1);

        v75 = v59;
        v76 = v71;
      }

      else
      {

        v76 = v119;
        v75 = v59;
      }

      (v10)(v75, v76);
      v100 = [v60 view];
      if (v100)
      {
        v101 = v100;
        v102 = sub_29DA2C564();
        [v101 addSubview_];

        if (*&v113[v112])
        {

          sub_29DA2BBD0(v103, sub_29DA31610);
          v104 = *&v60[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint];
          if (v104)
          {
            v105 = v104;
            MEMORY[0x29ED6D4A0]();
            if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v109 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_29DA34974();
            }

            sub_29DA34994();
            v106 = *&v60[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint];
            if (v106)
            {
              v15 = v123;
              v107 = v106;
              MEMORY[0x29ED6D4A0]();
              v7 = v116;
              if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_30;
              }

              goto LABEL_52;
            }

LABEL_62:
            __break(1u);
            return;
          }

LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      goto LABEL_58;
    }

    v120 = v10;
    v42 = v115;
    sub_29DA34614();
    v43 = v117;
    v44 = sub_29DA34634();
    v45 = sub_29DA34B74();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      LODWORD(v114) = v45;
      v47 = v46;
      v116 = swift_slowAlloc();
      v121 = v116;
      *v47 = 136446466;
      v48 = v43;
      v49 = v7;
      v50 = [v48 description];
      v51 = sub_29DA34854();
      v53 = v52;

      v7 = v49;
      v54 = sub_29D9EBB44(v51, v53, &v121);
      v55 = v119;

      *(v47 + 4) = v54;
      *(v47 + 12) = 2082;
      *(v47 + 14) = sub_29D9EBB44(0xD000000000000034, 0x800000029DA38540, &v121);
      _os_log_impl(&dword_29D9BB000, v44, v114, "%{public}s: %{public}s ...removing diagram", v47, 0x16u);
      v56 = v116;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v56, -1, -1);
      MEMORY[0x29ED6E4C0](v47, -1, -1);

      v57 = v42;
      v58 = v55;
    }

    else
    {

      v58 = v119;
      v57 = v42;
    }

    (v120)(v57, v58);
    v77 = sub_29DA2C564();
    [v77 removeFromSuperview];

    v78 = *&v43[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint];
    if (v78)
    {
      v79 = v78;
      MEMORY[0x29ED6D4A0]();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v108 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_29DA34974();
      }

      sub_29DA34994();
      v80 = *&v43[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint];
      if (v80)
      {
        v15 = v123;
        v81 = v80;
        MEMORY[0x29ED6D4A0]();
        v10 = v120;
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_30:
          sub_29DA34994();
          v41 = v122;
          goto LABEL_31;
        }

LABEL_52:
        sub_29DA34974();
        goto LABEL_30;
      }

      goto LABEL_59;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }
}

uint64_t sub_29DA2E0A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29DA34644();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29DA33C54();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v14 = *(v2 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel);
  if (v14)
  {
    v37 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v13;
    v39 = v11;
    v40 = a1;

    v36 = sub_29DA2C62C();
    sub_29DA25288();
    v35[4] = v15;
    v16 = sub_29DA25B00();
    sub_29D9C99D8();
    sub_29D9CA1C8();
    sub_29DA340D4();
    *(&v42 + 1) = type metadata accessor for HighlightAlertTextSupport();
    *&v41 = v16;

    v17 = sub_29DA340B4();
    v35[2] = v18;
    v35[3] = v17;

    v19 = MEMORY[0x29EDCA178];
    v20 = MEMORY[0x29EDC9C68];
    sub_29DA318A4(&v41, &qword_2A1A2DA78, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29DA31D4C);
    v21 = sub_29DA2591C();
    v35[0] = v22;
    v35[1] = v21;
    v41 = 0u;
    v42 = 0u;
    sub_29DA340C4();
    sub_29DA318A4(&v41, &qword_2A1A2DA78, v19 + 8, v20, sub_29DA31D4C);
    sub_29DA31D4C(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_29DA3A6C0;
    strcpy((v23 + 32), "HighlightAlert");
    *(v23 + 47) = -18;
    v24 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
    v25 = (v14 + v24 + *(type metadata accessor for HighlightAlert(0) + 28));
    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;
      v28 = v26;
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    *(v23 + 48) = v27;
    *(v23 + 56) = v28;
    *&v41 = v23;
    sub_29DA31D4C(0, &qword_2A1A2DB48, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D9D5E10();

    sub_29DA347E4();

    [objc_opt_self() clearColor];
    v33 = v37;
    sub_29DA33C44();
    v34 = v36;
    sub_29DA33C64();

    (*(v38 + 8))(v33, v39);
    sub_29DA2D4C0(v40 == 0);
    sub_29DA2E834();
    sub_29DA2F278();
    sub_29DA2E5A0();
  }

  else
  {
    sub_29DA34624();
    v29 = sub_29DA34634();
    v30 = sub_29DA34B84();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_29D9BB000, v29, v30, "HighlightAlert view updated without viewModel set; cannot update view.", v31, 2u);
      MEMORY[0x29ED6E4C0](v31, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_29DA2E5A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel);
  if (v1 && (v2 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert, v3 = (v1 + v2 + *(type metadata accessor for HighlightAlert(0) + 28)), (v4 = v3[1]) != 0))
  {
    v5 = *v3;
    v6 = MEMORY[0x29EDC99B0];
    sub_29DA31D4C(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_29DA3BBF0;
    v8 = *MEMORY[0x29EDC43E0];
    *(v7 + 32) = sub_29DA34854();
    *(v7 + 40) = v9;
    strcpy((v7 + 48), "HighlightAlert");
    *(v7 + 63) = -18;
    *(v7 + 64) = v5;
    *(v7 + 72) = v4;
    v21 = v7;
    sub_29DA31D4C(0, &qword_2A1A2DB48, v6, MEMORY[0x29EDC9A40]);
    sub_29D9D5E10();

    v10 = sub_29DA347E4();
    v12 = v11;

    v13 = (v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier);
    swift_beginAccess();
    v14 = v13[1];
    *v13 = v10;
    v13[1] = v12;

    v15 = sub_29DA2C564();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29DA3A6C0;
    *(v16 + 32) = v10;
    *(v16 + 40) = v12;
    *(v16 + 48) = 0x6D617267616944;
    *(v16 + 56) = 0xE700000000000000;
    v20 = v16;
    sub_29DA347E4();

    v17 = sub_29DA34824();

    [v15 setAccessibilityIdentifier_];
  }

  else
  {
    v18 = (v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier);
    swift_beginAccess();
    v19 = v18[1];
    *v18 = 0;
    v18[1] = 0;

    v17 = sub_29DA2C564();
    [v17 setAccessibilityIdentifier_];
  }
}

uint64_t sub_29DA2E834()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA31204(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v19 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
    v12 = type metadata accessor for HighlightAlert(0);
    sub_29DA31830(v10 + v11 + *(v12 + 32), v9, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68], sub_29DA31204);
    v13 = type metadata accessor for HighlightAlertDiagramInfo(0);
    if ((*(*(v13 - 8) + 48))(v9, 1, v13) == 1)
    {
      return sub_29DA318A4(v9, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68], sub_29DA31204);
    }

    else
    {

      sub_29DA318A4(v9, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68], sub_29DA31204);
      v18 = sub_29DA2C564();
      sub_29DA2843C(v18);
    }
  }

  else
  {
    sub_29DA34624();
    v15 = sub_29DA34634();
    v16 = sub_29DA34B84();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_29D9BB000, v15, v16, "HighlightAlert diagram refreshed without viewModel set; cannot update diagram.", v17, 2u);
      MEMORY[0x29ED6E4C0](v17, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_29DA2EC1C()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29DA33C84();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA31204(0, &qword_2A1A2CCD0, MEMORY[0x29EDC21B0], MEMORY[0x29EDC9C68]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v43 - v13;
  v15 = sub_29DA33D64();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel))
  {
    v20 = *(v1 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel);

    v21 = sub_29DA2899C();
    if (v21)
    {
      v22 = v21;
      MEMORY[0x29ED6D760]();
      v23 = *(v16 + 48);
      if (v23(v14, 1, v15) == 1)
      {
        (*(v16 + 104))(v19, *MEMORY[0x29EDC21A0], v15);
        if (v23(v14, 1, v15) != 1)
        {
          sub_29DA318A4(v14, &qword_2A1A2CCD0, MEMORY[0x29EDC21B0], MEMORY[0x29EDC9C68], sub_29DA31204);
        }
      }

      else
      {
        (*(v16 + 32))(v19, v14, v15);
      }

      sub_29DA33D54();

      (*(v16 + 8))(v19, v15);
    }

    v28 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
    swift_beginAccess();
    result = sub_29DA31830(v1 + v28, &v46, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
    v29 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v30 = sub_29D9C706C(&v46, *(&v47 + 1));
      v31 = *(v29 - 8);
      v32 = *(v31 + 64);
      MEMORY[0x2A1C7C4A8](v30);
      v34 = &v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v34);
      v35 = sub_29DA33E34();
      (*(v31 + 8))(v34, v29);
      v36 = [v35 profileIdentifier];

      [v36 type];
      v37 = HKStringFromProfileType();
      sub_29D9C7968(&v46);
      v38 = sub_29DA34854();
      v40 = v39;

      *&v46 = v38;
      *(&v46 + 1) = v40;
      MEMORY[0x29ED6D450](0x7472656C4120, 0xE600000000000000);
      sub_29DA33CA4();
      v42 = v44;
      v41 = v45;
      (*(v44 + 104))(v10, *MEMORY[0x29EDC1B98], v45);
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      sub_29DA33C94();

      sub_29DA318A4(&v46, &unk_2A17D1778, &unk_2A17D1780, MEMORY[0x29EDC3A40], sub_29DA317D8);
      return (*(v42 + 8))(v10, v41);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29DA34624();
    v24 = sub_29DA34634();
    v25 = sub_29DA34B84();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_29D9BB000, v24, v25, "HighlightAlert handled tap without viewModel set; cannot push destination controller", v26, 2u);
      MEMORY[0x29ED6E4C0](v26, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_29DA2F278()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29DA33864();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v63 = &v55 - v10;
  v11 = sub_29DA33754();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
  swift_beginAccess();
  sub_29DA31830(&v0[v15], v65, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
  v16 = v66;
  if (!v66)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v17 = sub_29D9C706C(v65, v66);
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21);
  v56 = sub_29DA33E44();
  v23 = v22;
  (*(v18 + 8))(v21, v16);
  sub_29D9C7968(v65);
  if (*&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel])
  {
    v24 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
    v25 = v24 + *(type metadata accessor for HighlightAlert(0) + 20);
    sub_29DA31268(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);

    v26 = sub_29DA34774();
    v27 = [v26 UUID];

    sub_29DA33744();
    v55 = sub_29DA33714();
    v62 = v28;

    (*(v59 + 8))(v14, v60);
  }

  else
  {
    v62 = 0xE700000000000000;
    v55 = 0x6E776F6E6B6E75;
  }

  v29 = v23;
  sub_29DA31830(&v1[v15], v65, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
  v30 = v66;
  if (!v66)
  {
    goto LABEL_14;
  }

  v31 = sub_29D9C706C(v65, v66);
  v32 = *(v30 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  v35 = &v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v35);
  v36 = v63;
  sub_29DA33E24();
  (*(v32 + 8))(v35, v30);
  v37 = v64;
  (*(v6 + 104))(v64, *MEMORY[0x29EDC3720], v5);
  sub_29DA31DA4(&qword_2A1A2DFE0, 255, MEMORY[0x29EDC3798]);
  v38 = sub_29DA34814();
  v39 = *(v6 + 8);
  v39(v37, v5);
  v39(v36, v5);
  sub_29D9C7968(v65);
  if (v38)
  {
    v40 = v61;
    sub_29DA34624();
    v41 = v1;

    v42 = v62;

    v43 = sub_29DA34634();
    v44 = sub_29DA34BA4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v65[0] = v46;
      *v45 = 136446723;
      v47 = v41;
      v48 = [v47 description];
      v49 = sub_29DA34854();
      v51 = v50;

      v52 = sub_29D9EBB44(v49, v51, v65);

      *(v45 + 4) = v52;
      *(v45 + 12) = 2081;
      v53 = sub_29D9EBB44(v56, v29, v65);

      *(v45 + 14) = v53;
      *(v45 + 22) = 2081;
      v54 = sub_29D9EBB44(v55, v42, v65);

      *(v45 + 24) = v54;
      _os_log_impl(&dword_29D9BB000, v43, v44, "%{public}s: dropping highlightAlertWasAcknowledged notification for already acknowledged alert: %{private}s (%{private}s)", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v46, -1, -1);
      MEMORY[0x29ED6E4C0](v45, -1, -1);

      (*(v57 + 8))(v61, v58);
    }

    else
    {

      (*(v57 + 8))(v40, v58);
    }
  }

  else
  {

    if (qword_2A1A2E018 != -1)
    {
      swift_once();
    }

    sub_29DA2FA74(qword_2A1A31338);
  }
}

void sub_29DA2FA74(void *a1)
{
  v2 = v1;
  v55 = a1;
  v57 = sub_29DA34644();
  v56 = *(v57 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v57);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29DA33754();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
  swift_beginAccess();
  sub_29DA31830(&v1[v11], &v59, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
  v12 = v61;
  if (v61)
  {
    v13 = sub_29D9C706C(&v59, v61);
    v14 = *(v12 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x2A1C7C4A8](v13);
    v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17);
    v18 = sub_29DA33E44();
    v58 = v19;
    (*(v14 + 8))(v17, v12);
    sub_29D9C7968(&v59);
    if (*&v2[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel])
    {
      v20 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
      v21 = v20 + *(type metadata accessor for HighlightAlert(0) + 20);
      sub_29DA31268(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);

      v22 = sub_29DA34774();
      v23 = [v22 UUID];

      sub_29DA33744();
      v54 = sub_29DA33714();
      v25 = v24;

      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v25 = 0xE700000000000000;
      v54 = 0x6E776F6E6B6E75;
    }

    sub_29DA34624();
    v26 = v2;
    v27 = v55;
    v28 = v58;

    v29 = sub_29DA34634();
    v30 = sub_29DA34BA4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v31 = 136446979;
      v32 = v26;
      v33 = [v32 description];
      v34 = sub_29DA34854();
      v53 = v5;
      v35 = v18;
      v37 = v36;

      v38 = v34;
      v28 = v58;
      v39 = sub_29D9EBB44(v38, v37, &v59);

      *(v31 + 4) = v39;
      *(v31 + 12) = 2082;
      v40 = sub_29DA34854();
      v42 = sub_29D9EBB44(v40, v41, &v59);

      *(v31 + 14) = v42;
      v18 = v35;
      *(v31 + 22) = 2081;
      *(v31 + 24) = sub_29D9EBB44(v35, v28, &v59);
      *(v31 + 32) = 2081;
      v43 = sub_29D9EBB44(v54, v25, &v59);

      *(v31 + 34) = v43;
      _os_log_impl(&dword_29D9BB000, v29, v30, "%{public}s: posting notification %{public}s for identifier: %{private}s (%{private}s)", v31, 0x2Au);
      v44 = v55;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v44, -1, -1);
      MEMORY[0x29ED6E4C0](v31, -1, -1);

      (*(v56 + 8))(v53, v57);
    }

    else
    {

      (*(v56 + 8))(v5, v57);
    }

    sub_29D9C79FC(0, &qword_2A1A2D478, 0x29EDBA088);
    v45 = sub_29DA34BD4();
    sub_29DA31204(0, &qword_2A1A2CA00, sub_29DA31344, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29DA3A6C0;
    v59 = 0xD000000000000023;
    v60 = 0x800000029DA38030;
    v47 = MEMORY[0x29EDC99B0];
    sub_29DA34D84();
    *(inited + 96) = v47;
    *(inited + 72) = v18;
    *(inited + 80) = v28;
    v59 = sub_29DA33824();
    v60 = v48;
    sub_29DA34D84();
    *(inited + 168) = MEMORY[0x29EDC9A98];
    *(inited + 144) = 1;
    sub_29DA21AE4(inited);
    swift_setDeallocating();
    sub_29DA31344();
    swift_arrayDestroy();
    v49 = objc_allocWithZone(sub_29DA33C24());
    v50 = v27;
    v51 = sub_29DA33C14();
    [v45 addOperation_];
  }

  else
  {
    __break(1u);
  }
}

id sub_29DA30178(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView] = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent] = 0;
  v6 = &v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints] = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint] = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel] = 0;
  if (a2)
  {
    v7 = sub_29DA34824();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for HighlightAlertsTileViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_29DA30340(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView] = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent] = 0;
  v4 = &v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints] = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HighlightAlertsTileViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_29DA304E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
  swift_beginAccess();
  return sub_29DA31830(v1 + v3, a1, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
}

uint64_t sub_29DA30564(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
  swift_beginAccess();
  sub_29DA31188(a1, v1 + v3);
  swift_endAccess();
  sub_29DA2BCC8();
  return sub_29DA318A4(a1, &qword_2A1A2D510, &qword_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
}

uint64_t (*sub_29DA305FC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29DA30660;
}

uint64_t sub_29DA30660(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_29DA2BCC8();
  }

  return result;
}

uint64_t sub_29DA30694()
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = (*v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_29DA3075C(uint64_t a1, uint64_t a2)
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (*v2 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_29DA30830(uint64_t a1))(uint64_t a1)
{
  sub_29DA34A14();
  *(a1 + 24) = sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *v1;
  swift_beginAccess();
  return sub_29DA308F4;
}

uint64_t sub_29DA308F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_endAccess();
}

uint64_t sub_29DA30B08@<X0>(uint64_t a1@<X8>)
{
  sub_29DA31204(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_29DA336F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel))
  {
    v12 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
    v13 = v12 + *(type metadata accessor for HighlightAlert(0) + 20);
    sub_29DA31268(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);

    v14 = sub_29DA34774();
    v15 = [v14 endDate];

    sub_29DA336C4();

    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_29DA336E4();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_29DA318A4(v6, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68], sub_29DA31204);
    }
  }

  sub_29DA312D0();
  v17 = *(v16 + 48);
  (*(v8 + 32))(a1, v11, v7);
  v18 = *MEMORY[0x29EDC2188];
  v19 = sub_29DA33D34();
  (*(*(v19 - 8) + 104))(a1 + v17, v18, v19);
  v20 = *MEMORY[0x29EDC2190];
  v21 = sub_29DA33D44();
  return (*(*(v21 - 8) + 104))(a1, v20, v21);
}

id sub_29DA30E90(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];

  return v3;
}

uint64_t sub_29DA30ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C62C70](a1, WitnessTable);
}

uint64_t sub_29DA30F40()
{
  sub_29D9C79FC(0, &qword_2A1A2D448, 0x29EDC7AC8);
  v0 = *MEMORY[0x29EDC80E0];
  return sub_29DA34C94();
}

uint64_t sub_29DA30FA4()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29DA34854();

  return v3;
}

void sub_29DA31034()
{
  if (qword_2A1A2CB18 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A312D0;

  sub_29DA2FA74(v0);
}

uint64_t sub_29DA31124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlert(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DA31188(uint64_t a1, uint64_t a2)
{
  sub_29DA317D8(0, &qword_2A1A2D510, &qword_2A1A2D518);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29DA31204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DA31268(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D9C79FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29DA312D0()
{
  if (!qword_2A1A2DA40)
  {
    sub_29DA336F4();
    sub_29DA33D34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2DA40);
    }
  }
}

void sub_29DA31344()
{
  if (!qword_2A1A2CA98)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2CA98);
    }
  }
}

uint64_t sub_29DA313A8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_29DA34D34();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_29DA34E14();
  *v1 = result;
  return result;
}

uint64_t sub_29DA31448(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29DA34D34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29DA34D34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29DA31268(0, &qword_2A1A2CBA8, &qword_2A1A2DB10, 0x29EDBAD78, MEMORY[0x29EDC9A40]);
          sub_29DA31DEC(&qword_2A17D1788, &qword_2A1A2CBA8, &qword_2A1A2DB10, 0x29EDBAD78);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D9FA26C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29DA31610(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29DA34D34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29DA34D34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29DA31268(0, &qword_2A1A2D4A8, &qword_2A1A2D458, 0x29EDBA008, MEMORY[0x29EDC9A40]);
          sub_29DA31DEC(&qword_2A1A2D4A0, &qword_2A1A2D4A8, &qword_2A1A2D458, 0x29EDBA008);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D9FA26C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D9C79FC(0, &qword_2A1A2D458, 0x29EDBA008);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29DA317D8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29D9FA590(255, a3);
    v4 = sub_29DA34CC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29DA31830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29DA318A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29DA31904(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29DA31204(0, &qword_2A1A2CCD0, MEMORY[0x29EDC21B0], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v31 - v5;
  v7 = sub_29DA33D64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v31 - v13;
  sub_29DA31204(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v18 = &v31 - v17;
  if (!a1)
  {
    return 0;
  }

  v31 = v12;
  v32 = v14;
  v19 = a1 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
  v20 = type metadata accessor for HighlightAlert(0);
  v21 = MEMORY[0x29EDC9C68];
  sub_29DA31830(v19 + *(v20 + 32), v18, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68], sub_29DA31204);
  v22 = type metadata accessor for HighlightAlertDiagramInfo(0);
  v23 = (*(*(v22 - 8) + 48))(v18, 1, v22);
  v24 = v23 != 1;

  v25 = sub_29DA318A4(v18, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v21, sub_29DA31204);
  MEMORY[0x29ED6D760](v25);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_29DA318A4(v6, &qword_2A1A2CCD0, MEMORY[0x29EDC21B0], MEMORY[0x29EDC9C68], sub_29DA31204);
  }

  else
  {
    v27 = v32;
    (*(v8 + 32))(v32, v6, v7);
    if (v23 == 1)
    {

      (*(v8 + 8))(v27, v7);
      v24 = 0;
    }

    else
    {
      v28 = v31;
      (*(v8 + 104))(v31, *MEMORY[0x29EDC21A8], v7);
      sub_29DA31DA4(&qword_2A1A2CCD8, 255, MEMORY[0x29EDC21B0]);
      v29 = sub_29DA34814();

      v30 = *(v8 + 8);
      v30(v28, v7);
      v30(v27, v7);
      v24 = v29 ^ 1;
    }
  }

  return v24 & 1;
}

void sub_29DA31D4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29DA31DA4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29DA31DEC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_29DA31268(255, a2, a3, a4, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DA31E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_29DA34644();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29DA336F4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v44 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v44 - v16;
  v52 = sub_29DA33554();
  v18 = *(v52 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v52);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v44 - v22;
  v24 = v9[2];
  v24(v17, a1, v8);
  sub_29DA33514();
  sub_29DA33674();
  if (v25 < 0.0)
  {
    sub_29DA34614();
    v24(v15, a1, v8);
    v24(v50, a2, v8);
    v26 = sub_29DA34634();
    v27 = sub_29DA34B84();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v28 = 136446466;
      v46 = v27;
      v29 = sub_29DA33654();
      v45 = v26;
      v31 = v30;
      v32 = v9[1];
      v32(v15, v8);
      v33 = sub_29D9EBB44(v29, v31, &v55);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      v34 = v50;
      v35 = sub_29DA33654();
      v37 = v36;
      v32(v34, v8);
      v38 = sub_29D9EBB44(v35, v37, &v55);

      *(v28 + 14) = v38;
      v39 = v45;
      _os_log_impl(&dword_29D9BB000, v45, v46, "HighlightAlertState asked to compute relevant date interval with expiration date before start date which is invalid. Creating a zero duration relevant date interval as fallback. start: %{public}s, expiration: %{public}s", v28, 0x16u);
      v40 = v47;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v40, -1, -1);
      MEMORY[0x29ED6E4C0](v28, -1, -1);
    }

    else
    {

      v41 = v9[1];
      v41(v50, v8);
      v41(v15, v8);
    }

    (*(v48 + 8))(v53, v49);
  }

  v42 = v52;
  (*(v18 + 16))(v51, v23, v52);
  sub_29DA33AA4();
  return (*(v18 + 8))(v23, v42);
}

uint64_t sub_29DA322F8()
{
  v1 = *v0;
  v2 = 1145656661;
  v3 = 0x6974617269707865;
  v4 = 0x656C776F6E6B6361;
  if (v1 != 3)
  {
    v4 = 0x657373696D736964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746144746E657665;
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

uint64_t sub_29DA3239C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29DA33220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29DA323C4(uint64_t a1)
{
  v2 = sub_29DA32DD8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DA32400(uint64_t a1)
{
  v2 = sub_29DA32DD8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t HighlightAlertState.encode(to:)(void *a1)
{
  v3 = v1;
  sub_29DA32E78(0, &qword_2A1A2CA60, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29DA32DD8();
  sub_29DA35224();
  v23 = 0;
  sub_29DA33754();
  sub_29DA32EDC(&qword_2A1A2D348, MEMORY[0x29EDB9C08]);
  sub_29DA350D4();
  if (!v2)
  {
    v12 = type metadata accessor for HighlightAlertState();
    v13 = v12[5];
    v22 = 1;
    sub_29DA336F4();
    sub_29DA32EDC(&qword_2A1A2D358, MEMORY[0x29EDB9BC8]);
    sub_29DA350D4();
    v14 = v12[6];
    v21 = 2;
    sub_29DA350D4();
    v15 = *(v3 + v12[7]);
    v20 = 3;
    sub_29DA350B4();
    v16 = *(v3 + v12[8]);
    v19 = 4;
    sub_29DA35084();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t HighlightAlertState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_29DA336F4();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v38 - v8;
  v10 = sub_29DA33754();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA32E78(0, &qword_2A1A2CA68, MEMORY[0x29EDC9E80]);
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v38 - v15;
  v17 = type metadata accessor for HighlightAlertState();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_29D9C706C(a1, a1[3]);
  sub_29DA32DD8();
  v50 = v16;
  v22 = v51;
  sub_29DA35214();
  if (v22)
  {
    return sub_29D9C7968(a1);
  }

  v23 = v9;
  v51 = v17;
  v56 = 0;
  sub_29DA32EDC(&qword_2A1A2D340, MEMORY[0x29EDB9C08]);
  v24 = v47;
  sub_29DA35054();
  v25 = *(v46 + 32);
  v41 = v20;
  v25(v20, v24, v10);
  v55 = 1;
  sub_29DA32EDC(&qword_2A1A2DFE8, MEMORY[0x29EDB9BC8]);
  v26 = v23;
  v27 = v44;
  sub_29DA35054();
  v47 = v10;
  v28 = &v41[*(v51 + 20)];
  v39 = *(v45 + 32);
  v39(v28, v26, v27);
  v54 = 2;
  v29 = v43;
  v40 = 0;
  sub_29DA35054();
  v30 = a1;
  v31 = v51;
  v32 = v41;
  v39(&v41[*(v51 + 24)], v29, v27);
  v53 = 3;
  v33 = sub_29DA35034();
  v34 = v48;
  *(v32 + *(v31 + 28)) = v33 & 1;
  v52 = 4;
  v35 = sub_29DA35004();
  v36 = *(v31 + 32);
  (*(v34 + 8))(v50, v49);
  *(v32 + v36) = v35;
  sub_29DA32F24(v32, v42);
  sub_29D9C7968(v30);
  return sub_29DA32F88(v32);
}

BOOL _s15HighlightAlerts0A10AlertStateV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_29DA33734() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HighlightAlertState();
  v5 = v4[5];
  if ((sub_29DA336B4() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((sub_29DA336B4() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v8 = v4[8];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 != 2)
  {
    return v10 != 2 && ((v10 ^ v9) & 1) == 0;
  }

  return v10 == 2;
}

unint64_t sub_29DA32DD8()
{
  result = qword_2A1A2D298;
  if (!qword_2A1A2D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D298);
  }

  return result;
}

uint64_t type metadata accessor for HighlightAlertState()
{
  result = qword_2A1A2D270;
  if (!qword_2A1A2D270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DA32E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DA32DD8();
    v7 = a3(a1, &type metadata for HighlightAlertState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29DA32EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29DA32F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DA32F88(uint64_t a1)
{
  v2 = type metadata accessor for HighlightAlertState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DA3300C()
{
  sub_29DA33754();
  if (v0 <= 0x3F)
  {
    sub_29DA336F4();
    if (v1 <= 0x3F)
    {
      sub_29DA330B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29DA330B8()
{
  if (!qword_2A1A2CB78)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CB78);
    }
  }
}

unint64_t sub_29DA3311C()
{
  result = qword_2A17D1790;
  if (!qword_2A17D1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1790);
  }

  return result;
}

unint64_t sub_29DA33174()
{
  result = qword_2A1A2D288;
  if (!qword_2A1A2D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D288);
  }

  return result;
}

unint64_t sub_29DA331CC()
{
  result = qword_2A1A2D290;
  if (!qword_2A1A2D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D290);
  }

  return result;
}

uint64_t sub_29DA33220(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1145656661 && a2 == 0xE400000000000000;
  if (v3 || (sub_29DA35114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000065 || (sub_29DA35114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (sub_29DA35114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C776F6E6B6361 && a2 == 0xEC00000064656764 || (sub_29DA35114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064)
  {

    return 4;
  }

  else
  {
    v6 = sub_29DA35114();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_29DA33400()
{
  result = qword_2A17D1798;
  if (!qword_2A17D1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1798);
  }

  return result;
}