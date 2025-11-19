unint64_t sub_29E628CB8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_29E624480(a1);
}

uint64_t sub_29E628CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E628CDC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29E629400(255, &qword_2A1857360, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
    v3 = sub_29E753BA8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29E628D78(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_29E628CDC(255, a2);
    sub_29E628BDC(&qword_2A1857368, &qword_2A1857360, MEMORY[0x29EDBC288]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E628E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E628EF4()
{
  if (!qword_2A1857398)
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
    v0 = sub_29E752CF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857398);
    }
  }
}

uint64_t sub_29E628F88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_29E6294D0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_29E628FF8(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_29E6256A0(v1 + 32, a1);
}

uint64_t sub_29E629004()
{
  v1 = *(v0 + 16);
  sub_29E751758();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29E629060()
{
  v1 = v0[2];
  sub_29E751758();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2A1C733A0](v0, 49, 7);
}

uint64_t sub_29E6290A8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_29E6294D0(0, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  return MEMORY[0x29ED963E0]();
}

uint64_t sub_29E629118()
{
  v1 = v0[2];
  sub_29E751758();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2A1C733A0](v0, 73, 7);
}

void sub_29E6291B0()
{
  if (!qword_2A18573A0)
  {
    sub_29E629400(255, &qword_2A18573A8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    sub_29E629260();
    sub_29E6292F8();
    v0 = sub_29E752B68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18573A0);
    }
  }
}

unint64_t sub_29E629260()
{
  result = qword_2A18573B0;
  if (!qword_2A18573B0)
  {
    sub_29E629400(255, &qword_2A18573A8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18573B0);
  }

  return result;
}

unint64_t sub_29E6292F8()
{
  result = qword_2A18573B8;
  if (!qword_2A18573B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18573B8);
  }

  return result;
}

uint64_t sub_29E62934C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E625CB0();
}

uint64_t sub_29E62935C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_29E62936C()
{
  if (!qword_2A18573C8)
  {
    sub_29E629400(255, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29E629454();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18573C8);
    }
  }
}

void sub_29E629400(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_29E629454()
{
  if (!qword_2A18573D0)
  {
    sub_29E6294D0(255, &qword_2A18573D8, MEMORY[0x29EDBCA98], MEMORY[0x29EDC9C68]);
    v0 = sub_29E7532E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18573D0);
    }
  }
}

void sub_29E6294D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E629520()
{
  result = qword_2A18573E0;
  if (!qword_2A18573E0)
  {
    sub_29E62936C();
    sub_29E628BDC(&qword_2A18573E8, &qword_2A1857070, MEMORY[0x29EDBC270]);
    sub_29E62A828(&qword_2A18573F0, sub_29E629454);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18573E0);
  }

  return result;
}

uint64_t sub_29E629618(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_29E628CDC(255, a2);
  sub_29E628D78(a4, a2);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_29E6296A0()
{
  result = qword_2A18573F8;
  if (!qword_2A18573F8)
  {
    sub_29E629780(255, &qword_2A1857400, sub_29E6291B0);
    sub_29E62A828(&qword_2A18573C0, sub_29E6291B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18573F8);
  }

  return result;
}

void sub_29E629780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E753BA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E6297EC()
{
  result = qword_2A1857408;
  if (!qword_2A1857408)
  {
    sub_29E629780(255, &qword_2A1857410, sub_29E62936C);
    sub_29E629520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857408);
  }

  return result;
}

void sub_29E6298B0()
{
  if (!qword_2A1857418)
  {
    sub_29E629780(255, &qword_2A1857420, sub_29E629954);
    sub_29E629B90();
    v0 = sub_29E753578();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857418);
    }
  }
}

void sub_29E629954()
{
  if (!qword_2A1857428)
  {
    sub_29E629A58(255, &qword_2A1857430, MEMORY[0x29EDC6938], MEMORY[0x29EDC9A40]);
    sub_29E74F098();
    type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem();
    sub_29E629B08();
    sub_29E62A828(&qword_2A1857440, MEMORY[0x29EDC6938]);
    v0 = sub_29E753B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857428);
    }
  }
}

void sub_29E629A58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem()
{
  result = qword_2A1857478;
  if (!qword_2A1857478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29E629B08()
{
  result = qword_2A1857438;
  if (!qword_2A1857438)
  {
    sub_29E629A58(255, &qword_2A1857430, MEMORY[0x29EDC6938], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857438);
  }

  return result;
}

unint64_t sub_29E629B90()
{
  result = qword_2A1857448;
  if (!qword_2A1857448)
  {
    sub_29E629780(255, &qword_2A1857420, sub_29E629954);
    sub_29E629C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857448);
  }

  return result;
}

unint64_t sub_29E629C40()
{
  result = qword_2A1857450;
  if (!qword_2A1857450)
  {
    sub_29E629954();
    sub_29E62A828(&qword_2A1857458, type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857450);
  }

  return result;
}

void sub_29E629CE8()
{
  if (!qword_2A1857460)
  {
    sub_29E6298B0();
    sub_29E753198();
    sub_29E62A828(&qword_2A1857468, sub_29E6298B0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857460);
    }
  }
}

void sub_29E629DBC()
{
  if (!qword_2A1857470)
  {
    sub_29E629CE8();
    sub_29E6298B0();
    sub_29E753198();
    sub_29E62A828(&qword_2A1857468, sub_29E6298B0);
    swift_getOpaqueTypeConformance2();
    sub_29E60DE10();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857470);
    }
  }
}

uint64_t sub_29E629ED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_29E626724();
}

uint64_t sub_29E629F04@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(sub_29E74F098() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);

  return sub_29E626ECC(a1);
}

uint64_t sub_29E629F84()
{
  v1 = sub_29E74F098();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  sub_29E751758();

  v7 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E62A058(unsigned __int8 *a1)
{
  v3 = *(*(sub_29E74F098() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);

  return sub_29E627030(a1);
}

void sub_29E62A100()
{
  sub_29E74F098();
  if (v0 <= 0x3F)
  {
    sub_29E6294D0(319, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E62A1C4()
{
  if (!qword_2A1857488)
  {
    sub_29E62A22C();
    sub_29E62A4B4();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857488);
    }
  }
}

void sub_29E62A22C()
{
  if (!qword_2A1857490)
  {
    sub_29E629A58(255, &qword_2A1857498, sub_29E62A2C4, MEMORY[0x29EDBCC28]);
    sub_29E62A320();
    v0 = sub_29E752B38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857490);
    }
  }
}

void sub_29E62A2C4()
{
  if (!qword_2A18574A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18574A0);
    }
  }
}

void sub_29E62A320()
{
  if (!qword_2A18574A8)
  {
    sub_29E62A3A4();
    sub_29E62A404();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18574A8);
    }
  }
}

void sub_29E62A3A4()
{
  if (!qword_2A18574B0)
  {
    sub_29E629454();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18574B0);
    }
  }
}

unint64_t sub_29E62A404()
{
  result = qword_2A18574B8;
  if (!qword_2A18574B8)
  {
    sub_29E62A3A4();
    sub_29E62A828(&qword_2A18573F0, sub_29E629454);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574B8);
  }

  return result;
}

void sub_29E62A4B4()
{
  if (!qword_2A18574C0)
  {
    sub_29E62A510();
    v0 = sub_29E7531C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18574C0);
    }
  }
}

unint64_t sub_29E62A510()
{
  result = qword_2A18574C8;
  if (!qword_2A18574C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574C8);
  }

  return result;
}

unint64_t sub_29E62A574()
{
  result = qword_2A18574D0;
  if (!qword_2A18574D0)
  {
    sub_29E629A58(255, &qword_2A1857498, sub_29E62A2C4, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574D0);
  }

  return result;
}

uint64_t sub_29E62A5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E62A660()
{
  v1 = *(type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29E627590(v2);
}

unint64_t sub_29E62A6C0()
{
  result = qword_2A18574D8;
  if (!qword_2A18574D8)
  {
    sub_29E62A1C4();
    sub_29E62A770();
    sub_29E62A828(&qword_2A18574E8, sub_29E62A4B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574D8);
  }

  return result;
}

unint64_t sub_29E62A770()
{
  result = qword_2A18574E0;
  if (!qword_2A18574E0)
  {
    sub_29E62A22C();
    sub_29E62A574();
    sub_29E62A3A4();
    sub_29E62A404();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574E0);
  }

  return result;
}

uint64_t sub_29E62A828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E62A8B0(void (*a1)(uint64_t))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

void sub_29E62A960(uint64_t *a1@<X8>)
{
  sub_29E62B1C8(0, &qword_2A1857558, MEMORY[0x29EDBC7D0], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v23 - v4;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7539B8();
  sub_29E753008();
  v6 = sub_29E753018();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = sub_29E7539C8();

  sub_29E62B22C(v5);
  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  v10 = sub_29E7538E8();
  v11 = [v8 quaternaryLabelColor];
  v12 = sub_29E7538E8();
  sub_29E62AD48(0);
  v14 = (a1 + *(v13 + 36));
  sub_29E62B1C8(0, &qword_2A1857510, MEMORY[0x29EDBCAE8], MEMORY[0x29EDBC938]);
  v16 = *(v15 + 28);
  v17 = *MEMORY[0x29EDBCAD0];
  v18 = sub_29E7539D8();
  (*(*(v18 - 8) + 104))(v14 + v16, v17, v18);
  *v14 = swift_getKeyPath();
  *a1 = v7;
  a1[1] = v10;
  a1[2] = v12;
  v19 = sub_29E7534B8();
  KeyPath = swift_getKeyPath();

  sub_29E62AD84(0, &qword_2A18574F0, sub_29E62AD48, &qword_2A1857518, sub_29E62AEE8);
  v22 = (a1 + *(v21 + 36));
  *v22 = KeyPath;
  v22[1] = v19;
}

uint64_t sub_29E62AC50()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_29E62AD84(0, &qword_2A18574F0, sub_29E62AD48, &qword_2A1857518, sub_29E62AEE8);
  sub_29E62AF38();

  return sub_29E753A28();
}

void sub_29E62AD84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E62B1C8(255, a4, a5, MEMORY[0x29EDBC938]);
    v8 = sub_29E752C28();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E62AE1C()
{
  if (!qword_2A1857500)
  {
    sub_29E62AE7C();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857500);
    }
  }
}

void sub_29E62AE7C()
{
  if (!qword_2A1857508)
  {
    v0 = sub_29E7532B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857508);
    }
  }
}

void sub_29E62AEE8()
{
  if (!qword_2A1857520)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857520);
    }
  }
}

unint64_t sub_29E62AF38()
{
  result = qword_2A1857528;
  if (!qword_2A1857528)
  {
    sub_29E62AD84(255, &qword_2A18574F0, sub_29E62AD48, &qword_2A1857518, sub_29E62AEE8);
    sub_29E62B010();
    sub_29E62B164(&qword_2A1857550, &qword_2A1857518, sub_29E62AEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857528);
  }

  return result;
}

unint64_t sub_29E62B010()
{
  result = qword_2A1857530;
  if (!qword_2A1857530)
  {
    sub_29E62AD48(255);
    sub_29E62B0B4();
    sub_29E62B164(&qword_2A1857548, &qword_2A1857510, MEMORY[0x29EDBCAE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857530);
  }

  return result;
}

unint64_t sub_29E62B0B4()
{
  result = qword_2A1857538;
  if (!qword_2A1857538)
  {
    sub_29E62AE1C();
    sub_29E62B3A4(&qword_2A1857540, sub_29E62AE7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857538);
  }

  return result;
}

uint64_t sub_29E62B164(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E62B1C8(255, a2, a3, MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E62B1C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E62B22C(uint64_t a1)
{
  sub_29E62B1C8(0, &qword_2A1857558, MEMORY[0x29EDBC7D0], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E62B2DC(uint64_t a1)
{
  v2 = sub_29E7539D8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D78();
}

uint64_t sub_29E62B3A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E62B3EC()
{
  if (!qword_2A1857568)
  {
    sub_29E62AD84(255, &qword_2A18574F0, sub_29E62AD48, &qword_2A1857518, sub_29E62AEE8);
    sub_29E62AF38();
    v0 = sub_29E753A58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857568);
    }
  }
}

uint64_t type metadata accessor for GoalSection()
{
  result = qword_2A1857578;
  if (!qword_2A1857578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E62B520()
{
  sub_29E62BD1C();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E750CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + qword_2A1857570))
    {
      v12 = *(result + qword_2A1857570);

      sub_29E74F858();
      sub_29E62BD88();
      swift_dynamicCast();
      sub_29E750D48();
      v19[2] = sub_29E750C68();
      v19[3] = v13;
      v19[1] = sub_29E752268();
      v15 = v14;
      (*(v2 + 8))(v5, v1);

      if (v15)
      {
        sub_29E62BDEC();
        v16 = *(v7 + 72);
        v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_29E762F30;
        (*(v7 + 16))(v18 + v17, v10, v6);
        sub_29E750D18();
      }

      else
      {
        sub_29E750C88();
        sub_29E750D28();
      }

      return (*(v7 + 8))(v10, v6);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_29E62B81C()
{
  v0 = *(sub_29E750D58() + qword_2A1857570);

  return swift_deallocClassInstance();
}

uint64_t sub_29E62B874@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E74ED88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v11[0] = 0x74497265746F6F46;
  v11[1] = 0xEB000000005F6D65;
  sub_29E74ED78();
  v7 = sub_29E74ED48();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x29ED96C20](v7, v9);

  a1[3] = sub_29E751628();
  a1[4] = sub_29E62BCD4(&qword_2A1856D88, MEMORY[0x29EDC28B0]);
  sub_29E5FEBF4(a1);
  return sub_29E751618();
}

uint64_t sub_29E62BA94()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11 - v6;
  sub_29E750E38();
  sub_29E750E18();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_29E750E58();
  v9 = sub_29E750E68();
  v8(v7, v0);
  return v9;
}

uint64_t sub_29E62BC20()
{
  sub_29E751A58();
  sub_29E7547D8();
  sub_29E7547B8();
  sub_29E7518A8();
  sub_29E7547F8();
  sub_29E7515F8();
  return sub_29E7547E8();
}

uint64_t sub_29E62BCD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E62BD1C()
{
  if (!qword_2A1857590)
  {
    v0 = sub_29E752278();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857590);
    }
  }
}

unint64_t sub_29E62BD88()
{
  result = qword_2A1857598;
  if (!qword_2A1857598)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1857598);
  }

  return result;
}

void sub_29E62BDEC()
{
  if (!qword_2A1856858)
  {
    sub_29E750CA8();
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856858);
    }
  }
}

uint64_t sub_29E62BE44()
{
  sub_29E62D8C0();
  v1 = v0;
  sub_29E6103B4(v0, qword_2A1869160);
  sub_29E61037C(v1, qword_2A1869160);
  type metadata accessor for LatestSleepScoreVisualizationCell(0);
  type metadata accessor for LatestSleepScoreVisualizationItem(0);
  return sub_29E754808();
}

uint64_t sub_29E62BEC8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29E62CEC0(0, &qword_2A18575B0, type metadata accessor for LatestSleepScoreVisualizationItem);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v12 - v7;
  sub_29E62D928(a3, &v12 - v7, type metadata accessor for LatestSleepScoreVisualizationItem);
  v9 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
  swift_beginAccess();
  sub_29E62D990(v8, a1 + v10);
  swift_endAccess();
  [a1 setNeedsUpdateConfiguration];
  return sub_29E62DA10(v8, &qword_2A18575B0, type metadata accessor for LatestSleepScoreVisualizationItem);
}

uint64_t sub_29E62C038()
{
  sub_29E62D8C0();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18561A8 != -1)
  {
    swift_once();
  }

  v6 = sub_29E61037C(v1, qword_2A1869160);
  (*(v2 + 16))(v5, v6, v1);
  type metadata accessor for LatestSleepScoreVisualizationCell(0);
  sub_29E7503A8();
  sub_29E750398();
  return swift_storeEnumTagMultiPayload();
}

void sub_29E62C180()
{
  v1 = v0;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E62DA6C();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v0;
  type metadata accessor for SleepScoreRoomTileContent(0);
  sub_29E62DC18(&qword_2A18575E0, type metadata accessor for SleepScoreRoomTileContent);
  sub_29E753218();
  sub_29E62DB2C();
  v17[3] = v13;
  v17[4] = sub_29E62DC18(&qword_2A18575F0, sub_29E62DB2C);
  sub_29E5FEBF4(v17);
  sub_29E751088();
  sub_29E62DC18(&qword_2A1856C78, MEMORY[0x29EDC24E0]);
  sub_29E753208();
  (*(v9 + 8))(v12, v8);
  MEMORY[0x29ED972D0](v17);
  (*(v3 + 104))(v6, *MEMORY[0x29EDC6AB0], v2);
  sub_29E754258();
  (*(v3 + 8))(v6, v2);
  v14 = sub_29E754198();

  [v1 setAccessibilityIdentifier_];
}

uint64_t sub_29E62C494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = sub_29E74F5F8();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for SleepScoreRoomTileContent(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v21 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
  swift_beginAccess();
  v16 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v15, 1, v16))
  {
    v18 = type metadata accessor for SleepScoreRoomModel();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  }

  else
  {
    sub_29E62D760(v15, v10);
  }

  sub_29E62C7A0(v6);
  v19 = 1;
  if (!v17(v15, 1, v16))
  {
    v19 = *(v15 + *(v16 + 20));
  }

  sub_29E62DC60(v10, v14);
  (*(v3 + 32))(&v14[*(v11 + 20)], v6, v22);
  v14[*(v11 + 24)] = v19;
  sub_29E62DCE0(v14, v23, type metadata accessor for SleepScoreRoomTileContent);
}

uint64_t sub_29E62C7A0@<X0>(_BYTE *a1@<X8>)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
  swift_beginAccess();
  v8 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  if ((*(*(v8 - 8) + 48))(v1 + v7, 1, v8))
  {
    v9 = type metadata accessor for SleepScoreRoomModel();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
LABEL_4:
    sub_29E62DA10(v6, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
    *a1 = 0;
    goto LABEL_5;
  }

  sub_29E62D760(v1 + v7, v6);
  v10 = type metadata accessor for SleepScoreRoomModel();
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  sub_29E62DA10(v6, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  if (*(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_hasCompletedAnimation) == 1)
  {
    v11 = MEMORY[0x29EDC6A98];
    goto LABEL_6;
  }

  *a1 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_allowedToAnimate);
LABEL_5:
  v11 = MEMORY[0x29EDC6A90];
LABEL_6:
  v12 = *v11;
  v13 = sub_29E74F5F8();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

uint64_t sub_29E62C9E4()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E751078();
}

