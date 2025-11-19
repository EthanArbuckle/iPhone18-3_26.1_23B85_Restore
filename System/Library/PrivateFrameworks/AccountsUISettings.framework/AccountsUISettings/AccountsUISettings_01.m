uint64_t sub_23DCF3368(void **__src, void **__dst, char *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst - __src;
  v7 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v7 = __dst - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - __dst;
  v10 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v10 = a3 - __dst;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    v37 = __dst;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v70 = &v14[v11];
    if (v9 < 8 || v37 <= v5)
    {
      goto LABEL_72;
    }

    v69 = v14;
    v62 = v5;
    while (2)
    {
      v67 = v37;
      v38 = v37 - 1;
      v39 = v4;
      v40 = v70;
      v63 = v37 - 1;
      while (1)
      {
        v65 = v40 - 1;
        v41 = *v38;
        v42 = qword_27E30DFD0;
        v43 = *(v40 - 1);
        v44 = v41;
        if (v42 != -1)
        {
          swift_once();
        }

        v45 = qword_27E311CD0;

        v46 = sub_23DCF0270(v43, v45);
        v48 = v47;

        v49 = (v48 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v46;
        v50 = qword_27E311CD0;

        v51 = sub_23DCF0270(v44, v50);
        v53 = v52;

        if (v53)
        {
          break;
        }

        v55 = v49 == 0x7FFFFFFFFFFFFFFFLL && v51 == 0x7FFFFFFFFFFFFFFFLL;
        v54 = v62;
        if (v55)
        {
          goto LABEL_59;
        }

        v4 = v39 - 8;
        if (v49 < v51)
        {
          goto LABEL_65;
        }

LABEL_63:
        v38 = v63;
        v40 = v65;
        if (v70 != v39)
        {
          *v4 = *v65;
        }

        v70 = v65;
        v39 = v4;
        if (v65 <= v69)
        {
          v70 = v65;
          v37 = v67;
          v14 = v69;
          goto LABEL_72;
        }
      }

      v54 = v62;
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {

        v4 = v39 - 8;
LABEL_65:
        if (v39 != v67)
        {
          *v4 = *v63;
        }

        v14 = v69;
        if (v70 <= v69 || (v37 = v63, v63 <= v54))
        {
          v37 = v63;
          goto LABEL_72;
        }

        continue;
      }

      break;
    }

LABEL_59:
    v56 = sub_23DD42178();
    v58 = v57;
    if (v56 == sub_23DD42178() && v58 == v59)
    {

      v4 = v39 - 8;
    }

    else
    {
      v60 = sub_23DD42648();

      v4 = v39 - 8;
      if (v60)
      {
        goto LABEL_65;
      }
    }

    goto LABEL_63;
  }

  if (a4 != __src || &__src[v8] <= a4)
  {
    v13 = a4;
    memmove(a4, __src, 8 * v8);
    a4 = v13;
  }

  v70 = &a4[v8];
  v14 = a4;
  if (v6 >= 8 && __dst < v4)
  {
    v15 = __dst;
    v64 = v4;
    do
    {
      v66 = v15;
      v68 = v14;
      v16 = *v14;
      v17 = qword_27E30DFD0;
      v18 = *v15;
      v19 = v16;
      if (v17 != -1)
      {
        swift_once();
      }

      v20 = qword_27E311CD0;

      v21 = sub_23DCF0270(v18, v20);
      v23 = v22;

      if (v23)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v21;
      }

      v25 = qword_27E311CD0;

      v26 = sub_23DCF0270(v19, v25);
      v28 = v27;

      if (v28)
      {
        v29 = v64;
        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {

LABEL_30:
          v14 = v68;
          v36 = v66;
          v15 = v66 + 1;
          if (v5 == v66)
          {
            goto LABEL_32;
          }

LABEL_31:
          *v5 = *v36;
          goto LABEL_32;
        }
      }

      else
      {
        v30 = v24 == 0x7FFFFFFFFFFFFFFFLL && v26 == 0x7FFFFFFFFFFFFFFFLL;
        v29 = v64;
        if (!v30)
        {

          if (v24 < v26)
          {
            goto LABEL_30;
          }

          goto LABEL_35;
        }
      }

      v31 = sub_23DD42178();
      v33 = v32;
      if (v31 == sub_23DD42178() && v33 == v34)
      {
      }

      else
      {
        v35 = sub_23DD42648();

        if (v35)
        {
          goto LABEL_30;
        }
      }

LABEL_35:
      v15 = v66;
      v36 = v68;
      v14 = v68 + 1;
      if (v5 != v68)
      {
        goto LABEL_31;
      }

LABEL_32:
      ++v5;
    }

    while (v14 < v70 && v15 < v29);
  }

  v37 = v5;
LABEL_72:
  if (v37 != v14 || v37 >= (v14 + ((v70 - v14 + (v70 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v37, v14, 8 * (v70 - v14));
  }

  return 1;
}

uint64_t sub_23DCF389C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DCF3928(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_23DCF3964(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void _sSo9ACAccountC18AccountsUISettingsE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  if (ACAccount.appearsActive()() && !ACAccount.appearsActive()() || !ACAccount.appearsActive()() && ACAccount.appearsActive()())
  {
    return;
  }

  v4 = [a1 accountType];
  if (!v4)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v5 = v4;
  v6 = [v4 identifier];

  if (v6)
  {
    v7 = sub_23DD42178();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a2 accountType];
  if (!v10)
  {
    goto LABEL_81;
  }

  v11 = v10;
  v12 = [v10 identifier];

  if (!v12)
  {
    if (!v9)
    {
      goto LABEL_45;
    }

    goto LABEL_20;
  }

  v13 = sub_23DD42178();
  v15 = v14;

  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_45;
    }

    goto LABEL_20;
  }

  if (!v15)
  {
LABEL_20:

    goto LABEL_21;
  }

  if (v7 == v13 && v9 == v15)
  {

    goto LABEL_45;
  }

  v37 = sub_23DD42648();

  if (v37)
  {
LABEL_45:
    v38 = [a1 accountType];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 identifier];

      if (v40)
      {
        v41 = sub_23DD42178();
        v43 = v42;

        v44 = *MEMORY[0x277CB8BA0];
        v45 = sub_23DD42178();
        if (v43)
        {
          if (v41 == v45 && v43 == v46)
          {

            goto LABEL_59;
          }

          v55 = sub_23DD42648();

          if (v55)
          {
LABEL_59:
            v56 = sub_23DD42138();
            v57 = [a1 accountPropertyForKey_];

            if (v57)
            {
              sub_23DD424A8();
              swift_unknownObjectRelease();
            }

            else
            {
              v63 = 0u;
              v64 = 0u;
            }

            v65 = v63;
            v66 = v64;
            if (*(&v64 + 1))
            {
              sub_23DCF0044();
              if (swift_dynamicCast())
              {
                v58 = [v62 BOOLValue];

                goto LABEL_67;
              }
            }

            else
            {
              sub_23DCEFFDC(&v65);
            }

            v58 = 0;
LABEL_67:
            v59 = sub_23DD42138();
            v60 = [a2 accountPropertyForKey_];

            if (v60)
            {
              sub_23DD424A8();
              swift_unknownObjectRelease();
            }

            else
            {
              v63 = 0u;
              v64 = 0u;
            }

            v65 = v63;
            v66 = v64;
            if (*(&v64 + 1))
            {
              sub_23DCF0044();
              if (swift_dynamicCast())
              {
                v61 = [v62 BOOLValue];

                if (v58)
                {
                  if ((v61 & 1) == 0)
                  {
                    return;
                  }
                }

                else if (v61)
                {
                  return;
                }

                goto LABEL_53;
              }
            }

            else
            {
              sub_23DCEFFDC(&v65);
            }

            if (v58)
            {
              return;
            }
          }

LABEL_53:
          v48 = [a1 accountDescription];
          if (v48)
          {
            v49 = v48;
            v50 = sub_23DD42178();
            v52 = v51;

            v53 = [a2 accountDescription];
            if (v53)
            {
              v54 = v53;
              sub_23DD42178();

              *&v65 = v50;
              *(&v65 + 1) = v52;
              sub_23DCF4570();
              sub_23DD42498();
            }
          }

          return;
        }
      }

      else
      {
        v47 = *MEMORY[0x277CB8BA0];
        sub_23DD42178();
      }

      goto LABEL_53;
    }

LABEL_86:
    __break(1u);
    return;
  }

LABEL_21:
  if (qword_2814FCC70 != -1)
  {
    swift_once();
  }

  v16 = off_2814FCC78;
  v17 = [a1 accountType];
  if (!v17)
  {
    goto LABEL_82;
  }

  v18 = v17;
  v19 = [v17 identifier];

  if (!v19)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v20 = sub_23DD42178();
  v22 = v21;

  v23 = v16[2];
  if (v23)
  {
    v24 = 0;
    v25 = v16 + 5;
    do
    {
      if (*(v25 - 1) == v20 && *v25 == v22)
      {
        break;
      }

      if (sub_23DD42648())
      {
        break;
      }

      ++v24;
      v25 += 2;
    }

    while (v23 != v24);
  }

  v27 = [a2 accountType];
  if (!v27)
  {
    goto LABEL_84;
  }

  v28 = v27;
  v29 = [v27 identifier];

  if (!v29)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v30 = sub_23DD42178();
  v32 = v31;

  v33 = v16[2];
  if (v33)
  {
    v34 = 0;
    v35 = v16 + 5;
    do
    {
      if (*(v35 - 1) == v30 && *v35 == v32)
      {
        break;
      }

      if (sub_23DD42648())
      {
        break;
      }

      ++v34;
      v35 += 2;
    }

    while (v33 != v34);
  }
}

unint64_t sub_23DCF4128()
{
  result = qword_27E30E0D0;
  if (!qword_27E30E0D0)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E0D0);
  }

  return result;
}

void _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_23DCF4570();
    v2 = (sub_23DD42458() + 16);
    if (*v2)
    {
      v3 = &v2[2 * *v2];
      v4 = *v3;
      v5 = v3[1];

      v6 = sub_23DD421A8();
      v8 = v7;

      MEMORY[0x23EEFDA30](v6, v8);

      v9 = sub_23DD42138();
      v10 = [objc_opt_self() bundleWithIdentifier_];

      if (v10)
      {
        v11 = sub_23DD42138();

        v12 = sub_23DD42138();
        v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

        sub_23DD42178();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_23DCF4364(uint64_t a1, uint64_t a2, char a3)
{
  sub_23DCF4570();
  v4 = (sub_23DD42458() + 16);
  if (*v4)
  {
    v5 = &v4[2 * *v4];
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_23DD421A8();
    v10 = v9;

    sub_23DD42538();

    MEMORY[0x23EEFDA30](v8, v10);

    if (a3)
    {
      MEMORY[0x23EEFDA30](0x524548544F5FLL, 0xE600000000000000);
    }

    v11 = sub_23DD42138();
    v12 = [objc_opt_self() bundleWithIdentifier_];

    if (v12)
    {
      v13 = sub_23DD42138();

      v14 = sub_23DD42138();
      v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

      sub_23DD42178();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

unint64_t sub_23DCF4570()
{
  result = qword_2814FCC98;
  if (!qword_2814FCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FCC98);
  }

  return result;
}

uint64_t sub_23DCF45C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v6 = 0xE000000000000000;
  v20 = 0;
  v21 = 0xE000000000000000;
  v19[3] = &type metadata for AccountsUIModel.FeatureFlags;
  v19[4] = sub_23DCE1B80();
  v7 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (v7)
  {
    v8 = 0x5F6E7265646F6DLL;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v6 = 0xE700000000000000;
  }

  MEMORY[0x23EEFDA30](v8, v6);

  v19[0] = a1;
  v19[1] = a2;
  sub_23DCF4570();
  v9 = (sub_23DD42458() + 16);
  if (*v9)
  {
    v10 = &v9[2 * *v9];
    v11 = *v10;
    v12 = v10[1];

    v13 = sub_23DD42198();
    v15 = v14;
  }

  else
  {

    v13 = 0;
    v15 = 0xE000000000000000;
  }

  MEMORY[0x23EEFDA30](v13, v15);

  if (v5)
  {
    v16 = 0x746365725FLL;
  }

  else
  {
    v16 = 0x6572617571735FLL;
  }

  if (v5)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  MEMORY[0x23EEFDA30](v16, v17);

  return v20;
}

unint64_t sub_23DCF4750(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CB8BC8];
  if (sub_23DD42178() == a1 && v5 == a2)
  {
    goto LABEL_20;
  }

  v7 = sub_23DD42648();

  if (v7)
  {
    return 0xD000000000000013;
  }

  v8 = *MEMORY[0x277CB8D10];
  if (sub_23DD42178() == a1 && v9 == a2)
  {
LABEL_20:

    return 0xD000000000000013;
  }

  v11 = sub_23DD42648();

  if (v11)
  {
    return 0xD000000000000013;
  }

  v12 = *MEMORY[0x277CB8BD8];
  if (sub_23DD42178() == a1 && v13 == a2)
  {
    goto LABEL_18;
  }

  v15 = sub_23DD42648();

  if (v15)
  {
    return 0xD00000000000001BLL;
  }

  v16 = *MEMORY[0x277CB8C98];
  if (sub_23DD42178() == a1 && v17 == a2)
  {
LABEL_18:

    return 0xD00000000000001BLL;
  }

  v19 = sub_23DD42648();

  if (v19)
  {
    return 0xD00000000000001BLL;
  }

  v20 = *MEMORY[0x277CB8C60];
  if (sub_23DD42178() == a1 && v21 == a2)
  {
    goto LABEL_25;
  }

  v22 = sub_23DD42648();

  if (v22)
  {
    return 0xD000000000000014;
  }

  v23 = *MEMORY[0x277CB8C68];
  if (sub_23DD42178() == a1 && v24 == a2)
  {
    goto LABEL_25;
  }

  v25 = sub_23DD42648();

  if (v25)
  {
    return 0xD000000000000014;
  }

  v26 = *MEMORY[0x277CB8CD8];
  if (sub_23DD42178() == a1 && v27 == a2)
  {
    goto LABEL_25;
  }

  v28 = sub_23DD42648();

  if (v28)
  {
    return 0xD000000000000014;
  }

  v29 = *MEMORY[0x277CB8CF8];
  if (sub_23DD42178() == a1 && v30 == a2)
  {
LABEL_25:

    return 0xD000000000000014;
  }

  v31 = sub_23DD42648();

  if (v31)
  {
    return 0xD000000000000014;
  }

  return 0;
}

void sub_23DCF4A10(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_23DD41E58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E288, &qword_23DD44080);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = *a3;
  if (v13)
  {
    goto LABEL_2;
  }

  sub_23DCF4750(a1, a2);
  if (v16)
  {
    v17 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v18 = sub_23DD42138();

    [v17 initWithBundleIdentifier_];

    v19 = [objc_opt_self() imageDescriptorNamed_];
LABEL_17:
    v29 = v19;
    sub_23DD41498();
    sub_23DCF4FFC();
    sub_23DD41F48();
    return;
  }

  v23 = *MEMORY[0x277CB8BA0];
  if (sub_23DD42178() == a1 && v24 == a2)
  {

LABEL_16:
    v27 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v28 = sub_23DD42138();
    [v27 initWithType_];

    v19 = [objc_opt_self() imageDescriptorNamed_];
    goto LABEL_17;
  }

  v26 = sub_23DD42648();

  if (v26)
  {
    goto LABEL_16;
  }

LABEL_2:
  v14 = [objc_opt_self() imageDescriptorNamed_];
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    [v14 size];
  }

  LOBYTE(v30[0]) = v13;
  sub_23DCF45C4(a1, a2, v30);
  v20 = sub_23DD42138();
  v21 = [objc_opt_self() bundleWithIdentifier_];

  if (v21)
  {
    sub_23DD41E88();
    (*(v7 + 104))(v10, *MEMORY[0x277CE0FE0], v6);
    v22 = sub_23DD41E78();

    (*(v7 + 8))(v10, v6);
    sub_23DD41FF8();
    sub_23DD41848();
    v32 = 1;
    v30[0] = v22;
    v30[15] = 0;
    v31 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E290, &qword_23DD44088);
    sub_23DCF4EEC();
    sub_23DD41F48();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_23DCF4EEC()
{
  result = qword_27E30E298;
  if (!qword_27E30E298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E290, &qword_23DD44088);
    sub_23DCF4F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E298);
  }

  return result;
}

unint64_t sub_23DCF4F78()
{
  result = qword_27E30E2A0;
  if (!qword_27E30E2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E2A8, &qword_23DD44090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E2A0);
  }

  return result;
}

unint64_t sub_23DCF4FFC()
{
  result = qword_27E30E2B0;
  if (!qword_27E30E2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E288, &qword_23DD44080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E2B0);
  }

  return result;
}

id sub_23DCF5064@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 32) isEnabledForDataclass_];
  *a1 = result;
  return result;
}

uint64_t sub_23DCF5098(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_23DCF50A8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

BOOL sub_23DCF5134(id a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v5 = sub_23DD425C8();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x23EEFDD80](v6, a2);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = [v8 type];

    v6 = v7 + 1;
  }

  while (v10 != a1);
  return v5 != v7;
}

void *sub_23DCF5220(id a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DD425C8())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EEFDD80](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v6 = *(a2 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v6 type] == a1)
      {
        return v7;
      }

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

uint64_t sub_23DCF5310(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4A8, &qword_23DD44718);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4B0, &qword_23DD44720);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = a1;
    sub_23DD416D8();

    v12 = v15;
    if (v15)
    {
      v15 = ACAccount.sortedProvisionedDataclasses.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4C8, &qword_23DD47390);
      sub_23DCEF9F0(&qword_27E30E4D0, &qword_27E30E4C8, &qword_23DD47390);
      sub_23DCFDCF8();
      sub_23DCFD4F8(&qword_27E30E4D8, type metadata accessor for AccountUISetting.CustomDataclass);
      sub_23DD41FB8();
      (*(v7 + 16))(v5, v10, v6);
      swift_storeEnumTagMultiPayload();
      sub_23DCFDC7C(&qword_27E30E4B8, &qword_27E30E4B0, &qword_23DD44720, sub_23DCFDCF8);
      sub_23DD41A78();

      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_23DCFDC7C(&qword_27E30E4B8, &qword_27E30E4B0, &qword_23DD44720, sub_23DCFDCF8);
      return sub_23DD41A78();
    }
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

__n128 sub_23DCF56CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for AccountsUIModel(0);
  sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);

  v4 = sub_23DD41888();
  v11 = v5;
  v12 = v4;
  type metadata accessor for AccountUISetting.CustomDataclass(0);
  sub_23DCFD4F8(&qword_27E30E478, type metadata accessor for AccountUISetting.CustomDataclass);
  v6 = sub_23DD41818();
  v9 = v7;
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E050, &qword_23DD436A0);
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E0C8, &qword_23DD43728);
  sub_23DD41EA8();
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v13;
  *(a2 + 48) = v13.n128_u8[0];
  *(a2 + 56) = v13.n128_u64[1];
  *(a2 + 64) = v13.n128_u8[0];
  *(a2 + 72) = v13.n128_u64[1];
  *(a2 + 80) = v13.n128_u8[0];
  *(a2 + 88) = v13.n128_u64[1];
  *(a2 + 96) = v13.n128_u8[0];
  *(a2 + 104) = v13.n128_u64[1];
  *(a2 + 112) = v13.n128_u8[0];
  *(a2 + 120) = v13.n128_u64[1];
  result = v13;
  *(a2 + 128) = v13;
  *(a2 + 144) = v14;
  *(a2 + 152) = v13;
  *(a2 + 168) = v14;
  *(a2 + 176) = v13;
  return result;
}

uint64_t sub_23DCF5984()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4C8, &qword_23DD47390);
  sub_23DCEF9F0(&qword_27E30E4D0, &qword_27E30E4C8, &qword_23DD47390);
  sub_23DCFDCF8();
  sub_23DCFD4F8(&qword_27E30E4D8, type metadata accessor for AccountUISetting.CustomDataclass);
  return sub_23DD41FB8();
}

void sub_23DCF5AD0(uint64_t a1@<X2>, unsigned __int8 *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock;
  swift_beginAccess();
  if (*(v4 + v5))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DD416D8();

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E8, &qword_23DD44510);
    MEMORY[0x23EEFD790](v6);
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v8 = v7;
      sub_23DD416D8();

      if (v12)
      {
        swift_beginAccess();
        v9 = *(v4 + 32);
        v10 = [v12 isEnabledForDataclass_];

        *a2 = v10;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      v11 = *(a1 + 8);
      type metadata accessor for AccountsUIModel(0);
      sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
      sub_23DD41868();
      __break(1u);
    }
  }
}

uint64_t DataclassRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E300, &qword_23DD44180);
  v2 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v4 = v50 - v3;
  v58 = v50 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E308, &qword_23DD44188);
  v6 = *(v5 - 8);
  v59 = v5;
  v60 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v67 = v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E310, &qword_23DD44190);
  v10 = *(v9 - 8);
  v61 = v9;
  v62 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = v50 - v12;
  v13 = v1[9];
  v96 = v1[8];
  v97 = v13;
  v14 = v1[11];
  v98 = v1[10];
  v99 = v14;
  v15 = v1[5];
  v92 = v1[4];
  v93 = v15;
  v16 = v1[7];
  v94 = v1[6];
  v95 = v16;
  v17 = v1[1];
  v88 = *v1;
  v89 = v17;
  v18 = v1[3];
  v90 = v1[2];
  v91 = v18;
  sub_23DCF6498(&v88, v4);
  v84 = v96;
  v85 = v97;
  v86 = v98;
  v87 = v99;
  v80 = v92;
  v81 = v93;
  v82 = v94;
  v83 = v95;
  v76 = v88;
  v77 = v89;
  v78 = v90;
  v79 = v91;
  v100 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E318, &qword_23DD44198);
  sub_23DD41EB8();
  v19 = v75;
  v100 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  v20 = v75;
  sub_23DCFB4C0(v19);
  v22 = v21;
  v24 = v23;

  *&v76 = v22;
  *(&v76 + 1) = v24;
  v65 = sub_23DCF4570();
  v25 = sub_23DD41C48();
  v27 = v26;
  v29 = v28;
  v54 = v30;
  v100 = v92;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  sub_23DD41ED8();
  LODWORD(v53) = v77;
  v74 = &v88;
  v73 = &v88;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E330, &qword_23DD441B0);
  OpaqueTypeConformance2 = sub_23DCFB9B4();
  v57 = sub_23DCFDC7C(&qword_27E30E398, &qword_27E30E330, &qword_23DD441B0, sub_23DCFBCB4);
  v31 = v58;
  sub_23DD41D78();

  sub_23DCEF904(v25, v27, v29 & 1);

  sub_23DCEFA38(v31, &qword_27E30E300, &qword_23DD44180);
  v100 = v96;
  v101 = v97;
  v76 = v96;
  *&v77 = v97;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
  sub_23DD41EB8();
  v76 = v75;
  v32 = sub_23DD41C48();
  v52 = v33;
  v53 = v32;
  v35 = v34;
  v51 = v36;
  v75 = v93;
  sub_23DD41ED8();
  v50[3] = v77;
  v72 = &v88;
  v71 = &v88;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  *&v76 = v66;
  *(&v76 + 1) = v55;
  v37 = MEMORY[0x277CE0BD8];
  *&v77 = MEMORY[0x277CE0BD8];
  *(&v77 + 1) = OpaqueTypeConformance2;
  *&v78 = v57;
  *(&v78 + 1) = MEMORY[0x277CE0BC8];
  v66 = MEMORY[0x277CDEDF0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
  v38 = v59;
  v39 = v67;
  v41 = v52;
  v40 = v53;
  sub_23DD41D78();

  sub_23DCEF904(v40, v41, v35 & 1);

  (*(v60 + 8))(v39, v38);
  v76 = v100;
  *&v77 = v101;
  sub_23DD41EB8();
  v76 = v75;
  v67 = sub_23DD41C48();
  v65 = v42;
  LOBYTE(v41) = v43;
  v60 = v44;
  v75 = v94;
  sub_23DD41ED8();
  LODWORD(v64) = v77;
  v70 = &v88;
  v69 = &v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D8, &qword_23DD44200);
  *&v76 = v38;
  *(&v76 + 1) = v54;
  *&v77 = v37;
  *(&v77 + 1) = OpaqueTypeConformance2;
  *&v78 = v57;
  *(&v78 + 1) = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_23DCEF9F0(&qword_27E30E3E0, &qword_27E30E3D8, &qword_23DD44200);
  v45 = v61;
  v47 = v67;
  v46 = v68;
  v48 = v65;
  sub_23DD41D78();

  sub_23DCEF904(v47, v48, v41 & 1);

  return (*(v62 + 8))(v46, v45);
}

