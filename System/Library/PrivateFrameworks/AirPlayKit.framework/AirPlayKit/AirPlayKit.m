id AVDataDestinationForAPKDataDestination(__CFString *a1)
{
  if (a1 == @"APKOutputDeviceCommunicationChannelDataDestinationFitness")
  {
    v2 = *MEMORY[0x277CB8658];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_23E87BE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SpriteSheetAnimable.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) != 1)
    {
      return MEMORY[0x23EF17B90](0);
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x23EF17B90](v4);

  return sub_23E87D9E8(a1, v3);
}

uint64_t SpriteSheetAnimable.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23E900EB4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x23EF17B90](0);
      return sub_23E900F14();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x23EF17B90](v3);
  sub_23E87D9E8(v5, v1);
  return sub_23E900F14();
}

uint64_t sub_23E87D488()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23E900EB4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x23EF17B90](0);
      return sub_23E900F14();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x23EF17B90](v3);
  sub_23E87D9E8(v5, v1);
  return sub_23E900F14();
}

uint64_t sub_23E87D508(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) != 1)
    {
      return MEMORY[0x23EF17B90](0);
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x23EF17B90](v4);

  return sub_23E87D9E8(a1, v3);
}

uint64_t sub_23E87D58C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23E900EB4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x23EF17B90](0);
      return sub_23E900F14();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x23EF17B90](v3);
  sub_23E87D9E8(v5, v1);
  return sub_23E900F14();
}

uint64_t sub_23E87D614(uint64_t a1, id *a2)
{
  result = sub_23E900864();
  *a2 = 0;
  return result;
}

uint64_t sub_23E87D68C(uint64_t a1, id *a2)
{
  v3 = sub_23E900874();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23E87D70C@<X0>(uint64_t *a1@<X8>)
{
  sub_23E900884();
  v2 = sub_23E900854();

  *a1 = v2;
  return result;
}

uint64_t sub_23E87D750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23E900854();

  *a2 = v5;
  return result;
}

uint64_t sub_23E87D798@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23E900884();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23E87D7C4(uint64_t a1)
{
  v2 = sub_23E87E330(&qword_27E35E3C0);
  v3 = sub_23E87E330(&qword_27E35E3C8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23E87D85C()
{
  v1 = *v0;
  v2 = sub_23E900884();
  v3 = MEMORY[0x23EF17620](v2);

  return v3;
}

uint64_t sub_23E87D898()
{
  v1 = *v0;
  sub_23E900884();
  sub_23E900904();
}

uint64_t sub_23E87D8EC()
{
  v1 = *v0;
  sub_23E900884();
  sub_23E900EB4();
  sub_23E900904();
  v2 = sub_23E900F14();

  return v2;
}

uint64_t sub_23E87D960(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23E900884();
  v6 = v5;
  if (v4 == sub_23E900884() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23E900E04();
  }

  return v9 & 1;
}

uint64_t sub_23E87D9E8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SpriteSheetAnimation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x23EF17B90](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    v20 = v12;
    v21 = v10;
    do
    {
      sub_23E87E4B8(v11, v7, type metadata accessor for SpriteSheetAnimation);
      v14 = *v7;
      v15 = *(v7 + 1);
      v16 = *(v7 + 2);
      v17 = *(v7 + 3);
      v13 = *(v7 + 4);
      v18 = v7[40];
      v22 = v7[41];
      sub_23E900904();
      if (v18)
      {
        v13 = 0;
      }

      else
      {
        MEMORY[0x23EF17B90](1);
        sub_23E900EE4();
        sub_23E900EE4();
        sub_23E900EE4();
        v12 = v20;
        sub_23E900EE4();
      }

      MEMORY[0x23EF17B90](v13);
      sub_23E900904();

      sub_23E8D3688();
      result = sub_23E87E520(v7, type metadata accessor for SpriteSheetAnimation);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_23E87DC2C(__int128 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v42 = &v41 - v15;
  v16 = type metadata accessor for ContainerContent.Child();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v24 = *(a2 + 16);
  v46 = a1;
  result = MEMORY[0x23EF17B90](v24);
  if (v24)
  {
    v26 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v27 = *(v17 + 72);
    do
    {
      sub_23E87E4B8(v26, v23, type metadata accessor for ContainerContent.Child);
      sub_23E87E4B8(v23, v21, type metadata accessor for ContainerContent.Child);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v36 = v44;
          v37 = &qword_27E35E438;
          v38 = &unk_23E907E20;
          sub_23E87E3F0(v21, v44, &qword_27E35E438, &unk_23E907E20);
          v39 = v46;
          MEMORY[0x23EF17B90](2);
          sub_23E8AA7BC(v39);
        }

        else
        {
          v36 = v45;
          v37 = &qword_27E35E430;
          v38 = &unk_23E902C80;
          sub_23E87E3F0(v21, v45, &qword_27E35E430, &unk_23E902C80);
          v40 = v46;
          MEMORY[0x23EF17B90](3);
          sub_23E8AA52C(v40);
        }

        v30 = v36;
        v31 = v37;
        v32 = v38;
      }

      else if (EnumCaseMultiPayload)
      {
        v28 = v43;
        sub_23E87E3F0(v21, v43, &unk_27E35E440, &unk_23E902C90);
        v29 = v46;
        MEMORY[0x23EF17B90](1);
        sub_23E8AAA3C(v29);
        v30 = v28;
        v31 = &unk_27E35E440;
        v32 = &unk_23E902C90;
      }

      else
      {
        v34 = v42;
        v35 = v46;
        sub_23E87E3F0(v21, v42, &unk_27E35E630, &qword_23E903300);
        MEMORY[0x23EF17B90](0);
        sub_23E8AACF8(v35);
        v30 = v34;
        v31 = &unk_27E35E630;
        v32 = &qword_23E903300;
      }

      sub_23E87E458(v30, v31, v32);
      result = sub_23E87E520(v23, type metadata accessor for ContainerContent.Child);
      v26 += v27;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t _s10AirPlayKit19SpriteSheetAnimableO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v4 != 2 || v3 != 0)
      {
        goto LABEL_11;
      }

      v7 = 1;
LABEL_13:

      return v7 & 1;
    }

    if (v4 != 1)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *a2;

    v7 = sub_23E8DE708(v6, v3);

    goto LABEL_13;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_6;
  }

LABEL_11:
  v7 = 0;
  return v7 & 1;
}

