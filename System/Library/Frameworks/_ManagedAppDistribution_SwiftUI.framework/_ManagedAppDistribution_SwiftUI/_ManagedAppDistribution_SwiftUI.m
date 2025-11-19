__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B775B18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B775B38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B775B80(uint64_t a1, int a2)
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

uint64_t sub_23B775BA0(uint64_t result, int a2, int a3)
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

uint64_t sub_23B775BE8(uint64_t a1, id *a2)
{
  result = sub_23B7BC7D0();
  *a2 = 0;
  return result;
}

uint64_t sub_23B775C60(uint64_t a1, id *a2)
{
  v3 = sub_23B7BC7E0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23B775CE0@<X0>(uint64_t *a1@<X8>)
{
  sub_23B7BC7F0();
  v2 = sub_23B7BC7C0();

  *a1 = v2;
  return result;
}

uint64_t sub_23B775D24()
{
  v0 = sub_23B7BC7F0();
  v1 = MEMORY[0x23EEA8B00](v0);

  return v1;
}

uint64_t sub_23B775D60()
{
  sub_23B7BC7F0();
  sub_23B7BC830();
}

uint64_t sub_23B775DB4()
{
  sub_23B7BC7F0();
  sub_23B7BCCD0();
  sub_23B7BC830();
  v0 = sub_23B7BCD10();

  return v0;
}

uint64_t sub_23B775E28()
{
  v0 = sub_23B7BC7F0();
  v2 = v1;
  if (v0 == sub_23B7BC7F0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23B7BCC70();
  }

  return v5 & 1;
}

uint64_t sub_23B775EB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23B7BC7C0();

  *a1 = v2;
  return result;
}

uint64_t sub_23B775EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BC7F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_23B775F4C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23B775F98(uint64_t a1)
{
  v2 = sub_23B776098(&qword_27E1808B8);
  v3 = sub_23B776098(&qword_27E1808C0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23B776098(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23B776118(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  *a2 = *a1;
  *(a2 + 8) = v3;

  *(a2 + 16) = sub_23B776798(10.0);
}

uint64_t sub_23B776164()
{
  sub_23B776230(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_23B7761E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBB80();
  *a1 = result;
  return result;
}

uint64_t sub_23B776230(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

__n128 sub_23B776248@<Q0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  if (v5 <= 1)
  {
    if (!*a1)
    {
      v6 = a3 * 28.0;
      v7 = a3 * 72.0;
      v8 = sub_23B7BC6A0();
      v10 = v9;
      v30 = xmmword_23B7BD9A0;
      v11 = 1;
      v12 = sub_23B7BC6A0();
      v14 = 0;
      v15 = 0;
      v16 = a3 * 28.0;
LABEL_9:
      v20 = 0;
      v18 = a3 + a3;
      v17 = a3 * 17.0;
      goto LABEL_10;
    }

    v14 = 0;
    v15 = *a1;
LABEL_8:
    v6 = a3 * 28.0;
    v7 = a3 * 74.0;
    v16 = a3 * 30.0;
    v8 = sub_23B7BC6B0();
    v10 = v21;
    v30 = xmmword_23B7BD9B0;
    v12 = sub_23B7BC6B0();
    v11 = 0;
    goto LABEL_9;
  }

  if (v5 != 2)
  {
    v15 = 0;
    v14 = 1;
    goto LABEL_8;
  }

  v17 = a3 * 21.0;
  v6 = a3 * 29.0;
  v7 = a3 * 64.0 + -24.0;
  v16 = a3 * 32.0 + -12.0;
  v18 = a3 * 3.0;
  v8 = sub_23B7BC6B0();
  v10 = v19;
  v30 = xmmword_23B7BD9B0;
  v20 = 1;
  v12 = sub_23B7BC6B0();
  v11 = 0;
  v15 = 0;
  v14 = 0;
LABEL_10:
  *a2 = v6;
  *(a2 + 8) = (v6 - v18) * 0.5;
  *(a2 + 16) = v6 * 0.5;
  *(a2 + 24) = v6 * 0.5;
  v22 = (v6 - (v18 + v18)) / 2.5;
  *(a2 + 32) = xmmword_23B7BD9C0;
  *(a2 + 48) = xmmword_23B7BD9D0;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 88) = v18;
  *(a2 + 96) = v22;
  v23 = v6 * 0.5 - v22 * 0.5;
  *(a2 + 104) = v22;
  *(a2 + 112) = v23;
  *(a2 + 120) = v23;
  __asm { FMOV            V0.2D, #1.0 }

  *(a2 + 128) = _Q0;
  *(a2 + 144) = v17;
  result = v30;
  *(a2 + 168) = v30;
  *(a2 + 152) = v30;
  *(a2 + 184) = v7;
  *(a2 + 192) = v16;
  *(a2 + 200) = v12;
  *(a2 + 208) = v13;
  *(a2 + 216) = v20;
  *(a2 + 217) = v11;
  *(a2 + 218) = v15;
  *(a2 + 219) = v14;
  *(a2 + 220) = v5;
  return result;
}

unint64_t sub_23B776464(uint64_t a1)
{
  sub_23B7BC7F0();
  sub_23B7BCCD0();
  sub_23B7BC830();
  v2 = sub_23B7BCD10();

  return sub_23B7764F8(a1, v2);
}

unint64_t sub_23B7764F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23B7BC7F0();
      v8 = v7;
      if (v6 == sub_23B7BC7F0() && v8 == v9)
      {
        break;
      }

      v11 = sub_23B7BCC70();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23B7765FC()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v6 = (*v0 + 16 * v1 + 32);
    v4 = *v6;
    v5 = v6[1];
    v0[1] = v1 + 1;
    v7 = v0[2];
    v9[0] = v4;
    v9[1] = v5;

    v7(&v8, v9);

    return v8;
  }

  return result;
}

unint64_t sub_23B776690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808E0);
    v3 = sub_23B7BCBB0();
    v4 = a1 + 32;

    while (1)
    {
      sub_23B776A5C(v4, &v11);
      v5 = v11;
      result = sub_23B776464(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23B776ACC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

double sub_23B776798(double a1)
{
  v2 = sub_23B7BC7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B7BD9E0;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D743F8];
  v7 = v4;
  v8 = [v5 systemFontOfSize:a1 weight:v6];
  *(inited + 64) = sub_23B776950();
  *(inited + 40) = v8;
  sub_23B776690(inited);
  swift_setDeallocating();
  sub_23B77699C(inited + 32);
  type metadata accessor for Key(0);
  sub_23B776A04();
  v9 = sub_23B7BC770();

  [v2 boundingRectWithSize:1 options:v9 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v11 = v10;

  return v11;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23B776950()
{
  result = qword_27E1808D0;
  if (!qword_27E1808D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1808D0);
  }

  return result;
}

uint64_t sub_23B77699C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B776A04()
{
  result = qword_27E1808B8;
  if (!qword_27E1808B8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1808B8);
  }

  return result;
}

uint64_t sub_23B776A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_23B776ACC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23B776ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1808E8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23B7BD9F0;

  *(v6 + 32) = sub_23B7A1250();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_23B7A1250();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_23B7A1250();
  *(v6 + 72) = v9;
  *(v6 + 80) = sub_23B7A1250();
  *(v6 + 88) = v10;
  v40[5] = v6;
  v41 = 0;
  v42 = sub_23B776118;
  v43 = 0;

  result = sub_23B7765FC();
  if (!v12)
  {
    swift_bridgeObjectRelease_n();
    v17 = sub_23B7A1250();
    v14 = v18;
LABEL_15:
    *(v4 + 40) = v17;
    *(v4 + 48) = v14;
    return v4;
  }

  v14 = v12;
  v15 = *(v6 + 16);
  v16 = v41;
  if (v41 == v15)
  {
    v17 = result;
LABEL_14:
    swift_bridgeObjectRelease_n();
    goto LABEL_15;
  }

  v36 = result;
  v19 = v13;
  v20 = *MEMORY[0x277D740A8];
  v21 = *MEMORY[0x277D743F8];
  v37 = v12;
  while ((v16 & 0x8000000000000000) == 0)
  {
    if (v16 >= *(v6 + 16))
    {
      goto LABEL_17;
    }

    v22 = (v6 + 32 + 16 * v16);
    v17 = *v22;
    v14 = v22[1];
    v41 = v16 + 1;

    v23 = sub_23B7BC7C0();
    v40[0] = v20;
    v24 = objc_opt_self();
    v25 = v20;
    v26 = [v24 systemFontOfSize:10.0 weight:v21];
    v40[4] = sub_23B776950();
    v40[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1808E0);
    v27 = sub_23B7BCBB0();
    sub_23B776A5C(v40, &v38);
    v28 = v38;
    result = sub_23B776464(v38);
    if (v29)
    {
      goto LABEL_18;
    }

    v27[(result >> 6) + 8] |= 1 << result;
    *(v27[6] + 8 * result) = v28;
    result = sub_23B776ACC(&v39, (v27[7] + 32 * result));
    v30 = v27[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_19;
    }

    v27[2] = v32;
    sub_23B77699C(v40);
    type metadata accessor for Key(0);
    sub_23B776A04();
    v33 = sub_23B7BC770();

    [v23 boundingRectWithSize:1 options:v33 attributes:0 context:{1.79769313e308, 1.79769313e308}];
    v35 = v34;

    if (v35 < v19)
    {

      v16 = v41;
      v19 = v35;
      v36 = v17;
      v37 = v14;
      if (v41 == v15)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v16 = v41;
      if (v41 == v15)
      {
        v17 = v36;
        v14 = v37;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_23B776E90(void *a1)
{
  v2 = sub_23B7BB8A0();
  MEMORY[0x28223BE20](v2 - 8);
  v31[1] = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23B7BB970();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LegacyAppExtensionHostView.Configuration(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180968);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v31 - v15;
  v35 = 0;
  MEMORY[0x23EEA96E0](&v35, 8);
  v17 = v35;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v18 = type metadata accessor for LegacyAppExtensionHostView(0);
    sub_23B779B38(v33 + *(v18 + 36), v13, &unk_27E180968);
    if ((*(v8 + 48))(v13, 1, v7) == 1)
    {
      v19 = sub_23B7BCB10();
      (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
      v20 = a1;
    }

    else
    {
      sub_23B779878(v13, v10);
      (*(v32 + 16))(v6, v10, v4);
      v29 = a1;

      sub_23B7BB8B0();
      sub_23B7BCB00();
      sub_23B7798DC(v10, type metadata accessor for LegacyAppExtensionHostView.Configuration);
      v30 = sub_23B7BCB10();
      (*(*(v30 - 8) + 56))(v16, 0, 1, v30);
    }

    sub_23B7BCB20();
  }

  else
  {
    if (qword_27E180870 != -1)
    {
      swift_once();
    }

    v21 = sub_23B7BBB30();
    __swift_project_value_buffer(v21, qword_27E184F18);
    v22 = sub_23B7BBB10();
    v23 = sub_23B7BCA00();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v17;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136315138;
      v35 = 5527621;
      v36 = 0xE300000000000000;
      v37 = v26;
      v34 = v24;
      sub_23B7797D8();
      v27 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v27);

      v28 = sub_23B77C020(v35, v36, &v37);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_23B774000, v22, v23, "[%s]: No HostingViewController found", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23EEA96D0](v26, -1, -1);
      MEMORY[0x23EEA96D0](v25, -1, -1);
    }
  }
}

id sub_23B7773A8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E0);
  sub_23B7BC200();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_23B777434@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B77954C(v2, v5);
  v6 = type metadata accessor for LegacyAppExtensionHostView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_23B77954C(v5, v7 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_23B7798DC(v5, type metadata accessor for LegacyAppExtensionHostView);
  *a2 = v8;
  return result;
}

uint64_t sub_23B777548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B779508(&qword_27E1809C8);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23B7775C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B779508(&qword_27E1809C8);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23B777664()
{
  sub_23B779508(&qword_27E1809C8);
  sub_23B7BC1C0();
  __break(1u);
}

uint64_t sub_23B7776A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_23B7BC900();
  v5[3] = sub_23B7BC8F0();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_23B777764;

  return sub_23B777900(a5);
}

uint64_t sub_23B777764()
{

  v1 = sub_23B7BC8D0();

  return MEMORY[0x2822009F8](sub_23B7778A0, v1, v0);
}

uint64_t sub_23B7778A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B777900(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_23B7BBFA0();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  sub_23B7BC900();
  v2[37] = sub_23B7BC8F0();
  v5 = sub_23B7BC8D0();

  return MEMORY[0x2822009F8](sub_23B777A28, v5, v4);
}

uint64_t sub_23B777A28()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = v0[32];

  v0[28] = 0;
  MEMORY[0x23EEA96E0](v0 + 28, 8);
  v0[29] = 0;
  v2 = v0[28];
  v3 = [v1 makeXPCConnectionWithError_];
  v4 = v0[29];
  if (v3)
  {
    v5 = v3;
    v48 = v0[33];
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 interfaceWithProtocol_];
    [v5 setRemoteObjectInterface_];

    [v5 resume];
    v9 = swift_allocObject();
    v47 = v2 << 32;
    *(v9 + 16) = v2 << 32;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    v0[13] = sub_23B779D44;
    v0[14] = v9;
    v0[9] = MEMORY[0x277D85DD0];
    v0[10] = 1107296256;
    v0[11] = sub_23B778800;
    v0[12] = &block_descriptor;
    v10 = _Block_copy(v0 + 9);

    v51 = v5;
    v11 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);
    sub_23B7BCB40();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809F0);
    v12 = swift_dynamicCast();
    v13 = v0[31];
    if (!v12)
    {
      v13 = 0;
    }

    v50 = v13;
    sub_23B7BB7B0();
    swift_allocObject();
    sub_23B7BB7A0();
    v14 = v48 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent;
    v15 = *(v48 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent + 16);
    v16 = *(v48 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent + 24);
    v17 = *(v48 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent);
    v18 = *(v48 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent + 8);

    if (v18 != 1)
    {
      v20 = v0[35];
      v19 = v0[36];
      v49 = v0[34];
      sub_23B779D68(v17, 0);
      sub_23B7BCA10();
      v21 = sub_23B7BC210();
      sub_23B7BBB00();

      sub_23B7BBF90();
      swift_getAtKeyPath();
      sub_23B779D74(v17, 0);
      (*(v20 + 8))(v19, v49);
      LOBYTE(v17) = *(v0 + 308);
    }

    v22 = (*(v14 + 32) & 1) == 0;
    v0[2] = v15;
    v0[3] = v16;
    *(v0 + 32) = v17;
    v0[5] = 0;
    v0[6] = v22;
    sub_23B779D80();
    v0[7] = 0;
    v0[8] = 0;
    v23 = sub_23B7BB790();
    v25 = v24;
    v26 = v0[5];
    v27 = v0[6];

    sub_23B779DD4(v26, v27);

    if (v50)
    {
      swift_unknownObjectRetain();
      v41 = sub_23B7BB820();
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      *(v43 + 16) = v47;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0;
      *(v43 + 40) = v42;
      v0[19] = sub_23B779EEC;
      v0[20] = v43;
      v0[15] = MEMORY[0x277D85DD0];
      v0[16] = 1107296256;
      v0[17] = sub_23B778C9C;
      v0[18] = &block_descriptor_37;
      v44 = _Block_copy(v0 + 15);

      [v50 setWithManagedAppViewData:v41 reply:v44];
      swift_unknownObjectRelease();
      sub_23B779E1C(v23, v25);
      swift_unknownObjectRelease();

      _Block_release(v44);
    }

    else
    {
      sub_23B779E1C(v23, v25);
    }
  }

  else
  {
    v28 = v4;
    v29 = sub_23B7BB7E0();

    swift_willThrow();
    if (qword_27E180870 != -1)
    {
      swift_once();
    }

    v30 = sub_23B7BBB30();
    __swift_project_value_buffer(v30, qword_27E184F18);
    v31 = v29;
    v32 = sub_23B7BBB10();
    v33 = sub_23B7BCA00();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52[0] = v35;
      *v34 = 136315394;
      *(v0 + 76) = v2;
      sub_23B7797D8();
      v36 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v36);

      v37 = sub_23B77C020(5527621, 0xE300000000000000, v52);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      swift_getErrorValue();
      v38 = sub_23B7BCCC0();
      v40 = sub_23B77C020(v38, v39, v52);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_23B774000, v32, v33, "[%s]: Cannot make connection to extension. %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEA96D0](v35, -1, -1);
      MEMORY[0x23EEA96D0](v34, -1, -1);
    }

    else
    {
    }
  }

  v45 = v0[1];

  return v45();
}