uint64_t sub_23DCF6498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E470, &qword_23DD444C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v56 - v6);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E368, &qword_23DD441C8);
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v62 = v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E358, &qword_23DD441C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = v56 - v14;
  v66 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DD416D8();

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E8, &qword_23DD44510);
  MEMORY[0x23EEFD790](&v65);
  v16 = v65;

  if (v16 == 1)
  {
    v57 = v10;
    v58 = v4;
    v59 = a2;
    sub_23DCEFA38(&v66, &qword_27E30E480, &qword_23DD44518);
    sub_23DD422C8();
    sub_23DCFC15C(a1, v64);
    v17 = sub_23DD422B8();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    v20 = *(a1 + 144);
    *(v18 + 160) = *(a1 + 128);
    *(v18 + 176) = v20;
    v21 = *(a1 + 176);
    *(v18 + 192) = *(a1 + 160);
    *(v18 + 208) = v21;
    v22 = *(a1 + 80);
    *(v18 + 96) = *(a1 + 64);
    *(v18 + 112) = v22;
    v23 = *(a1 + 112);
    *(v18 + 128) = *(a1 + 96);
    *(v18 + 144) = v23;
    v24 = *(a1 + 16);
    *(v18 + 32) = *a1;
    *(v18 + 48) = v24;
    v25 = *(a1 + 48);
    *(v18 + 64) = *(a1 + 32);
    *(v18 + 80) = v25;
    sub_23DCFC15C(a1, v64);
    v26 = sub_23DD422B8();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v19;
    v28 = *(a1 + 144);
    *(v27 + 160) = *(a1 + 128);
    *(v27 + 176) = v28;
    v29 = *(a1 + 176);
    *(v27 + 192) = *(a1 + 160);
    *(v27 + 208) = v29;
    v30 = *(a1 + 80);
    *(v27 + 96) = *(a1 + 64);
    *(v27 + 112) = v30;
    v31 = *(a1 + 112);
    *(v27 + 128) = *(a1 + 96);
    *(v27 + 144) = v31;
    v32 = *(a1 + 16);
    *(v27 + 32) = *a1;
    *(v27 + 48) = v32;
    v33 = *(a1 + 48);
    *(v27 + 64) = *(a1 + 32);
    *(v27 + 80) = v33;
    v34 = sub_23DD41F88();
    MEMORY[0x28223BE20](v34);
    v56[-2] = a1;
    v35 = sub_23DCFBC60();
    v36 = v62;
    v56[1] = v35;
    sub_23DD41F28();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DD416D8();

    MEMORY[0x23EEFD790](&v65, v15);
    LOBYTE(v26) = v65;

    KeyPath = swift_getKeyPath();
    v38 = swift_allocObject();
    *(v38 + 16) = (v26 & 1) == 0;
    v39 = (v36 + *(v63 + 36));
    *v39 = KeyPath;
    v39[1] = sub_23DCFD788;
    v39[2] = v38;
    v40 = *a1;
    if (*a1)
    {
      v41 = objc_opt_self();
      v42 = v40;
      v43 = [v41 sharedConnection];
      v44 = v57;
      if (v43)
      {
        v45 = v43;
        v46 = [v43 effectiveBoolValueForSetting_];

        v47 = swift_getKeyPath();
        v48 = swift_allocObject();
        *(v48 + 16) = v46 == 2;
        v49 = v60;
        sub_23DCFD790(v36, v60, &qword_27E30E368, &qword_23DD441C8);
        v50 = (v49 + *(v44 + 36));
        *v50 = v47;
        v50[1] = sub_23DCFDE68;
        v50[2] = v48;
        v51 = v49;
        v52 = v61;
        sub_23DCFD790(v51, v61, &qword_27E30E358, &qword_23DD441C0);
        sub_23DCFD8B0(v52, v7, &qword_27E30E358, &qword_23DD441C0);
        swift_storeEnumTagMultiPayload();
        sub_23DCFBAC4();
        sub_23DD41A78();
        return sub_23DCEFA38(v52, &qword_27E30E358, &qword_23DD441C0);
      }

      __break(1u);
    }

    v55 = *(a1 + 8);
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  else
  {
    type metadata accessor for AccountUISetting.CustomDataclass(0);
    sub_23DCFD4F8(&qword_27E30E478, type metadata accessor for AccountUISetting.CustomDataclass);
    *v7 = sub_23DD41818();
    v7[1] = v54;
    swift_storeEnumTagMultiPayload();
    sub_23DCFBAC4();
    sub_23DCFBC60();
    return sub_23DD41A78();
  }

  return result;
}

uint64_t sub_23DCF6C14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  type metadata accessor for AccountUISetting.CustomDataclass(0);
  sub_23DCFD4F8(&qword_27E30E478, type metadata accessor for AccountUISetting.CustomDataclass);

  result = sub_23DD41818();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23DCF6C9C(_OWORD *a1)
{
  v10[0] = a1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E318, &qword_23DD44198);
  sub_23DD41EB8();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = a1[9];
  v2[9] = a1[8];
  v2[10] = v3;
  v4 = a1[11];
  v2[11] = a1[10];
  v2[12] = v4;
  v5 = a1[5];
  v2[5] = a1[4];
  v2[6] = v5;
  v6 = a1[7];
  v2[7] = a1[6];
  v2[8] = v6;
  v7 = a1[1];
  v2[1] = *a1;
  v2[2] = v7;
  v8 = a1[3];
  v2[3] = a1[2];
  v2[4] = v8;
  sub_23DCFC15C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E0C8, &qword_23DD43728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3A8, &unk_23DD441E0);
  sub_23DCEF9F0(&qword_27E30E438, &qword_27E30E0C8, &qword_23DD43728);
  sub_23DCFD4F8(&qword_27E30E440, type metadata accessor for ACDataclassActionType);
  sub_23DCFBCB4();
  return sub_23DD41FA8();
}

