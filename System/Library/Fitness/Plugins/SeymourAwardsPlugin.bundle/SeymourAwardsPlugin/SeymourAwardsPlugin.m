uint64_t sub_23397F490(void *a1)
{
  v1 = [a1 sourceName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2339816A4();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_233981634();
  v6 = sub_233981624();
  if (v5)
  {
    if (v3 == v6 && v5 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_233981714();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_23397F5C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

char *sub_23397F610(unint64_t a1)
{
  v3 = sub_23397FEB8(&qword_27DE3E388, &qword_233981E98);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v22 - v6;
  v26 = *(v1 + OBJC_IVAR____TtC19SeymourAwardsPlugin21AwardProgressProvider_achievementClient);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_233981704())
  {
    if (!i)
    {
LABEL_16:
      sub_2339815F4();

      v20 = sub_2339815E4();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      v20(sub_23397FA30, v21);

      return (*(v4 + 1))(v7, v3);
    }

    v29 = MEMORY[0x277D84F90];
    result = sub_23397FA0C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v23 = v7;
    v24 = v4;
    v25 = v3;
    v7 = 0;
    v10 = v29;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = a1 & 0xC000000000000001;
    v3 = i;
    while (1)
    {
      v4 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v28)
      {
        v11 = MEMORY[0x2383AD6E0](v7, a1);
      }

      else
      {
        if (v7 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v11 = *(a1 + 8 * v7 + 32);
      }

      v12 = v11;
      result = [v11 uniqueName];
      if (!result)
      {
        goto LABEL_21;
      }

      v13 = result;
      v14 = sub_2339816A4();
      v16 = v15;

      v29 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_23397FA0C((v17 > 1), v18 + 1, 1);
        v10 = v29;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      ++v7;
      if (v4 == v3)
      {
        v4 = v24;
        v3 = v25;
        v7 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23397F8C0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *sub_23397F900(char *result, int64_t a2, char a3, char *a4)
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
    sub_23397FEB8(&unk_27DE3E390, qword_233981EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_23397FA0C(char *a1, int64_t a2, char a3)
{
  result = sub_23397F900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23397FA30(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

id sub_23397FB40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourAwardPlugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23397FBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = [objc_allocWithZone(a3(0)) init];

  return v3;
}

id sub_23397FC1C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_233981664();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19SeymourAwardsPlugin21AwardProgressProvider_achievementClient;
  sub_233981614();
  sub_23397F5C8(0, &qword_2813064B8, 0x277D85C78);
  sub_2339816D4();
  (*(v3 + 104))(v6, *MEMORY[0x277D4F368], v2);
  v14[3] = sub_233981654();
  v14[4] = MEMORY[0x277D4F358];
  sub_23397FF00(v14);
  sub_233981644();
  v8 = sub_233981684();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_233981674();
  sub_2339816D4();
  *&v0[v7] = sub_233981604();
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_23397FDF8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23397FEB8(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_23397FF00(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23397FFC4()
{
  v0 = sub_2339815C4();
  sub_233981530(v0, qword_281306500);
  sub_2339814F8(v0, qword_281306500);
  return sub_233981594();
}

uint64_t sub_233980028()
{
  v0 = sub_2339815C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233981530(v3, qword_2813064E8);
  sub_2339814F8(v0, qword_2813064E8);
  if (qword_2813064E0 != -1)
  {
    swift_once();
  }

  v6 = sub_2339814F8(v0, qword_281306500);
  (*(v1 + 16))(v5, v6, v0);
  sub_2339815B4();
  return (*(v1 + 8))(v5, v0);
}

id sub_2339801F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourTemplateAssetSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23398025C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = sub_2339815C4();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v57 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v58 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = [a1 uniqueName];
  if (!v16)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v17 = v16;
  v18 = sub_2339816A4();
  v20 = v19;

  v63 = v18;
  v64 = v20;
  v61 = 45;
  v62 = 0xE100000000000000;
  sub_2339814A4();
  v21 = sub_2339816E4();

  if (!v21[2])
  {

    v29 = *(v4 + 56);
    v30 = a2;
    v31 = 1;
    v32 = v60;
    return v29(v30, v31, 1, v32);
  }

  v59 = a2;
  a2 = 0xD00000000000001BLL;
  v22 = v21[4];
  v23 = v21[5];

  if (v22 == 0xD00000000000001CLL && 0x8000000233981D50 == v23 || (sub_233981714() & 1) != 0 || v22 == 0xD00000000000001BLL && 0x8000000233981D70 == v23 || (sub_233981714() & 1) != 0)
  {
    if (qword_2813064D8 != -1)
    {
      swift_once();
    }

    v24 = v60;
    sub_2339814F8(v60, qword_2813064E8);
    sub_2339815B4();
    v25 = [a1 uniqueName];
    if (v25)
    {
      v26 = v25;

      sub_2339816A4();

      v27 = v59;
      sub_2339815B4();

      (*(v4 + 8))(v15, v24);
      return (*(v4 + 56))(v27, 0, 1, v24);
    }

    goto LABEL_41;
  }

  if ((v22 != 0xD000000000000027 || 0x8000000233981D90 != v23) && (sub_233981714() & 1) == 0)
  {
    if (qword_2813064E0 != -1)
    {
      swift_once();
    }

    v45 = v60;
    v46 = sub_2339814F8(v60, qword_281306500);
    (*(v4 + 16))(v8, v46, v45);
    result = [a1 uniqueName];
    if (result)
    {
      v47 = result;

      sub_2339816A4();

      sub_2339815B4();

      v48 = *(v4 + 8);
      v48(v8, v45);
      v49 = v59;
      sub_2339815B4();
      v48(v11, v45);
      return (*(v4 + 56))(v49, 0, 1, v45);
    }

    goto LABEL_44;
  }

  result = [a1 uniqueName];
  v33 = v59;
  if (!result)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v34 = result;

  v35 = sub_2339816A4();
  v37 = v36;

  v63 = v35;
  v64 = v37;
  v61 = 45;
  v62 = 0xE100000000000000;
  v38 = sub_2339816E4();

  if (v38[2] >= 3uLL)
  {
    v40 = v38[6];
    v39 = v38[7];
    v41 = v38[5];
    v63 = v38[4];
    v64 = v41;

    MEMORY[0x2383AD6A0](45, 0xE100000000000000);
    a2 = v60;
    if (v38[2] < 3uLL)
    {
      __break(1u);
      goto LABEL_39;
    }

    v42 = v38[8];
    v43 = v38[9];

    MEMORY[0x2383AD6A0](v42, v43);

    v15 = v63;
    v38 = v64;
    if (MEMORY[0x2383AD5C0](8) == v40 && v44 == v39)
    {
      goto LABEL_23;
    }

    v50 = sub_233981714();

    if ((v50 & 1) == 0)
    {
      if (MEMORY[0x2383AD5C0](0) == v40 && v53 == v39)
      {
LABEL_23:

        goto LABEL_30;
      }

      v54 = sub_233981714();

      if ((v54 & 1) == 0)
      {

        if (qword_2813064D8 == -1)
        {
LABEL_37:
          sub_2339814F8(a2, qword_2813064E8);
          v55 = v58;
          sub_2339815B4();
          v56 = v59;
          sub_2339815B4();

          (*(v4 + 8))(v55, a2);
          v29 = *(v4 + 56);
          v30 = v56;
          goto LABEL_32;
        }

LABEL_42:
        swift_once();
        goto LABEL_37;
      }
    }

LABEL_30:
    if (qword_2813064D8 == -1)
    {
LABEL_31:
      sub_2339814F8(a2, qword_2813064E8);
      v51 = v58;
      sub_2339815B4();
      v63 = v15;
      v64 = v38;
      MEMORY[0x2383AD6A0](45, 0xE100000000000000);
      MEMORY[0x2383AD6A0](v40, v39);

      v52 = v59;
      sub_2339815B4();

      (*(v4 + 8))(v51, a2);
      v29 = *(v4 + 56);
      v30 = v52;
LABEL_32:
      v31 = 0;
      v32 = a2;
      return v29(v30, v31, 1, v32);
    }

LABEL_39:
    swift_once();
    goto LABEL_31;
  }

  (*(v4 + 56))(v33, 1, 1, v60);
}

id sub_233980A90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2339815C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  result = [a1 uniqueName];
  if (result)
  {
    v13 = result;
    v14 = sub_2339816A4();
    v16 = v15;

    v24[2] = v14;
    v24[3] = v16;
    v24[0] = 45;
    v24[1] = 0xE100000000000000;
    sub_2339814A4();
    v17 = sub_2339816E4();

    if (!v17[2])
    {

      v20 = 1;
      return (*(v5 + 56))(a2, v20, 1, v4);
    }

    v19 = v17[4];
    v18 = v17[5];

    if (v19 == 0xD00000000000001CLL && 0x8000000233981D50 == v18 || (sub_233981714() & 1) != 0 || v19 == 0xD00000000000001BLL && 0x8000000233981D70 == v18 || (sub_233981714() & 1) != 0 || v19 == 0xD000000000000027 && 0x8000000233981D90 == v18 || (sub_233981714() & 1) != 0)
    {

      if (qword_2813064D8 != -1)
      {
        swift_once();
      }

      sub_2339814F8(v4, qword_2813064E8);
      sub_2339815B4();
      goto LABEL_15;
    }

    if (qword_2813064E0 != -1)
    {
      swift_once();
    }

    v21 = sub_2339814F8(v4, qword_281306500);
    (*(v5 + 16))(v9, v21, v4);
    result = [a1 uniqueName];
    if (result)
    {
      v22 = result;

      sub_2339816A4();

      sub_2339815B4();

      v23 = *(v5 + 8);
      v23(v9, v4);
      sub_2339815B4();
      v23(v11, v4);
LABEL_15:
      v20 = 0;
      return (*(v5 + 56))(a2, v20, 1, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_233980E84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_2339815C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v30 = &v30 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  result = [a1 uniqueName];
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = result;
  v18 = sub_2339816A4();
  v20 = v19;

  v34 = v18;
  v35 = v20;
  v32 = 45;
  v33 = 0xE100000000000000;
  sub_2339814A4();
  v21 = sub_2339816E4();

  if (!v21[2])
  {

    v27 = 1;
    v26 = v31;
    return (*(v4 + 56))(v26, v27, 1, v3);
  }

  v22 = v21[4];
  v23 = v21[5];

  if (v22 == 0xD00000000000001CLL && 0x8000000233981D50 == v23 || (sub_233981714() & 1) != 0 || v22 == 0xD00000000000001BLL && 0x8000000233981D70 == v23 || (sub_233981714() & 1) != 0 || v22 == 0xD000000000000027 && 0x8000000233981D90 == v23 || (sub_233981714() & 1) != 0)
  {
    if (qword_2813064D8 != -1)
    {
      swift_once();
    }

    sub_2339814F8(v3, qword_2813064E8);
    sub_2339815B4();
    result = [a1 uniqueName];
    if (result)
    {
      v24 = result;

      sub_2339816A4();

      sub_2339815B4();

      v25 = *(v4 + 8);
      v25(v13, v3);
      v26 = v31;
LABEL_16:
      sub_2339815B4();
      v25(v15, v3);
      v27 = 0;
      return (*(v4 + 56))(v26, v27, 1, v3);
    }

    goto LABEL_24;
  }

  if (qword_2813064E0 != -1)
  {
    swift_once();
  }

  v28 = sub_2339814F8(v3, qword_281306500);
  (*(v4 + 16))(v8, v28, v3);
  result = [a1 uniqueName];
  if (result)
  {
    v29 = result;

    sub_2339816A4();

    v15 = v30;
    sub_2339815B4();

    v25 = *(v4 + 8);
    v25(v8, v3);
    v26 = v31;
    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_23398135C(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v7 = sub_23397FEB8(&qword_27DE3E410, &qword_233981EF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = a3;
  v12 = a1;
  a4(v11);

  v13 = sub_2339815C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v10, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_2339815A4();
    (*(v14 + 8))(v10, v13);
    v16 = v17;
  }

  return v16;
}

unint64_t sub_2339814A4()
{
  result = qword_2813064C8;
  if (!qword_2813064C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813064C8);
  }

  return result;
}

uint64_t sub_2339814F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_233981530(uint64_t a1, uint64_t *a2)
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