uint64_t sub_23B778154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23B779B38(a3, v25 - v10, &qword_27E1809E8);
  v12 = sub_23B7BC930();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B779BA0(v11);
  }

  else
  {
    sub_23B7BC920();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B7BC8D0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B7BC820() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23B779BA0(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B779BA0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_23B778574(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v8 = sub_23B7BBB30();
  __swift_project_value_buffer(v8, qword_27E184F18);
  sub_23B779F50(a2, a3, a4 & 1);
  v9 = a1;
  oslog = sub_23B7BBB10();
  v10 = sub_23B7BCA00();
  sub_23B779D34(a2, a3, a4 & 1);

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    if (a4)
    {
    }

    else
    {
      if (a2)
      {
        v13 = 4144959;
      }

      else
      {
        v13 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v13, 0xE300000000000000);

      sub_23B7797D8();
      v14 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v14);

      a2 = 0;
      a3 = 0xE000000000000000;
    }

    v15 = sub_23B77C020(a2, a3, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = sub_23B7BCCC0();
    v18 = sub_23B77C020(v16, v17, &v20);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_23B774000, oslog, v10, "[%s]: Failed to create proxy to extension. %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v12, -1, -1);
    MEMORY[0x23EEA96D0](v11, -1, -1);
  }

  else
  {
  }
}

void sub_23B778800(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_23B778868(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v8 = type metadata accessor for LegacyAppExtensionHostView(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BB780();
  swift_allocObject();
  sub_23B7BB770();
  sub_23B779EFC();
  sub_23B7BB760();

  v11 = v34;
  v31 = *&v35[16];
  v32 = *v35;
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v12 = sub_23B7BBB30();
  __swift_project_value_buffer(v12, qword_27E184F18);
  sub_23B779F50(a3, a4, a5 & 1);
  v13 = sub_23B7BBB10();
  v14 = sub_23B7BC9F0();
  sub_23B779D34(a3, a4, a5 & 1);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v33[0] = v16;
    *v15 = 136315394;
    if (a5)
    {
    }

    else
    {
      v34 = 0;
      *v35 = 0xE000000000000000;
      if (a3)
      {
        v17 = 4144959;
      }

      else
      {
        v17 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v17, 0xE300000000000000);

      v36 = HIDWORD(a3);
      sub_23B7797D8();
      v18 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v18);

      a3 = v34;
      a4 = *v35;
    }

    v19 = sub_23B77C020(a3, a4, v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_23B7BC980();
    v22 = sub_23B77C020(v20, v21, v33);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_23B774000, v13, v14, "[%s]: Setting cell bounds %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v16, -1, -1);
    MEMORY[0x23EEA96D0](v15, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_23B77954C(Strong + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent, v10);

    v25 = *(v10 + 6);
    v26 = *(v10 + 7);
    v34 = *(v10 + 5);
    *v35 = v25;
    *&v35[8] = v26;
    *&v33[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180A08);
    sub_23B7BC670();
    sub_23B7798DC(v10, type metadata accessor for LegacyAppExtensionHostView);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    sub_23B77954C(result + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator_parent, v10);

    v29 = *(v10 + 9);
    v34 = *(v10 + 8);
    *v35 = v29;
    v30 = *(v10 + 6);
    *&v35[8] = *(v10 + 5);
    *&v35[24] = v30;
    v33[0] = v32;
    v33[1] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180A10);
    sub_23B7BC670();
    return sub_23B7798DC(v10, type metadata accessor for LegacyAppExtensionHostView);
  }

  return result;
}

uint64_t sub_23B778C9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_23B7BB830();
  v7 = v6;

  v3(v5, v7);
  sub_23B779E1C(v5, v7);
}

id sub_23B778D54()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B778DEC()
{
  result = type metadata accessor for LegacyAppExtensionHostView(319);
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

uint64_t sub_23B778EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180968);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B778F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180968);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23B779030()
{
  sub_23B7791A4(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23B7791A4(319, &qword_27E180990, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_23B7791F4(319, &qword_27E180998, type metadata accessor for CGRect, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_23B7791F4(319, &qword_27E1809A0, type metadata accessor for LegacyAppExtensionHostView.Configuration, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23B7791A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23B7791F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23B779278(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B7792C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B7BB970();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B779398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23B7BB970();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B779454()
{
  result = sub_23B7BB970();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B779508(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LegacyAppExtensionHostView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B77954C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAppExtensionHostView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23B7795E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B7796E0;

  return v6(a1);
}

uint64_t sub_23B7796E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23B7797D8()
{
  result = qword_27E1809D8;
  if (!qword_27E1809D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1809D8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23B779878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAppExtensionHostView.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7798DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23B77993C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B779984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23B779A44;

  return sub_23B7776A8(a1, v4, v5, v7, v6);
}

uint64_t sub_23B779A44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B779B38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B779BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B779C08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B779C40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B779A44;

  return sub_23B7795E8(a1, v4);
}

uint64_t sub_23B779CF8()
{
  sub_23B779D34(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_23B779D34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23B779D68(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_23B779D74(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_23B779D80()
{
  result = qword_27E1809F8;
  if (!qword_27E1809F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1809F8);
  }

  return result;
}

uint64_t sub_23B779DD4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_23B779E1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23B779E70()
{
  MEMORY[0x23EEA9770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B779EA8()
{
  sub_23B779D34(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_23B779EFC()
{
  result = qword_27E180A00;
  if (!qword_27E180A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180A00);
  }

  return result;
}

uint64_t sub_23B779F50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t MADViewServiceExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  (*(a2 + 40))(a1, a2);
  v12 = type metadata accessor for MADViewServiceConfiguration.ExportedObject();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection] = 0;
  v19.receiver = v13;
  v19.super_class = v12;
  v14 = objc_msgSendSuper2(&v19, sel_init, v18[0]);
  (*(v6 + 16))(v9, v11, AssociatedTypeWitness);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  (*(v6 + 32))(v16 + v15, v9, AssociatedTypeWitness);
  v18[1] = v14;
  swift_getAssociatedConformanceWitness();
  sub_23B77A334();
  sub_23B7BB880();
  return (*(v6 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_23B77A1BC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B77A254@<X0>(uint64_t a1@<X8>)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a1, v1 + v4, AssociatedTypeWitness);
}

unint64_t sub_23B77A334()
{
  result = qword_27E180A88;
  if (!qword_27E180A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180A88);
  }

  return result;
}

uint64_t MADViewServiceScene.body.getter(uint64_t a1)
{
  v7 = *v1;
  type metadata accessor for ExportedObject();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180A98);
  sub_23B7BBBE0();
  *(v3 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_connection) = 0;
  v4 = (v3 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply);
  *v4 = 0;
  v4[1] = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 32) = v7;
  *(v5 + 48) = v3;

  return sub_23B7BB870();
}

uint64_t type metadata accessor for ExportedObject()
{
  result = qword_27E180B60;
  if (!qword_27E180B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B77A520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v14(v13);
  sub_23B7BB698(v10, a4, a5);
  v15 = *(v7 + 8);
  v15(v10, a4);
  sub_23B7BB698(v12, a4, a5);
  return (v15)(v12, a4);
}

uint64_t sub_23B77A65C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B77A6AC(void *a1)
{
  [a1 setExportedObject_];

  return sub_23B77A6F0(a1);
}

uint64_t sub_23B77A6F0(void *a1)
{
  [a1 auditToken];
  v3 = sub_23B77CD3C(v12, v13, v14, v15);
  if (v3)
  {
    [a1 setExportedObject_];
    v4 = [objc_opt_self() interfaceWithProtocol_];
    [a1 setExportedInterface_];

    [a1 resume];
    v5 = *(v1 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_connection);
    *(v1 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_connection) = a1;

    v6 = a1;
  }

  else
  {
    if (qword_27E180870 != -1)
    {
      swift_once();
    }

    v7 = sub_23B7BBB30();
    __swift_project_value_buffer(v7, qword_27E184F18);
    v8 = sub_23B7BBB10();
    v9 = sub_23B7BCA00();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23B774000, v8, v9, "Invalidating ViewService connection due to missing entitlements.", v10, 2u);
      MEMORY[0x23EEA96D0](v10, -1, -1);
    }

    [a1 invalidate];
  }

  return v3 & 1;
}

uint64_t MADViewServiceScene.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ExportedObject.managedAppViewConfiguration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();
}

double sub_23B77A924@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_23B77A9B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B77CC90(v1, v2, v3, v4, v5);

  return sub_23B7BBC30();
}

uint64_t ExportedObject.managedAppViewConfiguration.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ExportedObject.managedAppViewConfiguration.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B77ABBC;
}

void sub_23B77ABBC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t ExportedObject.$managedAppViewConfiguration.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8);
  sub_23B7BBBF0();
  return swift_endAccess();
}

uint64_t sub_23B77AC98()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8);
  sub_23B7BBBF0();
  return swift_endAccess();
}

uint64_t sub_23B77AD10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AB0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ExportedObject.$managedAppViewConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ExportedObject.$managedAppViewConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AB0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject__managedAppViewConfiguration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B77B13C;
}

void sub_23B77B13C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_23B7BBC00();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_23B7BBC00();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t ExportedObject.set(managedAppViewData:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v5 = sub_23B7BC740();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B7BC760();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BB780();
  swift_allocObject();
  sub_23B7BB770();
  sub_23B77B75C();
  sub_23B7BB760();

  v28 = aBlock;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  sub_23B77C5C8();
  v12 = sub_23B7BCA70();
  v13 = swift_allocObject();
  v14 = v29;
  *(v13 + 24) = v28;
  *(v13 + 16) = v4;
  *(v13 + 40) = v14;
  *(v13 + 56) = v30;
  *(v13 + 72) = v31;
  *&v26 = sub_23B77C66C;
  *(&v26 + 1) = v13;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v25 = sub_23B77CEA8;
  *(&v25 + 1) = &block_descriptor_0;
  v15 = _Block_copy(&aBlock);

  sub_23B7BC750();
  v23 = MEMORY[0x277D84F90];
  sub_23B77C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AD0);
  sub_23B77C6E8();
  sub_23B7BCB50();
  MEMORY[0x23EEA8D20](0, v11, v7, v15);
  _Block_release(v15);

  (*(v20 + 8))(v7, v5);
  (*(v9 + 8))(v11, v8);

  v16 = (v4 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply);
  v17 = *(v4 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply);
  v18 = v22;
  *v16 = v21;
  v16[1] = v18;
  sub_23B77C010(v17);
}

unint64_t sub_23B77B75C()
{
  result = qword_27E180AB8;
  if (!qword_27E180AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180AB8);
  }

  return result;
}

uint64_t sub_23B77B7B0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 40);
  v8 = *(a2 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v8;
  v14 = v7;
  sub_23B77CBD4(a2, v9);

  return sub_23B7BBC30();
}

uint64_t ExportedObject.deinit()
{
  v1 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject__managedAppViewConfiguration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23B77C010(*(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply));
  return v0;
}

uint64_t ExportedObject.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject__managedAppViewConfiguration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180AA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23B77C010(*(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI14ExportedObject_reply));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23B77BA88(void *a1)
{
  v14 = 0;
  MEMORY[0x23EEA96E0](&v14, 8);
  v3 = v14 << 32;
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v18 = sub_23B77CA94;
  v19 = v6;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_23B77CEA8;
  v17 = &block_descriptor_29;
  v7 = _Block_copy(&v14);

  [a1 setInvalidationHandler_];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  v18 = sub_23B77CAF8;
  v19 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_23B77CEA8;
  v17 = &block_descriptor_36;
  v10 = _Block_copy(&v14);

  [a1 setInterruptionHandler_];
  _Block_release(v10);
  v11 = *(v1 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection);
  *(v1 + OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection) = a1;
  v12 = a1;

  [v12 resume];
  return 1;
}

uint64_t sub_23B77BCEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_23B77BD30(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t (*a5)(void), const char *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *&Strong[OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection];
    *&Strong[OBJC_IVAR____TtCV31_ManagedAppDistribution_SwiftUIP33_34AFEEE0F5A92C95419345CDA8C7B18F27MADViewServiceConfiguration14ExportedObject_xpcConnection] = 0;
  }

  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v13 = sub_23B7BBB30();
  __swift_project_value_buffer(v13, qword_27E184F18);
  sub_23B779F50(a2, a3, a4 & 1);
  v14 = sub_23B7BBB10();
  v15 = a5();
  sub_23B779D34(a2, a3, a4 & 1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    if (a4)
    {
    }

    else
    {
      if (a2)
      {
        v18 = 4144959;
      }

      else
      {
        v18 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v18, 0xE300000000000000);

      sub_23B7797D8();
      v19 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v19);

      a2 = 0;
      a3 = 0xE000000000000000;
    }

    v20 = sub_23B77C020(a2, a3, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_23B774000, v14, v15, a6, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23EEA96D0](v17, -1, -1);
    MEMORY[0x23EEA96D0](v16, -1, -1);
  }
}

