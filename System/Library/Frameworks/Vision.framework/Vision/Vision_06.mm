unint64_t sub_1A5B85E50()
{
  result = qword_1EB20D660;
  if (!qword_1EB20D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB20D660);
  }

  return result;
}

void sub_1A5B85EA4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 contentsWithTypes_];
  sub_1A5B16F58(0, &qword_1EB1EF040);
  v5 = sub_1A5FD3F4C();

  *a2 = v5;
}

void *sub_1A5B85F18@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v4, *(*(v1 + 32) + OBJC_IVAR____TtCV6Vision19DocumentObservation12OutputRegion_region));
  *a1 = v4;
  return result;
}

void *sub_1A5B85F74@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_1A5B86018@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v5, *(*(v1 + 32) + OBJC_IVAR____TtCV6Vision19DocumentObservation12OutputRegion_region));
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

void *sub_1A5B8607C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

id sub_1A5B860C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 quadForTextInCharacterRange_];
  *a2 = result;
  return result;
}

unint64_t sub_1A5B860FC()
{
  result = qword_1EB20D668;
  if (!qword_1EB20D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB20D668);
  }

  return result;
}

uint64_t sub_1A5B86150(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = [*(v11 + OBJC_IVAR____TtCV6Vision19DocumentObservation12OutputRegion_region) uuid];
  sub_1A5FD365C();

  v14 = [*(v12 + OBJC_IVAR____TtCV6Vision19DocumentObservation12OutputRegion_region) uuid];
  sub_1A5FD365C();

  LOBYTE(v14) = sub_1A5FD364C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return v14 & 1;
}

unint64_t sub_1A5B862C8()
{
  result = qword_1EB20D670;
  if (!qword_1EB20D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB20D670);
  }

  return result;
}

uint64_t sub_1A5B86360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s6Vision19DocumentObservationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = *a1;
  v29 = a2;
  v12 = *a2;
  v13 = *(v11 + OBJC_IVAR____TtCV6Vision19DocumentObservation12OutputRegion_region);

  v14 = [v13 uuid];
  sub_1A5FD365C();

  v15 = [*(v12 + OBJC_IVAR____TtCV6Vision19DocumentObservation12OutputRegion_region) uuid];
  sub_1A5FD365C();

  LOBYTE(v15) = sub_1A5FD364C();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v10, v4);

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

  v17 = v29;
  v18 = *(v29 + 4);
  if (*(a1 + 4) <= 0xFFF7u)
  {
    LOWORD(v33) = *(a1 + 4);
    if (v18 > 0xFFF7)
    {
      goto LABEL_12;
    }

    LOWORD(v30) = v18;
    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v18 <= 0xFFF7)
  {
LABEL_12:
    v24 = 0;
    return v24 & 1;
  }

  v19 = type metadata accessor for DocumentObservation(0);
  if ((sub_1A5FD364C() & 1) == 0 || *(a1 + *(v19 + 28)) != *(v17 + *(v19 + 28)))
  {
    goto LABEL_12;
  }

  v20 = *(v19 + 32);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 48);
  v23 = (v17 + v20);
  v24 = v22 & v23[3];
  if ((v22 & 1) == 0 && (v23[3] & 1) == 0)
  {
    v25 = v23[1];
    v33 = *v23;
    v34 = v25;
    v35 = v23[2];
    v26 = v21[1];
    v30 = *v21;
    v31 = v26;
    v32 = v21[2];
    v24 = sub_1A5FD42BC();
  }

  return v24 & 1;
}

uint64_t sub_1A5B86660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74656C6C7562 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6568707968 && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7361637265776F6CLL && a2 == 0xEE006E6974614C65 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7361637265707075 && a2 == 0xEE006E6974614C65 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616D69636564 && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A6054E30 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A6054E50 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1A5B868B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

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

unint64_t sub_1A5B869CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0430);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B86D2C();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v18 = 0;
    sub_1A5B0A8B0();
    sub_1A5FD497C();
    v9 = v16;
    v8 = v17;
    sub_1A5B16F58(0, &qword_1EB1EF038);
    sub_1A5B16F58(0, &qword_1EB1EF040);
    v10 = sub_1A5FD435C();
    if (v10)
    {
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF918);
      v18 = 1;
      sub_1A5B88BA8(&qword_1EB1F0438, &qword_1EB1F0440);
      sub_1A5FD497C();
      v15 = v16;
      type metadata accessor for DocumentObservation.OutputRegion(0);
      v7 = swift_allocObject();
      sub_1A5B81BE0(v12, v15);
      sub_1A5B066DC(v9, v8);
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v7;
    }

    v7 = 0x80000001A6053190;
    sub_1A5B16774();
    swift_allocError();
    *v13 = 0xD00000000000001CLL;
    *(v13 + 8) = 0x80000001A6053190;
    *(v13 + 16) = 0;
    *(v13 + 20) = 0;
    swift_willThrow();
    sub_1A5B066DC(v9, v8);
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1A5B86D2C()
{
  result = qword_1EB20D678;
  if (!qword_1EB20D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB20D678);
  }

  return result;
}

unint64_t sub_1A5B86D80()
{
  result = qword_1EB20D680[0];
  if (!qword_1EB20D680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20D680);
  }

  return result;
}

unint64_t sub_1A5B86DD4()
{
  result = qword_1EB1F03A0;
  if (!qword_1EB1F03A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03A0);
  }

  return result;
}

unint64_t sub_1A5B86E28()
{
  result = qword_1EB1F03B0;
  if (!qword_1EB1F03B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03B0);
  }

  return result;
}

uint64_t sub_1A5B86E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A5B86EE8()
{
  result = qword_1EB1F03B8;
  if (!qword_1EB1F03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03B8);
  }

  return result;
}

unint64_t sub_1A5B86F40()
{
  result = qword_1EB1F03C0;
  if (!qword_1EB1F03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03C0);
  }

  return result;
}

unint64_t sub_1A5B86F98()
{
  result = qword_1EB1F03C8;
  if (!qword_1EB1F03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03C8);
  }

  return result;
}

unint64_t sub_1A5B86FF0()
{
  result = qword_1EB1F03D0;
  if (!qword_1EB1F03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03D0);
  }

  return result;
}

unint64_t sub_1A5B87048()
{
  result = qword_1EB1F03D8;
  if (!qword_1EB1F03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03D8);
  }

  return result;
}

unint64_t sub_1A5B870A0()
{
  result = qword_1EB1F03E0;
  if (!qword_1EB1F03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03E0);
  }

  return result;
}

unint64_t sub_1A5B870F8()
{
  result = qword_1EB1F03E8;
  if (!qword_1EB1F03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03E8);
  }

  return result;
}

unint64_t sub_1A5B87150()
{
  result = qword_1EB1F03F0;
  if (!qword_1EB1F03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03F0);
  }

  return result;
}

unint64_t sub_1A5B871A8()
{
  result = qword_1EB1F03F8;
  if (!qword_1EB1F03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F03F8);
  }

  return result;
}

uint64_t sub_1A5B87244(void *a1)
{
  a1[1] = sub_1A5B8587C(&qword_1EB1F0408, type metadata accessor for DocumentObservation);
  a1[2] = sub_1A5B8587C(&qword_1EB1F0410, type metadata accessor for DocumentObservation);
  a1[3] = sub_1A5B8587C(&qword_1EB1F0418, type metadata accessor for DocumentObservation);
  result = sub_1A5B8587C(&qword_1EB1F0390, type metadata accessor for DocumentObservation);
  a1[4] = result;
  return result;
}

void sub_1A5B87388()
{
  sub_1A5B88DDC(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5FD367C();
    if (v1 <= 0x3F)
    {
      sub_1A5B877C4(319, &qword_1EB1EE618, type metadata accessor for CMTimeRange);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t _s6Vision19DocumentObservationV9ContainerV17DataDetectorMatchVwet_0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1A5B875F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A5B87654()
{
  sub_1A5B87760();
  if (v0 <= 0x3F)
  {
    sub_1A5B877C4(319, &qword_1EB1F0428, MEMORY[0x1E6969B50]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A5B87760()
{
  if (!qword_1EB1F0420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F0218);
    v0 = sub_1A5FD456C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F0420);
    }
  }
}

void sub_1A5B877C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5FD456C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A5B87974()
{
  result = qword_1EB20EEB0[0];
  if (!qword_1EB20EEB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20EEB0);
  }

  return result;
}

unint64_t sub_1A5B879CC()
{
  result = qword_1EB20F0C0[0];
  if (!qword_1EB20F0C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20F0C0);
  }

  return result;
}

unint64_t sub_1A5B87A24()
{
  result = qword_1EB20F2D0[0];
  if (!qword_1EB20F2D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20F2D0);
  }

  return result;
}

unint64_t sub_1A5B87A7C()
{
  result = qword_1EB20FBE0[0];
  if (!qword_1EB20FBE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20FBE0);
  }

  return result;
}

unint64_t sub_1A5B87AD4()
{
  result = qword_1EB20FDF0;
  if (!qword_1EB20FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB20FDF0);
  }

  return result;
}

unint64_t sub_1A5B87B2C()
{
  result = qword_1EB210000[0];
  if (!qword_1EB210000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB210000);
  }

  return result;
}

unint64_t sub_1A5B87B84()
{
  result = qword_1EB210510[0];
  if (!qword_1EB210510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB210510);
  }

  return result;
}

unint64_t sub_1A5B87BDC()
{
  result = qword_1EB210720[0];
  if (!qword_1EB210720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB210720);
  }

  return result;
}

unint64_t sub_1A5B87C34()
{
  result = qword_1EB210930[0];
  if (!qword_1EB210930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB210930);
  }

  return result;
}

unint64_t sub_1A5B87C8C()
{
  result = qword_1EB210B40[0];
  if (!qword_1EB210B40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB210B40);
  }

  return result;
}

unint64_t sub_1A5B87CE4()
{
  result = qword_1EB210D50[0];
  if (!qword_1EB210D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB210D50);
  }

  return result;
}

unint64_t sub_1A5B87D3C()
{
  result = qword_1EB210E60;
  if (!qword_1EB210E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB210E60);
  }

  return result;
}

unint64_t sub_1A5B87D94()
{
  result = qword_1EB210E68[0];
  if (!qword_1EB210E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB210E68);
  }

  return result;
}

unint64_t sub_1A5B87DEC()
{
  result = qword_1EB210EF0;
  if (!qword_1EB210EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB210EF0);
  }

  return result;
}

unint64_t sub_1A5B87E44()
{
  result = qword_1EB210EF8[0];
  if (!qword_1EB210EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB210EF8);
  }

  return result;
}

unint64_t sub_1A5B87E9C()
{
  result = qword_1EB210F80;
  if (!qword_1EB210F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB210F80);
  }

  return result;
}

unint64_t sub_1A5B87EF4()
{
  result = qword_1EB210F88[0];
  if (!qword_1EB210F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB210F88);
  }

  return result;
}

unint64_t sub_1A5B87F4C()
{
  result = qword_1EB211010;
  if (!qword_1EB211010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211010);
  }

  return result;
}

unint64_t sub_1A5B87FA4()
{
  result = qword_1EB211018[0];
  if (!qword_1EB211018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211018);
  }

  return result;
}

unint64_t sub_1A5B87FFC()
{
  result = qword_1EB2110A0;
  if (!qword_1EB2110A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2110A0);
  }

  return result;
}

unint64_t sub_1A5B88054()
{
  result = qword_1EB2110A8[0];
  if (!qword_1EB2110A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2110A8);
  }

  return result;
}

unint64_t sub_1A5B880AC()
{
  result = qword_1EB211130;
  if (!qword_1EB211130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211130);
  }

  return result;
}

unint64_t sub_1A5B88104()
{
  result = qword_1EB211138[0];
  if (!qword_1EB211138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211138);
  }

  return result;
}

unint64_t sub_1A5B8815C()
{
  result = qword_1EB2111C0;
  if (!qword_1EB2111C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2111C0);
  }

  return result;
}

unint64_t sub_1A5B881B4()
{
  result = qword_1EB2111C8[0];
  if (!qword_1EB2111C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2111C8);
  }

  return result;
}

unint64_t sub_1A5B8820C()
{
  result = qword_1EB211250;
  if (!qword_1EB211250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211250);
  }

  return result;
}

unint64_t sub_1A5B88264()
{
  result = qword_1EB211258[0];
  if (!qword_1EB211258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211258);
  }

  return result;
}

unint64_t sub_1A5B882BC()
{
  result = qword_1EB2112E0;
  if (!qword_1EB2112E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2112E0);
  }

  return result;
}

unint64_t sub_1A5B88314()
{
  result = qword_1EB2112E8[0];
  if (!qword_1EB2112E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2112E8);
  }

  return result;
}

unint64_t sub_1A5B8836C()
{
  result = qword_1EB211370;
  if (!qword_1EB211370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211370);
  }

  return result;
}

unint64_t sub_1A5B883C4()
{
  result = qword_1EB211378;
  if (!qword_1EB211378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211378);
  }

  return result;
}

unint64_t sub_1A5B8841C()
{
  result = qword_1EB211400;
  if (!qword_1EB211400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211400);
  }

  return result;
}

unint64_t sub_1A5B88474()
{
  result = qword_1EB211408[0];
  if (!qword_1EB211408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211408);
  }

  return result;
}

unint64_t sub_1A5B884CC()
{
  result = qword_1EB211490;
  if (!qword_1EB211490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211490);
  }

  return result;
}

unint64_t sub_1A5B88524()
{
  result = qword_1EB211498[0];
  if (!qword_1EB211498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211498);
  }

  return result;
}

unint64_t sub_1A5B8857C()
{
  result = qword_1EB211520;
  if (!qword_1EB211520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211520);
  }

  return result;
}

unint64_t sub_1A5B885D4()
{
  result = qword_1EB211528[0];
  if (!qword_1EB211528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211528);
  }

  return result;
}

unint64_t sub_1A5B8862C()
{
  result = qword_1EB2115B0;
  if (!qword_1EB2115B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2115B0);
  }

  return result;
}

unint64_t sub_1A5B88684()
{
  result = qword_1EB2115B8[0];
  if (!qword_1EB2115B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2115B8);
  }

  return result;
}

unint64_t sub_1A5B886DC()
{
  result = qword_1EB211640;
  if (!qword_1EB211640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211640);
  }

  return result;
}

unint64_t sub_1A5B88734()
{
  result = qword_1EB211648[0];
  if (!qword_1EB211648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211648);
  }

  return result;
}

unint64_t sub_1A5B8878C()
{
  result = qword_1EB2116D0;
  if (!qword_1EB2116D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2116D0);
  }

  return result;
}

unint64_t sub_1A5B887E4()
{
  result = qword_1EB2116D8[0];
  if (!qword_1EB2116D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2116D8);
  }

  return result;
}

unint64_t sub_1A5B8883C()
{
  result = qword_1EB211760;
  if (!qword_1EB211760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211760);
  }

  return result;
}

unint64_t sub_1A5B88894()
{
  result = qword_1EB211768[0];
  if (!qword_1EB211768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211768);
  }

  return result;
}

unint64_t sub_1A5B888EC()
{
  result = qword_1EB2117F0;
  if (!qword_1EB2117F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2117F0);
  }

  return result;
}

unint64_t sub_1A5B88944()
{
  result = qword_1EB2117F8[0];
  if (!qword_1EB2117F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2117F8);
  }

  return result;
}

unint64_t sub_1A5B8899C()
{
  result = qword_1EB211880;
  if (!qword_1EB211880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211880);
  }

  return result;
}

unint64_t sub_1A5B889F4()
{
  result = qword_1EB211888[0];
  if (!qword_1EB211888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211888);
  }

  return result;
}

unint64_t sub_1A5B88A4C()
{
  result = qword_1EB211910;
  if (!qword_1EB211910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211910);
  }

  return result;
}

unint64_t sub_1A5B88AA4()
{
  result = qword_1EB211918[0];
  if (!qword_1EB211918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211918);
  }

  return result;
}

unint64_t sub_1A5B88AFC()
{
  result = qword_1EB2119A0;
  if (!qword_1EB2119A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2119A0);
  }

  return result;
}

unint64_t sub_1A5B88B54()
{
  result = qword_1EB2119A8[0];
  if (!qword_1EB2119A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2119A8);
  }

  return result;
}

uint64_t sub_1A5B88BA8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EF918);
    sub_1A5B8587C(a2, type metadata accessor for BarcodeObservation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A5B88C44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_1A5B88CAC@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v4, *(*(v1 + 32) + OBJC_IVAR____TtCV6Vision19DocumentObservation12OutputRegion_region));
  result = *&v4;
  *a1 = v4;
  return result;
}

double sub_1A5B88D10@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1A5B88D54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A5B88DDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t TargetedImageRequestHandler.__allocating_init(sourceURL:targetURL:orientation:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = a1;
  v44 = a3;
  v49 = a2;
  v4 = HIDWORD(a3) & 1;
  v5 = type metadata accessor for OrientedImageSource();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v40 - v10;
  v11 = type metadata accessor for ImageSource();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v46 = &v40 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v47 = &v40 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  v24 = sub_1A5FD353C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 16);
  v26(v23, a1, v24);
  swift_storeEnumTagMultiPayload();
  v26(v21, v49, v24);
  swift_storeEnumTagMultiPayload();
  v27 = v47;
  sub_1A5B8BA60(v23, v47, type metadata accessor for ImageSource);
  v28 = v46;
  sub_1A5B8BA60(v21, v46, type metadata accessor for ImageSource);
  v41 = swift_allocObject();
  sub_1A5B8BA60(v27, v14, type metadata accessor for ImageSource);
  LOBYTE(v50[0]) = v4;
  v29 = v44;
  v30 = v48;
  sub_1A5B13EA8(v14, v44 | (v4 << 32), v48);
  sub_1A5B8BA60(v28, v14, type metadata accessor for ImageSource);
  LOBYTE(v50[0]) = v4;
  v31 = v43;
  sub_1A5B13EA8(v14, v29 | (v4 << 32), v43);
  type metadata accessor for ImageRequestHandler();
  v32 = v30;
  v33 = v45;
  sub_1A5B8BA60(v32, v45, type metadata accessor for OrientedImageSource);
  v34 = MEMORY[0x1E69E7CC0];
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(MEMORY[0x1E69E7CC0], v50);
  v35 = sub_1A5B1F6AC(v33, 0, v50);
  v36 = v41;
  *(v41 + 16) = v35;
  sub_1A5B8BA60(v31, v33, type metadata accessor for OrientedImageSource);
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(v34, v50);
  v37 = sub_1A5B1F6AC(v33, 0, v50);
  v38 = *(v25 + 8);
  v38(v49, v24);
  v38(v42, v24);
  sub_1A5B8BAC8(v31, type metadata accessor for OrientedImageSource);
  sub_1A5B8BAC8(v48, type metadata accessor for OrientedImageSource);
  sub_1A5B8BAC8(v46, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v47, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v21, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v23, type metadata accessor for ImageSource);
  result = v36;
  *(v36 + 24) = v37;
  return result;
}

uint64_t TargetedImageRequestHandler.__allocating_init(source:target:orientation:)(void *a1, void *a2, unint64_t a3)
{
  return sub_1A5B89384(a1, a2, a3);
}

{
  return sub_1A5B89384(a1, a2, a3);
}

{
  return sub_1A5B89748(a1, a2, a3);
}