void sub_29E62CDD4()
{
  sub_29E62CEC0(319, &qword_2A18575B0, type metadata accessor for LatestSleepScoreVisualizationItem);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_29E62CEC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E62CF28()
{
  sub_29E62CEC0(319, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_29E62CFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreRoomModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v24 - v11;
  sub_29E62D7E0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_29E62D760(a1, v17);
  sub_29E62D760(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_29E62DA10(v17, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
LABEL_9:
      v22 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
      v20 = *(a1 + *(v22 + 20)) ^ *(a2 + *(v22 + 20)) ^ 1;
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_29E62D760(v17, v12);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_29E62D860(v12, type metadata accessor for SleepScoreRoomModel);
LABEL_6:
    sub_29E62D860(v17, sub_29E62D7E0);
    goto LABEL_7;
  }

  sub_29E62DCE0(&v17[v18], v8, type metadata accessor for SleepScoreRoomModel);
  v21 = sub_29E631D28(v12, v8);
  sub_29E62D860(v8, type metadata accessor for SleepScoreRoomModel);
  sub_29E62D860(v12, type metadata accessor for SleepScoreRoomModel);
  sub_29E62DA10(v17, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

void sub_29E62D2D8(void *a1)
{
  v2 = v1;
  v4 = sub_29E74F0D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74EE78();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E754048();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v40 - v19;
  v21 = type metadata accessor for SleepScoreRoomModel();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v21);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v28 = &v40 - v27;
  v29 = sub_29E754828();
  if (v29)
  {
    v30 = v29;
    v42 = v7;
    v31 = OBJC_IVAR____TtC20SleepHealthAppPlugin33LatestSleepScoreVisualizationCell_item;
    swift_beginAccess();
    v32 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
    if ((*(*(v32 - 8) + 48))(v2 + v31, 1, v32))
    {

      (*(v22 + 56))(v20, 1, 1, v21);
LABEL_6:
      sub_29E62DA10(v20, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
      return;
    }

    sub_29E62D760(v2 + v31, v20);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {

      goto LABEL_6;
    }

    sub_29E62DCE0(v20, v28, type metadata accessor for SleepScoreRoomModel);
    v33 = [a1 navigationController];
    if (v33)
    {
      v41 = v33;
      sub_29E62D928(v28, v26, type metadata accessor for SleepScoreRoomModel);
      v40 = v30;
      v34 = v43;
      sub_29E74F008();
      v35 = v44;
      sub_29E74F028();
      v36 = v42;
      sub_29E74F018();
      sub_29E62D928(v26, v18, type metadata accessor for SleepScoreRoomModel);
      (*(v22 + 56))(v18, 0, 1, v21);
      v37 = v40;
      v38 = sub_29E6447F4(v34, v35, v40, v36, v18);
      sub_29E62D860(v26, type metadata accessor for SleepScoreRoomModel);
      v39 = v41;
      [v41 pushViewController:v38 animated:1];

      sub_29E62D860(v28, type metadata accessor for SleepScoreRoomModel);
    }

    else
    {
      sub_29E62D860(v28, type metadata accessor for SleepScoreRoomModel);
    }
  }
}

uint64_t sub_29E62D760(uint64_t a1, uint64_t a2)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E62D7E0()
{
  if (!qword_2A18575C8)
  {
    sub_29E62CEC0(255, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18575C8);
    }
  }
}

uint64_t sub_29E62D860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E62D8C0()
{
  if (!qword_2A18575D0)
  {
    type metadata accessor for LatestSleepScoreVisualizationCell(255);
    type metadata accessor for LatestSleepScoreVisualizationItem(255);
    v0 = sub_29E754818();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18575D0);
    }
  }
}

uint64_t sub_29E62D928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E62D990(uint64_t a1, uint64_t a2)
{
  sub_29E62CEC0(0, &qword_2A18575B0, type metadata accessor for LatestSleepScoreVisualizationItem);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E62DA10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E62CEC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E62DA6C()
{
  if (!qword_2A18575D8)
  {
    type metadata accessor for SleepScoreRoomTileContent(255);
    sub_29E62DC18(&qword_2A18575E0, type metadata accessor for SleepScoreRoomTileContent);
    v0 = sub_29E753228();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18575D8);
    }
  }
}

void sub_29E62DB2C()
{
  if (!qword_2A18575E8)
  {
    type metadata accessor for SleepScoreRoomTileContent(255);
    sub_29E751088();
    sub_29E62DC18(&qword_2A18575E0, type metadata accessor for SleepScoreRoomTileContent);
    sub_29E62DC18(&qword_2A1856C78, MEMORY[0x29EDC24E0]);
    v0 = sub_29E753228();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18575E8);
    }
  }
}

uint64_t sub_29E62DC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E62DC60(uint64_t a1, uint64_t a2)
{
  sub_29E62CEC0(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E62DCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_29E62DD58(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_29E74EE78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a4 hasChartModel])
  {
    return 0;
  }

  result = [a4 chartModel];
  if (!result)
  {
    return result;
  }

  v16 = result;
  v27[1] = a2;
  v17 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_29E74EE28();

  v18 = objc_allocWithZone(MEMORY[0x29EDC4668]);
  v19 = sub_29E74EE08();
  v20 = sub_29E754198();
  v21 = [v18 initWithCalendar:v19 queryIdentifier:v20];

  [a1 setSleepDataSourceProvider_];
  v22 = [a1 healthStore];
  v23 = [objc_allocWithZone(MEMORY[0x29EDC6C20]) initWithHealthStore_];

  [a1 setSleepChartFormatter_];
  v24 = [a3 identifier];
  if (!v24)
  {
    sub_29E7541D8();
    v24 = sub_29E754198();

    if (a5)
    {
      goto LABEL_5;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v25 = sub_29E754A28();
LABEL_9:
  v26 = [a1 remoteInteractiveChartForTypeIdentifier:v24 model:v16 chartSummaryTrendModel:v25 displayDate:0];

  (*(v11 + 8))(v14, v10);
  return v26;
}

void *sub_29E62E020()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_29E62E090()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_29E7550C8();
  sub_29E754B98();
  sub_29E754B98();
  sub_29E7550E8();
  if (v3)
  {
    v4 = v3;
    sub_29E754B98();
  }

  return sub_29E755108();
}

void sub_29E62E120()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  sub_29E754B98();
  sub_29E754B98();
  if (v2)
  {
    sub_29E7550E8();
    v4 = v2;
    sub_29E754B98();
  }

  else
  {
    sub_29E7550E8();
  }
}

uint64_t sub_29E62E1C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_29E7550C8();
  sub_29E754B98();
  sub_29E754B98();
  sub_29E7550E8();
  if (v3)
  {
    v4 = v3;
    sub_29E754B98();
  }

  return sub_29E755108();
}

unint64_t sub_29E62E254()
{
  v1 = [*v0 identifier];
  v2 = sub_29E7541D8();
  v4 = v3;

  MEMORY[0x29ED96C20](v2, v4);

  return 0xD000000000000011;
}

uint64_t sub_29E62E2E4(uint64_t a1)
{
  v2 = sub_29E62E3FC();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29E62E350()
{
  result = qword_2A18575F8;
  if (!qword_2A18575F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18575F8);
  }

  return result;
}

unint64_t sub_29E62E3A8()
{
  result = qword_2A1857600;
  if (!qword_2A1857600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857600);
  }

  return result;
}

unint64_t sub_29E62E3FC()
{
  result = qword_2A1857608;
  if (!qword_2A1857608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857608);
  }

  return result;
}

uint64_t sub_29E62E450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_29E609B5C(0, &qword_2A1A7D0B0, 0x29EDC9738);
  if (sub_29E754B88() & 1) != 0 && (sub_29E754B88())
  {
    if (a3)
    {
      if (a6)
      {
        sub_29E609B5C(0, &qword_2A1857610, 0x29EDC4440);
        v8 = a6;
        v9 = a3;
        v10 = sub_29E754B88();

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_29E62E548()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC6B08], v0);
  v5 = sub_29E74F7E8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E62E684()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v5 = sub_29E74F7C8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E62E7CC()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v5 = sub_29E74F7C8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

void sub_29E62E920()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29E62E9EC()
{
  sub_29E6163F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E5FEFC4(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

void sub_29E62EAD4()
{
  v94 = sub_29E74F8B8();
  v0 = *(v94 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x2A1C7C4A8](v94);
  v3 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62F414();
  v4 = sub_29E750108();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v95 = *(v5 + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E7655F0;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A7FA18;
  v9 = sub_29E754198();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    v82 = v7;
    v11 = v7 + v6;
    v91 = v11;
    *v11 = v10;
    *(v11 + 8) = 0;
    v12 = *MEMORY[0x29EDC1608];
    v93 = *(v5 + 104);
    v93(v11, v12, v4);
    v13 = (v11 + v95);
    v87 = "SharingChartItem_";
    v92 = v8;
    sub_29E74F8A8();
    v14 = sub_29E74F7C8();
    v86 = v5 + 104;
    v16 = v15;
    v17 = v0 + 8;
    v18 = *(v0 + 8);
    v19 = v94;
    v18(v3, v94);
    v90 = v18;
    *v13 = v14;
    v13[1] = v16;
    v20 = *MEMORY[0x29EDC1610];
    v88 = v4;
    v93(v13, v20, v4);
    v21 = 2 * v95;
    v22 = v91;
    v23 = v91 + 2 * v95;
    sub_29E74F8A8();
    v84 = 0xD000000000000010;
    v24 = sub_29E74F7C8();
    v26 = v25;
    v18(v3, v19);
    *v23 = v24;
    *(v23 + 8) = v26;
    *(v23 + 16) = 0;
    v85 = *MEMORY[0x29EDC1630];
    v27 = v93;
    (v93)(v22 + v21);
    v28 = v95;
    v29 = v22 + v21 + v95;
    sub_29E74F8A8();
    v30 = sub_29E74F7C8();
    v32 = v31;
    v90(v3, v94);
    v89 = v17;
    *v29 = v30;
    *(v29 + 8) = v32;
    *(v29 + 16) = 0;
    v27(v29, v85, v88);
    v83 = 4 * v28;
    v33 = v91;
    v34 = (v91 + 4 * v28);
    sub_29E74F8A8();
    v35 = sub_29E74F7C8();
    v37 = v36;
    v38 = v94;
    v39 = v90;
    v90(v3, v94);
    *v34 = v35;
    v34[1] = v37;
    v34[2] = 0;
    LODWORD(v84) = *MEMORY[0x29EDC15D0];
    (v93)(v33 + 4 * v28);
    v40 = v95;
    v41 = v33 + v83 + v95;
    sub_29E74F8A8();
    v42 = sub_29E74F7C8();
    v44 = v43;
    v39(v3, v38);
    *v41 = v42;
    *(v41 + 8) = v44;
    *(v41 + 16) = 0;
    v45 = v88;
    v46 = v93;
    v93(v41, v85, v88);
    v47 = v91;
    v48 = (v91 + 6 * v40);
    sub_29E74F8A8();
    v49 = sub_29E74F7C8();
    v51 = v50;
    v90(v3, v94);
    *v48 = v49;
    v48[1] = v51;
    v48[2] = 0;
    v46(v48, v84, v45);
    v83 = 8 * v95;
    v52 = v47 + 7 * v95;
    sub_29E74F8A8();
    v53 = sub_29E74F7C8();
    v55 = v54;
    v56 = v94;
    v57 = v90;
    v90(v3, v94);
    *v52 = v53;
    *(v52 + 8) = v55;
    *(v52 + 16) = 0;
    v58 = v85;
    v59 = v88;
    v93(v52, v85, v88);
    v60 = v91 + v83;
    sub_29E74F8A8();
    v61 = sub_29E74F7C8();
    v63 = v62;
    v57(v3, v56);
    *v60 = v61;
    *(v60 + 8) = v63;
    *(v60 + 16) = 0;
    v93(v60, v58, v59);
    v64 = v91;
    v65 = (v91 + v83 + v95);
    sub_29E74F8A8();
    v66 = sub_29E74F7C8();
    v68 = v67;
    v69 = v90;
    v90(v3, v94);
    *v65 = v66;
    v65[1] = v68;
    v65[2] = 0;
    v70 = v93;
    v93(v65, v84, v88);
    v71 = v64 + 10 * v95;
    sub_29E74F8A8();
    v72 = sub_29E74F7C8();
    v74 = v73;
    v75 = v94;
    v69(v3, v94);
    *v71 = v72;
    *(v71 + 8) = v74;
    *(v71 + 16) = 0;
    v76 = v85;
    v77 = v88;
    v70(v71, v85, v88);
    v78 = v91 + 11 * v95;
    sub_29E74F8A8();
    v79 = sub_29E74F7C8();
    v81 = v80;
    v69(v3, v75);
    *v78 = v79;
    *(v78 + 8) = v81;
    *(v78 + 16) = 0;
    v70(v78, v76, v77);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E62F414()
{
  if (!qword_2A18572F8)
  {
    sub_29E750108();
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18572F8);
    }
  }
}

unint64_t sub_29E62F480()
{
  result = qword_2A1A7CB70;
  if (!qword_2A1A7CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB70);
  }

  return result;
}

uint64_t sub_29E62F5AC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_29E74F8B8();
  v1 = *(v23 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E750218();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E765690, &v25);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_29E6B9C90(0xD00000000000001ALL, 0x800000029E759820, &v25);
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s.%{public}s]: Creating sleep apnea promo tile configuration", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v15, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v22[2] = "SECTION3_PARAGRAPH2";
  v16 = qword_2A1A7FA18;
  sub_29E750208();
  sub_29E74F8A8();
  v17 = sub_29E74F7C8();
  v22[0] = v18;
  v22[1] = v17;
  v19 = *(v1 + 8);
  v20 = v23;
  v19(v4, v23);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v19(v4, v20);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v19(v4, v20);
  return sub_29E750368();
}

uint64_t sub_29E62FA3C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v60 = a2;
  v2 = sub_29E74FF68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v57 = &v52 - v8;
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v52 - v9;
  sub_29E6302C8();
  v55 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E752098();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v59 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v52 - v20;
  sub_29E752068();
  v22 = sub_29E752088();
  v23 = sub_29E7546C8();
  v24 = os_log_type_enabled(v22, v23);
  v58 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = v10;
    v27 = swift_slowAlloc();
    v61 = v27;
    *v25 = 136446466;
    *(v25 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E765690, &v61);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_29E6B9C90(0xD000000000000029, 0x800000029E759840, &v61);
    _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s.%{public}s]: Creating sleep apnea promo tile action handler object", v25, 0x16u);
    swift_arrayDestroy();
    v28 = v27;
    v10 = v26;
    v15 = v58;
    MEMORY[0x29ED98410](v28, -1, -1);
    MEMORY[0x29ED98410](v25, -1, -1);
  }

  v29 = *(v16 + 8);
  v29(v21, v15);
  v30 = v16;
  sub_29E74FEA8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = v59;
  v33 = v57;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v3 + 32))(v10, v14, v2);
    sub_29E752068();
    v34 = v10;
    v35 = *(v3 + 16);
    v56 = v34;
    v35(v33);
    v36 = sub_29E752088();
    v37 = v33;
    v38 = sub_29E7546A8();
    if (os_log_type_enabled(v36, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55 = v30;
      v53 = v40;
      v61 = v40;
      *v39 = 136446466;
      *(v39 + 4) = sub_29E6B9C90(0xD000000000000023, 0x800000029E765690, &v61);
      *(v39 + 12) = 2082;
      (v35)(v54, v37, v2);
      v41 = sub_29E7541F8();
      v43 = v42;
      v44 = *(v3 + 8);
      v44(v37, v2);
      v45 = sub_29E6B9C90(v41, v43, &v61);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_29E5ED000, v36, v38, "[%{public}s] Failed to get country code: %{public}s", v39, 0x16u);
      v46 = v53;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v46, -1, -1);
      MEMORY[0x29ED98410](v39, -1, -1);

      v29(v59, v58);
      v44(v56, v2);
    }

    else
    {

      v49 = *(v3 + 8);
      v49(v37, v2);
      v29(v32, v58);
      v49(v56, v2);
    }

    v48 = 1;
  }

  else
  {
    v47 = sub_29E74FFA8();
    (*(*(v47 - 8) + 32))(v60, v14, v47);
    v48 = 0;
  }

  v50 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
  return (*(*(v50 - 8) + 56))(v60, v48, 1, v50);
}

uint64_t sub_29E630040(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E6303BC();

  return MEMORY[0x2A1C63508](a1, a2, v4);
}

unint64_t sub_29E6300A4()
{
  result = qword_2A1A7CB78;
  if (!qword_2A1A7CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB78);
  }

  return result;
}

uint64_t sub_29E630114()
{
  sub_29E6163F8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  sub_29E63027C();
  *(inited + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E5FEFC4(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29E6301B8(uint64_t a1)
{
  v2 = sub_29E6300A4();

  return MEMORY[0x2A1C63270](a1, v2);
}

uint64_t sub_29E630204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E6300A4();

  return MEMORY[0x2A1C63268](a1, a2, a3, v6);
}

unint64_t sub_29E63027C()
{
  result = qword_2A1A7BDB8;
  if (!qword_2A1A7BDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A7BDB8);
  }

  return result;
}

void sub_29E6302C8()
{
  if (!qword_2A1A7BCC8)
  {
    sub_29E74FFA8();
    sub_29E74FF68();
    sub_29E630374(&qword_2A1A7CF58, MEMORY[0x29EDC39C0]);
    v0 = sub_29E755118();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BCC8);
    }
  }
}

uint64_t sub_29E630374(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E6303BC()
{
  result = qword_2A1A7CB80;
  if (!qword_2A1A7CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB80);
  }

  return result;
}

uint64_t sub_29E630430(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x800000029E757160;
  if (v3 == 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x800000029E757160;
  }

  else
  {
    v6 = 0x800000029E757180;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F70784520464450;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000064657472;
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = 0x800000029E757180;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6F70784520464450;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000064657472;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29E755028();
  }

  return v11 & 1;
}

