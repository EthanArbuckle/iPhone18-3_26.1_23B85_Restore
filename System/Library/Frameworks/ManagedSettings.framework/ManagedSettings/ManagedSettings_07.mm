uint64_t sub_20E4960C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_20E496138(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = sub_20E4C6780();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20E49621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](a1, a2);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 16))
  {
    v14 = *(v8 + 36);
    v15 = *(v8 + 16);
    v27[0] = *(v8 + 24);
    v27[1] = v14;
    v28 = v15;
    v29 = v9;
    v30 = v27[0];
    v31 = v10;
    v16 = v8;
    v17 = v9;
    v18 = _s13PublisherBaseV7ConduitCMa();
    (*(v5 + 16))(v12, a1, v17);
    v19 = *(v16 + 44);
    v20 = (v3 + *(v16 + 40));
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v3 + v19);
    v24 = *(v3 + v19 + 8);
    v25 = *(v18 + 48);
    v26 = *(v18 + 52);
    swift_allocObject();

    v28 = sub_20E496460(v12, v13, v21, v22, v23, v24);
    swift_getWitnessTable();
    sub_20E4C6330();
  }

  return result;
}

char *sub_20E4963D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return sub_20E496460(a1, a2, a3, a4, a5, a6);
}

char *sub_20E496460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v7 = *v6;
  v8 = *(*v6 + 88);
  v9 = sub_20E4C6780();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v24 - v13;
  v15 = *(v7 + 136);
  v16 = *(v8 - 8);
  v17 = *(v16 + 56);
  v17(&v6[v15], 1, 1, v8);
  v18 = &v6[*(*v6 + 144)];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = *(*v6 + 152);
  *&v6[v19] = sub_20E4C6250();
  v6[*(*v6 + 160)] = 1;
  v20 = *(*v6 + 168);
  *&v6[v20] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  (*(v16 + 32))(v14, v25, v8);
  v17(v14, 0, 1, v8);
  swift_beginAccess();
  (*(v10 + 40))(&v6[v15], v14, v9);
  swift_endAccess();
  v21 = v27;
  *(v6 + 2) = v26;
  *(v6 + 3) = v21;
  v22 = v29;
  *(v6 + 4) = v28;
  *(v6 + 5) = v22;
  *(v6 + 6) = v30;
  return v6;
}

char *sub_20E4966BC()
{
  v1 = *v0;
  sub_20E49679C();
  v2 = *(v0 + 2);

  v3 = *(v0 + 4);

  v4 = *(v0 + 6);

  v5 = *(*v0 + 136);
  v6 = *(v1 + 88);
  v7 = sub_20E4C6780();
  (*(*(v7 - 8) + 8))(&v0[v5], v7);
  sub_20E498514(&v0[*(*v0 + 144)]);

  return v0;
}

uint64_t sub_20E49679C()
{
  v38 = *v0;
  v1 = v38;
  v40 = sub_20E4C61F0();
  v39 = *(v40 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v40, v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v38 + 88);
  v6 = sub_20E4C6780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v36 - v14;
  v16 = *(v1 + 168);
  [*(v0 + v16) lock];
  v17 = *(*v0 + 160);
  if (*(v0 + v17) != 1)
  {
    return [*(v0 + v16) unlock];
  }

  v18 = *(*v0 + 136);
  swift_beginAccess();
  v19 = *(v7 + 16);
  v36 = v18;
  v19(v15, v0 + v18, v6);
  v20 = *(v5 - 8);
  v21 = v12;
  v22 = v16;
  v23 = (*(v20 + 48))(v15, 1, v5);
  (*(v7 + 8))(v15, v6);
  v24 = v23 == 1;
  v16 = v22;
  if (v24)
  {
    return [*(v0 + v16) unlock];
  }

  v25 = v21;
  v26 = *(*v0 + 144);
  swift_beginAccess();
  sub_20E498434(v0 + v26, v44);
  *(v0 + v17) = 0;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  swift_beginAccess();
  sub_20E4984A4(&v41, v0 + v26);
  swift_endAccess();
  (*(v20 + 56))(v21, 1, 1, v5);
  v27 = v36;
  swift_beginAccess();
  (*(v7 + 40))(v0 + v27, v25, v6);
  swift_endAccess();
  v28 = *(*v0 + 152);
  swift_beginAccess();
  v29 = *(v0 + v28);
  sub_20E4C6260();
  result = sub_20E4C6240();
  if (result)
  {
    *(v0 + v28) = sub_20E4C6250();
    [*(v0 + v16) unlock];
  }

  else
  {
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    *(v0 + v28) = sub_20E4C6250();
    [*(v0 + v16) unlock];
    if (!v29)
    {
      goto LABEL_11;
    }
  }

  v31 = v0[5];
  v32 = v0[6];
  swift_getWitnessTable();
  v33 = v37;
  sub_20E4C61E0();
  v31(v33);
  (*(v39 + 8))(v33, v40);
LABEL_11:
  sub_20E498434(v44, &v41);
  if (*(&v42 + 1))
  {
    v34 = v43;
    __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
    v35 = *(v34 + 8);
    sub_20E4C6230();
    sub_20E498514(v44);
    return __swift_destroy_boxed_opaque_existential_0(&v41);
  }

  else
  {
    sub_20E498514(v44);
    return sub_20E498514(&v41);
  }
}

uint64_t sub_20E496C9C()
{
  v0 = *sub_20E4966BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_20E496D08(uint64_t a1)
{
  sub_20E4970E4();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_20E497140();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E496DA8(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_20E496EF8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_20E4970E4()
{
  if (!qword_27C8CF6E8)
  {
    sub_20E466ED4();
    v0 = sub_20E4C6680();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8CF6E8);
    }
  }
}

unint64_t sub_20E497140()
{
  result = qword_27C8CF6F0;
  if (!qword_27C8CF6F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27C8CF6F0);
  }

  return result;
}

uint64_t sub_20E497190(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = sub_20E4C6780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v28 - v11;
  v13 = *(v5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = &v28 - v16;
  v18 = *(v3 + 168);
  [*(v1 + v18) lock];
  v19 = *v1;
  if (*(v1 + *(*v1 + 160)) == 1)
  {
    v29 = v4;
    v20 = *(v19 + 136);
    swift_beginAccess();
    (*(v7 + 16))(v12, v1 + v20, v6);
    if ((*(v13 + 48))(v12, 1, v5) == 1)
    {
      (*(v7 + 8))(v12, v6);
    }

    else
    {
      (*(v13 + 32))(v17, v12, v5);
      v21 = *(*v1 + 144);
      swift_beginAccess();
      sub_20E498434(v1 + v21, v30);
      v22 = v31;
      sub_20E498514(v30);
      if (!v22)
      {
        sub_20E442818(a1, v30);
        swift_beginAccess();
        sub_20E4984A4(v30, v1 + v21);
        swift_endAccess();
        [*(v1 + v18) unlock];
        v26 = v29;
        v31 = v29;
        WitnessTable = swift_getWitnessTable();
        v30[0] = v1;
        v27 = *(v26 + 104);

        sub_20E4C6210();
        (*(v13 + 8))(v17, v5);
        return __swift_destroy_boxed_opaque_existential_0(v30);
      }

      (*(v13 + 8))(v17, v5);
    }
  }

  [*(v1 + v18) unlock];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = *(v23 + 8);
  return sub_20E4C6230();
}

uint64_t sub_20E497548(uint64_t a1)
{
  v60 = *v1;
  v3 = v60;
  v4 = sub_20E4C61F0();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v60 + 88);
  v9 = sub_20E4C6780();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v54 - v14;
  v16 = *(v8 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  v20 = &v54 - v19;
  v21 = *(v3 + 168);
  [*(v1 + v21) lock];
  v22 = *v1;
  v23 = *(*v1 + 160);
  if (*(v1 + v23) != 1)
  {
    goto LABEL_4;
  }

  v56 = v20;
  v24 = v16;
  v25 = *(v22 + 136);
  swift_beginAccess();
  v26 = v1 + v25;
  v27 = v24;
  (*(v10 + 16))(v15, v26, v9);
  if ((*(v24 + 48))(v15, 1, v8) == 1)
  {
    (*(v10 + 8))(v15, v9);
LABEL_4:
    [*(v1 + v21) unlock];
    return sub_20E4C6250();
  }

  v29 = *(v24 + 32);
  v30 = v56;
  v29(v56, v15, v8);
  v31 = *(*v1 + 152);
  swift_beginAccess();
  v32 = *(v1 + v31);
  sub_20E4C6260();
  result = sub_20E4C6240();
  if ((result & 1) == 0)
  {
    if (v32 < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    if (!v32)
    {
      (*(v27 + 8))(v30, v8);
      goto LABEL_4;
    }
  }

  v33 = v1[2];

  v34 = sub_20E482C08(v33, a1);
  if (!v34[2])
  {

    [*(v1 + v21) unlock];
    (*(v27 + 8))(v30, v8);
    return 1;
  }

  v35 = v34;
  swift_beginAccess();
  v36 = *(v1 + v31);
  sub_20E4C6260();
  if ((sub_20E4C6240() & 1) == 0)
  {
    sub_20E4C6260();
    result = sub_20E4C6240();
    if (result)
    {
      v37 = sub_20E4C6260();
    }

    else
    {
      if (v36 < 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (!v36)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v37 = v36 - 1;
    }

    *(v1 + v31) = v37;
  }

  swift_endAccess();
  v55 = v31;
  v38 = *(v1 + v31);
  sub_20E4C6250();
  v39 = sub_20E4C6240();
  v40 = v1;
  [*(v1 + v21) unlock];
  v61 = v35;
  v41 = *(v60 + 104);
  v42 = sub_20E4C6220();

  sub_20E4C6260();
  v43 = v42;
  result = sub_20E4C6240();
  if (result)
  {
LABEL_21:
    v44 = v40;
    [*(v40 + v21) lock];
    if (*(v40 + v23) != 1)
    {
      [*(v40 + v21) unlock];
      v43 = sub_20E4C6250();
LABEL_38:
      (*(v27 + 8))(v30, v8);
      return v43;
    }

    v45 = v55;
    swift_beginAccess();
    v46 = *(v40 + v45);
    sub_20E4C6260();
    if (sub_20E4C6240())
    {
LABEL_37:
      swift_endAccess();
      [*(v44 + v21) unlock];
      goto LABEL_38;
    }

    sub_20E4C6260();
    v47 = sub_20E4C6240();
    v48 = sub_20E4C6260();
    if (v47)
    {
      v30 = v56;
LABEL_36:
      *(v44 + v45) = v48;
      goto LABEL_37;
    }

    result = sub_20E4C6240();
    v30 = v56;
    if (result)
    {
      goto LABEL_33;
    }

    if (((v46 | v42) & 0x8000000000000000) == 0)
    {
      v48 = v46 + v42;
      if (!__OFADD__(v46, v42))
      {
        if ((v48 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_44;
      }

LABEL_33:
      v48 = sub_20E4C6260();
      goto LABEL_36;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  if (v42 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v42)
  {
    goto LABEL_21;
  }

  if (v39)
  {
    v49 = v40;
    v50 = v27;
    v51 = v49[5];
    v52 = v49[6];
    swift_getWitnessTable();
    v53 = v57;
    sub_20E4C61E0();
    v51(v53);
    (*(v58 + 8))(v53, v59);
    (*(v50 + 8))(v30, v8);
  }

  else
  {
    (*(v27 + 8))(v30, v8);
  }

  return 0;
}

id sub_20E497BAC(char a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = sub_20E4C6780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v24 - v11;
  v13 = *(v5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = &v24 - v16;
  v18 = *(v3 + 168);
  [*(v1 + v18) lock];
  v19 = *v1;
  if (*(v1 + *(*v1 + 160)) != 1)
  {
    return [*(v1 + v18) unlock];
  }

  v25 = v4;
  v20 = a1;
  v21 = *(v19 + 136);
  swift_beginAccess();
  (*(v7 + 16))(v12, v1 + v21, v6);
  if ((*(v13 + 48))(v12, 1, v5) == 1)
  {
    (*(v7 + 8))(v12, v6);
    return [*(v1 + v18) unlock];
  }

  (*(v13 + 32))(v17, v12, v5);
  [*(v1 + v18) unlock];
  sub_20E49679C();
  v26 = v20 & 1;
  v23 = *(v25 + 104);
  sub_20E4C6200();
  return (*(v13 + 8))(v17, v5);
}

uint64_t sub_20E497E84(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_20E4C61F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 88);
  v11 = sub_20E4C6780();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v34 - v15;
  sub_20E4C6260();
  result = sub_20E4C6240();
  if ((result & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (!a1)
    {
      return result;
    }
  }

  v35 = *(*v1 + 168);
  [*(v1 + v35) lock];
  v18 = *v1;
  if (*(v1 + *(*v1 + 160)) != 1)
  {
    return [*(v1 + v35) unlock];
  }

  v34 = a1;
  v19 = v4;
  v20 = v5;
  v21 = *(v18 + 136);
  swift_beginAccess();
  v22 = v34;
  (*(v12 + 16))(v16, v1 + v21, v11);
  v23 = (*(*(v10 - 8) + 48))(v16, 1, v10);
  (*(v12 + 8))(v16, v11);
  if (v23 == 1)
  {
    return [*(v1 + v35) unlock];
  }

  v24 = *(*v1 + 144);
  swift_beginAccess();
  sub_20E498434(v1 + v24, v38);
  v25 = *(*v1 + 152);
  swift_beginAccess();
  v26 = *(v1 + v25);
  sub_20E4C6250();
  v27 = sub_20E4C6240();
  swift_beginAccess();
  v28 = *(v1 + v25);
  sub_20E4C6260();
  if ((sub_20E4C6240() & 1) == 0)
  {
    sub_20E4C6260();
    v29 = sub_20E4C6240();
    v30 = sub_20E4C6260();
    if (v29)
    {
LABEL_15:
      *(v1 + v25) = v30;
      goto LABEL_16;
    }

    result = sub_20E4C6240();
    if (result)
    {
LABEL_13:
      v30 = sub_20E4C6260();
      goto LABEL_15;
    }

    if (((v28 | v22) & 0x8000000000000000) == 0)
    {
      v30 = v28 + v22;
      if (!__OFADD__(v28, v22))
      {
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_16:
  swift_endAccess();
  [*(v1 + v35) unlock];
  sub_20E498434(v38, v36);
  if (!v37)
  {
    sub_20E498514(v36);
    if ((v27 & 1) == 0)
    {
      return sub_20E498514(v38);
    }

    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(v36, v37);
  sub_20E4C6270();
  __swift_destroy_boxed_opaque_existential_0(v36);
  if (v27)
  {
LABEL_18:
    v31 = v9;
    v32 = v1[3];
    v33 = v1[4];
    swift_getWitnessTable();
    sub_20E4C61E0();
    v32(v31);
    (*(v20 + 8))(v31, v19);
  }

  return sub_20E498514(v38);
}

uint64_t sub_20E498434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF6F8, &unk_20E4CB620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E4984A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF6F8, &unk_20E4CB620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E498514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF6F8, &unk_20E4CB620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateAndTimeSettings.Name.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E498608()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E49867C()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E4986D0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  *a2 = v5 != 0;
  return result;
}

uint64_t DateAndTimeSettings.requireAutomaticDateAndTime.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C74C38 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C74C40, v1, v2, v3, v4);
}

uint64_t sub_20E4987E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C74C38 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C74C40, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E498880(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C74C38 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C74C40, v4, v5, v6, v7);
}

void DateAndTimeSettings.requireAutomaticDateAndTime.setter(unsigned __int8 a1)
{
  if (qword_280C74C38 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C74C40, v2, v3, v4, v5);
}

void (*DateAndTimeSettings.requireAutomaticDateAndTime.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74C38 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74C40, v3, v4, v5, v6);
  return sub_20E498A38;
}

uint64_t DateAndTimeSettings.effectiveRequireAutomaticDateAndTime.getter()
{
  if (qword_280C74C38 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C74C40);
}

void sub_20E498AB0()
{
  byte_280C74C40 = 0;
  qword_280C74C48 = 0xD000000000000027;
  unk_280C74C50 = 0x800000020E4CEF90;
  qword_280C74C70 = &type metadata for BoolCombineOperator;
  unk_280C74C78 = &protocol witness table for BoolCombineOperator;
  byte_280C74C58 = 0;
  word_280C74C80 = 257;
  byte_280C74C82 = 0;
  qword_280C74C88 = 0;
  byte_280C74C90 = 1;
}

uint64_t static DateAndTimeSettings.requireAutomaticDateAndTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280C74C38 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_20E431094(&byte_280C74C40, v2);
}

uint64_t DateAndTimeSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_20E4C6A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v24[2] = *v1;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20E4C7720;
  v18 = qword_280C74C38;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_280C74C50;
  *(v17 + 32) = qword_280C74C48;
  *(v17 + 40) = v19;

  v20 = sub_20E41BCBC(&byte_280C74C40, v13, v14, v15, v16);
  v21 = sub_20E41FA28(&byte_280C74C40);
  *(v17 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v17 + 48) = v20;
  *(v17 + 49) = v21;
  v22 = sub_20E4C6A00();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_20E4C6A20();
}

unint64_t sub_20E498DEC()
{
  result = qword_27C8CF708;
  if (!qword_27C8CF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF708);
  }

  return result;
}

unint64_t sub_20E498E44()
{
  result = qword_27C8CF710;
  if (!qword_27C8CF710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF718, &qword_20E4CB6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF710);
  }

  return result;
}

uint64_t EyeReliefSettings.Name.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E498F4C()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E498FC0()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E499014@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  *a2 = v5 != 0;
  return result;
}

uint64_t EyeReliefSettings.forceScreenDistanceOn.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C72ED8 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C72EE0, v1, v2, v3, v4);
}