{
  return sub_1A5B89748(a1, a2, a3);
}

uint64_t sub_1A5B89384(void *a1, void *a2, unint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v38 = HIDWORD(a3) & 1;
  v4 = type metadata accessor for OrientedImageSource();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v34 - v10;
  v11 = type metadata accessor for ImageSource();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v34 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v34 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v34 - v24;
  *(&v34 - v24) = a1;
  swift_storeEnumTagMultiPayload();
  *v23 = v40;
  swift_storeEnumTagMultiPayload();
  v36 = v20;
  sub_1A5B8BA60(v25, v20, type metadata accessor for ImageSource);
  sub_1A5B8BA60(v23, v17, type metadata accessor for ImageSource);
  v34 = swift_allocObject();
  sub_1A5B8BA60(v20, v14, type metadata accessor for ImageSource);
  v35 = a1;
  v40 = v40;
  LOBYTE(v20) = v38;
  LOBYTE(v42[0]) = v38;
  v26 = v39;
  v27 = v41;
  sub_1A5B13EA8(v14, v39 | (v38 << 32), v41);
  sub_1A5B8BA60(v17, v14, type metadata accessor for ImageSource);
  LOBYTE(v42[0]) = v20;
  v28 = v37;
  sub_1A5B13EA8(v14, v26 | (v20 << 32), v37);
  type metadata accessor for ImageRequestHandler();
  sub_1A5B8BA60(v27, v7, type metadata accessor for OrientedImageSource);
  v29 = MEMORY[0x1E69E7CC0];
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(MEMORY[0x1E69E7CC0], v42);
  v30 = sub_1A5B1F6AC(v7, 0, v42);
  v31 = v34;
  *(v34 + 16) = v30;
  sub_1A5B8BA60(v28, v7, type metadata accessor for OrientedImageSource);
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(v29, v42);
  v32 = sub_1A5B1F6AC(v7, 0, v42);

  sub_1A5B8BAC8(v28, type metadata accessor for OrientedImageSource);
  sub_1A5B8BAC8(v41, type metadata accessor for OrientedImageSource);
  sub_1A5B8BAC8(v17, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v36, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v23, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v25, type metadata accessor for ImageSource);
  result = v31;
  *(v31 + 24) = v32;
  return result;
}

uint64_t sub_1A5B89748(void *a1, void *a2, unint64_t a3)
{
  v39 = a3;
  v40 = a2;
  v38 = HIDWORD(a3) & 1;
  v4 = type metadata accessor for OrientedImageSource();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v34 - v10;
  v11 = type metadata accessor for ImageSource();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v34 - v19;
  v36 = &v34 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v34 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v34 - v24);
  *v25 = a1;
  v25[1] = 0;
  swift_storeEnumTagMultiPayload();
  *v23 = v40;
  v23[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1A5B8BA60(v25, v20, type metadata accessor for ImageSource);
  sub_1A5B8BA60(v23, v17, type metadata accessor for ImageSource);
  v34 = swift_allocObject();
  sub_1A5B8BA60(v20, v14, type metadata accessor for ImageSource);
  v35 = a1;
  v40 = v40;
  LOBYTE(v20) = v38;
  LOBYTE(v42[0]) = v38;
  v26 = v39;
  v27 = v41;
  sub_1A5B13EA8(v14, v39 | (v38 << 32), v41);
  sub_1A5B8BA60(v17, v14, type metadata accessor for ImageSource);
  LOBYTE(v42[0]) = v20;
  v28 = v37;
  sub_1A5B13EA8(v14, v26 | (v20 << 32), v37);
  type metadata accessor for ImageRequestHandler();
  sub_1A5B8BA60(v27, v7, type metadata accessor for OrientedImageSource);
  v29 = MEMORY[0x1E69E7CC0];
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(MEMORY[0x1E69E7CC0], v42);
  v30 = sub_1A5B1F6AC(v7, 0, v42);
  v31 = v34;
  *(v34 + 16) = v30;
  sub_1A5B8BA60(v28, v7, type metadata accessor for OrientedImageSource);
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(v29, v42);
  v32 = sub_1A5B1F6AC(v7, 0, v42);

  sub_1A5B8BAC8(v28, type metadata accessor for OrientedImageSource);
  sub_1A5B8BAC8(v41, type metadata accessor for OrientedImageSource);
  sub_1A5B8BAC8(v17, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v36, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v23, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v25, type metadata accessor for ImageSource);
  result = v31;
  *(v31 + 24) = v32;
  return result;
}

uint64_t TargetedImageRequestHandler.__allocating_init(source:target:orientation:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v50 = a5;
  v52 = a4;
  v48 = HIDWORD(a5) & 1;
  v8 = type metadata accessor for OrientedImageSource();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v42 - v13;
  v14 = type metadata accessor for ImageSource();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v53 = &v42 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v42 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v42 - v26);
  *v27 = a1;
  v27[1] = a2;
  v44 = a1;
  swift_storeEnumTagMultiPayload();
  v43 = a3;
  v28 = v52;
  *v25 = a3;
  v25[1] = v28;
  v49 = v25;
  swift_storeEnumTagMultiPayload();
  v29 = v53;
  sub_1A5B8BA60(v27, v53, type metadata accessor for ImageSource);
  v30 = v25;
  v31 = v20;
  sub_1A5B8BA60(v30, v20, type metadata accessor for ImageSource);
  v46 = swift_allocObject();
  sub_1A5B8BA60(v29, v17, type metadata accessor for ImageSource);
  sub_1A5B06670(a1, a2);
  sub_1A5B06670(a3, v28);
  LOBYTE(a3) = v48;
  LOBYTE(v54[0]) = v48;
  v32 = v50;
  v33 = v45;
  sub_1A5B13EA8(v17, v50 | (v48 << 32), v45);
  sub_1A5B8BA60(v31, v17, type metadata accessor for ImageSource);
  LOBYTE(v54[0]) = a3;
  v34 = v32 | (a3 << 32);
  v35 = v47;
  sub_1A5B13EA8(v17, v34, v47);
  type metadata accessor for ImageRequestHandler();
  v36 = v51;
  sub_1A5B8BA60(v33, v51, type metadata accessor for OrientedImageSource);
  v37 = MEMORY[0x1E69E7CC0];
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(MEMORY[0x1E69E7CC0], v54);
  v38 = sub_1A5B1F6AC(v36, 0, v54);
  v39 = v46;
  *(v46 + 16) = v38;
  sub_1A5B8BA60(v35, v36, type metadata accessor for OrientedImageSource);
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(v37, v54);
  v40 = sub_1A5B1F6AC(v36, 0, v54);
  sub_1A5B066DC(v43, v52);
  sub_1A5B066DC(v44, a2);
  sub_1A5B8BAC8(v35, type metadata accessor for OrientedImageSource);
  sub_1A5B8BAC8(v33, type metadata accessor for OrientedImageSource);
  sub_1A5B8BAC8(v31, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v53, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v49, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v27, type metadata accessor for ImageSource);
  result = v39;
  *(v39 + 24) = v40;
  return result;
}

uint64_t TargetedImageRequestHandler.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5B89FC0, 0, 0);
}

uint64_t sub_1A5B89FC0()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A5B8A068;
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  return ImageRequestHandler.perform<A>(_:)(v2, v4, v5, v3);
}

uint64_t sub_1A5B8A068()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1A5B8A354;
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3 = sub_1A5B8A194;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A5B8A194()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1A5B8A23C;
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return ImageRequestHandler.perform<A>(_:)(v5, v3, v4, v2);
}

uint64_t sub_1A5B8A23C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A5B8A354()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TargetedImageRequestHandler.perform<each A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for VisionResult(0);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA88);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04C8);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04D0);
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A5B8A5D0, 0, 0);
}

uint64_t sub_1A5B8A5D0()
{
  if (v0[9])
  {
    v1 = 0;
    v27 = v0[11] & 0xFFFFFFFFFFFFFFFELL;
    v28 = v0[10] & 0xFFFFFFFFFFFFFFFELL;
    v2 = MEMORY[0x1E69E7CC0];
    do
    {
      v3 = v0[8];
      v4 = *(v28 + 8 * v1);
      v29 = *(v27 + 8 * v1);
      v5 = *(v4 - 8);
      v6 = swift_task_alloc();
      v7 = *(v5 + 16);
      v7(v6, *(v3 + 8 * v1), v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[4] = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_1A5B2053C(0, v2[2] + 1, 1, v2);
        v0[4] = v2;
      }

      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        v30 = sub_1A5B2053C((v9 > 1), v10 + 1, 1, v2);
        v0[4] = v30;
      }

      else
      {
        v30 = v2;
      }

      v11 = v0[9];
      v12 = swift_task_alloc();
      v7(v12, v6, v4);
      sub_1A5B20684(v10, v12, v0 + 4, v4, *(v29 + 8));

      (*(v5 + 8))(v6, v4);
      ++v1;

      v13 = v1 == v11;
      v2 = v30;
    }

    while (!v13);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v0[29] = v2;
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0;
  v17 = v0[25];
  v18 = v16[24];
  v16[5] = v2;
  swift_bridgeObjectRetain_n();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB50);
  v16[30] = v19;
  v20 = sub_1A5B8B9FC();
  v16[31] = v20;
  ImageRequestHandler.performAll<A>(_:)((v16 + 5), v19, v20, v15);

  v21 = *(v17 + 16);
  v16[32] = v21;
  v16[33] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v14, v15, v18);
  v16[2] = v19;
  v16[3] = v20;
  v16[34] = swift_getOpaqueTypeConformance2();
  sub_1A5FD415C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16[35] = AssociatedConformanceWitness;
  v23 = swift_task_alloc();
  v16[36] = v23;
  *v23 = v16;
  v23[1] = sub_1A5B8A92C;
  v24 = v16[19];
  v25 = v16[20];

  return MEMORY[0x1EEE6D8C8](v24, v25, AssociatedConformanceWitness);
}

uint64_t sub_1A5B8A92C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    (*(v2[21] + 8))(v2[23], v2[20]);
    v3 = sub_1A5B8ACAC;
  }

  else
  {
    v3 = sub_1A5B8AA58;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A5B8AA58()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[14];
  v4 = *(v3 + 48);
  v0[38] = v4;
  v0[39] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v6 = v0[31];
    v5 = v0[32];
    v8 = v0[29];
    v7 = v0[30];
    v10 = v0[26];
    v9 = v0[27];
    v11 = v0[23];
    v12 = v0[24];
    v13 = v0[21];
    v14 = v0[20];
    v15 = v0[12];
    v16 = *(v13 + 8);
    v0[40] = v16;
    v0[41] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v11, v14);
    v0[42] = *(v15 + 24);
    v0[6] = v8;
    ImageRequestHandler.performAll<A>(_:)((v0 + 6), v7, v6, v10);

    v5(v9, v10, v12);
    sub_1A5FD415C();
    v0[43] = MEMORY[0x1E69E7CC0];
    v17 = swift_task_alloc();
    v0[44] = v17;
    *v17 = v0;
    v17[1] = sub_1A5B8ACB4;
    v18 = v0[18];

    return MEMORY[0x1EEE6D8D0](v18, 0, 0);
  }

  else
  {
    sub_1A5B20A4C(v1);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[35] = AssociatedConformanceWitness;
    v20 = swift_task_alloc();
    v0[36] = v20;
    *v20 = v0;
    v20[1] = sub_1A5B8A92C;
    v21 = v0[19];
    v22 = v0[20];

    return MEMORY[0x1EEE6D8C8](v21, v22, AssociatedConformanceWitness);
  }
}

uint64_t sub_1A5B8ACB4()
{
  *(*v1 + 360) = v0;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A5B8ADC8, 0, 0);
  }

  return result;
}

uint64_t sub_1A5B8ADC8()
{
  v1 = *(v0 + 144);
  if ((*(v0 + 304))(v1, 1, *(v0 + 104)) == 1)
  {
    v2 = *(v0 + 72);
    (*(v0 + 320))(*(v0 + 176), *(v0 + 160));

    if (v2)
    {
      v3 = (*(v0 + 80) & 0xFFFFFFFFFFFFFFFELL);
      v51 = *(v0 + 360);
      v4 = *(v0 + 344);
      v5 = *v3;
      v54 = (*(v0 + 88) & 0xFFFFFFFFFFFFFFFELL);
      v6 = *v54;
      v7 = **(v0 + 56);
      v8 = **(v0 + 64);
      v9 = *(*v3 - 8);
      v10 = swift_task_alloc();
      (*(v9 + 16))(v10, v8, v5);
      sub_1A5B1BEC4(v4, v10, v5, *(v6 + 8), v7);
      if (v51)
      {
        v11 = *(v0 + 224);
        v13 = *(v0 + 200);
        v12 = *(v0 + 208);
        v14 = *(v0 + 192);
        (*(v9 + 8))(v10, v5);
        v15 = *(v13 + 8);
        v15(v12, v14);
        v15(v11, v14);

LABEL_7:

        v26 = *(v0 + 8);
LABEL_19:

        return v26();
      }

      v37 = *(v0 + 72);
      (*(v9 + 8))(v10, v5);

      if (v37 != 1)
      {
        v38 = 1;
        v53 = v3;
        do
        {
          v39 = *(v0 + 344);
          v40 = v3[v38];
          v41 = v54[v38];
          v42 = *(*(v0 + 56) + 8 * v38);
          v43 = *(*(v0 + 64) + 8 * v38);
          v44 = *(v40 - 8);
          v45 = swift_task_alloc();
          (*(v44 + 16))(v45, v43, v40);
          sub_1A5B1BEC4(v39, v45, v40, *(v41 + 8), v42);
          v46 = *(v0 + 72);
          (*(v44 + 8))(v45, v40);

          ++v38;
          v3 = v53;
        }

        while (v38 != v46);
      }
    }

    v47 = *(v0 + 224);
    v48 = *(v0 + 192);
    v49 = *(*(v0 + 200) + 8);
    v49(*(v0 + 208), v48);
    v49(v47, v48);

    v26 = *(v0 + 8);
    goto LABEL_19;
  }

  v17 = *(v0 + 128);
  v16 = *(v0 + 136);
  sub_1A5B20B18(v1, v16);
  sub_1A5B8BA60(v16, v17, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v18 = *(v0 + 320);
    v19 = *(v0 + 200);
    v52 = *(v0 + 208);
    v55 = *(v0 + 224);
    v20 = *(v0 + 192);
    v21 = *(v0 + 176);
    v22 = *(v0 + 160);
    v23 = *(v0 + 128);
    v24 = *(v0 + 136);

    __swift_destroy_boxed_opaque_existential_1(v23);
    swift_willThrow();
    sub_1A5B8BAC8(v24, type metadata accessor for VisionResult);
    v18(v21, v22);
    v25 = *(v19 + 8);
    v25(v52, v20);
    v25(v55, v20);
    goto LABEL_7;
  }

  v27 = *(v0 + 136);
  v28 = *(v0 + 120);
  sub_1A5B8BAC8(*(v0 + 128), type metadata accessor for VisionResult);
  sub_1A5B8BA60(v27, v28, type metadata accessor for VisionResult);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v0 + 344);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_1A5B20364(0, v30[2] + 1, 1, *(v0 + 344));
  }

  v32 = v30[2];
  v31 = v30[3];
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1A5B20364(v31 > 1, v32 + 1, 1, v30);
  }

  v34 = *(v0 + 112);
  v33 = *(v0 + 120);
  sub_1A5B8BAC8(*(v0 + 136), type metadata accessor for VisionResult);
  v30[2] = v32 + 1;
  sub_1A5B20B18(v33, v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v32);
  *(v0 + 344) = v30;
  v35 = swift_task_alloc();
  *(v0 + 352) = v35;
  *v35 = v0;
  v35[1] = sub_1A5B8ACB4;
  v36 = *(v0 + 144);

  return MEMORY[0x1EEE6D8D0](v36, 0, 0);
}

uint64_t TargetedImageRequestHandler.performAll<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a1;
  v17 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04D0);
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v15 - v9;
  v11 = *(v5 + 16);
  v11(v7, a1, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB50);
  swift_dynamicCast();
  v18 = v19;
  v13 = sub_1A5B8B9FC();
  ImageRequestHandler.performAll<A>(_:)(&v18, v12, v13, v10);

  (*(v8 + 8))(v10, v16);
  v11(v7, v15, a2);
  swift_dynamicCast();
  v18 = v19;
  ImageRequestHandler.performAll<A>(_:)(&v18, v12, v13, v17);
}

uint64_t sub_1A5B8B704(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v24[1] = a4;
  v4 = a3;
  v7 = HIDWORD(a3) & 1;
  v8 = type metadata accessor for ImageSource();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OrientedImageSource();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v24 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v24 - v18;
  v20 = swift_allocObject();
  sub_1A5B8BA60(a1, v10, type metadata accessor for ImageSource);
  LOBYTE(v25[0]) = v7;
  sub_1A5B13EA8(v10, v4 | (v7 << 32), v19);
  sub_1A5B8BA60(a2, v10, type metadata accessor for ImageSource);
  LOBYTE(v25[0]) = v7;
  sub_1A5B13EA8(v10, v4 | (v7 << 32), v17);
  type metadata accessor for ImageRequestHandler();
  sub_1A5B8BA60(v19, v14, type metadata accessor for OrientedImageSource);
  v21 = MEMORY[0x1E69E7CC0];
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(MEMORY[0x1E69E7CC0], v25);
  *(v20 + 16) = sub_1A5B1F6AC(v14, 0, v25);
  sub_1A5B8BA60(v17, v14, type metadata accessor for OrientedImageSource);
  ImageRequestHandler.ImageOptions.init(arrayLiteral:)(v21, v25);
  v22 = sub_1A5B1F6AC(v14, 0, v25);

  sub_1A5B8BAC8(a2, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(a1, type metadata accessor for ImageSource);
  sub_1A5B8BAC8(v17, type metadata accessor for OrientedImageSource);
  sub_1A5B8BAC8(v19, type metadata accessor for OrientedImageSource);
  *(v20 + 24) = v22;
  return v20;
}

uint64_t TargetedImageRequestHandler.deinit()
{

  return v0;
}

uint64_t TargetedImageRequestHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1A5B8B9FC()
{
  result = qword_1EB1F04D8;
  if (!qword_1EB1F04D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EEB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F04D8);
  }

  return result;
}