uint64_t sub_23DCF6E48@<X0>(void **a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E448, &qword_23DD44490);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v61 = &v59 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3C8, &unk_23DD441F0);
  v8 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v10 = &v59 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E450, &qword_23DD44498);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  v24 = *a1;
  if ([v24 isDestructive])
  {
    sub_23DCF1E88();
    v65 = v25;
    v66 = v26;
    sub_23DD41738();
    v27 = sub_23DD41758();
    (*(*(v27 - 8) + 56))(v18, 0, 1, v27);
    v28 = swift_allocObject();
    v29 = a2[9];
    *(v28 + 144) = a2[8];
    *(v28 + 160) = v29;
    v30 = a2[11];
    *(v28 + 176) = a2[10];
    *(v28 + 192) = v30;
    v31 = a2[5];
    *(v28 + 80) = a2[4];
    *(v28 + 96) = v31;
    v32 = a2[7];
    *(v28 + 112) = a2[6];
    *(v28 + 128) = v32;
    v33 = a2[1];
    *(v28 + 16) = *a2;
    *(v28 + 32) = v33;
    v34 = a2[3];
    *(v28 + 48) = a2[2];
    *(v28 + 64) = v34;
    *(v28 + 208) = v24;
    sub_23DCFC15C(a2, v64);
    sub_23DCF4570();
    v35 = v24;
    sub_23DD41F08();
    (*(v20 + 16))(v14, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
    sub_23DCFBD6C();
    sub_23DD41A78();
    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    v60 = v10;
    v37 = [v24 type];
    sub_23DCF1E88();
    v65 = v38;
    v66 = v39;
    if (v37)
    {
      v40 = swift_allocObject();
      v41 = a2[9];
      *(v40 + 144) = a2[8];
      *(v40 + 160) = v41;
      v42 = a2[11];
      *(v40 + 176) = a2[10];
      *(v40 + 192) = v42;
      v43 = a2[5];
      *(v40 + 80) = a2[4];
      *(v40 + 96) = v43;
      v44 = a2[7];
      *(v40 + 112) = a2[6];
      *(v40 + 128) = v44;
      v45 = a2[1];
      *(v40 + 16) = *a2;
      *(v40 + 32) = v45;
      v46 = a2[3];
      *(v40 + 48) = a2[2];
      *(v40 + 64) = v46;
      *(v40 + 208) = v24;
      sub_23DCFC15C(a2, v64);
      sub_23DCF4570();
      v47 = v24;
      sub_23DD41F18();
    }

    else
    {
      sub_23DD41748();
      v48 = sub_23DD41758();
      (*(*(v48 - 8) + 56))(v18, 0, 1, v48);
      v49 = swift_allocObject();
      v50 = a2[9];
      *(v49 + 144) = a2[8];
      *(v49 + 160) = v50;
      v51 = a2[11];
      *(v49 + 176) = a2[10];
      *(v49 + 192) = v51;
      v52 = a2[5];
      *(v49 + 80) = a2[4];
      *(v49 + 96) = v52;
      v53 = a2[7];
      *(v49 + 112) = a2[6];
      *(v49 + 128) = v53;
      v54 = a2[1];
      *(v49 + 16) = *a2;
      *(v49 + 32) = v54;
      v55 = a2[3];
      *(v49 + 48) = a2[2];
      *(v49 + 64) = v55;
      *(v49 + 208) = v24;
      sub_23DCFC15C(a2, v64);
      sub_23DCF4570();
      v56 = v24;
      sub_23DD41F08();
    }

    v57 = v14;
    (*(v20 + 16))(v61, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
    v58 = v60;
    sub_23DD41A78();
    (*(v20 + 8))(v23, v19);
    sub_23DCFD8B0(v58, v57, &qword_27E30E3C8, &unk_23DD441F0);
    swift_storeEnumTagMultiPayload();
    sub_23DCFBD6C();
    sub_23DD41A78();
    return sub_23DCEFA38(v58, &qword_27E30E3C8, &unk_23DD441F0);
  }
}

void sub_23DCF74DC(void *a1)
{
  v3 = sub_23DD41658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[9];
  v48 = v1[8];
  v49 = v8;
  v9 = v1[11];
  v50 = v1[10];
  v51 = v9;
  v10 = v1[5];
  v44 = v1[4];
  v45 = v10;
  v11 = v1[7];
  v46 = v1[6];
  v47 = v11;
  v12 = v1[1];
  v40 = *v1;
  v41 = v12;
  v13 = v1[3];
  v42 = v1[2];
  v43 = v13;
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_2814FD168);
  swift_beginAccess();
  (*(v4 + 16))(v7, v14, v3);
  v15 = a1;
  v16 = sub_23DD41638();
  v17 = sub_23DD42368();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = [v15 type];

    _os_log_impl(&dword_23DCDB000, v16, v17, "taking action: %ld", v18, 0xCu);
    MEMORY[0x23EEFE6D0](v18, -1, -1);
  }

  else
  {

    v16 = v15;
  }

  (*(v4 + 8))(v7, v3);
  if (![v15 type])
  {
    v38[0] = v42;
    v39[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
    sub_23DD41EC8();
    goto LABEL_11;
  }

  v38[0] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  v19 = v39[0];
  if (!v39[0])
  {
LABEL_11:
    v38[0] = v47;
    LOBYTE(v39[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
    sub_23DD41EC8();
    return;
  }

  if (v40)
  {
    v20 = v40;
    v21 = sub_23DCE628C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E458, &qword_23DD444A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DD43570;
    v23 = *(&v41 + 1);
    swift_beginAccess();
    v24 = *(v23 + 32);
    *(inited + 32) = v24;
    *(inited + 40) = v15;
    v25 = v15;
    v26 = v19;
    v27 = v24;
    sub_23DD29700(inited);
    swift_setDeallocating();
    sub_23DCEFA38(inited + 32, &qword_27E30E460, &qword_23DD444A8);
    type metadata accessor for Dataclass(0);
    sub_23DCEFAE8(0, &qword_27E30E208, 0x277CB8F70);
    sub_23DCFD4F8(&qword_27E30E0D0, type metadata accessor for Dataclass);
    v28 = sub_23DD42108();

    v38[0] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
    sub_23DD41EB8();
    v29 = LOBYTE(v39[0]);
    v30 = swift_allocObject();
    v31 = v49;
    v30[9] = v48;
    v30[10] = v31;
    v32 = v51;
    v30[11] = v50;
    v30[12] = v32;
    v33 = v45;
    v30[5] = v44;
    v30[6] = v33;
    v34 = v47;
    v30[7] = v46;
    v30[8] = v34;
    v35 = v41;
    v30[1] = v40;
    v30[2] = v35;
    v36 = v43;
    v30[3] = v42;
    v30[4] = v36;
    v39[4] = sub_23DCFD618;
    v39[5] = v30;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 1107296256;
    v39[2] = sub_23DD2CE8C;
    v39[3] = &block_descriptor_0;
    v37 = _Block_copy(v39);
    sub_23DCFC15C(&v40, v38);

    [v21 saveAccount:v26 withDataclassActions:v28 doVerify:v29 completion:v37];

    _Block_release(v37);
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DCF7A50@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1[11];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[7];
  v18 = a1[8];
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E318, &qword_23DD44198);
  sub_23DD41EB8();
  v9 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  sub_23DCFC19C(v8);

  sub_23DCF4570();
  result = sub_23DD41C48();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

void sub_23DCF7B68(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22[-v4];
  v6 = sub_23DD42138();
  v7 = [objc_opt_self() bundleWithIdentifier_];

  if (v7)
  {
    v8 = sub_23DD42138();
    v9 = sub_23DD42138();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    v11 = sub_23DD42178();
    v13 = v12;

    v23 = v11;
    v24 = v13;
    sub_23DD41748();
    v14 = sub_23DD41758();
    (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
    v15 = swift_allocObject();
    v16 = a1[9];
    v15[9] = a1[8];
    v15[10] = v16;
    v17 = a1[11];
    v15[11] = a1[10];
    v15[12] = v17;
    v18 = a1[5];
    v15[5] = a1[4];
    v15[6] = v18;
    v19 = a1[7];
    v15[7] = a1[6];
    v15[8] = v19;
    v20 = a1[1];
    v15[1] = *a1;
    v15[2] = v20;
    v21 = a1[3];
    v15[3] = a1[2];
    v15[4] = v21;
    sub_23DCFC15C(a1, v22);
    sub_23DCF4570();
    sub_23DD41F08();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DCF7D8C(uint64_t a1)
{
  v3 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  sub_23DD41EC8();
  v4 = *(a1 + 112);
  return sub_23DD41EC8();
}

void sub_23DCF7E0C(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v50 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v50 - v15;
  MEMORY[0x28223BE20](v14);
  v54 = &v50 - v16;
  v17 = sub_23DD42138();
  v18 = objc_opt_self();
  v19 = [v18 bundleWithIdentifier_];

  if (v19)
  {
    v20 = sub_23DD42138();
    v21 = sub_23DD42138();
    v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

    sub_23DD42178();
    v23 = sub_23DD42148();
    v25 = v24;

    v55[24] = v23;
    v55[25] = v25;
    v26 = swift_allocObject();
    v27 = a1[9];
    v26[9] = a1[8];
    v26[10] = v27;
    v28 = a1[11];
    v26[11] = a1[10];
    v26[12] = v28;
    v29 = a1[5];
    v26[5] = a1[4];
    v26[6] = v29;
    v30 = a1[7];
    v26[7] = a1[6];
    v26[8] = v30;
    v31 = a1[1];
    v26[1] = *a1;
    v26[2] = v31;
    v32 = a1[3];
    v26[3] = a1[2];
    v26[4] = v32;
    sub_23DCFC15C(a1, v55);
    sub_23DCF4570();
    v33 = v54;
    sub_23DD41F18();
    v34 = sub_23DD42138();
    v35 = [v18 bundleWithIdentifier_];

    if (v35)
    {
      v36 = sub_23DD42138();
      v37 = sub_23DD42138();
      v38 = [v35 localizedStringForKey:v36 value:v37 table:0];

      sub_23DD42178();
      v39 = sub_23DD42148();
      v41 = v40;

      v55[0] = v39;
      v55[1] = v41;
      sub_23DD41748();
      v42 = sub_23DD41758();
      (*(*(v42 - 8) + 56))(v6, 0, 1, v42);
      v43 = v50;
      sub_23DD41F08();
      v44 = v8[2];
      v45 = v51;
      v44(v51, v33, v7);
      v46 = v52;
      v44(v52, v43, v7);
      v47 = v53;
      v44(v53, v45, v7);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E418, &qword_23DD44400);
      v44(&v47[*(v48 + 48)], v46, v7);
      v49 = v8[1];
      v49(v43, v7);
      v49(v33, v7);
      v49(v46, v7);
      v49(v45, v7);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23DCF8394(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_23DD416D8();

    if (v4)
    {
      if (qword_2814FD150 != -1)
      {
        swift_once();
      }
    }
  }

  else
  {
    v3 = *(a1 + 8);
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DCF84AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 152);
  v8 = *(a1 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
  sub_23DD41EB8();
  sub_23DCF4570();
  result = sub_23DD41C48();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_23DCF8534(char a1, uint64_t a2)
{
  v5 = v2[9];
  v102 = v2[8];
  v103[0] = v5;
  v6 = v2[11];
  v103[1] = v2[10];
  v104 = v6;
  v7 = v2[5];
  v98 = v2[4];
  v99 = v7;
  v8 = v2[7];
  v100 = v2[6];
  v101 = v8;
  v9 = v2[1];
  v94 = *v2;
  v95 = v9;
  v10 = v2[3];
  v96 = v2[2];
  v97 = v10;
  if ((a1 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v94)
  {
LABEL_39:
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v94;
  sub_23DD416D8();

  v12 = v82;
  if (!v82)
  {
    goto LABEL_8;
  }

  v13 = [v82 accountType];

  if (!v13)
  {
    __break(1u);
    goto LABEL_37;
  }

  v14 = [v13 identifier];

  if (!v14)
  {
    v12 = 0;
LABEL_8:
    v16 = 0xE000000000000000;
    goto LABEL_9;
  }

  v12 = sub_23DD42178();
  v16 = v15;

LABEL_9:
  v17 = *MEMORY[0x277CB8C40];
  if (v12 == sub_23DD42178() && v16 == v18)
  {
  }

  else
  {
    v19 = sub_23DD42648();

    if ((v19 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v11;
  sub_23DD416D8();

  if (!v79)
  {
    v82 = 0u;
    v83 = 0u;
LABEL_24:
    sub_23DCEFA38(&v82, &qword_27E30E1F0, &unk_23DD43F80);
    goto LABEL_25;
  }

  v21 = [v79 accountPropertyForKey_];

  if (v21)
  {
    sub_23DD424A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  v82 = v79;
  v83 = v80;
  if (!*(&v80 + 1))
  {
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E488, &qword_23DD445A0);
  if (swift_dynamicCast())
  {
    v22 = v79;
    v23 = *(&v95 + 1);
    v24 = swift_beginAccess();
    *&v82 = v23[4];
    MEMORY[0x28223BE20](v24);
    v75[2] = &v82;
    v26 = v25;
    v27 = sub_23DCEA6FC(sub_23DCFD890, v75, v22);

    if ((v27 & 1) == 0)
    {
      v28 = sub_23DD42138();
      v29 = objc_opt_self();
      v30 = [v29 bundleWithIdentifier_];

      if (v30)
      {
        v31 = sub_23DD42138();
        v32 = sub_23DD42138();
        v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

        sub_23DD42178();
        v34 = sub_23DD42148();
        v36 = v35;

        v82 = v102;
        *&v83 = *&v103[0];
        *&v79 = v34;
        *(&v79 + 1) = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
        sub_23DD41EC8();
        v37 = sub_23DD42138();
        v38 = [v29 bundleWithIdentifier_];

        if (v38)
        {
          v39 = sub_23DD42138();
          v40 = sub_23DD42138();
          v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

          sub_23DD42178();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_23DD43570;
          swift_beginAccess();
          v44 = v23[5];
          v43 = v23[6];
          *(v42 + 56) = MEMORY[0x277D837D0];
          *(v42 + 64) = sub_23DCFD428();
          *(v42 + 32) = v44;
          *(v42 + 40) = v43;

          v45 = sub_23DD42148();
          v47 = v46;

          v79 = *(v103 + 8);
          *&v80 = *(&v103[1] + 1);
          *&v81 = v45;
          *(&v81 + 1) = v47;
          sub_23DD41EC8();
          v79 = v100;
          v81 = v100;
          v105[0] = *(&v100 + 1);
          sub_23DCFD8B0(v105, &v77, &qword_27E30E490, &qword_23DD445A8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
          sub_23DD41EB8();
          v77 = v79;
          v76 = (v78 & 1) == 0;
          sub_23DD41EC8();
          sub_23DCEFA38(&v79, &qword_27E30E328, &unk_23DD45C20);
          return;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

LABEL_25:
  v48 = *(&v95 + 1) + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock;
  swift_beginAccess();
  v49 = *v48;
  if (*v48)
  {
    v50 = *(v48 + 8);
    v51 = swift_allocObject();
    v52 = v103[0];
    *(v51 + 144) = v102;
    *(v51 + 160) = v52;
    v53 = v104;
    *(v51 + 176) = v103[1];
    *(v51 + 192) = v53;
    v54 = v99;
    *(v51 + 80) = v98;
    *(v51 + 96) = v54;
    v55 = v101;
    *(v51 + 112) = v100;
    *(v51 + 128) = v55;
    v56 = v95;
    *(v51 + 16) = v94;
    *(v51 + 32) = v56;
    v57 = v97;
    *(v51 + 48) = v96;
    *(v51 + 64) = v57;
    *(v51 + 208) = a1 & 1;
    sub_23DCDFF40(v49);
    sub_23DCFC15C(&v94, &v82);
    v49(a2, a1 & 1, sub_23DCFD84C, v51);

    sub_23DCF5098(v49);
    return;
  }

  v58 = v94;
  if (!v94)
  {
    goto LABEL_39;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v58;
  sub_23DD416D8();

  v60 = v82;
  if (!v82)
  {
LABEL_35:
    v90 = v102;
    v91 = v103[0];
    v92 = v103[1];
    v93 = v104;
    v86 = v98;
    v87 = v99;
    v88 = v100;
    v89 = v101;
    v82 = v94;
    v83 = v95;
    v84 = v96;
    v85 = v97;
    sub_23DCF8FA8(a1 & 1);
    return;
  }

  if (ACAccount.appearsActive()() || (a1 & 1) == 0)
  {

    goto LABEL_35;
  }

  if (qword_2814FD150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v61 = qword_2814FD158;
  v62 = swift_allocObject();
  v63 = v103[0];
  *(v62 + 144) = v102;
  *(v62 + 160) = v63;
  v64 = v104;
  *(v62 + 176) = v103[1];
  *(v62 + 192) = v64;
  v65 = v99;
  *(v62 + 80) = v98;
  *(v62 + 96) = v65;
  v66 = v101;
  *(v62 + 112) = v100;
  *(v62 + 128) = v66;
  v67 = v95;
  *(v62 + 16) = v94;
  *(v62 + 32) = v67;
  v68 = v97;
  *(v62 + 48) = v96;
  *(v62 + 64) = v68;
  *(v62 + 208) = 1;
  sub_23DCFC15C(&v94, &v82);
  v69 = v61;
  v70 = sub_23DCE628C();
  v71 = swift_allocObject();
  v71[2] = v60;
  v71[3] = v69;
  v71[4] = sub_23DCF9530;
  v71[5] = 0;
  v71[6] = sub_23DCFD7F8;
  v71[7] = v62;
  *&v84 = sub_23DCFD83C;
  *(&v84 + 1) = v71;
  *&v82 = MEMORY[0x277D85DD0];
  *(&v82 + 1) = 1107296256;
  *&v83 = sub_23DCF50A8;
  *(&v83 + 1) = &block_descriptor_81;
  v72 = _Block_copy(&v82);
  v73 = v69;
  v74 = v60;

  [v70 verifyCredentialsForAccount:v74 saveWhenAuthorized:0 withHandler:v72];
  _Block_release(v72);
}

void sub_23DCF8FA8(int a1)
{
  v38 = a1;
  v2 = sub_23DD42068();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DD42098();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23DD42078();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[9];
  v52 = v1[8];
  v53 = v15;
  v16 = v1[11];
  v54 = v1[10];
  v55 = v16;
  v17 = v1[5];
  v48 = v1[4];
  v49 = v17;
  v18 = v1[7];
  v50 = v1[6];
  v51 = v18;
  v19 = v1[1];
  v44 = *v1;
  v45 = v19;
  v20 = v1[3];
  v46 = v1[2];
  v47 = v20;
  v21 = v44;
  if (v44)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v21;
    sub_23DD416D8();

    v23 = v43[0];
    if (v43[0])
    {
      [v43[0] copy];

      sub_23DD424A8();
      swift_unknownObjectRelease();
      sub_23DCEFAE8(0, &qword_2814FCC50, 0x277CB8F30);
      if (swift_dynamicCast())
      {
        v24 = v43[0];
        v42[0] = v47;
        v25 = v38;
        LOBYTE(v43[0]) = (v38 & 1) == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
        sub_23DD41EC8();
        sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
        (*(v11 + 104))(v14, *MEMORY[0x277D851B8], v10);
        v37 = sub_23DD423A8();
        (*(v11 + 8))(v14, v10);
        v26 = swift_allocObject();
        *(v26 + 16) = v24;
        *(v26 + 24) = v25 & 1;
        v27 = v53;
        *(v26 + 160) = v52;
        *(v26 + 176) = v27;
        v28 = v55;
        *(v26 + 192) = v54;
        *(v26 + 208) = v28;
        v29 = v49;
        *(v26 + 96) = v48;
        *(v26 + 112) = v29;
        v30 = v51;
        *(v26 + 128) = v50;
        *(v26 + 144) = v30;
        v31 = v45;
        *(v26 + 32) = v44;
        *(v26 + 48) = v31;
        v32 = v47;
        *(v26 + 64) = v46;
        *(v26 + 80) = v32;
        v43[4] = sub_23DCFD91C;
        v43[5] = v26;
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 1107296256;
        v43[2] = sub_23DCE4C84;
        v43[3] = &block_descriptor_102;
        v33 = _Block_copy(v43);
        v34 = v24;
        sub_23DCFC15C(&v44, v42);
        sub_23DD42088();
        *&v42[0] = MEMORY[0x277D84F90];
        sub_23DCFD4F8(&qword_2814FCCA0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
        sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0);
        sub_23DD424B8();
        v35 = v37;
        MEMORY[0x23EEFDBD0](0, v9, v5, v33);
        _Block_release(v33);

        (*(v41 + 8))(v5, v2);
        (*(v39 + 8))(v9, v40);
      }
    }
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DCF9530(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_2814FD150 == -1)
  {
    return a2(1);
  }

  swift_once();
  return a2(1);
}

void sub_23DCF9594(char a1, _OWORD *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_23DD42068();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23DD42098();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = a2[9];
    v39[8] = a2[8];
    v39[9] = v21;
    v22 = a2[11];
    v39[10] = a2[10];
    v39[11] = v22;
    v23 = a2[5];
    v39[4] = a2[4];
    v24 = a2[6];
    v25 = a2[7];
    v39[5] = v23;
    v39[6] = v24;
    v39[7] = v25;
    v26 = a2[1];
    v39[0] = *a2;
    v39[1] = v26;
    v27 = a2[3];
    v39[2] = a2[2];
    v39[3] = v27;
    sub_23DCF8FA8(a3 & 1);
  }

  else
  {
    v37 = v18;
    sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
    v28 = sub_23DD42388();
    v29 = swift_allocObject();
    v30 = a2[9];
    v29[9] = a2[8];
    v29[10] = v30;
    v31 = a2[11];
    v29[11] = a2[10];
    v29[12] = v31;
    v32 = a2[5];
    v29[5] = a2[4];
    v29[6] = v32;
    v33 = a2[7];
    v29[7] = a2[6];
    v29[8] = v33;
    v34 = a2[1];
    v29[1] = *a2;
    v29[2] = v34;
    v35 = a2[3];
    v29[3] = a2[2];
    v29[4] = v35;
    aBlock[4] = a5;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DCE4C84;
    aBlock[3] = a6;
    v36 = _Block_copy(aBlock);
    sub_23DCFC15C(a2, v39);

    sub_23DD42088();
    *&v39[0] = MEMORY[0x277D84F90];
    sub_23DCFD4F8(&qword_2814FCCA0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
    sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0);
    sub_23DD424B8();
    MEMORY[0x23EEFDBD0](0, v20, v14, v36);
    _Block_release(v36);

    (*(v38 + 8))(v14, v11);
    (*(v16 + 8))(v20, v37);
  }
}

void sub_23DCF992C(void *a1, char a2, uint64_t a3)
{
  v6 = sub_23DD41658();
  v91 = *(v6 - 8);
  v7 = *(v91 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105[0] = *(a3 + 16);
  v10 = *(&v105[0] + 1);
  swift_beginAccess();
  v11 = *(v10 + 32);

  [a1 setEnabled:a2 & 1 forDataclass:v11];
  if (!*a3)
  {
    v87 = *(a3 + 8);
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  v12 = *a3;
  v13 = sub_23DCE628C();

  v92 = a1;
  v14 = [v13 dataclassActionsForAccountSave_];

  if (!v14)
  {
    sub_23DCEFA38(v105, &qword_27E30E480, &qword_23DD44518);
    goto LABEL_23;
  }

  v15 = v6;
  type metadata accessor for Dataclass(0);
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E0C8, &qword_23DD43728);
  sub_23DCFD4F8(&qword_27E30E0D0, type metadata accessor for Dataclass);
  v90 = v17;
  v18 = sub_23DD42118();

  v19 = *(v10 + 32);
  if (!*(v18 + 16))
  {
    v31 = v19;
    sub_23DCEFA38(v105, &qword_27E30E480, &qword_23DD44518);

    goto LABEL_23;
  }

  v20 = v19;
  v21 = sub_23DCEA210(v20);
  if ((v22 & 1) == 0)
  {

    sub_23DCEFA38(v105, &qword_27E30E480, &qword_23DD44518);

LABEL_22:

LABEL_23:
    v32 = v12;
    v33 = sub_23DCE628C();

    v97 = *(a3 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
    sub_23DD41EB8();
    v34 = aBlock;
    v35 = swift_allocObject();
    v36 = *(a3 + 144);
    v35[9] = *(a3 + 128);
    v35[10] = v36;
    v37 = *(a3 + 176);
    v35[11] = *(a3 + 160);
    v35[12] = v37;
    v38 = *(a3 + 80);
    v35[5] = *(a3 + 64);
    v35[6] = v38;
    v39 = *(a3 + 112);
    v35[7] = *(a3 + 96);
    v35[8] = v39;
    v40 = *(a3 + 16);
    v35[1] = *a3;
    v35[2] = v40;
    v41 = *(a3 + 48);
    v35[3] = *(a3 + 32);
    v35[4] = v41;
    v102 = sub_23DCFD92C;
    v103 = v35;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v100 = sub_23DD2CE8C;
    v101 = &block_descriptor_108;
    v42 = _Block_copy(&aBlock);
    sub_23DCFC15C(a3, &v97);

    [v33 saveAccount:v92 withDataclassActions:0 doVerify:v34 completion:v42];

    v43 = v42;
LABEL_24:
    _Block_release(v43);
    return;
  }

  v23 = *(*(v18 + 56) + 8 * v21);

  if (v23 >> 62)
  {
    v24 = sub_23DD425C8();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v15;
  if (v24 <= 0)
  {
    sub_23DCEFA38(v105, &qword_27E30E480, &qword_23DD44518);

    goto LABEL_22;
  }

  if (v24 != 1)
  {
    sub_23DCEFA38(v105, &qword_27E30E480, &qword_23DD44518);

    v97 = *(a3 + 176);
    *&aBlock = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E318, &qword_23DD44198);
    sub_23DD41EC8();
    v97 = *(a3 + 32);
    *&aBlock = v92;
    v44 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
    sub_23DD41EC8();
    v97 = *(a3 + 64);
    aBlock = *(a3 + 64);
    *&v94[0] = *(&v97 + 1);
    sub_23DCFD8B0(v94, &v96, &qword_27E30E490, &qword_23DD445A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
    sub_23DD41EB8();
    v96 = v97;
    v95 = (v104 & 1) == 0;
    sub_23DD41EC8();
LABEL_26:
    sub_23DCEFA38(&v97, &qword_27E30E328, &unk_23DD45C20);
    return;
  }

  v26 = v9;
  v89 = v25;
  if (!(v23 >> 62))
  {
    v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    p_aBlock = &aBlock;
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_28:
    sub_23DCEFA38(v105, &qword_27E30E480, &qword_23DD44518);
    goto LABEL_29;
  }

  v27 = sub_23DD425C8();
  p_aBlock = &aBlock;
  if (!v27)
  {
    goto LABEL_28;
  }

LABEL_11:
  v29 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_47;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
    goto LABEL_48;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v29 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_35;
  }

  for (i = *(v23 + 8 * v29 + 32); ; i = MEMORY[0x23EEFDD80]())
  {
    p_aBlock = i;
    if (![i type])
    {
      break;
    }

    sub_23DCEFA38(v105, &qword_27E30E480, &qword_23DD44518);

LABEL_29:
    v26 = v12;

    v12 = sub_23DCE628C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E458, &qword_23DD444A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DD43570;
    v46 = *(v10 + 32);
    *(inited + 32) = v46;
    v47 = inited + 32;
    if (!v27)
    {
      __break(1u);
LABEL_45:
      v86 = v46;
      v50 = MEMORY[0x23EEFDD80](0, v23);
LABEL_33:
      v51 = v50;

      v26[5] = v51;
      sub_23DD29700(v26);
      swift_setDeallocating();
      sub_23DCEFA38(v47, &qword_27E30E460, &qword_23DD444A8);
      sub_23DCEFAE8(0, &qword_27E30E208, 0x277CB8F70);
      v52 = sub_23DD42108();

      v97 = *(a3 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
      sub_23DD41EB8();
      v53 = aBlock;
      v54 = swift_allocObject();
      v55 = *(a3 + 144);
      v54[9] = *(a3 + 128);
      v54[10] = v55;
      v56 = *(a3 + 176);
      v54[11] = *(a3 + 160);
      v54[12] = v56;
      v57 = *(a3 + 80);
      v54[5] = *(a3 + 64);
      v54[6] = v57;
      v58 = *(a3 + 112);
      v54[7] = *(a3 + 96);
      v54[8] = v58;
      v59 = *(a3 + 16);
      v54[1] = *a3;
      v54[2] = v59;
      v60 = *(a3 + 48);
      v54[3] = *(a3 + 32);
      v54[4] = v60;
      v102 = sub_23DCFD96C;
      v103 = v54;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v100 = sub_23DD2CE8C;
      v101 = &block_descriptor_114;
      v61 = _Block_copy(&aBlock);
      sub_23DCFC15C(a3, &v97);

      [v12 saveAccount:v92 withDataclassActions:v52 doVerify:v53 completion:v61];

      v43 = v61;
      goto LABEL_24;
    }

    v26 = inited;
    if ((v23 & 0xC000000000000001) != 0)
    {
      goto LABEL_45;
    }

    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v48 = *(v23 + 32);
      v49 = v46;
      v50 = v48;
      goto LABEL_33;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  if (qword_2814FD160 != -1)
  {
    goto LABEL_51;
  }

LABEL_35:
  v62 = v89;
  v63 = __swift_project_value_buffer(v89, qword_2814FD168);
  swift_beginAccess();
  v64 = v91;
  (*(v91 + 16))(v26, v63, v62);
  v65 = p_aBlock;
  sub_23DCFC15C(a3, &v97);
  v66 = sub_23DD41638();
  v67 = sub_23DD42368();
  sub_23DCFD9AC(a3);
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    LODWORD(v90) = v67;
    v69 = v68;
    v70 = swift_slowAlloc();
    *&v97 = v70;
    *v69 = 134218242;
    *(v69 + 4) = [v65 type];

    *(v69 + 12) = 2080;
    *&v96 = v10;
    type metadata accessor for AccountUISetting.CustomDataclass(0);
    v71 = sub_23DD42188();
    v73 = sub_23DD2731C(v71, v72, &v97);
    v92 = v65;
    v74 = v64;
    v75 = v73;

    *(v69 + 14) = v75;
    _os_log_impl(&dword_23DCDB000, v66, v90, "Setting action %ld for dataclass %s", v69, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x23EEFE6D0](v70, -1, -1);
    MEMORY[0x23EEFE6D0](v69, -1, -1);

    (*(v74 + 8))(v26, v62);
    v65 = v92;
  }

  else
  {
    sub_23DCEFA38(v105, &qword_27E30E480, &qword_23DD44518);

    (*(v64 + 8))(v26, v62);
  }

  v76 = [v65 undoAlertTitle];
  if (v76)
  {
    v77 = v76;
    v78 = sub_23DD42178();
    v80 = v79;

    v81 = [v65 undoAlertMessage];
    if (v81)
    {
      v82 = v81;
      v83 = sub_23DD42178();
      v85 = v84;

      v97 = *(a3 + 128);
      v98 = *(a3 + 144);
      *&v96 = v78;
      *(&v96 + 1) = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
      sub_23DD41EC8();
      v97 = *(a3 + 152);
      v98 = *(a3 + 168);
      *&v96 = v83;
      *(&v96 + 1) = v85;
      sub_23DD41EC8();
      v96 = *(a3 + 80);
      v97 = v96;
      v104 = *(&v96 + 1);
      sub_23DCFD8B0(&v104, v94, &qword_27E30E490, &qword_23DD445A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
      sub_23DD41EB8();
      v94[0] = v97;
      v93 = !v95;
      sub_23DD41EC8();

      goto LABEL_26;
    }
  }

  else
  {
  }
}

uint64_t sub_23DCFA538(int a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a4;
  v47 = a5;
  v45 = a1;
  v9 = sub_23DD42068();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_23DD42098();
  v49 = *(v51 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23DD41658();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_2814FD168);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = a2;
  v21 = sub_23DD41638();
  v22 = sub_23DD42368();

  if (os_log_type_enabled(v21, v22))
  {
    v44 = a6;
    v23 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v23 = 136315138;
    if (v45)
    {
      v24 = 0xEB00000000796C6CLL;
      v25 = 0x7566736563637573;
    }

    else
    {
      v55[0] = 0;
      v55[1] = 0xE000000000000000;
      sub_23DD42538();

      strcpy(v55, "with an error ");
      HIBYTE(v55[1]) = -18;
      v54 = a2;
      v26 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E468, &qword_23DD444B8);
      v27 = sub_23DD42188();
      MEMORY[0x23EEFDA30](v27);

      v25 = v55[0];
      v24 = v55[1];
    }

    v28 = sub_23DD2731C(v25, v24, aBlock);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_23DCDB000, v21, v22, "save completed %s", v23, 0xCu);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x23EEFE6D0](v29, -1, -1);
    MEMORY[0x23EEFE6D0](v23, -1, -1);

    (*(v15 + 8))(v18, v14);
    a6 = v44;
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
  v30 = sub_23DD42388();
  v31 = swift_allocObject();
  v32 = a3[9];
  v31[9] = a3[8];
  v31[10] = v32;
  v33 = a3[11];
  v31[11] = a3[10];
  v31[12] = v33;
  v34 = a3[5];
  v31[5] = a3[4];
  v31[6] = v34;
  v35 = a3[7];
  v31[7] = a3[6];
  v31[8] = v35;
  v36 = a3[1];
  v31[1] = *a3;
  v31[2] = v36;
  v37 = a3[3];
  v31[3] = a3[2];
  v31[4] = v37;
  aBlock[4] = v47;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DCE4C84;
  aBlock[3] = a6;
  v38 = _Block_copy(aBlock);
  sub_23DCFC15C(a3, v55);

  v39 = v48;
  sub_23DD42088();
  v55[0] = MEMORY[0x277D84F90];
  sub_23DCFD4F8(&qword_2814FCCA0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
  sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0);
  v40 = v50;
  v41 = v53;
  sub_23DD424B8();
  MEMORY[0x23EEFDBD0](0, v39, v40, v38);
  _Block_release(v38);

  (*(v52 + 8))(v40, v41);
  return (*(v49 + 8))(v39, v51);
}

void sub_23DCFAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 24);
  v41 = *(v6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  if (!v42)
  {
    goto LABEL_8;
  }

  v12 = [v42 accountType];

  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = [v12 identifier];

  if (!v13)
  {
LABEL_8:
    v20 = *MEMORY[0x277CB8BA0];
    sub_23DD42178();
    goto LABEL_9;
  }

  v14 = sub_23DD42178();
  v16 = v15;

  v17 = *MEMORY[0x277CB8BA0];
  v18 = sub_23DD42178();
  if (!v16)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (v14 != v18 || v16 != v19)
  {
    v28 = sub_23DD42648();

    if (v28)
    {
      goto LABEL_14;
    }

LABEL_10:
    v21 = sub_23DD42138();
    v22 = [objc_opt_self() bundleWithIdentifier_];

    if (v22)
    {

      MEMORY[0x23EEFDA30](0x54414D524F465FLL, 0xE700000000000000);
      v23 = sub_23DD42138();

      v24 = [v22 localizedStringForKey:v23 value:0 table:0];

      sub_23DD42178();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_23DD43550;
      v26 = MEMORY[0x277D837D0];
      *(v25 + 56) = MEMORY[0x277D837D0];
      v27 = sub_23DCFD428();
      *(v25 + 32) = a3;
      *(v25 + 40) = a4;
      *(v25 + 96) = v26;
      *(v25 + 104) = v27;
      *(v25 + 64) = v27;
      *(v25 + 72) = a5;
      *(v25 + 80) = a6;

LABEL_12:
      sub_23DD42148();

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_14:
  swift_beginAccess();
  v29 = *(v11 + 32);
  v30 = *MEMORY[0x277CB8A58];
  v31 = sub_23DD42178();
  v33 = v32;
  if (v31 == sub_23DD42178() && v33 == v34)
  {

    goto LABEL_18;
  }

  v35 = sub_23DD42648();

  if ((v35 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  v36 = sub_23DD42138();
  v37 = [objc_opt_self() bundleWithIdentifier_];

  if (v37)
  {

    MEMORY[0x23EEFDA30](0xD000000000000017, 0x800000023DD4AE20);
    v38 = sub_23DD42138();

    v39 = [v37 localizedStringForKey:v38 value:0 table:0];

    sub_23DD42178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_23DD43570;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = sub_23DCFD428();
    *(v40 + 32) = a5;
    *(v40 + 40) = a6;

    goto LABEL_12;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_23DCFAFC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_23DCF4570();

  v4 = sub_23DD41C48();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  sub_23DCFC0BC(v4, v6, v8 & 1);

  sub_23DCFC0CC(v12, v13, v14, v15);
  sub_23DCFC110(v12, v13, v14, v15);
  sub_23DCEF904(v4, v6, v8 & 1);
}

uint64_t sub_23DCFB124@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_23DD420F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E408, &qword_23DD443A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  swift_beginAccess();
  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = v14;
    sub_23DD41E38();
    (*(v5 + 104))(v8, *MEMORY[0x277D4D808], v4);
    sub_23DD41E68();

    (*(v5 + 8))(v8, v4);
    (*(v10 + 32))(a2, v13, v9);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v10 + 56))(a2, v16, 1, v9);
}

uint64_t sub_23DCFB33C()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3E8, &qword_23DD44398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3F0, &qword_23DD443A0);
  sub_23DCEF9F0(&qword_27E30E3F8, &qword_27E30E3E8, &qword_23DD44398);
  sub_23DCFC020();
  return sub_23DD41E98();
}

uint64_t sub_23DCFB430(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23DD42178();
  v6 = v5;
  if (v4 == sub_23DD42178() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23DD42648();
  }

  return v9 & 1;
}

void sub_23DCFB4C0(unint64_t a1)
{
  v3 = *(v1 + 24);
  if (sub_23DCF5134(4, a1) || sub_23DCF5134(5, a1) || sub_23DCF5134(6, a1))
  {
    v4 = sub_23DD42138();
    v5 = [objc_opt_self() bundleWithIdentifier_];

    if (v5)
    {
LABEL_5:
      v6 = sub_23DD42138();
      v7 = sub_23DD42138();
      v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

      sub_23DD42178();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_23DD43570;
      swift_beginAccess();
      v11 = v3[5];
      v10 = v3[6];
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_23DCFD428();
      *(v9 + 32) = v11;
      *(v9 + 40) = v10;

      sub_23DD42148();

      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!sub_23DCF5134(3, a1) && !sub_23DCF5134(2, a1))
  {
    if (!sub_23DCF5134(8, a1))
    {
      swift_beginAccess();
      v21 = v3[4];
      v22 = *MEMORY[0x277CB8A58];
      v23 = sub_23DD42178();
      v25 = v24;
      if (v23 == sub_23DD42178() && v25 == v26)
      {
      }

      else
      {
        v27 = sub_23DD42648();

        if ((v27 & 1) == 0)
        {
          return;
        }
      }
    }

    v28 = sub_23DD42138();
    v29 = [objc_opt_self() bundleWithIdentifier_];

    if (v29)
    {
      v30 = sub_23DD42138();
      v31 = sub_23DD42138();
      v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

      sub_23DD42178();
      return;
    }

    goto LABEL_27;
  }

  if (!sub_23DCF5134(3, a1))
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = v3[4];
  v13 = *MEMORY[0x277CB8A58];
  v14 = sub_23DD42178();
  v16 = v15;
  if (v14 == sub_23DD42178() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_23DD42648();

    if ((v19 & 1) == 0)
    {
LABEL_14:
      v20 = sub_23DD42138();
      v5 = [objc_opt_self() bundleWithIdentifier_];

      if (v5)
      {
        goto LABEL_5;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }
  }
}

unint64_t sub_23DCFB9B4()
{
  result = qword_27E30E338;
  if (!qword_27E30E338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E300, &qword_23DD44180);
    sub_23DCFBA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E338);
  }

  return result;
}

unint64_t sub_23DCFBA38()
{
  result = qword_27E30E340;
  if (!qword_27E30E340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E348, &qword_23DD441B8);
    sub_23DCFBAC4();
    sub_23DCFBC60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E340);
  }

  return result;
}

unint64_t sub_23DCFBAC4()
{
  result = qword_27E30E350;
  if (!qword_27E30E350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E358, &qword_23DD441C0);
    sub_23DCFBB7C();
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E350);
  }

  return result;
}

unint64_t sub_23DCFBB7C()
{
  result = qword_27E30E360;
  if (!qword_27E30E360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E368, &qword_23DD441C8);
    sub_23DCEF9F0(&qword_27E30E370, &qword_27E30E378, &qword_23DD441D0);
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E360);
  }

  return result;
}

unint64_t sub_23DCFBC60()
{
  result = qword_27E30E390;
  if (!qword_27E30E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E390);
  }

  return result;
}

unint64_t sub_23DCFBCB4()
{
  result = qword_27E30E3A0;
  if (!qword_27E30E3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E3A8, &unk_23DD441E0);
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
    sub_23DCFBD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E3A0);
  }

  return result;
}

unint64_t sub_23DCFBD6C()
{
  result = qword_27E30E3C0;
  if (!qword_27E30E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E3C8, &unk_23DD441F0);
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E3C0);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_23DCFBE98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_23DCFBEE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DCFBF60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DCFBFA8(uint64_t result, int a2, int a3)
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

unint64_t sub_23DCFC020()
{
  result = qword_27E30E400;
  if (!qword_27E30E400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E3F0, &qword_23DD443A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E400);
  }

  return result;
}

uint64_t sub_23DCFC0BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23DCFC0CC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23DCFC0BC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23DCFC110(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23DCEF904(result, a2, a3 & 1);
  }

  return result;
}

void sub_23DCFC19C(unint64_t a1)
{
  v2 = v1;
  v161 = *v1;
  v4 = *(v1 + 3);
  v162 = *(v1 + 2);
  v6 = *(v1 + 4);
  v5 = *(v1 + 5);
  v158 = v1[9];
  v159 = v1[10];
  v160 = v1[11];
  v154 = v1[5];
  v155 = v1[6];
  v156 = v1[7];
  v157 = v1[8];
  v152 = v1[3];
  v153 = v1[4];
  swift_beginAccess();
  v8 = v4[5];
  v7 = v4[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  if (!v151)
  {
    goto LABEL_5;
  }

  v9 = [v151 accountType];

  if (!v9)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v10 = [v9 identifier];

  if (v10)
  {
    v11 = sub_23DD42178();
    v13 = v12;

    v14 = v11;
  }

  else
  {
LABEL_5:
    v14 = 0;
    v13 = 0;
  }

  _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(v14, v13);
  v16 = v15;
  v18 = v17;

  v19 = sub_23DCF5220(8, a1);
  if (v19)
  {
    v20 = v19;
    swift_beginAccess();
    v21 = v4[4];
    v22 = *MEMORY[0x277CB8A58];
    v23 = sub_23DD42178();
    v25 = v24;
    if (v23 == sub_23DD42178() && v25 == v26)
    {

      goto LABEL_16;
    }

    v36 = sub_23DD42648();

    if (v36)
    {
LABEL_16:

      v37 = sub_23DD42138();
      v38 = [objc_opt_self() bundleWithIdentifier_];

      if (v38)
      {
        v39 = sub_23DD42138();
        v40 = sub_23DD42138();
        v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

        v33 = sub_23DD42178();
        v35 = v42;

LABEL_54:
        v115 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v115 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v115)
        {
          goto LABEL_59;
        }

        v116 = sub_23DD42138();
        v117 = [objc_opt_self() bundleWithIdentifier_];

        if (v117)
        {
          v118 = sub_23DD42138();
          v119 = sub_23DD42138();
          v120 = [v117 localizedStringForKey:v118 value:v119 table:0];

          sub_23DD42178();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
          v121 = swift_allocObject();
          *(v121 + 16) = xmmword_23DD43570;
          *(v121 + 56) = MEMORY[0x277D837D0];
          *(v121 + 64) = sub_23DCFD428();
          *(v121 + 32) = v8;
          *(v121 + 40) = v7;
          sub_23DD42148();

LABEL_59:

          return;
        }

        goto LABEL_82;
      }

LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v43 = [v20 affectedContainers];
    v139 = v8;
    if (v43)
    {
      v44 = v43;
      v45 = sub_23DD42268();
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
    }

    v46 = v45[2];
    if (v46 > 1)
    {
      if (v46 == 2)
      {
        v102 = sub_23DD42138();
        v103 = [objc_opt_self() bundleWithIdentifier_];

        if (!v103)
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v104 = sub_23DD42138();
        v105 = sub_23DD42138();
        v106 = [v103 localizedStringForKey:v104 value:v105 table:0];

        sub_23DD42178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_23DD44150;
        v108 = MEMORY[0x277D837D0];
        *(v107 + 56) = MEMORY[0x277D837D0];
        v109 = sub_23DCFD428();
        *(v107 + 32) = v139;
        *(v107 + 40) = v7;
        *(v107 + 96) = v108;
        *(v107 + 104) = v109;
        *(v107 + 64) = v109;
        *(v107 + 72) = v16;
        *(v107 + 80) = v18;
        *(v107 + 136) = v108;
        *(v107 + 144) = v109;
        v110 = v45[2];
        if (v110)
        {
          v111 = v45[5];
          *(v107 + 112) = v45[4];
          *(v107 + 120) = v111;
          *(v107 + 176) = v108;
          *(v107 + 184) = v109;
          if (v110 != 1)
          {
            v112 = v45[6];
            v113 = v45[7];

            *(v107 + 152) = v112;
            *(v107 + 160) = v113;
            goto LABEL_52;
          }

          goto LABEL_77;
        }

        goto LABEL_74;
      }

      if (v46 == 3)
      {
        v57 = sub_23DD42138();
        v58 = [objc_opt_self() bundleWithIdentifier_];

        if (!v58)
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v59 = sub_23DD42138();
        v60 = sub_23DD42138();
        v61 = [v58 localizedStringForKey:v59 value:v60 table:0];

        sub_23DD42178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_23DD43FF0;
        v63 = MEMORY[0x277D837D0];
        *(v62 + 56) = MEMORY[0x277D837D0];
        v64 = sub_23DCFD428();
        *(v62 + 32) = v139;
        *(v62 + 40) = v7;
        *(v62 + 96) = v63;
        *(v62 + 104) = v64;
        *(v62 + 64) = v64;
        *(v62 + 72) = v16;
        *(v62 + 80) = v18;
        *(v62 + 136) = v63;
        *(v62 + 144) = v64;
        v65 = v45[2];
        if (v65)
        {
          v66 = v45[5];
          *(v62 + 112) = v45[4];
          *(v62 + 120) = v66;
          *(v62 + 176) = v63;
          *(v62 + 184) = v64;
          if (v65 != 1)
          {
            v67 = v45[7];
            *(v62 + 152) = v45[6];
            *(v62 + 160) = v67;
            *(v62 + 216) = v63;
            *(v62 + 224) = v64;
            if (v65 >= 3)
            {
              v68 = v45[8];
              v69 = v45[9];

              *(v62 + 192) = v68;
              *(v62 + 200) = v69;
              goto LABEL_52;
            }

            goto LABEL_79;
          }

          goto LABEL_76;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (!v46)
      {

        v93 = sub_23DD42138();
        v94 = [objc_opt_self() bundleWithIdentifier_];

        if (!v94)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v95 = sub_23DD42138();
        v96 = sub_23DD42138();
        v97 = [v94 localizedStringForKey:v95 value:v96 table:0];

        sub_23DD42178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_23DD43550;
        v99 = MEMORY[0x277D837D0];
        *(v98 + 56) = MEMORY[0x277D837D0];
        v100 = sub_23DCFD428();
        *(v98 + 32) = v139;
        *(v98 + 40) = v7;
        *(v98 + 96) = v99;
        *(v98 + 104) = v100;
        v8 = v139;
        *(v98 + 64) = v100;
        *(v98 + 72) = v16;
        *(v98 + 80) = v18;

        v33 = sub_23DD42148();
        v35 = v101;

        goto LABEL_54;
      }

      if (v46 == 1)
      {
        v47 = sub_23DD42138();
        v48 = [objc_opt_self() bundleWithIdentifier_];

        if (!v48)
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v49 = sub_23DD42138();
        v50 = sub_23DD42138();
        v51 = [v48 localizedStringForKey:v49 value:v50 table:0];

        sub_23DD42178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_23DD44160;
        v53 = MEMORY[0x277D837D0];
        *(v52 + 56) = MEMORY[0x277D837D0];
        v54 = sub_23DCFD428();
        *(v52 + 32) = v139;
        *(v52 + 40) = v7;
        *(v52 + 96) = v53;
        *(v52 + 104) = v54;
        *(v52 + 64) = v54;
        *(v52 + 72) = v16;
        *(v52 + 80) = v18;
        *(v52 + 136) = v53;
        *(v52 + 144) = v54;
        if (v45[2])
        {
          v55 = v45[4];
          v56 = v45[5];

          *(v52 + 112) = v55;
          *(v52 + 120) = v56;
LABEL_52:
          v33 = sub_23DD42148();
          v35 = v114;
          goto LABEL_53;
        }

LABEL_72:
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
        goto LABEL_80;
      }
    }

    v78 = sub_23DD42138();
    v79 = [objc_opt_self() bundleWithIdentifier_];

    if (!v79)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v80 = sub_23DD42138();
    v81 = sub_23DD42138();
    v82 = [v79 localizedStringForKey:v80 value:v81 table:0];

    sub_23DD42178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_23DD44170;
    v84 = MEMORY[0x277D837D0];
    *(v83 + 56) = MEMORY[0x277D837D0];
    v85 = sub_23DCFD428();
    *(v83 + 32) = v139;
    *(v83 + 40) = v7;
    *(v83 + 96) = v84;
    *(v83 + 104) = v85;
    *(v83 + 64) = v85;
    *(v83 + 72) = v16;
    *(v83 + 80) = v18;
    *(v83 + 136) = v84;
    *(v83 + 144) = v85;
    v86 = v45[2];
    if (v86)
    {
      v87 = v45[5];
      *(v83 + 112) = v45[4];
      *(v83 + 120) = v87;
      *(v83 + 176) = v84;
      *(v83 + 184) = v85;
      if (v86 != 1)
      {
        v88 = v45[7];
        *(v83 + 152) = v45[6];
        *(v83 + 160) = v88;
        *(v83 + 216) = v84;
        *(v83 + 224) = v85;
        if (v86 >= 3)
        {
          v89 = v45[8];
          v90 = v45[9];

          *(v83 + 192) = v89;
          *(v83 + 200) = v90;
          v91 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          *(v83 + 256) = sub_23DCEFAE8(0, &qword_27E30E280, 0x277CCABB0);
          *(v83 + 264) = sub_23DCFD47C();
          *(v83 + 232) = v91;
          v33 = sub_23DD42148();
          v35 = v92;
LABEL_53:

          v8 = v139;
          goto LABEL_54;
        }

        goto LABEL_78;
      }

      goto LABEL_75;
    }

    __break(1u);
    goto LABEL_72;
  }

  if (sub_23DCF5134(4, a1) || sub_23DCF5134(5, a1) || sub_23DCF5134(6, a1))
  {

    v27 = sub_23DD42138();
    v28 = [objc_opt_self() bundleWithIdentifier_];

    if (!v28)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v29 = sub_23DD42138();
    v30 = sub_23DD42138();
    v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

    sub_23DD42178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_23DD43570;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_23DCFD428();
    *(v32 + 32) = v8;
    *(v32 + 40) = v7;

    v33 = sub_23DD42148();
    v35 = v34;

    goto LABEL_54;
  }

  if (sub_23DCF5134(3, a1) && sub_23DCF5134(2, a1))
  {
    v140 = *v2;
    v141 = *(v2 + 2);
    v148 = v2[9];
    v149 = v2[10];
    v150 = v2[11];
    v144 = v2[5];
    v145 = v2[6];
    v146 = v2[7];
    v147 = v2[8];
    v142 = v2[3];
    v143 = v2[4];
    sub_23DCFAB1C(0xD000000000000025, 0x800000023DD4A8E0, v16, v18, v8, v7);
    v33 = v70;
    v35 = v71;

    goto LABEL_54;
  }

  if (!sub_23DCF5134(3, a1))
  {

    v33 = 0;
    v35 = 0xE000000000000000;
    goto LABEL_54;
  }

  swift_beginAccess();
  v72 = v4[4];
  v73 = *MEMORY[0x277CB8A48];
  v74 = sub_23DD42178();
  v76 = v75;
  if (v74 == sub_23DD42178() && v76 == v77)
  {

    goto LABEL_62;
  }

  v122 = sub_23DD42648();

  if (v122)
  {
LABEL_62:

    v123 = sub_23DD42138();
    v124 = [objc_opt_self() bundleWithIdentifier_];

    if (!v124)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

LABEL_63:
    v125 = sub_23DD42138();
    v126 = sub_23DD42138();
    v127 = [v124 localizedStringForKey:v125 value:v126 table:0];

    v33 = sub_23DD42178();
    v35 = v128;

    goto LABEL_54;
  }

  v129 = v4[4];
  v130 = *MEMORY[0x277CB8A58];
  v131 = sub_23DD42178();
  v133 = v132;
  if (v131 == sub_23DD42178() && v133 == v134)
  {
  }

  else
  {
    v135 = sub_23DD42648();

    if ((v135 & 1) == 0)
    {
      sub_23DCFAB1C(0xD00000000000001CLL, 0x800000023DD4A700, v16, v18, v8, v7);
      v33 = v137;
      v35 = v138;

      goto LABEL_54;
    }
  }

  v136 = sub_23DD42138();
  v124 = [objc_opt_self() bundleWithIdentifier_];

  if (v124)
  {
    goto LABEL_63;
  }

LABEL_90:
  __break(1u);
}

unint64_t sub_23DCFD428()
{
  result = qword_27E30E428;
  if (!qword_27E30E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E428);
  }

  return result;
}

unint64_t sub_23DCFD47C()
{
  result = qword_27E30E430;
  if (!qword_27E30E430)
  {
    sub_23DCEFAE8(255, &qword_27E30E280, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E430);
  }

  return result;
}

uint64_t sub_23DCFD4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  v8 = *(v0 + 152);

  v9 = *(v0 + 160);

  v10 = *(v0 + 176);

  v11 = *(v0 + 184);

  v12 = *(v0 + 192);

  v13 = *(v0 + 200);

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23DCFD670(unsigned __int8 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_23DCF5AD0(v1 + 32, a1);
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  v7 = *(v0 + 136);

  v8 = *(v0 + 152);

  v9 = *(v0 + 168);

  v10 = *(v0 + 176);

  v11 = *(v0 + 192);

  v12 = *(v0 + 200);

  v13 = *(v0 + 208);

  v14 = *(v0 + 216);

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_23DCFD72C(char *a1)
{
  v1 = *a1;
  memset(v3, 0, sizeof(v3));
  sub_23DCF8534(v1, v3);
  return sub_23DCEFA38(v3, &qword_27E30E1F0, &unk_23DD43F80);
}

uint64_t sub_23DCFD790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23DCFD8B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 40);

  v4 = *(v1 + 56);

  v5 = *(v1 + 72);

  v6 = *(v1 + 88);

  v7 = *(v1 + 104);

  v8 = *(v1 + 120);

  v9 = *(v1 + 136);

  v10 = *(v1 + 152);

  v11 = *(v1 + 160);

  v12 = *(v1 + 176);

  v13 = *(v1 + 184);

  v14 = *(v1 + 192);

  v15 = *(v1 + 200);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23DCFDA90()
{
  v2 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  return sub_23DD41EC8();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DCFDAF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23DCFDB38(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23DCFDB88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23DCFDBE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DCFDC7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DCFDCF8()
{
  result = qword_27E30E4C0;
  if (!qword_27E30E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E4C0);
  }

  return result;
}

unint64_t sub_23DCFDD4C()
{
  result = qword_27E30E4E0;
  if (!qword_27E30E4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E4E8, &unk_23DD44770);
    sub_23DCFDC7C(&qword_27E30E4B8, &qword_27E30E4B0, &qword_23DD44720, sub_23DCFDCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E4E0);
  }

  return result;
}

id sub_23DCFDE6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism);
  if (v1 <= 2)
  {
    if (!*(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism))
    {
LABEL_8:
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v3 = 0;
      goto LABEL_15;
    }

    if (v1 == 1)
    {
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v3 = 2;
    }

    else
    {
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v3 = 3;
    }
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) <= 4u)
    {
      if (v1 == 3)
      {
        v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        v3 = 4;
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    if (v1 == 5)
    {
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v3 = 1;
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastManualMethod);
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      if (v4 == 2)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }
  }

LABEL_15:

  return [v2 initWithInteger_];
}

uint64_t sub_23DCFDFB0(char a1, const char *a2)
{
  v5 = sub_23DD41658();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastManualMethod) = a1;
  sub_23DD41648();
  v10 = sub_23DD41638();
  v11 = sub_23DD42338();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23DCDB000, v10, v11, a2, v12, 2u);
    MEMORY[0x23EEFE6D0](v12, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23DCFE120(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_23DD41658();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DD41648();

  v11 = sub_23DD41638();
  v12 = sub_23DD42338();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23DD2731C(a1, a2, &v22);
    _os_log_impl(&dword_23DCDB000, v11, v12, "AccountAddAnalyticsSender: showed add flow for type %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x23EEFE6D0](v14, -1, -1);
    MEMORY[0x23EEFE6D0](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = (v3 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType);
  v16 = *(v3 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType + 8);
  *v15 = a1;
  v15[1] = a2;

  v18 = *(v3 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_numberOfTypesShown);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_numberOfTypesShown) = v20;
  }

  return result;
}

void sub_23DCFE328(uint64_t a1, uint64_t a2)
{
  v5 = sub_23DD41658();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (*(v2 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_successSent) & 1) == 0)
  {
    v11 = v8;
    v12 = v2;
    *(v2 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_successSent) = 1;
    sub_23DD41648();
    v13 = sub_23DD41638();
    v14 = sub_23DD42338();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23DCDB000, v13, v14, "AccountAddAnalyticsSender: sending success analytics", v15, 2u);
      MEMORY[0x23EEFE6D0](v15, -1, -1);
    }

    (*(v6 + 8))(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E508, &qword_23DD448D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DD43FE0;
    *(inited + 32) = 0xD000000000000016;
    *(inited + 40) = 0x800000023DD4B0C0;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 56) = 0xD000000000000014;
    *(inited + 64) = 0x800000023DD4B0E0;
    v17 = *(v12 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType);
    v18 = *(v12 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType + 8);

    v19 = sub_23DCFF3A8(v17, v18);

    *(inited + 72) = v19;
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x800000023DD4B100;
    *(inited + 96) = sub_23DCFDE6C();
    strcpy((inited + 104), "manualMethod");
    *(inited + 117) = 0;
    *(inited + 118) = -5120;
    *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    strcpy((inited + 128), "resolveMethod");
    *(inited + 142) = -4864;
    *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 152) = 0xD000000000000010;
    *(inited + 160) = 0x800000023DD4B120;
    *(inited + 168) = sub_23DCFF3A8(a1, a2);
    strcpy((inited + 176), "setUpMechanism");
    *(inited + 191) = -18;
    *(inited + 192) = sub_23DCFDE6C();
    *(inited + 200) = 0x7365527055746573;
    *(inited + 208) = 0xEB00000000746C75;
    *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    sub_23DD297F8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E510, &qword_23DD448D8);
    swift_arrayDestroy();
    v20 = sub_23DD42138();
    sub_23DCFF608();
    v21 = sub_23DD42108();

    AnalyticsSendEvent();
  }

  else
  {

    sub_23DCFE77C();
  }
}

void sub_23DCFE77C()
{
  v1 = sub_23DD41658();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = sub_23DD412A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_successSent) & 1) != 0 || (v18 = OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_cancelSent, (*(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_cancelSent)))
  {
    sub_23DD41648();
    v19 = sub_23DD41638();
    v20 = sub_23DD42338();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23DCDB000, v19, v20, "AccountAddAnalyticsSender: not sending canceled analytics due to having previously sent success or canceled from this sender prior", v21, 2u);
      MEMORY[0x23EEFE6D0](v21, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
  }

  else
  {
    v22 = v0;
    v23 = v15;
    (*(v13 + 16))(v17, v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_startDate, v15);
    sub_23DD41288();
    v25 = v24;
    (*(v13 + 8))(v17, v23);
    if (v25 >= -10.0)
    {
      sub_23DD41648();
      v35 = sub_23DD41638();
      v36 = sub_23DD42338();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_23DCDB000, v35, v36, "AccountAddAnalyticsSender: not sending canceled analytics due to short time span", v37, 2u);
        MEMORY[0x23EEFE6D0](v37, -1, -1);
      }

      (*(v2 + 8))(v9, v1);
    }

    else
    {
      sub_23DD41648();
      v26 = sub_23DD41638();
      v27 = sub_23DD42338();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_23DCDB000, v26, v27, "AccountAddAnalyticsSender: sending canceled analytics", v28, 2u);
        MEMORY[0x23EEFE6D0](v28, -1, -1);
      }

      (*(v2 + 8))(v11, v1);
      *(v22 + v18) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E508, &qword_23DD448D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23DD43FE0;
      *(inited + 32) = 0xD000000000000016;
      *(inited + 40) = 0x800000023DD4B0C0;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(inited + 56) = 0xD000000000000014;
      *(inited + 64) = 0x800000023DD4B0E0;
      v30 = *(v22 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType);
      v31 = *(v22 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType + 8);

      v32 = sub_23DCFF3A8(v30, v31);

      *(inited + 72) = v32;
      *(inited + 80) = 0xD000000000000017;
      *(inited + 88) = 0x800000023DD4B100;
      *(inited + 96) = sub_23DCFDE6C();
      strcpy((inited + 104), "manualMethod");
      *(inited + 117) = 0;
      *(inited + 118) = -5120;
      *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      strcpy((inited + 128), "resolveMethod");
      *(inited + 142) = -4864;
      *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(inited + 152) = 0xD000000000000010;
      *(inited + 160) = 0x800000023DD4B120;
      *(inited + 168) = sub_23DCFF3A8(0, 0);
      strcpy((inited + 176), "setUpMechanism");
      *(inited + 191) = -18;
      *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(inited + 200) = 0x7365527055746573;
      *(inited + 208) = 0xEB00000000746C75;
      *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      sub_23DD297F8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E510, &qword_23DD448D8);
      swift_arrayDestroy();
      v33 = sub_23DD42138();
      sub_23DCFF608();
      v34 = sub_23DD42108();

      AnalyticsSendEvent();
    }
  }
}

