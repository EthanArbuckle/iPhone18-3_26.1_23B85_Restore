uint64_t sub_21B279B8C(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = result;
  v6 = a4[11];
  if (v6 <= result)
  {
LABEL_37:
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001CLL, 0x800000021B34C9F0);
    v30 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v30);

    MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34C9D0);
    v31 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v31);

    MEMORY[0x21CEED5E0](0x736E6D756C6F6320, 0xE90000000000002ELL);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v7 = a3;
  v8 = a2;
  if (a2 != a3)
  {
    if (a3 >= a2)
    {
      v10 = a4[8];
      v34 = v6 - 1;
      v35 = a4[12];
      v32 = v10;
      v33 = v35 + 32;
      v11 = v10 - 1;
      while (v8 < v7)
      {
        v21 = v8 * v6;
        if ((v8 * v6) >> 64 != (v8 * v6) >> 63)
        {
          goto LABEL_29;
        }

        v22 = __OFADD__(v21, v5);
        v23 = v21 + v5;
        if (v22)
        {
          goto LABEL_30;
        }

        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        v24 = *(v35 + 16);
        if (v23 >= v24)
        {
          goto LABEL_32;
        }

        if (v23 + 1 >= v24)
        {
          goto LABEL_33;
        }

        v25 = *(v33 + 8 * v23);
        v26 = *(v33 + 8 * (v23 + 1));
        if (v34 == v5)
        {
          if (v25 < v26)
          {
            while (1)
            {
              v27 = *(v11 + v26);
              if (v27 != 13 && v27 != 10)
              {
                break;
              }

              if (v25 >= --v26)
              {
                v26 = v25;
                break;
              }
            }
          }
        }

        else
        {
          v26 -= v25 < v26;
        }

        if (!v10)
        {
          goto LABEL_36;
        }

        v29 = v26 - v25;
        if (__OFSUB__(v26, v25))
        {
          goto LABEL_34;
        }

        if (sub_21B22EBA0(v25 + v10, v26 - v25, *(a5 + 104)))
        {
          result = sub_21B2FE75C(0, 0xF000000000000000);
        }

        else
        {
          sub_21B22F054(v25 + v10, v29);
          v12 = *(a5 + 112);

          v14 = sub_21B274464(v13);
          v15 = v7;
          v16 = v5;
          v17 = v6;
          v19 = v18;

          sub_21B2FE75C(v14, v19);
          v20 = v19;
          v6 = v17;
          v5 = v16;
          v7 = v15;
          v10 = v32;
          result = sub_21B234324(v14, v20);
        }

        if (++v8 == v7)
        {
          return result;
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
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_21B279E98(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = result;
  v6 = a4[11];
  if (v6 <= result)
  {
LABEL_35:
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001CLL, 0x800000021B34C9F0);
    v21 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v21);

    MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34C9D0);
    v22 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v22);

    MEMORY[0x21CEED5E0](0x736E6D756C6F6320, 0xE90000000000002ELL);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v8 = a2;
  if (a2 != a3)
  {
    if (a3 >= a2)
    {
      v9 = a4[8];
      v10 = a4[12];
      v11 = v10 + 32;
      while (v8 < a3)
      {
        v12 = v8 * v6;
        if ((v8 * v6) >> 64 != (v8 * v6) >> 63)
        {
          goto LABEL_27;
        }

        v13 = __OFADD__(v12, v5);
        v14 = v12 + v5;
        if (v13)
        {
          goto LABEL_28;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        v15 = *(v10 + 16);
        if (v14 >= v15)
        {
          goto LABEL_30;
        }

        v16 = v14 + 1;
        if (v14 + 1 >= v15)
        {
          goto LABEL_31;
        }

        v17 = *(v11 + 8 * v14);
        v18 = *(v11 + 8 * v16);
        if (v6 - 1 == v5)
        {
          if (v17 < v18)
          {
            while (1)
            {
              v19 = *(v9 - 1 + v18);
              if (v19 != 13 && v19 != 10)
              {
                break;
              }

              if (v17 >= --v18)
              {
                v18 = v17;
                break;
              }
            }
          }
        }

        else
        {
          v18 -= v17 < v18;
        }

        if (!v9)
        {
          goto LABEL_34;
        }

        if (__OFSUB__(v18, v17))
        {
          goto LABEL_32;
        }

        result = sub_21B2EB838(v17 + v9, v18 - v17, v8);
        if (!v4 && ++v8 != a3)
        {
          continue;
        }

        return result;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_21B27A10C(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = result;
  v6 = a4[11];
  if (v6 <= result)
  {
LABEL_45:
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001CLL, 0x800000021B34C9F0);
    v34 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v34);

    MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34C9D0);
    v35 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v35);

    MEMORY[0x21CEED5E0](0x736E6D756C6F6320, 0xE90000000000002ELL);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v7 = a2;
  if (a2 == a3)
  {
    return result;
  }

  if (a3 < a2)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v9 = a4[8];
  v44 = a4[12];
  v37 = a3;
  v38 = v44 + 32;
  v10 = v9 - 1;
  v36 = v9;
  while (1)
  {
    if (v7 >= a3)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v12 = v7 * v6;
    if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
    {
      goto LABEL_37;
    }

    v13 = __OFADD__(v12, v5);
    v14 = v12 + v5;
    if (v13)
    {
      goto LABEL_38;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    v15 = *(v44 + 16);
    if (v14 >= v15)
    {
      goto LABEL_40;
    }

    v16 = v14 + 1;
    if (v14 + 1 >= v15)
    {
      goto LABEL_41;
    }

    v17 = *(v38 + 8 * v14);
    v18 = *(v38 + 8 * v16);
    if (v6 - 1 == v5)
    {
      if (v17 < v18)
      {
        while (1)
        {
          v19 = *(v10 + v18);
          if (v19 != 13 && v19 != 10)
          {
            break;
          }

          if (v17 >= --v18)
          {
            v18 = v17;
            break;
          }
        }
      }
    }

    else
    {
      v18 -= v17 < v18;
    }

    if (!v9)
    {
      goto LABEL_44;
    }

    v21 = v18 - v17;
    if (__OFSUB__(v18, v17))
    {
      goto LABEL_42;
    }

    v22 = (v9 + v17);
    if ((sub_21B22EBA0(v9 + v17, v18 - v17, *(a5 + 104)) & 1) == 0)
    {
      break;
    }

    LOBYTE(v40) = 1;
    v11 = 0x100000000;
LABEL_6:
    ++v7;
    result = sub_21B2FE5E0(v11);
    v9 = v36;
    a3 = v37;
    if (v7 == v37)
    {
      return result;
    }
  }

  sub_21B2825A4(v22, &v22[v21], v21, &v40);
  if ((BYTE4(v40) & 1) == 0)
  {
    v26 = v40;
    LOBYTE(v40) = 0;
    v11 = v26;
    goto LABEL_6;
  }

  v23 = sub_21B22EA68(v22, v21);
  if (v24)
  {
    v25 = sub_21B28271C(v23, v24);

    if ((v25 & 0x100000000) == 0)
    {
      LOBYTE(v40) = 0;
      v11 = v25;
      goto LABEL_6;
    }
  }

  v27 = *(a5 + 176);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
  v42 = v28;
  v43 = sub_21B27A8D0();
  v40 = v22;
  v41 = v21;
  v29 = __swift_project_boxed_opaque_existential_1(&v40, v28);
  if (*v29)
  {
    v30 = (v29[1] + *v29);
  }

  else
  {
    v30 = 0;
  }

  sub_21B273F78(*v29, v30, v39);
  v31 = v39[0];
  v32 = v39[1];
  __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  sub_21B27A934();
  swift_allocError();
  *v33 = v7;
  *(v33 + 8) = v27;
  *(v33 + 16) = 2;
  *(v33 + 24) = v31;
  *(v33 + 32) = v32;
  *(v33 + 40) = 4;
  return swift_willThrow();
}

uint64_t sub_21B27A4F0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = result;
  v7 = a4[11];
  if (v7 <= result)
  {
LABEL_46:
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001CLL, 0x800000021B34C9F0);
    v39 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v39);

    MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34C9D0);
    v40 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v40);

    MEMORY[0x21CEED5E0](0x736E6D756C6F6320, 0xE90000000000002ELL);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = a2;
  if (a2 == a3)
  {
    return result;
  }

  if (a3 < a2)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v11 = a4[8];
  v46 = v7 - 1;
  v52 = a4[12];
  v44 = a3;
  v45 = v52 + 32;
  v12 = v11 - 1;
  v43 = v11;
  v41 = result;
  while (1)
  {
    if (v9 >= a3)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v15 = v9 * v7;
    if ((v9 * v7) >> 64 != (v9 * v7) >> 63)
    {
      goto LABEL_38;
    }

    v16 = __OFADD__(v15, v6);
    v17 = v15 + v6;
    if (v16)
    {
      goto LABEL_39;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v18 = *(v52 + 16);
    if (v17 >= v18)
    {
      goto LABEL_41;
    }

    v19 = v17 + 1;
    if (v17 + 1 >= v18)
    {
      goto LABEL_42;
    }

    v20 = *(v45 + 8 * v17);
    v21 = *(v45 + 8 * v19);
    if (v46 == v6)
    {
      if (v20 < v21)
      {
        while (1)
        {
          v22 = *(v12 + v21);
          if (v22 != 13 && v22 != 10)
          {
            break;
          }

          if (v20 >= --v21)
          {
            v21 = v20;
            break;
          }
        }
      }
    }

    else
    {
      v21 -= v20 < v21;
    }

    if (!v11)
    {
      goto LABEL_45;
    }

    v24 = v21 - v20;
    if (__OFSUB__(v21, v20))
    {
      goto LABEL_43;
    }

    v25 = (v11 + v20);
    if ((sub_21B22EBA0(v11 + v20, v21 - v20, *(a5 + 104)) & 1) == 0)
    {
      break;
    }

    v13 = 0;
    v14 = 1;
LABEL_6:
    result = sub_21B2FE174(v13, v14);
LABEL_7:
    ++v9;
    v11 = v43;
    a3 = v44;
    if (v9 == v44)
    {
      return result;
    }
  }

  sub_21B282660(v25, &v25[v24], v24, &v48);
  if ((v49 & 1) == 0)
  {
    v13 = v48;
    v14 = 0;
    goto LABEL_6;
  }

  v42 = v8;
  v26 = v7;
  v27 = sub_21B22EA68(v25, v24);
  if (v28)
  {
    v29 = sub_21B282818(v27, v28);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      result = sub_21B2FE174(v29, 0);
      v7 = v26;
      v6 = v41;
      v8 = v42;
      goto LABEL_7;
    }
  }

  v32 = *(a5 + 176);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
  v50 = v33;
  v51 = sub_21B27A8D0();
  v48 = v25;
  v49 = v24;
  v34 = __swift_project_boxed_opaque_existential_1(&v48, v33);
  if (*v34)
  {
    v35 = (v34[1] + *v34);
  }

  else
  {
    v35 = 0;
  }

  sub_21B273F78(*v34, v35, v47);
  v36 = v47[0];
  v37 = v47[1];
  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  sub_21B27A934();
  swift_allocError();
  *v38 = v9;
  *(v38 + 8) = v32;
  *(v38 + 16) = 3;
  *(v38 + 24) = v36;
  *(v38 + 32) = v37;
  *(v38 + 40) = 4;
  return swift_willThrow();
}

unint64_t sub_21B27A8D0()
{
  result = qword_27CD7E820;
  if (!qword_27CD7E820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E7F0, &qword_21B355E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E820);
  }

  return result;
}

unint64_t sub_21B27A934()
{
  result = qword_27CD7E828;
  if (!qword_27CD7E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E828);
  }

  return result;
}

uint64_t sub_21B27A988@<X0>(uint64_t a1@<X8>)
{
  if (sub_21B34ADA4() < v1[2])
  {
    goto LABEL_2;
  }

  v6 = v1[4];
  sub_21B34ADE4();
  if (sub_21B34AE94() == 84 && v7 == 0xE100000000000000)
  {

LABEL_19:

    return sub_21B27AB54(a1);
  }

  v9 = sub_21B34B9F4();

  if (v9)
  {
    goto LABEL_19;
  }

LABEL_2:
  if (sub_21B34ADA4() < v1[3])
  {
LABEL_3:
    v3 = sub_21B34A834();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }

  v10 = v1[5];
  sub_21B34ADE4();
  if (sub_21B34AE94() == 84 && v11 == 0xE100000000000000)
  {
  }

  else
  {
    v13 = sub_21B34B9F4();

    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return sub_21B27ADE8(a1);
}

uint64_t sub_21B27AB54@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v21 - v6;
  if (__OFSUB__(*(v1 + 16), 1))
  {
    __break(1u);
    return result;
  }

  sub_21B34ADE4();
  v8 = sub_21B34AE94();
  v10 = v9;
  v11 = v8 == 90 && v9 == 0xE100000000000000;
  if (v11 || (v12 = v8, (sub_21B34B9F4() & 1) != 0) || v12 == 43 && v10 == 0xE100000000000000 || (sub_21B34B9F4() & 1) != 0 || v12 == 45 && v10 == 0xE100000000000000)
  {

LABEL_13:
    v13 = *v1;
    v14 = sub_21B34AC74();
    v15 = [v13 dateFromString_];

    if (v15)
    {
      sub_21B34A814();

      v16 = sub_21B34A834();
      (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    }

    else
    {
      v17 = sub_21B34A834();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    return sub_21B260BE8(v7, a1);
  }

  v18 = sub_21B34B9F4();

  if (v18)
  {
    goto LABEL_13;
  }

  v19 = sub_21B34A834();
  v20 = *(*(v19 - 8) + 56);

  return v20(a1, 1, 1, v19);
}

uint64_t sub_21B27ADE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v21 - v6;
  if (__OFSUB__(*(v1 + 24), 1))
  {
    __break(1u);
    return result;
  }

  sub_21B34ADE4();
  v8 = sub_21B34AE94();
  v10 = v9;
  v11 = v8 == 90 && v9 == 0xE100000000000000;
  if (v11 || (v12 = v8, (sub_21B34B9F4() & 1) != 0) || v12 == 43 && v10 == 0xE100000000000000 || (sub_21B34B9F4() & 1) != 0 || v12 == 45 && v10 == 0xE100000000000000)
  {

LABEL_13:
    v13 = *(v1 + 8);
    v14 = sub_21B34AC74();
    v15 = [v13 dateFromString_];

    if (v15)
    {
      sub_21B34A814();

      v16 = sub_21B34A834();
      (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    }

    else
    {
      v17 = sub_21B34A834();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    return sub_21B260BE8(v7, a1);
  }

  v18 = sub_21B34B9F4();

  if (v18)
  {
    goto LABEL_13;
  }

  v19 = sub_21B34A834();
  v20 = *(*(v19 - 8) + 56);

  return v20(a1, 1, 1, v19);
}

uint64_t JSONType.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

uint64_t sub_21B27B118()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

uint64_t sub_21B27B18C()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

unint64_t sub_21B27B1D4()
{
  result = qword_27CD7E830;
  if (!qword_27CD7E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E830);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CSVType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CSVType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ColumnProtocol<>.* infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  return sub_21B27B4B0(a1, a2, a3, a4, sub_21B27CA48, sub_21B27CA54, 42, a5);
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  v10 = (*(a3 + 16))(a2, a3);
  MEMORY[0x21CEED5E0](v10);

  MEMORY[0x21CEED5E0](42, 0xE100000000000000);
  v11 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, sub_21B27CA48, v13, a2, a3, a5, *(a4 + 8));
}

uint64_t static ColumnProtocol<>./ infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  return sub_21B27B4B0(a1, a2, a3, a4, sub_21B27CA4C, sub_21B27CA54, 47, a5);
}

{
  return sub_21B27B4B0(a1, a2, a3, a4, sub_21B27CA50, sub_21B27B7CC, 47, a5);
}

{
  v18 = 0;
  v19 = 0xE000000000000000;
  v10 = (*(a3 + 16))(a2, a3);
  MEMORY[0x21CEED5E0](v10);

  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v11 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v12 = *(a4 + 8);
  sub_21B34B9D4();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, sub_21B27BFD8, v14, a2, a3, a5, *(*(a4 + 24) + 8));
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  v10 = (*(a3 + 16))(a2, a3);
  MEMORY[0x21CEED5E0](v10);

  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v11 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, sub_21B27C284, v13, a2, a3, a5, *(*(*(a4 + 16) + 8) + 8));
}

uint64_t sub_21B27B4B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(char *, char *)@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v32 = a7;
  v31 = a6;
  v30 = a1;
  v33 = a8;
  v12 = *(*(*(a3 + 8) + 8) + 8);
  v44 = a2;
  v45 = a2;
  v46 = v12;
  v47 = v12;
  v13 = sub_21B34B674();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  sub_21B34BA54();
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = &v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_21B23CCA8(v31, v34, v13, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);
  (*(v14 + 8))(v17, v13);
  v22 = *(a3 + 16);
  v44 = v22(a2, a3);
  v45 = v23;
  MEMORY[0x21CEED5E0](v32, 0xE100000000000000);
  v24 = v22(a2, a3);
  MEMORY[0x21CEED5E0](v24);

  v25 = v44;
  v26 = v45;
  v44 = v21;
  v27 = sub_21B34B054();
  v28 = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v25, v26, &v44, AssociatedTypeWitness, v27, v28, v33);
}

uint64_t sub_21B27B72C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(*(a5 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_21B27B7E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a9;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = a1;
  v13 = *(*(a7 + 8) + 8);
  v14 = *(v13 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_21B2FCC28(sub_21B27CA04, v20, a6, AssociatedTypeWitness, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v16);
  v17 = sub_21B34B054();

  WitnessTable = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(a2, a3, &v21, AssociatedTypeWitness, v17, WitnessTable, a8);
}

uint64_t sub_21B27B974@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v21 = 0;
  v22 = 0xE000000000000000;
  v14 = (*(a3 + 16))(a2, a3);
  MEMORY[0x21CEED5E0](v14);

  MEMORY[0x21CEED5E0](a5, 0xE100000000000000);
  v15 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, a6, v17, a2, a3, a7, a4);
}

