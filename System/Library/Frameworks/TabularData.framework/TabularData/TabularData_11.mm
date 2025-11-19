uint64_t sub_21B2C57D8(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v69 = v3;
  *&v70 = v4;

  *(&v70 + 1) = sub_21B26117C(MEMORY[0x277D84F90]);
  sub_21B2FD884(0);
  v51 = v1;
  sub_21B2348E0(v51 + 32, v51 + 88);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_53:
    v50 = v69;
    *(&v59[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E798, &unk_21B352680);
    v60 = &off_282CAA128;
    *&v59[0] = v50;
    *(v59 + 8) = v70;
    sub_21B2339B4(v59, v51 + 88);
    return 1;
  }

  v6 = 0;
  v7 = a1 + 32;
  v54 = v4;
  v55 = v3;
  v52 = v7;
  v53 = v5;
  while (1)
  {
    v8 = *(v7 + 8 * v6);
    if (*(v8 + 16))
    {
      v9 = *(v7 + 8 * v6);

      v10 = sub_21B24B534(v3, v4);
      if (v11)
      {
        sub_21B2616C4(*(v8 + 56) + 32 * v10, v59);

        goto LABEL_10;
      }
    }

    memset(v59, 0, sizeof(v59));
LABEL_10:
    sub_21B2615FC(v59, &v67, &qword_27CD7E500, &qword_21B352660);
    if (!v68)
    {
      goto LABEL_13;
    }

    sub_21B2615FC(&v67, v66, &qword_27CD7E500, &qword_21B352660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
    sub_21B2735AC();
    if (!swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v66);
LABEL_13:
    sub_21B261664(&v67, &qword_27CD7E500, &qword_21B352660);
    v12 = *(&v70 + 1);
    result = swift_beginAccess();
    v14 = *(v12 + 16);
    if (!v14)
    {
      goto LABEL_62;
    }

    v15 = *(v14 + 8);
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_57;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v12 + 16);
      if (!result)
      {
        goto LABEL_64;
      }

      v17 = *result;
      if (*result < v16)
      {
        if (v17 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v18 = 2 * v17;
        if (v18 <= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        sub_21B2B4364(&v67, result, *(v12 + 24), v19);
        sub_21B2B0D10(*(v12 + 16), *(v12 + 24));
        *(v12 + 16) = v67;
      }
    }

    else
    {
      result = swift_beginAccess();
      v20 = *(v12 + 16);
      if (!v20)
      {
        goto LABEL_65;
      }

      v21 = *v20;
      if (*v20 < v16)
      {
        if (v21 + 0x4000000000000000 < 0)
        {
          goto LABEL_60;
        }

        if (2 * v21 <= v16)
        {
          v21 = v16;
        }

        else
        {
          v21 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C0, &qword_21B355BC0);
      v22 = swift_allocObject();
      sub_21B2B4360(&v67, v20, *(v12 + 24), v21);
      *(v22 + 16) = v67;

      *(&v70 + 1) = v22;
      v12 = v22;
    }

    result = swift_beginAccess();
    v23 = *(v12 + 16);
    if (!v23)
    {
      goto LABEL_63;
    }

    v24 = *(v23 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_58;
    }

    *(v23 + 16) = v26;
    v27 = *(v23 + 8);
    v25 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v25)
    {
      goto LABEL_59;
    }

    *(v23 + 8) = v28;
    sub_21B261664(v59, &qword_27CD7E500, &qword_21B352660);
LABEL_4:
    if (++v6 == v5)
    {
      goto LABEL_53;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E780, &qword_21B352670);
  if (swift_dynamicCast())
  {
    v56 = v6;
    v29 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E790, &qword_21B352678);
    result = sub_21B34B874();
    v30 = result;
    v31 = 0;
    v32 = v29 + 64;
    v33 = 1 << *(v29 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v29 + 64);
    v36 = (v33 + 63) >> 6;
    v57 = result + 64;
    v58 = v29;
    if (v35)
    {
      while (1)
      {
        v37 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
LABEL_45:
        v40 = v37 | (v31 << 6);
        v41 = (*(v58 + 48) + 16 * v40);
        v43 = *v41;
        v42 = v41[1];
        sub_21B2615FC(*(v58 + 56) + 32 * v40, v64, &qword_27CD7E500, &qword_21B352660);
        sub_21B2615FC(v64, v62, &qword_27CD7E500, &qword_21B352660);
        if (!v63)
        {
          break;
        }

        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_49;
        }

        result = sub_21B261664(v64, &qword_27CD7E500, &qword_21B352660);
        v44 = 0uLL;
        v45 = 0uLL;
LABEL_50:
        *(v57 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v46 = (v30[6] + 16 * v40);
        *v46 = v43;
        v46[1] = v42;
        v47 = (v30[7] + 32 * v40);
        *v47 = v44;
        v47[1] = v45;
        v48 = v30[2];
        v25 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v25)
        {
          goto LABEL_56;
        }

        v30[2] = v49;
        if (!v35)
        {
          goto LABEL_40;
        }
      }

      result = sub_21B261664(v62, &qword_27CD7E500, &qword_21B352660);
LABEL_49:
      v44 = v64[0];
      v45 = v64[1];
      goto LABEL_50;
    }

LABEL_40:
    v38 = v31;
    while (1)
    {
      v31 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v31 >= v36)
      {

        sub_21B2FE2F8(v30);
        sub_21B261664(v59, &qword_27CD7E500, &qword_21B352660);

        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        sub_21B261664(&v67, &qword_27CD7E500, &qword_21B352660);
        v4 = v54;
        v3 = v55;
        v7 = v52;
        v5 = v53;
        v6 = v56;
        goto LABEL_4;
      }

      v39 = *(v32 + 8 * v31);
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v35 = (v39 - 1) & v39;
        goto LABEL_45;
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
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    sub_21B261664(v59, &qword_27CD7E500, &qword_21B352660);

    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    sub_21B261664(&v67, &qword_27CD7E500, &qword_21B352660);
    return 0;
  }

  return result;
}

int64_t sub_21B2C5E38(unsigned __int8 **a1, uint64_t a2)
{
  v5 = sub_21B34AD44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  result = sub_21B23828C(a1);
  if ((result & 0x8000000000000000) == 0)
  {
    v8 = result;
    v28 = a2;
    v9 = sub_21B231F84(0, result, 0, MEMORY[0x277D84F90]);
    if (v8)
    {
      while (1)
      {
        result = sub_21B23828C(a1);
        if (result < 0)
        {
          break;
        }

        *a1 += result;
        sub_21B34AD34();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
        sub_21B28325C();
        v10 = sub_21B34ACB4();
        if (!v11)
        {
          v2 = 0x800000021B34C8D0;
          sub_21B239564();
          swift_allocError();
          *v27 = 0xD000000000000020;
          *(v27 + 8) = 0x800000021B34C8D0;
          *(v27 + 16) = 4;
          swift_willThrow();
          goto LABEL_18;
        }

        v12 = v10;
        v2 = v11;
        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        if (v14 >= v13 >> 1)
        {
          v9 = sub_21B231F84((v13 > 1), v14 + 1, 1, v9);
        }

        *(v9 + 2) = v14 + 1;
        v15 = &v9[16 * v14];
        *(v15 + 4) = v12;
        *(v15 + 5) = v2;
        if (!--v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    v16 = sub_21B270D34(a1, v28);
    if (v30)
    {
LABEL_18:
    }

    else
    {
      v17 = v16;
      v18 = *(v16 + 16);
      if (v18)
      {
        v29 = MEMORY[0x277D84F90];
        result = sub_21B231F10(0, v18, 0);
        v2 = v29;
        for (i = 32; ; i += 8)
        {
          v20 = *(v17 + i);
          if ((v20 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v20 >= *(v9 + 2))
          {
            goto LABEL_23;
          }

          v21 = &v9[16 * v20 + 32];
          v22 = *v21;
          v23 = *(v21 + 1);
          v25 = *(v29 + 16);
          v24 = *(v29 + 24);

          if (v25 >= v24 >> 1)
          {
            result = sub_21B231F10((v24 > 1), v25 + 1, 1);
          }

          *(v29 + 16) = v25 + 1;
          v26 = v29 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          if (!--v18)
          {

            return v2;
          }
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      return MEMORY[0x277D84F90];
    }

    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21B2C611C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v65 = a5;
  v52 = a2;
  v53 = a6;
  AssociatedConformanceWitness = a1;
  v54 = *(a3 - 8);
  v8 = *(v54 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v64 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = sub_21B34B474();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v51 - v16;
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26 = &v51 - v25;
  v69 = sub_21B34A974();
  v68 = sub_21B34A984();
  (*(v18 + 16))(v21, AssociatedConformanceWitness, a4);
  v27 = v52;
  sub_21B34AEC4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_21B34B4D4();
  v28 = v54;
  v61 = *(v54 + 48);
  v62 = v54 + 48;
  v29 = v61(v17, 1, a3);
  v30 = v53;
  v31 = 0;
  if (v29 == 1)
  {
LABEL_17:
    v48 = v30;
    (*(v23 + 8))(v26, AssociatedTypeWitness);
    result = sub_21B34A9F4();
    if (v27 < 1 || (v49 = __OFADD__(result, 1), ++result, !v49))
    {
      v50 = v68;
      *v48 = v31;
      v48[1] = v27;
      v48[2] = result;
      v48[3] = v50;
    }
  }

  else
  {
    v59 = v26;
    v60 = AssociatedTypeWitness;
    v51 = v23;
    v32 = 0;
    v33 = 0;
    v57 = *(v28 + 32);
    v58 = v28 + 32;
    v34 = (v28 + 16);
    v55 = (v28 + 8);
    for (result = v57(v12, v17, a3); ; result = v57(v12, v17, a3))
    {
      v56 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v37 = v69;
      v38 = *(v69 + 16);
      if (v38)
      {
        result = sub_21B2E9604(v12, a3, v65);
        if (v39)
        {
          v38 = *(*(v37 + 56) + 8 * result);
        }

        else
        {
          v38 = 0;
        }
      }

      v36 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_21;
      }

      v40 = *v34;
      (*v34)(v64, v12, a3);
      v66 = v36;
      v67 = 0;
      sub_21B34AA04();
      sub_21B34AA24();
      if (v33 >= v36)
      {
        if (v36 == v33)
        {
          v40(v64, v12, a3);
          sub_21B34B054();
          sub_21B34B024();
        }

        (*v55)(v12, a3);
        v36 = v33;
      }

      else
      {

        v41 = sub_21B2C6B14(a3, a3);
        v42 = *(v41 + 52);
        v43 = v54;
        v44 = *(v54 + 72);
        v45 = (*(v54 + 80) + *(v41 + 48)) & ~*(v54 + 80);
        swift_allocObject();
        v46 = sub_21B34AF94();
        v40(v47, v12, a3);
        sub_21B2D9190();
        (*(v43 + 8))(v12, a3);
        v68 = v46;
      }

      sub_21B34B4D4();
      ++v32;
      v33 = v36;
      if (v61(v17, 1, a3) == 1)
      {
        v27 = v52;
        v30 = v53;
        v26 = v59;
        AssociatedTypeWitness = v60;
        v23 = v51;
        v31 = v56;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CategoricalSummary.init(someCount:noneCount:uniqueCount:mode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t CategoricalSummary.totalCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t CategoricalSummary.mode.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t CategoricalSummary.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = sub_21B34AFD4();
  a1[3] = result;
  return result;
}

uint64_t CategoricalSummary.debugDescription.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34CFC0);
  v7 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v7);

  MEMORY[0x21CEED5E0](0x43656E6F6E20200ALL, 0xEE00203A746E756FLL);
  v8 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v8);

  MEMORY[0x21CEED5E0](0x7571696E7520200ALL, 0xEB00000000203A65);
  v9 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v9);

  MEMORY[0x21CEED5E0](0x3A65646F6D20200ALL, 0xE900000000000020);
  v10 = *(a1 + 16);
  sub_21B34B054();
  swift_getWitnessTable();
  sub_21B34B9D4();

  return 0;
}

uint64_t static CategoricalSummary.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v7 = a2[3];
  v8 = a1[3];
  v9 = *(a4 + 8);
  return sub_21B34B074();
}

uint64_t CategoricalSummary.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  MEMORY[0x21CEEE3B0](*v2);
  MEMORY[0x21CEEE3B0](v5);
  MEMORY[0x21CEEE3B0](v6);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  return MEMORY[0x2821FC380](a1, v7, v8, v9);
}

uint64_t CategoricalSummary.hashValue.getter(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v7 = *v1;
  v8 = v3;
  v9 = v4;
  sub_21B34BBC4();
  CategoricalSummary.hash(into:)(v6, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B2C6AC0(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  CategoricalSummary.hash(into:)(v4, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2C6B14(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDA8, &unk_21B354DC0);
  }

  else
  {

    return sub_21B34B954();
  }
}

uint64_t sub_21B2C6BA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B2C6BEC(uint64_t a1, int a2)
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

uint64_t sub_21B2C6C34(uint64_t result, int a2, int a3)
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

uint64_t sub_21B2C6C8C@<X0>(char *a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a3 + 16))
  {
    sub_21B233A74(a3 + 32, &v26);
    v12 = v29;
    v11 = v30;
    __swift_project_boxed_opaque_existential_1(&v26, v29);
    v13 = *(v11 + 8);
    v14 = *(v13 + 48);

    v15 = v14(v12, v13);
    result = sub_21B233960(&v26);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    if (v15)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v17 = 2;
  sub_21B2A6400(0, 0, 2);
  v15 = 0;
  if (v20)
  {
    v18 = 0;
  }

  else
  {
    v18 = v19;
  }

LABEL_9:
  sub_21B2A6400(0, v15, v17);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  sub_21B254074(0, v15, v17);

  sub_21B23A9F4(0, v15, v17);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = 0;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = v23;
  v24 = DataFrame.Rows.index(after:)(a2);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = 0;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = v23;
  sub_21B261664(&v26, &qword_27CD7E510, &unk_21B351F10);
  return sub_21B2A35DC(a1, v24, a3, a4, a5, a6);
}

uint64_t sub_21B2C6E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for FormattingOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v155 = v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = *(a2 + 16);
  if (!v154)
  {
    return 0;
  }

  v157 = a1;
  sub_21B233A74(a2 + 32, &v177);
  v13 = v180;
  v14 = v181;
  v15 = __swift_project_boxed_opaque_existential_1(&v177, v180);
  v16 = *(v14 + 8);
  v17 = *(v16 + 48);

  v18 = (v17)(v13, v16);
  sub_21B233960(&v177);
  if (v18 < 0)
  {
    goto LABEL_140;
  }

  v19 = 2 * (v18 == 0);
  sub_21B254074(0, v18, v19);

  sub_21B23A9F4(0, v18, v19);
  v16 = sub_21B2FB104(0, v18, v19);
  sub_21B23A9F4(0, v18, v19);
  v15 = v157;
  v20 = *(v157 + 16);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_141;
  }

  v21 = *(v16 + 16);
  if (v21 >= v20)
  {
    v21 = *(v157 + 16);
  }

  v22 = 2 * v21;
  if (v20)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 1;
  }

  v24 = v155;
  sub_21B2CC2D0(v16 + 32, 0, v23, v157, a2, v155);
  v152 = a2;
  v25 = sub_21B2CD000(v16, v16 + 32, 0, v23, v24, a2, a3, a4);
  v4 = v25;
  v26 = *(v25 + 2);
  v27 = v154 + *(v15 + 25);
  v151 = a3;
  v150 = a4;
  v149[2] = v16;
  v168 = v23;
  if (v26 >= v27)
  {
    v172 = (v25 + 16);
    v165 = 0;
    a4 = 0;
    v5 = 0;
    v163 = 0;
    v164 = 0;
    v166 = 0;
    a3 = 0;
    goto LABEL_36;
  }

  if (v26)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  v4 = sub_21B23A308(v4);
LABEL_13:
  v28 = *(v4 + 16);
  if (!v28)
  {
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v26 = v28 - 1;
  v29 = (v4 + 48 * v28);
  v166 = *(v29 - 2);
  v30 = *(v29 - 1);
  v163 = *v29;
  v5 = v29[1];
  a4 = v29[2];
  v31 = v29[3];
  *(v4 + 16) = v26;
  v165 = v31;
  a3 = v31 + 2;
  v164 = v30;
  v172 = (v4 + 16);
  if (__OFADD__(v31, 2))
  {
    goto LABEL_148;
  }

  if (!v26)
  {
    v174 = 0;
    v32 = MEMORY[0x277D84F90];
    v17 = 1;
    goto LABEL_17;
  }

LABEL_36:
  v177 = MEMORY[0x277D84F90];
  sub_21B254034(0, v26, 0);
  v46 = 72;
  v32 = v177;
  v174 = v26;
  v17 = v26;
  v15 = v157;
  do
  {
    v47 = *(v4 + v46);
    v26 = v47 + 2;
    if (__OFADD__(v47, 2))
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v177 = v32;
    a2 = *(v32 + 16);
    v48 = *(v32 + 24);
    v16 = a2 + 1;
    if (a2 >= v48 >> 1)
    {
      sub_21B254034((v48 > 1), a2 + 1, 1);
      v15 = v157;
      v32 = v177;
    }

    *(v32 + 16) = v16;
    *(v32 + 8 * a2 + 32) = v26;
    v46 += 48;
    --v17;
  }

  while (v17);
LABEL_17:
  v16 = &unk_282CA8FB0;
  v153 = v32;
  v156 = a3;
  v15 = sub_21B340E7C(&unk_282CA8FB0, v32, 9278946, 0xA300000000000000, a3);
  v23 = v33;
  swift_arrayDestroy();
  v176[0] = v15;
  v176[1] = v23;
  v34 = sub_21B34ADA4();
  v149[0] = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
    goto LABEL_142;
  }

  a2 = MEMORY[0x277D84F90];
  v162 = v4;
  v161 = a4;
  v160 = v5;
  if (v17)
  {
LABEL_42:
    v17 = v164;
    if (!v164)
    {
      goto LABEL_50;
    }

    v15 = v166;
    v49 = sub_21B2A0B58();
    v16 = v17;
    if (v165 < v49)
    {
LABEL_46:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_47;
      }

      goto LABEL_144;
    }

    if (!__OFSUB__(v165, v49))
    {
      v50 = sub_21B34AE74();
      v52 = v51;
      v177 = v166;
      v178 = v17;

      MEMORY[0x21CEED5E0](v50, v52);

      v15 = v177;
      v16 = v178;
      goto LABEL_46;
    }

LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v175 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v174, 0);
  v23 = 0;
  a2 = v175;
  v173 = v4 + 32;
LABEL_20:
  v4 = a2;
  v35 = v173 + 48 * v23;
  v5 = *v35;
  v16 = *(v35 + 8);
  v17 = *(v35 + 24);
  a4 = *(v35 + 32);
  a3 = *(v35 + 40);
  v36 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v36 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v177 = v5;
  v178 = v16;
  v179 = 0;
  v180 = v36;
  swift_bridgeObjectRetain_n();

  v26 = 0;
  do
  {
    v15 = &v177;
    v37 = sub_21B34AE14();
    if (!v38)
    {

      if (a3 >= v26)
      {
        if (__OFSUB__(a3, v26))
        {
          goto LABEL_136;
        }

        v42 = sub_21B34AE74();
        a3 = v43;
        v177 = v5;
        v178 = v16;

        MEMORY[0x21CEED5E0](v42, a3);

        v5 = v177;
        v16 = v178;
      }

      else
      {
      }

      a2 = v4;
      v175 = v4;
      v26 = *(v4 + 16);
      v44 = *(v4 + 24);
      if (v26 >= v44 >> 1)
      {
        sub_21B231F10((v44 > 1), v26 + 1, 1);
        a2 = v175;
      }

      ++v23;
      *(a2 + 16) = v26 + 1;
      v45 = a2 + 16 * v26;
      *(v45 + 32) = v5;
      *(v45 + 40) = v16;
      if (v23 == v174)
      {
        v4 = v162;
        a4 = v161;
        v5 = v160;
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    v39 = v38;
    a2 = sub_21B2A0BE0(v37, v38);

    v41 = __OFADD__(v26, a2);
    v26 += a2;
  }

  while (!v41);
  __break(1u);
LABEL_67:
  if (v41)
  {
LABEL_156:
    __break(1u);
    return result;
  }

  v69 = sub_21B34AE74();
  v71 = v70;
  v177 = v39;
  v178 = v5;

  MEMORY[0x21CEED5E0](v69, v71);

  v16 = v177;
  v23 = v178;
LABEL_69:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_153:
    v26 = sub_21B231F84(0, *(v26 + 16) + 1, 1, v26);
  }

  v73 = *(v26 + 16);
  v72 = *(v26 + 24);
  if (v73 >= v72 >> 1)
  {
    v26 = sub_21B231F84((v72 > 1), v73 + 1, 1, v26);
  }

  *(v26 + 16) = v73 + 1;
  v74 = v26 + 16 * v73;
  *(v74 + 32) = v16;
  *(v74 + 40) = v23;
  v17 = v164;
LABEL_73:
  v177 = v26;
  v75 = sub_21B34AB74();
  v77 = v76;

  v177 = 32;
  v178 = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v75, v77);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v78 = v177;
  v79 = v178;
  v177 = 8623330;
  v178 = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v78, v79);

  MEMORY[0x21CEED5E0](a2, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v177, v178);

  v62 = v156;
  while (1)
  {
    v80 = sub_21B340E7C(&unk_282CA9010, v153, 9278946, 0xA300000000000000, v62);
    v82 = v81;
    swift_arrayDestroy();
    v15 = v176;
    MEMORY[0x21CEED5E0](v80, v82);

    v171 = (v168 >> 1);
    if (v168 != 1)
    {
      v16 = 0;
      v158 = a4 + 32;
      v92 = *v172;
      v93 = 8819938;
      if (!v156)
      {
        v93 = 8557794;
      }

      v167 = v93;
      v168 = 8557794;
      v94 = v171;
      v159 = (v4 + 72);
      v173 = v92;
      while (v16 < v94)
      {
        if (__OFADD__(v16, 1))
        {
          goto LABEL_134;
        }

        v172 = (v16 + 1);
        if (v92)
        {
          v175 = MEMORY[0x277D84F90];
          sub_21B231F10(0, v92, 0);
          v15 = v175;
          v5 = v159;
          v17 = v92;
          v174 = v16;
          do
          {
            a4 = *(v5 - 8);
            if (v16 >= *(a4 + 16))
            {
              __break(1u);
              goto LABEL_118;
            }

            a2 = *(v5 - 32);
            a3 = *(v5 - 16);
            v101 = *v5;
            v102 = a4 + 16 * v16;
            v4 = *(v102 + 32);
            v16 = *(v102 + 40);

            v103 = sub_21B2A0B58();
            if (v101 >= v103)
            {
              if (__OFSUB__(v101, v103))
              {
                __break(1u);
                goto LABEL_132;
              }

              v104 = sub_21B34AE74();
              v106 = v105;
              v177 = v4;
              v178 = v16;

              v107 = v104;
              v92 = v173;
              MEMORY[0x21CEED5E0](v107, v106);

              v4 = v177;
              v16 = v178;
            }

            else
            {
            }

            v175 = v15;
            v109 = *(v15 + 16);
            v108 = *(v15 + 24);
            a2 = v109 + 1;
            if (v109 >= v108 >> 1)
            {
              sub_21B231F10((v108 > 1), v109 + 1, 1);
              v15 = v175;
            }

            v5 += 48;
            *(v15 + 16) = a2;
            v110 = v15 + 16 * v109;
            *(v110 + 32) = v4;
            *(v110 + 40) = v16;
            --v17;
            v16 = v174;
          }

          while (v17);
          v4 = v162;
          a4 = v161;
          v5 = v160;
          v17 = v164;
          if (v164)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v15 = MEMORY[0x277D84F90];
          if (v17)
          {
LABEL_107:
            if (v16 >= *(a4 + 16))
            {
              goto LABEL_135;
            }

            a3 = v15;
            v111 = (v158 + 16 * v16);
            v15 = *v111;
            v16 = v111[1];
            v112 = v165;
            sub_21B2CF988(v166, v17);

            v113 = sub_21B2A0B58();
            if (v112 >= v113)
            {
              if (__OFSUB__(v112, v113))
              {
                goto LABEL_139;
              }

              v114 = sub_21B34AE74();
              v116 = v115;
              v177 = v15;
              v178 = v16;

              MEMORY[0x21CEED5E0](v114, v116);
              v15 = v177;
              v117 = v178;
              v92 = v173;

              v16 = v117;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a3 = sub_21B231F84(0, *(a3 + 16) + 1, 1, a3);
            }

            v119 = *(a3 + 16);
            v118 = *(a3 + 24);
            if (v119 >= v118 >> 1)
            {
              a3 = sub_21B231F84((v118 > 1), v119 + 1, 1, a3);
            }

            *(a3 + 16) = v119 + 1;
            v95 = a3 + 16 * v119;
            *(v95 + 32) = v15;
            *(v95 + 40) = v16;
            v15 = a3;
          }
        }

        v177 = v15;
        a2 = v15;
        v96 = sub_21B34AB74();
        v98 = v97;

        v177 = 32;
        v178 = 0xE100000000000000;
        MEMORY[0x21CEED5E0](v96, v98);

        MEMORY[0x21CEED5E0](32, 0xE100000000000000);

        v99 = v177;
        v100 = v178;
        v177 = v168;
        v178 = 0xA300000000000000;
        MEMORY[0x21CEED5E0](v99, v100);

        MEMORY[0x21CEED5E0](v167, 0xA300000000000000);

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        v15 = v176;
        MEMORY[0x21CEED5E0](v177, v178);

        v94 = v171;
        v16 = v172;
        if (v172 == v171)
        {
          goto LABEL_75;
        }
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

LABEL_75:
    sub_21B2CF938(v166, v17);

    a2 = v152;
    sub_21B233A74(v152 + 32, &v177);
    v83 = v180;
    v84 = v181;
    v15 = __swift_project_boxed_opaque_existential_1(&v177, v180);
    v16 = *(v84 + 8);
    v23 = v16 + 48;
    v17 = *(v16 + 48);

    a4 = v150;

    v26 = (v17)(v83, v16);
    sub_21B233960(&v177);
    if ((v26 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_143:
    __break(1u);
LABEL_144:
    a2 = sub_21B231F84(0, *(a2 + 16) + 1, 1, a2);
LABEL_47:
    v54 = *(a2 + 16);
    v53 = *(a2 + 24);
    if (v54 >= v53 >> 1)
    {
      a2 = sub_21B231F84((v53 > 1), v54 + 1, 1, a2);
    }

    *(a2 + 16) = v54 + 1;
    v55 = a2 + 16 * v54;
    *(v55 + 32) = v15;
    *(v55 + 40) = v16;
LABEL_50:
    a3 = 0x208394E220;
    v177 = a2;

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    v169 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68);
    v170 = v56;
    v57 = sub_21B34AB74();
    v59 = v58;
    v149[1] = a2;

    v177 = 32;
    v178 = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v57, v59);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v60 = v177;
    v61 = v178;
    v62 = v156;
    if (v156)
    {
      a2 = 8885474;
    }

    else
    {
      a2 = 8623330;
    }

    v177 = 8623330;
    v178 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v60, v61);

    MEMORY[0x21CEED5E0](a2, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v177, v178);

    if (*(v157 + 24) == 1)
    {
      v17 = *v172;
      v26 = MEMORY[0x277D84F90];
      if (*v172)
      {
        v174 = a2;
        v175 = MEMORY[0x277D84F90];
        sub_21B231F10(0, v17, 0);
        v26 = v175;
        v5 = v4 + 72;
        do
        {
          a2 = *(v5 - 32);
          a4 = *(v5 - 24);
          v16 = *(v5 - 16);
          a3 = *(v5 - 8);
          v15 = *v5;
          swift_bridgeObjectRetain_n();

          v63 = sub_21B2A0B58();
          if (v15 >= v63)
          {
            if (__OFSUB__(v15, v63))
            {
              goto LABEL_138;
            }

            v4 = sub_21B34AE74();
            v65 = v64;
            v177 = a4;
            v178 = v16;

            MEMORY[0x21CEED5E0](v4, v65);

            swift_bridgeObjectRelease_n();

            a4 = v177;
            v16 = v178;
          }

          else
          {
          }

          v175 = v26;
          v67 = *(v26 + 16);
          v66 = *(v26 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_21B231F10((v66 > 1), v67 + 1, 1);
            v26 = v175;
          }

          v5 += 48;
          *(v26 + 16) = v67 + 1;
          v68 = v26 + 16 * v67;
          *(v68 + 32) = a4;
          *(v68 + 40) = v16;
          --v17;
        }

        while (v17);
        v4 = v162;
        a4 = v161;
        v5 = v160;
        a2 = v174;
      }

      v39 = v163;
      v17 = v164;
      if (!v164)
      {
        goto LABEL_73;
      }

      result = sub_21B2A0B58();
      v41 = __OFSUB__(v165, result);
      if (v165 >= result)
      {
        goto LABEL_67;
      }

      v16 = v39;
      v23 = v5;
      goto LABEL_69;
    }
  }

  v85 = 2 * (v26 == 0);
  v16 = sub_21B2FB1D4(0, v26, v85);

  sub_21B23A9F4(0, v26, v85);
  if (v171 >= v16)
  {
    v120 = v157;
    v121 = sub_21B340E7C(&unk_282CA90D0, v153, 9213410, 0xA300000000000000, v156);
    v123 = v122;

    swift_arrayDestroy();
    goto LABEL_126;
  }

  a3 = v149[0] - 2;
  if (__OFSUB__(v149[0], 2))
  {
    goto LABEL_149;
  }

  v17 = v149[0] - 4;
  if (__OFSUB__(a3, 2))
  {
    goto LABEL_150;
  }

  if (v149[0] == 4)
  {
    v86 = 0;
    v91 = 0xE000000000000000;
    goto LABEL_119;
  }

  v86 = 3026478;
  if (v17 >= 1)
  {
    a2 = 0;
    v15 = 15;
    while (1)
    {
      v87 = sub_21B34AE94();
      v16 = v88;
      v89 = sub_21B2A0BE0(v87, v88);

      v41 = __OFADD__(a2, v89);
      a2 += v89;
      if (v41)
      {
        break;
      }

      v90 = sub_21B34ADB4();
      v15 = v90;
      if (v90 >> 16 > 2 || a2 >= v17)
      {
        if ((v90 & 0xFFFFFFFFFFFFC000) != 0x30000)
        {
          goto LABEL_118;
        }

        v91 = 0xE300000000000000;
        goto LABEL_119;
      }
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_118:
  sub_21B34ADC4();
  v124 = sub_21B34AEB4();
  v125 = MEMORY[0x21CEED540](v124);
  v127 = v126;

  v177 = v125;
  v178 = v127;

  MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

  v86 = v177;
  v91 = v178;
LABEL_119:
  result = sub_21B2A0B58();
  v128 = v17 - result;
  if (v17 >= result)
  {
    if (!__OFSUB__(v17, result))
    {
      v129 = sub_21B34AE74();
      v131 = v130;
      v177 = v86;
      v178 = v91;

      MEMORY[0x21CEED5E0](v129, v131);

      v86 = v177;
      v91 = v178;
      goto LABEL_122;
    }

    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

LABEL_122:
  v177 = 32;
  v178 = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v86, v91, v128);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v133 = v177;
  v132 = v178;
  v4 = v153;
  v134 = sub_21B340E7C(&unk_282CA9070, v153, 9278946, 0xA300000000000000, v156);
  v136 = v135;

  swift_arrayDestroy();
  MEMORY[0x21CEED5E0](v134, v136);

  result = sub_21B2A0B58();
  v137 = a3 - result;
  if (a3 >= result)
  {
    if (__OFSUB__(a3, result))
    {
      goto LABEL_155;
    }

    v138 = sub_21B34AE74();
    v140 = v139;
    v177 = v133;
    v178 = v132;

    MEMORY[0x21CEED5E0](v138, v140);

    v133 = v177;
    v132 = v178;
  }

  v177 = 8885474;
  v178 = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v133, v132, v137);

  MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v177, v178);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B351EA0;
  *(inited + 32) = a3;
  v120 = v157;
  v121 = sub_21B33F0FC(inited);
  v123 = v142;
  swift_setDeallocating();
LABEL_126:
  MEMORY[0x21CEED5E0](v121, v123);

  a2 = v152;
  if (*(v120 + 26) == 1)
  {
    sub_21B233A74(v152 + 32, &v177);
    v143 = v180;
    v144 = v181;
    __swift_project_boxed_opaque_existential_1(&v177, v180);
    v16 = *(v144 + 8);
    v23 = v16 + 48;
    v145 = *(v16 + 48);

    a3 = v151;

    a4 = v150;

    v26 = v145(v143, v16);
    sub_21B233960(&v177);
    if (v26 < 0)
    {
      goto LABEL_151;
    }

    v146 = 2 * (v26 == 0);
    v147 = sub_21B2FB1D4(0, v26, v146);

    sub_21B23A9F4(0, v26, v146);
    v177 = sub_21B2CEA58(v147, v154);
    v178 = v148;

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v177, v178);
    swift_unknownObjectRelease();

    sub_21B2B42B0(v155);
  }

  else
  {
    sub_21B2B42B0(v155);
    swift_unknownObjectRelease();
  }

  return v176[0];
}