uint64_t AccountAddAnalyticsSender.deinit()
{
  v1 = OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_startDate;
  v2 = sub_23DD412A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType + 8);

  return v0;
}

uint64_t AccountAddAnalyticsSender.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_startDate;
  v2 = sub_23DD412A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for AccountAddAnalyticsSender()
{
  result = qword_27E30E4F0;
  if (!qword_27E30E4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DCFEF94()
{
  result = sub_23DD412A8();
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

uint64_t getEnumTagSinglePayload for AccountAddAnalyticsSender.ManualMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountAddAnalyticsSender.ManualMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountAddAnalyticsSender.ResolveMechanism(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccountAddAnalyticsSender.ResolveMechanism(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23DCFF31C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23DCFF330(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_23DCFF354()
{
  result = qword_27E30E500;
  if (!qword_27E30E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E500);
  }

  return result;
}

id sub_23DCFF3A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E520, &unk_23DD448E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DD44780;
  v5 = *MEMORY[0x277CB8D10];
  *(inited + 32) = sub_23DD42178();
  *(inited + 40) = v6;
  v7 = (inited + 40);
  v8 = *MEMORY[0x277CB8BC8];
  *(inited + 48) = sub_23DD42178();
  *(inited + 56) = v9;
  v10 = *MEMORY[0x277CB8BD8];
  *(inited + 64) = sub_23DD42178();
  *(inited + 72) = v11;
  v12 = *MEMORY[0x277CB8C60];
  *(inited + 80) = sub_23DD42178();
  *(inited + 88) = v13;
  v14 = *MEMORY[0x277CB8CD8];
  *(inited + 96) = sub_23DD42178();
  *(inited + 104) = v15;
  v16 = *MEMORY[0x277CB8C00];
  *(inited + 112) = sub_23DD42178();
  *(inited + 120) = v17;
  v18 = *MEMORY[0x277CB8C50];
  *(inited + 128) = sub_23DD42178();
  *(inited + 136) = v19;
  v20 = *MEMORY[0x277CB8C98];
  *(inited + 144) = sub_23DD42178();
  *(inited + 152) = v21;
  v22 = *MEMORY[0x277CB8C40];
  *(inited + 160) = sub_23DD42178();
  *(inited + 168) = v23;
  v24 = *MEMORY[0x277CB8D38];
  *(inited + 176) = sub_23DD42178();
  *(inited + 184) = v25;
  v26 = *MEMORY[0x277CB8B98];
  *(inited + 192) = sub_23DD42178();
  *(inited + 200) = v27;
  v28 = *MEMORY[0x277CB8BA0];
  *(inited + 208) = sub_23DD42178();
  *(inited + 216) = v29;
  v30 = *MEMORY[0x277CB8CE8];
  *(inited + 224) = sub_23DD42178();
  *(inited + 232) = v31;
  v32 = *MEMORY[0x277CB8B80];
  *(inited + 240) = sub_23DD42178();
  *(inited + 248) = v33;
  v34 = *MEMORY[0x277CB8B88];
  *(inited + 256) = sub_23DD42178();
  *(inited + 264) = v35;
  v36 = *MEMORY[0x277CB8CF8];
  *(inited + 272) = sub_23DD42178();
  *(inited + 280) = v37;
  for (i = 1; i != 17; ++i)
  {
    if (*v7)
    {
      if (a2)
      {
        v39 = *(v7 - 1) == a1 && *v7 == a2;
        if (v39 || (sub_23DD42648() & 1) != 0)
        {
LABEL_11:

          return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        }
      }
    }

    else if (!a2)
    {
      goto LABEL_11;
    }

    v7 += 2;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
  swift_arrayDestroy();
  i = 0;
  return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
}

unint64_t sub_23DCFF608()
{
  result = qword_27E30E518;
  if (!qword_27E30E518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E30E518);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountAddAnalyticsSender.AccountAddResolverType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccountAddAnalyticsSender.AccountAddResolverType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23DCFF7A8()
{
  result = qword_27E30E530;
  if (!qword_27E30E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E530);
  }

  return result;
}

uint64_t AccountSettingsRootView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DCFF854();
  result = sub_23DD41888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23DCFF854()
{
  result = qword_27E30E1A0;
  if (!qword_27E30E1A0)
  {
    type metadata accessor for AccountsUIModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E1A0);
  }

  return result;
}

uint64_t AccountSettingsRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23DD419D8();
  result = sub_23DD41C38();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_23DCFF934@<X0>(uint64_t a1@<X8>)
{
  sub_23DD419D8();
  result = sub_23DD41C38();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

ACUISAddAccountControllerSwap __swiftcall ACUISAddAccountControllerSwap.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for ACUISAddAccountControllerSwap()
{
  result = qword_27E30E538;
  if (!qword_27E30E538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E30E538);
  }

  return result;
}

void sub_23DCFFAE8(void *a1)
{
  v2 = sub_23DD41658();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0x277D3F000uLL;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    goto LABEL_20;
  }

  v8 = a1;
  v9 = [v7 specifier];
  if (v9)
  {
    v10 = v5;
    v11 = v9;
    v12 = [v9 propertyForKey_];

    if (v12)
    {
      sub_23DD424A8();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63 = v61;
    v64 = v62;
    v5 = v10;
    if (*(&v62 + 1))
    {
      v15 = swift_dynamicCast();
      if (v15)
      {
        v14 = v61;
      }

      else
      {
        v14 = 0;
      }

      if (v15)
      {
        v7 = *(&v61 + 1);
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  sub_23DCEFFDC(&v63);
  v14 = 0;
  v7 = 0;
LABEL_16:
  v16 = sub_23DD42138();
  v17 = NSClassFromString(v16);

  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = [v8 isKindOfClass_];

  if (v18)
  {

    v7 = 0x800000023DD4A5A0;
    v14 = 0xD000000000000014;
    LODWORD(v13) = 1;
  }

  else
  {
    LODWORD(v13) = 0;
  }

LABEL_20:
  sub_23DD41648();

  v19 = sub_23DD41638();
  v20 = sub_23DD42338();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v58 = a1;
    v23 = v22;
    *&v61 = v22;
    *v21 = 136315394;
    *&v63 = v14;
    *(&v63 + 1) = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
    v24 = sub_23DD42188();
    v26 = sub_23DD2731C(v24, v25, &v61);
    v27 = v14;
    v57 = v5;
    v28 = v13;
    v29 = v26;

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    if (v28)
    {
      v30 = 7562617;
    }

    else
    {
      v30 = 28526;
    }

    if (v28)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = 0xE200000000000000;
    }

    v31 = sub_23DD2731C(v30, v13, &v61);
    LOBYTE(v13) = v28;
    v14 = v27;

    *(v21 + 14) = v31;
    v6 = 0x277D3F000;
    _os_log_impl(&dword_23DCDB000, v19, v20, "ACUISAddAccountControllerSwap presenting account from host app: %s, force mail: %s", v21, 0x16u);
    swift_arrayDestroy();
    v32 = v23;
    a1 = v58;
    MEMORY[0x23EEFE6D0](v32, -1, -1);
    MEMORY[0x23EEFE6D0](v21, -1, -1);

    (*(v59 + 8))(v57, v60);
  }

  else
  {

    (*(v59 + 8))(v5, v60);
  }

  LOBYTE(v63) = v13;
  v33 = type metadata accessor for AccountAddAnalyticsSender();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  *(v36 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_numberOfTypesShown) = 0;
  v37 = (v36 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType);
  *v37 = 0;
  v37[1] = 0;
  *(v36 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) = 4;
  *(v36 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastManualMethod) = 0;
  *(v36 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_successSent) = 0;
  *(v36 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_cancelSent) = 0;
  sub_23DD41298();
  v38 = objc_allocWithZone(type metadata accessor for AccountAddViewModel(0));
  v39 = AccountAddViewModel.init(_:analyticsModel:hostBundleID:)(&v63, v36, v14, v7);
  v40 = *(v6 + 2976);
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41)
  {
    v42 = a1;
  }

  v43 = *&v39[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost];
  *&v39[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost] = v41;
  v44 = v41;

  sub_23DD01864();
  type metadata accessor for AccountsUIModel(0);
  sub_23DD001C8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  v45 = sub_23DD41888();
  v59 = v46;
  v60 = v45;
  sub_23DD001C8(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  v47 = sub_23DD41888();
  v49 = v48;
  if (qword_2814FD150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v50 = qword_2814FD158;
  v51 = sub_23DD41678();
  v52 = qword_2814FD158;
  v53 = sub_23DCE6098();

  sub_23DD41478();
  sub_23DD001C8(&qword_27E30E548, MEMORY[0x277CE8530]);
  v54 = sub_23DD41678();
  v55 = sub_23DD41678();
  *&v63 = v60;
  *(&v63 + 1) = v59;
  *&v64 = v47;
  *(&v64 + 1) = v49;
  v65 = v51;
  v66 = v50;
  v67 = v54;
  v68 = v53;
  v69 = v55;
  v70 = v39;
  v56 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E550, &qword_23DD44A28));
  sub_23DD41A68();
}

uint64_t sub_23DD001C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AccountsTypes.IconType.hashValue.getter()
{
  v1 = *v0;
  sub_23DD42688();
  MEMORY[0x23EEFDED0](v1);
  return sub_23DD426A8();
}

unint64_t sub_23DD002B8()
{
  result = qword_27E30E558;
  if (!qword_27E30E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E558);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountsTypes.IconType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountsTypes.IconType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23DD00478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23DD2AD18(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_23DD285BC(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_23DCEFA38(a1, &qword_27E30E1F0, &unk_23DD43F80);
    sub_23DD279C8(a2, a3, v10);

    return sub_23DCEFA38(v10, &qword_27E30E1F0, &unk_23DD43F80);
  }

  return result;
}

uint64_t sub_23DD00548(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23DCF20D8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_23DD0063C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23DD425C8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_23DD425C8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_23DD27928(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23DCEBDA8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t AccountAddView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel);
  *a1 = sub_23DD41888();
  a1[1] = v2;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel);
  result = sub_23DD41888();
  a1[2] = result;
  a1[3] = v4;
  return result;
}

uint64_t sub_23DD00848()
{
  result = sub_23DD42138();
  qword_27E311D18 = result;
  return result;
}

BOOL sub_23DD00880(void *a1)
{
  v2 = sub_23DD41488();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = a1;
  sub_23DD423B8();
  (*(v3 + 104))(v7, *MEMORY[0x277D40278], v2);
  sub_23DD03710(&qword_27E30EB18, MEMORY[0x277D40290]);
  sub_23DD42238();
  sub_23DD42238();

  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  return v13[1] == v13[0];
}

uint64_t sub_23DD00A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23DD420E8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_23DD422C8();
  v5[7] = sub_23DD422B8();
  v10 = sub_23DD422A8();

  return MEMORY[0x2822009F8](sub_23DD00B24, v10, v9);
}

uint64_t sub_23DD00B24()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  sub_23DD423C8();
  sub_23DD420D8();
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23DD00BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23DCFD8B0(a3, v27 - v11, &qword_27E30EA40, &qword_23DD45C78);
  v13 = sub_23DD422E8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23DCEFA38(v12, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    sub_23DD422D8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23DD422A8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23DD421B8() + 32;
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

      sub_23DCEFA38(a3, &qword_27E30EA40, &qword_23DD45C78);

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

  sub_23DCEFA38(a3, &qword_27E30EA40, &qword_23DD45C78);
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

void sub_23DD00ED0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_23DD422E8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_23DD422C8();
  v10 = a1;
  v11 = sub_23DD422B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a3;
  sub_23DD00BD0(0, 0, v8, &unk_23DD46070, v12);
}

uint64_t sub_23DD0105C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

uint64_t sub_23DD010E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();
}

uint64_t sub_23DD01210()
{
  v0 = sub_23DD42068();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v0);
  v27 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23DD42098();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23DD42058();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_23DD420B8();
  v26 = *(v32 - 8);
  v12 = *(v26 + 64);
  v13 = MEMORY[0x28223BE20](v32);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  if (LOBYTE(aBlock[0]) == 1)
  {
    sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
    v25 = sub_23DD42388();
    sub_23DD420A8();
    *v11 = 200;
    (*(v8 + 104))(v11, *MEMORY[0x277D85178], v7);
    MEMORY[0x23EEFD900](v15, v11);
    (*(v8 + 8))(v11, v7);
    v26 = *(v26 + 8);
    (v26)(v15, v32);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_23DD27278;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DCE4C84;
    aBlock[3] = &block_descriptor_1;
    v20 = _Block_copy(aBlock);

    sub_23DD42088();
    v33 = MEMORY[0x277D84F90];
    sub_23DD03710(&qword_2814FCCA0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
    sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0);
    v21 = v27;
    v22 = v31;
    sub_23DD424B8();
    v23 = v25;
    MEMORY[0x23EEFDBB0](v17, v6, v21, v20);
    _Block_release(v20);

    (*(v30 + 8))(v21, v22);
    (*(v28 + 8))(v6, v29);
    (v26)(v17, v32);
  }

  return result;
}

void sub_23DD0171C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    v3 = sub_23DD416E8();
    sub_23DD01210(v3);
  }
}