uint64_t sub_21B27BAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v21 = 0;
  v22 = 0xE000000000000000;
  v14 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](a5, 0xE100000000000000);
  v15 = (*(a3 + 16))(a2, a3);
  MEMORY[0x21CEED5E0](v15);

  v18 = a2;
  v19 = a3;
  v20 = a4;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, a6, v17, a2, a3, a7, a4);
}

uint64_t static ColumnProtocol<>.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  v10 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](42, 0xE100000000000000);
  v11 = (*(a3 + 16))(a2, a3);
  MEMORY[0x21CEED5E0](v11);

  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, sub_21B27BE80, v13, a2, a3, a5, *(a4 + 8));
}

uint64_t static ColumnProtocol<>./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v18 = 0;
  v19 = 0xE000000000000000;
  v10 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v11 = *(a4 + 8);
  sub_21B34B9D4();
  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v12 = (*(a3 + 16))(a2, a3);
  MEMORY[0x21CEED5E0](v12);

  v15 = a2;
  v16 = a3;
  v17 = a4;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, sub_21B27C12C, v14, a2, a3, a5, *(*(a4 + 24) + 8));
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  v10 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v11 = (*(a3 + 16))(a2, a3);
  MEMORY[0x21CEED5E0](v11);

  v14 = a2;
  v15 = a3;
  v16 = a4;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, sub_21B27C460, v13, a2, a3, a5, *(*(*(a4 + 16) + 8) + 8));
}

uint64_t sub_21B27C29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = v3[2];
  v8 = v3[4];
  v9 = *(*(*(v3[3] + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  return a3(a1, a2);
}

uint64_t sub_21B27C478(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = v3[2];
  v8 = v3[4];
  v9 = *(*(*(v3[3] + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  return a3(a2, a1);
}

uint64_t static ColumnProtocol<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27CA70);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27CA6C);
}

uint64_t static ColumnProtocol<>.<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27CA78);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27CA74);
}

uint64_t static ColumnProtocol<>.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27C578);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27C5A8);
}

uint64_t static ColumnProtocol<>.>= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27C5D8);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27C608);
}

uint64_t sub_21B27C620(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v3[2];
  v8 = v3[3];
  v10 = v3[4];
  v9 = v3[5];
  v11 = *(*(*(v8 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return a3(a1, a2, AssociatedTypeWitness, v10) & 1;
}

uint64_t static ColumnProtocol<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27CA7C);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27C6D0);
}

uint64_t sub_21B27C6D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(*(*(v2 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v6 = *(v4 + 8);
  return sub_21B34AC54() & 1;
}

uint64_t static ColumnProtocol<>.!= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27CA3C);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27C994);
}

uint64_t sub_21B27C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*(a4 + 8) + 8);
  v9 = *(v8 + 8);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = v13;
  v19 = v14;
  v20 = a6;
  v21 = &v12;
  v22 = a2;
  return sub_21B2FCC28(sub_21B27C9B8, v17, v13, MEMORY[0x277D839B0], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v10);
}

uint64_t sub_21B27C848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*(a4 + 8) + 8);
  v9 = *(v8 + 8);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = v13;
  v19 = v14;
  v20 = a6;
  v21 = &v12;
  v22 = a1;
  return sub_21B2FCC28(sub_21B27C9B8, v17, v13, MEMORY[0x277D839B0], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v10);
}

BOOL sub_21B27C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(*(*(a5 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v8 = *(a6 + 8);
  return (sub_21B34AC54() & 1) == 0;
}

uint64_t sub_21B27C9B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 40);
  result = (*(v2 + 32))(a1, *(v2 + 48));
  *a2 = result & 1;
  return result;
}

uint64_t JSONReadingOptions.dateParsers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t JSONReadingOptions.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];

  v2 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v2 setFormatOptions_];
  v3 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v3 setFormatOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E460, &qword_21B352890);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B352080;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v4 + 32) = sub_21B27D2F4;
  *(v4 + 40) = v5;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(v4 + 48) = sub_21B27D154;
  *(v4 + 56) = result;
  *a1 = v4;
  return result;
}

uint64_t sub_21B27CBEC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = sub_21B34AC74();
  v8 = [a2 dateFromString_];

  if (v8)
  {
    sub_21B34A814();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_21B34A834();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, v9, 1, v10);
}

uint64_t JSONReadingOptions.addDateParseStrategy<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v6 + 32))(v10 + v9, v8, a2);
  v11 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v11;
  if ((result & 1) == 0)
  {
    result = sub_21B24A830(0, v11[2] + 1, 1, v11);
    v11 = result;
    *v3 = result;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_21B24A830((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_21B27D170;
  v15[5] = v10;
  *v3 = v11;
  return result;
}

uint64_t sub_21B27CE50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_21B34A554();
  v3 = sub_21B34A834();
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

uint64_t sub_21B27CF5C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 16);

  *(a2 + 8) = sub_21B27D2E4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t JSONWritingOptions.dateFormatter.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t JSONWritingOptions.dateFormatter.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void JSONWritingOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = sub_21B27D070;
  *(a1 + 16) = 0;
}

uint64_t sub_21B27D070()
{
  v0 = sub_21B34A7F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2F99AC(v4);
  v5 = sub_21B34A794();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21B27D170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(*(*(v2 + 16) - 8) + 80);
  return sub_21B27CE50(a1, a2);
}

uint64_t sub_21B27D1B8(uint64_t *a1, int a2)
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

uint64_t sub_21B27D200(uint64_t result, int a2, int a3)
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

uint64_t sub_21B27D24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21B27D294(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21B27D304(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 344))
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

uint64_t sub_21B27D34C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B27D3F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v20, a1, a2, &qword_27CD7E150, &unk_21B3526D0, sub_21B260114, sub_21B2FD6A0);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_2:
    v8 = v20;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
    v19 = &off_282CAA128;
    v16 = v8;
    v17 = v21;
    sub_21B2339B4(&v16, v3 + 288);
    return 1;
  }

  else
  {
    if (v6 >= v4)
    {
      v9 = *(v2 + 256);
      v10 = *(v2 + 80);
      v22 = *(v2 + 64);
      v23 = v10;
      v11 = *(v2 + 104);
      v24 = *(v2 + 96);
      while (v4 < v6)
      {
        v13 = sub_21B23087C(v4, v9);
        v15 = v14;
        if (sub_21B22EBA0(v13, v14, v11))
        {
          v12 = 2;
        }

        else if (sub_21B22EBA0(v13, v15, *(v3 + 112)))
        {
          v12 = 1;
        }

        else
        {
          if ((sub_21B22EBA0(v13, v15, *(v3 + 120)) & 1) == 0)
          {

            return 0;
          }

          v12 = 0;
        }

        ++v4;
        result = sub_21B2FE46C(v12);
        if (v6 == v4)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B27D598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v25, a1, a2, &qword_27CD7E160, &unk_21B352A10, sub_21B25FEE8, sub_21B2FDCA8);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_2:
    v8 = v25;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E160, &unk_21B352A10);
    v24 = &off_282CAA128;
    v21 = v8;
    v22 = v26;
    sub_21B2339B4(&v21, v3 + 288);
    return 1;
  }

  else
  {
    if (v6 >= v4)
    {
      v9 = *(v2 + 256);
      v10 = *(v2 + 80);
      v27 = *(v2 + 64);
      v28 = v10;
      v11 = *(v2 + 104);
      v29 = *(v2 + 96);
      while (v4 < v6)
      {
        v13 = sub_21B23087C(v4, v9);
        v15 = v14;
        if (sub_21B22EBA0(v13, v14, v11))
        {
          LOBYTE(v21) = 1;
          v12 = 0x100000000;
        }

        else
        {
          if (v13)
          {
            v16 = &v13[v15];
          }

          else
          {
            v16 = 0;
          }

          sub_21B2825A4(v13, v16, v15, &v21);
          if ((v21 & 0x100000000) != 0)
          {
            v17 = sub_21B22EA68(v13, v15);
            if (!v18 || (v19 = sub_21B28271C(v17, v18), , (v19 & 0x100000000) != 0))
            {

              return 0;
            }

            LOBYTE(v21) = 0;
            v12 = v19;
          }

          else
          {
            v20 = v21;
            LOBYTE(v21) = 0;
            v12 = v20;
          }
        }

        ++v4;
        result = sub_21B2FE5E0(v12);
        if (v6 == v4)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B27D798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v27, a1, a2, &qword_27CD7E168, &unk_21B3526C0, sub_21B25E224, sub_21B2FD590);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_2:
    v8 = v27;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    v26 = &off_282CAA128;
    v23 = v8;
    v24 = v28;
    sub_21B2339B4(&v23, v3 + 288);
    return 1;
  }

  else
  {
    if (v6 >= v4)
    {
      v9 = *(v2 + 256);
      v10 = *(v2 + 80);
      v29 = *(v2 + 64);
      v30 = v10;
      v11 = *(v2 + 104);
      v31 = *(v2 + 96);
      while (v4 < v6)
      {
        v14 = sub_21B23087C(v4, v9);
        v16 = v15;
        if (sub_21B22EBA0(v14, v15, v11))
        {
          v12 = 0;
          v13 = 1;
        }

        else
        {
          if (v14)
          {
            v17 = &v14[v16];
          }

          else
          {
            v17 = 0;
          }

          sub_21B282660(v14, v17, v16, &v23);
          if (v24)
          {
            v18 = sub_21B22EA68(v14, v16);
            if (!v19 || (v20 = sub_21B282818(v18, v19), v22 = v21, , (v22 & 1) != 0))
            {

              return 0;
            }

            v12 = v20;
          }

          else
          {
            v12 = v23;
          }

          v13 = 0;
        }

        result = sub_21B2FE174(v12, v13);
        if (v6 == ++v4)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B27D988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B34A834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = sub_21B23472C(&v44, a1, a2, &qword_27CD7E140, &unk_21B3526A0, sub_21B260568, sub_21B2FD6DC);
  v19 = v18;
  result = sub_21B2348E0(v3 + 216, v3 + 288);
  if (v17 == v19)
  {
LABEL_2:
    v21 = v44;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
    v43 = &off_282CAA128;
    v40 = v21;
    v41 = v45;
    sub_21B2339B4(&v40, v3 + 288);
    return 1;
  }

  else
  {
    if (v19 >= v17)
    {
      v22 = *(v3 + 256);
      v23 = *(v3 + 80);
      v46 = *(v3 + 64);
      v47 = v23;
      v35 = (v7 + 32);
      v36 = (v7 + 48);
      v24 = *(v3 + 96);
      v38 = *(v3 + 104);
      v39 = v22;
      v48 = v24;
      v25 = (v7 + 56);
      v33 = (v7 + 8);
      v34 = (v7 + 16);
      while (v17 < v19)
      {
        v26 = sub_21B23087C(v17, v39);
        v28 = v27;
        if (sub_21B22EBA0(v26, v27, v38))
        {
          (*v25)(v16, 1, 1, v6);
          sub_21B2FDE8C(v16);
          result = sub_21B27DF7C(v16);
        }

        else
        {
          v29 = sub_21B22EA68(v26, v28);
          if (!v30)
          {

            return 0;
          }

          sub_21B2D12C4(v29, v30, v14);

          if ((*v36)(v14, 1, v6) == 1)
          {

            sub_21B27DF7C(v14);
            return 0;
          }

          v31 = v37;
          (*v35)(v37, v14, v6);
          (*v34)(v16, v31, v6);
          (*v25)(v16, 0, 1, v6);
          sub_21B2FDE8C(v16);
          sub_21B27DF7C(v16);
          result = (*v33)(v31, v6);
        }

        if (v19 == ++v17)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B27DD4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v24, a1, a2, &qword_27CD7E148, &unk_21B352A20, sub_21B26032C, sub_21B2FDCE4);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_2:
    v8 = v24;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E148, &unk_21B352A20);
    v23 = &off_282CAA128;
    v20 = v8;
    v21 = v25;
    return sub_21B2339B4(&v20, v3 + 288);
  }

  if (v6 < v4)
  {
    __break(1u);
  }

  else if (v4 < v6)
  {
    v9 = *(v2 + 256);
    v10 = *(v2 + 80);
    v26 = *(v2 + 64);
    v27 = v10;
    v11 = *(v2 + 104);
    v28 = *(v2 + 96);
    do
    {
      v17 = sub_21B23087C(v4, v9);
      v19 = v18;
      if (sub_21B22EBA0(v17, v18, v11))
      {
        sub_21B2FE75C(0, 0xF000000000000000);
      }

      else
      {
        sub_21B22F054(v17, v19);
        v12 = *(v3 + 128);

        v14 = sub_21B274464(v13);
        v16 = v15;

        sub_21B2FE75C(v14, v16);
        sub_21B234324(v14, v16);
      }

      ++v4;
    }

    while (v6 != v4);
    goto LABEL_2;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B27DEF8(uint64_t a1, uint64_t a2)
{
  v5 = v2[42];

  v2[41] = a1;
  v2[42] = a2;
  v6 = v2[39];
  v7 = v2[40];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 36), v6);
  return (*(*(v7 + 8) + 16))(a1, a2, v6);
}

uint64_t sub_21B27DF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SummaryColumnIDs(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SummaryColumnIDs(_WORD *result, int a2, int a3)
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

unint64_t sub_21B27E1E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (*(v0 + 32))
  {
    if (v2 == 1)
    {
      v3 = *(v1 + 16);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  if (*v0 > v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + 32))
    {
      if (v2 == 1)
      {
        v4 = *(v1 + 16);
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 1;
    }

    v5 = *(v0 + 8);
    if (v5 <= v4)
    {
      return v5 - *v0;
    }
  }

  __break(1u);
  return result;
}

uint64_t DataFrameProtocol.writeCSV(to:options:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  result = DataFrameProtocol.csvRepresentation(options:)(a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    v8 = v6;
    sub_21B34A754();
    return sub_21B234324(v7, v8);
  }

  return result;
}

uint64_t DataFrameProtocol.csvRepresentation(options:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B34AD44();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 49);
  v91 = *(a1 + 33);
  v92 = v11;
  v93[0] = *(a1 + 65);
  v12 = *(a1 + 10);
  v94 = *(a1 + 11);
  *(v93 + 15) = v12;
  v13 = *(a1 + 17);
  v89 = *(a1 + 1);
  v90 = v13;
  v14 = *(a1 + 12);
  v75 = *(a1 + 13);
  v72 = *(a1 + 14);
  v73 = v14;
  (*(a3 + 24))(v76, a2, a3);
  v15 = *v76;

  v16 = *(v15 + 16);

  if (!v16)
  {
    return 0;
  }

  v83 = 0;
  v84 = 0xE000000000000000;
  v68 = v3;
  LODWORD(v74) = v10;
  if (v10)
  {
    *v76 = (*(a3 + 56))(a2, a3);
    MEMORY[0x28223BE20](*v76);
    *(&v63 - 2) = a2;
    *(&v63 - 1) = a3;
    KeyPath = swift_getKeyPath();
    *&v71 = &v63;
    v18 = MEMORY[0x28223BE20](KeyPath);
    *(&v63 - 4) = a2;
    *(&v63 - 3) = a3;
    *(&v63 - 2) = v18;
    swift_getAssociatedTypeWitness();
    v19 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    v21 = v68;
    v23 = sub_21B2FCC28(sub_21B28043C, (&v63 - 6), v19, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v22);
    v68 = v21;

    *v76 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68);
    v24 = sub_21B34AB74();
    v26 = v25;

    MEMORY[0x21CEED5E0](v24, v26);

    MEMORY[0x21CEED5E0](v94, v73);
  }

  (*(a3 + 32))(v76, a2, a3);
  v71 = *v76;
  v28 = *&v76[16];
  v27 = *&v76[24];
  v29 = *&v76[32];
  v30 = v76[40];
  v31 = *&v76[24];
  if (v76[40])
  {
    if (v76[40] == 1 && *(*&v76[24] + 16))
    {
      v31 = *(*&v76[24] + 32);
    }

    else
    {
      sub_21B2A6400(*&v76[24], *&v76[32], v76[40]);
      if (v34)
      {
        v31 = 0;
      }

      else
      {
        v31 = v33;
      }
    }
  }

  sub_21B2A6400(v27, v29, v30);
  v85 = v71;
  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35;
  }

  *&v86 = v28;
  *(&v86 + 1) = v27;
  *&v87 = v29;
  BYTE8(v87) = v30;
  *&v88 = v31;
  *(&v88 + 1) = v37;
  v82[0] = v85;
  v82[1] = v86;
  v82[2] = v87;
  v82[3] = v88;
  *&v76[33] = v91;
  *&v76[49] = v92;
  *v77 = v93[0];
  *&v76[1] = v89;
  v76[0] = v74;
  *&v76[17] = v90;
  *&v77[15] = *(v93 + 15);
  v78 = v94;
  v79 = v73;
  v80 = v75;
  v81 = v72;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v39 = sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10);
  v40 = v68;
  v41 = sub_21B27EB50(v82, v76, a2, v38, a3, v39);
  if (v40)
  {

    return sub_21B2803D4(&v85);
  }

  v64 = v41;
  v68 = 0;
  result = sub_21B248FC4();
  if (result < 0)
  {
    goto LABEL_32;
  }

  v43 = v72;
  v42 = v73;
  if (result)
  {
    v44 = 0;
    v45 = *(v64 + 16);
    v69 = v64 + 64;
    v70 = v45;
    *&v71 = result;
    while (!v45)
    {
      v50 = MEMORY[0x277D84F90];
      v46 = v43;
LABEL_20:
      *v76 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
      sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68);
      v43 = v46;
      v47 = sub_21B34AB74();
      v49 = v48;

      MEMORY[0x21CEED5E0](v47, v49);

      MEMORY[0x21CEED5E0](v94, v42);
      ++v44;
      v45 = v70;
      if (v44 == v71)
      {
        goto LABEL_29;
      }
    }

    *v76 = MEMORY[0x277D84F90];
    v74 = v44;
    result = sub_21B231F10(0, v45, 0);
    v44 = v74;
    v50 = *v76;
    v51 = v69;
    v52 = v45;
    while (v44 < *(*v51 + 16))
    {
      v53 = *v51 + 16 * v44;
      v54 = *(v53 + 32);
      v55 = *(v53 + 40);
      *v76 = v50;
      v57 = *(v50 + 16);
      v56 = *(v50 + 24);

      if (v57 >= v56 >> 1)
      {
        result = sub_21B231F10((v56 > 1), v57 + 1, 1);
        v44 = v74;
        v50 = *v76;
      }

      *(v50 + 16) = v57 + 1;
      v58 = v50 + 16 * v57;
      *(v58 + 32) = v54;
      *(v58 + 40) = v55;
      v51 += 48;
      if (!--v52)
      {
        v46 = v72;
        v42 = v73;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_29:
  v59 = v65;
  sub_21B34AD34();
  v60 = sub_21B34AC94();
  v62 = v61;
  result = (*(v66 + 8))(v59, v67);
  if (v62 >> 60 != 15)
  {

    sub_21B2803D4(&v85);

    return v60;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_21B27E9E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 8);
  v8 = swift_checkMetadataState();
  result = v7(v8, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_21B27EA8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 16);

  v10 = swift_checkMetadataState();
  return v9(v6, v7, v10, AssociatedConformanceWitness);
}

uint64_t sub_21B27EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v11;
  v19[6] = *(a2 + 96);
  v20 = *(a2 + 112);
  v12 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  (*(a5 + 24))(&v18, a3, a5);
  v14 = v18;

  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a1;
  v17[7] = v19;
  v15 = sub_21B29A070(sub_21B280628, v17, v14);

  return v15;
}

double sub_21B27EC54@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, void *a6@<X7>, _OWORD *a7@<X8>)
{
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = *(a3 + 80);
  v21[4] = *(a3 + 64);
  v21[5] = v16;
  v21[6] = *(a3 + 96);
  v22 = *(a3 + 112);
  v17 = *(a3 + 16);
  v21[0] = *a3;
  v21[1] = v17;
  v18 = *(a3 + 48);
  v21[2] = *(a3 + 32);
  v21[3] = v18;
  (*(*(v15 + 8) + 120))(v23, a2, v21, a4, a5, v14);
  if (v7)
  {
    *a6 = v7;
  }

  else
  {
    v20 = v23[1];
    *a7 = v23[0];
    a7[1] = v20;
    result = v24[0];
    a7[2] = *v24;
  }

  return result;
}