uint64_t sub_21B2C8600(uint64_t a1)
{
  v4 = type metadata accessor for FormattingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v169 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = *v1;
  v193 = *(v1 + 16);
  v7 = *(v192 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(&v192 + 1);
  sub_21B2A62E0(&v192, &v188);
  sub_21B254074(v8, v9, v10);
  sub_21B2A62E0(&v192, &v188);
  sub_21B254074(v8, v9, v10);
  sub_21B254074(v8, v9, v10);

  sub_21B23A9F4(v8, v9, v10);
  v12 = sub_21B2FB104(v8, v9, v10);
  v166 = v8;
  v165 = v9;
  v164 = v10;
  sub_21B23A9F4(v8, v9, v10);
  v13 = *(a1 + 16);
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_140;
  }

  v14 = *(v12 + 16);
  if (v14 >= v13)
  {
    v14 = *(a1 + 16);
  }

  v15 = 2 * v14;
  if (v13)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = v169;
  sub_21B2CC710(v12 + 32, 0, v16, a1, v169);
  v162 = v12;
  v163 = v1;
  v18 = sub_21B2CD910(v12, v12 + 32, 0, v16, v17);
  v19 = v18;
  v20 = *(v18 + 2);
  v21 = v7 + *(a1 + 25);
  v176 = a1;
  v181 = v16;
  if (v20 >= v21)
  {
    v184 = (v18 + 16);
    v177 = 0;
    v179 = 0;
    v174 = 0;
    v175 = 0;
    v185 = 0;
    v178 = 0;
    v29 = 0;
    goto LABEL_17;
  }

  if (v20)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  v19 = sub_21B23A308(v19);
LABEL_12:
  v22 = *(v19 + 2);
  if (!v22)
  {
    __break(1u);
    goto LABEL_146;
  }

  v20 = (v22 - 1);
  v23 = &v19[48 * v22];
  v178 = *(v23 - 2);
  v24 = *v23;
  v185 = *(v23 - 1);
  v174 = *(v23 + 1);
  v26 = *(v23 + 2);
  v25 = *(v23 + 3);
  *(v19 + 2) = v20;
  v177 = v25;
  v29 = v25 + 2;
  v175 = v24;
  v184 = (v19 + 16);
  v179 = v26;
  if (__OFADD__(v25, 2))
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (!v20)
  {
    v27 = MEMORY[0x277D84F90];
    v11 = 1;
    goto LABEL_23;
  }

LABEL_17:
  *&v188 = MEMORY[0x277D84F90];
  v1 = &v188;
  sub_21B254034(0, v20, 0);
  v30 = 72;
  v27 = v188;
  a1 = v20;
  v11 = v20;
  do
  {
    v31 = *&v19[v30];
    v32 = v31 + 2;
    if (__OFADD__(v31, 2))
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    *&v188 = v27;
    v34 = *(v27 + 16);
    v33 = *(v27 + 24);
    v12 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v1 = &v188;
      sub_21B254034((v33 > 1), v34 + 1, 1);
      v27 = v188;
    }

    *(v27 + 16) = v12;
    *(v27 + 8 * v34 + 32) = v32;
    v30 += 48;
    --v11;
  }

  while (v11);
  v20 = a1;
  a1 = v176;
LABEL_23:
  v12 = &unk_282CA8E30;
  v168 = v27;
  v170 = v29;
  v1 = sub_21B340E7C(&unk_282CA8E30, v27, 9278946, 0xA300000000000000, v29);
  v7 = v35;
  swift_arrayDestroy();
  v191[0] = v1;
  v191[1] = v7;
  v36 = sub_21B34ADA4();
  if (__OFSUB__(v36, 1))
  {
    goto LABEL_141;
  }

  v160 = v36 - 1;
  v37 = MEMORY[0x277D84F90];
  v167 = v19;
  if (v11)
  {
LABEL_41:
    if (!v185)
    {
      v2 = v174;
      goto LABEL_51;
    }

    v11 = v37;
    v12 = v185;

    v2 = v174;

    v1 = v178;
    v52 = sub_21B2A0B58();
    if (v177 < v52)
    {
LABEL_45:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v37 = v11;
        goto LABEL_47;
      }

      goto LABEL_142;
    }

    if (!__OFSUB__(v177, v52))
    {
      v53 = sub_21B34AE74();
      v55 = v54;
      *&v188 = v178;
      *(&v188 + 1) = v185;

      MEMORY[0x21CEED5E0](v53, v55);

      v12 = *(&v188 + 1);
      v1 = v188;
      goto LABEL_45;
    }

LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v190 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v20, 0);
  v7 = 0;
  v37 = v190;
  v186 = v20;
  v187 = v19 + 32;
LABEL_26:
  a1 = v37;
  v38 = &v187[48 * v7];
  v2 = *v38;
  v12 = *(v38 + 1);
  v39 = *(v38 + 3);
  v40 = *(v38 + 4);
  v41 = *(v38 + 5);
  v42 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v42 = v2 & 0xFFFFFFFFFFFFLL;
  }

  *&v188 = v2;
  *(&v188 + 1) = v12;
  *v189 = 0;
  *&v189[8] = v42;
  swift_bridgeObjectRetain_n();

  v20 = 0;
  do
  {
    v1 = &v188;
    v43 = sub_21B34AE14();
    if (!v44)
    {

      if (v41 >= v20)
      {
        if (__OFSUB__(v41, v20))
        {
          goto LABEL_136;
        }

        v46 = sub_21B34AE74();
        v48 = v47;
        *&v188 = v2;
        *(&v188 + 1) = v12;

        MEMORY[0x21CEED5E0](v46, v48);

        v12 = *(&v188 + 1);
        v2 = v188;
      }

      else
      {
      }

      v37 = a1;
      v190 = a1;
      v50 = *(a1 + 16);
      v49 = *(a1 + 24);
      v11 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        sub_21B231F10((v49 > 1), v50 + 1, 1);
        v37 = v190;
      }

      ++v7;
      *(v37 + 2) = v11;
      v51 = &v37[16 * v50];
      *(v51 + 4) = v2;
      *(v51 + 5) = v12;
      v20 = v186;
      if (v7 == v186)
      {
        a1 = v176;
        goto LABEL_41;
      }

      goto LABEL_26;
    }

    v11 = sub_21B2A0BE0(v43, v44);

    v45 = __OFADD__(v20, v11);
    v20 += v11;
  }

  while (!v45);
  __break(1u);
LABEL_65:
  v11 = v179;
  while (1)
  {
    v76 = v175;
    v179 = v11;
    if (!v185)
    {
      goto LABEL_75;
    }

    result = sub_21B2A0B58();
    if (v177 >= result)
    {
      break;
    }

    v12 = v76;
    v7 = v2;
LABEL_71:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_150:
      v20 = sub_21B231F84(0, *(v20 + 2) + 1, 1, v20);
    }

    v11 = *(v20 + 2);
    v80 = *(v20 + 3);
    if (v11 >= v80 >> 1)
    {
      v20 = sub_21B231F84((v80 > 1), v11 + 1, 1, v20);
    }

    *(v20 + 2) = v11 + 1;
    v81 = &v20[16 * v11];
    *(v81 + 4) = v12;
    *(v81 + 5) = v7;
