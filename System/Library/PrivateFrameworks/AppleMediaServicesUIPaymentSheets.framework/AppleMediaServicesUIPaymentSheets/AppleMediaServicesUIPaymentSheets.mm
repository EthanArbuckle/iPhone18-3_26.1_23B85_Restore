uint64_t sub_240E68D50(uint64_t *a1)
{
  v1 = *a1;
  if (OUTLINED_FUNCTION_1())
  {
    sub_240E86764();
  }

  else
  {
    sub_240E86714();
  }

  return sub_240E86794();
}

uint64_t sub_240E68DA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (OUTLINED_FUNCTION_1())
  {
    sub_240E86764();
    sub_240E86794();
    sub_240E6A990();
  }

  else
  {
    sub_240E86714();
    sub_240E86794();
    sub_240E6B130(&qword_27E51B0D0, MEMORY[0x277CDD8B0]);
  }

  OUTLINED_FUNCTION_0();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for IconAdornmentMerchandizedIAPViewModifier(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IconAdornmentMerchandizedIAPViewModifier(uint64_t result, int a2, int a3)
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

uint64_t sub_240E68ED4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240E68F24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_240E68F5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240E68FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_240E69074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240E691D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_240E6FA88();
  *a2 = result;
  return result;
}

uint64_t sub_240E692D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3D8, &qword_240E887A8);
    v9 = OUTLINED_FUNCTION_34(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3E0, &qword_240E887B0);
      v12 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_240E693B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3D8, &qword_240E887A8);
    v9 = OUTLINED_FUNCTION_34(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3E0, &qword_240E887B0);
      v12 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_240E694A0()
{
  v2 = type metadata accessor for TitleWithImage(0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = *(v1 + v5 + 8);

  v10 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3B8, &qword_240E88760);
  if (OUTLINED_FUNCTION_38() == 1)
  {
    v11 = sub_240E866A4();
    OUTLINED_FUNCTION_3(v11);
    (*(v12 + 8))(v8 + v10);
  }

  else
  {
    v13 = *(v8 + v10);
  }

  v14 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3C0, &qword_240E88798);
  if (OUTLINED_FUNCTION_38() == 1)
  {
    v15 = sub_240E869A4();
    OUTLINED_FUNCTION_3(v15);
    (*(v16 + 8))(v8 + v14);
  }

  else
  {
    v17 = *(v8 + v14);
  }

  OUTLINED_FUNCTION_40();
  v18 = v8 + v0[8];
  v19 = *(v18 + 8);

  v20 = *(v18 + 24);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_240E69624()
{
  v2 = type metadata accessor for TitleWithImage(0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = v1 + v5;
  v10 = *(v1 + v5 + 8);

  v11 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3B8, &qword_240E88760);
  if (OUTLINED_FUNCTION_38() == 1)
  {
    v12 = sub_240E866A4();
    OUTLINED_FUNCTION_3(v12);
    (*(v13 + 8))(v9 + v11);
  }

  else
  {
    v14 = *(v9 + v11);
  }

  v15 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3C0, &qword_240E88798);
  if (OUTLINED_FUNCTION_38() == 1)
  {
    v16 = sub_240E869A4();
    OUTLINED_FUNCTION_3(v16);
    (*(v17 + 8))(v9 + v15);
  }

  else
  {
    v18 = *(v9 + v15);
  }

  OUTLINED_FUNCTION_40();
  v19 = v9 + v0[8];
  v20 = *(v19 + 8);

  v21 = *(v19 + 24);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_240E697B8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240E6989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_240E864A4();
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_240E69924(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_240E864A4();
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240E699F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240E69A60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E86884();
  *a1 = result;
  return result;
}

uint64_t sub_240E69A90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E86834();
  *a1 = result;
  return result;
}

uint64_t sub_240E69B48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_240E69B80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240E69C2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B650, &qword_240E89070);
  OUTLINED_FUNCTION_3(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240E69CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B660, &qword_240E89080);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_240E69D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B660, &qword_240E89080);
  OUTLINED_FUNCTION_3(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_240E69DC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6C8, &qword_240E89250);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_240E69E2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6C8, &qword_240E89250);
  OUTLINED_FUNCTION_3(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_240E69EA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240E86864();
  *a1 = result;
  return result;
}

uint64_t sub_240E69F28()
{
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_240E69F74@<X0>(void *a1@<X8>)
{
  result = sub_240E86804();
  *a1 = v3;
  return result;
}

uint64_t sub_240E69FD8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_240E6A020()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240E6A060()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240E6A0AC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_240E6A128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_240E853B0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_240E6A1F4()
{
  OUTLINED_FUNCTION_4_4();
  result = EnvironmentValues.primaryText.getter();
  *v0 = result;
  return result;
}

uint64_t sub_240E6A288()
{
  OUTLINED_FUNCTION_4_4();
  result = EnvironmentValues.secondaryText.getter();
  *v0 = result;
  return result;
}

uint64_t sub_240E6A320@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = sub_240E869B4();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0E8, &qword_240E879A8);
  return sub_240E6A3A0(a1, a2, a3, a4 + *(v10 + 44), a5);
}

uint64_t sub_240E6A3A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v77 = a2;
  v78 = a3;
  v81 = a4;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0F0, &qword_240E879B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v79 = &v74[-v8];
  v9 = (sub_240E867B4() - 8);
  v10 = *(*v9 + 64);
  (MEMORY[0x28223BE20])();
  v12 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0F8, &qword_240E879B8) - 8);
  v14 = *(*v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v80 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v18 = &v74[-v17];
  v19 = a1;
  v76 = sub_240E86D44();
  v20 = v9[7];
  v75 = *MEMORY[0x277CE0118];
  v21 = v75;
  v22 = sub_240E86974();
  v23 = *(*(v22 - 8) + 104);
  v23(v12 + v20, v21, v22);
  *v12 = a5;
  v12[1] = a5;
  v24 = [objc_opt_self() systemGrayColor];
  v25 = sub_240E86D34();
  sub_240E866B4();
  v26 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B100, &unk_240E879C0) + 36);
  sub_240E6AD34(v12, v26);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B108, &unk_240E894C0) + 36);
  v28 = v85;
  *v27 = v84;
  *(v27 + 16) = v28;
  *(v27 + 32) = v86;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B110, &unk_240E879D0);
  *(v26 + *(v29 + 52)) = v25;
  *(v26 + *(v29 + 56)) = 256;
  v30 = sub_240E86E24();
  v32 = v31;
  sub_240E6AD98(v12);
  v33 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B118, &qword_240E894D0) + 36));
  *v33 = v30;
  v33[1] = v32;
  v34 = sub_240E86E24();
  v36 = v35;
  v37 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B120, &unk_240E879E0) + 36));
  *v37 = v34;
  v37[1] = v36;
  *v18 = v76;
  v38 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B128, &unk_240E894B0) + 36));
  v23(v38 + v9[7], v75, v22);
  *v38 = a5;
  v38[1] = a5;
  *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0) + 36)) = 256;
  LOBYTE(v38) = sub_240E86A44();
  sub_240E86684();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B138, &qword_240E879F8) + 36);
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  LOBYTE(v38) = sub_240E86A54();
  sub_240E86684();
  v48 = v18 + v13[11];
  *v48 = v38;
  *(v48 + 1) = v49;
  *(v48 + 2) = v50;
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  v48[40] = 0;
  v82 = v77;
  v83 = v78;
  sub_240E6ADF4();

  v53 = sub_240E86C34();
  v55 = v54;
  LOBYTE(v30) = v56;
  sub_240E86AE4();
  v57 = sub_240E86AB4();
  v58 = v79;
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v57);
  sub_240E86B04();
  sub_240E6AFAC(v58, &qword_27E51B0F0, &qword_240E879B0);
  v59 = sub_240E86C04();
  v61 = v60;
  LOBYTE(v26) = v62;

  sub_240E6AE70(v53, v55, v30 & 1);

  sub_240E86AE4();
  v63 = sub_240E86B54();
  v65 = v64;
  LOBYTE(v30) = v66;
  v68 = v67;
  sub_240E6AE70(v59, v61, v26 & 1);

  KeyPath = swift_getKeyPath();
  v70 = v80;
  sub_240E6AF3C(v18, v80, &qword_27E51B0F8, &qword_240E879B8);
  v71 = v81;
  sub_240E6AF3C(v70, v81, &qword_27E51B0F8, &qword_240E879B8);
  v72 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B140, &qword_240E87A30) + 48);
  *v72 = v63;
  *(v72 + 8) = v65;
  LOBYTE(v30) = v30 & 1;
  *(v72 + 16) = v30;
  *(v72 + 24) = v68;
  *(v72 + 32) = KeyPath;
  *(v72 + 40) = 1;
  sub_240E6AF9C(v63, v65, v30);

  sub_240E6AFAC(v18, &qword_27E51B0F8, &qword_240E879B8);
  sub_240E6AE70(v63, v65, v30);

  return sub_240E6AFAC(v70, &qword_27E51B0F8, &qword_240E879B8);
}

unint64_t sub_240E6A990()
{
  result = qword_27E51B0C8;
  if (!qword_27E51B0C8)
  {
    sub_240E86764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B0C8);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_240E6AA30(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E6AA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240E6AAE0(uint64_t a1, id *a2)
{
  result = sub_240E86F54();
  *a2 = 0;
  return result;
}

uint64_t sub_240E6AB58(uint64_t a1, id *a2)
{
  v3 = sub_240E86F64();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_240E6ABE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E6B208();
  *a1 = result;
  return result;
}

uint64_t sub_240E6AC18()
{
  v0 = sub_240E86F74();
  v1 = MEMORY[0x245CD1D10](v0);

  return v1;
}

uint64_t sub_240E6AC58()
{
  sub_240E86F74();
  sub_240E86F94();
}

uint64_t sub_240E6ACB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_240E75BC4();
}

uint64_t sub_240E6ACC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_240E86F44();

  *a2 = v5;
  return result;
}

uint64_t sub_240E6AD08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E6DBC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_240E6AD34(uint64_t a1, uint64_t a2)
{
  v4 = sub_240E867B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E6AD98(uint64_t a1)
{
  v2 = sub_240E867B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240E6ADF4()
{
  result = qword_281503770;
  if (!qword_281503770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281503770);
  }

  return result;
}

uint64_t sub_240E6AE70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_240E6AE80(uint64_t a1)
{
  v2 = sub_240E6B130(&qword_281503740, type metadata accessor for Key);
  v3 = sub_240E6B130(&qword_27E51B170, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240E6AF3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_240E6AF9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_240E6AFAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_240E6B03C()
{
  result = qword_27E51B150;
  if (!qword_27E51B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B158, &unk_240E87AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B150);
  }

  return result;
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

uint64_t sub_240E6B130(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240E6B208()
{
  sub_240E86F74();
  v0 = sub_240E86F44();

  return v0;
}

void sub_240E6B268(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_1()
{

  return __isPlatformVersionAtLeast(2, 26, 4, 0);
}

id sub_240E6B354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_240E6D0E8(a2, a3, a1, &v16);
    if (*(&v17 + 1))
    {
      OUTLINED_FUNCTION_0_0();
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  sub_240E6B514(&v16);
  if (!a1)
  {
    v16 = 0u;
    v17 = 0u;
LABEL_10:
    sub_240E6B514(&v16);
    if (!a1)
    {
      v8 = 0;
      v16 = 0u;
      v17 = 0u;
      v9 = 0xC000000000000000;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_6:
  sub_240E6D0E8(a4, a5, a1, &v16);
  if (!*(&v17 + 1))
  {
    goto LABEL_10;
  }

  if (OUTLINED_FUNCTION_0_0())
  {
    v8 = *&v14;
    v9 = v15;
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
  v9 = 0xC000000000000000;
LABEL_12:
  sub_240E6D0E8(0x63536E6565726373, 0xEB00000000656C61, a1, &v16);
  if (!*(&v17 + 1))
  {
LABEL_16:
    sub_240E6B514(&v16);
    goto LABEL_17;
  }

  if (OUTLINED_FUNCTION_0_0())
  {
    v10 = v14;
    goto LABEL_18;
  }

LABEL_17:
  v10 = 1.0;
LABEL_18:
  sub_240E6B57C();
  sub_240E6B5C0(v8, v9);
  v11 = sub_240E7F398(v8, v9, v10);
  if (!v11)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v12 = v11;
  sub_240E6B618(v8, v9);
  return v12;
}

uint64_t sub_240E6B514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B178, "V:");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240E6B57C()
{
  result = qword_27E51B180;
  if (!qword_27E51B180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51B180);
  }

  return result;
}

uint64_t sub_240E6B5C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_240E6B618(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_240E6B694(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E6B6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_dynamicCast();
}

uint64_t sub_240E6B778@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B188, &qword_240E87D88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B190, &unk_240E87D90);
  sub_240E6B9D8();
  sub_240E6BA2C();
  sub_240E86DB4();
  sub_240E6BAE4(&qword_27E51B1A8, &qword_27E51B188, &qword_240E87D88);
  result = sub_240E86DC4();
  *a1 = result;
  return result;
}

uint64_t sub_240E6B8DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v4 = sub_240E86D44();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B190, &unk_240E87D90) + 36);
  v6 = *(sub_240E867B4() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_240E86974();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  __asm { FMOV            V0.2D, #5.0 }

  *v5 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B130, &qword_240E879F0);
  *&v5[*(result + 36)] = 256;
  *a2 = v4;
  return result;
}

uint64_t sub_240E6B9B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_240E6B778(a1);
}

uint64_t sub_240E6B9C0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t sub_240E6B9CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_240E6B8DC(*(v1 + 16), a1);
}

unint64_t sub_240E6B9D8()
{
  result = qword_27E51B198;
  if (!qword_27E51B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B198);
  }

  return result;
}

unint64_t sub_240E6BA2C()
{
  result = qword_27E51B1A0;
  if (!qword_27E51B1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B190, &unk_240E87D90);
    sub_240E6BAE4(&qword_2815037C8, &qword_27E51B130, &qword_240E879F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B1A0);
  }

  return result;
}

uint64_t sub_240E6BAE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id AMSUIPaymentSheetViewProvider.init(context:)(void *a1)
{
  v3 = v1;
  v4 = a1;
  v5 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_context;
  *&v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_context] = 0;
  v6 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_request];
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v7 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_header];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_content];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_footer];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_secondaryContent];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets29AMSUIPaymentSheetViewProvider_secondaryFooter];
  *v11 = 0;
  *(v11 + 1) = 0;
  if (a1)
  {
    *&v3[v5] = a1;
    v4 = a1;
    v12 = sub_240E7F8FC(v4);
    if (v14)
    {
      v56 = v9;
      v57 = v4;
      v16 = *v6;
      v15 = v6[1];
      v17 = v6[2];
      *v6 = v12;
      v6[1] = v13;
      v6[2] = v14;
      v18 = v12;
      v58 = v13;
      v19 = v14;
      v20 = v12;

      sub_240E6CB44(v16, v15, v17);
      v21 = [v20 secondarySalableInfo];
      if (!v21)
      {
LABEL_17:
        type metadata accessor for HeaderViewProvider();
        v4 = v57;
        v37 = sub_240E848BC(v18, v58, v19);
        v38 = v20;
        v40 = v39;
        OUTLINED_FUNCTION_6();
        v41 = *v7;
        v42 = v7[1];
        *v7 = v37;
        v7[1] = v40;
        sub_240E6CB88(v41);
        type metadata accessor for ContentViewProvider();
        v43 = sub_240E841F0(v18, v58, v19);
        v45 = v44;
        OUTLINED_FUNCTION_6();
        v46 = *v8;
        v47 = v8[1];
        *v8 = v43;
        v8[1] = v45;
        sub_240E6CB88(v46);
        type metadata accessor for FooterViewProvider();
        v48 = sub_240E84AD4(v18);
        v50 = v49;

        OUTLINED_FUNCTION_6();
        v51 = *v56;
        v52 = v56[1];
        *v56 = v48;
        v56[1] = v50;
        sub_240E6CB88(v51);
        goto LABEL_18;
      }

      v22 = v21;
      v23 = v18;
      v24 = [v20 salableInfo];
      if (v24)
      {

        v25 = v22;
        v26 = v22;
        if (v23)
        {
LABEL_6:
          v27 = v20;
          v28 = [v20 secondaryContentItems];
          sub_240E6CBA8();
          v55 = sub_240E87024();

          v22 = v28;
LABEL_16:

          v33 = swift_allocObject();
          *(v33 + 16) = v26;
          *(v33 + 24) = v23;
          v18 = v23;
          *(v33 + 32) = v58;
          *(v33 + 40) = v19;
          *(v33 + 48) = v55;
          OUTLINED_FUNCTION_6();
          v34 = *v10;
          v35 = v10[1];
          *v10 = sub_240E6CB98;
          v10[1] = v33;

          v36 = v27;
          sub_240E6CB88(v34);
          v20 = v27;
          goto LABEL_17;
        }
      }

      else
      {
        v26 = 0;
        if (v23)
        {
          goto LABEL_6;
        }
      }

      v55 = MEMORY[0x277D84F90];
      v27 = v20;
      goto LABEL_16;
    }

    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v31 = sub_240E865F4();
    __swift_project_value_buffer(v31, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v32 = *(*(sub_240E865A4() - 8) + 72);
    *(OUTLINED_FUNCTION_4() + 16) = xmmword_240E87DB0;
    OUTLINED_FUNCTION_2();
    v62 = MEMORY[0x277D837D0];
    v60 = v2 + 14;
    v61 = 0x8000000240E89ED0;
    sub_240E86584();
    sub_240E6B514(&v60);
    sub_240E865C4();
  }

  else
  {
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v29 = sub_240E865F4();
    __swift_project_value_buffer(v29, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v30 = *(*(sub_240E865A4() - 8) + 72);
    *(OUTLINED_FUNCTION_4() + 16) = xmmword_240E87DB0;
    OUTLINED_FUNCTION_2();
    v62 = MEMORY[0x277D837D0];
    v60 = v2 + 7;
    v61 = 0x8000000240E89EA0;
    sub_240E86584();
    sub_240E6B514(&v60);
    sub_240E865C4();
  }

LABEL_18:
  v59.receiver = v3;
  v59.super_class = type metadata accessor for AMSUIPaymentSheetViewProvider();
  v53 = objc_msgSendSuper2(&v59, sel_init);

  return v53;
}

uint64_t sub_240E6C0AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_240E7FADC(a2, a3, a4);
  sub_240E6CFC4();

  v4 = a1;
  return sub_240E86DC4();
}