unint64_t sub_23E87E0E4()
{
  result = qword_27E35E320;
  if (!qword_27E35E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E320);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AirPlayKit19SpriteSheetAnimableO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23E87E168(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_23E87E1B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23E87E1F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_23E87E26C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E87E28C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_23E87E330(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AirPlayOutputDeviceCommunicationChannelDataDestination(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23E87E3F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E87E458(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23E87E4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E87E520(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpringParameters(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SpringParameters(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_23E87E604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_23E87E660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_23E87E704(uint64_t a1, unint64_t *a2)
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

uint64_t Material.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x694C6D756964654DLL;
  v2 = 0x67694C6172746C55;
  if (a1 != 2)
  {
    v2 = 0x7261446172746C55;
  }

  if (a1)
  {
    v1 = 0x61446D756964654DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23E87E7E8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000746867;
  v3 = 0x694C6D756964654DLL;
  v4 = *a1;
  v5 = 0xEA00000000007468;
  v6 = 0x7261446172746C55;
  if (v4 == 2)
  {
    v6 = 0x67694C6172746C55;
  }

  else
  {
    v5 = 0xE90000000000006BLL;
  }

  v7 = 0x61446D756964654DLL;
  if (*a1)
  {
    v8 = 0xEA00000000006B72;
  }

  else
  {
    v7 = 0x694C6D756964654DLL;
    v8 = 0xEB00000000746867;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0x67694C6172746C55;
  v12 = 0xEA00000000007468;
  if (*a2 != 2)
  {
    v11 = 0x7261446172746C55;
    v12 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v3 = 0x61446D756964654DLL;
    v2 = 0xEA00000000006B72;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_23E900E04();
  }

  return v15 & 1;
}

uint64_t sub_23E87E948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s10AirPlayKit8MaterialO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_23E87E978(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000746867;
  v3 = 0x694C6D756964654DLL;
  v4 = 0xEA00000000007468;
  v5 = 0x67694C6172746C55;
  if (*v1 != 2)
  {
    v5 = 0x7261446172746C55;
    v4 = 0xE90000000000006BLL;
  }

  if (*v1)
  {
    v3 = 0x61446D756964654DLL;
    v2 = 0xEA00000000006B72;
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

uint64_t sub_23E87EA10()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E87EAEC()
{
  *v0;
  *v0;
  *v0;
  sub_23E900904();
}

uint64_t sub_23E87EBB4()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t _s10AirPlayKit8MaterialO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_23E900DA4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23E87ECDC()
{
  result = qword_27E35E530;
  if (!qword_27E35E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E530);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Material(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Material(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_23E87EE9C(uint64_t a1, void *a2, int *a3)
{
  v130 = a2;
  v6 = sub_23E900BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v122 - v10;
  v12 = *(a3 - 1);
  v13 = *(v12 + 8);
  MEMORY[0x28223BE20](v9);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6);
  v16 = (*(v12 + 6))(v11, 1, a3);
  v129 = a3;
  if (v16 == 1)
  {
    (*(v7 + 8))(v11, v6);
    v17 = (v3 + a3[16]);
    v18 = *v17;
    v127 = v17[1];
    v128 = v18;
    LODWORD(v126) = *(v17 + 16);
    v19 = v3;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
    v141[3] = v20;
    v141[4] = sub_23E880EFC(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v141);
    v22 = sub_23E9006D4();
    v23 = *(v22 - 8);
    v124 = *(v23 + 16);
    v125 = v23 + 16;
    v24 = v130;
    v122 = v22;
    v124(boxed_opaque_existential_1, v130, v22);
    *(boxed_opaque_existential_1 + *(v20 + 36)) = 5;
    v25 = boxed_opaque_existential_1 + *(v20 + 40);
    v26 = v127;
    *v25 = v128;
    *(v25 + 1) = v26;
    v25[16] = v126;
    v27 = v129;
    v28 = v129[10];
    v123 = v19;
    LODWORD(v128) = *(v19 + v28);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E540, &qword_23E902E10);
    v142[3] = v29;
    v142[4] = sub_23E880EFC(&unk_27E35F5F0, &qword_27E35E540, &qword_23E902E10);
    v30 = __swift_allocate_boxed_opaque_existential_1(v142);
    v31 = v24;
    v32 = v24;
    v33 = v124;
    v124(v30, v31, v22);
    *(v30 + *(v29 + 36)) = 6;
    *(v30 + *(v29 + 40)) = v128;
    v34 = *(v19 + v27[17]);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
    v143[3] = v35;
    v143[4] = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
    v36 = __swift_allocate_boxed_opaque_existential_1(v143);
    v37 = v122;
    v33(v36, v32, v122);
    *(v36 + *(v35 + 36)) = 7;
    *(v36 + *(v35 + 40)) = v34;
    v38 = (v123 + v27[18]);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E550, &qword_23E902E18);
    v144[3] = v39;
    v144[4] = sub_23E880EFC(&unk_27E35F610, &qword_27E35E550, &qword_23E902E18);
    v40 = __swift_allocate_boxed_opaque_existential_1(v144);
    v41 = *v38;
    v42 = v38[1];
    v33(v40, v130, v37);
    *(v40 + *(v39 + 36)) = 9;
    v43 = (v40 + *(v39 + 40));
    *v43 = v41;
    v43[1] = v42;
    v44 = MEMORY[0x277D84F90];
    for (i = 32; i != 192; i += 40)
    {
      sub_23E880F50(&v140[i], &v137);
      v131 = v137;
      v132 = v138;
      v133 = v139;
      if (*(&v138 + 1))
      {
        sub_23E881028(&v131, v134);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = sub_23E889F50(0, v44[2] + 1, 1, v44);
          v145 = v44;
        }

        v48 = v44[2];
        v47 = v44[3];
        if (v48 >= v47 >> 1)
        {
          v44 = sub_23E889F50((v47 > 1), v48 + 1, 1, v44);
          v145 = v44;
        }

        v49 = v135;
        v50 = v136;
        v51 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
        v52 = *(*(v49 - 8) + 64);
        MEMORY[0x28223BE20](v51);
        v54 = &v122 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v55 + 16))(v54);
        sub_23E8F2C70(v48, v54, &v145, v49, v50);
        __swift_destroy_boxed_opaque_existential_1(v134);
      }

      else
      {
        sub_23E880FC0(&v131);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
    swift_arrayDestroy();
  }

  else
  {
    v127 = v12;
    (*(v12 + 4))(v15, v11, a3);
    v56 = a3[16];
    v57 = &v15[v56];
    v58 = *&v15[v56];
    v59 = *&v15[v56 + 8];
    v60 = v3 + v56;
    v61 = *v60;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    v64 = _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(v58, v59, v57[16], *v60, v62, v63);
    v128 = v15;
    if (v64)
    {
      v65 = MEMORY[0x277D84F90];
    }

    else
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
      *(&v138 + 1) = v66;
      v139 = sub_23E880EFC(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
      v67 = __swift_allocate_boxed_opaque_existential_1(&v137);
      v68 = sub_23E9006D4();
      (*(*(v68 - 8) + 16))(v67, v130, v68);
      *(v67 + *(v66 + 36)) = 5;
      v69 = v67 + *(v66 + 40);
      *v69 = v61;
      *(v69 + 1) = v62;
      v69[16] = v63;
      v65 = sub_23E88A098(0, 1, 1, MEMORY[0x277D84F90]);
      v71 = v65[2];
      v70 = v65[3];
      if (v71 >= v70 >> 1)
      {
        v65 = sub_23E88A098((v70 > 1), v71 + 1, 1, v65);
      }

      v65[2] = v71 + 1;
      v72 = &v65[5 * v71];
      v73 = v137;
      v74 = v138;
      v72[8] = v139;
      *(v72 + 2) = v73;
      *(v72 + 3) = v74;
      v15 = v128;
    }

    v75 = v130;
    v76 = a3[10];
    v77 = *(v3 + v76);
    if ((sub_23E89A140(v15[v76], v77) & 1) == 0)
    {
      v78 = v65;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E540, &qword_23E902E10);
      *(&v138 + 1) = v79;
      v139 = sub_23E880EFC(&unk_27E35F5F0, &qword_27E35E540, &qword_23E902E10);
      v80 = __swift_allocate_boxed_opaque_existential_1(&v137);
      v81 = sub_23E9006D4();
      (*(*(v81 - 8) + 16))(v80, v75, v81);
      *(v80 + *(v79 + 36)) = 6;
      v82 = *(v79 + 40);
      v65 = v78;
      *(v80 + v82) = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_23E88A098(0, v78[2] + 1, 1, v78);
      }

      v84 = v65[2];
      v83 = v65[3];
      v15 = v128;
      if (v84 >= v83 >> 1)
      {
        v65 = sub_23E88A098((v83 > 1), v84 + 1, 1, v65);
      }

      v65[2] = v84 + 1;
      v85 = &v65[5 * v84];
      v86 = v137;
      v87 = v138;
      v85[8] = v139;
      *(v85 + 2) = v86;
      *(v85 + 3) = v87;
    }

    v88 = a3[17];
    v89 = *(v3 + v88);
    if (*&v15[v88] != v89)
    {
      v90 = v65;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
      *(&v138 + 1) = v91;
      v139 = sub_23E880EFC(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
      v92 = __swift_allocate_boxed_opaque_existential_1(&v137);
      v93 = sub_23E9006D4();
      (*(*(v93 - 8) + 16))(v92, v75, v93);
      *(v92 + *(v91 + 36)) = 7;
      v94 = *(v91 + 40);
      v65 = v90;
      *(v92 + v94) = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_23E88A098(0, v90[2] + 1, 1, v90);
      }

      v96 = v65[2];
      v95 = v65[3];
      v15 = v128;
      if (v96 >= v95 >> 1)
      {
        v65 = sub_23E88A098((v95 > 1), v96 + 1, 1, v65);
      }

      v65[2] = v96 + 1;
      v97 = &v65[5 * v96];
      v98 = v137;
      v99 = v138;
      v97[8] = v139;
      *(v97 + 2) = v98;
      *(v97 + 3) = v99;
    }

    v100 = a3[18];
    if ((vminv_u16(vmovn_s32(vceqq_f32(*&v15[v100], *(v3 + v100)))) & 1) == 0)
    {
      v126 = *(v3 + v100);
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E550, &qword_23E902E18);
      *(&v138 + 1) = v101;
      v139 = sub_23E880EFC(&unk_27E35F610, &qword_27E35E550, &qword_23E902E18);
      v102 = __swift_allocate_boxed_opaque_existential_1(&v137);
      v103 = sub_23E9006D4();
      (*(*(v103 - 8) + 16))(v102, v75, v103);
      *(v102 + *(v101 + 36)) = 9;
      *(v102 + *(v101 + 40)) = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_23E88A098(0, v65[2] + 1, 1, v65);
      }

      v105 = v65[2];
      v104 = v65[3];
      if (v105 >= v104 >> 1)
      {
        v65 = sub_23E88A098((v104 > 1), v105 + 1, 1, v65);
      }

      v65[2] = v105 + 1;
      v106 = &v65[5 * v105];
      v107 = v137;
      v108 = v138;
      v106[8] = v139;
      *(v106 + 2) = v107;
      *(v106 + 3) = v108;
    }

    v109 = v65[2];
    v130 = v65;
    if (v109)
    {
      v110 = (v65 + 4);
      v44 = MEMORY[0x277D84F90];
      do
      {
        sub_23E880F50(v110, &v137);
        v131 = v137;
        v132 = v138;
        v133 = v139;
        if (*(&v138 + 1))
        {
          sub_23E881028(&v131, v134);
          v111 = swift_isUniquelyReferenced_nonNull_native();
          v145 = v44;
          if ((v111 & 1) == 0)
          {
            v44 = sub_23E889F50(0, v44[2] + 1, 1, v44);
            v145 = v44;
          }

          v113 = v44[2];
          v112 = v44[3];
          if (v113 >= v112 >> 1)
          {
            v44 = sub_23E889F50((v112 > 1), v113 + 1, 1, v44);
            v145 = v44;
          }

          v114 = v135;
          v115 = v136;
          v116 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
          v117 = *(*(v114 - 8) + 64);
          MEMORY[0x28223BE20](v116);
          v119 = &v122 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v120 + 16))(v119);
          sub_23E8F2C70(v113, v119, &v145, v114, v115);
          __swift_destroy_boxed_opaque_existential_1(v134);
        }

        else
        {
          sub_23E880FC0(&v131);
        }

        v110 += 40;
        --v109;
      }

      while (v109);
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    (*(v127 + 1))(v128, v129);
  }

  return v44;
}

void *sub_23E87FB14(uint64_t a1, uint64_t a2, int *a3)
{
  v91 = a2;
  v6 = sub_23E900BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v82 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v81 = &v77 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v77 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v77 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v77 - v19;
  v21 = a3[11];
  v89 = v3;
  v90 = a1;
  v22 = v3 + v21;
  v24 = *v22;
  v23 = *(v22 + 8);
  v78 = *(v22 + 16) | (*(v22 + 20) << 32);
  v79 = *(v22 + 21);
  v80 = v23;
  v87 = *(v7 + 16);
  v88 = v7 + 16;
  v87(&v77 - v19, a1, v6);
  v25 = *(a3 - 1);
  v85 = *(v25 + 48);
  v86 = v25 + 48;
  v26 = v85(v20, 1, a3);
  v83 = v25;
  v84 = v7;
  if (v26 == 1)
  {
    (*(v7 + 8))(v20, v6);
    v27 = 0;
    v28 = 0;
    v29 = 0xFF0000000000;
  }

  else
  {
    v30 = &v20[a3[11]];
    v27 = *v30;
    v28 = *(v30 + 1);
    v31 = v30[20];
    v32 = *(v30 + 4);
    v77 = v6;
    v33 = v15;
    v34 = v24;
    v35 = v32 | (v31 << 32);
    v36 = v30[21];
    sub_23E8811D8(v27, v28, v35, v30[21]);
    (*(v25 + 8))(v20, a3);
    v29 = v35 | (v36 << 40);
    v24 = v34;
    v15 = v33;
    v6 = v77;
  }

  v80 = sub_23E8E7358(v27, v28, v29 & 0xFFFFFFFFFFFFLL, v91, 0, v24, v80, v78 & 0xFFFFFFFFFFLL | (v79 << 40));
  sub_23E881140(v27, v28, v29);
  v37 = v89 + a3[12];
  v38 = *v37;
  v39 = *(v37 + 8) | (*(v37 + 12) << 32);
  v40 = *(v37 + 13);
  v87(v18, v90, v6);
  if (v85(v18, 1, a3) == 1)
  {
    (*(v84 + 8))(v18, v6);
    v41 = 0;
    v42 = 0xFF0000000000;
  }

  else
  {
    v43 = &v18[a3[12]];
    v41 = *v43;
    v44 = *(v43 + 2) | (v43[12] << 32);
    v45 = v43[13];
    sub_23E881208(*v43, v44, v43[13]);
    (*(v83 + 8))(v18, a3);
    v42 = v44 | (v45 << 40);
  }

  v79 = sub_23E8E7794(v41, v42 & 0xFFFFFFFFFFFFLL, v91, 1, v38, v39 & 0xFFFFFFFFFFLL | (v40 << 40));
  sub_23E88116C(v41, v42);
  v46 = v89 + a3[13];
  v47 = *v46;
  v48 = *(v46 + 8);
  v87(v15, v90, v6);
  if (v85(v15, 1, a3) == 1)
  {
    v49 = 0;
    v50 = -1;
    v51 = v84;
    v52 = v6;
  }

  else
  {
    v53 = &v15[a3[13]];
    v49 = *v53;
    v50 = v53[8];
    sub_23E8811F0(*v53, v50);
    v51 = v83;
    v52 = a3;
  }

  (*(v51 + 8))(v15, v52);
  v78 = sub_23E8E7BB8(v49, v50, v91, 3, v47, v48);
  sub_23E881198(v49, v50);
  v54 = v89 + a3[14];
  v55 = *(v54 + 8);
  v77 = *v54;
  v56 = *(v54 + 16);
  v57 = *(v54 + 24);
  v58 = v81;
  v87(v81, v90, v6);
  if (v85(v58, 1, a3) == 1)
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = -1;
    v63 = v84;
    v64 = v6;
  }

  else
  {
    v65 = &v58[a3[14]];
    v59 = *v65;
    v60 = *(v65 + 1);
    v61 = *(v65 + 2);
    v62 = v65[24];
    sub_23E8811D8(*v65, v60, v61, v62);
    v63 = v83;
    v64 = a3;
  }

  (*(v63 + 8))(v58, v64);
  v66 = sub_23E8E8028(v59, v60, v61, v62, v91, 2, v77, v55, v56, v57);
  sub_23E8811C4(v59, v60, v61, v62);
  v67 = v89 + a3[15];
  v68 = *v67;
  v69 = *(v67 + 8);
  v70 = v82;
  v87(v82, v90, v6);
  if (v85(v70, 1, a3) == 1)
  {
    v71 = 0;
    v72 = -1;
    v73 = v84;
  }

  else
  {
    v74 = &v70[a3[15]];
    v71 = *v74;
    v72 = v74[8];
    sub_23E8811F0(*v74, v72);
    v73 = v83;
    v6 = a3;
  }

  (*(v73 + 8))(v70, v6);
  v75 = sub_23E8E84DC(v71, v72, v91, 8, v68, v69);
  sub_23E881198(v71, v72);
  v92 = v80;
  sub_23E8EBFB4(v79);
  sub_23E8EBFB4(v78);
  sub_23E8EBFB4(v66);
  sub_23E8EBFB4(v75);
  return v92;
}

uint64_t sub_23E8801A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v118 = a1;
  v110 = a4;
  v113 = a2;
  v6 = *(a3 + 16);
  v107 = sub_23E900BD4();
  v106 = *(v107 - 8);
  v7 = *(v106 + 64);
  v8 = MEMORY[0x28223BE20](v107);
  v105 = &v97 - v9;
  v112 = v6;
  v108 = *(v6 - 8);
  v10 = *(v108 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v116 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v98 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23E900BD4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v101 = *(TupleTypeMetadata2 - 8);
  v18 = *(v101 + 64);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v97 - v20;
  v111 = *(v16 - 8);
  v22 = v111;
  v23 = *(v111 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v104 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v115 = &v97 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v97 - v28;
  v30 = *(v13 + 16);
  v114 = v4;
  v30(&v97 - v28, v4, a3);
  (*(v13 + 56))(v29, 0, 1, a3);
  v102 = TupleTypeMetadata2;
  v31 = *(TupleTypeMetadata2 + 48);
  v99 = v22;
  v32 = *(v22 + 16);
  v32(v21, v29, v16);
  v32(&v31[v21], v118, v16);
  v109 = v13;
  v33 = *(v13 + 48);
  v34 = v33(v21, 1, a3);
  v103 = v32;
  if (v34 == 1)
  {
    v115 = v31;
    v35 = *(v111 + 8);
    (v35)(v29, v16);
    v36 = a3;
    if (v33(&v115[v21], 1, a3) == 1)
    {
      (v35)(v21, v16);
      return MEMORY[0x277D84F90];
    }

    v100 = v33;
    goto LABEL_7;
  }

  v32(v115, v21, v16);
  v37 = v33(&v31[v21], 1, a3);
  v100 = v33;
  if (v37 == 1)
  {
    v35 = *(v111 + 8);
    (v35)(v29, v16);
    v36 = a3;
    (*(v109 + 8))(v115, a3);
LABEL_7:
    (*(v101 + 8))(v21, v102);
    v38 = v112;
    v39 = v108;
    v40 = v116;
    goto LABEL_8;
  }

  v51 = v109;
  v52 = v98;
  (*(v109 + 32))(v98, &v31[v21], a3);
  LODWORD(v102) = static RenderNode.== infix(_:_:)(v115, v52, v112, *(v110 + 16));
  v101 = *(v51 + 8);
  (v101)(v52, a3);
  v35 = *(v111 + 8);
  (v35)(v29, v16);
  v36 = a3;
  v53 = a3;
  v38 = v112;
  (v101)(v115, v53);
  (v35)(v21, v16);
  v39 = v108;
  v40 = v116;
  if (v102)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_8:
  v115 = v35;
  v41 = v36;
  v42 = *(v39 + 16);
  v42(v40, v114 + v36[9], v38);
  v43 = v104;
  v103(v104, v118, v16);
  if (v100(v43, 1, v36) == 1)
  {
    (v115)(v43, v16);
    v44 = 1;
    v45 = v113;
    v46 = v105;
  }

  else
  {
    v46 = v105;
    v42(v105, &v43[v36[9]], v38);
    (*(v109 + 8))(v43, v36);
    v44 = 0;
    v45 = v113;
  }

  (*(v39 + 56))(v46, v44, 1, v38);
  v47 = v116;
  v48 = v117;
  v49 = (*(*(v110 + 8) + 8))(v46, v45, v38);
  if (v48)
  {
    (*(v106 + 8))(v46, v107);
    return (*(v39 + 8))(v47, v38);
  }

  else
  {
    v54 = v49;
    v115 = v41;
    v117 = 0;
    (*(v106 + 8))(v46, v107);
    (*(v39 + 8))(v47, v38);
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = v54 + 32;
      v57 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v56, v123);
        sub_23E881028(v123, v120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = sub_23E889F50(0, v57[2] + 1, 1, v57);
          v124 = v57;
        }

        v60 = v57[2];
        v59 = v57[3];
        if (v60 >= v59 >> 1)
        {
          v57 = sub_23E889F50((v59 > 1), v60 + 1, 1, v57);
          v124 = v57;
        }

        v61 = v121;
        v62 = v122;
        v63 = __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
        v64 = *(*(v61 - 8) + 64);
        MEMORY[0x28223BE20](v63);
        v66 = &v97 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v67 + 16))(v66);
        sub_23E8F2C70(v60, v66, &v124, v61, v62);
        __swift_destroy_boxed_opaque_existential_1(v120);
        v56 += 40;
        --v55;
      }

      while (v55);
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    v116 = v57;
    v68 = sub_23E87FB14(v118, v113, v115);
    v69 = v68[2];
    if (v69)
    {
      v112 = v68;
      v70 = (v68 + 4);
      v71 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v70, v123);
        sub_23E881028(v123, v120);
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v71;
        if ((v72 & 1) == 0)
        {
          v71 = sub_23E889F50(0, v71[2] + 1, 1, v71);
          v124 = v71;
        }

        v74 = v71[2];
        v73 = v71[3];
        if (v74 >= v73 >> 1)
        {
          v71 = sub_23E889F50((v73 > 1), v74 + 1, 1, v71);
          v124 = v71;
        }

        v75 = v121;
        v76 = v122;
        v77 = __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
        v78 = *(*(v75 - 8) + 64);
        MEMORY[0x28223BE20](v77);
        v80 = &v97 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v81 + 16))(v80);
        sub_23E8F2C70(v74, v80, &v124, v75, v76);
        __swift_destroy_boxed_opaque_existential_1(v120);
        v70 += 40;
        --v69;
      }

      while (v69);
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
    }

    v82 = v117;
    v83 = sub_23E87EE9C(v118, v113, v115);
    if (v82)
    {
    }

    else
    {
      v117 = 0;
      v84 = *(v83 + 2);
      if (v84)
      {
        v118 = v83;
        v85 = (v83 + 32);
        v86 = MEMORY[0x277D84F90];
        do
        {
          sub_23E8810DC(v85, v123);
          sub_23E881028(v123, v120);
          v87 = swift_isUniquelyReferenced_nonNull_native();
          v124 = v86;
          if ((v87 & 1) == 0)
          {
            v86 = sub_23E889F50(0, v86[2] + 1, 1, v86);
            v124 = v86;
          }

          v89 = v86[2];
          v88 = v86[3];
          if (v89 >= v88 >> 1)
          {
            v86 = sub_23E889F50((v88 > 1), v89 + 1, 1, v86);
            v124 = v86;
          }

          v90 = v121;
          v91 = v122;
          v92 = __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
          v93 = *(*(v90 - 8) + 64);
          MEMORY[0x28223BE20](v92);
          v95 = &v97 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v96 + 16))(v95);
          sub_23E8F2C70(v89, v95, &v124, v90, v91);
          __swift_destroy_boxed_opaque_existential_1(v120);
          v85 += 40;
          --v84;
        }

        while (v84);
      }

      else
      {

        v86 = MEMORY[0x277D84F90];
      }

      v119 = v116;
      sub_23E8EBFB4(v86);
      sub_23E8EBFB4(v71);
      return v119;
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23E880EFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E880F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E880FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E881028(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23E8810DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23E881140(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE5(a3) != 255)
  {
    return sub_23E881154(result, a2, a3, BYTE5(a3));
  }

  return result;
}