LABEL_75:
    *&v188 = v20;
    v82 = sub_21B34AB74();
    v84 = v83;

    *&v188 = 32;
    *(&v188 + 1) = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v82, v84);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v85 = v188;
    *&v188 = 8623330;
    *(&v188 + 1) = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v85, *(&v85 + 1));

    MEMORY[0x21CEED5E0](v187, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v188, *(&v188 + 1));

    v66 = v170;
    do
    {
      v86 = sub_21B340E7C(&unk_282CA8E90, v168, 9278946, 0xA300000000000000, v66);
      v88 = v87;
      swift_arrayDestroy();
      v1 = v191;
      MEMORY[0x21CEED5E0](v86, v88);

      v89 = (v181 >> 1);
      v90 = v179;
      if (v181 == 1)
      {
LABEL_77:
        sub_21B2CF938(v178, v185);

        v20 = v192;
        v12 = v193;
        v91 = v166;
        v92 = v89;
        v93 = v165;
        v94 = v164;
        v7 = sub_21B2FB1D4(v166, v165, v164);

        sub_21B23A9F4(v91, v93, v94);
        if (v92 >= v7)
        {
          v132 = sub_21B340E7C(&unk_282CA8F50, v168, 9213410, 0xA300000000000000, v170);
          v134 = v133;

          swift_arrayDestroy();
LABEL_127:
          MEMORY[0x21CEED5E0](v132, v134);

          v154 = v163;
          if (*(a1 + 26) == 1)
          {
            v155 = sub_21B2FB1D4(v166, v165, v164);
            v156 = v154[1];
            v188 = *v154;
            *v189 = v156;
            *&v189[9] = *(v154 + 25);
            v157 = *(DataFrame.Slice.columns.getter() + 16);

            *&v188 = sub_21B2CEA58(v155, v157);
            *(&v188 + 1) = v158;

            MEMORY[0x21CEED5E0](10, 0xE100000000000000);

            MEMORY[0x21CEED5E0](v188, *(&v188 + 1));
            swift_unknownObjectRelease();

            sub_21B2B42B0(v169);
          }

          else
          {
            sub_21B2B42B0(v169);
            swift_unknownObjectRelease();
          }

          return v191[0];
        }

        v95 = v160 - 2;
        if (__OFSUB__(v160, 2))
        {
          goto LABEL_147;
        }

        v11 = v160 - 4;
        if (__OFSUB__(v95, 2))
        {
          goto LABEL_148;
        }

        if (v160 == 4)
        {
          v96 = 0;
          v102 = 0xE000000000000000;
          goto LABEL_120;
        }

        v96 = 3026478;
        if (v11 < 1)
        {
LABEL_119:
          sub_21B34ADC4();
          v135 = sub_21B34AEB4();
          v136 = MEMORY[0x21CEED540](v135);
          v138 = v137;

          *&v188 = v136;
          *(&v188 + 1) = v138;

          MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

          v102 = *(&v188 + 1);
          v96 = v188;
LABEL_120:
          result = sub_21B2A0B58();
          v139 = v11 - result;
          if (v11 >= result)
          {
            if (!__OFSUB__(v11, result))
            {
              v140 = sub_21B34AE74();
              v142 = v141;
              *&v188 = v96;
              *(&v188 + 1) = v102;

              MEMORY[0x21CEED5E0](v140, v142);

              v102 = *(&v188 + 1);
              v96 = v188;
              goto LABEL_123;
            }

            __break(1u);
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

LABEL_123:
          *&v188 = 32;
          *(&v188 + 1) = 0xE100000000000000;
          MEMORY[0x21CEED5E0](v96, v102, v139);

          MEMORY[0x21CEED5E0](32, 0xE100000000000000);

          v143 = *(&v188 + 1);
          v144 = v188;
          v145 = sub_21B340E7C(&unk_282CA8EF0, v168, 9278946, 0xA300000000000000, v170);
          v147 = v146;

          swift_arrayDestroy();
          MEMORY[0x21CEED5E0](v145, v147);

          result = sub_21B2A0B58();
          v148 = v95 - result;
          if (v95 >= result)
          {
            if (__OFSUB__(v95, result))
            {
              goto LABEL_152;
            }

            v149 = sub_21B34AE74();
            v151 = v150;
            v188 = __PAIR128__(v143, v144);

            MEMORY[0x21CEED5E0](v149, v151);

            v143 = *(&v188 + 1);
            v144 = v188;
          }

          *&v188 = 8885474;
          *(&v188 + 1) = 0xA300000000000000;
          MEMORY[0x21CEED5E0](v144, v143, v148);

          MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

          MEMORY[0x21CEED5E0](10, 0xE100000000000000);

          MEMORY[0x21CEED5E0](v188, *(&v188 + 1));

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21B351EA0;
          *(inited + 32) = v95;
          v132 = sub_21B33F0FC(inited);
          v134 = v153;
          swift_setDeallocating();
          goto LABEL_127;
        }

        v97 = 0;
        v1 = 15;
        while (1)
        {
          v98 = sub_21B34AE94();
          v12 = v99;
          v100 = sub_21B2A0BE0(v98, v99);

          v45 = __OFADD__(v97, v100);
          v97 += v100;
          if (v45)
          {
            break;
          }

          v101 = sub_21B34ADB4();
          v1 = v101;
          if (v101 >> 16 > 2 || v97 >= v11)
          {
            if ((v101 & 0xFFFFFFFFFFFFC000) != 0x30000)
            {
              goto LABEL_119;
            }

            v102 = 0xE300000000000000;
            goto LABEL_120;
          }
        }
      }

      else
      {
        v12 = 0;
        v172 = v179 + 32;
        v103 = *v184;
        v104 = 8819938;
        v181 = 8557794;
        if (!v170)
        {
          v104 = 8557794;
        }

        v180 = v104;
        v173 = v167 + 72;
        v186 = v103;
        v171 = v89;
        while (v12 < v89)
        {
          if (__OFADD__(v12, 1))
          {
            goto LABEL_134;
          }

          v184 = (v12 + 1);
          if (v103)
          {
            v190 = MEMORY[0x277D84F90];
            sub_21B231F10(0, v103, 0);
            v1 = v190;
            v2 = v173;
            v95 = v103;
            v187 = v12;
            do
            {
              v110 = *(v2 - 8);
              if (v12 >= *(v110 + 16))
              {
                __break(1u);
                goto LABEL_119;
              }

              v111 = *(v2 - 32);
              a1 = *(v2 - 16);
              v112 = *v2;
              v113 = v110 + 16 * v12;
              v11 = *(v113 + 32);
              v12 = *(v113 + 40);

              v114 = sub_21B2A0B58();
              if (v112 >= v114)
              {
                if (__OFSUB__(v112, v114))
                {
                  __break(1u);
                  goto LABEL_132;
                }

                v115 = sub_21B34AE74();
                v117 = v116;
                *&v188 = v11;
                *(&v188 + 1) = v12;

                v118 = v115;
                v103 = v186;
                MEMORY[0x21CEED5E0](v118, v117);

                v12 = *(&v188 + 1);
                v11 = v188;
              }

              else
              {
              }

              v190 = v1;
              v120 = *(v1 + 16);
              v119 = *(v1 + 24);
              if (v120 >= v119 >> 1)
              {
                sub_21B231F10((v119 > 1), v120 + 1, 1);
                v1 = v190;
              }

              v2 += 48;
              *(v1 + 16) = v120 + 1;
              v121 = v1 + 16 * v120;
              *(v121 + 32) = v11;
              *(v121 + 40) = v12;
              --v95;
              v12 = v187;
            }

            while (v95);
            a1 = v176;
            v90 = v179;
            v2 = v174;
            v89 = v171;
            if (v185)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v1 = MEMORY[0x277D84F90];
            if (v185)
            {
LABEL_108:
              if (v12 >= *(v90 + 16))
              {
                goto LABEL_135;
              }

              v122 = a1;
              a1 = v1;
              v123 = (v172 + 16 * v12);
              v1 = *v123;
              v12 = v123[1];
              v124 = v177;
              sub_21B2CF988(v178, v185);

              v125 = sub_21B2A0B58();
              if (v124 >= v125)
              {
                if (__OFSUB__(v124, v125))
                {
                  goto LABEL_139;
                }

                v126 = sub_21B34AE74();
                v128 = v127;
                *&v188 = v1;
                *(&v188 + 1) = v12;

                MEMORY[0x21CEED5E0](v126, v128);
                v129 = *(&v188 + 1);
                v1 = v188;
                v103 = v186;

                v12 = v129;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a1 = sub_21B231F84(0, *(a1 + 16) + 1, 1, a1);
              }

              v131 = *(a1 + 16);
              v130 = *(a1 + 24);
              if (v131 >= v130 >> 1)
              {
                a1 = sub_21B231F84((v130 > 1), v131 + 1, 1, a1);
              }

              *(a1 + 16) = v131 + 1;
              v105 = a1 + 16 * v131;
              *(v105 + 32) = v1;
              *(v105 + 40) = v12;
              v1 = a1;
              a1 = v122;
            }
          }

          *&v188 = v1;
          v11 = v1;
          v106 = sub_21B34AB74();
          v108 = v107;

          *&v188 = 32;
          *(&v188 + 1) = 0xE100000000000000;
          MEMORY[0x21CEED5E0](v106, v108);

          MEMORY[0x21CEED5E0](32, 0xE100000000000000);

          v109 = v188;
          *&v188 = v181;
          *(&v188 + 1) = 0xA300000000000000;
          MEMORY[0x21CEED5E0](v109, *(&v109 + 1));

          MEMORY[0x21CEED5E0](v180, 0xA300000000000000);

          MEMORY[0x21CEED5E0](10, 0xE100000000000000);

          v1 = v191;
          MEMORY[0x21CEED5E0](v188, *(&v188 + 1));

          v12 = v184;
          if (v184 == v89)
          {
            goto LABEL_77;
          }
        }

LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
      }

      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      v37 = sub_21B231F84(0, *(v11 + 16) + 1, 1, v11);
LABEL_47:
      v57 = *(v37 + 2);
      v56 = *(v37 + 3);
      if (v57 >= v56 >> 1)
      {
        v37 = sub_21B231F84((v56 > 1), v57 + 1, 1, v37);
      }

      *(v37 + 2) = v57 + 1;
      v58 = &v37[16 * v57];
      *(v58 + 4) = v1;
      *(v58 + 5) = v12;
LABEL_51:
      *&v188 = v37;
      v59 = v37;

      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
      v61 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68);
      v183 = v60;
      v182 = v61;
      v62 = sub_21B34AB74();
      v64 = v63;
      v161 = v59;

      *&v188 = 32;
      *(&v188 + 1) = 0xE100000000000000;
      MEMORY[0x21CEED5E0](v62, v64);

      MEMORY[0x21CEED5E0](32, 0xE100000000000000);

      v65 = v188;
      v66 = v170;
      if (v170)
      {
        v11 = 8885474;
      }

      else
      {
        v11 = 8623330;
      }

      *&v188 = 8623330;
      *(&v188 + 1) = 0xA300000000000000;
      MEMORY[0x21CEED5E0](v65, *(&v65 + 1));

      MEMORY[0x21CEED5E0](v11, 0xA300000000000000);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      MEMORY[0x21CEED5E0](v188, *(&v188 + 1));
    }

    while (*(a1 + 24) != 1);
    v187 = v11;
    v67 = *v184;
    v20 = MEMORY[0x277D84F90];
    if (!*v184)
    {
      goto LABEL_65;
    }

    v190 = MEMORY[0x277D84F90];
    sub_21B231F10(0, v67, 0);
    v20 = v190;
    v2 = (v167 + 72);
    do
    {
      v68 = *(v2 - 32);
      v11 = *(v2 - 24);
      v12 = *(v2 - 16);
      v69 = *(v2 - 8);
      v1 = *v2;
      swift_bridgeObjectRetain_n();

      v70 = sub_21B2A0B58();
      if (v1 >= v70)
      {
        if (__OFSUB__(v1, v70))
        {
          goto LABEL_138;
        }

        a1 = sub_21B34AE74();
        v72 = v71;
        *&v188 = v11;
        *(&v188 + 1) = v12;

        MEMORY[0x21CEED5E0](a1, v72);

        swift_bridgeObjectRelease_n();

        v12 = *(&v188 + 1);
        v11 = v188;
      }

      else
      {
      }

      v190 = v20;
      v74 = *(v20 + 2);
      v73 = *(v20 + 3);
      if (v74 >= v73 >> 1)
      {
        sub_21B231F10((v73 > 1), v74 + 1, 1);
        v20 = v190;
      }

      v2 += 48;
      *(v20 + 2) = v74 + 1;
      v75 = &v20[16 * v74];
      *(v75 + 4) = v11;
      *(v75 + 5) = v12;
      --v67;
    }

    while (v67);
    a1 = v176;
    v11 = v179;
    v2 = v174;
  }

  if (!__OFSUB__(v177, result))
  {
    v77 = sub_21B34AE74();
    v79 = v78;
    *&v188 = v76;
    *(&v188 + 1) = v2;

    MEMORY[0x21CEED5E0](v77, v79);

    v7 = *(&v188 + 1);
    v12 = v188;
    goto LABEL_71;
  }

LABEL_153:
  __break(1u);
  return result;
}

uint64_t DataFrameProtocol.description(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v178 = a1;
  v7 = type metadata accessor for FormattingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v166 = v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 24);
  v10(&v189, a2, a3);
  v11 = v189;

  v12 = *(v11 + 16);

  if (!v12)
  {
    return 0;
  }

  v185 = v10;
  v13 = *(a3 + 32);
  v161 = a3 + 32;
  v160 = v13;
  v13(&v189, a2, a3);
  v14 = v191;
  v15 = v192;
  v16 = v193;
  v17 = v194;
  sub_21B254074(v192, v193, v194);

  sub_21B23A9F4(v15, v16, v17);
  v18 = sub_21B2FB104(v15, v16, v17);
  sub_21B23A9F4(v15, v16, v17);
  v19 = *(v178 + 16);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_138;
  }

  v20 = *(v18 + 16);
  if (v20 >= v19)
  {
    v20 = *(v178 + 16);
  }

  v21 = 2 * v20;
  v22 = v18 + 32;
  v189 = v18;
  v190 = v18 + 32;
  v184 = a3 + 24;
  v23 = a3;
  if (v19)
  {
    v24 = v21 + 1;
  }

  else
  {
    v24 = 1;
  }

  v191 = 0;
  v192 = v24;
  v17 = v18;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDB0, &qword_21B354DE0);
  v26 = sub_21B278F78(&qword_27CD7EDB8, &qword_27CD7EDB0, &qword_21B354DE0);
  v16 = v166;
  v27 = v4;
  v4 = v178;
  sub_21B2CCB50(&v189, v178, a2, v25, v23, v26, v166);
  v159[2] = v17;
  v189 = v17;
  v190 = v22;
  v191 = 0;
  v192 = v24;
  v182 = v24;
  v28 = sub_21B2CE214(&v189, v16, a2, v25, v23, v26);
  v14 = *(v28 + 2);
  v163 = v27;
  v162 = a2;
  v164 = v23;
  v185(&v189, a2, v23);
  v18 = v189;

  v29 = *(v18 + 16);

  v30 = *(v4 + 25);
  v54 = __OFADD__(v29, v30);
  v19 = v29 + v30;
  if (v54)
  {
    goto LABEL_139;
  }

  v168 = v28;
  v31 = *(v28 + 2);
  if (v14 >= v19)
  {
    v39 = 0;
    v173 = 0;
    v16 = 0;
    v171 = 0;
    v181 = 0;
    v14 = 0;
    v172 = 0;
    goto LABEL_17;
  }

  if (!v31)
  {
    goto LABEL_141;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = &v195;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_142;
  }

  v33 = v168;
  v34 = *(v168 + 2);
  if (!v34)
  {
    goto LABEL_143;
  }

  while (1)
  {
    v31 = v34 - 1;
    v35 = &v33[48 * v34];
    v16 = *(v35 - 1);
    v173 = *(v35 - 2);
    v36 = *v35;
    v37 = *(v35 + 1);
    v14 = *(v35 + 2);
    v38 = *(v35 + 3);
    *(v33 + 2) = v31;
    v172 = v38;
    v39 = v38 + 2;
    if (__OFADD__(v38, 2))
    {
      goto LABEL_144;
    }

    v181 = v37;
    v171 = v36;
    v168 = v33;
LABEL_17:
    v41 = MEMORY[0x277D84F90];
    v167 = v39;
    v174 = v16;
    v183 = v14;
    if (v31)
    {
      v189 = MEMORY[0x277D84F90];
      sub_21B254034(0, v31, 0);
      v41 = v189;
      v42 = (v168 + 72);
      v16 = v31;
      while (1)
      {
        v43 = *v42;
        v42 += 6;
        v19 = v43;
        v14 = (v43 + 2);
        if (__OFADD__(v43, 2))
        {
          break;
        }

        v189 = v41;
        v17 = *(v41 + 16);
        v44 = *(v41 + 24);
        v18 = v17 + 1;
        if (v17 >= v44 >> 1)
        {
          sub_21B254034((v44 > 1), v17 + 1, 1);
          v41 = v189;
        }

        *(v41 + 16) = v18;
        *(v41 + 8 * v17 + 32) = v14;
        if (!--v16)
        {
          v39 = v167;
          v16 = v174;
          v14 = v183;
          goto LABEL_24;
        }
      }

LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

LABEL_24:
    v18 = &unk_282CA91F8;
    v165 = v41;
    v45 = sub_21B340E7C(&unk_282CA91F8, v41, 9278946, 0xA300000000000000, v39);
    v47 = v46;
    swift_arrayDestroy();
    v187 = v45;
    v188 = v47;
    v48 = sub_21B34ADA4();
    v19 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
      goto LABEL_140;
    }

    v159[0] = v48 - 1;
    v17 = MEMORY[0x277D84F90];
    if (v31)
    {
      v186 = MEMORY[0x277D84F90];
      sub_21B231F10(0, v31, 0);
      v18 = 0;
      v17 = v186;
      v184 = v31;
      v185 = (v168 + 32);
      do
      {
        v4 = v17;
        v49 = (v185 + 48 * v18);
        v50 = *v49;
        v47 = v49[1];
        v16 = v49[3];
        a2 = v49[4];
        v31 = v49[5];
        v51 = HIBYTE(v47) & 0xF;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v51 = v50 & 0xFFFFFFFFFFFFLL;
        }

        v189 = v50;
        v190 = v47;
        v191 = 0;
        v192 = v51;
        swift_bridgeObjectRetain_n();

        v14 = 0;
        while (1)
        {
          v52 = sub_21B34AE14();
          if (!v53)
          {
            break;
          }

          v17 = sub_21B2A0BE0(v52, v53);

          v54 = __OFADD__(v14, v17);
          v14 += v17;
          if (v54)
          {
            __break(1u);
            goto LABEL_67;
          }
        }

        if (v31 >= v14)
        {
          if (__OFSUB__(v31, v14))
          {
            goto LABEL_133;
          }

          v55 = sub_21B34AE74();
          v57 = v56;
          v189 = v50;
          v190 = v47;

          MEMORY[0x21CEED5E0](v55, v57);

          v50 = v189;
          v47 = v190;
        }

        else
        {
        }

        v17 = v4;
        v186 = v4;
        v59 = *(v4 + 16);
        v58 = *(v4 + 24);
        v31 = v184;
        if (v59 >= v58 >> 1)
        {
          sub_21B231F10((v58 > 1), v59 + 1, 1);
          v17 = v186;
        }

        ++v18;
        *(v17 + 16) = v59 + 1;
        v60 = v17 + 16 * v59;
        *(v60 + 32) = v50;
        *(v60 + 40) = v47;
      }

      while (v18 != v31);
      v4 = v178;
      v16 = v174;
    }

    if (v16)
    {

      v18 = v173;
      v61 = sub_21B2A0B58();
      v14 = v16;
      if (v172 >= v61)
      {
        if (__OFSUB__(v172, v61))
        {
          goto LABEL_148;
        }

        v62 = sub_21B34AE74();
        v64 = v63;
        v189 = v173;
        v190 = v16;

        MEMORY[0x21CEED5E0](v62, v64);

        v18 = v189;
        v14 = v190;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_145:
        v17 = sub_21B231F84(0, *(v17 + 16) + 1, 1, v17);
      }

      v66 = *(v17 + 16);
      v65 = *(v17 + 24);
      if (v66 >= v65 >> 1)
      {
        v17 = sub_21B231F84((v65 > 1), v66 + 1, 1, v17);
      }

      *(v17 + 16) = v66 + 1;
      v67 = v17 + 16 * v66;
      *(v67 + 32) = v18;
      *(v67 + 40) = v14;
    }

    v31 = 0x208394E220;
    v189 = v17;

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    v179 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68);
    v180 = v68;
    v69 = sub_21B34AB74();
    v71 = v70;
    v159[1] = v17;

    v189 = 32;
    v190 = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v69, v71);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v72 = v189;
    v73 = v190;
    v74 = v167;
    if (v167)
    {
      a2 = 8885474;
    }

    else
    {
      a2 = 8623330;
    }

    v189 = 8623330;
    v190 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v72, v73);

    MEMORY[0x21CEED5E0](a2, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v189, v190);

    if (*(v4 + 24) == 1)
    {
      v75 = v168;
      v16 = *(v168 + 2);
      v14 = MEMORY[0x277D84F90];
      if (v16)
      {
        v185 = a2;
        v186 = MEMORY[0x277D84F90];
        sub_21B231F10(0, v16, 0);
        v14 = v186;
        v4 = (v75 + 72);
        do
        {
          v17 = *(v4 - 32);
          a2 = *(v4 - 24);
          v76 = *(v4 - 16);
          v77 = *(v4 - 8);
          v18 = *v4;
          swift_bridgeObjectRetain_n();

          v78 = sub_21B2A0B58();
          if (v18 >= v78)
          {
            if (__OFSUB__(v18, v78))
            {
              goto LABEL_136;
            }

            v79 = sub_21B34AE74();
            v81 = v80;
            v189 = a2;
            v190 = v76;

            MEMORY[0x21CEED5E0](v79, v81);

            swift_bridgeObjectRelease_n();

            a2 = v189;
            v76 = v190;
          }

          else
          {
          }

          v186 = v14;
          v83 = *(v14 + 2);
          v82 = *(v14 + 3);
          v17 = v83 + 1;
          if (v83 >= v82 >> 1)
          {
            sub_21B231F10((v82 > 1), v83 + 1, 1);
            v14 = v186;
          }

          v4 += 48;
          *(v14 + 2) = v17;
          v84 = &v14[16 * v83];
          *(v84 + 4) = a2;
          *(v84 + 5) = v76;
          --v16;
        }

        while (v16);
        v4 = v178;
        v31 = 0x208394E220;
        a2 = v185;
      }

      v16 = v174;
      if (v174)
      {

        v17 = v181;

        v18 = v171;
        result = sub_21B2A0B58();
        v54 = __OFSUB__(v172, result);
        if (v172 >= result)
        {
LABEL_67:
          if (v54)
          {
            goto LABEL_152;
          }

          v85 = sub_21B34AE74();
          v87 = v86;
          v17 = v181;
          v189 = v171;
          v190 = v181;

          MEMORY[0x21CEED5E0](v85, v87);

          v18 = v189;
          v47 = v190;
        }

        else
        {

          v47 = v17;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_149:
          v14 = sub_21B231F84(0, *(v14 + 2) + 1, 1, v14);
        }

        v89 = *(v14 + 2);
        v88 = *(v14 + 3);
        if (v89 >= v88 >> 1)
        {
          v14 = sub_21B231F84((v88 > 1), v89 + 1, 1, v14);
        }

        *(v14 + 2) = v89 + 1;
        v90 = &v14[16 * v89];
        *(v90 + 4) = v18;
        *(v90 + 5) = v47;
        v16 = v174;
      }

      v189 = v14;
      v91 = sub_21B34AB74();
      v93 = v92;

      v189 = 32;
      v190 = 0xE100000000000000;
      MEMORY[0x21CEED5E0](v91, v93);

      MEMORY[0x21CEED5E0](32, 0xE100000000000000);

      v94 = v189;
      v95 = v190;
      v189 = 8623330;
      v190 = 0xA300000000000000;
      MEMORY[0x21CEED5E0](v94, v95);

      MEMORY[0x21CEED5E0](a2, 0xA300000000000000);

      MEMORY[0x21CEED5E0](10, 0xE100000000000000);

      MEMORY[0x21CEED5E0](v189, v190);

      v74 = v167;
    }

    v18 = &unk_282CA9258;
    v96 = sub_21B340E7C(&unk_282CA9258, v165, 9278946, 0xA300000000000000, v74);
    v98 = v97;
    swift_arrayDestroy();
    MEMORY[0x21CEED5E0](v96, v98);

    v14 = v183;
    v19 = v182 >> 1;
    if (v182 != 1)
    {
      v106 = 0;
      v169 = v183 + 32;
      a2 = *(v168 + 2);
      v177 = v182 >> 1;
      v107 = 8819938;
      v176 = 8557794;
      if (!v167)
      {
        v107 = 8557794;
      }

      v175 = v107;
      v19 = v177;
      v170 = (v168 + 72);
      v184 = a2;
      while (v106 < v19)
      {
        v19 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          goto LABEL_132;
        }

        v182 = v106 + 1;
        if (a2)
        {
          v186 = MEMORY[0x277D84F90];
          sub_21B231F10(0, a2, 0);
          v109 = v186;
          v4 = v170;
          v16 = a2;
          v185 = v106;
          do
          {
            v14 = *(v4 - 8);
            if (v106 >= *(v14 + 2))
            {
              __break(1u);
              goto LABEL_117;
            }

            v17 = *(v4 - 32);
            v31 = *(v4 - 16);
            v18 = *v4;
            v115 = &v14[16 * v106];
            v117 = *(v115 + 4);
            v116 = *(v115 + 5);

            v118 = sub_21B2A0B58();
            if (v18 >= v118)
            {
              if (__OFSUB__(v18, v118))
              {
                __break(1u);
                goto LABEL_130;
              }

              v119 = sub_21B34AE74();
              v121 = v120;
              v189 = v117;
              v190 = v116;

              MEMORY[0x21CEED5E0](v119, v121);
              a2 = v184;

              v117 = v189;
              v116 = v190;
            }

            else
            {
            }

            v186 = v109;
            v18 = *(v109 + 16);
            v122 = *(v109 + 24);
            if (v18 >= v122 >> 1)
            {
              sub_21B231F10((v122 > 1), v18 + 1, 1);
              v109 = v186;
            }

            v4 += 48;
            *(v109 + 16) = v18 + 1;
            v123 = v109 + 16 * v18;
            *(v123 + 32) = v117;
            *(v123 + 40) = v116;
            --v16;
            v106 = v185;
          }

          while (v16);
          v4 = v178;
          v16 = v174;
          v14 = v183;
          if (v174)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v109 = MEMORY[0x277D84F90];
          if (v16)
          {
LABEL_106:
            v19 = *(v14 + 2);
            if (v106 >= v19)
            {
              goto LABEL_134;
            }

            v17 = v109;
            v124 = &v169[16 * v106];
            v125 = *v124;
            v126 = v124[1];
            v18 = v172;
            sub_21B2CF988(v173, v16);

            v127 = sub_21B2A0B58();
            if (v18 >= v127)
            {
              if (__OFSUB__(v18, v127))
              {
                goto LABEL_137;
              }

              v128 = sub_21B34AE74();
              v130 = v129;
              v189 = v125;
              v190 = v126;

              MEMORY[0x21CEED5E0](v128, v130);
              v125 = v189;
              v131 = v190;

              v126 = v131;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_21B231F84(0, *(v17 + 16) + 1, 1, v17);
            }

            v133 = *(v17 + 16);
            v132 = *(v17 + 24);
            if (v133 >= v132 >> 1)
            {
              v17 = sub_21B231F84((v132 > 1), v133 + 1, 1, v17);
            }

            *(v17 + 16) = v133 + 1;
            v108 = v17 + 16 * v133;
            *(v108 + 32) = v125;
            *(v108 + 40) = v126;
            v109 = v17;
          }
        }

        v189 = v109;
        v110 = sub_21B34AB74();
        v112 = v111;

        v189 = 32;
        v190 = 0xE100000000000000;
        MEMORY[0x21CEED5E0](v110, v112);

        MEMORY[0x21CEED5E0](32, 0xE100000000000000);

        v113 = v189;
        v114 = v190;
        v189 = v176;
        v190 = 0xA300000000000000;
        MEMORY[0x21CEED5E0](v113, v114);

        MEMORY[0x21CEED5E0](v175, 0xA300000000000000);

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        v18 = v190;
        MEMORY[0x21CEED5E0](v189, v190);

        v14 = v183;
        v106 = v182;
        v19 = v177;
        if (v182 == v177)
        {
          goto LABEL_75;
        }
      }

LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_75:
    a2 = v19;
    sub_21B2CF938(v173, v16);

    v160(&v189, v162, v164);
    v18 = v189;
    v14 = v191;
    v47 = v192;
    v99 = v193;
    v17 = v194;
    v100 = sub_21B2FB1D4(v192, v193, v194);

    sub_21B23A9F4(v47, v99, v17);
    if (a2 >= v100)
    {
      v134 = sub_21B340E7C(&unk_282CA9318, v165, 9213410, 0xA300000000000000, v167);
      v136 = v135;

      swift_arrayDestroy();
LABEL_125:
      MEMORY[0x21CEED5E0](v134, v136);

      if (*(v4 + 26) == 1)
      {
        v156 = (*(v164 + 64))(v162);
        v189 = sub_21B2CEA58(v156, v157);
        v190 = v158;

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        MEMORY[0x21CEED5E0](v189, v190);
        swift_unknownObjectRelease();

        sub_21B2B42B0(v166);
      }

      else
      {
        sub_21B2B42B0(v166);
        swift_unknownObjectRelease();
      }

      return v187;
    }

    v31 = v159[0] - 2;
    if (__OFSUB__(v159[0], 2))
    {
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v16 = v159[0] - 4;
    if (__OFSUB__(v31, 2))
    {
      goto LABEL_147;
    }

    if (v159[0] == 4)
    {
      v18 = 0;
      v105 = 0xE000000000000000;
      goto LABEL_118;
    }

    v18 = 3026478;
    if (v16 < 1)
    {
      break;
    }

    v17 = 0;
    while (1)
    {
      v101 = sub_21B34AE94();
      v14 = v102;
      v103 = sub_21B2A0BE0(v101, v102);

      v54 = __OFADD__(v17, v103);
      v17 += v103;
      if (v54)
      {
        break;
      }

      v104 = sub_21B34ADB4();
      if (v104 >> 16 > 2 || v17 >= v16)
      {
        if ((v104 & 0xFFFFFFFFFFFFC000) != 0x30000)
        {
          goto LABEL_117;
        }

        v105 = 0xE300000000000000;
        goto LABEL_118;
      }
    }

LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    v33 = sub_21B23A308(*(v19 - 256));
    v34 = *(v33 + 2);
    if (!v34)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }
  }

LABEL_117:
  sub_21B34ADC4();
  v137 = sub_21B34AEB4();
  v138 = MEMORY[0x21CEED540](v137);
  v140 = v139;

  v189 = v138;
  v190 = v140;

  MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

  v18 = v189;
  v105 = v190;