uint64_t sub_23DD017E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

void sub_23DD01864()
{
  v1 = *&v0[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_continueButton;
    if (!*&v0[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_continueButton])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v1;
      sub_23DD416D8();

      if (LOBYTE(v26[0]) == 1)
      {
        v4 = sub_23DD42138();
        v5 = [objc_opt_self() bundleWithIdentifier_];

        if (v5)
        {
          v6 = sub_23DD42138();
          v7 = sub_23DD42138();
          v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

          sub_23DD42178();
          v27 = type metadata accessor for AccountAddViewModel(0);
          v26[0] = v0;
          v9 = v0;
          v10 = sub_23DD42138();

          v11 = v27;
          if (v27)
          {
            v12 = __swift_project_boxed_opaque_existential_1(v26, v27);
            v13 = *(v11 - 8);
            v14 = *(v13 + 64);
            MEMORY[0x28223BE20](v12);
            v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v13 + 16))(v16);
            v17 = sub_23DD42638();
            (*(v13 + 8))(v16, v11);
            __swift_destroy_boxed_opaque_existential_1Tm(v26);
          }

          else
          {
            v17 = 0;
          }

          v18 = objc_allocWithZone(MEMORY[0x277D751E0]);
          v19 = [v18 initWithTitle:v10 style:2 target:v17 action:{sel__iOS_continueButtonPressed, v26[0]}];

          swift_unknownObjectRelease();
          v20 = *&v0[v2];
          *&v0[v2] = v19;
          v21 = v19;

          [v21 setEnabled_];
          v22 = [v3 navigationItem];
          v23 = *&v0[v2];
          if (v23)
          {
            v24 = v22;
            v25 = v23;
            [v24 setRightBarButtonItem_];

            goto LABEL_10;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_10:
    }
  }
}

uint64_t sub_23DD01BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_23DD41388();
    v10 = v9;
    v11 = sub_23DD41408();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v5, a1, v11);
    (*(v12 + 56))(v5, 0, 1, v11);
    sub_23DD10000(v8, v10, v5);

    return sub_23DCEFA38(v5, &qword_27E30E5B0, &qword_23DD44B60);
  }

  return result;
}

uint64_t AccountAddViewModel.AddType.hashValue.getter()
{
  v1 = *v0;
  sub_23DD42688();
  MEMORY[0x23EEFDED0](v1);
  return sub_23DD426A8();
}