uint64_t sub_20E49912C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C72ED8 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C72EE0, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E4991C4(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C72ED8 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C72EE0, v4, v5, v6, v7);
}

void EyeReliefSettings.forceScreenDistanceOn.setter(unsigned __int8 a1)
{
  if (qword_280C72ED8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C72EE0, v2, v3, v4, v5);
}

void (*EyeReliefSettings.forceScreenDistanceOn.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C72ED8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C72EE0, v3, v4, v5, v6);
  return sub_20E49937C;
}

uint64_t EyeReliefSettings.effectiveForceScreenDistanceOn.getter()
{
  if (qword_280C72ED8 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C72EE0);
}

void sub_20E4993F4()
{
  byte_280C72EE0 = 0;
  qword_280C72EE8 = 0xD00000000000001FLL;
  unk_280C72EF0 = 0x800000020E4CEFC0;
  qword_280C72F10 = &type metadata for BoolCombineOperator;
  unk_280C72F18 = &protocol witness table for BoolCombineOperator;
  byte_280C72EF8 = 0;
  word_280C72F20 = 256;
  byte_280C72F22 = 0;
  qword_280C72F28 = 0;
  byte_280C72F30 = 1;
}

uint64_t static EyeReliefSettings.forceScreenDistanceOn.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280C72ED8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_20E431094(&byte_280C72EE0, v2);
}

uint64_t EyeReliefSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_20E4C6A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v24[2] = *v1;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20E4C7720;
  v18 = qword_280C72ED8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_280C72EF0;
  *(v17 + 32) = qword_280C72EE8;
  *(v17 + 40) = v19;

  v20 = sub_20E41BCBC(&byte_280C72EE0, v13, v14, v15, v16);
  v21 = sub_20E41FA28(&byte_280C72EE0);
  *(v17 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v17 + 48) = v20;
  *(v17 + 49) = v21;
  v22 = sub_20E4C6A00();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_20E4C6A20();
}

unint64_t sub_20E499730()
{
  result = qword_27C8CF720;
  if (!qword_27C8CF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF720);
  }

  return result;
}

unint64_t sub_20E499788()
{
  result = qword_27C8CF728;
  if (!qword_27C8CF728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF730, &qword_20E4CB840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF728);
  }

  return result;
}

uint64_t sub_20E499810()
{
  v1 = sub_20E4C6490();
  SecTaskCopyValueForEntitlement(v0, v1, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF738, &unk_20E4CB910);
  return swift_dynamicCast() & v3;
}

uint64_t TemporaryPairingConfiguration.init(unpairingTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void sub_20E4998A4(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a4;
  v54 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v55 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v48[-v19];
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v48[-v22];
  if ((a2 & 0x100) != 0 || (v57 = a1, v58 = a2 & 1, (v24 = UnpairingTime.persistableValue()()) == 0))
  {
    v31 = 0;
  }

  else
  {
    v25 = v24;
    sub_20E424CA8(0, &qword_280C72108, 0x277CBEAC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED60, &qword_20E4C7C50);
    v26 = v23;
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D837D0];
    *(v27 + 16) = xmmword_20E4C7720;
    *(v27 + 56) = v28;
    strcpy((v27 + 32), "unpairingTime");
    *(v27 + 46) = -4864;
    *(v27 + 88) = sub_20E424CA8(0, &qword_280C75708, 0x277D82BB8);
    *(v27 + 64) = v25;
    v29 = v25;
    v30 = sub_20E4C66A0();
    v31 = sub_20E4C6690();

    v23 = v26;
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v32 = off_280C72C08;
  if (off_280C72C08)
  {
    v33 = *(a3 + 24);
    v50 = *(a3 + 16);
    v51 = v31;
    v49 = *(a3 + 74);
    if (a7)
    {
      v34 = a7;
    }

    else
    {
      a6 = *(off_280C72C08 + 2);
      v34 = *(off_280C72C08 + 3);
    }

    v56 = a6;
    v52 = v20;

    sub_20E4258D0(a6, v34, v23);
    v35 = v23;
    if (qword_280C75F10 != -1)
    {
      swift_once();
    }

    v36 = swift_allocBox();
    v38 = v37;
    sub_20E424E74(v35, v37, &qword_27C8CED28, &qword_20E4C7E30);
    sub_20E467B30();
    v40 = v39;
    ObjectType = swift_getObjectType();
    v42 = swift_allocObject();
    v43 = v51;
    *(v42 + 16) = v51;
    *(v42 + 24) = v49;
    *(v42 + 32) = v50;
    *(v42 + 40) = v33;
    *(v42 + 48) = v56;
    *(v42 + 56) = v34;
    v44 = v53;
    v53 = v35;
    v45 = v54;
    *(v42 + 64) = v44;
    *(v42 + 72) = v45;
    *(v42 + 80) = v36;
    v51 = v43;

    XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, sub_20E424F98, v42, ObjectType, v40);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v46 = v52;
    sub_20E424E74(v38, v52, &qword_27C8CED28, &qword_20E4C7E30);

    [v32[5] lock];
    v47 = v55;
    sub_20E424E74(v46, v55, &qword_27C8CED28, &qword_20E4C7E30);
    swift_beginAccess();

    sub_20E425A70(v47, v56, v34);
    swift_endAccess();
    [v32[5] unlock];

    sub_20E4332D8(v46);
    sub_20E4332D8(v53);
  }

  else
  {
  }
}

void sub_20E499D3C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a5;
  v51 = a6;
  v14 = ~a3;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30) - 8) + 64);
  v17 = MEMORY[0x28223BE20](a1, v16);
  v52 = &v45[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v45[-v21];
  v24 = MEMORY[0x28223BE20](v20, v23);
  v53 = &v45[-v25];
  v54 = v24;
  v55 = a2;
  v56 = a3;
  if (v14)
  {
    sub_20E49B8C8(v24, a2, a3);
    v26 = WebNewPage.persistableValue()();
    sub_20E49B908(v54, v55, v56);
  }

  else
  {
    v27 = v24;
    sub_20E49B8C8(v24, a2, 0xFFu);
    sub_20E49B8F4(v27, a2, 0xFFu);
    v26 = 0;
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = off_280C72C08;
  if (off_280C72C08)
  {
    v29 = *(a4 + 32);
    v47 = *(a4 + 24);
    v48 = v29;
    v46 = *(a4 + 82);
    if (a8)
    {
      v30 = a8;
    }

    else
    {
      a7 = *(off_280C72C08 + 2);
      v30 = *(off_280C72C08 + 3);
    }

    v49 = v22;

    v31 = v53;
    sub_20E4258D0(a7, v30, v53);
    v32 = a7;
    if (qword_280C75F10 != -1)
    {
      swift_once();
    }

    v33 = swift_allocBox();
    v35 = v34;
    sub_20E424E74(v31, v34, &qword_27C8CED28, &qword_20E4C7E30);
    sub_20E467B30();
    v37 = v36;
    ObjectType = swift_getObjectType();
    v39 = swift_allocObject();
    v40 = v26;
    *(v39 + 16) = v26;
    *(v39 + 24) = v46;
    v41 = v48;
    *(v39 + 32) = v47;
    *(v39 + 40) = v41;
    *(v39 + 48) = v32;
    *(v39 + 56) = v30;
    v47 = v32;
    v42 = v51;
    *(v39 + 64) = v50;
    *(v39 + 72) = v42;
    *(v39 + 80) = v33;
    v50 = v40;

    XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, sub_20E424A7C, v39, ObjectType, v37);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v43 = v49;
    sub_20E424E74(v35, v49, &qword_27C8CED28, &qword_20E4C7E30);

    [v28[5] lock];
    v44 = v52;
    sub_20E424E74(v43, v52, &qword_27C8CED28, &qword_20E4C7E30);
    swift_beginAccess();

    sub_20E425A70(v44, v47, v30);
    swift_endAccess();
    [v28[5] unlock];

    sub_20E4332D8(v43);
    sub_20E4332D8(v53);
  }

  else
  {
  }
}

uint64_t sub_20E49A14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280C72720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  v6 = sub_20E431A1C(v4, v5);

  if (v6 && (v8 = v6, static TemporaryPairingConfiguration.value(from:)(v6, v13), v8, v8, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF420, &unk_20E4C9FA0), result = swift_dynamicCast(), result))
  {
    v9 = 0;
    *a2 = v11;
    *(a2 + 8) = v12 & 1;
  }

  else
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 9);
    *a2 = *a1;
    *(a2 + 8) = v10;
  }

  *(a2 + 9) = v9;
  return result;
}

uint64_t sub_20E49A288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_280C72720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);

  v6 = sub_20E431A1C(v4, v5);

  if (v6)
  {
    v7 = v6;
    static WebNewPage.value(from:)(v6, v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF768, &qword_20E4CBBA8);
    result = swift_dynamicCast();
    if (result)
    {
      *a2 = v12;
      *(a2 + 16) = v13;
      return result;
    }

    sub_20E49B8F4(0, 0, 0xFFu);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v10;
  v11 = *(a1 + 16);
  *(a2 + 16) = v11;
  return sub_20E49B8C8(v9, v10, v11);
}

uint64_t UnpairingTime.description.getter()
{
  if (v0[1])
  {
    return 1701736302;
  }

  v3 = *v0;
  v2 = sub_20E4C68F0();
  MEMORY[0x20F32EE70](v2);

  MEMORY[0x20F32EE70](41, 0xE100000000000000);
  return 0x2872756F68;
}

BOOL static UnpairingTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_20E49A4A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void TemporaryPairingConfiguration.unpairingTime.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TemporaryPairingConfiguration.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20E4C6830();
  MEMORY[0x20F32EE70](0xD00000000000002DLL, 0x800000020E4D0880);
  if (v2)
  {
    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  else
  {
    v5 = sub_20E4C68F0();
    MEMORY[0x20F32EE70](v5);

    MEMORY[0x20F32EE70](41, 0xE100000000000000);
    v4 = 0x2872756F68;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x20F32EE70](v4, v3);

  MEMORY[0x20F32EE70](41, 0xE100000000000000);
  return 0;
}

uint64_t static TemporaryPairingConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2 != 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_20E49A63C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_20E49A674()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20E4C6830();
  MEMORY[0x20F32EE70](0xD00000000000002DLL, 0x800000020E4D0880);
  sub_20E42ED14(v1, v2);
  MEMORY[0x20F32EE70](41, 0xE100000000000000);
  return 0;
}

ManagedSettings::AudioAccessorySettings::Name_optional __swiftcall AudioAccessorySettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t AudioAccessorySettings.Name.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000002CLL;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

uint64_t sub_20E49A7B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000002CLL;
  }

  else
  {
    v4 = 0xD000000000000023;
  }

  if (v3)
  {
    v5 = "eyeRelief.forceScreenDistanceOn";
  }

  else
  {
    v5 = "enyTemporaryPairing";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000002CLL;
  }

  else
  {
    v7 = 0xD000000000000023;
  }

  if (*a2)
  {
    v8 = "enyTemporaryPairing";
  }

  else
  {
    v8 = "eyeRelief.forceScreenDistanceOn";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20E4C6910();
  }

  return v10 & 1;
}

uint64_t sub_20E49A860()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E49A8E0()
{
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E49A94C()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E49A9C8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_20E49AA28(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000002CLL;
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  if (*v1)
  {
    v3 = "enyTemporaryPairing";
  }

  else
  {
    v3 = "eyeRelief.forceScreenDistanceOn";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t AudioAccessorySettings.denyTemporaryPairing.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C74850 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C74858, v1, v2, v3, v4);
}

uint64_t sub_20E49AB0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C74850 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C74858, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E49ABA4(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C74850 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C74858, v4, v5, v6, v7);
}

void AudioAccessorySettings.denyTemporaryPairing.setter(unsigned __int8 a1)
{
  if (qword_280C74850 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C74858, v2, v3, v4, v5);
}

void (*AudioAccessorySettings.denyTemporaryPairing.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74850 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74858, v3, v4, v5, v6);
  return sub_20E49AD5C;
}

uint64_t AudioAccessorySettings.effectiveDenyTemporaryPairing.getter()
{
  if (qword_280C74850 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C74858);
}

void sub_20E49ADD4()
{
  byte_280C74858 = 0;
  qword_280C74860 = 0xD000000000000023;
  unk_280C74868 = 0x800000020E4CEFE0;
  qword_280C74888 = &type metadata for BoolCombineOperator;
  unk_280C74890 = &protocol witness table for BoolCombineOperator;
  byte_280C74870 = 0;
  word_280C74898 = 512;
  byte_280C7489A = 0;
  qword_280C748A0 = 0;
  byte_280C748A8 = 1;
}

uint64_t static AudioAccessorySettings.denyTemporaryPairing.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C74850 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&byte_280C74858, v1, &qword_27C8CEC98, &unk_20E4C7740);
}

uint64_t AudioAccessorySettings.temporaryPairingConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C747E8 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C74800;
    v6 = unk_280C74808;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C7483A;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  static TemporaryPairingConfiguration.value(from:)(v8, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF420, &unk_20E4C9FA0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  *(a1 + 9) = result ^ 1;
  return result;
}

void sub_20E49B00C(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  if (qword_280C747E8 != -1)
  {
    v10 = v3;
    v11 = a2;
    swift_once();
    a2 = v11;
    v3 = v10;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];

  sub_20E4998A4(v3, v4 | (v5 << 8), &qword_280C747F0, v6, v7, v8, v9);
}

void AudioAccessorySettings.temporaryPairingConfiguration.setter(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  if (qword_280C747E8 != -1)
  {
    v10 = v3;
    swift_once();
    v3 = v10;
  }

  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];

  sub_20E4998A4(v3, v4 | (v5 << 8), &qword_280C747F0, v6, v7, v8, v9);
}

void (*AudioAccessorySettings.temporaryPairingConfiguration.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  AudioAccessorySettings.temporaryPairingConfiguration.getter(a1);
  return sub_20E49B1B0;
}

void sub_20E49B1B0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  if (qword_280C747E8 != -1)
  {
    v10 = v2;
    swift_once();
    v2 = v10;
  }

  v5 = *(a1 + 16);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];

  sub_20E4998A4(v2, v3 | (v4 << 8), &qword_280C747F0, v6, v7, v8, v9);
}

uint64_t AudioAccessorySettings.effectiveTemporaryPairingConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C747E8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return sub_20E49A14C(&qword_280C747F0, a1);
}

uint64_t sub_20E49B2BC()
{
  qword_280C747F0 = 0;
  word_280C747F8 = 256;
  qword_280C74800 = 0xD00000000000002CLL;
  unk_280C74808 = 0x800000020E4CF010;
  qword_280C74828 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF498, &unk_20E4CA030);
  result = sub_20E430A50(&qword_280C72358, &qword_27C8CF498, &unk_20E4CA030);
  qword_280C74830 = result;
  byte_280C74810 = 0;
  word_280C74838 = 512;
  byte_280C7483A = 0;
  qword_280C74840 = 0;
  byte_280C74848 = 1;
  return result;
}

