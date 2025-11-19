uint64_t sub_29D476868()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

uint64_t sub_29D476930()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

uint64_t sub_29D4769F8()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

uint64_t sub_29D476B14()
{
  sub_29D4773B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D47C8F0;
  sub_29D477404(0, &qword_2A1A146D0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED5A1B0](*MEMORY[0x29EDBA950]);
  sub_29D47B374(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D476BD4()
{
  sub_29D477358();
  v58 = sub_29D47C460();
  v0 = *(v58 - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v57 = *(v0 + 72);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_29D47C900;
  v2 = v53 + v1;
  sub_29D477404(0, &qword_2A1A14680, 0x29EDC7AC8);
  *v2 = sub_29D478AA0(0xD000000000000023, 0x800000029D47CF70);
  *(v2 + 8) = 0;
  v3 = *(v0 + 104);
  (v3)(v2, *MEMORY[0x29EDC1608], v58);
  v4 = (v2 + v57);
  v5 = v2;
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = objc_opt_self();
  v7 = [v55 bundleForClass_];
  v8 = sub_29D47C420();
  v10 = v9;

  *v4 = v8;
  v4[1] = v10;
  (v3)(v2 + v57, *MEMORY[0x29EDC1610], v58);
  v11 = (v2 + 2 * v57);
  v12 = [v55 bundleForClass_];
  v13 = sub_29D47C420();
  v15 = v14;

  *v11 = v13;
  v11[1] = v15;
  v11[2] = 0;
  v52 = *MEMORY[0x29EDC15D0];
  v3(v11);
  v16 = v2 + 3 * v57;
  v56 = v2;
  v17 = [v55 bundleForClass_];
  v18 = sub_29D47C420();
  v20 = v19;

  *v16 = v18;
  *(v16 + 8) = v20;
  *(v16 + 16) = 0;
  v54 = *MEMORY[0x29EDC1630];
  v3(v16);
  v21 = (v5 + 4 * v57);
  v22 = [v55 bundleForClass_];
  v23 = sub_29D47C420();
  v25 = v24;

  *v21 = v23;
  v21[1] = v25;
  v21[2] = 0;
  (v3)(v21, v52, v58);
  v26 = v56 + 5 * v57;
  v27 = [v55 bundleForClass_];
  v28 = sub_29D47C420();
  v30 = v29;

  *v26 = v28;
  *(v26 + 8) = v30;
  *(v26 + 16) = 0;
  (v3)(v26, v54, v58);
  v31 = v56 + 6 * v57;
  v32 = [v55 bundleForClass_];
  v33 = sub_29D47C420();
  v35 = v34;

  *v31 = v33;
  *(v31 + 8) = v35;
  *(v31 + 16) = 0;
  (v3)(v31, v54, v58);
  v36 = v56 + 7 * v57;
  v37 = [v55 bundleForClass_];
  v38 = sub_29D47C420();
  v40 = v39;

  *v36 = v38;
  *(v36 + 8) = v40;
  *(v36 + 16) = 0;
  (v3)(v36, v54, v58);
  v41 = v56 + 8 * v57;
  v42 = [v55 bundleForClass_];
  v43 = sub_29D47C420();
  v45 = v44;

  *v41 = v43;
  *(v41 + 8) = v45;
  *(v41 + 16) = 0;
  (v3)(v41, v54, v58);
  v46 = v56 + 9 * v57;
  v47 = [v55 bundleForClass_];
  v48 = sub_29D47C420();
  v50 = v49;

  *v46 = v48;
  *(v46 + 8) = v50;
  *(v46 + 16) = 0;
  (v3)(v46, v54, v58);
  return v53;
}

void sub_29D477358()
{
  if (!qword_2A17A3180)
  {
    sub_29D47C460();
    v0 = sub_29D47C630();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A3180);
    }
  }
}

void sub_29D4773B0()
{
  if (!qword_2A1A14650)
  {
    v0 = sub_29D47C630();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A14650);
    }
  }
}