uint64_t sub_23E881154(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_23E88116C(uint64_t result, uint64_t a2)
{
  if (BYTE5(a2) != 255)
  {
    return sub_23E881180(result, a2, BYTE5(a2));
  }

  return result;
}

uint64_t sub_23E881180(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_23E881198(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_23E8811AC(a1, a2);
  }

  return a1;
}

uint64_t sub_23E8811AC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_23E8811C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_23E881154(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_23E8811D8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_23E8811F0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_23E881208(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t static Insets.== infix(_:_:)(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v9 = a2 == a6 && a1 == a5;
  v10 = v9 && a3 == a7;
  if (a4 == a8)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t Insets.hash(into:)()
{
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  return sub_23E900EE4();
}

uint64_t Insets.hashValue.getter()
{
  sub_23E900EB4();
  Insets.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E881368()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23E900EB4();
  Insets.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8813D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return Insets.hash(into:)();
}

uint64_t sub_23E8813DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23E900EB4();
  Insets.hash(into:)();
  return sub_23E900F14();
}

unint64_t sub_23E881444()
{
  result = qword_27E35E560;
  if (!qword_27E35E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E560);
  }

  return result;
}

unint64_t sub_23E8814D4(uint64_t a1)
{
  result = sub_23E8814FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8814FC()
{
  result = qword_27E35E568;
  if (!qword_27E35E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E568);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_23E881570()
{
  result = qword_27E35E570;
  if (!qword_27E35E570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E578, qword_23E904420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E570);
  }

  return result;
}

unint64_t sub_23E8815EC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EE0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  sub_23E900C64();
  strcpy((inited + 88), "controlPoint1");
  *(inited + 102) = -4864;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_23E902EF0;
  *(v6 + 32) = 120;
  *(v6 + 40) = 0xE100000000000000;
  sub_23E900C64();
  *(v6 + 88) = 121;
  *(v6 + 96) = 0xE100000000000000;
  sub_23E900C64();
  sub_23E88F1F4(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5A0, &qword_23E902F38);
  sub_23E8819CC();
  sub_23E900C64();
  strcpy((inited + 144), "controlPoint2");
  *(inited + 158) = -4864;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_23E902EF0;
  *(v7 + 32) = 120;
  *(v7 + 40) = 0xE100000000000000;
  sub_23E900C64();
  *(v7 + 88) = 121;
  *(v7 + 96) = 0xE100000000000000;
  sub_23E900C64();
  sub_23E88F1F4(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_23E900C64();
  v8 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

unint64_t sub_23E8818AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8815EC();
  *a1 = result;
  return result;
}

unint64_t sub_23E8818D4(uint64_t a1)
{
  result = sub_23E8818FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8818FC()
{
  result = qword_27E35E580;
  if (!qword_27E35E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E580);
  }

  return result;
}

unint64_t sub_23E881950(uint64_t a1)
{
  result = sub_23E881978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E881978()
{
  result = qword_27E35E588;
  if (!qword_27E35E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E588);
  }

  return result;
}

unint64_t sub_23E8819CC()
{
  result = qword_27E35E5A8;
  if (!qword_27E35E5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E5A0, &qword_23E902F38);
    sub_23E881570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E5A8);
  }

  return result;
}

AirPlayKit::CubicParameters __swiftcall CubicParameters.init(controlPoint1:controlPoint2:)(AirPlayKit::Anchor controlPoint1, AirPlayKit::Anchor controlPoint2)
{
  *v2 = controlPoint1.x;
  v2[1] = controlPoint1.y;
  v2[2] = controlPoint2.x;
  v2[3] = controlPoint2.y;
  result.controlPoint2.y = controlPoint2.y;
  result.controlPoint2.x = controlPoint2.x;
  result.controlPoint1.y = controlPoint1.y;
  result.controlPoint1.x = controlPoint1.x;
  return result;
}

uint64_t CubicParameters.hash(into:)()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  *v0;
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  return sub_23E900EE4();
}

uint64_t CubicParameters.hashValue.getter()
{
  v2 = *v0;
  sub_23E900EB4();
  CubicParameters.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E881B2C()
{
  v2 = *v0;
  sub_23E900EB4();
  CubicParameters.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E881B7C()
{
  v2 = *v0;
  sub_23E900EB4();
  CubicParameters.hash(into:)();
  return sub_23E900F14();
}

BOOL _s10AirPlayKit15CubicParametersV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[3] == a2[3] && a1[2] == a2[2];
}

unint64_t sub_23E881C04()
{
  result = qword_27E35E5B0;
  if (!qword_27E35E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E5B0);
  }

  return result;
}

uint64_t ContainerContent.Child.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - v18;
  v20 = type metadata accessor for ContainerContent.Child();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = &unk_23E907E20;
      sub_23E87E3F0(v23, v7, &qword_27E35E438, &unk_23E907E20);
      v29 = sub_23E9006D4();
      (*(*(v29 - 8) + 16))(a1, v7, v29);
      v27 = v7;
      v28 = &qword_27E35E438;
      goto LABEL_6;
    }

    v31 = &qword_27E35E430;
    v32 = &unk_23E902C80;
    sub_23E87E3F0(v23, v19, &qword_27E35E430, &unk_23E902C80);
    v34 = sub_23E9006D4();
    (*(*(v34 - 8) + 16))(a1, v19, v34);
    v27 = v19;
LABEL_9:
    v28 = v31;
    v30 = v32;
    return sub_23E87E458(v27, v28, v30);
  }

  if (EnumCaseMultiPayload)
  {
    v31 = &unk_27E35E440;
    v32 = &unk_23E902C90;
    sub_23E87E3F0(v23, v15, &unk_27E35E440, &unk_23E902C90);
    v33 = sub_23E9006D4();
    (*(*(v33 - 8) + 16))(a1, v15, v33);
    v27 = v15;
    goto LABEL_9;
  }

  v25 = &qword_23E903300;
  sub_23E87E3F0(v23, v11, &unk_27E35E630, &qword_23E903300);
  v26 = sub_23E9006D4();
  (*(*(v26 - 8) + 16))(a1, v11, v26);
  v27 = v11;
  v28 = &unk_27E35E630;
LABEL_6:
  v30 = v25;
  return sub_23E87E458(v27, v28, v30);
}

uint64_t sub_23E882004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerContent.Child();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E88206C()
{
  result = qword_27E35E5B8;
  if (!qword_27E35E5B8)
  {
    sub_23E9006D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E5B8);
  }

  return result;
}

uint64_t sub_23E882150(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23E900764();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_23E900884();
  return sub_23E900754();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

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

void sub_23E882260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v31[0] = a1;
  v31[1] = a2;
  sub_23E882570();
  v8 = (sub_23E900BF4() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    v7 = *v9;
    v6 = v9[1];
  }

  else
  {
  }

  sub_23E8C5AD4(46, 0xE100000000000000, v7, v6);
  v10 = sub_23E900974();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x23EF175C0](v10, v12, v14, v16);
  v19 = v18;

  sub_23E8C5AD4(40, 0xE100000000000000, a3, a4);
  v20 = sub_23E900974();
  v21 = MEMORY[0x23EF175C0](v20);
  v23 = v22;

  v24 = sub_23E900744();
  v25 = sub_23E900B14();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31[0] = v27;
    *v26 = 67109634;
    v28 = pthread_self();
    *(v26 + 4) = pthread_mach_thread_np(v28);
    *(v26 + 8) = 2082;
    v29 = sub_23E887B9C(v17, v19, v31);

    *(v26 + 10) = v29;
    *(v26 + 18) = 2082;
    v30 = sub_23E887B9C(v21, v23, v31);

    *(v26 + 20) = v30;
    _os_log_impl(&dword_23E879000, v24, v25, "[%u] %{public}s::%{public}s", v26, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v27, -1, -1);
    MEMORY[0x23EF18560](v26, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_23E882570()
{
  result = qword_27E35E5C0;
  if (!qword_27E35E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E5C0);
  }

  return result;
}