id AccountAddViewModel.init(_:analyticsModel:hostBundleID:)(unsigned __int8 *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = v4;
  v201 = a4;
  v200 = a3;
  v190 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E560, &qword_23DD44B00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v211 = v169 - v9;
  v213 = sub_23DD42438();
  v210 = *(v213 - 8);
  v10 = *(v210 + 64);
  MEMORY[0x28223BE20](v213);
  v208 = v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E568, &qword_23DD44B08);
  v204 = *(v206 - 8);
  v12 = *(v204 + 64);
  MEMORY[0x28223BE20](v206);
  v202 = v169 - v13;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E570, &qword_23DD44B10);
  v205 = *(v207 - 8);
  v14 = *(v205 + 64);
  MEMORY[0x28223BE20](v207);
  v203 = v169 - v15;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E578, &qword_23DD44B18);
  v212 = *(v214 - 8);
  v16 = *(v212 + 64);
  MEMORY[0x28223BE20](v214);
  v209 = v169 - v17;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E580, &qword_23DD44B20);
  v198 = *(v199 - 8);
  v18 = *(v198 + 64);
  MEMORY[0x28223BE20](v199);
  v197 = v169 - v19;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E588, &qword_23DD44B28);
  v20 = *(*(v196 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v196);
  v195 = v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v194 = v169 - v23;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E590, &qword_23DD44B30);
  v192 = *(v193 - 8);
  v24 = *(v192 + 64);
  MEMORY[0x28223BE20](v193);
  v191 = v169 - v25;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E598, &qword_23DD44B38);
  v187 = *(v188 - 8);
  v26 = *(v187 + 64);
  MEMORY[0x28223BE20](v188);
  v186 = v169 - v27;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E040, &unk_23DD44B40);
  v183 = *(v184 - 8);
  v28 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v182 = v169 - v29;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E020, &qword_23DD43678);
  v180 = *(v181 - 8);
  v30 = *(v180 + 64);
  MEMORY[0x28223BE20](v181);
  v179 = v169 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5A0, &qword_23DD44B50);
  v219 = *(v32 - 8);
  v220 = v32;
  v33 = *(v219 + 64);
  MEMORY[0x28223BE20](v32);
  v178 = v169 - v34;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5A8, &qword_23DD44B58);
  v177 = *(v185 - 8);
  v35 = *(v177 + 64);
  MEMORY[0x28223BE20](v185);
  v176 = v169 - v36;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v37 = *(*(v175 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v175);
  v174 = v169 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v173 = v169 - v40;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B8, &qword_23DD44B68);
  v172 = *(v221 - 8);
  v41 = *(v172 + 64);
  MEMORY[0x28223BE20](v221);
  v43 = v169 - v42;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5C0, &unk_23DD44B70);
  v222 = *(v216 - 8);
  v44 = *(v222 + 64);
  MEMORY[0x28223BE20](v216);
  v46 = v169 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E000, &qword_23DD435C8);
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = v169 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v56 = v169 - v55;
  v189 = *a1;
  v57 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__accountSetupView;
  v225 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D8, &qword_23DD47200);
  sub_23DD41698();
  (*(v53 + 32))(&v5[v57], v56, v52);
  v58 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addOtherShown;
  LOBYTE(v225) = 0;
  v217 = v51;
  sub_23DD41698();
  v59 = *(v48 + 32);
  v218 = v47;
  v59(&v5[v58], v51, v47);
  v171 = v48 + 32;
  v170 = v59;
  v60 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addButtonEnabled;
  LOBYTE(v225) = 0;
  sub_23DD41698();
  v59(&v5[v60], v51, v47);
  v61 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__accountTypeToAdd;
  v225 = 0;
  v226 = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
  sub_23DD41698();
  v63 = *(v222 + 32);
  v222 += 32;
  v215 = v63;
  v64 = v216;
  v63(&v5[v61], v46, v216);
  v65 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__usernameString;
  v225 = 0;
  v226 = 0xE000000000000000;
  sub_23DD41698();
  v66 = v5;
  (*(v172 + 32))(&v5[v65], v43, v221);
  v67 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__overrideSuggestion;
  v68 = sub_23DD41408();
  v69 = v173;
  (*(*(v68 - 8) + 56))(v173, 1, 1, v68);
  sub_23DCFD8B0(v69, v174, &qword_27E30E5B0, &qword_23DD44B60);
  v70 = v176;
  sub_23DD41698();
  sub_23DCEFA38(v69, &qword_27E30E5B0, &qword_23DD44B60);
  (*(v177 + 32))(&v5[v67], v70, v185);
  v71 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addType;
  v185 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addType;
  LOBYTE(v225) = 0;
  v72 = v178;
  sub_23DD41698();
  (*(v219 + 32))(&v66[v71], v72, v220);
  v73 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__accountTypesToDisplay;
  v225 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E090, &qword_23DD436C0);
  v74 = v179;
  sub_23DD41698();
  (*(v180 + 32))(&v66[v73], v74, v181);
  v75 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__formattedErrorText;
  v225 = 0;
  v226 = 0;
  v169[1] = v62;
  sub_23DD41698();
  v76 = v46;
  v77 = v215;
  v215(&v66[v75], v46, v64);
  v78 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addByAccountTypeSheetPresented;
  LOBYTE(v225) = 0;
  v79 = v217;
  sub_23DD41698();
  v80 = v79;
  v81 = v218;
  v82 = v170;
  v170(&v66[v78], v80, v218);
  v83 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__hostAppBundleID;
  v225 = 0;
  v226 = 0;
  v169[0] = v76;
  sub_23DD41698();
  v77(&v66[v83], v76, v64);
  v84 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__resolverEnabled;
  LOBYTE(v225) = 1;
  v85 = v217;
  sub_23DD41698();
  v82(&v66[v84], v85, v81);
  v86 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addedAccount;
  v225 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E050, &qword_23DD436A0);
  v87 = v182;
  sub_23DD41698();
  v88 = *(v183 + 32);
  v89 = v184;
  v88(&v66[v86], v87, v184);
  v90 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__existingAccountForUsername;
  v225 = 0;
  sub_23DD41698();
  v88(&v66[v90], v87, v89);
  v91 = v190;
  v92 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__filteredAccountsOnOtherDevices;
  v93 = MEMORY[0x277D84F90];
  v225 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5C8, &qword_23DD44B88);
  v94 = v186;
  sub_23DD41698();
  (*(v187 + 32))(&v66[v92], v94, v188);
  v95 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__networkIssue;
  LOBYTE(v225) = 0;
  sub_23DD41698();
  v96 = v218;
  v82(&v66[v95], v85, v218);
  v97 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addPluginInProgress;
  LOBYTE(v225) = 0;
  sub_23DD41698();
  v82(&v66[v97], v85, v96);
  v98 = v82;
  v99 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__validatedUsername;
  v225 = 0;
  v226 = 0;
  v100 = v169[0];
  sub_23DD41698();
  v215(&v66[v99], v100, v216);
  v101 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__continueButtonGoogleAlertShown;
  LOBYTE(v225) = 0;
  sub_23DD41698();
  v98(&v66[v101], v85, v96);
  v102 = &v66[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  *v102 = 0;
  *(v102 + 1) = 0;
  *&v66[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper] = 0;
  *&v66[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_continueButton] = 0;
  *&v66[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost] = 0;
  v103 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_aListAccountTypes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1F8, &qword_23DD44B90);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_23DD44170;
  v105 = *MEMORY[0x277CB8BA0];
  *(v104 + 32) = sub_23DD42178();
  *(v104 + 40) = v106;
  v107 = *MEMORY[0x277CB8C00];
  *(v104 + 48) = sub_23DD42178();
  *(v104 + 56) = v108;
  v109 = *MEMORY[0x277CB8C40];
  *(v104 + 64) = sub_23DD42178();
  *(v104 + 72) = v110;
  v111 = *MEMORY[0x277CB8D38];
  *(v104 + 80) = sub_23DD42178();
  *(v104 + 88) = v112;
  v113 = *MEMORY[0x277CB8B98];
  *(v104 + 96) = sub_23DD42178();
  *(v104 + 104) = v114;
  v115 = *MEMORY[0x277CB8C50];
  *(v104 + 112) = sub_23DD42178();
  *(v104 + 120) = v116;
  *&v66[v103] = v104;
  v117 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_chinaAccountTypes;
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_23DD44160;
  v119 = *MEMORY[0x277CB8B88];
  *(v118 + 32) = sub_23DD42178();
  *(v118 + 40) = v120;
  v121 = *MEMORY[0x277CB8B80];
  *(v118 + 48) = sub_23DD42178();
  *(v118 + 56) = v122;
  v123 = *MEMORY[0x277CB8CE8];
  *(v118 + 64) = sub_23DD42178();
  *(v118 + 72) = v124;
  *&v66[v117] = v118;
  v125 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_otherAccountTypes;
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_23DD43FF0;
  v127 = *MEMORY[0x277CB8C60];
  *(v126 + 32) = sub_23DD42178();
  *(v126 + 40) = v128;
  v129 = *MEMORY[0x277CB8BC8];
  *(v126 + 48) = sub_23DD42178();
  *(v126 + 56) = v130;
  v131 = *MEMORY[0x277CB8D10];
  *(v126 + 64) = sub_23DD42178();
  *(v126 + 72) = v132;
  v133 = *MEMORY[0x277CB8BD8];
  *(v126 + 80) = sub_23DD42178();
  *(v126 + 88) = v134;
  v135 = *MEMORY[0x277CB8C98];
  v136 = sub_23DD42178();
  *&v66[v125] = v126;
  *&v66[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_cancelThis] = MEMORY[0x277D84FA0];
  *(v126 + 96) = v136;
  *(v126 + 104) = v137;
  v138 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel;
  *&v66[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel] = 0;
  *&v66[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_resolveTask] = 0;
  v139 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__preliminarySuggestions;
  v225 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5D0, &qword_23DD44B98);
  v140 = v191;
  sub_23DD41698();
  (*(v192 + 32))(&v66[v139], v140, v193);
  v141 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__nextStep;
  Step = type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
  v143 = v194;
  (*(*(Step - 8) + 56))(v194, 1, 1, Step);
  sub_23DCFD8B0(v143, v195, &qword_27E30E588, &qword_23DD44B28);
  v144 = v197;
  sub_23DD41698();
  sub_23DCEFA38(v143, &qword_27E30E588, &qword_23DD44B28);
  (*(v198 + 32))(&v66[v141], v144, v199);
  v145 = v185;
  swift_beginAccess();
  (*(v219 + 8))(&v66[v145], v220);
  LOBYTE(v144) = v189;
  v224 = v189;
  sub_23DD41698();
  swift_endAccess();
  v146 = *&v66[v138];
  *&v66[v138] = v91;

  v147 = sub_23DD41358();
  v148 = *(v147 + 48);
  v149 = *(v147 + 52);
  swift_allocObject();
  *&v66[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_configResolver] = sub_23DD41348();
  v150 = type metadata accessor for AccountAddViewModel(0);
  v223.receiver = v66;
  v223.super_class = v150;
  v151 = objc_msgSendSuper2(&v223, sel_init);
  LOBYTE(v225) = v144;
  v152 = v151;
  v153 = sub_23DD037E4(&v225);
  swift_getKeyPath();
  swift_getKeyPath();
  v225 = v153;
  v154 = v152;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  v225 = v200;
  v226 = v201;
  v155 = v154;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  if (v226)
  {
    if (v225 == 0xD000000000000014 && v226 == 0x800000023DD4A5A0)
    {
    }

    else
    {
      v156 = sub_23DD42648();

      if ((v156 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v225) = 0;
        v157 = v155;
        sub_23DD416E8();
      }
    }
  }

  swift_beginAccess();
  v158 = v202;
  sub_23DD416A8();
  swift_endAccess();
  v159 = v208;
  sub_23DD42428();
  v160 = [objc_opt_self() mainRunLoop];
  v225 = v160;
  v161 = sub_23DD42418();
  v162 = v211;
  (*(*(v161 - 8) + 56))(v211, 1, 1, v161);
  sub_23DCEFAE8(0, &qword_27E30E5D8, 0x277CBEB88);
  sub_23DCEF9F0(&qword_27E30E5E0, &qword_27E30E568, &qword_23DD44B08);
  sub_23DD23B44();
  v163 = v203;
  v164 = v206;
  sub_23DD41708();
  sub_23DCEFA38(v162, &qword_27E30E560, &qword_23DD44B00);

  (*(v210 + 8))(v159, v213);
  (*(v204 + 8))(v158, v164);
  sub_23DCEF9F0(&qword_27E30E5F0, &qword_27E30E570, &qword_23DD44B10);
  v165 = v209;
  v166 = v207;
  sub_23DD41718();
  (*(v205 + 8))(v163, v166);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23DCEF9F0(&qword_27E30E5F8, &qword_27E30E578, &qword_23DD44B18);
  v167 = v214;
  sub_23DD41728();

  (*(v212 + 8))(v165, v167);
  swift_beginAccess();
  sub_23DD41668();
  swift_endAccess();

  return v155;
}

uint64_t sub_23DD03710(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23DD03778(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_23DD047F8(v1, v2);
  }
}

char *sub_23DD037E4(unsigned __int8 *a1)
{
  v2 = *a1;
  v20 = *(v1 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_aListAccountTypes);

  if (sub_23DD29EF4())
  {
    v3 = *(v1 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_chinaAccountTypes);

    sub_23DD00548(v4);
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v6 = MEMORY[0x277CB8BD8];
    }

    else
    {
      v6 = MEMORY[0x277CB8BC8];
    }
  }

  else
  {
    if (!v2)
    {
      return v20;
    }

    v6 = MEMORY[0x277CB8C60];
  }

  v7 = *v6;
  v8 = sub_23DD42178();
  v10 = v9;
  v5 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_23DCF20D8(0, *(v20 + 16) + 1, 1, v20);
  }

  v11 = *(v5 + 2);
  v12 = *(v5 + 3);
  v13 = v11 + 1;
  if (v11 >= v12 >> 1)
  {
    v19 = v11 + 1;
    v16 = v5;
    v17 = *(v5 + 2);
    v18 = sub_23DCF20D8((v12 > 1), v11 + 1, 1, v16);
    v11 = v17;
    v13 = v19;
    v5 = v18;
  }

  *(v5 + 2) = v13;
  v14 = &v5[16 * v11];
  *(v14 + 4) = v8;
  *(v14 + 5) = v10;
  return v5;
}

uint64_t sub_23DD03914(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  result = sub_23DD416E8();
  v5 = &v3[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  v6 = *&v3[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  if (a1)
  {
    if (v6)
    {
      v7 = *(v5 + 1);

      v6(v8);
      return sub_23DCF5098(v6);
    }
  }

  else
  {
    v9 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    sub_23DCF5098(v6);
    swift_getKeyPath();
    swift_getKeyPath();
    v3;
    sub_23DD416E8();
    return sub_23DD01210();
  }

  return result;
}

uint64_t sub_23DD03A48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();
}

uint64_t sub_23DD03AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DD03B48;

  return sub_23DD041D0();
}

uint64_t sub_23DD03B48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23DD03C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23DCFD8B0(a3, v27 - v11, &qword_27E30EA40, &qword_23DD45C78);
  v13 = sub_23DD422E8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23DCEFA38(v12, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    sub_23DD422D8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23DD422A8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23DD421B8() + 32;
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

uint64_t sub_23DD03EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23DCFD8B0(a3, v27 - v11, &qword_27E30EA40, &qword_23DD45C78);
  v13 = sub_23DD422E8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23DCEFA38(v12, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    sub_23DD422D8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23DD422A8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23DD421B8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA80, &qword_23DD45D28);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
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

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA80, &qword_23DD45D28);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23DD041D0()
{
  v1[6] = v0;
  v2 = sub_23DD41658();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_23DD422C8();
  v1[10] = sub_23DD422B8();
  v6 = sub_23DD422A8();
  v1[11] = v6;
  v1[12] = v5;

  return MEMORY[0x2822009F8](sub_23DD042C4, v6, v5);
}

uint64_t sub_23DD042C4()
{
  v0[13] = *(v0[6] + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_configResolver);
  v1 = *(MEMORY[0x277CE85A8] + 4);

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_23DD04374;

  return MEMORY[0x28213A168]();
}

uint64_t sub_23DD04374()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_23DD04558;
  }

  else
  {
    v7 = v2[13];

    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_23DD04490;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23DD04490()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[6];

  *(swift_task_alloc() + 16) = v3;
  sub_23DD42018();
  sub_23DD41808();

  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23DD04558()
{
  v28 = v0;
  v1 = v0[13];
  v2 = v0[10];

  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = __swift_project_value_buffer(v5, qword_2814FD168);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_23DD42338();
  v8 = sub_23DD41638();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[15];
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    v0[5] = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1C0, &qword_23DD43F60);
    v16 = sub_23DD42188();
    v18 = sub_23DD2731C(v16, v17, &v27);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_23DCDB000, v8, v7, "Caught error %s trying to check health of config resolve service", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x23EEFE6D0](v14, -1, -1);
    MEMORY[0x23EEFE6D0](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[7];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[15];
  v23 = v0[6];
  *(swift_task_alloc() + 16) = v23;
  sub_23DD42018();
  sub_23DD41808();

  v24 = v0[9];

  v25 = v0[1];

  return v25();
}

uint64_t sub_23DD047F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_resolveTask;
  if (*&v2[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_resolveTask])
  {
    v10 = *&v2[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_resolveTask];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1C0, &qword_23DD43F60);
    sub_23DD422F8();
  }

  v11 = sub_23DD422E8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v2;

  v14 = sub_23DD04B34(0, 0, v8, &unk_23DD45FD0, v12);
  sub_23DCEFA38(v8, &qword_27E30EA40, &qword_23DD45C78);
  v15 = *&v2[v9];
  *&v2[v9] = v14;
}

uint64_t sub_23DD04990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_23DD04A3C;

  return sub_23DD05BDC(a5, a6);
}

uint64_t sub_23DD04A3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23DD04B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23DCFD8B0(a3, v24 - v10, &qword_27E30EA40, &qword_23DD45C78);
  v12 = sub_23DD422E8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23DCEFA38(v11, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    sub_23DD422D8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23DD422A8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23DD421B8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23DD04DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_23DD41658();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2814FD168);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_23DD42338();
  v17 = sub_23DD41638();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23DCDB000, v17, v16, "AccountAddViewModel.continueButtonPressed(:) begin", v18, 2u);
    MEMORY[0x23EEFE6D0](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v19 = sub_23DD422E8();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_23DD422C8();
  v20 = v3;

  v21 = sub_23DD422B8();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  v22[5] = a1;
  v22[6] = a2;
  sub_23DD00BD0(0, 0, v9, &unk_23DD45FA0, v22);

  return sub_23DD0F3B8("AccountAddViewModel.continueButtonPressed(:) end");
}

uint64_t sub_23DD0506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_23DD41408();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  Step = type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
  v6[12] = Step;
  v10 = *(*(Step - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB10, &qword_23DD45F48) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();
  v12 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  v6[16] = v12;
  v13 = *(v12 - 8);
  v6[17] = v13;
  v14 = *(v13 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = sub_23DD422C8();
  v6[20] = sub_23DD422B8();
  v15 = swift_task_alloc();
  v6[21] = v15;
  *v15 = v6;
  v15[1] = sub_23DD05260;

  return sub_23DD041D0();
}

uint64_t sub_23DD05260()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v8 = *v0;

  v6 = sub_23DD422A8();
  *(v1 + 176) = v6;
  *(v1 + 184) = v5;

  return MEMORY[0x2822009F8](sub_23DD053A4, v6, v5);
}

uint64_t sub_23DD053A4()
{
  v1 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  v3 = v0[2];
  v2 = v0[3];
  v0[24] = v2;
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_23DD0549C;
  v5 = v0[15];
  v6 = v0[4];

  return sub_23DD06460(v5, v3, v2);
}

uint64_t sub_23DD0549C()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v7 = *v0;

  v4 = *(v1 + 184);
  v5 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_23DD055E0, v5, v4);
}