uint64_t sub_29D477404(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_29D47744C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29D47C450();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D47C500();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8]();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D47C4E0();

  v13 = sub_29D47C4F0();
  v14 = sub_29D47C580();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38[0] = v35;
    v38[1] = v3;
    *v15 = 136446466;
    swift_getMetatypeMetadata();
    v16 = sub_29D47C520();
    v18 = sub_29D477B50(v16, v17, v38);
    v36 = a1;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_29D478384();
    v21 = sub_29D478630();
    v22 = MEMORY[0x29ED5A170](v20, v21);
    v34 = v9;
    v23 = v5;
    v24 = v4;
    v25 = v8;
    v27 = v26;

    v28 = sub_29D477B50(v22, v27, v38);
    v8 = v25;
    v4 = v24;
    v5 = v23;

    *(v15 + 14) = v28;
    a1 = v36;
    _os_log_impl(&dword_29D475000, v13, v14, "[%{public}s] Creating ArticlesGeneratorPipeline with managed articles: %%%{public}s@", v15, 0x16u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x29ED5A4E0](v29, -1, -1);
    MEMORY[0x29ED5A4E0](v15, -1, -1);

    (*(v37 + 8))(v12, v34);
  }

  else
  {

    (*(v37 + 8))(v12, v9);
  }

  (*(v5 + 16))(v8, a1, v4);
  sub_29D478384();
  sub_29D477924();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  return sub_29D47C4C0();
}

uint64_t sub_29D4777D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HealthArticlesPluginDelegate();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_29D477808(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29D47C440();
  if (v4)
  {

    return MEMORY[0x29EDCA190];
  }

  else
  {
    sub_29D478A00(0, &qword_2A1A14660, sub_29D4778C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D47C9F0;
    v7 = sub_29D47744C(a1);
    sub_29D477924();
    *(v6 + 56) = v8;
    v9 = sub_29D4779D4();
    result = v6;
    *(v6 + 64) = v9;
    *(v6 + 32) = v7;
  }

  return result;
}

unint64_t sub_29D4778C0()
{
  result = qword_2A1A146B0;
  if (!qword_2A1A146B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A146B0);
  }

  return result;
}

void sub_29D477924()
{
  if (!qword_2A1A14698)
  {
    sub_29D477980();
    v0 = sub_29D47C4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A14698);
    }
  }
}

unint64_t sub_29D477980()
{
  result = qword_2A1A146C8;
  if (!qword_2A1A146C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A146C8);
  }

  return result;
}

unint64_t sub_29D4779D4()
{
  result = qword_2A1A146A0;
  if (!qword_2A1A146A0)
  {
    sub_29D477924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A146A0);
  }

  return result;
}

uint64_t sub_29D477A2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ResourceBundleClass";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "RespirationRateArticle";
      v4 = 0xD000000000000033;
    }

    else
    {
      v5 = "BloodGlucoseArticle";
      v4 = 0xD000000000000035;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000036;
    }

    else
    {
      v4 = 0xD00000000000002ELL;
    }

    if (v3)
    {
      v5 = ".HealthArticles.ExampleArticle";
    }

    else
    {
      v5 = "ResourceBundleClass";
    }
  }

  if (a2 > 1u)
  {
    v2 = "RespirationRateArticle";
    v6 = "BloodGlucoseArticle";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000033;
    }

    else
    {
      v8 = 0xD000000000000035;
    }
  }

  else
  {
    v6 = ".HealthArticles.ExampleArticle";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000036;
    }

    else
    {
      v8 = 0xD00000000000002ELL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_29D47C640();
  }

  return v10 & 1;
}

uint64_t sub_29D477B50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29D477C1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
    sub_29D4786E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29D47869C(v11);
  return v7;
}

unint64_t sub_29D477C1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_29D477D28(a5, a6);
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
    result = sub_29D47C600();
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