LABEL_118:
  result = sub_21B2A0B58();
  v141 = v16 - result;
  if (v16 < result)
  {
LABEL_121:
    v189 = 32;
    v190 = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v18, v105, v141);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v146 = v189;
    v145 = v190;
    v147 = sub_21B340E7C(&unk_282CA92B8, v165, 9278946, 0xA300000000000000, v167);
    v149 = v148;

    swift_arrayDestroy();
    MEMORY[0x21CEED5E0](v147, v149);

    result = sub_21B2A0B58();
    v150 = v31 - result;
    if (v31 >= result)
    {
      if (__OFSUB__(v31, result))
      {
        goto LABEL_151;
      }

      v151 = sub_21B34AE74();
      v153 = v152;
      v189 = v146;
      v190 = v145;

      MEMORY[0x21CEED5E0](v151, v153);

      v146 = v189;
      v145 = v190;
    }

    v189 = 8885474;
    v190 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v146, v145, v150);

    MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v189, v190);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B351EA0;
    *(inited + 32) = v31;
    v134 = sub_21B33F0FC(inited);
    v136 = v155;
    swift_setDeallocating();
    goto LABEL_125;
  }

  if (!__OFSUB__(v16, result))
  {
    v142 = sub_21B34AE74();
    v144 = v143;
    v189 = v18;
    v190 = v105;

    MEMORY[0x21CEED5E0](v142, v144);

    v18 = v189;
    v105 = v190;
    goto LABEL_121;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_21B2CB3D0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_21B2CB408@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_21B2CFA3C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_21B2CF9D8(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_21B34A714();
    v15 = v14;
    result = sub_21B234324(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21B2CB554()
{
  v1 = type metadata accessor for FormattingOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  FormattingOptions.init()(v4);
  v8 = sub_21B2C6E78(v4, v5, v6, v7);
  sub_21B2B42B0(v4);
  return v8;
}

uint64_t DataFrame.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B34BC44();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v36 - v8;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v49 = v10;
  v50 = v9;
  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21B352080;
  strcpy((v12 + 32), "column names");
  *(v12 + 45) = 0;
  *(v12 + 46) = -5120;
  v13 = *(v10 + 16);
  if (!v13)
  {

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    *(v12 + 48) = MEMORY[0x277D84F90];
    *(v12 + 72) = v33;
    strcpy((v12 + 80), "number of rows");
    *(v12 + 95) = -18;
LABEL_11:

    goto LABEL_12;
  }

  v38 = v3;
  v41 = a1;
  v48 = MEMORY[0x277D84F90];

  v40 = v9;

  v39 = v11;

  sub_21B231F10(0, v13, 0);
  v14 = v48;
  v15 = v10 + 32;
  v37 = v10 + 32;
  do
  {
    sub_21B233A74(v15, v45);
    v17 = v46;
    v16 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v18 = (*(*(v16 + 8) + 8))(v17);
    v20 = v19;
    sub_21B233960(v45);
    v48 = v14;
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_21B231F10((v21 > 1), v22 + 1, 1);
      v14 = v48;
    }

    *(v14 + 16) = v22 + 1;
    v23 = v14 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
    v15 += 40;
    --v13;
  }

  while (v13);
  v24 = *(v10 + 16);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  *(v12 + 48) = v14;
  *(v12 + 72) = v25;
  strcpy((v12 + 80), "number of rows");
  *(v12 + 95) = -18;
  v3 = v38;
  if (!v24)
  {
    goto LABEL_11;
  }

  sub_21B233A74(v37, v45);
  v26 = v46;
  v27 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v28 = *(v27 + 8);
  v29 = *(v28 + 48);

  v30 = v29(v26, v28);
  result = sub_21B233960(v45);
  if ((v30 & 0x8000000000000000) == 0)
  {
    if (v30)
    {
      v32 = 0;
LABEL_13:
      v34 = sub_21B2FB1D4(0, v30, v32);
      *(v12 + 120) = MEMORY[0x277D83B88];
      *(v12 + 96) = v34;

      sub_21B23A9F4(0, v30, v32);
      v35 = sub_21B34BC34();
      (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
      (*(v44 + 104))(v43, *MEMORY[0x277D84C38], v3);
      return sub_21B34BC54();
    }

LABEL_12:
    v30 = 0;
    v32 = 2;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2CBAA0()
{
  v1 = type metadata accessor for FormattingOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v8 = *v0;
  v9[0] = v5;
  *(v9 + 9) = *(v0 + 25);
  FormattingOptions.init()(v4);
  v6 = sub_21B2C8600(v4);
  sub_21B2B42B0(v4);
  return v6;
}

uint64_t DataFrame.Slice.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_21B34BC44();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v34 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = *(v1 + 40);
  v15 = v1[4];
  v47 = v11;
  v48 = v10;
  v49 = v12;
  v50 = v13;
  v51 = v15;
  v52 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21B352080;
  strcpy((v16 + 32), "column names");
  *(v16 + 45) = 0;
  *(v16 + 46) = -5120;
  v17 = *(v11 + 16);
  if (v17)
  {
    v38 = v9;
    v39 = v5;

    v36 = v15;
    v37 = v13;
    v35 = v14;
    sub_21B254074(v13, v15, v14);
    v46 = MEMORY[0x277D84F90];

    v34[2] = v10;

    v34[1] = v12;

    sub_21B231F10(0, v17, 0);
    v18 = v46;
    v19 = v11 + 32;
    do
    {
      sub_21B233A74(v19, v43);
      v20 = v44;
      v21 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v22 = (*(*(v21 + 8) + 8))(v20);
      v24 = v23;
      sub_21B233960(v43);
      v46 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21B231F10((v25 > 1), v26 + 1, 1);
        v18 = v46;
      }

      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v19 += 40;
      --v17;
    }

    while (v17);
    v9 = v38;
    v5 = v39;
    v29 = v36;
    v28 = v37;
    LOBYTE(v14) = v35;
  }

  else
  {

    sub_21B254074(v13, v15, v14);

    v29 = v15;
    v28 = v13;
    v18 = MEMORY[0x277D84F90];
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
  *(v16 + 48) = v18;
  *(v16 + 72) = v30;
  strcpy((v16 + 80), "number of rows");
  *(v16 + 95) = -18;
  v31 = sub_21B2FB1D4(v28, v29, v14);
  *(v16 + 120) = MEMORY[0x277D83B88];
  *(v16 + 96) = v31;
  sub_21B254074(v28, v29, v14);

  sub_21B23A9F4(v28, v29, v14);
  v32 = sub_21B34BC34();
  (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
  (*(v40 + 104))(v5, *MEMORY[0x277D84C38], v41);
  return sub_21B34BC54();
}

uint64_t DataFrame.Row.description(options:)(uint64_t a1)
{
  sub_21B2C6C8C(*(v1 + 24), *(v1 + 24), *v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = sub_21B2C8600(a1);
  sub_21B2A63AC(v5);
  return v3;
}

uint64_t _s11TabularData0B5FrameV3RowV11descriptionSSvg_0()
{
  v1 = type metadata accessor for FormattingOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21B2C6C8C(*(v0 + 24), *(v0 + 24), *v0, *(v0 + 8), *(v0 + 16), v7);
  FormattingOptions.init()(v4);
  v5 = sub_21B2C8600(v4);
  sub_21B2A63AC(v7);
  sub_21B2B42B0(v4);
  return v5;
}

uint64_t DataFrame.Row.customMirror.getter()
{
  v1 = sub_21B34BC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB0, &qword_21B353890);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v11 = *v0;
  v10 = v0[1];
  v13 = v0[2];
  v12 = v0[3];
  v18[0] = v11;
  v18[1] = v10;
  v18[2] = v13;
  v18[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EAB8, &qword_21B353898);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21B352080;
  *(v14 + 32) = 0x7865646E69;
  *(v14 + 40) = 0xE500000000000000;
  v15 = MEMORY[0x277D83B88];
  *(v14 + 48) = v12;
  *(v14 + 72) = v15;
  *(v14 + 80) = 1702060386;
  *(v14 + 112) = v13;
  *(v14 + 120) = &type metadata for DataFrame;
  *(v14 + 88) = 0xE400000000000000;
  *(v14 + 96) = v11;
  *(v14 + 104) = v10;
  v16 = sub_21B34BC34();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_21B34BC54();
}

uint64_t sub_21B2CC2D0@<X0>(int64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_21B34A6A4();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = *(v48 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = sub_21B34A874();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = *(a5 + 16);
  if (v22)
  {
    v23 = sub_21B3418EC(a1, a2, a3);
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      *&v52 = v23;
      sub_21B34B944();
      v27 = sub_21B34ADA4();

      if (*(a4 + 8) >= v27)
      {
        v25 = v27;
      }

      else
      {
        v25 = *(a4 + 8);
      }
    }

    result = sub_21B2CEC7C(v22 - 1, a4);
    v28 = v25 + 1;
    v29 = __OFADD__(v25, 1);
    if (!result)
    {
      goto LABEL_25;
    }

    if (v29)
    {
      __break(1u);
    }

    else if (!__OFADD__(v28, 2))
    {
      v30 = v25 + 4;
      if (!__OFADD__(v25 + 3, 1))
      {
        v31 = __OFADD__(v30, result);
        v32 = v30 + result;
        if (!v31)
        {
          v31 = __OFADD__(v32, 2);
          v33 = v32 + 2;
          if (!v31)
          {
            v31 = __OFADD__(v33, 1);
            v34 = v33 + 1;
            if (!v31)
            {
              v31 = __OFADD__(v34, 2);
              v35 = v34 + 2;
              if (!v31)
              {
                v31 = __OFADD__(v35, 2);
                v36 = v35 + 2;
                if (!v31)
                {
                  v31 = __OFADD__(v36, 1);
                  v28 = v36 + 1;
                  if (!v31)
                  {
LABEL_31:
                    if (*a4 >= v28)
                    {
                      return sub_21B2CFBB8(a4, a6);
                    }

                    v41 = *(a4 + 24);
                    *(a6 + 25) = 257;
                    *a6 = v28;
                    *(a6 + 8) = *(a4 + 8);
                    *(a6 + 24) = v41;
                    v42 = type metadata accessor for FormattingOptions();
                    v43 = v42[11];
                    sub_21B34A864();
                    sub_21B2CFAF0();
                    sub_21B34A634();
                    v44 = v42[10];
                    sub_21B34A864();
                    sub_21B2CFB44();
                    sub_21B34A674();
                    v52 = xmmword_21B354DD0;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
                    sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910);
                    sub_21B34A694();
                    v45 = v49;
                    MEMORY[0x21CEECE60](v15, v49);
                    (*(v50 + 8))(v15, v51);
                    v46 = (*(v48 + 8))(v19, v45);
                    v47 = a6 + v42[12];
                    return MEMORY[0x21CEECE20](v46);
                  }

                  __break(1u);
LABEL_25:
                  if (!v29)
                  {
                    v31 = __OFADD__(v28, 2);
                    v37 = v28 + 2;
                    if (!v31)
                    {
                      v31 = __OFADD__(v37, 1);
                      v38 = v37 + 1;
                      if (!v31)
                      {
                        v31 = __OFADD__(v38, 2);
                        v39 = v38 + 2;
                        if (!v31)
                        {
                          v31 = __OFADD__(v39, 2);
                          v40 = v39 + 2;
                          if (!v31)
                          {
                            v31 = __OFADD__(v40, 1);
                            v28 = v40 + 1;
                            if (!v31)
                            {
                              goto LABEL_31;
                            }

LABEL_48:
                            __break(1u);
                            return result;
                          }

LABEL_47:
                          __break(1u);
                          goto LABEL_48;
                        }

LABEL_46:
                        __break(1u);
                        goto LABEL_47;
                      }

LABEL_45:
                      __break(1u);
                      goto LABEL_46;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_37;
  }

  return sub_21B2CFBB8(a4, a6);
}

uint64_t sub_21B2CC710@<X0>(int64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = sub_21B34A6A4();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v19 = sub_21B34A874();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = *(*v5 + 16);
  if (v21)
  {
    v22 = sub_21B3418EC(a1, a2, a3);
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      *&v51 = v22;
      sub_21B34B944();
      v26 = sub_21B34ADA4();

      if (*(a4 + 8) >= v26)
      {
        v24 = v26;
      }

      else
      {
        v24 = *(a4 + 8);
      }
    }

    result = sub_21B2CEC7C(v21 - 1, a4);
    v27 = v24 + 1;
    v28 = __OFADD__(v24, 1);
    if (!result)
    {
      goto LABEL_25;
    }

    if (v28)
    {
      __break(1u);
    }

    else if (!__OFADD__(v27, 2))
    {
      v29 = v24 + 4;
      if (!__OFADD__(v24 + 3, 1))
      {
        v30 = __OFADD__(v29, result);
        v31 = v29 + result;
        if (!v30)
        {
          v30 = __OFADD__(v31, 2);
          v32 = v31 + 2;
          if (!v30)
          {
            v30 = __OFADD__(v32, 1);
            v33 = v32 + 1;
            if (!v30)
            {
              v30 = __OFADD__(v33, 2);
              v34 = v33 + 2;
              if (!v30)
              {
                v30 = __OFADD__(v34, 2);
                v35 = v34 + 2;
                if (!v30)
                {
                  v30 = __OFADD__(v35, 1);
                  v27 = v35 + 1;
                  if (!v30)
                  {
LABEL_31:
                    if (*a4 >= v27)
                    {
                      return sub_21B2CFBB8(a4, a5);
                    }

                    v40 = *(a4 + 24);
                    *(a5 + 25) = 257;
                    *a5 = v27;
                    *(a5 + 8) = *(a4 + 8);
                    *(a5 + 24) = v40;
                    v41 = type metadata accessor for FormattingOptions();
                    v42 = v41[11];
                    sub_21B34A864();
                    sub_21B2CFAF0();
                    sub_21B34A634();
                    v43 = v41[10];
                    sub_21B34A864();
                    sub_21B2CFB44();
                    sub_21B34A674();
                    v51 = xmmword_21B354DD0;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
                    sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910);
                    sub_21B34A694();
                    v44 = v48;
                    MEMORY[0x21CEECE60](v14, v48);
                    (*(v49 + 8))(v14, v50);
                    v45 = (*(v47 + 8))(v18, v44);
                    v46 = a5 + v41[12];
                    return MEMORY[0x21CEECE20](v45);
                  }

                  __break(1u);
LABEL_25:
                  if (!v28)
                  {
                    v30 = __OFADD__(v27, 2);
                    v36 = v27 + 2;
                    if (!v30)
                    {
                      v30 = __OFADD__(v36, 1);
                      v37 = v36 + 1;
                      if (!v30)
                      {
                        v30 = __OFADD__(v37, 2);
                        v38 = v37 + 2;
                        if (!v30)
                        {
                          v30 = __OFADD__(v38, 2);
                          v39 = v38 + 2;
                          if (!v30)
                          {
                            v30 = __OFADD__(v39, 1);
                            v27 = v39 + 1;
                            if (!v30)
                            {
                              goto LABEL_31;
                            }

LABEL_48:
                            __break(1u);
                            return result;
                          }

LABEL_47:
                          __break(1u);
                          goto LABEL_48;
                        }

LABEL_46:
                        __break(1u);
                        goto LABEL_47;
                      }

LABEL_45:
                      __break(1u);
                      goto LABEL_46;
                    }

LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

LABEL_43:
                  __break(1u);
                  goto LABEL_44;
                }

LABEL_42:
                __break(1u);
                goto LABEL_43;
              }

LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_37;
  }

  return sub_21B2CFBB8(a4, a5);
}

uint64_t sub_21B2CCB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a1;
  v54 = a6;
  v52 = a4;
  v11 = sub_21B34A6A4();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v14);
  v46 = &v45 - v16;
  v17 = sub_21B34A874();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = *(a5 + 24);
  v19(&v55, a3, a5);
  v20 = v55;

  v21 = *(v20 + 16);

  if (!v21)
  {
    goto LABEL_17;
  }

  sub_21B34AF44();
  v22 = sub_21B2CFCB8(v55, SBYTE8(v55), a2);
  v19(&v55, a3, a5);
  v23 = v55;

  v24 = *(v23 + 16);

  result = sub_21B2CFD34(v24 - 1, a2);
  v26 = v22 + 1;
  v27 = __OFADD__(v22, 1);
  if (!result)
  {
    if (!v27)
    {
      if (!__OFADD__(v26, 2))
      {
        if (!__OFADD__(v22 + 3, 1))
        {
          if (!__OFADD__(v22 + 4, 2))
          {
            if (!__OFADD__(v22 + 6, 2))
            {
              v35 = v22 + 9;
              if (!__OFADD__(v22 + 8, 1))
              {
                goto LABEL_26;
              }

LABEL_43:
              __break(1u);
              return result;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v27)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (__OFADD__(v26, 2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v28 = v22 + 4;
  if (__OFADD__(v22 + 3, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = __OFADD__(v28, result);
  v30 = v28 + result;
  if (v29)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v29 = __OFADD__(v30, 2);
  v31 = v30 + 2;
  if (v29)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v29 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v29 = __OFADD__(v32, 2);
  v33 = v32 + 2;
  if (v29)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = __OFADD__(v33, 2);
  v34 = v33 + 2;
  if (v29)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v29)
  {
LABEL_26:
    if (*a2 >= v35)
    {
      return sub_21B2CFBB8(a2, a7);
    }

    v36 = *(a2 + 24);
    *(a7 + 25) = 257;
    *a7 = v35;
    *(a7 + 8) = *(a2 + 8);
    *(a7 + 24) = v36;
    v37 = type metadata accessor for FormattingOptions();
    v38 = v37[11];
    sub_21B34A864();
    sub_21B2CFAF0();
    sub_21B34A634();
    v39 = v37[10];
    sub_21B34A864();
    sub_21B2CFB44();
    v40 = v46;
    sub_21B34A674();
    v55 = xmmword_21B354DD0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
    sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910);
    v41 = v49;
    sub_21B34A694();
    v42 = v48;
    MEMORY[0x21CEECE60](v41, v48);
    (*(v50 + 8))(v41, v51);
    v43 = (*(v47 + 8))(v40, v42);
    v44 = a7 + v37[12];
    return MEMORY[0x21CEECE20](v43);
  }

  __break(1u);
LABEL_17:

  return sub_21B2CFBB8(a2, a7);
}

char *sub_21B2CD000(_OWORD *a1, uint64_t a2, _OWORD *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75[1] = a7;
  v75[2] = a8;
  v86 = sub_21B34A6A4();
  v14 = *(v86 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v17 = *(v84 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = v75 - v19;
  v20 = sub_21B34A874();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v82 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for FormattingOptions();
  v23 = *(*(v81 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v81);
  v80 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100[0] = a1;
  v100[1] = a2;
  v100[2] = a3;
  v100[3] = a4;
  v76 = a6;
  v26 = *(a6 + 16);
  if (*(a5 + 25) != 1)
  {
    goto LABEL_7;
  }

  a1 = v75;
  MEMORY[0x28223BE20](v24);
  v75[-2] = a5;
  v27 = sub_21B3329E0(sub_21B2CFEC8, &v75[-4], a2, a3, a4);
  sub_21B3419B8(0, 0xE000000000000000, 0, 0xE000000000000000, v27, v101);
  v28 = sub_21B2498F0(0, 1, 1, MEMORY[0x277D84F90]);
  a4 = *(v28 + 2);
  v29 = *(v28 + 3);
  v96 = v28;
  a3 = (a4 + 1);
  if (a4 >= v29 >> 1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v30 = v96;
    *(v96 + 2) = a3;
    v31 = &v30[48 * a4];
    v32 = v101[2];
    *(v31 + 3) = v101[1];
    *(v31 + 4) = v32;
    *(v31 + 2) = v101[0];
    v33 = *(v30 + 9);
    v34 = __OFADD__(v33, 2);
    v35 = v33 + 2;
    if (v34)
    {
      __break(1u);
LABEL_64:
      v96 = sub_21B2498F0(0, *(v96 + 2) + 1, 1, v96);
LABEL_45:
      v69 = *(v96 + 2);
      v68 = *(v96 + 3);
      if (v69 >= v68 >> 1)
      {
        v96 = sub_21B2498F0((v68 > 1), v69 + 1, 1, v96);
      }

      v70 = v96;
      *(v96 + 2) = v69 + 1;
      v71 = &v70[48 * v69];
      v72 = a1[3];
      v73 = a1[5];
      *(v71 + 3) = a1[4];
      *(v71 + 4) = v73;
      *(v71 + 2) = v72;
      sub_21B233960(&v97);
      return v96;
    }

    v34 = __OFADD__(v35, 1);
    v29 = v35 + 1;
    if (v34)
    {
      __break(1u);
LABEL_7:
      v96 = MEMORY[0x277D84F90];
      v29 = 1;
    }

    v36 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      break;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    v96 = sub_21B2498F0((v29 > 1), a3, 1, v96);
  }

  if (v26)
  {
    a4 = 0;
    a3 = v102;
    v37 = v76 + 32;
    v89 = (v26 - 1);
    v78 = (v17 + 8);
    v79 = (v14 + 8);
    v77 = xmmword_21B354DD0;
    v91 = a5;
    v88 = v26;
    do
    {
      *v105 = a4;
      sub_21B233A74(v37, &v105[8]);
      if (!v107)
      {
        break;
      }

      a1 = *v105;
      v29 = v106;
      v97 = *&v105[8];
      v98 = v106;
      v99 = v107;
      v14 = v26 - *v105;
      if (__OFSUB__(v26, *v105))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
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
        __break(1u);
        goto LABEL_61;
      }

      v29 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_50;
      }

      if (v14 != 1)
      {
        if (*(a5 + 24))
        {
          *v105 = v14 - 1;
          sub_21B34B944();
          v17 = v38;
          a3 = sub_21B34ADA4();

          v39 = sub_21B34ADA4();
          if (v39 <= a3)
          {
            v29 = a3;
          }

          else
          {
            v29 = v39;
          }
        }

        else
        {
          *v105 = v14 - 1;
          sub_21B34B944();
          v17 = v40;
          a3 = sub_21B34ADA4();

          v41 = sub_21B34ADA4();
          v29 = a3 + v41;
          if (__OFADD__(a3, v41))
          {
            goto LABEL_60;
          }
        }

        if (*(a5 + 8) < v29)
        {
          v29 = *(a5 + 8);
        }
      }

      v34 = __OFADD__(v29, 2);
      v29 += 2;
      if (v34)
      {
        goto LABEL_51;
      }

      v34 = __OFADD__(v29++, 1);
      if (v34)
      {
        goto LABEL_52;
      }

      v42 = *a5 - v36;
      if (__OFSUB__(*a5, v36))
      {
        goto LABEL_53;
      }

      if (a1 == v89)
      {
        v29 = 0;
      }

      v34 = __OFSUB__(v42, v29);
      v29 = v42 - v29;
      if (v34)
      {
        goto LABEL_54;
      }

      v34 = __OFSUB__(v29, 2);
      v29 -= 2;
      if (v34)
      {
        goto LABEL_55;
      }

      a3 = (v29 - 1);
      if (__OFSUB__(v29, 1))
      {
        goto LABEL_56;
      }

      v87 = v26 - a1;
      v92 = a4;
      v93 = v37;
      v94 = v36;
      v44 = *(&v99 + 1);
      v43 = v99;
      __swift_project_boxed_opaque_existential_1(&v97, v99);
      v45 = *(v44 + 8);
      v95 = *(v45 + 112);
      v46 = a5;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDB0, &qword_21B354DE0);
      a4 = sub_21B278F78(&qword_27CD7EDB8, &qword_27CD7EDB0, &qword_21B354DE0);
      v48 = v102;
      v90 = v47;
      (v95)(v102, v100, v46, v47, a4, v43, v45);
      a1 = v104;
      if (a3 < v104)
      {
        a1 = v102;
        v111 = v102[0];
        sub_21B2B421C(&v111);
        v110 = v102[1];
        sub_21B2B421C(&v110);
        v109 = v103;
        sub_21B261664(&v109, &qword_27CD7E840, &qword_21B352A68);
        if (*(v96 + 2) != 1)
        {
          sub_21B2CED60(v87, v91, v76, v105);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_45;
        }

        v87 = *(&v99 + 1);
        v49 = v99;
        v95 = __swift_project_boxed_opaque_existential_1(&v97, v99);
        v50 = *(v91 + 8);
        v51 = *(v91 + 16);
        if (v50 >= a3)
        {
          v50 = a3;
        }

        v52 = *(v91 + 24);
        v53 = v80;
        v54 = v81;
        *(v80 + 25) = 257;
        *v53 = a3;
        *(v53 + 8) = v50;
        *(v53 + 16) = v51;
        *(v53 + 24) = v52;
        v55 = v54[11];
        sub_21B34A864();
        sub_21B2CFAF0();
        sub_21B34A634();
        v56 = v54[10];
        sub_21B34A864();
        sub_21B2CFB44();
        v57 = v83;
        sub_21B34A674();
        *v105 = v77;
        v58 = a4;
        a4 = &qword_27CD7E978;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
        sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910);
        v59 = v85;
        sub_21B34A694();
        v60 = v84;
        MEMORY[0x21CEECE60](v59, v84);
        (*v79)(v59, v86);
        v61 = (*v78)(v57, v60);
        v62 = v53 + v54[12];
        MEMORY[0x21CEECE20](v61);
        v48 = v108;
        (*(*(v87 + 8) + 112))(v108, v100, v53, v90, v58, v49);
        sub_21B2B42B0(v53);
        a1 = v108[5];
      }

      v26 = v48[3];
      a3 = v48[4];
      v14 = v48[1];
      v63 = v48[2];
      a5 = *v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_21B2498F0(0, *(v96 + 2) + 1, 1, v96);
      }

      v65 = *(v96 + 2);
      v64 = *(v96 + 3);
      v17 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        v96 = sub_21B2498F0((v64 > 1), v65 + 1, 1, v96);
      }

      v66 = v96;
      *(v96 + 2) = v17;
      v67 = &v66[48 * v65];
      *(v67 + 4) = a5;
      *(v67 + 5) = v14;
      *(v67 + 6) = v63;
      *(v67 + 7) = v26;
      *(v67 + 8) = a3;
      *(v67 + 9) = a1;
      v29 = a1 + 2;
      if (__OFADD__(a1, 2))
      {
        goto LABEL_57;
      }

      v34 = __OFADD__(v29, 1);
      v29 = a1 + 3;
      if (v34)
      {
        goto LABEL_58;
      }

      v36 = v94 + v29;
      if (__OFADD__(v94, v29))
      {
        goto LABEL_59;
      }

      a4 = v92 + 1;
      sub_21B233960(&v97);
      v37 = v93 + 40;
      v26 = v88;
      a5 = v91;
      a3 = v102;
    }

    while (v88 != a4);
  }

  return v96;
}

char *sub_21B2CD910(uint64_t a1, uint64_t a2, _OWORD *a3, unint64_t a4, uint64_t a5)
{
  v82 = sub_21B34A6A4();
  v11 = *(v82 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v92 = *(v80 - 8);
  v14 = *(v92 + 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v71 - v15;
  v16 = sub_21B34A874();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v78 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for FormattingOptions();
  v19 = *(*(v77 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v77);
  v76 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96[0] = a1;
  v96[1] = a2;
  v96[2] = a3;
  v96[3] = a4;
  v72 = v5;
  v23 = *v5;
  v24 = *(*v5 + 16);
  if (*(a5 + 25) != 1)
  {
    v28 = MEMORY[0x277D84F90];
    v27 = 1;
    goto LABEL_7;
  }

  MEMORY[0x28223BE20](v20);
  *(&v71 - 2) = a5;
  v25 = sub_21B3329E0(sub_21B2CFB98, (&v71 - 4), a2, a3, a4);
  sub_21B3419B8(0, 0xE000000000000000, 0, 0xE000000000000000, v25, v97);
  v26 = sub_21B2498F0(0, 1, 1, MEMORY[0x277D84F90]);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  v21 = v26;
  a3 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    *(v21 + 2) = a3;
    v29 = &v21[48 * v28];
    v30 = v97[2];
    *(v29 + 3) = v97[1];
    *(v29 + 4) = v30;
    *(v29 + 2) = v97[0];
    v31 = *(v21 + 9);
    v32 = __OFADD__(v31, 2);
    v33 = v31 + 2;
    if (v32)
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      v28 = sub_21B2498F0(0, *(v28 + 2) + 1, 1, v28);
LABEL_45:
      v63 = v28;
      v64 = *(v28 + 2);
      v65 = v63;
      v66 = *(v63 + 3);
      if (v64 >= v66 >> 1)
      {
        v65 = sub_21B2498F0((v66 > 1), v64 + 1, 1, v65);
      }

      *(v65 + 2) = v64 + 1;
      v67 = &v65[48 * v64];
      v28 = v65;
      v68 = a3[3];
      v69 = a3[5];
      *(v67 + 3) = a3[4];
      *(v67 + 4) = v69;
      *(v67 + 2) = v68;
      sub_21B233960(&v93);
      return v28;
    }

    v32 = __OFADD__(v33, 1);
    v27 = v33 + 1;
    if (v32)
    {
      goto LABEL_64;
    }

    v28 = v21;
LABEL_7:
    v34 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      break;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    v21 = sub_21B2498F0((v27 > 1), a3, 1, v21);
  }

  if (v24)
  {
    a3 = 0;
    v35 = v23 + 32;
    v85 = v24 - 1;
    v74 = (v92 + 8);
    v75 = (v11 + 8);
    v73 = xmmword_21B354DD0;
    v87 = a5;
    v84 = v24;
    do
    {
      *v101 = a3;
      sub_21B233A74(v35, &v101[8]);
      if (!v103)
      {
        break;
      }

      v89 = v35;
      v90 = a3;
      v23 = *v101;
      v27 = v102;
      v93 = *&v101[8];
      v94 = v102;
      v95 = v103;
      v36 = v24 - *v101;
      if (__OFSUB__(v24, *v101))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
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
        __break(1u);
        goto LABEL_61;
      }

      v27 = v36 - 1;
      if (__OFSUB__(v36, 1))
      {
        goto LABEL_50;
      }

      if (v36 != 1)
      {
        if (*(a5 + 24))
        {
          *v101 = v36 - 1;
          sub_21B34B944();
          a3 = sub_21B34ADA4();

          v37 = sub_21B34ADA4();
          if (v37 <= a3)
          {
            v27 = a3;
          }

          else
          {
            v27 = v37;
          }
        }

        else
        {
          *v101 = v36 - 1;
          sub_21B34B944();
          a3 = sub_21B34ADA4();

          v38 = sub_21B34ADA4();
          v27 = a3 + v38;
          if (__OFADD__(a3, v38))
          {
            goto LABEL_60;
          }
        }

        if (*(a5 + 8) < v27)
        {
          v27 = *(a5 + 8);
        }
      }

      v32 = __OFADD__(v27, 2);
      v27 += 2;
      if (v32)
      {
        goto LABEL_51;
      }

      v32 = __OFADD__(v27++, 1);
      if (v32)
      {
        goto LABEL_52;
      }

      v39 = *a5 - v34;
      if (__OFSUB__(*a5, v34))
      {
        goto LABEL_53;
      }

      if (v23 == v85)
      {
        v27 = 0;
      }

      v32 = __OFSUB__(v39, v27);
      v27 = v39 - v27;
      if (v32)
      {
        goto LABEL_54;
      }

      v32 = __OFSUB__(v27, 2);
      v27 -= 2;
      if (v32)
      {
        goto LABEL_55;
      }

      v11 = v27 - 1;
      if (__OFSUB__(v27, 1))
      {
        goto LABEL_56;
      }

      v83 = (v24 - v23);
      v88 = v34;
      v92 = v28;
      v40 = v95;
      __swift_project_boxed_opaque_existential_1(&v93, v95);
      v41 = *(*(&v40 + 1) + 8);
      v91 = *(v41 + 112);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDB0, &qword_21B354DE0);
      v43 = sub_21B278F78(&qword_27CD7EDB8, &qword_27CD7EDB0, &qword_21B354DE0);
      v44 = v98;
      v86 = v42;
      v91(v98, v96, a5, v42, v43, v40, v41);
      v23 = v100;
      if (v11 >= v100)
      {
        v28 = v92;
      }

      else
      {
        a3 = v98;
        v107 = v98[0];
        sub_21B2B421C(&v107);
        v106 = v98[1];
        sub_21B2B421C(&v106);
        v105 = v99;
        sub_21B261664(&v105, &qword_27CD7E840, &qword_21B352A68);
        v28 = v92;
        if (*(v92 + 2) != 1)
        {
          sub_21B2CF1C8(v83, v87, v101);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_45;
        }

        v91 = v43;
        v45 = v95;
        v83 = __swift_project_boxed_opaque_existential_1(&v93, v95);
        v46 = *(v87 + 8);
        v47 = *(v87 + 16);
        if (v46 >= v11)
        {
          v46 = v11;
        }

        v48 = *(v87 + 24);
        v50 = v76;
        v49 = v77;
        *(v76 + 25) = 257;
        *v50 = v11;
        *(v50 + 8) = v46;
        *(v50 + 16) = v47;
        *(v50 + 24) = v48;
        v51 = v49[11];
        sub_21B34A864();
        sub_21B2CFAF0();
        sub_21B34A634();
        v52 = v49[10];
        sub_21B34A864();
        sub_21B2CFB44();
        v53 = v79;
        sub_21B34A674();
        *v101 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
        sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910);
        v54 = v81;
        sub_21B34A694();
        v55 = v80;
        MEMORY[0x21CEECE60](v54, v80);
        v56 = v54;
        v28 = v92;
        (*v75)(v56, v82);
        v57 = (*v74)(v53, v55);
        v58 = v50 + v49[12];
        MEMORY[0x21CEECE20](v57);
        v44 = v104;
        (*(*(*(&v45 + 1) + 8) + 112))(v104, v96, v50, v86, v91, v45);
        sub_21B2B42B0(v50);
        v23 = v104[5];
      }

      v11 = v44[3];
      a3 = v44[4];
      a5 = v44[1];
      v59 = v44[2];
      v60 = *v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_21B2498F0(0, *(v28 + 2) + 1, 1, v28);
      }

      v24 = *(v28 + 2);
      v61 = *(v28 + 3);
      if (v24 >= v61 >> 1)
      {
        v28 = sub_21B2498F0((v61 > 1), v24 + 1, 1, v28);
      }

      *(v28 + 2) = v24 + 1;
      v62 = &v28[48 * v24];
      *(v62 + 4) = v60;
      *(v62 + 5) = a5;
      *(v62 + 6) = v59;
      *(v62 + 7) = v11;
      *(v62 + 8) = a3;
      *(v62 + 9) = v23;
      v27 = v23 + 2;
      if (__OFADD__(v23, 2))
      {
        goto LABEL_57;
      }

      v32 = __OFADD__(v27, 1);
      v27 = v23 + 3;
      if (v32)
      {
        goto LABEL_58;
      }

      v34 = v88 + v27;
      if (__OFADD__(v88, v27))
      {
        goto LABEL_59;
      }

      a3 = (v90 + 1);
      sub_21B233960(&v93);
      v35 = v89 + 40;
      v24 = v84;
      a5 = v87;
    }

    while (v84 != a3);
  }

  return v28;
}

char *sub_21B2CE214(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v91 = a6;
  v79 = sub_21B34A6A4();
  v93 = *(v79 - 8);
  v12 = *(v93 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDC0, &unk_21B3581D0);
  v92 = *(v77 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v68 - v15;
  v16 = sub_21B34A874();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v75 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for FormattingOptions();
  v19 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a5 + 24);
  v69 = v6;
  (v21)(v104, a3, a5);
  v22 = v104[0];

  v87 = *(v22 + 16);

  v24 = *(a2 + 25);
  v89 = a1;
  v90 = a4;
  if (v24 != 1)
  {
    goto LABEL_7;
  }

  sub_21B2CFE1C(a2, a4, v91, v23, v98);
  v25 = sub_21B2498F0(0, 1, 1, MEMORY[0x277D84F90]);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  v94 = v25;
  v22 = v27 + 1;
  if (v27 >= v26 >> 1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v28 = v94;
    *(v94 + 2) = v22;
    v29 = &v28[48 * v27];
    v30 = v98[2];
    *(v29 + 3) = v98[1];
    *(v29 + 4) = v30;
    *(v29 + 2) = v98[0];
    v31 = *(v28 + 9);
    v32 = __OFADD__(v31, 2);
    v33 = v31 + 2;
    if (v32)
    {
      __break(1u);
LABEL_57:
      v94 = sub_21B2498F0(0, *(v94 + 2) + 1, 1, v94);
LABEL_39:
      v63 = *(v94 + 2);
      v62 = *(v94 + 3);
      if (v63 >= v62 >> 1)
      {
        v94 = sub_21B2498F0((v62 > 1), v63 + 1, 1, v94);
      }

      v64 = v94;
      *(v94 + 2) = v63 + 1;
      v65 = &v64[48 * v63];
      v66 = *v102;
      v67 = v103;
      *(v65 + 3) = *&v102[16];
      *(v65 + 4) = v67;
      *(v65 + 2) = v66;
      sub_21B233960(&v95);
      return v94;
    }

    v32 = __OFADD__(v33, 1);
    v26 = v33 + 1;
    if (v32)
    {
      __break(1u);
LABEL_7:
      v94 = MEMORY[0x277D84F90];
      v26 = 1;
    }

    v27 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    v94 = sub_21B2498F0((v26 > 1), v22, 1, v94);
  }

  (v21)(v104, a3, a5);
  v21 = v104[0];
  v22 = v104[1];

  v86 = *(v21 + 16);
  if (v86)
  {
    v34 = 0;
    v35 = v21 + 32;
    v85 = v87 - 1;
    v71 = (v92 + 8);
    v72 = (v93 + 8);
    v70 = xmmword_21B354DD0;
    v82 = a5;
    v83 = v21;
    v84 = a3;
    v88 = a2;
    do
    {
      v26 = *(v21 + 16);
      if (v34 >= v26)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      *v102 = v34;
      sub_21B233A74(v35, &v102[8]);
      if (!v103)
      {
        break;
      }

      v22 = *v102;
      v95 = *&v102[8];
      v96 = *&v102[24];
      v97 = v103;
      v26 = v87;
      v36 = v87 - *v102;
      if (__OFSUB__(v87, *v102))
      {
        goto LABEL_43;
      }

      if (__OFSUB__(v36, 1))
      {
        goto LABEL_44;
      }

      v37 = sub_21B2CFD34(v36 - 1, a2);
      v26 = v37 + 2;
      if (__OFADD__(v37, 2))
      {
        goto LABEL_45;
      }

      v32 = __OFADD__(v26, 1);
      v26 = v37 + 3;
      if (v32)
      {
        goto LABEL_46;
      }

      v38 = *a2 - v27;
      if (__OFSUB__(*a2, v27))
      {
        goto LABEL_47;
      }

      if (v22 == v85)
      {
        v26 = 0;
      }

      v32 = __OFSUB__(v38, v26);
      v26 = v38 - v26;
      if (v32)
      {
        goto LABEL_48;
      }

      v32 = __OFSUB__(v26, 2);
      v26 -= 2;
      if (v32)
      {
        goto LABEL_49;
      }

      v93 = v35;
      v39 = v26 - 1;
      if (__OFSUB__(v26, 1))
      {
        goto LABEL_50;
      }

      v92 = v27;
      v40 = v97;
      __swift_project_boxed_opaque_existential_1(&v95, v97);
      v41 = a2;
      v42 = v99;
      (*(*(*(&v40 + 1) + 8) + 112))(v99, v89, v41, v90, v91, v40);
      a3 = v101;
      if (v39 < v101)
      {
        v107 = v99[0];
        sub_21B2B421C(&v107);
        v106 = v99[1];
        sub_21B2B421C(&v106);
        v105 = v100;
        sub_21B261664(&v105, &qword_27CD7E840, &qword_21B352A68);
        if (*(v94 + 2) != 1)
        {

          sub_21B2CF548(v36, v88, v84, a5, v102);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_39;
        }

        v80 = *(&v97 + 1);
        v43 = v97;
        v81 = __swift_project_boxed_opaque_existential_1(&v95, v97);
        v44 = *(v88 + 8);
        v45 = *(v88 + 16);
        if (v44 >= v39)
        {
          v44 = v39;
        }

        v46 = *(v88 + 24);
        v47 = v73;
        v48 = v74;
        *(v73 + 25) = 257;
        *v47 = v39;
        *(v47 + 8) = v44;
        *(v47 + 16) = v45;
        *(v47 + 24) = v46;
        v49 = v48[11];
        sub_21B34A864();
        sub_21B2CFAF0();
        sub_21B34A634();
        v50 = v48[10];
        sub_21B34A864();
        sub_21B2CFB44();
        v51 = v76;
        sub_21B34A674();
        *v102 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
        sub_21B278F78(&qword_27CD7EDD0, &qword_27CD7E978, &qword_21B353910);
        v52 = v78;
        sub_21B34A694();
        v53 = v77;
        MEMORY[0x21CEECE60](v52, v77);
        (*v72)(v52, v79);
        v54 = (*v71)(v51, v53);
        v55 = v47 + v48[12];
        MEMORY[0x21CEECE20](v54);
        v42 = v104;
        (*(*(v80 + 8) + 112))(v104, v89, v47, v90, v91, v43);
        sub_21B2B42B0(v47);
        a3 = v104[5];
      }

      v56 = v42[3];
      v21 = v42[4];
      a5 = v42[1];
      v57 = v42[2];
      a2 = *v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_21B2498F0(0, *(v94 + 2) + 1, 1, v94);
      }

      v27 = *(v94 + 2);
      v58 = *(v94 + 3);
      v22 = v27 + 1;
      if (v27 >= v58 >> 1)
      {
        v94 = sub_21B2498F0((v58 > 1), v27 + 1, 1, v94);
      }

      v59 = v94;
      *(v94 + 2) = v22;
      v60 = &v59[48 * v27];
      *(v60 + 4) = a2;
      *(v60 + 5) = a5;
      *(v60 + 6) = v57;
      *(v60 + 7) = v56;
      *(v60 + 8) = v21;
      *(v60 + 9) = a3;
      v26 = a3 + 2;
      if (__OFADD__(a3, 2))
      {
        goto LABEL_51;
      }

      v32 = __OFADD__(v26, 1);
      v26 = a3 + 3;
      if (v32)
      {
        goto LABEL_52;
      }

      v27 = v92 + v26;
      if (__OFADD__(v92, v26))
      {
        goto LABEL_53;
      }

      ++v34;
      sub_21B233960(&v95);
      v35 = v93 + 40;
      a5 = v82;
      v21 = v83;
      a3 = v84;
      a2 = v88;
    }

    while (v86 != v34);
  }

  return v94;
}

uint64_t sub_21B2CEA58(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
    v4 = *(type metadata accessor for FormattingOptions() + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
    sub_21B2CFAF0();
    sub_21B278F78(qword_27CD7EDE0, &qword_27CD7EDD8, &qword_21B3581E0);
    sub_21B34B504();
    MEMORY[0x21CEED5E0](0x202C73776F7220, 0xE700000000000000);
    MEMORY[0x21CEED5E0]();

    if (a2 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x21CEED5E0](0x6E6D756C6F632031, 0xE800000000000000);
    return 0;
  }

  MEMORY[0x21CEED5E0](0x202C776F722031, 0xE700000000000000);
  if (a2 == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(type metadata accessor for FormattingOptions() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDD8, &qword_21B3581E0);
  sub_21B2CFAF0();
  sub_21B278F78(qword_27CD7EDE0, &qword_27CD7EDD8, &qword_21B3581E0);
  sub_21B34B504();
  MEMORY[0x21CEED5E0](0x736E6D756C6F6320, 0xE800000000000000);
  MEMORY[0x21CEED5E0]();

  return 0;
}

uint64_t sub_21B2CEC7C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(a2 + 24))
    {
      sub_21B34B944();
      v3 = sub_21B34ADA4();

      v4 = sub_21B34ADA4();
      if (v4 <= v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = v4;
      }
    }

    else
    {
      sub_21B34B944();
      v6 = sub_21B34ADA4();

      result = sub_21B34ADA4();
      v5 = v6 + result;
      if (__OFADD__(v6, result))
      {
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 8) >= v5)
    {
      return v5;
    }

    else
    {
      return *(a2 + 8);
    }
  }

  return result;
}

uint64_t sub_21B2CED60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a2 + 24) != 1)
  {
    *&v52 = sub_21B34B944();
    *(&v52 + 1) = v21;
    MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
    v22 = sub_21B2A11F8(*(a2 + 8), v52, *(&v52 + 1));
    v24 = v23;

    if (*(a3 + 16))
    {
      sub_21B233A74(a3 + 32, &v52);
      v26 = *(&v54 + 1);
      v25 = v54;
      __swift_project_boxed_opaque_existential_1(&v52, v54);
      v27 = *(v26 + 8);
      v28 = *(v27 + 48);

      v29 = v28(v25, v27);
      result = sub_21B233960(&v52);
      if (v29 < 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v29)
      {
        v30 = 0;
LABEL_19:
        v31 = sub_21B2FB1D4(0, v29, v30);

        sub_21B23A9F4(0, v29, v30);
        v32 = sub_21B27400C(0, 0xE000000000000000, v31);
        v33 = v22;
        v34 = v24;
        v35 = 0;
        v36 = 0xE000000000000000;
LABEL_26:
        result = sub_21B3419B8(v33, v34, v35, v36, v32, &v52);
        v47 = v55;
        v48 = v53;
        v49 = v54;
        *a4 = v52;
        *(a4 + 16) = v48;
        *(a4 + 24) = v49;
        *(a4 + 40) = v47;
        return result;
      }
    }

    else
    {
    }

    v29 = 0;
    v30 = 2;
    goto LABEL_19;
  }

  *&v52 = a1;
  v7 = sub_21B34B944();
  v8 = *(a2 + 8);
  v10 = sub_21B2A11F8(v8, v7, v9);
  v50 = v11;
  v51 = v10;

  if (!v8)
  {
    v12 = 0;
    v20 = 0xE000000000000000;
    if (*(a3 + 16))
    {
      goto LABEL_21;
    }

LABEL_16:

    goto LABEL_24;
  }

  v12 = 1701998445;
  if (v8 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = sub_21B34AE94();
      v16 = sub_21B2A0BE0(v14, v15);

      v18 = __OFADD__(v13, v16);
      v13 += v16;
      if (v18)
      {
        __break(1u);
        goto LABEL_28;
      }

      v19 = sub_21B34ADB4();
    }

    while (!(v19 >> 18) && v13 < v8);
    if ((v19 & 0xFFFFFFFFFFFFC000) != 0x40000)
    {
      goto LABEL_20;
    }

    v20 = 0xE400000000000000;
    if (!*(a3 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

LABEL_20:
  sub_21B34ADC4();
  v37 = sub_21B34AEB4();
  v38 = MEMORY[0x21CEED540](v37);
  v40 = v39;

  *&v52 = v38;
  *(&v52 + 1) = v40;

  MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

  v12 = v38;
  v20 = *(&v52 + 1);
  if (!*(a3 + 16))
  {
    goto LABEL_16;
  }

LABEL_21:
  sub_21B233A74(a3 + 32, &v52);
  v41 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, v54);
  v42 = *(*(&v41 + 1) + 8);
  v43 = *(v42 + 48);

  v44 = v43(v41, v42);
  result = sub_21B233960(&v52);
  if ((v44 & 0x8000000000000000) == 0)
  {
    if (v44)
    {
      v45 = 0;
LABEL_25:
      v46 = sub_21B2FB1D4(0, v44, v45);

      sub_21B23A9F4(0, v44, v45);
      v32 = sub_21B27400C(0, 0xE000000000000000, v46);
      v34 = v50;
      v33 = v51;
      v35 = v12;
      v36 = v20;
      goto LABEL_26;
    }

LABEL_24:
    v44 = 0;
    v45 = 2;
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_21B2CF1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (*(a2 + 24) == 1)
  {
    *&v44 = a1;
    v7 = sub_21B34B944();
    v8 = *(a2 + 8);
    v10 = sub_21B2A11F8(v8, v7, v9);
    v12 = v11;

    if (v8)
    {
      v13 = 1701998445;
      if (v8 < 1)
      {
LABEL_12:
        sub_21B34ADC4();
        v34 = sub_21B34AEB4();
        v35 = MEMORY[0x21CEED540](v34);
        v37 = v36;

        *&v44 = v35;
        *(&v44 + 1) = v37;

        MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

        v13 = v35;
        v21 = v37;
      }

      else
      {
        v14 = 0;
        do
        {
          v15 = sub_21B34AE94();
          v17 = sub_21B2A0BE0(v15, v16);

          v19 = __OFADD__(v14, v17);
          v14 += v17;
          if (v19)
          {
            __break(1u);
            return result;
          }

          v20 = sub_21B34ADB4();
        }

        while (!(v20 >> 18) && v14 < v8);
        if ((v20 & 0xFFFFFFFFFFFFC000) != 0x40000)
        {
          goto LABEL_12;
        }

        v21 = 0xE400000000000000;
      }
    }

    else
    {
      v13 = 0;
      v21 = 0xE000000000000000;
    }

    v50 = *v4;
    v51 = *(v4 + 2);
    v48 = *(v4 + 24);
    v38 = *(v4 + 40);
    v49 = v38;
    v39 = v48;
    v40 = sub_21B2FB1D4(v48, *(&v48 + 1), v38);
    sub_21B2A62E0(&v50, &v44);
    sub_21B2A633C(&v48, &v44);

    sub_21B23A9F4(v39, *(&v39 + 1), v38);
    v29 = sub_21B27400C(0, 0xE000000000000000, v40);
    v31 = v12;
    v30 = v10;
    v32 = v13;
    v33 = v21;
  }

  else
  {
    *&v50 = a1;
    *&v44 = sub_21B34B944();
    *(&v44 + 1) = v22;
    MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
    v23 = sub_21B2A11F8(*(a2 + 8), v44, *(&v44 + 1));
    v25 = v24;

    v50 = *v4;
    v51 = *(v4 + 2);
    v48 = *(v4 + 24);
    v26 = *(v4 + 40);
    v49 = v26;
    v27 = v48;
    v28 = sub_21B2FB1D4(v48, *(&v48 + 1), v26);
    sub_21B2A62E0(&v50, &v44);
    sub_21B2A633C(&v48, &v44);

    sub_21B23A9F4(v27, *(&v27 + 1), v26);
    v29 = sub_21B27400C(0, 0xE000000000000000, v28);
    v30 = v23;
    v31 = v25;
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  result = sub_21B3419B8(v30, v31, v32, v33, v29, &v44);
  v41 = v47;
  v42 = v45;
  v43 = v46;
  *a3 = v44;
  *(a3 + 16) = v42;
  *(a3 + 24) = v43;
  *(a3 + 40) = v41;
  return result;
}

uint64_t sub_21B2CF548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 24) == 1)
  {
    *&v47 = a1;
    v9 = sub_21B34B944();
    v10 = *(a2 + 8);
    v12 = sub_21B2A11F8(v10, v9, v11);
    v45 = v13;
    v46 = v12;

    if (v10)
    {
      v14 = 1701998445;
      if (v10 < 1)
      {
LABEL_12:
        sub_21B34ADC4();
        v35 = sub_21B34AEB4();
        v36 = MEMORY[0x21CEED540](v35);
        v38 = v37;

        *&v47 = v36;
        *(&v47 + 1) = v38;

        MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

        v14 = v36;
        v22 = v38;
      }

      else
      {
        v15 = 0;
        do
        {
          v16 = sub_21B34AE94();
          v18 = sub_21B2A0BE0(v16, v17);

          v20 = __OFADD__(v15, v18);
          v15 += v18;
          if (v20)
          {
            __break(1u);
            return result;
          }

          v21 = sub_21B34ADB4();
        }

        while (!(v21 >> 18) && v15 < v10);
        if ((v21 & 0xFFFFFFFFFFFFC000) != 0x40000)
        {
          goto LABEL_12;
        }

        v22 = 0xE400000000000000;
      }
    }

    else
    {
      v14 = 0;
      v22 = 0xE000000000000000;
    }

    (*(a4 + 32))(&v47, a3, a4);
    v39 = v49;
    v40 = v50;
    v41 = sub_21B2FB1D4(v49, *(&v49 + 1), v50);

    sub_21B23A9F4(v39, *(&v39 + 1), v40);
    v30 = sub_21B27400C(0, 0xE000000000000000, v41);
    v32 = v45;
    v31 = v46;
    v33 = v14;
    v34 = v22;
  }

  else
  {
    *&v47 = sub_21B34B944();
    *(&v47 + 1) = v23;
    MEMORY[0x21CEED5E0](0x65726F6D20, 0xE500000000000000);
    v24 = sub_21B2A11F8(*(a2 + 8), v47, *(&v47 + 1));
    v26 = v25;

    (*(a4 + 32))(&v47, a3, a4);
    v27 = v49;
    v28 = v50;
    v29 = sub_21B2FB1D4(v49, *(&v49 + 1), v50);

    sub_21B23A9F4(v27, *(&v27 + 1), v28);
    v30 = sub_21B27400C(0, 0xE000000000000000, v29);
    v31 = v24;
    v32 = v26;
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  result = sub_21B3419B8(v31, v32, v33, v34, v30, &v47);
  v42 = v50;
  v43 = v48;
  v44 = v49;
  *a5 = v47;
  *(a5 + 16) = v43;
  *(a5 + 24) = v44;
  *(a5 + 40) = v42;
  return result;
}

uint64_t sub_21B2CF8B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = *a1;
  v5 = sub_21B34B944();
  v7 = sub_21B2A11F8(*(a2 + 8), v5, v6);
  v9 = v8;

  *a3 = v7;
  a3[1] = v9;
  return result;
}

uint64_t sub_21B2CF938(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21B2CF988(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21B2CF9D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_21B2CFA3C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_21B2CFAF0()
{
  result = qword_27CD7EDC8;
  if (!qword_27CD7EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EDC8);
  }

  return result;
}

unint64_t sub_21B2CFB44()
{
  result = qword_280C83778;
  if (!qword_280C83778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C83778);
  }

  return result;
}

uint64_t sub_21B2CFBB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormattingOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B2CFC1C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21B34ADD4();

    return sub_21B34AEB4();
  }

  return result;
}

uint64_t sub_21B2CFCB8(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  sub_21B34B944();
  v5 = sub_21B34ADA4();

  if (*(a3 + 8) >= v5)
  {
    return v5;
  }

  else
  {
    return *(a3 + 8);
  }
}

uint64_t sub_21B2CFD34(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(a2 + 24) == 1)
    {
      sub_21B34B944();
      v3 = sub_21B34ADA4();

      v4 = sub_21B34ADA4();
      if (v4 <= v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = v4;
      }
    }

    else
    {
      sub_21B34B944();
      v6 = sub_21B34ADA4();

      result = sub_21B34ADA4();
      v5 = v6 + result;
      if (__OFADD__(v6, result))
      {
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 8) >= v5)
    {
      return v5;
    }

    else
    {
      return *(a2 + 8);
    }
  }

  return result;
}

double sub_21B2CFE1C@<D0>(uint64_t a1@<X1>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, _OWORD *a5@<X8>)
{
  v9[2] = a1;
  v6 = sub_21B23CCA8(sub_21B2CFEC8, v9, a2, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a4);
  sub_21B3419B8(0, 0xE000000000000000, 0, 0xE000000000000000, v6, v10);
  v7 = v10[1];
  *a5 = v10[0];
  a5[1] = v7;
  result = *&v11;
  a5[2] = v11;
  return result;
}

uint64_t sub_21B2CFEEC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21B34AD44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[1];
  v24 = *a2;
  v25 = v12;
  v26[0] = a2[2];
  *(v26 + 13) = *(a2 + 45);
  v13 = (a1 + 32);
  v14 = *(a1 + 16);
  if (!v14)
  {
    goto LABEL_24;
  }

  if (*v13 != byte_282CA9150)
  {
    goto LABEL_16;
  }

  if (v14 == 1)
  {
    goto LABEL_18;
  }

  if (*(a1 + 33) != byte_282CA9151 || v14 == 2 || *(a1 + 34) != byte_282CA9152 || v14 == 3 || *(a1 + 35) != byte_282CA9153)
  {
LABEL_16:
    if (*v13 == byte_282CA9178 && v14 != 1 && *(a1 + 33) == byte_282CA9179 && v14 != 2 && *(a1 + 34) == byte_282CA917A && v14 != 3 && *(a1 + 35) == byte_282CA917B)
    {
      v15 = result;
      sub_21B34AD24();
      goto LABEL_28;
    }

LABEL_18:
    if (*v13 == byte_282CA91A0)
    {
      if (v14 == 1)
      {
LABEL_24:
        v16 = 0;
LABEL_25:
        v17 = a2[1];
        *(a3 + 8) = *a2;
        *a3 = a1;
        *(a3 + 24) = v17;
        *(a3 + 40) = a2[2];
        *(a3 + 53) = *(a2 + 45);
        *(a3 + 64) = v13;
        *(a3 + 72) = v14;
        *(a3 + 80) = v16;
        *(a3 + 88) = 0;
        *(a3 + 96) = v13;
        *(a3 + 104) = v14;
        *(a3 + 112) = 0;
        *(a3 + 120) = 0;
        *(a3 + 128) = MEMORY[0x277D84F90];
        return result;
      }

      if (*(a1 + 33) == byte_282CA91A1)
      {
        v15 = result;
        sub_21B34ACF4();
        goto LABEL_28;
      }
    }

    if (*v13 == byte_282CA91C8)
    {
      if (v14 == 1)
      {
        goto LABEL_24;
      }

      if (*(a1 + 33) == byte_282CA91C9)
      {
        v15 = result;
        sub_21B34AD14();
        goto LABEL_28;
      }
    }

    v16 = 0;
    if (*v13 == byte_282CA91F0 && v14 != 1)
    {
      v16 = 0;
      if (*(a1 + 33) == byte_282CA91F1 && v14 != 2)
      {
        v16 = 3;
        if (*(a1 + 34) != byte_282CA91F2)
        {
          v16 = 0;
        }
      }
    }

    goto LABEL_25;
  }

  v15 = result;
  sub_21B34AD04();
LABEL_28:
  v18 = sub_21B34ACE4();
  v20 = v19;
  sub_21B27A934();
  swift_allocError();
  *v21 = v18;
  *(v21 + 8) = v20;
  *(v21 + 24) = 0;
  *(v21 + 32) = 0;
  *(v21 + 16) = 0;
  *(v21 + 40) = 1;
  swift_willThrow();
  (*(v7 + 8))(v11, v15);

  v22[0] = v24;
  v22[1] = v25;
  v23[0] = v26[0];
  *(v23 + 13) = *(v26 + 13);
  return sub_21B233788(v22);
}

uint64_t sub_21B2D026C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(v0 + 57);
  v5 = *(v0 + 58);
  v6 = *(v0 + 59);
  v7 = *(v0 + 60);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);
LABEL_3:
  while (2)
  {
    while (2)
    {
      v10 = 0;
      v11 = ~v8;
      result = v9 + v8;
      while (1)
      {
        v14 = *result++;
        v13 = v14;
        if ((v10 & 1) == 0)
        {
          if (((v13 == 34) & v4) == 1)
          {
            if (v1 + v11)
            {
              v3 ^= 1u;
              v8 = -v11;
              goto LABEL_3;
            }

LABEL_19:
            v16 = v1 - v2;
            if (v1 < v2)
            {
              __break(1u);
LABEL_51:
              __break(1u);
            }

            else
            {
              v17 = (v9 + v2);
              result = 1;
              while (1)
              {
                v18 = *v17++;
                v19 = (1 << v18) & 0x100002600;
                if (v18 > 0x20 || v19 == 0)
                {
                  break;
                }

                if (!--v16)
                {
                  return 0;
                }
              }
            }

            return result;
          }

          if (((v7 == v13) & v5) != 1)
          {
            break;
          }
        }

        if (!(v1 + v11))
        {
          goto LABEL_19;
        }

        v10 ^= 1u;
        --v11;
      }

      v15 = v1 + v11;
      if (v3)
      {
        if (v15)
        {
          v3 = 1;
          v8 = -v11;
          continue;
        }

        goto LABEL_19;
      }

      break;
    }

    if (v6 != v13)
    {
      if (v13 != 10 && v13 != 13 && v15)
      {
        v3 = 0;
        v8 = -v11;
        continue;
      }

      goto LABEL_19;
    }

    break;
  }

  if (!(v1 + v11))
  {
    return 2;
  }

  v21 = -v11;
  v22 = -v1;
  result = 2;
  do
  {
    for (i = 0; ; i = 0)
    {
      while (1)
      {
        while (1)
        {
          v24 = 0;
          v25 = ~v21;
          v26 = (v9 + v21);
          v29 = *v26;
          v28 = v26 + 1;
          v27 = v29;
LABEL_31:
          if (((v27 == 34) & v4) != 1)
          {
            break;
          }

          if (v22 == v25)
          {
            return result;
          }

          i ^= 1u;
          v21 = -v25;
        }

        if (((v7 == v27) & v5) == 1)
        {
          while (v22 != v25)
          {
            v24 ^= 1u;
            --v25;
            v30 = *v28++;
            v27 = v30;
            if ((v24 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          return result;
        }

        if ((i & 1) == 0)
        {
          break;
        }

        if (v22 == v25)
        {
          return result;
        }

        i = 1;
        v21 = -v25;
      }

      if (v6 == v27)
      {
        break;
      }

      if (v27 == 10 || v27 == 13 || v22 == v25)
      {
        return result;
      }

      v21 = -v25;
    }

    if (__OFADD__(result++, 1))
    {
      goto LABEL_51;
    }

    v21 = -v25;
  }

  while (v22 != v25);
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_21B2D04D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_21B2D051C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2D058C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B2D05D4(uint64_t result, int a2, int a3)
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

uint64_t sub_21B2D062C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21B34A764();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_21B234324(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_21B2E183C(v11, 0);
      v15 = sub_21B34A6F4();
      sub_21B234324(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t CSVReadingError.row.getter()
{
  result = 0;
  if (((1 << v0[40]) & 0x5D) != 0)
  {
    return *v0;
  }

  return result;
}

uint64_t CSVReadingError.column.getter()
{
  v1 = v0 + 8;
  v2 = *(v0 + 40);
  result = 0;
  if (((1 << v2) & 0x6A) == 0)
  {
    if (((1 << v2) & 0x15) == 0)
    {
      v1 = v0;
    }

    return *v1;
  }

  return result;
}

unint64_t CSVReadingError.description.getter()
{
  v1 = sub_21B34AD44();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = *v0;
  v3 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  if (v7 <= 3)
  {
    if (*(v0 + 40) <= 1u)
    {
      if (*(v0 + 40))
      {
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_21B34B634();
        MEMORY[0x21CEED5E0](0xD000000000000014, 0x800000021B34D160);
        MEMORY[0x21CEED5E0](v4, v3);
        v33 = 0xD000000000000022;
        v34 = 0x800000021B34D180;
LABEL_20:
        MEMORY[0x21CEED5E0](v33, v34);
        return v47;
      }

      sub_21B34B634();

      v47 = 0xD000000000000019;
      v48 = 0x800000021B34D1B0;
      v8 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v8);

      MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE800000000000000);
      v45 = v3;
      v9 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v9);

      MEMORY[0x21CEED5E0](8250, 0xE200000000000000);
      sub_21B260DC0(v5, v6);
      sub_21B2CB408(1024, v5, v6, &v45);
      sub_21B2D062C(v45, v46);
      v10 = MEMORY[0x21CEED760]();
      v12 = v11;

      MEMORY[0x21CEED5E0](v10, v12);
      goto LABEL_18;
    }

    if (v7 != 2)
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD00000000000001FLL, 0x800000021B34D120);
      v35 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v35);

      MEMORY[0x21CEED5E0](0x746365707845202ELL, 0xEB00000000206465);
      v36 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v36);

      MEMORY[0x21CEED5E0](0x756F662074756220, 0xEB0000000020646ELL);
      v45 = v3;
      goto LABEL_17;
    }

    sub_21B34B634();

    v47 = 0xD000000000000017;
    v48 = 0x800000021B34D140;
    v45 = v4;
    v29 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v29);

    v30 = 0x206E6D756C6F6320;
    v31 = 0xE800000000000000;
LABEL_13:
    MEMORY[0x21CEED5E0](v30, v31);
    v45 = v3;
LABEL_17:
    v37 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v37);
LABEL_18:

    goto LABEL_19;
  }

  v13 = *(v0 + 32);
  if (*(v0 + 40) > 5u)
  {
    if (v7 != 6)
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000018, 0x800000021B34CFE0);
      MEMORY[0x21CEED5E0](v6, v13);
      MEMORY[0x21CEED5E0](0xD000000000000017, 0x800000021B34D000);
      MEMORY[0x21CEED5E0](v3, v5);
      MEMORY[0x21CEED5E0](0x646E692074612022, 0xEB00000000207865);
      v45 = v4;
      v39 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v39);

      MEMORY[0x21CEED5E0](8238, 0xE200000000000000);

      MEMORY[0x21CEED5E0](0xD000000000000044, 0x800000021B34D020);

      return v47;
    }

    v47 = 0;
    v48 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD000000000000012, 0x800000021B34D070);
    v45 = v4;
    v32 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v32);

    v30 = 0xD00000000000002ALL;
    v31 = 0x800000021B34D090;
    goto LABEL_13;
  }

  if (v7 != 4)
  {
    sub_21B34B634();

    v47 = 0xD000000000000018;
    v48 = 0x800000021B34D0C0;
    MEMORY[0x21CEED5E0](v4, v3);
LABEL_19:
    v33 = 46;
    v34 = 0xE100000000000000;
    goto LABEL_20;
  }

  sub_21B34AD34();
  sub_21B34ACA4();
  if (v14)
  {
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001CLL, 0x800000021B34D0E0);
    v15 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v15);

    MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE800000000000000);
    v45 = v3;
    v16 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v16);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    LOBYTE(v45) = v5;
    sub_21B34B7C4();
    MEMORY[0x21CEED5E0](8238, 0xE200000000000000);
    sub_21B34B634();

    v17 = sub_21B2CFC1C(1024);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = MEMORY[0x21CEED540](v17, v19, v21, v23);
    v26 = v25;

    MEMORY[0x21CEED5E0](v24, v26);

    MEMORY[0x21CEED5E0](11815, 0xE200000000000000);
    v27 = 0xD000000000000013;
    v28 = 0x800000021B34CEC0;
  }

  else
  {
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001CLL, 0x800000021B34D0E0);
    v40 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v40);

    MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE800000000000000);
    v45 = v3;
    v41 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v41);

    MEMORY[0x21CEED5E0](544432416, 0xE400000000000000);
    LOBYTE(v45) = v5;
    sub_21B34B7C4();
    MEMORY[0x21CEED5E0](8238, 0xE200000000000000);
    sub_21B34B634();

    v47 = 0xD000000000000018;
    v48 = 0x800000021B34D100;
    sub_21B260DC0(v6, v13);
    sub_21B2CB408(1024, v6, v13, &v45);
    sub_21B2D062C(v45, v46);
    v42 = MEMORY[0x21CEED760]();
    v44 = v43;

    MEMORY[0x21CEED5E0](v42, v44);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    v27 = v47;
    v28 = v48;
  }

  v47 = 0;
  v48 = 0xE000000000000000;

  MEMORY[0x21CEED5E0](v27, v28);

  return v47;
}