uint64_t sub_23E8825E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23E888E00;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23E8829CC(v4);
}

uint64_t sub_23E882678(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23E888DC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  *(v7 + 56) = v6;
  *(v7 + 64) = v5;
  sub_23E8829CC(v3);
  return sub_23E882A30(v8);
}

uint64_t AirPlayOverlayCoordinator.onConnectionError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_23E8829CC(v1);
  return v1;
}

uint64_t AirPlayOverlayCoordinator.onConnectionError.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return sub_23E882A30(v5);
}

uint64_t sub_23E88282C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23E888DC0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23E8829CC(v4);
}

uint64_t sub_23E8828C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23E888DB8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_23E8829CC(v3);
  return sub_23E882A30(v8);
}

uint64_t AirPlayOverlayCoordinator.onReady.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_23E8829CC(v1);
  return v1;
}

uint64_t sub_23E8829CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t AirPlayOverlayCoordinator.onReady.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_23E882A30(v5);
}

uint64_t sub_23E882A30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t AirPlayOverlayCoordinator.__allocating_init(displayTreeBuilder:connectionProvider:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = a1;
  v2 = sub_23E900794();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E9005E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = NSTemporaryDirectory();
  sub_23E900884();

  sub_23E900594();

  (*(v8 + 16))(v12, v14, v7);
  sub_23E882D3C();
  (*(v3 + 104))(v6, *MEMORY[0x277D851D0], v2);
  v16 = sub_23E900B44();
  (*(v3 + 8))(v6, v2);
  v17 = type metadata accessor for RenderActionsFileLogger();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_23E8E5768(v12, v16);

  v21 = v27;
  sub_23E8810DC(v27, v30);
  v22 = v28;
  sub_23E8810DC(v28, v29);
  v23 = swift_allocObject();
  v24 = sub_23E888284(v30, v29, v20, v23);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  (*(v8 + 8))(v14, v7);
  return v24;
}

unint64_t sub_23E882D3C()
{
  result = qword_27E35E5D0;
  if (!qword_27E35E5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35E5D0);
  }

  return result;
}

uint64_t AirPlayOverlayCoordinator.__allocating_init(displayTreeBuilder:connectionProvider:actionsLogger:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_23E8889DC(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

uint64_t AirPlayOverlayCoordinator.init(displayTreeBuilder:connectionProvider:actionsLogger:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_23E88861C(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v14;
}

uint64_t sub_23E882F24()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 192);

  v4 = sub_23E8BC8C4(v3);
  v0[6] = 0;

  v0[7] = sub_23E8C45C8(v4);

  return MEMORY[0x2822009F8](sub_23E882FDC, 0, 0);
}

uint64_t sub_23E882FDC()
{
  v1 = v0[6];
  v2 = sub_23E88305C(v0[7]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23E88305C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_23E900D04();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    v6 = sub_23E900C24();
    v7 = *(v1 + 36);
    result = objc_opt_self();
    v30 = result;
    v31 = v1;
    v8 = 0;
    v27 = v1 + 64;
    v28 = v7;
    v29 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v32 = v8;
      v7 = v4;
      v11 = *(v1 + 48) + (v6 << 6);
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 41);
      v15 = *(v11 + 56);

      v16 = sub_23E900854();
      v17 = sub_23E900854();

      v18 = [v30 resourceWithURL:v16 type:2 MIMEType:v17];

      sub_23E900CE4();
      v19 = *(v33 + 16);
      sub_23E900D14();
      v1 = v31;
      sub_23E900D24();
      result = sub_23E900CF4();
      v9 = 1 << *(v31 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v20 = *(v7 + 8 * v10);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v4 = v7;
      LODWORD(v7) = v28;
      if (v28 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v27 + 8 * v10);
        while (v23 < (v9 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_23E889730(v6, v28, 0);
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_23E889730(v6, v28, 0);
      }

LABEL_4:
      v8 = v32 + 1;
      v6 = v9;
      if (v32 + 1 == v29)
      {
        return v33;
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
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23E883348(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v5 = swift_task_alloc();
  v2[20] = v5;
  *v5 = v2;
  v5[1] = sub_23E8833FC;

  return sub_23E8BCB48((v2 + 10), a1, a2);
}

uint64_t sub_23E8833FC()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E8834F8, 0, 0);
}

uint64_t sub_23E8834F8()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  if (*(v0 + 24))
  {
    v3 = *(v0 + 72);
    v11 = (*(v0 + 64) + **(v0 + 64));
    v4 = *(*(v0 + 64) + 4);
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = sub_23E88366C;
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);

    return v11(v7, v6);
  }

  else
  {
    sub_23E8896DC();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_23E88366C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 168);
  v8 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v9 = sub_23E883818;
  }

  else
  {
    *(v6 + 184) = a2;
    *(v6 + 192) = a1;
    v9 = sub_23E8837A0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23E8837A0()
{
  sub_23E87E458((v0 + 2), &qword_27E35E620, &qword_23E9032F0);
  v1 = v0[1];
  v3 = v0[23];
  v2 = v0[24];

  return v1(v2, v3);
}

uint64_t sub_23E883818()
{
  sub_23E87E458(v0 + 16, &qword_27E35E620, &qword_23E9032F0);
  v1 = *(v0 + 176);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E8838AC()
{
  v11 = v0;
  v1 = *(v0[5] + 216);
  v0[6] = v1;
  os_unfair_lock_lock(v1 + 9);
  sub_23E883EA4(&v1[4], &v10);
  os_unfair_lock_unlock(v1 + 9);
  v2 = v0[5];
  v0[7] = v10;
  v3 = v2[19];
  v4 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v3);
  v5 = *(v4 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_23E883A44;

  return v9(v3, v4);
}

uint64_t sub_23E883A44()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E883B40, 0, 0);
}

uint64_t sub_23E883B40()
{
  v1 = *(v0 + 40);
  v3 = v1[24];
  v2 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v3);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_23E883C04;

  return AirPlayOverlayDisplayTreeProtocol.activate(with:)((v1 + 2), v3, v2);
}

uint64_t sub_23E883C04()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23E883E40;
  }

  else
  {
    v3 = sub_23E883D18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_23E883D18()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = *(v0[5] + 208);
  sub_23E8B543C();
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v3 + 9);
  sub_23E8893A8(&v3[4]);
  os_unfair_lock_unlock(v3 + 9);
  if (!v1)
  {
    v5 = v0[5];

    swift_beginAccess();
    v6 = *(v5 + 72);
    v7 = v0[7];
    if (v6)
    {
      v8 = *(v0[5] + 80);

      v6(v9);
      swift_unknownObjectRelease();
      sub_23E882A30(v6);
    }

    else
    {
      v10 = v0[7];
      swift_unknownObjectRelease();
    }

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_23E883E40()
{
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23E883EA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    if (v2 != 2 && v2 == 3)
    {
      sub_23E889400();
      swift_allocError();
      v5 = 2;
LABEL_10:
      *v4 = v5;
      return swift_willThrow();
    }

LABEL_9:
    sub_23E889400();
    swift_allocError();
    v5 = 1;
    goto LABEL_10;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if ([swift_unknownObjectRetain() playerTimeControlStatus] == 2)
  {
    sub_23E889028(v8, v9, 1u);
    *a1 = v8;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    *a2 = v8;
    return swift_unknownObjectRetain();
  }

  else
  {
    sub_23E889400();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_23E883FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23E88406C;

  return sub_23E88388C();
}

uint64_t sub_23E88406C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E8841A0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_23E8841A0()
{
  v17 = v0;
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  v3 = v1;
  v4 = sub_23E900744();
  v5 = sub_23E900B04();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v11 = sub_23E9008D4();
    v13 = sub_23E887B9C(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23E879000, v4, v5, "Unable to handle time control status change: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF18560](v9, -1, -1);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_23E884370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23E8891B4(a3, v27 - v11, &qword_27E35E5E0, &qword_23E905750);
  v13 = sub_23E900A74();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23E87E458(v12, &qword_27E35E5E0, &qword_23E905750);
  }

  else
  {
    sub_23E900A64();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23E900A34();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23E9008E4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t *AirPlayOverlayCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];
  sub_23E882A30(v0[7]);
  v2 = v0[10];
  sub_23E882A30(v0[9]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  v3 = v0[26];

  v4 = v0[27];

  sub_23E87E458((v0 + 28), &unk_27E35F5B0, &unk_23E903040);
  return v0;
}

uint64_t AirPlayOverlayCoordinator.__deallocating_deinit()
{
  AirPlayOverlayCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23E884734()
{
  v1 = *(*(v0 + 16) + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E88938C(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000068, 0x800000023E9087B0, 0xD000000000000014, 0x800000023E908840);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_23E8848AC;
  v4 = *(v0 + 16);

  return sub_23E88388C();
}

uint64_t sub_23E8848AC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_23E8849A0(uint64_t a1)
{
  if (*(a1 + 16) - 2 >= 3)
  {
    v3 = *a1;
    if (*(a1 + 16))
    {
    }

    v4 = swift_allocObject();
    swift_weakInit();
    v7[4] = sub_23E88948C;
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_23E8906D8;
    v7[3] = &block_descriptor;
    v5 = _Block_copy(v7);

    v6 = [v3 beginObserveringTimeControlStatusWithChangeHandler_];
    _Block_release(v5);
    *a1 = v3;
    *(a1 + 8) = v6;
    *(a1 + 16) = 1;
  }

  else
  {
    sub_23E889400();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
  }
}

uint64_t sub_23E884AF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_23E900A74();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_23E884370(0, 0, v3, &unk_23E9032B8, v7);
  }

  return result;
}

uint64_t AirPlayOverlayCoordinator.didConnect(adaptor:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_23E900A74();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_23E8810DC(a1, v11);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  sub_23E881028(v11, (v8 + 5));

  sub_23E884370(0, 0, v6, &unk_23E903058, v8);
}

uint64_t sub_23E884D40()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23E884DDC;

  return sub_23E884714();
}

uint64_t sub_23E884DDC()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E884F10, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_23E884F10()
{
  v17 = v0;
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  v3 = v1;
  v4 = sub_23E900744();
  v5 = sub_23E900B04();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v11 = sub_23E9008D4();
    v13 = sub_23E887B9C(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23E879000, v4, v5, "Unable to handle didConnect event: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF18560](v9, -1, -1);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t AirPlayOverlayCoordinator.adaptor(_:connectionDidFailWithError:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v6 = sub_23E900764();
  __swift_project_value_buffer(v6, qword_27E367138);
  sub_23E8810DC(a1, v25);
  v7 = a2;
  v8 = sub_23E900744();
  v9 = sub_23E900B04();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446466;
    sub_23E8810DC(v25, &v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E8, &unk_23E903060);
    v12 = sub_23E9008D4();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(v25);
    v15 = sub_23E887B9C(v12, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v23 = a2;
    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v17 = sub_23E9008D4();
    v19 = sub_23E887B9C(v17, v18, &v24);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_23E879000, v8, v9, "Unable to connect adaptor %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v11, -1, -1);
    MEMORY[0x23EF18560](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  result = swift_beginAccess();
  v21 = *(v3 + 56);
  if (v21)
  {
    v22 = *(v3 + 64);

    v21(a2);
    return sub_23E882A30(v21);
  }

  return result;
}

void AirPlayOverlayCoordinator.didDisconnect(adaptor:)()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock((v1 + 36));
  sub_23E888BA4((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

uint64_t sub_23E885394(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v12 - v7;
  v9 = *a1;
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
    }

    goto LABEL_6;
  }

  if (*(a1 + 16) - 2 < 2)
  {
LABEL_6:
    *a1 = v9;
    a1[1] = 0;
    *(a1 + 16) = 0;
    v10 = sub_23E900A74();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = a2;

    sub_23E884370(0, 0, v8, &unk_23E903278, v11);
  }

  return result;
}

uint64_t sub_23E885508()
{
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000068, 0x800000023E9087B0, 0xD000000000000017, 0x800000023E908820);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = *(v4 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_23E8856B8;

  return v9(v3, v4);
}

uint64_t sub_23E8856B8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_23E8857B8, 0, 0);
}

uint64_t sub_23E8857B8()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 56);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_23E8858E0;

  return v8(v2, v3);
}

uint64_t sub_23E8858E0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E8859DC, 0, 0);
}

uint64_t sub_23E8859DC()
{
  v1 = v0[2];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_23E885B0C;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t sub_23E885B0C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E885C24, 0, 0);
}

uint64_t sub_23E885C24()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  (*(v3 + 56))(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23E885CB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_23E900A74();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_23E8810DC(a1, v11);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  sub_23E881028(v11, (v8 + 5));

  sub_23E884370(0, 0, v6, &unk_23E903268, v8);
}

void sub_23E885DE4()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock((v1 + 36));
  sub_23E889A98((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

BOOL AirPlayOverlayCoordinator.isActive.getter()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32) == 3;
  os_unfair_lock_unlock((v1 + 36));
  return v2;
}

void AirPlayOverlayCoordinator.activate(with:)()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E888BC0(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
}