uint64_t sub_29D477D28(uint64_t a1, unint64_t a2)
{
  v4 = sub_29D477D74(a1, a2);
  sub_29D477EA4(&unk_2A2423028);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_29D477D74(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29D477F90(v5, 0);
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

  result = sub_29D47C600();
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
        v10 = sub_29D47C540();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29D477F90(v10, 0);
        result = sub_29D47C5E0();
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

uint64_t sub_29D477EA4(uint64_t result)
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

  result = sub_29D478008(result, v12, 1, v3);
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

void *sub_29D477F90(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D478A54(0, &qword_2A17A3188);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29D478008(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D478A54(0, &qword_2A17A3188);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29D478100(void *a1, int64_t a2, char a3)
{
  result = sub_29D478140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29D478120(char *a1, int64_t a2, char a3)
{
  result = sub_29D47828C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29D478140(void *result, int64_t a2, char a3, void *a4)
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
    sub_29D478A00(0, &qword_2A1A14658, sub_29D478630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D478630();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29D47828C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D478A54(0, &qword_2A1A14668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t sub_29D478384()
{
  v0 = 0;
  v1 = MEMORY[0x29EDCA190];
  do
  {
    v2 = byte_2A2423050[v0 + 32];
    if (v2 > 1u || byte_2A2423050[v0 + 32])
    {
      v3 = sub_29D47C640();

      if ((v3 & 1) == 0)
      {
        *&v13 = v1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_29D478120(0, *(v1 + 16) + 1, 1);
          v1 = v13;
        }

        v5 = *(v1 + 16);
        v4 = *(v1 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_29D478120((v4 > 1), v5 + 1, 1);
          v1 = v13;
        }

        *(v1 + 16) = v5 + 1;
        *(v1 + v5 + 32) = v2;
      }
    }

    else
    {
    }

    ++v0;
  }

  while (v0 != 4);
  v6 = *(v1 + 16);
  if (v6)
  {
    v17 = MEMORY[0x29EDCA190];
    sub_29D478100(0, v6, 0);
    v7 = 32;
    v8 = v17;
    do
    {
      if (*(v1 + v7) > 1u)
      {
        if (*(v1 + v7) == 2)
        {
          v14 = &type metadata for BloodGlucoseArticleDataProvider;
          v15 = sub_29D478808();
          v9 = sub_29D47885C();
        }

        else
        {
          v14 = &type metadata for TimeInDaylightArticleDataProvider;
          v15 = sub_29D478748();
          v9 = sub_29D47879C();
        }
      }

      else if (*(v1 + v7))
      {
        v14 = &type metadata for RespirationRateArticleDataProvider;
        v15 = sub_29D4788B0();
        v9 = sub_29D478904();
      }

      else
      {
        v14 = &type metadata for ExampleArticleDataProvider;
        v15 = sub_29D478958();
        v9 = sub_29D4789AC();
      }

      v16 = v9;
      v17 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_29D478100((v10 > 1), v11 + 1, 1);
        v8 = v17;
      }

      *(v8 + 16) = v11 + 1;
      sub_29D4787F0(&v13, (v8 + 48 * v11 + 32));
      ++v7;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x29EDCA190];
  }

  return v8;
}

unint64_t sub_29D478630()
{
  result = qword_2A1A146A8;
  if (!qword_2A1A146A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A146A8);
  }

  return result;
}

uint64_t sub_29D47869C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_29D4786E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_29D478748()
{
  result = qword_2A1A146C0;
  if (!qword_2A1A146C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A146C0);
  }

  return result;
}

unint64_t sub_29D47879C()
{
  result = qword_2A1A146B8;
  if (!qword_2A1A146B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A146B8);
  }

  return result;
}

_OWORD *sub_29D4787F0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_29D478808()
{
  result = qword_2A1A146F0;
  if (!qword_2A1A146F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A146F0);
  }

  return result;
}

unint64_t sub_29D47885C()
{
  result = qword_2A1A146E8;
  if (!qword_2A1A146E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A146E8);
  }

  return result;
}

unint64_t sub_29D4788B0()
{
  result = qword_2A1A146E0;
  if (!qword_2A1A146E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A146E0);
  }

  return result;
}

unint64_t sub_29D478904()
{
  result = qword_2A1A146D8;
  if (!qword_2A1A146D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A146D8);
  }

  return result;
}

unint64_t sub_29D478958()
{
  result = qword_2A17A3190;
  if (!qword_2A17A3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A3190);
  }

  return result;
}

unint64_t sub_29D4789AC()
{
  result = qword_2A17A3198;
  if (!qword_2A17A3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A3198);
  }

  return result;
}