uint64_t static AudioAccessorySettings.temporaryPairingConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C747E8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C747F0, v1, &qword_27C8CF740, &unk_20E4CB920);
}

uint64_t AudioAccessorySettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v31[0] = sub_20E4C6A10();
  v2 = *(v31[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31[0], v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v31 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v42 = *v1;
  v43 = v12;
  v44 = v14;
  v45 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4C7710;
  v17 = qword_280C74850;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_280C74868;
  *(v16 + 32) = qword_280C74860;
  *(v16 + 40) = v18;

  v19 = sub_20E41BCBC(&byte_280C74858, v13, v12, v14, v15);
  v20 = sub_20E41FA28(&byte_280C74858);
  *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v16 + 48) = v19;
  *(v16 + 49) = v20;
  if (qword_280C747E8 != -1)
  {
    swift_once();
  }

  v21 = unk_280C74808;
  *(v16 + 80) = qword_280C74800;
  *(v16 + 88) = v21;
  v38 = v13;
  v39 = v12;
  v40 = v14;
  v41 = v15;

  AudioAccessorySettings.temporaryPairingConfiguration.getter(&v35);
  v22 = v35;
  v23 = v36;
  v24 = v37;
  sub_20E49A14C(&qword_280C747F0, &v32);
  v25 = v32;
  v26 = v33;
  v27 = v34;
  *(v16 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF748, &qword_20E4CB930);
  v28 = swift_allocObject();
  *(v16 + 96) = v28;
  *(v28 + 16) = v22;
  *(v28 + 24) = v23;
  *(v28 + 25) = v24;
  *(v28 + 32) = v25;
  *(v28 + 40) = v26;
  *(v28 + 41) = v27;
  v29 = sub_20E4C6A00();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v31[0]);
  return sub_20E4C6A20();
}

unint64_t sub_20E49B720()
{
  result = qword_27C8CF750;
  if (!qword_27C8CF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF750);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UnpairingTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UnpairingTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_20E49B820(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20E49B83C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TemporaryPairingConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_20E49B8C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_20E49B8DC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_20E49B8DC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_20E49B8F4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_20E49B908(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_20E49B908(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t CarPlaySettings.Name.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E49B9A0()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E49BA14()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E49BA68@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  *a2 = v5 != 0;
  return result;
}

uint64_t CarPlaySettings.denyCarPlay.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C73538 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C73540, v1, v2, v3, v4);
}

uint64_t sub_20E49BB80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C73538 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C73540, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E49BC18(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C73538 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C73540, v4, v5, v6, v7);
}

void CarPlaySettings.denyCarPlay.setter(unsigned __int8 a1)
{
  if (qword_280C73538 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C73540, v2, v3, v4, v5);
}

void (*CarPlaySettings.denyCarPlay.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73538 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73540, v3, v4, v5, v6);
  return sub_20E49BDD0;
}

uint64_t CarPlaySettings.effectiveDenyCarPlay.getter()
{
  if (qword_280C73538 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C73540);
}

void sub_20E49BE48()
{
  byte_280C73540 = 0;
  qword_280C73548 = 0xD000000000000013;
  unk_280C73550 = 0x800000020E4CF040;
  qword_280C73570 = &type metadata for BoolCombineOperator;
  unk_280C73578 = &protocol witness table for BoolCombineOperator;
  byte_280C73558 = 0;
  word_280C73580 = 256;
  byte_280C73582 = 0;
  qword_280C73588 = 0;
  byte_280C73590 = 1;
}

uint64_t static CarPlaySettings.denyCarPlay.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280C73538 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_20E431094(&byte_280C73540, v2);
}

uint64_t CarPlaySettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_20E4C6A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v24[2] = *v1;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20E4C7720;
  v18 = qword_280C73538;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_280C73550;
  *(v17 + 32) = qword_280C73548;
  *(v17 + 40) = v19;

  v20 = sub_20E41BCBC(&byte_280C73540, v13, v14, v15, v16);
  v21 = sub_20E41FA28(&byte_280C73540);
  *(v17 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v17 + 48) = v20;
  *(v17 + 49) = v21;
  v22 = sub_20E4C6A00();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_20E4C6A20();
}

unint64_t sub_20E49C184()
{
  result = qword_27C8CF770;
  if (!qword_27C8CF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF770);
  }

  return result;
}

unint64_t sub_20E49C1DC()
{
  result = qword_27C8CF778;
  if (!qword_27C8CF778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF780, &qword_20E4CBC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF778);
  }

  return result;
}

uint64_t static ManagedSettingsService.connection<A>(_:)(uint64_t a1, uint64_t a2)
{
  v22[3] = a2;
  v22[0] = a1;
  v2 = qword_280C75F20;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_280C76508;
  if (qword_280C75F28 != -1)
  {
    swift_once();
  }

  v4 = qword_280C75F30;
  type metadata accessor for XPCConnection();
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v7 = sub_20E4C6490();
  v8 = [v6 initWithMachServiceName:v7 options:4096];

  *(v5 + 16) = v8;
  sub_20E424D4C(v22, v21);
  sub_20E43D1CC(v21, v19);
  v9 = v20;
  if (v20)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v10, v10);
    v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = v8;
    v16 = sub_20E4C6900();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v17 = v8;
    v16 = 0;
  }

  [v8 setExportedObject_];

  swift_unknownObjectRelease();
  sub_20E43D23C(v21);
  [v8 setExportedInterface_];
  [v8 setRemoteObjectInterface_];
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v5;
}

uint64_t static ManagedSettingsSystemService.connection<A>(_:)(uint64_t a1, uint64_t a2)
{
  v22[3] = a2;
  v22[0] = a1;
  v2 = qword_280C72EA8;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_280C72EB0;
  if (qword_280C72EB8 != -1)
  {
    swift_once();
  }

  v4 = qword_280C72EC0;
  type metadata accessor for XPCConnection();
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v7 = sub_20E4C6490();
  v8 = [v6 initWithMachServiceName:v7 options:4096];

  *(v5 + 16) = v8;
  sub_20E424D4C(v22, v21);
  sub_20E43D1CC(v21, v19);
  v9 = v20;
  if (v20)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v10, v10);
    v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = v8;
    v16 = sub_20E4C6900();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v17 = v8;
    v16 = 0;
  }

  [v8 setExportedObject_];

  swift_unknownObjectRelease();
  sub_20E43D23C(v21);
  [v8 setExportedInterface_];
  [v8 setRemoteObjectInterface_];
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v5;
}

ManagedSettings::CalculatorSettings::Name_optional __swiftcall CalculatorSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CalculatorSettings.Name.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000002BLL;
  if (v1 == 5)
  {
    v2 = 0xD00000000000001DLL;
  }

  v3 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001FLL;
  if (v1 == 1)
  {
    v4 = 0xD000000000000026;
  }

  if (!*v0)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20E49CB28()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

void sub_20E49CC30(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "carPlay.denyCarPlay";
  v4 = "calculator.denyModeProgrammer";
  v5 = 0xD00000000000002BLL;
  if (v2 == 5)
  {
    v5 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = "calculator.denyModeScientific";
  }

  v6 = "calculator.denyMathPaperSolving";
  v7 = 0xD00000000000001CLL;
  if (v2 != 3)
  {
    v7 = 0xD00000000000001DLL;
    v6 = "calculator.denyModeMathPaper";
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "calculator.denyInputModeRPN";
  v9 = 0xD00000000000001FLL;
  if (v2 == 1)
  {
    v9 = 0xD000000000000026;
  }

  else
  {
    v8 = "nputModeUnitConversion";
  }

  if (*v1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0xD00000000000001BLL;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v9 = v5;
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10 | 0x8000000000000000;
}

void (*CalculatorSettings.denyInputModeRPN.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75618 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75620, v3, v4, v5, v6);
  return sub_20E49CE0C;
}

void sub_20E49CE3C()
{
  byte_280C75620 = 0;
  qword_280C75628 = 0xD00000000000001BLL;
  unk_280C75630 = 0x800000020E4CF060;
  qword_280C75650 = &type metadata for BoolCombineOperator;
  unk_280C75658 = &protocol witness table for BoolCombineOperator;
  byte_280C75638 = 0;
  word_280C75660 = 256;
  byte_280C75662 = 0;
  qword_280C75668 = 0;
  byte_280C75670 = 1;
}

void (*CalculatorSettings.denyInputModeUnitConversion.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75438 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75440, v3, v4, v5, v6);
  return sub_20E49CFC0;
}

void sub_20E49CFF0()
{
  byte_280C75440 = 0;
  qword_280C75448 = 0xD000000000000026;
  unk_280C75450 = 0x800000020E4CF080;
  qword_280C75470 = &type metadata for BoolCombineOperator;
  unk_280C75478 = &protocol witness table for BoolCombineOperator;
  byte_280C75458 = 0;
  word_280C75480 = 256;
  byte_280C75482 = 0;
  qword_280C75488 = 0;
  byte_280C75490 = 1;
}

void (*CalculatorSettings.denyMathPaperSolving.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75498 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C754A0, v3, v4, v5, v6);
  return sub_20E49D174;
}

void sub_20E49D1A4()
{
  byte_280C754A0 = 0;
  qword_280C754A8 = 0xD00000000000001FLL;
  unk_280C754B0 = 0x800000020E4CF0B0;
  qword_280C754D0 = &type metadata for BoolCombineOperator;
  unk_280C754D8 = &protocol witness table for BoolCombineOperator;
  byte_280C754B8 = 0;
  word_280C754E0 = 256;
  byte_280C754E2 = 0;
  qword_280C754E8 = 0;
  byte_280C754F0 = 1;
}

void (*CalculatorSettings.denyModeMathPaper.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C755B8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C755C0, v3, v4, v5, v6);
  return sub_20E49D328;
}

void sub_20E49D358()
{
  byte_280C755C0 = 0;
  qword_280C755C8 = 0xD00000000000001CLL;
  unk_280C755D0 = 0x800000020E4CF0D0;
  qword_280C755F0 = &type metadata for BoolCombineOperator;
  unk_280C755F8 = &protocol witness table for BoolCombineOperator;
  byte_280C755D8 = 0;
  word_280C75600 = 256;
  byte_280C75602 = 0;
  qword_280C75608 = 0;
  byte_280C75610 = 1;
}

void (*CalculatorSettings.denyModeProgrammer.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75558 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75560, v3, v4, v5, v6);
  return sub_20E49D4DC;
}

void sub_20E49D50C()
{
  byte_280C75560 = 0;
  qword_280C75568 = 0xD00000000000001DLL;
  unk_280C75570 = 0x800000020E4CF0F0;
  qword_280C75590 = &type metadata for BoolCombineOperator;
  unk_280C75598 = &protocol witness table for BoolCombineOperator;
  byte_280C75578 = 0;
  word_280C755A0 = 256;
  byte_280C755A2 = 0;
  qword_280C755A8 = 0;
  byte_280C755B0 = 1;
}

void (*CalculatorSettings.denyModeScientific.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C754F8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75500, v3, v4, v5, v6);
  return sub_20E49D690;
}

void sub_20E49D6C0()
{
  byte_280C75500 = 0;
  qword_280C75508 = 0xD00000000000001DLL;
  unk_280C75510 = 0x800000020E4CF110;
  qword_280C75530 = &type metadata for BoolCombineOperator;
  unk_280C75538 = &protocol witness table for BoolCombineOperator;
  byte_280C75518 = 0;
  word_280C75540 = 256;
  byte_280C75542 = 0;
  qword_280C75548 = 0;
  byte_280C75550 = 1;
}

void (*CalculatorSettings.forceSquareRootOnBasicCalculator.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75678 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75680, v3, v4, v5, v6);
  return sub_20E49D844;
}

void sub_20E49D874()
{
  byte_280C75680 = 0;
  qword_280C75688 = 0xD00000000000002BLL;
  unk_280C75690 = 0x800000020E4CF130;
  qword_280C756B0 = &type metadata for BoolCombineOperator;
  unk_280C756B8 = &protocol witness table for BoolCombineOperator;
  byte_280C75698 = 0;
  word_280C756C0 = 256;
  byte_280C756C2 = 0;
  qword_280C756C8 = 0;
  byte_280C756D0 = 1;
}

uint64_t CalculatorSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_20E4C6A10();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v42 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v46 = *v1;
  v47 = v13;
  v48 = v14;
  v49 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4CBDA0;
  v17 = qword_280C75618;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_280C75630;
  *(v16 + 32) = qword_280C75628;
  *(v16 + 40) = v18;

  v19 = sub_20E41BCBC(&byte_280C75620, v12, v13, v14, v15);
  v20 = sub_20E41FA28(&byte_280C75620);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v16 + 72) = v21;
  *(v16 + 48) = v19;
  *(v16 + 49) = v20;
  if (qword_280C75438 != -1)
  {
    swift_once();
  }

  v22 = unk_280C75450;
  *(v16 + 80) = qword_280C75448;
  *(v16 + 88) = v22;

  v23 = sub_20E41BCBC(&byte_280C75440, v12, v13, v14, v15);
  v24 = sub_20E41FA28(&byte_280C75440);
  *(v16 + 120) = v21;
  *(v16 + 96) = v23;
  *(v16 + 97) = v24;
  if (qword_280C75498 != -1)
  {
    swift_once();
  }

  v25 = unk_280C754B0;
  *(v16 + 128) = qword_280C754A8;
  *(v16 + 136) = v25;

  v26 = sub_20E41BCBC(&byte_280C754A0, v12, v13, v14, v15);
  v27 = sub_20E41FA28(&byte_280C754A0);
  *(v16 + 168) = v21;
  *(v16 + 144) = v26;
  *(v16 + 145) = v27;
  if (qword_280C755B8 != -1)
  {
    swift_once();
  }

  v28 = unk_280C755D0;
  *(v16 + 176) = qword_280C755C8;
  *(v16 + 184) = v28;

  v29 = sub_20E41BCBC(&byte_280C755C0, v12, v13, v14, v15);
  v30 = sub_20E41FA28(&byte_280C755C0);
  *(v16 + 216) = v21;
  *(v16 + 192) = v29;
  *(v16 + 193) = v30;
  if (qword_280C75558 != -1)
  {
    swift_once();
  }

  v31 = unk_280C75570;
  *(v16 + 224) = qword_280C75568;
  *(v16 + 232) = v31;

  v32 = sub_20E41BCBC(&byte_280C75560, v12, v13, v14, v15);
  v33 = sub_20E41FA28(&byte_280C75560);
  *(v16 + 264) = v21;
  *(v16 + 240) = v32;
  *(v16 + 241) = v33;
  if (qword_280C754F8 != -1)
  {
    swift_once();
  }

  v34 = unk_280C75510;
  *(v16 + 272) = qword_280C75508;
  *(v16 + 280) = v34;

  v35 = sub_20E41BCBC(&byte_280C75500, v12, v13, v14, v15);
  v36 = sub_20E41FA28(&byte_280C75500);
  *(v16 + 312) = v21;
  *(v16 + 288) = v35;
  *(v16 + 289) = v36;
  if (qword_280C75678 != -1)
  {
    swift_once();
  }

  v37 = unk_280C75690;
  *(v16 + 320) = qword_280C75688;
  *(v16 + 328) = v37;

  v38 = sub_20E41BCBC(&byte_280C75680, v12, v13, v14, v15);
  v39 = sub_20E41FA28(&byte_280C75680);
  *(v16 + 360) = v21;
  *(v16 + 336) = v38;
  *(v16 + 337) = v39;
  v40 = sub_20E4C6A00();
  (*(*(v40 - 8) + 56))(v11, 1, 1, v40);
  (*(v43 + 104))(v6, *MEMORY[0x277D84C38], v44);
  return sub_20E4C6A20();
}

unint64_t sub_20E49DE1C()
{
  result = qword_27C8CF788;
  if (!qword_27C8CF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF788);
  }

  return result;
}

unint64_t sub_20E49DE74()
{
  result = qword_27C8CF790;
  if (!qword_27C8CF790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF798, &qword_20E4CBE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculatorSettings.Name(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CalculatorSettings.Name(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t PrivacySettings.Name.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E49E0BC()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E49E130()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E49E184@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  *a2 = v5 != 0;
  return result;
}

uint64_t PrivacySettings.forceLimitAdTracking.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C734D8 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C734E0, v1, v2, v3, v4);
}

uint64_t sub_20E49E29C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C734D8 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C734E0, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E49E334(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C734D8 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C734E0, v4, v5, v6, v7);
}