uint64_t sub_240E6C120@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v3 = *a1;
  result = sub_240E6C220();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_240E6D018;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_240E6C190(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_240E6D020;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_240E68F24(v3);
  return sub_240E6C22C(v6, v5);
}

uint64_t sub_240E6C284@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v3 = *a1;
  result = sub_240E6C384();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_240E6D018;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_240E6C2F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_240E6D020;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_240E68F24(v3);
  return sub_240E6C390(v6, v5);
}

uint64_t sub_240E6C3E8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v3 = *a1;
  result = sub_240E6C4E8();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_240E6D018;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_240E6C458(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_240E6D020;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_240E68F24(v3);
  return sub_240E6C4F4(v6, v5);
}

uint64_t sub_240E6C54C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v3 = *a1;
  result = sub_240E6C64C();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_240E6D018;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_240E6C5BC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_240E6D020;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_240E68F24(v3);
  return sub_240E6C658(v6, v5);
}

uint64_t sub_240E6C6B0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *a1;
  result = sub_240E6C7B0();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_240E6CF94;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_240E6C720(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_240E6CF5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_240E68F24(v3);
  return sub_240E6C814(v6, v5);
}

uint64_t sub_240E6C7BC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_240E68F24(v4);
  return v4;
}

uint64_t sub_240E6C820(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_6();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_240E6CB88(v7);
}

id AMSUIPaymentSheetViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMSUIPaymentSheetViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMSUIPaymentSheetViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_240E6CA0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = AMSUIPaymentSheetViewProvider.__allocating_init(context:)(a1);
  *a2 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_240E6CB44(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_240E6CB88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_240E6CBA8()
{
  result = qword_27E51B1F0;
  if (!qword_27E51B1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51B1F0);
  }

  return result;
}

uint64_t sub_240E6CF5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_240E6CF94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t sub_240E6CFC4()
{
  result = qword_27E51B1F8;
  if (!qword_27E51B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B1F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2()
{

  return sub_240E86574();
}

uint64_t OUTLINED_FUNCTION_3_0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_4()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_beginAccess();
}

double sub_240E6D0E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_240E6DBCC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_240E6DC44(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_240E6D14C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_240E6DCA0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_240E6DC44(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_240E6D1B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *MEMORY[0x277CEE390];
  v5 = sub_240E86F74();
  sub_240E6D0E8(v5, v6, a1, &v19);

  if (!v21)
  {
    sub_240E6DFC8(&v19, &qword_27E51B178, "V:");
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
  switch(v18[0])
  {
    case 1:
      type metadata accessor for Localizations();
      OUTLINED_FUNCTION_0_2();
      sub_240E7E730();
      OUTLINED_FUNCTION_2_0();
      v8 = 0xEB00000000636973;
      OUTLINED_FUNCTION_1_1();
      v7 = 0x756D000000000000;
      break;
    case 2:
      type metadata accessor for Localizations();
      OUTLINED_FUNCTION_0_2();
      sub_240E7E730();
      OUTLINED_FUNCTION_2_0();
      v8 = 0xEA00000000007377;
      OUTLINED_FUNCTION_1_1();
      v7 = 0x656E000000000000;
      break;
    case 6:
      type metadata accessor for Localizations();
      OUTLINED_FUNCTION_0_2();
      sub_240E7E730();
      OUTLINED_FUNCTION_2_0();
      v8 = 0xEC00000065646163;
      OUTLINED_FUNCTION_1_1();
      v7 = 0x7261000000000000;
      break;
    case 7:
      type metadata accessor for Localizations();
      OUTLINED_FUNCTION_0_2();
      sub_240E7E730();
      OUTLINED_FUNCTION_2_0();
      v8 = 0xED00007373656E74;
      OUTLINED_FUNCTION_1_1();
      v7 = 0x6966000000000000;
      break;
    case 8:
      type metadata accessor for Localizations();
      OUTLINED_FUNCTION_0_2();
      sub_240E7E730();
      OUTLINED_FUNCTION_2_0();
      v8 = 0xE900000000000065;
      OUTLINED_FUNCTION_1_1();
      v7 = 0x6E6F000000000000;
      break;
    case 9:
      type metadata accessor for Localizations();
      OUTLINED_FUNCTION_0_2();
      v8 = 0xE800000000000000;
      sub_240E7E730();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_1_1();
      v7 = 0x7674000000000000;
      break;
    default:
      break;
  }

LABEL_7:
  *&v19 = 0xD00000000000004DLL;
  *(&v19 + 1) = 0x8000000240E8A000;
  v20 = v7;
  v21 = v8;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0x4035000000000000;
  v26 = 0;
  v9 = sub_240E6D4B8();
  sub_240E6DFC8(&v26, &qword_27E51B200, &qword_240E87E68);
  *&v14 = 0xD00000000000004DLL;
  *(&v14 + 1) = 0x8000000240E8A000;
  *&v15 = v7;
  *(&v15 + 1) = v8;
  v16 = 0uLL;
  *&v17 = v9;
  *(&v17 + 1) = 0x4035000000000000;
  v18[0] = 0xD00000000000004DLL;
  v18[1] = 0x8000000240E8A000;
  v18[2] = v7;
  v18[3] = v8;
  v18[4] = 0;
  v18[5] = 0;
  v18[6] = v9;
  v18[7] = 0x4035000000000000;
  sub_240E6D568(&v14, v13);
  sub_240E6D5A0(v18);
  v10 = v15;
  *a2 = v14;
  a2[1] = v10;
  result = *&v16;
  v12 = v17;
  a2[2] = v16;
  a2[3] = v12;
  return result;
}

uint64_t sub_240E6D4B8()
{
  v5 = *(v0 + 1);
  if (*(&v5 + 1))
  {
    sub_240E6D5D0();
    v2 = *v0;
    v1 = v0[1];

    sub_240E6DAE0(&v5, &v4);
    if (sub_240E6DA6C())
    {
      return sub_240E86DA4();
    }

    sub_240E6DFC8(&v5, &qword_27E51B210, &qword_240E87E70);
  }

  return 0;
}

unint64_t sub_240E6D5D0()
{
  result = qword_27E51B208;
  if (!qword_27E51B208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E51B208);
  }

  return result;
}

uint64_t sub_240E6D614@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_240E86994();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v39 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_240E86D74();
  v11 = OUTLINED_FUNCTION_3_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B218, &qword_240E87F18);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v34[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  if (v1[6])
  {
    v35 = &v34[-v24];
    v36 = v23;
    v37 = v3;
    (*(v13 + 104))(v17, *MEMORY[0x277CE0FE0], v10);

    v25 = sub_240E86D94();
    (*(v13 + 8))(v17, v10);
    v26 = v1[7];
    sub_240E86E24();
    OUTLINED_FUNCTION_2_0();
    sub_240E867C4();
    v44[118] = 1;
    memcpy(&v44[6], __src, 0x70uLL);
    v43[0] = v25;
    v43[1] = 0;
    LOWORD(v43[2]) = 1;
    memcpy(&v43[2] + 2, v44, 0x76uLL);
    v27 = v1[5];
    v38 = a1;
    if (v27)
    {
      v28 = v1[4];
      v29 = v27;
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
    }

    v40 = v28;
    v41 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B220, &unk_240E87F20);
    sub_240E6DEB8();
    sub_240E6ADF4();
    sub_240E86CB4();

    memcpy(v42, v43, sizeof(v42));
    sub_240E6DFC8(v42, &qword_27E51B220, &unk_240E87F20);
    sub_240E86984();
    v32 = v35;
    v31 = v36;
    sub_240E86784();

    (*(v39 + 8))(v9, v37);
    sub_240E6DFC8(v22, &qword_27E51B218, &qword_240E87F18);
    v33 = v38;
    sub_240E6E028(v32, v38);
    return __swift_storeEnumTagSinglePayload(v33, 0, 1, v31);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
  }
}

id sub_240E6DA6C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_240E86F44();

  v2 = [v0 initWithPath_];

  return v2;
}

uint64_t sub_240E6DAE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B210, &qword_240E87E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E6DB54()
{
  sub_240E86F74();
  sub_240E871C4();
  sub_240E86F94();
  v0 = sub_240E871F4();

  return v0;
}

unint64_t sub_240E6DBCC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_240E871C4();
  sub_240E86F94();
  v6 = sub_240E871F4();

  return sub_240E6DD34(a1, a2, v6);
}

uint64_t sub_240E6DC44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_240E6DCA0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_240E86F74();
  sub_240E871C4();
  sub_240E86F94();
  v4 = sub_240E871F4();

  return sub_240E6E098(a1, v4);
}

unint64_t sub_240E6DD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_240E871A4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240E6DDFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E6DE3C(uint64_t result, int a2, int a3)
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

unint64_t sub_240E6DEB8()
{
  result = qword_2815037B0;
  if (!qword_2815037B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B220, &unk_240E87F20);
    sub_240E6DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037B0);
  }

  return result;
}

unint64_t sub_240E6DF44()
{
  result = qword_2815037B8;
  if (!qword_2815037B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B228, &qword_240E88D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037B8);
  }

  return result;
}

uint64_t sub_240E6DFC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_240E6E028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B218, &qword_240E87F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E6E098(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_240E86F74();
    v8 = v7;
    if (v6 == sub_240E86F74() && v8 == v9)
    {

      return i;
    }

    v11 = sub_240E871A4();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_240E6E190()
{
  result = qword_2815037A0;
  if (!qword_2815037A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B230, &unk_240E87F30);
    sub_240E6E214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037A0);
  }

  return result;
}

unint64_t sub_240E6E214()
{
  result = qword_2815037A8;
  if (!qword_2815037A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B218, &qword_240E87F18);
    sub_240E6DEB8();
    sub_240E6E2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037A8);
  }

  return result;
}

unint64_t sub_240E6E2A0()
{
  result = qword_27E51B238;
  if (!qword_27E51B238)
  {
    sub_240E86A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B238);
  }

  return result;
}

uint64_t sub_240E6E33C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v7 = sub_240E864E4();
  v8 = OUTLINED_FUNCTION_3_1(v7);
  v63 = v9;
  v64 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  v62 = v13 - v12;
  v14 = sub_240E86504();
  v15 = OUTLINED_FUNCTION_3_1(v14);
  v59 = v16;
  v60 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_2();
  v58 = v20 - v19;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40) - 8) + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v22);
  v61 = &v56 - v23;
  v24 = type metadata accessor for CardOnFileView();
  v25 = OUTLINED_FUNCTION_3(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_2();
  v30 = v29 - v28;
  *(v29 - v28 + 24) = 0u;
  v31 = (v29 - v28 + 24);
  *(v29 - v28 + 40) = 0u;
  v33 = *(v32 + 32);
  v56 = sub_240E86774();
  v57 = v33;
  __swift_storeEnumTagSinglePayload(v30 + v33, 1, 1, v56);
  *v30 = a1;
  *(v30 + 8) = a2;
  *(v30 + 16) = a3;

  v34 = a1;
  v35 = [v34 salableInfo];
  if (v35)
  {

    *(v30 + 32) = [v34 salableInfo];
  }

  v36 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  if (a1)
  {
    v38 = [v34 paymentContentItems];
    sub_240E6CBA8();
    v36 = sub_240E87024();
  }

  v39 = sub_240E6F3A0(v36);

  if (v39 < 1)
  {
    if (!a1)
    {

      goto LABEL_16;
    }
  }

  else
  {
    if (!a1)
    {

      *v31 = v37;
      goto LABEL_16;
    }

    v40 = [v34 paymentContentItems];
    sub_240E6CBA8();
    v41 = sub_240E87024();

    *v31 = v41;
  }

  v42 = [v34 languageTagBagValue];
  if (v42)
  {
    v43 = v42;
    v44 = sub_240E86F74();
    v46 = v45;

    *(v30 + 40) = v44;
    *(v30 + 48) = v46;

    v47 = v58;
    sub_240E864B4();
    v48 = v62;
    sub_240E864F4();
    (*(v59 + 8))(v47, v60);
    v49 = sub_240E864D4();
    (*(v63 + 8))(v48, v64);
    v50 = v56;
    v51 = *(v56 - 8) + 104;
    v52 = MEMORY[0x277CDFA90];
    if (v49 != 2)
    {
      v52 = MEMORY[0x277CDFA88];
    }

    v53 = v61;
    (*(*(v56 - 8) + 104))(v61, *v52, v56);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);
    sub_240E6EEB4(v53, v30 + v57);
  }

  else
  {
  }

LABEL_16:
  v54 = v65;
  sub_240E6E7D4(v30, v65);
  __swift_storeEnumTagSinglePayload(v54, 0, 1, v24);
  return sub_240E6E838(v30);
}

uint64_t type metadata accessor for CardOnFileView()
{
  result = qword_27E51B248;
  if (!qword_27E51B248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240E6E7D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardOnFileView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E6E838(uint64_t a1)
{
  v2 = type metadata accessor for CardOnFileView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240E6E894@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_240E86504();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  v44 = v9 - v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40) - 8) + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = sub_240E86774();
  v15 = OUTLINED_FUNCTION_3_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_2();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B280, &qword_240E87FC0);
  OUTLINED_FUNCTION_3(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v26);
  v28 = &v42 - v27;
  v43 = sub_240E869B4();
  v51 = 0;
  sub_240E6EC94(v2, v49);
  memcpy(v52, v49, 0x52uLL);
  memcpy(__dst, v49, 0x52uLL);
  sub_240E6AF3C(v52, &v48, &qword_27E51B288, &qword_240E87FC8);
  sub_240E6AFAC(__dst, &qword_27E51B288, &qword_240E87FC8);
  memcpy(&v50[7], v52, 0x52uLL);
  v29 = v51;
  KeyPath = swift_getKeyPath();
  v31 = type metadata accessor for CardOnFileView();
  sub_240E6AF3C(v2 + *(v31 + 32), v13, &qword_27E51B240, &unk_240E87F40);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    (*(v17 + 104))(v22, *MEMORY[0x277CDFA88], v14);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_240E6AFAC(v13, &qword_27E51B240, &unk_240E87F40);
    }
  }

  else
  {
    (*(v17 + 32))(v22, v13, v14);
  }

  v32 = &v28[*(v23 + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B290, &qword_240E88000);
  (*(v17 + 32))(v32 + *(v33 + 28), v22, v14);
  *v32 = KeyPath;
  *v28 = v43;
  *(v28 + 1) = 0;
  v28[16] = v29;
  memcpy(v28 + 17, v50, 0x59uLL);
  v34 = swift_getKeyPath();
  if (*(v2 + 48))
  {
    v35 = *(v2 + 40);

    v36 = v44;
    sub_240E864B4();
  }

  else
  {
    v36 = v44;
    sub_240E864C4();
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B298, &qword_240E88038);
  v38 = v47;
  v39 = (v47 + *(v37 + 36));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B2A0, &unk_240E88040);
  (*(v45 + 32))(v39 + *(v40 + 28), v36, v46);
  *v39 = v34;
  return sub_240E6F194(v28, v38);
}

uint64_t sub_240E6EC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *a1;
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    v8 = v4;
    v9 = sub_240E7FADC(v5, v7, v6);
    sub_240E80D68(v8, v9, 0, v26);
    v10 = v26[0];
    v11 = v26[1];
    v12 = v26[2];
    v13 = v26[3];
    v14 = v26[4];
    v15 = v26[5];
    v17 = v26[6];
    v16 = v26[7];
    LOWORD(v4) = 256;
    v18 = v26[8];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v18 = 0;
  }

  v22 = v16;
  v23 = v18;
  v19 = *(a1 + 24);
  if (v19)
  {
    v20 = v4;
  }

  else
  {
    v20 = 0;
  }

  __src[0] = v10;
  __src[1] = v11;
  __src[2] = v12;
  __src[3] = v13;
  __src[4] = v14;
  __src[5] = v15;
  __src[6] = v17;
  __src[7] = v16;
  __src[8] = v18;
  memcpy(a2, __src, 0x48uLL);
  *(a2 + 72) = v19;
  *(a2 + 80) = v20;

  sub_240E6AF3C(__src, v25, &qword_27E51B2A8, &qword_240E89B20);
  v25[0] = v10;
  v25[1] = v11;
  v25[2] = v12;
  v25[3] = v13;
  v25[4] = v14;
  v25[5] = v15;
  v25[6] = v17;
  v25[7] = v22;
  v25[8] = v23;
  return sub_240E6AFAC(v25, &qword_27E51B2A8, &qword_240E89B20);
}

uint64_t sub_240E6EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_3_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20]();
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1);
  return a6(v12);
}