uint64_t sub_29E630514()
{
  v1 = *v0;
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E6305CC()
{
  *v0;
  *v0;
  sub_29E7542D8();
}

uint64_t sub_29E630670()
{
  v1 = *v0;
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E630724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29E630C58();
  *a2 = result;
  return result;
}

void sub_29E630754(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064657472;
  v4 = 0x800000029E757160;
  v5 = 0xD00000000000001ALL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000029E757180;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F70784520464450;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_29E6307CC()
{
  result = qword_2A1857628;
  if (!qword_2A1857628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857628);
  }

  return result;
}

uint64_t sub_29E630820(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6163696669746F4ELL;
  v4 = 0xEC0000006E6F6974;
  if (v2 != 1)
  {
    v3 = 0x7079542061746144;
    v4 = 0xEE006D6F6F522065;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D6D7553;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6163696669746F4ELL;
  v8 = 0xEC0000006E6F6974;
  if (*a2 != 1)
  {
    v7 = 0x7079542061746144;
    v8 = 0xEE006D6F6F522065;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D6D7553;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29E755028();
  }

  return v11 & 1;
}

uint64_t sub_29E63094C()
{
  v1 = *v0;
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E630A04()
{
  *v0;
  *v0;
  sub_29E7542D8();
}

uint64_t sub_29E630AA8()
{
  v1 = *v0;
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E630B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29E630CA4();
  *a2 = result;
  return result;
}

void sub_29E630B8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x6163696669746F4ELL;
  if (v2 != 1)
  {
    v5 = 0x7079542061746144;
    v4 = 0xEE006D6F6F522065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D6D7553;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_29E630C04()
{
  result = qword_2A1857630;
  if (!qword_2A1857630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857630);
  }

  return result;
}

uint64_t sub_29E630C58()
{
  v0 = sub_29E754EF8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29E630CA4()
{
  v0 = sub_29E754EF8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for SleepScheduleDataSource()
{
  result = qword_2A1857650;
  if (!qword_2A1857650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E630D94(uint64_t *a1, uint64_t a2)
{
  v36 = a1;
  sub_29E6212E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C();
  v35 = v8;
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E63176C();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v35 - v19;
  sub_29E602E20(a1, v40);
  v21 = type metadata accessor for SleepRoomScheduleSection(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_29E60613C(v40);
  sub_29E7527B8();
  if ((v40[0] & BYTE2(v40[0])) & BYTE1(v40[0]))
  {
    v24 = MEMORY[0x29EDC2000];
  }

  else
  {
    v24 = MEMORY[0x29EDC1FF8];
  }

  (*(v14 + 104))(v20, *v24, v13);
  v25 = type metadata accessor for SleepScheduleDataSource();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  *(swift_allocObject() + qword_2A1857638) = MEMORY[0x29EDCA1A0];
  (*(v14 + 16))(v18, v20, v13);

  v28 = sub_29E750918();
  (*(v14 + 8))(v20, v13);
  v40[0] = a2;
  sub_29E602DD4();
  swift_retain_n();
  v29 = sub_29E754908();
  v39 = v29;
  v30 = sub_29E7548D8();
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  sub_29E621428();
  sub_29E6317D8(&qword_2A18572A8, sub_29E621428);
  sub_29E6317D8(&qword_2A18568B8, sub_29E602DD4);
  sub_29E752968();
  sub_29E6214E8(v7);

  v31 = swift_allocObject();
  swift_weakInit();

  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = a2;
  v32[4] = v37;
  sub_29E6317D8(&qword_2A18572B8, sub_29E62133C);

  v33 = v35;
  sub_29E7529A8();

  (*(v38 + 8))(v11, v33);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E5FECBC(v36);
  return v28;
}

uint64_t sub_29E631288()
{
  type metadata accessor for SleepScheduleDataSource();
  sub_29E602E20(v0 + 16, v4);
  v1 = *(v0 + 56);

  sub_29E630D94(v4, v1);
  sub_29E6317D8(&qword_2A1857660, type metadata accessor for SleepScheduleDataSource);
  sub_29E750828();

  v2 = sub_29E750818();

  return v2;
}

uint64_t sub_29E631368()
{
  sub_29E63176C();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E7527B8();
    if ((v8[5] & v8[7]) & v8[6])
    {
      v6 = MEMORY[0x29EDC2000];
    }

    else
    {
      v6 = MEMORY[0x29EDC1FF8];
    }

    (*(v2 + 104))(v5, *v6, v1);
    sub_29E750908();
  }
}

uint64_t sub_29E63151C(uint64_t a1, uint64_t a2)
{
  sub_29E63176C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  *(swift_allocObject() + qword_2A1857638) = MEMORY[0x29EDCA1A0];
  (*(v6 + 16))(v9, a2, v5);
  v12 = sub_29E750918();
  (*(v6 + 8))(a2, v5);
  return v12;
}

uint64_t sub_29E631650()
{
  v0 = *(sub_29E750938() + qword_2A1857638);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6316A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29E6316F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_29E63176C()
{
  if (!qword_2A1857668)
  {
    type metadata accessor for SleepRoomScheduleSection(255);
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857668);
    }
  }
}

uint64_t sub_29E6317CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_29E631368();
}

uint64_t sub_29E6317D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E631834()
{
  if (!qword_2A1A7CFB0)
  {
    sub_29E74F2D8();
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7CFB0);
    }
  }
}

uint64_t type metadata accessor for SleepScoreRoomModel()
{
  result = qword_2A1A7CEC8;
  if (!qword_2A1A7CEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6318EC()
{
  sub_29E74F048();
  if (v0 <= 0x3F)
  {
    sub_29E631834();
    if (v1 <= 0x3F)
    {
      sub_29E619E1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E63198C()
{
  v1 = sub_29E74F2D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74F048();
  sub_29E632154(&qword_2A1857678, MEMORY[0x29EDC6920]);
  sub_29E7540B8();
  v10 = type metadata accessor for SleepScoreRoomModel();
  sub_29E631CC4(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_29E7550E8();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_29E7550E8();
    sub_29E632154(&qword_2A1857680, MEMORY[0x29EDC69D8]);
    sub_29E7540B8();
    (*(v2 + 8))(v5, v1);
  }

  v11 = (v0 + *(v10 + 24));
  if (!v11[1])
  {
    return sub_29E7550E8();
  }

  v12 = *v11;
  sub_29E7550E8();
  return sub_29E7542D8();
}

uint64_t sub_29E631BF8()
{
  sub_29E7550C8();
  sub_29E63198C();
  return sub_29E755108();
}

uint64_t sub_29E631C3C()
{
  sub_29E7550C8();
  sub_29E63198C();
  return sub_29E755108();
}

uint64_t sub_29E631CC4(uint64_t a1, uint64_t a2)
{
  sub_29E631834();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E631D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74F2D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E632090();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((MEMORY[0x29ED91950](a1, a2) & 1) == 0)
  {
    return 0;
  }

  v30 = type metadata accessor for SleepScoreRoomModel();
  v18 = *(v30 + 20);
  v19 = *(v14 + 48);
  sub_29E631CC4(a1 + v18, v17);
  sub_29E631CC4(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_29E631CC4(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v19], v4);
      sub_29E632154(&qword_2A1857690, MEMORY[0x29EDC69D8]);
      v22 = sub_29E754108();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_29E6320F4(v17, sub_29E631834);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_29E6320F4(v17, sub_29E632090);
    return 0;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_29E6320F4(v17, sub_29E631834);
LABEL_11:
  v24 = *(v30 + 24);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (v28 && (*v25 == *v27 && v26 == v28 || (sub_29E755028() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v28)
  {
    return 1;
  }

  return 0;
}

void sub_29E632090()
{
  if (!qword_2A1857688)
  {
    sub_29E631834();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857688);
    }
  }
}

uint64_t sub_29E6320F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E632154(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6321E4()
{
  type metadata accessor for SleepScoreCardComponentViewModel();
  if (v0 <= 0x3F)
  {
    sub_29E638014(319, &qword_2A18576A8, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E6322A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = type metadata accessor for StandardComponentSection(0);
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v29);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E632B30(0, &qword_2A18576B0, MEMORY[0x29EDBC7E8]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v26 - v8;
  v10 = type metadata accessor for AXComponentSection(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E752EB8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1 + *(type metadata accessor for CardComponentSection(0) + 20);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    sub_29E7546B8();
    v27 = v14;
    v23 = sub_29E753358();
    v28 = v9;
    v24 = v23;
    sub_29E751F78();

    v9 = v28;
    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v20, 0);
    (*(v15 + 8))(v18, v27);
    if (v31 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_29E632774(v2, v13, type metadata accessor for SleepScoreCardComponentViewModel);
    sub_29E632774(v13, v9, type metadata accessor for AXComponentSection);
    swift_storeEnumTagMultiPayload();
    sub_29E6327DC(&qword_2A18576B8, type metadata accessor for AXComponentSection);
    sub_29E6327DC(&qword_2A18576C0, type metadata accessor for StandardComponentSection);
    sub_29E753118();
    v21 = type metadata accessor for AXComponentSection;
    v22 = v13;
    return sub_29E632824(v22, v21);
  }

  if (v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E632774(v2, v5, type metadata accessor for SleepScoreCardComponentViewModel);
  sub_29E632774(v5, v9, type metadata accessor for StandardComponentSection);
  swift_storeEnumTagMultiPayload();
  sub_29E6327DC(&qword_2A18576B8, type metadata accessor for AXComponentSection);
  sub_29E6327DC(&qword_2A18576C0, type metadata accessor for StandardComponentSection);
  sub_29E753118();
  v21 = type metadata accessor for StandardComponentSection;
  v22 = v5;
  return sub_29E632824(v22, v21);
}

uint64_t sub_29E632774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6327DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E632824(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6328D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreCardComponentViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E632950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreCardComponentViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E6329C0()
{
  result = type metadata accessor for SleepScoreCardComponentViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29E632A34()
{
  result = qword_2A18576E8;
  if (!qword_2A18576E8)
  {
    sub_29E632B30(255, &qword_2A18576F0, MEMORY[0x29EDBC7F0]);
    sub_29E6327DC(&qword_2A18576B8, type metadata accessor for AXComponentSection);
    sub_29E6327DC(&qword_2A18576C0, type metadata accessor for StandardComponentSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18576E8);
  }

  return result;
}

void sub_29E632B30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AXComponentSection(255);
    v7 = type metadata accessor for StandardComponentSection(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E632BBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_29E752EF8();
  LOBYTE(v44[0]) = 0;
  sub_29E633048(a1, &v53);
  v25 = *&v54[48];
  v26 = *&v54[64];
  v21 = v53;
  v22 = *v54;
  v23 = *&v54[16];
  v24 = *&v54[32];
  v28[1] = *v54;
  v28[2] = *&v54[16];
  v27 = *&v54[80];
  v28[0] = v53;
  v28[3] = *&v54[32];
  v28[4] = *&v54[48];
  v28[5] = *&v54[64];
  v28[6] = *&v54[80];
  sub_29E632774(&v21, &v37, sub_29E6377EC);
  sub_29E632824(v28, sub_29E6377EC);
  *&v20[55] = v24;
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[103] = v27;
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  v4 = v44[0];
  v5 = sub_29E7533C8();
  sub_29E7529C8();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_29E752EF8();
  LOBYTE(v44[0]) = 0;
  sub_29E633FF0(&v53);
  v33 = *&v54[48];
  v34 = *&v54[64];
  v29 = v53;
  v30 = *v54;
  v31 = *&v54[16];
  v32 = *&v54[32];
  v36[1] = *v54;
  v36[2] = *&v54[16];
  v35 = *&v54[80];
  v36[0] = v53;
  v36[3] = *&v54[32];
  v36[4] = *&v54[48];
  v36[5] = *&v54[64];
  v36[6] = *&v54[80];
  sub_29E632774(&v29, &v37, sub_29E637980);
  sub_29E632824(v36, sub_29E637980);
  *&v19[55] = v32;
  *&v19[71] = v33;
  *&v19[87] = v34;
  *&v19[103] = v35;
  *&v19[7] = v29;
  *&v19[23] = v30;
  *&v19[39] = v31;
  v15 = v44[0];
  v37 = v3;
  v38[0] = v4;
  *&v38[49] = *&v20[48];
  *&v38[33] = *&v20[32];
  *&v38[17] = *&v20[16];
  *&v38[1] = *v20;
  *&v38[112] = *&v20[111];
  *&v38[97] = *&v20[96];
  *&v38[81] = *&v20[80];
  *&v38[65] = *&v20[64];
  v38[120] = v5;
  *&v39 = v7;
  *(&v39 + 1) = v9;
  *&v40 = v11;
  *(&v40 + 1) = v13;
  v41 = 0;
  LOBYTE(__src[11]) = 0;
  __src[9] = v39;
  __src[10] = v40;
  __src[2] = *&v38[16];
  __src[3] = *&v38[32];
  __src[0] = v3;
  __src[1] = *v38;
  __src[7] = *&v38[96];
  __src[8] = *&v38[112];
  __src[5] = *&v38[64];
  __src[6] = *&v38[80];
  __src[4] = *&v38[48];
  v42[0] = v14;
  v42[1] = 0;
  v43[0] = v44[0];
  *&v43[17] = *&v19[16];
  *&v43[1] = *v19;
  *&v43[81] = *&v19[80];
  *&v43[65] = *&v19[64];
  *&v43[97] = *&v19[96];
  *&v43[112] = *(&v35 + 1);
  *&v43[33] = *&v19[32];
  *&v43[49] = *&v19[48];
  *(&__src[17] + 8) = *&v43[80];
  *(&__src[18] + 8) = *&v43[96];
  *(&__src[16] + 8) = *&v43[64];
  *(&__src[11] + 8) = v14;
  *(&__src[15] + 8) = *&v43[48];
  *(&__src[14] + 8) = *&v43[32];
  *(&__src[13] + 8) = *&v43[16];
  *(&__src[12] + 8) = *v43;
  *(&__src[19] + 1) = *(&v35 + 1);
  memcpy(a2, __src, 0x140uLL);
  v50 = *&v19[64];
  v51 = *&v19[80];
  *v52 = *&v19[96];
  v46 = *v19;
  v47 = *&v19[16];
  v48 = *&v19[32];
  v44[0] = v14;
  v44[1] = 0;
  v45 = v15;
  *&v52[15] = *&v19[111];
  v49 = *&v19[48];
  sub_29E632774(&v37, &v53, sub_29E637774);
  sub_29E632774(v42, &v53, sub_29E6378B0);
  sub_29E632824(v44, sub_29E6378B0);
  *&v54[65] = *&v20[64];
  *&v54[81] = *&v20[80];
  *v55 = *&v20[96];
  *&v54[1] = *v20;
  *&v54[17] = *&v20[16];
  *&v54[33] = *&v20[32];
  v53 = v3;
  v54[0] = v4;
  *&v55[15] = *&v20[111];
  *&v54[49] = *&v20[48];
  v56 = v5;
  v57 = v7;
  v58 = v9;
  v59 = v11;
  v60 = v13;
  v61 = 0;
  sub_29E632824(&v53, sub_29E637774);
}

uint64_t sub_29E633048@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v86 = a2;
  sub_29E631834();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v83 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E753508();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E74E998();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v18 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v85 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v84 = sub_29E74EF98();
  sub_29E633810(v18);
  v88 = sub_29E7535F8();
  KeyPath = v19;
  v21 = v20;
  v78 = *MEMORY[0x29EDBC9C8];
  v87 = a1;
  v22 = v11[13];
  v71[2] = v11 + 13;
  v77 = v22;
  v71[0] = v10;
  v22(v14);
  v23 = v14;
  v72 = sub_29E753448();
  v24 = *(v72 - 8);
  v25 = *(v24 + 56);
  v71[1] = v24 + 56;
  v73 = v25;
  v25(v9, 1, 1, v72);
  sub_29E753498();
  v26 = v9;
  v76 = sub_29E637500;
  sub_29E632824(v9, sub_29E637500);
  v27 = v11[1];
  v74 = v11 + 1;
  v75 = v27;
  v27(v14, v10);
  v28 = v21;
  v29 = v88;
  v30 = KeyPath;
  v81 = sub_29E7535D8();
  v80 = v31;
  v33 = v32;
  v82 = v34;

  sub_29E60DB44(v29, v30, v28 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v88) = v33 & 1;
  LOBYTE(v94) = v33 & 1;
  LOBYTE(v91) = 1;
  v94 = sub_29E5FAF38();
  v95 = v35;
  sub_29E60DE10();
  v36 = sub_29E753608();
  v38 = v37;
  v40 = v39;
  v41 = v71[0];
  v77(v23, v78, v71[0]);
  v42 = v72;
  (*(v24 + 104))(v26, *MEMORY[0x29EDBC988], v72);
  v73(v26, 0, 1, v42);
  sub_29E753478();
  sub_29E753498();
  sub_29E632824(v26, v76);
  v75(v23, v41);
  v43 = sub_29E7535D8();
  v45 = v44;
  v47 = v46;

  sub_29E60DB44(v36, v38, v40 & 1);

  v48 = type metadata accessor for SleepScoreCardComponentViewModel();
  v49 = v83;
  sub_29E632774(v87 + *(v48 + 20), v83, sub_29E631834);
  v50 = sub_29E74F2D8();
  v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
  sub_29E632824(v49, sub_29E631834);
  if (v51 == 1)
  {
    v52 = sub_29E753968();
  }

  else
  {
    v52 = sub_29E753958();
  }

  v94 = v52;
  v53 = sub_29E7535B8();
  v54 = v43;
  v55 = v53;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  sub_29E60DB44(v54, v45, v47 & 1);

  v62 = v81;
  v63 = v80;
  *&v91 = v81;
  *(&v91 + 1) = v80;
  LOBYTE(v92) = v88;
  *(&v92 + 1) = *v103;
  DWORD1(v92) = *&v103[3];
  v64 = v82;
  v65 = KeyPath;
  *(&v92 + 1) = v82;
  *v93 = KeyPath;
  v93[16] = 1;
  *&v93[17] = 256;
  v90 = 0;
  v89 = v59 & 1;
  v66 = v86;
  *v86 = v84;
  v67 = v91;
  v68 = v92;
  v69 = *v93;
  *(v66 + 55) = *&v93[15];
  *(v66 + 5) = v69;
  *(v66 + 3) = v68;
  *(v66 + 1) = v67;
  v66[8] = 0x4020000000000000;
  *(v66 + 72) = 0;
  v66[10] = v55;
  v66[11] = v57;
  *(v66 + 96) = v59 & 1;
  v66[13] = v61;

  sub_29E632774(&v91, &v94, sub_29E6371F8);
  sub_29E62935C(v55, v57, v59 & 1);

  sub_29E60DB44(v55, v57, v59 & 1);

  v94 = v62;
  v95 = v63;
  v96 = v88;
  *v97 = *v103;
  *&v97[3] = *&v103[3];
  v98 = v64;
  v99 = v65;
  v100 = 0;
  v101 = 1;
  v102 = 256;
  sub_29E632824(&v94, sub_29E6371F8);
}

uint64_t sub_29E633810@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  sub_29E637500(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29E753508();
  v48 = *(v50 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v50);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74E9F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6380F8(0, &qword_2A18577E8, MEMORY[0x29EDB9990], MEMORY[0x29EDB9988], MEMORY[0x29EDB9A30]);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v55 = &v44 - v12;
  v13 = sub_29E74E948();
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E74E938();
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_29E754188();
  v21 = *(v58 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v58);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E754168();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x2A1C7C4A8](v25 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v28 = sub_29E5FB170();
  if (v29)
  {
    v50 = v28;
    sub_29E754158();
    sub_29E754148();
    sub_29E754158();
    sub_29E754148();
    v45 = v1;
    sub_29E74EFB8();
    sub_29E754138();

    sub_29E754148();
    sub_29E754178();
    sub_29E65B0B4(v24);
    v30 = *(v21 + 8);
    v31 = v58;
    v30(v24, v58);
    sub_29E754138();

    sub_29E754148();
    sub_29E754138();

    sub_29E754148();
    sub_29E754178();
    sub_29E74E928();
    v32 = v59;
    sub_29E65B284(v24, v20);
    (*(v51 + 8))(v20, v52);
    v30(v24, v31);
    sub_29E74E968();
    KeyPath = swift_getKeyPath();
    *(&v44 - 2) = MEMORY[0x2A1C7C4A8](KeyPath);
    swift_getKeyPath();
    v34 = v55;
    sub_29E74E958();

    v35 = (*(v53 + 8))(v16, v54);
    MEMORY[0x2A1C7C4A8](v35);
    v36 = v45;
    *(&v44 - 2) = v32;
    *(&v44 - 1) = v36;
    sub_29E634B44(sub_29E637B58, (&v44 - 4));
    return (*(v56 + 8))(v34, v57);
  }

  else
  {
    sub_29E754158();
    sub_29E754148();
    sub_29E74EFB8();
    sub_29E754138();

    sub_29E754148();
    sub_29E754178();
    sub_29E65B0B4(v24);
    (*(v21 + 8))(v24, v58);
    sub_29E74E9E8();
    sub_29E74E9A8();
    v39 = v47;
    v38 = v48;
    v40 = v50;
    (*(v48 + 104))(v47, *MEMORY[0x29EDBC9C8], v50);
    v41 = sub_29E753448();
    v42 = v49;
    (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
    sub_29E753478();
    v43 = sub_29E753498();
    sub_29E632824(v42, sub_29E637500);
    (*(v38 + 8))(v39, v40);
    v60 = v43;
    sub_29E637B04();
    return sub_29E74E9B8();
  }
}

uint64_t sub_29E633FF0@<X0>(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_29E753938();
  sub_29E634168(&v11);
  v3 = v17;
  v21 = v17;
  v19 = v17;
  v4 = v12;
  v5 = v11;
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  v18[0] = v11;
  v18[1] = v12;
  v18[2] = v13;
  v18[3] = v14;
  v6 = v15;
  v8 = v13;
  v7 = v14;
  v20[4] = v15;
  v20[5] = v16;
  v18[4] = v15;
  v18[5] = v16;
  *a1 = v2;
  *(a1 + 104) = v3;
  *(a1 + 88) = v16;
  *(a1 + 72) = v6;
  *(a1 + 56) = v7;
  *(a1 + 40) = v8;
  *(a1 + 24) = v4;
  *(a1 + 8) = v5;

  sub_29E632774(v18, &v10, sub_29E637A38);
  sub_29E632824(v20, sub_29E637A38);
}

__n128 sub_29E634168@<Q0>(uint64_t a1@<X8>)
{
  sub_29E637500(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E753508();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.n128_u64[0] = sub_29E5FC8F8();
  v32.n128_u64[1] = v11;
  sub_29E60DE10();
  v12 = sub_29E753608();
  v14 = v13;
  v16 = v15;
  (*(v7 + 104))(v10, *MEMORY[0x29EDBC9C8], v6);
  v17 = sub_29E753448();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_29E753498();
  sub_29E632824(v5, sub_29E637500);
  (*(v7 + 8))(v10, v6);
  v18 = sub_29E7535D8();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;

  sub_29E60DB44(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v32.n128_u8[0] = v10 & 1;
  v35 = 1;
  v25 = sub_29E753C08();
  v27 = v26;
  sub_29E634F50(v31[1], &v32);
  v28 = v33;
  v29 = v34;
  result = v32;
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = 256;
  *(a1 + 56) = result;
  *(a1 + 72) = v28;
  *(a1 + 80) = v29;
  *(a1 + 88) = v25;
  *(a1 + 96) = v27;
  return result;
}

uint64_t sub_29E63440C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  sub_29E637388(0, &qword_2A1857840, MEMORY[0x29EDB99B0], MEMORY[0x29EDB9990], MEMORY[0x29EDCA110]);
  return sub_29E754108() & 1;
}

uint64_t sub_29E63449C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v46 = a2;
  sub_29E631834();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E753508();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637B74();
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v44 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = &v41 - v21;
  sub_29E7544C8();
  v47 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    if (*a1 == 2)
    {
      v42 = sub_29E637B74;
      sub_29E632774(a1, v22, sub_29E637B74);
      v28 = *(v17 + 48);
      (*(v12 + 104))(v15, *MEMORY[0x29EDBC9C8], v11);
      v29 = sub_29E753448();
      (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
      v30 = sub_29E753498();
      sub_29E632824(v10, sub_29E637500);
      (*(v12 + 8))(v15, v11);
      sub_29E637C08();
      sub_29E6327DC(&qword_2A1857830, sub_29E637C08);
      v31 = sub_29E74E9C8();
      v49 = v30;
      sub_29E637B04();
      sub_29E74EA08();
      v31(v48, 0);
      sub_29E632824(&v22[v28], sub_29E637C08);
      v32 = v44;
      sub_29E632774(a1, v44, v42);
      v33 = type metadata accessor for SleepScoreCardComponentViewModel();
      v34 = v45;
      sub_29E632774(v43 + *(v33 + 20), v45, sub_29E631834);
      v35 = sub_29E74F2D8();
      LODWORD(v28) = (*(*(v35 - 8) + 48))(v34, 1, v35);
      sub_29E632824(v34, sub_29E631834);
      if (v28 == 1)
      {
        v36 = sub_29E753968();
      }

      else
      {
        v36 = sub_29E753958();
      }

      v37 = v36;
      v38 = *(v17 + 48);
      v39 = sub_29E74E9C8();
      v49 = v37;
      sub_29E637D58();
      sub_29E74EA08();
      v39(v48, 0);
      v27 = v32 + v38;
      goto LABEL_11;
    }

    if (*a1 == 1)
    {
      sub_29E632774(a1, v22, sub_29E637B74);
      v23 = *(v17 + 48);
      (*(v12 + 104))(v15, *MEMORY[0x29EDBC9C8], v11);
      v24 = sub_29E753448();
      (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
      sub_29E753478();
      v25 = sub_29E753498();
      sub_29E632824(v10, sub_29E637500);
      (*(v12 + 8))(v15, v11);
      sub_29E637C08();
      sub_29E6327DC(&qword_2A1857830, sub_29E637C08);
      v26 = sub_29E74E9C8();
      v49 = v25;
      sub_29E637B04();
      sub_29E74EA08();
      v26(v48, 0);
      v27 = &v22[v23];
LABEL_11:
      sub_29E632824(v27, sub_29E637C08);
    }
  }
}

uint64_t sub_29E634B44(void (*a1)(char *), uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  sub_29E637B74();
  v31 = v3;
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637174(0, &qword_2A1857810, sub_29E637B74, MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v30 - v9;
  v11 = MEMORY[0x29EDB9990];
  v12 = MEMORY[0x29EDB9988];
  v30 = MEMORY[0x29EDB9A30];
  sub_29E6380F8(0, &qword_2A18577E8, MEMORY[0x29EDB9990], MEMORY[0x29EDB9988], MEMORY[0x29EDB9A30]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v18 = &v30 - v17;
  v19 = v12;
  v20 = MEMORY[0x29EDB9A20];
  sub_29E6380F8(0, &qword_2A1857818, v11, v19, MEMORY[0x29EDB9A20]);
  v22 = v21;
  v32 = *(v21 - 8);
  v23 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v30 - v24;
  (*(v15 + 16))(v18, v36, v14);
  sub_29E637C9C(&qword_2A1857820, &qword_2A18577E8, v30);
  sub_29E754398();
  sub_29E637C9C(&qword_2A1857828, &qword_2A1857818, v20);
  v26 = v25;
  v36 = v22;
  sub_29E754BF8();
  v27 = *(v33 + 48);
  v28 = v31;
  if ((v27)(v10, 1) != 1)
  {
    while (1)
    {
      sub_29E637CF4(v10, v6);
      v34(v6);
      if (v2)
      {
        break;
      }

      sub_29E632824(v6, sub_29E637B74);
      sub_29E754BF8();
      if (v27(v10, 1, v28) == 1)
      {
        return (*(v32 + 8))(v26, v36);
      }
    }

    sub_29E632824(v6, sub_29E637B74);
  }

  return (*(v32 + 8))(v26, v36);
}

uint64_t sub_29E634F50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  sub_29E631834();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v43 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E753508();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v42[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v45 = sub_29E5FC098();
  v46 = v15;
  sub_29E60DE10();
  v16 = sub_29E753608();
  v18 = v17;
  v20 = v19;
  (*(v11 + 104))(v14, *MEMORY[0x29EDBC9C8], v10);
  v21 = sub_29E753448();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_29E753498();
  sub_29E632824(v9, sub_29E637500);
  (*(v11 + 8))(v14, v10);
  v22 = sub_29E7535D8();
  v24 = v23;
  v26 = v25;
  v42[0] = v27;

  sub_29E60DB44(v16, v18, v20 & 1);

  v28 = type metadata accessor for SleepScoreCardComponentViewModel();
  v29 = v43;
  sub_29E632774(a1 + *(v28 + 20), v43, sub_29E631834);
  v30 = sub_29E74F2D8();
  v31 = (*(*(v30 - 8) + 48))(v29, 1, v30);
  sub_29E632824(v29, sub_29E631834);
  if (v31 == 1)
  {
    v32 = sub_29E753968();
  }

  else
  {
    v32 = sub_29E753958();
  }

  v45 = v32;
  v33 = sub_29E7535B8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_29E60DB44(v22, v24, v26 & 1);

  v41 = v44;
  *v44 = v33;
  v41[1] = v35;
  *(v41 + 16) = v37 & 1;
  v41[3] = v39;
  return result;
}

void *sub_29E63534C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E752FF8();
  v9 = 0;
  sub_29E632BBC(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_29E632774(__dst, &v6, sub_29E6376D0);
  sub_29E632824(v11, sub_29E6376D0);
  memcpy(&v8[7], __dst, 0x140uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x147uLL);
}

uint64_t sub_29E63543C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = sub_29E752EF8();
  LOBYTE(v73) = 0;
  sub_29E635BCC(&v81);
  v102 = v81;
  v103 = *v82;
  v104[0] = *&v82[16];
  *(v104 + 11) = *&v82[27];
  v105[0] = v81;
  v105[1] = *v82;
  v106[0] = *&v82[16];
  *(v106 + 11) = *&v82[27];
  sub_29E632774(&v102, &v63, sub_29E637140);
  sub_29E632824(v105, sub_29E637140);
  *&v101[7] = v102;
  *&v101[23] = v103;
  *&v101[39] = v104[0];
  *&v101[50] = *(v104 + 11);
  v45 = v73;
  v3 = sub_29E5FB170();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v44 = sub_29E752EF8();
    LOBYTE(v94[0]) = 0;
    sub_29E6360CC(v5, v6, a1, &v73);
    v63 = v73;
    *v64 = *v74;
    *&v64[16] = *&v74[16];
    *&v64[27] = *&v74[27];
    v81 = v73;
    *v82 = *v74;
    *&v82[16] = *&v74[16];
    *&v82[27] = *&v74[27];
    sub_29E632774(&v63, &v68, sub_29E637140);
    sub_29E632824(&v81, sub_29E637140);

    v42 = *(&v63 + 1);
    v43 = v63;
    v40 = *&v64[8];
    v41 = *v64;
    v38 = *&v64[24];
    v39 = *&v64[16];
    v34 = *&v64[40] | (v64[42] << 16);
    v36 = LOBYTE(v94[0]);
    v37 = *&v64[32];
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
    v34 = 0;
    v36 = 0;
  }

  v32 = sub_29E752EF8();
  LOBYTE(v73) = 0;
  sub_29E6365D8(a1, &v81);
  v49 = v81;
  v50 = *v82;
  v51[0] = *&v82[16];
  *(v51 + 11) = *&v82[27];
  v52[0] = v81;
  v52[1] = *v82;
  v53[0] = *&v82[16];
  *(v53 + 11) = *&v82[27];
  sub_29E632774(&v49, &v63, sub_29E637140);
  sub_29E632824(v52, sub_29E637140);
  *&v48[7] = v49;
  *&v48[23] = v50;
  *&v48[39] = v51[0];
  *&v48[50] = *(v51 + 11);
  v7 = v73;
  v33 = v73;
  v29 = sub_29E7533B8();
  sub_29E7529C8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v31 = sub_29E752EF8();
  sub_29E636AD0(a1, &v81);
  v16 = v81;
  v30 = *v82;
  v17 = v82[8];
  v18 = *&v82[16];
  v55 = 0;
  v54 = v82[8];
  v19 = sub_29E7533B8();
  sub_29E7529C8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v81) = 0;
  v56 = v46;
  v57[0] = v45;
  *&v57[1] = *v101;
  *&v57[33] = *&v101[32];
  *&v57[17] = *&v101[16];
  *&v57[49] = *&v101[48];
  *&v57[65] = *&v101[64];
  __src[0] = v46;
  __src[1] = *v57;
  *(&__src[4] + 15) = *&v57[63];
  __src[3] = *&v57[32];
  __src[4] = *&v57[48];
  __src[2] = *&v57[16];
  v58[0] = v44;
  v58[1] = 0;
  *&v59 = v36;
  *(&v59 + 1) = v43;
  *&v60 = v42;
  *(&v60 + 1) = v41;
  *&v61 = v40;
  *(&v61 + 1) = v39;
  *v62 = v38;
  *&v62[8] = v37;
  v62[18] = BYTE2(v34);
  *&v62[16] = v34;
  *(&__src[6] + 8) = v59;
  *(&__src[5] + 8) = v44;
  *(&__src[10] + 7) = *&v62[15];
  *(&__src[9] + 8) = *v62;
  *(&__src[8] + 8) = v61;
  *(&__src[7] + 8) = v60;
  v63 = v32;
  v64[0] = v7;
  *&v64[1] = *v48;
  *&v64[65] = *&v48[64];
  *&v64[49] = *&v48[48];
  *&v64[33] = *&v48[32];
  *&v64[17] = *&v48[16];
  v64[72] = v29;
  *&v65 = v9;
  *(&v65 + 1) = v11;
  *&v66 = v13;
  *(&v66 + 1) = v15;
  v67 = 0;
  LOBYTE(__src[19]) = 0;
  __src[17] = v65;
  __src[18] = v66;
  __src[15] = *&v64[48];
  __src[16] = *&v64[64];
  __src[13] = *&v64[16];
  __src[14] = *&v64[32];
  __src[11] = v32;
  __src[12] = *v64;
  v68 = v31;
  v69[0] = 0;
  *&v69[8] = v16;
  *&v69[24] = v30;
  LOBYTE(v70) = v17;
  *(&v70 + 1) = v18;
  LOBYTE(v71) = v19;
  *(&v71 + 1) = v20;
  *v72 = v22;
  *&v72[8] = v24;
  *&v72[16] = v26;
  v72[24] = 0;
  *(&__src[23] + 8) = v71;
  *(&__src[24] + 8) = *v72;
  *(&__src[25] + 1) = *&v72[9];
  *(&__src[19] + 8) = v31;
  *(&__src[20] + 8) = *v69;
  *(&__src[21] + 8) = *&v69[16];
  *(&__src[22] + 8) = v70;
  memcpy(a2, __src, 0x1A1uLL);
  v73 = v31;
  v74[0] = 0;
  *&v74[8] = v16;
  *&v74[24] = v30;
  v74[32] = v17;
  *&v74[40] = v18;
  v75 = v19;
  v76 = v21;
  v77 = v23;
  v78 = v25;
  v79 = v27;
  v80 = 0;
  sub_29E632774(&v56, &v81, sub_29E637104);
  sub_29E632774(v58, &v81, sub_29E637318);
  sub_29E632774(&v63, &v81, sub_29E63734C);
  sub_29E632774(&v68, &v81, sub_29E6373F4);
  sub_29E632824(&v73, sub_29E6373F4);
  *&v82[17] = *&v48[16];
  *&v82[33] = *&v48[32];
  v83 = *&v48[48];
  v81 = v32;
  v82[0] = v33;
  v84 = *&v48[64];
  *&v82[1] = *v48;
  v85 = v29;
  v86 = v9;
  v87 = v11;
  v88 = v13;
  v89 = v15;
  v90 = 0;
  sub_29E632824(&v81, sub_29E63734C);
  v91[0] = v44;
  v91[1] = 0;
  v91[2] = v36;
  v91[3] = v43;
  v91[4] = v42;
  v91[5] = v41;
  v91[6] = v40;
  v91[7] = v39;
  v91[8] = v38;
  v91[9] = v37;
  v93 = BYTE2(v34);
  v92 = v34;
  sub_29E632824(v91, sub_29E637318);
  v94[0] = v46;
  v94[1] = 0;
  v95 = v45;
  v97 = *&v101[16];
  v98 = *&v101[32];
  v99 = *&v101[48];
  v100 = *&v101[64];
  v96 = *v101;
  sub_29E632824(v94, sub_29E637104);
}

uint64_t sub_29E635BCC@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  sub_29E637500(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29E753508();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E754188();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E754168();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  sub_29E7544C8();
  v42 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = sub_29E74EF98();
  sub_29E754158();
  sub_29E754148();
  sub_29E74EFB8();
  sub_29E754138();

  sub_29E754148();
  sub_29E754178();
  v16 = sub_29E65B0B4(v13);
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  v49 = v16;
  v50 = v18;
  sub_29E60DE10();
  v19 = sub_29E753608();
  v21 = v20;
  v23 = v22;
  v24 = v41;
  (*(v5 + 104))(v8, *MEMORY[0x29EDBC9C8], v41);
  v25 = sub_29E753448();
  (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
  sub_29E753478();
  sub_29E753498();
  sub_29E632824(v4, sub_29E637500);
  (*(v5 + 8))(v8, v24);
  v26 = sub_29E7535D8();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_29E60DB44(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v34 = *v45;
  *(&v47 + 1) = *v45;
  DWORD1(v47) = *&v45[3];
  *v48 = KeyPath;
  v48[16] = 1;
  *&v48[17] = 256;
  v35 = v43;
  *(v43 + 55) = *&v48[15];
  *&v46 = v26;
  *(&v46 + 1) = v28;
  LOBYTE(v47) = v30 & 1;
  *(&v47 + 1) = v32;
  *v35 = v40;
  v36 = v46;
  v37 = v47;
  *(v35 + 40) = *v48;
  *(v35 + 24) = v37;
  *(v35 + 8) = v36;
  v49 = v26;
  v50 = v28;
  v51 = v30 & 1;
  *&v52[3] = *&v45[3];
  *v52 = v34;
  v53 = v32;
  v54 = KeyPath;
  v55 = 0;
  v56 = 1;
  v57 = 256;

  sub_29E632774(&v46, v44, sub_29E6371F8);
  sub_29E632824(&v49, sub_29E6371F8);
}

uint64_t sub_29E6360CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v48 = a3;
  v52 = a4;
  sub_29E631834();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E753508();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v51 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = sub_29E753938();
  v57 = a1;
  v58 = a2;
  sub_29E60DE10();

  v18 = sub_29E753608();
  v20 = v19;
  v22 = v21;
  (*(v14 + 104))(v17, *MEMORY[0x29EDBC9C8], v13);
  v23 = sub_29E753448();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  sub_29E753498();
  sub_29E632824(v12, sub_29E637500);
  (*(v14 + 8))(v17, v13);
  v24 = sub_29E7535D8();
  v26 = v25;
  v28 = v27;

  sub_29E60DB44(v18, v20, v22 & 1);

  v29 = type metadata accessor for SleepScoreCardComponentViewModel();
  v30 = v49;
  sub_29E632774(v48 + *(v29 + 20), v49, sub_29E631834);
  v31 = sub_29E74F2D8();
  v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
  sub_29E632824(v30, sub_29E631834);
  if (v32 == 1)
  {
    v33 = sub_29E753968();
  }

  else
  {
    v33 = sub_29E753958();
  }

  v57 = v33;
  v34 = sub_29E7535B8();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_29E60DB44(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v68 = v38 & 1;
  v66 = 1;
  *&v54 = v34;
  *(&v54 + 1) = v36;
  LOBYTE(v55) = v38 & 1;
  *(&v55 + 1) = *v67;
  DWORD1(v55) = *&v67[3];
  *(&v55 + 1) = v40;
  *v56 = KeyPath;
  v56[16] = 1;
  *&v56[17] = 256;
  v42 = v52;
  *v52 = v50;
  v43 = v54;
  v44 = v55;
  v45 = *v56;
  *(v42 + 55) = *&v56[15];
  *(v42 + 5) = v45;
  *(v42 + 3) = v44;
  *(v42 + 1) = v43;
  v57 = v34;
  v58 = v36;
  v59 = v38 & 1;
  *&v60[3] = *&v67[3];
  *v60 = *v67;
  v61 = v40;
  v62 = KeyPath;
  v63 = 0;
  v64 = 1;
  v65 = 256;

  sub_29E632774(&v54, v53, sub_29E6371F8);
  sub_29E632824(&v57, sub_29E6371F8);
}

uint64_t sub_29E6365D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  sub_29E631834();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E753508();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v47 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = sub_29E753938();
  v53 = sub_29E5FC098();
  v54 = v15;
  sub_29E60DE10();
  v16 = sub_29E753608();
  v18 = v17;
  v20 = v19;
  (*(v11 + 104))(v14, *MEMORY[0x29EDBC9C8], v10);
  v21 = sub_29E753448();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  sub_29E753498();
  sub_29E632824(v9, sub_29E637500);
  (*(v11 + 8))(v14, v10);
  v22 = sub_29E7535D8();
  v24 = v23;
  v26 = v25;

  sub_29E60DB44(v16, v18, v20 & 1);

  v27 = type metadata accessor for SleepScoreCardComponentViewModel();
  v28 = v45;
  sub_29E632774(a1 + *(v27 + 20), v45, sub_29E631834);
  v29 = sub_29E74F2D8();
  v30 = (*(*(v29 - 8) + 48))(v28, 1, v29);
  sub_29E632824(v28, sub_29E631834);
  if (v30 == 1)
  {
    v31 = sub_29E753968();
  }

  else
  {
    v31 = sub_29E753958();
  }

  v53 = v31;
  v32 = sub_29E7535B8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_29E60DB44(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v64 = v36 & 1;
  v62 = 1;
  *&v50 = v32;
  *(&v50 + 1) = v34;
  LOBYTE(v51) = v36 & 1;
  *(&v51 + 1) = *v63;
  DWORD1(v51) = *&v63[3];
  *(&v51 + 1) = v38;
  *v52 = KeyPath;
  v52[16] = 1;
  *&v52[17] = 256;
  v40 = v48;
  *v48 = v46;
  v41 = v50;
  v42 = v51;
  v43 = *v52;
  *(v40 + 55) = *&v52[15];
  *(v40 + 5) = v43;
  *(v40 + 3) = v42;
  *(v40 + 1) = v41;
  v53 = v32;
  v54 = v34;
  v55 = v36 & 1;
  *&v56[3] = *&v63[3];
  *v56 = *v63;
  v57 = v38;
  v58 = KeyPath;
  v59 = 0;
  v60 = 1;
  v61 = 256;

  sub_29E632774(&v50, v49, sub_29E6371F8);
  sub_29E632824(&v53, sub_29E6371F8);
}

uint64_t sub_29E636AD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  sub_29E631834();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E753508();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v48 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = sub_29E753938();
  v50 = sub_29E5FAF38();
  v51 = v15;
  sub_29E60DE10();
  v16 = sub_29E753608();
  v18 = v17;
  v20 = v19;
  v44 = v21;
  (*(v11 + 104))(v14, *MEMORY[0x29EDBC9C8], v10);
  v22 = *MEMORY[0x29EDBC988];
  v23 = sub_29E753448();
  v45 = a1;
  v24 = v23;
  v25 = *(v23 - 8);
  (*(v25 + 104))(v9, v22, v23);
  (*(v25 + 56))(v9, 0, 1, v24);
  sub_29E753478();
  sub_29E753498();
  sub_29E632824(v9, sub_29E637500);
  (*(v11 + 8))(v14, v10);
  v26 = sub_29E7535D8();
  v28 = v27;
  v30 = v29;

  sub_29E60DB44(v16, v18, v20 & 1);

  v31 = type metadata accessor for SleepScoreCardComponentViewModel();
  v32 = v47;
  sub_29E632774(v45 + *(v31 + 20), v47, sub_29E631834);
  v33 = sub_29E74F2D8();
  LODWORD(v24) = (*(*(v33 - 8) + 48))(v32, 1, v33);
  sub_29E632824(v32, sub_29E631834);
  if (v24 == 1)
  {
    v34 = sub_29E753968();
  }

  else
  {
    v34 = sub_29E753958();
  }

  v50 = v34;
  v35 = sub_29E7535B8();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_29E60DB44(v26, v28, v30 & 1);

  v42 = v49;
  *v49 = v46;
  v42[1] = v35;
  v42[2] = v37;
  *(v42 + 24) = v39 & 1;
  v42[4] = v41;

  sub_29E62935C(v35, v37, v39 & 1);

  sub_29E60DB44(v35, v37, v39 & 1);
}

void *sub_29E636F68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E752FF8();
  v9 = 0;
  sub_29E63543C(v1, __src);
  memcpy(__dst, __src, 0x1A1uLL);
  memcpy(v11, __src, 0x1A1uLL);
  sub_29E632774(__dst, &v6, sub_29E63703C);
  sub_29E632824(v11, sub_29E63703C);
  memcpy(&v8[7], __dst, 0x1A1uLL);
  v4 = v9;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  return memcpy((a1 + 17), v8, 0x1A8uLL);
}

void sub_29E637070()
{
  if (!qword_2A1857700)
  {
    sub_29E637104(255);
    sub_29E637318(255);
    sub_29E63734C(255);
    sub_29E6373F4(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1857700);
    }
  }
}

void sub_29E637174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E637234()
{
  if (!qword_2A1857728)
  {
    sub_29E6372AC(255, &qword_2A1857730, &unk_2A18590D0, MEMORY[0x29EDC9BA8]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857728);
    }
  }
}

void sub_29E6372AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E638014(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29E7532E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E637388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E6374A0()
{
  if (!qword_2A1857768)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857768);
    }
  }
}

void sub_29E637534(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_29E7539B8();
  sub_29E637F00();
  v6 = (a1 + *(v5 + 36));
  sub_29E637F60(0);
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x29EDBCAD8];
  v10 = sub_29E7539D8();
  (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  *v6 = swift_getKeyPath();
  *a1 = v4;
  v11 = sub_29E753428();
  KeyPath = swift_getKeyPath();
  sub_29E637F94();
  v14 = (a1 + *(v13 + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  sub_29E638064();
  *(a1 + *(v15 + 36)) = v3;

  LOBYTE(v3) = sub_29E7533E8();
  sub_29E7529C8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_29E637388(0, &qword_2A1857898, sub_29E638064, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
  v25 = a1 + *(v24 + 36);
  *v25 = v3;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
}

void sub_29E637704()
{
  if (!qword_2A1857780)
  {
    sub_29E637774(255);
    sub_29E6378B0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857780);
    }
  }
}

void sub_29E637820()
{
  if (!qword_2A18577A0)
  {
    sub_29E6371F8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A18577A0);
    }
  }
}

void sub_29E6378EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E6327DC(a4, a5);
    v8 = sub_29E753A78();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6379D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_29E637A38()
{
  if (!qword_2A18577C8)
  {
    sub_29E637388(255, &qword_2A18577D0, sub_29E6371F8, MEMORY[0x29EDBBF28], MEMORY[0x29EDBC558]);
    sub_29E6380F8(255, &qword_2A18577D8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC600]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18577C8);
    }
  }
}

unint64_t sub_29E637B04()
{
  result = qword_2A18577F0;
  if (!qword_2A18577F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18577F0);
  }

  return result;
}

void sub_29E637B74()
{
  if (!qword_2A18577F8)
  {
    sub_29E638014(255, &unk_2A18590D0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    sub_29E637C08();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18577F8);
    }
  }
}

void sub_29E637C08()
{
  if (!qword_2A1857800)
  {
    sub_29E74E978();
    sub_29E6327DC(&qword_2A1857808, MEMORY[0x29EDB9A60]);
    v0 = sub_29E7545A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857800);
    }
  }
}

uint64_t sub_29E637C9C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E6380F8(255, a2, MEMORY[0x29EDB9990], MEMORY[0x29EDB9988], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E637CF4(uint64_t a1, uint64_t a2)
{
  sub_29E637B74();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E637D58()
{
  result = qword_2A1857838;
  if (!qword_2A1857838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857838);
  }

  return result;
}

void sub_29E637DBC()
{
  if (!qword_2A1857850)
  {
    sub_29E63703C(255);
    sub_29E6327DC(&qword_2A1857858, sub_29E63703C);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857850);
    }
  }
}

void sub_29E637E50()
{
  if (!qword_2A1857868)
  {
    sub_29E6376D0(255);
    sub_29E6327DC(&qword_2A1857870, sub_29E6376D0);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857868);
    }
  }
}