uint64_t sub_23DD055E0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_23DCEFA38(*(v0 + 120), &qword_27E30EB10, &qword_23DD45F48);
    goto LABEL_17;
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 112);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 32);
  sub_23DD26A14(*(v0 + 120), v5, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
  sub_23DD0C7A4(v5, v6);
  sub_23DD269AC(v6, v7, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v18 = *(v0 + 144);
      v22 = *(v0 + 112);
      goto LABEL_15;
    }

    v16 = *(v0 + 32);
    if (*(v16 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel))
    {
      v17 = *(v16 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);

      sub_23DCFDFA0();

      v16 = *(v0 + 32);
    }

    v18 = *(v0 + 144);
    v19 = *(v0 + 112);
    *(swift_task_alloc() + 16) = v16;
    sub_23DD42018();
    sub_23DD41808();

LABEL_13:
    v22 = v19;
LABEL_15:
    sub_23DD2B4C0(v22, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    v15 = v18;
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    v11 = *(v0 + 144);
    v12 = *(v0 + 112);
    v13 = *(v0 + 32);
    v14 = **(v0 + 104);
    sub_23DD0DECC(v14);

LABEL_6:
    sub_23DD2B4C0(v12, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    v15 = v11;
LABEL_16:
    sub_23DD2B4C0(v15, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
    goto LABEL_17;
  }

  v20 = *(v0 + 32);
  v21 = *(*(v0 + 64) + 32);
  v21(*(v0 + 88), *(v0 + 104), *(v0 + 56));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  if (*(v0 + 208))
  {
    v18 = *(v0 + 144);
    v19 = *(v0 + 112);
    (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
    goto LABEL_13;
  }

  v31 = *(v0 + 88);
  v32 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 209) = 1;
  v32;
  sub_23DD416E8();
  sub_23DD01210();
  v33 = sub_23DD41388();
  v35 = v34;
  v36 = *MEMORY[0x277CB8C40];
  if (v33 == sub_23DD42178() && v35 == v37)
  {
  }

  else
  {
    v38 = sub_23DD42648();

    if ((v38 & 1) == 0)
    {
      v11 = *(v0 + 144);
      v12 = *(v0 + 112);
      v50 = *(v0 + 88);
      v51 = *(v0 + 56);
      v52 = *(v0 + 64);
      v53 = *(v0 + 48);
      (*(v0 + 40))(v50);
      (*(v52 + 8))(v50, v51);
      goto LABEL_6;
    }
  }

  v39 = *(v0 + 112);
  v40 = *(v0 + 80);
  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = *(v0 + 64);
  v57 = *(v0 + 72);
  v41 = *(v0 + 48);
  v42 = *(v0 + 56);
  v43 = *(v0 + 32);
  v58 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 210) = 1;
  v44 = v43;
  sub_23DD416E8();
  sub_23DD2B4C0(v39, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
  sub_23DD2B4C0(v54, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
  v21(v40, v55, v42);
  v45 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v58;
  *(v46 + 24) = v41;
  v21(v46 + v45, v40, v42);
  v47 = &v44[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  v48 = *&v44[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  v49 = *&v44[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow + 8];
  *v47 = sub_23DD2B638;
  v47[1] = v46;

  sub_23DCF5098(v48);
LABEL_17:
  v23 = *(v0 + 144);
  v24 = *(v0 + 112);
  v25 = *(v0 + 120);
  v26 = *(v0 + 104);
  v28 = *(v0 + 80);
  v27 = *(v0 + 88);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_23DD05B68(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_23DD416E8();
}

uint64_t sub_23DD05BDC(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  Step = type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
  v3[3] = Step;
  v7 = *(*(Step - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB10, &qword_23DD45F48) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v3[6] = v9;
  v10 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  v3[7] = v10;
  v11 = *(v10 - 8);
  v3[8] = v11;
  v12 = *(v11 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = sub_23DD422C8();
  v3[11] = sub_23DD422B8();
  v13 = swift_task_alloc();
  v3[12] = v13;
  *v13 = v3;
  v13[1] = sub_23DD05D88;

  return sub_23DD06460(v9, a1, a2);
}

uint64_t sub_23DD05D88()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v5 = sub_23DD422A8();

  return MEMORY[0x2822009F8](sub_23DD05EC4, v5, v4);
}

uint64_t sub_23DD05EC4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_23DCEFA38(*(v0 + 48), &qword_27E30EB10, &qword_23DD45F48);
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 16);
    sub_23DD26A14(*(v0 + 48), v5, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
    sub_23DD0C7A4(v5, v6);
    *(v0 + 104) = 0;
    sub_23DD269AC(v6, v7, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v10 = *(v0 + 32);
      *(v0 + 104) = 1;
      sub_23DD2B4C0(v10, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    }

    v11 = *(v0 + 72);
    v12 = *(v0 + 40);
    v13 = *(v0 + 16);
    v14 = swift_task_alloc();
    v14[2] = v13;
    v14[3] = v12;
    v14[4] = v11;
    v14[5] = v0 + 104;
    sub_23DD42018();
    sub_23DD41808();

    sub_23DD2B4C0(v12, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    sub_23DD2B4C0(v11, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
  }

  v15 = *(v0 + 72);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v18 = *(v0 + 32);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23DD060E0(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E588, &qword_23DD44B28);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  sub_23DD269AC(a2, &v35 - v13, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
  Step = type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
  (*(*(Step - 8) + 56))(v14, 0, 1, Step);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DCFD8B0(v14, v12, &qword_27E30E588, &qword_23DD44B28);
  v16 = a1;
  sub_23DD416E8();
  sub_23DCEFA38(v14, &qword_27E30E588, &qword_23DD44B28);
  v18 = *(a3 + 8);
  v17 = *(a3 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v18;
  v36 = v17;

  v19 = v16;
  sub_23DD416E8();
  v20 = *a4;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = v20;
  v21 = v19;
  sub_23DD416E8();
  v22 = *&v21[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_continueButton];
  if (v22)
  {
    [v22 setEnabled_];
  }

  v23 = *a3;
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v23;
  v24 = v23;
  v25 = v21;
  sub_23DD416E8();
  v26 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  v27 = *(a3 + *(v26 + 36));
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v27;
  v28 = v25;

  sub_23DD416E8();
  v29 = *(a3 + *(v26 + 40));
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v29;
  v30 = v28;

  sub_23DD416E8();
  v32 = *(a3 + 40);
  v31 = *(a3 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v32;
  v36 = v31;

  v33 = v30;
  return sub_23DD416E8();
}

uint64_t sub_23DD06460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_23DD41528();
  v4[39] = v5;
  v6 = *(v5 - 8);
  v4[40] = v6;
  v7 = *(v6 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v8 = sub_23DD414D8();
  v4[43] = v8;
  v9 = *(v8 - 8);
  v4[44] = v9;
  v10 = *(v9 + 64) + 15;
  v4[45] = swift_task_alloc();
  v11 = sub_23DD414F8();
  v4[46] = v11;
  v12 = *(v11 - 8);
  v4[47] = v12;
  v13 = *(v12 + 64) + 15;
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v14 = sub_23DD415E8();
  v4[50] = v14;
  v15 = *(v14 - 8);
  v4[51] = v15;
  v16 = *(v15 + 64) + 15;
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v17 = sub_23DD41608();
  v4[54] = v17;
  v18 = *(v17 - 8);
  v4[55] = v18;
  v19 = *(v18 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v20 = sub_23DD41558();
  v4[58] = v20;
  v21 = *(v20 - 8);
  v4[59] = v21;
  v22 = *(v21 + 64) + 15;
  v4[60] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB00, &qword_23DD45F30) - 8) + 64) + 15;
  v4[61] = swift_task_alloc();
  v24 = sub_23DD41568();
  v4[62] = v24;
  v25 = *(v24 - 8);
  v4[63] = v25;
  v26 = *(v25 + 64) + 15;
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v27 = sub_23DD41578();
  v4[66] = v27;
  v28 = *(v27 - 8);
  v4[67] = v28;
  v29 = *(v28 + 64) + 15;
  v4[68] = swift_task_alloc();
  v30 = *(*(sub_23DD414B8() - 8) + 64) + 15;
  v4[69] = swift_task_alloc();
  v31 = sub_23DD415C8();
  v4[70] = v31;
  v32 = *(v31 - 8);
  v4[71] = v32;
  v33 = *(v32 + 64) + 15;
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v34 = sub_23DD415B8();
  v4[74] = v34;
  v35 = *(v34 - 8);
  v4[75] = v35;
  v36 = *(v35 + 64) + 15;
  v4[76] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60) - 8) + 64) + 15;
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v38 = sub_23DD41408();
  v4[81] = v38;
  v39 = *(v38 - 8);
  v4[82] = v39;
  v40 = *(v39 + 64) + 15;
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v41 = sub_23DD411D8();
  v4[87] = v41;
  v42 = *(v41 - 8);
  v4[88] = v42;
  v43 = *(v42 + 64) + 15;
  v4[89] = swift_task_alloc();
  v44 = sub_23DD41658();
  v4[90] = v44;
  v45 = *(v44 - 8);
  v4[91] = v45;
  v46 = *(v45 + 64) + 15;
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  sub_23DD422C8();
  v4[108] = sub_23DD422B8();
  v48 = sub_23DD422A8();
  v4[109] = v48;
  v4[110] = v47;

  return MEMORY[0x2822009F8](sub_23DD06B8C, v48, v47);
}

uint64_t sub_23DD06B8C()
{
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 856);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = __swift_project_value_buffer(v3, qword_2814FD168);
  *(v0 + 888) = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v0 + 896) = v5;
  *(v0 + 904) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = sub_23DD42338();
  v7 = sub_23DD41638();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23DCDB000, v7, v6, "AccountAddViewModel.validateEmailAddress(:) begin", v8, 2u);
    MEMORY[0x23EEFE6D0](v8, -1, -1);
  }

  v9 = *(v0 + 856);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);
  v12 = *(v0 + 304);

  v13 = *(v10 + 8);
  *(v0 + 912) = v13;
  v13(v9, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  if (*(v0 + 1080))
  {
    v14 = *(v0 + 712);
    v15 = *(v0 + 704);
    v16 = *(v0 + 696);
    v17 = *(v0 + 656);
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v20 = *(v0 + 296);
    v21 = *(v0 + 304);
    *(v0 + 192) = *(v0 + 288);
    *(v0 + 200) = v20;
    sub_23DD411C8();
    *(v0 + 920) = sub_23DCF4570();
    v22 = sub_23DD42478();
    *(v0 + 928) = v22;
    v102 = v23;
    *(v0 + 936) = v23;
    (*(v15 + 8))(v14, v16);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DD416D8();

    if ((*(v17 + 48))(v19, 1, v18) == 1)
    {
      sub_23DCEFA38(*(v0 + 640), &qword_27E30E5B0, &qword_23DD44B60);
LABEL_8:
      v24 = *(v0 + 584);
      v25 = *(v0 + 552);
      v26 = *(v0 + 304);
      v27 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_configResolver;
      *(v0 + 944) = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_configResolver;
      *(v0 + 952) = *(v26 + v27);

      sub_23DD414A8();
      sub_23DD41538();
      v28 = *(MEMORY[0x277CE85B8] + 4);
      v29 = swift_task_alloc();
      *(v0 + 960) = v29;
      *v29 = v0;
      v29[1] = sub_23DD0741C;
      v30 = *(v0 + 608);
      v31 = *(v0 + 584);

      return MEMORY[0x28213A178](v30, v31);
    }

    (*(*(v0 + 656) + 32))(*(v0 + 688), *(v0 + 640), *(v0 + 648));
    if (sub_23DD413F8() == v22 && v35 == v102)
    {
      v36 = *(v0 + 864);
    }

    else
    {
      v37 = sub_23DD42648();

      if ((v37 & 1) == 0)
      {
        v101 = *(v0 + 688);
        v61 = *(v0 + 656);
        v62 = *(v0 + 648);
        v63 = *(v0 + 632);
        v64 = *(v0 + 624);
        v65 = *(v0 + 304);
        (*(v61 + 56))(v63, 1, 1, v62);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DCFD8B0(v63, v64, &qword_27E30E5B0, &qword_23DD44B60);
        v66 = v65;
        sub_23DD416E8();
        sub_23DCEFA38(v63, &qword_27E30E5B0, &qword_23DD44B60);
        (*(v61 + 8))(v101, v62);
        goto LABEL_8;
      }

      v38 = *(v0 + 864);
    }

    v39 = *(v0 + 688);
    v40 = *(v0 + 656);
    v41 = *(v0 + 648);
    v42 = *(v0 + 280);
    v103 = sub_23DD41388();
    v44 = v43;
    v45 = sub_23DD413F8();
    v47 = v46;
    v48 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
    v49 = v48[8];
    (*(v40 + 16))(&v42[v49], v39, v41);
    (*(v40 + 56))(&v42[v49], 0, 1, v41);
    (*(v40 + 8))(v39, v41);
    *v42 = 0;
    *(v42 + 1) = 0;
    *(v42 + 2) = 0;
    *(v42 + 3) = v103;
    *(v42 + 4) = v44;
    *(v42 + 5) = v45;
    *(v42 + 6) = v47;
    v50 = MEMORY[0x277D84F90];
    *&v42[v48[9]] = MEMORY[0x277D84F90];
    *&v42[v48[10]] = v50;
    (*(*(v48 - 1) + 56))(v42, 0, 1, v48);
  }

  else
  {
    v32 = *(v0 + 864);
    v33 = *(v0 + 280);

    v34 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  v51 = *(v0 + 856);
  v52 = *(v0 + 848);
  v53 = *(v0 + 840);
  v54 = *(v0 + 832);
  v55 = *(v0 + 824);
  v56 = *(v0 + 816);
  v57 = *(v0 + 808);
  v58 = *(v0 + 800);
  v59 = *(v0 + 792);
  v68 = *(v0 + 784);
  v69 = *(v0 + 776);
  v70 = *(v0 + 768);
  v71 = *(v0 + 760);
  v72 = *(v0 + 752);
  v73 = *(v0 + 744);
  v74 = *(v0 + 736);
  v75 = *(v0 + 712);
  v76 = *(v0 + 688);
  v77 = *(v0 + 680);
  v78 = *(v0 + 672);
  v79 = *(v0 + 664);
  v80 = *(v0 + 640);
  v81 = *(v0 + 632);
  v82 = *(v0 + 624);
  v83 = *(v0 + 616);
  v84 = *(v0 + 608);
  v85 = *(v0 + 584);
  v86 = *(v0 + 576);
  v87 = *(v0 + 552);
  v88 = *(v0 + 544);
  v89 = *(v0 + 520);
  v90 = *(v0 + 512);
  v91 = *(v0 + 488);
  v92 = *(v0 + 480);
  v93 = *(v0 + 456);
  v94 = *(v0 + 448);
  v95 = *(v0 + 424);
  v96 = *(v0 + 416);
  v97 = *(v0 + 392);
  v98 = *(v0 + 384);
  v99 = *(v0 + 360);
  v100 = *(v0 + 336);
  v104 = *(v0 + 328);
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_23DD0741C()
{
  v1 = *v0;
  v2 = *(*v0 + 960);
  v3 = *(*v0 + 952);
  v4 = *(*v0 + 584);
  v5 = *(*v0 + 568);
  v6 = *(*v0 + 560);
  v11 = *v0;

  v7 = *(v5 + 8);
  v1[121] = v7;
  v1[122] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  v8 = v1[110];
  v9 = v1[109];

  return MEMORY[0x2822009F8](sub_23DD075D0, v9, v8);
}

uint64_t sub_23DD075D0()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = sub_23DD41598();
  *(v0 + 984) = v5;
  sub_23DD41588();
  v6 = (*(v3 + 88))(v2, v4);
  v253 = v0;
  if (v6 != *MEMORY[0x277CE86E8])
  {
    v217 = v5;
    if (v6 == *MEMORY[0x277CE86F8])
    {
      v19 = *(v0 + 904);
      (*(v0 + 896))(*(v0 + 768), *(v0 + 888), *(v0 + 720));
      v20 = sub_23DD42338();
      v21 = sub_23DD41638();
      v22 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 912);
      v24 = *(v0 + 864);
      v25 = *(v0 + 768);
      v26 = *(v0 + 728);
      v27 = *(v0 + 720);
      if (v22)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "AccountAddViewModel.validateEmailAddress(:) validated empty";
LABEL_12:
        _os_log_impl(&dword_23DCDB000, v21, v20, v29, v28, 2u);
        MEMORY[0x23EEFE6D0](v28, -1, -1);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (v6 == *MEMORY[0x277CE8700])
    {
      v41 = *(v0 + 904);
      (*(v0 + 896))(*(v0 + 760), *(v0 + 888), *(v0 + 720));
      v20 = sub_23DD42338();
      v21 = sub_23DD41638();
      v42 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 912);
      v43 = *(v0 + 864);
      v25 = *(v0 + 760);
      v44 = *(v0 + 728);
      v27 = *(v0 + 720);
      if (v42)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "AccountAddViewModel.validateEmailAddress(:) invalid";
        goto LABEL_12;
      }

LABEL_13:

      v23(v25, v27);

      v213 = 0;
      v215 = 0;
      v209 = 0;
      v211 = 0;
      v30 = v0;
      goto LABEL_14;
    }

    if (v6 == *MEMORY[0x277CE86E0])
    {
      v129 = *(v0 + 904);
      (*(v0 + 896))(*(v0 + 744), *(v0 + 888), *(v0 + 720));
      v130 = sub_23DD42338();
      v131 = sub_23DD41638();
      if (os_log_type_enabled(v131, v130))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_23DCDB000, v131, v130, "AccountAddViewModel.validateEmailAddress(:) valid but suspicious", v132, 2u);
        MEMORY[0x23EEFE6D0](v132, -1, -1);
      }

      v133 = *(v0 + 912);
      v134 = *(v0 + 744);
      v30 = v0;
      v135 = *(v0 + 728);
      v136 = v30[90];

      v133(v134, v136);
      v137 = sub_23DD42138();
      v138 = [objc_opt_self() bundleWithIdentifier_];

      if (v138)
      {
        v142 = v30[121];
        v248 = v30[122];
        v251 = v30[108];
        v143 = v30[76];
        v144 = v30[73];
        v145 = v30[70];
        v146 = v30[69];
        v147 = sub_23DD42138();
        v148 = sub_23DD42138();
        v149 = [v138 localizedStringForKey:v147 value:v148 table:0];

        v150 = sub_23DD42178();
        v213 = v151;
        v215 = v150;

        sub_23DD415A8();
        sub_23DD41548();
        v142(v144, v145);
        v152 = sub_23DD421C8();
        v209 = v153;
        v211 = v152;

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      if (v6 == *MEMORY[0x277CE86F0])
      {
        v154 = *(v0 + 976);
        v155 = *(v0 + 968);
        v249 = *(v0 + 896);
        v252 = *(v0 + 904);
        v156 = *(v0 + 888);
        v157 = *(v0 + 848);
        v158 = *(v0 + 720);
        v159 = *(v0 + 608);
        v160 = *(v0 + 584);
        v161 = *(v0 + 560);
        v162 = *(v0 + 552);
        sub_23DD415A8();
        sub_23DD41548();
        v155(v160, v161);
        *(v0 + 992) = sub_23DD421C8();
        *(v0 + 1000) = v163;
        v249(v157, v156, v158);
        v164 = sub_23DD42338();
        v165 = sub_23DD41638();
        if (os_log_type_enabled(v165, v164))
        {
          v166 = swift_slowAlloc();
          *v166 = 0;
          _os_log_impl(&dword_23DCDB000, v165, v164, "AccountAddViewModel.validateEmailAddress(:) validated good, running resolve", v166, 2u);
          MEMORY[0x23EEFE6D0](v166, -1, -1);
        }

        v167 = *(v0 + 944);
        v168 = v253[114];
        v169 = v253[106];
        v170 = v253[91];
        v171 = v253[90];
        v172 = v253[76];
        v173 = v253[72];
        v174 = v253[38];

        v168(v169, v171);
        v253[126] = *(v174 + v167);

        sub_23DD415A8();
        v175 = *(MEMORY[0x277CE85B0] + 4);
        v176 = swift_task_alloc();
        v253[127] = v176;
        *v176 = v253;
        v176[1] = sub_23DD088C8;
        v140 = v253[72];
        v141 = v253[60];
        v139 = v253[61];

        return MEMORY[0x28213A170](v139, v140, v141);
      }

      v177 = *(v0 + 904);
      (*(v0 + 896))(*(v0 + 736), *(v0 + 888), *(v0 + 720));
      v178 = sub_23DD42338();
      v179 = sub_23DD41638();
      if (os_log_type_enabled(v179, v178))
      {
        v180 = swift_slowAlloc();
        *v180 = 0;
        _os_log_impl(&dword_23DCDB000, v179, v178, "AccountAddViewModel.validateEmailAddress(:) unknown default", v180, 2u);
        MEMORY[0x23EEFE6D0](v180, -1, -1);
      }

      v181 = *(v0 + 912);
      v182 = *(v0 + 736);
      v30 = v0;
      v183 = *(v0 + 728);
      v184 = v30[90];

      v181(v182, v184);
      v185 = sub_23DD42138();
      v186 = [objc_opt_self() bundleWithIdentifier_];

      if (v186)
      {
        v187 = v30[108];
        v188 = v30[68];
        v189 = v30[67];
        v190 = v30[66];
        v191 = sub_23DD42138();
        v192 = sub_23DD42138();
        v193 = [v186 localizedStringForKey:v191 value:v192 table:0];

        v194 = sub_23DD42178();
        v213 = v195;
        v215 = v194;

        (*(v189 + 8))(v188, v190);

        v209 = 0;
        v211 = 0;
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x28213A170](v139, v140, v141);
  }

  v7 = *(v0 + 904);
  v8 = *(v0 + 896);
  v9 = *(v0 + 888);
  v10 = *(v0 + 752);
  v11 = *(v0 + 720);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 528);

  (*(v13 + 96))(v12, v14);
  v15 = *v12;
  v8(v10, v9, v11);
  v16 = sub_23DD42338();

  v17 = sub_23DD41638();
  v217 = v15;
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(v15 + 16);

    _os_log_impl(&dword_23DCDB000, v17, v16, "AccountAddViewModel.validateEmailAddress(:) found %ld suggestions", v18, 0xCu);
    MEMORY[0x23EEFE6D0](v18, -1, -1);
  }

  else
  {
  }

  v30 = v253;
  v31 = v253[122];
  v32 = v253[121];
  v33 = v253[108];
  v34 = v253[76];
  v35 = v253[73];
  v36 = v253[70];
  v37 = v253[91] + 8;
  v38 = v253[69];
  (v253[114])(v253[94], v253[90]);
  sub_23DD415A8();
  sub_23DD41548();
  v32(v35, v36);
  v39 = sub_23DD421C8();
  v209 = v40;
  v211 = v39;

  v213 = 0;
  v215 = 0;
LABEL_14:
  v45 = v30[117];
  v46 = v30[116];
  if (sub_23DD421E8() < 1)
  {
    v243 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_85;
  }

LABEL_16:
  swift_beginAccess();
  v47 = qword_2814FD158;
  sub_23DCE6098();

  v48 = sub_23DD41418();

  v245 = *(v48 + 16);
  if (v245)
  {
    v49 = 0;
    v50 = v30[82];
    v238 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v241 = v48 + v238;
    v51 = (v50 + 8);
    v243 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v49 >= *(v48 + 16))
      {
        __break(1u);
LABEL_85:
        swift_once();
        goto LABEL_16;
      }

      v52 = *(v50 + 72);
      v53 = *(v50 + 16);
      v53(v30[85], v241 + v52 * v49, v30[81]);
      v54 = sub_23DD413F8();
      v56 = v55;

      v57 = HIBYTE(v56) & 0xF;
      if ((v56 & 0x2000000000000000) == 0)
      {
        v57 = v54 & 0xFFFFFFFFFFFFLL;
      }

      if (!v57)
      {
        goto LABEL_27;
      }

      v58 = v30[117];
      v59 = v253[116];
      v60 = v253[85];
      sub_23DD413F8();
      v30 = v253;
      LOBYTE(v58) = sub_23DD42218();

      if ((v58 & 1) == 0)
      {
        goto LABEL_27;
      }

      v61 = v48;
      v62 = v253[117];
      v63 = v253[116];
      v64 = v253[85];
      if (sub_23DD413F8() == v63 && v65 == v62)
      {
        break;
      }

      v66 = v253[117];
      v67 = v253[116];
      v68 = sub_23DD42648();

      v48 = v61;
      if (v68)
      {
        goto LABEL_27;
      }

      v53(v253[84], v253[85], v253[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v243 = sub_23DCF2310(0, *(v243 + 2) + 1, 1, v243);
      }

      v70 = *(v243 + 2);
      v69 = *(v243 + 3);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v243 = sub_23DCF2310(v69 > 1, v70 + 1, 1, v243);
      }

      v72 = v253[84];
      v73 = v253[81];
      (*v51)(v253[85], v73);
      *(v243 + 2) = v71;
      v74 = v73;
      v30 = v253;
      (*(v50 + 32))(&v243[v238 + v70 * v52], v72, v74);
      v48 = v61;
      if (v71 == 3)
      {
        goto LABEL_38;
      }

LABEL_28:
      if (v245 == ++v49)
      {
        goto LABEL_38;
      }
    }

    v48 = v61;
LABEL_27:
    (*v51)(v30[85], v30[81]);
    goto LABEL_28;
  }

  v243 = MEMORY[0x277D84F90];
LABEL_38:

LABEL_39:
  v234 = *(v217 + 16);
  if (v234)
  {
    v75 = 0;
    v76 = v30[40];
    v77 = *(v76 + 16);
    v76 += 16;
    v239 = v77;
    v78 = v30[82];
    v221 = (*(v76 + 64) + 32) & ~*(v76 + 64);
    v236 = *(v76 + 56);
    v79 = (v78 + 8);
    v223 = (v78 + 32);
    v227 = v78;
    v231 = (v78 + 56);
    v219 = (v76 + 16);
    v229 = (v76 - 8);
    v225 = MEMORY[0x277D84F90];
    do
    {
      v246 = v75;
      v239(v30[42], v217 + v221 + v75 * v236, v30[39]);
      v80 = *(v243 + 2);
      if (v80)
      {
        v81 = &v243[(*(v227 + 80) + 32) & ~*(v227 + 80)];
        v82 = *(v227 + 72);
        v83 = *(v227 + 16);
        while (1)
        {
          v84 = v30[69];
          v85 = v30[42];
          v83(v30[83], v81, v30[81]);
          v86 = sub_23DD413F8();
          v88 = v87;
          sub_23DD41508();
          if (v86 == sub_23DD421C8() && v88 == v89)
          {
            break;
          }

          v91 = sub_23DD42648();

          if (v91)
          {
            goto LABEL_62;
          }

          v30 = v253;
          (*v79)(v253[83], v253[81]);
          v81 += v82;
          if (!--v80)
          {
            goto LABEL_51;
          }
        }

LABEL_62:
        v30 = v253;
        v108 = v253[81];
        v109 = v253[77];
        (*v223)(v109, v253[83], v108);
        (*v231)(v109, 0, 1, v108);
        sub_23DCEFA38(v109, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_51:
        v92 = v30[117];
        v93 = v30;
        v94 = v30[116];
        v95 = v93[77];
        v96 = v93[69];
        v97 = v93[42];
        (*v231)(v95, 1, 1, v93[81]);
        sub_23DCEFA38(v95, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v94 && v98 == v92)
        {

          v30 = v93;
        }

        else
        {
          v100 = v93[117];
          v101 = v93[116];
          v102 = sub_23DD42648();

          v30 = v93;
          if ((v102 & 1) == 0)
          {
            v239(v93[41], v93[42], v93[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v103 = v225;
            }

            else
            {
              v103 = sub_23DCF22E8(0, v225[2] + 1, 1, v225);
            }

            v105 = v103[2];
            v104 = v103[3];
            if (v105 >= v104 >> 1)
            {
              v103 = sub_23DCF22E8(v104 > 1, v105 + 1, 1, v103);
            }

            v106 = v93[41];
            v107 = v93[39];
            v103[2] = v105 + 1;
            v225 = v103;
            (*v219)(v103 + v221 + v105 * v236, v106, v107);
          }
        }
      }

      v75 = v246 + 1;
      (*v229)(v30[42], v30[39]);
    }

    while (v246 + 1 != v234);
    v110 = v30[117];

    v111 = v225;
  }

  else
  {
    v112 = v30[117];

    v111 = MEMORY[0x277D84F90];
  }

  v113 = v30[82];
  v114 = v30[81];
  v115 = v30[35];
  (*(v30[75] + 8))(v30[76], v30[74]);
  v116 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v113 + 56))(&v115[v116[8]], 1, 1, v114);
  *v115 = 0;
  *(v115 + 1) = v215;
  *(v115 + 2) = v213;
  *(v115 + 3) = 0;
  *(v115 + 4) = 0;
  *(v115 + 5) = v211;
  *(v115 + 6) = v209;
  *&v115[v116[9]] = v243;
  *&v115[v116[10]] = v111;
  (*(*(v116 - 1) + 56))(v115, 0, 1, v116);
  v117 = v30[107];
  v118 = v30;
  v119 = v30[106];
  v120 = v118[105];
  v121 = v118[104];
  v122 = v118[103];
  v123 = v118[102];
  v124 = v118[101];
  v125 = v118[100];
  v126 = v118[99];
  v196 = v118[98];
  v197 = v118[97];
  v198 = v118[96];
  v199 = v118[95];
  v200 = v118[94];
  v201 = v118[93];
  v202 = v118[92];
  v203 = v118[89];
  v204 = v118[86];
  v205 = v118[85];
  v206 = v118[84];
  v207 = v118[83];
  v208 = v118[80];
  v210 = v118[79];
  v212 = v118[78];
  v214 = v118[77];
  v216 = v118[76];
  v218 = v118[73];
  v220 = v118[72];
  v222 = v118[69];
  v224 = v118[68];
  v226 = v118[65];
  v228 = v118[64];
  v230 = v118[61];
  v232 = v118[60];
  v233 = v118[57];
  v235 = v118[56];
  v237 = v118[53];
  v240 = v118[52];
  v242 = v118[49];
  v244 = v118[48];
  v247 = v118[45];
  v250 = v118[42];
  v254 = v118[41];
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v127 = v118[1];

  return v127();
}