uint64_t sub_240E6EEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B240, &unk_240E87F40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_240E6EF74()
{
  sub_240E6F070();
  if (v0 <= 0x3F)
  {
    sub_240E6F124(319, &qword_27E51B268, sub_240E6CBA8);
    if (v1 <= 0x3F)
    {
      sub_240E6F0D4();
      if (v2 <= 0x3F)
      {
        sub_240E6F124(319, &qword_27E51B278, MEMORY[0x277CDFAA0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_240E6F070()
{
  if (!qword_27E51B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B260, &qword_240E87F68);
    v0 = sub_240E870E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E51B258);
    }
  }
}

void sub_240E6F0D4()
{
  if (!qword_27E51B270)
  {
    v0 = sub_240E870E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E51B270);
    }
  }
}

void sub_240E6F124(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_240E870E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_240E6F194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B280, &qword_240E87FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E6F204()
{
  result = qword_27E51B2B0;
  if (!qword_27E51B2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B298, &qword_240E88038);
    sub_240E6F2BC();
    sub_240E6BAE4(&qword_27E51B2D8, &qword_27E51B2A0, &unk_240E88040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B2B0);
  }

  return result;
}

unint64_t sub_240E6F2BC()
{
  result = qword_27E51B2B8;
  if (!qword_27E51B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B280, &qword_240E87FC0);
    sub_240E6BAE4(&qword_27E51B2C0, &qword_27E51B2C8, &unk_240E88050);
    sub_240E6BAE4(&qword_27E51B2D0, &qword_27E51B290, &qword_240E88000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B2B8);
  }

  return result;
}

uint64_t sub_240E6F3A0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

id sub_240E6F3E4()
{
  sub_240E6D5D0();
  result = sub_240E6DA6C();
  qword_27E51CE98 = result;
  return result;
}

uint64_t sub_240E6F430()
{
  if (qword_27E51B0A0 != -1)
  {
    swift_once();
  }

  v0 = qword_27E51CE98;
  result = sub_240E86D24();
  qword_27E51B2E0 = result;
  return result;
}

uint64_t static Color.borderColor.getter()
{
  if (qword_27E51B0A8 != -1)
  {
    swift_once();
  }
}

void sub_240E6F510()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v3 = v2;
  v4 = sub_240E86944();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_2();
  v8 = type metadata accessor for TitleWithImage(0);
  v9 = OUTLINED_FUNCTION_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_2();
  v15 = (v14 - v13);
  v70 = v1;
  if (*(v1 + 16))
  {
    v51 = v15;
    v52 = v12;
    sub_240E73C6C(v1, &v60);
    if (v62)
    {
      sub_240E74B14(&v60, &v63);

      sub_240E74B2C(0, 1);
      v16 = v66;
      __swift_project_boxed_opaque_existential_1(&v63, v65);
      v17 = *(v16 + 8);
      sub_240E86C64();
      __swift_destroy_boxed_opaque_existential_0Tm(&v63);
      v18 = 0;
      v54 = *(v70 + 16);
      v55 = v70;
      v19 = v70 + 32;
      v53 = v3;
      while (1)
      {
        if (v54 == v18)
        {

          v63 = v67;
          v64 = v68;
          v65 = v69;
          goto LABEL_10;
        }

        if (v18 >= *(v55 + 16))
        {
          break;
        }

        sub_240E74C7C(v19, &v63);
        sub_240E74C7C(&v63, &v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B348, &qword_240E89810);
        if (swift_dynamicCast())
        {

          v35 = v67;
          v36 = v68;
          v37 = v69;
          v38 = type metadata accessor for RatingImageViewModel(0);
          v39 = *(v38 + 48);
          v40 = *(v38 + 52);
          swift_allocObject();
          v41 = OUTLINED_FUNCTION_31();
          sub_240E6AF9C(v41, v42, v36);

          sub_240E711E4();
          sub_240E74CE0(&qword_27E51B3B0, type metadata accessor for RatingImageViewModel);
          *v51 = sub_240E86734();
          v51[1] = v43;
          v44 = v52[5];
          *(v51 + v44) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3B8, &qword_240E88760);
          swift_storeEnumTagMultiPayload();
          v45 = v52[6];
          *(v51 + v45) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3C0, &qword_240E88798);
          swift_storeEnumTagMultiPayload();
          v46 = v51 + v52[7];
          *v46 = v35;
          v46[16] = v36;
          *(v46 + 3) = v37;
          v47 = v51 + v52[8];
          *v47 = v57;
          *(v47 + 2) = v58;
          *(v47 + 3) = v59;
          sub_240E74CE0(&qword_27E51B3C8, type metadata accessor for TitleWithImage);
          v48 = sub_240E86DC4();
          v49 = OUTLINED_FUNCTION_31();
          sub_240E6AE70(v49, v50, v36);

          *v3 = v48;
          __swift_destroy_boxed_opaque_existential_0Tm(&v63);
          goto LABEL_12;
        }

        sub_240E86934();
        OUTLINED_FUNCTION_13();
        v56 = v19;
        sub_240E86924();
        v20 = v68;
        OUTLINED_FUNCTION_30();
        sub_240E86914();
        OUTLINED_FUNCTION_13();
        sub_240E86924();
        v21 = v66;
        __swift_project_boxed_opaque_existential_1(&v63, v65);
        v22 = *(v21 + 8);
        sub_240E86C64();
        v24 = *(&v60 + 1);
        v23 = v60;
        v25 = v61;
        sub_240E86914();
        sub_240E6AE70(v23, v24, v25);

        OUTLINED_FUNCTION_13();
        sub_240E86924();
        ++v18;
        sub_240E86964();
        v26 = OUTLINED_FUNCTION_5_0();
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v33 = OUTLINED_FUNCTION_30();
        sub_240E6AE70(v33, v34, v20);

        *&v67 = v26;
        *(&v67 + 1) = v28;
        v68 = v30 & 1;
        v69 = v32;
        v3 = v53;
        __swift_destroy_boxed_opaque_existential_0Tm(&v63);
        v19 = v56 + 40;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *v3 = sub_240E86DC4();
LABEL_12:
    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_240E6FA88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240E86654();

  return v1;
}

uint64_t sub_240E6FAFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_240E86664();
}

uint64_t sub_240E6FB6C()
{
  OUTLINED_FUNCTION_26();
  v1[36] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B310, &qword_240E88138);
  OUTLINED_FUNCTION_6_0(v2);
  v4 = *(v3 + 64);
  v1[37] = OUTLINED_FUNCTION_39();
  v5 = sub_240E86EB4();
  v1[38] = v5;
  OUTLINED_FUNCTION_4_0(v5);
  v1[39] = v6;
  v8 = *(v7 + 64);
  v1[40] = OUTLINED_FUNCTION_39();
  v9 = sub_240E86E84();
  v1[41] = v9;
  OUTLINED_FUNCTION_4_0(v9);
  v1[42] = v10;
  v12 = *(v11 + 64);
  v1[43] = OUTLINED_FUNCTION_39();
  v13 = sub_240E86ED4();
  v1[44] = v13;
  OUTLINED_FUNCTION_4_0(v13);
  v1[45] = v14;
  v16 = *(v15 + 64);
  v1[46] = OUTLINED_FUNCTION_39();
  v17 = sub_240E86464();
  v1[47] = v17;
  OUTLINED_FUNCTION_4_0(v17);
  v1[48] = v18;
  v20 = *(v19 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240E6FD54, 0, 0);
}

uint64_t sub_240E6FD54()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[47];
  v4 = v0[48];
  sub_240E86424();
  sub_240E86434();
  v5 = *(v4 + 8);
  v0[53] = v5;
  v0[54] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = [objc_opt_self() defaultManager];
  sub_240E86454();
  v7 = sub_240E86F44();

  LOBYTE(v2) = [v6 fileExistsAtPath_];

  if ((v2 & 1) == 0)
  {
    v63 = v5;
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v8 = v0[36];
    v9 = sub_240E865F4();
    __swift_project_value_buffer(v9, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v10 = sub_240E865A4();
    OUTLINED_FUNCTION_4_0(v10);
    v61 = ((*(v12 + 80) + 32) & ~*(v12 + 80)) + 2 * *(v11 + 72);
    *(swift_allocObject() + 16) = xmmword_240E87DB0;
    v60 = type metadata accessor for RatingImageViewModel(0);
    v0[20] = v60;
    v0[17] = v8;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_240E86F74();
    }

    v15 = v0[52];
    v16 = v0[36];
    sub_240E86594();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
    sub_240E87124();
    MEMORY[0x245CD1CE0](0xD000000000000021, 0x8000000240E8A0E0);
    v17 = sub_240E86454();
    MEMORY[0x245CD1CE0](v17);

    MEMORY[0x245CD1CE0](0xD000000000000022, 0x8000000240E8A110);
    v0[24] = MEMORY[0x277D837D0];
    v0[21] = 0;
    v0[22] = 0xE000000000000000;
    sub_240E86584();
    sub_240E6AFAC((v0 + 21), &qword_27E51B178, "V:");
    sub_240E865C4();

    v18 = *(v16 + OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_bundle);
    if (v18)
    {
      v19 = v18;
      v20 = sub_240E74364(7368801, 0xE300000000000000, 0x6B63617074656ALL, 0xE700000000000000, v19);
      if (v20)
      {
        v21 = v20;
        v23 = v0[49];
        v22 = v0[50];
        v25 = v0[47];
        v24 = v0[48];
        v26 = v0[36];
        sub_240E86444();

        v59 = *(v24 + 32);
        v59(v22, v23, v25);
        *(swift_allocObject() + 16) = xmmword_240E87DB0;
        v0[28] = v60;
        v0[25] = v26;

        v27 = AMSLogKey();
        if (v27)
        {
          v28 = v27;
          sub_240E86F74();
        }

        v30 = v0[52];
        v62 = v0[50];
        v31 = v0[47];
        sub_240E86594();

        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
        sub_240E87124();

        OUTLINED_FUNCTION_35();
        v64 = v32;
        v33 = [v19 bundlePath];
        v34 = sub_240E86F74();
        v36 = v35;

        MEMORY[0x245CD1CE0](v34, v36);

        v0[32] = MEMORY[0x277D837D0];
        v0[29] = 0xD000000000000026;
        v0[30] = v64;
        sub_240E86584();
        sub_240E6AFAC((v0 + 29), &qword_27E51B178, "V:");
        sub_240E865D4();

        v63(v30, v31);
        v59(v30, v62, v31);
        goto LABEL_13;
      }
    }

    return sub_240E87154();
  }

LABEL_13:
  v37 = v0[52];
  v39 = v0[45];
  v38 = v0[46];
  v40 = v0[43];
  v41 = v0[44];
  v43 = v0[39];
  v42 = v0[40];
  v44 = v0[38];
  sub_240E86454();
  sub_240E86EC4();
  v45 = sub_240E86514();
  v46 = MEMORY[0x277D21A30];
  if ((v45 & 1) == 0)
  {
    v46 = MEMORY[0x277D21A38];
  }

  (*(v43 + 104))(v42, *v46, v44);
  v47 = sub_240E86EF4();
  v48 = MEMORY[0x277D21A60];
  v0[5] = v47;
  v0[6] = v48;
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_240E86EE4();
  sub_240E86E54();
  v49 = MEMORY[0x277D21A58];
  v0[10] = v41;
  v0[11] = v49;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 7);
  (*(v39 + 16))(boxed_opaque_existential_1Tm, v38, v41);
  v51 = sub_240E86E64();
  v52 = sub_240E74D28(0, &qword_27E51B320, 0x277D85C78);
  v53 = MEMORY[0x277D225C0];
  v0[15] = v52;
  v0[16] = v53;
  v0[12] = v51;
  v0[55] = sub_240E86E74();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B328, &qword_240E88148);
  v55 = sub_240E6BAE4(&qword_27E51B330, &qword_27E51B328, &qword_240E88148);
  v56 = *(MEMORY[0x277D22390] + 4);
  v57 = swift_task_alloc();
  v0[56] = v57;
  *v57 = v0;
  v57[1] = sub_240E704CC;
  v58 = v0[37];

  return MEMORY[0x282180360](v58, v54, v55);
}

uint64_t sub_240E704CC()
{
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *(v5 + 440);
  v8 = *v1;
  OUTLINED_FUNCTION_32();
  *v9 = v8;
  *(v10 + 456) = v0;

  if (v0)
  {
    v11 = sub_240E70754;
  }

  else
  {
    v11 = sub_240E705F0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_240E705F0()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v16 = v0[51];
  v17 = v0[50];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[44];
  v7 = v0[45];
  v15 = v0[43];
  v8 = v0[41];
  v18 = v0[49];
  v19 = v0[40];
  v10 = v0[36];
  v9 = v0[37];
  (*(v0[42] + 8))();
  (*(v7 + 8))(v4, v6);
  v2(v3, v5);
  v11 = sub_240E86EA4();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v12 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_jetpackBundle;
  swift_beginAccess();
  sub_240E74444(v9, v10 + v12);
  swift_endAccess();

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_240E70754()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[51];
  v4 = v0[52];
  v13 = v0[50];
  v14 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v8 = v0[44];
  v7 = v0[45];
  v9 = v0[40];
  v15 = v0[37];
  (*(v0[42] + 8))(v0[43], v0[41]);
  (*(v7 + 8))(v6, v8);
  v1(v4, v5);

  OUTLINED_FUNCTION_17();
  v11 = v0[57];

  return v10();
}

uint64_t sub_240E7086C(char *a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v87 = a5;
  v88 = a1;
  v82 = a3;
  v83 = a4;
  v92 = a2;
  v89 = sub_240E86F04();
  v9 = OUTLINED_FUNCTION_3_1(v89);
  v86 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_2();
  v15 = v14 - v13;
  v16 = sub_240E866A4();
  v17 = OUTLINED_FUNCTION_3_1(v16);
  v84 = v18;
  v85 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_2();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B310, &qword_240E88138);
  OUTLINED_FUNCTION_6_0(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - v28;
  v30 = sub_240E86EA4();
  v31 = OUTLINED_FUNCTION_3_1(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_2();
  v38 = v37 - v36;
  v39 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_jetpackBundle;
  swift_beginAccess();
  v81 = v8;
  sub_240E75480(v8 + v39, v29, &qword_27E51B310, &qword_240E88138);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    return sub_240E6AFAC(v29, &qword_27E51B310, &qword_240E88138);
  }

  v79 = v33;
  v80 = v30;
  (*(v33 + 32))(v38, v29, v30);
  v90 = 0x722F737465737361;
  v91 = 0xEF2F73676E697461;
  MEMORY[0x245CD1CE0](v82, v83);

  MEMORY[0x245CD1CE0](47, 0xE100000000000000);

  v42 = v90;
  v41 = v91;
  v44 = v84;
  v43 = v85;
  (*(v84 + 104))(v23, *MEMORY[0x277CDF3C0], v85);
  v45 = sub_240E86694();
  (*(v44 + 8))(v23, v43);
  v87 = v38;
  if (v45)
  {
    v90 = v42;
    v91 = v41;

    MEMORY[0x245CD1CE0](0x2F6B726164, 0xE500000000000000);

    MEMORY[0x245CD1CE0](v88, v92);

    v46 = v90;
    v47 = v91;
    v48 = sub_240E73F9C(0, 1, 1, MEMORY[0x277D84F90]);
    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    v51 = v48;
    if (v50 >= v49 >> 1)
    {
      v51 = sub_240E73F9C((v49 > 1), v50 + 1, 1, v48);
    }

    *(v51 + 2) = v50 + 1;
    v52 = &v51[16 * v50];
    *(v52 + 4) = v46;
    *(v52 + 5) = v47;
    v53 = v51;
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v90 = v42;
  v91 = v41;

  MEMORY[0x245CD1CE0](v88, v92);

  v54 = v90;
  v55 = v91;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v53 = sub_240E73F9C(0, *(v53 + 2) + 1, 1, v53);
  }

  v56 = v86;
  v57 = v53;
  v58 = *(v53 + 2);
  v88 = v57;
  v59 = *(v57 + 3);
  v92 = v58 + 1;
  if (v58 >= v59 >> 1)
  {
    v88 = sub_240E73F9C((v59 > 1), v92, 1, v88);
  }

  v60 = 0;
  v61 = v88;
  *(v88 + 2) = v92;
  v62 = &v61[16 * v58];
  v53 = v61;
  *(v62 + 4) = v54;
  *(v62 + 5) = v55;
  v63 = (v56 + 8);
  v64 = (v61 + 40);
  v54 = v87;
  while (1)
  {
    if (v92 == v60)
    {
      (*(v79 + 8))(v54, v80);
    }

    if (v60 >= *(v53 + 2))
    {
      __break(1u);
      goto LABEL_26;
    }

    v66 = *(v64 - 1);
    v65 = *v64;

    OUTLINED_FUNCTION_18();
    sub_240E86F14();
    sub_240E86E94();
    if (v7)
    {

      (*v63)(v15, v89);
      return (*(v79 + 8))(v54, v80);
    }

    v55 = v67;
    (*v63)(v15, v89);
    if (v55 >> 60 != 15)
    {
      break;
    }

LABEL_21:
    v64 += 2;
    ++v60;
  }

  OUTLINED_FUNCTION_33();
  v68 = sub_240E86474();
  v69 = CGSVGDocumentCreateFromData();

  if (!v69)
  {
    v73 = OUTLINED_FUNCTION_33();
    sub_240E740A4(v73, v74);
    goto LABEL_20;
  }

  v70 = [objc_opt_self() _imageWithCGSVGDocument_scale_orientation_];
  if (!v70)
  {
    v71 = OUTLINED_FUNCTION_33();
    sub_240E740A4(v71, v72);

LABEL_20:
    v54 = v87;
    v53 = v88;
    goto LABEL_21;
  }

  v75 = v70;

  v76 = v75;
  sub_240E6FAFC();
  v77 = OUTLINED_FUNCTION_33();
  sub_240E740A4(v77, v78);

  return (*(v79 + 8))(v87, v80);
}

uint64_t sub_240E70E74()
{
  v1 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B338, &qword_240E88198);
  OUTLINED_FUNCTION_3(v2);
  (*(v3 + 8))(v0 + v1);

  sub_240E6AFAC(v0 + OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_jetpackBundle, &qword_27E51B310, &qword_240E88138);
  return v0;
}