void sub_29E637F00()
{
  if (!qword_2A1857878)
  {
    sub_29E637F60(255);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857878);
    }
  }
}

void sub_29E637F94()
{
  if (!qword_2A1857880)
  {
    sub_29E637F00();
    sub_29E6372AC(255, &qword_2A1857518, &qword_2A1857520, MEMORY[0x29EDBC9F0]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857880);
    }
  }
}

void sub_29E638014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E638064()
{
  if (!qword_2A1857888)
  {
    sub_29E637F94();
    sub_29E6380F8(255, &qword_2A1857890, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857888);
    }
  }
}

void sub_29E6380F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_29E63814C()
{
  result = qword_2A18578A0;
  if (!qword_2A18578A0)
  {
    sub_29E637388(255, &qword_2A1857898, sub_29E638064, MEMORY[0x29EDBC498], MEMORY[0x29EDBC558]);
    sub_29E638248(&qword_2A18578A8, sub_29E638064, sub_29E6382D4, sub_29E63843C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18578A0);
  }

  return result;
}

uint64_t sub_29E638248(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E63831C()
{
  result = qword_2A18578B8;
  if (!qword_2A18578B8)
  {
    sub_29E637F00();
    sub_29E6327DC(&qword_2A1857548, sub_29E637F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18578B8);
  }

  return result;
}

unint64_t sub_29E6383CC()
{
  result = qword_2A1857550;
  if (!qword_2A1857550)
  {
    sub_29E6372AC(255, &qword_2A1857518, &qword_2A1857520, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857550);
  }

  return result;
}

unint64_t sub_29E63843C()
{
  result = qword_2A18578C0;
  if (!qword_2A18578C0)
  {
    sub_29E6380F8(255, &qword_2A1857890, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18578C0);
  }

  return result;
}

uint64_t sub_29E6384C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29E63850C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_29E6385A0()
{
  v1 = sub_29E7513A8();
  v2 = type metadata accessor for BreathingDisturbancesChartSection();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_29E6389C0(v1);

  sub_29E602E20(v0 + 8, v11);
  sub_29E638648();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_29E6A4DD8(v11, v5, 1);

  return v9;
}

void sub_29E638648()
{
  if (!qword_2A1857930)
  {
    type metadata accessor for BreathingDisturbancesChartSection();
    v0 = type metadata accessor for FeatureOnboardedHideableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857930);
    }
  }
}