double sub_21B27ED48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v21 = (*(*(a5 + 8) + 16))(a3);
  v25 = v14;
  swift_getAssociatedTypeWitness();
  v20 = sub_21B34BD24();
  v16 = v15;
  v17 = sub_21B27EE6C(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
  }

  else
  {
    sub_21B3419B8(v21, v25, v20, v16, v17, v23);
    v19 = v23[1];
    *a7 = v23[0];
    a7[1] = v19;
    result = *&v24;
    a7[2] = v24;
  }

  return result;
}

uint64_t sub_21B27EE6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 80);
  v56 = *(v16 + 64);
  v57 = v17;
  v58 = *(v16 + 96);
  v59 = *(v16 + 112);
  v18 = *(v16 + 16);
  v52 = *v16;
  v53 = v18;
  v19 = *(v16 + 48);
  v54 = *(v16 + 32);
  v55 = v19;
  (*(v12 + 16))(v15, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
  if (swift_dynamicCast())
  {
    v46 = v49;
    v47 = v50;
    v48 = v51;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v23 = sub_21B27F2B8(a1, &v38, a4, a6, sub_21B280490, v20, v21, v22);

LABEL_8:

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
  if (swift_dynamicCast())
  {
    v46 = v49;
    v47 = v50;
    v48 = v51;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v27 = sub_21B27F2B8(a1, &v38, a4, a6, sub_21B2804BC, v24, v25, v26);
LABEL_7:
    v23 = v27;

    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
  if (swift_dynamicCast())
  {
    v46 = v49;
    v47 = v50;
    v48 = v51;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v27 = sub_21B27F360(a1, &v38, a4, a6, v28, v29, v30, v31);
    goto LABEL_7;
  }

  v37 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E148, &unk_21B352A20);
  v33 = swift_dynamicCast();
  if (v33)
  {
    v46 = v49;
    v47 = v50;
    v48 = v51;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v23 = sub_21B27F41C(a1, &v38, a4, v37);
  }

  else
  {
    MEMORY[0x28223BE20](v33);
    *(&v36 - 6) = a3;
    *(&v36 - 5) = a4;
    v34 = v37;
    *(&v36 - 4) = a5;
    *(&v36 - 3) = v34;
    *(&v36 - 2) = v6;
    *(&v36 - 1) = &v52;
    v23 = sub_21B23CCA8(sub_21B280468, (&v36 - 8), a4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v34, MEMORY[0x277D84AC0], v35);
  }

LABEL_9:
  (*(v12 + 8))(v15, a3);
  return v23;
}

uint64_t sub_21B27F2B8(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, void (*a5)(char *, char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v9;
  v17[6] = *(a2 + 96);
  v18 = *(a2 + 112);
  v10 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *v8;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v12;
  v15 = *(v8 + 1);
  v16 = v17;
  return sub_21B23CCA8(a5, v14, a3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a8);
}

uint64_t sub_21B27F360(uint64_t a1, __int128 *a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[5];
  v21 = a2[4];
  v22 = v9;
  v23 = a2[6];
  v24 = *(a2 + 14);
  v10 = a2[1];
  v18 = *a2;
  *v19 = v10;
  v11 = a2[3];
  *&v19[16] = a2[2];
  v20 = v11;
  v12 = *v8;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v12;
  v15 = *(v8 + 1);
  v16 = &v18;
  v17 = *&v19[8];
  return sub_21B23CCA8(sub_21B280540, v14, a3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a8);
}

uint64_t sub_21B27F41C(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v7 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v7;
  v17[6] = *(a2 + 96);
  v18 = *(a2 + 112);
  v8 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v8;
  v9 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v9;
  v10 = *v4;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v10;
  v14 = *(v4 + 1);
  v15 = v17;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  return sub_21B23CCA8(sub_21B280578, v13, a3, MEMORY[0x277D837D0], v11, a4, MEMORY[0x277D84950], &v16);
}

uint64_t sub_21B27F504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v39 = a6;
  v37 = a4;
  v38 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21B34B474();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v36 = &v35 - v21;
  v42 = *a1;
  v22 = *(*(*(a5 + 8) + 8) + 8);
  v23 = sub_21B34B314();
  (*(v11 + 16))(v15);
  v23(v40, 0);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v15, v10);
    v24 = *(a3 + 40);
    v25 = *(a3 + 48);
  }

  else
  {
    v27 = v36;
    (*(v16 + 32))(v36, v15, AssociatedTypeWitness);
    (*(v16 + 16))(v20, v27, AssociatedTypeWitness);
    v28 = sub_21B34AD54();
    v29 = *(a3 + 80);
    v40[4] = *(a3 + 64);
    v40[5] = v29;
    v40[6] = *(a3 + 96);
    v41 = *(a3 + 112);
    v30 = *(a3 + 16);
    v40[0] = *a3;
    v40[1] = v30;
    v31 = *(a3 + 48);
    v40[2] = *(a3 + 32);
    v40[3] = v31;
    v24 = sub_21B27F7F8(v40, v28, v32);
    v25 = v33;

    result = (*(v16 + 8))(v27, AssociatedTypeWitness);
  }

  v34 = v39;
  *v39 = v24;
  v34[1] = v25;
  return result;
}

uint64_t sub_21B27F7F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 112);
  v15 = *(a1 + 104);
  v16 = v5;
  v14[2] = &v15;
  if (sub_21B280258(sub_21B2804E8, v14, a2, a3))
  {
    goto LABEL_5;
  }

  v15 = v4;
  v16 = a3;
  v19 = 34;
  v20 = 0xE100000000000000;
  sub_21B233B24();
  if (sub_21B34B4F4())
  {
    goto LABEL_5;
  }

  v15 = v4;
  v16 = a3;
  v19 = 13;
  v20 = 0xE100000000000000;
  if (sub_21B34B4F4() & 1) != 0 || (v15 = v4, v16 = a3, v19 = 10, v20 = 0xE100000000000000, (sub_21B34B4F4()))
  {
LABEL_5:
    v6 = 0xE000000000000000;
    v19 = 0;
    v20 = 0xE000000000000000;
    v7 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v15 = v4;
    v16 = a3;
    v17 = 0;
    v18 = v7;

    v8 = sub_21B34AE14();
    v10 = v9;
    if (v9)
    {
      v11 = v8;
      do
      {
        if (v11 == 34 && v10 == 0xE100000000000000 || (sub_21B34B9F4() & 1) != 0)
        {

          MEMORY[0x21CEED5E0](8738, 0xE200000000000000);
        }

        else
        {
          MEMORY[0x21CEED5D0](v11, v10);
        }

        v11 = sub_21B34AE14();
        v10 = v12;
      }

      while (v12);
      v10 = v19;
      v6 = v20;
    }

    v15 = 34;
    v16 = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v10, v6);

    MEMORY[0x21CEED5E0](34, 0xE100000000000000);
    return v15;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_21B27FA20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  v4 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8[1];
  if (v4 >= v9)
  {
LABEL_11:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v10 = *(a2 + 24);
  v11 = sub_21B2B18C4(v4, v8, v9);
  if (v11 == 2)
  {
    v13 = a3[5];
    v12 = a3[6];
  }

  else if (v11)
  {
    v13 = a3[7];
    v12 = a3[8];
  }

  else
  {
    v13 = a3[9];
    v12 = a3[10];
  }

  *a4 = v13;
  a4[1] = v12;
}

uint64_t sub_21B27FB20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8[1];
  if (v4 >= v9)
  {
LABEL_9:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v10 = *(a2 + 24);
  sub_21B2B1790(v4, v8, v9);
  if (v11)
  {
    v13 = *(a3 + 40);
    v12 = *(a3 + 48);
  }

  else
  {
    v15 = sub_21B34B0A4();
    v16 = *(a3 + 80);
    v21[4] = *(a3 + 64);
    v21[5] = v16;
    v21[6] = *(a3 + 96);
    v22 = *(a3 + 112);
    v17 = *(a3 + 16);
    v21[0] = *a3;
    v21[1] = v17;
    v18 = *(a3 + 48);
    v21[2] = *(a3 + 32);
    v21[3] = v18;
    v13 = sub_21B27F7F8(v21, v15, v19);
    v12 = v20;
  }

  *a4 = v13;
  a4[1] = v12;
  return result;
}

uint64_t sub_21B27FC64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(char *)@<X5>, uint64_t *a5@<X8>)
{
  v32 = a5;
  v9 = sub_21B34A834();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - v16;
  v18 = *a1;
  if (v18 < 0)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v19 = *(a2 + 16);
  if (!v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v18 >= v19[1])
  {
LABEL_9:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v20 = *(a2 + 24);
  sub_21B2B194C(v18, v19, v17);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    v22 = *(a3 + 40);
    v21 = *(a3 + 48);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    v24 = a4(v13);
    v25 = *(a3 + 80);
    v33[4] = *(a3 + 64);
    v33[5] = v25;
    v33[6] = *(a3 + 96);
    v34 = *(a3 + 112);
    v26 = *(a3 + 16);
    v33[0] = *a3;
    v33[1] = v26;
    v27 = *(a3 + 48);
    v33[2] = *(a3 + 32);
    v33[3] = v27;
    v22 = sub_21B27F7F8(v33, v24, v28);
    v21 = v29;

    result = (*(v10 + 8))(v13, v9);
  }

  v30 = v32;
  *v32 = v22;
  v30[1] = v21;
  return result;
}

uint64_t sub_21B27FEF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X7>, uint64_t *a7@<X8>)
{
  v30 = a6;
  v13 = sub_21B34AD44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  v16 = *(a4 + 16);
  if (!v16)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v15 >= v16[1])
  {
LABEL_10:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v17 = *(a4 + 24);
  sub_21B2B1AE0(v15, v16, &v29);
  v18 = *(&v29 + 1);
  if (*(&v29 + 1) >> 60 == 15)
  {
    v19 = *(a5 + 48);
    *a7 = *(a5 + 40);
    a7[1] = v19;
  }

  else
  {
    v21 = v29;
    sub_21B34AD34();
    v22 = sub_21B34ACA4();
    if (v23)
    {
      v24 = sub_21B27F7F8(a5, v22, v23);
      v26 = v25;
      sub_21B260C58(v21, v18);

      *a7 = v24;
      a7[1] = v26;
    }

    else
    {
      sub_21B2805D4();
      v27 = swift_allocError();
      *v28 = v15;
      v28[1] = a2;
      v28[2] = a3;
      v28[3] = v21;
      v28[4] = v18;
      swift_willThrow();
      *v30 = v27;
    }
  }

  return result;
}

double sub_21B280100@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = sub_21B27ED48(a1, a2, a5, a3, WitnessTable, a4, v16);
  if (!v6)
  {
    v15 = v16[1];
    *a6 = v16[0];
    a6[1] = v15;
    result = *&v17;
    a6[2] = v17;
  }

  return result;
}

double sub_21B2801AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = sub_21B27ED48(a1, a2, a5, a3, WitnessTable, a4, v16);
  if (!v6)
  {
    v15 = v16[1];
    *a6 = v16[0];
    a6[1] = v15;
    result = *&v17;
    a6[2] = v17;
  }

  return result;
}

uint64_t sub_21B280258(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_21B34AE14();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_21B34AE14();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

double sub_21B280328@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = sub_21B27ED48(a1, a2, a5, a3, WitnessTable, a4, v16);
  if (!v6)
  {
    v15 = v16[1];
    *a6 = v16[0];
    a6[1] = v15;
    result = *&v17;
    a6[2] = v17;
  }

  return result;
}

uint64_t sub_21B2803D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B280468@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[5];
  return sub_21B27F504(a1, v2[6], v2[7], v2[2], v2[4], a2);
}

uint64_t sub_21B2804E8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B34B9F4() & 1;
  }
}

uint64_t sub_21B280540@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v2 + 72);
  v8 = *(v2 + 24);
  return sub_21B27FC64(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64), a2);
}

unint64_t sub_21B2805D4()
{
  result = qword_27CD7E850;
  if (!qword_27CD7E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E850);
  }

  return result;
}

double sub_21B280628@<D0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[4];
  return sub_21B27EC54(a1, v3[6], v3[7], v3[3], v3[5], a2, a3);
}

uint64_t DataFrame.Slice.columns.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[3];
    v5 = v0[4];
    v6 = *(v0 + 40);
    v21 = MEMORY[0x277D84F90];
    sub_21B254014(0, v2, 0);
    v3 = v21;
    v7 = v1 + 32;
    do
    {
      sub_21B233A74(v7, v16);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(*(v9 + 8) + 160))(v19, v4, v5, v6, v8);
      sub_21B233960(v16);
      v21 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B254014((v10 > 1), v11 + 1, 1);
        v3 = v21;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 40 * v11;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 64) = v20;
      *(v12 + 32) = v13;
      *(v12 + 48) = v14;
      v7 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t DataFrame.Slice.rows.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v1 + 40);
  *(a1 + 40) = v6;

  return sub_21B254074(v4, v5, v6);
}

uint64_t DataFrame.Slice.base.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_21B280850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  v6 = *(a1 + 40);
  *(a2 + 40) = v6;

  return sub_21B254074(v4, v5, v6);
}

uint64_t sub_21B2808D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v8 = v5;

  sub_21B254074(v3, v4, v5);
  return DataFrame.Slice.rows.setter(v7);
}

uint64_t DataFrame.Slice.rows.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = sub_21B2FB104(v5, v6, v7);
  v36 = *(v8 + 16);
  if (!v36)
  {

    return sub_21B23A9F4(v5, v6, v7);
  }

  v31 = v7;
  v32 = v6;
  v33 = v5;
  v9 = 0;
  v35 = v8 + 32;
  v10 = *v2;
  v11 = *(v2 + 16);
  v40 = v11;
  v41 = *(v2 + 8);
  v34 = v2;
  while (1)
  {
    v15 = *(v35 + 8 * v9);
    if (*(v10 + 2))
    {
      sub_21B233A74((v10 + 32), v43);
      v16 = v44;
      v17 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v18 = *(v17 + 8);
      v38 = *(v18 + 48);

      v19 = v38(v16, v18);
      sub_21B233960(v43);
      if (v19 < 0)
      {
        goto LABEL_25;
      }

      if (v19)
      {
        v20 = 0;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v19 = 0;
    v20 = 2;
LABEL_11:
    v21 = *(v3 + 16);
    if (v21 != *(v10 + 2))
    {
      goto LABEL_27;
    }

    if (v21)
    {
      break;
    }

LABEL_4:
    ++v9;
    v12 = *v2;
    v13 = *(v2 + 8);
    v14 = *(v2 + 16);

    sub_21B23A9F4(0, v19, v20);
    *v2 = v10;
    *(v2 + 8) = v41;
    *(v2 + 16) = v40;
    if (v9 == v36)
    {

      return sub_21B23A9F4(v33, v32, v31);
    }
  }

  v39 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_21B23A2F4(v10);
  }

  if (v21 <= *(v3 + 16))
  {
    v37 = v19;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      sub_21B233A74(v3 + v22 + 32, v43);
      if (v23 >= *(v10 + 2))
      {
        break;
      }

      ++v23;
      v24 = v44;
      v25 = v45;
      v26 = __swift_project_boxed_opaque_existential_1(v43, v44);
      v42[3] = v24;
      v42[4] = *(v25 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
      v28 = *&v10[v22 + 56];
      v29 = *&v10[v22 + 64];
      __swift_mutable_project_boxed_opaque_existential_1(&v10[v22 + 32], v28);
      (*(v29 + 72))(v15, v15, v42, v28, v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      sub_21B233960(v43);
      v22 += 40;
      if (v21 == v23)
      {

        v2 = v34;
        v19 = v37;
        v20 = v39;
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
LABEL_27:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

void (*DataFrame.Slice.rows.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + 40);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 32) = v9;
  *(v4 + 40) = v10;

  sub_21B254074(v8, v9, v10);
  return sub_21B280E3C;
}

void sub_21B280E3C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = *(*a1 + 40);
  v8 = (*a1)[6];
  v15[0] = **a1;
  v15[1] = v3;
  v15[2] = v5;
  v15[3] = v4;
  v15[4] = v6;
  v16 = v7;
  if (a2)
  {

    sub_21B254074(v4, v6, v7);
    DataFrame.Slice.rows.setter(v15);
    v9 = *v2;
    v10 = v2[1];
    v11 = v2[2];
    v12 = v2[3];
    v13 = v2[4];
    v14 = *(v2 + 40);

    sub_21B23A9F4(v12, v13, v14);
  }

  else
  {
    DataFrame.Slice.rows.setter(v15);
  }

  free(v2);
}

uint64_t DataFrame.Slice.shape.getter()
{
  v1 = *(v0 + 2);
  v2 = sub_21B2FB1D4(*(v0 + 3), *(v0 + 4), *(v0 + 40));
  v5 = *v0;
  v3 = *(DataFrame.Slice.columns.getter() + 16);

  return v2;
}

uint64_t sub_21B280FB4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_21B281000@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v1 + 40);
  *(a1 + 40) = v6;

  return sub_21B254074(v4, v5, v6);
}