uint64_t sub_23E885ED0(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 16) == 4 && *result == 0)
  {
    v15 = v3;
    v16 = v4;
    *result = a2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v5 = a3[14];
    v6 = a3[15];
    __swift_project_boxed_opaque_existential_1(a3 + 11, v5);
    v8 = *(v6 + 40);
    v9 = swift_unknownObjectRetain();
    v8(v9, v5, v6);
    sub_23E8891B4((a3 + 28), v12, &unk_27E35F5B0, &unk_23E903040);
    v10 = v13;
    if (v13)
    {
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 8))(v10, v11);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
      return sub_23E87E458(v12, &unk_27E35F5B0, &unk_23E903040);
    }
  }

  return result;
}

Swift::Void __swiftcall AirPlayOverlayCoordinator.deactivate()()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E888BDC(&v1[4]);

  os_unfair_lock_unlock(v1 + 9);
}

uint64_t sub_23E886050(uint64_t a1, void *a2)
{
  sub_23E889028(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  v4 = a2[14];
  v5 = a2[15];
  __swift_project_boxed_opaque_existential_1(a2 + 11, v4);
  (*(v5 + 48))(v4, v5);
  v6 = a2[24];
  v7 = a2[25];
  __swift_project_boxed_opaque_existential_1(a2 + 21, v6);
  (*(v7 + 48))(v6, v7);
  sub_23E8891B4((a2 + 28), v11, &unk_27E35F5B0, &unk_23E903040);
  v8 = v12;
  if (!v12)
  {
    return sub_23E87E458(v11, &unk_27E35F5B0, &unk_23E903040);
  }

  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 16))(v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_23E8861A8()
{
  v1 = *(v0 + 16);
  v2 = v1[14];
  v3 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v2);
  v4 = *(v3 + 56);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E8848AC;

  return v8(v2, v3);
}

BOOL sub_23E8862D0()
{
  v1 = *(*v0 + 216);
  os_unfair_lock_lock((v1 + 36));
  v2 = *(v1 + 32) == 3;
  os_unfair_lock_unlock((v1 + 36));
  return v2;
}

void sub_23E886314()
{
  v1 = *(*v0 + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E889AFC(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
}

void sub_23E88636C()
{
  v1 = *(*v0 + 216);
  os_unfair_lock_lock(v1 + 9);
  sub_23E889A80(&v1[4]);

  os_unfair_lock_unlock(v1 + 9);
}

uint64_t sub_23E8863EC()
{
  v1 = *(v0 + 16);
  v2 = v1[14];
  v3 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v2);
  v4 = *(v3 + 56);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E889A7C;

  return v8(v2, v3);
}

Swift::Void __swiftcall AirPlayOverlayCoordinator.setNeedsUpdate()()
{
  v1 = v0[24];
  v2 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v1);
  (*(*(v2 + 8) + 8))(v1);
}

uint64_t sub_23E886568()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 200);
  __swift_project_boxed_opaque_existential_1((v1 + 168), v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t AirPlayOverlayCoordinator.register(assets:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23E8865D8, 0, 0);
}

uint64_t sub_23E8865D8()
{
  v1 = v0[3];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_23E886708;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_23E886708()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AirPlayOverlayCoordinator.unregisterAsset(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23E886820, 0, 0);
}

uint64_t sub_23E886820()
{
  v1 = v0[4];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_23E886950;
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_23E886950()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AirPlayOverlayCoordinator.filteredAssets(by:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_23E886A68, 0, 0);
}

uint64_t sub_23E886A68()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E886B98;
  v7 = *(v0 + 32);

  return v9(v7, v2, v3);
}

uint64_t sub_23E886B98(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23E886CB4()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E889AEC;

  return v8(v2, v3);
}

uint64_t AirPlayOverlayCoordinator.queryAsset(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23E886E00, 0, 0);
}

uint64_t sub_23E886E00()
{
  v1 = v0[5];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 40);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_23E886F34;
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v8, v2, v3);
}

uint64_t sub_23E886F34()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E887048()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 48);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E8848AC;

  return v8(v2, v3);
}

uint64_t sub_23E887190()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 56);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E889A7C;

  return v8(v2, v3);
}

uint64_t sub_23E8872B8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_23E8872DC, 0, 0);
}

uint64_t sub_23E8872DC()
{
  v1 = v0[3];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_23E889ACC;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_23E88740C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_23E887434, 0, 0);
}

uint64_t sub_23E887434()
{
  v1 = v0[4];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_23E889AD0;
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_23E887564(char a1)
{
  *(v2 + 32) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x2822009F8](sub_23E88758C, 0, 0);
}

uint64_t sub_23E88758C()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E889AEC;
  v7 = *(v0 + 32);

  return v9(v7, v2, v3);
}

uint64_t sub_23E8876E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_23E887708, 0, 0);
}

uint64_t sub_23E887708()
{
  v1 = v0[5];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 40);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_23E889AD4;
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v8, v2, v3);
}

uint64_t sub_23E887860()
{
  v1 = *(v0 + 16);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 48);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E889A7C;

  return v8(v2, v3);
}

uint64_t sub_23E8879AC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E887AA4;

  return v7(a1);
}

uint64_t sub_23E887AA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E887B9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23E887C68(v11, 0, 0, 1, a1, a2);
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
    sub_23E889154(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23E887C68(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23E887D74(a5, a6);
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
    result = sub_23E900CD4();
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

uint64_t sub_23E887D74(uint64_t a1, unint64_t a2)
{
  v4 = sub_23E887DC0(a1, a2);
  sub_23E887EF0(&unk_28511BB28);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23E887DC0(uint64_t a1, unint64_t a2)
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

  v6 = sub_23E887FDC(v5, 0);
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

  result = sub_23E900CD4();
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
        v10 = sub_23E900944();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23E887FDC(v10, 0);
        result = sub_23E900CA4();
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

uint64_t sub_23E887EF0(uint64_t result)
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

  result = sub_23E888050(result, v12, 1, v3);
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

void *sub_23E887FDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F8, &qword_23E903280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23E888050(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F8, &qword_23E903280);
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

uint64_t sub_23E888144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = &type metadata for DispatchSourceTimeProvider;
  v17 = &off_28511CB58;
  v13 = type metadata accessor for AirPlayOverlayAdaptor();
  v14 = &protocol witness table for AirPlayOverlayAdaptor;
  *&v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E628, &qword_23E9032F8);
  v6 = swift_allocObject();
  *(v6 + 68) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 2;
  *(a3 + 136) = v6;
  *(a3 + 144) = 0;
  v7 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = (a3 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  *v9 = 0;
  v9[1] = 0;
  sub_23E881028(&v12, a3 + 16);
  v10 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 72) = v10;
  *(a3 + 88) = *(a2 + 32);
  sub_23E881028(&v15, a3 + 96);
  return a3;
}

uint64_t sub_23E888284(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for RenderActionsFileLogger();
  v36 = &protocol witness table for RenderActionsFileLogger;
  *&v34 = a3;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E608, &unk_23E9032C0);
  v7 = swift_allocObject();
  *(v7 + 36) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 4;
  *(a4 + 216) = v7;
  type metadata accessor for RemoteInspectorCoordinator();
  swift_allocObject();
  v8 = sub_23E8B573C();
  sub_23E8810DC(a2, &v31);
  v27 = type metadata accessor for AirPlayOverlayAdaptor();
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E610, &qword_23E905A40);
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xC000000000000000;
  *(v9 + 56) = v10;
  *(v9 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_23E881028(&v31, v9 + 16);
  sub_23E8810DC(&v34, &v31);
  v11 = type metadata accessor for AirPlayOverlayDisplayTree();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = sub_23E888144(v9, &v31, v14);
  sub_23E8810DC(&v34, &v31);
  v30[3] = v27;
  v30[4] = &protocol witness table for AirPlayOverlayAdaptor;
  v30[0] = v9;
  v16 = type metadata accessor for AirPlayOverlayAssetStore();
  v17 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  sub_23E8810DC(v30, v17 + 112);
  sub_23E8891B4(&v31, v17 + 152, &unk_27E35F5B0, &unk_23E903040);
  v18 = sub_23E88F918(MEMORY[0x277D84F90]);
  sub_23E87E458(&v31, &unk_27E35F5B0, &unk_23E903040);
  __swift_destroy_boxed_opaque_existential_1(v30);
  *(v17 + 192) = v18;
  sub_23E8810DC(a1, a4 + 16);
  *(a4 + 112) = v27;
  *(a4 + 120) = &protocol witness table for AirPlayOverlayAdaptor;
  *(a4 + 88) = v9;
  *(a4 + 152) = v16;
  *(a4 + 160) = &off_28511E938;
  *(a4 + 128) = v17;
  v32 = v11;
  v33 = &off_28511FBF8;
  *&v31 = v15;

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_23E881028(&v31, a4 + 168);
  *(a4 + 208) = v8;
  sub_23E881028(&v34, a4 + 224);
  swift_beginAccess();
  *(v9 + 72) = &protocol witness table for AirPlayOverlayCoordinator;
  swift_unknownObjectWeakAssign();

  v19 = (v15 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_23E889AF8;
  v19[1] = v8;

  sub_23E882A30(v20);

  v22 = v8[12];
  v23 = v8[13];
  v8[12] = &unk_23E903308;
  v8[13] = v17;

  sub_23E882A30(v22);
  v24 = v8[14];
  v25 = v8[15];
  v8[14] = &unk_23E903310;
  v8[15] = v17;
  sub_23E882A30(v24);

  return a4;
}

uint64_t sub_23E88861C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E608, &unk_23E9032C0);
  v11 = swift_allocObject();
  *(v11 + 36) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 4;
  *(a4 + 216) = v11;
  type metadata accessor for RemoteInspectorCoordinator();
  swift_allocObject();
  v12 = sub_23E8B573C();
  sub_23E8810DC(a2, &v35);
  v31 = type metadata accessor for AirPlayOverlayAdaptor();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E610, &qword_23E905A40);
  v14 = swift_allocObject();
  *(v14 + 48) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xC000000000000000;
  *(v13 + 56) = v14;
  *(v13 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_23E881028(&v35, v13 + 16);
  sub_23E8810DC(&v38, &v35);
  v15 = type metadata accessor for AirPlayOverlayDisplayTree();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = sub_23E888144(v13, &v35, v18);
  sub_23E8810DC(&v38, &v35);
  v34[3] = v31;
  v34[4] = &protocol witness table for AirPlayOverlayAdaptor;
  v34[0] = v13;
  v20 = type metadata accessor for AirPlayOverlayAssetStore();
  v21 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  sub_23E8810DC(v34, v21 + 112);
  sub_23E8891B4(&v35, v21 + 152, &unk_27E35F5B0, &unk_23E903040);
  v22 = sub_23E88F918(MEMORY[0x277D84F90]);
  sub_23E87E458(&v35, &unk_27E35F5B0, &unk_23E903040);
  __swift_destroy_boxed_opaque_existential_1(v34);
  *(v21 + 192) = v22;
  sub_23E8810DC(a1, a4 + 16);
  *(a4 + 112) = v31;
  *(a4 + 120) = &protocol witness table for AirPlayOverlayAdaptor;
  *(a4 + 88) = v13;
  *(a4 + 152) = v20;
  *(a4 + 160) = &off_28511E938;
  *(a4 + 128) = v21;
  v36 = v15;
  v37 = &off_28511FBF8;
  *&v35 = v19;

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_23E881028(&v35, a4 + 168);
  *(a4 + 208) = v12;
  sub_23E881028(&v38, a4 + 224);
  swift_beginAccess();
  *(v13 + 72) = &protocol witness table for AirPlayOverlayCoordinator;
  swift_unknownObjectWeakAssign();

  v23 = (v19 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = sub_23E8895A0;
  v23[1] = v12;

  sub_23E882A30(v24);

  v26 = v12[12];
  v27 = v12[13];
  v12[12] = &unk_23E9032D8;
  v12[13] = v21;

  sub_23E882A30(v26);
  v28 = v12[14];
  v29 = v12[15];
  v12[14] = &unk_23E9032E8;
  v12[15] = v21;
  sub_23E882A30(v28);

  return a4;
}

uint64_t sub_23E8889DC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  (*(v11 + 16))(v14, a3, a5);
  return sub_23E88861C(a1, a2, v14, v15, a5, a6);
}

uint64_t sub_23E888AE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E889AD8;

  return sub_23E884D40();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AirPlayKit0aB18OverlayCoordinatorC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E888CCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23E888D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_23E888D58(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_23E888D80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E888DC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_23E888E00(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_23E888E74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E888F34;

  return sub_23E884D40();
}

uint64_t sub_23E888F34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_23E889028(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3)
    {
      return;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      swift_unknownObjectRelease();
    }

    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_23E8890A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E889AD8;

  return sub_23E8854E8(a1, v4, v5, v6);
}

uint64_t sub_23E889154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23E8891B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E88921C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E889AD8;

  return sub_23E8879AC(a1, v5);
}

uint64_t sub_23E8892D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E888F34;

  return sub_23E8879AC(a1, v5);
}