void PrivacySettings.forceLimitAdTracking.setter(unsigned __int8 a1)
{
  if (qword_280C734D8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C734E0, v2, v3, v4, v5);
}

void (*PrivacySettings.forceLimitAdTracking.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C734D8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C734E0, v3, v4, v5, v6);
  return sub_20E49E4EC;
}

uint64_t PrivacySettings.effectiveForceLimitAdTracking.getter()
{
  if (qword_280C734D8 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C734E0);
}

void sub_20E49E564()
{
  byte_280C734E0 = 0;
  qword_280C734E8 = 0xD00000000000001CLL;
  unk_280C734F0 = 0x800000020E4CF160;
  qword_280C73510 = &type metadata for BoolCombineOperator;
  unk_280C73518 = &protocol witness table for BoolCombineOperator;
  byte_280C734F8 = 0;
  word_280C73520 = 256;
  byte_280C73522 = 0;
  qword_280C73528 = 0;
  byte_280C73530 = 1;
}

uint64_t static PrivacySettings.forceLimitAdTracking.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280C734D8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_20E431094(&byte_280C734E0, v2);
}

uint64_t PrivacySettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_20E4C6A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v24[2] = *v1;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20E4C7720;
  v18 = qword_280C734D8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_280C734F0;
  *(v17 + 32) = qword_280C734E8;
  *(v17 + 40) = v19;

  v20 = sub_20E41BCBC(&byte_280C734E0, v13, v14, v15, v16);
  v21 = sub_20E41FA28(&byte_280C734E0);
  *(v17 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v17 + 48) = v20;
  *(v17 + 49) = v21;
  v22 = sub_20E4C6A00();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_20E4C6A20();
}

unint64_t sub_20E49E8A0()
{
  result = qword_27C8CF7A0;
  if (!qword_27C8CF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF7A0);
  }

  return result;
}

unint64_t sub_20E49E8F8()
{
  result = qword_27C8CF7A8;
  if (!qword_27C8CF7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF7B0, &qword_20E4CBFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF7A8);
  }

  return result;
}

uint64_t FindMySettings.Name.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E49EA00()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E49EA74()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E49EAC8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  *a2 = v5 != 0;
  return result;
}

uint64_t FindMySettings.lockFindMyFriends.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C73EC0 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C73EC8, v1, v2, v3, v4);
}

uint64_t sub_20E49EBE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C73EC0 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C73EC8, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E49EC78(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C73EC0 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C73EC8, v4, v5, v6, v7);
}

void FindMySettings.lockFindMyFriends.setter(unsigned __int8 a1)
{
  if (qword_280C73EC0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C73EC8, v2, v3, v4, v5);
}

void (*FindMySettings.lockFindMyFriends.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73EC0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73EC8, v3, v4, v5, v6);
  return sub_20E49EE30;
}

uint64_t FindMySettings.effectiveLockFindMyFriends.getter()
{
  if (qword_280C73EC0 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C73EC8);
}

void sub_20E49EEA8()
{
  byte_280C73EC8 = 0;
  qword_280C73ED0 = 0xD000000000000018;
  unk_280C73ED8 = 0x800000020E4CF180;
  qword_280C73EF8 = &type metadata for BoolCombineOperator;
  unk_280C73F00 = &protocol witness table for BoolCombineOperator;
  byte_280C73EE0 = 0;
  word_280C73F08 = 256;
  byte_280C73F0A = 0;
  qword_280C73F10 = 0;
  byte_280C73F18 = 1;
}

uint64_t static FindMySettings.lockFindMyFriends.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280C73EC0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_20E431094(&byte_280C73EC8, v2);
}

uint64_t FindMySettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_20E4C6A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v24[2] = *v1;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20E4C7720;
  v18 = qword_280C73EC0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_280C73ED8;
  *(v17 + 32) = qword_280C73ED0;
  *(v17 + 40) = v19;

  v20 = sub_20E41BCBC(&byte_280C73EC8, v13, v14, v15, v16);
  v21 = sub_20E41FA28(&byte_280C73EC8);
  *(v17 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v17 + 48) = v20;
  *(v17 + 49) = v21;
  v22 = sub_20E4C6A00();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_20E4C6A20();
}

unint64_t sub_20E49F1E4()
{
  result = qword_27C8CF7B8;
  if (!qword_27C8CF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF7B8);
  }

  return result;
}

unint64_t sub_20E49F23C()
{
  result = qword_27C8CF7C0;
  if (!qword_27C8CF7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF7C8, &qword_20E4CC140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF7C0);
  }

  return result;
}

uint64_t UserSettings.SharingPolicy.rawValue.getter()
{
  v1 = 0x6972747365726E75;
  if (*v0 != 1)
  {
    v1 = 0x7463697274736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

ManagedSettings::UserSettings::SharingPolicy_optional __swiftcall UserSettings.SharingPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ManagedSettings::UserSettings::Name_optional __swiftcall UserSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UserSettings.Name.rawValue.getter()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_20E49F440(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "user.denySharing";
  v4 = 0xD00000000000001CLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v2 == 1)
  {
    v6 = "user.denySharing";
  }

  else
  {
    v6 = "user.denyUnrestrictedSharing";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "findMy.lockFindMyFriends";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "user.denyUnrestrictedSharing";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "findMy.lockFindMyFriends";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E49F518()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E49F5B4()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E49F63C()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E49F6E0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "user.denySharing";
  v4 = 0xD00000000000001CLL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = "user.denyUnrestrictedSharing";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "findMy.lockFindMyFriends";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t UserSettings.SharingPolicy.description.getter()
{
  v1 = 0x6972747365726E55;
  if (*v0 != 1)
  {
    v1 = 0x7463697274736552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_20E49F7CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6972747365726E75;
  v4 = 0xEC00000064657463;
  if (v2 != 1)
  {
    v3 = 0x7463697274736572;
    v4 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6972747365726E75;
  v8 = 0xEC00000064657463;
  if (*a2 != 1)
  {
    v7 = 0x7463697274736572;
    v8 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E49F8E0()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E49F988()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E49FA1C()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E49FACC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC00000064657463;
  v5 = 0x6972747365726E75;
  if (v2 != 1)
  {
    v5 = 0x7463697274736572;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20E49FB40()
{
  v1 = 0x6972747365726E55;
  if (*v0 != 1)
  {
    v1 = 0x7463697274736552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

void (*UserSettings.denySharing.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74608 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74610, v3, v4, v5, v6);
  return sub_20E49FCA4;
}

void sub_20E49FCD4()
{
  byte_280C74610 = 0;
  qword_280C74618 = 0xD000000000000010;
  unk_280C74620 = 0x800000020E4CF1A0;
  qword_280C74640 = &type metadata for BoolCombineOperator;
  unk_280C74648 = &protocol witness table for BoolCombineOperator;
  byte_280C74628 = 0;
  word_280C74650 = 256;
  byte_280C74652 = 0;
  qword_280C74658 = 0;
  byte_280C74660 = 1;
}

void (*UserSettings.denyUnrestrictedSharing.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74520 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74528, v3, v4, v5, v6);
  return sub_20E49FE58;
}

void sub_20E49FE88()
{
  byte_280C74528 = 1;
  qword_280C74530 = 0xD00000000000001CLL;
  unk_280C74538 = 0x800000020E4CF1C0;
  qword_280C74558 = &type metadata for BoolCombineOperator;
  unk_280C74560 = &protocol witness table for BoolCombineOperator;
  byte_280C74540 = 0;
  word_280C74568 = 256;
  byte_280C7456A = 0;
  qword_280C74570 = 0;
  byte_280C74578 = 1;
}

uint64_t UserSettings.sharingPolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C74580 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C74590;
    v6 = unk_280C74598;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C745CA;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  static UserSettings.SharingPolicy.value(from:)(v8, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED78, &qword_20E4C7C68);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 3;
  }

  return result;
}

uint64_t sub_20E4A0068(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = *a1;
  if (*a5 != -1)
  {
    v13 = a2;
    v14 = a7;
    swift_once();
    a7 = v14;
    a2 = v13;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];

  return a7();
}

void UserSettings.sharingPolicy.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_280C74580 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_20E41DAB8(v2, &byte_280C74588, v3, v4, v5, v6);
}

void (*UserSettings.sharingPolicy.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  UserSettings.sharingPolicy.getter((a1 + 8));
  return sub_20E4A01DC;
}

void sub_20E4A01DC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (qword_280C74580 != -1)
  {
    v8 = v2;
    v9 = v1;
    swift_once();
    v1 = v9;
    v2 = v8;
  }

  v3 = *v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);

  sub_20E41DAB8(v2, &byte_280C74588, v4, v5, v6, v7);
}

uint64_t UserSettings.effectiveSharingPolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280C74580 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return sub_20E4202C0(&byte_280C74588, a1);
}

uint64_t sub_20E4A02D8()
{
  byte_280C74588 = 0;
  qword_280C74590 = 0xD000000000000012;
  unk_280C74598 = 0x800000020E4CF1E0;
  qword_280C745B8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF480, &qword_20E4CA018);
  result = sub_20E430A50(&qword_280C725F8, &qword_27C8CF480, &qword_20E4CA018);
  qword_280C745C0 = result;
  byte_280C745A0 = 1;
  word_280C745C8 = 256;
  byte_280C745CA = 0;
  qword_280C745D0 = 0;
  byte_280C745D8 = 1;
  return result;
}

uint64_t static UserSettings.sharingPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C74580 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&byte_280C74588, v1, &qword_27C8CF7D0, &qword_20E4CC200);
}

uint64_t UserSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_20E4C6A10();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v30 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v39 = *v1;
  v40 = v13;
  v41 = v14;
  v42 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4C7D30;
  v17 = qword_280C74608;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_280C74620;
  *(v16 + 32) = qword_280C74618;
  *(v16 + 40) = v18;

  v19 = sub_20E41BCBC(&byte_280C74610, v12, v13, v14, v15);
  v20 = sub_20E41FA28(&byte_280C74610);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v16 + 72) = v21;
  *(v16 + 48) = v19;
  *(v16 + 49) = v20;
  if (qword_280C74520 != -1)
  {
    swift_once();
  }

  v22 = unk_280C74538;
  *(v16 + 80) = qword_280C74530;
  *(v16 + 88) = v22;

  v23 = sub_20E41BCBC(&byte_280C74528, v12, v13, v14, v15);
  v24 = sub_20E41FA28(&byte_280C74528);
  *(v16 + 120) = v21;
  *(v16 + 96) = v23;
  *(v16 + 97) = v24;
  if (qword_280C74580 != -1)
  {
    swift_once();
  }

  v25 = unk_280C74598;
  *(v16 + 128) = qword_280C74590;
  *(v16 + 136) = v25;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;

  UserSettings.sharingPolicy.getter(&v34);
  v26 = v34;
  sub_20E4202C0(&byte_280C74588, &v33);
  v27 = v33;
  *(v16 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF7D8, &qword_20E4CC208);
  *(v16 + 144) = v26;
  *(v16 + 145) = v27;
  v28 = sub_20E4C6A00();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  (*(v30 + 104))(v6, *MEMORY[0x277D84C38], v31);
  return sub_20E4C6A20();
}

unint64_t sub_20E4A0770()
{
  result = qword_27C8CF7E0;
  if (!qword_27C8CF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF7E0);
  }

  return result;
}

unint64_t sub_20E4A0808()
{
  result = qword_280C745E0;
  if (!qword_280C745E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C745E0);
  }

  return result;
}