unint64_t CSVReadingError.errorDescription.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  return CSVReadingError.description.getter();
}

unint64_t sub_21B2D11B0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  return CSVReadingError.description.getter();
}

uint64_t sub_21B2D1204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 41))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 40);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21B2D124C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B2D12C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = sub_21B34A834();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  if (v3[2])
  {
    goto LABEL_6;
  }

  v21 = v3[1];
  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v21 >= *(*v3 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v22 = v3;
  v23 = *v3 + 16 * v21;
  v24 = *(v23 + 32);
  v25 = *(v23 + 40);
  v44 = a1;
  v45 = v43;

  v24(&v44);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    result = sub_21B27DF7C(v12);
    v3 = v22;
LABEL_6:
    v41 = a3;
    v42 = v14;
    v39 = v3;
    v26 = *v3;
    v27 = *(*v3 + 16);
    if (!v27)
    {
      return (*(v42 + 56))(v41, 1, 1, v13);
    }

    v28 = 0;
    v29 = (v42 + 48);
    v30 = (v26 + 40);
    while (v28 < *(v26 + 16))
    {
      v32 = *(v30 - 1);
      v31 = *v30;
      v44 = a1;
      v45 = v43;

      v32(&v44);

      if ((*v29)(v10, 1, v13) != 1)
      {
        v14 = v42;
        v33 = *(v42 + 32);
        v36 = v40;
        v33(v40, v10, v13);
        v37 = v39;
        v39[1] = v28;
        *(v37 + 16) = 0;
        a3 = v41;
        v34 = v41;
        v35 = v36;
        goto LABEL_14;
      }

      ++v28;
      result = sub_21B27DF7C(v10);
      v30 += 2;
      if (v27 == v28)
      {
        return (*(v42 + 56))(v41, 1, 1, v13);
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v33 = *(v14 + 32);
  v33(v20, v12, v13);
  v34 = a3;
  v35 = v20;
LABEL_14:
  v33(v34, v35, v13);
  return (*(v14 + 56))(a3, 0, 1, v13);
}

uint64_t sub_21B2D160C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_21B2D1654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2D16A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v8 = result;
      v5 = MEMORY[0x277D84F90];
      while (a4 != v7)
      {
        v11 = v7;
        result = v8(&v11);
        if (v4)
        {

          return v5;
        }

        if (result)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v12 = v5;
          if ((result & 1) == 0)
          {
            result = sub_21B254034(0, *(v5 + 16) + 1, 1);
            v5 = v12;
          }

          v10 = *(v5 + 16);
          v9 = *(v5 + 24);
          if (v10 >= v9 >> 1)
          {
            result = sub_21B254034((v9 > 1), v10 + 1, 1);
            v5 = v12;
          }

          *(v5 + 16) = v10 + 1;
          *(v5 + 8 * v10 + 32) = v7;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t static Column./= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B2D1990(a1, a2, a3, a4, sub_21B2D237C, sub_21B2D1930);
}

{
  return sub_21B2D1990(a1, a2, a3, a4, sub_21B2D1B34, sub_21B2D1BF8);
}

uint64_t sub_21B2D1990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *))
{
  v21 = *a1;
  v22 = *(a1 + 1);
  type metadata accessor for Column();
  swift_getWitnessTable();
  sub_21B34B194();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = sub_21B2D16A4(a5, v15, v19, v20);
  v14[5] = a2;
  v12 = type metadata accessor for PackedOptionalsArray();
  sub_21B32ABE8(a6, v14, v12);
}