uint64_t sub_1A5B8BA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5B8BAC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5B8BB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697369766572 && a2 == 0xE900000000000032)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A5B8BC20(uint64_t a1)
{
  v2 = sub_1A5B8BEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B8BC5C(uint64_t a1)
{
  v2 = sub_1A5B8BEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5B8BC98(uint64_t a1)
{
  v2 = sub_1A5B8BF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B8BCD4(uint64_t a1)
{
  v2 = sub_1A5B8BF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackObjectRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B8BEE8();
  sub_1A5FD4CDC();
  sub_1A5B8BF3C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5B8BEE8()
{
  result = qword_1EB211B50;
  if (!qword_1EB211B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB211B50);
  }

  return result;
}

unint64_t sub_1A5B8BF3C()
{
  result = qword_1EB211B58[0];
  if (!qword_1EB211B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB211B58);
  }

  return result;
}

uint64_t TrackObjectRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t TrackObjectRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04F0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04F8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B8BEE8();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5B8BF3C();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for TrackObjectRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5B8C308(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F04E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B8BEE8();
  sub_1A5FD4CDC();
  sub_1A5B8BF3C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TrackObjectRequest.__allocating_init(detectedObject:_:frameAnalysisSpacing:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  TrackObjectRequest.init(detectedObject:_:frameAnalysisSpacing:)(a1, a2, a3, a4, a5, a6 & 1);
  return v12;
}

uint64_t TrackObjectRequest.init(detectedObject:_:frameAnalysisSpacing:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = *a2;
  static NormalizedRect.fullImage.getter(v23);
  v14 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v24 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0500);
  v15 = swift_allocObject();
  *(v15 + 72) = 0;
  v16 = v23[1];
  *(v15 + 16) = v23[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = v14;
  *(v6 + 88) = v15;
  type metadata accessor for TrackObjectRequest.State(0);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0;
  *(v17 + 40) = 1;
  v18 = OBJC_IVAR____TtCC6Vision18TrackObjectRequest5State_lastResult;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0508);
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  *(v17 + OBJC_IVAR____TtCC6Vision18TrackObjectRequest5State_tracker) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0510);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v17;
  *(v6 + 96) = v20;
  sub_1A5FD366C();
  if (v13 == 1 && (sub_1A5B8E2C0(&qword_1EB1F0518, type metadata accessor for TrackObjectRequest), result = sub_1A5D4E900(), (v23[0].n128_u8[0] & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    sub_1A5B8E25C(a1, v6 + 16);
    if (a6)
    {
      a3 = *MEMORY[0x1E6960CC0];
      LODWORD(a4) = *(MEMORY[0x1E6960CC0] + 8);
      LODWORD(v22) = *(MEMORY[0x1E6960CC0] + 12);
      a5 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v22 = HIDWORD(a4);
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
    *(v7 + 64) = a3;
    *(v7 + 72) = a4;
    *(v7 + 76) = v22;
    *(v7 + 80) = a5;
    return v7;
  }

  return result;
}

void TrackObjectRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 88);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 32);
  *a1 = *(v3 + 16);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 72));
}

__n128 sub_1A5B8C7F4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(*a1 + 88);
  os_unfair_lock_lock((v3 + 72));
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 72));
  result = v6;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

void sub_1A5B8C844(_OWORD *a1, uint64_t a2)
{
  v3 = *(*a2 + 88);
  os_unfair_lock_lock((v3 + 72));
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void TrackObjectRequest.regionOfInterest.setter(_OWORD *a1)
{
  v3 = *(v1 + 88);
  os_unfair_lock_lock((v3 + 72));
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void (*TrackObjectRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
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
  v5 = *(v1 + 88);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 72));
  v6 = *(v5 + 32);
  *v4 = *(v5 + 16);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 72));
  return sub_1A5B8C964;
}

void sub_1A5B8C964(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = (*a1)[1];
  v4 = **a1;
  os_unfair_lock_lock((v2 + 72));
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  os_unfair_lock_unlock((v2 + 72));

  free(v1);
}

uint64_t TrackObjectRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5B8E2C0(&qword_1EB1F0520, type metadata accessor for TrackObjectRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t sub_1A5B8CAEC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  v5 = type metadata accessor for TrackObjectRequest(0);
  v6 = sub_1A5B8E2C0(&qword_1EB1F0518, type metadata accessor for TrackObjectRequest);
  result = a2(v5, v6);
  *a3 = result;
  return result;
}

double TrackObjectRequest.trackingFrameSizeInPixels.getter()
{
  v1 = *(v0 + 88);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 48);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void sub_1A5B8CBD4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 88);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 72));
  *a2 = v4;
  a2[1] = v5;
}

void sub_1A5B8CC1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a2 + 88);
  os_unfair_lock_lock((v4 + 72));
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;

  os_unfair_lock_unlock((v4 + 72));
}

void TrackObjectRequest.trackingFrameSizeInPixels.setter(double a1, double a2)
{
  v5 = *(v2 + 88);
  os_unfair_lock_lock((v5 + 72));
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;

  os_unfair_lock_unlock((v5 + 72));
}

void (*TrackObjectRequest.trackingFrameSizeInPixels.modify(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + 88);
  a1[2] = v3;
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 72));
  *a1 = v4;
  a1[1] = v5;
  return sub_1A5B8CD20;
}

void sub_1A5B8CD20(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  os_unfair_lock_lock((v1 + 72));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;

  os_unfair_lock_unlock((v1 + 72));
}

uint64_t sub_1A5B8CDA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4 & 1;
  return result;
}

uint64_t sub_1A5B8CE60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC6Vision18TrackObjectRequest5State_lastResult;
  swift_beginAccess();
  return sub_1A5B31A34(v1 + v3, a1, &qword_1EB1F0528);
}

uint64_t sub_1A5B8CEC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC6Vision18TrackObjectRequest5State_lastResult;
  swift_beginAccess();
  sub_1A5B8E308(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_1A5B8CF88()
{
  v1 = OBJC_IVAR____TtCC6Vision18TrackObjectRequest5State_tracker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A5B8CFD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC6Vision18TrackObjectRequest5State_tracker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A5B8D08C()
{
  sub_1A5B8E378(v0 + OBJC_IVAR____TtCC6Vision18TrackObjectRequest5State_lastResult);

  return swift_deallocClassInstance();
}

uint64_t sub_1A5B8D100()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCC6Vision18TrackObjectRequest5State_lastResult;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0508);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC6Vision18TrackObjectRequest5State_tracker) = 0;
  return v0;
}

uint64_t (*sub_1A5B8D1EC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 168))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5B8D2DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B17040;
}

uint64_t (*sub_1A5B8D3D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 120))();
  return sub_1A5B17040;
}

uint64_t TrackObjectRequest.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC6Vision18TrackObjectRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TrackObjectRequest.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC6Vision18TrackObjectRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TrackObjectRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5B8E2C0(&qword_1EB1F0530, type metadata accessor for TrackObjectRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

void sub_1A5B8D638(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + 88);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 32);
  *a1 = *(v3 + 16);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void sub_1A5B8D684(_OWORD *a1)
{
  v3 = *(*v1 + 88);
  os_unfair_lock_lock((v3 + 72));
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;

  os_unfair_lock_unlock((v3 + 72));
}

uint64_t (*sub_1A5B8D6D0(uint64_t **a1))()
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
  v2[4] = TrackObjectRequest.regionOfInterest.modify(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5B8D7BC(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5B8E2C0(&qword_1EB1F0520, type metadata accessor for TrackObjectRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5B8D850(uint64_t a1)
{
  v2 = sub_1A5B8E2C0(&qword_1EB1EF7E0, type metadata accessor for TrackObjectRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5B8D8BC(uint64_t a1, uint64_t a2)
{
  sub_1A5B8E2C0(&qword_1EB1F0558, type metadata accessor for TrackObjectRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5B8D938(uint64_t a1, uint64_t a2)
{
  sub_1A5B8E2C0(&qword_1EB1F0558, type metadata accessor for TrackObjectRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5B8D9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B166B4(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 30)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698);
    return sub_1A5B8E3E0(&v8[*(v9 + 48)], a2);
  }

  else
  {
    sub_1A5B16718(v8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v17, "VisionResult ");
    HIWORD(v17[1]) = -4864;
    sub_1A5B8E2C0(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v11 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v11);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v16[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0538);
    v12 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v12);

    v13 = v17[0];
    v14 = v17[1];
    sub_1A5B16774();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 20) = 1;
    return swift_willThrow();
  }
}

uint64_t (*sub_1A5B8DBC8(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 88);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 64);

  os_unfair_lock_unlock((v3 + 72));
  *a1 = v4;
  return sub_1A5B8DC34;
}

uint64_t sub_1A5B8DC34(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock(v2 + 18);
    sub_1A5B8EC68(&v2[4]);
    os_unfair_lock_unlock(v2 + 18);
  }

  else
  {
    os_unfair_lock_lock(v2 + 18);
    sub_1A5B8EC68(&v2[4]);
    os_unfair_lock_unlock(v2 + 18);
  }
}

id sub_1A5B8DCE4()
{
  v1 = v0;
  v2 = sub_1A5FD367C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v16[0]) = 232;
  result = sub_1A5C752E0();
  if (result)
  {
    v7 = result;
    v8 = v0[5];
    v9 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
    (*(v9 + 8))(v16, v8, v9);
    v10 = [objc_allocWithZone(VNDetectedObjectObservation) initWithOriginatingRequestSpecifier:v7 boundingBox:{v16[0], v16[1], v16[2], v16[3]}];

    v11 = v1[5];
    v12 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
    v13 = *(v12 + 40);
    v14 = v10;
    v13(v11, v12);
    v15 = sub_1A5FD363C();
    (*(v3 + 8))(v5, v2);
    [v14 setUUID_];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A5B8DEEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision18TrackObjectRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5B8DF8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698) + 48);
  *a2 = v2;
  sub_1A5B31A34(a1, a2 + v5, &qword_1EB1EF7E8);
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A5B8E01C()
{
  v1 = *(*v0 + 88);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 64);

  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

uint64_t sub_1A5B8E060()
{
  v1 = *(*v0 + 88);
  os_unfair_lock_lock(v1 + 18);
  sub_1A5B8EC68(&v1[4]);
  os_unfair_lock_unlock(v1 + 18);
}

uint64_t (*sub_1A5B8E0C4(void *a1))()
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
  v2[4] = sub_1A5B8DBC8(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5B8E25C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A5B8E2C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5B8E308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5B8E378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5B8E3E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A5B8E468()
{
  result = qword_1EB1F0540;
  if (!qword_1EB1F0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0540);
  }

  return result;
}

uint64_t sub_1A5B8E4C0(uint64_t a1)
{
  result = sub_1A5B8E2C0(&qword_1EB1EF7E0, type metadata accessor for TrackObjectRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5B8E638(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5B8E2C0(a4, type metadata accessor for TrackObjectRequest);
  result = sub_1A5B8E2C0(a6, type metadata accessor for TrackObjectRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A5B8E6EC(uint64_t a1)
{
  result = sub_1A5B8E2C0(&qword_1EB1F0518, type metadata accessor for TrackObjectRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B8E748()
{
  result = qword_1EB1F0568;
  if (!qword_1EB1F0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0568);
  }

  return result;
}

unint64_t sub_1A5B8E79C(uint64_t a1)
{
  result = sub_1A5B8E7C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B8E7C4()
{
  result = qword_1EB1F0570;
  if (!qword_1EB1F0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0570);
  }

  return result;
}

uint64_t sub_1A5B8E820()
{
  result = sub_1A5FD367C();
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

void sub_1A5B8E93C()
{
  sub_1A5B8E9E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A5B8E9E0()
{
  if (!qword_1EB1F0578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F0508);
    v0 = sub_1A5FD456C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F0578);
    }
  }
}

unint64_t sub_1A5B8EA68()
{
  result = qword_1EB212580[0];
  if (!qword_1EB212580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB212580);
  }

  return result;
}

unint64_t sub_1A5B8EAC0()
{
  result = qword_1EB212690;
  if (!qword_1EB212690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB212690);
  }

  return result;
}

unint64_t sub_1A5B8EB18()
{
  result = qword_1EB212698[0];
  if (!qword_1EB212698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB212698);
  }

  return result;
}

unint64_t sub_1A5B8EB70()
{
  result = qword_1EB212720;
  if (!qword_1EB212720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB212720);
  }

  return result;
}

unint64_t sub_1A5B8EBC8()
{
  result = qword_1EB212728[0];
  if (!qword_1EB212728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB212728);
  }

  return result;
}

uint64_t sub_1A5B8EC1C(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 48) = v3;
  return result;
}

uint64_t sub_1A5B8EC88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0588);
  result = sub_1A5D4B1B8();
  qword_1EB2897B8 = result;
  return result;
}

uint64_t *sub_1A5B8ECC8()
{
  if (qword_1EB2127B0 != -1)
  {
    swift_once();
  }

  return &qword_1EB2897B8;
}

__n128 ImageTranslationAlignmentObservation.alignmentTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t ImageTranslationAlignmentObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageTranslationAlignmentObservation() + 20);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ImageTranslationAlignmentObservation()
{
  result = qword_1EB212AD0;
  if (!qword_1EB212AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ImageTranslationAlignmentObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageTranslationAlignmentObservation() + 28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t ImageTranslationAlignmentObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ImageTranslationAlignmentObservation();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ImageTranslationAlignmentObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD00000000000003DLL, 0x80000001A6054F60);
  sub_1A5B245C4();
  v0 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v0);

  MEMORY[0x1AC554600](0x203A62202CLL, 0xE500000000000000);
  v1 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0x203A63202CLL, 0xE500000000000000);
  v2 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0x203A64202CLL, 0xE500000000000000);
  v3 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v3);

  MEMORY[0x1AC554600](0x203A7874202CLL, 0xE600000000000000);
  v4 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](0x203A7974202CLL, 0xE600000000000000);
  v5 = sub_1A5FD3BCC();
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](2108457, 0xE300000000000000);
  v6 = type metadata accessor for ImageTranslationAlignmentObservation();
  v7 = sub_1A5B90114(&qword_1EB1F0590, type metadata accessor for ImageTranslationAlignmentObservation);
  v8 = sub_1A5C29408(v6, &off_1F1954E28, v7);
  MEMORY[0x1AC554600](v8);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

CIImage __swiftcall ImageTranslationAlignmentObservation.applyTransform(to:)(CIImage to)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v7[2] = v1[2];
  v3 = [(objc_class *)to.super.isa imageByApplyingTransform:v7];

  v4 = v3;
  result._priv = v5;
  result.super.isa = v4;
  return result;
}

__n128 ImageTranslationAlignmentObservation.init(_:)@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  [a1 alignmentTransform];
  v4 = a1;
  v5 = [v4 uuid];
  v6 = type metadata accessor for ImageTranslationAlignmentObservation();
  sub_1A5FD365C();

  [v4 confidence];
  v8 = v7;
  [v4 timeRange];

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  *(a2 + v6[6]) = v8;
  v9 = a2 + v6[7];
  *v9 = v11;
  *(v9 + 1) = v12;
  result = v13;
  *(v9 + 2) = v13;
  v9[48] = 0;
  *(a2 + v6[8]) = -8;
  return result;
}

__n128 sub_1A5B8F298@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, char *a5@<X8>, float a6@<S0>)
{
  v10 = *a4;
  v11 = a1[1];
  *a5 = *a1;
  *(a5 + 1) = v11;
  *(a5 + 2) = a1[2];
  v12 = type metadata accessor for ImageTranslationAlignmentObservation();
  v13 = v12[5];
  v14 = sub_1A5FD367C();
  (*(*(v14 - 8) + 32))(&a5[v13], a2, v14);
  *&a5[v12[6]] = a6;
  v15 = &a5[v12[7]];
  v16 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 1) = v16;
  result = *(a3 + 32);
  *(v15 + 2) = result;
  v15[48] = *(a3 + 48);
  *&a5[v12[8]] = v10;
  return result;
}

uint64_t ImageTranslationAlignmentObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for ImageTranslationAlignmentObservation();
  sub_1A5B90114(&qword_1EB1F0598, type metadata accessor for ImageTranslationAlignmentObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B8F3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1A5FD367C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 sub_1A5B8F478@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 28);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_1A5B8F4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5B90114(&qword_1EB1F0590, type metadata accessor for ImageTranslationAlignmentObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

uint64_t sub_1A5B8F530()
{
  if (*v0)
  {
    return 0x746176726573626FLL;
  }

  else
  {
    return 0x726F66736E617274;
  }
}

uint64_t sub_1A5B8F578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F66736E617274 && a2 == 0xE90000000000006DLL;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A5FD4B0C();

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

uint64_t sub_1A5B8F660(uint64_t a1)
{
  v2 = sub_1A5B9015C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B8F69C(uint64_t a1)
{
  v2 = sub_1A5B9015C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageTranslationAlignmentObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F05A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B9015C();
  sub_1A5FD4CDC();
  v12 = v3[1];
  v18 = *v3;
  v19 = v12;
  v20 = v3[2];
  v21 = 0;
  type metadata accessor for CGAffineTransform(0);
  sub_1A5B90114(&qword_1EB1F05A8, type metadata accessor for CGAffineTransform);
  sub_1A5FD4A5C();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v13 = type metadata accessor for ImageTranslationAlignmentObservation();
    v14 = sub_1A5B90114(&qword_1EB1F0590, type metadata accessor for ImageTranslationAlignmentObservation);
    sub_1A5BBD46C(v7, v13, &off_1F1954E28, v14);
    (*(v16 + 8))(v7, v17);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ImageTranslationAlignmentObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v37 = sub_1A5FD367C();
  v32 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F05B0);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ImageTranslationAlignmentObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B9015C();
  v13 = v38;
  sub_1A5FD4CCC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v36;
  v30 = v10;
  v38 = v12;
  v15 = v35;
  v16 = v37;
  type metadata accessor for CGAffineTransform(0);
  v44 = 0;
  sub_1A5B90114(&qword_1EB1F05B8, type metadata accessor for CGAffineTransform);
  sub_1A5FD497C();
  v17 = v40;
  v18 = v38;
  *v38 = v39;
  v18[1] = v17;
  v18[2] = v41;
  LOBYTE(v39) = 1;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  v29 = v9;
  LOBYTE(v39) = 0;
  sub_1A5B90114(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  sub_1A5FD497C();
  v19 = v6;
  v20 = v30;
  v21 = v38;
  (*(v32 + 32))(v38 + *(v30 + 20), v14, v16);
  LOBYTE(v39) = 1;
  sub_1A5FD495C();
  *(v21 + *(v20 + 24)) = v22;
  v44 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  v23 = a1;
  v24 = v30;
  v25 = v38;
  *(v38 + *(v30 + 32)) = v39;
  sub_1A5BBDB04(v42);
  (*(v33 + 8))(v19, v34);
  (*(v15 + 8))(v29, v7);
  v26 = v25 + *(v24 + 28);
  v27 = v42[1];
  *v26 = v42[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v42[2];
  *(v26 + 48) = v43;
  sub_1A5B901D8(v25, v31);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_1A5B9023C(v25);
}

uint64_t _s6Vision36ImageTranslationAlignmentObservationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A5FD432C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ImageTranslationAlignmentObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5 + 48);
  v7 = a2 + v5;
  if ((v6 & 1) == 0)
  {
    if ((*(v7 + 48) & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v8 = v4[8];
    v9 = *(a1 + v8);
    v10 = *(a2 + v8);
    if (v9 <= 0xFFF7)
    {
      if (v10 > 0xFFF7)
      {
        return 0;
      }

      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10 <= 0xFFF7)
    {
      return 0;
    }

    return 1;
  }

  if (*(v7 + 48))
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1A5B90114(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A5B9015C()
{
  result = qword_1EB2127C0[0];
  if (!qword_1EB2127C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2127C0);
  }

  return result;
}

uint64_t sub_1A5B901D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageTranslationAlignmentObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5B9023C(uint64_t a1)
{
  v2 = type metadata accessor for ImageTranslationAlignmentObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5B90298(void *a1)
{
  a1[1] = sub_1A5B90114(&qword_1EB1EFA50, type metadata accessor for ImageTranslationAlignmentObservation);
  a1[2] = sub_1A5B90114(&qword_1EB1F05C0, type metadata accessor for ImageTranslationAlignmentObservation);
  a1[3] = sub_1A5B90114(&qword_1EB1F05C8, type metadata accessor for ImageTranslationAlignmentObservation);
  result = sub_1A5B90114(&qword_1EB1F0598, type metadata accessor for ImageTranslationAlignmentObservation);
  a1[4] = result;
  return result;
}

void sub_1A5B903DC()
{
  type metadata accessor for CGAffineTransform(319);
  if (v0 <= 0x3F)
  {
    sub_1A5FD367C();
    if (v1 <= 0x3F)
    {
      sub_1A5B0AD5C();
      if (v2 <= 0x3F)
      {
        sub_1A5B2F560(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A5B904D0()
{
  result = qword_1EB212BE0[0];
  if (!qword_1EB212BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB212BE0);
  }

  return result;
}

unint64_t sub_1A5B90528()
{
  result = qword_1EB212CF0;
  if (!qword_1EB212CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB212CF0);
  }

  return result;
}

unint64_t sub_1A5B90580()
{
  result = qword_1EB212CF8[0];
  if (!qword_1EB212CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB212CF8);
  }

  return result;
}

uint64_t sub_1A5B905D8@<X0>(void (**a1)(char *, char *, uint64_t)@<X0>, void (**a2)(char *, uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v63 = a1;
  v56 = a4;
  v66 = sub_1A5FD3A9C();
  v54 = *(v66 - 8);
  v6 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - v8;
  v60 = sub_1A5FD3ACC();
  v53 = *(v60 - 8);
  v10 = MEMORY[0x1EEE9AC00](v60);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v67 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - v19;
  type metadata accessor for ExecutionPlan();

  v22 = sub_1A5D57818(v21);
  v23 = *(v64 + 16);
  v64 += 16;
  v57 = v23;
  v23(v14, v63, a2);
  v61 = v14;
  sub_1A5FD3E7C();
  *&v59 = v15;
  v62 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = AssociatedTypeWitness;
  v68 = AssociatedConformanceWitness;
  while (1)
  {
    sub_1A5FD458C();
    if (!v80)
    {
      break;
    }

    sub_1A5B063D4(&v79, &v76);
    v25 = v77;
    v26 = v78;
    __swift_project_boxed_opaque_existential_1(&v76, v77);
    (*(v26 + 96))(v73, v25, v26);
    v27 = v74;
    sub_1A5B4F960(v73);
    if (!v27)
    {
      (*(*v22 + 112))(&v76);
    }

    __swift_destroy_boxed_opaque_existential_1(&v76);
  }

  v28 = *(v58 + 8);
  v58 += 8;
  v55 = v28;
  v28(v20, v69);
  v57(v61, v63, v62);
  sub_1A5FD3E7C();
  sub_1A5FD458C();
  if (!v80)
  {
LABEL_22:
    v52 = v55(v67, v69);
    (*(*v22 + 128))(v52);
  }

  v64 = v53 + 16;
  v63 = (v54 + 16);
  v62 = (v54 + 8);
  v61 = (v53 + 8);
  *&v29 = 136315138;
  v59 = v29;
  v30 = v60;
  while (1)
  {
    sub_1A5B063D4(&v79, &v76);
    v31 = sub_1A5C3A734();
    (*v64)(v12, v31, v30);
    v32 = sub_1A5C3A580();
    v33 = *v32;
    v34 = *(v32 + 16);
    sub_1A5B180A0(&v76, v73);
    sub_1A5FD3A8C();
    v35 = v12;
    v36 = sub_1A5FD3AAC();
    v37 = sub_1A5FD43AC();
    result = sub_1A5FD452C();
    if (result)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
LABEL_20:
    v48 = v66;
    (*v63)(v65, v9, v66);
    sub_1A5FD3B0C();
    swift_allocObject();
    v49 = sub_1A5FD3AFC();
    (*v62)(v9, v48);
    v12 = v35;
    (*v61)(v35, v30);
    v50 = v77;
    v51 = v78;
    __swift_project_boxed_opaque_existential_1(&v76, v77);
    (*(v51 + 96))(&v71, v50, v51);
    if (v72)
    {
      sub_1A5B063D4(&v71, v73);
      (*(*v22 + 120))(v73, &v76);
      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    else
    {
      sub_1A5B4F960(&v71);
    }

    sub_1A5B90EC8(v49, &v76);

    __swift_destroy_boxed_opaque_existential_1(&v76);
    sub_1A5FD458C();
    if (!v80)
    {
      goto LABEL_22;
    }
  }

  if (v34)
  {
    if (v33 >> 32)
    {
      goto LABEL_23;
    }

    if ((v33 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_25;
    }

    if (v33 >> 16 > 0x10)
    {
      goto LABEL_24;
    }

    v33 = &v70 + 2;
    goto LABEL_19;
  }

  if (v33)
  {
LABEL_19:
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v71 = v40;
    *v39 = v59;
    v41 = v74;
    v42 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(*(v42 + 8) + 56))(&v70, v41);
    sub_1A5B54E3C();
    v43 = sub_1A5FD4ACC();
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_1(v73);
    v46 = sub_1A5B4D654(v43, v45, &v71);

    *(v39 + 4) = v46;
    v47 = sub_1A5FD3A7C();
    _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v36, v37, v47, v33, "perform request: %s)", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1AC558440](v40, -1, -1);
    MEMORY[0x1AC558440](v39, -1, -1);

    v30 = v60;
    goto LABEL_20;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1A5B90EC8(uint64_t a1, uint64_t a2)
{
  v42 = sub_1A5FD3ADC();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5FD3A9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5FD3ACC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5C3A734();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_1A5C3A580();
  v44 = *v13;
  v14 = *(v13 + 16);
  sub_1A5B180A0(a2, v48);
  v15 = sub_1A5FD3AAC();
  sub_1A5FD3AEC();
  v41 = sub_1A5FD439C();
  result = sub_1A5FD452C();
  if ((result & 1) == 0)
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v38 = v4;
  v39 = v8;
  if (v14)
  {
    v17 = v43;
    if (!(v44 >> 32))
    {
      if ((v44 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v44 >> 16 <= 0x10)
      {
        v18 = v15;
        v19 = v7;
        v44 = &v47;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v43;
  if (!v44)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v15;
  v19 = v7;
LABEL_10:

  sub_1A5FD3B1C();

  v20 = v40;
  v21 = v42;
  v22 = v5;
  v23 = v9;
  if ((*(v40 + 88))(v17, v42) == *MEMORY[0x1E69E93E8])
  {
    v24 = 0;
    v25 = 0;
    v26 = "[Error] Interval already ended";
  }

  else
  {
    (*(v20 + 8))(v17, v21);
    v26 = "perform request: %s)";
    v25 = 2;
    v24 = 1;
  }

  v27 = v11;
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v46 = v29;
  *v28 = v25;
  *(v28 + 1) = v24;
  *(v28 + 2) = 2080;
  v31 = v49;
  v30 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  (*(*(v30 + 8) + 56))(v45, v31);
  sub_1A5B54E3C();
  v32 = sub_1A5FD4ACC();
  v34 = v33;
  __swift_destroy_boxed_opaque_existential_1(v48);
  v35 = sub_1A5B4D654(v32, v34, &v46);

  *(v28 + 4) = v35;
  v36 = sub_1A5FD3A7C();
  _os_signpost_emit_with_name_impl(&dword_1A5AFB000, v18, v41, v36, v44, v26, v28, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v29);
  MEMORY[0x1AC558440](v29, -1, -1);
  MEMORY[0x1AC558440](v28, -1, -1);

  (*(v22 + 8))(v19, v38);
  return (*(v23 + 8))(v27, v39);
}

unint64_t sub_1A5B913AC(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v42 = sub_1A5FD3B5C();
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = v2;
  v8 = (*(*(a2 + 16) + 48))(0, a1);
  v9 = sub_1A5FD3D5C();
  v11 = v10;
  v12 = (*(a2 + 40))(a1, a2);
  v46 = MEMORY[0x1E69E6158];
  *&v45 = v12;
  *(&v45 + 1) = v13;
  sub_1A5B101C8(&v45, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v8;
  sub_1A5B0E9AC(v44, v9, v11, isUniquelyReferenced_nonNull_native);

  v15 = v43;
  v16 = objc_opt_self();
  sub_1A5B37FAC(v15);
  v17 = sub_1A5FD3BDC();

  *&v45 = 0;
  v18 = [(VNTrackerManager *)v16 trackerClassForOptions:v17 error:&v45];

  v19 = v45;
  if (!v18)
  {
    goto LABEL_15;
  }

  swift_getObjCClassMetadata();
  sub_1A5B37FAC(v15);
  v20 = sub_1A5FD3BDC();

  *&v45 = 0;
  v21 = [swift_getObjCClassFromMetadata() supportedComputeDevicesForOptions:v20 error:&v45];

  v22 = v45;
  if (!v21)
  {
    v19 = v45;
LABEL_15:
    v34 = v19;
    v35 = sub_1A5FD348C();

    swift_willThrow();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A5FF36F0;
    *(inited + 32) = 0;
    v26 = inited + 32;
    *(inited + 40) = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F0140);
  v23 = sub_1A5FD3F4C();
  v24 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F05E0);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1A5FF36F0;
  *(v25 + 32) = 0;
  v26 = v25 + 32;
  if (v23 >> 62)
  {
    v38 = v25;
    v27 = sub_1A5FD484C();
    v25 = v38;
    if (v27)
    {
      goto LABEL_5;
    }

LABEL_18:
    inited = v25;

    *(inited + 40) = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_18;
  }

LABEL_5:
  v39 = v26;
  v40 = v25;
  v41 = v15;
  *&v45 = MEMORY[0x1E69E7CC0];
  sub_1A5B53F20(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
    __break(1u);
  }

  v28 = 0;
  v29 = v45;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1AC554EE0](v28, v23);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_1A5FD3B4C();
    *&v45 = v29;
    v31 = *(v29 + 16);
    v30 = *(v29 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1A5B53F20(v30 > 1, v31 + 1, 1);
      v29 = v45;
    }

    ++v28;
    *(v29 + 16) = v31 + 1;
    (*(v5 + 32))(v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31, v7, v42);
  }

  while (v27 != v28);

  v32 = v40;
  *(v40 + 40) = v29;
  inited = v32;
  v26 = v39;
LABEL_16:
  v36 = sub_1A5B54118(inited);
  swift_setDeallocating();
  sub_1A5B5420C(v26);
  return v36;
}

uint64_t sub_1A5B918A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = *MEMORY[0x1E69E9840];
  result = (*(a5 + 16))(a4, a5);
  if (result)
  {
    return result;
  }

  if (sub_1A5FD3D5C() == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = sub_1A5FD4B0C();

    if ((v13 & 1) == 0)
    {
      if (sub_1A5FD3D5C() == a2 && v14 == a3)
      {
      }

      else
      {
        v16 = sub_1A5FD4B0C();

        if ((v16 & 1) == 0)
        {
          sub_1A5B16774();
          swift_allocError();
          *v17 = 0xD000000000000015;
          *(v17 + 8) = 0x80000001A6054FC0;
          *(v17 + 16) = 0;
          *(v17 + 20) = 6;
          return swift_willThrow();
        }
      }

      sub_1A5B37FAC(a1);
      v18 = VNRectangleTracker;
      goto LABEL_15;
    }
  }

  sub_1A5B37FAC(a1);
  v18 = VNObjectTrackerRevision2;
LABEL_15:
  v19 = objc_allocWithZone(v18);
  v20 = sub_1A5FD3BDC();

  v26[0] = 0;
  v21 = [v19 initWithOptions:v20 error:v26];

  if (!v21)
  {
    v25 = v26[0];
    sub_1A5FD348C();

    return swift_willThrow();
  }

  v22 = v26[0];
  v23 = *(a5 + 24);
  v24 = v21;
  v23(v21, a4, a5);
  return v24;
}

uint64_t sub_1A5B91B40(uint64_t a1)
{
  v2 = sub_1A5B91E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B91B7C(uint64_t a1)
{
  v2 = sub_1A5B91E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5B91BB8(uint64_t a1)
{
  v2 = sub_1A5B91E5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B91BF4(uint64_t a1)
{
  v2 = sub_1A5B91E5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectAnimalBodyPoseRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0618);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0620);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B91E08();
  sub_1A5FD4CDC();
  sub_1A5B91E5C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5B91E08()
{
  result = qword_1EB212DA0;
  if (!qword_1EB212DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB212DA0);
  }

  return result;
}

unint64_t sub_1A5B91E5C()
{
  result = qword_1EB212DA8[0];
  if (!qword_1EB212DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB212DA8);
  }

  return result;
}

uint64_t DetectAnimalBodyPoseRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectAnimalBodyPoseRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0628);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0630);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B91E08();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5B91E5C();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for DetectAnimalBodyPoseRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5B92228(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0618);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0620);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B91E08();
  sub_1A5FD4CDC();
  sub_1A5B91E5C();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t DetectAnimalBodyPoseRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v8);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 1 && (sub_1A5B928EC(), result = sub_1A5D4E900(), (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    a2[2].n128_u64[0] = v5;
  }

  return result;
}

__n128 DetectAnimalBodyPoseRequest.regionOfInterest.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 DetectAnimalBodyPoseRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A5B924DC()
{
  sub_1A5B928EC();
  result = sub_1A5D4EB30();
  qword_1EB212D88 = result;
  return result;
}

uint64_t DetectAnimalBodyPoseRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5B928EC();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectAnimalBodyPoseRequest, v3);
}

uint64_t sub_1A5B92594()
{
  sub_1A5B928EC();
  result = sub_1A5D4EC2C();
  qword_1EB212D98 = result;
  return result;
}

uint64_t static DetectAnimalBodyPoseRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v8.origin = *a1;
  v8.size = v4;
  v5 = *(a2 + 16);
  v7.origin = *a2;
  v7.size = v5;
  if (!static NormalizedRect.== infix(_:_:)(&v8, &v7))
  {
    return 0;
  }

  return sub_1A5B0D3C4(v2, v3);
}

uint64_t DetectAnimalBodyPoseRequest.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v3);
}

uint64_t DetectAnimalBodyPoseRequest.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1A5FD4C1C();
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  sub_1A5B0ED0C(v3, v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B92758(uint64_t a1)
{
  v2 = sub_1A5B92DD8();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5B92794(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5B928EC();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5B927F4(uint64_t a1)
{
  v2 = sub_1A5B5EE30();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5B92858(uint64_t a1, uint64_t a2)
{
  sub_1A5B5EE30();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5B928EC()
{
  result = qword_1EB1F0638;
  if (!qword_1EB1F0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0638);
  }

  return result;
}

unint64_t sub_1A5B92944()
{
  result = qword_1EB1F0640;
  if (!qword_1EB1F0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0640);
  }

  return result;
}

unint64_t sub_1A5B92998(uint64_t a1)
{
  result = sub_1A5B5EE30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B929C0(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B67204();
  result = sub_1A5B929F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5B929F0()
{
  result = qword_1EB1F0648;
  if (!qword_1EB1F0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0648);
  }

  return result;
}

unint64_t sub_1A5B92A48()
{
  result = qword_1EB1F0650;
  if (!qword_1EB1F0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0650);
  }

  return result;
}

unint64_t sub_1A5B92AA0()
{
  result = qword_1EB1F0658;
  if (!qword_1EB1F0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0658);
  }

  return result;
}

unint64_t sub_1A5B92B3C(uint64_t a1)
{
  result = sub_1A5B928EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B92B64(uint64_t a1)
{
  result = sub_1A5B92B8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B92B8C()
{
  result = qword_1EB1F0668;
  if (!qword_1EB1F0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0668);
  }

  return result;
}

unint64_t sub_1A5B92C24()
{
  result = qword_1EB213630[0];
  if (!qword_1EB213630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB213630);
  }

  return result;
}

unint64_t sub_1A5B92C7C()
{
  result = qword_1EB213740;
  if (!qword_1EB213740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB213740);
  }

  return result;
}

unint64_t sub_1A5B92CD4()
{
  result = qword_1EB213748[0];
  if (!qword_1EB213748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB213748);
  }

  return result;
}

unint64_t sub_1A5B92D2C()
{
  result = qword_1EB2137D0;
  if (!qword_1EB2137D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2137D0);
  }

  return result;
}

unint64_t sub_1A5B92D84()
{
  result = qword_1EB2137D8[0];
  if (!qword_1EB2137D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2137D8);
  }

  return result;
}

unint64_t sub_1A5B92DD8()
{
  result = qword_1EB1F0670;
  if (!qword_1EB1F0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0670);
  }

  return result;
}

uint64_t sub_1A5B92E2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5B92EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697369766572 && a2 == 0xE900000000000033)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A5FD4B0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A5B92F38(uint64_t a1)
{
  v2 = sub_1A5B93200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B92F74(uint64_t a1)
{
  v2 = sub_1A5B93200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5B92FB0(uint64_t a1)
{
  v2 = sub_1A5B93254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B92FEC(uint64_t a1)
{
  v2 = sub_1A5B93254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectFaceCaptureQualityRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0678);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0680);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B93200();
  sub_1A5FD4CDC();
  sub_1A5B93254();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5B93200()
{
  result = qword_1EB213880;
  if (!qword_1EB213880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB213880);
  }

  return result;
}

unint64_t sub_1A5B93254()
{
  result = qword_1EB213888[0];
  if (!qword_1EB213888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB213888);
  }

  return result;
}

uint64_t DetectFaceCaptureQualityRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t DetectFaceCaptureQualityRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0688);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0690);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B93200();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5B93254();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for DetectFaceCaptureQualityRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5B93620(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0678);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0680);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B93200();
  sub_1A5FD4CDC();
  sub_1A5B93254();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t DetectFaceCaptureQualityRequest.init(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static NormalizedRect.fullImage.getter(v7);
  result = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  v5 = result;
  if (v3 == 1 && (sub_1A5B94014(), result = sub_1A5D4E900(), (v6 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = v7[0];
    *(a2 + 24) = v7[1];
    *(a2 + 40) = v5;
  }

  return result;
}

uint64_t DetectFaceCaptureQualityRequest.inputFaceObservations.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 DetectFaceCaptureQualityRequest.regionOfInterest.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 DetectFaceCaptureQualityRequest.regionOfInterest.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  return result;
}

uint64_t sub_1A5B93930()
{
  sub_1A5B94014();
  result = sub_1A5D4EB30();
  qword_1EB213868 = result;
  return result;
}

uint64_t DetectFaceCaptureQualityRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v5 = *a2;
  v3 = sub_1A5B94014();
  return sub_1A5D4EFE0(a1, &v5, &type metadata for DetectFaceCaptureQualityRequest, v3);
}

uint64_t sub_1A5B939E8()
{
  sub_1A5B94014();
  result = sub_1A5D4EC2C();
  qword_1EB213878 = result;
  return result;
}