uint64_t sub_23E8893A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_23E889028(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  return swift_unknownObjectRetain();
}

unint64_t sub_23E889400()
{
  result = qword_27E35E600;
  if (!qword_27E35E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E600);
  }

  return result;
}

uint64_t sub_23E889454()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8894EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E889AD8;

  return sub_23E883FDC();
}

uint64_t sub_23E8895A4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23E889ADC;

  return sub_23E882F04(v0);
}

uint64_t sub_23E889634(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889AF0;

  return sub_23E883348(a1, a2);
}

unint64_t sub_23E8896DC()
{
  result = qword_27E35E618;
  if (!qword_27E35E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E618);
  }

  return result;
}

uint64_t sub_23E889730(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23E88973C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23E8897CC;

  return sub_23E882F04(v0);
}

uint64_t sub_23E8897CC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23E8898C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E889970;

  return sub_23E883348(a1, a2);
}

uint64_t sub_23E889970(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t static RenderNode<>.container(identifier:children:flow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_23E9006D4();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v10 = (a4 + v9[9]);
  *v10 = a2;
  v10[1] = v7;
  *(a4 + v9[10]) = 0;
  v11 = (a4 + v9[11]);
  *v11 = 0;
  v11[1] = 0;
  *(v11 + 14) = 0;
  v12 = a4 + v9[12];
  *v12 = 0;
  *(v12 + 12) = 0;
  *(v12 + 8) = 0;
  v13 = a4 + v9[13];
  *v13 = 0x3F0000003F000000;
  *(v13 + 8) = 0;
  v14 = a4 + v9[14];
  *v14 = xmmword_23E903320;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = a4 + v9[15];
  *v15 = 1065353216;
  *(v15 + 8) = 0;
  v16 = a4 + v9[16];
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 2;
  *(a4 + v9[17]) = 0;
  v17 = (a4 + v9[18]);
  *v17 = 0;
  v17[1] = 0;
}

uint64_t RenderNode<>.withChildren(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v6 = *(v2 + *(v5 + 36) + 8);
  sub_23E8891B4(v2, a2, &unk_27E35E630, &qword_23E903300);
  v7 = (a2 + *(v5 + 36));
  v8 = *v7;

  *v7 = a1;
  v7[1] = v6;
  return result;
}

uint64_t RenderNode<>.appending(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return sub_23E889D1C(a1, &qword_27E35E430, &unk_23E902C80, a2);
}

{
  return sub_23E889D1C(a1, &unk_27E35E630, &qword_23E903300, a2);
}

{
  return sub_23E889D1C(a1, &unk_27E35E440, &unk_23E902C90, a2);
}

uint64_t sub_23E889D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v8 = type metadata accessor for ContainerContent.Child();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v14 = *(v13 + 36);
  v24 = v4;
  v15 = v4 + v14;
  v16 = *v15;
  sub_23E8891B4(a1, v12, a2, a3);
  swift_storeEnumTagMultiPayload();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_23E88A764(0, v16[2] + 1, 1, v16, &qword_27E35E688, &qword_23E903360, type metadata accessor for ContainerContent.Child);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_23E88A764(v17 > 1, v18 + 1, 1, v16, &qword_27E35E688, &qword_23E903360, type metadata accessor for ContainerContent.Child);
  }

  v16[2] = v18 + 1;
  sub_23E88A940(v12, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18);
  v19 = *(v15 + 8);
  v20 = v25;
  sub_23E8891B4(v24, v25, &unk_27E35E630, &qword_23E903300);
  v21 = (v20 + *(v13 + 36));
  v22 = *v21;

  *v21 = v16;
  v21[1] = v19;
  return result;
}

void *sub_23E889F50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23E88A098(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E660, &unk_23E905150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E88A1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E668, &unk_23E9079A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_23E88A2E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E690, &qword_23E903368);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E698, &unk_23E903370);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23E88A418(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E640, &qword_23E903330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23E88A574(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E650, &qword_23E903340);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_23E88A764(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_23E88A940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerContent.Child();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_23E88A9A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E678, &qword_23E903350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_23E88AAB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E680, &qword_23E903358);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_23E88ABB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E670, &qword_23E903348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23E88ACD0()
{
  v1 = v0;
  v2 = type metadata accessor for ImageContent.ContentType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RenderLayerType();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23E890014(v1, v9, type metadata accessor for RenderLayerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 2)
  {
    result = 0;
    if ((v11 - 4) < 2)
    {
      return result;
    }

    v16 = *v9;
    v17 = v9[1];
    v18 = v9[2];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E903380;
    *(inited + 32) = 1954047348;
    v14 = inited + 32;
    *(inited + 40) = 0xE400000000000000;
    v22 = v16;
    v23 = v17;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E903380;
      *(inited + 32) = 0x737569646172;
      v14 = inited + 32;
      *(inited + 40) = 0xE600000000000000;
      LODWORD(v22) = v12;
LABEL_7:
      sub_23E900C64();
      v19 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      sub_23E87E458(v14, &qword_27E35E598, &unk_23E905080);
      return v19;
    }

    sub_23E89007C(v9, v5, type metadata accessor for ImageContent.ContentType);
    v20 = sub_23E8CDEC8();
    sub_23E88FC6C(v5, type metadata accessor for ImageContent.ContentType);
    return v20;
  }

  else
  {
    v22 = *v9;
    return sub_23E8D2B70();
  }
}

uint64_t sub_23E88AF58()
{
  v1 = type metadata accessor for RenderLayerType();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EF0;
  *(inited + 32) = 1701869940;
  v6 = 0xE400000000000000;
  *(inited + 40) = 0xE400000000000000;
  sub_23E890014(v0, v4, type metadata accessor for RenderLayerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23E88FC6C(v4, type metadata accessor for RenderLayerType);
      v8 = 1954047348;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v6 = 0xE500000000000000;
      v8 = 0x6576727563;
    }

    else
    {
      v6 = 0xE700000000000000;
      v8 = 0x6E6F67796C6F70;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = 1735289202;
    }

    else
    {
      sub_23E88FC6C(v4, type metadata accessor for RenderLayerType);
      v6 = 0xE500000000000000;
      v8 = 0x6567616D69;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v8 = 0x726579616CLL;
  }

  v14 = v8;
  v15 = v6;
  sub_23E900C64();
  *(inited + 88) = 0x7241657461657263;
  *(inited + 96) = 0xEF73746E656D7567;
  v9 = sub_23E88ACD0();
  if (v9)
  {
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
  }

  else
  {
    *(inited + 136) = 0;
    *(inited + 120) = 0u;
    *(inited + 104) = 0u;
  }

  v10 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v11 = sub_23E88B1F4(v10);

  return v11;
}

uint64_t sub_23E88B1F4(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x277D84F98];
  v47 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v30 = result;
  if (v6)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
  }

  while (!v6);
  v48 = v2;
  v9 = v10;
  while (1)
  {
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_23E8891B4(*(v1 + 56) + 40 * v12, v45, &qword_27E35E6C8, &unk_23E9039A0);
    *&v44 = v15;
    *(&v44 + 1) = v14;
    v40 = v44;
    v41 = v45[0];
    v42 = v45[1];
    v43 = v46;
    sub_23E8891B4(&v41, &v31, &qword_27E35E6C8, &unk_23E9039A0);
    if (!*(&v32 + 1))
    {

      sub_23E87E458(&v40, &qword_27E35E6D0, &unk_23E9039C0);
      result = sub_23E87E458(&v31, &qword_27E35E6C8, &unk_23E9039A0);
      v2 = v48;
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    v34 = v31;
    v35 = v32;
    v38[0] = v41;
    v38[1] = v42;
    v36 = v33;
    v39 = v43;
    v37 = v40;
    v2 = v48;
    v16 = *(v48 + 16);
    if (*(v48 + 24) <= v16)
    {

      sub_23E88D2B4(v16 + 1, 1);
      v2 = v47;
    }

    else
    {
    }

    v17 = v37;
    v18 = *(v2 + 40);
    sub_23E900EB4();
    sub_23E900904();
    result = sub_23E900F14();
    v19 = v2 + 64;
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v2 + 48) + 16 * v23) = v17;
    v28 = *(v2 + 56) + 40 * v23;
    v29 = v35;
    *v28 = v34;
    *(v28 + 16) = v29;
    *(v28 + 32) = v36;
    ++*(v2 + 16);
    result = sub_23E87E458(v38, &qword_27E35E6C8, &unk_23E9039A0);
    v1 = v30;
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_11:
    v48 = v2;
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v19 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_23E88B530(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageContent.ContentType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RenderLayerType();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23E890014(v2, v11, type metadata accessor for RenderLayerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v16 = *v11;
      v17 = v11[1];
      v18 = v11[2];
      MEMORY[0x23EF17B90](3);
      sub_23E900904();

      sub_23E8E1F30(a1, v18);
    }

    if (EnumCaseMultiPayload == 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = 5;
    }

    return MEMORY[0x23EF17B90](v14);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_23E89007C(v11, v7, type metadata accessor for ImageContent.ContentType);
      MEMORY[0x23EF17B90](2);
      ImageContent.ContentType.hash(into:)(a1);
      return sub_23E88FC6C(v7, type metadata accessor for ImageContent.ContentType);
    }

    v13 = *v11;
    MEMORY[0x23EF17B90](1);
    return sub_23E900EE4();
  }

  v15 = *v11;
  MEMORY[0x23EF17B90](0);
  if (!(v15 >> 30))
  {
    MEMORY[0x23EF17B90](1);
    goto LABEL_17;
  }

  if (v15 >> 30 != 1)
  {
    v14 = 0;
    return MEMORY[0x23EF17B90](v14);
  }

  MEMORY[0x23EF17B90](2);
LABEL_17:
  sub_23E900904();

  return sub_23E900EE4();
}

uint64_t sub_23E88B8A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E88AF58();
  *a1 = result;
  return result;
}

uint64_t sub_23E88B8C8()
{
  sub_23E900EB4();
  sub_23E88B530(v1);
  return sub_23E900F14();
}

uint64_t sub_23E88B90C()
{
  sub_23E900EB4();
  sub_23E88B530(v1);
  return sub_23E900F14();
}