void (*sub_21B281080(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DataFrame.Slice.rows.modify(v2);
  return sub_21B2444C0;
}

uint64_t sub_21B2810F4()
{
  v1 = *(v0 + 2);
  v2 = sub_21B2FB1D4(*(v0 + 3), *(v0 + 4), *(v0 + 40));
  v5 = *v0;
  v3 = *(DataFrame.Slice.columns.getter() + 16);

  return v2;
}

uint64_t sub_21B281178(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + 40);
  v15[0] = *v2;
  v15[1] = v6;
  v15[2] = v8;

  v11 = sub_21B23AC94(a1, a2);

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v5 + 16))
  {
    sub_21B233A74(v5 + 40 * v11 + 32, v15);
    v13 = v16;
    v14 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(*(v14 + 8) + 160))(v7, v9, v10, v13);
    return sub_21B233960(v15);
  }

  __break(1u);
  return result;
}

void DataFrame.Slice.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = *(v3 + 40);
  v20 = *v3;
  *&v21 = v7;
  *(&v21 + 1) = v8;
  sub_21B254074(v9, v10, v11);

  v12 = sub_21B23AC94(a1, a2);

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(v6 + 16))
  {
    sub_21B233A74(v6 + 40 * v12 + 32, v30);
    sub_21B3338E8();
    sub_21B233960(v30);
    v24 = v27;
    v25 = v28;
    v26 = v29;
    v16 = v9;
    *&v17 = v10;
    BYTE8(v17) = v11;
    v13 = type metadata accessor for Column();
    WitnessTable = swift_getWitnessTable();
    sub_21B283B30(&v16, v13, WitnessTable, &v20);
    sub_21B23A9F4(v9, v10, v11);

    v16 = v20;
    v17 = v21;
    v18 = v22;
    v19 = v23;
    sub_21B2D3BC4(&v16, a3);
    return;
  }

  __break(1u);
}

void DataFrame.Slice.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + 40);
  v19 = *v2;
  *&v20 = v6;
  *(&v20 + 1) = v7;
  sub_21B254074(v8, v9, v10);

  v11 = sub_21B23AC94(v3, v4);

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v5 + 16))
  {
    sub_21B233A74(v5 + 40 * v11 + 32, v29);
    sub_21B3338E8();
    sub_21B233960(v29);
    v23 = v26;
    v24 = v27;
    v25 = v28;
    v15 = v8;
    *&v16 = v9;
    BYTE8(v16) = v10;
    v12 = type metadata accessor for Column();
    WitnessTable = swift_getWitnessTable();
    sub_21B283B30(&v15, v12, WitnessTable, &v19);
    sub_21B23A9F4(v8, v9, v10);

    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    sub_21B2D3BC4(&v15, a2);
    return;
  }

  __break(1u);
}

void DataFrame.Slice.subscript.getter(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a1)
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    sub_21B233A74(*v2 + 40 * a1 + 32, &v13);
    sub_21B254074(v4, v5, v6);
    sub_21B3338E8();
    sub_21B233960(&v13);
    v17 = v20;
    v18 = v21;
    v19 = v22;
    v9 = v4;
    *&v10 = v5;
    BYTE8(v10) = v6;
    v7 = type metadata accessor for Column();
    WitnessTable = swift_getWitnessTable();
    sub_21B283B30(&v9, v7, WitnessTable, &v13);
    sub_21B23A9F4(v4, v5, v6);

    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
    sub_21B2D3BC4(&v9, a2);
    return;
  }

  __break(1u);
}

double DataFrame.Slice.subscript.getter@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  *a4 = *v4;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  v13 = *(v4 + 40);
  *(a4 + 40) = v13;

  sub_21B254074(v11, v12, v13);

  DataFrame.selecting<A>(columnNames:)(a1, a2, a3, &v16);

  v14 = v17;

  result = *&v16;
  *a4 = v16;
  *(a4 + 16) = v14;
  return result;
}

uint64_t DataFrame.Slice.filter<A>(on:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7[1];
  v13 = v7[2];
  v28 = v7[4];
  v29 = v7[3];
  v27 = *(v7 + 40);
  v37 = *v7;
  v34 = v37;
  v35 = v12;
  v30 = v12;
  v36 = v13;
  DataFrame.subscript.getter(&v31, a1, a2, a3, a6);
  v34 = v31;
  v35 = v32;
  v36 = v33;
  v14 = type metadata accessor for Column();
  WitnessTable = swift_getWitnessTable();
  sub_21B2D2874(a4, a5, v14, WitnessTable, &v31);
  if (v8)
  {
  }

  else
  {
    v17 = v31;
    v24 = v31;
    v25 = v32;
    v26 = v13;
    v18 = v33;

    sub_21B254074(v29, v28, v27);
    v19 = sub_21B248CCC(v17, v25, v18, v29, v28, v27);
    v21 = v20;
    v23 = v22;

    result = sub_21B23A9F4(v24, v25, v18);
    *a7 = v37;
    *(a7 + 8) = v30;
    *(a7 + 16) = v26;
    *(a7 + 24) = v19;
    *(a7 + 32) = v21;
    *(a7 + 40) = v23;
  }

  return result;
}

uint64_t DataFrame.Slice.filter<A>(on:_:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = v4[1];
  v12 = v4[2];
  v28 = v4[3];
  v27 = v4[4];
  v26 = *(v4 + 40);
  v37 = *v4;
  v34 = v37;
  v35 = v11;
  v29 = v11;
  v30[0] = v10;
  v36 = v12;
  v30[1] = v9;

  DataFrame.subscript.getter(v30);

  v34 = v31;
  v35 = v32;
  v36 = v33;
  v13 = type metadata accessor for Column();
  WitnessTable = swift_getWitnessTable();
  sub_21B2D2874(a2, a3, v13, WitnessTable, &v31);
  if (v5)
  {
  }

  else
  {
    v16 = v31;
    v23 = v31;
    v24 = v32;
    v25 = v12;
    v17 = v33;

    sub_21B254074(v28, v27, v26);
    v18 = sub_21B248CCC(v16, v24, v17, v28, v27, v26);
    v20 = v19;
    v22 = v21;

    result = sub_21B23A9F4(v23, v24, v17);
    *a4 = v37;
    *(a4 + 8) = v29;
    *(a4 + 16) = v25;
    *(a4 + 24) = v18;
    *(a4 + 32) = v20;
    *(a4 + 40) = v22;
  }

  return result;
}

uint64_t DataFrame.Slice.prefix(through:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[3];
    v5 = v2[4];
    v7 = v2[1];
    v8 = v2[2];
    v9 = *v2;
    v10 = *(v2 + 40);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_21B254074(v6, v5, v10);
    sub_21B254074(v6, v5, v10);

    sub_21B23A9F4(v6, v5, v10);
    v11 = sub_21B2FB03C(v3, v6, v5, v10);
    v13 = v12;
    v15 = v14;
    result = sub_21B23A9F4(v6, v5, v10);
    *a2 = v9;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v11;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
  }

  return result;
}

uint64_t sub_21B281D40@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + 40);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21B254074(v10, v11, v12);
  sub_21B254074(v10, v11, v12);

  sub_21B23A9F4(v10, v11, v12);
  v13 = a2(a1, v10, v11, v12);
  v15 = v14;
  LOBYTE(a1) = v16;
  result = sub_21B23A9F4(v10, v11, v12);
  *a3 = v8;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  *(a3 + 40) = a1;
  return result;
}

uint64_t DataFrame.Slice.suffix(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + 40);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21B254074(v8, v9, v10);
  sub_21B254074(v8, v9, v10);

  sub_21B23A9F4(v8, v9, v10);
  sub_21B2A6400(v8, v9, v10);
  v12 = v11;
  v14 = v13;
  sub_21B254074(v8, v9, v10);

  result = sub_21B23A9F4(v8, v9, v10);
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v16 < a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v19 = v18 == a1;
  if (v18 == a1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a1;
  }

  if (v18 == a1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v22 = 2 * v19;
  v23 = sub_21B248CCC(v20, v21, 2 * v19, v8, v9, v10);
  v25 = v24;
  v27 = v26;
  result = sub_21B23A9F4(v20, v21, v22);
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  return result;
}

double DataFrame.Slice.selecting<A>(columnNames:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = *(v4 + 2);
  v8 = *(v4 + 24);
  v9 = *(v4 + 40);
  return DataFrame.Slice.subscript.getter(a1, a2, a3, a4);
}

double DataFrame.Slice.selecting(columnNames:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  v10 = *(v2 + 40);
  *(a2 + 40) = v10;

  sub_21B254074(v8, v9, v10);
  sub_21B24377C(a1, v5, v6, v7, &v13);
  v11 = v14;

  result = *&v13;
  *a2 = v13;
  *(a2 + 16) = v11;
  return result;
}

uint64_t static DataFrame.Slice.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v9 = a2[1];
  v3 = *(a2 + 4);
  v4 = *(a2 + 40);
  v11 = *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v5 = DataFrame.Slice.columns.getter();
  v10 = *a2;
  v6 = DataFrame.Slice.columns.getter();
  v7 = sub_21B247210(v5, v6);

  return v7 & 1;
}

uint64_t DataFrame.Slice.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 40);
  v10 = *v1;
  v11 = v3;
  v12 = *(v1 + 24);
  v13 = v4;
  v5 = DataFrame.Slice.columns.getter();
  MEMORY[0x21CEEE3B0](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_21B25EFA4(v7, v9);
      AnyColumnSlice.hash(into:)(a1);
      sub_21B25F000(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

uint64_t DataFrame.Slice.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 40);
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  sub_21B34BBC4();
  DataFrame.Slice.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t sub_21B2822E4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 40);
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  sub_21B34BBC4();
  DataFrame.Slice.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t sub_21B28234C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 40);
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  sub_21B34BBC4();
  DataFrame.Slice.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t sub_21B2823AC(__int128 *a1, __int128 *a2)
{
  v9 = a2[1];
  v3 = *(a2 + 4);
  v4 = *(a2 + 40);
  v11 = *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v5 = DataFrame.Slice.columns.getter();
  v10 = *a2;
  v6 = DataFrame.Slice.columns.getter();
  v7 = sub_21B247210(v5, v6);

  return v7 & 1;
}

unint64_t sub_21B282474()
{
  result = qword_27CD7E858;
  if (!qword_27CD7E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E858);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11TabularData16_RangeSetStorageV01_E033_8A630413E119DDD252E1F6455D72654FLLOySi_G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B2824F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21B282540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21B2825A4(const char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    __break(1u);
  }

  v14[0] = &a1[a3];
  v8 = a1[a3];
  a1[a3] = 0;
  v9 = strtof(a1, v14);
  if (v14[0])
  {
    v10 = v14[0] == a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  v12 = v9;
  if (!v10)
  {
    v12 = 0.0;
  }

  *a4 = v12;
  *(a4 + 4) = v11;
  a1[a3] = v8;
  v13 = *MEMORY[0x277D85DE8];
}

void sub_21B282660(const char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    __break(1u);
  }

  v14[0] = &a1[a3];
  v8 = a1[a3];
  a1[a3] = 0;
  v9 = strtod(a1, v14);
  if (v14[0])
  {
    v10 = v14[0] == a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  v12 = v9;
  if (!v10)
  {
    v12 = 0.0;
  }

  *a4 = v12;
  *(a4 + 8) = v11;
  a1[a3] = v8;
  v13 = *MEMORY[0x277D85DE8];
}

unint64_t sub_21B28271C(uint64_t a1, unint64_t a2)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_21B2E1664();
    v10 = v9;

    a2 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    sub_21B2825A4(v15, v15 + (HIBYTE(a2) & 0xF), HIBYTE(a2) & 0xF, &v13);
    v7 = v13;
    v8 = v14;
    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_21B34B6F4();
    v5 = v12;
  }

  if (v4)
  {
    v6 = &v4[v5];
  }

  else
  {
    v6 = 0;
  }

  sub_21B2825A4(v4, v6, v5, v15);
  v7 = v15[0];
  v8 = BYTE4(v15[0]);
LABEL_11:

  LOBYTE(v15[0]) = v8;
  return v7 | (v8 << 32);
}

uint64_t sub_21B282818(uint64_t a1, unint64_t a2)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_21B2E1664();
    v9 = v8;

    a2 = v9;
    if ((v9 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13[0] = a1;
    v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    sub_21B282660(v13, v13 + (HIBYTE(a2) & 0xF), HIBYTE(a2) & 0xF, &v12);
    v7 = v12;
    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_21B34B6F4();
    v5 = v11;
  }

  if (v4)
  {
    v6 = &v4[v5];
  }

  else
  {
    v6 = 0;
  }

  sub_21B282660(v4, v6, v5, v13);
  v7 = v13[0];
LABEL_11:

  return v7;
}

uint64_t sub_21B28290C@<X0>(unsigned __int8 a1@<W0>, int64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21B34AD44();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v28 = *a2;
        if ((*a2 & 7) != 0)
        {
          result = sub_21B34A1CC();
LABEL_46:
          *(a3 + 24) = MEMORY[0x277D839F8];
          goto LABEL_47;
        }

LABEL_45:
        result = *v28;
        *a2 = v28 + 1;
        goto LABEL_46;
      }

      v11 = *a2;
      if ((*a2 & 7) != 0)
      {
        result = sub_21B34A1CC();
LABEL_43:
        v28 = MEMORY[0x277D83B88];
        *(a3 + 24) = MEMORY[0x277D83B88];
        if ((result & 0x8000000000000000) == 0)
        {
LABEL_47:
          *a3 = result;
          return result;
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_42:
      result = *v11;
      *a2 = v11 + 1;
      goto LABEL_43;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v10 = *a2;
        if ((*a2 & 7) != 0)
        {
          v12 = sub_21B34A1CC();
          if ((v12 & 0x8000000000000000) == 0)
          {
LABEL_7:
            v13 = sub_21B24A5FC(0, v12, 0, MEMORY[0x277D84F90]);
            if (v12)
            {
              v14 = *a2;
              do
              {
                v16 = *v14++;
                v15 = v16;
                v18 = *(v13 + 2);
                v17 = *(v13 + 3);
                if (v18 >= v17 >> 1)
                {
                  v13 = sub_21B24A5FC((v17 > 1), v18 + 1, 1, v13);
                }

                *(v13 + 2) = v18 + 1;
                v19 = &v13[16 * v18];
                *(v19 + 4) = v15;
                v19[40] = 0;
                --v12;
              }

              while (v12);
              *a2 = v14;
            }

            result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7E870, &unk_21B352BC0);
            *(a3 + 24) = result;
            *a3 = v13;
            return result;
          }

          goto LABEL_41;
        }

LABEL_40:
        v30 = *v10;
        v11 = v10 + 1;
        v12 = v30;
        *a2 = v11;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      result = sub_21B2830FC(a2);
      if (v3)
      {
        return result;
      }

      v22 = result;
      v23 = &qword_27CD7E868;
      v24 = &qword_21B352BB8;
LABEL_30:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
      *(a3 + 24) = result;
      *a3 = v22;
      return result;
    }

    v25 = *a2;
    if ((*a2 & 7) != 0)
    {
      v26 = sub_21B34A1CC();
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v29 = *v25;
      v10 = v25 + 1;
      v26 = v29;
      *a2 = v10;
      if ((v29 & 0x8000000000000000) == 0)
      {
LABEL_25:
        *a2 = (*a2 + v26);
        sub_21B34AD34();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
        sub_21B28325C();
        result = sub_21B34ACB4();
        if (v27)
        {
          *(a3 + 24) = MEMORY[0x277D837D0];
          *a3 = result;
          *(a3 + 8) = v27;
          return result;
        }

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      result = sub_21B282CA8(a2);
      if (v3)
      {
        return result;
      }

      v22 = result;
      v23 = &qword_27CD7E860;
      v24 = &qword_21B352BB0;
      goto LABEL_30;
    }

    sub_21B239564();
    swift_allocError();
    v21 = xmmword_21B352700;
LABEL_36:
    *v20 = v21;
    *(v20 + 16) = 2;
    return swift_willThrow();
  }

  if (a1 == 7)
  {
LABEL_27:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a1 == 8)
  {
    sub_21B239564();
    swift_allocError();
    v21 = xmmword_21B3526F0;
    goto LABEL_36;
  }

  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E330, &qword_21B351C48);
  result = sub_21B327FEC(a2, a3);
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a3);
  }

  return result;
}