uint64_t DetectFaceCaptureQualityRequest.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for FaceObservation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 1);
  v14 = *(v1 + 3);
  v15 = v8;
  v9 = v1[5];
  if (v7)
  {
    sub_1A5FD4C3C();
    MEMORY[0x1AC555420](*(v7 + 16));
    v10 = *(v7 + 16);
    if (v10)
    {
      v11 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v12 = *(v4 + 72);
      do
      {
        sub_1A5B0F60C(v11, v6);
        sub_1A5B102F8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
        sub_1A5FD3CBC();
        sub_1A5B0F670(v6);
        v11 += v12;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_1A5FD4C3C();
  }

  v16 = v15;
  v17 = v14;
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  MEMORY[0x1AC555420](0);
  return sub_1A5B0ED0C(a1, v9);
}

uint64_t DetectFaceCaptureQualityRequest.hashValue.getter()
{
  v1 = v0[5];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 3);
  v7 = v1;
  sub_1A5FD4C1C();
  DetectFaceCaptureQualityRequest.hash(into:)(v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B93C70(uint64_t a1)
{
  v2 = sub_1A5B944B8();

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5B93CAC(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5B94014();
  return sub_1A5D4EFE0(a1, &v7, a3, v5);
}

uint64_t sub_1A5B93D0C(uint64_t a1)
{
  v2 = sub_1A5B5ECB4();

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5B93D48()
{
  v1 = v0[5];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 3);
  v7 = v1;
  sub_1A5FD4C1C();
  DetectFaceCaptureQualityRequest.hash(into:)(v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B93DB0()
{
  v1 = v0[5];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 3);
  v7 = v1;
  sub_1A5FD4C1C();
  DetectFaceCaptureQualityRequest.hash(into:)(v3);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B93E10@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = 0;
    v4 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v8 = 6;
    DetectFaceRectanglesRequest.init(_:)(&v8, &v9);
    v6 = *(v1 + 8);
    v10 = *(v1 + 24);
    v9 = v6;
    v4 = sub_1A5B0F5B8();
    result = swift_allocObject();
    v7 = v10;
    *(result + 16) = v9;
    *(result + 32) = v7;
    *(result + 48) = v11;
    *(result + 64) = v12;
    v3 = &type metadata for DetectFaceRectanglesRequest;
  }

  a1[3] = v3;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A5B93EE8(uint64_t a1, uint64_t a2)
{
  sub_1A5B5ECB4();

  return sub_1A5D4E6C8(a1, a2);
}

unint64_t sub_1A5B93F38(uint64_t a1)
{
  result = VNFaceObservation.faceCaptureQuality.getter();
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 72;
    sub_1A5CE1BBC(&v6, &v7, *&result);
    v3 = v7;
    v4 = v8;
    result = type metadata accessor for FaceObservation(0);
    v5 = a1 + *(result + 32);
    *(v5 + 4) = v4;
    *v5 = v3;
  }

  return result;
}

unint64_t sub_1A5B94014()
{
  result = qword_1EB1F0698;
  if (!qword_1EB1F0698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0698);
  }

  return result;
}

unint64_t sub_1A5B94068()
{
  result = qword_1EB1F06A0;
  if (!qword_1EB1F06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F06A0);
  }

  return result;
}

unint64_t sub_1A5B940C0(uint64_t a1)
{
  result = sub_1A5B5ECB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B940E8(uint64_t a1)
{
  *(a1 + 8) = sub_1A5B67060();
  result = sub_1A5B94118();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5B94118()
{
  result = qword_1EB1F06A8;
  if (!qword_1EB1F06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F06A8);
  }

  return result;
}

unint64_t sub_1A5B94170()
{
  result = qword_1EB1F06B0;
  if (!qword_1EB1F06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F06B0);
  }

  return result;
}

unint64_t sub_1A5B941C8()
{
  result = qword_1EB1F06B8;
  if (!qword_1EB1F06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F06B8);
  }

  return result;
}

unint64_t sub_1A5B9421C(uint64_t a1)
{
  result = sub_1A5B94014();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B94244(uint64_t a1)
{
  result = sub_1A5B9426C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B9426C()
{
  result = qword_1EB1F06C0;
  if (!qword_1EB1F06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F06C0);
  }

  return result;
}

unint64_t sub_1A5B94304()
{
  result = qword_1EB214110[0];
  if (!qword_1EB214110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB214110);
  }

  return result;
}

unint64_t sub_1A5B9435C()
{
  result = qword_1EB214220;
  if (!qword_1EB214220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB214220);
  }

  return result;
}

unint64_t sub_1A5B943B4()
{
  result = qword_1EB214228[0];
  if (!qword_1EB214228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB214228);
  }

  return result;
}

unint64_t sub_1A5B9440C()
{
  result = qword_1EB2142B0;
  if (!qword_1EB2142B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2142B0);
  }

  return result;
}

unint64_t sub_1A5B94464()
{
  result = qword_1EB2142B8[0];
  if (!qword_1EB2142B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2142B8);
  }

  return result;
}

unint64_t sub_1A5B944B8()
{
  result = qword_1EB1F06C8;
  if (!qword_1EB1F06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F06C8);
  }

  return result;
}

uint64_t sub_1A5B94524(uint64_t a1)
{
  v2 = sub_1A5B947EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B94560(uint64_t a1)
{
  v2 = sub_1A5B947EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5B9459C(uint64_t a1)
{
  v2 = sub_1A5B94840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B945D8(uint64_t a1)
{
  v2 = sub_1A5B94840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackOpticalFlowRequest.Revision.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F06D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F06D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B947EC();
  sub_1A5FD4CDC();
  sub_1A5B94840();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A5B947EC()
{
  result = qword_1EB214360;
  if (!qword_1EB214360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB214360);
  }

  return result;
}

unint64_t sub_1A5B94840()
{
  result = qword_1EB214368;
  if (!qword_1EB214368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB214368);
  }

  return result;
}

uint64_t TrackOpticalFlowRequest.Revision.hashValue.getter()
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](0);
  return sub_1A5FD4C6C();
}

uint64_t TrackOpticalFlowRequest.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F06E0);
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F06E8);
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B947EC();
  sub_1A5FD4CCC();
  if (!v1)
  {
    v9 = v16;
    v15 = v6;
    if (*(sub_1A5FD49BC() + 16) == 1)
    {
      sub_1A5B94840();
      sub_1A5FD48CC();
      v10 = v15;
      (*(v9 + 8))(v5, v3);
    }

    else
    {
      v11 = sub_1A5FD471C();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v13 = &type metadata for TrackOpticalFlowRequest.Revision;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6AF8], v11);
      swift_willThrow();
      v10 = v15;
    }

    (*(v10 + 8))(v8, v17);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5B94C0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F06D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F06D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B947EC();
  sub_1A5FD4CDC();
  sub_1A5B94840();
  sub_1A5FD49EC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TrackOpticalFlowRequest.__allocating_init(_:frameAnalysisSpacing:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  TrackOpticalFlowRequest.init(_:frameAnalysisSpacing:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

uint64_t TrackOpticalFlowRequest.init(_:frameAnalysisSpacing:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  LOBYTE(v23[0]) = 2;
  DWORD1(v23[0]) = 843264102;
  static NormalizedRect.fullImage.getter((v23 + 8));
  BYTE8(v24) = 0;
  v25 = sub_1A5B0F390(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F06F0);
  v11 = swift_allocObject();
  *(v11 + 72) = 0;
  v12 = v23[1];
  *(v11 + 16) = v23[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v24;
  *(v11 + 64) = v25;
  *(v5 + 40) = v11;
  type metadata accessor for TrackOpticalFlowRequest.State(0);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_previousResult;
  v15 = type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer(0);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  v16 = v13 + OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_lastAnalyzedTimeStamp;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *v16 = 0;
  *(v16 + 24) = 1;
  v17 = OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_lastResult;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F06F8);
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0700);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v13;
  *(v5 + 48) = v19;
  sub_1A5FD366C();
  if (v10 == 1 && (sub_1A5B9963C(&qword_1EB1F0708, type metadata accessor for TrackOpticalFlowRequest), result = sub_1A5D4E900(), (v22 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    if (a5)
    {
      a2 = *MEMORY[0x1E6960CC0];
      LODWORD(a3) = *(MEMORY[0x1E6960CC0] + 8);
      LODWORD(v21) = *(MEMORY[0x1E6960CC0] + 12);
      a4 = *(MEMORY[0x1E6960CC0] + 16);
    }

    else
    {
      v21 = HIDWORD(a3);
    }

    *(v5 + 16) = a2;
    *(v5 + 24) = a3;
    *(v5 + 28) = v21;
    *(v5 + 32) = a4;
    return v5;
  }

  return result;
}

uint64_t sub_1A5B950F8()
{
  v1 = 7827308;
  v2 = 1751607656;
  if (*v0 != 2)
  {
    v2 = 0x6867694879726576;
  }

  if (*v0)
  {
    v1 = 0x6D756964656DLL;
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

uint64_t sub_1A5B95160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5B99710(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5B95188(uint64_t a1)
{
  v2 = sub_1A5B99498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B951C4(uint64_t a1)
{
  v2 = sub_1A5B99498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5B95200(uint64_t a1)
{
  v2 = sub_1A5B99540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B9523C(uint64_t a1)
{
  v2 = sub_1A5B99540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5B95278(uint64_t a1)
{
  v2 = sub_1A5B995E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B952B4(uint64_t a1)
{
  v2 = sub_1A5B995E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5B952F0(uint64_t a1)
{
  v2 = sub_1A5B99594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B9532C(uint64_t a1)
{
  v2 = sub_1A5B99594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5B95368(uint64_t a1)
{
  v2 = sub_1A5B994EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B953A4(uint64_t a1)
{
  v2 = sub_1A5B994EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrackOpticalFlowRequest.ComputationAccuracy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0710);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0718);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0720);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0728);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0730);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B99498();
  sub_1A5FD4CDC();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1A5B99540();
      v18 = v27;
      sub_1A5FD49EC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1A5B994EC();
      v18 = v30;
      sub_1A5FD49EC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1A5B99594();
    v18 = v24;
    sub_1A5FD49EC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1A5B995E8();
  sub_1A5FD49EC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t TrackOpticalFlowRequest.ComputationAccuracy.hashValue.getter()
{
  v1 = *v0;
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](v1);
  return sub_1A5FD4C6C();
}

uint64_t TrackOpticalFlowRequest.ComputationAccuracy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0738);
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0740);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0748);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0750);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0758);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A5B99498();
  v17 = v48;
  sub_1A5FD4CCC();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_1A5FD49BC();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_1A5FD471C();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0050);
      *v27 = &type metadata for TrackOpticalFlowRequest.ComputationAccuracy;
      sub_1A5FD48DC();
      sub_1A5FD470C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_1A5B99594();
          v32 = v37;
          sub_1A5FD48CC();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_1A5B995E8();
          v28 = v37;
          sub_1A5FD48CC();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_1A5B99540();
        v31 = v37;
        sub_1A5FD48CC();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_1A5B994EC();
        v33 = v37;
        sub_1A5FD48CC();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

void TrackOpticalFlowRequest.computationAccuracy.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 72));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 72));
}

void sub_1A5B95FA4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 72));
  *a2 = v4;
}

void sub_1A5B95FEC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 40);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 72));
}

void TrackOpticalFlowRequest.computationAccuracy.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 72));
}

void (*TrackOpticalFlowRequest.computationAccuracy.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 40);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 72));
  *(a1 + 8) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 72));
  return sub_1A5B960E0;
}

void sub_1A5B960E0(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 18);
  LOBYTE(v1[4]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 18);
}

uint64_t TrackOpticalFlowRequest.outputPixelFormatType.getter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1 + 18);
  os_unfair_lock_opaque = v1[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 18);
  return os_unfair_lock_opaque;
}

void sub_1A5B96168(uint64_t a1@<X0>, uint32_t *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock(v3 + 18);
  os_unfair_lock_opaque = v3[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 18);
  *a2 = os_unfair_lock_opaque;
}

void sub_1A5B961B0(uint32_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 40);
  os_unfair_lock_lock(v3 + 18);
  v3[5]._os_unfair_lock_opaque = v2;

  os_unfair_lock_unlock(v3 + 18);
}

void TrackOpticalFlowRequest.outputPixelFormatType.setter(uint32_t a1)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock(v3 + 18);
  v3[5]._os_unfair_lock_opaque = a1;

  os_unfair_lock_unlock(v3 + 18);
}

void (*TrackOpticalFlowRequest.outputPixelFormatType.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 40);
  *a1 = v3;
  os_unfair_lock_lock(v3 + 18);
  os_unfair_lock_opaque = v3[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v3 + 18);
  *(a1 + 8) = os_unfair_lock_opaque;
  return sub_1A5B962A0;
}

void sub_1A5B962A0(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  os_unfair_lock_lock(*a1 + 18);
  v1[5]._os_unfair_lock_opaque = v2;

  os_unfair_lock_unlock(v1 + 18);
}

void TrackOpticalFlowRequest.regionOfInterest.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 72));
}

__n128 sub_1A5B9633C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 72));
  v5 = *(v3 + 40);
  v6 = *(v3 + 24);
  os_unfair_lock_unlock((v3 + 72));
  result = v6;
  *a2 = v6;
  a2[1] = v5;
  return result;
}

void sub_1A5B96390(__int128 *a1, uint64_t a2)
{
  v3 = *(*a2 + 40);
  os_unfair_lock_lock((v3 + 72));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void TrackOpticalFlowRequest.regionOfInterest.setter(__int128 *a1)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 72));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void (*TrackOpticalFlowRequest.regionOfInterest.modify(uint64_t *a1))(__int128 **a1)
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
  v5 = *(v1 + 40);
  *(v3 + 32) = v5;
  os_unfair_lock_lock((v5 + 72));
  v6 = *(v5 + 40);
  *v4 = *(v5 + 24);
  v4[1] = v6;
  os_unfair_lock_unlock((v5 + 72));
  return sub_1A5B964BC;
}

void sub_1A5B964BC(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = (*a1)[1];
  v4 = **a1;
  os_unfair_lock_lock((v2 + 72));
  *(v2 + 40) = v3;
  *(v2 + 24) = v4;
  os_unfair_lock_unlock((v2 + 72));

  free(v1);
}

uint64_t TrackOpticalFlowRequest.setComputeDevice(_:for:)(uint64_t a1, char *a2)
{
  v4 = *v2;
  v7 = *a2;
  v5 = sub_1A5B9963C(&qword_1EB1F0760, type metadata accessor for TrackOpticalFlowRequest);
  return sub_1A5B175A0(a1, &v7, v4, v5);
}

uint64_t sub_1A5B9663C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t *a3)
{
  v5 = type metadata accessor for TrackOpticalFlowRequest(0);
  v6 = sub_1A5B9963C(&qword_1EB1F0708, type metadata accessor for TrackOpticalFlowRequest);
  result = a2(v5, v6);
  *a3 = result;
  return result;
}

uint64_t TrackOpticalFlowRequest.keepNetworkOutput.getter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 56);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void sub_1A5B96718(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 72));
  *a2 = v4;
}

void sub_1A5B96760(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 40);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 56) = v2;

  os_unfair_lock_unlock((v3 + 72));
}

void TrackOpticalFlowRequest.keepNetworkOutput.setter(char a1)
{
  v3 = *(v1 + 40);
  os_unfair_lock_lock((v3 + 72));
  *(v3 + 56) = a1;

  os_unfair_lock_unlock((v3 + 72));
}

void (*TrackOpticalFlowRequest.keepNetworkOutput.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 40);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 56);
  os_unfair_lock_unlock((v3 + 72));
  *(a1 + 8) = v4;
  return sub_1A5B96850;
}

void sub_1A5B96850(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 18);
  LOBYTE(v1[14]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 18);
}

uint64_t sub_1A5B96894()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_previousResult;
  v2 = type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_lastAnalyzedTimeStamp;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_lastResult;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F06F8);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  return v0;
}

uint64_t sub_1A5B96A24()
{
  v1 = v0 + OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_lastAnalyzedTimeStamp;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A5B96A74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_lastAnalyzedTimeStamp;
  result = swift_beginAccess();
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4 & 1;
  return result;
}

uint64_t sub_1A5B96B64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1A5B31A34(v3 + v6, a3, a2);
}

uint64_t sub_1A5B96BEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  sub_1A5B88C44(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t sub_1A5B96CC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0768);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return (*(*v0 + 112))(v3);
}

uint64_t sub_1A5B96D94()
{
  sub_1A5B10168(v0 + OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_previousResult, &qword_1EB1F0768);
  sub_1A5B10168(v0 + OBJC_IVAR____TtCC6Vision23TrackOpticalFlowRequest5State_lastResult, &qword_1EB1F0770);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1A5B96E70(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 168))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5B96F64(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B17040;
}

id sub_1A5B96FF4(uint64_t a1, double *a2, uint64_t a3)
{
  v48 = a3;
  v51[4] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0768);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v46 - v7);
  v9 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v46 - v13;
  v14 = sub_1A5FD3D5C();
  v16 = v15;
  v17 = (*(*a2 + 192))();
  if (!*(v17 + 16))
  {

    goto LABEL_13;
  }

  v49 = v3;
  v18 = sub_1A5B0E2A4(v14, v16);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1A5B101D8(*(v17 + 56) + 32 * v18, v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0800);
  v21 = swift_dynamicCast();
  if ((v21 & 1) == 0)
  {
    return (*(*a1 + 176))(v21);
  }

  v22 = v50;
  if (v50 >> 62)
  {
    if (sub_1A5FD484C())
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    return (*(*a1 + 176))(v21);
  }

LABEL_6:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1AC554EE0](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v23 = *(v22 + 32);
  }

  v24 = v23;

  sub_1A5B9A704(v48, v11, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() == 31)
  {

    v25 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690) + 48)];
    v26 = v47;
    sub_1A5B99684(v25, v47);
    v28 = a2[5];
    v27 = a2[6];
    v30 = a2[7];
    v29 = a2[8];
    v31 = objc_allocWithZone(VNImageSignature);
    v32 = v24;
    v33 = v31;
    v51[0] = 0;
    v34 = v32;
    v35 = [v33 initWithImageBuffer:v34 regionOfInterest:v51 error:{v28, v27, v30, v29}];
    if (v35)
    {
      v36 = v35;
      v37 = v51[0];

      v38 = [v34 aspectForRegionOfInterest_] == 1;
      v39 = type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer(0);
      sub_1A5B31A34(v26, v8 + *(v39 + 28), &qword_1EB1EF7D8);
      *v8 = v28;
      v8[1] = v27;
      v8[2] = v30;
      v8[3] = v29;
      *(v8 + 4) = v34;
      *(v8 + 5) = v36;
      *(v8 + *(v39 + 32)) = v38;
      (*(*(v39 - 8) + 56))(v8, 0, 1, v39);
      v40 = *(*a1 + 112);
      v41 = v34;
      v42 = v36;
      v40(v8);

      return sub_1A5B10168(v26, &qword_1EB1EF7D8);
    }

    else
    {
      v44 = v51[0];
      v45 = sub_1A5FD348C();

      swift_willThrow();
      result = [v34 aspectForRegionOfInterest_];
      __break(1u);
    }
  }

  else
  {

    return sub_1A5B9A76C(v11, type metadata accessor for VisionResult);
  }

  return result;
}