id sub_23B77BFA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MADViewServiceConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B77C010(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_23B77C020(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B77C0EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23B77CC30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B77C0EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B77C1F8(a5, a6);
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
    result = sub_23B7BCB90();
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

uint64_t sub_23B77C1F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B77C244(a1, a2);
  sub_23B77C374(&unk_284E332D0);
  return v3;
}

uint64_t sub_23B77C244(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23B77C460(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23B7BCB90();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23B7BC850();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B77C460(v10, 0);
        result = sub_23B7BCB60();
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

uint64_t sub_23B77C374(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23B77C4D4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23B77C460(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180B78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B77C4D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180B78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_23B77C5C8()
{
  result = qword_27E180AC0;
  if (!qword_27E180AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E180AC0);
  }

  return result;
}

uint64_t sub_23B77C614()
{

  if (*(v0 + 56) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23B77C690()
{
  result = qword_27E180AC8;
  if (!qword_27E180AC8)
  {
    sub_23B7BC740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180AC8);
  }

  return result;
}

unint64_t sub_23B77C6E8()
{
  result = qword_27E180AD8[0];
  if (!qword_27E180AD8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180AD0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E180AD8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B77C794(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23B77C830()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B77C878(uint64_t *a1, int a2)
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

uint64_t sub_23B77C8C0(uint64_t result, int a2, int a3)
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

void sub_23B77C91C()
{
  sub_23B77C9D8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23B77C9D8()
{
  if (!qword_27E180B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180A98);
    v0 = sub_23B7BBC40();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180B70);
    }
  }
}

uint64_t sub_23B77CA58()
{
  MEMORY[0x23EEA9770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_25Tm()
{

  sub_23B779D34(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_23B77CB44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_23B77CB7C()
{
  v1 = *(v0 + 16);
  v2 = sub_23B7BB820();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_23B77CC30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_23B77CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {

    sub_23B77CCF4(a4, a5);
  }
}

uint64_t sub_23B77CCF4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

SecTaskRef sub_23B77CD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *MEMORY[0x277CBECE8];
  *v13.val = a1;
  *&v13.val[2] = a2;
  *&v13.val[4] = a3;
  *&v13.val[6] = a4;
  result = SecTaskCreateWithAuditToken(v4, &v13);
  if (result)
  {
    v6 = result;
    v7 = sub_23B7BC7C0();
    v8 = SecTaskCopyValueForEntitlement(v6, v7, 0);

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = sub_23B7BC7C0();
        v12 = [v10 containsObject_];

        swift_unknownObjectRelease();
        return v12;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_23B77CEC0()
{
  type metadata accessor for ManagedAppCellContext();
  if (v0 <= 0x3F)
  {
    sub_23B77DA18(319, &qword_27E180C08, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_23B77D9B4();
      if (v2 <= 0x3F)
      {
        sub_23B77DA18(319, &qword_27E180C20, MEMORY[0x277CE02A8]);
        if (v3 <= 0x3F)
        {
          sub_23B77DA6C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B77CFD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v38 = *(v4 + 84);
  if (v38 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(sub_23B7BBCE0() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v40 = v7;
  v8 = *(sub_23B7BB810() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(sub_23B7BC050() - 8);
  v12 = *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v39 = v12;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80) - 8);
  v14 = *(v13 + 84);
  v15 = *(v4 + 64);
  if (v14 <= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v9)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 + 1;
  }

  v18 = *(v13 + 80);
  if (v17 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 80) & 0xF8 | 7;
  v21 = ((((((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v20 + 16;
  v22 = *(v8 + 80) & 0xF8 | 7;
  v23 = v40 + v22 + 1;
  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = v19 + v24 + 1;
  v26 = v39 + v18 + 1;
  if (a2 <= v16)
  {
    goto LABEL_41;
  }

  v27 = ((*(v13 + 64) + v18 + ((*(v13 + 64) + v18 + ((v26 + ((v25 + ((v23 + (v21 & ~v20)) & ~v22)) & ~v24)) & ~v18)) & ~v18)) & ~v18) + *(v13 + 64);
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v31 = ((a2 - v16 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v31 < 2)
    {
LABEL_41:
      if (v5 >= v14)
      {
        if (v38 < 0x7FFFFFFF)
        {
          v37 = *(((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
          if (v37 >= 0xFFFFFFFF)
          {
            LODWORD(v37) = -1;
          }

          return (v37 + 1);
        }

        else
        {
          v36 = *(v4 + 48);

          return v36(a1);
        }
      }

      else
      {
        v35 = *(v13 + 48);

        return v35((v26 + ((v25 + ((v23 + ((a1 + v21) & ~v20)) & ~v22)) & ~v24)) & ~v18);
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_41;
  }

LABEL_28:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 <= 3)
    {
      v33 = ((*(v13 + 64) + v18 + ((*(v13 + 64) + v18 + ((v26 + ((v25 + ((v23 + (v21 & ~v20)) & ~v22)) & ~v24)) & ~v18)) & ~v18)) & ~v18) + *(v13 + 64);
    }

    else
    {
      v33 = 4;
    }

    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v34 = *a1;
      }
    }

    else if (v33 == 1)
    {
      v34 = *a1;
    }

    else
    {
      v34 = *a1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v16 + (v34 | v32) + 1;
}

void sub_23B77D45C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v40 = v4;
  v41 = *(v4 + 84);
  if (v41 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(sub_23B7BBCE0() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8;
  v9 = *(sub_23B7BB810() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_23B7BC050() - 8);
  if (*(v12 + 64) > 8uLL)
  {
    v8 = *(v12 + 64);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80) - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v4 + 64);
  if (v15 <= v5)
  {
    v17 = v5;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = ((((((((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = *(v6 + 80) & 0xF8 | 7;
  v20 = *(v9 + 80) & 0xF8 | 7;
  v21 = v7 + v20 + 1;
  if (v10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v11 + 1;
  }

  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = *(v12 + 80) & 0xF8 | 7;
  v24 = v22 + v23 + 1;
  v25 = *(v13 + 80);
  v26 = v8 + v25 + 1;
  v27 = ((*(v13 + 64) + v25 + ((*(v13 + 64) + v25 + ((v26 + ((v24 + ((v21 + ((v18 + v19) & ~v19)) & ~v20)) & ~v23)) & ~v25)) & ~v25)) & ~v25) + *(v13 + 64);
  if (a3 <= v17)
  {
    v29 = 0;
    v28 = a1;
  }

  else
  {
    v28 = a1;
    if (v27 <= 3)
    {
      v32 = ((a3 - v17 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v17 < a2)
  {
    v30 = ~v17 + a2;
    if (v27 < 4)
    {
      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v34 = v30 & ~(-1 << (8 * v27));
        bzero(v28, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v28 = v34;
            if (v29 > 1)
            {
LABEL_63:
              if (v29 == 2)
              {
                *&v28[v27] = v31;
              }

              else
              {
                *&v28[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *v28 = v30;
            if (v29 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *v28 = v34;
        v28[2] = BYTE2(v34);
      }

      if (v29 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(v28, v27);
      *v28 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v29)
    {
      v28[v27] = v31;
    }

    return;
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *&v28[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&v28[v27] = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v29)
  {
    goto LABEL_43;
  }

  v28[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v5 >= v15)
  {
    if (v5 >= a2)
    {
      if (v41 < 0x7FFFFFFF)
      {
        v39 = (&v28[v16 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v39[2] = 0;
          v39[3] = 0;
          *v39 = a2 & 0x7FFFFFFF;
          v39[1] = 0;
        }

        else
        {
          v39[3] = a2 - 1;
        }
      }

      else
      {
        v38 = *(v40 + 56);

        v38(v28, a2);
      }
    }

    else if (((((((((((v16 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(v28, v18);
      *v28 = ~v5 + a2;
    }
  }

  else
  {
    v35 = ~v25;
    v36 = *(v14 + 56);
    v37 = (v26 + ((v24 + ((v21 + (&v28[v18 + v19] & ~v19)) & ~v20)) & ~v23)) & v35;

    v36(v37, a2);
  }
}

void sub_23B77D9B4()
{
  if (!qword_27E180C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C18);
    v0 = sub_23B7BBCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180C10);
    }
  }
}

void sub_23B77DA18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23B7BBCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23B77DA6C()
{
  if (!qword_27E180C28)
  {
    sub_23B77DAC8();
    v0 = sub_23B7BBD40();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180C28);
    }
  }
}

unint64_t sub_23B77DAC8()
{
  result = qword_27E180C30;
  if (!qword_27E180C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180C30);
  }

  return result;
}

uint64_t sub_23B77DB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v3 = sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C38);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  v4 = sub_23B7BBE70();
  WitnessTable = swift_getWitnessTable();
  v56 = MEMORY[0x277CDFC60];
  v44 = v4;
  v51 = v4;
  v52 = swift_getWitnessTable();
  v48 = v52;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  v6 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - v8;
  v51 = v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C40);
  v53 = type metadata accessor for OfferView();
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v9 = sub_23B7BC5D0();
  v46 = swift_getWitnessTable();
  v47 = v9;
  v51 = v9;
  v52 = v46;
  v10 = swift_getOpaqueTypeMetadata2();
  v37 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_23B7BC050();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = OpaqueTypeMetadata2;
  v20 = sub_23B7BC0A0();
  v41 = *(v20 - 8);
  v42 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  sub_23B79A7D4(v19);
  v23 = sub_23B7BC040();
  (*(v17 + 8))(v19, v16);
  if (v23)
  {
    sub_23B77E330(a1, v13);
    v51 = v47;
    v52 = v46;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_23B7BB698(v13, v10, OpaqueTypeConformance2);
    v25 = *(v37 + 8);
    v25(v13, v10);
    sub_23B7BB698(v15, v10, OpaqueTypeConformance2);
    v26 = v44;
    v51 = v44;
    v52 = v48;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8A34(v13, v10);
    v25(v13, v10);
    v25(v15, v10);
  }

  else
  {
    v27 = v39;
    sub_23B77E690(a1, v39);
    v26 = v44;
    v51 = v44;
    v52 = v48;
    v28 = swift_getOpaqueTypeConformance2();
    v29 = v38;
    v30 = v43;
    sub_23B7BB698(v27, v43, v28);
    v31 = *(v40 + 8);
    v31(v27, v30);
    sub_23B7BB698(v29, v30, v28);
    v51 = v47;
    v52 = v46;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8B2C(v27, v10, v30);
    v31(v27, v30);
    v31(v29, v30);
  }

  v51 = v47;
  v52 = v46;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v26;
  v52 = v48;
  v33 = swift_getOpaqueTypeConformance2();
  v49 = v32;
  v50 = v33;
  v34 = v42;
  v35 = swift_getWitnessTable();
  sub_23B7BB698(v22, v34, v35);
  return (*(v41 + 8))(v22, v34);
}

uint64_t sub_23B77E330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = sub_23B7BC150();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v19 = sub_23B7BBE70();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C40);
  v21 = type metadata accessor for OfferView();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v8 = sub_23B7BC5D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = *(a1 + 24);
  v16 = v7;
  v17 = v12;
  v18 = v2;
  sub_23B7BBFE0();
  sub_23B7BC5C0();
  sub_23B7BC140();
  swift_getWitnessTable();
  sub_23B7BC430();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23B77E690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_23B7BC150();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23B7BC050();
  v4 = *(v28 - 8);
  v5 = MEMORY[0x28223BE20](v28);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v23 - v8;
  v9 = *(a1 + 16);
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C38);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v10 = sub_23B7BC5D0();
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = sub_23B7BBE70();
  v25 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  sub_23B7BBFE0();
  v16 = *(a1 + 24);
  v33 = v9;
  v34 = v16;
  v35 = v27;
  sub_23B7BC5C0();
  v17 = v26;
  sub_23B79A7D4(v26);
  v18 = v28;
  (*(v4 + 104))(v7, *MEMORY[0x277CE0290], v28);
  sub_23B782014(v17, v7);
  v19 = *(v4 + 8);
  v19(v7, v18);
  v19(v17, v18);
  sub_23B7BC6A0();
  WitnessTable = swift_getWitnessTable();
  sub_23B7BC470();
  (*(v24 + 8))(v12, v10);
  v20 = v29;
  sub_23B7BC140();
  v36 = WitnessTable;
  v37 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  sub_23B7BC430();
  (*(v30 + 8))(v20, v32);
  return (*(v25 + 8))(v15, v13);
}

uint64_t sub_23B77EBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_23B7BBE70();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  type metadata accessor for PlatformIconClippingViewModifier();
  v6 = sub_23B7BBE70();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  sub_23B7BC1F0();
  v9 = sub_23B7BBE70();
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = sub_23B7BBE70();
  v13 = *(v12 - 8);
  v28 = v12;
  v29 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  sub_23B7BC6A0();
  v16 = *(a1 + 24);
  sub_23B7BC460();
  v37 = v16;
  v38 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_23B79759C(v3, WitnessTable);
  (*(v25 + 8))(v5, v3);
  v18 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier);
  v35 = WitnessTable;
  v36 = v18;
  v19 = swift_getWitnessTable();
  sub_23B7BC420();
  (*(v26 + 8))(v8, v6);
  v20 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470]);
  v33 = v19;
  v34 = v20;
  v21 = swift_getWitnessTable();
  sub_23B7BC450();
  (*(v27 + 8))(v11, v9);
  sub_23B7BC250();
  v22 = sub_23B781950();
  v31 = v21;
  v32 = v22;
  v23 = v28;
  swift_getWitnessTable();
  sub_23B7BC480();
  return (*(v29 + 8))(v15, v23);
}

uint64_t sub_23B77F018@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23B7BC2D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedAppCellContext();
  sub_23B7BC270();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  sub_23B7BC2E0();

  (*(v3 + 8))(v5, v2);
  v6 = sub_23B7BC360();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23B77F19C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ManagedAppCellContext() + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  sub_23B781E88(*v3, v5, v6, v7);
  v8 = sub_23B7BC300();
  KeyPath = swift_getKeyPath();
  result = sub_23B7BC0E0();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v8;
  *(a1 + 48) = result;
  return result;
}

__n128 sub_23B77F230@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_23B7BC050();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + *(type metadata accessor for ManagedAppCellContext() + 44));
  v11 = *v10;
  v12 = v10[2];
  v13 = v10[3];
  v31 = v10[1];
  v32 = v11;
  v29 = v13;
  v30 = v12;
  sub_23B781E88(v11, v31, v12, v13);
  v33 = v1;
  sub_23B79A7D4(v9);
  v14 = sub_23B7BC040();
  v15 = *(v7 + 8);
  v15(v9, v6);
  if (v14)
  {
    v28 = sub_23B7BC2F0();
  }

  else
  {
    v16 = sub_23B7BC280();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v28 = sub_23B7BC2B0();
    sub_23B7826E8(v5, &qword_27E180D10);
  }

  KeyPath = swift_getKeyPath();
  v18 = sub_23B7BC520();
  v19 = swift_getKeyPath();
  sub_23B79A7D4(v9);
  sub_23B7BC040();
  v15(v9, v6);
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v20 = swift_getKeyPath();
  v21 = v31;
  *a1 = v32;
  *(a1 + 8) = v21;
  v22 = v29;
  *(a1 + 16) = v30;
  *(a1 + 24) = v22;
  v23 = v28;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v23;
  *(a1 + 48) = v19;
  *(a1 + 56) = v18;
  v24 = v39;
  *(a1 + 128) = v38;
  *(a1 + 144) = v24;
  *(a1 + 160) = v40;
  v25 = v35;
  *(a1 + 64) = v34;
  *(a1 + 80) = v25;
  result = v37;
  *(a1 + 96) = v36;
  *(a1 + 112) = result;
  *(a1 + 176) = v20;
  *(a1 + 184) = 2;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_23B77F528@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ManagedAppCellContext() + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  sub_23B781E88(*v3, v5, v6, v7);
  v8 = sub_23B7BC300();
  KeyPath = swift_getKeyPath();
  result = sub_23B7BC0D0();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v8;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23B77F5BC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ManagedAppCellContext();
  v4 = *(v3 + 56);
  v5 = v1 + *(v3 + 52);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v12[0] = *v5;
  v12[1] = v6;
  v13 = v7;
  v8 = v1 + v4;
  v9 = *(v1 + v4);
  v10 = *(v8 + 8);
  sub_23B781F9C(v12[0], v6, v7);

  return OfferView.init(offerState:action:)(v12, v9, v10, a1);
}

uint64_t sub_23B77F638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v33 = a1;
  v37 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C38);
  v5 = MEMORY[0x28223BE20](v35);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - v7;
  v34 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  v32[1] = sub_23B7BBE70();
  v9 = sub_23B7BBE70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v32 - v14;
  v16 = v38;
  v17 = type metadata accessor for DefaultManagedAppCell();
  sub_23B77EBC8(v17, v13);
  v45[11] = v16;
  v45[12] = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v19 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier);
  v45[9] = WitnessTable;
  v45[10] = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470]);
  v45[7] = v20;
  v45[8] = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23B781950();
  v45[5] = v22;
  v45[6] = v23;
  v45[3] = swift_getWitnessTable();
  v45[4] = MEMORY[0x277CDF918];
  v24 = swift_getWitnessTable();
  sub_23B7BB698(v13, v9, v24);
  v25 = *(v10 + 8);
  v25(v13, v9);
  *v8 = sub_23B7BC070();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D38);
  sub_23B77FABC(v33, v34, &v8[*(v26 + 44)]);
  KeyPath = swift_getKeyPath();
  v28 = v35;
  v29 = &v8[*(v35 + 36)];
  *v29 = KeyPath;
  *(v29 + 1) = 2;
  v29[16] = 0;
  (*(v10 + 16))(v13, v15, v9);
  v45[0] = v13;
  v30 = v36;
  sub_23B78242C(v8, v36);
  v43 = 0;
  v44 = 1;
  v45[1] = v30;
  v45[2] = &v43;
  v42[0] = v9;
  v42[1] = v28;
  v42[2] = MEMORY[0x277CE1180];
  v39 = v24;
  v40 = sub_23B78249C();
  v41 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(v45, 3uLL, v42);
  sub_23B782580(v8);
  v25(v15, v9);
  sub_23B782580(v30);
  return (v25)(v13, v9);
}

uint64_t sub_23B77FABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37[2] = a1;
  v37[3] = a2;
  v43 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D58);
  MEMORY[0x28223BE20](v40);
  v4 = v37 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D60);
  v47 = *(v42 - 8);
  v5 = MEMORY[0x28223BE20](v42);
  v41 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = v37 - v7;
  v38 = sub_23B7BC150();
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C40);
  v46 = *(v39 - 8);
  v11 = MEMORY[0x28223BE20](v39);
  v44 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v37 - v13;
  v15 = sub_23B7BC070();
  v51 = 0;
  sub_23B7811D0(&v59);
  v54 = v61;
  v55 = v62;
  v56[0] = *v63;
  *(v56 + 9) = *&v63[9];
  v52 = v59;
  v53 = v60;
  *(v58 + 9) = *&v63[9];
  v57[2] = v61;
  v57[3] = v62;
  v58[0] = *v63;
  v57[0] = v59;
  v57[1] = v60;
  sub_23B779B38(&v52, &v48, &qword_27E180C78);
  sub_23B7826E8(v57, &qword_27E180C78);
  *(&v50[2] + 7) = v54;
  *(&v50[3] + 7) = v55;
  *(&v50[4] + 7) = v56[0];
  v50[5] = *(v56 + 9);
  *(v50 + 7) = v52;
  *(&v50[1] + 7) = v53;
  *&v49[33] = v50[2];
  *&v49[49] = v50[3];
  *&v49[65] = v50[4];
  *&v49[81] = *(v56 + 9);
  v48 = v15;
  v49[0] = v51;
  *&v49[17] = v50[1];
  *&v49[1] = v50[0];
  sub_23B7BC130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C80);
  sub_23B7826A0(&qword_27E180C88, &qword_27E180C80);
  v37[0] = v14;
  sub_23B7BC430();
  v16 = *(v8 + 8);
  v37[1] = v8 + 8;
  v17 = v38;
  v16(v10, v38);
  *v63 = *&v49[48];
  *&v63[16] = *&v49[64];
  v64 = *&v49[80];
  v65 = v49[96];
  v59 = v48;
  v60 = *v49;
  v61 = *&v49[16];
  v62 = *&v49[32];
  sub_23B7826E8(&v59, &qword_27E180C80);
  *v4 = sub_23B7BBFE0();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D68);
  sub_23B7800A0(&v4[*(v18 + 44)]);
  LOBYTE(v15) = sub_23B7BC230();
  sub_23B7BBCC0();
  v19 = &v4[*(v40 + 36)];
  *v19 = v15;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_23B7BC130();
  sub_23B7825E8();
  v24 = v45;
  sub_23B7BC430();
  v16(v10, v17);
  sub_23B7826E8(v4, &qword_27E180D58);
  v25 = *(v46 + 16);
  v26 = v44;
  v27 = v14;
  v28 = v39;
  v25(v44, v27, v39);
  v29 = *(v47 + 16);
  v31 = v41;
  v30 = v42;
  v29(v41, v24, v42);
  v32 = v43;
  v25(v43, v26, v28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D88);
  v29(&v32[*(v33 + 48)], v31, v30);
  v34 = *(v47 + 8);
  v34(v45, v30);
  v35 = *(v46 + 8);
  v35(v37[0], v28);
  v34(v31, v30);
  return v35(v44, v28);
}

uint64_t sub_23B7800A0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D90);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  type metadata accessor for DefaultManagedAppCell();
  sub_23B77F5BC(v8);
  *&v8[*(v3 + 44)] = 0x3FF0000000000000;
  v9 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4438(v9))
  {
    sub_23B77F230(&v37);
    v60 = v47;
    v61 = v48;
    v62 = v49;
    v56 = v43;
    v57 = v44;
    v58 = v45;
    v59 = v46;
    v52 = v39;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v50 = v37;
    v51 = v38;
    nullsub_1(&v50);
    v73 = v60;
    v74 = v61;
    v75 = v62;
    v69 = v56;
    v70 = v57;
    v71 = v58;
    v72 = v59;
    v65 = v52;
    v66 = v53;
    v67 = v54;
    v68 = v55;
    v63 = v50;
    v64 = v51;
  }

  else
  {
    sub_23B7819A4(&v63);
  }

  sub_23B779B38(v8, v6, &qword_27E180D90);
  v34 = v73;
  v35 = v74;
  v36 = v75;
  v30 = v69;
  v31 = v70;
  v32 = v71;
  v33 = v72;
  v26 = v65;
  v27 = v66;
  v28 = v67;
  v29 = v68;
  v24 = v63;
  v25 = v64;
  sub_23B779B38(v6, a1, &qword_27E180D90);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D98) + 48);
  v11 = v35;
  v47 = v34;
  v48 = v35;
  v12 = v30;
  v13 = v31;
  v43 = v30;
  v44 = v31;
  v15 = v32;
  v14 = v33;
  v45 = v32;
  v46 = v33;
  v17 = v28;
  v16 = v29;
  v41 = v28;
  v42 = v29;
  v18 = v26;
  v19 = v27;
  v39 = v26;
  v40 = v27;
  v21 = v24;
  v20 = v25;
  v37 = v24;
  v38 = v25;
  v22 = a1 + v10;
  *(v22 + 160) = v34;
  *(v22 + 176) = v11;
  *(v22 + 96) = v12;
  *(v22 + 112) = v13;
  *(v22 + 128) = v15;
  *(v22 + 144) = v14;
  *(v22 + 32) = v18;
  *(v22 + 48) = v19;
  *(v22 + 64) = v17;
  *(v22 + 80) = v16;
  v49 = v36;
  *(v22 + 192) = v36;
  *v22 = v21;
  *(v22 + 16) = v20;
  sub_23B779B38(&v37, &v50, &qword_27E180C48);
  sub_23B7826E8(v8, &qword_27E180D90);
  v60 = v34;
  v61 = v35;
  v62 = v36;
  v56 = v30;
  v57 = v31;
  v58 = v32;
  v59 = v33;
  v52 = v26;
  v53 = v27;
  v54 = v28;
  v55 = v29;
  v50 = v24;
  v51 = v25;
  sub_23B7826E8(&v50, &qword_27E180C48);
  return sub_23B7826E8(v6, &qword_27E180D90);
}

uint64_t sub_23B7803C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v38 = sub_23B7BBE70();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C40);
  v40 = type metadata accessor for OfferView();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48);
  swift_getTupleTypeMetadata();
  v25 = sub_23B7BC6F0();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_23B7BC640();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50);
  v10 = sub_23B7BBE70();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v23 = &v22 - v15;
  sub_23B7BC070();
  type metadata accessor for DefaultManagedAppCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  sub_23B7BBD30();
  v28 = a2;
  v29 = a3;
  v30 = a1;
  sub_23B7BC630();
  v16 = swift_getWitnessTable();
  sub_23B7BC4A0();
  (*(v26 + 8))(v9, v7);
  v17 = sub_23B7826A0(&qword_27E180C58, &qword_27E180C50);
  v36 = v16;
  v37 = v17;
  v18 = swift_getWitnessTable();
  v19 = v23;
  sub_23B7BB698(v14, v10, v18);
  v20 = *(v11 + 8);
  v20(v14, v10);
  (*(v11 + 16))(v14, v19, v10);
  v34 = 0;
  v35 = 0;
  v38 = v14;
  v39 = &v34;
  v33[0] = v10;
  v33[1] = MEMORY[0x277CE1180];
  v31 = v18;
  v32 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(&v38, 2uLL, v33);
  v20(v19, v10);
  return (v20)(v14, v10);
}

uint64_t sub_23B780834@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v64 = a3;
  v61 = type metadata accessor for OfferView();
  v5 = MEMORY[0x28223BE20](v61);
  v66 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v46 - v7;
  v8 = sub_23B7BC150();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C40);
  v63 = *(v65 - 8);
  v10 = MEMORY[0x28223BE20](v65);
  v62 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v46 - v12;
  v49 = a1;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  v60 = sub_23B7BBE70();
  v69 = sub_23B7BBE70();
  v13 = sub_23B7BBE70();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v48 = a2;
  v47 = type metadata accessor for DefaultManagedAppCell();
  sub_23B77EBC8(v47, v17);
  v111 = a2;
  v112 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v21 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier);
  v109 = WitnessTable;
  v110 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470]);
  v107 = v22;
  v108 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_23B781950();
  v105 = v24;
  v106 = v25;
  v103 = swift_getWitnessTable();
  v104 = MEMORY[0x277CDF918];
  v26 = swift_getWitnessTable();
  v69 = v19;
  v54 = v26;
  sub_23B7BB698(v17, v13, v26);
  v52 = v14;
  v27 = *(v14 + 8);
  v67 = v17;
  v59 = v14 + 8;
  v60 = v13;
  v58 = v27;
  v27(v17, v13);
  v28 = sub_23B7BC070();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  sub_23B7BBD30();
  v29 = v113;
  LOBYTE(v75) = 0;
  sub_23B7811D0(&v113);
  v122 = v114[1];
  v123 = v114[2];
  v124[0] = v114[3];
  *(v124 + 9) = *(&v114[3] + 9);
  v120 = v113;
  v121 = v114[0];
  *(v126 + 9) = *(&v114[3] + 9);
  v125[2] = v114[1];
  v125[3] = v114[2];
  v126[0] = v114[3];
  v125[0] = v113;
  v125[1] = v114[0];
  sub_23B779B38(&v120, &v89, &qword_27E180C78);
  sub_23B7826E8(v125, &qword_27E180C78);
  *(&v102[2] + 7) = v122;
  *(&v102[3] + 7) = v123;
  *(&v102[4] + 7) = v124[0];
  v102[5] = *(v124 + 9);
  *(v102 + 7) = v120;
  *(&v102[1] + 7) = v121;
  *(&v114[2] + 1) = v102[2];
  *(&v114[3] + 1) = v102[3];
  *(&v114[4] + 1) = v102[4];
  *(&v114[5] + 1) = *(v124 + 9);
  *(&v114[1] + 1) = v102[1];
  *&v113 = v28;
  *(&v113 + 1) = v29;
  LOBYTE(v114[0]) = v75;
  *(v114 + 1) = v102[0];
  v30 = v53;
  sub_23B7BC130();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C80);
  v50 = sub_23B7826A0(&qword_27E180C88, &qword_27E180C80);
  v51 = v31;
  sub_23B7BC430();
  (*(v55 + 8))(v30, v56);
  v127[4] = v114[3];
  v127[5] = v114[4];
  v127[6] = v114[5];
  v128 = v114[6];
  v127[0] = v113;
  v127[1] = v114[0];
  v127[2] = v114[1];
  v127[3] = v114[2];
  sub_23B7826E8(v127, &qword_27E180C80);
  v32 = v57;
  sub_23B77F5BC(v57);
  v33 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4438(v33))
  {
    sub_23B77F230(&v75);
    v99 = v85;
    v100 = v86;
    v101 = v87;
    v95 = v81;
    v96 = v82;
    v97 = v83;
    v98 = v84;
    v91 = v77;
    v92 = v78;
    v93 = v79;
    v94 = v80;
    v89 = v75;
    v90 = v76;
    nullsub_1(&v89);
    v117 = v99;
    v118 = v100;
    v119 = v101;
    v114[5] = v95;
    v114[6] = v96;
    v115 = v97;
    v116 = v98;
    v114[1] = v91;
    v114[2] = v92;
    v114[3] = v93;
    v114[4] = v94;
    v113 = v89;
    v114[0] = v90;
  }

  else
  {
    sub_23B7819A4(&v113);
  }

  v34 = v67;
  v35 = v60;
  (*(v52 + 16))(v67, v69, v60);
  v88[0] = v34;
  v37 = v62;
  v36 = v63;
  v38 = v68;
  v39 = v65;
  (*(v63 + 16))(v62, v68, v65);
  v88[1] = v37;
  v40 = v32;
  v41 = v32;
  v42 = v66;
  sub_23B7819C8(v41, v66);
  v85 = v117;
  v86 = v118;
  v87 = v119;
  v81 = v114[5];
  v82 = v114[6];
  v83 = v115;
  v84 = v116;
  v77 = v114[1];
  v78 = v114[2];
  v79 = v114[3];
  v80 = v114[4];
  v75 = v113;
  v76 = v114[0];
  v88[2] = v42;
  v88[3] = &v75;
  sub_23B779B38(&v113, &v89, &qword_27E180C48);
  v74[0] = v35;
  v74[1] = v39;
  v74[2] = v61;
  v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C48);
  v70 = v54;
  *&v89 = v51;
  *(&v89 + 1) = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = sub_23B781A2C(&qword_27E180C90, type metadata accessor for OfferView);
  v73 = sub_23B781A74();
  sub_23B7AE6C8(v88, 4uLL, v74);
  sub_23B7826E8(&v113, &qword_27E180C48);
  sub_23B781E28(v40);
  v43 = *(v36 + 8);
  v43(v38, v39);
  v44 = v58;
  v58(v69, v35);
  v99 = v85;
  v100 = v86;
  v101 = v87;
  v95 = v81;
  v96 = v82;
  v97 = v83;
  v98 = v84;
  v91 = v77;
  v92 = v78;
  v93 = v79;
  v94 = v80;
  v89 = v75;
  v90 = v76;
  sub_23B7826E8(&v89, &qword_27E180C48);
  sub_23B781E28(v42);
  v43(v37, v39);
  return v44(v67, v35);
}

double sub_23B7811D0@<D0>(_OWORD *a1@<X8>)
{
  v1 = type metadata accessor for ManagedAppCellContext();
  v2 = sub_23B7B4420(v1);
  type metadata accessor for DefaultManagedAppCell();
  if (v2)
  {
    sub_23B77F528(&v26);
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v18 = *v29;
    sub_23B77F018(&v26);
    v6 = v26;
    v7 = v27;
    v16 = *(&v27 + 1);
    sub_23B781E88(v3, *(&v3 + 1), v4, *(&v4 + 1));

    sub_23B781ECC(v6, *(&v6 + 1), v7);

    sub_23B781E88(v3, *(&v3 + 1), v4, *(&v4 + 1));

    sub_23B781ECC(v6, *(&v6 + 1), v7);

    sub_23B781FF8(v6, *(&v6 + 1), v7);

    sub_23B781FB4(v3, *(&v3 + 1), v4, *(&v4 + 1));

    v26 = v3;
    v27 = v4;
    v28 = v5;
    *v29 = v18;
    *&v29[8] = v6;
    v29[24] = v7;
    *&v29[32] = v16;
    v29[40] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D20);
    sub_23B7826A0(&qword_27E180D28, &qword_27E180D18);
    sub_23B7826A0(&qword_27E180D30, &qword_27E180D20);
    sub_23B7BC090();
    sub_23B781FF8(v6, *(&v6 + 1), v7);

    sub_23B781FB4(v3, *(&v3 + 1), v4, *(&v4 + 1));
  }

  else
  {
    sub_23B77F018(&v26);
    v8 = v26;
    v9 = v27;
    v10 = *(&v27 + 1);
    sub_23B77F19C(&v26);
    v11 = v26;
    v12 = v27;
    v13 = *(&v28 + 1);
    v17 = v28;
    v19 = *v29;
    sub_23B781ECC(v8, *(&v8 + 1), v9);

    sub_23B781E88(v11, *(&v11 + 1), v12, *(&v12 + 1));

    sub_23B781ECC(v8, *(&v8 + 1), v9);

    sub_23B781E88(v11, *(&v11 + 1), v12, *(&v12 + 1));

    sub_23B781FB4(v11, *(&v11 + 1), v12, *(&v12 + 1));

    sub_23B781FF8(v8, *(&v8 + 1), v9);

    v26 = v8;
    LOBYTE(v27) = v9;
    *(&v27 + 1) = v10;
    v28 = v11;
    *v29 = v12;
    *&v29[16] = v17;
    *&v29[24] = v13;
    *&v29[32] = v19;
    v29[40] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D20);
    sub_23B7826A0(&qword_27E180D28, &qword_27E180D18);
    sub_23B7826A0(&qword_27E180D30, &qword_27E180D20);
    sub_23B7BC090();
    sub_23B781FB4(v11, *(&v11 + 1), v12, *(&v12 + 1));

    sub_23B781FF8(v8, *(&v8 + 1), v9);
  }

  *&v29[16] = *v25;
  *&v29[25] = *&v25[9];
  v26 = v21;
  v27 = v22;
  a1[2] = v23;
  a1[3] = v24;
  a1[4] = *&v29[16];
  *(a1 + 73) = *&v29[25];
  result = *&v26;
  v15 = v27;
  *a1 = v26;
  a1[1] = v15;
  return result;
}

uint64_t sub_23B781724@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23B781788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ManagedAppCellContext();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for DefaultManagedAppCell();
  sub_23B782748(a2, a4 + v9[9], &qword_27E180DA0);
  sub_23B782748(a3, a4 + v9[10], &qword_27E180DA8);
  v10 = v9[11];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0);
  swift_storeEnumTagMultiPayload();
  sub_23B77DAC8();
  sub_23B7BBD20();
  sub_23B7BBD20();
  return sub_23B7BBD20();
}

unint64_t sub_23B781950()
{
  result = qword_27E180C70;
  if (!qword_27E180C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180C70);
  }

  return result;
}