uint64_t sub_240E70F08()
{
  sub_240E70E74();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_240E70F88()
{
  sub_240E7108C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_240E74FA0(319, &qword_27E51B308, MEMORY[0x277D219A0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_240E7108C()
{
  if (!qword_27E51B300)
  {
    v0 = sub_240E86674();
    if (!v1)
    {
      atomic_store(v0, &qword_27E51B300);
    }
  }
}

uint64_t sub_240E710E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240E71138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_240E7118C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_240E711A8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_240E711E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B338, &qword_240E88198);
  OUTLINED_FUNCTION_3_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel__state;
  v17[1] = 0;
  sub_240E86644();
  (*(v4 + 32))(v1 + v10, v9, v2);
  v11 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_bundle;
  sub_240E74D28(0, &qword_27E51B208, 0x277CCA8D8);
  *(v1 + v11) = sub_240E6DA6C();
  v12 = OBJC_IVAR____TtC33AppleMediaServicesUIPaymentSheets20RatingImageViewModel_jetpackBundle;
  v13 = sub_240E86EA4();
  OUTLINED_FUNCTION_28(v1 + v12, v14, v15, v13);
  return v1;
}

uint64_t sub_240E7132C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RatingImageViewModel(0);
  result = sub_240E86634();
  *a1 = result;
  return result;
}

void sub_240E7136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_240E868C4();
  v26 = OUTLINED_FUNCTION_3_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_2();
  v33 = v32 - v31;
  v34 = OUTLINED_FUNCTION_31();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  OUTLINED_FUNCTION_3(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v39);
  v41 = (&a9 - v40);
  v42 = type metadata accessor for TitleWithImage(0);
  sub_240E75480(v20 + *(v42 + 20), v41, &qword_27E51B3B8, &qword_240E88760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_240E866A4();
    OUTLINED_FUNCTION_3(v43);
    (*(v44 + 32))(v24, v41);
  }

  else
  {
    v45 = *v41;
    sub_240E870A4();
    v46 = sub_240E86A24();
    sub_240E86624();

    sub_240E868B4();
    swift_getAtKeyPath();

    (*(v28 + 8))(v33, v25);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_240E71538@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v154 = a1;
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 pointSize];
  v5 = v4;

  v6 = *(v1 + 8);
  v7 = sub_240E6FA88();
  if (v7)
  {
    v8 = v7;
    [v7 size];
    v10 = v9;
    v153 = v8;
    [v8 size];
    sub_240E75938(v5 * (v10 / v11), v5);
    v12 = sub_240E86D44();
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B410, &qword_240E88818);
    OUTLINED_FUNCTION_3(v151);
    v14 = *(v13 + 64);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x28223BE20](v15);
    v150 = (&v139 - v16);
    v17 = sub_240E86944();
    v149 = &v139;
    v18 = OUTLINED_FUNCTION_6_0(v17);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_1_2();
    sub_240E86934();
    OUTLINED_FUNCTION_13();
    sub_240E86924();
    v21 = type metadata accessor for TitleWithImage(0);
    v22 = v2 + *(v21 + 28);
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    sub_240E86914();
    OUTLINED_FUNCTION_13();
    sub_240E86924();
    v152 = v12;

    v27 = sub_240E86C44();
    v29 = v28;
    v31 = v30;
    v32 = sub_240E86BC4();
    v146 = v2;
    v34 = v33;
    v36 = v35;
    sub_240E6AE70(v27, v29, v31 & 1);

    sub_240E86914();
    sub_240E6AE70(v32, v34, v36 & 1);

    OUTLINED_FUNCTION_13();
    sub_240E86924();
    sub_240E86964();
    v147 = OUTLINED_FUNCTION_5_0();
    v148 = v37;
    v39 = v38;
    v41 = v40;
    v156 = 0;
    v157 = 0xE000000000000000;
    v42 = sub_240E866A4();
    v43 = OUTLINED_FUNCTION_3_1(v42);
    v45 = v44;
    v47 = *(v46 + 64);
    MEMORY[0x28223BE20](v43);
    OUTLINED_FUNCTION_1_2();
    v50 = v49 - v48;
    v51 = v146;
    sub_240E7136C(v52, v53, v54, v55, v56, v57, v58, v59, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
    sub_240E87144();
    v60 = (*(v45 + 8))(v50, v42);
    v62 = v156;
    v61 = v157;
    v63 = *(v21 - 8);
    v64 = *(v63 + 64);
    MEMORY[0x28223BE20](v60);
    v65 = &v139 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_240E75020(v51, v65);
    v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v67 = swift_allocObject();
    sub_240E75084(v65, v67 + v66);
    v68 = v150;
    v69 = (v150 + *(v151 + 36));
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B418, &qword_240E88830);
    v71 = v69 + *(v70 + 36);
    sub_240E87084();
    v72 = (v69 + *(v70 + 40));
    *v72 = v62;
    v72[1] = v61;
    *v69 = &unk_240E88828;
    v69[1] = v67;
    *v68 = v147;
    *(v68 + 8) = v39;
    *(v68 + 16) = v41 & 1;
    *(v68 + 24) = v148;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B420, &qword_240E88838);
    OUTLINED_FUNCTION_3(v73);
    v75 = *(v74 + 64);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x28223BE20](v76);
    sub_240E75480(v68, &v139 - v77, &qword_27E51B410, &qword_240E88818);
    OUTLINED_FUNCTION_24();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B428, &qword_240E88840);
    v78 = OUTLINED_FUNCTION_30();
    v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v78, v79);
    OUTLINED_FUNCTION_7();
    v82 = sub_240E6BAE4(v81, &qword_27E51B430, &qword_240E88848);
    v156 = v80;
    v157 = v82;
    OUTLINED_FUNCTION_10();
    sub_240E75294();
    OUTLINED_FUNCTION_24();
    sub_240E869D4();

    return sub_240E6AFAC(v68, &qword_27E51B410, &qword_240E88818);
  }

  else
  {
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B428, &qword_240E88840);
    v85 = OUTLINED_FUNCTION_3_1(v84);
    v152 = v86;
    v153 = v85;
    v88 = *(v87 + 64);
    MEMORY[0x28223BE20](v85);
    OUTLINED_FUNCTION_21();
    v151 = v89 - v90;
    v146 = &v139;
    MEMORY[0x28223BE20](v91);
    v93 = &v139 - v92;
    v149 = sub_240E86904();
    v94 = type metadata accessor for TitleWithImage(0);
    v150 = &v139;
    v95 = *(v94 - 8);
    v94 -= 8;
    v96 = v2 + *(v94 + 36);
    v97 = *v96;
    v98 = *(v96 + 8);
    v99 = *(v96 + 16);
    v100 = *(v96 + 24);
    v101 = *(v95 + 64);
    MEMORY[0x28223BE20](v94);
    v102 = &v139 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_240E75020(v2, v102);
    sub_240E87074();
    v147 = v98;
    v148 = v97;
    HIDWORD(v145) = v99;
    sub_240E6AF9C(v97, v98, v99);
    v144 = v100;

    v103 = sub_240E87064();
    v104 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v105 = swift_allocObject();
    v106 = MEMORY[0x277D85700];
    *(v105 + 16) = v103;
    *(v105 + 24) = v106;
    sub_240E75084(v102, v105 + v104);
    v107 = sub_240E87094();
    v108 = OUTLINED_FUNCTION_3_1(v107);
    v110 = v109;
    v112 = *(v111 + 64);
    MEMORY[0x28223BE20](v108);
    v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
    v114 = &v139 - v113;
    sub_240E87084();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v141 = sub_240E86764();
      v142 = &v139;
      v115 = OUTLINED_FUNCTION_3_1(v141);
      v140 = v116;
      v118 = *(v117 + 64);
      MEMORY[0x28223BE20](v115);
      OUTLINED_FUNCTION_1_2();
      v139 = v120 - v119;
      v156 = 0;
      v157 = 0xE000000000000000;
      sub_240E87124();

      OUTLINED_FUNCTION_35();
      v156 = 0xD000000000000044;
      v157 = v121;
      v155 = 185;
      v122 = sub_240E87194();
      MEMORY[0x245CD1CE0](v122);

      v143 = &v139;
      MEMORY[0x28223BE20](v123);
      (*(v110 + 16))(&v139 - v113, &v139 - v113, v107);
      v124 = v139;
      sub_240E86754();
      (*(v110 + 8))(v114, v107);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0D8, &unk_240E88860);
      (*(v140 + 32))(&v93[*(v125 + 36)], v124, v141);
    }

    else
    {
      v126 = &v93[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B0E0, &qword_240E878C8) + 36)];
      v127 = sub_240E86714();
      (*(v110 + 32))(&v126[*(v127 + 20)], &v139 - v113, v107);
      *v126 = &unk_240E88858;
      *(v126 + 1) = v105;
    }

    OUTLINED_FUNCTION_8();
    v128 = v151;
    v130 = v152;
    v129 = v153;
    (*(v152 + 32))(v151, v93, v153);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B420, &qword_240E88838);
    OUTLINED_FUNCTION_3(v131);
    v133 = *(v132 + 64);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x28223BE20](v134);
    (*(v130 + 16))(&v139 - v135, v128, v129);
    OUTLINED_FUNCTION_24();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B410, &qword_240E88818);
    v136 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B430, &qword_240E88848);
    OUTLINED_FUNCTION_7();
    v138 = sub_240E6BAE4(v137, &qword_27E51B430, &qword_240E88848);
    v156 = v136;
    v157 = v138;
    OUTLINED_FUNCTION_10();
    sub_240E75294();
    sub_240E869D4();
    return (*(v130 + 8))(v128, v129);
  }
}

uint64_t sub_240E7206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a3;
  v4 = sub_240E866A4();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_240E87074();
  v3[12] = sub_240E87064();
  v8 = sub_240E87054();
  v3[13] = v8;
  v3[14] = v7;

  return MEMORY[0x2822009F8](sub_240E72178, v8, v7);
}

uint64_t sub_240E72178()
{
  OUTLINED_FUNCTION_26();
  v0[15] = *(v0[6] + 8);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_240E7220C;

  return sub_240E6FB6C();
}

uint64_t sub_240E7220C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = v2[16];
  *v4 = *v1;
  *(v3 + 136) = v0;

  v6 = v2[14];
  v7 = v2[13];
  if (v0)
  {
    v8 = sub_240E72650;
  }

  else
  {
    v8 = sub_240E72344;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_240E72344()
{
  v42 = v0[15];
  v43 = v0[17];
  v1 = v0[12];
  v40 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];

  v7 = type metadata accessor for TitleWithImage(0);
  sub_240E7136C(v7, v8, v9, v10, v11, v12, v13, v14, v7, *(v6 + *(v7 + 32) + 24), *(v6 + *(v7 + 32) + 16), *(v6 + *(v7 + 32) + 8), *(v6 + *(v7 + 32)), v40, v42, v43, v45, v46, v47, v48);
  v15 = *MEMORY[0x277CDF3C0];
  v16 = *(v5 + 104);
  v16(v3, *MEMORY[0x277CDF3C0], v4);
  v17 = sub_240E86694();
  v18 = *(v5 + 8);
  v18(v3, v4);
  v18(v2, v4);
  if (v17)
  {
    v19 = v15;
  }

  else
  {
    v19 = *MEMORY[0x277CDF3D0];
  }

  v16(v41, v19, v4);
  sub_240E7086C(v39, v38, v37, v36, v41);
  v18(v0[11], v0[7]);
  if (v44)
  {
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v20 = v0[6];
    v21 = sub_240E865F4();
    __swift_project_value_buffer(v21, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v22 = sub_240E865A4();
    OUTLINED_FUNCTION_4_0(v22);
    v24 = *(v23 + 72);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    *(swift_allocObject() + 16) = xmmword_240E87DB0;
    v0[5] = v35;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
    sub_240E75020(v20, boxed_opaque_existential_1Tm);
    v28 = AMSLogKey();
    if (v28)
    {
      v29 = v28;
      sub_240E86F74();
    }

    sub_240E86594();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    sub_240E86574();
    sub_240E865C4();
  }

  v31 = v0[10];
  v30 = v0[11];
  v32 = v0[9];

  OUTLINED_FUNCTION_17();

  return v33();
}

uint64_t sub_240E72650()
{
  v1 = v0[12];

  v2 = v0[17];
  if (qword_27E51B0B0 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v3 = v0[6];
  v4 = sub_240E865F4();
  __swift_project_value_buffer(v4, qword_27E51CEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
  v5 = sub_240E865A4();
  OUTLINED_FUNCTION_4_0(v5);
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_240E87DB0;
  v0[5] = type metadata accessor for TitleWithImage(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_240E75020(v3, boxed_opaque_existential_1Tm);
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_240E86F74();
  }

  sub_240E86594();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_240E86574();
  sub_240E865C4();

  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];

  OUTLINED_FUNCTION_17();

  return v16();
}

uint64_t sub_240E72854(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_240E866A4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_240E87074();
  v1[6] = sub_240E87064();
  v6 = sub_240E87054();

  return MEMORY[0x2822009F8](sub_240E72948, v6, v5);
}

uint64_t sub_240E72948()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v6 = *(v5 + 8);
  v7 = type metadata accessor for TitleWithImage(0);
  v8 = (v5 + *(v7 + 32));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  sub_240E7136C(v7, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, v28, v29, v30, v31, v32, v33, v0, v34, v35);
  v20 = OUTLINED_FUNCTION_31();
  sub_240E7086C(v20, v21, v11, v12, v2);
  (*(v4 + 8))(v2, v3);
  v22 = v0[5];

  OUTLINED_FUNCTION_17();

  return v23();
}

uint64_t sub_240E72A38()
{
  v1 = sub_240E868C4();
  v2 = OUTLINED_FUNCTION_3_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_15();
  if ((v0 & 1) == 0)
  {
    sub_240E870A4();
    v5 = sub_240E86A24();
    OUTLINED_FUNCTION_11();

    sub_240E868B4();
    OUTLINED_FUNCTION_18();
    swift_getAtKeyPath();
    sub_240E6AFAC(&v9, &qword_27E51B370, &qword_240E88700);
    v6 = OUTLINED_FUNCTION_12();
    v7(v6);
  }

  return OUTLINED_FUNCTION_29();
}

uint64_t sub_240E72B40()
{
  v1 = sub_240E868C4();
  v2 = OUTLINED_FUNCTION_3_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_14();
  if ((v0 & 1) == 0)
  {
    sub_240E870A4();
    v5 = sub_240E86A24();
    OUTLINED_FUNCTION_11();

    sub_240E868B4();
    OUTLINED_FUNCTION_18();
    swift_getAtKeyPath();
    sub_240E6AFAC(&v9, &qword_27E51B370, &qword_240E88700);
    v6 = OUTLINED_FUNCTION_12();
    v7(v6);
  }

  return OUTLINED_FUNCTION_29();
}

void sub_240E72C4C()
{
  OUTLINED_FUNCTION_37();
  v1 = sub_240E863B4();
  v2 = OUTLINED_FUNCTION_3_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_2();
  v9 = v8 - v7;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v10 = *(v0 + 32);
  v11 = [v10 length];
  v12 = swift_allocObject();
  *(v12 + 16) = &v36;
  *(v12 + 24) = &v34;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_240E749EC;
  *(v13 + 24) = v12;
  v32 = sub_240E749F4;
  v33 = v13;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_240E814CC;
  v31 = &block_descriptor;
  v14 = _Block_copy(&v28);

  [v10 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v14}];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    return;
  }

  v15 = v35;
  v16 = v36;
  if (!v35)
  {
    goto LABEL_20;
  }

  v17 = v34;
  v18 = v34 == 0x656E696C64616568 && v35 == 0xE800000000000000;
  if (!v18 && (OUTLINED_FUNCTION_27() & 1) == 0)
  {
    v19 = v17 == 0x65746F6E746F6F66 && v15 == 0xE800000000000000;
    if (v19 || (OUTLINED_FUNCTION_27() & 1) != 0)
    {
LABEL_21:
      sub_240E86B34();
      goto LABEL_23;
    }

    v20 = v17 == 0x656772616CLL && v15 == 0xE500000000000000;
    if (v20 || (OUTLINED_FUNCTION_27() & 1) != 0)
    {
      sub_240E86A94();
      goto LABEL_23;
    }

LABEL_20:
    if (!v16)
    {
      sub_240E86B24();
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_240E86B44();
LABEL_23:

  v21 = [v10 string];
  v22 = sub_240E86F74();
  v24 = v23;

  v28 = v22;
  v29 = v24;
  sub_240E863A4();
  sub_240E6ADF4();
  sub_240E87104();
  (*(v4 + 8))(v9, v1);

  if (v36 == 1)
  {
    sub_240E72B40();
  }

  else
  {
    sub_240E72A38();
  }

  sub_240E86BD4();

  sub_240E86C04();

  v25 = OUTLINED_FUNCTION_30();
  sub_240E6AE70(v25, v26, v27);

  OUTLINED_FUNCTION_36();
}

uint64_t sub_240E73024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, void *a6)
{
  sub_240E6D14C(*MEMORY[0x277CEE2E0], a1, &v14);
  if (v15)
  {
    sub_240E74D28(0, &qword_281503720, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v9 = [v12 BOOLValue];

      *a5 = v9;
    }
  }

  else
  {
    sub_240E6AFAC(&v14, &qword_27E51B178, "V:");
  }

  sub_240E6D14C(*MEMORY[0x277CEE330], a1, &v14);
  if (!v15)
  {
    return sub_240E6AFAC(&v14, &qword_27E51B178, "V:");
  }

  result = swift_dynamicCast();
  if (result)
  {
    v11 = a6[1];
    *a6 = v12;
    a6[1] = v13;
  }

  return result;
}