uint64_t TrackOpticalFlowRequest.deinit()
{

  v1 = OBJC_IVAR____TtC6Vision23TrackOpticalFlowRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TrackOpticalFlowRequest.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC6Vision23TrackOpticalFlowRequest_uuid;
  v2 = sub_1A5FD367C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TrackOpticalFlowRequest.hashValue.getter()
{
  sub_1A5FD4C1C();
  sub_1A5B9963C(&qword_1EB1F0778, type metadata accessor for TrackOpticalFlowRequest);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

void sub_1A5B976F4(_OWORD *a1@<X8>)
{
  v3 = *(*v1 + 40);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v4;

  os_unfair_lock_unlock((v3 + 72));
}

void sub_1A5B97744(__int128 *a1)
{
  v3 = *(*v1 + 40);
  os_unfair_lock_lock((v3 + 72));
  v4 = *a1;
  *(v3 + 40) = a1[1];
  *(v3 + 24) = v4;

  os_unfair_lock_unlock((v3 + 72));
}

uint64_t (*sub_1A5B97794(uint64_t **a1))()
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
  v2[4] = TrackOpticalFlowRequest.regionOfInterest.modify(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5B97808(uint64_t a1)
{
  v2 = sub_1A5B9963C(&qword_1EB1F0788, type metadata accessor for TrackOpticalFlowRequest);

  return sub_1A5BDA2B4(a1, v2);
}

uint64_t sub_1A5B97874(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = *a2;
  v5 = sub_1A5B9963C(&qword_1EB1F0760, type metadata accessor for TrackOpticalFlowRequest);
  return sub_1A5B175A0(a1, &v7, a3, v5);
}

uint64_t sub_1A5B97908(uint64_t a1)
{
  v2 = sub_1A5B9963C(&qword_1EB1EF7D0, type metadata accessor for TrackOpticalFlowRequest);

  return VisionRequest.description.getter(a1, v2);
}

uint64_t sub_1A5B97974(uint64_t a1, uint64_t a2)
{
  sub_1A5B9963C(&qword_1EB1F07B8, type metadata accessor for TrackOpticalFlowRequest);

  return StatefulRequest.hash(into:)(a1, a2);
}

uint64_t sub_1A5B979F0(uint64_t a1, uint64_t a2)
{
  sub_1A5B9963C(&qword_1EB1F07B8, type metadata accessor for TrackOpticalFlowRequest);

  return static StatefulRequest.== infix(_:_:)(a1, a2, v2);
}

uint64_t sub_1A5B97A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B9A704(a1, v8, type metadata accessor for VisionResult);
  if (swift_getEnumCaseMultiPayload() == 31)
  {

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690);
    return sub_1A5B99684(&v8[*(v9 + 48)], a2);
  }

  else
  {
    sub_1A5B9A76C(v8, type metadata accessor for VisionResult);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1A5FD46AC();

    strcpy(v17, "VisionResult ");
    HIWORD(v17[1]) = -4864;
    sub_1A5B9963C(&qword_1EB1F0080, type metadata accessor for VisionResult);
    v11 = sub_1A5FD4ACC();
    MEMORY[0x1AC554600](v11);

    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A6052BC0);
    v16[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0780);
    v12 = sub_1A5FD3D7C();
    MEMORY[0x1AC554600](v12);

    v13 = v17[0];
    v14 = v17[1];
    sub_1A5B16774();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    *(v15 + 20) = 1;
    return swift_willThrow();
  }
}

uint64_t (*sub_1A5B97CA8(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 40);
  a1[1] = v3;
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 64);

  os_unfair_lock_unlock((v3 + 72));
  *a1 = v4;
  return sub_1A5B8DC34;
}

uint64_t sub_1A5B97D14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Vision23TrackOpticalFlowRequest_uuid;
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A5B97DA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690) + 48);
  *a2 = v2;
  sub_1A5B31A34(a1, a2 + v5, &qword_1EB1EF7D8);
  type metadata accessor for VisionResult(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A5B97E34()
{
  v1 = *(*v0 + 40);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 64);

  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

uint64_t sub_1A5B97E78()
{
  v1 = *(*v0 + 40);
  os_unfair_lock_lock(v1 + 18);
  sub_1A5B8EC68(&v1[4]);
  os_unfair_lock_unlock(v1 + 18);
}

uint64_t (*sub_1A5B97EDC(void *a1))()
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
  v2[4] = sub_1A5B97CA8(v2);
  return sub_1A5B17040;
}

uint64_t sub_1A5B97FF0@<X0>(uint64_t *a1@<X8>)
{
  v4 = 0;
  v2 = swift_allocObject();
  result = TrackOpticalFlowRequest.init(_:frameAnalysisSpacing:)(&v4, 0, 0, 0, 1);
  *a1 = v2;
  return result;
}

unint64_t sub_1A5B9804C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  *&v24 = v1;
  v5 = sub_1A5B9963C(&qword_1EB1F0788, type metadata accessor for TrackOpticalFlowRequest);
  v6 = sub_1A5BDA35C(a1, v4, v5);
  v7 = sub_1A5FD3D5C();
  v9 = v8;
  v10 = v2[5];
  os_unfair_lock_lock((v10 + 72));
  v11 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 72));
  v25 = MEMORY[0x1E69E6810];
  *&v24 = v11;
  sub_1A5B101C8(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v23, v7, v9, isUniquelyReferenced_nonNull_native);

  v13 = v6;
  v14 = sub_1A5FD3D5C();
  v16 = v15;
  os_unfair_lock_lock((v10 + 72));
  LODWORD(v6) = *(v10 + 20);
  os_unfair_lock_unlock((v10 + 72));
  v25 = MEMORY[0x1E69E7668];
  LODWORD(v24) = v6;
  sub_1A5B101C8(&v24, v23);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v23, v14, v16, v17);

  v18 = sub_1A5FD3D5C();
  v20 = v19;
  os_unfair_lock_lock((v10 + 72));
  LOBYTE(v6) = *(v10 + 56);
  os_unfair_lock_unlock((v10 + 72));
  v25 = MEMORY[0x1E69E6370];
  LOBYTE(v24) = v6;
  sub_1A5B101C8(&v24, v23);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A5B0E9AC(v23, v18, v20, v21);

  return v13;
}

void sub_1A5B9826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = a1;
  v117 = a3;
  v118 = a4;
  v125 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v115 = &v104 - v6;
  v7 = type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer(0);
  v116 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v104 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0768);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v104 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v104 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v104 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v104 - v27;
  v29 = v120;
  v30 = (*(**(a2 + 16) + 120))(v26);
  if (v29)
  {
    return;
  }

  v31 = v30;
  v108 = v28;
  v109 = v25;
  v110 = v22;
  v107 = v19;
  v111 = v10;
  v105 = v16;
  v120 = v7;
  v113 = v12;
  v112 = 0;
  v32 = *(v117 + 40);
  os_unfair_lock_lock((v32 + 72));
  v33 = *(v32 + 24);
  v34 = *(v32 + 32);
  v35 = *(v32 + 40);
  v36 = *(v32 + 48);
  os_unfair_lock_unlock((v32 + 72));
  v37 = objc_allocWithZone(VNImageSignature);
  *&v123 = 0;
  v38 = v31;
  v39 = [v37 initWithImageBuffer:v38 regionOfInterest:&v123 error:{v33, v34, v35, v36}];
  if (!v39)
  {
    v57 = v123;
    sub_1A5FD348C();

    swift_willThrow();
    return;
  }

  v106 = v39;
  v40 = v123;

  os_unfair_lock_lock((v32 + 72));
  v41 = *(v32 + 24);
  v42 = *(v32 + 32);
  v43 = *(v32 + 40);
  v44 = *(v32 + 48);
  os_unfair_lock_unlock((v32 + 72));
  v45 = [v38 aspectForRegionOfInterest_];
  v46 = sub_1A5FD3D5C();
  v48 = v47;
  *(&v124 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v123) = v45 == 1;
  v49 = (*(*v118 + 184))(v122);
  sub_1A5B0DE30(&v123, v46, v48);
  v50 = v49(v122, 0);
  v51 = v119;
  v52 = *(*v119 + 104);
  v53 = v108;
  v114 = *v119 + 104;
  (v52)(v50);
  v54 = v116[6];
  v55 = v120;
  if (v54(v53, 1, v120))
  {
    v56 = sub_1A5B10168(v53, &qword_1EB1F0768);
LABEL_7:
    (*(*v51 + 176))(v56);
    goto LABEL_8;
  }

  v58 = v45 == 1;
  v59 = v113;
  sub_1A5B9A704(v53, v113, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
  sub_1A5B10168(v53, &qword_1EB1F0768);
  v60 = *(v59 + *(v55 + 32));
  v56 = sub_1A5B9A76C(v59, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
  v61 = v60 == v58;
  v51 = v119;
  v55 = v120;
  if (!v61)
  {
    goto LABEL_7;
  }

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30B0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1A5FF3930;
  *(v62 + 32) = v38;
  v121 = v62;
  v116 = v38;
  v63 = v109;
  v52();
  if (v54(v63, 1, v55))
  {
    sub_1A5B10168(v63, &qword_1EB1F0768);
  }

  else
  {
    v64 = v113;
    sub_1A5B9A704(v63, v113, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
    sub_1A5B10168(v63, &qword_1EB1F0768);
    v65 = *(v64 + 32);
    sub_1A5B9A76C(v64, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
    v66 = v65;
    MEMORY[0x1AC554720]();
    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A5FD3F7C();
    }

    sub_1A5FD3FBC();

    v62 = v121;
  }

  v67 = sub_1A5FD3D5C();
  v69 = v68;
  *(&v124 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0800);
  *&v123 = v62;
  v70 = *(*v118 + 208);
  v71 = *v118 + 208;

  v109 = v70;
  v108 = v71;
  v72 = v70(v122);
  sub_1A5B0DE30(&v123, v67, v69);
  v73 = v72(v122, 0);
  v74 = v110;
  v75 = v52;
  (v52)(v73);
  if (v54(v74, 1, v120))
  {
    sub_1A5B10168(v74, &qword_1EB1F0768);
    v76 = 0;
  }

  else
  {
    v77 = v113;
    sub_1A5B9A704(v74, v113, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
    sub_1A5B10168(v74, &qword_1EB1F0768);
    v78 = *(v77 + 40);
    sub_1A5B9A76C(v77, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
    *&v123 = v78;
    sub_1A5B16F58(0, &qword_1EB1F07E8);
    v76 = sub_1A5FD4AFC();
  }

  v79 = v106;
  v80 = v111;
  v81 = [v106 isEqual_];
  v82 = swift_unknownObjectRelease();
  if (!v81)
  {

    goto LABEL_20;
  }

  v83 = v107;
  (v75)(v82);
  v84 = v120;
  if (v54(v83, 1, v120))
  {

    sub_1A5B10168(v83, &qword_1EB1F0768);
LABEL_20:

    return;
  }

  sub_1A5B9A704(v83, v80, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
  sub_1A5B10168(v83, &qword_1EB1F0768);
  v85 = v115;
  sub_1A5B31A34(v80 + *(v84 + 28), v115, &qword_1EB1EF7D8);
  sub_1A5B9A76C(v80, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
  v86 = type metadata accessor for OpticalFlowObservation();
  if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
  {

    sub_1A5B10168(v85, &qword_1EB1EF7D8);
    goto LABEL_20;
  }

  v87 = *(v85 + *(v86 + 32));
  sub_1A5B9A76C(v85, type metadata accessor for OpticalFlowObservation);
  *&v123 = v117;
  v88 = type metadata accessor for TrackOpticalFlowRequest(0);
  v89 = sub_1A5B9963C(&qword_1EB1F0788, type metadata accessor for TrackOpticalFlowRequest);
  v90 = sub_1A5BD9FC4(v88, v89);
  if (v90)
  {
    v91 = v90;

    v92 = [objc_allocWithZone(VNOpticalFlowObservation) initWithOriginatingRequestSpecifier:v91 featureName:0 CVPixelBuffer:v87];

    v93 = v120;
    if (v92)
    {
      v94 = v92;
      v95 = v105;
      v75();
      if (v54(v95, 1, v93))
      {
        sub_1A5B10168(v95, &qword_1EB1F0768);
        v96 = 0;
      }

      else
      {
        v100 = v113;
        sub_1A5B9A704(v95, v113, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
        sub_1A5B10168(v95, &qword_1EB1F0768);
        v96 = *(v100 + 40);
        sub_1A5B9A76C(v100, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
      }

      [v94 setTargetImageSignature_];

      v97 = sub_1A5FD3D5C();
      v99 = v101;
      *(&v124 + 1) = sub_1A5B16F58(0, &qword_1EB1F0808);
      *&v123 = v94;
    }

    else
    {
      v97 = sub_1A5FD3D5C();
      v99 = v98;
      v123 = 0u;
      v124 = 0u;
    }

    v102 = v92;
    v103 = v109(v122);
    sub_1A5B0DE30(&v123, v97, v99);
    v103(v122, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A5B98F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[2] = a2;
  v8[3] = v5;
  v8[4] = a1;
  v6 = sub_1A5B9963C(&qword_1EB1F0760, type metadata accessor for TrackOpticalFlowRequest);
  return sub_1A5B17D94(sub_1A5B9A84C, v8, a3, MEMORY[0x1E69E7CA8] + 8, v6, MEMORY[0x1E69E7CA8]);
}

uint64_t sub_1A5B98FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = a1;
  v6[2] = a2;
  v4 = sub_1A5B9963C(&qword_1EB1F0760, type metadata accessor for TrackOpticalFlowRequest);
  return sub_1A5B17D94(sub_1A5B9A86C, v6, a3, MEMORY[0x1E69E7CA8] + 8, v4, MEMORY[0x1E69E7CA8]);
}

uint64_t sub_1A5B99098(CGRect *a1, CGRect *a2)
{
  v4 = type metadata accessor for OpticalFlowObservation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDB0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (!CGRectEqualToRect(*a1, *a2))
  {
    goto LABEL_10;
  }

  sub_1A5B16F58(0, &qword_1EB1EEFF0);
  if ((sub_1A5FD449C() & 1) == 0 || (sub_1A5FD449C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 48);
  sub_1A5B31A34(a1 + v14, v13, &qword_1EB1EF7D8);
  v16 = a2 + v14;
  v17 = v15;
  sub_1A5B31A34(v16, &v13[v15], &qword_1EB1EF7D8);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1A5B10168(v13, &qword_1EB1EF7D8);
LABEL_13:
      v19 = *(&a1->origin.x + *(v23 + 32)) ^ *(&a2->origin.x + *(v23 + 32)) ^ 1;
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_1A5B31A34(v13, v10, &qword_1EB1EF7D8);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1A5B9A76C(v10, type metadata accessor for OpticalFlowObservation);
LABEL_9:
    sub_1A5B10168(v13, &qword_1EB1EFDB0);
    goto LABEL_10;
  }

  sub_1A5B9A7CC(&v13[v17], v7);
  sub_1A5B9963C(&qword_1EB1EFE10, type metadata accessor for OpticalFlowObservation);
  v21 = sub_1A5FD3D0C();
  sub_1A5B9A76C(v7, type metadata accessor for OpticalFlowObservation);
  sub_1A5B9A76C(v10, type metadata accessor for OpticalFlowObservation);
  sub_1A5B10168(v13, &qword_1EB1EF7D8);
  if (v21)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

unint64_t sub_1A5B99498()
{
  result = qword_1EB214370;
  if (!qword_1EB214370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB214370);
  }

  return result;
}

unint64_t sub_1A5B994EC()
{
  result = qword_1EB214378;
  if (!qword_1EB214378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB214378);
  }

  return result;
}

unint64_t sub_1A5B99540()
{
  result = qword_1EB214380;
  if (!qword_1EB214380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB214380);
  }

  return result;
}

unint64_t sub_1A5B99594()
{
  result = qword_1EB214388;
  if (!qword_1EB214388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB214388);
  }

  return result;
}

unint64_t sub_1A5B995E8()
{
  result = qword_1EB214390[0];
  if (!qword_1EB214390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB214390);
  }

  return result;
}

uint64_t sub_1A5B9963C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5B99684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5B99710(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867694879726576 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1A5B99890()
{
  result = qword_1EB1F0790;
  if (!qword_1EB1F0790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0790);
  }

  return result;
}

unint64_t sub_1A5B998EC()
{
  result = qword_1EB1F0798;
  if (!qword_1EB1F0798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F07A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F0798);
  }

  return result;
}

unint64_t sub_1A5B99954()
{
  result = qword_1EB1F07A8;
  if (!qword_1EB1F07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F07A8);
  }

  return result;
}

uint64_t sub_1A5B999A8(uint64_t a1)
{
  result = sub_1A5B9963C(&qword_1EB1EF7D0, type metadata accessor for TrackOpticalFlowRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A5B99AD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_1A5B9963C(a4, type metadata accessor for TrackOpticalFlowRequest);
  result = sub_1A5B9963C(a6, type metadata accessor for TrackOpticalFlowRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A5B99B48()
{
  result = qword_1EB1F07C0;
  if (!qword_1EB1F07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F07C0);
  }

  return result;
}

uint64_t sub_1A5B99BE4(uint64_t a1)
{
  result = sub_1A5B9963C(&qword_1EB1F0708, type metadata accessor for TrackOpticalFlowRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B99C3C(uint64_t a1)
{
  result = sub_1A5B99C64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A5B99C64()
{
  result = qword_1EB1F07D0;
  if (!qword_1EB1F07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F07D0);
  }

  return result;
}

uint64_t sub_1A5B99CC0()
{
  result = sub_1A5FD367C();
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

void sub_1A5B99DE0()
{
  sub_1A5B9A068(319, &qword_1EB1F07D8, type metadata accessor for TrackOpticalFlowRequest.State.ProcessedBuffer);
  if (v0 <= 0x3F)
  {
    sub_1A5B99ED0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A5B99ED0()
{
  if (!qword_1EB1F07E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F06F8);
    v0 = sub_1A5FD456C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1F07E0);
    }
  }
}

void sub_1A5B99F5C()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1A5B16F58(319, &qword_1EB1EEB60);
    if (v1 <= 0x3F)
    {
      sub_1A5B16F58(319, &qword_1EB1F07E8);
      if (v2 <= 0x3F)
      {
        sub_1A5B9A068(319, &qword_1EB1F07F0, type metadata accessor for OpticalFlowObservation);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A5B9A068(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5FD456C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A5B9A0C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5B9A0E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1A5B9A188()
{
  result = qword_1EB2150D0[0];
  if (!qword_1EB2150D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2150D0);
  }

  return result;
}

unint64_t sub_1A5B9A1E0()
{
  result = qword_1EB2156E0[0];
  if (!qword_1EB2156E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2156E0);
  }

  return result;
}

unint64_t sub_1A5B9A238()
{
  result = qword_1EB2157F0;
  if (!qword_1EB2157F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2157F0);
  }

  return result;
}

unint64_t sub_1A5B9A290()
{
  result = qword_1EB2157F8[0];
  if (!qword_1EB2157F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2157F8);
  }

  return result;
}

unint64_t sub_1A5B9A2E8()
{
  result = qword_1EB215880;
  if (!qword_1EB215880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB215880);
  }

  return result;
}

unint64_t sub_1A5B9A340()
{
  result = qword_1EB215888[0];
  if (!qword_1EB215888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB215888);
  }

  return result;
}

unint64_t sub_1A5B9A398()
{
  result = qword_1EB215910;
  if (!qword_1EB215910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB215910);
  }

  return result;
}

unint64_t sub_1A5B9A3F0()
{
  result = qword_1EB215918[0];
  if (!qword_1EB215918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB215918);
  }

  return result;
}

unint64_t sub_1A5B9A448()
{
  result = qword_1EB2159A0;
  if (!qword_1EB2159A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2159A0);
  }

  return result;
}

unint64_t sub_1A5B9A4A0()
{
  result = qword_1EB2159A8[0];
  if (!qword_1EB2159A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2159A8);
  }

  return result;
}