uint64_t sub_23DD088C8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 1016);
  v5 = *v1;

  v6 = v2[126];
  v7 = v2[122];
  v8 = v2[121];
  v9 = v2[72];
  v10 = v2[70];
  if (v0)
  {
    v12 = v3[59];
    v11 = v3[60];
    v13 = v3[58];

    (*(v12 + 8))(v11, v13);
    v8(v9, v10);
    v14 = v3[110];
    v15 = v3[109];
    v16 = sub_23DD0A494;
  }

  else
  {
    v8(v2[72], v2[70]);

    v14 = v3[110];
    v15 = v3[109];
    v16 = sub_23DD08AAC;
  }

  return MEMORY[0x2822009F8](v16, v15, v14);
}

uint64_t sub_23DD08AAC()
{
  v342 = v0;
  v1 = v0;
  v2 = *(v0 + 520);
  v5 = v0 + 504;
  v4 = *(v0 + 504);
  v3 = *(v5 + 8);
  v7 = *(v1 + 488);
  v6 = *(v1 + 496);
  (*(v4 + 56))(v7, 0, 1, v6);
  (*(v4 + 32))(v2, v7, v6);
  (*(v4 + 16))(v3, v2, v6);
  v8 = (*(v4 + 88))(v3, v6);
  v339 = v1;
  if (v8 == *MEMORY[0x277CE86C0])
  {
    v9 = *(v1 + 512);
    v10 = *(v1 + 456);
    v11 = *(v1 + 432);
    v12 = *(v1 + 440);
    v13 = *(v1 + 424);
    v14 = *(v1 + 400);
    v15 = *(v1 + 408);
    (*(*(v1 + 504) + 96))(v9, *(v1 + 496));
    (*(v12 + 32))(v10, v9, v11);
    sub_23DD415F8();
    v16 = (*(v15 + 88))(v13, v14);
    if (v16 == *MEMORY[0x277CE8740])
    {
      v17 = *(v1 + 904);
      (*(v1 + 896))(*(v1 + 840), *(v1 + 888), *(v1 + 720));
      v18 = sub_23DD42338();
      v19 = sub_23DD41638();
      if (os_log_type_enabled(v19, v18))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_23DCDB000, v19, v18, "AccountAddViewModel.validateEmailAddress(:) custom OAuth: unimplemented", v20, 2u);
        MEMORY[0x23EEFE6D0](v20, -1, -1);
      }

      v21 = v19;
      v22 = *(v1 + 1000);
      v23 = *(v1 + 912);
      v24 = *(v1 + 840);
      v25 = *(v1 + 728);
      v26 = *(v1 + 720);
      v27 = *(v1 + 520);
      v28 = *(v1 + 496);
      v29 = *(v1 + 504);
      v30 = *(v1 + 456);
      v31 = *(v1 + 440);
      v32 = *(v1 + 432);
      v323 = v27;
      v331 = v339[53];
      v33 = v339[51];
      v311 = v28;
      v317 = v339[50];

      v34 = v22;
      v23(v24, v26);
      v35 = 0xD000000000000019;
      v36 = 0x800000023DD4BC10;
      v37 = v32;
      v38 = v339;
      (*(v31 + 8))(v30, v37);
      (*(v29 + 8))(v323, v311);
      (*(v33 + 8))(v331, v317);
LABEL_6:
      v39 = v38[123];
LABEL_34:
      v38[131] = v34;
      v38[130] = v36;
      v38[129] = v39;
      v38[128] = v35;
      v147 = [objc_opt_self() defaultStore];
      v38[132] = v147;
      if (v147)
      {
        v148 = v147;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1F8, &qword_23DD44B90);
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_23DD43570;
        *(v149 + 32) = v35;
        *(v149 + 40) = v36;
        v150 = sub_23DD42258();
        v38[133] = v150;

        v38[2] = v38;
        v38[7] = v38 + 34;
        v38[3] = sub_23DD0AFAC;
        v151 = swift_continuation_init();
        v38[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB08, &unk_23DD45F38);
        v38[10] = MEMORY[0x277D85DD0];
        v38[11] = 1107296256;
        v38[12] = sub_23DD0C6A8;
        v38[13] = &block_descriptor_507;
        v38[14] = v151;
        [v148 visibleTopLevelAccountsWithAccountTypeIdentifiers:v150 completion:v38 + 10];
        v147 = v38 + 2;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x282200938](v147);
    }

    v74 = *(v1 + 904);
    v75 = *(v1 + 896);
    v76 = *(v1 + 888);
    if (v16 != *MEMORY[0x277CE8730] && v16 != *MEMORY[0x277CE8748] && v16 != *MEMORY[0x277CE8750] && v16 != *MEMORY[0x277CE8738])
    {
      if (v16 == *MEMORY[0x277CE8720])
      {
        v77 = *(v1 + 984);
        v78 = *(v1 + 832);
        v79 = *(v1 + 720);

        v75(v78, v76, v79);
        v80 = sub_23DD42338();
        v81 = sub_23DD41638();
        if (os_log_type_enabled(v81, v80))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_23DCDB000, v81, v80, "AccountAddViewModel.validateEmailAddress(:) oauth type exchange consumer", v82, 2u);
          MEMORY[0x23EEFE6D0](v82, -1, -1);
        }

        v280 = *(v1 + 1000);
        v83 = *(v1 + 912);
        v84 = *(v1 + 832);
        v85 = *(v1 + 728);
        v86 = v339[90];
        v334 = v339[65];
        v87 = v339[63];
        v88 = v339[62];
        v89 = v339[57];
        v90 = v339[55];
        v91 = v339[54];

        v38 = v339;
        v83(v84, v86);
        v92 = *MEMORY[0x277CB8C50];
        v35 = sub_23DD42178();
        v36 = v93;
        (*(v90 + 8))(v89, v91);
        (*(v87 + 8))(v334, v88);
        v34 = v280;

        v39 = MEMORY[0x277D84F90];
        goto LABEL_34;
      }

      v183 = *(v1 + 720);
      if (v16 == *MEMORY[0x277CE8728])
      {
        v75(*(v1 + 824), *(v1 + 888), v183);
        v184 = sub_23DD42338();
        v185 = sub_23DD41638();
        if (os_log_type_enabled(v185, v184))
        {
          v186 = swift_slowAlloc();
          *v186 = 0;
          _os_log_impl(&dword_23DCDB000, v185, v184, "AccountAddViewModel.validateEmailAddress(:) oauth type exchange enterprise", v186, 2u);
          MEMORY[0x23EEFE6D0](v186, -1, -1);
        }

        v282 = *(v1 + 1000);
        v187 = *(v1 + 912);
        v188 = *(v1 + 824);
        v189 = *(v1 + 728);
        v190 = v339[90];
        v336 = v339[65];
        v191 = v339[63];
        v192 = v339[62];
        v193 = v339[57];
        v194 = v339[55];
        v195 = v339[54];

        v38 = v339;
        v187(v188, v190);
        v35 = 0xD000000000000019;
        v36 = 0x800000023DD4BC10;
        (*(v194 + 8))(v193, v195);
        (*(v191 + 8))(v336, v192);
        v34 = v282;
      }

      else
      {
        v75(*(v1 + 808), *(v1 + 888), v183);
        v247 = sub_23DD42338();
        v248 = sub_23DD41638();
        if (os_log_type_enabled(v248, v247))
        {
          v249 = swift_slowAlloc();
          *v249 = 0;
          _os_log_impl(&dword_23DCDB000, v248, v247, "AccountAddViewModel.validateEmailAddress(:) unknown default", v249, 2u);
          MEMORY[0x23EEFE6D0](v249, -1, -1);
        }

        v284 = *(v1 + 1000);
        v250 = *(v1 + 912);
        v251 = *(v1 + 808);
        v252 = *(v1 + 728);
        v253 = v339[90];
        v254 = v339[63];
        v255 = v339[57];
        v256 = v339[55];
        v257 = v339[54];
        v330 = v339[65];
        v338 = v339[53];
        v258 = v339[51];
        v316 = v339[62];
        v322 = v339[50];

        v38 = v339;
        v250(v251, v253);
        v35 = 0xD000000000000019;
        v36 = 0x800000023DD4BC10;
        (*(v256 + 8))(v255, v257);
        v34 = v284;
        (*(v254 + 8))(v330, v316);
        (*(v258 + 8))(v338, v322);
      }

      goto LABEL_6;
    }

    v100 = *(v1 + 984);
    v101 = *(v1 + 816);
    v102 = *(v1 + 720);
    v104 = *(v1 + 448);
    v103 = *(v1 + 456);
    v105 = *(v1 + 440);
    v106 = v339[54];

    v75(v101, v76, v102);
    v107 = sub_23DD42338();
    (*(v105 + 16))(v104, v103, v106);
    v38 = v339;
    v108 = sub_23DD41638();
    v109 = os_log_type_enabled(v108, v107);
    v110 = v339[114];
    v111 = v339[102];
    v112 = v339[91];
    v113 = v339[90];
    v115 = v339[55];
    v114 = v339[56];
    v335 = v339[54];
    if (v109)
    {
      v319 = v339[102];
      v326 = v339[90];
      v117 = v339[51];
      v116 = v339[52];
      v118 = v339[50];
      v304 = v107;
      v119 = swift_slowAlloc();
      v300 = swift_slowAlloc();
      v341[0] = v300;
      *v119 = 136315138;
      v313 = v110;
      sub_23DD415F8();
      v120 = sub_23DD415D8();
      v122 = v121;
      (*(v117 + 8))(v116, v118);
      v339[32] = v120;
      v339[33] = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
      v123 = sub_23DD42188();
      v125 = v124;
      v126 = v114;
      v72 = *(v115 + 8);
      v72(v126, v335);
      v127 = sub_23DD2731C(v123, v125, v341);

      *(v119 + 4) = v127;
      _os_log_impl(&dword_23DCDB000, v108, v304, "AccountAddViewModel.validateEmailAddress(:) oauth type %s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v300);
      MEMORY[0x23EEFE6D0](v300, -1, -1);
      MEMORY[0x23EEFE6D0](v119, -1, -1);

      v313(v319, v326);
    }

    else
    {

      v145 = v114;
      v72 = *(v115 + 8);
      v72(v145, v335);
      v110(v111, v113);
    }

    v129 = v339[57];
    v130 = v339[54];
    v132 = v339[51];
    v131 = v339[52];
    v133 = v339[50];
    sub_23DD415F8();
    v134 = sub_23DD415D8();
  }

  else
  {
    v40 = *(v1 + 904);
    v41 = *(v1 + 896);
    v42 = *(v1 + 888);
    if (v8 != *MEMORY[0x277CE86B0])
    {
      v94 = *(v1 + 720);
      if (v8 == *MEMORY[0x277CE86B8])
      {
        v41(*(v1 + 792), *(v1 + 888), v94);
        v95 = sub_23DD42338();
        v96 = sub_23DD41638();
        if (os_log_type_enabled(v96, v95))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_23DCDB000, v96, v95, "AccountAddViewModel.validateEmailAddress(:) unknown type from resolver", v97, 2u);
          MEMORY[0x23EEFE6D0](v97, -1, -1);
        }

        v34 = *(v1 + 1000);
        v98 = *(v1 + 912);
        v99 = *(v1 + 792);
      }

      else
      {
        v41(*(v1 + 784), *(v1 + 888), v94);
        v136 = sub_23DD42338();
        v96 = sub_23DD41638();
        if (os_log_type_enabled(v96, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_23DCDB000, v96, v136, "AccountAddViewModel.validateEmailAddress(:) unknown default from resolver", v137, 2u);
          MEMORY[0x23EEFE6D0](v137, -1, -1);
        }

        v34 = *(v1 + 1000);
        v98 = *(v1 + 912);
        v99 = *(v1 + 784);
      }

      v138 = *(v1 + 728);
      v139 = *(v1 + 720);
      v140 = *(v1 + 520);
      v141 = *(v1 + 512);
      v142 = *(v1 + 504);
      v143 = v339[62];

      v98(v99, v139);
      v36 = 0x800000023DD4BC10;
      v144 = *(v142 + 8);
      v144(v140, v143);
      v144(v141, v143);
      v38 = v339;
      v39 = v339[123];
      v35 = 0xD000000000000019;
      goto LABEL_34;
    }

    v43 = *(v1 + 984);
    v44 = *(v1 + 800);
    v46 = *(v1 + 504);
    v45 = *(v1 + 512);
    v47 = *(v1 + 496);
    v48 = *(v1 + 392);
    v324 = *(v1 + 720);
    v332 = *(v1 + 384);
    v49 = *(v1 + 376);
    v50 = *(v1 + 368);

    (*(v46 + 96))(v45, v47);
    (*(v49 + 32))(v48, v45, v50);
    v41(v44, v42, v324);
    v51 = sub_23DD42338();
    v52 = v50;
    v38 = v339;
    (*(v49 + 16))(v332, v48, v52);
    v53 = sub_23DD41638();
    v54 = os_log_type_enabled(v53, v51);
    v55 = v339[114];
    v56 = v339[100];
    v57 = v339[91];
    v58 = v339[90];
    v60 = v339[47];
    v59 = v339[48];
    v333 = v339[46];
    if (v54)
    {
      v318 = v339[100];
      v325 = v339[90];
      v62 = v339[44];
      v61 = v339[45];
      v63 = v339[43];
      v303 = v51;
      v64 = swift_slowAlloc();
      v299 = swift_slowAlloc();
      v341[0] = v299;
      *v64 = 136315138;
      v312 = v55;
      sub_23DD414E8();
      v65 = sub_23DD414C8();
      v67 = v66;
      (*(v62 + 8))(v61, v63);
      v339[30] = v65;
      v339[31] = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
      v68 = sub_23DD42188();
      v70 = v69;
      v71 = v59;
      v72 = *(v60 + 8);
      v72(v71, v333);
      v73 = sub_23DD2731C(v68, v70, v341);

      *(v64 + 4) = v73;
      _os_log_impl(&dword_23DCDB000, v53, v303, "AccountAddViewModel.validateEmailAddress(:) known type: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v299);
      MEMORY[0x23EEFE6D0](v299, -1, -1);
      MEMORY[0x23EEFE6D0](v64, -1, -1);

      v312(v318, v325);
    }

    else
    {

      v128 = v59;
      v72 = *(v60 + 8);
      v72(v128, v333);
      v55(v56, v58);
    }

    v129 = v339[49];
    v131 = v339[45];
    v130 = v339[46];
    v133 = v339[43];
    v132 = v339[44];
    sub_23DD414E8();
    v134 = sub_23DD414C8();
  }

  v285 = v134;
  v36 = v135;
  (*(v132 + 8))(v131, v133);
  v72(v129, v130);
  v146 = v38[125];
  (*(v38[63] + 8))(v38[65], v38[62]);
  if (v36)
  {

    v39 = MEMORY[0x277D84F90];
    v34 = v146;
    v35 = v285;
    goto LABEL_34;
  }

  v152 = v38[108];

  v274 = v38[124];
  v153 = v38[117];
  v154 = v38[116];
  v155 = sub_23DD421E8();
  v156 = MEMORY[0x277D84F90];
  v281 = v146;
  if (v155 <= 0)
  {
    v320 = MEMORY[0x277D84F90];
    goto LABEL_67;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_99;
  }

LABEL_40:
  swift_beginAccess();
  v157 = qword_2814FD158;
  sub_23DCE6098();

  v158 = sub_23DD41418();

  v327 = *(v158 + 16);
  if (v327)
  {
    v159 = 0;
    v160 = v38[82];
    v305 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v314 = v158 + v305;
    v161 = (v160 + 8);
    v320 = MEMORY[0x277D84F90];
    v308 = v158;
    while (1)
    {
      if (v159 >= *(v158 + 16))
      {
        __break(1u);
LABEL_99:
        swift_once();
        goto LABEL_40;
      }

      v38 = v339;
      v162 = *(v160 + 72);
      v163 = *(v160 + 16);
      v163(v339[85], v314 + v162 * v159, v339[81]);
      v164 = sub_23DD413F8();
      v166 = v165;

      v167 = HIBYTE(v166) & 0xF;
      if ((v166 & 0x2000000000000000) == 0)
      {
        v167 = v164 & 0xFFFFFFFFFFFFLL;
      }

      if (!v167)
      {
        goto LABEL_51;
      }

      v168 = v339[117];
      v169 = v339[116];
      v170 = v339[85];
      sub_23DD413F8();
      LOBYTE(v168) = sub_23DD42218();

      if ((v168 & 1) == 0)
      {
        goto LABEL_51;
      }

      v171 = v339[117];
      v172 = v339[116];
      v173 = v339[85];
      if (sub_23DD413F8() == v172 && v174 == v171)
      {
        break;
      }

      v38 = v339;
      v175 = v339[117];
      v176 = v339[116];
      v177 = sub_23DD42648();

      v158 = v308;
      if (v177)
      {
        goto LABEL_51;
      }

      v163(v339[84], v339[85], v339[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v320 = sub_23DCF2310(0, *(v320 + 2) + 1, 1, v320);
      }

      v179 = *(v320 + 2);
      v178 = *(v320 + 3);
      v180 = v179 + 1;
      if (v179 >= v178 >> 1)
      {
        v320 = sub_23DCF2310(v178 > 1, v179 + 1, 1, v320);
      }

      v181 = v339[84];
      v182 = v339[81];
      (*v161)(v339[85], v182);
      *(v320 + 2) = v180;
      (*(v160 + 32))(&v320[v305 + v179 * v162], v181, v182);
      v158 = v308;
      if (v180 == 3)
      {
        goto LABEL_66;
      }

LABEL_52:
      if (v327 == ++v159)
      {
        goto LABEL_66;
      }
    }

    v38 = v339;
    v158 = v308;
LABEL_51:
    (*v161)(v38[85], v38[81]);
    goto LABEL_52;
  }

  v320 = MEMORY[0x277D84F90];
LABEL_66:

  v38 = v339;
  v156 = MEMORY[0x277D84F90];
LABEL_67:
  v301 = v156[2];
  v289 = v156;
  if (v301)
  {
    v196 = 0;
    v197 = v38[82];
    v198 = v38[40];
    v199 = *(v198 + 16);
    v198 += 16;
    v309 = v199;
    v278 = (*(v198 + 64) + 32) & ~*(v198 + 64);
    v297 = v156 + v278;
    v200 = (v197 + 8);
    v306 = *(v198 + 56);
    v287 = (v197 + 32);
    v291 = v197;
    v295 = (v197 + 56);
    v276 = (v198 + 16);
    v293 = (v198 - 8);
    do
    {
      v328 = v196;
      v309(v38[42], &v297[v196 * v306], v38[39]);
      v201 = *(v320 + 2);
      if (v201)
      {
        v202 = &v320[(*(v291 + 80) + 32) & ~*(v291 + 80)];
        v203 = *(v291 + 72);
        v204 = *(v291 + 16);
        while (1)
        {
          v205 = v38[69];
          v206 = v38[42];
          v204(v38[83], v202, v38[81]);
          v207 = sub_23DD413F8();
          v209 = v208;
          sub_23DD41508();
          if (v207 == sub_23DD421C8() && v209 == v210)
          {
            break;
          }

          v212 = sub_23DD42648();

          if (v212)
          {
            goto LABEL_90;
          }

          v38 = v339;
          (*v200)(v339[83], v339[81]);
          v202 += v203;
          if (!--v201)
          {
            goto LABEL_79;
          }
        }

LABEL_90:
        v38 = v339;
        v228 = v339[81];
        v229 = v339[77];
        (*v287)(v229, v339[83], v228);
        (*v295)(v229, 0, 1, v228);
        sub_23DCEFA38(v229, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_79:
        v213 = v38[117];
        v214 = v38[116];
        v215 = v38[77];
        v216 = v38[69];
        v217 = v38[42];
        (*v295)(v215, 1, 1, v38[81]);
        sub_23DCEFA38(v215, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v214 && v218 == v213)
        {
        }

        else
        {
          v220 = v38[117];
          v221 = v38[116];
          v222 = sub_23DD42648();

          if ((v222 & 1) == 0)
          {
            v309(v38[41], v38[42], v38[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v223 = v289;
            }

            else
            {
              v223 = sub_23DCF22E8(0, v289[2] + 1, 1, v289);
            }

            v225 = v223[2];
            v224 = v223[3];
            if (v225 >= v224 >> 1)
            {
              v223 = sub_23DCF22E8(v224 > 1, v225 + 1, 1, v223);
            }

            v226 = v38[41];
            v227 = v38[39];
            v223[2] = v225 + 1;
            v289 = v223;
            (*v276)(v223 + v278 + v225 * v306, v226, v227);
          }
        }
      }

      v196 = v328 + 1;
      (*v293)(v38[42], v38[39]);
    }

    while (v328 + 1 != v301);
  }

  v230 = v38[117];

  v231 = v38[82];
  v232 = v38[81];
  v233 = v38[35];
  (*(v38[75] + 8))(v38[76], v38[74]);
  v234 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v231 + 56))(&v233[v234[8]], 1, 1, v232);
  *v233 = 0;
  *(v233 + 1) = 0;
  *(v233 + 2) = 0;
  *(v233 + 3) = v285;
  *(v233 + 4) = 0;
  *(v233 + 5) = v274;
  *(v233 + 6) = v281;
  *&v233[v234[9]] = v320;
  *&v233[v234[10]] = v289;
  (*(*(v234 - 1) + 56))(v233, 0, 1, v234);
  v235 = v38[107];
  v236 = v38[106];
  v237 = v38[105];
  v238 = v38[104];
  v239 = v38[103];
  v240 = v38[102];
  v241 = v38[101];
  v242 = v38[100];
  v243 = v38;
  v244 = v38[99];
  v259 = v243[98];
  v260 = v243[97];
  v261 = v243[96];
  v262 = v243[95];
  v263 = v243[94];
  v264 = v243[93];
  v265 = v243[92];
  v266 = v243[89];
  v267 = v243[86];
  v268 = v243[85];
  v269 = v243[84];
  v270 = v243[83];
  v271 = v243[80];
  v272 = v243[79];
  v273 = v243[78];
  v275 = v243[77];
  v277 = v243[76];
  v279 = v243[73];
  v283 = v243[72];
  v286 = v243[69];
  v288 = v243[68];
  v290 = v243[65];
  v292 = v243[64];
  v294 = v243[61];
  v296 = v243[60];
  v298 = v243[57];
  v302 = v243[56];
  v307 = v243[53];
  v310 = v243[52];
  v315 = v243[49];
  v321 = v243[48];
  v329 = v243[45];
  v337 = v243[42];
  v340 = v243[41];
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v245 = v243[1];

  return v245();
}