uint64_t sub_20E4A08E0()
{
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A09D0()
{
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A0AC0()
{
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A0BB4()
{
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A0CBC()
{
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A0DA8()
{
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A0E98()
{
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E4A0F84(void *a1@<X0>, uint64_t (*a2)(void *)@<X1>, void (*a3)(uint64_t *, uint64_t, unint64_t)@<X2>, uint64_t a4@<X8>)
{
  if (!a1)
  {
LABEL_10:
    *a4 = 0;
    *(a4 + 8) = 0;
    v21 = -1;
LABEL_11:
    *(a4 + 16) = v21;
    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    if (qword_27C8CEC40 != -1)
    {
      swift_once();
    }

    v12 = sub_20E4C61D0();
    __swift_project_value_buffer(v12, qword_27C8CF138);
    v13 = a1;
    v14 = sub_20E4C61B0();
    v15 = sub_20E4C66C0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v33 = v17;
      *v16 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED90, &unk_20E4C7C80);
      v18 = sub_20E4C6770();
      v20 = sub_20E4294A8(v18, v19, &v33);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_20E415000, v14, v15, "Persistable value %{public}s not decodable to ShieldSettings.ActivityCategoryPolicy", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x20F32FA80](v17, -1, -1);
      MEMORY[0x20F32FA80](v16, -1, -1);
    }

    goto LABEL_10;
  }

  v9 = v8;
  *&v33 = 0x6974697669746361;
  *(&v33 + 1) = 0xEA00000000007365;
  v10 = a1;
  v11 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_20E4C67A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (*(&v32 + 1))
  {
    sub_20E432194();
    if (swift_dynamicCast())
    {
      v22 = v30;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_20E424DA8(&v33, &qword_27C8CED98, &qword_20E4C7E70);
    v22 = 0;
  }

  v23 = a2(v22);

  if (!v23)
  {

    *a4 = 0;
    *(a4 + 8) = 0;
    v21 = 2;
    goto LABEL_11;
  }

  *&v33 = 0x69726F6765746163;
  *(&v33 + 1) = 0xEA00000000007365;
  v24 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_20E4C67A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (*(&v32 + 1))
  {
    sub_20E432194();
    if (swift_dynamicCast())
    {
      v25 = v30;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_20E424DA8(&v33, &qword_27C8CED98, &qword_20E4C7E70);
    v25 = 0;
  }

  v26 = sub_20E449AC0(v25);

  if (!v26)
  {
    v29 = sub_20E4A13A0(v23, a3);

    *a4 = v29;
    *(a4 + 8) = 0;
    v21 = 1;
    goto LABEL_11;
  }

  v27 = sub_20E4A13A0(v26, sub_20E455B94);

  v28 = sub_20E4A13A0(v23, a3);

  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = 0;
}

uint64_t sub_20E4A13A0(uint64_t a1, void (*a2)(uint64_t *, uint64_t, unint64_t))
{
  v17 = MEMORY[0x277D84FA0];
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(a1 + 48) + 48 * (v12 | (v10 << 6));
    v14 = *(v13 + 24);
    if (v14 >> 60 != 15)
    {
      v15 = *(v13 + 16);
      sub_20E424B50(v15, *(v13 + 24));
      a2(v16, v15, v14);
      result = sub_20E424BA4(v16[0], v16[1]);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v17;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_20E4A14C8(void *a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
LABEL_10:
    *a3 = 0;
    *(a3 + 8) = 0;
    v19 = -1;
LABEL_11:
    *(a3 + 16) = v19;
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    if (qword_27C8CEC40 != -1)
    {
      swift_once();
    }

    v10 = sub_20E4C61D0();
    __swift_project_value_buffer(v10, qword_27C8CF138);
    v11 = a1;
    v12 = sub_20E4C61B0();
    v13 = sub_20E4C66C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v28 = v15;
      *v14 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED90, &unk_20E4C7C80);
      v16 = sub_20E4C6770();
      v18 = sub_20E4294A8(v16, v17, &v28);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20E415000, v12, v13, "Persistable value %{public}s not decodable to ShieldSettings.PersistedActivityCategoryPolicy", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F32FA80](v15, -1, -1);
      MEMORY[0x20F32FA80](v14, -1, -1);
    }

    goto LABEL_10;
  }

  v7 = v6;
  *&v28 = 0x6974697669746361;
  *(&v28 + 1) = 0xEA00000000007365;
  v8 = a1;
  v9 = [v7 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_20E4C67A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    sub_20E432194();
    if (swift_dynamicCast())
    {
      v20 = v25;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_20E424DA8(&v28, &qword_27C8CED98, &qword_20E4C7E70);
    v20 = 0;
  }

  v21 = a2(v20);

  if (!v21)
  {

    *a3 = 0;
    *(a3 + 8) = 0;
    v19 = 2;
    goto LABEL_11;
  }

  *&v28 = 0x69726F6765746163;
  *(&v28 + 1) = 0xEA00000000007365;
  v22 = [v7 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_20E4C67A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    sub_20E432194();
    if (swift_dynamicCast())
    {
      v23 = v25;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_20E424DA8(&v28, &qword_27C8CED98, &qword_20E4C7E70);
    v23 = 0;
  }

  v24 = sub_20E449AC0(v23);

  if (!v24)
  {
    *a3 = v21;
    *(a3 + 8) = 0;
    v19 = 1;
    goto LABEL_11;
  }

  *a3 = v24;
  *(a3 + 8) = v21;
  *(a3 + 16) = 0;
}

uint64_t sub_20E4A187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t), uint64_t a10, void (*a11)(void *))
{
  v52 = a5;
  v53 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v54 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v45 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v45 - v27;
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v30 = off_280C72C08;
  if (off_280C72C08)
  {
    v51 = v25;

    if (a3 == 0xFF)
    {
      v48 = 0;
    }

    else
    {
      v48 = a9(a1, a2, a3);
    }

    v49 = a11;
    v45 = a10;
    v31 = *(a4 + 32);
    v47 = *(a4 + 24);
    v46 = *(a4 + 82);
    if (a8)
    {
      v32 = a8;
    }

    else
    {
      a7 = *(v30 + 2);
      v32 = *(v30 + 3);
    }

    sub_20E4258D0(a7, v32, v28);
    v33 = a7;
    if (qword_280C75F10 != -1)
    {
      swift_once();
    }

    v34 = swift_allocBox();
    v36 = v35;
    sub_20E424E74(v28, v35, &qword_27C8CED28, &qword_20E4C7E30);
    sub_20E467B30();
    v50 = v28;
    v38 = v37;
    ObjectType = swift_getObjectType();
    v40 = swift_allocObject();
    v41 = v48;
    *(v40 + 16) = v48;
    *(v40 + 24) = v46;
    *(v40 + 32) = v47;
    *(v40 + 40) = v31;
    *(v40 + 48) = v33;
    *(v40 + 56) = v32;
    v47 = v33;
    v42 = v53;
    *(v40 + 64) = v52;
    *(v40 + 72) = v42;
    *(v40 + 80) = v34;
    v52 = v41;

    XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, v49, v40, ObjectType, v38);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v43 = v51;
    sub_20E424E74(v36, v51, &qword_27C8CED28, &qword_20E4C7E30);

    [*(v30 + 5) lock];
    v44 = v54;
    sub_20E424E74(v43, v54, &qword_27C8CED28, &qword_20E4C7E30);
    swift_beginAccess();

    sub_20E425A70(v44, v47, v32);
    swift_endAccess();
    [*(v30 + 5) unlock];

    sub_20E424DA8(v43, &qword_27C8CED28, &qword_20E4C7E30);
    return sub_20E424DA8(v50, &qword_27C8CED28, &qword_20E4C7E30);
  }

  return result;
}

uint64_t sub_20E4A1C58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, unint64_t))
{
  if (qword_280C72C00 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v13 = off_280C72C08;
    if (off_280C72C08)
    {
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v30 = a2;
      v31 = a3;
      v32 = a4;
      v33 = a5;
      v16 = *(a1 + 66);

      v17 = v16;
      a5 = v13;
      a4 = sub_20E425F00(v14, v15, &v30, v17);
    }

    else
    {
      a4 = 0;
    }

    v18 = (a6)(a4);
    if (!v18)
    {
      break;
    }

    a6 = v18;
    v29 = MEMORY[0x277D84FA0];
    a2 = v18 + 56;
    v19 = 1 << *(v18 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v18 + 56);
    v22 = (v19 + 63) >> 6;

    v23 = 0;
    while (v21)
    {
LABEL_14:
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = *(a6 + 48) + 48 * (v25 | (v23 << 6));
      a1 = *(v26 + 24);
      if (a1 >> 60 != 15)
      {
        a3 = *(v26 + 16);
        sub_20E424B50(a3, *(v26 + 24));
        a5 = &v29;
        a7(&v30, a3, a1);
        sub_20E424BA4(v30, v31);
      }
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        return v29;
      }

      v21 = *(a2 + 8 * v24);
      ++v23;
      if (v21)
      {
        v23 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  return 0;
}

void sub_20E4A1E5C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v53 = a4;
  v52 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v55 = &v46 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v46 - v19;
  v56 = &v46 - v19;
  if (a1)
  {
    v49 = a6;
    v50 = v10;
    v51 = a5;
    a5 = a1 + 56;
    v21 = *(a1 + 56);
    v60 = MEMORY[0x277D84FA0];
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v21;
    v25 = ((v22 + 63) >> 6);

    v20 = 0;
    while (v24)
    {
      v26 = v20;
LABEL_10:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v28 = *(a1 + 48);
      v61[0] = 0;
      v61[1] = 0;
      v62 = *(v28 + ((v26 << 10) | (16 * v27)));
      v63 = 0;
      v64 = 0;
      sub_20E424B50(v62, *(&v62 + 1));
      sub_20E452EA8(v57, v61);
      v29 = v58;
      a6 = v59;

      sub_20E4167F8(v29, a6);
    }

    while (1)
    {
      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v26 >= v25)
      {

        v25 = sub_20E4477A8(v60);

        a5 = v51;
        v20 = v56;
        a6 = v49;
        goto LABEL_14;
      }

      v24 = *(a5 + 8 * v26);
      ++v20;
      if (v24)
      {
        v20 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v25 = 0;
LABEL_14:
  if (qword_280C72C00 != -1)
  {
LABEL_24:
    swift_once();
  }

  swift_beginAccess();
  v30 = off_280C72C08;
  if (off_280C72C08)
  {
    v31 = *(a2 + 16);
    v49 = *(a2 + 8);
    v50 = v31;
    v48 = *(a2 + 66);
    if (a6)
    {
      v32 = a6;
    }

    else
    {
      a5 = *(off_280C72C08 + 2);
      v32 = *(off_280C72C08 + 3);
    }

    v51 = v25;

    sub_20E4258D0(a5, v32, v20);
    v33 = a5;
    if (qword_280C75F10 != -1)
    {
      swift_once();
    }

    v34 = swift_allocBox();
    v36 = v35;
    sub_20E424E74(v20, v35, &qword_27C8CED28, &qword_20E4C7E30);
    sub_20E467B30();
    v47 = v37;
    ObjectType = swift_getObjectType();
    v39 = swift_allocObject();
    v40 = v51;
    *(v39 + 16) = v51;
    *(v39 + 24) = v48;
    v41 = v50;
    *(v39 + 32) = v49;
    *(v39 + 40) = v41;
    *(v39 + 48) = v33;
    *(v39 + 56) = v32;
    v42 = v53;
    *(v39 + 64) = v52;
    *(v39 + 72) = v42;
    *(v39 + 80) = v34;
    v52 = v40;

    XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, sub_20E424F98, v39, ObjectType, v47);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v43 = v36;
    v44 = v55;
    sub_20E424E74(v43, v55, &qword_27C8CED28, &qword_20E4C7E30);

    [v30[5] lock];
    v45 = v54;
    sub_20E424E74(v44, v54, &qword_27C8CED28, &qword_20E4C7E30);
    swift_beginAccess();

    sub_20E425A70(v45, v33, v32);
    swift_endAccess();
    [v30[5] unlock];

    sub_20E424DA8(v44, &qword_27C8CED28, &qword_20E4C7E30);
    sub_20E424DA8(v56, &qword_27C8CED28, &qword_20E4C7E30);
  }

  else
  {
  }
}

void sub_20E4A23AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v53 = a4;
  v52 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v55 = &v46 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v46 - v19;
  v56 = &v46 - v19;
  if (a1)
  {
    v49 = a6;
    v50 = v10;
    v51 = a5;
    a5 = a1 + 56;
    v21 = *(a1 + 56);
    v60 = MEMORY[0x277D84FA0];
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v21;
    v25 = ((v22 + 63) >> 6);

    v20 = 0;
    while (v24)
    {
      v26 = v20;
LABEL_10:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v28 = *(a1 + 48);
      v61[0] = 0;
      v61[1] = 0;
      v62 = *(v28 + ((v26 << 10) | (16 * v27)));
      v63 = 0;
      v64 = 0;
      sub_20E424B50(v62, *(&v62 + 1));
      sub_20E453288(v57, v61);
      v29 = v58;
      a6 = v59;

      sub_20E4167F8(v29, a6);
    }

    while (1)
    {
      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v26 >= v25)
      {

        v25 = sub_20E447BB4(v60);

        a5 = v51;
        v20 = v56;
        a6 = v49;
        goto LABEL_14;
      }

      v24 = *(a5 + 8 * v26);
      ++v20;
      if (v24)
      {
        v20 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v25 = 0;
LABEL_14:
  if (qword_280C72C00 != -1)
  {
LABEL_24:
    swift_once();
  }

  swift_beginAccess();
  v30 = off_280C72C08;
  if (off_280C72C08)
  {
    v31 = *(a2 + 16);
    v49 = *(a2 + 8);
    v50 = v31;
    v48 = *(a2 + 66);
    if (a6)
    {
      v32 = a6;
    }

    else
    {
      a5 = *(off_280C72C08 + 2);
      v32 = *(off_280C72C08 + 3);
    }

    v51 = v25;

    sub_20E4258D0(a5, v32, v20);
    v33 = a5;
    if (qword_280C75F10 != -1)
    {
      swift_once();
    }

    v34 = swift_allocBox();
    v36 = v35;
    sub_20E424E74(v20, v35, &qword_27C8CED28, &qword_20E4C7E30);
    sub_20E467B30();
    v47 = v37;
    ObjectType = swift_getObjectType();
    v39 = swift_allocObject();
    v40 = v51;
    *(v39 + 16) = v51;
    *(v39 + 24) = v48;
    v41 = v50;
    *(v39 + 32) = v49;
    *(v39 + 40) = v41;
    *(v39 + 48) = v33;
    *(v39 + 56) = v32;
    v42 = v53;
    *(v39 + 64) = v52;
    *(v39 + 72) = v42;
    *(v39 + 80) = v34;
    v52 = v40;

    XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, sub_20E424F98, v39, ObjectType, v47);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v43 = v36;
    v44 = v55;
    sub_20E424E74(v43, v55, &qword_27C8CED28, &qword_20E4C7E30);

    [v30[5] lock];
    v45 = v54;
    sub_20E424E74(v44, v54, &qword_27C8CED28, &qword_20E4C7E30);
    swift_beginAccess();

    sub_20E425A70(v45, v33, v32);
    swift_endAccess();
    [v30[5] unlock];

    sub_20E424DA8(v44, &qword_27C8CED28, &qword_20E4C7E30);
    sub_20E424DA8(v56, &qword_27C8CED28, &qword_20E4C7E30);
  }

  else
  {
  }
}

uint64_t sub_20E4A28FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, void (*a9)(void *))
{
  v51 = a8;
  v52 = a3;
  v53 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED28, &qword_20E4C7E30);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v43[-v22];
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v43[-v25];
  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v28 = off_280C72C08;
  if (off_280C72C08)
  {
    v49 = v19;

    if (a1)
    {
      v46 = a7(a1);
    }

    else
    {
      v46 = 0;
    }

    v47 = a9;
    v29 = *(a2 + 16);
    v45 = *(a2 + 8);
    v44 = *(a2 + 66);
    if (a6)
    {
      v30 = a6;
    }

    else
    {
      a5 = *(v28 + 2);
      v30 = *(v28 + 3);
    }

    v50 = v23;

    sub_20E4258D0(a5, v30, v26);
    v31 = a5;
    if (qword_280C75F10 != -1)
    {
      swift_once();
    }

    v32 = swift_allocBox();
    v34 = v33;
    sub_20E424E74(v26, v33, &qword_27C8CED28, &qword_20E4C7E30);
    sub_20E467B30();
    v48 = v26;
    v36 = v35;
    ObjectType = swift_getObjectType();
    v38 = swift_allocObject();
    v39 = v46;
    *(v38 + 16) = v46;
    *(v38 + 24) = v44;
    *(v38 + 32) = v45;
    *(v38 + 40) = v29;
    *(v38 + 48) = v31;
    *(v38 + 56) = v30;
    v51 = v31;
    v40 = v53;
    *(v38 + 64) = v52;
    *(v38 + 72) = v40;
    *(v38 + 80) = v32;
    v52 = v39;

    XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, v47, v38, ObjectType, v36);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v41 = v50;
    sub_20E424E74(v34, v50, &qword_27C8CED28, &qword_20E4C7E30);

    [*(v28 + 5) lock];
    v42 = v49;
    sub_20E424E74(v41, v49, &qword_27C8CED28, &qword_20E4C7E30);
    swift_beginAccess();

    sub_20E425A70(v42, v51, v30);
    swift_endAccess();
    [*(v28 + 5) unlock];

    sub_20E424DA8(v41, &qword_27C8CED28, &qword_20E4C7E30);
    return sub_20E424DA8(v48, &qword_27C8CED28, &qword_20E4C7E30);
  }

  return result;
}

uint64_t sub_20E4A2CC4(uint64_t *a1, uint64_t (*a2)(void *), void (*a3)(char *, void *), void (*a4)(uint64_t, uint64_t (*)(void)))
{
  if (qword_280C72720 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    swift_beginAccess();
    v7 = a1[1];
    v8 = a1[2];

    v9 = sub_20E431A1C(v7, v8);

    if (v9)
    {
      v10 = v9;
      v11 = a2(v9);

      result = v11;
      if (v11)
      {
        return result;
      }
    }

    a1 = *a1;
    v13 = a1[7];
    v27 = MEMORY[0x277D84FA0];
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    while (v16)
    {
      v19 = v18;
LABEL_12:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = a1[6];
      v28[0] = 0;
      v28[1] = 0;
      v29 = *(v21 + ((v19 << 10) | (16 * v20)));
      v30 = 0;
      v31 = 0;
      sub_20E424B50(v29, *(&v29 + 1));
      a3(v24, v28);
      v22 = v25;
      a2 = v26;

      a4(v22, a2);
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return v27;
      }

      v16 = a1[v19 + 7];
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }
}

ManagedSettings::ShieldSettings::Name_optional __swiftcall ShieldSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ShieldSettings.Name.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  v3 = 0xD00000000000001ALL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001FLL;
  if (v1 == 1)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20E4A2FF0()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

void sub_20E4A30E0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "user.sharingPolicy";
  v4 = "shield.unshieldableApplications";
  v5 = 0xD00000000000001DLL;
  v6 = "shield.unshieldableWebDomains";
  v7 = 0xD00000000000001ALL;
  if (v2 == 4)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v6 = "shield.webDomains";
  }

  if (v2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "shield.applications";
  v9 = 0xD00000000000001FLL;
  if (v2 == 1)
  {
    v9 = 0xD00000000000001CLL;
  }

  else
  {
    v8 = "shield.applicationCategories";
  }

  if (*v1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v9 = v5;
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t ShieldSettings.applications.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C739A8 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E4A1C58(&qword_280C739B0, v1, v2, v3, v4, sub_20E448FB8, sub_20E455B1C);
}

uint64_t sub_20E4A3250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C739A8 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E4A1C58(&qword_280C739B0, v3, v4, v5, v6, sub_20E448FB8, sub_20E455B1C);
  *a2 = result;
  return result;
}

uint64_t (*ShieldSettings.applications.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C739A8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E4A1C58(&qword_280C739B0, v3, v4, v5, v6, sub_20E448FB8, sub_20E455B1C);
  return sub_20E4A3428;
}

uint64_t ShieldSettings.untokenizedApplications.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v9 = *(v0 + 16);
  if (qword_280C739A8 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v3 = qword_280C739B8;
    v4 = qword_280C739C0;
    v10[0] = v1;
    v10[1] = v2;
    v11 = v9;
    v5 = byte_280C739F2;

    v6 = sub_20E425F00(v3, v4, v10, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_20E448FB8(v6);

  return v7;
}

uint64_t sub_20E4A356C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_280C739A8 != -1)
  {
    v4 = v2;
    v5 = a2;
    swift_once();
    a2 = v5;
    v2 = v4;
  }

  return sub_20E4A28FC(v2, &qword_280C739B0, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), sub_20E4477A8, &unk_28254CD18, sub_20E424F98);
}