unint64_t sub_1A5B9A4F8()
{
  result = qword_1EB215A30;
  if (!qword_1EB215A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB215A30);
  }

  return result;
}

unint64_t sub_1A5B9A550()
{
  result = qword_1EB215A38[0];
  if (!qword_1EB215A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB215A38);
  }

  return result;
}

unint64_t sub_1A5B9A5A8()
{
  result = qword_1EB215AC0;
  if (!qword_1EB215AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB215AC0);
  }

  return result;
}

unint64_t sub_1A5B9A600()
{
  result = qword_1EB215AC8[0];
  if (!qword_1EB215AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB215AC8);
  }

  return result;
}

unint64_t sub_1A5B9A658()
{
  result = qword_1EB215B50;
  if (!qword_1EB215B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB215B50);
  }

  return result;
}

unint64_t sub_1A5B9A6B0()
{
  result = qword_1EB215B58[0];
  if (!qword_1EB215B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB215B58);
  }

  return result;
}

uint64_t sub_1A5B9A704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5B9A76C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5B9A7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpticalFlowObservation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A5B9A884(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ImageSource();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A5B13DC8(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v13 = *v5;

    v7 = sub_1A5FD433C();
    v8 = v14;
    v9 = v15;
    v10 = sub_1A5FD434C();
    v11 = v16;
    v12 = v17;
  }

  else
  {
    sub_1A5B13E2C(v5);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = EnumCaseMultiPayload != 2;
}

uint64_t type metadata accessor for ImageSource()
{
  result = qword_1EB215BE0;
  if (!qword_1EB215BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A5B9A9EC()
{
  sub_1A5FD353C();
  if (v0 <= 0x3F)
  {
    sub_1A5B9AADC(319, &qword_1EB1F0818, type metadata accessor for CVBuffer);
    if (v1 <= 0x3F)
    {
      sub_1A5B9AADC(319, &qword_1EB1F0828, type metadata accessor for CMSampleBuffer);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGImage(319);
        if (v3 <= 0x3F)
        {
          sub_1A5B9AB88();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A5B9AADC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1F0820);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A5B9AB88()
{
  result = qword_1EB1F0830;
  if (!qword_1EB1F0830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1F0830);
  }

  return result;
}

uint64_t ImageAestheticsScoresObservation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImageAestheticsScoresObservation() + 24);
  v4 = sub_1A5FD367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ImageAestheticsScoresObservation()
{
  result = qword_1EB215F80;
  if (!qword_1EB215F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ImageAestheticsScoresObservation.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImageAestheticsScoresObservation() + 32);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t ImageAestheticsScoresObservation.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD00000000000002FLL, 0x80000001A6055060);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0x6C6974557369202CLL, 0xED0000203A797469);
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1AC554600](v1, v2);

  MEMORY[0x1AC554600](8236, 0xE200000000000000);
  v3 = type metadata accessor for ImageAestheticsScoresObservation();
  v4 = sub_1A5B9C93C(&qword_1EB1F0848, type metadata accessor for ImageAestheticsScoresObservation);
  v5 = sub_1A5C29408(v3, &off_1F1955C78, v4);
  MEMORY[0x1AC554600](v5);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0;
}

uint64_t ImageAestheticsScoresObservation.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ImageAestheticsScoresObservation();
  *a1 = *(v1 + *(result + 72));
  return result;
}

float sub_1A5B9B010@<S0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>, float a8@<S2>, float a9@<S3>, float a10@<S4>, float a11@<S5>, float a12@<S6>, float a13@<S7>, int a14, float a15, int a16)
{
  v26 = *a4;
  v27 = type metadata accessor for ImageAestheticsScoresObservation();
  v28 = v27[6];
  v29 = sub_1A5FD367C();
  (*(*(v29 - 8) + 32))(a5 + v28, a2, v29);
  *(a5 + v27[7]) = a16;
  v30 = a5 + v27[8];
  v31 = *(a3 + 16);
  *v30 = *a3;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a3 + 32);
  *(v30 + 48) = *(a3 + 48);
  *a5 = a1;
  *(a5 + 4) = a6;
  *(a5 + v27[9]) = a7;
  *(a5 + v27[10]) = a8;
  *(a5 + v27[11]) = a9;
  *(a5 + v27[12]) = a10;
  *(a5 + v27[13]) = a11;
  *(a5 + v27[14]) = a12;
  *(a5 + v27[15]) = a13;
  *(a5 + v27[16]) = a14;
  result = a15;
  *(a5 + v27[17]) = a15;
  *(a5 + v27[18]) = v26;
  return result;
}

uint64_t ImageAestheticsScoresObservation.hashValue.getter()
{
  sub_1A5FD4C1C();
  type metadata accessor for ImageAestheticsScoresObservation();
  sub_1A5B9C93C(&qword_1EB1F0850, type metadata accessor for ImageAestheticsScoresObservation);
  sub_1A5FD3CBC();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B9B21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5B9C93C(&qword_1EB1F0848, type metadata accessor for ImageAestheticsScoresObservation);

  return VisionObservation.hash(into:)(a1, a2, v4);
}