void sub_29D478A00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D47C630();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D478A54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29D47C630();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

id sub_29D478AA0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_29D47C500();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8]();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A14678 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A14BB0;
  v12 = sub_29D47C510();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:v11];

  result = v13;
  if (!v13)
  {
    sub_29D47C4E0();

    v15 = sub_29D47C4F0();
    v16 = sub_29D47C570();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v17 = 136446466;
      v24[1] = v3;
      swift_getMetatypeMetadata();
      v18 = sub_29D47C520();
      v20 = sub_29D477B50(v18, v19, v24);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_29D477B50(a1, a2, v24);
      _os_log_impl(&dword_29D475000, v15, v16, "[%{public}s] Could not find image in HealthArticles with name %{public}s", v17, 0x16u);
      v21 = v23;
      swift_arrayDestroy();
      MEMORY[0x29ED5A4E0](v21, -1, -1);
      MEMORY[0x29ED5A4E0](v17, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    return [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  return result;
}

id sub_29D478D3C()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A1A14BB0 = result;
  return result;
}

uint64_t sub_29D478DA0()
{
  v1 = *v0;
  sub_29D47C650();
  sub_29D47C530();

  return sub_29D47C660();
}

uint64_t sub_29D478E58()
{
  *v0;
  *v0;
  *v0;
  sub_29D47C530();
}

uint64_t sub_29D478EFC()
{
  v1 = *v0;
  sub_29D47C650();
  sub_29D47C530();

  return sub_29D47C660();
}

uint64_t sub_29D478FB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_29D4792E0();
  *a2 = result;
  return result;
}

void sub_29D478FE0(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ELL;
  v3 = "ResourceBundleClass";
  v4 = "RespirationRateArticle";
  v5 = 0xD000000000000033;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000035;
    v4 = "BloodGlucoseArticle";
  }

  if (*v1)
  {
    v2 = 0xD000000000000036;
    v3 = ".HealthArticles.ExampleArticle";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for HealthArticlesIdentifiers(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HealthArticlesIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D4791D0()
{
  result = qword_2A17A31A0;
  if (!qword_2A17A31A0)
  {
    sub_29D479228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A31A0);
  }

  return result;
}

void sub_29D479228()
{
  if (!qword_2A17A31A8)
  {
    v0 = sub_29D47C560();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17A31A8);
    }
  }
}

unint64_t sub_29D47928C()
{
  result = qword_2A17A31B0;
  if (!qword_2A17A31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17A31B0);
  }

  return result;
}

uint64_t sub_29D4792E0()
{
  v0 = sub_29D47C620();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_29D47933C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29D47C500();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8]();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_29D4792E0();
  if (v11 <= 1)
  {
    if (v11)
    {
      *(a3 + 24) = &type metadata for RespirationRateArticleDataProvider;
      *(a3 + 32) = sub_29D4788B0();
      result = sub_29D478904();
    }

    else
    {
      *(a3 + 24) = &type metadata for ExampleArticleDataProvider;
      *(a3 + 32) = sub_29D478958();
      result = sub_29D4789AC();
    }

    goto LABEL_12;
  }

  if (v11 == 2)
  {
    *(a3 + 24) = &type metadata for BloodGlucoseArticleDataProvider;
    *(a3 + 32) = sub_29D478808();
    result = sub_29D47885C();
    goto LABEL_12;
  }

  if (v11 == 3)
  {
    *(a3 + 24) = &type metadata for TimeInDaylightArticleDataProvider;
    *(a3 + 32) = sub_29D478748();
    result = sub_29D47879C();
LABEL_12:
    *(a3 + 40) = result;
    return result;
  }

  sub_29D47C4E0();

  v13 = sub_29D47C4F0();
  v14 = sub_29D47C570();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    HIDWORD(v22) = v14;
    v16 = v15;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446466;
    v24 = &type metadata for HealthArticlesTileDataController;
    v25 = v17;
    sub_29D479604();
    v18 = sub_29D47C520();
    v20 = sub_29D477B50(v18, v19, &v25);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_29D477B50(a1, a2, &v25);
    _os_log_impl(&dword_29D475000, v13, BYTE4(v22), "[%{public}s] Article identifier %{public}s could not be found in HealthArticles plugin", v16, 0x16u);
    v21 = v23;
    swift_arrayDestroy();
    MEMORY[0x29ED5A4E0](v21, -1, -1);
    MEMORY[0x29ED5A4E0](v16, -1, -1);
  }

  result = (*(v7 + 8))(v10, v6);
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