double sub_23B7819A4(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_23B7819C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B781A2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B781A74()
{
  result = qword_27E180C98;
  if (!qword_27E180C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48);
    sub_23B781AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180C98);
  }

  return result;
}

unint64_t sub_23B781AF8()
{
  result = qword_27E180CA0;
  if (!qword_27E180CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CA8);
    sub_23B781BB0();
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CA0);
  }

  return result;
}

unint64_t sub_23B781BB0()
{
  result = qword_27E180CB0;
  if (!qword_27E180CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CB8);
    sub_23B781C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CB0);
  }

  return result;
}

unint64_t sub_23B781C3C()
{
  result = qword_27E180CC0;
  if (!qword_27E180CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CC8);
    sub_23B781CF4();
    sub_23B7826A0(&qword_27E180D00, &qword_27E180D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CC0);
  }

  return result;
}

unint64_t sub_23B781CF4()
{
  result = qword_27E180CD0;
  if (!qword_27E180CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CD8);
    sub_23B781DAC();
    sub_23B7826A0(&qword_27E180CF0, &qword_27E180CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CD0);
  }

  return result;
}

unint64_t sub_23B781DAC()
{
  result = qword_27E180CE0;
  if (!qword_27E180CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180CE0);
  }

  return result;
}

uint64_t sub_23B781E28(uint64_t a1)
{
  v2 = type metadata accessor for OfferView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B781E88(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23B781ECC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23B781ECC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23B781EE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBF10();
  *a1 = result;
  return result;
}

uint64_t sub_23B781F10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B7BBF10();
  *a1 = result;
  return result;
}

uint64_t sub_23B781F9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_23B781FB4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23B781FF8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23B781FF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

BOOL sub_23B782014(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_23B7BC050();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_23B78242C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B78249C()
{
  result = qword_27E180D40;
  if (!qword_27E180D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C38);
    sub_23B7826A0(&qword_27E180D48, &qword_27E180D50);
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180D40);
  }

  return result;
}

uint64_t sub_23B782580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B7825E8()
{
  result = qword_27E180D70;
  if (!qword_27E180D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180D58);
    sub_23B7826A0(&qword_27E180D78, &qword_27E180D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180D70);
  }

  return result;
}

uint64_t sub_23B7826A0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B7826E8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23B782748(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B7827C8()
{
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C40);
  type metadata accessor for OfferView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C48);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C38);
  swift_getTupleTypeMetadata3();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  sub_23B7BBE70();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23B7BC0A0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t OfferView.init(offerState:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a2;
  v7 = sub_23B7BC310();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v23 = *(a1 + 8);
  HIDWORD(v22) = *(a1 + 16);
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v12 = type metadata accessor for OfferView();
  v13 = v12[5];
  *(a4 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0);
  swift_storeEnumTagMultiPayload();
  v14 = a4 + v12[6];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  v15 = a4 + v12[8];
  v28 = 0;
  sub_23B7BC560();
  v16 = v26;
  *v15 = v25;
  *(v15 + 8) = v16;
  v25 = 0x4059000000000000;
  sub_23B77DAC8();
  sub_23B7BBD20();
  v25 = 0x402E000000000000;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A58], v7);
  sub_23B7BBD10();
  v25 = v11;
  v26 = v23;
  v27 = BYTE4(v22);
  type metadata accessor for OfferViewModel();
  swift_allocObject();

  sub_23B776ADC(&v25, v24, a3);

  sub_23B789618(&qword_27E180DC8, type metadata accessor for OfferViewModel);
  v17 = sub_23B7BBE20();
  v19 = v18;

  v21 = (a4 + v12[7]);
  *v21 = v17;
  v21[1] = v19;
  return result;
}

uint64_t OfferView.Space.hashValue.getter()
{
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](0);
  return sub_23B7BCD10();
}

uint64_t sub_23B782E38()
{
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](0);
  return sub_23B7BCD10();
}

uint64_t sub_23B782EA4()
{
  sub_23B7BCCD0();
  MEMORY[0x23EEA8F80](0);
  return sub_23B7BCD10();
}

uint64_t OfferView.body.getter()
{
  v1 = v0;
  v2 = sub_23B7BC030();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OfferView();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = v6;
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DD0);
  MEMORY[0x28223BE20](v35);
  v8 = &v29 - v7;
  v9 = sub_23B7BBFA0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  if (*(v1 + 8) == 1)
  {
    v38 = *v1;
  }

  else
  {
    v30 = v11;

    sub_23B7BCA10();
    v15 = sub_23B7BC210();
    v31 = v2;
    v16 = v15;
    sub_23B7BBB00();

    v2 = v31;
    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v14, 0);
    (*(v10 + 8))(v13, v30);
    LOBYTE(v14) = v38;
  }

  v37 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  sub_23B7BBD30();
  sub_23B776248(&v37, v39, *v39 / 100.0);
  sub_23B783394(v1, v39, v8);
  v17 = v34;
  sub_23B7819C8(v1, v34);
  v18 = (*(v32 + 80) + 237) & ~*(v32 + 80);
  v19 = swift_allocObject();
  v20 = v39[11];
  v19[11] = v39[10];
  v19[12] = v20;
  v19[13] = *v40;
  *(v19 + 221) = *&v40[13];
  v21 = v39[7];
  v19[7] = v39[6];
  v19[8] = v21;
  v22 = v39[9];
  v19[9] = v39[8];
  v19[10] = v22;
  v23 = v39[3];
  v19[3] = v39[2];
  v19[4] = v23;
  v24 = v39[5];
  v19[5] = v39[4];
  v19[6] = v24;
  v25 = v39[1];
  v19[1] = v39[0];
  v19[2] = v25;
  sub_23B788C0C(v17, v19 + v18);
  v26 = &v8[*(v35 + 36)];
  *v26 = sub_23B7878F4;
  *(v26 + 1) = 0;
  *(v26 + 2) = sub_23B788C70;
  *(v26 + 3) = v19;
  v27 = v36;
  sub_23B7BC020();
  sub_23B788CE4();
  sub_23B7BC440();
  (*(v3 + 8))(v27, v2);
  return sub_23B7826E8(v8, &qword_27E180DD0);
}