unint64_t sub_1A5B9B298(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x68536E6565726373;
    v7 = 0xD000000000000016;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000010;
    if (a1 != 7)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 == 6)
    {
      v8 = 0xD000000000000016;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746176726573626FLL;
    v2 = 0x6974656874736561;
    v3 = 0x536572756C696166;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x74696C6974557369;
    if (a1 != 1)
    {
      v4 = 0x536C6C617265766FLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A5B9B46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A5B9CD4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A5B9B4A0(uint64_t a1)
{
  v2 = sub_1A5B9C70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5B9B4DC(uint64_t a1)
{
  v2 = sub_1A5B9C70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageAestheticsScoresObservation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v15[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0858);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5B9C70C();
  sub_1A5FD4CDC();
  v15[1] = v2;
  v28 = 1;
  v11 = v16;
  sub_1A5FD4A2C();
  if (!v11)
  {
    v16 = v4;
    v27 = 2;
    sub_1A5FD4A3C();
    v13 = type metadata accessor for ImageAestheticsScoresObservation();
    v26 = 3;
    sub_1A5FD4A3C();
    v25 = 4;
    sub_1A5FD4A3C();
    v24 = 5;
    sub_1A5FD4A3C();
    v23 = 6;
    sub_1A5FD4A3C();
    v22 = 7;
    sub_1A5FD4A3C();
    v21 = 8;
    sub_1A5FD4A3C();
    v20 = 9;
    sub_1A5FD4A3C();
    v19 = 10;
    sub_1A5FD4A3C();
    v18 = 11;
    sub_1A5FD4A3C();
    v17 = 0;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v14 = sub_1A5B9C93C(&qword_1EB1F0848, type metadata accessor for ImageAestheticsScoresObservation);
    sub_1A5BBD46C(v6, v13, &off_1F1955C78, v14);
    (*(v15[0] + 8))(v6, v16);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t ImageAestheticsScoresObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v40 = sub_1A5FD367C();
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0860);
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ImageAestheticsScoresObservation();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A5B9C70C();
  v14 = v42;
  sub_1A5FD4CCC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v34 = v4;
  v35 = v6;
  v42 = v12;
  v15 = v41;
  LOBYTE(v47) = 1;
  v16 = sub_1A5FD494C();
  v17 = v42;
  *v42 = v16 & 1;
  LOBYTE(v47) = 2;
  sub_1A5FD495C();
  *(v17 + 1) = v18;
  LOBYTE(v47) = 3;
  sub_1A5FD495C();
  *&v17[v10[9]] = v19;
  LOBYTE(v47) = 4;
  sub_1A5FD495C();
  *&v17[v10[10]] = v20;
  LOBYTE(v47) = 5;
  sub_1A5FD495C();
  *&v17[v10[11]] = v21;
  LOBYTE(v47) = 6;
  sub_1A5FD495C();
  *&v17[v10[12]] = v22;
  LOBYTE(v47) = 7;
  sub_1A5FD495C();
  *&v17[v10[13]] = v23;
  LOBYTE(v47) = 8;
  sub_1A5FD495C();
  *&v17[v10[14]] = v24;
  LOBYTE(v47) = 9;
  sub_1A5FD495C();
  *&v17[v10[15]] = v25;
  LOBYTE(v47) = 10;
  sub_1A5FD495C();
  *&v42[v10[16]] = v26;
  LOBYTE(v47) = 11;
  sub_1A5FD495C();
  *&v42[v10[17]] = v27;
  LOBYTE(v47) = 0;
  sub_1A5B0A360();
  sub_1A5FD48CC();
  LOBYTE(v47) = 0;
  sub_1A5B9C93C(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
  sub_1A5FD497C();
  (*(v37 + 32))(&v42[v10[6]], v39, v40);
  LOBYTE(v47) = 1;
  sub_1A5FD495C();
  *&v42[v10[7]] = v28;
  v46 = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  *&v42[v10[18]] = v47;
  sub_1A5BBDB04(v44);
  (*(v38 + 8))(v35, v34);
  (*(v15 + 8))(v9, v7);
  v29 = v42;
  v30 = &v42[v10[8]];
  v31 = v44[1];
  *v30 = v44[0];
  *(v30 + 1) = v31;
  *(v30 + 2) = v44[2];
  v30[48] = v45;
  sub_1A5B9C760(v29, v36);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_1A5B9C7C4(v29);
}

float sub_1A5B9C068@<S0>(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = [a1 isUtility];
  [a1 overallScore];
  v36 = v9;
  [a1 aestheticScore];
  v35 = v10;
  [a1 failureScore];
  v34 = v11;
  [a1 junkNegativeScore];
  v13 = v12;
  [a1 junkTragicFailureScore];
  v15 = v14;
  [a1 poorQualityScore];
  v17 = v16;
  [a1 nonMemorableScore];
  v19 = v18;
  [a1 screenShotScore];
  v21 = v20;
  [a1 receiptOrDocumentScore];
  v23 = v22;
  [a1 textDocumentScore];
  v25 = v24;
  v26 = a1;
  v27 = [v26 uuid];
  v28 = type metadata accessor for ImageAestheticsScoresObservation();
  sub_1A5FD365C();

  [v26 confidence];
  v30 = v29;

  *(a4 + v28[7]) = v30;
  v31 = a4 + v28[8];
  v32 = *(a3 + 16);
  *v31 = *a3;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a3 + 32);
  *(v31 + 48) = *(a3 + 48);
  *a4 = v8;
  *(a4 + 4) = v36;
  *(a4 + v28[9]) = v35;
  result = v34;
  *(a4 + v28[10]) = v34;
  *(a4 + v28[11]) = v13;
  *(a4 + v28[12]) = v15;
  *(a4 + v28[13]) = v17;
  *(a4 + v28[14]) = v19;
  *(a4 + v28[15]) = v21;
  *(a4 + v28[16]) = v23;
  *(a4 + v28[17]) = v25;
  *(a4 + v28[18]) = v7;
  return result;
}

float ImageAestheticsScoresObservation.init(_:)@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  static NormalizedRect.fullImage.getter(v36);
  v4 = a1;
  [v4 timeRange];
  v5 = [v4 isUtility];
  [v4 overallScore];
  v31 = v6;
  [v4 aestheticScore];
  v30 = v7;
  [v4 failureScore];
  v29 = v8;
  [v4 junkNegativeScore];
  v10 = v9;
  [v4 junkTragicFailureScore];
  v12 = v11;
  [v4 poorQualityScore];
  v14 = v13;
  [v4 nonMemorableScore];
  v16 = v15;
  [v4 screenShotScore];
  v18 = v17;
  [v4 receiptOrDocumentScore];
  v20 = v19;
  [v4 textDocumentScore];
  v22 = v21;
  v23 = [v4 uuid];
  v24 = type metadata accessor for ImageAestheticsScoresObservation();
  sub_1A5FD365C();

  [v4 confidence];
  v26 = v25;

  *(a2 + v24[7]) = v26;
  v27 = a2 + v24[8];
  *v27 = v32;
  *(v27 + 16) = v33;
  *(v27 + 32) = v34;
  *(v27 + 40) = v35;
  *(v27 + 48) = 0;
  *a2 = v5;
  *(a2 + 4) = v31;
  *(a2 + v24[9]) = v30;
  result = v29;
  *(a2 + v24[10]) = v29;
  *(a2 + v24[11]) = v10;
  *(a2 + v24[12]) = v12;
  *(a2 + v24[13]) = v14;
  *(a2 + v24[14]) = v16;
  *(a2 + v24[15]) = v18;
  *(a2 + v24[16]) = v20;
  *(a2 + v24[17]) = v22;
  *(a2 + v24[18]) = -8;
  return result;
}

uint64_t _s6Vision32ImageAestheticsScoresObservationV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v5 = type metadata accessor for ImageAestheticsScoresObservation();
  if ((sub_1A5FD364C() & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v6 = v5[8];
  v7 = *(a1 + v6 + 48);
  v8 = a2 + v6;
  if ((v7 & 1) == 0)
  {
    if ((v8[48] & 1) != 0 || (sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    if (*(a1 + v5[9]) != *(a2 + v5[9]) || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]) || *(a1 + v5[12]) != *(a2 + v5[12]) || *(a1 + v5[13]) != *(a2 + v5[13]) || *(a1 + v5[14]) != *(a2 + v5[14]) || *(a1 + v5[15]) != *(a2 + v5[15]) || *(a1 + v5[16]) != *(a2 + v5[16]) || *(a1 + v5[17]) != *(a2 + v5[17]))
    {
      return 0;
    }

    v9 = v5[18];
    v10 = *(a1 + v9);
    v11 = *(a2 + v9);
    if (v10 <= 0xFFF7)
    {
      if (v11 > 0xFFF7)
      {
        return 0;
      }

      sub_1A5B0BB44();
      if ((sub_1A5FD3D0C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11 <= 0xFFF7)
    {
      return 0;
    }

    return 1;
  }

  if (v8[48])
  {
    goto LABEL_11;
  }

  return 0;
}

unint64_t sub_1A5B9C70C()
{
  result = qword_1EB215BF0[0];
  if (!qword_1EB215BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB215BF0);
  }

  return result;
}

uint64_t sub_1A5B9C760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAestheticsScoresObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5B9C7C4(uint64_t a1)
{
  v2 = type metadata accessor for ImageAestheticsScoresObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A5B9C820(void *a1)
{
  a1[1] = sub_1A5B9C93C(&qword_1EB1EFB40, type metadata accessor for ImageAestheticsScoresObservation);
  a1[2] = sub_1A5B9C93C(&qword_1EB1F0868, type metadata accessor for ImageAestheticsScoresObservation);
  a1[3] = sub_1A5B9C93C(&qword_1EB1F0870, type metadata accessor for ImageAestheticsScoresObservation);
  result = sub_1A5B9C93C(&qword_1EB1F0850, type metadata accessor for ImageAestheticsScoresObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5B9C93C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5B9C984(uint64_t a1)
{
  result = sub_1A5B9C93C(&qword_1EB1F0848, type metadata accessor for ImageAestheticsScoresObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5B9CA04()
{
  sub_1A5FD367C();
  if (v0 <= 0x3F)
  {
    sub_1A5B0AD5C();
    if (v1 <= 0x3F)
    {
      sub_1A5B1217C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ImageAestheticsScoresObservation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageAestheticsScoresObservation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A5B9CC48()
{
  result = qword_1EB216090[0];
  if (!qword_1EB216090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB216090);
  }

  return result;
}

unint64_t sub_1A5B9CCA0()
{
  result = qword_1EB2161A0;
  if (!qword_1EB2161A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2161A0);
  }

  return result;
}

unint64_t sub_1A5B9CCF8()
{
  result = qword_1EB2161A8[0];
  if (!qword_1EB2161A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2161A8);
  }

  return result;
}

uint64_t sub_1A5B9CD4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746176726573626FLL && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696C6974557369 && a2 == 0xE900000000000079 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536C6C617265766FLL && a2 == 0xEC00000065726F63 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974656874736561 && a2 == 0xEE0065726F635363 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x536572756C696166 && a2 == 0xEC00000065726F63 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A6055090 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A60550B0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A60550D0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A60550F0 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x68536E6565726373 && a2 == 0xEF65726F6353746FLL || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A6055110 == a2 || (sub_1A5FD4B0C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A6055130 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1A5FD4B0C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A5B9D184(int a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    v2 = SHIDWORD(a2) < a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = !v2;
  if (a2 <= a1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5B9D1A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 > 0xFFFFFFFFLL)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 | result | a3) < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a3 > 0xFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = (a2 << 8) | (result << 16) | a3;
  if ((result & 0x80000000) != 0)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A5B9D230()
{
  sub_1A5FD46AC();

  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0xD000000000000010, 0x80000001A6055170);
  if (*(v0 + 8))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1AC554600](v2, v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

unint64_t sub_1A5B9D348()
{
  sub_1A5FD46AC();

  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0xD000000000000010, 0x80000001A6055170);
  if (*(v0 + 8))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1AC554600](v2, v3);

  MEMORY[0x1AC554600](41, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t sub_1A5B9D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v8 = type metadata accessor for GazeState();
  v9 = *(a4 + 8);
  if ((sub_1A5FD3D0C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v8 + 44);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return MEMORY[0x1EEE69530](v11, v12, a3, v9);
}

uint64_t sub_1A5B9D52C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      sub_1A5BA11B8();
      v5 = a1 + 40;
      v6 = a2 + 40;
      do
      {
        v7 = sub_1A5FD3D0C();
        if ((v7 & 1) == 0)
        {
          break;
        }

        v5 += 12;
        v6 += 12;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1A5B9D608(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_1A5BA120C();
      v3 = 0;
      do
      {
        v4 = sub_1A5FD3D0C();
        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 32;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A5B9D6F4()
{
  MEMORY[0x1AC555420](*v0);
  v1 = v0[3];
  sub_1A5FD4C3C();
  sub_1A5BA1054();
  sub_1A5FD3CBC();
  v2 = *(v1 + 16);
  result = MEMORY[0x1AC555420](v2);
  if (v2)
  {
    v4 = v1 + 40;
    do
    {
      result = sub_1A5FD3CBC();
      v4 += 12;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1A5B9D7C8()
{
  MEMORY[0x1AC555420](*v0);
  v1 = v0[6];
  sub_1A5FD4C3C();
  sub_1A5BA0E78();
  sub_1A5FD3CBC();
  v2 = *(v1 + 16);
  result = MEMORY[0x1AC555420](v2);
  if (v2)
  {
    v4 = v1 + 48;
    do
    {
      v4 += 32;
      result = sub_1A5FD3CBC();
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1A5B9D8B0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1AC555420](*v2);
  sub_1A5FD4C3C();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1A5FD3CBC();
  v7 = *(v2 + *(a2 + 44));

  return MEMORY[0x1EEE69520](a1, v7, v5, v6);
}

uint64_t sub_1A5B9D93C(uint64_t a1)
{
  sub_1A5FD4C1C();
  sub_1A5B9D8B0(v3, a1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B9D98C(uint64_t a1, uint64_t a2)
{
  sub_1A5FD4C1C();
  sub_1A5B9D8B0(v4, a2);
  return sub_1A5FD4C6C();
}

double sub_1A5B9D9E0@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(type metadata accessor for SingleFaceTemporalGazeState(0) + 24);
  v7 = *a1;
  v9[1] = a1[1];
  v9[0] = v7;
  v10 = v5;
  *&result = sub_1A5D0DE6C(v2 + v6, v9, a2).n128_u64[0];
  return result;
}

uint64_t sub_1A5B9DA44(uint64_t a1)
{
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5B9D7C8();
  type metadata accessor for FaceObservation(0);
  sub_1A5BA05D8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
  sub_1A5FD3CBC();
  sub_1A5BA00F0(*(v1 + *(a1 + 28)), *(v1 + *(a1 + 28) + 8));
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B9DB2C(uint64_t a1, uint64_t a2)
{
  sub_1A5FD4C4C();
  sub_1A5B9D7C8();
  type metadata accessor for FaceObservation(0);
  sub_1A5BA05D8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
  sub_1A5FD3CBC();
  v4 = (v2 + *(a2 + 28));
  v5 = *v4;
  v6 = v4[1];

  return sub_1A5BA00F0(v5, v6);
}

uint64_t sub_1A5B9DC18(uint64_t a1, uint64_t a2)
{
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5B9D7C8();
  type metadata accessor for FaceObservation(0);
  sub_1A5BA05D8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
  sub_1A5FD3CBC();
  sub_1A5BA00F0(*(v2 + *(a2 + 28)), *(v2 + *(a2 + 28) + 8));
  return sub_1A5FD4C6C();
}

int64_t sub_1A5B9DD84()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  result = sub_1A5B9F744(sub_1A5BA0464, v0);
  v3 = *(*(v0 + v1) + 16);
  if (v3 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1A5BA076C(result, v3, &qword_1EB1F08D0, &unk_1A5FFF7D0, type metadata accessor for SingleFaceTemporalGazeState);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1A5B9DE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v40 = a2;
  v9 = type metadata accessor for FaceObservation(0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SingleFaceTemporalGazeState(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v37 - v15);
  v17 = *(*v4 + 120);
  swift_beginAccess();
  v41 = v4;
  v38 = v17;
  v18 = *(v4 + v17);
  v19 = *(v18 + 16);

  if (v19)
  {
    v20 = 0;
    while (v20 < *(v18 + 16))
    {
      sub_1A5BA048C(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v20, v16, type metadata accessor for SingleFaceTemporalGazeState);
      v5 = v16 + *(v11 + 24);
      v21 = *(v9 + 36);
      v45.origin.x = *(v5 + v21);
      v45.origin.y = *(v5 + v21 + 8);
      v22 = *(v5 + v21 + 16);
      v23 = *(v5 + v21 + 24);
      v45.size.width = v22;
      v45.size.height = v23;
      v46 = CGRectIntersection(v45, *(a1 + v21));
      if (v46.size.width * v46.size.height / (v22 * v23) >= 0.7)
      {

        v35 = *(v41 + *(*v41 + 112));
        sub_1A5BA0554(a1, v5);
        v36 = (v16 + *(v11 + 28));
        *v36 = a3;
        v36[1] = a4;
        *v16 = v35;
        return sub_1A5BA0858(v16, v40, type metadata accessor for SingleFaceTemporalGazeState);
      }

      ++v20;
      sub_1A5BA04F4(v16, type metadata accessor for SingleFaceTemporalGazeState);
      if (v19 == v20)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_6:

  v24 = v37;
  sub_1A5BA048C(a1, v37, type metadata accessor for FaceObservation);
  v25 = v40;
  a1 = v41;
  v26 = *(a1 + *(*a1 + 112));
  v27 = (v40 + *(v11 + 28));
  sub_1A5BA048C(v24, v40 + *(v11 + 24), type metadata accessor for FaceObservation);
  *v27 = a3;
  v27[1] = a4;
  *v25 = v26;
  sub_1A5D0BF4C(&v42);
  sub_1A5BA04F4(v24, type metadata accessor for FaceObservation);
  v28 = v43;
  v29 = v42;
  v30 = v44;
  *(v25 + 8) = 1;
  *(v25 + 16) = 0;
  *(v25 + 24) = v29;
  *(v25 + 32) = v28;
  *(v25 + 40) = v30;
  *(v25 + 56) = MEMORY[0x1E69E7CC0];
  v5 = v39;
  sub_1A5BA048C(v25, v39, type metadata accessor for SingleFaceTemporalGazeState);
  v11 = v38;
  swift_beginAccess();
  v16 = *(a1 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v11) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_12:
    v16 = sub_1A5B9FEF4(0, v16[2] + 1, 1, v16, &qword_1EB1F08D0, &unk_1A5FFF7D0, type metadata accessor for SingleFaceTemporalGazeState);
    *(a1 + v11) = v16;
  }

  v33 = v16[2];
  v32 = v16[3];
  if (v33 >= v32 >> 1)
  {
    v16 = sub_1A5B9FEF4(v32 > 1, v33 + 1, 1, v16, &qword_1EB1F08D0, &unk_1A5FFF7D0, type metadata accessor for SingleFaceTemporalGazeState);
  }

  v16[2] = v33 + 1;
  sub_1A5BA0858(v5, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33, type metadata accessor for SingleFaceTemporalGazeState);
  *(a1 + v11) = v16;
  return swift_endAccess();
}

uint64_t (*sub_1A5B9E33C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 168))();
  return sub_1A5B15448;
}

uint64_t (*sub_1A5B9E430(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B17040;
}

uint64_t sub_1A5B9E4F0(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 6);
  v7 = *(type metadata accessor for SingleFaceTemporalGazeScoresState(0) + 24);
  v9 = v4;
  v11 = v6;
  v10 = v5;
  return a2(v2 + v7, &v9);
}

uint64_t sub_1A5B9E564()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x646E49656D617266, 0xEB000000003A7865);
  v1 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v1);

  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A6055190);
  v2 = sub_1A5B9D230();
  MEMORY[0x1AC554600](v2);

  MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A60551B0);
  v3 = type metadata accessor for SingleFaceTemporalGazeScoresState(0);
  type metadata accessor for FaceObservation(0);
  sub_1A5BA05D8(&qword_1EB1F2DC0, type metadata accessor for FaceObservation);
  v4 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v4);

  MEMORY[0x1AC554600](0x536567616D69203BLL, 0xED0000203A657A69);
  v5 = (v0 + *(v3 + 28));
  v6 = *v5;
  v7 = v5[1];
  type metadata accessor for CGSize(0);
  sub_1A5FD481C();
  MEMORY[0x1AC554600](0x203A646975750A3BLL, 0xE800000000000000);
  sub_1A5FD367C();
  sub_1A5BA05D8(&qword_1EB1EE738, MEMORY[0x1E69695A8]);
  v8 = sub_1A5FD4ACC();
  MEMORY[0x1AC554600](v8);

  result = MEMORY[0x1AC554600](0xD00000000000001CLL, 0x80000001A60551D0);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 4294967300.0)
  {
    sub_1A5B433F0();
    sub_1A5B433D8(v10, v11, v12, v13, v6, v7);
    type metadata accessor for CGRect(0);
    sub_1A5FD481C();
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1A5B9E898(uint64_t a1)
{
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5B9D6F4();
  type metadata accessor for FaceObservation(0);
  sub_1A5BA05D8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
  sub_1A5FD3CBC();
  sub_1A5BA00F0(*(v1 + *(a1 + 28)), *(v1 + *(a1 + 28) + 8));
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B9E970(uint64_t a1, uint64_t a2)
{
  sub_1A5FD4C4C();
  sub_1A5B9D6F4();
  type metadata accessor for FaceObservation(0);
  sub_1A5BA05D8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
  sub_1A5FD3CBC();
  v4 = (v2 + *(a2 + 28));
  v5 = *v4;
  v6 = v4[1];

  return sub_1A5BA00F0(v5, v6);
}

uint64_t sub_1A5B9EA4C(uint64_t a1, uint64_t a2)
{
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5B9D6F4();
  type metadata accessor for FaceObservation(0);
  sub_1A5BA05D8(&qword_1EB1EE8C8, type metadata accessor for FaceObservation);
  sub_1A5FD3CBC();
  sub_1A5BA00F0(*(v2 + *(a2 + 28)), *(v2 + *(a2 + 28) + 8));
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5B9EB28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD4CAC();
  v4 = sub_1A5FD456C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A5B9EC04(uint64_t a1)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD4CAC();
  v4 = sub_1A5FD456C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1A5B9ED54(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5B9ED94(a1);
  return v2;
}

uint64_t *sub_1A5B9ED94(uint64_t a1)
{
  v3 = *v1;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = 0;
  *(v1 + 40) = 1;
  v4 = *(v3 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  v5 = sub_1A5FD4CAC();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = *(*v1 + 104);
  *(v1 + v6) = 0;
  *(v1 + *(*v1 + 112)) = 0;
  *(v1 + *(*v1 + 120)) = MEMORY[0x1E69E7CC0];
  *(v1 + v6) = a1;
  return v1;
}

void sub_1A5B9EEB4()
{
  v1 = *(*v0 + 112);
  v2 = *(v0 + v1);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4;
  }
}

int64_t sub_1A5B9EEE0()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  result = sub_1A5B9FAA4(sub_1A5BA1308, v0);
  v3 = *(*(v0 + v1) + 16);
  if (v3 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1A5BA076C(result, v3, &qword_1EB1F08C0, &unk_1A5FFF7C8, type metadata accessor for SingleFaceTemporalGazeScoresState);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1A5B9EFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v42 = a1;
  v38 = a2;
  v8 = type metadata accessor for FaceObservation(0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SingleFaceTemporalGazeScoresState(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v35 - v14);
  v16 = *(*v4 + 120);
  swift_beginAccess();
  v39 = v4;
  v36 = v16;
  v17 = *(v4 + v16);
  v18 = *(v17 + 16);

  if (v18)
  {
    v19 = 0;
    while (v19 < *(v17 + 16))
    {
      sub_1A5BA048C(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v15, type metadata accessor for SingleFaceTemporalGazeScoresState);
      v5 = v15 + *(v10 + 24);
      v20 = *(v8 + 36);
      v43.origin.x = *(v5 + v20);
      v43.origin.y = *(v5 + v20 + 8);
      v21 = *(v5 + v20 + 16);
      v22 = *(v5 + v20 + 24);
      v43.size.width = v21;
      v43.size.height = v22;
      v44 = CGRectIntersection(v43, *(v42 + v20));
      if (v44.size.width * v44.size.height / (v21 * v22) >= 0.7)
      {

        v33 = *(v39 + *(*v39 + 112));
        sub_1A5BA0554(v42, v5);
        v34 = (v15 + *(v10 + 28));
        *v34 = a3;
        v34[1] = a4;
        *v15 = v33;
        return sub_1A5BA0858(v15, v38, type metadata accessor for SingleFaceTemporalGazeScoresState);
      }

      ++v19;
      sub_1A5BA04F4(v15, type metadata accessor for SingleFaceTemporalGazeScoresState);
      if (v18 == v19)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_6:

  v23 = v35;
  sub_1A5BA048C(v42, v35, type metadata accessor for FaceObservation);
  v24 = v38;
  v19 = v39;
  v25 = *(v19 + *(*v19 + 112));
  v26 = (v38 + *(v10 + 28));
  sub_1A5BA048C(v23, v38 + *(v10 + 24), type metadata accessor for FaceObservation);
  *v26 = a3;
  v26[1] = a4;
  *v24 = v25;
  sub_1A5D237E0(&v40);
  sub_1A5BA04F4(v23, type metadata accessor for FaceObservation);
  v27 = v41;
  v28 = v40;
  *(v24 + 8) = 1;
  *(v24 + 16) = 0;
  *(v24 + 20) = v28;
  *(v24 + 28) = v27;
  *(v24 + 32) = MEMORY[0x1E69E7CC0];
  v5 = v37;
  sub_1A5BA048C(v24, v37, type metadata accessor for SingleFaceTemporalGazeScoresState);
  v10 = v36;
  swift_beginAccess();
  v15 = *(v19 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + v10) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_12:
    v15 = sub_1A5B9FEF4(0, v15[2] + 1, 1, v15, &qword_1EB1F08C0, &unk_1A5FFF7C8, type metadata accessor for SingleFaceTemporalGazeScoresState);
    *(v19 + v10) = v15;
  }

  v31 = v15[2];
  v30 = v15[3];
  if (v31 >= v30 >> 1)
  {
    v15 = sub_1A5B9FEF4(v30 > 1, v31 + 1, 1, v15, &qword_1EB1F08C0, &unk_1A5FFF7C8, type metadata accessor for SingleFaceTemporalGazeScoresState);
  }

  v15[2] = v31 + 1;
  sub_1A5BA0858(v5, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v31, type metadata accessor for SingleFaceTemporalGazeScoresState);
  *(v19 + v10) = v15;
  return swift_endAccess();
}

uint64_t sub_1A5B9F448()
{
  v1 = *(*v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB1F3E90);
  sub_1A5FD4CAC();
  v2 = sub_1A5FD456C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1A5B9F520()
{
  sub_1A5B9F448();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1A5B9F5C0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 168))();
  return sub_1A5B17040;
}

uint64_t (*sub_1A5B9F6B4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 144))();
  return sub_1A5B17040;
}

uint64_t sub_1A5B9F744(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for SingleFaceTemporalGazeState(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *v2;
  result = sub_1A5B9FE04(a1, a2, *v2, type metadata accessor for SingleFaceTemporalGazeState);
  if (!v3)
  {
    v40 = v15;
    v35 = v9;
    if (v18)
    {
      return v16[2];
    }

    v37 = a1;
    v38 = a2;
    v33 = v2;
    v41 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v16 + 2;
      v20 = v16[2];
      v22 = v40;
      if (v19 == v20)
      {
        return v41;
      }

      v36 = v7;
      v34 = v12;
      while (v19 < v20)
      {
        v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v42 = v16;
        v39 = v23;
        v24 = v16 + v23;
        v25 = *(v7 + 72);
        v26 = v25 * v19;
        sub_1A5BA048C(&v24[v25 * v19], v22, type metadata accessor for SingleFaceTemporalGazeState);
        v27 = v37(v22);
        result = sub_1A5BA04F4(v22, type metadata accessor for SingleFaceTemporalGazeState);
        if (v27)
        {
          v7 = v36;
          v22 = v40;
          v16 = v42;
        }

        else
        {
          v22 = v40;
          v28 = v41;
          if (v19 == v41)
          {
            v7 = v36;
            v16 = v42;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v29 = *v21;
            if (v41 >= *v21)
            {
              goto LABEL_25;
            }

            v30 = v25 * v41;
            result = sub_1A5BA048C(&v24[v25 * v41], v34, type metadata accessor for SingleFaceTemporalGazeState);
            if (v19 >= v29)
            {
              goto LABEL_26;
            }

            sub_1A5BA048C(&v24[v26], v35, type metadata accessor for SingleFaceTemporalGazeState);
            v16 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1A5BA0140(v16);
            }

            v31 = v16 + v39;
            result = sub_1A5BA1260(v35, v16 + v39 + v30, type metadata accessor for SingleFaceTemporalGazeState);
            if (v19 >= v16[2])
            {
              goto LABEL_27;
            }

            result = sub_1A5BA1260(v34, &v31[v26], type metadata accessor for SingleFaceTemporalGazeState);
            *v33 = v16;
            v7 = v36;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v19;
        v21 = v16 + 2;
        v20 = v16[2];
        if (v19 == v20)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5B9FAA4(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for SingleFaceTemporalGazeScoresState(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *v2;
  result = sub_1A5B9FE04(a1, a2, *v2, type metadata accessor for SingleFaceTemporalGazeScoresState);
  if (!v3)
  {
    v40 = v15;
    v35 = v9;
    if (v18)
    {
      return v16[2];
    }

    v37 = a1;
    v38 = a2;
    v33 = v2;
    v41 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v16 + 2;
      v20 = v16[2];
      v22 = v40;
      if (v19 == v20)
      {
        return v41;
      }

      v36 = v7;
      v34 = v12;
      while (v19 < v20)
      {
        v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v42 = v16;
        v39 = v23;
        v24 = v16 + v23;
        v25 = *(v7 + 72);
        v26 = v25 * v19;
        sub_1A5BA048C(&v24[v25 * v19], v22, type metadata accessor for SingleFaceTemporalGazeScoresState);
        v27 = v37(v22);
        result = sub_1A5BA04F4(v22, type metadata accessor for SingleFaceTemporalGazeScoresState);
        if (v27)
        {
          v7 = v36;
          v22 = v40;
          v16 = v42;
        }

        else
        {
          v22 = v40;
          v28 = v41;
          if (v19 == v41)
          {
            v7 = v36;
            v16 = v42;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v29 = *v21;
            if (v41 >= *v21)
            {
              goto LABEL_25;
            }

            v30 = v25 * v41;
            result = sub_1A5BA048C(&v24[v25 * v41], v34, type metadata accessor for SingleFaceTemporalGazeScoresState);
            if (v19 >= v29)
            {
              goto LABEL_26;
            }

            sub_1A5BA048C(&v24[v26], v35, type metadata accessor for SingleFaceTemporalGazeScoresState);
            v16 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1A5BA018C(v16);
            }

            v31 = v16 + v39;
            result = sub_1A5BA1260(v35, v16 + v39 + v30, type metadata accessor for SingleFaceTemporalGazeScoresState);
            if (v19 >= v16[2])
            {
              goto LABEL_27;
            }

            result = sub_1A5BA1260(v34, &v31[v26], type metadata accessor for SingleFaceTemporalGazeScoresState);
            *v33 = v16;
            v7 = v36;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v19;
        v21 = v16 + 2;
        v20 = v16[2];
        if (v19 == v20)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5B9FE04(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

size_t sub_1A5B9FEF4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

uint64_t sub_1A5BA00F0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1AC555450](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1AC555450](*&v3);
}

BOOL sub_1A5BA01D8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && (sub_1A5BA11B8(), (sub_1A5FD3D0C() & 1) != 0) && (sub_1A5B9D52C(v2, v3) & 1) != 0 && (v6 = type metadata accessor for SingleFaceTemporalGazeScoresState(0), (static FaceObservation.== infix(_:_:)(a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) != 0) && (v7 = *(v6 + 28), v8 = a1 + v7, v9 = *(a1 + v7), v10 = (a2 + v7), v9 == *v10))
  {
    return *(v8 + 8) == v10[1];
  }

  else
  {
    return 0;
  }
}

BOOL sub_1A5BA031C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  if (*(a1 + 8) == *(a2 + 8) && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && (sub_1A5BA120C(), (sub_1A5FD3D0C() & 1) != 0) && (sub_1A5B9D608(v2, v3) & 1) != 0 && (v6 = type metadata accessor for SingleFaceTemporalGazeState(0), (static FaceObservation.== infix(_:_:)(a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) != 0) && (v7 = *(v6 + 28), v8 = a1 + v7, v9 = *(a1 + v7), v10 = (a2 + v7), v9 == *v10))
  {
    return *(v8 + 8) == v10[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A5BA048C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5BA04F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A5BA0554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceObservation(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A5BA05D8(unint64_t *a1, void (*a2)(uint64_t))
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