uint64_t sub_21B282CA8(void **a1)
{
  v5 = *a1;
  if ((*a1 & 7) != 0)
  {
    v1 = a1;
    v6 = sub_21B34A1CC();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    v34 = v1;
    sub_21B239564();
    swift_allocError();
    *v23 = v3;
    *(v23 + 8) = 0;
    *(v23 + 16) = 2;
    swift_willThrow();
    v1 = v34;
LABEL_34:

    return v1;
  }

  v6 = *v5;
  *a1 = v5 + 1;
  if (v6 < 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v34 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E860, &qword_21B352BB0);
  sub_21B34A9E4();
  v1 = v34;
  if (!v6)
  {
    return v1;
  }

  while (1)
  {
    v3 = **a1;
    *a1 = (*a1 + 1);
    if (((v3 - 128) & 0xFFFFFF00) != 0)
    {
      break;
    }

    if ((v3 + 0x80) > 9u)
    {
      goto LABEL_27;
    }

    sub_21B28290C(v28);
    if (v2)
    {
      v34 = v1;
      goto LABEL_34;
    }

    if (!v28[3])
    {
      v34 = v1;
      sub_21B261664(v28, &qword_27CD7E0F8, &unk_21B3557C0);
      v29 = 0u;
      v30 = 0u;
      v31 = 0;
      goto LABEL_32;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
LABEL_31:
      v34 = v1;
LABEL_32:

      sub_21B261664(&v29, &qword_27CD7E200, &unk_21B352050);
      v1 = 0x800000021B34CA70;
      sub_21B239564();
      swift_allocError();
      *v24 = 0xD000000000000021;
      *(v24 + 8) = 0x800000021B34CA70;
      *(v24 + 16) = 3;
      swift_willThrow();
      return v1;
    }

    if (!*(&v30 + 1))
    {
      goto LABEL_31;
    }

    v32[0] = v29;
    v32[1] = v30;
    v33 = v31;
    v7 = **a1;
    *a1 = (*a1 + 1);
    if (((v7 - 128) & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

    if ((v7 + 0x80) > 9u)
    {
      v34 = v1;
      sub_21B239564();
      swift_allocError();
      *v25 = v7;
      *(v25 + 8) = 0;
      *(v25 + 16) = 2;
      swift_willThrow();
      v1 = v34;
      sub_21B260E14(v32);
      goto LABEL_34;
    }

    sub_21B28290C(v28);
    sub_21B260E68(v32, &v29);
    sub_21B2832C0(v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_21B24B560(&v29);
    v11 = v1[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_38;
    }

    v15 = v10;
    if (v1[3] < v14)
    {
      sub_21B24D62C(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_21B24B560(&v29);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_40;
      }

LABEL_20:
      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v22 = v9;
    sub_21B252D68();
    v9 = v22;
    if (v15)
    {
LABEL_5:
      sub_21B283330(v27, v1[7] + 32 * v9);
      sub_21B260E14(&v29);
      sub_21B261664(v28, &qword_27CD7E0F8, &unk_21B3557C0);
      sub_21B260E14(v32);
      goto LABEL_6;
    }

LABEL_21:
    v1[(v9 >> 6) + 8] |= 1 << v9;
    v17 = v9;
    sub_21B260E68(&v29, v1[6] + 40 * v9);
    v18 = (v1[7] + 32 * v17);
    v19 = v27[1];
    *v18 = v27[0];
    v18[1] = v19;
    sub_21B260E14(&v29);
    sub_21B261664(v28, &qword_27CD7E0F8, &unk_21B3557C0);
    sub_21B260E14(v32);
    v20 = v1[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v13)
    {
      goto LABEL_39;
    }

    v1[2] = v21;
LABEL_6:
    if (!--v6)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

unint64_t sub_21B2830FC(int64_t **a1)
{
  v3 = v2;
  v5 = *a1;
  if ((*a1 & 7) != 0)
  {
    v6 = sub_21B34A1CC();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    sub_21B239564();
    swift_allocError();
    *v12 = v3;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
LABEL_14:

    return v1;
  }

  v6 = *v5;
  *a1 = v5 + 1;
  if (v6 < 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  v1 = sub_21B24A6FC(0, v6, 0, MEMORY[0x277D84F90]);
  if (!v6)
  {
    return v1;
  }

  while (1)
  {
    v3 = **a1;
    *a1 = (*a1 + 1);
    result = (v3 - 128);
    if ((result & 0xFFFFFF00) != 0)
    {
      break;
    }

    if ((v3 + 0x80) > 9u)
    {
      goto LABEL_13;
    }

    sub_21B28290C(v13);
    if (v2)
    {
      goto LABEL_14;
    }

    v9 = v1[2];
    v8 = v1[3];
    if (v9 >= v8 >> 1)
    {
      v1 = sub_21B24A6FC((v8 > 1), v9 + 1, 1, v1);
    }

    v1[2] = v9 + 1;
    v10 = &v1[4 * v9];
    v11 = v13[1];
    *(v10 + 2) = v13[0];
    *(v10 + 3) = v11;
    if (!--v6)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B28325C()
{
  result = qword_27CD7E7F8;
  if (!qword_27CD7E7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E7F0, &qword_21B355E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E7F8);
  }

  return result;
}

uint64_t sub_21B2832C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B283330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B2833A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = type metadata accessor for _RangeSet();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B28348C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = ((*(v8 + 64) + v9) & ~v9) + *(v8 + 64);
  v11 = 8;
  if (v10 > 8)
  {
    v11 = v10;
  }

  if (v7 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 | 7;
  v14 = v13 + *(v6 + 64);
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v15 = v11 + (v14 & ~v13) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v7 < 0xFD)
      {
        v24 = *(((a1 + v14) & ~v13) + v11);
        if (v24 >= 3)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v23 = *(v6 + 48);

        return v23(a1, v7, v5);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_17:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_21B2836F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  v12 = ((*(v10 + 64) + v11) & ~v11) + *(v10 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (v9 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = v9;
  }

  v14 = v11 | 7;
  v15 = v14 + *(v8 + 64);
  v16 = v12 + (v15 & ~v14) + 1;
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v12 + (v15 & ~v14) != -1)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFD)
  {
    v24 = (&a1[v15] & ~v14);
    if (a2 > 0xFD)
    {
      v25 = (v12 + 1);
      v26 = -1 << (8 * (v12 + 1));
      if (v25 <= 3)
      {
        v27 = ~v26;
      }

      else
      {
        v27 = -1;
      }

      if (v25)
      {
        v28 = v27 & (a2 - 254);
        if (v25 <= 3)
        {
          v29 = v25;
        }

        else
        {
          v29 = 4;
        }

        bzero(v24, v25);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v24 = v28;
            v24[2] = BYTE2(v28);
          }

          else
          {
            *v24 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v24 = v28;
        }

        else
        {
          *v24 = v28;
        }
      }
    }

    else
    {
      v24[v12] = -a2;
    }
  }

  else
  {
    v23 = *(v30 + 56);

    v23(a1, a2, v9, v7);
  }
}

uint64_t sub_21B283A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21B283B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for _RangeSet();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - v14;
  v16 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v5, a2);
  (*(v11 + 16))(v15, a1, v10);
  return sub_21B283D00(v18, v15, a2, a4);
}

uint64_t sub_21B283D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for _DiscontiguousSlice() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for _RangeSet();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t sub_21B283E1C()
{
  swift_getAssociatedTypeWitness();
  v0 = *(type metadata accessor for _DiscontiguousSlice.Index() + 36);
  swift_getAssociatedConformanceWitness();
  return sub_21B34AB94() & 1;
}

uint64_t sub_21B283ED0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  v2 = *(type metadata accessor for _DiscontiguousSlice.Index() + 36);
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_21B34AC54() & 1;
}

uint64_t sub_21B283F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for _DiscontiguousSlice.Index() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(&a3[v5], a2, AssociatedTypeWitness);
}

uint64_t sub_21B284050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_21B283E1C();
}

uint64_t sub_21B284068(uint64_t a1, uint64_t a2)
{
  MEMORY[0x21CEEE3B0](*v2);
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  return sub_21B34AAB4();
}

uint64_t sub_21B2840E4(uint64_t a1)
{
  sub_21B34BBC4();
  sub_21B284068(v3, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B28413C(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_21B283ED0(a1, a2);
}

uint64_t sub_21B284158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  sub_21B284068(v6, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2841AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v25 - v9;
  v30 = v6;
  v31 = v5;
  swift_getAssociatedConformanceWitness();
  v10 = sub_21B34B424();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = type metadata accessor for _RangeSet();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v25 - v18;
  v20 = *(a1 + 36);
  if (sub_21B2972F0(v17))
  {
    v21 = v32;

    return sub_21B2844B4(a1, v21);
  }

  else
  {
    (*(v15 + 16))(v19, v3 + v20, v14);
    v23 = type metadata accessor for _RangeSetStorage();
    sub_21B2D91CC(0, v23, v13);
    (*(*(v23 - 8) + 8))(v19, v23);
    v24 = v29;
    (*(v28 + 16))(v29, v13, AssociatedTypeWitness);
    (*(v26 + 8))(v13, v27);
    return sub_21B283F9C(0, v24, v32);
  }
}

uint64_t sub_21B2844B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v20 - v10;
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for _RangeSet();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  (*(v16 + 16))(&v20 - v14, v3 + *(a1 + 36));
  v17 = type metadata accessor for _RangeSetStorage();
  v18 = sub_21B2DBB54(v17);
  (*(*(v17 - 8) + 8))(v15, v17);
  sub_21B34B234();
  return sub_21B283F9C(v18, v11, a2);
}

uint64_t sub_21B28469C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v63 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_21B34B424();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for _RangeSet();
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v62 = *(AssociatedTypeWitness - 8);
  v18 = *(v62 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v59 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  v23 = a1 + *(type metadata accessor for _DiscontiguousSlice.Index() + 36);
  v60 = v7;
  v61 = v6;
  v24 = v64;
  v25 = v13;
  sub_21B34B1E4();
  v55 = a2;
  v26 = *(a2 + 36);
  v27 = *(v24 + 16);
  v64 = v3;
  v57 = v26;
  v58 = v27;
  v27(v17, v3 + v26, v13);
  v28 = *a1;
  v29 = type metadata accessor for _RangeSetStorage();
  sub_21B2D91CC(v28, v29, v12);
  v30 = *(v29 - 8);
  v56 = *(v30 + 8);
  AssociatedConformanceWitness = v30 + 8;
  v56(v17, v29);
  v31 = v67;
  v32 = sub_21B34B414();
  v33 = *(v66 + 1);
  v66 = v12;
  v54 = v33;
  result = (v33)(v12, v31);
  if (v32)
  {
    v35 = v59;
    (*(v62 + 32))(v59, v22, AssociatedTypeWitness);
    v36 = v63;
    v37 = v28;
    v38 = v35;
    return sub_21B283F9C(v37, v38, v36);
  }

  v51 = v22;
  v52 = AssociatedTypeWitness;
  v53 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v39 = v64;
    v41 = v57;
    v40 = v58;
    v58(v17, v64 + v57, v25);
    v42 = sub_21B2DBB54(v29);
    v43 = v56;
    v56(v17, v29);
    if (v53 < v42)
    {
      v40(v17, v39 + v41, v25);
      v44 = v66;
      v45 = v53;
      v46 = v43;
      sub_21B2D91CC(v53, v29, v66);
      v47 = v62;
      v48 = v52;
      (*(v62 + 8))(v51, v52);
      v46(v17, v29);
      v49 = v59;
      (*(v47 + 16))(v59, v44, v48);
      v54(v44, v67);
      v36 = v63;
      v37 = v45;
      v38 = v49;
      return sub_21B283F9C(v37, v38, v36);
    }

    sub_21B2844B4(v55, v63);
    return (*(v62 + 8))(v51, v52);
  }

  return result;
}

uint64_t sub_21B284B54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(type metadata accessor for _DiscontiguousSlice.Index() + 36);
  v6 = sub_21B34B314();
  v8 = v7;
  v9 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, v8, AssociatedTypeWitness);
  return v6(&v12, 0);
}

uint64_t sub_21B284C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v4 = *(a2 + 16);
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](a1);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v7;
  v8 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for _RangeSet();
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v58 - v16;
  MEMORY[0x28223BE20](v15);
  v70 = (&v58 - v17);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v63 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v60 = &v58 - v21;
  v71 = v4;
  v76 = v8;
  v22 = type metadata accessor for _DiscontiguousSlice.Index();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  v66 = sub_21B34B424();
  v64 = *(v66 - 8);
  v30 = *(v64 + 64);
  v31 = MEMORY[0x28223BE20](v66);
  v61 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v62 = &v58 - v33;
  v34 = *(v23 + 16);
  v34(v29, a1, v22);
  v35 = *(v22 + 36);
  swift_getWitnessTable();
  v36 = sub_21B34B424();
  v34(v27, a1 + *(v36 + 36), v22);
  v37 = *(v22 + 36);
  v38 = AssociatedTypeWitness;
  v72 = AssociatedConformanceWitness;
  result = sub_21B34ABB4();
  if (result)
  {
    v40 = *(AssociatedTypeWitness - 8);
    v41 = *(v40 + 32);
    v42 = &v29[v35];
    v43 = v60;
    v41(v60, v42, AssociatedTypeWitness);
    v44 = TupleTypeMetadata2;
    v41(&v43[*(TupleTypeMetadata2 + 48)], &v27[v37], AssociatedTypeWitness);
    v45 = v65;
    v46 = v63;
    (*(v65 + 16))(v63, v43, v44);
    v59 = *(v44 + 48);
    v47 = v62;
    v41(v62, v46, v38);
    v48 = *(v40 + 8);
    v48(&v46[v59], v38);
    (*(v45 + 32))(v46, v43, v44);
    v49 = v66;
    v41(&v47[*(v66 + 36)], &v46[*(v44 + 48)], v38);
    v48(v46, v38);
    v50 = v74;
    v51 = v73;
    (*(v73 + 16))(v68, v80 + *(v75 + 36), v74);
    v52 = v64;
    v53 = v61;
    (*(v64 + 16))(v61, v47, v49);
    v54 = v69;
    sub_21B297EA4(v53, v69);
    v55 = v70;
    sub_21B297438(v54, v50, v70);
    (*(v51 + 8))(v54, v50);
    (*(v52 + 8))(v47, v49);
    v56 = v77;
    v57 = v71;
    (*(v78 + 16))(v77, v80, v71);
    return sub_21B283D00(v56, v55, v57, v79);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_21B2852E8(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B2853B8(v6, a2, a3);
  return sub_21B285370;
}

void sub_21B285370(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_21B2853B8(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v7 = *(*(v6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  a1[1] = v9;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  sub_21B284B54(a3, v10);
  return sub_21B2854A4;
}

void sub_21B2854A4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_21B285500(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = v4;
  v35 = v3;
  swift_getAssociatedConformanceWitness();
  v33 = sub_21B34B424();
  v6 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v30 - v7;
  v9 = type metadata accessor for _RangeSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for _RangeSetStorage();
  swift_getWitnessTable();
  v15 = sub_21B34B7D4();
  v31 = *(v15 - 8);
  v16 = *(v31 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - v17;
  v19 = *(a1 + 36);
  v20 = *(v10 + 16);
  v36 = v1;
  v20(v13, v1 + v19, v9);
  (*(*(v14 - 8) + 32))(v18, v13, v14);
  v32 = v15;
  v21 = *(v15 + 36);
  *&v18[v21] = 0;
  v22 = 0;
  if (sub_21B2DBB54(v14))
  {
    v23 = 0;
    v24 = *(v33 + 36);
    v33 = AssociatedTypeWitness - 8;
    while (1)
    {
      sub_21B2D91CC(v23, v14, v8);
      v37 = v23;
      swift_getWitnessTable();
      sub_21B34B164();
      v25 = sub_21B34B224();
      v26 = *(*(AssociatedTypeWitness - 8) + 8);
      v26(&v8[v24], AssociatedTypeWitness);
      result = (v26)(v8, AssociatedTypeWitness);
      v28 = __OFADD__(v22, v25);
      v22 += v25;
      if (v28)
      {
        break;
      }

      v29 = sub_21B2DBB54(v14);
      v23 = *&v18[v21];
      if (v23 == v29)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    (*(v31 + 8))(v18, v32);
    return v22;
  }

  return result;
}

uint64_t sub_21B285888@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for _DiscontiguousSlice.Index();
  v5 = sub_21B34B474();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

uint64_t sub_21B28599C(char *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = type metadata accessor for _DiscontiguousSlice.Index();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v12 - v9);
  (*(v7 + 32))(&v12 - v9, a1, v6);
  sub_21B28469C(v10, a2, a1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21B285A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = sub_21B34B7D4();
  sub_21B2841AC(a1, (a2 + *(v5 + 36)));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t sub_21B285B90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B285BEC(uint64_t a1)
{
  v3 = sub_21B287660(v1, *(a1 + 16), *(a1 + 24));
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_21B285C80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 8);
  v6 = *(type metadata accessor for _DiscontiguousSlice.Index() + 36);
  v7 = sub_21B34B314();
  v9 = v8;
  v10 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v9, AssociatedTypeWitness);
  return v7(&v13, 0);
}

uint64_t sub_21B285D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v75 = a2;
  v4 = *(a2 + 16);
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](a1);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for _RangeSet();
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v58 - v16;
  MEMORY[0x28223BE20](v15);
  v70 = (&v58 - v17);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  v18 = *(v65 + 64);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v63 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v60 = &v58 - v21;
  v71 = v4;
  v76 = v8;
  v22 = type metadata accessor for _DiscontiguousSlice.Index();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  v66 = sub_21B34B424();
  v64 = *(v66 - 8);
  v30 = *(v64 + 64);
  v31 = MEMORY[0x28223BE20](v66);
  v61 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v62 = &v58 - v33;
  v34 = *(v23 + 16);
  v34(v29, a1, v22);
  v35 = *(v22 + 36);
  swift_getWitnessTable();
  v36 = sub_21B34B424();
  v34(v27, a1 + *(v36 + 36), v22);
  v37 = *(v22 + 36);
  v38 = AssociatedTypeWitness;
  v72 = AssociatedConformanceWitness;
  result = sub_21B34ABB4();
  if (result)
  {
    v40 = *(AssociatedTypeWitness - 8);
    v41 = *(v40 + 32);
    v42 = &v29[v35];
    v43 = v60;
    v41(v60, v42, AssociatedTypeWitness);
    v44 = TupleTypeMetadata2;
    v41(&v43[*(TupleTypeMetadata2 + 48)], &v27[v37], AssociatedTypeWitness);
    v45 = v65;
    v46 = v63;
    (*(v65 + 16))(v63, v43, v44);
    v59 = *(v44 + 48);
    v47 = v62;
    v41(v62, v46, v38);
    v48 = *(v40 + 8);
    v48(&v46[v59], v38);
    (*(v45 + 32))(v46, v43, v44);
    v49 = v66;
    v41(&v47[*(v66 + 36)], &v46[*(v44 + 48)], v38);
    v48(v46, v38);
    v50 = v74;
    v51 = v73;
    (*(v73 + 16))(v68, v80 + *(v75 + 36), v74);
    v52 = v64;
    v53 = v61;
    (*(v64 + 16))(v61, v47, v49);
    v54 = v69;
    sub_21B297EA4(v53, v69);
    v55 = v70;
    sub_21B297438(v54, v50, v70);
    (*(v51 + 8))(v54, v50);
    (*(v52 + 8))(v47, v49);
    v56 = v77;
    v57 = v71;
    (*(v78 + 16))(v77, v80, v71);
    return sub_21B283D00(v56, v55, v57, v79);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B286410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  sub_21B287AF8(a1, a2, a3, v7);
  v8 = *(a3 + 16);
  v9 = *(v7 + 8);
  v10 = type metadata accessor for _DiscontiguousSlice.Index();
  (*(*(v10 - 8) + 8))(a2, v10);
  v11 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 8);

  return v13(a1, AssociatedTypeWitness);
}

void (*sub_21B2864F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x50uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = v4;
  v9[1] = a3;
  v11 = *(a4 - 8);
  v9[2] = v11;
  v12 = *(*(v11 + 8) + 8);
  v13 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v10[4] = v15;
  v16 = *(v15 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[6] = v17;
  v19 = type metadata accessor for _DiscontiguousSlice.Index();
  v10[7] = v19;
  v20 = *(v19 - 8);
  v21 = v20;
  v10[8] = v20;
  if (v8)
  {
    v22 = swift_coroFrameAlloc();
  }

  else
  {
    v22 = malloc(*(v20 + 64));
  }

  v10[9] = v22;
  (*(v21 + 16))();
  sub_21B285C80(a3, v11, v18);
  return sub_21B2866E0;
}

void sub_21B2866E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[8];
  v3 = (*a1)[9];
  v5 = (*a1)[6];
  v13 = (*a1)[7];
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))(v2[5], v5, v2[3]);
    sub_21B287AF8(v6, v3, v11, v9);
    (*(v4 + 8))(v3, v13);
    v12 = *(v7 + 8);
    v12(v6, v8);
    v12(v5, v8);
  }

  else
  {
    sub_21B287AF8(v5, v3, v2[1], v2[2]);
    (*(v4 + 8))(v3, v13);
    (*(v7 + 8))(v5, v8);
  }

  free(v3);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t sub_21B286830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  sub_21B287CCC(a1, a2, a3, v7);
  v8 = *(a3 + 16);
  v9 = *(v7 + 8);
  type metadata accessor for _DiscontiguousSlice.Index();
  swift_getWitnessTable();
  v10 = sub_21B34B424();
  (*(*(v10 - 8) + 8))(a2, v10);
  v11 = *(*(a3 - 8) + 8);

  return v11(a1, a3);
}