uint64_t type metadata accessor for RenderLayerType()
{
  result = qword_27E35E778;
  if (!qword_27E35E778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E88B9E0(uint64_t a1)
{
  result = sub_23E88FE6C(&qword_27E35E6A8, type metadata accessor for RenderLayerType);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E88BA38(uint64_t a1)
{
  result = sub_23E88FE6C(&qword_27E35E6B0, type metadata accessor for RenderLayerType);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E88BA90(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v110 = a2;
  v111 = a2 + 56;
  v98 = v7;
  v99 = result + 56;
  v100 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v8 = __clz(__rbit64(v6));
    v102 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 40 * (v8 | (v2 << 6));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 20);
    v17 = *(v11 + 24);
    v16 = *(v11 + 32);
    v18 = *(a2 + 40);
    sub_23E900EB4();
    sub_23E88FDE0(v13, v12, v14, v15);
    TextAttribute.hash(into:)(v112);
    v107 = v17;
    MEMORY[0x23EF17B90](v17);
    v106 = v16;
    MEMORY[0x23EF17B90](v16);
    v19 = sub_23E900F14();
    v20 = v110;
    v21 = -1 << *(v110 + 32);
    v22 = v19 & ~v21;
    if (((*(v111 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      v93 = v13;
      v94 = v12;
      v95 = v14;
LABEL_173:
      sub_23E88FDF8(v93, v94, v95, v15);
      return 0;
    }

    v101 = v2;
    v108 = ~v21;
    v105 = v14;
    v103 = v12 | v13;
    v23 = *&v14;
    v24 = v14;
    for (i = v14; ; v24 = i)
    {
      v25 = *(v20 + 48) + 40 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 20);
      v31 = *(v25 + 24);
      v30 = *(v25 + 32);
      v112[0] = *v25;
      v112[1] = v27;
      v113 = v28;
      v114 = v29;
      v115 = v13;
      v116 = v12;
      v117 = v24;
      v118 = v15;
      if (v29 > 2)
      {
        if (v29 <= 4)
        {
          if (v29 == 3)
          {
            v32 = v31;
            v33 = v30;
            sub_23E88FDE0(v13, v12, v24, v15);
            sub_23E88FDF8(v26, v27, v28, 3);
            if (v15 != 3)
            {
              goto LABEL_102;
            }

LABEL_89:
            sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
            v60 = *&v26 == *&v13;
LABEL_90:
            v61 = v60 && v32 == v107;
LABEL_93:
            if (v61 && v33 == v106)
            {
              break;
            }

            goto LABEL_103;
          }

          if (v15 == 4)
          {
            if (v27)
            {
              if (v12)
              {
                v104 = v30;
                if (v26 != v13 || v27 != v12)
                {
                  v58 = v24;
                  v59 = sub_23E900E04();
                  sub_23E88FDE0(v13, v12, v58, 4);
                  sub_23E88FDE0(v26, v27, v28, 4);
                  sub_23E88FDE0(v13, v12, v58, 4);
                  sub_23E88FDE0(v26, v27, v28, 4);
                  sub_23E88FDE0(v13, v12, v58, 4);
                  sub_23E88FDE0(v26, v27, v28, 4);
                  sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);

                  sub_23E88FDF8(v13, v12, v58, 4);
                  sub_23E88FDF8(v26, v27, v28, 4);
                  if ((v59 & 1) == 0 || *&v28 != v23)
                  {
                    goto LABEL_103;
                  }

                  goto LABEL_162;
                }

                v82 = v24;
                sub_23E88FDE0(v13, v12, v24, 4);
                sub_23E88FDE0(v13, v12, v28, 4);
                sub_23E88FDE0(v13, v12, v82, 4);
                sub_23E88FDE0(v13, v12, v28, 4);
                sub_23E88FDE0(v13, v12, v82, 4);
                sub_23E88FDE0(v13, v12, v28, 4);
                sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);

                sub_23E88FDF8(v13, v12, v82, 4);
                v83 = v13;
                v84 = v12;
                goto LABEL_138;
              }

              v81 = v24;
              sub_23E88FDE0(v13, 0, v24, 4);
              sub_23E88FDE0(v26, v27, v28, 4);
              sub_23E88FDE0(v13, 0, v81, 4);
              sub_23E88FDE0(v26, v27, v28, 4);
              sub_23E88FDE0(v13, 0, v81, 4);
              sub_23E88FDE0(v26, v27, v28, 4);
              sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);

              sub_23E88FDF8(v13, 0, v81, 4);
              v66 = v26;
              v67 = v27;
            }

            else
            {
              v104 = v30;
              v65 = v24;
              sub_23E88FDE0(v13, v12, v24, 4);
              sub_23E88FDE0(v26, 0, v28, 4);
              sub_23E88FDE0(v13, v12, v65, 4);
              sub_23E88FDE0(v26, 0, v28, 4);
              sub_23E88FDE0(v13, v12, v65, 4);
              sub_23E88FDE0(v26, 0, v28, 4);
              sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
              if (!v12)
              {
                swift_bridgeObjectRelease_n();
                sub_23E88FDF8(v13, 0, v65, 4);
                v83 = v26;
                v84 = 0;
LABEL_138:
                sub_23E88FDF8(v83, v84, v28, 4);
                if (*&v28 != v23)
                {
                  goto LABEL_103;
                }

                goto LABEL_162;
              }

              sub_23E88FDF8(v13, v12, v65, 4);
              v66 = v26;
              v67 = 0;
            }

            sub_23E88FDF8(v66, v67, v28, 4);
            goto LABEL_103;
          }

          sub_23E88FDE0(v13, v12, v24, v15);
          sub_23E88FDE0(v26, v27, v28, 4);
LABEL_102:
          sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
          goto LABEL_103;
        }

        if (v29 != 5)
        {
          v32 = v31;
          v33 = v30;
          sub_23E88FDE0(v13, v12, v24, v15);
          sub_23E88FDF8(v26, v27, v28, 6);
          if (v15 != 6)
          {
            goto LABEL_102;
          }

          goto LABEL_89;
        }

        if (v15 == 5)
        {
          if (v28)
          {
            if (v28 != 1)
            {
              v73 = v31;
              v74 = v30;
              v75 = v24;
              sub_23E88FDE0(v13, v12, v24, 5);
              sub_23E88FDE0(v13, v12, v75, 5);
              sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v26, v27, v28, 5);
              if (v105 == 2 && !v103 && v73 == v107 && v74 == v106)
              {
                break;
              }

              goto LABEL_103;
            }

            if (v105 != 1)
            {
              v85 = v24;
              sub_23E88FDE0(v13, v12, v24, 5);
              sub_23E88FDE0(v13, v12, v85, 5);
              sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v26, v27, v28, 5);
              goto LABEL_103;
            }

            v35 = v24;
            v104 = v30;
            v36 = 0xEA00000000007468;
            if (v26 == 2)
            {
              v37 = 0x67694C6172746C55;
            }

            else
            {
              v37 = 0x7261446172746C55;
            }

            if (v26 == 2)
            {
              v38 = 0xEA00000000007468;
            }

            else
            {
              v38 = 0xE90000000000006BLL;
            }

            if (v26)
            {
              v39 = 0x61446D756964654DLL;
            }

            else
            {
              v39 = 0x694C6D756964654DLL;
            }

            if (v26)
            {
              v40 = 0xEA00000000006B72;
            }

            else
            {
              v40 = 0xEB00000000746867;
            }

            if (v26 <= 1u)
            {
              v41 = v39;
            }

            else
            {
              v41 = v37;
            }

            if (v26 <= 1u)
            {
              v42 = v40;
            }

            else
            {
              v42 = v38;
            }

            if (v13 == 2)
            {
              v43 = 0x67694C6172746C55;
            }

            else
            {
              v43 = 0x7261446172746C55;
            }

            if (v13 != 2)
            {
              v36 = 0xE90000000000006BLL;
            }

            if (v13)
            {
              v44 = 0x61446D756964654DLL;
            }

            else
            {
              v44 = 0x694C6D756964654DLL;
            }

            if (v13)
            {
              v45 = 0xEA00000000006B72;
            }

            else
            {
              v45 = 0xEB00000000746867;
            }

            if (v13 <= 1u)
            {
              v46 = v44;
            }

            else
            {
              v46 = v43;
            }

            if (v13 <= 1u)
            {
              v36 = v45;
            }

            if (v41 != v46 || v42 != v36)
            {
              v97 = v31;
              v96 = sub_23E900E04();
              sub_23E88FDE0(v13, v12, v35, 5);
              sub_23E88FDE0(v13, v12, v35, 5);

              sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v13, v12, v35, 5);
              sub_23E88FDF8(v26, v27, v28, 5);
              v47 = v26;
              v48 = v27;
              v49 = v28;
              v50 = 5;
LABEL_166:
              sub_23E88FDF8(v47, v48, v49, v50);
              if ((v96 & 1) == 0 || v97 != v107)
              {
                goto LABEL_103;
              }

              goto LABEL_163;
            }

            goto LABEL_161;
          }

          v32 = v31;
          v33 = v30;
          v68 = v24;
          sub_23E88FDE0(v13, v12, v24, 5);
          sub_23E88FDE0(v13, v12, v68, 5);
          sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
          v69 = v26;
          v70 = v27;
          v71 = v28;
          v72 = 5;
          goto LABEL_120;
        }

        sub_23E88FDE0(v13, v12, v24, v15);
        v51 = v26;
        v52 = v27;
        v53 = v28;
        v54 = 5;
        goto LABEL_100;
      }

      if (!v29)
      {
        if (!v15)
        {
          if (v28)
          {
            if (v28 != 1)
            {
              v79 = v31;
              v33 = v30;
              v80 = v24;
              sub_23E88FDE0(v13, v12, v24, 0);
              sub_23E88FDE0(v13, v12, v80, 0);
              sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v26, v27, v28, 0);
              if (v105 != 2 || v103)
              {
                goto LABEL_103;
              }

              v61 = v79 == v107;
              goto LABEL_93;
            }

            if (v105 != 1)
            {
              v86 = v24;
              sub_23E88FDE0(v13, v12, v24, 0);
              sub_23E88FDE0(v13, v12, v86, 0);
              sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v26, v27, v28, 0);
              goto LABEL_103;
            }

            v104 = v30;
            v35 = v24;
            if (v26 > 1u)
            {
              if (v26 == 2)
              {
                v64 = 0xEA00000000007468;
                v63 = 0x67694C6172746C55;
              }

              else
              {
                v64 = 0xE90000000000006BLL;
                v63 = 0x7261446172746C55;
              }
            }

            else if (v26)
            {
              v64 = 0xEA00000000006B72;
              v63 = 0x61446D756964654DLL;
            }

            else
            {
              v63 = 0x694C6D756964654DLL;
              v64 = 0xEB00000000746867;
            }

            v87 = 0x67694C6172746C55;
            if (v13 != 2)
            {
              v87 = 0x7261446172746C55;
            }

            v88 = 0xEA00000000007468;
            if (v13 != 2)
            {
              v88 = 0xE90000000000006BLL;
            }

            v89 = 0x694C6D756964654DLL;
            if (v13)
            {
              v89 = 0x61446D756964654DLL;
            }

            v90 = 0xEB00000000746867;
            if (v13)
            {
              v90 = 0xEA00000000006B72;
            }

            if (v13 <= 1u)
            {
              v91 = v89;
            }

            else
            {
              v91 = v87;
            }

            if (v13 <= 1u)
            {
              v92 = v90;
            }

            else
            {
              v92 = v88;
            }

            if (v63 != v91 || v64 != v92)
            {
              v97 = v31;
              v96 = sub_23E900E04();
              sub_23E88FDE0(v13, v12, v35, 0);
              sub_23E88FDE0(v13, v12, v35, 0);

              sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
              sub_23E88FDF8(v13, v12, v35, 0);
              sub_23E88FDF8(v26, v27, v28, 0);
              v47 = v26;
              v48 = v27;
              v49 = v28;
              v50 = 0;
              goto LABEL_166;
            }

LABEL_161:
            sub_23E88FDE0(v13, v12, v35, v29);
            sub_23E88FDE0(v13, v12, v35, v29);

            sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
            sub_23E88FDF8(v13, v12, v35, v29);
            sub_23E88FDF8(v26, v27, v28, v29);
            sub_23E88FDF8(v26, v27, v28, v29);
LABEL_162:
            if (v31 != v107)
            {
              goto LABEL_103;
            }

LABEL_163:
            if (v104 == v106)
            {
              break;
            }

            goto LABEL_103;
          }

          v32 = v31;
          v33 = v30;
          v76 = v24;
          sub_23E88FDE0(v13, v12, v24, 0);
          sub_23E88FDE0(v13, v12, v76, 0);
          sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
          v69 = v26;
          v70 = v27;
          v71 = v28;
          v72 = 0;
LABEL_120:
          sub_23E88FDF8(v69, v70, v71, v72);
          if (v105)
          {
            goto LABEL_103;
          }

          v60 = *&v26 == *&v13 && *(&v26 + 1) == *(&v13 + 1) && *&v27 == *&v12 && *(&v27 + 1) == *(&v12 + 1);
          goto LABEL_90;
        }

        sub_23E88FDE0(v13, v12, v24, v15);
        v51 = v26;
        v52 = v27;
        v53 = v28;
        v54 = 0;
LABEL_100:
        sub_23E88FDF8(v51, v52, v53, v54);
        goto LABEL_102;
      }

      v34 = v30;
      if (v29 == 1)
      {
        sub_23E88FDE0(v13, v12, v24, v15);
        sub_23E88FDF8(v26, v27, v28, 1);
        if (v15 != 1)
        {
          goto LABEL_102;
        }
      }

      else
      {
        sub_23E88FDE0(v13, v12, v24, v15);
        sub_23E88FDF8(v26, v27, v28, 2);
        if (v15 != 2)
        {
          goto LABEL_102;
        }
      }

      sub_23E87E458(v112, &qword_27E35E6F8, &qword_23E903458);
      v55 = *&v26 == *&v13 && v31 == v107;
      if (v55 && v34 == v106)
      {
        break;
      }

LABEL_103:
      v22 = (v22 + 1) & v108;
      if (((*(v111 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        v93 = v13;
        v94 = v12;
        v95 = i;
        goto LABEL_173;
      }

      v20 = v110;
    }

    sub_23E88FDF8(v13, v12, i, v15);
    v3 = v99;
    result = v100;
    a2 = v110;
    v2 = v101;
    v6 = v102;
    v7 = v98;
    if (v102)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v102 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23E88C9D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23E9006D4();
  sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
  v5 = sub_23E900814();

  return sub_23E88CB30(a1, v5);
}

unint64_t sub_23E88CA70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23E900EB4();
  sub_23E900904();
  v6 = sub_23E900F14();

  return sub_23E88CCF0(a1, a2, v6);
}

unint64_t sub_23E88CAE8(unsigned int a1)
{
  v3 = MEMORY[0x23EF17B70](*(v1 + 40), a1, 4);

  return sub_23E88CDA8(a1, v3);
}