uint64_t ShieldSettings.untokenizedApplications.setter(uint64_t a1)
{
  if (qword_280C739A8 != -1)
  {
    swift_once();
  }

  sub_20E4A28FC(a1, &qword_280C739B0, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), sub_20E4477A8, &unk_28254CD18, sub_20E424F98);
}

void (*ShieldSettings.untokenizedApplications.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v6 = *(v1 + 8);
  v13 = *(v1 + 16);
  if (qword_280C739A8 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v7 = qword_280C739B8;
    v8 = qword_280C739C0;
    v14[0] = v5;
    v14[1] = v6;
    v15 = v13;
    v9 = byte_280C739F2;

    v10 = sub_20E425F00(v7, v8, v14, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_20E448FB8(v10);

  *(v4 + 24) = v11;
  return sub_20E4A3848;
}

uint64_t ShieldSettings.effectiveApplications.getter()
{
  if (qword_280C739A8 != -1)
  {
    swift_once();
  }

  return sub_20E4A2CC4(&qword_280C739B0, sub_20E448FB8, sub_20E452EA8, sub_20E424F94);
}

uint64_t sub_20E4A3910()
{
  qword_280C739B0 = MEMORY[0x277D84FA0];
  qword_280C739B8 = 0xD000000000000013;
  qword_280C739C0 = 0x800000020E4CF200;
  qword_280C739E0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEE0, &unk_20E4CCBC0);
  result = sub_20E430A50(qword_280C75880, &qword_27C8CEEE0, &unk_20E4CCBC0);
  qword_280C739E8 = result;
  byte_280C739C8 = 1;
  word_280C739F0 = 257;
  byte_280C739F2 = 0;
  qword_280C739F8 = 50;
  byte_280C73A00 = 0;
  return result;
}

uint64_t static ShieldSettings.applications.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C739A8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C739B0, v1, &qword_27C8CF808, &unk_20E4CDF60);
}

uint64_t ShieldSettings.applicationCategories.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C738C8 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C738E8;
    v6 = unk_280C738F0;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C73922;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  sub_20E4A0F84(v8, sub_20E448FB8, sub_20E455B1C, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF810, &qword_20E4CC4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF818, &qword_20E4CC4F0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  return result;
}

void ShieldSettings.applicationCategories.setter(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) == 2)
    {
      if (qword_280C738C8 != -1)
      {
        swift_once();
      }

      v9 = *v1;
      v10 = v1[1];
      v11 = v1[2];
      v12 = v1[3];
      v13 = v3;
      v14 = v2;
      v15 = 2;
    }

    else
    {
      if (qword_280C738C8 != -1)
      {
        swift_once();
      }

      v9 = *v1;
      v10 = v1[1];
      v11 = v1[2];
      v12 = v1[3];
      v13 = v3;
      v14 = v2;
      v15 = -1;
    }

    sub_20E41DF20(v13, v14, v15, &qword_280C738D0, v9, v10, v11, v12);
  }

  else
  {
    if (*(a1 + 16))
    {
      sub_20E48C804(*a1, v2, 1);
      if (qword_280C738C8 != -1)
      {
        swift_once();
      }

      sub_20E41DF20(v3, v2, 1, &qword_280C738D0, *v1, v1[1], v1[2], v1[3]);
      sub_20E41A084(v3, v2, 1);
      v6 = v3;
      v7 = v2;
      v8 = 1;
    }

    else
    {
      v4 = qword_280C738C8;
      v5 = *a1;

      if (v4 != -1)
      {
        swift_once();
      }

      sub_20E41DF20(v3, v2, 0, &qword_280C738D0, *v1, v1[1], v1[2], v1[3]);
      sub_20E41A084(v3, v2, 0);
      v6 = v3;
      v7 = v2;
      v8 = 0;
    }

    sub_20E41A084(v6, v7, v8);
  }
}

uint64_t (*ShieldSettings.applicationCategories.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  ShieldSettings.applicationCategories.getter(a1);
  return sub_20E4A3E50;
}

void ShieldSettings.untokenizedApplicationCategories.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v9 = *(v1 + 16);
  if (qword_280C738C8 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C738E8;
    v6 = unk_280C738F0;
    v10[0] = v3;
    v10[1] = v4;
    v11 = v9;
    v7 = byte_280C73922;

    v8 = sub_20E425F00(v5, v6, v10, v7);
  }

  else
  {
    v8 = 0;
  }

  sub_20E4A14C8(v8, sub_20E448FB8, a1);
}

uint64_t sub_20E4A3FC8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (qword_280C738C8 != -1)
  {
    v8 = v4;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    swift_once();
    v6 = v10;
    v5 = v9;
    v4 = v8;
  }

  return sub_20E4A187C(v4, v5, v6, &qword_280C738D0, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), sub_20E47380C, &unk_28254CCF0, sub_20E424F98);
}

uint64_t ShieldSettings.untokenizedApplicationCategories.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (qword_280C738C8 != -1)
  {
    swift_once();
  }

  sub_20E4A187C(v2, v3, v4, &qword_280C738D0, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), sub_20E47380C, &unk_28254CCF0, sub_20E424F98);

  return sub_20E41A084(v2, v3, v4);
}

void (*ShieldSettings.untokenizedApplicationCategories.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(v1 + 8);
  v12 = *(v1 + 16);
  if (qword_280C738C8 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v7 = qword_280C738E8;
    v8 = unk_280C738F0;
    v13[0] = v5;
    v13[1] = v6;
    v14 = v12;
    v9 = byte_280C73922;

    v10 = sub_20E425F00(v7, v8, v13, v9);
  }

  else
  {
    v10 = 0;
  }

  sub_20E4A14C8(v10, sub_20E448FB8, v4 + 24);

  return sub_20E4A42F0;
}

void sub_20E4A42F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  if (a2)
  {
    sub_20E41A0AC(*(*a1 + 24), v5, v6);
    sub_20E4A187C(v3, v5, v6, &qword_280C738D0, v7, v8, v9, v10, sub_20E47380C, &unk_28254CCF0, sub_20E424F98);
    sub_20E41A084(v3, v5, v6);
    v11 = *(v2 + 24);
    v12 = *(v2 + 32);
    v13 = *(v2 + 40);
  }

  else
  {
    sub_20E4A187C(v3, v5, v6, &qword_280C738D0, v7, v8, v9, v10, sub_20E47380C, &unk_28254CCF0, sub_20E424F98);
    v11 = v3;
    v12 = v5;
    v13 = v6;
  }

  sub_20E41A084(v11, v12, v13);

  free(v2);
}

void ShieldSettings.effectiveApplicationCategories.getter(uint64_t a1@<X8>)
{
  if (qword_280C738C8 != -1)
  {
    swift_once();
  }

  if (qword_280C72720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280C738E8;
  v3 = unk_280C738F0;

  v4 = sub_20E431A1C(v2, v3);

  if (!v4 || (v5 = v4, sub_20E4A14C8(v4, sub_20E448FB8, &v7), v5, v5, v6 = v8, v8 == 255))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v6 = 2;
  }

  else
  {
    *a1 = v7;
  }

  *(a1 + 16) = v6;
}

uint64_t sub_20E4A4588()
{
  qword_280C738D0 = 0;
  *algn_280C738D8 = 0;
  byte_280C738E0 = 2;
  qword_280C738E8 = 0xD00000000000001CLL;
  unk_280C738F0 = 0x800000020E4CF220;
  qword_280C73910 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF440, &qword_20E4C9FD0);
  result = sub_20E430A50(qword_280C722D0, &qword_27C8CF440, &qword_20E4C9FD0);
  qword_280C73918 = result;
  word_280C73920 = 257;
  byte_280C73922 = 0;
  qword_280C73928 = 0;
  byte_280C73930 = 1;
  return result;
}

uint64_t static ShieldSettings.applicationCategories.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C738C8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C738D0, v1, &qword_27C8CF820, &unk_20E4CDF50);
}

uint64_t sub_20E4A46EC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  if (*a1 != -1)
  {
    v11 = *v3;
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  return a3(a2);
}

uint64_t sub_20E4A4784@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  if (*a2 == -1)
  {
    result = a4(a3);
  }

  else
  {
    v8 = *a1;
    v10 = a1[1];
    v11 = a1[2];
    v12 = a1[3];
    swift_once();
    result = a4(a3);
  }

  *a5 = result;
  return result;
}

uint64_t (*ShieldSettings.unshieldableApplications.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73758 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41BDF8(&qword_280C73760, v3, v4, v5, v6);
  return sub_20E4A4910;
}

uint64_t sub_20E4A4968(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*a1 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  return a3(a2);
}

uint64_t sub_20E4A49C8()
{
  qword_280C73760 = MEMORY[0x277D84FA0];
  qword_280C73768 = 0xD00000000000001FLL;
  qword_280C73770 = 0x800000020E4CF240;
  qword_280C73790 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEE0, &unk_20E4CCBC0);
  result = sub_20E430A50(qword_280C75880, &qword_27C8CEEE0, &unk_20E4CCBC0);
  qword_280C73798 = result;
  byte_280C73778 = 1;
  word_280C737A0 = 0;
  byte_280C737A2 = 0;
  qword_280C737A8 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C737B0 = 0;
  return result;
}

uint64_t static ShieldSettings.unshieldableApplications.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C73758 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C73760, v1, &qword_27C8CEEB8, &unk_20E4C7EC0);
}

uint64_t (*ShieldSettings.unshieldableWebDomains.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C737B8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41C474(&qword_280C737C0, v3, v4, v5, v6);
  return sub_20E4A4C20;
}

uint64_t sub_20E4A4C78()
{
  qword_280C737C0 = MEMORY[0x277D84FA0];
  qword_280C737C8 = 0xD00000000000001DLL;
  qword_280C737D0 = 0x800000020E4CF260;
  qword_280C737F0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF450, &unk_20E4C9FE0);
  result = sub_20E430A50(&qword_280C72918, &qword_27C8CF450, &unk_20E4C9FE0);
  qword_280C737F8 = result;
  byte_280C737D8 = 1;
  word_280C73800 = 0;
  byte_280C73802 = 0;
  qword_280C73808 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C73810 = 0;
  return result;
}

uint64_t static ShieldSettings.unshieldableWebDomains.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C737B8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C737C0, v1, &qword_27C8CF828, &qword_20E4CC4F8);
}

uint64_t ShieldSettings.webDomains.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C73A08 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E4A1C58(&qword_280C73A10, v1, v2, v3, v4, sub_20E44953C, sub_20E455C0C);
}

uint64_t sub_20E4A4E58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C73A08 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E4A1C58(&qword_280C73A10, v3, v4, v5, v6, sub_20E44953C, sub_20E455C0C);
  *a2 = result;
  return result;
}

uint64_t sub_20E4A4F18(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = *a1;
  if (*a5 != -1)
  {
    v13 = a2;
    v14 = a7;
    swift_once();
    a7 = v14;
    a2 = v13;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];

  return a7();
}

uint64_t sub_20E4A4FD8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  a4();
}

uint64_t (*ShieldSettings.webDomains.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73A08 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E4A1C58(&qword_280C73A10, v3, v4, v5, v6, sub_20E44953C, sub_20E455C0C);
  return sub_20E4A5134;
}

uint64_t sub_20E4A5154(uint64_t *a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = *a1;
  if (a2)
  {

    a4(v12, a3, v7, v8, v9, v10);
  }

  else
  {
    a4(v11, a3, *v6, v6[1], v6[2], v6[3]);
  }
}

uint64_t ShieldSettings.untokenizedWebDomains.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v9 = *(v0 + 16);
  if (qword_280C73A08 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v3 = qword_280C73A18;
    v4 = qword_280C73A20;
    v10[0] = v1;
    v10[1] = v2;
    v11 = v9;
    v5 = byte_280C73A52;

    v6 = sub_20E425F00(v3, v4, v10, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_20E44953C(v6);

  return v7;
}

uint64_t sub_20E4A5324(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_280C73A08 != -1)
  {
    v4 = v2;
    v5 = a2;
    swift_once();
    a2 = v5;
    v2 = v4;
  }

  return sub_20E4A28FC(v2, &qword_280C73A10, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), sub_20E447BB4, &unk_28254CCA0, sub_20E424F98);
}

uint64_t ShieldSettings.untokenizedWebDomains.setter(uint64_t a1)
{
  if (qword_280C73A08 != -1)
  {
    swift_once();
  }

  sub_20E4A28FC(a1, &qword_280C73A10, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), sub_20E447BB4, &unk_28254CCA0, sub_20E424F98);
}

void (*ShieldSettings.untokenizedWebDomains.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v6 = *(v1 + 8);
  v13 = *(v1 + 16);
  if (qword_280C73A08 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v7 = qword_280C73A18;
    v8 = qword_280C73A20;
    v14[0] = v5;
    v14[1] = v6;
    v15 = v13;
    v9 = byte_280C73A52;

    v10 = sub_20E425F00(v7, v8, v14, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_20E44953C(v10);

  *(v4 + 24) = v11;
  return sub_20E4A5600;
}

void sub_20E4A563C(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(void *))
{
  v9 = *a1;
  v10 = (*a1 + 24);
  v11 = *(*a1 + 32);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  if (a2)
  {
    v16 = *(*a1 + 24);

    sub_20E4A28FC(v17, a3, v12, v13, v14, v15, a4, a5, a6);

    v18 = *v10;
  }

  else
  {
    sub_20E4A28FC(*(*a1 + 24), a3, v12, v13, v14, v15, a4, a5, a6);
  }

  free(v9);
}

uint64_t ShieldSettings.effectiveWebDomains.getter()
{
  if (qword_280C73A08 != -1)
  {
    swift_once();
  }

  return sub_20E4A2CC4(&qword_280C73A10, sub_20E44953C, sub_20E453288, sub_20E424F94);
}

uint64_t sub_20E4A57B8()
{
  qword_280C73A10 = MEMORY[0x277D84FA0];
  qword_280C73A18 = 0xD000000000000011;
  qword_280C73A20 = 0x800000020E4CF280;
  qword_280C73A40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF450, &unk_20E4C9FE0);
  result = sub_20E430A50(&qword_280C72918, &qword_27C8CF450, &unk_20E4C9FE0);
  qword_280C73A48 = result;
  byte_280C73A28 = 1;
  word_280C73A50 = 257;
  byte_280C73A52 = 0;
  qword_280C73A58 = 50;
  byte_280C73A60 = 0;
  return result;
}

uint64_t static ShieldSettings.webDomains.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C73A08 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C73A10, v1, &qword_27C8CF830, &qword_20E4CC500);
}

uint64_t ShieldSettings.webDomainCategories.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C73938 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C73958;
    v6 = unk_280C73960;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C73992;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  sub_20E4A0F84(v8, sub_20E44953C, sub_20E455C0C, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF838, &qword_20E4CC508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF840, &qword_20E4CCE20);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  return result;
}

void ShieldSettings.webDomainCategories.setter(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) == 2)
    {
      if (qword_280C73938 != -1)
      {
        swift_once();
      }

      v9 = *v1;
      v10 = v1[1];
      v11 = v1[2];
      v12 = v1[3];
      v13 = v3;
      v14 = v2;
      v15 = 2;
    }

    else
    {
      if (qword_280C73938 != -1)
      {
        swift_once();
      }

      v9 = *v1;
      v10 = v1[1];
      v11 = v1[2];
      v12 = v1[3];
      v13 = v3;
      v14 = v2;
      v15 = -1;
    }

    sub_20E41E390(v13, v14, v15, &qword_280C73940, v9, v10, v11, v12);
  }

  else
  {
    if (*(a1 + 16))
    {
      sub_20E48C804(*a1, v2, 1);
      if (qword_280C73938 != -1)
      {
        swift_once();
      }

      sub_20E41E390(v3, v2, 1, &qword_280C73940, *v1, v1[1], v1[2], v1[3]);
      sub_20E41A084(v3, v2, 1);
      v6 = v3;
      v7 = v2;
      v8 = 1;
    }

    else
    {
      v4 = qword_280C73938;
      v5 = *a1;

      if (v4 != -1)
      {
        swift_once();
      }

      sub_20E41E390(v3, v2, 0, &qword_280C73940, *v1, v1[1], v1[2], v1[3]);
      sub_20E41A084(v3, v2, 0);
      v6 = v3;
      v7 = v2;
      v8 = 0;
    }

    sub_20E41A084(v6, v7, v8);
  }
}