uint64_t sub_23B783394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a3;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E88);
  MEMORY[0x28223BE20](v139);
  v123 = &v119 - v5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FB0);
  MEMORY[0x28223BE20](v136);
  v138 = &v119 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FB8);
  MEMORY[0x28223BE20](v132);
  v134 = &v119 - v7;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F38);
  MEMORY[0x28223BE20](v137);
  v135 = &v119 - v8;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F28);
  MEMORY[0x28223BE20](v156);
  v140 = &v119 - v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FC0);
  MEMORY[0x28223BE20](v125);
  v126 = &v119 - v10;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F18);
  MEMORY[0x28223BE20](v151);
  v127 = &v119 - v11;
  *(&v152 + 1) = type metadata accessor for Style.CapsuleButtonStyle();
  MEMORY[0x28223BE20](*(&v152 + 1));
  v144 = (&v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E90);
  v146 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v143 = &v119 - v13;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FC8);
  v142 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v141 = &v119 - v14;
  v131 = sub_23B7BBE90();
  v121 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v120 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180EF8);
  v119 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v17 = &v119 - v16;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FD0);
  v122 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v124 = &v119 - v18;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FD8);
  MEMORY[0x28223BE20](v153);
  v155 = &v119 - v19;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FE0);
  MEMORY[0x28223BE20](v145);
  v148 = &v119 - v20;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FE8);
  MEMORY[0x28223BE20](v128);
  v22 = &v119 - v21;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E18);
  MEMORY[0x28223BE20](v147);
  v129 = &v119 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E08);
  MEMORY[0x28223BE20](v154);
  v149 = &v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E38);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v119 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E28);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v119 - v32;
  v34 = type metadata accessor for OfferView();
  v35 = a1;
  v36 = *(a1 + *(v34 + 28) + 8);
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);
  if (!*(v36 + 32))
  {
    sub_23B78524C(*(v36 + 16), v38 & 1, v35, a2, v27);
    sub_23B7BC6A0();
    sub_23B7BBEB0();
    sub_23B782748(v27, v31, &qword_27E180E38);
    v59 = &v31[*(v28 + 36)];
    v60 = v167;
    *(v59 + 4) = v166;
    *(v59 + 5) = v60;
    *(v59 + 6) = v168;
    v61 = v163;
    *v59 = v162;
    *(v59 + 1) = v61;
    v62 = v165;
    *(v59 + 2) = v164;
    *(v59 + 3) = v62;
    sub_23B782748(v31, v33, &qword_27E180E28);
    sub_23B779B38(v33, v22, &qword_27E180E28);
    swift_storeEnumTagMultiPayload();
    sub_23B78902C();
    v63 = sub_23B7826A0(&qword_27E180F00, &qword_27E180EF8);
    v64 = sub_23B789618(&qword_27E180F08, MEMORY[0x277CDDB18]);
    v158 = v130;
    v159 = v131;
    v160 = v63;
    v161 = v64;
    swift_getOpaqueTypeConformance2();
    v65 = v129;
    sub_23B7BC090();
    sub_23B779B38(v65, v148, &qword_27E180E18);
    swift_storeEnumTagMultiPayload();
    sub_23B788EE0();
    sub_23B789660();
    v66 = v149;
    sub_23B7BC090();
    sub_23B7826E8(v65, &qword_27E180E18);
    sub_23B779B38(v66, v155, &qword_27E180E08);
    swift_storeEnumTagMultiPayload();
    sub_23B788E54();
    sub_23B7897A4();
    sub_23B7BC090();
    sub_23B7826E8(v66, &qword_27E180E08);
    v67 = v33;
    v68 = &qword_27E180E28;
    return sub_23B7826E8(v67, v68);
  }

  if (*(v36 + 32) == 1)
  {
    v40 = *(a2 + 184);
    v39 = *(a2 + 192);
    v41 = *(a2 + 216);
    MEMORY[0x28223BE20](v34);
    swift_retain_n();
    sub_23B781F9C(v37, v38, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0);
    sub_23B78A2B8();
    v42 = v143;
    sub_23B7BC5B0();
    sub_23B776230(v37, v38, 1);
    KeyPath = swift_getKeyPath();
    v44 = v144;
    *v144 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
    swift_storeEnumTagMultiPayload();
    v45 = *(&v152 + 1);
    v46 = v44 + *(*(&v152 + 1) + 20);
    *v46 = swift_getKeyPath();
    *(v46 + 8) = 0;
    *(v44 + v45[6]) = v41;
    v47 = (v44 + v45[7]);
    v48 = *(a2 + 168);
    *v47 = *(a2 + 152);
    v47[1] = v48;
    *(v44 + v45[8]) = v40;
    *(v44 + v45[9]) = v39;
    v49 = sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
    v50 = sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
    v51 = v141;
    v52 = v152;
    sub_23B7BC3D0();

    sub_23B78A3D0(v44);
    (*(v146 + 8))(v42, v52);
    v53 = v142;
    v54 = v51;
    v55 = v150;
    (*(v142 + 16))(v134, v51, v150);
    swift_storeEnumTagMultiPayload();
    *&v162 = v52;
    *(&v162 + 1) = v45;
    *&v163 = v49;
    *(&v163 + 1) = v50;
    swift_getOpaqueTypeConformance2();
    v56 = v135;
    sub_23B7BC090();
    sub_23B779B38(v56, v138, &qword_27E180F38);
    swift_storeEnumTagMultiPayload();
    sub_23B789830();
    sub_23B7893E8();
    v57 = v140;
    sub_23B7BC090();
    sub_23B7826E8(v56, &qword_27E180F38);
    v58 = &qword_27E180F28;
    sub_23B779B38(v57, v155, &qword_27E180F28);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_23B788E54();
    sub_23B7897A4();
    sub_23B7BC090();
    sub_23B7826E8(v57, v58);
    return (*(v53 + 8))(v54, v55);
  }

  if (v37 > 1)
  {
    if (v37 ^ 2 | v38)
    {
      if (v37 ^ 3 | v38)
      {
        v91 = sub_23B7A1250();
        v92 = *(a2 + 168);
        v162 = *(a2 + 152);
        v163 = v92;
        v94 = *(a2 + 184);
        v93 = *(a2 + 192);
        v95 = *(a2 + 216);
        MEMORY[0x28223BE20](v91);
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0);
        sub_23B78A2B8();
        v96 = v143;
        sub_23B7BC5B0();

        v97 = swift_getKeyPath();
        v98 = v144;
        *v144 = v97;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
        swift_storeEnumTagMultiPayload();
        v99 = *(&v152 + 1);
        v100 = v98 + *(*(&v152 + 1) + 20);
        *v100 = swift_getKeyPath();
        *(v100 + 8) = 0;
        *(v98 + v99[6]) = v95;
        v101 = (v98 + v99[7]);
        v102 = v163;
        *v101 = v162;
        v101[1] = v102;
        *(v98 + v99[8]) = v94;
        *(v98 + v99[9]) = v93;
        sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
        sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
        v103 = v123;
        v104 = v152;
        sub_23B7BC3D0();

        sub_23B78A3D0(v98);
        (*(v146 + 8))(v96, v104);
        v105 = swift_getKeyPath();
        v106 = swift_allocObject();
        *(v106 + 16) = 1;
        v107 = (v103 + *(v139 + 36));
        *v107 = v105;
        v107[1] = sub_23B78A43C;
        v107[2] = v106;
        v73 = &qword_27E180E88;
        sub_23B779B38(v103, v138, &qword_27E180E88);
        swift_storeEnumTagMultiPayload();
        sub_23B789830();
        sub_23B7893E8();
        v108 = v140;
        sub_23B7BC090();
        sub_23B779B38(v108, v155, &qword_27E180F28);
        swift_storeEnumTagMultiPayload();
        sub_23B788E54();
        sub_23B7897A4();
        sub_23B7BC090();
        sub_23B7826E8(v108, &qword_27E180F28);
        v67 = v103;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v69 = sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
        v70 = sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
        v162 = v152;
        *&v163 = v69;
        *(&v163 + 1) = v70;
        swift_getOpaqueTypeConformance2();
        v71 = v135;
        sub_23B7BC090();
        sub_23B779B38(v71, v138, &qword_27E180F38);
        swift_storeEnumTagMultiPayload();
        sub_23B789830();
        sub_23B7893E8();
        v72 = v140;
        sub_23B7BC090();
        sub_23B7826E8(v71, &qword_27E180F38);
        v73 = &qword_27E180F28;
        sub_23B779B38(v72, v155, &qword_27E180F28);
        swift_storeEnumTagMultiPayload();
        sub_23B788E54();
        sub_23B7897A4();
        sub_23B7BC090();
        v67 = v72;
      }

      v68 = v73;
      return sub_23B7826E8(v67, v68);
    }

LABEL_10:
    v74 = sub_23B7A1250();
    v75 = *(a2 + 168);
    v162 = *(a2 + 152);
    v163 = v75;
    v77 = *(a2 + 184);
    v76 = *(a2 + 192);
    v78 = *(a2 + 216);
    MEMORY[0x28223BE20](v74);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0);
    sub_23B78A2B8();
    v79 = v143;
    sub_23B7BC5B0();

    v80 = swift_getKeyPath();
    v81 = v144;
    *v144 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
    swift_storeEnumTagMultiPayload();
    v82 = *(&v152 + 1);
    v83 = v81 + *(*(&v152 + 1) + 20);
    *v83 = swift_getKeyPath();
    *(v83 + 8) = 0;
    *(v81 + v82[6]) = v78;
    v84 = (v81 + v82[7]);
    v85 = v163;
    *v84 = v162;
    v84[1] = v85;
    *(v81 + v82[8]) = v77;
    *(v81 + v82[9]) = v76;
    v86 = sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
    v87 = sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
    v54 = v141;
    v88 = v152;
    sub_23B7BC3D0();

    sub_23B78A3D0(v81);
    (*(v146 + 8))(v79, v88);
    v53 = v142;
    v55 = v150;
    (*(v142 + 16))(v126, v54, v150);
    swift_storeEnumTagMultiPayload();
    v158 = v88;
    v159 = v82;
    v160 = v86;
    v161 = v87;
    swift_getOpaqueTypeConformance2();
    v89 = v127;
    sub_23B7BC090();
    sub_23B779B38(v89, v148, &qword_27E180F18);
    swift_storeEnumTagMultiPayload();
    sub_23B788EE0();
    sub_23B789660();
    v57 = v149;
    sub_23B7BC090();
    sub_23B7826E8(v89, &qword_27E180F18);
    v58 = &qword_27E180E08;
    sub_23B779B38(v57, v155, &qword_27E180E08);
    goto LABEL_11;
  }

  if (!(v37 | v38))
  {
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181000);
  sub_23B78A478();
  sub_23B7BC5B0();
  v109 = v120;
  sub_23B7BBE80();
  v110 = sub_23B7826A0(&qword_27E180F00, &qword_27E180EF8);
  v111 = sub_23B789618(&qword_27E180F08, MEMORY[0x277CDDB18]);
  v112 = v124;
  v113 = v130;
  v114 = v131;
  sub_23B7BC3C0();
  (*(v121 + 8))(v109, v114);
  (*(v119 + 8))(v17, v113);
  v115 = v122;
  v116 = v133;
  (*(v122 + 16))(v22, v112, v133);
  swift_storeEnumTagMultiPayload();
  sub_23B78902C();
  *&v162 = v113;
  *(&v162 + 1) = v114;
  *&v163 = v110;
  *(&v163 + 1) = v111;
  swift_getOpaqueTypeConformance2();
  v117 = v129;
  sub_23B7BC090();
  sub_23B779B38(v117, v148, &qword_27E180E18);
  swift_storeEnumTagMultiPayload();
  sub_23B788EE0();
  sub_23B789660();
  v118 = v149;
  sub_23B7BC090();
  sub_23B7826E8(v117, &qword_27E180E18);
  sub_23B779B38(v118, v155, &qword_27E180E08);
  swift_storeEnumTagMultiPayload();
  sub_23B788E54();
  sub_23B7897A4();
  sub_23B7BC090();
  sub_23B7826E8(v118, &qword_27E180E08);
  return (*(v115 + 8))(v124, v116);
}

uint64_t sub_23B78524C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a3;
  LODWORD(v80) = a2;
  v74 = a1;
  v82 = a5;
  v6 = sub_23B7BBE90();
  v79 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v78 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181040);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v59 - v8;
  v9 = type metadata accessor for Style.CapsuleButtonStyle();
  MEMORY[0x28223BE20](v9);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E90);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = &v59 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E88);
  MEMORY[0x28223BE20](v65);
  v67 = &v59 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E78);
  MEMORY[0x28223BE20](v68);
  v70 = &v59 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E68);
  MEMORY[0x28223BE20](v69);
  v72 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E58);
  v18 = MEMORY[0x28223BE20](v17);
  v71 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v73 = &v59 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181048);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180ED0);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  if (v80)
  {
    sub_23B7867E0(&v59 - v25);
    sub_23B779B38(v26, v23, &qword_27E180ED0);
    swift_storeEnumTagMultiPayload();
    sub_23B789218();
    sub_23B78A198(&qword_27E180EC8, &qword_27E180ED0, &unk_23B7BE288, sub_23B789560);
    sub_23B7BC090();
    v27 = v26;
    v28 = &qword_27E180ED0;
  }

  else
  {
    v60 = v23;
    v61 = v21;
    v62 = v24;
    v80 = v17;
    v63 = v6;
    v29 = type metadata accessor for OfferView();
    v30 = *(a4 + 168);
    v91 = *(a4 + 152);
    v92 = v30;
    v31 = *(a4 + 184);
    v32 = *(a4 + 192);
    v81 = a4;
    v33 = *(a4 + 216);
    MEMORY[0x28223BE20](v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0);
    sub_23B78A2B8();
    sub_23B7BC5B0();

    *v11 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
    swift_storeEnumTagMultiPayload();
    v34 = v11 + v9[5];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    *(v11 + v9[6]) = v33;
    v35 = (v11 + v9[7]);
    v36 = v92;
    *v35 = v91;
    v35[1] = v36;
    *(v11 + v9[8]) = v31;
    *(v11 + v9[9]) = v32;
    sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
    sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
    v37 = v67;
    v38 = v66;
    sub_23B7BC3D0();
    sub_23B78A3D0(v11);
    (*(v64 + 8))(v13, v38);
    KeyPath = swift_getKeyPath();
    v40 = swift_allocObject();
    *(v40 + 16) = 1;
    v41 = (v37 + *(v65 + 36));
    *v41 = KeyPath;
    v41[1] = sub_23B78ABC8;
    v41[2] = v40;
    sub_23B7BC6A0();
    sub_23B7BBEB0();
    v42 = v70;
    sub_23B782748(v37, v70, &qword_27E180E88);
    v43 = (v42 + *(v68 + 36));
    v44 = v88;
    v43[4] = v87;
    v43[5] = v44;
    v43[6] = v89;
    v46 = v84;
    v45 = v85;
    *v43 = v83;
    v43[1] = v46;
    v47 = v86;
    v43[2] = v45;
    v43[3] = v47;
    v48 = v72;
    v49 = sub_23B782748(v42, v72, &qword_27E180E78);
    *(v48 + *(v69 + 36)) = 0;
    v90 = *(v81 + 64);
    v50 = v71;
    v51 = &v71[*(v80 + 36)];
    MEMORY[0x28223BE20](v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181050);
    sub_23B78A198(&qword_27E181058, &qword_27E181050, &unk_23B7BE530, sub_23B78A5F4);
    v52 = v75;
    sub_23B7BC5B0();
    v53 = v78;
    sub_23B7BBE80();
    sub_23B7826A0(&qword_27E181090, &qword_27E181040);
    sub_23B789618(&qword_27E180F08, MEMORY[0x277CDDB18]);
    v54 = v77;
    v55 = v63;
    sub_23B7BC3C0();
    (*(v79 + 8))(v53, v55);
    (*(v76 + 8))(v52, v54);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180EC0);
    *&v51[*(v56 + 36)] = v90;
    sub_23B782748(v48, v50, &qword_27E180E68);
    v57 = v73;
    sub_23B782748(v50, v73, &qword_27E180E58);
    sub_23B779B38(v57, v60, &qword_27E180E58);
    swift_storeEnumTagMultiPayload();
    sub_23B789218();
    sub_23B78A198(&qword_27E180EC8, &qword_27E180ED0, &unk_23B7BE288, sub_23B789560);
    sub_23B7BC090();
    v27 = v57;
    v28 = &qword_27E180E58;
  }

  return sub_23B7826E8(v27, v28);
}