unint64_t sub_29E6386A8()
{
  result = qword_2A1857938;
  if (!qword_2A1857938)
  {
    sub_29E638648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857938);
  }

  return result;
}

uint64_t type metadata accessor for BreathingDisturbancesChartSection()
{
  result = qword_2A1857948;
  if (!qword_2A1857948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6387D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E638830()
{
  v0 = sub_29E7509D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7509C8();
  v5 = sub_29E750988();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_29E638968()
{
  result = qword_2A1857958;
  if (!qword_2A1857958)
  {
    type metadata accessor for BreathingDisturbancesChartSection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857958);
  }

  return result;
}

uint64_t sub_29E6389C0(void *a1)
{
  v26 = sub_29E74ED88();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E750CA8();
  v7 = *(v25 - 8);
  v8 = v7;
  v9 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_2A1857940) = a1;
  sub_29E621E28(0, &qword_2A185A510, sub_29E61BFEC);
  v12 = swift_allocObject();
  v24 = xmmword_29E762F30;
  *(v12 + 16) = xmmword_29E762F30;
  *(v12 + 56) = &type metadata for BreathingDisturbancesChartItem;
  *(v12 + 64) = sub_29E638D04();
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  v13[2] = a1;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = 0;
  v14 = a1;
  sub_29E750C98();
  sub_29E621E28(0, &qword_2A1856858, MEMORY[0x29EDC2240]);
  v15 = *(v7 + 72);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v24;
  v18 = v25;
  (*(v8 + 16))(v17 + v16, v11, v25);
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v27, "MutableArray<");
  HIWORD(v27[1]) = -4864;
  sub_29E74ED78();
  v19 = sub_29E74ED48();
  v21 = v20;
  (*(v3 + 8))(v6, v26);
  MEMORY[0x29ED96C20](v19, v21);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v22 = sub_29E750D08();

  (*(v8 + 8))(v11, v18);
  return v22;
}

unint64_t sub_29E638D04()
{
  result = qword_2A1857960;
  if (!qword_2A1857960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857960);
  }

  return result;
}