uint64_t (*ShieldSettings.webDomainCategories.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  ShieldSettings.webDomainCategories.getter(a1);
  return sub_20E4A5CF8;
}

uint64_t sub_20E4A5D38(uint64_t *a1, char a2, void (*a3)(uint64_t *), void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v9 = a1[3];
  if (a2)
  {
    v12 = *a1;
    v13 = v6;
    v14 = v8;
    a4(v7, v6, v8);
    a3(&v12);

    return a5(v7, v6, v8);
  }

  else
  {
    v12 = *a1;
    v13 = v6;
    v14 = v8;
    return (a3)(&v12);
  }
}

void ShieldSettings.untokenizedWebDomainCategories.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v9 = *(v1 + 16);
  if (qword_280C73938 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C73958;
    v6 = unk_280C73960;
    v10[0] = v3;
    v10[1] = v4;
    v11 = v9;
    v7 = byte_280C73992;

    v8 = sub_20E425F00(v5, v6, v10, v7);
  }

  else
  {
    v8 = 0;
  }

  sub_20E4A14C8(v8, sub_20E44953C, a1);
}

uint64_t sub_20E4A5F34(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (qword_280C73938 != -1)
  {
    v8 = v4;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    swift_once();
    v6 = v10;
    v5 = v9;
    v4 = v8;
  }

  return sub_20E4A187C(v4, v5, v6, &qword_280C73940, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), sub_20E473824, &unk_28254CC78, sub_20E424A7C);
}

uint64_t ShieldSettings.untokenizedWebDomainCategories.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (qword_280C73938 != -1)
  {
    swift_once();
  }

  sub_20E4A187C(v2, v3, v4, &qword_280C73940, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), sub_20E473824, &unk_28254CC78, sub_20E424A7C);

  return sub_20E41A084(v2, v3, v4);
}

void (*ShieldSettings.untokenizedWebDomainCategories.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(v1 + 8);
  v12 = *(v1 + 16);
  if (qword_280C73938 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v7 = qword_280C73958;
    v8 = unk_280C73960;
    v13[0] = v5;
    v13[1] = v6;
    v14 = v12;
    v9 = byte_280C73992;

    v10 = sub_20E425F00(v7, v8, v13, v9);
  }

  else
  {
    v10 = 0;
  }

  sub_20E4A14C8(v10, sub_20E44953C, v4 + 24);

  return sub_20E4A625C;
}

void sub_20E4A625C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  if (a2)
  {
    sub_20E41A0AC(*(*a1 + 24), v5, v6);
    sub_20E4A187C(v3, v5, v6, &qword_280C73940, v7, v8, v9, v10, sub_20E473824, &unk_28254CC78, sub_20E424A7C);
    sub_20E41A084(v3, v5, v6);
    v11 = *(v2 + 24);
    v12 = *(v2 + 32);
    v13 = *(v2 + 40);
  }

  else
  {
    sub_20E4A187C(v3, v5, v6, &qword_280C73940, v7, v8, v9, v10, sub_20E473824, &unk_28254CC78, sub_20E424A7C);
    v11 = v3;
    v12 = v5;
    v13 = v6;
  }

  sub_20E41A084(v11, v12, v13);

  free(v2);
}

void ShieldSettings.effectiveWebDomainCategories.getter(uint64_t a1@<X8>)
{
  if (qword_280C73938 != -1)
  {
    swift_once();
  }

  if (qword_280C72720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280C73958;
  v3 = unk_280C73960;

  v4 = sub_20E431A1C(v2, v3);

  if (!v4 || (v5 = v4, sub_20E4A14C8(v4, sub_20E44953C, &v7), v5, v5, v6 = v8, v8 == 255))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v6 = 2;
  }

  else
  {
    *a1 = v7;
  }

  *(a1 + 16) = v6;
}

uint64_t sub_20E4A64F4()
{
  qword_280C73940 = 0;
  *algn_280C73948 = 0;
  byte_280C73950 = 2;
  qword_280C73958 = 0xD00000000000001ALL;
  unk_280C73960 = 0x800000020E4CF2A0;
  qword_280C73980 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF438, &qword_20E4C9FC8);
  result = sub_20E430A50(&qword_280C722C8, &qword_27C8CF438, &qword_20E4C9FC8);
  qword_280C73988 = result;
  word_280C73990 = 257;
  byte_280C73992 = 0;
  qword_280C73998 = 0;
  byte_280C739A0 = 1;
  return result;
}

uint64_t static ShieldSettings.webDomainCategories.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C73938 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C73940, v1, &qword_27C8CF848, &qword_20E4CC510);
}

uint64_t ShieldSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = sub_20E4C6A10();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v69 = &v66 - v9;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v81 = *v1;
  v82 = v11;
  v83 = v12;
  v84 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20E4C7EB0;
  v15 = qword_280C739A8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280C739B8;
  v17 = qword_280C739C0;
  *(v14 + 32) = qword_280C739B8;
  *(v14 + 40) = v17;
  v18 = qword_280C72C00;

  if (v18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v77 = v10;
    v78 = v11;
    v79 = v12;
    v80 = v13;
    v19 = byte_280C739F2;

    v20 = sub_20E425F00(v16, v17, &v77, v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_20E448FB8(v20);

  v22 = sub_20E4A2CC4(&qword_280C739B0, sub_20E448FB8, sub_20E452EA8, sub_20E424F94);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEC0, &unk_20E4C7EE0);
  *(v14 + 72) = v66;
  *(v14 + 48) = v21;
  *(v14 + 56) = v22;
  if (qword_280C738C8 != -1)
  {
    swift_once();
  }

  v23 = qword_280C738E8;
  v24 = unk_280C738F0;
  *(v14 + 80) = qword_280C738E8;
  *(v14 + 88) = v24;
  v68 = v10;
  v67 = v12;
  if (off_280C72C08)
  {
    v77 = v10;
    v78 = v11;
    v79 = v12;
    v80 = v13;
    v25 = byte_280C73922;

    v26 = sub_20E425F00(v23, v24, &v77, v25);
  }

  else
  {

    v26 = 0;
  }

  sub_20E4A14C8(v26, sub_20E448FB8, &v77);

  v27 = v77;
  v28 = v78;
  v29 = v79;
  if (qword_280C72720 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v30 = sub_20E431A1C(v23, v24);

  if (!v30 || (v31 = v30, sub_20E4A14C8(v30, sub_20E448FB8, &v74), v31, v31, v32 = v76, v76 == 255))
  {
    v34 = 0;
    v33 = 0;
    v32 = 2;
  }

  else
  {
    v34 = v74;
    v33 = v75;
  }

  *(v14 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF850, &qword_20E4CC518);
  v35 = swift_allocObject();
  *(v14 + 96) = v35;
  *(v35 + 16) = v27;
  *(v35 + 24) = v28;
  *(v35 + 32) = v29;
  *(v35 + 40) = v34;
  *(v35 + 48) = v33;
  *(v35 + 56) = v32;
  if (qword_280C73758 != -1)
  {
    swift_once();
  }

  v36 = qword_280C73770;
  *(v14 + 128) = qword_280C73768;
  *(v14 + 136) = v36;

  v37 = v68;
  v38 = v67;
  v39 = sub_20E41BDF8(&qword_280C73760, v68, v11, v67, v13);
  v40 = sub_20E41FB38(&qword_280C73760);
  *(v14 + 168) = v66;
  *(v14 + 144) = v39;
  *(v14 + 152) = v40;
  if (qword_280C737B8 != -1)
  {
    swift_once();
  }

  v41 = qword_280C737D0;
  *(v14 + 176) = qword_280C737C8;
  *(v14 + 184) = v41;

  v42 = sub_20E41C474(&qword_280C737C0, v37, v11, v38, v13);
  v43 = sub_20E4202F0(&qword_280C737C0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF858, &qword_20E4CC520);
  *(v14 + 216) = v44;
  *(v14 + 192) = v42;
  *(v14 + 200) = v43;
  if (qword_280C73A08 != -1)
  {
    swift_once();
  }

  v46 = qword_280C73A18;
  v45 = qword_280C73A20;
  *(v14 + 224) = qword_280C73A18;
  *(v14 + 232) = v45;
  if (off_280C72C08)
  {
    v77 = v37;
    v78 = v11;
    v79 = v38;
    v80 = v13;
    v47 = byte_280C73A52;

    v48 = sub_20E425F00(v46, v45, &v77, v47);
  }

  else
  {

    v48 = 0;
  }

  v49 = sub_20E44953C(v48);

  v50 = sub_20E4A2CC4(&qword_280C73A10, sub_20E44953C, sub_20E453288, sub_20E424F94);
  *(v14 + 264) = v44;
  *(v14 + 240) = v49;
  *(v14 + 248) = v50;
  if (qword_280C73938 != -1)
  {
    swift_once();
  }

  v51 = qword_280C73958;
  v52 = unk_280C73960;
  *(v14 + 272) = qword_280C73958;
  *(v14 + 280) = v52;
  if (off_280C72C08)
  {
    v77 = v37;
    v78 = v11;
    v79 = v38;
    v80 = v13;
    v53 = byte_280C73992;

    v54 = sub_20E425F00(v51, v52, &v77, v53);
  }

  else
  {

    v54 = 0;
  }

  sub_20E4A14C8(v54, sub_20E44953C, &v77);

  v55 = v77;
  v56 = v78;
  v57 = v79;

  v58 = sub_20E431A1C(v51, v52);

  if (!v58 || (v59 = v58, sub_20E4A14C8(v58, sub_20E44953C, &v74), v59, v59, v60 = v76, v76 == 255))
  {
    v62 = 0;
    v61 = 0;
    v60 = 2;
  }

  else
  {
    v62 = v74;
    v61 = v75;
  }

  *(v14 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF860, &qword_20E4CC528);
  v63 = swift_allocObject();
  *(v14 + 288) = v63;
  *(v63 + 16) = v55;
  *(v63 + 24) = v56;
  *(v63 + 32) = v57;
  *(v63 + 40) = v62;
  *(v63 + 48) = v61;
  *(v63 + 56) = v60;
  v64 = sub_20E4C6A00();
  (*(*(v64 - 8) + 56))(v69, 1, 1, v64);
  (*(v71 + 104))(v70, *MEMORY[0x277D84C38], v72);
  return sub_20E4C6A20();
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_20E48C224(*(v0 + 16), *(v0 + 24), v1);
  }

  v2 = *(v0 + 56);
  if (v2 != 255)
  {
    sub_20E48C224(*(v0 + 40), *(v0 + 48), v2);
  }

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_20E4A6F44()
{
  result = qword_27C8CF868;
  if (!qword_27C8CF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF868);
  }

  return result;
}

uint64_t keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void)@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 1);
  result = a4(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t keypath_set_10Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void *))
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = v8;
  a5(v10[0]);
  return a6(v10);
}

double keypath_get_9Tm@<D0>(uint64_t *a1@<X0>, void (*a2)(__int128 *__return_ptr)@<X3>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v9 = *a1;
  v10 = v4;
  v11 = *(a1 + 1);
  a2(&v7);
  v5 = v8;
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v5;
  return result;
}

uint64_t UserSafetySettings.ScannableService.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x706F7244726961;
  v3 = 0x736567617373656DLL;
  v4 = 0x736F746F6870;
  if (v1 != 3)
  {
    v4 = 0x696F566F65646976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73746361746E6F63;
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

ManagedSettings::UserSafetySettings::ScannableService_optional __swiftcall UserSafetySettings.ScannableService.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UserSafetySettings.InterventionType.rawValue.getter()
{
  if (*v0)
  {
    result = 1852138868;
  }

  else
  {
    result = 0x646C696863;
  }

  *v0;
  return result;
}

uint64_t sub_20E4A725C@<X0>(char *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_20E4A72F8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "userSafety.allowedClients";
  }

  else
  {
    v2 = "shield.webDomainCategories";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "userSafety.allowedClients";
  }

  else
  {
    v4 = "shield.webDomainCategories";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20E4C6910();
  }

  return v5 & 1;
}

uint64_t sub_20E4A739C()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A7414()
{
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4A7478()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E4A74F8(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "userSafety.allowedClients";
  }

  else
  {
    v2 = "shield.webDomainCategories";
  }

  *a1 = 0xD000000000000019;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t UserSafetySettings.ScannableService.description.getter()
{
  v1 = *v0;
  v2 = 0x706F7244726941;
  v3 = 0x736567617373654DLL;
  v4 = 0x736F746F6850;
  if (v1 != 3)
  {
    v4 = 0x696F566F65646956;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73746361746E6F43;
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

uint64_t sub_20E4A75FC()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A76E8()
{
  *v0;
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4A77C0()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E4A78B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x706F7244726961;
  v5 = 0xE800000000000000;
  v6 = 0x736567617373656DLL;
  v7 = 0xE600000000000000;
  v8 = 0x736F746F6870;
  if (v2 != 3)
  {
    v8 = 0x696F566F65646976;
    v7 = 0xEE006C69614D6563;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73746361746E6F63;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_20E4A796C()
{
  v1 = *v0;
  v2 = 0x706F7244726941;
  v3 = 0x736567617373654DLL;
  v4 = 0x736F746F6850;
  if (v1 != 3)
  {
    v4 = 0x696F566F65646956;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73746361746E6F43;
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

uint64_t UserSafetySettings.InterventionType.description.getter()
{
  if (*v0)
  {
    result = 1852138836;
  }

  else
  {
    result = 0x646C696843;
  }

  *v0;
  return result;
}

uint64_t sub_20E4A7A4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1852138868;
  }

  else
  {
    v4 = 0x646C696863;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1852138868;
  }

  else
  {
    v6 = 0x646C696863;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20E4C6910();
  }

  return v9 & 1;
}

uint64_t sub_20E4A7AE8()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A7B60()
{
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4A7BC4()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A7C44@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_20E4A7CA0(uint64_t *a1@<X8>)
{
  v2 = 1852138868;
  if (!*v1)
  {
    v2 = 0x646C696863;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_20E4A7D34()
{
  if (*v0)
  {
    result = 1852138836;
  }

  else
  {
    result = 0x646C696843;
  }

  *v0;
  return result;
}

unint64_t UserSafetySettings.ScanningPolicy.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v5 = v0[1];
    sub_20E4C6830();
    MEMORY[0x20F32EE70](0xD000000000000029, 0x800000020E4D0C10);
    sub_20E4A8DE8();
    v6 = sub_20E4C63D0();
    MEMORY[0x20F32EE70](v6);

    MEMORY[0x20F32EE70](0xD000000000000010, 0x800000020E4D0C40);
    sub_20E4A8E3C();
    v2 = sub_20E4C63D0();
LABEL_11:
    MEMORY[0x20F32EE70](v2, v4);

    MEMORY[0x20F32EE70](41, 0xE100000000000000);
    return 0;
  }

  if (*(v0 + 16) == 1)
  {
    sub_20E4C6830();
    MEMORY[0x20F32EE70](0xD000000000000035, 0x800000020E4D0BD0);
    if (v1)
    {
      v2 = 1852138836;
    }

    else
    {
      v2 = 0x646C696843;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    v4 = v3;
    goto LABEL_11;
  }

  return 0xD000000000000013;
}

uint64_t UserSafetySettings.allowedClients.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C75CA8 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BDF8(&qword_280C75CB0, v1, v2, v3, v4);
}

uint64_t sub_20E4A7FC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C75CA8 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BDF8(&qword_280C75CB0, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E4A8058(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280C75CA8 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);

  sub_20E41CC3C(v3, &qword_280C75CB0, v4, v5, v6, v7);
}

uint64_t UserSafetySettings.allowedClients.setter(uint64_t a1)
{
  if (qword_280C75CA8 != -1)
  {
    swift_once();
  }

  sub_20E41CC3C(a1, &qword_280C75CB0, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
}

uint64_t (*UserSafetySettings.allowedClients.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75CA8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41BDF8(&qword_280C75CB0, v3, v4, v5, v6);
  return sub_20E4A8210;
}

uint64_t sub_20E4A8210(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (a2)
  {
    v8 = *a1;

    sub_20E41CC3C(v9, &qword_280C75CB0, v4, v5, v6, v7);
  }

  else
  {
    sub_20E41CC3C(*a1, &qword_280C75CB0, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  }
}

uint64_t UserSafetySettings.effectiveAllowedClients.getter()
{
  if (qword_280C75CA8 != -1)
  {
    swift_once();
  }

  return sub_20E41FB38(&qword_280C75CB0);
}

uint64_t sub_20E4A830C()
{
  qword_280C75CB0 = MEMORY[0x277D84FA0];
  qword_280C75CB8 = 0xD000000000000019;
  qword_280C75CC0 = 0x800000020E4CF2C0;
  qword_280C75CE0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEE0, &unk_20E4CCBC0);
  result = sub_20E430A50(qword_280C75880, &qword_27C8CEEE0, &unk_20E4CCBC0);
  qword_280C75CE8 = result;
  byte_280C75CC8 = 1;
  word_280C75CF0 = 256;
  byte_280C75CF2 = 0;
  qword_280C75CF8 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C75D00 = 0;
  return result;
}

uint64_t static UserSafetySettings.allowedClients.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C75CA8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C75CB0, v1, &qword_27C8CEEB8, &unk_20E4C7EC0);
}

uint64_t UserSafetySettings.scanningPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C75C38 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C75C58;
    v6 = unk_280C75C60;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C75C92;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  static UserSafetySettings.ScanningPolicy.value(from:)(v8, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CED58, &qword_20E4C7C48);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  return result;
}

void sub_20E4A85A4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (qword_280C75C38 != -1)
  {
    v11 = v4;
    v12 = a2;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    swift_once();
    v6 = v14;
    v5 = v13;
    a2 = v12;
    v4 = v11;
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  sub_20E41E7B0(v4, v5, v6, &qword_280C75C40, v7, v8, v9, v10);
}

uint64_t UserSafetySettings.scanningPolicy.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (qword_280C75C38 != -1)
  {
    swift_once();
  }

  sub_20E41E7B0(v2, v3, v4, &qword_280C75C40, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));

  return sub_20E424C3C(v2, v3, v4);
}

uint64_t (*UserSafetySettings.scanningPolicy.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  UserSafetySettings.scanningPolicy.getter(a1);
  return sub_20E4A874C;
}

uint64_t sub_20E4A874C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_20E424C94(*a1, v4, v5);
    if (qword_280C75C38 != -1)
    {
      swift_once();
    }

    sub_20E41E7B0(v3, v4, v5, &qword_280C75C40, **(a1 + 24), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16), *(*(a1 + 24) + 24));
    sub_20E424C3C(v3, v4, v5);
  }

  else
  {
    if (qword_280C75C38 != -1)
    {
      swift_once();
    }

    sub_20E41E7B0(v3, v4, v5, &qword_280C75C40, **(a1 + 24), *(*(a1 + 24) + 8), *(*(a1 + 24) + 16), *(*(a1 + 24) + 24));
  }

  return sub_20E424C3C(v3, v4, v5);
}