void sub_240E73168(uint64_t a1@<X8>)
{
  sub_240E72C4C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
}

id sub_240E7319C()
{
  sub_240E74D28(0, &qword_27E51B180, 0x277D755B8);
  v0 = OUTLINED_FUNCTION_16();
  sub_240E6B5C0(v0, v1);
  v2 = OUTLINED_FUNCTION_16();
  v4 = sub_240E732FC(v2, v3);
  if (!v4)
  {
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v5 = sub_240E865F4();
    __swift_project_value_buffer(v5, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v6 = sub_240E865A4();
    OUTLINED_FUNCTION_4_0(v6);
    v8 = *(v7 + 72);
    *(OUTLINED_FUNCTION_23() + 16) = xmmword_240E88060;
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_22();
    sub_240E6AFAC(&v12, &qword_27E51B178, "V:");
    sub_240E865C4();
  }

  v9 = OUTLINED_FUNCTION_16();
  sub_240E6B618(v9, v10);
  return v4;
}

id sub_240E732FC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_240E86474();
  v6 = [v4 initWithData_];

  sub_240E6B618(a1, a2);
  return v6;
}

id sub_240E73374(double a1)
{
  sub_240E74D28(0, &qword_27E51B180, 0x277D755B8);
  v2 = OUTLINED_FUNCTION_16();
  sub_240E6B5C0(v2, v3);
  v4 = OUTLINED_FUNCTION_16();
  v6 = sub_240E7F398(v4, v5, a1);
  if (!v6)
  {
    if (qword_27E51B0B0 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v7 = sub_240E865F4();
    __swift_project_value_buffer(v7, qword_27E51CEB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
    v8 = sub_240E865A4();
    OUTLINED_FUNCTION_4_0(v8);
    v10 = *(v9 + 72);
    *(OUTLINED_FUNCTION_23() + 16) = xmmword_240E88060;
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_22();
    sub_240E6AFAC(&v14, &qword_27E51B178, "V:");
    sub_240E865C4();
  }

  v11 = OUTLINED_FUNCTION_16();
  sub_240E6B618(v11, v12);
  return v6;
}

uint64_t sub_240E734E4(void *a1)
{
  v1 = a1;
  sub_240E86D44();
  return sub_240E86C44();
}

uint64_t sub_240E73510@<X0>(uint64_t a1@<X8>)
{
  result = sub_240E734E4(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_240E73548()
{
  sub_240E86F84();

  v0 = sub_240E86F84();

  MEMORY[0x245CD1CE0](1735815982, 0xE400000000000000);
  return v0;
}

uint64_t sub_240E735E4()
{
  OUTLINED_FUNCTION_13();
  sub_240E86954();
  return OUTLINED_FUNCTION_5_0();
}

uint64_t sub_240E73610@<X0>(uint64_t a1@<X8>)
{
  result = sub_240E735E4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_240E7368C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  result = sub_240E73644(*v1);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

void sub_240E736CC()
{
  OUTLINED_FUNCTION_37();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B378, &qword_240E88708);
  v2 = OUTLINED_FUNCTION_6_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_21();
  v90 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v84 = v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B380, &qword_240E88710);
  OUTLINED_FUNCTION_6_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v12);
  v87 = v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B388, &qword_240E88718);
  OUTLINED_FUNCTION_6_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v17);
  v85 = v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B390, &qword_240E88720);
  OUTLINED_FUNCTION_6_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v22);
  v24 = v82 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B398, &qword_240E88728);
  OUTLINED_FUNCTION_6_0(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v28);
  v30 = v82 - v29;
  v89 = sub_240E86BB4();
  v31 = OUTLINED_FUNCTION_3_1(v89);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_2();
  v38 = v37 - v36;
  v39 = sub_240E86414();
  v40 = OUTLINED_FUNCTION_6_0(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_2();
  v88 = sub_240E863C4();
  v43 = OUTLINED_FUNCTION_3_1(v88);
  v86 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = v82 - v51;
  v54 = *(v0 + 32);
  v53 = *(v0 + 40);

  sub_240E86404();
  v91 = v52;
  sub_240E863D4();
  v55 = *(v0 + 25);
  if (v55)
  {
    v56 = sub_240E72B40();
  }

  else
  {
    v56 = sub_240E72A38();
  }

  v92 = v56;
  sub_240E74A14();
  sub_240E863E4();
  if (v55)
  {
    v57 = sub_240E72B40();
  }

  else
  {
    v57 = sub_240E72A38();
  }

  v82[1] = v57;
  v58 = sub_240E86B74();
  OUTLINED_FUNCTION_28(v30, v59, v60, v58);
  v61 = sub_240E86B84();
  OUTLINED_FUNCTION_28(v24, v62, v63, v61);
  v64 = sub_240E86B94();
  OUTLINED_FUNCTION_28(v85, v65, v66, v64);
  v67 = sub_240E86B64();
  OUTLINED_FUNCTION_28(v87, v68, v69, v67);

  v83 = v38;
  sub_240E86BA4();
  v70 = v84;
  v71 = v38;
  v72 = v89;
  (*(v33 + 16))(v84, v71, v89);
  __swift_storeEnumTagSinglePayload(v70, 0, 1, v72);
  sub_240E75480(v70, v90, &qword_27E51B378, &qword_240E88708);
  sub_240E74A68();
  v73 = v91;
  sub_240E863E4();
  sub_240E6AFAC(v70, &qword_27E51B378, &qword_240E88708);
  v74 = v86;
  v75 = v88;
  (*(v86 + 16))(v49, v73, v88);
  sub_240E86C24();
  sub_240E86B34();
  v90 = sub_240E86C04();
  v87 = v76;
  LODWORD(v84) = v77;
  v85 = v78;

  v79 = OUTLINED_FUNCTION_24();
  sub_240E6AE70(v79, v80, v81);

  (*(v33 + 8))(v83, v72);
  (*(v74 + 8))(v73, v75);
  OUTLINED_FUNCTION_36();
}

void sub_240E73C38(uint64_t a1@<X8>)
{
  sub_240E736CC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
}

double sub_240E73C6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_240E74C7C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_240E73C90(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_240E6FAFC();
}

uint64_t sub_240E73CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v7 = a5(0);
  OUTLINED_FUNCTION_3_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20]();
  v11 = &v17 - v10;
  v13 = *(v12 + 16);
  v14 = OUTLINED_FUNCTION_18();
  v15(v14);
  return a6(v11);
}

void sub_240E73D7C(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_20();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B340, &unk_240E881A0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[5 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 40 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B348, &qword_240E89810);
    swift_arrayInitWithCopy();
  }
}

void sub_240E73EA4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_20();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B350, &qword_240E881B0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[8 * v9] <= v13)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_240E73F9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B318, &qword_240E88140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_240E740A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_240E6B618(a1, a2);
  }

  return a1;
}