uint64_t sub_23B785E38(double a1)
{
  v2 = sub_23B7BC6A0();
  v4 = v3;
  sub_23B786204(__dst);
  v26 = __dst[12];
  v27 = __dst[13];
  v28 = __dst[14];
  v29 = __dst[15];
  v22 = __dst[8];
  v23 = __dst[9];
  v24 = __dst[10];
  v25 = __dst[11];
  v18 = __dst[4];
  v19 = __dst[5];
  v20 = __dst[6];
  v21 = __dst[7];
  v14 = __dst[0];
  v15 = __dst[1];
  v16 = __dst[2];
  v17 = __dst[3];
  v30[12] = __dst[12];
  v30[13] = __dst[13];
  v30[14] = __dst[14];
  v30[15] = __dst[15];
  v30[8] = __dst[8];
  v30[9] = __dst[9];
  v30[10] = __dst[10];
  v30[11] = __dst[11];
  v30[4] = __dst[4];
  v30[5] = __dst[5];
  v30[6] = __dst[6];
  v30[7] = __dst[7];
  v30[0] = __dst[0];
  v30[1] = __dst[1];
  v30[2] = __dst[2];
  v30[3] = __dst[3];
  sub_23B779B38(&v14, __src, &qword_27E181098);
  sub_23B7826E8(v30, &qword_27E181098);
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  LOBYTE(__dst[0]) = 0;
  sub_23B7BC6A0();
  sub_23B7BBD80();
  *&v12[3] = *&v12[27];
  *&v12[11] = *&v12[35];
  *&v12[19] = v13;
  *&__src[0] = v2;
  *(&__src[0] + 1) = v4;
  __src[13] = v43;
  __src[14] = v44;
  __src[15] = v45;
  __src[16] = v46;
  __src[9] = v39;
  __src[10] = v40;
  __src[11] = v41;
  __src[12] = v42;
  __src[5] = v35;
  __src[6] = v36;
  __src[7] = v37;
  __src[8] = v38;
  __src[1] = v31;
  __src[2] = v32;
  __src[3] = v33;
  __src[4] = v34;
  *&__src[17] = 0x3FF0000000000000;
  WORD4(__src[17]) = 0;
  *(&__src[17] + 10) = *v12;
  *(&__src[18] + 10) = *&v12[8];
  *(&__src[19] + 10) = *&v12[16];
  *(&__src[20] + 1) = *(&v13 + 1);
  sub_23B7A1250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810A0);
  result = swift_allocObject();
  *(result + 16) = xmmword_23B7BD9E0;
  v6 = a1 * 100.0;
  if (COERCE__INT64(fabs(a1 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    v7 = result;
    *&__dst[0] = v6;
    v8 = sub_23B7BCC60();
    v10 = v9;
    v7[7] = MEMORY[0x277D837D0];
    v7[8] = sub_23B78A738();
    v7[4] = v8;
    v7[5] = v10;
    sub_23B7BC800();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181068);
    sub_23B78A5F4();
    sub_23B78A78C();
    sub_23B7BC410();

    memcpy(__dst, __src, sizeof(__dst));
    return sub_23B7826E8(__dst, &qword_27E181068);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_23B786204@<X0>(uint64_t a1@<X8>)
{
  sub_23B7BC4D0();
  v16 = sub_23B7BC4E0();

  sub_23B7BC340();
  sub_23B7BBD00();
  if (qword_27E180850 != -1)
  {
    swift_once();
  }

  v14 = qword_27E184EF0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);

  sub_23B7BC340();
  sub_23B7BBD00();
  *(&v13 + 1) = sub_23B7BC4B0();
  *&v13 = swift_getKeyPath();
  MEMORY[0x28223BE20](v13);
  sub_23B7BC340();
  v2 = sub_23B7BC4B0();
  v3 = swift_getKeyPath();
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v32 = v22;
  v33 = v23;
  *&v37 = KeyPath;
  *(&v37 + 1) = v14;
  v41 = v20;
  v42 = v21;
  v39 = v18;
  v40 = v19;
  v38 = v17;
  v43 = v13;
  *a1 = v16;
  v4 = v32;
  *(a1 + 24) = v33;
  *(a1 + 8) = v4;
  v5 = v34;
  v6 = v35;
  v7 = v36;
  *(a1 + 88) = v37;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  v8 = v38;
  *(a1 + 120) = v39;
  *(a1 + 104) = v8;
  v9 = v40;
  v10 = v41;
  v11 = v42;
  *(a1 + 184) = v43;
  *(a1 + 168) = v11;
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 200) = v27;
  *(a1 + 208) = v28;
  *(a1 + 216) = v29;
  *(a1 + 224) = v30;
  *(a1 + 232) = v31;
  *(a1 + 240) = v3;
  *(a1 + 248) = v2;

  sub_23B779B38(&v32, v45, &qword_27E1810B8);
  sub_23B779B38(&v38, v45, &qword_27E1810B8);
  sub_23B78A804(v27, v28, v29, v30, v31);

  sub_23B78A81C(v27, v28, v29, v30, v31);

  v44[2] = v19;
  v44[3] = v20;
  v44[4] = v21;
  v44[0] = v17;
  v44[1] = v18;
  v44[5] = v13;
  sub_23B7826E8(v44, &qword_27E1810B8);
  v45[2] = v24;
  v45[3] = v25;
  v45[4] = v26;
  v45[0] = v22;
  v45[1] = v23;
  v46 = KeyPath;
  v47 = v14;
  sub_23B7826E8(v45, &qword_27E1810B8);
}

uint64_t sub_23B786694()
{
  v0 = sub_23B7BC010();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277CE0118], v0);
  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  sub_23B7BC320();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_23B7867E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for Style.CapsuleButtonStyle();
  MEMORY[0x28223BE20](v3);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E90);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v43 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E88);
  MEMORY[0x28223BE20](v48);
  v51 = &v43 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E78);
  MEMORY[0x28223BE20](v50);
  v53 = &v43 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E68);
  MEMORY[0x28223BE20](v52);
  v54 = &v43 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180EE0);
  MEMORY[0x28223BE20](v56);
  v55 = &v43 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180ED0);
  MEMORY[0x28223BE20](v57);
  v58 = &v43 - v11;
  v12 = sub_23B7BBFA0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  if (*(v1 + 8) == 1)
  {
    v61[0] = *v1;
  }

  else
  {
    v44 = v14;

    sub_23B7BCA10();
    v18 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v17, 0);
    (*(v13 + 8))(v16, v44);
    LOBYTE(v17) = v61[0];
  }

  LOBYTE(v60[0]) = v17;
  type metadata accessor for OfferView();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  sub_23B7BBD30();
  sub_23B776248(v60, v70, v62[0] / 100.0);
  v19 = v70[23];
  v20 = v70[24];
  v21 = v71;
  MEMORY[0x28223BE20](v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0);
  sub_23B78A2B8();
  v23 = v45;
  sub_23B7BC5B0();

  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
  swift_storeEnumTagMultiPayload();
  v24 = v5 + v3[5];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(v5 + v3[6]) = v21;
  v25 = (v5 + v3[7]);
  v26 = *&v70[21];
  *v25 = *&v70[19];
  v25[1] = v26;
  *(v5 + v3[8]) = v19;
  *(v5 + v3[9]) = v20;
  sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
  sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
  v27 = v51;
  v28 = v49;
  sub_23B7BC3D0();
  sub_23B78A3D0(v5);
  (*(v47 + 8))(v23, v28);
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = 1;
  v31 = (v27 + *(v48 + 36));
  *v31 = KeyPath;
  v31[1] = sub_23B78ABC8;
  v31[2] = v30;
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v32 = v53;
  sub_23B782748(v27, v53, &qword_27E180E88);
  v33 = (v32 + *(v50 + 36));
  v34 = v68;
  v33[4] = v67;
  v33[5] = v34;
  v33[6] = v69;
  v35 = v64;
  *v33 = v63;
  v33[1] = v35;
  v36 = v66;
  v33[2] = v65;
  v33[3] = v36;
  v37 = v32;
  v38 = v54;
  sub_23B782748(v37, v54, &qword_27E180E78);
  *(v38 + *(v52 + 36)) = 0;
  v72 = *&v70[8];
  sub_23B787D34(v70, v2, v60);
  *&v60[31] = v72;
  memcpy(v61, v60, sizeof(v61));
  v39 = v55;
  sub_23B782748(v38, v55, &qword_27E180E68);
  memcpy((v39 + *(v56 + 36)), v61, 0x108uLL);
  memcpy(v62, v60, sizeof(v62));
  sub_23B779B38(v61, &v59, &qword_27E180EF0);
  sub_23B7826E8(v62, &qword_27E180EF0);
  sub_23B789560();
  v40 = v58;
  sub_23B7BC420();
  sub_23B7826E8(v39, &qword_27E180EE0);
  v60[0] = sub_23B7A1250();
  v60[1] = v41;
  sub_23B78A78C();
  sub_23B7BBE60();

  return sub_23B7826E8(v40, &qword_27E180ED0);
}

uint64_t sub_23B7870E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for Style.CapsuleButtonStyle();
  MEMORY[0x28223BE20](v3);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E90);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v45 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E88);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E78);
  MEMORY[0x28223BE20](v49);
  v52 = &v45 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180E68);
  MEMORY[0x28223BE20](v51);
  v54 = &v45 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181018);
  MEMORY[0x28223BE20](v53);
  v55 = &v45 - v10;
  v11 = sub_23B7BBFA0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(v2 + 8) == 1)
  {
    LOBYTE(v57) = *v2;
  }

  else
  {

    sub_23B7BCA10();
    v16 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v15, 0);
    (*(v12 + 8))(v14, v11);
    LOBYTE(v15) = v57;
  }

  LOBYTE(v71) = v15;
  type metadata accessor for OfferView();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  sub_23B7BBD30();
  sub_23B776248(&v71, &v64, v64 / 100.0);
  v17 = v67;
  v18 = v68;
  v19 = v70;
  MEMORY[0x28223BE20](v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180FF0);
  sub_23B78A2B8();
  v21 = v45;
  sub_23B7BC5B0();

  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
  swift_storeEnumTagMultiPayload();
  v22 = v5 + v3[5];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *(v5 + v3[6]) = v19;
  v23 = (v5 + v3[7]);
  v24 = v66;
  *v23 = v65;
  v23[1] = v24;
  *(v5 + v3[8]) = v17;
  *(v5 + v3[9]) = v18;
  sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
  sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
  v25 = v50;
  v26 = v48;
  sub_23B7BC3D0();
  sub_23B78A3D0(v5);
  (*(v46 + 8))(v21, v26);
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  *(v28 + 16) = 1;
  v29 = (v25 + *(v47 + 36));
  *v29 = KeyPath;
  v29[1] = sub_23B78ABC8;
  v29[2] = v28;
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v30 = v52;
  sub_23B782748(v25, v52, &qword_27E180E88);
  v31 = (v30 + *(v49 + 36));
  v32 = v62;
  v31[4] = v61;
  v31[5] = v32;
  v31[6] = v63;
  v33 = v58;
  *v31 = v57;
  v31[1] = v33;
  v34 = v60;
  v31[2] = v59;
  v31[3] = v34;
  v35 = v54;
  sub_23B782748(v30, v54, &qword_27E180E78);
  *(v35 + *(v51 + 36)) = 0;
  sub_23B7BC4D0();
  v36 = sub_23B7BC4E0();

  LOBYTE(v30) = sub_23B7BC220();
  v37 = v35;
  v38 = v55;
  sub_23B782748(v37, v55, &qword_27E180E68);
  v39 = v38 + *(v53 + 36);
  *v39 = v36;
  *(v39 + 8) = v30;
  v71 = v69;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181000);
  v41 = v56;
  v42 = v56 + *(v40 + 36);
  sub_23B788148(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181038);
  *(v42 + *(v43 + 36)) = v71;
  return sub_23B782748(v38, v41, &qword_27E181018);
}

uint64_t sub_23B7878F4@<X0>(void *a1@<X8>)
{
  v2 = sub_23B7BC0B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B78A25C();
  sub_23B7BC0F0();
  sub_23B7BBDA0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_23B787A10(double *a1, double *a2, uint64_t a3)
{
  v6 = sub_23B7BBFA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v34 = a1[2];
  v35 = v10;
  v12 = type metadata accessor for OfferView();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  sub_23B7BBD30();
  v13 = a2[20];
  v33 = a2[19];
  v15 = a2[21];
  v14 = a2[22];
  v16 = a2[23];
  v17 = sub_23B776798(v36[0]);
  v19 = v18;

  v20 = a2[24];
  v21 = *a3;
  if (*(a3 + 8) == 1)
  {
    v22 = *a3;
  }

  else
  {

    sub_23B7BCA10();
    v23 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v21, 0);
    (*(v7 + 8))(v9, v6);
    v22 = LOBYTE(v36[0]);
  }

  v24 = a3 + *(v12 + 24);
  v25 = *v24;
  if (*(v24 + 16) == 1)
  {
  }

  else
  {

    sub_23B7BCA10();
    v26 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B788C00();
    (*(v7 + 8))(v9, v6);
    v25 = v36[0];
  }

  v27 = v14 + v13 + ceil(v17);
  if (v27 <= v16)
  {
    v27 = v16;
  }

  if ((v22 - 1) >= 3)
  {
    v28 = v11 + v34 - v27;
  }

  else
  {
    v28 = v11;
  }

  v29 = v15 + v33 + ceil(v19);
  v36[0] = v28;
  v36[1] = v35;
  if (v29 > v20)
  {
    v30 = v29;
  }

  else
  {
    v30 = v20;
  }

  v36[2] = v27;
  v36[3] = v30;
  (*&v25)(v36);
}

double sub_23B787D34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OfferView();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = a1;
  sub_23B7BC340();
  sub_23B7BBD00();
  if (qword_27E180850 != -1)
  {
    swift_once();
  }

  v8 = qword_27E184EF0;
  KeyPath = swift_getKeyPath();
  v9 = a2 + *(v6 + 32);
  v10 = *v9;
  v11 = *(v9 + 8);
  LOBYTE(v30) = *v9;
  *(&v30 + 1) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810C0);
  sub_23B7BC570();
  if (v33)
  {
    v12 = 6.28318531;
  }

  else
  {
    v12 = 0.0;
  }

  sub_23B7BC730();
  v14 = v13;
  v16 = v15;
  sub_23B7BC6D0();
  v26 = sub_23B7BC6C0();

  LOBYTE(v30) = v10;
  *(&v30 + 1) = v11;
  sub_23B7BC570();
  v17 = v33;
  sub_23B7819C8(a2, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v19 = swift_allocObject();
  sub_23B788C0C(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_23B7819C8(a2, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  sub_23B788C0C(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18);
  sub_23B7BC6A0();
  sub_23B7BBD80();
  v21 = v37;
  *(a3 + 32) = v36;
  *(a3 + 48) = v21;
  *(a3 + 64) = v38;
  v22 = v35;
  *a3 = v34;
  *(a3 + 16) = v22;
  *(a3 + 80) = KeyPath;
  *(a3 + 88) = v8;
  *(a3 + 96) = v12;
  *(a3 + 104) = v14;
  *(a3 + 112) = v16;
  *(a3 + 120) = v26;
  *(a3 + 128) = v17;
  *(a3 + 136) = sub_23B78A840;
  *(a3 + 144) = v19;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 184) = sub_23B78AA14;
  *(a3 + 192) = v20;
  v23 = v31;
  *(a3 + 200) = v30;
  *(a3 + 216) = v23;
  result = v32[0];
  *(a3 + 232) = *v32;
  return result;
}

uint64_t sub_23B7880D4()
{
  type metadata accessor for OfferView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810C0);
  return sub_23B7BC580();
}

uint64_t sub_23B788148@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_23B7BC550();
  sub_23B7BC2A0();
  v6 = sub_23B7BC280();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_23B7BC2B0();
  sub_23B7826E8(v4, &qword_27E180D10);
  KeyPath = swift_getKeyPath();
  v12[3] = v5;
  v12[4] = KeyPath;
  v12[5] = v7;
  v12[1] = sub_23B7A1250();
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810C8);
  sub_23B78AA88();
  sub_23B78A78C();
  sub_23B7BC400();

  v10 = sub_23B7BC4B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1810D8);
  *(a1 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_23B788348@<X0>(uint64_t a1@<X8>)
{
  sub_23B78A78C();

  v2 = sub_23B7BC380();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t (*EnvironmentValues.reportOfferButtonFrame.getter())(double, double, double, double)
{
  sub_23B78997C();
  sub_23B7BBFB0();
  *(swift_allocObject() + 16) = v1;
  return sub_23B789A08;
}

double sub_23B788470@<D0>(_OWORD *a1@<X8>)
{
  sub_23B78997C();
  sub_23B7BBFB0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_23B7884C0()
{
  sub_23B78997C();

  return sub_23B7BBFC0();
}

uint64_t EnvironmentValues.reportOfferButtonFrame.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_23B78997C();
  return sub_23B7BBFC0();
}

void (*EnvironmentValues.reportOfferButtonFrame.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_23B78997C();
  sub_23B7BBFB0();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_23B78ABB0;
  *(v4 + 8) = v5;
  return sub_23B78865C;
}

void sub_23B78865C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_23B78ABCC;
    v2[3] = v5;

    sub_23B7BBFC0();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_23B78ABCC;
    v2[3] = v6;
    sub_23B7BBFC0();
  }

  free(v2);
}