BOOL sub_21B2D1A98(Swift::Int *a1, uint64_t *a2)
{
  v2 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  type metadata accessor for Column();
  v3 = Column.isNil(at:)(v2);

  return !v3;
}

BOOL sub_21B2D1B34(Swift::Int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21B2D1A98(a1, *(v1 + 32));
}

uint64_t *sub_21B2D1B58(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v11 = *result;
    v12 = (a2 + 32);
    v13 = *(*(a4 - 8) + 72);
    do
    {
      v14 = *v12++;
      result = a6(v11 + v13 * v14, a3, a4, a5);
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t static ColumnSlice./= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B2D1CA4(a1, a2, a3, a4, MEMORY[0x277D83F50]);
}

{
  return sub_21B2D1CA4(a1, a2, a3, a4, MEMORY[0x277D83558]);
}

uint64_t sub_21B2D1CA4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v22 = a4;
  v23 = a5;
  v21 = a2;
  v20 = sub_21B34B474();
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v20);
  v10 = &v20 - v9;
  v11 = *(a1 + 2);
  v26 = *a1;
  v27 = v11;
  v28 = *(a1 + 24);
  v12 = type metadata accessor for ColumnSlice();
  swift_getWitnessTable();
  result = sub_21B34B194();
  v15 = v24;
  v14 = v25;
  if (v24 != v25)
  {
    if (v25 >= v24)
    {
      while (v15 < v14)
      {
        v17 = *(a1 + 2);
        v16 = *(a1 + 3);
        v18 = *(a1 + 4);
        v26 = *a1;
        v27 = v17;
        *&v28 = v16;
        *(&v28 + 1) = v18;

        LOBYTE(v18) = ColumnSlice.isNil(at:)(v15);

        if ((v18 & 1) == 0)
        {
          v19 = *(a1 + 2);
          v26 = *a1;
          v27 = v19;
          v28 = *(a1 + 24);
          ColumnSlice.subscript.getter(v15, v12);
          result = (*(*(a3 - 8) + 48))(v10, 1, a3);
          if (result == 1)
          {
            goto LABEL_12;
          }

          v23(v10, v21, a3, v22);
          sub_21B29318C(v10, v15, v12);
          result = (*(v7 + 8))(v10, v20);
        }

        if (v14 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t static DiscontiguousColumnSlice./= infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B2D1F84(a1, a2, a3, a4, MEMORY[0x277D83F50]);
}

{
  return sub_21B2D1F84(a1, a2, a3, a4, MEMORY[0x277D83558]);
}

uint64_t sub_21B2D1F84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v33 = a4;
  v34 = a5;
  v32 = a2;
  v31 = sub_21B34B474();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = v30 - v9;
  v36 = a3;
  v10 = *(a1 + 40);
  v49 = *a1;
  v50 = *(a1 + 1);
  v51 = *(a1 + 3);
  v52 = v10;
  v11 = type metadata accessor for DiscontiguousColumnSlice();
  swift_getWitnessTable();
  sub_21B34B2E4();
  v43 = v47[0];
  v44 = v47[1];
  v45 = v47[2];
  v46 = v48;
  v58[0] = v47[0];
  v58[1] = v47[1];
  v58[2] = v47[2];
  v58[3] = v48;
  v53 = v47[0];
  v54 = v47[1];
  v55 = v47[2];
  v56 = v48;
  v12 = sub_21B34AAF4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v59, v58, v12);
  sub_21B34AAC4();
  v59[0] = v43;
  v59[1] = v44;
  v59[2] = v45;
  v59[3] = v46;
  (*(v13 + 8))(v59, v12);
  sub_21B34AAD4();
  v14 = v57;
  if (v57 == *&v47[0])
  {
LABEL_2:
    v15 = *(&v54 + 1);
    v16 = v55;
    v17 = BYTE8(v55);

    return sub_21B23A9F4(v15, v16, v17);
  }

  v30[0] = v7 + 8;
  v30[1] = v36 - 8;
  v37 = v12;
  v38 = a1;
  while (1)
  {
    v39 = v14;
    sub_21B34AAE4();
    v19 = a1[1];
    v21 = a1[2];
    v20 = a1[3];
    v22 = a1[4];
    v23 = *(a1 + 40);
    *&v47[0] = *a1;
    *(&v47[0] + 1) = v19;
    *&v47[1] = v21;
    *(&v47[1] + 1) = v20;
    *&v47[2] = v22;
    BYTE8(v47[2]) = v23;
    v42 = DiscontiguousColumnSlice.isNil(at:)(v14);
    v24 = *&v47[2];
    v41 = *(&v47[1] + 1);
    v40 = BYTE8(v47[2]);

    sub_21B254074(v20, v22, v23);

    v25 = v24;
    a1 = v38;
    sub_21B23A9F4(v41, v25, v40);
    if (!v42)
    {
      break;
    }

LABEL_4:
    sub_21B34AAD4();
    v14 = v57;
    if (v57 == *&v47[0])
    {
      goto LABEL_2;
    }
  }

  v26 = *(a1 + 40);
  *&v47[0] = *a1;
  *(v47 + 8) = *(a1 + 1);
  *(&v47[1] + 8) = *(a1 + 3);
  BYTE8(v47[2]) = v26;
  v27 = v35;
  v28 = v39;
  DiscontiguousColumnSlice.subscript.getter(v39, v11, v35);
  v29 = v36;
  result = (*(*(v36 - 8) + 48))(v27, 1, v36);
  if (result != 1)
  {
    v34(v27, v32, v29, v33);
    sub_21B2D8534(v27, v28, v11);
    (*v30[0])(v27, v31);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2D2398(unsigned __int8 **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = a2;
  if ((a4 & 8) != 0)
  {
    v9 = *(*a1)++;
  }

  else
  {
    v9 = 0;
  }

  result = sub_21B270D34(a1, a2);
  if (v4)
  {
    return v5;
  }

  v11 = result;
  v12 = *(result + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (result + 32);
    do
    {
      v15 = *v14++;
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_44;
      }

      --v12;
    }

    while (v12);
    if (!v9)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v13 = 0;
    if (!v9)
    {
LABEL_39:
      result = sub_21B34A3DC(a1, v13, a3, v5);
      goto LABEL_12;
    }
  }

  if (v9 != 1)
  {

    sub_21B34B634();

    v31 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v31);

    MEMORY[0x21CEED5E0](46, 0xE100000000000000);
    sub_21B239564();
    swift_allocError();
    *v32 = 0xD000000000000024;
    *(v32 + 8) = 0x800000021B34D1D0;
    *(v32 + 16) = 3;
    swift_willThrow();
    return v5;
  }

  result = sub_21B34A1DC(a1, v13);
LABEL_12:
  v17 = result;
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(v11 + 16) >= v7)
  {
    v18 = 0;
    v33 = result + 32;
    v5 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 8)
    {
      v20 = *(v11 + i);
      v16 = __OFADD__(v18, v20);
      v21 = v18 + v20;
      if (v16)
      {
        break;
      }

      v22 = v21 - v18;
      if (v21 < v18)
      {
        goto LABEL_45;
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      v23 = v17[2];
      if (v23 < v18 || v23 < v21)
      {
        goto LABEL_47;
      }

      if (v23 == v22)
      {

        v25 = v17;
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
        if (v21 != v18)
        {
          if (v22 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E198, &qword_21B351AC8);
            v25 = swift_allocObject();
            v29 = _swift_stdlib_malloc_size(v25);
            v30 = v29 - 32;
            if (v29 < 32)
            {
              v30 = v29 - 25;
            }

            v25[2] = v22;
            v25[3] = 2 * (v30 >> 3);
          }

          memcpy(v25 + 4, (v33 + 8 * v18), 8 * v22);
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B24A5D8(0, v5[2] + 1, 1, v5);
        v5 = result;
      }

      v27 = v5[2];
      v26 = v5[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_21B24A5D8((v26 > 1), v27 + 1, 1, v5);
        v5 = result;
      }

      v5[2] = v27 + 1;
      v5[v27 + 4] = v25;
      v28 = *(v11 + i);
      v16 = __OFADD__(v18, v28);
      v18 += v28;
      if (v16)
      {
        goto LABEL_48;
      }

      if (!--v7)
      {

        return v5;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_21B2D2700(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    goto LABEL_6;
  }

  v3 = *a1;
  if (v3 == 45)
  {
    v4 = 1;
    goto LABEL_8;
  }

  if (v3 != 43)
  {
LABEL_6:
    v4 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v4 = 0;
LABEL_8:
  v5 = 1;
LABEL_9:
  result = 0;
  v7 = &a1[v5];
  for (i = a2 - v5; i; --i)
  {
    if ((*v7 - 58) < 0xF6u)
    {
      return 0;
    }

    v9 = 10 * result;
    if ((result * 10) >> 64 != (10 * result) >> 63)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v10 = *v7 - 48;
    result = v9 + v10;
    ++v7;
    if (__OFADD__(v9, v10))
    {
      __break(1u);
      return 0;
    }
  }

  if (v4)
  {
    v11 = __OFSUB__(0, result);
    result = -result;
    if (v11)
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t sub_21B2D27BC(uint64_t a1, unint64_t a2)
{

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = HIBYTE(a2) & 0xF;
    v10[0] = a1;
    v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v10;
    goto LABEL_7;
  }

  a1 = sub_21B2E1664();
  v7 = v6;

  a2 = v7;
  if ((v7 & 0x2000000000000000) != 0)
  {
    goto LABEL_6;
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
  }

LABEL_7:
  v8 = sub_21B2D2700(v4, v5);

  return v8;
}

uint64_t sub_21B2D2874@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v73 = a1;
  v74 = a2;
  v54 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v80 = *(TupleTypeMetadata2 - 8);
  v10 = *(v80 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v72 = &v53 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = sub_21B34B424();
  v77 = *(v62 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v53 - v16;
  v17 = *(a4 + 8);
  v78 = swift_getAssociatedTypeWitness();
  v71 = *(v78 - 8);
  v18 = *(v71 + 64);
  v19 = MEMORY[0x28223BE20](v78);
  v21 = &v53 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v82 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v75 = &v53 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v53 - v28;
  v76 = AssociatedConformanceWitness;
  v65 = type metadata accessor for _RangeSet();
  v53 = *(v65 - 8);
  v30 = *(v53 + 64);
  MEMORY[0x28223BE20](v65);
  v32 = &v53 - v31;
  if (sub_21B34B214())
  {
    return sub_21B296B94(AssociatedTypeWitness, v76);
  }

  v60 = v32;
  sub_21B296B94(AssociatedTypeWitness, v76);
  sub_21B34B1B4();
  v79 = (v22 + 8);
  v70 = (v71 + 16);
  v71 += 8;
  v58 = (v22 + 16);
  v57 = (v80 + 16);
  v67 = (v22 + 32);
  v56 = (v80 + 32);
  v55 = (v77 + 8);
  v68 = a3;
  v69 = a4;
  v59 = v21;
  while (1)
  {
    v35 = v75;
    sub_21B34B234();
    v36 = *(v76 + 8);
    v37 = sub_21B34AC54();
    v80 = *v79;
    (v80)(v35, AssociatedTypeWitness);
    if (v37)
    {
      (v80)(v29, AssociatedTypeWitness);
      return (*(v53 + 32))(v54, v60, v65);
    }

    sub_21B34B1E4();
    v38 = sub_21B34B314();
    (*v70)(v21);
    v38(v81, 0);
    v39 = v73(v21);
    if (v6)
    {
      (*v71)(v21, v78);
      v52 = v80;
      (v80)(v82, AssociatedTypeWitness);
      v52(v29, AssociatedTypeWitness);
      return (*(v53 + 8))(v60, v65);
    }

    v40 = v39;
    (*v71)(v21, v78);
    v77 = 0;
    if ((v40 & 1) == 0)
    {
      (v80)(v29, AssociatedTypeWitness);
      v34 = *v67;
      goto LABEL_5;
    }

    v41 = v82;
    result = sub_21B34ABB4();
    if ((result & 1) == 0)
    {
      break;
    }

    v42 = *v58;
    v43 = v72;
    (*v58)(v72, v29, AssociatedTypeWitness);
    v44 = TupleTypeMetadata2;
    v42(&v43[*(TupleTypeMetadata2 + 48)], v41, AssociatedTypeWitness);
    v45 = v63;
    (*v57)(v63, v43, v44);
    v46 = *(v44 + 48);
    v66 = *v67;
    v47 = v61;
    v66(v61, v45, AssociatedTypeWitness);
    (v80)(&v45[v46], AssociatedTypeWitness);
    v34 = v66;
    (*v56)(v45, v72, v44);
    v48 = *(v44 + 48);
    v49 = v62;
    v34(v47 + *(v62 + 36), &v45[v48], AssociatedTypeWitness);
    v50 = v80;
    (v80)(v45, AssociatedTypeWitness);
    sub_21B296B98(v47, v65);
    v51 = v47;
    v21 = v59;
    (*v55)(v51, v49);
    v50(v29, AssociatedTypeWitness);
LABEL_5:
    v34(v29, v82, AssociatedTypeWitness);
    v6 = v77;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2D3090@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = v6;
  v48 = a1;
  v49 = a2;
  v11 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v47 = &v39 - v14;
  v46 = swift_getAssociatedTypeWitness();
  v15 = *(v46 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v46);
  v41 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  v21 = sub_21B34B1D4();
  v54 = a5;
  v51 = a4;
  v52 = v5;
  v50 = a3;
  result = sub_21B34B1B4();
  if (v21 >= 1)
  {
    v23 = (v12 + 16);
    v24 = (v12 + 8);
    v44 = (v15 + 8);
    v45 = v23;
    v40 = (v15 + 32);
    v25 = AssociatedTypeWitness;
    while (1)
    {
      sub_21B34B1F4();
      v32 = sub_21B34B314();
      v33 = v47;
      (*v45)(v47);
      v32(v53, 0);
      v34 = v48(v33);
      if (v7)
      {
        break;
      }

      v35 = v34;
      (*v24)(v33, v25);
      if (v35)
      {
        result = (*v44)(v20, v46);
        v21 = v21 >> 1;
      }

      else
      {
        v43 = 0;
        v26 = v24;
        v27 = v41;
        sub_21B34B1E4();
        v28 = *v44;
        v29 = v46;
        (*v44)(v20, v46);
        v30 = v54;
        v28(v54, v29);
        v31 = v27;
        v24 = v26;
        v25 = AssociatedTypeWitness;
        v7 = v43;
        result = (*v40)(v30, v31, v29);
        v21 += ~(v21 >> 1);
      }

      if (v21 <= 0)
      {
        return result;
      }
    }

    (*v24)(v33, v25);
    v36 = *v44;
    v37 = v20;
    v38 = v46;
    (*v44)(v37, v46);
    return v36(v54, v38);
  }

  return result;
}

uint64_t ShapedData.init(shape:strides:contents:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1[2];
  if (v8)
  {
    v9 = a1 + 4;
    v10 = 1;
    v11 = a1[2];
    while (1)
    {
      v12 = *v9++;
      v13 = v10 * v12;
      if ((v10 * v12) >> 64 != (v10 * v12) >> 63)
      {
        break;
      }

      v10 = v13;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = 1;
LABEL_7:
    result = sub_21B34B004();
    if (v13 == result)
    {
      *a4 = a1;
      a4[1] = a2;
      a4[2] = a3;
      return result;
    }
  }

  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000022, 0x800000021B34D200);
  v15 = MEMORY[0x21CEED760](a1, MEMORY[0x277D83B88]);
  MEMORY[0x21CEED5E0](v15);

  MEMORY[0x21CEED5E0](0x746365707845202ELL, 0xEB00000000206465);
  if (v8)
  {
    v16 = a1[2];
    if (v16)
    {
      v17 = a1[4];
      v18 = a1 + 5;
      v19 = 1;
      while (v8 != v19)
      {
        if (v19 >= v16)
        {
          goto LABEL_17;
        }

        ++v19;
        v20 = *v18++;
        v21 = (v17 * v20) >> 64;
        v17 *= v20;
        if (v21 != v17 >> 63)
        {
          __break(1u);
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      __break(1u);
    }
  }

  v22 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v22);

  MEMORY[0x21CEED5E0](0x746E656D656C6520, 0xEF20747562202C73);
  v23 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v23);

  MEMORY[0x21CEED5E0](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t ShapedData.subscript.getter(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v2 + 2);
  sub_21B2D370C(a1);
  v4 = *(a2 + 16);

  return sub_21B34B094();
}

uint64_t sub_21B2D370C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  if (v3 == *(v2 + 16))
  {
    result = 0;
    v6 = (a1 + 32);
    v7 = (v2 + 32);
    while (v3)
    {
      v8 = *v6 * *v7;
      if ((*v6 * *v7) >> 64 != v8 >> 63)
      {
        __break(1u);
        goto LABEL_10;
      }

      ++v7;
      ++v6;
      --v3;
      v9 = __OFADD__(result, v8);
      result += v8;
      if (v9)
      {
        __break(1u);
        return result;
      }
    }
  }

  else
  {
LABEL_10:
    sub_21B34B634();

    v10 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v10);

    MEMORY[0x21CEED5E0](0x73656369646E6920, 0xEA0000000000202CLL);
    v11 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](0x656469766F727020, 0xEA00000000002E64);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t static ShapedData<A>.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v7 = a1[2];
  v9 = a2[1];
  v10 = a2[2];
  if (v4)
  {
    v11 = v2 == v3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_10:
    if (sub_21B247340(result, v9))
    {

      return sub_21B34B074();
    }

    return 0;
  }

  v12 = (v2 + 32);
  v13 = (v3 + 32);
  while (v4)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    ++v12;
    ++v13;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B2D3988(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static ShapedData<A>.== infix(_:_:)(a1, a2);
}

uint64_t ShapedData<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[2];
  MEMORY[0x21CEEE3B0](*(*v4 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = (v9 + 32);
    do
    {
      v13 = *v12++;
      MEMORY[0x21CEEE3B0](v13);
      --v11;
    }

    while (v11);
  }

  MEMORY[0x21CEEE3B0](*(v8 + 16));
  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = (v8 + 32);
    do
    {
      v16 = *v15++;
      MEMORY[0x21CEEE3B0](v16);
      --v14;
    }

    while (v14);
  }

  v17 = *(a2 + 16);

  return MEMORY[0x2821FC380](a1, v10, v17, a3);
}

uint64_t ShapedData<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 2);
  v8 = *v2;
  v9 = v5;
  sub_21B34BBC4();
  ShapedData<A>.hash(into:)(v7, a1, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2D3AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  ShapedData<A>.hash(into:)(v6, a2, v4);
  return sub_21B34BC24();
}

uint64_t sub_21B2D3B60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_21B2D3BC4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v2;
  return result;
}

uint64_t sub_21B2D3BE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return 0;
  }

  if (a4 != 1)
  {
    v4 = 1;
    goto LABEL_6;
  }

  v4 = *(a2 + 16);
  if (v4)
  {
LABEL_6:
    v5 = 0;
    while (1)
    {
      v6 = v4 >> 1;
      v7 = v5 + (v4 >> 1);
      if (__OFADD__(v5, v4 >> 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (a4)
      {
        if (v7 > *(a2 + 16))
        {
          goto LABEL_34;
        }
      }

      else if (v7 > 1)
      {
        goto LABEL_34;
      }

      if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_39;
        }

        if (v7 >= *(a2 + 16))
        {
          goto LABEL_35;
        }

        if (*(a2 + 32 + 16 * v7 + 8) > a1)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v7)
        {
          goto LABEL_36;
        }

        if (a3 > a1)
        {
          goto LABEL_9;
        }
      }

      if (a4)
      {
        v5 = *(a2 + 16);
        if (v7 >= v5)
        {
LABEL_24:
          __break(1u);
LABEL_25:
          if (a4)
          {
            goto LABEL_26;
          }

          if (v5 == 1)
          {
            return 0;
          }

          if (v5)
          {
            goto LABEL_38;
          }

          return a2 <= a1;
        }
      }

      else
      {
        v5 = 1;
        if (v7)
        {
          goto LABEL_24;
        }
      }

      v5 = v7 + 1;
      v6 = v4 + ~v6;
LABEL_9:
      v4 = v6;
      if (v6 <= 0)
      {
        goto LABEL_25;
      }
    }
  }

  v5 = 0;
LABEL_26:
  v8 = *(a2 + 16);
  if (v5 == v8)
  {
    return 0;
  }

  if (v5 < v8)
  {
    a2 = *(a2 + 16 * v5 + 32);
    return a2 <= a1;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

__n128 sub_21B2D3D88@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = a1[1];
  v10 = a1[2];
  v21 = *a1;
  v22 = v9;
  v23 = v10;
  v15[0] = a2;
  v15[1] = a3;
  v16 = a4;
  v11 = type metadata accessor for Column();
  WitnessTable = swift_getWitnessTable();
  sub_21B283B30(v15, v11, WitnessTable, &v17);
  sub_21B23A9F4(a2, a3, a4);

  v13 = v20;
  *a5 = v17;
  result = v19;
  *(a5 + 8) = v18;
  *(a5 + 24) = result;
  *(a5 + 40) = v13;
  return result;
}

uint64_t DiscontiguousColumnSlice.count.getter(uint64_t a1)
{
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = *(v1 + 3);
  v8 = *(v1 + 40);
  v2 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v3 = type metadata accessor for _DiscontiguousSlice();
  return sub_21B285500(v3);
}

void *DiscontiguousColumnSlice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v12 = *(v3 + 1);
  if (sub_21B2D3BE8(a1, v3[3], v3[4], *(v3 + 40)))
  {
    v8 = *(a2 + 16);
    v9 = type metadata accessor for Column();
    return Column.subscript.getter(a1, v9, a3);
  }

  else
  {
    sub_21B34B634();

    v11 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v11);

    MEMORY[0x21CEED5E0](0xD00000000000001BLL, 0x800000021B34CDD0);
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

__n128 DiscontiguousColumnSlice.init(column:ranges:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v17 = 0;
  *&v18 = 0;
  BYTE8(v18) = 2;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = (a2 + 40);
    do
    {
      sub_21B28DFBC(*(v8 - 1), *v8);
      v8 += 2;
      --v7;
    }

    while (v7);

    v7 = v17;
    v9 = v18;
    v10 = BYTE8(v18);
  }

  else
  {

    v9 = 0;
    v10 = 2;
  }

  v21 = v5;
  v22 = v4;
  v23 = v6;
  v15[0] = v7;
  v15[1] = v9;
  v16 = v10;
  v11 = type metadata accessor for Column();
  WitnessTable = swift_getWitnessTable();
  sub_21B283B30(v15, v11, WitnessTable, &v17);
  sub_21B23A9F4(v7, v9, v10);

  v13 = v20;
  *a3 = v17;
  result = v19;
  *(a3 + 8) = v18;
  *(a3 + 24) = result;
  *(a3 + 40) = v13;
  return result;
}

uint64_t sub_21B2D4178(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return 0;
  }

  if (a4 != 1)
  {
    v4 = 1;
    goto LABEL_6;
  }

  v4 = *(a2 + 16);
  if (v4)
  {
LABEL_6:
    v5 = 0;
    while (1)
    {
      v6 = v4 >> 1;
      v7 = v5 + (v4 >> 1);
      if (__OFADD__(v5, v4 >> 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (a4)
      {
        if (v7 > *(a2 + 16))
        {
          goto LABEL_36;
        }
      }

      else if (v7 > 1)
      {
        goto LABEL_36;
      }

      if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_42;
        }

        if (v7 >= *(a2 + 16))
        {
          goto LABEL_37;
        }

        if (*(a2 + 32 + 16 * v7 + 8) > a1)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v7)
        {
          goto LABEL_38;
        }

        if (a3 > a1)
        {
          goto LABEL_7;
        }
      }

      if (a4)
      {
        if (v7 >= *(a2 + 16))
        {
          goto LABEL_41;
        }
      }

      else if (v7)
      {
        goto LABEL_41;
      }

      v5 = v7 + 1;
      v6 = v4 + ~v6;
LABEL_7:
      v4 = v6;
      if (v6 <= 0)
      {
        if (a4)
        {
          goto LABEL_26;
        }

        if (v5 == 1)
        {
          return 0;
        }

        if (v5)
        {
          goto LABEL_40;
        }

LABEL_32:
        if (a2 <= a1)
        {
          return v5;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v5 = 0;
LABEL_26:
  v8 = *(a2 + 16);
  if (v5 == v8)
  {
    return 0;
  }

  if (v5 < v8)
  {
    a2 = *(a2 + 16 * v5 + 32);
    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t DiscontiguousColumnSlice.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B2D8534(a1, a2, a3);
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t DiscontiguousColumnSlice.name.getter()
{
  v0 = sub_21B233AD0();

  return v0;
}

uint64_t sub_21B2D43D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 3);
  v11 = *(a1 + 40);
  type metadata accessor for DiscontiguousColumnSlice();
  *a4 = sub_21B233AD0();
  a4[1] = v6;
}

uint64_t sub_21B2D4450(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DiscontiguousColumnSlice.name.setter(v1, v2);
}

uint64_t DiscontiguousColumnSlice.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*DiscontiguousColumnSlice.name.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;

  return sub_21B2D4518;
}

uint64_t sub_21B2D4518(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    v6 = v4[1];

    *v4 = v3;
    v4[1] = v2;
  }

  else
  {
    v8 = v4[1];

    *v4 = v3;
    v4[1] = v2;
  }

  return result;
}

uint64_t DiscontiguousColumnSlice.prototype.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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

uint64_t DiscontiguousColumnSlice.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v15 = *a1;
  *&v16 = v3;
  *(&v16 + 1) = v5;
  v6 = type metadata accessor for Column();
  result = Column.count.getter(v6);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v19 = v4;
    v20 = v3;
    v21 = v5;
    v13[0] = 0;
    v13[1] = result;
    v9 = 2 * (result == 0);
    v14 = v9;
    WitnessTable = swift_getWitnessTable();
    sub_21B283B30(v13, v6, WitnessTable, &v15);
    sub_21B23A9F4(0, v8, v9);

    v11 = v18;
    *a2 = v15;
    v12 = v17;
    *(a2 + 8) = v16;
    *(a2 + 24) = v12;
    *(a2 + 40) = v11;
  }

  return result;
}