void sub_240E740B8(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_20();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  v10 = sub_240E74190(v9, v6);
  v11 = type metadata accessor for FlexListItem();
  OUTLINED_FUNCTION_34(v11);
  if (a1)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_240E74290(a4 + v13, v9, v10 + v13);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_240E74190(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B3D0, &qword_240E887A0);
  v4 = *(type metadata accessor for FlexListItem() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_240E74290(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for FlexListItem(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for FlexListItem();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

id sub_240E74364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_240E86F44();

  v7 = sub_240E86F44();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_240E74444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B310, &qword_240E88138);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240E744D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E74514(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_240E7456C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E745AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_240E74610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E74650(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_240E746CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7470C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_240E74780(uint64_t a1)
{
  result = sub_240E747A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E747A8()
{
  result = qword_2815037D8;
  if (!qword_2815037D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037D8);
  }

  return result;
}

unint64_t sub_240E747FC(uint64_t a1)
{
  result = sub_240E74824();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E74824()
{
  result = qword_2815037E8;
  if (!qword_2815037E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037E8);
  }

  return result;
}

unint64_t sub_240E74878(uint64_t a1)
{
  result = sub_240E748A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E748A0()
{
  result = qword_27E51B358;
  if (!qword_27E51B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B358);
  }

  return result;
}

unint64_t sub_240E748F4(uint64_t a1)
{
  result = sub_240E7491C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E7491C()
{
  result = qword_27E51B360;
  if (!qword_27E51B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B360);
  }

  return result;
}

unint64_t sub_240E74970(uint64_t a1)
{
  result = sub_240E74998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_240E74998()
{
  result = qword_27E51B368;
  if (!qword_27E51B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B368);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_240E74A14()
{
  result = qword_27E51B3A0;
  if (!qword_27E51B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B3A0);
  }

  return result;
}

unint64_t sub_240E74A68()
{
  result = qword_27E51B3A8;
  if (!qword_27E51B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B3A8);
  }

  return result;
}

uint64_t sub_240E74ADC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240E74B14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_240E74B2C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_240E74D68(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B348, &qword_240E89810);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 40 * a2);
  if (v5 != a2 || v12 + 40 * v11 <= v9 + 40 * v5)
  {
    result = memmove((v9 + 40 * v5), v12, 40 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_240E74C7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_240E74CE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240E74D28(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_240E74D68(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    sub_240E73D7C(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

void sub_240E74DF8()
{
  sub_240E74F0C();
  if (v0 <= 0x3F)
  {
    sub_240E74FA0(319, &qword_27E51B400, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_240E74FA0(319, &qword_27E51B408, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_240E74F0C()
{
  if (!qword_27E51B3F8)
  {
    type metadata accessor for RatingImageViewModel(255);
    sub_240E74CE0(&qword_27E51B3B0, type metadata accessor for RatingImageViewModel);
    v0 = sub_240E86744();
    if (!v1)
    {
      atomic_store(v0, &qword_27E51B3F8);
    }
  }
}

void sub_240E74FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_240E75020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleWithImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E75084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleWithImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E750E8()
{
  OUTLINED_FUNCTION_26();
  v2 = type metadata accessor for TitleWithImage(0);
  OUTLINED_FUNCTION_6_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240E751AC;

  return sub_240E72854(v0 + v4);
}

uint64_t sub_240E751AC()
{
  OUTLINED_FUNCTION_26();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_32();
  *v3 = v2;

  OUTLINED_FUNCTION_17();

  return v4();
}

unint64_t sub_240E75294()
{
  result = qword_27E51B440;
  if (!qword_27E51B440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B410, &qword_240E88818);
    sub_240E6BAE4(&qword_27E51B448, &qword_27E51B418, &qword_240E88830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B440);
  }

  return result;
}

uint64_t sub_240E7534C()
{
  v2 = type metadata accessor for TitleWithImage(0);
  OUTLINED_FUNCTION_6_0(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_240E755DC;

  return sub_240E7206C(v5, v6, v0 + v4);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_34(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

uint64_t sub_240E75480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_24();
  v9(v8);
  return a2;
}

unint64_t sub_240E754DC()
{
  result = qword_27E51B450;
  if (!qword_27E51B450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B458, &unk_240E88870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B430, &qword_240E88848);
    sub_240E6BAE4(&qword_27E51B438, &qword_27E51B430, &qword_240E88848);
    swift_getOpaqueTypeConformance2();
    sub_240E75294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B450);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return sub_240E86C14();
}

void OUTLINED_FUNCTION_8()
{
  *v0 = *(v1 - 224);
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  v2 = *(v1 - 240);
  *(v0 + 24) = *(v1 - 232);
  *(v0 + 32) = v2;
  *(v0 + 40) = *(v1 - 252);
  *(v0 + 48) = *(v1 - 264);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_11()
{

  return sub_240E86624();
}

uint64_t OUTLINED_FUNCTION_14()
{
  *(v1 - 56) = *(v0 + 24);
  *(v1 - 64) = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_15()
{
  *(v1 - 56) = *(v0 + 8);
  *(v1 - 64) = *v0;
}

uint64_t OUTLINED_FUNCTION_17()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_240E86584();
}

uint64_t OUTLINED_FUNCTION_23()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return sub_240E871A4();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_40()
{
  v2 = v1 + *(v0 + 28);
  sub_240E6AE70(*v2, *(v2 + 8), *(v2 + 16));
  v3 = *(v2 + 24);
}

uint64_t sub_240E75938(double a1, double a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_240E75AD4;
  *(v7 + 24) = v6;
  v12[4] = sub_240E75AF0;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_240E75B18;
  v12[3] = &block_descriptor_0;
  v8 = _Block_copy(v12);
  v9 = v2;

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_240E75AF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_240E75B18(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240E75BC4()
{
  v0 = sub_240E86F74();
  v2 = v1;
  if (v0 == sub_240E86F74() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_240E871A4();
  }

  return v5 & 1;
}

uint64_t sub_240E75C48(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000032;
  v3 = "ResourceBundleClass";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000002BLL;
    }

    else
    {
      v5 = 0xD000000000000033;
    }

    if (v4 == 1)
    {
      v6 = "outValueCardOnFile";
    }

    else
    {
      v6 = "aymentRequestLayoutValuePVK";
    }
  }

  else
  {
    v5 = 0xD000000000000032;
    v6 = "ResourceBundleClass";
  }

  if (a2)
  {
    v3 = "outValueCardOnFile";
    v2 = a2 == 1 ? 0xD00000000000002BLL : 0xD000000000000033;
    if (a2 != 1)
    {
      v3 = "aymentRequestLayoutValuePVK";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_240E871A4();
  }

  return v8 & 1;
}

uint64_t sub_240E75D24(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x65746F6E746F6F66;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x656E696C64616568;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    case 4:
      v5 = 0x72614C6172747865;
      v3 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x65746F6E746F6F66;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x656E696C64616568;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    case 4:
      v2 = 0x72614C6172747865;
      v6 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_240E871A4();
  }

  return v8 & 1;
}

unint64_t sub_240E75EA0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_240E75ECC()
{
  sub_240E86F94();
}

uint64_t sub_240E75F50()
{
  sub_240E86F94();
}

unint64_t sub_240E76028@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240E75EA0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_240E76054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E75EB0(*v1);
  *a1 = result;
  return result;
}

void sub_240E76080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v103 = a4;
  v104 = a5;
  v8 = type metadata accessor for FlexListItem();
  v9 = OUTLINED_FUNCTION_3_1(v8);
  v101 = v10;
  v102 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v110 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v92 - v15;
  v108 = a1;
  v17 = [a1 string];
  v18 = sub_240E86F74();
  v20 = v19;

  v111 = v18;
  v112 = v20;
  v109 = a2;
  v114 = a2;
  v115 = a3;
  sub_240E6ADF4();
  v21 = sub_240E870F4();

  v23 = MEMORY[0x277D84F90];
  v113 = MEMORY[0x277D84F90];
  v24 = *(v21 + 16);
  v107 = v21;
  if (v24)
  {
    v25 = 0;
    v26 = (v21 + 40);
    while (1)
    {
      if ((*v26 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_7_0(v22, *(v26 - 1));
        v28 = sub_240E86FD4();
      }

      else
      {
        if ((*v26 & 0x2000000000000000) == 0)
        {
          v27 = *(v26 - 1);
        }

        v28 = sub_240E86FE4();
      }

      v29 = v28;
      v30 = [v108 attributedSubstringFromRange_];
      if ([v30 length] >= 1)
      {
        v31 = v30;
        MEMORY[0x245CD1D30]();
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_240E87034();
        }

        sub_240E87044();
        v23 = v113;
      }

      v32 = sub_240E86FA4();

      v33 = v29 + v32;
      if (__OFADD__(v29, v32))
      {
        break;
      }

      v34 = __OFADD__(v25, v33);
      v25 += v33;
      if (v34)
      {
        goto LABEL_123;
      }

      v26 += 2;
      if (!--v24)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

LABEL_16:

  v35 = sub_240E6F3C4(v23);
  if (!v35)
  {
LABEL_121:

    return;
  }

  v36 = v35;
  if (v35 >= 1)
  {
    v37 = 0;
    v98 = *MEMORY[0x277CEE308];
    v106 = v23 & 0xC000000000000001;
    v97 = *MEMORY[0x277CEE2B8];
    v96 = *MEMORY[0x277CEE2E0];
    v95 = *MEMORY[0x277CEE330];
    v94 = *MEMORY[0x277CEE338];
    v109 = *MEMORY[0x277CEE350];
    v105 = *MEMORY[0x277CEE348];
    v92[1] = *MEMORY[0x277CEE340];
    v38 = MEMORY[0x277D84F90];
    v93 = *MEMORY[0x277CEE358];
    v99 = v35;
    v100 = v23;
    while (1)
    {
      v39 = v106 ? MEMORY[0x245CD1E50](v37, v23) : *(v23 + 8 * v37 + 32);
      v40 = v39;
      v41 = [v39 attributesAtIndex:0 effectiveRange:0];
      type metadata accessor for Key(0);
      sub_240E7ABD4(&qword_281503740, type metadata accessor for Key);
      OUTLINED_FUNCTION_24();
      v42 = sub_240E86F34();

      if (!*(v42 + 16))
      {
        break;
      }

      v43 = sub_240E6DCA0(v98);
      if ((v44 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_2_1(v43);
      OUTLINED_FUNCTION_5_1();
      if ((swift_dynamicCast() & 1) == 0 || v114 != 1 && v114 != 3 && v114 != 2)
      {
        break;
      }

LABEL_120:
      if (v36 == ++v37)
      {
        goto LABEL_121;
      }
    }

    if (*(v42 + 16) && (v45 = sub_240E6DCA0(v97), (v46 & 1) != 0) && (OUTLINED_FUNCTION_2_1(v45), OUTLINED_FUNCTION_5_1(), swift_dynamicCast()))
    {
      LODWORD(v108) = v114;
    }

    else
    {
      LODWORD(v108) = 0;
    }

    if (*(v42 + 16) && (v47 = sub_240E6DCA0(v96), (v48 & 1) != 0) && (OUTLINED_FUNCTION_2_1(v47), OUTLINED_FUNCTION_5_1(), swift_dynamicCast()))
    {
      LODWORD(v107) = v114;
    }

    else
    {
      LODWORD(v107) = 0;
    }

    if (!*(v42 + 16) || (v49 = sub_240E6DCA0(v95), (v50 & 1) == 0) || (OUTLINED_FUNCTION_2_1(v49), OUTLINED_FUNCTION_5_1(), (swift_dynamicCast() & 1) == 0) || (v51 = sub_240E794DC(), v51 == 5))
    {
      v51 = 0;
    }

    if (*(v42 + 16) && (v52 = sub_240E6DCA0(v94), (v53 & 1) != 0) && (OUTLINED_FUNCTION_2_1(v52), OUTLINED_FUNCTION_5_1(), (swift_dynamicCast() & 1) != 0))
    {
      v55 = v114;
      v54 = v115;
    }

    else
    {
      v55 = 0;
      v54 = 0;
    }

    v56 = sub_240E86F74();
    if (v54)
    {
      if (v55 == v56 && v54 == v57)
      {

LABEL_65:

        v64 = 1;
        goto LABEL_79;
      }

      v59 = OUTLINED_FUNCTION_4_1();

      if (v59)
      {
        goto LABEL_65;
      }
    }

    else
    {
    }

    v60 = sub_240E86F74();
    if (v54)
    {
      if (v55 == v60 && v54 == v61)
      {

LABEL_75:

        v64 = 2;
        goto LABEL_79;
      }

      v63 = OUTLINED_FUNCTION_4_1();

      if (v63)
      {
        goto LABEL_75;
      }
    }

    else
    {
    }

    v65 = sub_240E86F74();
    if (v54)
    {
      if (v55 == v65 && v54 == v66)
      {
      }

      else
      {
        v68 = OUTLINED_FUNCTION_4_1();

        v64 = 0;
        if ((v68 & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      v64 = 3;
    }

    else
    {

      v64 = 0;
    }

LABEL_79:
    if (*(v42 + 16) && (v69 = sub_240E6DCA0(v93), (v70 & 1) != 0))
    {
      OUTLINED_FUNCTION_2_1(v69);

      OUTLINED_FUNCTION_5_1();
      if (swift_dynamicCast())
      {
        v72 = v114;
        v71 = v115;
        goto LABEL_85;
      }
    }

    else
    {
    }

    v72 = 0;
    v71 = 0;
LABEL_85:
    v73 = sub_240E86F74();
    if (v71)
    {
      if (v72 == v73 && v71 == v74)
      {

LABEL_101:

        v81 = 1;
        goto LABEL_115;
      }

      v76 = OUTLINED_FUNCTION_3_3();

      if (v76)
      {
        goto LABEL_101;
      }
    }

    else
    {
    }

    v77 = sub_240E86F74();
    if (v71)
    {
      if (v72 == v77 && v71 == v78)
      {

LABEL_111:

        v81 = 2;
        goto LABEL_115;
      }

      v80 = OUTLINED_FUNCTION_3_3();

      if (v80)
      {
        goto LABEL_111;
      }
    }

    else
    {
    }

    v82 = sub_240E86F74();
    if (v71)
    {
      if (v72 == v82 && v71 == v83)
      {
      }

      else
      {
        v85 = OUTLINED_FUNCTION_3_3();

        v81 = 0;
        if ((v85 & 1) == 0)
        {
          goto LABEL_115;
        }
      }

      v81 = 3;
    }

    else
    {

      v81 = 0;
    }

LABEL_115:
    v86 = v104;
    *v16 = v103;
    *(v16 + 1) = v86;
    v16[16] = v108;
    v16[17] = v107;
    v16[18] = v51;
    v16[19] = v64;
    v16[20] = v81;
    *(v16 + 3) = v40;
    v87 = *(v102 + 44);

    sub_240E86494();
    sub_240E7A218(v16, v110);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_240E740B8(0, *(v38 + 16) + 1, 1, v38);
      v38 = v90;
    }

    v36 = v99;
    v23 = v100;
    v89 = *(v38 + 16);
    v88 = *(v38 + 24);
    if (v89 >= v88 >> 1)
    {
      sub_240E740B8(v88 > 1, v89 + 1, 1, v38);
      v38 = v91;
    }

    sub_240E7A27C(v16);
    *(v38 + 16) = v89 + 1;
    sub_240E7A2D8(v110, v38 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v89);
    goto LABEL_120;
  }

LABEL_124:
  __break(1u);
}

uint64_t sub_240E769BC()
{
  v1 = sub_240E868C4();
  v2 = OUTLINED_FUNCTION_3_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 64);
  v9 = *(v0 + 56);
  v14 = v9;
  v10 = v15;

  if ((v10 & 1) == 0)
  {
    sub_240E870A4();
    v11 = sub_240E86A24();
    sub_240E86624();

    sub_240E868B4();
    swift_getAtKeyPath();
    sub_240E7AC68(&v14, &qword_27E51B370);
    (*(v4 + 8))(v8, v1);
    return v13[1];
  }

  return v9;
}

void sub_240E76B0C(uint64_t a1@<X8>)
{
  *a1 = sub_240E86904();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B478, &qword_240E88B88);
  sub_240E76B60(v1, (a1 + *(v3 + 44)));
}

void sub_240E76B60(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B480, &qword_240E88B90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B488, &qword_240E88B98);
  v7 = *(*(v41 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v41);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v45 = &v39 - v12;
  v13 = *(a1 + 40);
  v52 = *(a1 + 24);
  v53 = v13;
  v46 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v44 = v53;
    v42 = WORD4(v52);
    v43 = v52;
    v14 = v52;
  }

  else
  {
    v43 = 0;
    v42 = 0;
    v44 = 0;
  }

  sub_240E7AC1C(&v52, v49, &qword_27E51B490, &qword_240E88BA0);
  *v6 = sub_240E869B4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B498, &qword_240E88BA8) + 44);
  v50 = *(a1 + 8);
  v51 = v50;
  v16 = swift_allocObject();
  memcpy((v16 + 16), a1, 0x41uLL);
  sub_240E7AC1C(&v51, v49, &qword_27E51B4A0, &qword_240E88BB0);
  sub_240E7A440(a1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4A0, &qword_240E88BB0);
  sub_240E864A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4A8, &qword_240E88BB8);
  sub_240E7ADD4(&qword_281503768, &qword_27E51B4A0);
  sub_240E7ADD4(&qword_27E51B4B0, &qword_27E51B4A8);
  sub_240E7ABD4(&qword_281503948, type metadata accessor for FlexListItem);
  sub_240E86E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4B8, &qword_240E88BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240E87DB0;
  v18 = sub_240E86A44();
  *(inited + 32) = v18;
  v19 = sub_240E86A54();
  *(inited + 33) = v19;
  v20 = sub_240E86A74();
  sub_240E86A74();
  if (sub_240E86A74() != v18)
  {
    v20 = sub_240E86A74();
  }

  sub_240E86A74();
  if (sub_240E86A74() != v19)
  {
    v20 = sub_240E86A74();
  }

  sub_240E86684();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v40;
  sub_240E7A760(v6, v40, &qword_27E51B480, &qword_240E88B90);
  v30 = v29 + *(v41 + 36);
  *v30 = v20;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  v31 = v45;
  sub_240E7A760(v29, v45, &qword_27E51B488, &qword_240E88B98);
  v32 = v47;
  sub_240E7AC1C(v31, v47, &qword_27E51B488, &qword_240E88B98);
  v33 = v48;
  v34 = v43;
  v35 = v42;
  *v48 = v43;
  v33[1] = v35;
  v36 = v44;
  v37 = v46;
  v33[2] = v44;
  v33[3] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4C0, &qword_240E88BC8);
  sub_240E7AC1C(v32, v33 + *(v38 + 48), &qword_27E51B488, &qword_240E88B98);
  sub_240E7A478(v34, v35, v36, v37);
  sub_240E7AC68(&v52, &qword_27E51B490);
  sub_240E7AC68(v31, &qword_27E51B488);
  sub_240E7AC68(v32, &qword_27E51B488);
  sub_240E7A4B8(v34, v35, v36, v37);
}

uint64_t sub_240E770D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4C8, &qword_240E88BD0);
  v5 = *(*(v44 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v44);
  v53 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = *(a1 + 20);
  v43 = v2;
  switch(v10)
  {
    case 1:
    case 2:
    case 3:
      sub_240E86E24();
      sub_240E866F4();
      v51 = 0;
      v52 = v65[17];
      v49 = v69;
      v50 = v67;
      LOBYTE(v64[0]) = 1;
      LOBYTE(v57) = v66;
      v63[0] = v68;
      v45 = 1;
      v46 = v66;
      v47 = v68;
      v48 = v70;
      LOBYTE(v65[0]) = 0;
      break;
    default:
      v52 = 0;
      v49 = 0;
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v45 = 0;
      v46 = 0;
      v51 = 1;
      break;
  }

  v57 = 0;
  v64[0] = 0;
  v64[1] = 0;
  LOBYTE(v64[2]) = 1;
  v11 = *(a1 + 24);
  v12 = [v11 length];
  v13 = swift_allocObject();
  *(v13 + 16) = &v57;
  *(v13 + 24) = v64;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_240E7A4FC;
  *(v14 + 24) = v13;
  v65[4] = sub_240E749F4;
  v65[5] = v14;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 1107296256;
  v65[2] = sub_240E814CC;
  v65[3] = &block_descriptor_1;
  v15 = _Block_copy(v65);

  [v11 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v15}];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v18 = v57;
    if (v57)
    {
      v19 = v64[0];
      v20 = v64[1];
      v21 = v64[2];

      v22 = v43;
      v23 = sub_240E77E20(v18, v19, v20, v21);
    }

    else
    {

      v23 = 0.0;
      v22 = v43;
    }

    *v9 = sub_240E86904();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4D0, &qword_240E88BD8);
    sub_240E780C8(v22, a1, &v9[*(v24 + 44)], v23);
    v25 = sub_240E86E44();
    v27 = v26;
    sub_240E79104(v22, a1, v63, v23);
    memcpy(v64, v63, 0x78uLL);
    v64[15] = v25;
    v64[16] = v27;
    memcpy(&v9[*(v44 + 36)], v64, 0x88uLL);
    memcpy(v65, v63, 0x78uLL);
    v65[15] = v25;
    v65[16] = v27;
    sub_240E7AC1C(v64, &v57, &qword_27E51B4D8, &qword_240E88BE0);
    sub_240E7AC68(v65, &qword_27E51B4D8);
    switch(*(a1 + 19))
    {
      case 1:
      case 2:
      case 3:
        sub_240E86E24();
        sub_240E866F4();
        LODWORD(v43) = 0;
        v44 = v57;
        v41 = v61;
        v42 = v59;
        v40 = v62;
        v56 = 1;
        v55 = v58;
        v54 = v60;
        v30 = 1;
        v29 = v58;
        v28 = v60;
        v63[0] = 0;
        break;
      default:
        v44 = 0;
        v41 = 0;
        v42 = 0;
        v40 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        LODWORD(v43) = 1;
        break;
    }

    v31 = v53;
    sub_240E7AC1C(v9, v53, &qword_27E51B4C8, &qword_240E88BD0);
    v32 = v45;
    *a2 = 0;
    *(a2 + 8) = v32;
    v33 = v46;
    *(a2 + 16) = v52;
    *(a2 + 24) = v33;
    v34 = v47;
    *(a2 + 32) = v50;
    *(a2 + 40) = v34;
    v35 = v48;
    *(a2 + 48) = v49;
    *(a2 + 56) = v35;
    *(a2 + 64) = v51;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4E0, &unk_240E88BE8);
    sub_240E7AC1C(v31, a2 + *(v36 + 48), &qword_27E51B4C8, &qword_240E88BD0);
    v37 = a2 + *(v36 + 64);
    *v37 = 0;
    *(v37 + 8) = v30;
    *(v37 + 16) = v44;
    *(v37 + 24) = v29;
    v38 = v41;
    *(v37 + 32) = v42;
    *(v37 + 40) = v28;
    v39 = v40;
    *(v37 + 48) = v38;
    *(v37 + 56) = v39;
    *(v37 + 64) = v43;
    sub_240E7AC68(v9, &qword_27E51B4C8);
    return sub_240E7AC68(v31, &qword_27E51B4C8);
  }

  return result;
}

void sub_240E77688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v85 = a7;
  v86 = a1;
  v11 = sub_240E86944();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_240E863B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a5 string];
  if (!v18)
  {
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = [v18 substringWithRange_];
  v21 = sub_240E86F74();
  v23 = v22;

  *&v89 = v21;
  *(&v89 + 1) = v23;
  sub_240E86394();
  v84 = sub_240E6ADF4();
  v24 = sub_240E87104();
  v26 = v25;
  (*(v14 + 8))(v17, v13);

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    sub_240E86934();
    sub_240E86924();
    v28 = *a6;
    v29 = *(a6 + 8);
    v30 = *(a6 + 16);
    v31 = *(a6 + 24);
    sub_240E6AF9C(*a6, v29, v30);

    sub_240E86914();
    sub_240E6AE70(v28, v29, v30);

    sub_240E86924();
    sub_240E86914();

    sub_240E86924();
    sub_240E86964();
    v32 = sub_240E86C14();
    v33 = *a6;
    v34 = *(a6 + 8);
    v35 = *(a6 + 16);
    v36 = *(a6 + 24);
    *a6 = v32;
    *(a6 + 8) = v37;
    *(a6 + 16) = v38 & 1;
    *(a6 + 24) = v39;
    sub_240E6AE70(v33, v34, v35);
  }

  v40 = v86;
  sub_240E6D14C(*MEMORY[0x277CEE368], v86, &v89);
  if (!v90)
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    sub_240E6D14C(*MEMORY[0x277CEE370], v40, &v89);
    if (v90)
    {
      if (swift_dynamicCast())
      {
        v41 = v87;
        v42 = sub_240E86D84();
        v43 = *(v42 - 8);
        (*(v43 + 8))(v85, v42);
        if (v41 > 2)
        {
          v44 = MEMORY[0x277CE1058];
        }

        else
        {
          v44 = qword_278CBAB70[v41];
        }

        (*(v43 + 104))(v85, *v44, v42);
        v45 = sub_240E86D64();

        v83 = sub_240E86C44();
        v85 = v46;
        v82 = v47;
        v49 = v48;
        sub_240E6D14C(*MEMORY[0x277CEE360], v86, &v89);
        if (v90)
        {
          if (swift_dynamicCast())
          {
            v86 = v87;
            v80 = v88;
            sub_240E86934();
            sub_240E86924();
            v50 = *a6;
            v51 = *(a6 + 8);
            v52 = *(a6 + 16);
            v81 = v49;
            v53 = *(a6 + 24);
            sub_240E6AF9C(v50, v51, v52);

            sub_240E86914();
            sub_240E6AE70(v50, v51, v52);

            sub_240E86924();
            *&v89 = v86;
            *(&v89 + 1) = v80;
            v54 = sub_240E86BF4();
            v56 = v55;
            LOBYTE(v51) = v57;

            sub_240E86914();
            sub_240E6AE70(v54, v56, v51 & 1);

            sub_240E86924();
            sub_240E86964();
            v58 = sub_240E86C14();
            v60 = v59;
            v62 = v61;
            v64 = v63;

            sub_240E6AE70(v83, v85, v82 & 1);

LABEL_24:

            v75 = *a6;
            v76 = *(a6 + 8);
            v77 = *(a6 + 16);
            v78 = *(a6 + 24);
            *a6 = v58;
            *(a6 + 8) = v60;
            *(a6 + 16) = v62 & 1;
            *(a6 + 24) = v64;
            sub_240E6AE70(v75, v76, v77);

            return;
          }

          v86 = v45;
        }

        else
        {
          v86 = v45;
          sub_240E7AC68(&v89, &qword_27E51B178);
        }

        sub_240E86934();
        sub_240E86924();
        v65 = *a6;
        v66 = *(a6 + 8);
        v67 = *(a6 + 16);
        v68 = *(a6 + 24);
        sub_240E6AF9C(*a6, v66, v67);

        sub_240E86914();
        sub_240E6AE70(v65, v66, v67);

        sub_240E86924();
        v69 = v82;
        v70 = v83;
        v71 = v85;
        sub_240E86914();
        sub_240E86924();
        sub_240E86964();
        v58 = sub_240E86C14();
        v60 = v72;
        v62 = v73;
        v64 = v74;

        sub_240E6AE70(v70, v71, v69 & 1);

        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_13:

    sub_240E7AC68(&v89, &qword_27E51B178);
    return;
  }

LABEL_15:
}

double sub_240E77E20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 0.0;
  if ((a4 & 1) == 0)
  {
    if (*&a3 <= 0.0 || *&a2 <= 0.0)
    {
      if (qword_27E51B0B0 != -1)
      {
        swift_once();
      }

      v8 = sub_240E865F4();
      __swift_project_value_buffer(v8, qword_27E51CEB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B1E8, &unk_240E87DC0);
      v9 = *(sub_240E865A4() - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      *(swift_allocObject() + 16) = xmmword_240E88880;
      v17[3] = &type metadata for FlexListItemView;
      v17[0] = swift_allocObject();
      memcpy((v17[0] + 16), v4, 0x41uLL);
      sub_240E7A440(v4, v15);
      v12 = AMSLogKey();
      if (v12)
      {
        v13 = v12;
        sub_240E86F74();
      }

      sub_240E86594();

      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      sub_240E86574();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4E8, &unk_240E88BF8);
      v15[0] = a2;
      v15[1] = a3;
      sub_240E86584();
      sub_240E7AC68(v15, &qword_27E51B178);
      v16 = MEMORY[0x277D85048];
      v15[0] = 0x4030000000000000;
      sub_240E86584();
      sub_240E7AC68(v15, &qword_27E51B178);
      sub_240E865C4();
    }

    else
    {
      return 16.0 / *&a3 * *&a2;
    }
  }

  return v5;
}

uint64_t sub_240E780C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v112 = a3;
  v7 = sub_240E86D74();
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v7);
  v107 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240E86D84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4F0, &qword_240E88C08);
  v15 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v115 = &v106 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4F8, &qword_240E88C10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v114 = &v106 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B500, &qword_240E88C18);
  v20 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v119 = &v106 - v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B508, &qword_240E88C20);
  v22 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v121 = &v106 - v23;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B510, &qword_240E88C28);
  v24 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v122 = &v106 - v25;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B518, &qword_240E88C30);
  v26 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v125 = &v106 - v27;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B520, &qword_240E88C38);
  v28 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v130 = &v106 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B528, &qword_240E88C40);
  v128 = *(v30 - 8);
  v129 = v30;
  v31 = *(v128 + 64);
  MEMORY[0x28223BE20](v30);
  v127 = &v106 - v32;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B530, &qword_240E88C48);
  v33 = *(*(v126 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v126);
  v111 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v124 = &v106 - v37;
  MEMORY[0x28223BE20](v36);
  *&v133 = &v106 - v38;
  *&v132 = a1;
  v39 = *(a1 + 16);
  LODWORD(v134) = v39;
  if (a4 <= 0.0)
  {
    v39 = 0;
  }

  v135 = v39;
  v123 = a2;
  v40 = a2[3];
  v141 = xmmword_240E88890;
  v142[0] = 0;
  *&v142[8] = MEMORY[0x277D84F90];
  v41 = v11;
  v42 = *(v11 + 104);
  v43 = v10;
  v42(v14, *MEMORY[0x277CE1058], v10);
  v44 = [v40 length];
  v45 = swift_allocObject();
  v45[2] = v40;
  v45[3] = &v141;
  v46 = v14;
  v45[4] = v14;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_240E7A57C;
  *(v47 + 24) = v45;
  v113 = v45;
  v147[4] = sub_240E7AFE4;
  v147[5] = v47;
  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 1107296256;
  v147[2] = sub_240E814CC;
  v147[3] = &block_descriptor_46;
  v48 = _Block_copy(v147);
  v49 = v40;

  [v49 enumerateAttributesInRange:0 options:v44 usingBlock:{0, v48}];
  _Block_release(v48);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
    __break(1u);
  }

  else
  {
    v110 = v49;
    v51 = v141;
    v52 = v142[0];
    v53 = *&v142[8];
    v54 = v115;
    v55 = &v115[*(v136 + 36)];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B538, &qword_240E88C50);
    (*(v41 + 16))(v55 + *(v56 + 28), v46, v43);
    *v55 = swift_getKeyPath();
    *v54 = v51;
    *(v54 + 16) = v52;
    *(v54 + 24) = v53;

    sub_240E6AF9C(v51, *(&v51 + 1), v52);
    (*(v41 + 8))(v46, v43);
    sub_240E6AE70(v141, *(&v141 + 1), v142[0]);

    v57 = v123;
    v58 = *v123;
    v59 = v123[1];
    sub_240E7A650();
    v60 = v114;
    sub_240E86CC4();
    sub_240E7AC68(v54, &qword_27E51B4F0);
    if (v134)
    {
      sub_240E86E24();
    }

    else
    {
      sub_240E86E34();
    }

    v61 = v130;
    v62 = v125;
    sub_240E867C4();
    v63 = v119;
    sub_240E7A760(v60, v119, &qword_27E51B4F8, &qword_240E88C10);
    memcpy((v63 + *(v116 + 36)), v147, 0x70uLL);
    KeyPath = swift_getKeyPath();
    v65 = v121;
    sub_240E7A760(v63, v121, &qword_27E51B500, &qword_240E88C18);
    v66 = v65 + *(v117 + 36);
    *v66 = KeyPath;
    *(v66 + 8) = 0;
    v67 = sub_240E790C0(v57);
    v68 = swift_getKeyPath();
    v69 = v122;
    sub_240E7A760(v65, v122, &qword_27E51B508, &qword_240E88C20);
    v70 = (v69 + *(v118 + 36));
    *v70 = v68;
    v70[1] = v67;
    v71 = sub_240E86D04();
    v72 = sub_240E86E24();
    v74 = v73;
    sub_240E7A760(v69, v62, &qword_27E51B510, &qword_240E88C28);
    v75 = (v62 + *(v120 + 36));
    *v75 = v71;
    v75[1] = v72;
    v75[2] = v74;
    if (*(v57 + 17) == 1)
    {
      v76 = v131;
      if (v134)
      {
        v77 = [objc_opt_self() secondaryLabelColor];
        v78 = sub_240E86D34();
      }

      else
      {
        v78 = sub_240E86D14();
      }

      v79 = v78;
    }

    else
    {
      v79 = sub_240E769BC();
      v76 = v131;
    }

    v80 = v133;
    v81 = a4;
    v82 = swift_getKeyPath();
    sub_240E7A760(v62, v61, &qword_27E51B518, &qword_240E88C30);
    v83 = (v61 + *(v76 + 36));
    *v83 = v82;
    v83[1] = v79;
    if (*(v57 + 16) == 1)
    {
      sub_240E86AF4();
    }

    else
    {
      sub_240E86AE4();
    }

    sub_240E7A7AC();
    v84 = v127;
    sub_240E86C94();
    sub_240E7AC68(v61, &qword_27E51B520);
    v85 = v124;
    (*(v128 + 32))(v124, v84, v129);
    *(v85 + *(v126 + 36)) = 256;
    sub_240E7A760(v85, v80, &qword_27E51B530, &qword_240E88C48);
    if (v135)
    {
      v139[0] = 0;
      LOBYTE(v148) = 0;
      *v140 = a4;
      BYTE8(v140[0]) = 0;
      BYTE9(v140[4]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5B0, &unk_240E88D58);
      sub_240E7AD48();
      sub_240E869D4();
      goto LABEL_25;
    }

    v146 = 0;
    v144[0] = 0;
    v144[1] = 0;
    v145 = 1;
    v86 = v110;
    v87 = [v110 length];
    v88 = swift_allocObject();
    *(v88 + 16) = &v146;
    *(v88 + 24) = v144;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_240E7AFE0;
    *(v89 + 24) = v88;
    *&v142[16] = sub_240E7AFE4;
    *&v142[24] = v89;
    *&v141 = MEMORY[0x277D85DD0];
    *(&v141 + 1) = 1107296256;
    *v142 = sub_240E814CC;
    *&v142[8] = &block_descriptor_69;
    v90 = _Block_copy(&v141);

    [v86 enumerateAttributesInRange:0 options:v87 usingBlock:{0, v90}];
    _Block_release(v90);
    LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

    if ((v87 & 1) == 0)
    {
      if (!v146)
      {

        v81 = 0.0;
        v96 = 0;
        v136 = 0u;
        v97 = -256;
        v133 = 0u;
        v134 = 0u;
        v132 = 0u;
LABEL_26:
        v102 = v111;
        sub_240E7AC1C(v80, v111, &qword_27E51B530, &qword_240E88C48);
        v103 = v112;
        *v112 = v81;
        *(v103 + 8) = 0;
        *(v103 + 9) = v135 ^ 1;
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B590, &qword_240E88D38);
        sub_240E7AC1C(v102, v103 + *(v104 + 48), &qword_27E51B530, &qword_240E88C48);
        v105 = *(v104 + 64);
        v140[0] = v136;
        v140[1] = v134;
        v140[2] = v132;
        v140[3] = v133;
        *&v140[4] = v96;
        WORD4(v140[4]) = v97;
        memcpy(v103 + v105, v140, 0x4AuLL);
        sub_240E7AC1C(v140, &v141, &qword_27E51B598, &qword_240E88D40);
        sub_240E7AC68(v80, &qword_27E51B530);
        v141 = v136;
        *v142 = v134;
        *&v142[16] = v132;
        *&v142[32] = v133;
        *&v142[48] = v96;
        v143 = v97;
        sub_240E7AC68(&v141, &qword_27E51B598);
        return sub_240E7AC68(v102, &qword_27E51B530);
      }

      v91 = *MEMORY[0x277CE0FE0];
      if (a4 <= 0.0)
      {
        v99 = v107;
        v98 = v108;
        v100 = v109;
        (*(v108 + 104))(v107, v91, v109);

        v101 = sub_240E86D94();

        (*(v98 + 8))(v99, v100);
        *&v142[2] = v140[0];
        LOBYTE(v148) = 1;
        v138 = 1;
        v141 = v101;
        *v142 = 1;
        *&v142[18] = v140[1];
        *&v142[34] = v140[2];
        *&v142[48] = *(&v140[2] + 14);
        LOBYTE(v143) = 1;
      }

      else
      {
        v93 = v107;
        v92 = v108;
        v94 = v109;
        (*(v108 + 104))(v107, v91, v109);

        v95 = sub_240E86D94();

        (*(v92 + 8))(v93, v94);
        sub_240E86E24();
        sub_240E866F4();
        *&v137[38] = v150;
        *&v137[22] = v149;
        *&v137[6] = v148;
        *&v142[2] = *v137;
        LOBYTE(v140[0]) = 0;
        v141 = v95;
        *v142 = 1;
        *&v142[18] = *&v137[16];
        *&v142[34] = *&v137[32];
        *&v142[48] = *(&v150 + 1);
        LOBYTE(v143) = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5A0, &qword_240E88D48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B228, &qword_240E88D50);
      sub_240E7ACBC();
      sub_240E6DF44();
      sub_240E869D4();
      memcpy(v140, v139, 0x49uLL);
      v138 = 1;
      BYTE9(v140[4]) = 1;
      sub_240E7AC1C(v139, &v141, &qword_27E51B5B0, &unk_240E88D58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5B0, &unk_240E88D58);
      sub_240E7AD48();
      sub_240E869D4();

      sub_240E7AC68(v139, &qword_27E51B5B0);
      v81 = 0.0;