uint64_t sub_23B788748@<X0>(_BYTE *a1@<X8>)
{
  sub_23B78AB48();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t sub_23B788798@<X0>(_BYTE *a1@<X8>)
{
  sub_23B78AB48();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for OfferView()
{
  result = qword_27E180F68;
  if (!qword_27E180F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B788914(uint64_t a1)
{
  v2 = sub_23B7BC050();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23B7BBEF0();
}

double sub_23B7889E0@<D0>(_OWORD *a1@<X8>)
{
  sub_23B78997C();
  sub_23B7BBFB0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_23B788A34()
{
  v1 = type metadata accessor for OfferView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 237) & ~v2;
  v5 = v0 + v4;
  sub_23B779D74(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23B7BC050();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_23B788C00();

  v8 = v1[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v10(v5 + v1[10], v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_23B788C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B788C70(double *a1)
{
  v3 = *(type metadata accessor for OfferView() - 8);
  v4 = v1 + ((*(v3 + 80) + 237) & ~*(v3 + 80));

  return sub_23B787A10(a1, (v1 + 16), v4);
}

unint64_t sub_23B788CE4()
{
  result = qword_27E180DD8;
  if (!qword_27E180DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180DD0);
    sub_23B7890E4(&qword_27E180DE0, &qword_27E180DE8, &unk_23B7BE218, sub_23B788DC8);
    sub_23B7826A0(&qword_27E180F40, &qword_27E180F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180DD8);
  }

  return result;
}

unint64_t sub_23B788DC8()
{
  result = qword_27E180DF0;
  if (!qword_27E180DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180DF8);
    sub_23B788E54();
    sub_23B7897A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180DF0);
  }

  return result;
}

unint64_t sub_23B788E54()
{
  result = qword_27E180E00;
  if (!qword_27E180E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E08);
    sub_23B788EE0();
    sub_23B789660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E00);
  }

  return result;
}

unint64_t sub_23B788EE0()
{
  result = qword_27E180E10;
  if (!qword_27E180E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E18);
    sub_23B78902C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180EF8);
    sub_23B7BBE90();
    sub_23B7826A0(&qword_27E180F00, &qword_27E180EF8);
    sub_23B789618(&qword_27E180F08, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E10);
  }

  return result;
}

unint64_t sub_23B78902C()
{
  result = qword_27E180E20;
  if (!qword_27E180E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E28);
    sub_23B7890E4(&qword_27E180E30, &qword_27E180E38, &unk_23B7BE240, sub_23B789160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E20);
  }

  return result;
}

uint64_t sub_23B7890E4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B789160()
{
  result = qword_27E180E40;
  if (!qword_27E180E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E48);
    sub_23B789218();
    sub_23B78A198(&qword_27E180EC8, &qword_27E180ED0, &unk_23B7BE288, sub_23B789560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E40);
  }

  return result;
}

unint64_t sub_23B789218()
{
  result = qword_27E180E50;
  if (!qword_27E180E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E58);
    sub_23B7892D0();
    sub_23B7826A0(&qword_27E180EB8, &qword_27E180EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E50);
  }

  return result;
}

unint64_t sub_23B7892D0()
{
  result = qword_27E180E60;
  if (!qword_27E180E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E68);
    sub_23B78935C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E60);
  }

  return result;
}

unint64_t sub_23B78935C()
{
  result = qword_27E180E70;
  if (!qword_27E180E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E78);
    sub_23B7893E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E70);
  }

  return result;
}

unint64_t sub_23B7893E8()
{
  result = qword_27E180E80;
  if (!qword_27E180E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E90);
    type metadata accessor for Style.CapsuleButtonStyle();
    sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
    sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_23B7826A0(&qword_27E180EA8, &qword_27E180EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180E80);
  }

  return result;
}

unint64_t sub_23B789560()
{
  result = qword_27E180ED8;
  if (!qword_27E180ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180EE0);
    sub_23B7892D0();
    sub_23B7826A0(&qword_27E180EE8, &qword_27E180EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180ED8);
  }

  return result;
}

uint64_t sub_23B789618(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B789660()
{
  result = qword_27E180F10;
  if (!qword_27E180F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180F18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E90);
    type metadata accessor for Style.CapsuleButtonStyle();
    sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
    sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F10);
  }

  return result;
}

unint64_t sub_23B7897A4()
{
  result = qword_27E180F20;
  if (!qword_27E180F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180F28);
    sub_23B789830();
    sub_23B7893E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F20);
  }

  return result;
}

unint64_t sub_23B789830()
{
  result = qword_27E180F30;
  if (!qword_27E180F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180E90);
    type metadata accessor for Style.CapsuleButtonStyle();
    sub_23B7826A0(&qword_27E180E98, &qword_27E180E90);
    sub_23B789618(&qword_27E180EA0, type metadata accessor for Style.CapsuleButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F30);
  }

  return result;
}

unint64_t sub_23B78997C()
{
  result = qword_27E180F50;
  if (!qword_27E180F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F50);
  }

  return result;
}

uint64_t sub_23B7899D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B789A10(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 16);
  *v7 = a1;
  *&v7[1] = a2;
  *&v7[2] = a3;
  *&v7[3] = a4;
  return v5(v7);
}

unint64_t sub_23B789A80()
{
  result = qword_27E180F58;
  if (!qword_27E180F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180F58);
  }

  return result;
}

uint64_t sub_23B789B04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23B789C5C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180F60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_23B789DA0()
{
  sub_23B78A01C(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23B789ECC();
    if (v1 <= 0x3F)
    {
      sub_23B789F24();
      if (v2 <= 0x3F)
      {
        sub_23B789F88();
        if (v3 <= 0x3F)
        {
          sub_23B78A01C(319, &qword_27E180F90, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_23B77DA6C();
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

void sub_23B789ECC()
{
  if (!qword_27E180C20)
  {
    sub_23B7BC050();
    v0 = sub_23B7BBCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180C20);
    }
  }
}

void sub_23B789F24()
{
  if (!qword_27E180F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180F80);
    v0 = sub_23B7BBCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180F78);
    }
  }
}

void sub_23B789F88()
{
  if (!qword_27E180F88)
  {
    type metadata accessor for OfferViewModel();
    sub_23B789618(&qword_27E180DC8, type metadata accessor for OfferViewModel);
    v0 = sub_23B7BBE30();
    if (!v1)
    {
      atomic_store(v0, &qword_27E180F88);
    }
  }
}

void sub_23B78A01C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for OfferView.Space(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for OfferView.Space(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23B78A198(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_23B789618(&qword_27E180C68, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B78A25C()
{
  result = qword_27E180FA8;
  if (!qword_27E180FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180FA8);
  }

  return result;
}

unint64_t sub_23B78A2B8()
{
  result = qword_27E180FF8;
  if (!qword_27E180FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180FF0);
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E180FF8);
  }

  return result;
}

uint64_t sub_23B78A378@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B7BBF50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B78A3D0(uint64_t a1)
{
  v2 = type metadata accessor for Style.CapsuleButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B78A478()
{
  result = qword_27E181008;
  if (!qword_27E181008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181000);
    sub_23B78A530();
    sub_23B7826A0(&qword_27E181030, &qword_27E181038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181008);
  }

  return result;
}

unint64_t sub_23B78A530()
{
  result = qword_27E181010;
  if (!qword_27E181010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181018);
    sub_23B7892D0();
    sub_23B7826A0(&qword_27E181020, &qword_27E181028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181010);
  }

  return result;
}

unint64_t sub_23B78A5F4()
{
  result = qword_27E181060;
  if (!qword_27E181060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181068);
    sub_23B78A680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181060);
  }

  return result;
}

unint64_t sub_23B78A680()
{
  result = qword_27E181070;
  if (!qword_27E181070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181078);
    sub_23B7826A0(&qword_27E181080, &qword_27E181088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181070);
  }

  return result;
}

unint64_t sub_23B78A738()
{
  result = qword_27E1810A8;
  if (!qword_27E1810A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1810A8);
  }

  return result;
}

unint64_t sub_23B78A78C()
{
  result = qword_27E1810B0;
  if (!qword_27E1810B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1810B0);
  }

  return result;
}

uint64_t sub_23B78A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_23B78A81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t objectdestroy_68Tm()
{
  v1 = type metadata accessor for OfferView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_23B779D74(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23B7BC050();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_23B788C00();

  v8 = v1[9];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v10(v5 + v1[10], v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

unint64_t sub_23B78AA88()
{
  result = qword_27E1810D0;
  if (!qword_27E1810D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1810C8);
    sub_23B7826A0(&qword_27E180CF0, &qword_27E180CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1810D0);
  }

  return result;
}

unint64_t sub_23B78AB48()
{
  result = qword_27E1810E0;
  if (!qword_27E1810E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1810E0);
  }

  return result;
}

void (*ManagedAppCellViewModel.name.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78AD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ManagedAppCellViewModel.$name.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$name.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__name;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

uint64_t sub_23B78B180()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return v1;
}

uint64_t sub_23B78B200@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B78B294()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

uint64_t sub_23B78B32C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.subtitle.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78B464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ManagedAppCellViewModel.$subtitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$subtitle.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181110);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__subtitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181108);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

uint64_t ManagedAppCellViewModel.iconImageURL.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();
}

uint64_t sub_23B78B908()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();
}

uint64_t sub_23B78B988(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_23B779B38(a1, &v9 - v6, &qword_27E180C18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B779B38(v7, v5, &qword_27E180C18);

  sub_23B7BBC30();
  return sub_23B7826E8(v7, &qword_27E180C18);
}

uint64_t ManagedAppCellViewModel.iconImageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B779B38(a1, v4, &qword_27E180C18);

  sub_23B7BBC30();
  return sub_23B7826E8(a1, &qword_27E180C18);
}

void (*ManagedAppCellViewModel.iconImageURL.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78BC6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181130);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ManagedAppCellViewModel.$iconImageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181130);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$iconImageURL.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181130);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__iconImageURL;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181128);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

uint64_t ManagedAppCellViewModel.style.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();
}

uint64_t sub_23B78C110@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a1 = v3;
  return result;
}

uint64_t sub_23B78C194()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

uint64_t ManagedAppCellViewModel.style.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.style.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78C33C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181148);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ManagedAppCellViewModel.$style.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181148);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$style.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181148);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__style;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181140);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

uint64_t ManagedAppCellViewModel.offerState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();
}

double sub_23B78C7E0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_23B78C86C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B781F9C(v1, v2, v3);

  return sub_23B7BBC30();
}

uint64_t ManagedAppCellViewModel.offerState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.offerState.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B78CA28;
}

uint64_t sub_23B78CA48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181160);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ManagedAppCellViewModel.$offerState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181160);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$offerState.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181160);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__offerState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181158);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

void (*ManagedAppCellViewModel.isInitial.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78CF8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ManagedAppCellViewModel.$isInitial.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$isInitial.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isInitial;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B78D3B8;
}

uint64_t ManagedAppCellViewModel.packageDisclaimer.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  if (v1 == 1)
  {
    return sub_23B7A1250();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B78D474()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  return v1;
}

uint64_t sub_23B78D4F4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a1 = v3;
  return result;
}

uint64_t sub_23B78D588()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

uint64_t sub_23B78D610()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.isPackage.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78D73C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ManagedAppCellViewModel.$isPackage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$isPackage.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181178);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__isPackage;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181170);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

uint64_t ManagedAppCellViewModel.binaryCompatibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();
}

uint64_t sub_23B78DBE0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23B7BBC20();

  *a1 = v3;
  return result;
}

uint64_t sub_23B78DC64()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

uint64_t ManagedAppCellViewModel.binaryCompatibility.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23B7BBC30();
}

void (*ManagedAppCellViewModel.binaryCompatibility.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23B7BBC10();
  return sub_23B797594;
}

uint64_t sub_23B78DE0C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_23B7BBBF0();
  return swift_endAccess();
}

uint64_t sub_23B78DE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_23B7BBBF0();
  return swift_endAccess();
}

uint64_t sub_23B78DF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181198);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ManagedAppCellViewModel.$binaryCompatibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181198);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190);
  sub_23B7BBC00();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ManagedAppCellViewModel.$binaryCompatibility.modify(uint64_t *a1))(uint64_t, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181198);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel__binaryCompatibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181190);
  sub_23B7BBBF0();
  swift_endAccess();
  return sub_23B797598;
}

uint64_t ManagedAppCellViewModel.offerAction.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31_ManagedAppDistribution_SwiftUI23ManagedAppCellViewModel_offerAction);

  return v1;
}

uint64_t sub_23B78E368()
{
  v1 = 0;
  result = MEMORY[0x23EEA96E0](&v1, 8);
  qword_27E1810E8 = v1 << 32;
  qword_27E1810F0 = 0;
  byte_27E1810F8 = 0;
  return result;
}

void *ManagedAppCellViewModel.__allocating_init(exportedObject:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_23B7945D4(a1);

  return v2;
}

void *ManagedAppCellViewModel.init(exportedObject:)(uint64_t a1)
{
  v1 = sub_23B7945D4(a1);

  return v1;
}

uint64_t sub_23B78E42C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8))
  {
    *a2 = *(result + 16);
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_23B78E44C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v51 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v50 = &v47[-v7];
  v8 = sub_23B7BBAF0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47[-v12];
  v49 = sub_23B7BBA50();
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181250);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v47[-v17];
  v19 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v47[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v53 = &v47[-v24];
  v25 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23B779B38(a1, v18, &qword_27E181250);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      return sub_23B7826E8(v18, &qword_27E181250);
    }

    else
    {
      v48 = v25;
      v27 = v53;
      sub_23B797398(v18, v53);
      sub_23B7973FC(v27, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v23;
        v29 = v23[1];
        v30 = v23[2];
        v31 = v23[3];
        swift_getKeyPath();
        swift_getKeyPath();
        *&v55 = v28;
        *(&v55 + 1) = v29;

        sub_23B7BBC30();
        swift_getKeyPath();
        swift_getKeyPath();
        *&v55 = v30;
        *(&v55 + 1) = v31;

        sub_23B7BBC30();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v55) = 1;

        sub_23B7BBC30();
        swift_getKeyPath();
        swift_getKeyPath();
        v55 = xmmword_23B7BE650;
        v56 = 2;
        sub_23B7BBC30();
        v32 = v27;
      }

      else
      {
        v33 = v49;
        (*(v52 + 32))(v15, v23, v49);
        v34 = sub_23B7BB9D0();
        v36 = v35;
        swift_getKeyPath();
        swift_getKeyPath();
        *&v55 = v34;
        *(&v55 + 1) = v36;

        sub_23B7BBC30();
        sub_23B7BB9B0();
        sub_23B7BBA30();
        sub_23B7AC6B0(v13, v10, &v55);
        LOBYTE(v34) = v55;
        swift_getKeyPath();
        swift_getKeyPath();
        v54 = v34;

        sub_23B7BBC30();
        if (v48 == 2)
        {
          v37 = sub_23B7BBA10();
        }

        else
        {
          v37 = sub_23B7BBA40();
        }

        v39 = v53;
        v40 = v15;
        if (v38)
        {
          v41 = v37;
        }

        else
        {
          v41 = 0;
        }

        if (v38)
        {
          v42 = v38;
        }

        else
        {
          v42 = 0xE000000000000000;
        }

        v43 = HIBYTE(v42) & 0xF;
        if ((v42 & 0x2000000000000000) == 0)
        {
          v43 = v41 & 0xFFFFFFFFFFFFLL;
        }

        if (!v43)
        {

          v44 = *(sub_23B7BBA00() + 16);

          if (v44)
          {
            *&v55 = sub_23B7BBA00();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181368);
            sub_23B7826A0(&qword_27E181370, &qword_27E181368);
            v41 = sub_23B7BC880();
            v42 = v45;
          }

          else
          {
            v42 = 0xE100000000000000;
            v41 = 32;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        *&v55 = v41;
        *(&v55 + 1) = v42;

        sub_23B7BBC30();
        if (v48 == 2 && qword_27E180840 != -1)
        {
          swift_once();
        }

        v46 = v50;
        sub_23B7BBA20();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23B779B38(v46, v51, &qword_27E180C18);

        sub_23B7BBC30();
        sub_23B7826E8(v46, &qword_27E180C18);
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v55) = 0;
        sub_23B7BBC30();
        (*(v52 + 8))(v40, v33);
        v32 = v39;
      }

      return sub_23B79733C(v32);
    }
  }

  return result;
}

uint64_t sub_23B78EC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B7BB990();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181248);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_23B779B38(a1, &v15 - v12, &qword_27E181248);
  result = (*(v5 + 48))(v13, 1, v4);
  if (result == 1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 16))(v8, v10, v4);
    ManagedContentOfferState.init(appState:)(v8, a2);
    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_23B78EE14@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181248);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_23B7BB990();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181250);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_23B7BBA50();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7BBBC0();
  v17 = type metadata accessor for ManagedAppCellViewModel.Content(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    sub_23B7826E8(v12, &qword_27E181250);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23B79733C(v12);
  }

  else
  {
    v26 = a2;
    v25 = *(v14 + 32);
    v25(v16, v12, v13);
    sub_23B7BBBC0();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v20 = *(v7 + 32);
      v20(v9, v5, v6);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1812B8);
      v22 = *(v21 + 48);
      v23 = v26;
      v25(v26, v16, v13);
      v20(&v23[v22], v9, v6);
      return (*(*(v21 - 8) + 56))(v23, 0, 1, v21);
    }

    (*(v14 + 8))(v16, v13);
    sub_23B7826E8(v5, &qword_27E181248);
    a2 = v26;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1812B8);
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t sub_23B78F1F0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1812B8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v44 = sub_23B7BB990();
  v9 = *(v44 - 8);
  v42 = v9[8];
  v10 = MEMORY[0x28223BE20](v44);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v36 - v12;
  v13 = sub_23B7BBA50();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v46 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_23B779B38(a1, v8, &qword_27E1812B8);
  v19 = *(v6 + 56);
  v41 = *(v14 + 32);
  v39 = v18;
  v41(v18, v8, v13);
  v38 = v9[4];
  v20 = &v8[v19];
  v21 = v44;
  v22 = v45;
  v38(v45, v20, v44);
  v23 = sub_23B7BC930();
  (*(*(v23 - 8) + 56))(v47, 1, 1, v23);
  v24 = v9;
  v37 = v9;
  v25 = v9[2];
  v26 = v40;
  v25(v40, v22, v21);
  (*(v14 + 16))(v46, v18, v13);
  sub_23B7BC900();
  v27 = sub_23B7BC8F0();
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = (v42 + *(v14 + 80) + v28) & ~*(v14 + 80);
  v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v27;
  *(v31 + 24) = v32;
  v33 = v26;
  v34 = v44;
  v38((v31 + v28), v33, v44);
  v41((v31 + v29), v46, v13);
  *(v31 + v30) = v43;
  sub_23B778154(0, 0, v47, &unk_23B7BEAB0, v31);

  (v37[1])(v45, v34);
  return (*(v14 + 8))(v39, v13);
}