uint64_t sub_29E638D58()
{
  v0 = sub_29E751FF8();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_29E751FA8();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_29E751FE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E751FC8();
  v13 = sub_29E751FD8();
  sub_29E752008();
  v20 = sub_29E754948();
  if (sub_29E754BC8())
  {

    sub_29E752038();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x29EDCA4A8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v13, v20, v17, "SleepScheduleQuery", v15, v16, 2u);
    MEMORY[0x29ED98410](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_29E639044(void *a1)
{
  v2 = sub_29E751FA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v26 - v8;
  v27 = sub_29E751FE8();
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E751FC8();
  sub_29E751F98();
  v14 = sub_29E751FD8();
  v15 = sub_29E754958();
  if (sub_29E754BC8())
  {
    v16 = swift_slowAlloc();
    v26 = a1;
    v17 = v16;
    *v16 = 0;
    v18 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v14, v15, v18, "SleepScheduleQuery", "", v17, 2u);
    v19 = v17;
    a1 = v26;
    MEMORY[0x29ED98410](v19, -1, -1);
  }

  (*(v3 + 16))(v7, v9, v2);
  v20 = sub_29E752028();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_29E752018();
  (*(v3 + 8))(v9, v2);
  (*(v10 + 8))(v13, v27);
  sub_29E74F478();
  v23 = a1;
  v24 = sub_29E74F468();
  sub_29E638D58();

  return v24;
}

uint64_t type metadata accessor for ManageScheduleViewController()
{
  result = qword_2A1857968;
  if (!qword_2A1857968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E639394(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a1;
  v10 = sub_29E7541F8();
  v4 = MEMORY[0x29ED96C20](91, 0xE100000000000000);
  v5 = a3(v4);
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x29ED96C20](v7, v8);

  MEMORY[0x29ED96C20](93, 0xE100000000000000);
  return v10;
}

void *sub_29E639450(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v33 - v9;
  sub_29E64034C();
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74ED88();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[4] = a1;
  *(v4 + *(*v4 + qword_2A1869118 + 24)) = MEMORY[0x29EDCA1A0];
  *(v4 + *(*v4 + qword_2A1869118 + 32) + 8) = 0;
  v21 = swift_unknownObjectWeakInit();
  *(v4 + *(*v4 + qword_2A1869118 + 16)) = a1;
  *(v21 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  v22 = a1;
  sub_29E754D78();

  strcpy(v36, "MutableArray<");
  HIWORD(v36[1]) = -4864;
  sub_29E74ED78();
  v23 = sub_29E74ED48();
  v25 = v24;
  (*(v17 + 8))(v20, v16);
  MEMORY[0x29ED96C20](v23, v25);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v26 = sub_29E750D08();
  v27 = off_2A1C3EE88[0];
  swift_retain_n();
  (v27)(v36, &type metadata for BedtimeSectionProvider, &off_2A1C3EE58);

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v28 = sub_29E754908();
  v36[3] = v28;
  v29 = sub_29E7548D8();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_29E7527F8();
  sub_29E63FE6C();
  sub_29E752968();
  sub_29E6214E8(v10);

  swift_allocObject();
  swift_weakInit();

  sub_29E63FE24(&qword_2A1857A68, sub_29E64034C);

  v30 = v34;
  sub_29E7529A8();

  (*(v35 + 8))(v15, v30);

  v31 = *(*v26 + qword_2A1869118 + 24);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E63ADC0(&type metadata for BedtimeItemProvider, MEMORY[0x29EDC6A20], sub_29E63E9C0);

  sub_29E751758();
  return v26;
}

void *sub_29E6399F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v33 - v9;
  sub_29E64034C();
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74ED88();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[4] = a1;
  *(v4 + *(*v4 + qword_2A1869118 + 24)) = MEMORY[0x29EDCA1A0];
  *(v4 + *(*v4 + qword_2A1869118 + 32) + 8) = 0;
  v21 = swift_unknownObjectWeakInit();
  *(v4 + *(*v4 + qword_2A1869118 + 16)) = a1;
  *(v21 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  v22 = a1;
  sub_29E754D78();

  strcpy(v36, "MutableArray<");
  HIWORD(v36[1]) = -4864;
  sub_29E74ED78();
  v23 = sub_29E74ED48();
  v25 = v24;
  (*(v17 + 8))(v20, v16);
  MEMORY[0x29ED96C20](v23, v25);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v26 = sub_29E750D08();
  v27 = off_2A1C3EEE8[0];
  swift_retain_n();
  (v27)(v36, &type metadata for SleepResultsSectionProvider, &off_2A1C3EEB8);

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v28 = sub_29E754908();
  v36[3] = v28;
  v29 = sub_29E7548D8();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_29E7527F8();
  sub_29E63FE6C();
  sub_29E752968();
  sub_29E6214E8(v10);

  swift_allocObject();
  swift_weakInit();

  sub_29E63FE24(&qword_2A1857A68, sub_29E64034C);

  v30 = v34;
  sub_29E7529A8();

  (*(v35 + 8))(v15, v30);

  v31 = *(*v26 + qword_2A1869118 + 24);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E63ADC0(&type metadata for SleepResultsItemProvider, MEMORY[0x29EDC6A18], sub_29E63EB7C);

  sub_29E751758();
  return v26;
}

void *sub_29E639FA0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a2;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v54 - v9;
  sub_29E64034C();
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74ED88();
  v57 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60[11] = a1;
  *(v4 + *(*v4 + qword_2A1869118 + 24)) = MEMORY[0x29EDCA1A0];
  *(v4 + *(*v4 + qword_2A1869118 + 32) + 8) = 0;
  v21 = swift_unknownObjectWeakInit();
  *(v4 + *(*v4 + qword_2A1869118 + 16)) = a1;
  *(v21 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  v22 = a1;
  sub_29E754D78();

  strcpy(v60, "MutableArray<");
  HIWORD(v60[1]) = -4864;
  sub_29E74ED78();
  v23 = sub_29E74ED48();
  v25 = v24;
  v26 = *(v17 + 8);
  v56 = v17 + 8;
  v58 = v26;
  v26(v20, v16);
  MEMORY[0x29ED96C20](v23, v25);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v27 = sub_29E750D08();
  v28 = off_2A1C3EDC8[0];
  swift_retain_n();
  (v28)(v60, &type metadata for TimeInBedSectionProvider, &off_2A1C3ED98);

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v29 = sub_29E754908();
  v60[10] = v29;
  v30 = sub_29E7548D8();
  (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  sub_29E7527F8();
  sub_29E63FE6C();
  sub_29E752968();
  sub_29E6214E8(v10);

  swift_allocObject();
  swift_weakInit();

  sub_29E63FE24(&qword_2A1857A68, sub_29E64034C);

  v31 = v54;
  sub_29E7529A8();

  (*(v55 + 8))(v15, v31);

  v32 = *(*v27 + qword_2A1869118 + 24);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E6123CC(*(v27 + *(*v27 + qword_2A1869118 + 16)));
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_29E640560(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  v40 = v27 + *(*v27 + qword_2A1869118 + 32);
  swift_unknownObjectWeakLoadStrong();
  v41 = *(v40 + 1);
  v42 = type metadata accessor for SettingsToggleItem(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v60[3] = &type metadata for TimeInBedItemProvider;
  v60[4] = &off_2A24FDE88;
  v60[0] = v34;
  v60[1] = v36;
  v60[2] = v38;
  v46 = v45 + qword_2A1856D28;
  *(v45 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v45 + qword_2A1856D30) = 0;
  sub_29E602E20(v60, v45 + qword_2A1856D20);
  *(v46 + 8) = v41;
  swift_unknownObjectWeakAssign();
  swift_bridgeObjectRetain_n();
  v47 = v34;
  v48 = sub_29E751008();
  sub_29E751758();
  sub_29E5FECBC(v60);
  *(inited + 32) = v48;

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v49 = *(sub_29E750CA8() - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC2E8(inited);
  swift_setDeallocating();
  v52 = *(inited + 16);
  swift_arrayDestroy();
  sub_29E74ED78();
  sub_29E74ED48();
  v58(v20, v57);
  sub_29E750C98();
  sub_29E750D18();

  sub_29E751758();

  return v27;
}

void *sub_29E63A80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v34 - v9;
  sub_29E64034C();
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E74ED88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(*v4 + qword_2A1869118 + 24)) = MEMORY[0x29EDCA1A0];
  v20 = v4 + *(*v4 + qword_2A1869118 + 32);
  *(v20 + 1) = 0;
  swift_unknownObjectWeakInit();
  v21 = *(*v4 + qword_2A1869118 + 16);
  v37 = type metadata accessor for ShareAcrossDevicesSectionProvider;
  v22 = a1;
  sub_29E640480(a1, v4 + v21, type metadata accessor for ShareAcrossDevicesSectionProvider);
  *(v20 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v40, "MutableArray<");
  HIWORD(v40[1]) = -4864;
  sub_29E74ED78();
  v23 = sub_29E74ED48();
  v25 = v24;
  (*(v16 + 8))(v19, v15);
  MEMORY[0x29ED96C20](v23, v25);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v26 = sub_29E750D08();
  v27 = off_2A1C3EE28[0];
  type metadata accessor for ShareAcrossDevicesSectionProvider(0);
  swift_retain_n();
  v27(v40);
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v28 = sub_29E754908();
  v40[3] = v28;
  v29 = sub_29E7548D8();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_29E7527F8();
  sub_29E63FE6C();
  v30 = v35;
  sub_29E752968();
  sub_29E6214E8(v10);

  swift_allocObject();
  swift_weakInit();

  sub_29E63FE24(&qword_2A1857A68, sub_29E64034C);

  v31 = v38;
  sub_29E7529A8();

  (*(v39 + 8))(v30, v31);

  v32 = *(*v26 + qword_2A1869118 + 24);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E63B1EC();

  sub_29E751758();
  sub_29E6404F0(v22, v37);
  return v26;
}

uint64_t sub_29E63ADC0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v7 = v3;
  v8 = sub_29E74ED88();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v7 + *(*v7 + qword_2A1869118 + 16));
  v32 = sub_29E639394(v12, a1, a2);
  v14 = v13;
  sub_29E640560(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  v16 = v7 + *(*v7 + qword_2A1869118 + 32);
  swift_unknownObjectWeakLoadStrong();
  v17 = *(v16 + 1);
  v18 = type metadata accessor for SettingsToggleItem(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = v12;
  v22 = a3();
  sub_29E751758();
  *(inited + 32) = v22;

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v23 = *(sub_29E750CA8() - 8);
  v24 = *(v23 + 72);
  if (v14)
  {
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    *(swift_allocObject() + 16) = xmmword_29E762F30;
    sub_29E6CC2E8(inited);
    swift_setDeallocating();
    v26 = *(inited + 16);
    swift_arrayDestroy();
  }

  else
  {
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    *(swift_allocObject() + 16) = xmmword_29E762F30;
    sub_29E6CC2E8(inited);
    swift_setDeallocating();
    v28 = *(inited + 16);
    swift_arrayDestroy();
    sub_29E74ED78();
    sub_29E74ED48();
    (*(v31 + 8))(v11, v8);
  }

  sub_29E750C98();
  sub_29E750D18();
}

uint64_t sub_29E63B1EC()
{
  v1 = v0;
  v2 = sub_29E74ED88();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(*v0 + qword_2A1869118 + 16);
  v7 = *(v6 + 1);
  v8 = *v6;
  v9 = v7;
  v34 = sub_29E6129A0(v8, v9);
  v11 = v10;
  sub_29E640560(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  v13 = v1 + *(*v1 + qword_2A1869118 + 32);
  swift_unknownObjectWeakLoadStrong();
  v14 = *(v13 + 1);
  v15 = type metadata accessor for SettingsToggleItem(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v35[3] = &type metadata for ShareAcrossDevicesItemProvider;
  v35[4] = &off_2A24FDEC8;
  v35[0] = v8;
  v35[1] = v9;
  v19 = v18 + qword_2A1856D28;
  *(v18 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + qword_2A1856D30) = 0;
  sub_29E602E20(v35, v18 + qword_2A1856D20);
  *(v19 + 8) = v14;
  swift_unknownObjectWeakAssign();
  v20 = qword_2A1A7D6F0;
  v21 = v8;
  v22 = v9;
  if (v20 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v23 = sub_29E751008();
  sub_29E5FECBC(v35);
  sub_29E751758();
  *(inited + 32) = v23;

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v24 = *(sub_29E750CA8() - 8);
  v25 = *(v24 + 72);
  if (v11)
  {
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_29E762F30;
    sub_29E6CC2E8(inited);
    swift_setDeallocating();
    v27 = *(inited + 16);
    swift_arrayDestroy();
  }

  else
  {
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_29E762F30;
    sub_29E6CC2E8(inited);
    swift_setDeallocating();
    v29 = *(inited + 16);
    swift_arrayDestroy();
    sub_29E74ED78();
    sub_29E74ED48();
    (*(v32 + 8))(v5, v33);
  }

  sub_29E750C98();
  sub_29E750D18();
}

uint64_t sub_29E63B718()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

char *sub_29E63B7D0()
{
  v1 = sub_29E754978();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v15[-1] - v7;
  sub_29E640480(v0 + qword_2A18691C0, v15, sub_29E63DE6C);
  if (v16)
  {
    sub_29E601938(v15, v16);
    v9 = sub_29E74F5B8();
    sub_29E5FECBC(v15);
  }

  else
  {
    sub_29E6404F0(v15, sub_29E63DE6C);
    v9 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  sub_29E609B5C(0, &qword_2A1857A80, 0x29EDBAA98);
  v10 = [objc_allocWithZone(MEMORY[0x29EDB83C8]) init];
  sub_29E754988();

  (*(v2 + 16))(v6, v8, v1);
  v11 = objc_allocWithZone(type metadata accessor for AccountStatusModel());
  v12 = sub_29E666450(v6);
  (*(v2 + 8))(v8, v1);
  return v12;
}

void sub_29E63B9E0()
{
  v1 = v0;
  sub_29E63FBA4(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v226 = &v182 - v4;
  sub_29E640560(0, &qword_2A1857270, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
  v222 = v5;
  v221 = *(v5 - 8);
  v6 = *(v221 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v220 = &v182 - v7;
  sub_29E63FC08();
  v224 = *(v8 - 8);
  v225 = v8;
  v9 = *(v224 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v223 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E63FD58();
  v228 = *(v11 - 8);
  v229 = v11;
  v12 = *(v228 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v227 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDC2280];
  v15 = MEMORY[0x29EDC2008];
  sub_29E640298(0, &qword_2A18579A0, type metadata accessor for AppleWatchSection, MEMORY[0x29EDC2280], MEMORY[0x29EDC2008]);
  v218 = v16;
  v217 = *(v16 - 8);
  v17 = *(v217 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v219 = &v182 - v18;
  sub_29E63FED4();
  v215 = v19;
  v214 = *(v19 - 8);
  v20 = *(v214 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v216 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E63FF4C();
  v209 = v22;
  v208 = *(v22 - 8);
  v23 = *(v208 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v210 = &v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E640298(0, &qword_2A18579C8, sub_29E63FFC4, v14, v15);
  v206 = v25;
  v205 = *(v25 - 8);
  v26 = *(v205 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v207 = &v182 - v27;
  v202 = type metadata accessor for ShareAcrossDevicesSectionProvider(0);
  v28 = *(*(v202 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v202);
  v204 = &v182 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E640000();
  v200 = v30;
  v199 = *(v30 - 8);
  v31 = *(v199 + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v201 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E640298(0, &qword_2A18579E8, type metadata accessor for GoalSection, v14, v15);
  v197 = v33;
  v196 = *(v33 - 8);
  v34 = *(v196 + 64);
  MEMORY[0x2A1C7C4A8](v33);
  v198 = &v182 - v35;
  sub_29E640298(0, &qword_2A18579F0, type metadata accessor for WindDownSection, v14, v15);
  v194 = v36;
  v193 = *(v36 - 8);
  v37 = *(v193 + 64);
  MEMORY[0x2A1C7C4A8](v36);
  v195 = &v182 - v38;
  sub_29E640298(0, &qword_2A18579F8, type metadata accessor for AddScheduleSection, v14, v15);
  v191 = v39;
  v190 = *(v39 - 8);
  v40 = *(v190 + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v192 = &v182 - v41;
  sub_29E640298(0, &qword_2A1857A00, type metadata accessor for ManageScheduleSection, v14, v15);
  v189 = v42;
  v43 = *(v42 - 1);
  v44 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v42);
  v46 = &v182 - v45;
  v47 = &v1[qword_2A18691A0];
  sub_29E602E20(&v1[qword_2A18691A0], &v237);
  v188 = *&v1[qword_2A18691B0];
  v48 = [objc_allocWithZone(sub_29E74F948()) init];
  v49 = sub_29E63B7D0();
  sub_29E640480(&v1[qword_2A18691C0], &v235, sub_29E63DE6C);
  if (v236)
  {
    sub_29E601938(&v235, v236);
    v213 = sub_29E74F5C8();
    sub_29E5FECBC(&v235);
  }

  else
  {
    sub_29E6404F0(&v235, sub_29E63DE6C);
    v50 = *MEMORY[0x29EDBA750];
    v51 = *(v47 + 4);
    sub_29E601938(v47, *(v47 + 3));
    v52 = v50;
    v53 = sub_29E74F4F8();
    v213 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:v52 sleepStore:v53];
  }

  v203 = v1;
  v54 = *&v1[qword_2A18691A8];
  v187 = *&v1[qword_2A18691A8 + 8];
  v212 = type metadata accessor for ManageScheduleDataProvider();
  v55 = swift_allocObject();
  v55[19] = MEMORY[0x29EDCA1A0];
  v211 = v55 + 19;
  sub_29E602E20(&v237, (v55 + 2));
  v55[7] = v48;
  v55[8] = v49;
  sub_29E601938(&v237, v238);
  v233 = v48;
  v56 = v49;
  sub_29E74F4D8();
  sub_29E7527B8();

  v57 = v235;
  v58 = objc_opt_self();
  v59 = [v58 sharedBehavior];
  if (!v59)
  {
    __break(1u);
    goto LABEL_29;
  }

  v60 = v59;
  LODWORD(v232) = v57;
  v186 = v56;
  v61 = [v59 features];

  if (!v61)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v62 = [v61 sleepCloudKitSync];

  v185 = sub_29E74F928();
  v63 = [v58 sharedBehavior];
  if (!v63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v64 = v63;
  v65 = [v63 features];

  if (!v65)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v231 = [v65 timeInBedTracking];

  v66 = [v58 sharedBehavior];
  if (!v66)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v67 = v66;
  v68 = [v66 features];

  if (!v68)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v230 = v62 ^ 1;
  v184 = [v68 sleepResultsNotificationsOnWatch];

  sub_29E602E20(&v237, &v235);
  v69 = type metadata accessor for ScheduleAndFocusSection(0);
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v72 = v188;
  v73 = sub_29E601B78(&v235, v54, v187, v72);

  v55[9] = v73;
  sub_29E602E20(&v237, &v235);
  v74 = type metadata accessor for ManageScheduleSection(0);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  sub_29E728B48(&v235);
  v77 = *(v43 + 104);
  v78 = *MEMORY[0x29EDC2000];
  LODWORD(v187) = *MEMORY[0x29EDC2000];
  v79 = *MEMORY[0x29EDC1FF8];
  v183 = *MEMORY[0x29EDC1FF8];
  LODWORD(v188) = v232 & 1;
  if (v232)
  {
    v80 = v78;
  }

  else
  {
    v80 = v79;
  }

  v77(v46, v80, v189);
  v81 = MEMORY[0x29EDC2280];
  v82 = MEMORY[0x29EDC2020];
  sub_29E640298(0, &qword_2A1857A08, type metadata accessor for ManageScheduleSection, MEMORY[0x29EDC2280], MEMORY[0x29EDC2020]);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  v55[10] = sub_29E750918();
  sub_29E601938(&v237, v238);
  v86 = sub_29E74F4E8();
  v87 = type metadata accessor for AddScheduleSection();
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  sub_29E6899BC(v86);
  (*(v190 + 104))(v192, v80, v191);
  v90 = v81;
  v91 = v82;
  sub_29E640298(0, &qword_2A1857A10, type metadata accessor for AddScheduleSection, v90, v82);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  v55[11] = sub_29E750918();
  sub_29E601938(&v237, v238);
  v95 = sub_29E74F4E8();
  sub_29E601938(&v237, v238);
  v96 = sub_29E74F518();
  v97 = type metadata accessor for WindDownSection();
  v98 = *(v97 + 48);
  v99 = *(v97 + 52);
  v100 = swift_allocObject();
  v101 = v203;
  sub_29E63DED4(v95, v96, v101, v100);
  (*(v193 + 104))(v195, v80, v194);
  v102 = MEMORY[0x29EDC2280];
  sub_29E640298(0, &qword_2A1857A18, type metadata accessor for WindDownSection, MEMORY[0x29EDC2280], v82);
  v104 = *(v103 + 48);
  v105 = *(v103 + 52);
  swift_allocObject();
  v55[12] = sub_29E750918();
  sub_29E601938(&v237, v238);
  v106 = sub_29E74F508();
  v107 = type metadata accessor for GoalSection();
  v108 = *(v107 + 48);
  v109 = *(v107 + 52);
  v110 = swift_allocObject();
  v203 = v101;
  sub_29E63E590(v106, v203, v110);
  v111 = *(v196 + 104);
  v112 = v80;
  v182 = v80;
  v111(v198, v80, v197);
  v189 = v91;
  sub_29E640298(0, &qword_2A1857A20, type metadata accessor for GoalSection, v102, v91);
  v114 = *(v113 + 48);
  v115 = *(v113 + 52);
  swift_allocObject();
  v55[13] = sub_29E750918();
  sub_29E640078(0, &qword_2A18579E0);
  v117 = *(v116 + 48);
  v118 = *(v116 + 52);
  swift_allocObject();
  v119 = v72;
  sub_29E639FA0(v119, 0, 0);
  v120 = v232 ^ 1;
  v121 = v183;
  if (v231)
  {
    v122 = v112;
  }

  else
  {
    v122 = v183;
  }

  (*(v199 + 104))(v201, v122, v200);
  sub_29E6400C8();
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  swift_allocObject();
  v55[14] = sub_29E750918();
  v126 = *(v202 + 24);
  sub_29E6116C4();
  v128 = v204;
  (*(*(v127 - 8) + 56))(&v204[v126], 1, 1, v127);
  v129 = v186;
  *v128 = v119;
  v128[1] = v129;
  sub_29E63FFC4(0);
  v131 = *(v130 + 48);
  v132 = *(v130 + 52);
  swift_allocObject();
  v232 = v129;
  v133 = v119;
  sub_29E63A80C(v128, 0, 0);
  v134 = v187;
  if ((v230 | v120))
  {
    v135 = v121;
  }

  else
  {
    v135 = v187;
  }

  (*(v205 + 104))(v207, v135, v206);
  sub_29E640298(0, &qword_2A1857A30, sub_29E63FFC4, MEMORY[0x29EDC2280], v91);
  v137 = *(v136 + 48);
  v138 = *(v136 + 52);
  swift_allocObject();
  v55[15] = sub_29E750918();
  sub_29E640078(0, &qword_2A18579C0);
  v140 = *(v139 + 48);
  v141 = *(v139 + 52);
  swift_allocObject();
  v142 = v133;
  v143 = v203;
  v144 = v203;
  sub_29E639450(v142, v143, &off_2A24FEEF0);
  (*(v208 + 104))(v210, v182, v209);
  sub_29E6401A8();
  v146 = *(v145 + 48);
  v147 = *(v145 + 52);
  swift_allocObject();
  v55[16] = sub_29E750918();
  sub_29E640078(0, &qword_2A18579B0);
  v149 = *(v148 + 48);
  v150 = *(v148 + 52);
  swift_allocObject();
  v151 = v142;
  v210 = v144;
  sub_29E6399F8(v151, v143, &off_2A24FEEF0);
  v152 = v184;
  if ((v184 | v120))
  {
    v153 = v121;
  }

  else
  {
    v153 = v134;
  }

  (*(v214 + 104))(v216, v153, v215);
  sub_29E640220();
  v155 = *(v154 + 48);
  v156 = *(v154 + 52);
  swift_allocObject();
  v55[17] = sub_29E750918();
  v157 = type metadata accessor for AppleWatchSection();
  v158 = *(v157 + 48);
  v159 = *(v157 + 52);
  swift_allocObject();
  sub_29E710204();
  if ((v188 & v185) != 0)
  {
    v160 = v134;
  }

  else
  {
    v160 = v121;
  }

  (*(v217 + 104))(v219, v160, v218);
  sub_29E640298(0, &qword_2A1857A48, type metadata accessor for AppleWatchSection, MEMORY[0x29EDC2280], v189);
  v162 = *(v161 + 48);
  v163 = *(v161 + 52);
  swift_allocObject();
  v55[18] = sub_29E750918();
  sub_29E601938(&v237, v238);
  v235 = sub_29E74F4D8();
  v164 = v220;
  v165 = v233;
  sub_29E74F938();
  sub_29E640140(0, &qword_2A1A7BF60, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
  sub_29E63FCDC();
  sub_29E62113C();
  v166 = v223;
  v167 = v222;
  sub_29E752918();
  (*(v221 + 8))(v164, v167);

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v168 = sub_29E754908();
  v235 = v168;
  v169 = sub_29E7548D8();
  v170 = v226;
  (*(*(v169 - 8) + 56))(v226, 1, 1, v169);
  sub_29E63FE24(&qword_2A1857998, sub_29E63FC08);
  sub_29E63FE6C();
  v171 = v227;
  v172 = v225;
  sub_29E752968();
  sub_29E6214E8(v170);
  (*(v224 + 8))(v166, v172);

  v173 = swift_allocObject();
  swift_weakInit();
  v174 = swift_allocObject();
  *(v174 + 16) = v173;
  v175 = v230;
  *(v174 + 24) = v231;
  *(v174 + 25) = v175;
  *(v174 + 26) = v152;
  v176 = v210;
  v177 = swift_allocObject();
  *(v177 + 16) = sub_29E640304;
  *(v177 + 24) = v174;
  sub_29E63FE24(&qword_2A1857A50, sub_29E63FD58);
  v178 = v229;
  sub_29E7529A8();

  (*(v228 + 8))(v171, v178);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E751758();

  sub_29E5FECBC(&v237);
  v238 = v212;
  v239 = sub_29E63FE24(&qword_2A1857A58, type metadata accessor for ManageScheduleDataProvider);
  v237 = v55;
  sub_29E751A28();
  v179 = type metadata accessor for ManageScheduleViewController();
  v234.receiver = v176;
  v234.super_class = v179;
  objc_msgSendSuper2(&v234, sel_viewDidLoad);
  v180 = [v176 navigationItem];
  [v180 setLargeTitleDisplayMode_];

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v181 = sub_29E754198();

  [v176 setTitle_];
}

void sub_29E63D220(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29E63B9E0();
}

void sub_29E63D2D8()
{
  sub_29E66F540();
  sub_29E751A08();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    sub_29E7510A8();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E63D350()
{
  v1 = v0;
  v2 = [v0 userActivity];
  [v2 invalidate];

  sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
  v5 = sub_29E754768();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v3 = sub_29E754198();

  [v5 setTitle_];

  v4 = *MEMORY[0x29EDC6818];
  sub_29E754758();
  [v5 setEligibleForSearch_];
  [v5 setEligibleForPrediction_];
  [v5 setEligibleForHandoff_];
  [v1 setUserActivity_];
}

uint64_t sub_29E63D51C()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_29E63D5A8()
{
  sub_29E5FECBC((v0 + qword_2A18691A0));
  v1 = *(v0 + qword_2A18691A8);
  sub_29E751758();

  return sub_29E6404F0(v0 + qword_2A18691C0, sub_29E63DE6C);
}

id sub_29E63D620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManageScheduleViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E63D658(uint64_t a1)
{
  sub_29E5FECBC((a1 + qword_2A18691A0));
  v2 = *(a1 + qword_2A18691A8);
  sub_29E751758();

  return sub_29E6404F0(a1 + qword_2A18691C0, sub_29E63DE6C);
}

id sub_29E63D6E4()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E640480(*v0 + qword_2A18691C0, v3, sub_29E63DE6C);
  if (v4)
  {
    sub_29E601938(v3, v4);
    v1 = sub_29E74F5B8();
    sub_29E5FECBC(v3);
  }

  else
  {
    sub_29E6404F0(v3, sub_29E63DE6C);
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  }

  return v1;
}

void sub_29E63D818(void *a1)
{
  v2 = v1;
  v4 = sub_29E74EE78();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v1[qword_2A18691A0];
  v7 = *&v1[qword_2A18691A0 + 32];
  sub_29E601938(&v1[qword_2A18691A0], *&v1[qword_2A18691A0 + 24]);
  v8 = sub_29E74F528();
  [a1 mutableCopy];
  sub_29E754C38();
  sub_29E751758();
  sub_29E609B5C(0, &qword_2A1857978, 0x29EDC6898);
  swift_dynamicCast();
  if (v8)
  {
    [v8 weekdaysWithOccurrences];
  }

  sub_29E602E20(v6, v14);
  sub_29E640480(&v1[qword_2A18691C0], v12, sub_29E63DE6C);
  if (v13)
  {
    sub_29E601938(v12, v13);
    sub_29E74F598();
    sub_29E5FECBC(v12);
  }

  else
  {
    sub_29E6404F0(v12, sub_29E63DE6C);
  }

  sub_29E74FA38();
  v9 = [*&v1[qword_2A18691B8] currentCalendar];
  sub_29E74EE28();

  v10 = sub_29E74FA08();
  sub_29E63FE24(&qword_2A1857980, type metadata accessor for ManageScheduleViewController);
  swift_unknownObjectRetain();
  sub_29E74FA28();
  v11 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v2 presentViewController:v11 animated:1 completion:0];
}

void sub_29E63DAD0()
{
  v1 = v0;
  v2 = sub_29E74EE78();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v0[qword_2A18691A0];
  v5 = *&v0[qword_2A18691A0 + 32];
  sub_29E601938(&v0[qword_2A18691A0], *&v0[qword_2A18691A0 + 24]);
  v6 = sub_29E74F548();
  v7 = [v6 mutableOccurrenceTemplate];
  [v6 weekdaysWithOccurrences];
  sub_29E602E20(v4, v14);
  sub_29E640480(&v0[qword_2A18691C0], v12, sub_29E63DE6C);
  if (v13)
  {
    sub_29E601938(v12, v13);
    sub_29E74F598();
    sub_29E5FECBC(v12);
  }

  else
  {
    sub_29E6404F0(v12, sub_29E63DE6C);
  }

  sub_29E74FA38();
  v8 = [*&v0[qword_2A18691B8] currentCalendar];
  sub_29E74EE28();

  v9 = v7;
  v10 = sub_29E74FA08();
  sub_29E63FE24(&qword_2A1857980, type metadata accessor for ManageScheduleViewController);
  swift_unknownObjectRetain();
  sub_29E74FA28();
  v11 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v1 presentViewController:v11 animated:1 completion:0];
}

void sub_29E63DD98(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(v4 + qword_2A18691A0 + 32);
  sub_29E601938((v4 + qword_2A18691A0), *(v4 + qword_2A18691A0 + 24));
  v10 = sub_29E74F548();
  v13 = v10;
  v11 = &selRef_setWindDownTime_;
  if ((a1 & 1) == 0)
  {
    v11 = &selRef_setSleepDurationGoal_;
  }

  [v10 *v11];
  v12 = *(v4 + qword_2A18691A8);
  sub_29E69E39C(v13, a2, a3);
}

void sub_29E63DE6C()
{
  if (!qword_2A1A7CF90)
  {
    sub_29E609CF8(255, &unk_2A1A7CFA0);
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7CF90);
    }
  }
}

uint64_t sub_29E63DED4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v58 = *a4;
  v8 = sub_29E74ED88();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E63FE24(&qword_2A1857A70, type metadata accessor for ManageScheduleViewController);
  v13 = a4 + qword_2A1859CF8;
  *(a4 + qword_2A1859CF8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + qword_2A1859D10) = 0;
  *(a4 + qword_2A1859D18) = 0;
  v14 = qword_2A1859D20;
  LOBYTE(v59[0]) = 0;
  sub_29E640140(0, &qword_2A1A7BF60, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v54 = v15;
  swift_allocObject();
  v18 = sub_29E7527E8();
  v51 = v14;
  *(a4 + v14) = v18;
  *(a4 + qword_2A1859D30) = 0;
  *(a4 + qword_2A1859D38) = 0;
  v19 = a4 + qword_2A1859D40;
  *v19 = 0;
  v19[8] = 1;
  *(a4 + qword_2A1859D48) = 0;
  *(v13 + 1) = v12;
  v56 = a3;
  swift_unknownObjectWeakAssign();
  *(a4 + qword_2A1859D00) = a1;

  sub_29E7527B8();
  v59[2] = v59[0];
  v60 = v59[1];
  sub_29E602A9C();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_29E7527E8();
  v24 = qword_2A1859D28;
  *(a4 + qword_2A1859D28) = v23;
  *(a4 + qword_2A1859D08) = a2;

  v57 = a2;
  sub_29E7527B8();
  v25 = v59[1];
  *v19 = v59[0];
  v19[8] = v25;
  v55 = a1;
  sub_29E7527B8();
  v26 = v59[0];
  if (v59[0])
  {
    sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v27 = *(sub_29E750CA8() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_29E762F30;
    v31 = *(a4 + v24);
    v32 = *(a4 + v51);

    sub_29E6E9CCC(v31, v32, v26, v30 + v29);
  }

  v59[0] = 0;
  v59[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v59, "MutableArray<");
  HIWORD(v59[1]) = -4864;
  sub_29E74ED78();
  v33 = sub_29E74ED48();
  v35 = v34;
  (*(v52 + 8))(v11, v53);
  MEMORY[0x29ED96C20](v33, v35);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v36 = sub_29E750D08();
  v59[0] = v57;
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v39 = v58;
  *(v38 + 16) = v37;
  *(v38 + 24) = v39;
  sub_29E63FE24(&qword_2A1856878, sub_29E602A9C);
  swift_retain_n();
  v40 = sub_29E7529A8();

  v41 = *(v36 + qword_2A1859D10);
  *(v36 + qword_2A1859D10) = v40;

  v59[0] = *(v36 + qword_2A1859D20);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v39;
  sub_29E63FCDC();

  v44 = sub_29E7529A8();

  v45 = *(v36 + qword_2A1859D18);
  *(v36 + qword_2A1859D18) = v44;

  v59[0] = *(v36 + qword_2A1859D28);
  v46 = swift_allocObject();
  swift_weakInit();

  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = v39;
  v48 = sub_29E7529A8();

  v49 = *(v36 + qword_2A1859D30);
  *(v36 + qword_2A1859D30) = v48;

  return v36;
}

uint64_t sub_29E63E590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[2] = a2;
  v28[0] = a1;
  v4 = sub_29E74F868();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74ED88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = sub_29E63FE24(&qword_2A1857A70, type metadata accessor for ManageScheduleViewController);
  *(a3 + qword_2A1857570) = 0;
  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v29, "MutableArray<");
  HIWORD(v29[1]) = -4864;
  sub_29E74ED78();
  v14 = sub_29E74ED48();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  MEMORY[0x29ED96C20](v14, v16);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v17 = sub_29E750D08();
  swift_allocObject();
  swift_weakInit();
  (*(v5 + 104))(v8, *MEMORY[0x29EDC6B50], v4);
  v18 = sub_29E74F898();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  v21 = sub_29E74F878();
  v22 = *(v17 + qword_2A1857570);
  *(v17 + qword_2A1857570) = v21;

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v23 = *(sub_29E750CA8() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E74F858();
  sub_29E609CF8(0, &qword_2A1857598);
  swift_dynamicCast();
  sub_29E750D18();

  v26 = swift_unknownObjectRetain();
  sub_29E74F888();

  return v17;
}

uint64_t sub_29E63E9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = &type metadata for BedtimeItemProvider;
  v17[4] = &off_2A24FDF08;
  v17[0] = a1;
  v7 = a4 + qword_2A1856D28;
  *(a4 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = qword_2A1856D30;
  *(a4 + qword_2A1856D30) = 0;
  sub_29E602E20(v17, a4 + qword_2A1856D20);
  *(v7 + 8) = a3;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_29E754278();

    v9 = [objc_opt_self() currentNotificationCenter];
    v10 = sub_29E74F648();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_29E74F628();
    v14 = *(a4 + v8);
    *(a4 + v8) = v13;
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v15 = sub_29E751008();
  sub_29E5FECBC(v17);
  return v15;
}

uint64_t sub_29E63EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = &type metadata for SleepResultsItemProvider;
  v17[4] = &off_2A24FDF48;
  v17[0] = a1;
  v7 = a4 + qword_2A1856D28;
  *(a4 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  v8 = qword_2A1856D30;
  *(a4 + qword_2A1856D30) = 0;
  sub_29E602E20(v17, a4 + qword_2A1856D20);
  *(v7 + 8) = a3;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_29E754268();

    v9 = [objc_opt_self() currentNotificationCenter];
    v10 = sub_29E74F648();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_29E74F628();
    v14 = *(a4 + v8);
    *(a4 + v8) = v13;
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  v15 = sub_29E751008();
  sub_29E5FECBC(v17);
  return v15;
}

uint64_t sub_29E63ED38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E63ADC0(a2, a3, a4);
  }
}

uint64_t sub_29E63EE2C()
{
  v0 = sub_29E74ED88();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v5 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v7 = *Strong;
  v33 = v0;
  v8 = Strong;
  sub_29E6123CC(*(Strong + *(v7 + qword_2A1869118 + 16)));
  v10 = v9;
  v12 = v11;
  v32 = v4;
  v14 = v13;
  sub_29E640560(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  v16 = v8 + *(*v8 + qword_2A1869118 + 32);
  swift_unknownObjectWeakLoadStrong();
  v31 = v5;
  v17 = *(v16 + 1);
  v18 = type metadata accessor for SettingsToggleItem(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v34[3] = &type metadata for TimeInBedItemProvider;
  v34[4] = &off_2A24FDE88;
  v34[0] = v10;
  v34[1] = v12;
  v34[2] = v14;
  v22 = v21 + qword_2A1856D28;
  *(v21 + qword_2A1856D28 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + qword_2A1856D30) = 0;
  sub_29E602E20(v34, v21 + qword_2A1856D20);
  *(v22 + 8) = v17;
  swift_unknownObjectWeakAssign();
  swift_bridgeObjectRetain_n();
  v23 = v10;
  v24 = sub_29E751008();
  sub_29E751758();
  sub_29E5FECBC(v34);
  *(inited + 32) = v24;

  sub_29E63FBA4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v25 = *(sub_29E750CA8() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC2E8(inited);
  swift_setDeallocating();
  v28 = *(inited + 16);
  swift_arrayDestroy();
  v29 = v32;
  sub_29E74ED78();
  sub_29E74ED48();
  (*(v1 + 8))(v29, v33);
  sub_29E750C98();
  sub_29E750D18();
}

uint64_t sub_29E63F298()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E63B1EC();
  }
}

void sub_29E63F364(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v49 - v13;
  sub_29E752048();
  v15 = sub_29E752088();
  v16 = sub_29E7546C8();
  v17 = os_log_type_enabled(v15, v16);
  v51 = ObjectType;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v52 = v12;
    v19 = v18;
    v20 = swift_slowAlloc();
    v53 = v7;
    v54 = v20;
    v50 = v8;
    v21 = v20;
    *v19 = 136446210;
    v22 = sub_29E755178();
    v24 = v3;
    v25 = a2;
    v26 = a1;
    v27 = sub_29E6B9C90(v22, v23, &v54);

    *(v19 + 4) = v27;
    a1 = v26;
    a2 = v25;
    v3 = v24;
    _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Schedule occurrence was modified", v19, 0xCu);
    sub_29E5FECBC(v21);
    v28 = v21;
    v8 = v50;
    v7 = v53;
    MEMORY[0x29ED98410](v28, -1, -1);
    v29 = v19;
    v12 = v52;
    MEMORY[0x29ED98410](v29, -1, -1);
  }

  v30 = v8[1];
  v30(v14, v7);
  v31 = *&v3[qword_2A18691A0 + 32];
  sub_29E601938(&v3[qword_2A18691A0], *&v3[qword_2A18691A0 + 24]);
  v32 = sub_29E74F548();
  v33 = v32;
  if (a2)
  {
    v34 = [v32 overrideOccurrence];
    if (v34)
    {
      v35 = v34;
      sub_29E752048();
      v36 = sub_29E752088();
      v37 = sub_29E7546C8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v52 = v12;
        v39 = v38;
        v50 = swift_slowAlloc();
        v54 = v50;
        *v39 = 136446210;
        v40 = sub_29E755178();
        v51 = a1;
        v42 = sub_29E6B9C90(v40, v41, &v54);
        v53 = v7;
        v43 = v42;
        a1 = v51;

        *(v39 + 4) = v43;
        _os_log_impl(&dword_29E5ED000, v36, v37, "[%{public}s] Removing override", v39, 0xCu);
        v44 = v50;
        sub_29E5FECBC(v50);
        MEMORY[0x29ED98410](v44, -1, -1);
        MEMORY[0x29ED98410](v39, -1, -1);

        v45 = v52;
        v46 = v53;
      }

      else
      {

        v45 = v12;
        v46 = v7;
      }

      v30(v45, v46);
      [v33 removeOccurrence_];
    }
  }

  [v33 saveOccurrence_];
  v47 = *&v3[qword_2A18691A8];
  sub_29E69E39C(v33, 0, 0);
  v48 = [v3 presentedViewController];
  if (v48)
  {

    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_29E63F760(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s] Schedule occurrence was deleted", v12, 0xCu);
    sub_29E5FECBC(v13);
    MEMORY[0x29ED98410](v13, -1, -1);
    v17 = v12;
    a1 = v22;
    MEMORY[0x29ED98410](v17, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v18 = *&v2[qword_2A18691A0 + 32];
  sub_29E601938(&v2[qword_2A18691A0], *&v2[qword_2A18691A0 + 24]);
  v19 = sub_29E74F548();
  [v19 removeOccurrence_];
  v20 = *&v2[qword_2A18691A8];
  sub_29E69E39C(v19, 0, 0);
  v21 = [v2 presentedViewController];
  if (v21)
  {

    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_29E63F9B8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v11 = sub_29E755178();
    v13 = sub_29E6B9C90(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s] Schedule occurrence edits were cancelled", v9, 0xCu);
    sub_29E5FECBC(v10);
    MEMORY[0x29ED98410](v10, -1, -1);
    MEMORY[0x29ED98410](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = [v1 presentedViewController];
  if (result)
  {

    return [v1 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void sub_29E63FBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E63FC08()
{
  if (!qword_2A1857988)
  {
    v0 = MEMORY[0x29EDC9A98];
    sub_29E640140(255, &qword_2A1A7BF60, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
    sub_29E640560(255, &qword_2A1857270, v0, MEMORY[0x29EDB8AF0]);
    sub_29E63FCDC();
    sub_29E62113C();
    v1 = sub_29E7525F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857988);
    }
  }
}

unint64_t sub_29E63FCDC()
{
  result = qword_2A1A7BF68;
  if (!qword_2A1A7BF68)
  {
    sub_29E640140(255, &qword_2A1A7BF60, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BF68);
  }

  return result;
}

void sub_29E63FD58()
{
  if (!qword_2A1857990)
  {
    sub_29E63FC08();
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E63FE24(&qword_2A1857998, sub_29E63FC08);
    sub_29E63FE6C();
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857990);
    }
  }
}

uint64_t sub_29E63FE24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E63FE6C()
{
  result = qword_2A18568B8;
  if (!qword_2A18568B8)
  {
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18568B8);
  }

  return result;
}

void sub_29E63FED4()
{
  if (!qword_2A18579A8)
  {
    sub_29E640078(255, &qword_2A18579B0);
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18579A8);
    }
  }
}

void sub_29E63FF4C()
{
  if (!qword_2A18579B8)
  {
    sub_29E640078(255, &qword_2A18579C0);
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18579B8);
    }
  }
}

void sub_29E640000()
{
  if (!qword_2A18579D8)
  {
    sub_29E640078(255, &qword_2A18579E0);
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18579D8);
    }
  }
}

void sub_29E640078(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for SettingsToggleSection();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_29E6400C8()
{
  if (!qword_2A1857A28)
  {
    sub_29E640078(255, &qword_2A18579E0);
    v0 = sub_29E750928();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857A28);
    }
  }
}

void sub_29E640140(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E6401A8()
{
  if (!qword_2A1857A38)
  {
    sub_29E640078(255, &qword_2A18579C0);
    v0 = sub_29E750928();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857A38);
    }
  }
}

void sub_29E640220()
{
  if (!qword_2A1857A40)
  {
    sub_29E640078(255, &qword_2A18579B0);
    v0 = sub_29E750928();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857A40);
    }
  }
}

void sub_29E640298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29E640318(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void sub_29E64034C()
{
  if (!qword_2A1857A60)
  {
    sub_29E7527F8();
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E63FE6C();
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857A60);
    }
  }
}

uint64_t sub_29E640480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6404F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E640560(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E6405B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_29E6EA130(a1);
}

uint64_t sub_29E6405B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E6EA448();
}

uint64_t sub_29E6405C8()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A1857A88 = result;
  unk_2A1857A90 = v1;
  return result;
}

uint64_t sub_29E640660()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A1857A98 = result;
  unk_2A1857AA0 = v1;
  return result;
}

uint64_t sub_29E6406F8()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A1857AA8 = result;
  unk_2A1857AB0 = v1;
  return result;
}

uint64_t sub_29E640790()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A1857AB8 = result;
  unk_2A1857AC0 = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepApneaAnalyticsContextType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepApneaAnalyticsContextType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepApneaAnalyticsActionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepApneaAnalyticsActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_29E640AD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x705520746553;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x5720744920776F48;
    }

    else
    {
      v4 = 0x6974656C706D6F43;
    }

    if (v3 == 2)
    {
      v5 = 0xEC000000736B726FLL;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F5920726F46;
    }

    else
    {
      v4 = 0x705520746553;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x5720744920776F48;
  v8 = 0xEC000000736B726FLL;
  if (a2 != 2)
  {
    v7 = 0x6974656C706D6F43;
    v8 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v2 = 0x756F5920726F46;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_29E755028();
  }

  return v11 & 1;
}