void (*sub_21B286920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  *v10 = v4;
  v10[1] = a3;
  v12 = *(a4 - 8);
  v10[2] = v12;
  v13 = *(a3 - 8);
  v10[3] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[4] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[4] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[5] = v15;
  v17 = *(a3 + 16);
  v18 = *(v12 + 8);
  type metadata accessor for _DiscontiguousSlice.Index();
  swift_getWitnessTable();
  v19 = sub_21B34B424();
  v11[6] = v19;
  v20 = *(v19 - 8);
  v21 = v20;
  v11[7] = v20;
  if (v9)
  {
    v22 = swift_coroFrameAlloc();
  }

  else
  {
    v22 = malloc(*(v20 + 64));
  }

  v11[8] = v22;
  (*(v21 + 16))();
  sub_21B285D60(a2, a3, v16);
  return sub_21B286B10;
}

void sub_21B286B10(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    sub_21B287CCC(v7, v3, v9, v10);
    (*(v4 + 8))(v3, v6);
    v12 = *(v8 + 8);
    v12(v7, v9);
    v12(v5, v9);
  }

  else
  {
    sub_21B287CCC((*a1)[5], v3, v9, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_21B286CB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v65 = a1;
  v54 = a4;
  v55 = a3;
  v7 = *(a3 + 8);
  v8 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v10 = *(v57 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v51 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = v49 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = sub_21B34B424();
  v63 = *(v56 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v56);
  v61 = AssociatedConformanceWitness;
  v62 = v49 - v16;
  v17 = type metadata accessor for _RangeSet();
  v59 = *(v17 - 8);
  v60 = v17;
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v49 - v19;
  v21 = type metadata accessor for _DiscontiguousSlice.Index();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v49 - v24;
  v64 = a2;
  v26 = a2;
  v27 = v5;
  sub_21B2841AC(v26, v49 - v24);
  LOBYTE(AssociatedConformanceWitness) = sub_21B283ED0(v65, v25);
  v28 = *(v22 + 8);
  result = v28(v25, v21);
  if (AssociatedConformanceWitness)
  {
    __break(1u);
  }

  else
  {
    v30 = v27;
    sub_21B2844B4(v64, v25);
    v52 = v7;
    v53 = v8;
    v31 = sub_21B283ED0(v65, v25);
    result = v28(v25, v21);
    v33 = v57;
    v32 = v58;
    v34 = v56;
    if ((v31 & 1) == 0)
    {
      v49[1] = *(v21 + 36);
      v50 = v27;
      (*(v59 + 16))(v20, v27 + *(v64 + 36), v60);
      v35 = *v65;
      v36 = v61;
      v37 = v34;
      v38 = type metadata accessor for _RangeSetStorage();
      v39 = v62;
      v49[0] = v35;
      sub_21B2D91CC(v35, v38, v62);
      v40 = *(*(v38 - 8) + 8);
      v41 = v38;
      v34 = v37;
      v40(v20, v41);
      (*(v33 + 16))(v32, v39, AssociatedTypeWitness);
      (*(v63 + 8))(v39, v37);
      v42 = *(v36 + 8);
      v43 = sub_21B34AC54();
      result = (*(v33 + 8))(v32, AssociatedTypeWitness);
      v30 = v50;
      if ((v43 & 1) == 0)
      {
        sub_21B34AB24();
        v44 = v49[0];
        return sub_21B283F9C(v44, v32, v54);
      }
    }

    v44 = *v65 - 1;
    if (!__OFSUB__(*v65, 1))
    {
      (*(v59 + 16))(v20, v30 + *(v64 + 36), v60);
      v45 = v34;
      v46 = type metadata accessor for _RangeSetStorage();
      v47 = v62;
      sub_21B2D91CC(v44, v46, v62);
      (*(*(v46 - 8) + 8))(v20, v46);
      v48 = v51;
      (*(v33 + 16))(v51, v47 + *(v45 + 36), AssociatedTypeWitness);
      (*(v63 + 8))(v47, v45);
      sub_21B34AB24();
      (*(v33 + 8))(v48, AssociatedTypeWitness);
      return sub_21B283F9C(v44, v32, v54);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B287274(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(a2 + 16);
  v7 = *(v5 + 8);
  v8 = type metadata accessor for _DiscontiguousSlice.Index();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v14 - v11);
  (*(v9 + 32))(&v14 - v11, a1, v8);
  sub_21B286CB8(v12, a2, v5, a1);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21B2874B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_21B34ABB4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B287594()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_21B34ABB4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_21B34B424() + 36);
  result = sub_21B34ABB4();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B287660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_21B34B424();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v27 - v7;
  v30 = type metadata accessor for _RangeSet();
  v8 = *(v30 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = &v27 - v10;
  v12 = type metadata accessor for _RangeSetStorage();
  swift_getWitnessTable();
  v13 = sub_21B34B7D4();
  v28 = *(v13 - 8);
  v14 = *(v28 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = *(a3 + 8);
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_21B34AFD4();
  v31 = v18;
  v36 = MEMORY[0x21CEEDF10](v19, v18);
  v20 = type metadata accessor for _DiscontiguousSlice();
  (*(v8 + 16))(v11, v34 + *(v20 + 36), v30);
  (*(*(v12 - 8) + 32))(v16, v11, v12);
  v29 = v13;
  v21 = *(v13 + 36);
  *&v16[v21] = 0;
  if (sub_21B2DBB54(v12))
  {
    v22 = 0;
    v30 = (v27 + 8);
    do
    {
      v23 = v32;
      sub_21B2D91CC(v22, v12, v32);
      v35 = v22;
      swift_getWitnessTable();
      sub_21B34B164();
      sub_21B34B304();
      (*v30)(v23, v5);
      sub_21B34B784();
      v24 = *(swift_getAssociatedConformanceWitness() + 8);
      sub_21B34B754();
      v25 = sub_21B2DBB54(v12);
      v22 = *&v16[v21];
    }

    while (v22 != v25);
  }

  (*(v28 + 8))(v16, v29);
  return v36;
}

uint64_t sub_21B287AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v5 = *(*(a4 + 8) + 8);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v19 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  v17 = type metadata accessor for _DiscontiguousSlice.Index();
  (*(v13 + 16))(v16, a2 + *(v17 + 36), v12);
  (*(v8 + 16))(v11, v19, AssociatedTypeWitness);
  return sub_21B34AC44();
}

uint64_t sub_21B287CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a2;
  v117 = a1;
  v115 = a4;
  v5 = *(a4 + 8);
  v6 = *(v5 + 8);
  v7 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v114 = &v93 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v112 = *(v11 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v11);
  v113 = &v93 - v13;
  WitnessTable = swift_getWitnessTable();
  v118 = a3;
  v122 = WitnessTable;
  v15 = sub_21B34AAF4();
  v123 = *(v15 - 8);
  v16 = *(v123 + 64);
  MEMORY[0x28223BE20](v15);
  v105 = &v93 - v17;
  swift_getWitnessTable();
  v130 = v15;
  v110 = sub_21B34B7D4();
  v106 = *(v110 - 8);
  v18 = *(v106 + 64);
  MEMORY[0x28223BE20](v110);
  v20 = &v93 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v103 = type metadata accessor for _RangeSet();
  v111 = *(v103 - 8);
  v22 = *(v111 + 64);
  v23 = MEMORY[0x28223BE20](v103);
  v102 = (&v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v100 = &v93 - v26;
  MEMORY[0x28223BE20](v25);
  v104 = (&v93 - v27);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v97 = *(TupleTypeMetadata2 - 8);
  v28 = *(v97 + 64);
  v29 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v98 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v96 = &v93 - v31;
  v128 = v5;
  v129 = v7;
  v32 = type metadata accessor for _DiscontiguousSlice.Index();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v131 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v126 = &v93 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v93 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v93 - v42;
  v109 = sub_21B34B424();
  v108 = *(v109 - 8);
  v44 = *(v108 + 64);
  v45 = MEMORY[0x28223BE20](v109);
  v95 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v107 = &v93 - v47;
  v120 = v33;
  v48 = *(v33 + 16);
  v49 = v125;
  v48(v43, v125, v32);
  v50 = *(v32 + 36);
  v127 = v43;
  v51 = &v43[v50];
  swift_getWitnessTable();
  v52 = v49 + *(sub_21B34B424() + 36);
  v124 = v48;
  v125 = v33 + 16;
  v48(v41, v52, v32);
  v101 = v32;
  v53 = &v41[*(v32 + 36)];
  v116 = v11;
  v121 = AssociatedConformanceWitness;
  result = sub_21B34ABB4();
  if (result)
  {
    v94 = v20;
    v55 = v112;
    v56 = *(v112 + 32);
    v57 = v96;
    v58 = v116;
    v56(v96, v51, v116);
    v59 = TupleTypeMetadata2;
    v56(&v57[*(TupleTypeMetadata2 + 48)], v53, v58);
    v60 = v97;
    v61 = v98;
    (*(v97 + 16))(v98, v57, v59);
    v93 = *(v59 + 48);
    v62 = v107;
    v56(v107, v61, v58);
    v63 = *(v55 + 8);
    v63(&v61[v93], v58);
    (*(v60 + 32))(v61, v57, v59);
    v64 = v109;
    v56(&v62[*(v109 + 36)], &v61[*(v59 + 48)], v58);
    v63(v61, v58);
    v65 = v111;
    v66 = v103;
    (*(v111 + 16))(v100, v119 + *(v118 + 36), v103);
    v67 = v95;
    (*(v108 + 16))(v95, v62, v64);
    v68 = v102;
    sub_21B297EA4(v67, v102);
    v69 = v104;
    sub_21B297438(v68, v66, v104);
    v70 = *(v65 + 8);
    v71 = v66;
    v111 = v65 + 8;
    v102 = v70;
    (v70)(v68, v66);
    v72 = v105;
    sub_21B34B2E4();
    v73 = v123;
    v74 = v94;
    v75 = v130;
    (*(v123 + 16))(v94, v72, v130);
    v76 = *(v110 + 36);
    sub_21B34AAC4();
    (*(v73 + 8))(v72, v75);
    v77 = v127;
    v78 = v74;
    sub_21B34AAD4();
    LOBYTE(v74) = sub_21B283ED0(&v74[v76], v77);
    v79 = v101;
    v122 = *(v120 + 8);
    v123 = v120 + 8;
    v122(v77, v101);
    v80 = v69;
    v81 = v79;
    v82 = v131;
    if ((v74 & 1) == 0)
    {
      v120 += 32;
      v121 = v76;
      v112 += 16;
      do
      {
        v91 = v126;
        v124(v126, &v78[v76], v81);
        sub_21B34AAE4();
        (*v120)(v82, v91, v81);
        v92 = *(v81 + 36);
        if (sub_21B297FB8(&v82[v92], v71))
        {
          (*v112)(v113, &v82[v92], v116);
          sub_21B285C80(v118, v115, v114);
          v82 = v131;
          sub_21B34AC44();
        }

        v83 = v82;
        v84 = v122;
        v85 = v80;
        v86 = v71;
        v122(v83, v81);
        v87 = v127;
        sub_21B34AAD4();
        v88 = v121;
        v89 = sub_21B283ED0(&v78[v121], v87);
        v90 = v87;
        v76 = v88;
        v84(v90, v81);
        v71 = v86;
        v80 = v85;
        v82 = v131;
      }

      while ((v89 & 1) == 0);
    }

    (*(v106 + 8))(v78, v110);
    (v102)(v80, v71);
    return (*(v108 + 8))(v107, v109);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B288834(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B2888C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
LABEL_23:
    v17 = *(v9 + 48);

    return v17((a1 + v11 + 8) & ~v11);
  }

  v12 = ((v11 + 8) & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v15 = ((a2 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v15 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v15 < 2)
    {
LABEL_22:
      if (v10)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_22;
  }

LABEL_11:
  v16 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v16 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v10 + (v12 | v16) + 1;
}

void sub_21B288A74(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = ((v11 + 8) & ~v11) + *(v9 + 64);
  if (a3 <= v10)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 - v10 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (v10 < a2)
  {
    v14 = ~v10 + a2;
    if (v12 < 4)
    {
      v15 = (v14 >> (8 * v12)) + 1;
      if (v12)
      {
        v18 = v14 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_39:
              if (v13 == 2)
              {
                *&a1[v12] = v15;
              }

              else
              {
                *&a1[v12] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v13)
    {
      a1[v12] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v12] = 0;
  }

  else if (v13)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v19 = *(v9 + 56);

  v19(&a1[v11 + 8] & ~v11, a2);
}

uint64_t Column.eraseToAnyColumn()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v6 = *(a1 + 16);
  sub_21B334E3C(v8, a2);
}

uint64_t Column.init<A>(name:contents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  return sub_21B289468(a1, a2, a3, a4, a5, a6, sub_21B32C8B8, a7);
}

{
  return sub_21B289468(a1, a2, a3, a4, a5, a6, sub_21B32CE08, a7);
}

uint64_t Column.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21B288DA4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v36 = a3;
  v9 = *(a4 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v35 - v17;
  v19 = sub_21B34B1D4();
  if (__OFSUB__(v36, a2))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v6 = sub_21B2356AC(0, *(v6 + 2) + 1, 1, v6);
    goto LABEL_19;
  }

  if (v19 != v36 - a2)
  {
    v32 = v36 - a2;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_21B34B634();

    v37 = 0xD000000000000017;
    v38 = 0x800000021B34CB60;
    v40 = sub_21B34B1D4();
    v33 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v33);

    MEMORY[0x21CEED5E0](0x756C6F6320202020, 0xEC000000203A6E6DLL);
    v40 = v32;
    v34 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v34);

    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  (*(v9 + 16))(v12, a1, v6);
  sub_21B34AEC4();
  swift_getAssociatedConformanceWitness();
  a5 = 0;
  v6 = MEMORY[0x277D84F90];
  v20 = 1;
  while (1)
  {
    sub_21B34B4D4();
    v22 = v37;
    if (v37 == 2)
    {
      break;
    }

    if (v37)
    {
      if (v20)
      {
        a5 = a2;
      }
    }

    else if ((v20 & 1) == 0)
    {
      if (a2 < a5)
      {
        goto LABEL_27;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21B2356AC(0, *(v6 + 2) + 1, 1, v6);
      }

      v24 = *(v6 + 2);
      v23 = *(v6 + 3);
      if (v24 >= v23 >> 1)
      {
        v6 = sub_21B2356AC((v23 > 1), v24 + 1, 1, v6);
      }

      *(v6 + 2) = v24 + 1;
      v25 = &v6[16 * v24];
      *(v25 + 4) = a5;
      *(v25 + 5) = a2;
      a5 = 0;
    }

    v20 = v22 ^ 1;
    if (__OFADD__(a2++, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  (*(v35 + 8))(v18, AssociatedTypeWitness);
  if (v20)
  {
    goto LABEL_22;
  }

  if (a2 < a5)
  {
    goto LABEL_29;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  v27 = *(v6 + 2);
  v26 = *(v6 + 3);
  if (v27 >= v26 >> 1)
  {
    v6 = sub_21B2356AC((v26 > 1), v27 + 1, 1, v6);
  }

  *(v6 + 2) = v27 + 1;
  v28 = &v6[16 * v27];
  *(v28 + 4) = a5;
  *(v28 + 5) = a2;
LABEL_22:
  v37 = 0;
  v38 = 0;
  v39 = 2;
  v29 = *(v6 + 2);
  if (v29)
  {
    v30 = (v6 + 40);
    do
    {
      sub_21B28DFBC(*(v30 - 1), *v30);
      v30 += 2;
      --v29;
    }

    while (v29);
  }

  return v37;
}

void Column.init(name:capacity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::Int a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  sub_21B34B474();
  v8 = sub_21B34AFD4();
  v9 = sub_21B32CC60(v8, a4);

  a5[2] = v9;
  v10 = type metadata accessor for PackedOptionalsArray();
  sub_21B328D9C(a3, v10);
}

uint64_t Column.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = type metadata accessor for PackedOptionalsArray();
  return sub_21B328DA8(a1, v4);
}

{
  v3 = *(a2 + 16);
  v4 = sub_21B34B474();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v12 - v7, a1, v3);
  (*(v9 + 56))(v8, 0, 1, v3);
  v10 = type metadata accessor for PackedOptionalsArray();
  sub_21B328DA8(v8, v10);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21B289468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  v11 = a7(a3, a4, a5, a6);
  result = (*(*(a5 - 8) + 8))(a3, a5);
  a8[2] = v11;
  return result;
}

uint64_t Column.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B289D54(a1, a2, a3, a4, sub_21B328E58);
}

{
  return sub_21B289D54(a1, a2, a3, a4, sub_21B329278);
}

uint64_t Column.name.getter()
{
  v0 = sub_21B233AD0();

  return v0;
}

uint64_t Column.prototype.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(a1 + 16);
  v7 = nullsub_14(v4);
  v9 = v8;
  a2[3] = type metadata accessor for ColumnPrototype();
  a2[4] = &off_282CA94D8;
  *a2 = v7;
  a2[1] = v9;
}

void Column.init(_:capacity:)(void *a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1[1];
  *a4 = *a1;
  a4[1] = v7;
  sub_21B34B474();
  v8 = sub_21B34AFD4();
  v9 = sub_21B32CC60(v8, a3);

  a4[2] = v9;
  v10 = type metadata accessor for PackedOptionalsArray();
  sub_21B328D9C(a2, v10);
}

uint64_t Column.init<A>(_:contents:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  return sub_21B2896D4(a1, a2, a3, a4, a5, sub_21B32C8B8, a6);
}

{
  return sub_21B2896D4(a1, a2, a3, a4, a5, sub_21B32CE08, a6);
}

uint64_t sub_21B2896D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  v10 = a1[1];
  *a7 = *a1;
  a7[1] = v10;
  v11 = a6(a2, a3, a4, a5);
  result = (*(*(a4 - 8) + 8))(a2, a4);
  a7[2] = v11;
  return result;
}

uint64_t Column.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = type metadata accessor for ColumnSlice();
  *a3 = ColumnSlice.name.getter(v10);
  a3[1] = v11;
  v14[0] = v5;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  swift_getWitnessTable();
  v12 = sub_21B32C8B8(v14, a2, v10);

  a3[2] = v12;
  return result;
}

uint64_t sub_21B28982C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_21B34B474();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  (*(*(v1 - 8) + 56))(&v9 - v5, 1, 1, v1);
  v7 = type metadata accessor for PackedOptionalsArray();
  sub_21B328DA8(v6, v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21B289944(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_21B34B474();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - v11;
  v13 = *(v3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2832C0(a1, &v24);
  if (v25)
  {
    sub_21B261720(&v24, v26);
    sub_21B2616C4(v26, &v24);
    v17 = swift_dynamicCast();
    v18 = *(v13 + 56);
    if (v17)
    {
      v18(v12, 0, 1, v3);
      (*(v13 + 32))(v16, v12, v3);
      (*(v13 + 16))(v9, v16, v3);
      v18(v9, 0, 1, v3);
      v19 = type metadata accessor for PackedOptionalsArray();
      sub_21B328DA8(v9, v19);
      (*(v5 + 8))(v9, v4);
      (*(v13 + 8))(v16, v3);
      return __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    else
    {
      v18(v12, 1, 1, v3);
      (*(v5 + 8))(v12, v4);
      *&v24 = 0;
      *(&v24 + 1) = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD00000000000001DLL, 0x800000021B34CB20);
      __swift_project_boxed_opaque_existential_1(v26, v27);
      swift_getDynamicType();
      v22 = sub_21B34BD24();
      MEMORY[0x21CEED5E0](v22);

      MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34CB40);
      v23 = sub_21B34BD24();
      MEMORY[0x21CEED5E0](v23);

      result = sub_21B34B824();
      __break(1u);
    }
  }

  else
  {
    sub_21B28EEB4(&v24);
    (*(v13 + 56))(v9, 1, 1, v3);
    v21 = type metadata accessor for PackedOptionalsArray();
    sub_21B328DA8(v9, v21);
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_21B289D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 16);
  v10 = type metadata accessor for PackedOptionalsArray();
  return a5(a1, v10, a3, a4);
}

Swift::Void __swiftcall Column.remove(at:)(Swift::Int at)
{
  v3 = *(v1 + 16);
  v4 = sub_21B34B474();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v9 = type metadata accessor for PackedOptionalsArray();
  sub_21B329774(at, v9, v8);
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_21B289ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  v14 = *v6;
  v13 = v6[1];
  v15 = v6[2];
  v16 = *(a3 + 16);

  result = a5(a1, a2, v15, v16, a4);
  if (v7)
  {
  }

  *a6 = v14;
  a6[1] = v13;
  a6[2] = result;
  return result;
}

uint64_t Column.transform(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_21B289FC4(a1, a2, a3, sub_21B329E78);
}

{
  return sub_21B289FC4(a1, a2, a3, sub_21B32A064);
}

uint64_t sub_21B289FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3 + 16);
  v8 = type metadata accessor for PackedOptionalsArray();
  return a4(a1, a2, v8);
}

void Column.filter(_:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = *(a3 + 16);
  v35 = a4;
  v7 = sub_21B34B474();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v43 = &v32 - v9;
  v61 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_21B34B474();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v32 - v14);
  v17 = *v4;
  v16 = v4[1];
  v18 = v4[2];
  v58 = 0;
  v59 = 0;
  v60 = 2;
  *&v50 = v17;
  *(&v50 + 1) = v16;
  v51 = v18;
  swift_getWitnessTable();
  sub_21B34B194();
  v53 = v54;
  *&v32 = v17;
  *(&v32 + 1) = v16;
  v46 = v17;
  v47 = v16;
  v33 = v18;
  v48 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v20 = sub_21B28EBB0(&qword_27CD7E980);
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v50 = v44;
  v51 = *&v45[0];
  v52 = *(v45 + 8);
  *&v42 = v19;
  *(&v42 + 1) = a3;
  v46 = v19;
  v47 = a3;
  v40 = WitnessTable;
  v41 = v20;
  v48 = v20;
  v49 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v39 = TupleTypeMetadata2 - 8;
  v22 = (v36 + 32);
  for (i = (v36 + 8); ; (*i)(v43, v61))
  {
    v44 = v42;
    *&v45[0] = v41;
    *(&v45[0] + 1) = v40;
    v24 = sub_21B34B664();
    sub_21B34B654();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
    {
      v44 = v55;
      v45[0] = v56;
      v45[1] = v57[0];
      *(&v45[1] + 9) = *(v57 + 9);
      (*(*(v24 - 8) + 8))(&v44, v24);
      v50 = v32;
      v51 = v33;
      v30 = v58;
      v29 = v59;
      v31 = v60;

      sub_21B2D3D88(&v50, v30, v29, v31, v35);
      return;
    }

    v25 = *v15;
    v26 = v43;
    (*v22)(v43, v15 + *(TupleTypeMetadata2 + 48), v61);
    v27 = v37(v26);
    if (v5)
    {
      (*i)(v43, v61);
      v44 = v55;
      v45[0] = v56;
      v45[1] = v57[0];
      *(&v45[1] + 9) = *(v57 + 9);
      (*(*(v24 - 8) + 8))(&v44, v24);
      sub_21B23A9F4(v58, v59, v60);
      return;
    }

    if ((v27 & 1) == 0)
    {
      continue;
    }

    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 < v25)
    {
      goto LABEL_12;
    }

    sub_21B28DFBC(v25, v28);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_21B28A490(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B34B9F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_21B34B9F4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21B28A594(char a1)
{
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](a1 & 1);
  return sub_21B34BC24();
}

uint64_t sub_21B28A5DC(char a1)
{
  if (a1)
  {
    return 0x73746E656D656C65;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21B28A63C(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  v4 = *(a2 + 16);
  sub_21B28A56C(v6, *v2);
  return sub_21B34BC24();
}

uint64_t sub_21B28A694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_21B28A490(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_21B28A6CC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_21B285BE4();
  *a2 = result;
  return result;
}

uint64_t sub_21B28A6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21B28A74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void (*sub_21B28A7A0(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Column.name.modify();
  return sub_21B28A810;
}

void *sub_21B28A814@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

Swift::Int __swiftcall Column.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B28A83C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_21B28A864@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Column.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_21B28A89C(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B28A924(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B28A924(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  sub_21B32A29C(a2, *(v3 + 16), v9);
  return sub_21B2854A4;
}

double sub_21B28AA00@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  return Column.subscript.getter(a2, a3);
}

double Column.subscript.getter@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v9[0] = v5;
  v9[1] = v4;
  v9[2] = v6;
  v7 = *(a1 + 16);

  return ColumnSlice.init(base:bounds:)(v9, a2);
}

uint64_t sub_21B28AA88()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

Swift::Int __swiftcall Column.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

__n128 sub_21B28AB0C@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_21B28AB24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B28AB78()
{
  swift_getWitnessTable();
  v1 = sub_21B2DBAB0();
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Column.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(a1 + 16);
  return sub_21B32A580(a2, a3);
}

void *sub_21B28AC30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a2;
  v9 = *a1;
  v10 = *(a1 + 1);
  v7 = type metadata accessor for Column();
  return Column.subscript.getter(v6, v7, a4);
}

uint64_t Column.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B28E8DC(a1, a2, a3);
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*Column.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v8[2] = *(a3 + 16);
  v10 = sub_21B34B474();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  sub_21B32A29C(a2, *(v3 + 16), v13);
  return sub_21B28AE44;
}

void sub_21B28AE44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    v10 = type metadata accessor for PackedOptionalsArray();
    sub_21B32CCD4(v3, v9, v10);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    v12 = type metadata accessor for PackedOptionalsArray();
    sub_21B32CCD4(v4, v9, v12);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double sub_21B28AF5C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a2;
  v7 = a2[1];
  v14 = *a1;
  v15 = *(a1 + 1);
  v8 = type metadata accessor for Column();
  Column.subscript.getter(v8, &v11);
  v9 = v12;
  *a4 = v11;
  *(a4 + 16) = v9;
  result = *&v13;
  *(a4 + 24) = v13;
  return result;
}

uint64_t sub_21B28AFE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v12 = *a1;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v10 = type metadata accessor for Column();

  return Column.subscript.setter(&v12, v5, v6, v10);
}

uint64_t Column.subscript.setter(__int128 *a1, uint64_t a2, Swift::Int a3, uint64_t a4)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v14 = *a1;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v9 = *(a4 + 16);
  v10 = type metadata accessor for PackedOptionalsArray();
  v11 = type metadata accessor for ColumnSlice();
  WitnessTable = swift_getWitnessTable();
  sub_21B32A38C(a2, a3, &v14, v10, v11, WitnessTable);
}

void (*Column.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  *a1 = v9;
  v9[7] = a4;
  v9[8] = v4;
  v9[5] = a2;
  v9[6] = a3;
  v11 = *v4;
  v12 = *(v4 + 1);
  Column.subscript.getter(a4, v9);
  return sub_21B28B1F4;
}

void sub_21B28B1F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = v2[7];
  v7 = v2[8];
  v10 = v2[5];
  v9 = v2[6];
  v11 = v2[4];
  *&v14 = v4;
  *(&v14 + 1) = v3;
  v15 = v6;
  v16 = v5;
  v17 = v11;
  if (a2)
  {

    Column.subscript.setter(&v14, v10, v9, v8);
    v12 = v2[3];
    v13 = v2[4];
  }

  else
  {
    Column.subscript.setter(&v14, v10, v9, v8);
  }

  free(v2);
}