uint64_t sub_23B78F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_23B7BBA50();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_23B7BB990();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  sub_23B7BC900();
  v5[19] = sub_23B7BC8F0();
  v9 = sub_23B7BC8D0();
  v5[20] = v9;
  v5[21] = v8;

  return MEMORY[0x2822009F8](sub_23B78F7B8, v9, v8);
}

uint64_t sub_23B78F7B8()
{
  v102 = v0;
  if (qword_27E180870 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = sub_23B7BBB30();
  *(v0 + 176) = __swift_project_value_buffer(v9, qword_27E184F18);
  v10 = *(v3 + 16);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v97 = v10;
  v10(v1, v8, v2);
  v11 = *(v6 + 16);
  *(v0 + 200) = v11;
  *(v0 + 208) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v7, v5);
  v12 = sub_23B7BBB10();
  v13 = sub_23B7BCA20();
  if (os_log_type_enabled(v12, v13))
  {
    v92 = v13;
    v14 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v99 = v91;
    *v14 = 136315650;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v15 = qword_27E1810E8;
    log = v12;
    if (byte_27E1810F8 == 1)
    {
      v16 = qword_27E1810F0;
    }

    else
    {
      v25 = HIDWORD(qword_27E1810E8);
      v100 = 0;
      v101 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v26 = 4144959;
      }

      else
      {
        v26 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v26, 0xE300000000000000);

      *(v0 + 304) = v25;
      sub_23B7797D8();
      v27 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v27);

      v15 = v100;
      v16 = v101;
    }

    v28 = *(v0 + 144);
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    v31 = *(v0 + 96);
    v32 = *(v0 + 72);
    v90 = *(v0 + 64);
    v33 = sub_23B77C020(v15, v16, &v99);

    *(v14 + 4) = v33;
    *(v14 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8]);
    v34 = sub_23B7BCC60();
    v36 = v35;
    v24 = *(v29 + 8);
    v24(v28, v30);
    v37 = sub_23B77C020(v34, v36, &v99);

    *(v14 + 14) = v37;
    *(v14 + 22) = 2080;
    v38 = sub_23B7BB9D0();
    v40 = v39;
    v23 = *(v32 + 8);
    v23(v31, v90);
    v41 = sub_23B77C020(v38, v40, &v99);

    *(v14 + 24) = v41;
    _os_log_impl(&dword_23B774000, log, v92, "[%s] Receieved offer action for:%s on %s.", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v91, -1, -1);
    MEMORY[0x23EEA96D0](v14, -1, -1);
  }

  else
  {
    v17 = *(v0 + 144);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 96);
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);

    v23 = *(v22 + 8);
    v23(v20, v21);
    v24 = *(v18 + 8);
    v24(v17, v19);
  }

  *(v0 + 216) = v23;
  *(v0 + 224) = v24;
  v42 = *(v0 + 136);
  v43 = *(v0 + 104);
  v44 = *(v0 + 112);
  v97(v42, *(v0 + 48), v43);
  v45 = (*(v44 + 88))(v42, v43);
  if (v45 == *MEMORY[0x277CD49D8])
  {
    v24(*(v0 + 136), *(v0 + 104));
    sub_23B7BBAA0();
    *(v0 + 248) = sub_23B7BBA60();
    v46 = swift_task_alloc();
    *(v0 + 256) = v46;
    *v46 = v0;
    v46[1] = sub_23B790774;
    v47 = *(v0 + 56);

    return MEMORY[0x282123438](v47);
  }

  if (v45 == *MEMORY[0x277CD49A0])
  {
    goto LABEL_19;
  }

  if (v45 == *MEMORY[0x277CD4998])
  {
    v24(*(v0 + 136), *(v0 + 104));
    sub_23B7BBAA0();
    *(v0 + 272) = sub_23B7BBA60();
    v61 = swift_task_alloc();
    *(v0 + 280) = v61;
    *v61 = v0;
    v61[1] = sub_23B790890;
    v62 = *(v0 + 56);

    return MEMORY[0x282123430](v62);
  }

  else
  {
    if (v45 == *MEMORY[0x277CD49C0])
    {
LABEL_19:
      v48 = *(v0 + 136);
      v49 = *(v0 + 104);

      v50 = v48;
      v51 = v49;
LABEL_20:
      v24(v50, v51);
LABEL_21:
      v52 = *(v0 + 200);
      v53 = *(v0 + 88);
      v55 = *(v0 + 56);
      v54 = *(v0 + 64);
      (*(v0 + 184))(*(v0 + 128), *(v0 + 48), *(v0 + 104));
      v52(v53, v55, v54);
      v56 = sub_23B7BBB10();
      v57 = sub_23B7BCA20();
      if (os_log_type_enabled(v56, v57))
      {
        v98 = v57;
        v58 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v99 = v96;
        *v58 = 136315650;
        if (qword_27E180830 != -1)
        {
          swift_once();
        }

        v59 = qword_27E1810E8;
        if (byte_27E1810F8 == 1)
        {
          v60 = qword_27E1810F0;
        }

        else
        {
          v69 = HIDWORD(qword_27E1810E8);
          v100 = 0;
          v101 = 0xE000000000000000;
          if (qword_27E1810E8)
          {
            v70 = 4144959;
          }

          else
          {
            v70 = 5527621;
          }

          MEMORY[0x23EEA8AE0](v70, 0xE300000000000000);

          *(v0 + 296) = v69;
          sub_23B7797D8();
          v71 = sub_23B7BC870();
          MEMORY[0x23EEA8AE0](v71);

          v59 = v100;
          v60 = v101;
        }

        v72 = *(v0 + 224);
        v73 = *(v0 + 128);
        v74 = *(v0 + 104);
        v75 = *(v0 + 88);
        v93 = *(v0 + 64);
        loga = *(v0 + 216);
        v76 = sub_23B77C020(v59, v60, &v99);

        *(v58 + 4) = v76;
        *(v58 + 12) = 2080;
        sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8]);
        v77 = sub_23B7BCC60();
        v79 = v78;
        v72(v73, v74);
        v80 = sub_23B77C020(v77, v79, &v99);

        *(v58 + 14) = v80;
        *(v58 + 22) = 2080;
        v81 = sub_23B7BB9D0();
        v83 = v82;
        (loga)(v75, v93);
        v84 = sub_23B77C020(v81, v83, &v99);

        *(v58 + 24) = v84;
        _os_log_impl(&dword_23B774000, v56, v98, "[%s] Offer action for:%s on %s completed.", v58, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23EEA96D0](v96, -1, -1);
        MEMORY[0x23EEA96D0](v58, -1, -1);
      }

      else
      {
        v64 = *(v0 + 216);
        v63 = *(v0 + 224);
        v65 = *(v0 + 128);
        v66 = *(v0 + 104);
        v67 = *(v0 + 88);
        v68 = *(v0 + 64);

        v64(v67, v68);
        v63(v65, v66);
      }

      v85 = *(v0 + 8);

      return v85();
    }

    if (v45 == *MEMORY[0x277CD49E0])
    {

      goto LABEL_21;
    }

    if (v45 != *MEMORY[0x277CD49C8])
    {
      v87 = *MEMORY[0x277CD49D0];
      v88 = v45;

      if (v88 == v87)
      {
        goto LABEL_21;
      }

      v50 = *(v0 + 136);
      v51 = *(v0 + 104);
      goto LABEL_20;
    }

    v86 = swift_task_alloc();
    *(v0 + 232) = v86;
    *v86 = v0;
    v86[1] = sub_23B790248;

    return MEMORY[0x2821233C8]();
  }
}

uint64_t sub_23B790248()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_23B7909AC;
  }

  else
  {
    v5 = sub_23B790384;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B790384()
{
  v41 = v0;

  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  (*(v0 + 184))(*(v0 + 128), *(v0 + 48), *(v0 + 104));
  v1(v2, v4, v3);
  v5 = sub_23B7BBB10();
  v6 = sub_23B7BCA20();
  if (os_log_type_enabled(v5, v6))
  {
    v37 = v6;
    v7 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v7 = 136315650;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v8 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v9 = qword_27E1810F0;
    }

    else
    {
      v16 = HIDWORD(qword_27E1810E8);
      v39 = 0;
      v40 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v17 = 4144959;
      }

      else
      {
        v17 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v17, 0xE300000000000000);

      *(v0 + 296) = v16;
      sub_23B7797D8();
      v18 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v18);

      v8 = v39;
      v9 = v40;
    }

    v19 = *(v0 + 224);
    v20 = *(v0 + 128);
    v21 = *(v0 + 104);
    v22 = *(v0 + 88);
    v34 = *(v0 + 64);
    v35 = *(v0 + 216);
    v23 = sub_23B77C020(v8, v9, &v38);

    *(v7 + 4) = v23;
    *(v7 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8]);
    v24 = sub_23B7BCC60();
    v26 = v25;
    v19(v20, v21);
    v27 = sub_23B77C020(v24, v26, &v38);

    *(v7 + 14) = v27;
    *(v7 + 22) = 2080;
    v28 = sub_23B7BB9D0();
    v30 = v29;
    v35(v22, v34);
    v31 = sub_23B77C020(v28, v30, &v38);

    *(v7 + 24) = v31;
    _os_log_impl(&dword_23B774000, v5, v37, "[%s] Offer action for:%s on %s completed.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v36, -1, -1);
    MEMORY[0x23EEA96D0](v7, -1, -1);
  }

  else
  {
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    v12 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 88);
    v15 = *(v0 + 64);

    v11(v14, v15);
    v10(v12, v13);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_23B790774()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23B790E28;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23B797584;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23B790890()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23B7912AC;
  }

  else
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_23B797584;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23B7909AC()
{
  v54 = v0;
  v1 = *(v0 + 240);
  v47 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);

  v2(v3, v8, v4);
  v9 = v1;
  v47(v5, v7, v6);
  v10 = v1;
  v11 = sub_23B7BBB10();
  v12 = sub_23B7BCA00();

  if (os_log_type_enabled(v11, v12))
  {
    log = v11;
    v13 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v13 = 136315906;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v48 = v12;
    v50 = v9;
    v14 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v15 = qword_27E1810F0;
    }

    else
    {
      v23 = HIDWORD(qword_27E1810E8);
      v52 = 0;
      v53 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v24 = 4144959;
      }

      else
      {
        v24 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v24, 0xE300000000000000);

      *(v0 + 300) = v23;
      sub_23B7797D8();
      v25 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v25);

      v14 = v52;
      v15 = v53;
    }

    v26 = *(v0 + 224);
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);
    v29 = *(v0 + 80);
    v44 = *(v0 + 64);
    v45 = *(v0 + 216);
    v30 = sub_23B77C020(v14, v15, &v51);

    *(v13 + 4) = v30;
    *(v13 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8]);
    v31 = sub_23B7BCC60();
    v33 = v32;
    v26(v27, v28);
    v34 = sub_23B77C020(v31, v33, &v51);

    *(v13 + 14) = v34;
    *(v13 + 22) = 2080;
    v35 = sub_23B7BB9D0();
    v37 = v36;
    v45(v29, v44);
    v38 = sub_23B77C020(v35, v37, &v51);

    *(v13 + 24) = v38;
    *(v13 + 32) = 2080;
    swift_getErrorValue();
    v39 = sub_23B7BCCC0();
    v41 = sub_23B77C020(v39, v40, &v51);

    *(v13 + 34) = v41;
    _os_log_impl(&dword_23B774000, log, v48, "[%s] Offer action for:%s on %s failed. %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v46, -1, -1);
    MEMORY[0x23EEA96D0](v13, -1, -1);
  }

  else
  {
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = v11;
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v22 = *(v0 + 64);

    v17(v21, v22);
    v16(v19, v20);
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_23B790E28()
{
  v54 = v0;

  v1 = *(v0 + 264);
  v47 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);

  v2(v3, v8, v4);
  v9 = v1;
  v47(v5, v7, v6);
  v10 = v1;
  v11 = sub_23B7BBB10();
  v12 = sub_23B7BCA00();

  if (os_log_type_enabled(v11, v12))
  {
    log = v11;
    v13 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v13 = 136315906;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v48 = v12;
    v50 = v9;
    v14 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v15 = qword_27E1810F0;
    }

    else
    {
      v23 = HIDWORD(qword_27E1810E8);
      v52 = 0;
      v53 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v24 = 4144959;
      }

      else
      {
        v24 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v24, 0xE300000000000000);

      *(v0 + 300) = v23;
      sub_23B7797D8();
      v25 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v25);

      v14 = v52;
      v15 = v53;
    }

    v26 = *(v0 + 224);
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);
    v29 = *(v0 + 80);
    v44 = *(v0 + 64);
    v45 = *(v0 + 216);
    v30 = sub_23B77C020(v14, v15, &v51);

    *(v13 + 4) = v30;
    *(v13 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8]);
    v31 = sub_23B7BCC60();
    v33 = v32;
    v26(v27, v28);
    v34 = sub_23B77C020(v31, v33, &v51);

    *(v13 + 14) = v34;
    *(v13 + 22) = 2080;
    v35 = sub_23B7BB9D0();
    v37 = v36;
    v45(v29, v44);
    v38 = sub_23B77C020(v35, v37, &v51);

    *(v13 + 24) = v38;
    *(v13 + 32) = 2080;
    swift_getErrorValue();
    v39 = sub_23B7BCCC0();
    v41 = sub_23B77C020(v39, v40, &v51);

    *(v13 + 34) = v41;
    _os_log_impl(&dword_23B774000, log, v48, "[%s] Offer action for:%s on %s failed. %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v46, -1, -1);
    MEMORY[0x23EEA96D0](v13, -1, -1);
  }

  else
  {
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = v11;
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v22 = *(v0 + 64);

    v17(v21, v22);
    v16(v19, v20);
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_23B7912AC()
{
  v54 = v0;

  v1 = *(v0 + 288);
  v47 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);

  v2(v3, v8, v4);
  v9 = v1;
  v47(v5, v7, v6);
  v10 = v1;
  v11 = sub_23B7BBB10();
  v12 = sub_23B7BCA00();

  if (os_log_type_enabled(v11, v12))
  {
    log = v11;
    v13 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v13 = 136315906;
    if (qword_27E180830 != -1)
    {
      swift_once();
    }

    v48 = v12;
    v50 = v9;
    v14 = qword_27E1810E8;
    if (byte_27E1810F8 == 1)
    {
      v15 = qword_27E1810F0;
    }

    else
    {
      v23 = HIDWORD(qword_27E1810E8);
      v52 = 0;
      v53 = 0xE000000000000000;
      if (qword_27E1810E8)
      {
        v24 = 4144959;
      }

      else
      {
        v24 = 5527621;
      }

      MEMORY[0x23EEA8AE0](v24, 0xE300000000000000);

      *(v0 + 300) = v23;
      sub_23B7797D8();
      v25 = sub_23B7BC870();
      MEMORY[0x23EEA8AE0](v25);

      v14 = v52;
      v15 = v53;
    }

    v26 = *(v0 + 224);
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);
    v29 = *(v0 + 80);
    v44 = *(v0 + 64);
    v45 = *(v0 + 216);
    v30 = sub_23B77C020(v14, v15, &v51);

    *(v13 + 4) = v30;
    *(v13 + 12) = 2080;
    sub_23B797010(&qword_27E181348, MEMORY[0x277CD49E8]);
    v31 = sub_23B7BCC60();
    v33 = v32;
    v26(v27, v28);
    v34 = sub_23B77C020(v31, v33, &v51);

    *(v13 + 14) = v34;
    *(v13 + 22) = 2080;
    v35 = sub_23B7BB9D0();
    v37 = v36;
    v45(v29, v44);
    v38 = sub_23B77C020(v35, v37, &v51);

    *(v13 + 24) = v38;
    *(v13 + 32) = 2080;
    swift_getErrorValue();
    v39 = sub_23B7BCCC0();
    v41 = sub_23B77C020(v39, v40, &v51);

    *(v13 + 34) = v41;
    _os_log_impl(&dword_23B774000, log, v48, "[%s] Offer action for:%s on %s failed. %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23EEA96D0](v46, -1, -1);
    MEMORY[0x23EEA96D0](v13, -1, -1);
  }

  else
  {
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = v11;
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);
    v21 = *(v0 + 80);
    v22 = *(v0 + 64);

    v17(v21, v22);
    v16(v19, v20);
  }

  v42 = *(v0 + 8);

  return v42();
}