uint64_t sub_29E640C30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE600000000000000;
    v10 = 0x686372616553;
    if (a1 != 6)
    {
      v10 = 0x6E776F6E6B6E55;
      v9 = 0xE700000000000000;
    }

    v11 = 0xD000000000000010;
    v12 = 0x800000029E757230;
    if (a1 != 4)
    {
      v11 = 0xD000000000000012;
      v12 = 0x800000029E757250;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x7079542061746144;
    v5 = 0xEE006D6F6F522065;
    if (a1 != 2)
    {
      v4 = 0x79726F6765746143;
      v5 = 0xE800000000000000;
    }

    v6 = 0x6F52207065656C53;
    if (a1)
    {
      v3 = 0xEA00000000006D6FLL;
    }

    else
    {
      v6 = 0x7972616D6D7553;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x686372616553)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x6E776F6E6B6E55)
        {
LABEL_47:
          v14 = sub_29E755028();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x800000029E757230;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000029E757250;
      if (v7 != 0xD000000000000012)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE006D6F6F522065;
      if (v7 != 0x7079542061746144)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x79726F6765746143)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006D6FLL;
    if (v7 != 0x6F52207065656C53)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x7972616D6D7553)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_29E640ED0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C65636E6143;
    }

    else
    {
      v4 = 0x7055746573;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    if (a1 == 2)
    {
      v4 = 1954047310;
    }

    else if (a1 == 3)
    {
      v4 = 1801675074;
    }

    else
    {
      v4 = 1701736260;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6C65636E6143;
    }

    else
    {
      v8 = 0x7055746573;
    }

    if (a2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v5 = 1801675074;
    if (a2 != 3)
    {
      v5 = 1701736260;
    }

    if (a2 == 2)
    {
      v6 = 1954047310;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xE400000000000000;
    if (v4 != v6)
    {
      goto LABEL_30;
    }
  }

  if (v3 != v7)
  {
LABEL_30:
    v9 = sub_29E755028();
    goto LABEL_31;
  }

  v9 = 1;
LABEL_31:

  return v9 & 1;
}

uint64_t sub_29E641018()
{
  sub_29E7542D8();
}

uint64_t sub_29E641158()
{
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E6412B8()
{
  v1 = *v0;
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E64137C()
{
  *v0;
  *v0;
  *v0;
  sub_29E7542D8();
}

uint64_t sub_29E64142C()
{
  v1 = *v0;
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E6414EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29E641B1C();
  *a2 = result;
  return result;
}

void sub_29E64151C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7055746573;
  v5 = 1954047310;
  v6 = 1801675074;
  if (v2 != 3)
  {
    v6 = 1701736260;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x6C65636E6143;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_29E6415A8()
{
  v1 = *v0;
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E641674()
{
  *v0;
  *v0;
  *v0;
  sub_29E7542D8();
}

uint64_t sub_29E64172C()
{
  v1 = *v0;
  sub_29E7550C8();
  sub_29E7542D8();

  return sub_29E755108();
}

uint64_t sub_29E6417F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29E641B68();
  *a2 = result;
  return result;
}

void sub_29E641824(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x705520746553;
  v4 = 0xEC000000736B726FLL;
  v5 = 0x5720744920776F48;
  if (*v1 != 2)
  {
    v5 = 0x6974656C706D6F43;
    v4 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v3 = 0x756F5920726F46;
    v2 = 0xE700000000000000;
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

unint64_t sub_29E6418B0()
{
  result = qword_2A1857AC8;
  if (!qword_2A1857AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857AC8);
  }

  return result;
}

unint64_t sub_29E641908()
{
  result = qword_2A1857AD0;
  if (!qword_2A1857AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857AD0);
  }

  return result;
}

uint64_t sub_29E641984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29E641BB4();
  *a2 = result;
  return result;
}

void sub_29E6419B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D6D7553;
  v5 = 0xE600000000000000;
  v6 = 0x686372616553;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E55;
    v5 = 0xE700000000000000;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000029E757230;
  if (v2 != 4)
  {
    v7 = 0xD000000000000012;
    v8 = 0x800000029E757250;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEE006D6F6F522065;
  v10 = 0x7079542061746144;
  if (v2 != 2)
  {
    v10 = 0x79726F6765746143;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6F52207065656C53;
    v3 = 0xEA00000000006D6FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_29E641AC8()
{
  result = qword_2A1857AD8;
  if (!qword_2A1857AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857AD8);
  }

  return result;
}

uint64_t sub_29E641B1C()
{
  v0 = sub_29E754EF8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29E641B68()
{
  v0 = sub_29E754EF8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29E641BB4()
{
  v0 = sub_29E754EF8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29E641C04()
{
  v52[1] = swift_getObjectType();
  v1 = sub_29E752098();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v52[2] = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v54 = v52 - v5;
  sub_29E643E74(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v53 = v52 - v8;
  v9 = sub_29E74F8B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E643E74(0, &qword_2A1857B10, MEMORY[0x29EDC2C10]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = v52 - v16;
  v61 = v0;
  v60 = sub_29E642588();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A7FA18;
  v19 = sub_29E754198();
  v59 = [objc_opt_self() imageNamed:v19 inBundle:v18];

  sub_29E74F8A8();
  v20 = sub_29E74F7C8();
  v57 = v21;
  v58 = v20;
  v22 = *(v10 + 8);
  v22(v13, v9);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v22(v13, v9);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v22(v13, v9);
  sub_29E751B58();
  v23 = sub_29E751B68();
  (*(*(v23 - 8) + 56))(v17, 0, 1, v23);
  v24 = v60;
  sub_29E751B78();

  v25 = v61;
  v26 = (v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context);
  result = swift_beginAccess();
  v28 = v26[3];
  if (v28)
  {
    v29 = v26[4];
    v30 = sub_29E601938(v26, v26[3]);
    v31 = *(v28 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x2A1C7C4A8](v30);
    v34 = v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34);
    v35 = sub_29E751548();
    v37 = v36;
    (*(v31 + 8))(v34, v28);
    if (v37 >> 60 == 15)
    {
      v38 = v54;
      sub_29E752068();
      v39 = sub_29E752088();
      v40 = sub_29E7546A8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v62 = v42;
        *v41 = 136446210;
        v43 = sub_29E755178();
        v45 = sub_29E6B9C90(v43, v44, &v62);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_29E5ED000, v39, v40, "[%{public}s] User data from context is nil, will not be able to get user's country code.", v41, 0xCu);
        sub_29E5FECBC(v42);
        MEMORY[0x29ED98410](v42, -1, -1);
        MEMORY[0x29ED98410](v41, -1, -1);
      }

      return (*(v55 + 8))(v38, v56);
    }

    else
    {
      v46 = sub_29E74E798();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();
      sub_29E74E788();
      v49 = sub_29E74FFA8();
      sub_29E643CC4(&qword_2A1857B18, MEMORY[0x29EDC3A58]);
      v50 = v53;
      sub_29E74E778();
      sub_29E643D0C(v35, v37);

      (*(*(v49 - 8) + 56))(v50, 0, 1, v49);
      v51 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_countryRetrievalRecord;
      swift_beginAccess();
      sub_29E643D74(v50, v25 + v51);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_29E642588()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController____lazy_storage___tileView;
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController____lazy_storage___tileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController____lazy_storage___tileView);
  }

  else
  {
    v4 = sub_29E6426BC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E6426BC()
{
  sub_29E751B88();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_29E751B48();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E750C18();

  sub_29E751B48();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E750C28();

  return v0;
}

void sub_29E6427D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29E642918();
  }
}

void sub_29E64282C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_29E609B5C(0, &qword_2A1857B30, 0x29EDBA088);
    v1 = sub_29E7547A8();
    if (qword_2A1A7BD90 != -1)
    {
      swift_once();
    }

    v2 = qword_2A1A7F920;
    v3 = objc_allocWithZone(sub_29E7503C8());
    v4 = v2;
    v5 = sub_29E7503B8();
    [v1 addOperation_];
  }
}

void sub_29E642918()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29E643E74(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v77 = &v75 - v4;
  v5 = sub_29E752098();
  v82 = *(v5 - 1);
  v83 = v5;
  v6 = v82[8];
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v81 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v75 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v76 = &v75 - v12;
  v79 = sub_29E751D98();
  v78 = *(v79 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v79);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context;
  swift_beginAccess();
  sub_29E643F2C(v0 + v16, &v87, &qword_2A1857B20, sub_29E643EC8);
  v17 = v89;
  if (!v89)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = sub_29E601938(&v87, v89);
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22);
  v23 = sub_29E751528();
  (*(v19 + 8))(v22, v17);
  v24 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v25 = sub_29E754198();
  v26 = [v24 initWithIdentifier:v25 healthStore:v23];

  sub_29E5FECBC(&v87);
  sub_29E643F2C(v1 + v16, &v87, &qword_2A1857B20, sub_29E643EC8);
  v27 = v89;
  if (!v89)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = sub_29E601938(&v87, v89);
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32);
  v33 = sub_29E751528();
  (*(v29 + 8))(v32, v27);
  v34 = objc_allocWithZone(MEMORY[0x29EDC68B0]);
  v35 = v26;
  v36 = [v34 initWithSleepStore:v35 healthDataSource:v33];
  v84 = v35;

  v37 = v36;
  sub_29E5FECBC(&v87);
  v38 = [v36 featureAvailabilityProvidingForFeatureIdentifier_];
  if (v38)
  {
    v39 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:v38 healthDataSource:v36 currentCountryCode:0];
    sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
    sub_29E751DD8();
    v48 = *MEMORY[0x29EDBA570];
    v49 = sub_29E751DA8();
    (*(v78 + 8))(v15, v79);
    v50 = [v49 areAllRequirementsSatisfied];

    if (v50)
    {
      v51 = v76;
      sub_29E752068();
      v52 = sub_29E752088();
      v53 = sub_29E7546C8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v87 = v81;
        *v54 = 136446466;
        v55 = sub_29E755178();
        v57 = v37;
        v58 = sub_29E6B9C90(v55, v56, &v87);

        *(v54 + 4) = v58;
        v37 = v57;
        *(v54 + 12) = 2082;
        *(v54 + 14) = sub_29E6B9C90(0x61546E6F74747562, 0xEE00292864657070, &v87);
        _os_log_impl(&dword_29E5ED000, v52, v53, "[%{public}s.%{public}s]: Sleep tracking is not onboarded. Throwing prompt to encourage onboarding.", v54, 0x16u);
        v59 = v81;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v59, -1, -1);
        MEMORY[0x29ED98410](v54, -1, -1);

        (v82[1])(v76, v83);
      }

      else
      {

        (v82[1])(v51, v83);
      }

      sub_29E643F2C(v1 + v16, &v85, &qword_2A1857B20, sub_29E643EC8);
      if (v86)
      {
        v87 = v84;
        sub_29E5FAEE4(&v85, &v88);
        sub_29E72E8D0(v1);
        sub_29E751758();

        sub_29E643FF4(&v87);
        return;
      }

      goto LABEL_21;
    }

    v83 = v39;
    v60 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_countryRetrievalRecord;
    swift_beginAccess();
    sub_29E643F2C(v1 + v60, v77, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    v61 = objc_allocWithZone(MEMORY[0x29EDC68B0]);
    v62 = [v61 initWithSleepStore:v84 healthDataSource:v37];
    sub_29E643F2C(v1 + v16, &v87, &qword_2A1857B20, sub_29E643EC8);
    v63 = v89;
    v82 = v37;
    if (v89)
    {
      v64 = sub_29E601938(&v87, v89);
      v65 = *(v63 - 8);
      v66 = *(v65 + 64);
      MEMORY[0x2A1C7C4A8](v64);
      v68 = &v75 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v65 + 16))(v68);
      v69 = sub_29E751528();
      (*(v65 + 8))(v68, v63);
      v70 = type metadata accessor for SleepApneaOnboardingNavigationController();
      v71 = objc_allocWithZone(v70);
      *&v71[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator] = 0;
      v72 = MEMORY[0x29EDC3A58];
      v73 = v77;
      sub_29E643F2C(v77, &v71[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord], &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
      *&v71[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource] = v62;
      *&v71[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore] = v69;
      v71[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType] = 1;
      v90.receiver = v71;
      v90.super_class = v70;
      v74 = objc_msgSendSuper2(&v90, sel_initWithNibName_bundle_, 0, 0);
      sub_29E643F98(v73, &qword_2A1A7CF50, v72);
      sub_29E5FECBC(&v87);
      sub_29E718D68();
      sub_29E7195BC();

      [v74 setModalPresentationStyle_];
      [v1 presentViewController:v74 animated:1 completion:0];

      sub_29E751758();
      return;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  sub_29E752068();
  v40 = sub_29E752088();
  v41 = sub_29E7546A8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v87 = v43;
    *v42 = 136446466;
    v44 = sub_29E755178();
    v46 = v37;
    v47 = sub_29E6B9C90(v44, v45, &v87);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2082;
    *(v42 + 14) = sub_29E6B9C90(0x61546E6F74747562, 0xEE00292864657070, &v87);
    _os_log_impl(&dword_29E5ED000, v40, v41, "[%{public}s.%{public}s]: Sleep tracking is not available. Exiting", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v43, -1, -1);
    MEMORY[0x29ED98410](v42, -1, -1);
  }

  else
  {
  }

  (v82[1])(v11, v83);
}