double sub_21B28B2B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = *v5;
  v20 = *(v5 + 1);
  v11 = a1;
  *&v12 = a2;
  BYTE8(v12) = a3;
  WitnessTable = swift_getWitnessTable();
  sub_21B283B30(&v11, a4, WitnessTable, &v15);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v9 = *(a4 + 16);
  *&result = sub_21B2D3BC4(&v11, a5).n128_u64[0];
  return result;
}

uint64_t sub_21B28B360(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v48) = a4;
  v8 = *(a5 + 16);
  v49 = sub_21B34B474();
  v44 = *(v49 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v49);
  v45 = &v42 - v10;
  v46 = a2;
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v15 = a1[4];
  LODWORD(a1) = *(a1 + 40);
  v47 = a3;
  v16 = sub_21B2FB1D4(a2, a3, v48);
  v50 = v8;
  *&v51 = v12;
  *&v71 = v12;
  *(&v71 + 1) = v11;
  v17 = v11;
  v18 = v15;
  *&v72 = v14;
  *(&v72 + 1) = v13;
  v19 = v13;
  v52 = v18;
  *&v73 = v18;
  v53 = a1;
  BYTE8(v73) = a1;
  v20 = type metadata accessor for DiscontiguousColumnSlice();
  if (v16 == DiscontiguousColumnSlice.count.getter(v20))
  {
    v22 = v46;
    v21 = v47;
    v23 = v48;
    v24 = sub_21B2FB104(v46, v47, v48);
    sub_21B23A9F4(v22, v21, v23);
    v70 = v24;
    v64 = v51;
    v65 = v17;
    *(&v51 + 1) = v17;
    v66 = v14;
    v67 = v19;
    v25 = v19;
    v68 = v52;
    v69 = v53;
    swift_getWitnessTable();
    sub_21B34B2E4();
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v27 = sub_21B34AAF4();
    v28 = sub_21B28EE50();
    WitnessTable = swift_getWitnessTable();
    sub_21B34BA54();
    v76[0] = v59;
    v76[1] = v60;
    v76[2] = v61;
    v76[3] = v62;
    (*(*(v27 - 8) + 8))(v76, v27);

    v61 = v56;
    v62 = v57;
    v63 = *&v58[0];
    v59 = v54;
    v60 = v55;
    *&v71 = v26;
    *(&v71 + 1) = v27;
    *&v72 = v28;
    *(&v72 + 1) = WitnessTable;
    sub_21B34B674();
    sub_21B34B644();
    *&v54 = v26;
    *(&v54 + 1) = v27;
    v30 = v27;
    v42 = WitnessTable;
    v43 = v28;
    *&v55 = v28;
    *(&v55 + 1) = WitnessTable;
    v31 = sub_21B34B664();
    sub_21B34B654();
    v32 = v25;
    if ((v60 & 1) == 0)
    {
      v47 = v25;
      v48 = v14;
      v46 = v26;
      v33 = *(&v59 + 1);
      v34 = v59;
      v35 = v43;
      v36 = (v44 + 8);
      v37 = v20;
      v38 = v45;
      v39 = v42;
      do
      {
        v54 = v51;
        *&v55 = v48;
        *(&v55 + 1) = v47;
        *&v56 = v52;
        BYTE8(v56) = v53;
        DiscontiguousColumnSlice.subscript.getter(v33, v37, v38);
        v40 = type metadata accessor for PackedOptionalsArray();
        sub_21B32CCD4(v38, v34, v40);
        (*v36)(v38, v49);
        *&v54 = v46;
        *(&v54 + 1) = v30;
        *&v55 = v35;
        *(&v55 + 1) = v39;
        v31 = sub_21B34B664();
        sub_21B34B654();
        v33 = *(&v59 + 1);
        v34 = v59;
      }

      while (v60 != 1);
      v32 = v47;
    }

    v56 = v73;
    v57 = v74;
    v58[0] = v75[0];
    *(v58 + 9) = *(v75 + 9);
    v54 = v71;
    v55 = v72;
    (*(*(v31 - 8) + 8))(&v54, v31);

    return sub_21B23A9F4(v32, v52, v53);
  }

  else
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

double Column.subscript.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  sub_21B34AF64();
  return Column.subscript.getter(a1, a2);
}

double sub_21B28B898@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 24);
  v7 = *(v5 - 16);
  v8 = *(v5 - 8);
  v15 = *a1;
  v16 = *(a1 + 1);
  v9 = type metadata accessor for Column();
  Column.subscript.getter(v9, &v12);
  v10 = v13;
  *a4 = v12;
  *(a4 + 16) = v10;
  result = *&v14;
  *(a4 + 24) = v14;
  return result;
}

uint64_t sub_21B28B92C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v13 = *a1;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v11 = type metadata accessor for Column();

  return sub_21B28E928(&v13, a3, v11);
}

uint64_t Column.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B28E928(a1, a2, a3);
  v6 = *(*(a4 - 8) + 8);

  return v6(a2, a4);
}

void (*Column.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x58uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[7] = a5;
  v11[8] = v5;
  v11[5] = a3;
  v11[6] = a4;
  v13 = *(a4 - 8);
  v14 = v13;
  v11[9] = v13;
  if (v10)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(v13 + 64));
  }

  *(v12 + 80) = v15;
  (*(v14 + 16))();
  Column.subscript.getter(a3, v12);
  return sub_21B28BB60;
}

void sub_21B28BB60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v6 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  v8 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  if (a2)
  {
    v10 = v2[2];
    v9 = v2[3];
    v11 = v2[4];
    v14 = *v2;
    v15 = v10;
    v16 = v9;
    v17 = v11;

    sub_21B28E928(&v14, v3, v8);
    (*(v4 + 8))(v3, v7);
    v12 = v2[3];
    v13 = v2[4];
  }

  else
  {
    sub_21B28E928(*a1, v3, v8);
    (*(v4 + 8))(v3, v7);
  }

  free(v3);

  free(v2);
}