LABEL_25:
      v136 = v141;
      v133 = *&v142[32];
      v134 = *v142;
      v132 = *&v142[16];
      v96 = *&v142[48];
      v97 = v143;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_240E790C0(uint64_t a1)
{
  v2 = *(v1 + 16);
  switch(*(a1 + 18))
  {
    case 1:
      goto LABEL_3;
    case 2:
      return sub_240E86B44();
    case 3:
      if ((*(v1 + 16) & 1) == 0)
      {
        goto LABEL_7;
      }

      result = sub_240E86B14();
      break;
    case 4:
      return MEMORY[0x282132620]();
    default:
      if (*(v1 + 16))
      {
LABEL_7:
        result = sub_240E86A94();
      }

      else
      {
LABEL_3:
        result = sub_240E86B34();
      }

      break;
  }

  return result;
}

uint64_t sub_240E79104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_240E86D74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0uLL;
  if (*(a1 + 16) == 1 && a4 > 0.0)
  {
    v30 = 0;
    v28[0] = 0;
    v28[1] = 0;
    LOBYTE(v29) = 1;
    v16 = *(a2 + 24);
    v17 = [v16 length];
    v14 = swift_allocObject();
    *(v14 + 16) = &v30;
    *(v14 + 24) = v28;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_240E7AFE0;
    *(v18 + 24) = v14;
    *&v33 = sub_240E7AFE4;
    *(&v33 + 1) = v18;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v32 = sub_240E814CC;
    *(&v32 + 1) = &block_descriptor_36;
    v19 = _Block_copy(&aBlock);

    [v16 enumerateAttributesInRange:0 options:v17 usingBlock:{0, v19}];
    _Block_release(v19);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
      sub_240E870A4();
      v27 = sub_240E86A24();
      sub_240E86624();
    }

    else
    {
      v20 = v30;

      if (!v20)
      {
        v14 = 0;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        v15 = 0uLL;
        goto LABEL_9;
      }

      (*(v9 + 104))(v13, *MEMORY[0x277CE0FE0], v8);

      v14 = sub_240E86D94();

      (*(v9 + 8))(v13, v8);
      sub_240E86E24();
    }

    sub_240E867C4();

    v15 = aBlock;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;
  }

  else
  {
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
  }

LABEL_9:
  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 24) = v21;
  *(a3 + 40) = v22;
  *(a3 + 56) = v23;
  *(a3 + 72) = v24;
  *(a3 + 88) = v25;
  *(a3 + 104) = v26;
  return result;
}

uint64_t sub_240E794DC()
{
  v0 = sub_240E87184();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_240E7956C(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x65746F6E746F6F66;
      break;
    case 2:
      result = 0x656E696C64616568;
      break;
    case 3:
      result = 0x656772616CLL;
      break;
    case 4:
      result = 0x72614C6172747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_240E79630(unsigned __int8 a1)
{
  sub_240E871C4();
  MEMORY[0x245CD1EF0](a1);
  return sub_240E871F4();
}

uint64_t sub_240E7969C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_240E794DC();
  *a2 = result;
  return result;
}

uint64_t sub_240E796CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240E7956C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_240E79700()
{
  v1 = *v0;
  sub_240E871C4();
  MEMORY[0x245CD1EF0](v1);
  return sub_240E871F4();
}

void sub_240E79744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (*(a1 + 16))
  {
    v9 = sub_240E6DCA0(*MEMORY[0x277CEE300]);
    if (v10)
    {
      sub_240E6DC44(*(a1 + 56) + 32 * v9, &v42);
      if (swift_dynamicCast())
      {
        sub_240E74D28(0, &qword_27E51B180, 0x277D755B8);
        v11 = qword_27E51B0A0;

        if (v11 != -1)
        {
          swift_once();
        }

        v12 = qword_27E51CE98;
        v13 = qword_27E51CE98;
        v14 = sub_240E79AF0(v40, v41, v12);
        if (v14)
        {
          v15 = v14;
          v16 = v13;
          v17 = sub_240E86DA4();
          v18 = *a5;
          *a5 = v17;

          [v15 size];
          v20 = v19;
          [v15 scale];
          v22 = v20 / v21;
          [v15 size];
          v24 = v23;
          [v15 scale];
          v26 = v25;

          *a6 = v22;
          *(a6 + 8) = v24 / v26;
          *(a6 + 16) = 0;
        }

        else
        {
        }
      }
    }
  }

  if (!*a5)
  {
    sub_240E6D14C(*MEMORY[0x277CEE2C8], a1, &v42);
    if (v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5C0, &qword_240E88D68);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v27 = *MEMORY[0x277CEE2D8];
      v28 = sub_240E86F74();
      sub_240E6D0E8(v28, v29, v40, &v42);

      if (v43)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v30 = sub_240E86F74();
        sub_240E6D0E8(v30, v31, v40, &v42);

        if (v43)
        {
          if ((swift_dynamicCast() & 1) != 0 && (sub_240E74D28(0, &qword_27E51B180, 0x277D755B8), sub_240E6B5C0(v40, v41), (v32 = sub_240E7F398(v40, v41, *&v40)) != 0))
          {
            v33 = v32;
            v34 = sub_240E86D44();
            v35 = *a5;
            *a5 = v34;

            [v33 size];
            v37 = v36 / *&v40;
            [v33 size];
            v39 = v38;
            sub_240E6B618(v40, v41);

            *a6 = v37;
            *(a6 + 8) = v39 / *&v40;
            *(a6 + 16) = 0;
          }

          else
          {
            sub_240E6B618(v40, v41);
          }

          return;
        }

        sub_240E6B618(v40, v41);
      }

      else
      {
      }
    }

    sub_240E7AC68(&v42, &qword_27E51B178);
  }
}

id sub_240E79AF0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_240E86F44();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