id sub_29E6438F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaNotificationTipViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepApneaNotificationTipViewController()
{
  result = qword_2A1857AF8;
  if (!qword_2A1857AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E643A14()
{
  sub_29E643E74(319, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E643AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context;
  swift_beginAccess();
  return sub_29E643F2C(v1 + v3, a1, &qword_2A1857B20, sub_29E643EC8);
}

uint64_t sub_29E643B48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin39SleepApneaNotificationTipViewController_context;
  swift_beginAccess();
  sub_29E643DF4(a1, v1 + v3);
  swift_endAccess();
  sub_29E641C04();
  return sub_29E643F98(a1, &qword_2A1857B20, sub_29E643EC8);
}

uint64_t (*sub_29E643BD0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E643C34;
}

uint64_t sub_29E643C34(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_29E641C04();
  }

  return result;
}

uint64_t sub_29E643CC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E643D0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29E643D20(a1, a2);
  }

  return a1;
}

uint64_t sub_29E643D20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29E643D74(uint64_t a1, uint64_t a2)
{
  sub_29E643E74(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E643DF4(uint64_t a1, uint64_t a2)
{
  sub_29E643E74(0, &qword_2A1857B20, sub_29E643EC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E643E74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E643EC8()
{
  result = qword_2A1857B28;
  if (!qword_2A1857B28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1857B28);
  }

  return result;
}

uint64_t sub_29E643F2C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29E643E74(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E643F98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E643E74(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for SleepScoreGalleryViewController()
{
  result = qword_2A1A7CB88;
  if (!qword_2A1A7CB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E644108(uint64_t a1)
{
  v2 = sub_29E74EE78();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752E78();
}

uint64_t sub_29E6441D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);

  v3(v4);
}

void sub_29E644230(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_29E660120(a2);
    [v4 hk:v5 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];
  }
}

void sub_29E6442B4(uint64_t a1)
{
  v2 = sub_29E7505E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  sub_29E6459C8(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_29E750648();
    v10 = sub_29E74ED28();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v7, a1, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    v13 = MEMORY[0x29EDCA190];
    sub_29E645788(&qword_2A1857B38, MEMORY[0x29EDC1CD0]);
    sub_29E6459C8(0, &qword_2A1857B40, MEMORY[0x29EDC1CD0], MEMORY[0x29EDC9A40]);
    sub_29E645A2C();
    sub_29E754C58();
    v12 = sub_29E750638();
    sub_29E70F5D4(v9, v12);
  }
}

uint64_t sub_29E644544(uint64_t a1)
{
  v3 = type metadata accessor for SleepScoreGalleryScreen(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  sub_29E64586C(a1, v6, type metadata accessor for SleepScoreGalleryScreen);
  v8 = sub_29E753038();
  sub_29E64594C(a1);
  return v8;
}

uint64_t sub_29E6445F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreGalleryScreen(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v2);
  sub_29E64586C(a2, v7, type metadata accessor for SleepScoreGalleryScreen);
  v9 = sub_29E753028();
  sub_29E64594C(a2);
  return v9;
}

id sub_29E6446B4(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_29E6447A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E752D48();
  *a1 = result;
  return result;
}

uint64_t sub_29E6447F4(char *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v149 = a5;
  v150 = a4;
  v147 = a3;
  v151 = a2;
  v152 = a1;
  v140 = type metadata accessor for SleepScoreGalleryScreen(0);
  v5 = *(*(v140 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v140);
  v142 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v141 = &v119 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v146 = &v119 - v10;
  v11 = MEMORY[0x29EDC9C68];
  sub_29E6459C8(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v136 = &v119 - v14;
  sub_29E60596C();
  v139 = v15;
  v138 = *(v15 - 8);
  v16 = *(v138 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v137 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E605ADC();
  v134 = v18;
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v133 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v132 = &v119 - v22;
  sub_29E6457D0(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  v130 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v131 = &v119 - v25;
  sub_29E6459C8(0, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, v11);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v26 - 8);
  v153 = (&v119 - v28);
  v29 = sub_29E74F0D8();
  v157 = *(v29 - 8);
  v30 = v157[8];
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v129 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v34 = (&v119 - v33);
  v35 = sub_29E74EE78();
  v156 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35);
  v128 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38);
  v41 = &v119 - v40;
  v42 = sub_29E754048();
  v143 = *(v42 - 8);
  v43 = *(v143 + 8);
  v44 = MEMORY[0x2A1C7C4A8](v42);
  v145 = &v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x2A1C7C4A8](v44);
  v48 = &v119 - v47;
  v49 = MEMORY[0x2A1C7C4A8](v46);
  v144 = &v119 - v50;
  MEMORY[0x2A1C7C4A8](v49);
  v52 = &v119 - v51;
  v54 = *(v53 + 16);
  v122 = v53 + 16;
  v121 = v54;
  v54(&v119 - v51, v152, v42);
  v154 = v36;
  v55 = *(v36 + 16);
  v55(v41, v151, v35);
  v56 = v157[2];
  v148 = v34;
  v155 = v29;
  v125 = v157 + 2;
  v124 = v56;
  v56(v34, v150, v29);
  v57 = v153;
  sub_29E62D760(v149, v153);
  v58 = type metadata accessor for SleepScoreGalleryModelProvider();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  v62 = v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__primaryDayIndexID;
  *v62 = 0;
  *(v62 + 8) = 1;
  *(v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider__updateCount) = 0;
  v63 = (v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
  *v63 = 0;
  v63[1] = 0;
  *(v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver) = 0;
  v123 = v147;
  sub_29E74EF38();
  *v62 = sub_29E753FF8();
  *(v62 + 8) = 0;
  v147 = v41;
  v127 = v36 + 16;
  v126 = v55;
  v55((v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar), v41, v156);
  v64 = v143;
  v135 = v61;
  v65 = v61 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_initialModel;
  v66 = v144;
  sub_29E62D760(v57, v65);
  sub_29E753FE8();
  v67 = v145;
  sub_29E753FC8();
  sub_29E753FD8();
  v68 = v64 + 8;
  v69 = *(v64 + 1);
  v69(v67, v42);
  v69(v48, v42);
  sub_29E645788(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
  v145 = v42;
  result = sub_29E7540E8();
  if (result)
  {
    v71 = *(v64 + 4);
    v72 = v132;
    v73 = v145;
    v71(v132, v66, v145);
    v74 = v134;
    v75 = v72 + v134[12];
    v120 = v52;
    v121(v75, v52, v73);
    v76 = v133;
    sub_29E64586C(v72, v133, sub_29E605ADC);
    v77 = v74[12];
    v78 = v131;
    v71(v131, v76, v73);
    v69((v76 + v77), v73);
    sub_29E605CC8(v72, v76);
    v71((v78 + *(v130 + 36)), (v76 + v74[12]), v73);
    v69(v76, v73);
    v79 = v135;
    sub_29E605D2C(v78, v135 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_galleryRange);
    v80 = v128;
    v126(v128, v147, v156);
    v81 = v129;
    v124(v129, v148, v155);
    v82 = type metadata accessor for SleepScoreDaySummaryProviderDataSource();
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    v85 = v123;
    v134 = v85;
    v86 = sub_29E6A7D54(v85, v80, v81);

    v158 = v86;
    sub_29E605DAC();
    v88 = *(v87 + 48);
    v89 = *(v87 + 52);
    swift_allocObject();
    *(v79 + 16) = sub_29E753E08();
    v158 = sub_29E753E28();
    sub_29E602DD4();
    v90 = sub_29E754908();
    v159 = v90;
    v91 = sub_29E7548D8();
    v92 = v136;
    (*(*(v91 - 8) + 56))(v136, 1, 1, v91);
    sub_29E605A58();
    v144 = v68;
    sub_29E645788(&qword_2A1856948, sub_29E605A58);
    v143 = v69;
    sub_29E645788(&qword_2A18568B8, sub_29E602DD4);
    v93 = v137;
    sub_29E752968();
    sub_29E6458D4(v92, &qword_2A1856860, MEMORY[0x29EDCA298]);

    swift_allocObject();
    swift_weakInit();
    sub_29E645788(&qword_2A1856968, sub_29E60596C);
    v94 = v139;
    v95 = sub_29E7529A8();

    (*(v138 + 8))(v93, v94);
    v96 = *(v79 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver);
    *(v79 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_daysUpdatedPublisherObserver) = v95;

    sub_29E67F504();
    v97 = v134;

    sub_29E6458D4(v153, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
    v98 = v157[1];
    ++v157;
    v153 = v98;
    (v98)(v148, v155);
    v99 = *(v154 + 8);
    v154 += 8;
    v148 = v99;
    v99(v147, v156);
    v143(v120, v73);
    v100 = swift_allocObject();
    *(v100 + 16) = nullsub_1;
    *(v100 + 24) = 0;
    KeyPath = swift_getKeyPath();
    v102 = swift_getKeyPath();
    v103 = v146;
    *(v146 + *(v140 + 28)) = v102;
    sub_29E6459C8(0, &qword_2A1856970, MEMORY[0x29EDB9D18], MEMORY[0x29EDBC388]);
    swift_storeEnumTagMultiPayload();
    *v103 = v79;
    *(v103 + 8) = sub_29E645944;
    *(v103 + 16) = v100;
    *(v103 + 24) = KeyPath;
    *(v103 + 32) = 0;
    v104 = v141;
    sub_29E64586C(v103, v141, type metadata accessor for SleepScoreGalleryScreen);
    v105 = objc_allocWithZone(type metadata accessor for SleepScoreGalleryViewController());
    sub_29E64586C(v104, v142, type metadata accessor for SleepScoreGalleryScreen);

    v106 = sub_29E753038();
    sub_29E64594C(v104);
    v107 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v108 + 24) = v97;
    swift_beginAccess();
    v109 = *(v100 + 24);
    *(v100 + 16) = sub_29E6459A8;
    *(v100 + 24) = v108;
    v110 = v106;
    v111 = v97;
    v112 = v110;

    v113 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v114 = (v79 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
    v115 = *(v79 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler);
    v116 = *(v79 + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_showInChartsButtonHandler + 8);
    *v114 = sub_29E6459B0;
    v114[1] = v113;

    sub_29E6459B8(v115);

    result = [objc_opt_self() appleSleepScoreType];
    if (result)
    {
      v117 = result;
      v118 = [result hk_localizedName];

      [v112 setTitle_];
      sub_29E6458D4(v149, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel);
      (v153)(v150, v155);
      v148(v151, v156);
      v143(v152, v145);
      sub_29E64594C(v146);

      return v112;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E645788(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6457D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E754048();
    v7 = sub_29E645788(&qword_2A1A7BE20, MEMORY[0x29EDBA2F8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E64586C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6458D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6459C8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E64594C(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreGalleryScreen(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}