uint64_t UserSafetySettings.effectiveScanningPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C75C38 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return sub_20E420414(&qword_280C75C40, a1);
}

void sub_20E4A88D4()
{
  qword_280C75C40 = 0;
  *algn_280C75C48 = 0;
  byte_280C75C50 = 2;
  qword_280C75C58 = 0xD000000000000019;
  unk_280C75C60 = 0x800000020E4CF2E0;
  qword_280C75C80 = &type metadata for UserSafetyScanningPolicyCombineOperator;
  unk_280C75C88 = &protocol witness table for UserSafetyScanningPolicyCombineOperator;
  word_280C75C90 = 256;
  byte_280C75C92 = 0;
  qword_280C75C98 = 0;
  byte_280C75CA0 = 1;
}

uint64_t static UserSafetySettings.scanningPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C75C38 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C75C40, v1, &qword_27C8CF888, &unk_20E4CC6B0);
}

uint64_t UserSafetySettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v31[0] = sub_20E4C6A10();
  v2 = *(v31[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31[0], v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v31 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v40 = *v1;
  v41 = v12;
  v42 = v14;
  v43 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4C7710;
  v17 = qword_280C75CA8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_280C75CC0;
  *(v16 + 32) = qword_280C75CB8;
  *(v16 + 40) = v18;

  v19 = sub_20E41BDF8(&qword_280C75CB0, v13, v12, v14, v15);
  v20 = sub_20E41FB38(&qword_280C75CB0);
  *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEEC0, &unk_20E4C7EE0);
  *(v16 + 48) = v19;
  *(v16 + 56) = v20;
  if (qword_280C75C38 != -1)
  {
    swift_once();
  }

  v21 = unk_280C75C60;
  *(v16 + 80) = qword_280C75C58;
  *(v16 + 88) = v21;
  v36 = v13;
  v37 = v12;
  v38 = v14;
  v39 = v15;

  UserSafetySettings.scanningPolicy.getter(v34);
  v22 = v34[0];
  v23 = v34[1];
  v24 = v35;
  sub_20E420414(&qword_280C75C40, v32);
  v25 = v32[0];
  v26 = v32[1];
  v27 = v33;
  *(v16 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF890, &qword_20E4CC6C0);
  v28 = swift_allocObject();
  *(v16 + 96) = v28;
  *(v28 + 16) = v22;
  *(v28 + 24) = v23;
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  *(v28 + 48) = v26;
  *(v28 + 56) = v27;
  v29 = sub_20E4C6A00();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v31[0]);
  return sub_20E4C6A20();
}

uint64_t _s15ManagedSettings010UserSafetyB0V14ScanningPolicyO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      return v6 > 1;
    }

    if (v6 == 1)
    {
      v7 = (v4 & 1) == 0;
      if (v4)
      {
        v8 = 1852138868;
      }

      else
      {
        v8 = 0x646C696863;
      }

      if (v7)
      {
        v9 = 0xE500000000000000;
      }

      else
      {
        v9 = 0xE400000000000000;
      }

      if (v5)
      {
        v10 = 1852138868;
      }

      else
      {
        v10 = 0x646C696863;
      }

      if (v5)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 == v10 && v9 == v11)
      {

        return 1;
      }

      else
      {
        v13 = sub_20E4C6910();

        return v13 & 1;
      }
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  v15 = *(a2 + 8);
  v16 = *(a1 + 8);
  if ((sub_20E47FB18(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_20E47FC20(v16, v15);
}

unint64_t sub_20E4A8DE8()
{
  result = qword_27C8CF880;
  if (!qword_27C8CF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF880);
  }

  return result;
}

unint64_t sub_20E4A8E3C()
{
  result = qword_280C72C30;
  if (!qword_280C72C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72C30);
  }

  return result;
}

unint64_t sub_20E4A8E94()
{
  result = qword_27C8CF898;
  if (!qword_27C8CF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF898);
  }

  return result;
}

unint64_t sub_20E4A8F30()
{
  result = qword_27C8CF8B0;
  if (!qword_27C8CF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF8B0);
  }

  return result;
}

unint64_t sub_20E4A8FC8()
{
  result = qword_27C8CF8C8;
  if (!qword_27C8CF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF8C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ManagedSettings010UserSafetyB0V14ScanningPolicyO(uint64_t a1)
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

uint64_t BoundedSettingMetadata.bound(value:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(v8 + 36);
  v10 = *(v8 + 24);
  sub_20E4C6940();
  v11 = v9 + *(sub_20E4C6470() + 36);
  sub_20E4C6950();
  return (*(v4 + 8))(v7, v3);
}

ManagedSettings::SettingScope_optional __swiftcall SettingScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SettingScope.rawValue.getter()
{
  v1 = 1919251317;
  if (*v0 != 1)
  {
    v1 = 0x6D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F436C61636F6CLL;
  }
}

uint64_t sub_20E4A92AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1919251317;
  if (v2 != 1)
  {
    v4 = 0x6D6574737973;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F436C61636F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEE0072656E696174;
  }

  v7 = 0xE400000000000000;
  v8 = 1919251317;
  if (*a2 != 1)
  {
    v8 = 0x6D6574737973;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F436C61636F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEE0072656E696174;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E4A93A0()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E4A9444()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4A94D4()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E4A9580(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0072656E696174;
  v4 = 0xE400000000000000;
  v5 = 1919251317;
  if (v2 != 1)
  {
    v5 = 0x6D6574737973;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F436C61636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t SettingMetadata.name.getter(uint64_t a1)
{
  v1 = sub_20E4AA128(a1);

  return v1;
}

uint64_t SettingMetadata.maximumCount.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t SettingMetadata.responsibleClients.getter(uint64_t a1)
{
  if (qword_280C75F10 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v2 = (v1 + *(a1 + 28));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84FA0];
  sub_20E467B30();
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v5;

  XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, sub_20E4719F4, v9, ObjectType, v7);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v10 = *(v5 + 16);

  return v10;
}

uint64_t sub_20E4A97DC(uint64_t a1)
{
  v1 = sub_20E4AA128(a1);

  return v1;
}

uint64_t BoundedSettingMetadata.bounds.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sub_20E4C6470();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t BoundedSettingMetadata.name.getter(uint64_t a1)
{
  v1 = sub_20E4AA138(a1);

  return v1;
}

uint64_t BoundedSettingMetadata.responsibleClients.getter(uint64_t a1)
{
  if (qword_280C75F10 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  v2 = (v1 + *(a1 + 40));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84FA0];
  sub_20E467B30();
  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v5;

  XPCConnectable.synchronousRemoteObjectProxy(retryCount:proxyHandler:)(1, sub_20E4AAE74, v9, ObjectType, v7);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v10 = *(v5 + 16);

  return v10;
}

uint64_t sub_20E4A9AB8(uint64_t a1)
{
  v1 = sub_20E4AA138(a1);

  return v1;
}

uint64_t SettingMetadataProtocol<>.defaultEffectiveValue.getter(uint64_t a1, uint64_t a2)
{
  return sub_20E4A9B88(a1, a2, sub_20E452EA8, sub_20E424F94);
}

{
  return sub_20E4A9B88(a1, a2, sub_20E453288, sub_20E424F94);
}

void *SettingMetadataProtocol<>.defaultEffectiveValue.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  return sub_20E4A9D2C(a1, sub_20E452EA8, sub_20E424F94, a2);
}

{
  return sub_20E4A9D2C(a1, sub_20E453288, sub_20E424F94, a2);
}

uint64_t sub_20E4A9B88(uint64_t a1, uint64_t a2, void (*a3)(char *, void *), void (*a4)(uint64_t, uint64_t))
{
  (*(a2 + 24))(&v24);
  v5 = v24;
  v7 = v24 + 56;
  v6 = *(v24 + 56);
  v23 = MEMORY[0x277D84FA0];
  v8 = 1 << *(v24 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; result = )
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(v5 + 48);
    v25[0] = 0;
    v25[1] = 0;
    v26 = *(v16 + ((v14 << 10) | (16 * v15)));
    v27 = 0;
    v28 = 0;
    sub_20E424B50(v26, *(&v26 + 1));
    a3(v20, v25);
    v17 = v21;
    v18 = v22;

    a4(v17, v18);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v23;
    }

    v10 = *(v7 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_20E4A9D2C@<X0>(uint64_t a1@<X1>, void (*a2)(void *, uint64_t *)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  result = (*(a1 + 24))(v46);
  v7 = v46[0];
  v6 = v46[1];
  if (v47)
  {
    if (v47 != 1)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 2;
      return result;
    }

    v8 = *(v46[0] + 56);
    v44[0] = MEMORY[0x277D84FA0];
    v9 = 1 << *(v46[0] + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v8;
    v12 = (v9 + 63) >> 6;

    for (i = 0; v11; result = )
    {
      v14 = i;
LABEL_11:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = *(v7 + 48);
      v52 = 0;
      v53 = 0;
      v54 = *(v16 + ((v14 << 10) | (16 * v15)));
      v55 = 0;
      v56 = 0;
      sub_20E424B50(v54, *(&v54 + 1));
      a2(v48, &v52);
      v17 = v49;

      a3(v17, *(&v17 + 1));
    }

    while (1)
    {
      v14 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        result = sub_20E48C224(v7, v6, 1);
        *a4 = v44[0];
        *(a4 + 8) = 0;
        *(a4 + 16) = 1;
        return result;
      }

      v11 = *(v7 + 56 + 8 * v14);
      ++i;
      if (v11)
      {
        i = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = a4;
    v18 = *(v46[0] + 56);
    v44[0] = MEMORY[0x277D84FA0];
    v19 = 1 << *(v46[0] + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v18;
    v22 = (v19 + 63) >> 6;

    for (j = 0; v21; result = )
    {
      v24 = j;
LABEL_21:
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v26 = *(v7 + 48);
      v48[0] = 0;
      v48[1] = 0;
      v49 = *(v26 + ((v24 << 10) | (16 * v25)));
      v50 = 0;
      v51 = 0;
      sub_20E424B50(v49, *(&v49 + 1));
      sub_20E453368(&v52, v48);
      v27 = v54;

      sub_20E4167F8(v27, *(&v27 + 1));
    }

    while (1)
    {
      v24 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v24 >= v22)
      {

        v28 = v44[0];
        v29 = *(v6 + 56);
        v45 = MEMORY[0x277D84FA0];
        v30 = 1 << *(v6 + 32);
        v31 = -1;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        v32 = v31 & v29;
        v33 = (v30 + 63) >> 6;

        for (k = 0; v32; result = )
        {
          v35 = k;
LABEL_33:
          v36 = __clz(__rbit64(v32));
          v32 &= v32 - 1;
          v37 = *(v6 + 48);
          v52 = 0;
          v53 = 0;
          v54 = *(v37 + ((v35 << 10) | (16 * v36)));
          v55 = 0;
          v56 = 0;
          sub_20E424B50(v54, *(&v54 + 1));
          a2(v44, &v52);
          v38 = v44[2];
          v39 = v44[3];

          a3(v38, v39);
        }

        while (1)
        {
          v35 = k + 1;
          if (__OFADD__(k, 1))
          {
            goto LABEL_38;
          }

          if (v35 >= v33)
          {

            v40 = v45;
            *v41 = v28;
            *(v41 + 8) = v40;
            *(v41 + 16) = 0;
            return result;
          }

          v32 = *(v6 + 56 + 8 * v35);
          ++k;
          if (v32)
          {
            k = v35;
            goto LABEL_33;
          }
        }
      }

      v21 = *(v7 + 56 + 8 * v24);
      ++j;
      if (v21)
      {
        j = v24;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_20E4AA128(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_20E4AA138(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_20E4AA148(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v5);
  v7 = v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF818, &qword_20E4CC4F0);
  if (swift_dynamicCastMetatype())
  {
    sub_20E442818(a1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8F0, &qword_20E4CCE38);
    v8 = &unk_27C8CF428;
    v9 = &unk_20E4C9FB8;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF840, &qword_20E4CCE20);
  if (swift_dynamicCastMetatype())
  {
    sub_20E442818(a1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8F0, &qword_20E4CCE38);
    v8 = &unk_27C8CF430;
    v9 = &unk_20E4C9FC0;
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    if (swift_dynamicCast())
    {
      return sub_20E48C224(v14[0], v14[1], v15);
    }

    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8E0, &qword_20E4CCE28);
  if (swift_dynamicCastMetatype())
  {
    sub_20E442818(a1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8F0, &qword_20E4CCE38);
    v11 = &qword_27C8CEE00;
    v12 = &qword_20E4C7CF0;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8E8, &qword_20E4CCE30);
  if (swift_dynamicCastMetatype())
  {
    sub_20E442818(a1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8F0, &qword_20E4CCE38);
    v11 = &qword_27C8CED70;
    v12 = &qword_20E4C7C60;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    if (swift_dynamicCast())
    {
    }

    goto LABEL_15;
  }

  sub_20E442818(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF8F0, &qword_20E4CCE38);
  if (swift_dynamicCast())
  {
    return (*(v3 + 8))(v7, AssociatedTypeWitness);
  }

LABEL_15:
  sub_20E470D40();
  swift_allocError();
  *v13 = 2;
  return swift_willThrow();
}

unint64_t sub_20E4AA460()
{
  result = qword_280C72BF8;
  if (!qword_280C72BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C72BF8);
  }

  return result;
}

void sub_20E4AA558(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_20E4AA984();
    if (v3 <= 0x3F)
    {
      sub_20E4AA9E8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20E4AA614(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}