uint64_t sub_240E79B70(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_240E871A4() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v5 = *(a2 + 18);
  v6 = sub_240E7956C(*(a1 + 18));
  v8 = v7;
  if (v6 == sub_240E7956C(v5) && v8 == v9)
  {
  }

  else
  {
    v11 = sub_240E871A4();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 19) != *(a2 + 19))
  {
    return 0;
  }

  if (*(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  sub_240E74D28(0, &qword_281503718, 0x277D82BB8);
  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  if ((sub_240E870C4() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for FlexListItem() + 44);

  return MEMORY[0x28211DBA0](a1 + v14, a2 + v14);
}

uint64_t sub_240E79CE4()
{
  v1 = *(v0 + 16);
  sub_240E871E4();
  v2 = *(v0 + 17);
  sub_240E871E4();
  sub_240E7956C(*(v0 + 18));
  sub_240E86F94();

  MEMORY[0x245CD1EF0](*(v0 + 19));
  MEMORY[0x245CD1EF0](*(v0 + 20));
  v3 = *(v0 + 24);
  return sub_240E870D4();
}

uint64_t sub_240E79D68()
{
  sub_240E871C4();
  sub_240E79CE4();
  return sub_240E871F4();
}

uint64_t sub_240E79DB0()
{
  sub_240E871C4();
  sub_240E79CE4();
  return sub_240E871F4();
}

uint64_t sub_240E79DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlexListItem() + 44);
  v4 = sub_240E864A4();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for FlexListItem()
{
  result = qword_281503938;
  if (!qword_281503938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240E79F20()
{
  result = sub_240E74D28(319, &qword_281503748, 0x277CCA898);
  if (v1 <= 0x3F)
  {
    result = sub_240E864A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlexListItem.Size(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FlexListItem.Size(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_240E7A16C()
{
  result = qword_27E51B468;
  if (!qword_27E51B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B468);
  }

  return result;
}

unint64_t sub_240E7A1C4()
{
  result = qword_27E51B470;
  if (!qword_27E51B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B470);
  }

  return result;
}

uint64_t sub_240E7A218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlexListItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E7A27C(uint64_t a1)
{
  v2 = type metadata accessor for FlexListItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240E7A2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlexListItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_33AppleMediaServicesUIPaymentSheets11LeadingItemVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_240E7A35C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7A39C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_240E7A478(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = result;
  }

  return result;
}

void sub_240E7A4B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  if (*(v0 + 64))
  {

    v2 = *(v0 + 64);
  }

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_240E7A588(uint64_t a1)
{
  v2 = sub_240E86D84();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_240E867E4();
}

unint64_t sub_240E7A650()
{
  result = qword_2815037C0;
  if (!qword_2815037C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B4F0, &qword_240E88C08);
    sub_240E7ADD4(&qword_281503778, &unk_27E51B538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815037C0);
  }

  return result;
}

uint64_t sub_240E7A708(uint64_t *a1)
{
  v1 = *a1;

  return sub_240E86894();
}

uint64_t sub_240E7A734(uint64_t *a1)
{
  v1 = *a1;

  return sub_240E86844();
}

uint64_t sub_240E7A760(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_24();
  v9(v8);
  return v4;
}

unint64_t sub_240E7A7AC()
{
  result = qword_27E51B540;
  if (!qword_27E51B540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B520, &qword_240E88C38);
    sub_240E7A864();
    sub_240E7ADD4(&qword_281503780, &unk_27E51B588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B540);
  }

  return result;
}

unint64_t sub_240E7A864()
{
  result = qword_27E51B548;
  if (!qword_27E51B548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B518, &qword_240E88C30);
    sub_240E7A91C();
    sub_240E7ADD4(&qword_281503798, &unk_27E51B580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B548);
  }

  return result;
}

unint64_t sub_240E7A91C()
{
  result = qword_27E51B550;
  if (!qword_27E51B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B510, &qword_240E88C28);
    sub_240E7A9D4();
    sub_240E7ADD4(&qword_281503788, &unk_27E51B578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B550);
  }

  return result;
}

unint64_t sub_240E7A9D4()
{
  result = qword_27E51B558;
  if (!qword_27E51B558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B508, &qword_240E88C20);
    sub_240E7AA8C();
    sub_240E7ADD4(&qword_281503790, &unk_27E51B570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B558);
  }

  return result;
}

unint64_t sub_240E7AA8C()
{
  result = qword_27E51B560;
  if (!qword_27E51B560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B500, &qword_240E88C18);
    sub_240E7AB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B560);
  }

  return result;
}

unint64_t sub_240E7AB18()
{
  result = qword_27E51B568;
  if (!qword_27E51B568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B4F8, &qword_240E88C10);
    sub_240E7A650();
    sub_240E7ABD4(&qword_27E51B238, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B568);
  }

  return result;
}

uint64_t sub_240E7ABD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_240E7AC1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_1_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_24();
  v9(v8);
  return v4;
}

uint64_t sub_240E7AC68(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_3(v5);
  (*(v6 + 8))(a1);
  return a1;
}

unint64_t sub_240E7ACBC()
{
  result = qword_27E51B5A8;
  if (!qword_27E51B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B5A0, &qword_240E88D48);
    sub_240E6DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B5A8);
  }

  return result;
}

unint64_t sub_240E7AD48()
{
  result = qword_27E51B5B8;
  if (!qword_27E51B5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B5B0, &unk_240E88D58);
    sub_240E7ACBC();
    sub_240E6DF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B5B8);
  }

  return result;
}

uint64_t sub_240E7ADD4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_7_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240E7AE18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_240E7AEA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_240E7AF80()
{
  result = qword_27E51B5D8;
  if (!qword_27E51B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B5D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_240E6DC44(v4, v2 - 144);
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return sub_240E871A4();
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return sub_240E871A4();
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_240E7B0B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240E7B0F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240E7B19C(char a1)
{
  sub_240E871C4();
  MEMORY[0x245CD1EF0](a1 & 1);
  return sub_240E871F4();
}

uint64_t sub_240E7B200()
{
  v0 = sub_240E87184();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240E7B254@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = sub_240E869B4();
  }

  else
  {
    v6 = sub_240E869C4();
  }

  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5E0, &qword_240E88EB0) + 44);
  sub_240E7BD70(a1);
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 25) = HIBYTE(a2) & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_240E7BF28;
  *(v9 + 24) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5E8, &qword_240E88ED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B5F0, &qword_240E88EE0);
  sub_240E6BAE4(&qword_27E51B5F8, &qword_27E51B5E8, &qword_240E88ED8);
  sub_240E6BAE4(&qword_27E51B600, &qword_27E51B5F0, &qword_240E88EE0);
  return sub_240E86DF4();
}

uint64_t sub_240E7B424@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v92 = a4;
  v7 = sub_240E86614();
  v87 = *(v7 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240E86DE4();
  KeyPath = *(v11 - 8);
  v94 = v11;
  v12 = *(KeyPath + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B608, &qword_240E88EE8);
  v15 = *(*(v95 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v95);
  v89 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v88 = &v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B610, &qword_240E88EF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v97 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v96 = &v85 - v23;
  v24 = [a2 padding];
  sub_240E86F74();

  v25 = sub_240E7B200();
  v26 = 0x278CBA000uLL;
  v27 = [a2 label];
  v91 = a3;
  LOBYTE(a1) = sub_240E7BC54(v27, a1, v28, a3 & 0x101);

  v90 = v25;
  if (a1)
  {
    sub_240E86DD4();
    if (sub_240E86E14() & 1) != 0 && (v29 = v87, (*(v87 + 104))(v10, *MEMORY[0x277CEE128], v7), v30 = sub_240E86604(), (*(v29 + 8))(v10, v7), (v30))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4B8, &qword_240E88BC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_240E87DB0;
      v32 = sub_240E86A64();
      *(inited + 32) = v32;
      v33 = sub_240E86A84();
      *(inited + 33) = v33;
      v34 = sub_240E86A74();
      sub_240E86A74();
      if (sub_240E86A74() != v32)
      {
        v34 = sub_240E86A74();
      }

      sub_240E86A74();
      if (sub_240E86A74() != v33)
      {
        v34 = sub_240E86A74();
      }

      v35 = v95;
      v26 = 0x278CBA000;
    }

    else
    {
      v38 = sub_240E86A64();
      v34 = sub_240E86A74();
      sub_240E86A74();
      v39 = sub_240E86A74();
      v35 = v95;
      if (v39 != v38)
      {
        v34 = sub_240E86A74();
      }
    }

    sub_240E86684();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = v89;
    (*(KeyPath + 32))(v89, v14, v94);
    v49 = v48 + *(v35 + 36);
    *v49 = v34;
    *(v49 + 8) = v41;
    *(v49 + 16) = v43;
    *(v49 + 24) = v45;
    *(v49 + 32) = v47;
    *(v49 + 40) = 0;
    v50 = v88;
    sub_240E7BFE0(v48, v88);
    v37 = v96;
    sub_240E7BFE0(v50, v96);
    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v95;
    v37 = v96;
  }

  __swift_storeEnumTagSinglePayload(v37, v36, 1, v35);
  v51 = [a2 *(v26 + 3336)];
  v52 = [a2 image];
  v53 = [a2 accessibilityIdentifier];
  v54 = sub_240E86F74();
  v56 = v55;

  sub_240E6D5D0();
  v89 = sub_240E6DA6C();
  KeyPath = swift_getKeyPath();
  LOBYTE(v99[0]) = 0;
  sub_240E76080(v51, 11043042, 0xA300000000000000, v54, v56);
  v88 = v57;

  v58 = sub_240E7E044(v51, v52);
  v86 = v60;
  v87 = v59;
  v96 = v61;

  LODWORD(v95) = LOBYTE(v99[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B4B8, &qword_240E88BC0);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_240E87DB0;
  LOBYTE(v54) = sub_240E86A64();
  *(v62 + 32) = v54;
  v63 = sub_240E86A84();
  *(v62 + 33) = v63;
  v64 = sub_240E86A74();
  sub_240E86A74();
  if (sub_240E86A74() != v54)
  {
    v64 = sub_240E86A74();
  }

  sub_240E86A74();
  if (sub_240E86A74() == v63)
  {
    LODWORD(v94) = v64;
  }

  else
  {
    LODWORD(v94) = sub_240E86A74();
  }

  v91 &= 1u;
  v65 = v91;
  sub_240E86684();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v117 = 0;
  v74 = v97;
  sub_240E7BF78(v37, v97, &qword_27E51B610, &qword_240E88EF0);
  v75 = v74;
  v76 = v92;
  sub_240E7BF78(v75, v92, &qword_27E51B610, &qword_240E88EF0);
  v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B618, &qword_240E88F28) + 48);
  v78 = v88;
  v79 = v89;
  v98[0] = v89;
  v98[1] = v88;
  LOBYTE(v98[2]) = v65;
  *(&v98[2] + 1) = *v116;
  HIDWORD(v98[2]) = *&v116[3];
  v80 = v58;
  v81 = v86;
  v82 = v87;
  v98[3] = v58;
  v98[4] = v87;
  v98[5] = v86;
  v98[6] = v96;
  v83 = KeyPath;
  v98[7] = KeyPath;
  LOBYTE(v98[8]) = v95;
  *(&v98[8] + 1) = v119[0];
  HIDWORD(v98[8]) = *(v119 + 3);
  LOBYTE(v98[9]) = v94;
  HIDWORD(v98[9]) = *&v118[3];
  *(&v98[9] + 1) = *v118;
  v98[10] = v67;
  v98[11] = v69;
  v98[12] = v71;
  v98[13] = v73;
  LOBYTE(v98[14]) = 0;
  memcpy((v76 + v77), v98, 0x71uLL);
  sub_240E7BF78(v98, v99, &qword_27E51B620, &unk_240E88F30);
  sub_240E6DFC8(v37, &qword_27E51B610, &qword_240E88EF0);
  v99[0] = v79;
  v99[1] = v78;
  v100 = v91;
  *v101 = *v116;
  *&v101[3] = *&v116[3];
  v102 = v80;
  v103 = v82;
  v104 = v81;
  v105 = v96;
  v106 = v83;
  v107 = v95;
  *v108 = v119[0];
  *&v108[3] = *(v119 + 3);
  v109 = v94;
  *&v110[3] = *&v118[3];
  *v110 = *v118;
  v111 = v67;
  v112 = v69;
  v113 = v71;
  v114 = v73;
  v115 = 0;
  sub_240E6DFC8(v99, &qword_27E51B620, &unk_240E88F30);
  return sub_240E6DFC8(v97, &qword_27E51B610, &qword_240E88EF0);
}

uint64_t sub_240E7BC54(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
    return (a4 >> 8) & 1;
  }

  v4 = [a1 attributesAtIndex:0 effectiveRange:0];
  type metadata accessor for Key(0);
  sub_240E7C050();
  v5 = sub_240E86F34();

  sub_240E6D14C(*MEMORY[0x277CEE2F8], v5, &v8);

  if (v9)
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_240E6DFC8(&v8, &qword_27E51B178, "V:");
  }

  return 1;
}

uint64_t sub_240E7BD50@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_240E7B254(*v1, v2 | *(v1 + 8), a1);
}

void *sub_240E7BD70(uint64_t a1)
{
  result = sub_240E6F3C4();
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = MEMORY[0x277D84F90];
  v8 = (MEMORY[0x277D84F90] + 32);
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = a1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x245CD1E50](v4, a1);
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      result = *(a1 + 8 * v4 + 32);
    }

    v10 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B628, &qword_240E88F40);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      a1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_240E7BF28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  if (*(v3 + 25))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_240E7B424(a1, a2, v5 | *(v3 + 24), a3);
}

uint64_t sub_240E7BF48(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_240E7BF78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_240E7BFE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B608, &qword_240E88EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240E7C050()
{
  result = qword_281503740;
  if (!qword_281503740)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281503740);
  }

  return result;
}

uint64_t sub_240E7C0A8(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *(result + 16);
  v5 = (MEMORY[0x277D84F90] + 32);
  v6 = result + 32;
  while (1)
  {
    if (v4 == v2)
    {
      v18 = v3[3];
      if (v18 >= 2)
      {
        v19 = v18 >> 1;
        v17 = __OFSUB__(v19, v1);
        v20 = v19 - v1;
        if (v17)
        {
          goto LABEL_27;
        }

        v3[2] = v20;
      }

      return v3;
    }

    v7 = *(v6 + 8 * v2);
    if (v1)
    {
      v8 = *(v6 + 8 * v2);

      v9 = v3;
    }

    else
    {
      v10 = v3[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v12 = v11 <= 1 ? 1 : v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B630, &qword_240E88F48);
      v9 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size(v9) - 32) / 16;
      v9[2] = v12;
      v9[3] = 2 * v13;
      v14 = v9 + 4;
      v15 = v3[3] >> 1;
      v5 = &v9[2 * v15 + 4];
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (v3[2])
      {
        if (v9 != v3 || v14 >= &v3[2 * v15 + 4])
        {
          memmove(v14, v3 + 4, 16 * v15);
        }

        v3[2] = 0;
      }

      else
      {
      }
    }

    v17 = __OFSUB__(v1--, 1);
    if (v17)
    {
      break;
    }

    *v5 = v2;
    v5[1] = v7;
    v5 += 2;
    ++v2;
    v3 = v9;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for FlexListView.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FlexListView.Layout(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_240E7C390()
{
  result = qword_27E51B648;
  if (!qword_27E51B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B648);
  }

  return result;
}

uint64_t sub_240E7C410@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B650, &qword_240E89070);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  result = (*(v9 + 32))(v14 + v13, v12, v8);
  *a2 = sub_240E7CAD0;
  a2[1] = v14;
  return result;
}

uint64_t sub_240E7C55C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = sub_240E86E24();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B658, &qword_240E89078);
  return sub_240E7C5D4(a1, (a2 + *(v5 + 44)));
}

uint64_t sub_240E7C5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a1;
  v53 = a2;
  v2 = sub_240E86A04();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B660, &qword_240E89080);
  v7 = *(*(v51 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v51);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  v50 = sub_240E86D34();
  sub_240E86704();
  v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B668, &qword_240E89088) + 36)];
  v14 = *(v3 + 28);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_240E86974();
  v17 = *(*(v16 - 8) + 104);
  v17(&v13[v14], v15, v16);
  sub_240E869E4();
  *v13 = v18;
  *(v13 + 1) = v19;
  *(v13 + 2) = v20;
  *(v13 + 3) = v21;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B670, &qword_240E89090) + 36)] = 256;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B650, &qword_240E89070);
  (*(*(v22 - 8) + 16))(v11, v49, v22);
  sub_240E86704();
  v17(&v6[*(v3 + 28)], v15, v16);
  sub_240E869E4();
  *v6 = v23;
  *(v6 + 1) = v24;
  *(v6 + 2) = v25;
  *(v6 + 3) = v26;
  if (qword_27E51B0A8 != -1)
  {
    swift_once();
  }

  v27 = qword_27E51B2E0;
  sub_240E866B4();
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B678, &qword_240E89098) + 36)];
  sub_240E7CB60(v6, v28);
  v29 = *&v54 * 0.5;
  v30 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B680, &qword_240E890A0) + 68);
  sub_240E7CB60(v6, v30);
  *(v30 + *(sub_240E869F4() + 20)) = v29;
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B688, &qword_240E890A8) + 36);
  v32 = v55;
  *v31 = v54;
  *(v31 + 16) = v32;
  *(v31 + 32) = v56;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B690, &qword_240E890B0);
  *(v30 + *(v33 + 52)) = v27;
  *(v30 + *(v33 + 56)) = 256;

  v34 = sub_240E86E24();
  v36 = v35;
  sub_240E7CBC4(v6);
  v37 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B698, &qword_240E890B8) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = sub_240E86E24();
  v40 = v39;
  v41 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6A0, &qword_240E890C0) + 36));
  *v41 = v38;
  v41[1] = v40;
  sub_240E86704();
  sub_240E86704();
  sub_240E86E24();
  sub_240E866F4();
  v42 = v52;
  v43 = &v11[*(v51 + 36)];
  v44 = v58;
  *v43 = v57;
  *(v43 + 1) = v44;
  *(v43 + 2) = v59;
  sub_240E69CB8(v11, v42);
  v45 = v53;
  *v53 = v50;
  *(v45 + 4) = 256;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B6A8, &qword_240E890C8);
  sub_240E69CB8(v42, v45 + *(v46 + 48));

  sub_240E69D20(v11);
  sub_240E69D20(v42);
}

uint64_t sub_240E7CAD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51B650, &qword_240E89070) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_240E7C55C(v6, a1);
}

uint64_t sub_240E7CB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_240E86A04();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240E7CBC4(uint64_t a1)
{
  v2 = sub_240E86A04();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240E7CC20()
{
  result = qword_27E51B6B0;
  if (!qword_27E51B6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51B6B8, &unk_240E890D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51B6B0);
  }

  return result;
}

uint64_t sub_240E7CC84(char a1)
{
  sub_240E871C4();
  sub_240E7956C(a1);
  OUTLINED_FUNCTION_3_4();

  return sub_240E871F4();
}

uint64_t sub_240E7CCE4(uint64_t a1, char a2)
{
  sub_240E871C4();
  sub_240E7956C(a2);
  OUTLINED_FUNCTION_3_4();

  return sub_240E871F4();
}

uint64_t sub_240E7CD34(uint64_t a1, unsigned __int8 a2)
{
  sub_240E871C4();
  MEMORY[0x245CD1EF0](a2);
  return sub_240E871F4();
}

uint64_t sub_240E7CD78()
{
  sub_240E871C4();
  sub_240E86F94();

  return sub_240E871F4();
}

unint64_t sub_240E7CE10(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconAdornmentStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IconAdornmentStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}