unint64_t sub_29D479604()
{
  result = qword_2A17A31B8;
  if (!qword_2A17A31B8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17A31B8);
  }

  return result;
}

uint64_t sub_29D4796BC()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

uint64_t sub_29D479778()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

id sub_29D479894()
{
  sub_29D4773B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D47C8F0;
  sub_29D477404(0, &qword_2A1A146D0, 0x29EDBAD20);
  result = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (result)
  {
    *(inited + 32) = result;
    sub_29D47B374(inited);
    v3 = v2;
    swift_setDeallocating();
    v4 = *(inited + 16);
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D47995C()
{
  sub_29D477358();
  v0 = sub_29D47C460();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v36 = 4 * *(v1 + 72);
  v4 = *(v1 + 72);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_29D47CBF0;
  v5 = v37 + v3;
  sub_29D477404(0, &qword_2A1A14680, 0x29EDC7AC8);
  *v5 = sub_29D478AA0(0xD00000000000001ALL, 0x800000029D47D200);
  *(v5 + 8) = 0;
  v6 = *(v2 + 104);
  v7 = v5;
  v8 = v5;
  v9 = v0;
  v6(v7, *MEMORY[0x29EDC1608], v0);
  v10 = (v8 + v4);
  v11 = v4;
  v35 = v4;
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v14 = sub_29D47C420();
  v16 = v15;

  *v10 = v14;
  v10[1] = v16;
  v6(v10, *MEMORY[0x29EDC1610], v9);
  v34 = v12;
  v17 = (v8 + 2 * v11);
  v18 = [v12 bundleForClass_];
  v19 = sub_29D47C420();
  v21 = v20;

  *v17 = v19;
  v17[1] = v21;
  v17[2] = 0;
  v6(v17, *MEMORY[0x29EDC15D0], v9);
  v22 = v8 + 2 * v11 + v35;
  v23 = [v12 bundleForClass_];
  v24 = sub_29D47C420();
  v26 = v25;

  *v22 = v24;
  *(v22 + 8) = v26;
  *(v22 + 16) = 0;
  v27 = *MEMORY[0x29EDC1630];
  v6(v22, v27, v9);
  v28 = v8 + v36;
  v29 = [v34 bundleForClass_];
  v30 = sub_29D47C420();
  v32 = v31;

  *v28 = v30;
  *(v28 + 8) = v32;
  *(v28 + 16) = 0;
  v6(v28, v27, v9);
  return v37;
}

uint64_t sub_29D479DCC()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

uint64_t sub_29D479E94()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

uint64_t sub_29D479F5C()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

uint64_t sub_29D47A078()
{
  sub_29D4773B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D47C8F0;
  sub_29D477404(0, &qword_2A1A146D0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED5A1B0](*MEMORY[0x29EDBA880]);
  sub_29D47B374(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D47A12C()
{
  sub_29D477358();
  v112 = sub_29D47C460();
  v0 = *(v112 - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v111 = *(v0 + 72);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_29D47CCC0;
  v2 = v107 + v1;
  sub_29D477404(0, &qword_2A1A14680, 0x29EDC7AC8);
  *v2 = sub_29D478AA0(0xD00000000000001ALL, 0x800000029D47D2A0);
  *(v2 + 8) = 0;
  v3 = *(v0 + 104);
  v110 = v2;
  (v3)(v2, *MEMORY[0x29EDC1608], v112);
  v4 = (v2 + v111);
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_29D47C420();
  v10 = v9;

  *v4 = v8;
  v4[1] = v10;
  (v3)(v2 + v111, *MEMORY[0x29EDC1610], v112);
  v11 = (v2 + 2 * v111);
  v12 = [v6 bundleForClass_];
  v13 = sub_29D47C420();
  v15 = v14;

  *v11 = v13;
  v11[1] = v15;
  v11[2] = 0;
  v108 = *MEMORY[0x29EDC15D0];
  v3(v11);
  v16 = v2 + 3 * v111;
  v17 = [v6 bundleForClass_];
  v18 = sub_29D47C420();
  v20 = v19;

  *v16 = v18;
  *(v16 + 8) = v20;
  *(v16 + 16) = 0;
  v109 = *MEMORY[0x29EDC1630];
  v3(v16);
  v21 = v110 + 4 * v111;
  v22 = [v6 bundleForClass_];
  v23 = sub_29D47C420();
  v25 = v24;

  *v21 = v23;
  *(v21 + 8) = v25;
  *(v21 + 16) = 0;
  (v3)(v21, v109, v112);
  v26 = v110 + 5 * v111;
  v27 = [v6 bundleForClass_];
  v28 = sub_29D47C420();
  v30 = v29;

  *v26 = v28;
  *(v26 + 8) = v30;
  *(v26 + 16) = 0;
  (v3)(v26, v109, v112);
  v31 = (v110 + 6 * v111);
  v32 = [v6 bundleForClass_];
  v33 = sub_29D47C420();
  v35 = v34;

  *v31 = v33;
  v31[1] = v35;
  v31[2] = 0;
  (v3)(v31, v108, v112);
  v36 = v110 + 7 * v111;
  v37 = [v6 bundleForClass_];
  v38 = sub_29D47C420();
  v40 = v39;

  *v36 = v38;
  *(v36 + 8) = v40;
  *(v36 + 16) = 0;
  (v3)(v36, v109, v112);
  v41 = v110 + 8 * v111;
  v42 = [v6 bundleForClass_];
  v43 = sub_29D47C420();
  v45 = v44;

  *v41 = v43;
  *(v41 + 8) = v45;
  *(v41 + 16) = 0;
  (v3)(v41, v109, v112);
  v46 = (v110 + 9 * v111);
  v47 = [v6 bundleForClass_];
  v48 = sub_29D47C420();
  v50 = v49;

  *v46 = v48;
  v46[1] = v50;
  v46[2] = 0;
  (v3)(v46, v108, v112);
  v51 = v110 + 10 * v111;
  v52 = [v6 bundleForClass_];
  v53 = sub_29D47C420();
  v55 = v54;

  *v51 = v53;
  *(v51 + 8) = v55;
  *(v51 + 16) = 0;
  (v3)(v51, v109, v112);
  v56 = v110 + 11 * v111;
  v57 = [v6 bundleForClass_];
  v58 = sub_29D47C420();
  v60 = v59;

  *v56 = v58;
  *(v56 + 8) = v60;
  *(v56 + 16) = 0;
  (v3)(v56, v109, v112);
  v61 = v110 + 12 * v111;
  v62 = [v6 bundleForClass_];
  v63 = sub_29D47C420();
  v65 = v64;

  *v61 = v63;
  *(v61 + 8) = v65;
  *(v61 + 16) = 0;
  (v3)(v61, v109, v112);
  v66 = v110 + 13 * v111;
  v67 = [v6 bundleForClass_];
  v68 = sub_29D47C420();
  v70 = v69;

  *v66 = v68;
  *(v66 + 8) = v70;
  *(v66 + 16) = 0;
  (v3)(v66, v109, v112);
  v71 = v110 + 14 * v111;
  v72 = [v6 bundleForClass_];
  v73 = sub_29D47C420();
  v75 = v74;

  *v71 = v73;
  *(v71 + 8) = v75;
  *(v71 + 16) = 0;
  (v3)(v71, v109, v112);
  v76 = v110 + 15 * v111;
  v77 = [v6 bundleForClass_];
  v78 = sub_29D47C420();
  v80 = v79;

  *v76 = v78;
  *(v76 + 8) = v80;
  *(v76 + 16) = 0;
  (v3)(v76, v109, v112);
  v81 = (v110 + 16 * v111);
  v82 = [v6 bundleForClass_];
  v83 = sub_29D47C420();
  v85 = v84;

  *v81 = v83;
  v81[1] = v85;
  v81[2] = 0;
  (v3)(v81, v108, v112);
  v86 = v110 + 17 * v111;
  v87 = [v6 bundleForClass_];
  v88 = sub_29D47C420();
  v90 = v89;

  *v86 = v88;
  *(v86 + 8) = v90;
  *(v86 + 16) = 0;
  (v3)(v86, v109, v112);
  v91 = v110 + 18 * v111;
  v92 = [v6 bundleForClass_];
  v93 = sub_29D47C420();
  v95 = v94;

  *v91 = v93;
  *(v91 + 8) = v95;
  *(v91 + 16) = 0;
  (v3)(v91, v109, v112);
  v96 = v110 + 19 * v111;
  v97 = [v6 bundleForClass_];
  v98 = sub_29D47C420();
  v100 = v99;

  *v96 = v98;
  *(v96 + 8) = v100;
  *(v96 + 16) = 0;
  (v3)(v96, v109, v112);
  v101 = v110 + 20 * v111;
  v102 = [v6 bundleForClass_];
  v103 = sub_29D47C420();
  v105 = v104;

  *v101 = v103;
  *(v101 + 8) = v105;
  *(v101 + 16) = 0;
  (v3)(v101, v109, v112);
  return v107;
}

uint64_t sub_29D47B000()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

uint64_t sub_29D47B0C8()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

uint64_t sub_29D47B190()
{
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D47C420();

  return v2;
}

id sub_29D47B2AC()
{
  sub_29D4773B0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D47C8F0;
  sub_29D477404(0, &qword_2A1A146D0, 0x29EDBAD20);
  result = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (result)
  {
    *(inited + 32) = result;
    sub_29D47B374(inited);
    v3 = v2;
    swift_setDeallocating();
    v4 = *(inited + 16);
    swift_arrayDestroy();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D47B374(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_29D47C610())
    {
LABEL_3:
      sub_29D47C320();
      v3 = sub_29D47C5C0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_29D47C610();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x29ED5A210](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_29D47C5A0();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_29D477404(0, &qword_2A1A14690, 0x29EDBACB8);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_29D47C5B0();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_29D47C5A0();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_29D477404(0, &qword_2A1A14690, 0x29EDBACB8);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_29D47C5B0();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_29D47B658()
{
  sub_29D477358();
  v95 = sub_29D47C460();
  v0 = *(v95 - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v96 = *(v0 + 72);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_29D47CDA0;
  v2 = v91 + v1;
  sub_29D477404(0, &qword_2A1A14680, 0x29EDC7AC8);
  *v2 = sub_29D478AA0(0xD000000000000023, 0x800000029D47D6A0);
  *(v2 + 8) = 0;
  v3 = *(v0 + 104);
  v3(v2, *MEMORY[0x29EDC1608], v95);
  v98 = v3;
  v4 = (v2 + v96);
  type metadata accessor for HealthArticlesPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v94 = objc_opt_self();
  v6 = [v94 bundleForClass_];
  v7 = sub_29D47C420();
  v9 = v8;

  *v4 = v7;
  v4[1] = v9;
  v3(v2 + v96, *MEMORY[0x29EDC1610], v95);
  v10 = (v2 + 2 * v96);
  v97 = v2;
  v11 = [v94 bundleForClass_];
  v12 = sub_29D47C420();
  v14 = v13;

  *v10 = v12;
  v10[1] = v14;
  v10[2] = 0;
  v93 = *MEMORY[0x29EDC15D0];
  (v3)(v10);
  v15 = v2 + 3 * v96;
  v16 = [v94 bundleForClass_];
  v17 = sub_29D47C420();
  v19 = v18;

  *v15 = v17;
  *(v15 + 8) = v19;
  *(v15 + 16) = 0;
  v92 = *MEMORY[0x29EDC1630];
  (v3)(v15);
  v20 = (v97 + 4 * v96);
  v21 = [v94 bundleForClass_];
  v22 = sub_29D47C420();
  v24 = v23;

  *v20 = v22;
  v20[1] = v24;
  v20[2] = 0;
  v3(v20, v93, v95);
  v25 = (v97 + 5 * v96);
  v26 = [v94 bundleForClass_];
  v27 = sub_29D47C420();
  v29 = v28;

  *v25 = v27;
  v25[1] = v29;
  v25[2] = 0;
  v3(v25, v93, v95);
  v30 = v97 + 6 * v96;
  v31 = [v94 bundleForClass_];
  v32 = sub_29D47C420();
  v34 = v33;

  *v30 = v32;
  *(v30 + 8) = v34;
  *(v30 + 16) = 0;
  v3(v30, v92, v95);
  v35 = v97 + 7 * v96;
  v36 = [v94 bundleForClass_];
  v37 = sub_29D47C420();
  v39 = v38;

  *v35 = v37;
  *(v35 + 8) = v39;
  *(v35 + 16) = 0;
  v3(v35, v92, v95);
  v40 = v97 + 8 * v96;
  v41 = [v94 bundleForClass_];
  v42 = sub_29D47C420();
  v44 = v43;

  *v40 = v42;
  *(v40 + 8) = v44;
  *(v40 + 16) = 0;
  v3(v40, v92, v95);
  v45 = (v97 + 9 * v96);
  v46 = [v94 bundleForClass_];
  v47 = sub_29D47C420();
  v49 = v48;

  *v45 = v47;
  v45[1] = v49;
  v45[2] = 0;
  v3(v45, v93, v95);
  v50 = v97 + 10 * v96;
  v51 = [v94 bundleForClass_];
  v52 = sub_29D47C420();
  v54 = v53;

  *v50 = v52;
  *(v50 + 8) = v54;
  *(v50 + 16) = 0;
  v3(v50, v92, v95);
  v55 = v97 + 11 * v96;
  v56 = [v94 bundleForClass_];
  v57 = sub_29D47C420();
  v59 = v58;

  *v55 = v57;
  *(v55 + 8) = v59;
  *(v55 + 16) = 0;
  v3(v55, v92, v95);
  v60 = (v97 + 12 * v96);
  v61 = [v94 bundleForClass_];
  v62 = sub_29D47C420();
  v64 = v63;

  *v60 = v62;
  v60[1] = v64;
  v60[2] = 0;
  v3(v60, v93, v95);
  v65 = v97 + 13 * v96;
  v66 = [v94 bundleForClass_];
  v67 = sub_29D47C420();
  v69 = v68;

  *v65 = v67;
  *(v65 + 8) = v69;
  *(v65 + 16) = 0;
  v3(v65, v92, v95);
  v70 = v97 + 14 * v96;
  v71 = [v94 bundleForClass_];
  v72 = sub_29D47C420();
  v74 = v73;

  *v70 = v72;
  *(v70 + 8) = v74;
  *(v70 + 16) = 0;
  v3(v70, v92, v95);
  v75 = (v97 + 15 * v96);
  v76 = [v94 bundleForClass_];
  v77 = sub_29D47C420();
  v79 = v78;

  *v75 = v77;
  v75[1] = v79;
  v75[2] = 0;
  v3(v75, v93, v95);
  v80 = v97 + 16 * v96;
  v81 = [v94 bundleForClass_];
  v82 = sub_29D47C420();
  v84 = v83;

  *v80 = v82;
  *(v80 + 8) = v84;
  *(v80 + 16) = 0;
  v3(v80, v92, v95);
  v85 = v97 + 17 * v96;
  v86 = [v94 bundleForClass_];
  v87 = sub_29D47C420();
  v89 = v88;

  *v85 = v87;
  *(v85 + 8) = v89;
  *(v85 + 16) = 0;
  v98(v85, v92, v95);
  return v91;
}

void sub_29D47C320()
{
  if (!qword_2A1A14670)
  {
    sub_29D477404(255, &qword_2A1A14690, 0x29EDBACB8);
    sub_29D47C394();
    v0 = sub_29D47C5D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A14670);
    }
  }
}

unint64_t sub_29D47C394()
{
  result = qword_2A1A14688;
  if (!qword_2A1A14688)
  {
    sub_29D477404(255, &qword_2A1A14690, 0x29EDBACB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A14688);
  }

  return result;
}