uint64_t Column.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  v12 = v5[1];
  result = sub_21B32D340(v5[2], *(a2 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_21B288DA4(a1, 0, result, a3, a4);
    v16 = v15;
    v18 = v17;
    sub_21B28B2B8(v14, v15, v17, a2, a5);

    return sub_21B23A9F4(v14, v16, v18);
  }

  return result;
}

uint64_t Column.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B28BDA8(a1, a2, a3, a4, sub_21B32A5DC);
}

{
  return sub_21B28BDA8(a1, a2, a3, a4, sub_21B32A6C8);
}

uint64_t sub_21B28BDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 16);
  v10 = type metadata accessor for PackedOptionalsArray();
  return a5(a1, a2, v10, a4);
}

uint64_t sub_21B28BE40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_21B28E8DC(a1, *a2, a3);
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*sub_21B28BEBC(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Column.subscript.modify(v6, *a2, a3);
  return sub_21B28EF30;
}

void (*sub_21B28BF54(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Column.subscript.modify(v6, *a2, a2[1], a3);
  return sub_21B28EF30;
}

uint64_t static Column<A>.== infix(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a2[2];
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v7 = a3;
    v8 = *a2;
    v9 = a4;
    v10 = a2[1];
    v11 = sub_21B34B9F4();
    a3 = v7;
    a4 = v9;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_21B32A764(v4, v5, a3, a4);
}

void Column<A>.distinct()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = a2;
  v42 = *(a1 + 16);
  v43 = a3;
  v5 = sub_21B34B474();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_21B34B474();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v40 - v16);
  v18 = *v3;
  v19 = v3[1];
  v20 = v3[2];
  v66 = WitnessTable;
  WitnessTable = swift_getWitnessTable();
  v67 = sub_21B34A994();
  v63 = 0;
  v64 = 0;
  v65 = 2;
  *&v60 = v18;
  *(&v60 + 1) = v19;
  *&v61 = v20;
  swift_getWitnessTable();
  sub_21B34B194();
  v58 = v59;
  *&v40 = v18;
  *(&v40 + 1) = v19;
  *&v55 = v18;
  *(&v55 + 1) = v19;
  v41 = v20;
  v56 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v22 = sub_21B28EBB0(&qword_27CD7E980);
  v23 = swift_getWitnessTable();
  sub_21B34BA54();
  v55 = v53;
  v56 = *&v54[0];
  v57 = *(v54 + 8);
  *&v60 = v21;
  *(&v60 + 1) = a1;
  v51 = a1;
  v24 = v22;
  *&v61 = v22;
  *(&v61 + 1) = v23;
  sub_21B34B674();
  sub_21B34B644();
  v49 = (v48 + 32);
  v50 = TupleTypeMetadata2 - 8;
  v44 = (v48 + 16);
  v45 = v23;
  v48 += 8;
  while (1)
  {
    while (1)
    {
      *&v53 = v21;
      *(&v53 + 1) = v51;
      *&v54[0] = v24;
      *(&v54[0] + 1) = v23;
      v25 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
      {
        v53 = v60;
        v54[0] = v61;
        v54[1] = v62[0];
        *(&v54[1] + 9) = *(v62 + 9);
        (*(*(v25 - 8) + 8))(&v53, v25);

        v55 = v40;
        v56 = v41;
        v37 = v63;
        v38 = v64;
        v39 = v65;

        sub_21B2D3D88(&v55, v37, v38, v39, v43);
        return;
      }

      v26 = *v17;
      (*v49)(v12, v17 + *(TupleTypeMetadata2 + 48), v5);
      if ((sub_21B34B114() & 1) == 0)
      {
        break;
      }

      (*v48)(v12, v5);
    }

    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 < v26)
    {
      goto LABEL_10;
    }

    sub_21B28DFBC(v26, v27);
    (*v44)(v47, v12, v5);
    sub_21B34B124();
    v28 = v17;
    v29 = v24;
    v30 = v5;
    v31 = v12;
    v32 = TupleTypeMetadata2;
    v33 = v21;
    v34 = v46;
    sub_21B34B104();
    v35 = *v48;
    v36 = v34;
    v21 = v33;
    TupleTypeMetadata2 = v32;
    v12 = v31;
    v5 = v30;
    v24 = v29;
    v17 = v28;
    v23 = v45;
    (*v48)(v36, v5);
    v35(v12, v5);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t Column<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_21B34AD94();
  v8 = *(a2 + 16);

  return sub_21B32B9D4(a1, v7);
}

uint64_t Column<A>.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_21B34BBC4();
  sub_21B34AD94();
  v6 = *(a1 + 16);
  sub_21B32B9D4(v8, v5);
  return sub_21B34BC24();
}

uint64_t sub_21B28C738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  Column<A>.hash(into:)(v6, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B28C78C(void *a1, uint64_t a2)
{
  sub_21B233A10(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    v16 = v21;
    v17 = v22;
    v4 = *(a2 + 16);
    v5 = type metadata accessor for PackedOptionalsArray();
    swift_getWitnessTable();
    sub_21B328E58(&v16, v5, a2);
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  v6 = *(a2 + 16);
  v7 = type metadata accessor for ColumnSlice();
  if (swift_dynamicCast())
  {
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v8 = type metadata accessor for PackedOptionalsArray();
    swift_getWitnessTable();
    sub_21B328E58(&v16, v8, v7);
    goto LABEL_5;
  }

  v9 = type metadata accessor for DiscontiguousColumnSlice();
  if (swift_dynamicCast())
  {
    v10 = v23;
    v11 = v24;
    v12 = v25;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v13 = type metadata accessor for PackedOptionalsArray();
    swift_getWitnessTable();
    sub_21B328E58(&v16, v13, v9);

    sub_21B23A9F4(v10, v11, v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  sub_21B34B634();

  *&v21 = 0xD000000000000014;
  *(&v21 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v15 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v15);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B28CA68(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v8[3] = v3;
  v8[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  sub_21B28C78C(v8, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_21B28CB08(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_21B233A10(a2, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B32A29C(a1, v30, v11);
    v12 = type metadata accessor for PackedOptionalsArray();
    sub_21B328DA8(v11, v12);
LABEL_5:

LABEL_8:
    (*(v8 + 8))(v11, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  v13 = type metadata accessor for ColumnSlice();
  if (swift_dynamicCast())
  {
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    ColumnSlice.subscript.getter(a1, v13);
    v14 = type metadata accessor for PackedOptionalsArray();
    sub_21B328DA8(v11, v14);
    goto LABEL_5;
  }

  v23 = v3;
  v15 = type metadata accessor for DiscontiguousColumnSlice();
  if (swift_dynamicCast())
  {
    v16 = v31;
    v22 = v32;
    v21 = v33;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    DiscontiguousColumnSlice.subscript.getter(a1, v15, v11);
    v17 = type metadata accessor for PackedOptionalsArray();
    sub_21B328DA8(v11, v17);

    sub_21B23A9F4(v16, v22, v21);
    goto LABEL_8;
  }

  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v29 = 0xD000000000000014;
  *(&v29 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  v19 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v19);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B28CE54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_21B233A10(a2, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B32A29C(a1, v33, v13);
    v14 = type metadata accessor for PackedOptionalsArray();
    sub_21B32A918(v13, a3, v14);
LABEL_5:

LABEL_8:
    (*(v10 + 8))(v13, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  v15 = type metadata accessor for ColumnSlice();
  v16 = swift_dynamicCast();
  v26 = v4;
  if (v16)
  {
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v30 = v35;
    ColumnSlice.subscript.getter(a1, v15);
    v17 = type metadata accessor for PackedOptionalsArray();
    sub_21B32A918(v13, a3, v17);
    goto LABEL_5;
  }

  v25 = a3;
  v18 = type metadata accessor for DiscontiguousColumnSlice();
  if (swift_dynamicCast())
  {
    v24 = v34;
    v19 = v35;
    HIDWORD(v23) = v36;
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v30 = v35;
    v31 = v36;
    DiscontiguousColumnSlice.subscript.getter(a1, v18, v13);
    v20 = type metadata accessor for PackedOptionalsArray();
    sub_21B32A918(v13, v25, v20);

    sub_21B23A9F4(v24, v19, SBYTE4(v23));
    goto LABEL_8;
  }

  *&v32 = 0;
  *(&v32 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v32 = 0xD000000000000014;
  *(&v32 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  v22 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v22);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B28D1B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_21B233A10(a3, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B32A29C(a2, v33, v13);
    v14 = type metadata accessor for PackedOptionalsArray();
    sub_21B32CCD4(v13, a1, v14);
    (*(v10 + 8))(v13, v9);
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  v15 = type metadata accessor for ColumnSlice();
  v16 = swift_dynamicCast();
  v26 = v4;
  if (v16)
  {
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v30 = v35;
    ColumnSlice.subscript.getter(a2, v15);
    v17 = type metadata accessor for PackedOptionalsArray();
    sub_21B32CCD4(v13, a1, v17);
    (*(v10 + 8))(v13, v9);
    goto LABEL_5;
  }

  v25 = a1;
  v18 = type metadata accessor for DiscontiguousColumnSlice();
  if (swift_dynamicCast())
  {
    v24 = v34;
    v19 = v35;
    HIDWORD(v23) = v36;
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v30 = v35;
    v31 = v36;
    DiscontiguousColumnSlice.subscript.getter(a2, v18, v13);
    v20 = type metadata accessor for PackedOptionalsArray();
    sub_21B32CCD4(v13, v25, v20);
    (*(v10 + 8))(v13, v9);

    sub_21B23A9F4(v24, v19, SBYTE4(v23));
    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  *&v32 = 0;
  *(&v32 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v32 = 0xD000000000000014;
  *(&v32 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_getDynamicType();
  v22 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v22);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B28D53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  sub_21B32A29C(a1, *(v3 + 16), &v15 - v10);
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    result = (*(v8 + 8))(v11, v7);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v12 + 32))(boxed_opaque_existential_1, v11, v6);
  }

  return result;
}

uint64_t sub_21B28D6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_21B2832C0(a2, &v14);
  if (v15)
  {
    sub_21B261720(&v14, v16);
    sub_21B2616C4(v16, &v14);
    swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v10, 0, 1, v5);
    v11 = type metadata accessor for PackedOptionalsArray();
    sub_21B32CCD4(v10, a1, v11);
    (*(v7 + 8))(v10, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    sub_21B28EEB4(&v14);
    (*(*(v5 - 8) + 56))(v10, 1, 1, v5);
    v13 = type metadata accessor for PackedOptionalsArray();
    sub_21B32CCD4(v10, a1, v13);
    return (*(v7 + 8))(v10, v6);
  }
}

double sub_21B28D8A4@<D0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v8 = *v2;
  v9 = *(v2 + 1);
  v5 = *(a1 + 16);
  a2[3] = type metadata accessor for ColumnSlice();
  a2[4] = &off_282CAA478;
  v6 = swift_allocObject();
  *a2 = v6;
  return Column.subscript.getter(a1, v6 + 16);
}

uint64_t sub_21B28D940(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  sub_21B233A10(a3, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  v7 = *(a4 + 16);
  type metadata accessor for ColumnSlice();
  swift_dynamicCast();
  v9 = v12;
  v10 = v13;
  v11 = v14;
  return Column.subscript.setter(&v9, a1, a2, a4);
}

double sub_21B28D9F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v14 = *v5;
  v15 = *(v5 + 1);
  v11 = *(a4 + 16);
  a5[3] = type metadata accessor for DiscontiguousColumnSlice();
  a5[4] = &off_282CAB618;
  v12 = swift_allocObject();
  *a5 = v12;
  return sub_21B28B2B8(a1, a2, a3, a4, v12 + 16);
}

uint64_t sub_21B28DAC0(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B28DAD0(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Column<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *(a2 + 16);
  v15 = a3;
  type metadata accessor for Column.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_21B34B904();
  v17 = *(v5 - 8);
  v6 = *(v17 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  v9 = v3[1];
  v16 = *v3;
  v14[0] = v3[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B34BC94();
  LOBYTE(v21) = 0;
  v11 = v18;
  sub_21B34B8E4();
  if (v11)
  {
    return (*(v17 + 8))(v8, v5);
  }

  v13 = v17;
  v21 = v14[0];
  v20 = 1;
  type metadata accessor for PackedOptionalsArray();
  v19 = v15;
  swift_getWitnessTable();
  sub_21B34B8F4();
  return (*(v13 + 8))(v8, v5);
}

uint64_t Column<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v19 = a3;
  v20 = a2;
  type metadata accessor for Column.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_21B34B8D4();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B34BC74();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  v12 = v19;
  v11 = v20;
  LOBYTE(v24) = 0;
  v13 = sub_21B34B8B4();
  v15 = v14;
  v18 = v13;
  type metadata accessor for PackedOptionalsArray();
  v23 = 1;
  v22 = v11;
  swift_getWitnessTable();
  sub_21B34B8C4();
  (*(v10 + 8))(v8, v21);
  v16 = v24;
  *v12 = v18;
  v12[1] = v15;
  v12[2] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_21B28DFBC(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  if (*(v2 + 16) && (v7 != 1 || !*(v6 + 16)))
  {
    goto LABEL_11;
  }

  result = sub_21B2A6400(*v2, v2[1], *(v2 + 16));
  if (v9)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  if (v8 > v4)
  {
    v10 = v6;
    if (v7)
    {
      if (!*(v6 + 16))
      {
        goto LABEL_42;
      }

      v10 = *(v6 + 32);
    }

    if (v10 > a2)
    {
LABEL_11:
      result = 0;
      v11 = 0;
LABEL_12:
      v12 = v4;
      v13 = a2;
LABEL_13:

      return sub_21B28E6D0(result, v11, v12, v13);
    }

    result = sub_21B28E16C(v4, a2, v6, v5, v7);
    if (result == v11)
    {
      v11 = result;
      goto LABEL_12;
    }

    if (v7)
    {
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v14 = *(v6 + 16);
      if (result >= v14)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (*(v6 + 32 + 16 * result) >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = *(v6 + 32 + 16 * result);
      }

      v15 = v11 - 1;
      if (__OFSUB__(v11, 1))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v15 >= v14)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v5 = *(v6 + 32 + 16 * v15 + 8);
    }

    else
    {
      if (result)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (__OFSUB__(v11, 1))
      {
        goto LABEL_43;
      }

      if (v6 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v6;
      }

      if (v11 != 1)
      {
        goto LABEL_49;
      }
    }

    if (v5 <= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = v5;
    }

    if (v13 >= v12)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return sub_21B248A60(v4, a2);
}

unint64_t sub_21B28E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a2)
  {
    goto LABEL_73;
  }

  v5 = a5;
  if (a5 && (a5 != 1 || !*(a3 + 16)))
  {
    goto LABEL_78;
  }

  result = sub_21B2A6400(a3, a4, a5);
  if (v12)
  {
    goto LABEL_80;
  }

  if (v11 < a1)
  {
    goto LABEL_74;
  }

  if (v5)
  {
    v13 = *(a3 + 16);
    if (!v13)
    {
      goto LABEL_77;
    }

    if (*(a3 + 32) > a2)
    {
      goto LABEL_75;
    }
  }

  else
  {
    if (a3 > a2)
    {
      goto LABEL_75;
    }

    v13 = 1;
  }

  v14 = 0;
  do
  {
    v15 = v13 >> 1;
    v16 = v14 + (v13 >> 1);
    if (__OFADD__(v14, v13 >> 1))
    {
      goto LABEL_64;
    }

    if (v5)
    {
      if (v16 > *(a3 + 16))
      {
        goto LABEL_65;
      }
    }

    else if (v16 > 1)
    {
      goto LABEL_65;
    }

    if (!v5)
    {
      if (v16)
      {
        goto LABEL_68;
      }

      if (a4 >= a1)
      {
        goto LABEL_14;
      }

LABEL_27:
      if (v5)
      {
        if (v16 >= *(a3 + 16))
        {
          goto LABEL_82;
        }
      }

      else if (v16)
      {
        goto LABEL_82;
      }

      v14 = v16 + 1;
      v15 = v13 + ~v15;
      goto LABEL_14;
    }

    if (v5 != 1)
    {
      goto LABEL_81;
    }

    if (v16 >= *(a3 + 16))
    {
      goto LABEL_69;
    }

    if (*(a3 + 32 + 16 * v16 + 8) < a1)
    {
      goto LABEL_27;
    }

LABEL_14:
    v13 = v15;
  }

  while (v15 > 0);
  if (!v5)
  {
    if (v14 > 1)
    {
      goto LABEL_79;
    }

    v17 = 1;
    if (v14 < 0)
    {
      goto LABEL_63;
    }

LABEL_35:
    result = sub_21B27E1E4();
    if (result < 1)
    {
      return v14;
    }

    v18 = v14;
    while (1)
    {
      v19 = result >> 1;
      v20 = v18 + (result >> 1);
      if (__OFADD__(v18, result >> 1))
      {
        goto LABEL_66;
      }

      if (v5)
      {
        if (v5 == 1)
        {
          v21 = *(a3 + 16);
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 1;
      }

      if (v20 >= v17 || v20 < v14 || v20 > v21)
      {
        goto LABEL_67;
      }

      if (v5)
      {
        break;
      }

      if (v20)
      {
        goto LABEL_71;
      }

      if (a3 <= a2)
      {
        goto LABEL_54;
      }

LABEL_37:
      result = v19;
      if (v19 <= 0)
      {
        if (v18 < v14)
        {
          goto LABEL_76;
        }

        return v14;
      }
    }

    if (v5 != 1)
    {
      goto LABEL_81;
    }

    if (v20 >= *(a3 + 16))
    {
      goto LABEL_70;
    }

    if (*(a3 + 32 + 16 * v20) > a2)
    {
      goto LABEL_37;
    }

LABEL_54:
    if (v5)
    {
      if (v20 >= *(a3 + 16))
      {
        goto LABEL_83;
      }
    }

    else if (v20)
    {
      goto LABEL_83;
    }

    v18 = v20 + 1;
    v19 = result + ~v19;
    goto LABEL_37;
  }

  v17 = *(a3 + 16);
  if (v17 >= v14)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_21B34B824();
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}