unint64_t sub_23E88CB30(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_23E88FE6C(&qword_27E35E708, MEMORY[0x277CC95F0]);
      v16 = sub_23E900844();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_23E88CCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23E900E04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23E88CDA8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_23E88CE14(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ContainerContent.Child();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E9006D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E720, &qword_23E903478);
  v48 = a2;
  result = sub_23E900D54();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_23E89007C(v31 + v32 * v28, v52, type metadata accessor for ContainerContent.Child);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_23E890014(v33 + v32 * v28, v52, type metadata accessor for ContainerContent.Child);
      }

      v34 = *(v16 + 40);
      sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
      result = sub_23E900814();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_23E89007C(v52, *(v16 + 56) + v32 * v24, type metadata accessor for ContainerContent.Child);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_23E88D2B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6D8, &qword_23E903438);
  v41 = a2;
  result = sub_23E900D54();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_23E88FC10(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_23E900EB4();
      sub_23E900904();
      result = sub_23E900F14();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23E88D584(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E710, &qword_23E903468);
  v40 = a2;
  result = sub_23E900D54();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 72 * v22;
      if (v40)
      {
        v47 = *(v26 + 16);
        v48 = *(v26 + 32);
        v49 = *(v26 + 48);
        v50 = *(v26 + 64);
        v46 = *v26;
      }

      else
      {
        v41 = *v26;
        v28 = *(v26 + 32);
        v27 = *(v26 + 48);
        v29 = *(v26 + 16);
        v45 = *(v26 + 64);
        v43 = v28;
        v44 = v27;
        v42 = v29;

        sub_23E88FEB4(&v41, &v46);
        v48 = v43;
        v49 = v44;
        v50 = v45;
        v46 = v41;
        v47 = v42;
      }

      v30 = *(v8 + 40);
      sub_23E900EB4();
      sub_23E900904();
      result = sub_23E900F14();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 72 * v16;
      *(v18 + 16) = v47;
      *(v18 + 32) = v48;
      *(v18 + 48) = v49;
      *(v18 + 64) = v50;
      *v18 = v46;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23E88D8D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
  v40 = a2;
  result = sub_23E900D54();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_23E900EB4();
      sub_23E900904();
      result = sub_23E900F14();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23E88DB90(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E700, &qword_23E903460);
  v51 = a2;
  result = sub_23E900D54();
  v14 = result;
  if (*(v11 + 16))
  {
    v54 = v10;
    v55 = v6;
    v47 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v48 = (v7 + 16);
    v49 = v7;
    v52 = (v7 + 32);
    v21 = result + 64;
    v50 = v11;
    while (v19)
    {
      v27 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v30 = v27 | (v15 << 6);
      v31 = *(v11 + 48);
      v53 = *(v7 + 72);
      v32 = v31 + v53 * v30;
      if (v51)
      {
        (*v52)(v54, v32, v55);
        v33 = *(v11 + 56) + 56 * v30;
        v35 = *(v33 + 16);
        v34 = *(v33 + 32);
        v36 = *v33;
        v59 = *(v33 + 48);
        v57 = v35;
        v58 = v34;
        v56 = v36;
      }

      else
      {
        (*v48)(v54, v32, v55);
        sub_23E88FE10(*(v11 + 56) + 56 * v30, &v56);
      }

      v37 = *(v14 + 40);
      sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
      result = sub_23E900814();
      v38 = -1 << *(v14 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v7 = v49;
        v11 = v50;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v21 + 8 * v40);
          if (v44 != -1)
          {
            v22 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v7 = v49;
      v11 = v50;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v52)(*(v14 + 48) + v53 * v22, v54, v55);
      v23 = *(v14 + 56) + 56 * v22;
      v24 = v59;
      v26 = v57;
      v25 = v58;
      *v23 = v56;
      *(v23 + 16) = v26;
      *(v23 + 32) = v25;
      *(v23 + 48) = v24;
      ++*(v14 + 16);
    }

    v28 = v15;
    while (1)
    {
      v15 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v29 = v16[v15];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v19 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v11 + 32);
    v3 = v47;
    if (v45 >= 64)
    {
      bzero(v16, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v45;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23E88DF94(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E748, &qword_23E9034A0);
  v42 = a2;
  result = sub_23E900D54();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_23E881028((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_23E8810DC(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
      result = sub_23E900814();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_23E881028(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23E88E378(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = sub_23E9006D4();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E738, &qword_23E903490);
  v40 = a2;
  result = sub_23E900D54();
  v12 = result;
  if (*(v9 + 16))
  {
    v37 = v3;
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
    v38 = (v6 + 16);
    v39 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 4 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v40)
      {
        (*v19)(v41, v28, v42);
      }

      else
      {
        (*v38)(v41, v28, v42);
      }

      result = MEMORY[0x23EF17B70](*(v12 + 40), v26, 4);
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 4 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v41, v42);
      ++*(v12 + 16);
      v6 = v39;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_23E88E6C8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E730, &qword_23E903488);
  v49 = a2;
  result = sub_23E900D54();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_23E88FE6C(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
      result = sub_23E900814();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_23E88EB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageContent.ContentType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RenderLayerType();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v39 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v39 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6F0, &qword_23E903450);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v39 - v23;
  v25 = &v39 + *(v22 + 56) - v23;
  sub_23E890014(a1, &v39 - v23, type metadata accessor for RenderLayerType);
  sub_23E890014(a2, v25, type metadata accessor for RenderLayerType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_23E890014(v24, v17, type metadata accessor for RenderLayerType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = *v17 == *v25;
LABEL_29:
          sub_23E88FC6C(v24, type metadata accessor for RenderLayerType);
          return v27 & 1;
        }
      }

      else
      {
        sub_23E890014(v24, v14, type metadata accessor for RenderLayerType);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v37 = v40;
          sub_23E89007C(v25, v40, type metadata accessor for ImageContent.ContentType);
          v27 = _s10AirPlayKit12ImageContentV0E4TypeO2eeoiySbAE_AEtFZ_0(v14, v37);
          sub_23E88FC6C(v37, type metadata accessor for ImageContent.ContentType);
          sub_23E88FC6C(v14, type metadata accessor for ImageContent.ContentType);
          goto LABEL_29;
        }

        sub_23E88FC6C(v14, type metadata accessor for ImageContent.ContentType);
      }
    }

    else
    {
      sub_23E890014(v24, v19, type metadata accessor for RenderLayerType);
      if (!swift_getEnumCaseMultiPayload())
      {
        v28 = *v19;
        v41 = *v25;
        v42 = v28;
        v27 = _s10AirPlayKit16ContainerContentV4FlowO2eeoiySbAE_AEtFZ_0(&v42, &v41);
        goto LABEL_29;
      }
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_23E890014(v24, v11, type metadata accessor for RenderLayerType);
    v30 = *v11;
    v29 = v11[1];
    v31 = v11[2];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v32 = *v25;
      v33 = *(v25 + 1);
      v34 = *(v25 + 2);
      if (v30 == v32 && v29 == v33)
      {
      }

      else
      {
        v36 = sub_23E900E04();

        if ((v36 & 1) == 0)
        {

          sub_23E88FC6C(v24, type metadata accessor for RenderLayerType);
LABEL_26:
          v27 = 0;
          return v27 & 1;
        }
      }

      v27 = sub_23E88BA90(v31, v34);

      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_22;
    }

LABEL_25:
    sub_23E87E458(v24, &qword_27E35E6F0, &qword_23E903450);
    goto LABEL_26;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_25;
  }

LABEL_22:
  sub_23E88FC6C(v24, type metadata accessor for RenderLayerType);
  v27 = 1;
  return v27 & 1;
}

unint64_t sub_23E88EFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E728, &qword_23E903480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E720, &qword_23E903478);
    v8 = sub_23E900D64();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23E8891B4(v10, v6, &qword_27E35E728, &qword_23E903480);
      result = sub_23E88C9D8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23E9006D4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for ContainerContent.Child();
      result = sub_23E89007C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for ContainerContent.Child);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_23E88F1F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6D8, &qword_23E903438);
    v3 = sub_23E900D64();
    v4 = a1 + 32;

    while (1)
    {
      sub_23E8891B4(v4, &v16, &qword_27E35E598, &unk_23E905080);
      v5 = v16;
      v6 = v17;
      result = sub_23E88CA70(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_23E88F32C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E770, &qword_23E9034C8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E738, &qword_23E903490);
    v8 = sub_23E900D64();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_23E8891B4(v10, v6, &qword_27E35E770, &qword_23E9034C8);
      v12 = *v6;
      result = sub_23E88CAE8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = v12;
      v16 = v8[7];
      v17 = sub_23E9006D4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_23E88F508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E768, &qword_23E9034C0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E730, &qword_23E903488);
    v8 = sub_23E900D64();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      sub_23E8891B4(v10, v6, &qword_27E35E768, &qword_23E9034C0);
      result = sub_23E88C9D8(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = sub_23E9006D4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 32);
      v18 = *(v16 + 72) * v13;
      v17(v14 + v18, v6, v15);
      result = (v17)(v8[7] + v18, &v6[v23], v15);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_23E88F714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E760, &qword_23E9034B8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E700, &qword_23E903460);
    v8 = sub_23E900D64();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23E8891B4(v10, v6, &qword_27E35E760, &qword_23E9034B8);
      result = sub_23E88C9D8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23E9006D4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 56 * v14;
      v18 = *v9;
      v19 = *(v9 + 1);
      v20 = *(v9 + 2);
      *(v17 + 48) = *(v9 + 6);
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
      v21 = v8[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v8[2] = v23;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_23E88F918(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E710, &qword_23E903468);
  v3 = sub_23E900D64();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = v4;
  v8 = *(&v26 + 1);
  v7 = v26;
  sub_23E8891B4(&v26, v25, &qword_27E35E758, &qword_23E9034B0);
  result = sub_23E88CA70(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    *(v13 + 64) = v31;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = (v11 + 88);
    v21 = v11[2];
    v22 = v11[4];
    v29 = v11[3];
    v30 = v22;
    v31 = *(v11 + 80);
    v23 = v11[1];
    v26 = *v11;
    v27 = v23;
    v28 = v21;
    v8 = *(&v26 + 1);
    v7 = v26;
    sub_23E8891B4(&v26, v25, &qword_27E35E758, &qword_23E9034B0);
    result = sub_23E88CA70(v7, v8);
    v11 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23E88FAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E0, &qword_23E903440);
    v3 = sub_23E900D64();
    v4 = a1 + 32;

    while (1)
    {
      sub_23E8891B4(v4, &v16, &qword_27E35E6C0, &qword_23E906330);
      v5 = v16;
      v6 = v17;
      result = sub_23E88CA70(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

uint64_t sub_23E88FC6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E88FCCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6E8, &qword_23E903448);
    v3 = sub_23E900D64();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23E88CA70(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23E88FDE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 4)
  {
  }

  return result;
}

uint64_t sub_23E88FDF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 4)
  {
  }

  return result;
}

uint64_t sub_23E88FE6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E88FF10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E718, &qword_23E903470);
    v3 = sub_23E900D64();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23E88CA70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23E890014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E89007C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23E8900E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E740, &qword_23E903498);
    v3 = sub_23E900D64();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23E88CA70(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23E8901F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E750, &qword_23E9034A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E748, &qword_23E9034A0);
    v8 = sub_23E900D64();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23E8891B4(v10, v6, &qword_27E35E750, &qword_23E9034A8);
      result = sub_23E88C9D8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23E9006D4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_23E881028(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_23E890438()
{
  sub_23E8904D4();
  if (v0 <= 0x3F)
  {
    sub_23E890504();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ImageContent.ContentType(319);
      if (v2 <= 0x3F)
      {
        sub_23E890534();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_23E8904D4()
{
  result = qword_27E35E788;
  if (!qword_27E35E788)
  {
    result = &type metadata for ContainerContent.Flow;
    atomic_store(&type metadata for ContainerContent.Flow, &qword_27E35E788);
  }

  return result;
}

uint64_t sub_23E890504()
{
  result = qword_27E35E790;
  if (!qword_27E35E790)
  {
    result = MEMORY[0x277D83A90];
    atomic_store(MEMORY[0x277D83A90], &qword_27E35E790);
  }

  return result;
}

void sub_23E890534()
{
  if (!qword_27E35E798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E7A0, &qword_23E9034E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E35E798);
    }
  }
}

double Color.init(_:)(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  result = 0.0;
  if (a1)
  {
    v10 = 0.0;
    v11[0] = 0;
    v8 = 1.0;
    v9 = 0.0;
    v3 = [a1 getRed:v11 green:&v10 blue:&v9 alpha:{&v8, 0.0}];

    if (v3)
    {
      v5.f64[0] = v10;
      *&v4.f64[0] = v11[0];
      v4.f64[1] = v9;
      *&v4.f64[0] = vcvt_f32_f64(v4);
      v5.f64[1] = v8;
      v6.i64[0] = LODWORD(v4.f64[0]);
      v6.i64[1] = HIDWORD(v4.f64[0]);
      *&result = vorrq_s8(vshll_n_s32(vcvt_f32_f64(v5), 0x20uLL), v6).u64[0];
    }

    else
    {
      result = 0.0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E8906D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t DispatchSourceTimerProviding.makeTimer(fireInterval:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_23E89162C(0, &qword_27E35E5D0, 0x277D85C78);
  v10 = sub_23E900B24();
  v11 = (*(a4 + 8))(v10, a1, a2, a3, a4, a5);

  return v11;
}

uint64_t DispatchSourceTimerProviding.makeRepeatingTimer(fireInterval:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_23E900774();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 100;
  (*(v11 + 104))(v14, *MEMORY[0x277D85170], v10);
  v15 = DispatchSourceTimerProviding.makeRepeatingTimer(fireInterval:leewayInterval:handler:)(v14, a1, a2, a3, a4, a5);
  (*(v11 + 8))(v14, v10);
  return v15;
}