uint64_t DiscontiguousColumnSlice.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  v25 = v8;
  v32[0] = v8;
  v32[1] = v9;
  v32[2] = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v28 = *(a3 + 16);
  v29 = a4;
  v30 = a1;
  v31 = a2;
  swift_bridgeObjectRetain_n();

  sub_21B254074(v11, v12, v13);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v14 = type metadata accessor for _DiscontiguousSlice();
  v15 = sub_21B34B474();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_21B2FCC28(sub_21B2D8668, v27, v14, v15, v16, WitnessTable, MEMORY[0x277D84950], &v36);
  v19 = v33;
  v20 = v34;
  v21 = v35;

  sub_21B23A9F4(v19, v20, v21);
  if (v6)
  {
  }

  v32[0] = v18;
  v23 = sub_21B34B054();
  v24 = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v25, v9, v32, a4, v23, v24, a5);
}

void DiscontiguousColumnSlice.filter(_:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a1;
  v41 = a2;
  v7 = *(a3 + 16);
  v37 = a4;
  v38 = v7;
  v8 = sub_21B34B474();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = &v35 - v10;
  v90 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_21B34B474();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v35 - v15);
  v18 = *v4;
  v17 = v4[1];
  v20 = v4[2];
  v19 = v4[3];
  *&v45 = v4[4];
  *(&v45 + 1) = v19;
  LODWORD(v44) = *(v4 + 40);
  v86 = 0;
  v87 = 0;
  v88 = 2;
  v71 = v18;
  v72 = v17;
  v73 = v20;
  v74 = v19;
  v75 = v45;
  v76 = v44;
  WitnessTable = swift_getWitnessTable();
  sub_21B34B2E4();
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  *&v35 = v18;
  *(&v35 + 1) = v17;
  v61 = v18;
  v62 = v17;
  v36 = v20;
  v63 = v20;
  v64 = *(&v45 + 1);
  v65 = v45;
  v66 = v44;
  v21 = a3;
  v22 = sub_21B34AAF4();
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  sub_21B34BA54();
  v89[0] = v67;
  v89[1] = v68;
  v89[2] = v69;
  v89[3] = v70;
  (*(*(v22 - 8) + 8))(v89, v22);
  v59 = v51;
  v60[0] = v52[0];
  *(v60 + 9) = *(v52 + 9);
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  *&v45 = v22;
  *(&v45 + 1) = v21;
  *&v67 = v22;
  *(&v67 + 1) = v21;
  WitnessTable = v24;
  v44 = v23;
  *&v68 = v23;
  *(&v68 + 1) = v24;
  sub_21B34B674();
  sub_21B34B644();
  v42 = TupleTypeMetadata2 - 8;
  v25 = (v39 + 32);
  for (i = (v39 + 8); ; (*i)(v46, v90))
  {
    v47 = v45;
    *&v48 = v44;
    *(&v48 + 1) = WitnessTable;
    v27 = sub_21B34B664();
    sub_21B34B654();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      v52[1] = v83;
      v53 = v84;
      v54 = v85;
      v49 = v79;
      v50 = v80;
      v51 = v81;
      v52[0] = v82;
      v47 = v77;
      v48 = v78;
      (*(*(v27 - 8) + 8))(&v47, v27);
      v55 = v35;
      *&v56 = v36;
      v33 = v86;
      v32 = v87;
      v34 = v88;

      sub_21B2D3D88(&v55, v33, v32, v34, v37);
      return;
    }

    v28 = *v16;
    v29 = v46;
    (*v25)(v46, v16 + *(TupleTypeMetadata2 + 48), v90);
    v30 = v40(v29);
    if (v5)
    {
      (*i)(v46, v90);
      v52[1] = v83;
      v53 = v84;
      v54 = v85;
      v49 = v79;
      v50 = v80;
      v51 = v81;
      v52[0] = v82;
      v47 = v77;
      v48 = v78;
      (*(*(v27 - 8) + 8))(&v47, v27);
      sub_21B23A9F4(v86, v87, v88);
      return;
    }

    if ((v30 & 1) == 0)
    {
      continue;
    }

    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v31 < v28)
    {
      goto LABEL_12;
    }

    sub_21B28DFBC(v28, v31);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t DiscontiguousColumnSlice.eraseToAnyColumn()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  a2[3] = a1;
  a2[4] = &off_282CAB618;
  v9 = *(v2 + 40);
  v10 = swift_allocObject();
  *a2 = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;

  return sub_21B254074(v7, v8, v9);
}

void (*sub_21B2D4EA8(void *a1))(void *)
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
  v2[4] = DiscontiguousColumnSlice.name.modify(v2);
  return sub_21B28A810;
}

uint64_t sub_21B2D4F48(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v4 = *(v2 + 40);
  v8[2] = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 24);
  v11 = v4;
  v5 = *(a1 + 16);
  type metadata accessor for Column();
  swift_getWitnessTable();
  v6 = type metadata accessor for _DiscontiguousSlice();
  a2(v8, v6);
  return v8[1];
}

Swift::Int __swiftcall DiscontiguousColumnSlice.index(after:)(Swift::Int after)
{
  v3 = v1;
  v5 = *v2;
  v18 = *(v2 + 1);
  v7 = v2[3];
  v6 = v2[4];
  v8 = *(v2 + 40);
  v9 = sub_21B2D4178(after, v7, v6, *(v2 + 40));
  if (v10)
  {
    goto LABEL_23;
  }

  v11 = v9;
  result = after + 1;
  if (__OFADD__(after, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v8)
  {
    if (!v11)
    {
      if (result < v7 || result >= v6)
      {
        return DiscontiguousColumnSlice.endIndex.getter(v3);
      }

      return result;
    }

    goto LABEL_20;
  }

  if (v8 != 1)
  {
LABEL_23:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if (v11 >= *(v7 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v7 + 16 * v11;
  v15 = *(v13 + 32);
  v14 = *(v13 + 40);
  if (result < v15 || result >= v14)
  {
    v17 = v11 + 1;
    if (v17 < *(v7 + 16))
    {
      return *(v7 + 16 * v17 + 32);
    }

    return DiscontiguousColumnSlice.endIndex.getter(v3);
  }

  return result;
}