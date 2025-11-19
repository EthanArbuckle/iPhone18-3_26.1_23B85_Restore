uint64_t sub_1448(uint64_t a1)
{
  v2[564] = v1;
  v2[563] = a1;
  v3 = sub_2B0C(&qword_228460, &qword_1B6370);
  v2[565] = v3;
  v4 = *(v3 - 8);
  v2[566] = v4;
  v5 = *(v4 + 64) + 15;
  v2[567] = swift_task_alloc();

  return _swift_task_switch(sub_1518, 0, 0);
}

uint64_t sub_1518()
{
  v1 = *(v0 + 4512);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 4544) = v6;
  *v6 = v0;
  v6[1] = sub_1648;

  return v8(v0 + 16, v2, v3);
}

uint64_t sub_1648()
{
  v2 = *(*v1 + 4544);
  v5 = *v1;
  *(*v1 + 4552) = v0;

  if (v0)
  {
    v3 = sub_1F24;
  }

  else
  {
    v3 = sub_175C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_175C()
{
  v1 = v0[564];
  memcpy(v0 + 142, v0 + 2, 0x460uLL);
  v2 = v0[195];
  v3 = v1[15];
  v4 = v1[16];
  sub_2698(v1 + 12, v3);
  memcpy(v0 + 282, v0 + 142, 0x460uLL);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[570] = v7;
  *v7 = v0;
  v7[1] = sub_18C0;

  return (v9)(v0 + 282, v2, v3, v4);
}

uint64_t sub_18C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 4560);
  v6 = *v2;
  *(*v2 + 4568) = v1;

  if (v1)
  {
    v7 = sub_1F88;
  }

  else
  {
    *(v4 + 4576) = a1;
    v7 = sub_19E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_19E8()
{
  v1 = v0[566];
  v2 = sub_15A420(v0[572]);

  sub_2B0C(&qword_228468, &qword_1B6378);
  result = sub_1B5294();
  v4 = result;
  v5 = 0;
  v0[573] = result;
  v7 = v2 + 64;
  v6 = *(v2 + 64);
  v30 = v1;
  v31 = v2;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v28 = result + 64;
  v29 = result;
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v5 << 6);
      v16 = v0[567];
      v17 = v0[565];
      v18 = *(*(v31 + 48) + v15);
      (*(v30 + 16))(v16, *(v31 + 56) + *(v30 + 72) * v15, v17);
      sub_1B4394();
      result = (*(v30 + 8))(v16, v17);
      *(v28 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v4 = v29;
      *(v29[6] + v15) = v18;
      *(v29[7] + 8 * v15) = v0[562];
      v19 = v29[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v29[2] = v21;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v5 >= v11)
      {
        break;
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    v22 = v0[564];

    v23 = v22[10];
    v24 = v22[11];
    sub_2698(v22 + 7, v23);
    memcpy(v0 + 422, v0 + 142, 0x460uLL);
    v25 = *(v24 + 8);
    v32 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    v0[574] = v27;
    *v27 = v0;
    v27[1] = sub_1CE4;

    return (v32)(v4, v0 + 422, v23, v24);
  }

  return result;
}

uint64_t sub_1CE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 4592);
  v6 = *(*v2 + 4584);
  v7 = *v2;
  *(*v2 + 4600) = v1;

  if (v1)
  {
    v8 = sub_1EB8;
  }

  else
  {
    *(v4 + 4608) = a1;
    v8 = sub_1E30;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1E30()
{
  v1 = *(v0 + 4536);
  sub_1FF4(*(v0 + 4608), *(v0 + 4504));

  sub_2B54(v0 + 1136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1EB8()
{
  sub_2B54((v0 + 142));
  v1 = v0[575];
  v2 = v0[567];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1F24()
{
  v1 = v0[569];
  v2 = v0[567];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1F88()
{
  sub_2B54((v0 + 142));
  v1 = v0[571];
  v2 = v0[567];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1FF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 2;
  }

  else
  {
    result = sub_2AB8(result, *(a1 + 36), a1, &v7);
    v6 = v7;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2070(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1B4F84();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2BA8(v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_20EC()
{
  sub_2BF8(v0 + 2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);

  return swift_deallocClassInstance();
}

__n128 sub_2158(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2170(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2190(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_21D0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226C;

  return sub_1448(a1);
}

uint64_t sub_226C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[144] = a3;
  v4[143] = a2;
  v4[142] = a1;
  v4[145] = *v3;
  return _swift_task_switch(sub_2390, 0, 0);
}

uint64_t sub_2390()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v1[10];
  v4 = v1[11];
  sub_2698(v1 + 7, v3);
  memcpy(v0 + 2, v2, 0x460uLL);
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[146] = v7;
  *v7 = v0;
  v7[1] = sub_24E4;
  v8 = v0[143];

  return (v10)(v8, v0 + 2, v3, v4);
}

uint64_t sub_24E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1168);
  v6 = *v2;
  *(*v2 + 1176) = v1;

  if (v1)
  {
    v7 = sub_2680;
  }

  else
  {
    *(v4 + 1184) = a1;
    v7 = sub_260C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_260C()
{
  sub_1FF4(*(v0 + 1184), *(v0 + 1136));

  v1 = *(v0 + 8);

  return v1();
}

void *sub_2698(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26E4(uint64_t a1, id *a2)
{
  result = sub_1B47A4();
  *a2 = 0;
  return result;
}

uint64_t sub_275C(uint64_t a1, id *a2)
{
  v3 = sub_1B47B4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_27DC@<X0>(void *a1@<X8>)
{
  sub_1B47C4();
  v2 = sub_1B4794();

  *a1 = v2;
  return result;
}

uint64_t sub_2820@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4794();

  *a2 = v5;
  return result;
}

uint64_t sub_2868@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B47C4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2894(uint64_t a1)
{
  v2 = sub_2F0C(&qword_228490);
  v3 = sub_2F0C(&qword_228498);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_292C()
{
  v1 = *v0;
  sub_1B47C4();
  v2 = sub_1B4934();

  return v2;
}

uint64_t sub_2968()
{
  v1 = *v0;
  sub_1B47C4();
  sub_1B4884();
}

Swift::Int sub_29BC()
{
  v1 = *v0;
  sub_1B47C4();
  sub_1B57F4();
  sub_1B4884();
  v2 = sub_1B5844();

  return v2;
}

uint64_t sub_2A30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B47C4();
  v6 = v5;
  if (v4 == sub_1B47C4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

uint64_t sub_2AB8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2B0C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2BA8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2BF8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_2C44(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1B5004();
      type metadata accessor for CachedPersonalizationBookMetadataAuthor();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for CachedPersonalizationBookMetadataAuthor();
    if (sub_1B4FD4() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_1B4FE4();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_1B4E64(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_1B4E74();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_2E58(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2F0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Transport.BookAffinity.affinity.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t Transport.RecommendationBlockRequest.profileGenreDenylist.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Transport.BookAffinity.init(bookId:affinity:inferredFromAffinityForBookIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 12) = BYTE4(a2) & 1;
  *(a4 + 16) = a3;
  return result;
}

uint64_t Transport.BookAffinity.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20EAE8;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 3;
  if (v6 < 3)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Transport.BookAffinity.CodingKeys.stringValue.getter()
{
  v1 = 0x7974696E69666661;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496B6F6F62;
  }
}

uint64_t sub_3138(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x7974696E69666661;
  v5 = 0x80000000001D4260;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = 0x80000000001D4260;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x7974696E69666661;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD00000000000001ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_3230()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_32D4()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_3400()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_3508()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_3598()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_3644(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7974696E69666661;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ELL;
    v4 = 0x80000000001D4260;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64496B6F6F62;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_36A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.BookAffinity.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_36E8(uint64_t a1)
{
  v2 = sub_1CB4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3724(uint64_t a1)
{
  v2 = sub_1CB4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.BookAffinity.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2284A0, &qword_1B6530);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v15 = *(v1 + 2);
  v17 = *(v1 + 12);
  v14 = v1[2];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1CB4C();
  sub_1B5884();
  v21 = 0;
  sub_1B5564();
  if (!v2)
  {
    v12 = v14;
    v20 = 1;
    v18 = v17;
    sub_1B5494();
    v16 = v12;
    v19 = 2;
    sub_2B0C(&qword_2284B0, &qword_1B6538);
    sub_1CBA0();
    sub_1B54B4();
  }

  return (*(v5 + 8))(v8, v4);
}

void Transport.BookAffinity.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  v3 = *(v0 + 16);
  sub_1B5834(*v0);
  if (v2 != 1)
  {
    sub_1B5814(1u);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    sub_1B5824(v7);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1B5814(0);
    return;
  }

  sub_1B5814(0);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      sub_1B5834(v6);
      --v4;
    }

    while (v4);
  }
}

Swift::Int Transport.BookAffinity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  sub_1B57F4();
  sub_1B5834(v1);
  if (v3 != 1)
  {
    sub_1B5814(1u);
    if ((v2 & 0x7FFFFFFF) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    sub_1B5824(v8);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1B5814(0);
    return sub_1B5844();
  }

  sub_1B5814(0);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      sub_1B5834(v7);
      --v5;
    }

    while (v5);
  }

  return sub_1B5844();
}

uint64_t Transport.BookAffinity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2284C0, &qword_1B6540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1CB4C();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v18 = 0;
  v11 = sub_1B5424();
  v17 = 1;
  v12 = sub_1B5354();
  sub_2B0C(&qword_2284B0, &qword_1B6538);
  v16 = 2;
  sub_1CC64();
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v13 = v15[1];
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 12) = BYTE4(v12) & 1;
  *(a2 + 16) = v13;

  sub_2BF8(a1);
}

Swift::Int sub_3D60()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  sub_1B57F4();
  sub_1B5834(v1);
  if (v3 != 1)
  {
    sub_1B5814(1u);
    if ((v2 & 0x7FFFFFFF) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    sub_1B5824(v8);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_1B5814(0);
    return sub_1B5844();
  }

  sub_1B5814(0);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      sub_1B5834(v7);
      --v5;
    }

    while (v5);
  }

  return sub_1B5844();
}

uint64_t Transport.StoreAssetRequestDetails.profileGenreDenylist.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Transport.UserProfileV2.init(explicitAllowed:seedBooks:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t Transport.UserProfile.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x696666416B6F6F62;
  }

  else
  {
    result = 0x746963696C707865;
  }

  *v0;
  return result;
}

uint64_t sub_3EF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x696666416B6F6F62;
  }

  else
  {
    v4 = 0x746963696C707865;
  }

  if (v3)
  {
    v5 = 0xEF6465776F6C6C41;
  }

  else
  {
    v5 = 0xEE0073656974696ELL;
  }

  if (*a2)
  {
    v6 = 0x696666416B6F6F62;
  }

  else
  {
    v6 = 0x746963696C707865;
  }

  if (*a2)
  {
    v7 = 0xEE0073656974696ELL;
  }

  else
  {
    v7 = 0xEF6465776F6C6C41;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_3FB8()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_4054()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_40DC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_4180(uint64_t *a1@<X8>)
{
  v2 = 0x746963696C707865;
  if (*v1)
  {
    v2 = 0x696666416B6F6F62;
  }

  v3 = 0xEF6465776F6C6C41;
  if (*v1)
  {
    v3 = 0xEE0073656974696ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_41F0(uint64_t a1)
{
  v2 = sub_1CCE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_422C(uint64_t a1)
{
  v2 = sub_1CCE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Transport.UserProfile.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  if (v3)
  {
    if (v4 && (sub_6CA4(v3, v4) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t Transport.UserProfile.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2284D0, &qword_1B6548);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1CCE0();
  sub_1B5884();
  v14 = 0;
  sub_1B5504();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_2B0C(&qword_2284E0, &qword_1B6550);
    sub_1CD34();
    sub_1B54B4();
  }

  return (*(v5 + 8))(v8, v4);
}

void Transport.UserProfile.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  sub_1B5814(*v2);
  if (v4)
  {
    sub_1B5814(1u);

    sub_1B35C(a1, v4);
  }

  else
  {
    sub_1B5814(0);
  }
}

Swift::Int Transport.UserProfile.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B57F4();
  sub_1B5814(v1);
  if (v2)
  {
    sub_1B5814(1u);
    sub_1B35C(v4, v2);
  }

  else
  {
    sub_1B5814(0);
  }

  return sub_1B5844();
}

uint64_t Transport.UserProfile.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2284F8, &qword_1B6558);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1CCE0();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v16 = 0;
  v11 = sub_1B53C4();
  sub_2B0C(&qword_2284E0, &qword_1B6550);
  v15 = 1;
  sub_1CE0C();
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v12 = v14[1];
  *a2 = v11 & 1;
  *(a2 + 8) = v12;

  sub_2BF8(a1);
}

Swift::Int sub_4764()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B57F4();
  sub_1B5814(v1);
  if (v2)
  {
    sub_1B5814(1u);
    sub_1B35C(v4, v2);
  }

  else
  {
    sub_1B5814(0);
  }

  return sub_1B5844();
}

uint64_t Transport.RecommendationBlockRequest.MediaTypePayload.description.getter(uint64_t a1, unint64_t a2)
{
  v2 = 0x4F4F424F49445541;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x4B4F4F4245;
  }

  sub_1E04C(a1, a2);
  return v3;
}

uint64_t sub_4868@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1FC94(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_49C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1FC94(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t Transport.RecommendationBlockRequest.mediaType.getter()
{
  v1 = *v0;
  sub_1E060(*v0, *(v0 + 8));
  return v1;
}

uint64_t Transport.RecommendationBlockRequest.mediaType.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1E070(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Transport.RecommendationBlockRequest.saleType.getter()
{
  v1 = *(v0 + 24);
  sub_1FE84(v1, *(v0 + 32));
  return v1;
}

uint64_t Transport.RecommendationBlockRequest.saleType.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1FE94(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Transport.RecommendationBlockRequest.recommendationCount.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

uint64_t Transport.RecommendationBlockRequest.targetBookIds.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Transport.RecommendationBlockRequest.init(mediaType:profileGenreDenylist:saleType:recommendationCount:targetBookIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 44) = BYTE4(a6) & 1;
  *(a8 + 48) = a7;
  return result;
}

uint64_t Transport.RecommendationBlockRequest.CodingKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20ED10;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 5;
  if (v6 < 5)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Transport.RecommendationBlockRequest.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.RecommendationBlockRequest.CodingKeys.init(rawValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

unint64_t sub_4DE4()
{
  v1 = *v0;
  v2 = 0x707954616964656DLL;
  v3 = 0x65707954656C6173;
  v4 = 0x6F42746567726174;
  if (v1 == 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

Swift::Int sub_4E9C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_4F90()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_5070()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_516C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x707954616964656DLL;
  v5 = 0xE800000000000000;
  v6 = 0x65707954656C6173;
  v7 = 0x80000000001D42D0;
  v8 = 0x6F42746567726174;
  if (v2 == 3)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v7 = 0xED00007364496B6FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000000001D42B0;
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

uint64_t sub_521C(uint64_t a1)
{
  v2 = sub_1E094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5258(uint64_t a1)
{
  v2 = sub_1E094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.RecommendationBlockRequest.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_228510, &qword_1B6560);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v11;
  v12 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v12;
  v29 = *(v1 + 44);
  v22 = *(v1 + 48);
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  sub_2698(v15, v13);
  sub_1E060(v9, v10);
  sub_1E094();
  sub_1B5884();
  v27 = v9;
  v28 = v10;
  v30 = 0;
  sub_1E0E8();
  sub_1B54B4();
  if (v2)
  {
    sub_1E070(v9, v10);
  }

  else
  {
    v18 = v24;
    v19 = v25;
    sub_1E070(v9, v10);
    v27 = v26;
    v30 = 1;
    sub_2B0C(&qword_2284B0, &qword_1B6538);
    sub_1CBA0();
    sub_1B54B4();
    v27 = v19;
    v28 = v18;
    v30 = 2;
    sub_1E13C();
    sub_1B54B4();
    LOBYTE(v27) = 3;
    v30 = v29;
    sub_1B54C4();
    v27 = v22;
    v30 = 4;
    sub_1B54B4();
  }

  return (*(v5 + 8))(v8, v17);
}

void Transport.RecommendationBlockRequest.hash(into:)()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 44);
  v7 = *(v0 + 48);
  if (v2 == 2)
  {
    sub_1B5814(0);
    if (!v1)
    {
LABEL_3:
      sub_1B5814(0);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *v0;
    sub_1B5814(1u);
    sub_1E060(v8, v2);
    sub_1B4884();

    if (!v1)
    {
      goto LABEL_3;
    }
  }

  sub_1B5814(1u);
  sub_1B5804(*(v1 + 16));
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = (v1 + 32);
    do
    {
      v11 = *v10++;
      sub_1B5834(v11);
      --v9;
    }

    while (v9);
  }

LABEL_8:
  if (v4 == 3)
  {
    sub_1B5814(0);
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B5814(1u);
    sub_1FE84(v3, v4);
    sub_1B4884();

    if (v6)
    {
LABEL_10:
      sub_1B5814(0);
      if (v7)
      {
        goto LABEL_11;
      }

LABEL_17:
      sub_1B5814(0);
      return;
    }
  }

  sub_1B5814(1u);
  sub_1B5824(v5);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_11:
  sub_1B5814(1u);
  sub_1B5804(*(v7 + 16));
  v12 = *(v7 + 16);
  if (v12)
  {
    v13 = (v7 + 32);
    do
    {
      v14 = *v13++;
      sub_1B5834(v14);
      --v12;
    }

    while (v12);
  }
}

Swift::Int Transport.RecommendationBlockRequest.hashValue.getter()
{
  sub_1B57F4();
  Transport.RecommendationBlockRequest.hash(into:)();
  return sub_1B5844();
}

uint64_t Transport.RecommendationBlockRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_228530, &qword_1B6568);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - v8;
  v44 = 1;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1E094();
  sub_1B5864();
  if (v2)
  {
    sub_2BF8(a1);
    v33 = 0;
    v34 = 2;
    v35 = 0;
    v36 = 0;
    v37 = 3;
    v38 = 0;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    v42 = 0;
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_1E1C0();
    sub_1B5374();
    v26 = v34;
    v27 = v33;
    v12 = sub_2B0C(&qword_2284B0, &qword_1B6538);
    LOBYTE(v28) = 1;
    v13 = sub_1CC64();
    sub_1B5374();
    v25 = v33;
    LOBYTE(v28) = 2;
    sub_1E214();
    sub_1B5374();
    v23[1] = v13;
    v24 = v12;
    v23[0] = a2;
    v15 = v33;
    v14 = v34;
    LOBYTE(v33) = 3;
    v16 = sub_1B5384();
    LODWORD(v12) = v16;
    v44 = BYTE4(v16) & 1;
    v43 = 4;
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v17 = v32;
    v19 = v26;
    v18 = v27;
    *&v28 = v27;
    *(&v28 + 1) = v26;
    v20 = v25;
    *&v29 = v25;
    *(&v29 + 1) = v15;
    *&v30 = v14;
    DWORD2(v30) = v12;
    LODWORD(v24) = v44;
    BYTE12(v30) = v44;
    v31 = v32;
    v21 = v23[0];
    *(v23[0] + 48) = v32;
    v22 = v29;
    *v21 = v28;
    v21[1] = v22;
    v21[2] = v30;
    sub_1E268(&v28, &v33);
    sub_2BF8(a1);
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v15;
    v37 = v14;
    v38 = v12;
    v39 = v24;
    v42 = v17;
  }

  return sub_1E190(&v33);
}

Swift::Int sub_5BD4()
{
  sub_1B57F4();
  Transport.RecommendationBlockRequest.hash(into:)();
  return sub_1B5844();
}

uint64_t Transport.RecommendationBlockResponse.CodingKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20EDA8;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t Transport.RecommendationBlockResponse.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20EDE0;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_5CE4()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_5D58()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

uint64_t sub_5DD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_20EE50;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_5E3C(uint64_t a1)
{
  v2 = sub_1E2A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5E78(uint64_t a1)
{
  v2 = sub_1E2A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.RecommendationBlockResponse.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_228548, &qword_1B6570);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1E2A0();

  sub_1B5884();
  v11[1] = v8;
  sub_2B0C(&qword_2284E0, &qword_1B6550);
  sub_1CD34();
  sub_1B54B4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t Transport.RecommendationBlockResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_228558, &qword_1B6578);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1E2A0();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_2284E0, &qword_1B6550);
    sub_1CE0C();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_2BF8(a1);
}

uint64_t Transport.Recommend.Input.xAppleRequestUUID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transport.Recommend.Input.xAppleRequestUUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transport.RecommendationRequest.userProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Transport.RecommendationRequest.userProfile.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t Transport.RecommendationResponseV2.bookIdToMediaTypeEntries.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Transport.RecommendationResponseV2.bookAuthors.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Transport.RecommendationRequest.init(storeFrontId:userProfile:recommendationBlockRequests:treatmentIds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *(a3 + 1);
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = v7;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

uint64_t Transport.RecommendationRequest.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20EE88;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 4;
  if (v6 < 4)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t Transport.RecommendationRequest.CodingKeys.stringValue.getter()
{
  v1 = 0x6F724665726F7473;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0x6E656D7461657274;
  }

  if (*v0)
  {
    v1 = 0x666F725072657375;
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

Swift::Int sub_64DC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_65BC()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_6688()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_6770(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000006449746ELL;
  v3 = 0x6F724665726F7473;
  v4 = 0x80000000001D4340;
  v5 = 0xD00000000000001BLL;
  if (*v1 != 2)
  {
    v5 = 0x6E656D7461657274;
    v4 = 0xEC00000073644974;
  }

  if (*v1)
  {
    v3 = 0x666F725072657375;
    v2 = 0xEB00000000656C69;
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

uint64_t sub_680C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.RecommendationRequest.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_6844(uint64_t a1)
{
  v2 = sub_1E2F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6880(uint64_t a1)
{
  v2 = sub_1E2F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_68C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 48);
      v7 = *(a1 + v5 + 88);
      v8 = *(a2 + v5 + 48);
      v9 = *(a2 + v5 + 88);
      if (*(a1 + v5 + 40))
      {
        if (v6 == v8)
        {
          v10 = *(a2 + v5 + 40);
        }

        else
        {
          v10 = 0;
        }

        if (v10 != 1)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((*(a2 + v5 + 40) & 1) != 0 || *(a1 + v5 + 32) != *(a2 + v5 + 32) || v6 != v8)
        {
          return result;
        }
      }

      if (*(a1 + v5 + 64))
      {
        if (!*(a2 + v5 + 64))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v5 + 56) == *(a2 + v5 + 56))
        {
          v12 = *(a2 + v5 + 64);
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          return 0;
        }
      }

      if (*(a1 + v5 + 72))
      {
        if (!*(a2 + v5 + 72))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v5 + 68) == *(a2 + v5 + 68))
        {
          v13 = *(a2 + v5 + 72);
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          return 0;
        }
      }

      if (*(a1 + v5 + 80))
      {
        if (!*(a2 + v5 + 80))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v5 + 76) == *(a2 + v5 + 76))
        {
          v14 = *(a2 + v5 + 80);
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          return 0;
        }
      }

      v15 = *(a1 + v5 + 88);

      v16 = sub_7BEC(v7, v9);

      if ((v16 & 1) == 0)
      {
        return 0;
      }

      v5 += 64;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_6A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 1);
      v9 = *v4;
      if (*v3 == 1)
      {
        v10 = 0xD000000000000012;
      }

      else
      {
        v10 = *(v3 - 1);
      }

      if (*v3 == 1)
      {
        v11 = 0x80000000001D54F0;
      }

      else
      {
        v11 = *v3;
      }

      if (v7)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0x4148435255504F43;
      }

      if (v7)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xEA00000000004553;
      }

      if (v9 == 1)
      {
        v14 = 0xD000000000000012;
      }

      else
      {
        v14 = *(v4 - 1);
      }

      if (v9 == 1)
      {
        v15 = 0x80000000001D54F0;
      }

      else
      {
        v15 = *v4;
      }

      if (v9)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x4148435255504F43;
      }

      if (v9)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xEA00000000004553;
      }

      if (v12 == v16 && v13 == v17)
      {
        sub_1E04C(*(v3 - 1), *v3);
        sub_1E04C(v8, v9);
        sub_1E04C(v6, v7);
        sub_1E04C(v8, v9);

        sub_1E080(v8, v9);
        sub_1E080(v6, v7);
      }

      else
      {
        v5 = sub_1B5604();
        sub_1E04C(v6, v7);
        sub_1E04C(v8, v9);
        sub_1E04C(v6, v7);
        sub_1E04C(v8, v9);

        sub_1E080(v8, v9);
        sub_1E080(v6, v7);
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_6C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3) && *(v3 - 4) == *(i - 4); i += 32)
    {
      v5 = *i;
      if (*v3)
      {
        if (!*i)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(i - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_6CA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = v4 + 24 * v3;
    v6 = a2 + 32 + 24 * v3;
    if (*v5 != *v6)
    {
      return 0;
    }

    result = *(v5 + 12);
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    if (result)
    {
      if (!*(v6 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (*(v5 + 8) == *(v6 + 8))
      {
        v9 = *(v6 + 12);
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    if (v7)
    {
      if (!v8)
      {
        return 0;
      }

      v10 = *(v7 + 16);
      if (v10 != *(v8 + 16))
      {
        return 0;
      }

      if (v10)
      {
        v11 = v7 == v8;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = (v7 + 32);
        v13 = (v8 + 32);
        while (v10)
        {
          if (*v12 != *v13)
          {
            return 0;
          }

          ++v12;
          ++v13;
          if (!--v10)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (v8)
    {
      return 0;
    }

LABEL_6:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6DA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    if (v6)
    {
      if (!v7)
      {
        return 0;
      }

      v8 = *(v6 + 16);
      if (v8 != *(v7 + 16))
      {
        return 0;
      }

      if (v8)
      {
        v9 = v6 == v7;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v22 = v5;
        v23 = v4;
        swift_bridgeObjectRetain_n();

        v10 = 0;
        v11 = 0;
        while (v11 < *(v6 + 16))
        {
          if (v11 >= *(v7 + 16))
          {
            goto LABEL_56;
          }

          v12 = *(v6 + v10 + 48);
          v13 = *(v6 + v10 + 88);
          v14 = *(v7 + v10 + 48);
          v15 = *(v7 + v10 + 88);
          if (*(v6 + v10 + 40))
          {
            if (v12 == v14)
            {
              v16 = *(v7 + v10 + 40);
            }

            else
            {
              v16 = 0;
            }

            if (v16 != 1)
            {
LABEL_52:
              swift_bridgeObjectRelease_n();

              return 0;
            }
          }

          else if ((*(v7 + v10 + 40) & 1) != 0 || *(v6 + v10 + 32) != *(v7 + v10 + 32) || v12 != v14)
          {
            goto LABEL_52;
          }

          if (*(v6 + v10 + 64))
          {
            if (!*(v7 + v10 + 64))
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (*(v6 + v10 + 56) == *(v7 + v10 + 56))
            {
              v17 = *(v7 + v10 + 64);
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              goto LABEL_52;
            }
          }

          if (*(v6 + v10 + 72))
          {
            if (!*(v7 + v10 + 72))
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (*(v6 + v10 + 68) == *(v7 + v10 + 68))
            {
              v18 = *(v7 + v10 + 72);
            }

            else
            {
              v18 = 1;
            }

            if (v18)
            {
              goto LABEL_52;
            }
          }

          if (*(v6 + v10 + 80))
          {
            if (!*(v7 + v10 + 80))
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (*(v6 + v10 + 76) == *(v7 + v10 + 76))
            {
              v19 = *(v7 + v10 + 80);
            }

            else
            {
              v19 = 1;
            }

            if (v19)
            {
              goto LABEL_52;
            }
          }

          v20 = *(v6 + v10 + 88);

          v21 = sub_7BEC(v13, v15);

          if ((v21 & 1) == 0)
          {
            goto LABEL_52;
          }

          ++v11;
          v10 += 64;
          if (v8 == v11)
          {

            swift_bridgeObjectRelease_n();
            v5 = v22;
            v4 = v23;
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
        break;
      }
    }

    else
    {

      if (v7)
      {
        return 0;
      }
    }

LABEL_6:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6FEC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 24 * v3;
    v7 = *(v6 + 16);
    v8 = v5 + 24 * v3;
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    if (*(v6 + 8))
    {
      if (!*(v8 + 8))
      {
        return 0;
      }
    }

    else
    {
      if (*v6 != *v8)
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    if (v7)
    {
      if (!v10)
      {
        return 0;
      }

      v11 = *(v7 + 16);
      if (v11 != *(v10 + 16))
      {
        return 0;
      }

      if (v11)
      {
        v12 = v7 == v10;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v13 = (v7 + 40);
        v14 = (v10 + 40);
        while (v11)
        {
          result = *(v13 - 1);
          if (result != *(v14 - 1) || *v13 != *v14)
          {
            result = sub_1B5604();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v13 += 2;
          v14 += 2;
          if (!--v11)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (v10)
    {
      return 0;
    }

LABEL_6:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_7118(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v5 = *v4;
      v6 = *(v3 - 16);
      v7 = *v3;
      if (*(v4 - 2))
      {
        if (!*(v3 - 16))
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 3) != *(v3 - 3))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (v5)
      {
        if (!v7 || (*(v4 - 1) != *(v3 - 1) || v5 != v7) && (sub_1B5604() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_71E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v5 = *(a1 + v3 + 57);
      v6 = *(a2 + v3 + 57);
      if (*(a1 + v3 + 40))
      {
        if (!*(a2 + v3 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 32) == *(a2 + v3 + 32))
        {
          v7 = *(a2 + v3 + 40);
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 56))
      {
        if (!*(a2 + v3 + 56))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 48) == *(a2 + v3 + 48))
        {
          v8 = *(a2 + v3 + 56);
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (v5 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else
      {
        v9 = 0;
        if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
        {
          return v9;
        }
      }

      if (*(a1 + v3 + 72))
      {
        if (!*(a2 + v3 + 72))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 64) == *(a2 + v3 + 64))
        {
          v4 = *(a2 + v3 + 72);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      v3 += 48;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_72D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v3 - 16);
      v9 = *(v3 - 1);
      v8 = *v3;
      if (*(v4 - 2))
      {
        if (!*(v3 - 16))
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 3) != *(v3 - 3))
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      if (v6 == 2)
      {
        if (v8 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == 2)
        {
          return 0;
        }

        v10 = v6 == 1 ? 0x4F4F424F49445541 : *(v4 - 1);
        v11 = v6 == 1 ? 0xE90000000000004BLL : *v4;
        v12 = v6 ? v10 : 0x4B4F4F4245;
        v13 = v6 ? v11 : 0xE500000000000000;
        v14 = v8 == 1 ? 0x4F4F424F49445541 : *(v3 - 1);
        v15 = v8 == 1 ? 0xE90000000000004BLL : *v3;
        v16 = v8 ? v14 : 0x4B4F4F4245;
        v17 = v8 ? v15 : 0xE500000000000000;
        v18 = v12 == v16 && v13 == v17 ? 1 : sub_1B5604();
        sub_1E060(v5, v6);
        sub_1E060(v9, v8);
        sub_1E060(v5, v6);
        sub_1E060(v9, v8);
        sub_1E060(v5, v6);
        sub_1E060(v9, v8);

        sub_1E070(v9, v8);
        sub_1E070(v5, v6);
        sub_1E070(v9, v8);
        sub_1E070(v5, v6);
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_74B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = v4 + 24 * v3;
    v6 = *(v5 + 16);
    result = *(v5 + 8);
    v7 = a2 + 32 + 24 * v3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    if (result)
    {
      if (!*(v7 + 8))
      {
        return 0;
      }
    }

    else
    {
      if (*v5 != *v7)
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    if (v6)
    {
      if (!v9)
      {
        return 0;
      }

      v10 = *(v6 + 16);
      if (v10 != *(v9 + 16))
      {
        return 0;
      }

      if (v10)
      {
        v11 = v6 == v9;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = (v6 + 32);
        v13 = (v9 + 32);
        while (v10)
        {
          if (*v12 != *v13)
          {
            return 0;
          }

          ++v12;
          ++v13;
          if (!--v10)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (v9)
    {
      return 0;
    }

LABEL_6:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_75A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v35 = v2;
  v36 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v27 = v5[2];
    v28[0] = v8;
    *(v28 + 12) = *(v5 + 60);
    v9 = v5[1];
    v26[0] = *v5;
    v26[1] = v9;
    v24 = v27;
    v25[0] = v8;
    *(v25 + 12) = *(v28 + 12);
    v22 = v26[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    *(v30 + 12) = *(v6 + 60);
    v14 = *(v30 + 12);
    v29[2] = v12;
    v30[0] = v13;
    v29[0] = v10;
    v29[1] = v11;
    v20 = v12;
    v21[0] = v13;
    *(v21 + 12) = v14;
    v18 = v10;
    v19 = v11;
    sub_20438(v26, v17);
    sub_20438(v29, v17);
    v15 = _s20BooksPersonalization9TransportO28RecommendationBlockRequestV2V2eeoiySbAE_AEtFZ_0(&v22, &v18);
    v31[2] = v20;
    v32[0] = v21[0];
    *(v32 + 12) = *(v21 + 12);
    v31[0] = v18;
    v31[1] = v19;
    sub_20470(v31);
    v33[2] = v24;
    v34[0] = v25[0];
    *(v34 + 12) = *(v25 + 12);
    v33[0] = v22;
    v33[1] = v23;
    sub_20470(v33);
    if ((v15 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 5;
    v5 += 5;
  }

  return 1;
}

uint64_t sub_76FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B5604() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_778C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v6 = *(v4 + 8 * v3);
    v7 = *(v5 + 8 * v3);
    if (!v6)
    {

      if (v7)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!v7)
    {
      return 0;
    }

    v8 = *(v6 + 16);
    if (v8 != *(v7 + 16))
    {
      return 0;
    }

    if (v8 && v6 != v7)
    {
      break;
    }

LABEL_6:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v10 = 0;
  v11 = v6 + 32;
  while (v10 != v8)
  {
    v12 = v11 + 24 * v10;
    v13 = v7 + 32 + 24 * v10;
    if (*v12 != *v13)
    {
      return 0;
    }

    v14 = *(v12 + 16);
    v15 = *(v13 + 16);
    if (*(v12 + 12))
    {
      if (!*(v13 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (*(v12 + 8) == *(v13 + 8))
      {
        v16 = *(v13 + 12);
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    if (v14)
    {
      if (!v15)
      {
        return 0;
      }

      v17 = *(v14 + 16);
      if (v17 != *(v15 + 16))
      {
        return 0;
      }

      if (v17)
      {
        v18 = v14 == v15;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v19 = (v14 + 32);
        v20 = (v15 + 32);
        while (v17)
        {
          if (*v19 != *v20)
          {
            return 0;
          }

          ++v19;
          ++v20;
          if (!--v17)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_43;
      }
    }

    else if (v15)
    {
      return 0;
    }

LABEL_17:
    if (++v10 == v8)
    {
      goto LABEL_6;
    }
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_7914(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 16);
    v23[0] = *v5;
    v23[1] = v8;
    v24 = *(v5 + 32);
    v25 = *(v5 + 48);
    v19 = v23[0];
    v20 = v8;
    v21 = v24;
    v22 = v25;
    v9 = *v6;
    v10 = v6[1];
    v11 = v6[2];
    v27 = *(v6 + 6);
    v26[1] = v10;
    v26[2] = v11;
    v26[0] = v9;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v27;
    sub_1E268(v23, v14);
    sub_1E268(v26, v14);
    v12 = _s20BooksPersonalization9TransportO26RecommendationBlockRequestV2eeoiySbAE_AEtFZ_0(&v19, &v15);
    v28[0] = v15;
    v28[1] = v16;
    v28[2] = v17;
    v29 = v18;
    sub_1E190(v28);
    v30[0] = v19;
    v30[1] = v20;
    v30[2] = v21;
    v31 = v22;
    sub_1E190(v30);
    if (!v12)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 56);
    v5 += 56;
  }

  return 1;
}

uint64_t sub_7A5C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v19 = result + 32;
  v4 = a2 + 32;
  while (v3 != v2)
  {
    v5 = v19 + 48 * v3;
    v6 = v4 + 48 * v3;
    if (*v5 != *v6)
    {
      return 0;
    }

    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
    v12 = *(v6 + 40);
    if (*(v5 + 16))
    {
      if (!*(v6 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (*(v5 + 8) == *(v6 + 8))
      {
        v13 = *(v6 + 16);
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    v14 = *(v7 + 16);
    if (v14 != *(v10 + 16))
    {
      return 0;
    }

    if (v14)
    {
      v15 = v7 == v10;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (v7 + 40);
      v17 = (v10 + 40);
      while (v14)
      {
        result = *(v16 - 1);
        if (result != *(v17 - 1) || *v16 != *v17)
        {
          result = sub_1B5604();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v16 += 2;
        v17 += 2;
        if (!--v14)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      break;
    }

LABEL_23:
    if (v9)
    {
      if (!v12 || (v8 != v11 || v9 != v12) && (sub_1B5604() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_7BEC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  v31 = result + 32;
  v32 = *(result + 16);
  v30 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 24 * v3;
    v7 = *(v6 + 16);
    v8 = v5 + 24 * v3;
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    if (*(v6 + 8))
    {
      if (!*(v8 + 8))
      {
        return 0;
      }
    }

    else
    {
      if (*v6 != *v8)
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    if (v7)
    {
      if (!v10)
      {
        return 0;
      }

      v11 = *(v7 + 16);
      if (v11 != *(v10 + 16))
      {
        return 0;
      }

      if (v11)
      {
        v12 = v7 == v10;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        v33 = v3;
        swift_bridgeObjectRetain_n();

        v13 = 0;
        v14 = 0;
        v34 = v7;
        v35 = v10;
        while (v14 < *(v7 + 16))
        {
          if (v14 >= *(v10 + 16))
          {
            goto LABEL_58;
          }

          v16 = v7 + v13;
          v17 = *(v7 + v13 + 32);
          v18 = *(v16 + 40);
          v19 = v10 + v13;
          v20 = *(v10 + v13 + 32);
          v21 = *(v19 + 40);
          if (v18 == 1)
          {
            v22 = 0xD000000000000012;
          }

          else
          {
            v22 = v17;
          }

          if (v18 == 1)
          {
            v23 = 0x80000000001D54F0;
          }

          else
          {
            v23 = v18;
          }

          if (v18)
          {
            v24 = v22;
          }

          else
          {
            v24 = 0x4148435255504F43;
          }

          if (v18)
          {
            v25 = v23;
          }

          else
          {
            v25 = 0xEA00000000004553;
          }

          if (v21 == 1)
          {
            v26 = 0xD000000000000012;
          }

          else
          {
            v26 = v20;
          }

          if (v21 == 1)
          {
            v27 = 0x80000000001D54F0;
          }

          else
          {
            v27 = v21;
          }

          if (v21)
          {
            v28 = v26;
          }

          else
          {
            v28 = 0x4148435255504F43;
          }

          if (v21)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0xEA00000000004553;
          }

          if (v24 == v28 && v25 == v29)
          {
            sub_1E04C(v17, v18);
            sub_1E04C(v20, v21);
            sub_1E04C(v17, v18);
            sub_1E04C(v20, v21);

            sub_1E080(v20, v21);
            result = sub_1E080(v17, v18);
          }

          else
          {
            v15 = sub_1B5604();
            sub_1E04C(v17, v18);
            sub_1E04C(v20, v21);
            sub_1E04C(v17, v18);
            sub_1E04C(v20, v21);

            sub_1E080(v20, v21);
            result = sub_1E080(v17, v18);
            if ((v15 & 1) == 0)
            {

              swift_bridgeObjectRelease_n();
              return 0;
            }
          }

          ++v14;
          v13 += 16;
          v7 = v34;
          v10 = v35;
          if (v11 == v14)
          {

            result = swift_bridgeObjectRelease_n();
            v2 = v32;
            v3 = v33;
            v5 = v30;
            v4 = v31;
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
        break;
      }
    }

    else if (v10)
    {
      return 0;
    }

LABEL_6:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_7ED4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_7F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 1);
      v9 = *v4;
      if (*v3 == 1)
      {
        v10 = 0x4F4F424F49445541;
      }

      else
      {
        v10 = *(v3 - 1);
      }

      if (*v3 == 1)
      {
        v11 = 0xE90000000000004BLL;
      }

      else
      {
        v11 = *v3;
      }

      if (v7)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0x4B4F4F4245;
      }

      if (v7)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      if (v9 == 1)
      {
        v14 = 0x4F4F424F49445541;
      }

      else
      {
        v14 = *(v4 - 1);
      }

      if (v9 == 1)
      {
        v15 = 0xE90000000000004BLL;
      }

      else
      {
        v15 = *v4;
      }

      if (v9)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0x4B4F4F4245;
      }

      if (v9)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE500000000000000;
      }

      if (v12 == v16 && v13 == v17)
      {
        sub_1E04C(*(v3 - 1), *v3);
        sub_1E04C(v8, v9);
        sub_1E04C(v6, v7);
        sub_1E04C(v8, v9);

        sub_1E080(v8, v9);
        sub_1E080(v6, v7);
      }

      else
      {
        v5 = sub_1B5604();
        sub_1E04C(v6, v7);
        sub_1E04C(v8, v9);
        sub_1E04C(v6, v7);
        sub_1E04C(v8, v9);

        sub_1E080(v8, v9);
        sub_1E080(v6, v7);
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_80F8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_8154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionRecommendation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v69 = type metadata accessor for ScoredCollectionRecommendation();
  v10 = *(*(v69 - 8) + 64);
  v11 = __chkstk_darwin(v69);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (v17 && a1 != a2)
  {
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = a1 + v18;
    v20 = a2 + v18;
    v65 = 0x80000000001D4780;
    v66 = 0x80000000001D47A0;
    v63 = 0x80000000001D4740;
    v64 = 0x80000000001D4760;
    v62 = 0x80000000001D4FE0;
    v67 = *(v14 + 72);
    v68 = v4;
    while (1)
    {
      sub_25F54(v19, v16, type metadata accessor for ScoredCollectionRecommendation);
      sub_25F54(v20, v13, type metadata accessor for ScoredCollectionRecommendation);
      sub_25F54(v16, v9, type metadata accessor for CollectionRecommendation);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v21 = 1;
          break;
        case 2u:
          v23 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy(v71, &v9[*(v23 + 48)], 0x231uLL);
          sub_2601C(v71);
          v24 = *&v9[*(v23 + 64)];

          v25 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v25 - 8) + 8))(v9, v25);
          v21 = 2;
          break;
        case 3u:
          v26 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v26 - 8) + 8))(v9, v26);
          v21 = 3;
          break;
        case 4u:
          v22 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v22 - 8) + 8))(v9, v22);
          v21 = 4;
          break;
        case 5u:
          v28 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v28 - 8) + 8))(v9, v28);
          v21 = 5;
          break;
        case 6u:
          v29 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v29 - 8) + 8))(v9, v29);
          v21 = 6;
          break;
        case 7u:
          v27 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v27 - 8) + 8))(v9, v27);
          v21 = 7;
          break;
        case 8u:
          v30 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v30 - 8) + 8))(v9, v30);
          v21 = 8;
          break;
        case 9u:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v21 = 9;
          break;
        case 0xAu:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v21 = 10;
          break;
        case 0xBu:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v21 = 11;
          break;
        case 0xCu:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v21 = 12;
          break;
        default:
          sub_25FBC(v9, type metadata accessor for CollectionRecommendation);
          v21 = 0;
          break;
      }

      sub_25F54(v13, v70, type metadata accessor for CollectionRecommendation);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_25FBC(v70, type metadata accessor for CollectionRecommendation);
          v31 = 1;
          break;
        case 2u:
          v33 = sub_2B0C(&qword_228F40, &unk_1BB360);
          v34 = v70;
          memcpy(v71, (v70 + *(v33 + 48)), 0x231uLL);
          sub_2601C(v71);
          v35 = *(v34 + *(v33 + 64));

          v36 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v36 - 8) + 8))(v34, v36);
          v31 = 2;
          break;
        case 3u:
          v37 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v37 - 8) + 8))(v70, v37);
          v31 = 3;
          break;
        case 4u:
          v32 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v32 - 8) + 8))(v70, v32);
          v31 = 4;
          break;
        case 5u:
          v39 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v39 - 8) + 8))(v70, v39);
          v31 = 5;
          break;
        case 6u:
          v40 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v40 - 8) + 8))(v70, v40);
          v31 = 6;
          break;
        case 7u:
          v38 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v38 - 8) + 8))(v70, v38);
          v31 = 7;
          break;
        case 8u:
          v41 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v41 - 8) + 8))(v70, v41);
          v31 = 8;
          break;
        case 9u:
          sub_25FBC(v70, type metadata accessor for CollectionRecommendation);
          v31 = 9;
          break;
        case 0xAu:
          sub_25FBC(v70, type metadata accessor for CollectionRecommendation);
          v31 = 10;
          break;
        case 0xBu:
          sub_25FBC(v70, type metadata accessor for CollectionRecommendation);
          v31 = 11;
          break;
        case 0xCu:
          sub_25FBC(v70, type metadata accessor for CollectionRecommendation);
          v31 = 12;
          break;
        default:
          sub_25FBC(v70, type metadata accessor for CollectionRecommendation);
          v31 = 0;
          break;
      }

      v42 = 0xE400000000000000;
      v43 = 1802465122;
      switch(v21)
      {
        case 1:
          v42 = 0xE500000000000000;
          v43 = 0x736B6F6F62;
          break;
        case 2:
          v43 = 0xD000000000000010;
          v42 = v62;
          break;
        case 3:
          v43 = 0x417942736B6F6F62;
          v42 = 0xED0000726F687475;
          break;
        case 4:
          v43 = 0xD000000000000017;
          v42 = v63;
          break;
        case 5:
          v43 = 0x476E49736B6F6F62;
          v42 = 0xEC00000065726E65;
          break;
        case 6:
          v43 = 0xD000000000000011;
          v42 = v64;
          break;
        case 7:
          v43 = 0xD000000000000011;
          v42 = v65;
          break;
        case 8:
          v43 = 0xD000000000000013;
          v42 = v66;
          break;
        case 9:
          v42 = 0xE600000000000000;
          v43 = 0x736569726573;
          break;
        case 10:
          v44 = 1954047342;
          goto LABEL_45;
        case 11:
          v44 = 1701998445;
LABEL_45:
          v43 = v44 | 0x65536E4900000000;
          v42 = 0xEC00000073656972;
          break;
        case 12:
          v43 = 0x6867696C68676968;
          v42 = 0xEA00000000007374;
          break;
        default:
          break;
      }

      v45 = 0xE400000000000000;
      v46 = 1802465122;
      switch(v31)
      {
        case 1:
          v45 = 0xE500000000000000;
          if (v43 == 0x736B6F6F62)
          {
            goto LABEL_70;
          }

          goto LABEL_73;
        case 2:
          v45 = v62;
          if (v43 != 0xD000000000000010)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        case 3:
          v45 = 0xED0000726F687475;
          if (v43 != 0x417942736B6F6F62)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        case 4:
          v45 = v63;
          if (v43 != 0xD000000000000017)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        case 5:
          v47 = 0x476E49736B6F6F62;
          v48 = 1701998181;
          goto LABEL_64;
        case 6:
          v45 = v64;
          if (v43 != 0xD000000000000011)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        case 7:
          v45 = v65;
          if (v43 != 0xD000000000000011)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        case 8:
          v45 = v66;
          if (v43 != 0xD000000000000013)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        case 9:
          v45 = 0xE600000000000000;
          if (v43 != 0x736569726573)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        case 10:
          v46 = 0x65536E497478656ELL;
          v45 = 0xEC00000073656972;
          goto LABEL_69;
        case 11:
          v47 = 0x65536E4965726F6DLL;
          v48 = 1936025970;
LABEL_64:
          v45 = v48 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v43 != v47)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        case 12:
          v45 = 0xEA00000000007374;
          if (v43 != 0x6867696C68676968)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        default:
LABEL_69:
          if (v43 != v46)
          {
            goto LABEL_73;
          }

LABEL_70:
          if (v42 == v45)
          {
          }

          else
          {
LABEL_73:
            v49 = sub_1B5604();

            if ((v49 & 1) == 0)
            {
              goto LABEL_93;
            }
          }

          v50 = *(v69 + 20);
          v51 = v16[v50];
          v52 = v13[v50];
          if (v51)
          {
            if (v51 == 1)
            {
              v53 = 0x6F6F626F69647561;
              v54 = 0xE90000000000006BLL;
              if (!v52)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v54 = 0xE500000000000000;
              v53 = 0x646578696DLL;
              if (!v52)
              {
LABEL_81:
                v55 = 0xE500000000000000;
                if (v53 != 0x6B6F6F6265)
                {
                  goto LABEL_88;
                }

                goto LABEL_86;
              }
            }
          }

          else
          {
            v54 = 0xE500000000000000;
            v53 = 0x6B6F6F6265;
            if (!v52)
            {
              goto LABEL_81;
            }
          }

          if (v52 == 1)
          {
            v55 = 0xE90000000000006BLL;
            if (v53 != 0x6F6F626F69647561)
            {
              goto LABEL_88;
            }
          }

          else
          {
            v55 = 0xE500000000000000;
            if (v53 != 0x646578696DLL)
            {
              goto LABEL_88;
            }
          }

LABEL_86:
          if (v54 == v55)
          {

            goto LABEL_89;
          }

LABEL_88:
          v56 = sub_1B5604();

          if ((v56 & 1) == 0)
          {
LABEL_93:
            sub_25FBC(v13, type metadata accessor for ScoredCollectionRecommendation);
            sub_25FBC(v16, type metadata accessor for ScoredCollectionRecommendation);
            return 0;
          }

LABEL_89:
          v57 = v69;
          v58 = *&v16[*(v69 + 28)];
          sub_25FBC(v16, type metadata accessor for ScoredCollectionRecommendation);
          v59 = *&v13[*(v57 + 28)];
          sub_25FBC(v13, type metadata accessor for ScoredCollectionRecommendation);
          result = v58 == v59;
          if (v58 != v59)
          {
            return result;
          }

          v20 += v67;
          v19 += v67;
          if (!--v17)
          {
            return result;
          }

          break;
      }
    }
  }

  return 1;
}

uint64_t sub_9024(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v7 = *(a1 + v5 + 48);
      v6 = *(a1 + v5 + 56);
      v8 = *(a1 + v5 + 64);
      v9 = *(a1 + v5 + 72);
      v10 = *(a1 + v5 + 80);
      v12 = *(a2 + v5 + 48);
      v11 = *(a2 + v5 + 56);
      v13 = *(a2 + v5 + 64);
      v14 = *(a2 + v5 + 72);
      v15 = *(a2 + v5 + 80);
      if (*(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40))
      {
        if (v7 != v12 || v6 != v11)
        {
          return 0;
        }
      }

      else
      {
        v17 = sub_1B5604();
        result = 0;
        if ((v17 & 1) == 0)
        {
          return result;
        }

        if (v7 != v12 || v6 != v11)
        {
          return result;
        }
      }

      if (v10)
      {
        if (!v15)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v15)
        {
          return result;
        }

        if (v8 != v13 || v9 != v14)
        {
          return result;
        }
      }

      v5 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_9148(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = 1;
  while (v3 != v2)
  {
    v6 = (v4 + 16 * v3);
    v7 = (a2 + 32 + 16 * v3);
    if (*v6 != *v7)
    {
      return 0;
    }

    v8 = v6[1];
    v9 = v7[1];
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    if (v10)
    {
      v11 = v8 == v9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      v13 = (v9 + 32);
      while (v10)
      {
        if (*v12 != *v13)
        {
          return 0;
        }

        ++v12;
        ++v13;
        if (!--v10)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    if (++v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_9210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1B5604() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1B5604() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t Transport.RecommendationRequest.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_228560, &qword_1B6580);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v27 = *(v1 + 16);
  v11 = v1[3];
  v10 = v1[4];
  v22 = v1[5];
  v23 = v10;
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  sub_2698(v14, v13);
  sub_1E2F4();
  sub_1B5884();
  LOBYTE(v25) = 0;
  v17 = v24;
  sub_1B54F4();
  if (!v17)
  {
    v18 = v22;
    v19 = v23;
    LOBYTE(v25) = v27;
    v26 = v11;
    v28 = 1;
    sub_1E348();

    sub_1B5544();

    v25 = v19;
    v28 = 2;
    sub_2B0C(&qword_228578, &qword_1B6588);
    sub_1E39C();
    sub_1B5544();
    v25 = v18;
    v28 = 3;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_1E474();
    sub_1B54B4();
  }

  return (*(v4 + 8))(v7, v16);
}

void Transport.RecommendationRequest.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  sub_1B4884();
  sub_1B5814(v5);
  if (v6)
  {
    sub_1B5814(1u);
    sub_1B35C(a1, v6);
  }

  else
  {
    sub_1B5814(0);
  }

  sub_1B5804(*(v7 + 16));
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = (v7 + 32);
    do
    {
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v20 = *(v10 + 6);
      v19[1] = v12;
      v19[2] = v13;
      v19[0] = v11;
      v14 = v10[1];
      v23 = *v10;
      v24 = v14;
      v25 = v10[2];
      v26 = *(v10 + 6);
      sub_1E268(v19, v21);
      Transport.RecommendationBlockRequest.hash(into:)();
      v21[0] = v23;
      v21[1] = v24;
      v21[2] = v25;
      v22 = v26;
      sub_1E190(v21);
      v10 = (v10 + 56);
      --v9;
    }

    while (v9);
  }

  if (v8)
  {
    sub_1B5814(1u);
    sub_1B5804(*(v8 + 16));
    v15 = *(v8 + 16);
    if (v15)
    {
      v16 = (v8 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        sub_1B4884();

        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    sub_1B5814(0);
  }
}

Swift::Int Transport.RecommendationRequest.hashValue.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *(v0 + 3);
  v4 = v0[5];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1B57F4();
  Transport.RecommendationRequest.hash(into:)(v6);
  return sub_1B5844();
}

uint64_t Transport.RecommendationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2285A0, &qword_1B6598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1E2F4();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v21) = 0;
  v11 = sub_1B53B4();
  v20 = v12;
  v24 = 1;
  sub_1E4F0();
  sub_1B5404();
  v23 = v21;
  v19 = v22;
  sub_2B0C(&qword_228578, &qword_1B6588);
  v24 = 2;
  sub_1E544();
  sub_1B5404();
  v18 = v21;
  sub_2B0C(&qword_228590, &qword_1B6590);
  v24 = 3;
  sub_1E61C();
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v14 = v21;
  *a2 = v11;
  *(a2 + 8) = v15;
  *(a2 + 16) = v23;
  v16 = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;
  *(a2 + 40) = v14;

  sub_2BF8(a1);
}

Swift::Int sub_9AB4()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *(v0 + 3);
  v4 = v0[5];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1B57F4();
  Transport.RecommendationRequest.hash(into:)(v6);
  return sub_1B5844();
}

uint64_t Transport.StoreAssetRequestDetails.mediaType.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Transport.RecommendationResponseV2.bookIdToSeriesIdEntries.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Transport.RecommendationResponse.init(recommendationBlockResponses:bookIdToDeduplicationIdEntries:bookIdToSeriesIdEntries:bookAuthors:booksEmbeddings:bookGenres:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t Transport.RecommendationResponse.CodingKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20EF08;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 6;
  if (v6 < 6)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Transport.RecommendationResponse.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.RecommendationResponse.CodingKeys.init(rawValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

unint64_t sub_9C24()
{
  v1 = *v0;
  v2 = 0x687475416B6F6F62;
  v3 = 0x626D45736B6F6F62;
  if (v1 != 4)
  {
    v3 = 0x726E65476B6F6F62;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ELL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v4 = 0xD00000000000001CLL;
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

uint64_t sub_9D18()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

void sub_9E40(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000073726FLL;
  v4 = 0x687475416B6F6F62;
  v5 = 0xEF73676E69646465;
  v6 = 0x626D45736B6F6F62;
  if (v2 != 4)
  {
    v6 = 0x726E65476B6F6F62;
    v5 = 0xEA00000000007365;
  }

  if (v2 != 3)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000000001D4370;
  v8 = 0x80000000001D4390;
  v9 = 0xD00000000000001ELL;
  if (v2 != 1)
  {
    v9 = 0xD000000000000017;
    v8 = 0x80000000001D43B0;
  }

  if (*v1)
  {
    v7 = v8;
  }

  else
  {
    v9 = 0xD00000000000001CLL;
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_9F24(uint64_t a1)
{
  v2 = sub_1E698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9F60(uint64_t a1)
{
  v2 = sub_1E698();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.RecommendationResponse.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2285C8, &qword_1B65A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v24 = v1[2];
  v25 = v9;
  v12 = v1[5];
  v22 = v1[4];
  v23 = v11;
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  sub_2698(v15, v13);
  sub_1E698();

  sub_1B5884();
  v27 = v10;
  v26 = 0;
  sub_2B0C(&qword_2285D8, &qword_1B65A8);
  sub_1E6EC();
  sub_1B5544();
  if (v2)
  {
  }

  else
  {
    v18 = v23;
    v19 = v24;

    v27 = v25;
    v26 = 1;
    sub_2B0C(&qword_2285F0, &qword_1B65B0);
    sub_1E7C4();
    sub_1B54B4();
    v27 = v19;
    v26 = 2;
    sub_2B0C(&qword_228608, &qword_1B65B8);
    sub_1E89C();
    sub_1B54B4();
    v27 = v18;
    v26 = 3;
    sub_2B0C(&qword_228620, &qword_1B65C0);
    sub_1E974();
    sub_1B54B4();
    v27 = v22;
    v26 = 4;
    sub_2B0C(&qword_228638, &qword_1B65C8);
    sub_1EA4C();
    sub_1B54B4();
    v27 = v12;
    v26 = 5;
    sub_2B0C(&qword_228650, &qword_1B65D0);
    sub_1EB24();
    sub_1B54B4();
  }

  return (*(v5 + 8))(v8, v17);
}

void Transport.RecommendationResponse.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  sub_1C340(a1, *v1);
  if (v3)
  {
    sub_1B5814(1u);
    sub_1BE44(a1, v3);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B5814(0);
    if (v5)
    {
LABEL_3:
      sub_1B5814(1u);
      sub_1BD2C(a1, v5);
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1B5814(0);
  if (v4)
  {
LABEL_4:
    sub_1B5814(1u);
    sub_1C57C(a1, v4);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1B5814(0);
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  sub_1B5814(0);
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1B5814(1u);
  sub_1BAE8(a1, v7);
  if (v6)
  {
LABEL_6:
    sub_1B5814(1u);
    sub_1C57C(a1, v6);
    return;
  }

LABEL_11:
  sub_1B5814(0);
}

Swift::Int Transport.RecommendationResponse.hashValue.getter()
{
  v1 = v0[5];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 3);
  v7 = v1;
  sub_1B57F4();
  Transport.RecommendationResponse.hash(into:)(v3);
  return sub_1B5844();
}

uint64_t Transport.RecommendationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_228668, &qword_1B65D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1E698();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  sub_2B0C(&qword_2285D8, &qword_1B65A8);
  v19 = 0;
  sub_1EBFC();
  sub_1B5404();
  v18 = v20;
  sub_2B0C(&qword_2285F0, &qword_1B65B0);
  v19 = 1;
  sub_1ECD4();
  sub_1B5374();
  v17 = v20;
  sub_2B0C(&qword_228608, &qword_1B65B8);
  v19 = 2;
  sub_1EDAC();
  sub_1B5374();
  v16 = v20;
  sub_2B0C(&qword_228620, &qword_1B65C0);
  v19 = 3;
  sub_1EE84();
  sub_1B5374();
  v11 = v20;
  sub_2B0C(&qword_228638, &qword_1B65C8);
  v19 = 4;
  sub_1EF5C();
  sub_1B5374();
  v12 = v20;
  sub_2B0C(&qword_228650, &qword_1B65D0);
  v19 = 5;
  sub_1F034();
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v15 = v17;
  *a2 = v18;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v14;

  sub_2BF8(a1);
}

Swift::Int sub_A958()
{
  v1 = v0[5];
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = *(v0 + 3);
  v7 = v1;
  sub_1B57F4();
  Transport.RecommendationResponse.hash(into:)(v3);
  return sub_1B5844();
}

uint64_t Transport.SeedBook.maxNumberOfCandidates.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Transport.SeedBook.maxNumberOfCandidates.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t Transport.SeedBook.init(bookId:affinity:maxNumberOfCandidates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, float a5@<S0>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3 & 1;
  return result;
}

uint64_t Transport.SeedBook.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20EFB8;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 3;
  if (v6 < 3)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Transport.SeedBook.CodingKeys.stringValue.getter()
{
  v1 = 0x7974696E69666661;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496B6F6F62;
  }
}

uint64_t sub_AAB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x7974696E69666661;
  v5 = 0x80000000001D43F0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000000001D43F0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x7974696E69666661;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000015;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_ABAC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_AC50()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_ACE0()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_AD8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7974696E69666661;
  if (v2 != 1)
  {
    v5 = 0xD000000000000015;
    v4 = 0x80000000001D43F0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64496B6F6F62;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_ADEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.SeedBook.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_AE24(uint64_t a1)
{
  v2 = sub_1F10C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_AE60(uint64_t a1)
{
  v2 = sub_1F10C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.SeedBook.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2286D0, &qword_1B65E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v14 = v1[2];
  v13[3] = *(v1 + 24);
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F10C();
  sub_1B5884();
  v17 = 0;
  sub_1B5564();
  if (!v2)
  {
    v16 = 1;
    sub_1B5524();
    v15 = 2;
    sub_1B54D4();
  }

  return (*(v5 + 8))(v8, v4);
}

void Transport.SeedBook.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1B5834(*v0);
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  sub_1B5824(LODWORD(v4));
  if (v3 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v2);
  }
}

Swift::Int Transport.SeedBook.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B57F4();
  sub_1B5834(v1);
  v5 = 0.0;
  if (v2 != 0.0)
  {
    v5 = v2;
  }

  sub_1B5824(LODWORD(v5));
  if (v4 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v3);
  }

  return sub_1B5844();
}

uint64_t Transport.SeedBook.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2286E0, &qword_1B65E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F10C();
  sub_1B5864();
  if (!v2)
  {
    v18[15] = 0;
    v11 = sub_1B5424();
    v18[14] = 1;
    sub_1B53E4();
    v13 = v12;
    v18[13] = 2;
    v15 = sub_1B5394();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17 & 1;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_B3B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B57F4();
  sub_1B5834(v1);
  v5 = 0.0;
  if (v2 != 0.0)
  {
    v5 = v2;
  }

  sub_1B5824(LODWORD(v5));
  if (v4 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v3);
  }

  return sub_1B5844();
}

uint64_t Transport.RecommendedItem.authorId.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Transport.RecommendedItem.authorId.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t Transport.RecommendedItem.seriesId.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t Transport.RecommendedItem.seriesId.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t Transport.RecommendedItem.copurchaseAffinity.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t Transport.RecommendedItem.contentSimilarityAffinity.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 48) = BYTE4(result) & 1;
  return result;
}

uint64_t Transport.RecommendationResponseV2.bookGenres.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Transport.RecommendedItem.init(authorId:bookId:seriesId:copurchaseAffinity:contentSimilarityAffinity:inferredFromAffinityForBookIds:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 36) = a6;
  *(a9 + 40) = BYTE4(a6) & 1;
  *(a9 + 44) = a7;
  *(a9 + 48) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  return result;
}

uint64_t Transport.RecommendedItem.CodingKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20F020;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 6;
  if (v6 < 6)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Transport.RecommendedItem.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.RecommendedItem.CodingKeys.init(rawValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

unint64_t sub_B674()
{
  v1 = *v0;
  v2 = 0x6449726F68747561;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64496B6F6F62;
  if (v1 != 1)
  {
    v5 = 0x6449736569726573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B744()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

void sub_B848(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6449726F68747561;
  v5 = 0xD000000000000012;
  v6 = 0x80000000001D4420;
  v7 = 0x80000000001D4440;
  v8 = 0xD000000000000019;
  if (v2 != 4)
  {
    v8 = 0xD00000000000001ELL;
    v7 = 0x80000000001D4260;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x64496B6F6F62;
  if (v2 != 1)
  {
    v10 = 0x6449736569726573;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_B908(uint64_t a1)
{
  v2 = sub_1F160();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B944(uint64_t a1)
{
  v2 = sub_1F160();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.RecommendedItem.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_2286E8, &qword_1B65F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v21 = v1[3];
  v22 = v10;
  v25 = *(v1 + 32);
  v20 = *(v1 + 9);
  LODWORD(v10) = *(v1 + 40);
  v17[1] = *(v1 + 11);
  v18 = *(v1 + 48);
  v19 = v10;
  v17[0] = v1[7];
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F160();
  v12 = v3;
  sub_1B5884();
  LOBYTE(v24) = 0;
  v13 = v23;
  sub_1B54D4();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v15 = v18;
  v14 = v19;
  LOBYTE(v24) = 1;
  sub_1B5564();
  LOBYTE(v24) = 2;
  sub_1B54D4();
  LOBYTE(v24) = 3;
  v26 = v14;
  sub_1B5494();
  LOBYTE(v24) = 4;
  v26 = v15;
  sub_1B5494();
  v24 = v17[0];
  v26 = 5;
  sub_2B0C(&qword_2286F8, &qword_1B65F8);
  sub_1F1B4();
  sub_1B5544();
  return (*(v4 + 8))(v7, v12);
}

void Transport.RecommendedItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 36);
  v8 = *(v2 + 40);
  v9 = *(v2 + 44);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  if (*(v2 + 8) == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    v12 = *v2;
    sub_1B5814(1u);
    sub_1B5834(v12);
  }

  sub_1B5834(v5);
  if (v6)
  {
    sub_1B5814(0);
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v4);
    if (!v8)
    {
LABEL_6:
      sub_1B5814(1u);
      if ((v7 & 0x7FFFFFFF) != 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = 0;
      }

      sub_1B5824(v13);
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  sub_1B5814(0);
  if (!v10)
  {
LABEL_10:
    sub_1B5814(1u);
    if ((v9 & 0x7FFFFFFF) != 0)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    sub_1B5824(v14);
    goto LABEL_17;
  }

LABEL_16:
  sub_1B5814(0);
LABEL_17:

  sub_1B0C8(a1, v11);
}

uint64_t Transport.RecommendedItem.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2B0C(&qword_228710, &qword_1B6600);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F160();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v35) = 0;
  v11 = sub_1B5394();
  v49 = v12 & 1;
  LOBYTE(v35) = 1;
  v13 = sub_1B5424();
  LOBYTE(v35) = 2;
  v30 = sub_1B5394();
  v48 = v14 & 1;
  LOBYTE(v35) = 3;
  v29 = sub_1B5354();
  v47 = BYTE4(v29) & 1;
  LOBYTE(v35) = 4;
  v28 = sub_1B5354();
  v46 = BYTE4(v28) & 1;
  sub_2B0C(&qword_2286F8, &qword_1B65F8);
  v50 = 5;
  sub_1F28C();
  sub_1B5404();
  (*(v6 + 8))(v9, v5);
  v24 = v45;
  v27 = v11;
  *&v31 = v11;
  v26 = v49;
  BYTE8(v31) = v49;
  v15 = v30;
  *&v32 = v13;
  *(&v32 + 1) = v30;
  v25 = v48;
  LOBYTE(v33) = v48;
  v16 = v29;
  DWORD1(v33) = v29;
  v17 = v47;
  BYTE8(v33) = v47;
  v18 = v28;
  HIDWORD(v33) = v28;
  LOBYTE(v11) = v46;
  LOBYTE(v34) = v46;
  *(&v34 + 1) = v45;
  v19 = v31;
  v20 = v32;
  v21 = v34;
  a2[2] = v33;
  a2[3] = v21;
  *a2 = v19;
  a2[1] = v20;
  sub_1F364(&v31, &v35);
  sub_2BF8(a1);
  v35 = v27;
  v36 = v26;
  v37 = v13;
  v38 = v15;
  v39 = v25;
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v11;
  v44 = v24;
  return sub_1F39C(&v35);
}

uint64_t Transport.UserProfileV2.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6B6F6F4264656573;
  }

  else
  {
    result = 0x746963696C707865;
  }

  *v0;
  return result;
}

uint64_t sub_C190(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B6F6F4264656573;
  }

  else
  {
    v4 = 0x746963696C707865;
  }

  if (v3)
  {
    v5 = 0xEF6465776F6C6C41;
  }

  else
  {
    v5 = 0xE900000000000073;
  }

  if (*a2)
  {
    v6 = 0x6B6F6F4264656573;
  }

  else
  {
    v6 = 0x746963696C707865;
  }

  if (*a2)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0xEF6465776F6C6C41;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_C248()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_C2DC()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_C35C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_C3F8(uint64_t *a1@<X8>)
{
  v2 = 0x746963696C707865;
  if (*v1)
  {
    v2 = 0x6B6F6F4264656573;
  }

  v3 = 0xEF6465776F6C6C41;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_C454(uint64_t a1)
{
  v2 = sub_1F3CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C490(uint64_t a1)
{
  v2 = sub_1F3CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Transport.UserProfileV2.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_6C14(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t Transport.UserProfileV2.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_228728, &qword_1B6608);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F3CC();
  sub_1B5884();
  v14 = 0;
  sub_1B5504();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_2B0C(&qword_228738, &qword_1B6610);
    sub_1F420();
    sub_1B5544();
  }

  return (*(v5 + 8))(v8, v4);
}

void Transport.UserProfileV2.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_1B5814(*v1);

  sub_1B7C8(a1, v3);
}

Swift::Int Transport.UserProfileV2.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B57F4();
  sub_1B5814(v1);
  sub_1B7C8(v4, v2);
  return sub_1B5844();
}

uint64_t Transport.UserProfileV2.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_228750, &qword_1B6618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F3CC();
  sub_1B5864();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1B53C4();
    sub_2B0C(&qword_228738, &qword_1B6610);
    v15 = 1;
    sub_1F4F8();
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    v13 = v14[1];
    *a2 = v11 & 1;
    *(a2 + 8) = v13;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_C948()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B57F4();
  sub_1B5814(v1);
  sub_1B7C8(v4, v2);
  return sub_1B5844();
}

uint64_t Transport.BookEmbeddings.init(bookId:embeddings:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a3;
  return result;
}

uint64_t Transport.BookEmbeddings.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6E69646465626D65;
  }

  else
  {
    result = 0x64496B6F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_CA0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E69646465626D65;
  }

  else
  {
    v4 = 0x64496B6F6F62;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA00000000007367;
  }

  if (*a2)
  {
    v6 = 0x6E69646465626D65;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007367;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_CAB4()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_CB38()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_CBA8()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_CC34(uint64_t *a1@<X8>)
{
  v2 = 0x64496B6F6F62;
  if (*v1)
  {
    v2 = 0x6E69646465626D65;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007367;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_CC80(uint64_t a1)
{
  v2 = sub_1F5D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CCBC(uint64_t a1)
{
  v2 = sub_1F5D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.BookEmbeddings.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_228768, &qword_1B6620);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13 = v1[2];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F5D0();
  sub_1B5884();
  v17 = 0;
  sub_1B54D4();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    sub_2B0C(&qword_228778, &qword_1B6628);
    sub_1F624();
    sub_1B54B4();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t Transport.BookEmbeddings.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_228788, &qword_1B6630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F5D0();
  sub_1B5864();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1B5394();
    v13 = v12;
    v14 = v11;
    sub_2B0C(&qword_228778, &qword_1B6628);
    v18 = 1;
    sub_1F6A0();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v16 = v17[1];
    *a2 = v14;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v16;
  }

  sub_2BF8(a1);
}

uint64_t Transport.InferredFromInfo.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6C6F646F6874656DLL;
  }

  else
  {
    result = 0x64496B6F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_D1C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C6F646F6874656DLL;
  }

  else
  {
    v4 = 0x64496B6F6F62;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xED0000736569676FLL;
  }

  if (*a2)
  {
    v6 = 0x6C6F646F6874656DLL;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v7 = 0xED0000736569676FLL;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_D270()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_D2FC()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_D374()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_D408(uint64_t *a1@<X8>)
{
  v2 = 0x64496B6F6F62;
  if (*v1)
  {
    v2 = 0x6C6F646F6874656DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED0000736569676FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_D45C(uint64_t a1)
{
  v2 = sub_1F71C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D498(uint64_t a1)
{
  v2 = sub_1F71C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.InferredFromInfo.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_228798, &qword_1B6638);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13 = v1[2];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F71C();
  sub_1B5884();
  v17 = 0;
  sub_1B54D4();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    sub_2B0C(&qword_2287A8, &qword_1B6640);
    sub_1F770();
    sub_1B54B4();
  }

  return (*(v14 + 8))(v7, v4);
}

void sub_D69C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = v2;
  v5 = *(v3 + 16);
  if (*(v3 + 8) != 1)
  {
    v6 = *v3;
    sub_1B5814(1u);
    sub_1B5834(v6);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1B5814(0);
    return;
  }

  sub_1B5814(0);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1B5814(1u);

  a2(a1, v5);
}

Swift::Int sub_D764(void (*a1)(_BYTE *, uint64_t))
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1B57F4();
  if (v4 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v3);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    return sub_1B5844();
  }

  sub_1B5814(0);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  a1(v7, v5);
  return sub_1B5844();
}

uint64_t Transport.InferredFromInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_2287C0, &qword_1B6648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F71C();
  sub_1B5864();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1B5394();
    v13 = v12;
    v14 = v11;
    sub_2B0C(&qword_2287A8, &qword_1B6640);
    v18 = 1;
    sub_1F848();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v16 = v17[1];
    *a2 = v14;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v16;
  }

  sub_2BF8(a1);
}

void sub_DA60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v7 = *(v5 + 16);
  if (*(v5 + 8) != 1)
  {
    v8 = *v5;
    sub_1B5814(1u);
    sub_1B5834(v8);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1B5814(0);
    return;
  }

  sub_1B5814(0);
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1B5814(1u);

  a4(a1, v7);
}

Swift::Int sub_DB28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  sub_1B57F4();
  if (v7 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v6);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    return sub_1B5844();
  }

  sub_1B5814(0);
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  a4(v10, v8);
  return sub_1B5844();
}

uint64_t Transport.BookAuthors.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x73726F68747561;
  }

  else
  {
    result = 0x64496B6F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_DC28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73726F68747561;
  }

  else
  {
    v4 = 0x64496B6F6F62;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x73726F68747561;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_DCCC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_DD4C()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_DDB8()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_DE40(uint64_t *a1@<X8>)
{
  v2 = 0x64496B6F6F62;
  if (*v1)
  {
    v2 = 0x73726F68747561;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_DE88(uint64_t a1)
{
  v2 = sub_1F920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DEC4(uint64_t a1)
{
  v2 = sub_1F920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.BookGenres.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x7365726E6567;
  }

  else
  {
    return 0x64496B6F6F62;
  }
}

uint64_t sub_E004(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7365726E6567;
  }

  else
  {
    v2 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v3 = 0x7365726E6567;
  }

  else
  {
    v3 = 0x64496B6F6F62;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B5604();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_E084()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_E0F4()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_E148()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_E1C0(uint64_t *a1@<X8>)
{
  v2 = 0x64496B6F6F62;
  if (*v1)
  {
    v2 = 0x7365726E6567;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_E1FC(uint64_t a1)
{
  v2 = sub_1F974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E238(uint64_t a1)
{
  v2 = sub_1F974();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Book.Metadata.GenreTreeNode.== infix(_:_:)(uint64_t result, void *a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 8);
  v3 = a2[1];
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_E330(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v16 = a4;
  v6 = sub_2B0C(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = *v4;
  v15 = v4[1];
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  v16();
  sub_1B5884();
  v20 = 0;
  v13 = v17;
  sub_1B5564();
  if (!v13)
  {
    v18 = v15;
    v19 = 1;
    sub_2B0C(&qword_2284B0, &qword_1B6538);
    sub_1CBA0();
    sub_1B5544();
  }

  return (*(v7 + 8))(v10, v6);
}

void Book.Metadata.GenreTreeNode.hash(into:)()
{
  v1 = v0[1];
  sub_1B5834(*v0);
  sub_1B5804(*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_1B5834(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int Book.Metadata.GenreTreeNode.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1B5834(v1);
  sub_1B5804(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1B5834(v5);
      --v3;
    }

    while (v3);
  }

  return sub_1B5844();
}

uint64_t sub_E5EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v20 = a5;
  v8 = sub_2B0C(a2, a3);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  a4();
  sub_1B5864();
  if (!v5)
  {
    v14 = v19;
    v13 = v20;
    v23 = 0;
    v15 = sub_1B5424();
    sub_2B0C(&qword_2284B0, &qword_1B6538);
    v22 = 1;
    sub_1CC64();
    sub_1B5404();
    (*(v14 + 8))(v11, v8);
    v16 = v21;
    *v13 = v15;
    v13[1] = v16;
  }

  return sub_2BF8(a1);
}

uint64_t sub_E7F4(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_80F8(a1[1], a2[1]) & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_E840()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1B5834(v1);
  sub_1B5804(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1B5834(v5);
      --v3;
    }

    while (v3);
  }

  return sub_1B5844();
}

uint64_t Transport.Recommend.Input.xAppleUserExperimentIds.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Transport.Recommend.Input.xAppleUserExperimentIds.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Transport.BookIdToDeduplicationIdEntry.init(bookId:deduplicationId:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t Transport.BookIdToDeduplicationIdEntry.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x63696C7075646564;
  }

  else
  {
    result = 0x64496B6F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_E990(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x63696C7075646564;
  }

  else
  {
    v4 = 0x64496B6F6F62;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEF64496E6F697461;
  }

  if (*a2)
  {
    v6 = 0x63696C7075646564;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v7 = 0xEF64496E6F697461;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_EA40()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_EACC()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_EB44()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_EBD8(uint64_t *a1@<X8>)
{
  v2 = 0x64496B6F6F62;
  if (*v1)
  {
    v2 = 0x63696C7075646564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEF64496E6F697461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_EC2C(uint64_t a1)
{
  v2 = sub_1F9C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_EC68(uint64_t a1)
{
  v2 = sub_1F9C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.BookIdToDeduplicationIdEntry.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_228808, &qword_1B6670);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F9C8();
  sub_1B5884();
  v16 = 0;
  v12 = v14[3];
  sub_1B54D4();
  if (!v12)
  {
    v15 = 1;
    sub_1B5464();
  }

  return (*(v4 + 8))(v7, v3);
}

void Transport.BookIdToDeduplicationIdEntry.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 8) != 1)
  {
    v3 = *v0;
    sub_1B5814(1u);
    sub_1B5834(v3);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1B5814(0);
    return;
  }

  sub_1B5814(0);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1B5814(1u);

  sub_1B4884();
}

Swift::Int Transport.BookIdToDeduplicationIdEntry.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B57F4();
  if (v2 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v1);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    return sub_1B5844();
  }

  sub_1B5814(0);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B4884();
  return sub_1B5844();
}

uint64_t Transport.BookIdToDeduplicationIdEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_228818, &qword_1B6678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1F9C8();
  sub_1B5864();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_1B5394();
    v19 = v12;
    v13 = v11;
    v20 = 1;
    v15 = sub_1B5324();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
    *(a2 + 8) = v19 & 1;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
  }

  sub_2BF8(a1);
}

Swift::Int sub_F194()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B57F4();
  if (v2 != 1)
  {
    sub_1B5814(1u);
    sub_1B5834(v1);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B5814(0);
    return sub_1B5844();
  }

  sub_1B5814(0);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B4884();
  return sub_1B5844();
}

uint64_t Transport.BookIdToSeriesIdEntry.sequenceInSeries.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t Transport.BookIdToSeriesIdEntry.sequenceInSeries.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t Transport.BookIdToSeriesIdEntry.init(bookId:seriesId:seriesIsOrdered:sequenceInSeries:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 25) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7 & 1;
  return result;
}

uint64_t Transport.BookIdToSeriesIdEntry.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20F490;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 4;
  if (v6 < 4)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

unint64_t Transport.BookIdToSeriesIdEntry.CodingKeys.stringValue.getter()
{
  v1 = 0x64496B6F6F62;
  v2 = 0x7349736569726573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6449736569726573;
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

Swift::Int sub_F3B4()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_F484()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_F540()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_F618(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64496B6F6F62;
  v4 = 0xEF6465726564724FLL;
  v5 = 0x7349736569726573;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000000001D44B0;
  }

  if (*v1)
  {
    v3 = 0x6449736569726573;
    v2 = 0xE800000000000000;
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

uint64_t sub_F6A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.BookIdToSeriesIdEntry.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_F6DC(uint64_t a1)
{
  v2 = sub_1FA1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_F718(uint64_t a1)
{
  v2 = sub_1FA1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.BookIdToSeriesIdEntry.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_228820, &qword_1B6680);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v16 = v1[2];
  v18 = *(v1 + 24);
  v15 = *(v1 + 25);
  v14 = v1[4];
  v13[3] = *(v1 + 40);
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1FA1C();
  sub_1B5884();
  v22 = 0;
  v11 = v17;
  sub_1B54D4();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = 1;
  sub_1B54D4();
  v20 = 2;
  sub_1B5474();
  v19 = 3;
  sub_1B5484();
  return (*(v4 + 8))(v7, v3);
}

void Transport.BookIdToSeriesIdEntry.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    sub_1B5814(0);
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *v0;
    sub_1B5814(1u);
    sub_1B5834(v7);
    if (!v2)
    {
LABEL_3:
      sub_1B5814(1u);
      sub_1B5834(v1);
      if (v3 != 2)
      {
        goto LABEL_4;
      }

LABEL_11:
      sub_1B5814(0);
      if (!v5)
      {
        goto LABEL_5;
      }

LABEL_12:
      sub_1B5814(0);
      return;
    }
  }

  sub_1B5814(0);
  if (v3 == 2)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_1B5814(1u);
  sub_1B5814(v3 & 1);
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_1B5814(1u);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  sub_1B5834(v6);
}

Swift::Int Transport.BookIdToSeriesIdEntry.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  sub_1B57F4();
  if (v2 == 1)
  {
    sub_1B5814(0);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1B5814(0);
    if (v5 != 2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1B5814(1u);
  sub_1B5834(v1);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5834(v3);
  if (v5 != 2)
  {
LABEL_4:
    sub_1B5814(1u);
    v8 = v5 & 1;
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
LABEL_8:
  sub_1B5814(v8);
  if (v7)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    sub_1B5834(v9);
  }

  return sub_1B5844();
}

uint64_t Transport.BookIdToSeriesIdEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_228830, &qword_1B6688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1FA1C();
  sub_1B5864();
  if (!v2)
  {
    v28 = 0;
    v11 = sub_1B5394();
    v13 = v12;
    v14 = v11;
    v27 = 1;
    v15 = sub_1B5394();
    v24 = v16;
    v23 = v15;
    v26 = 2;
    HIDWORD(v22) = sub_1B5334();
    v25 = 3;
    v18 = sub_1B5344();
    v19 = v9;
    v21 = v20;
    (*(v6 + 8))(v19, v5);
    *a2 = v14;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v23;
    *(a2 + 24) = v24 & 1;
    *(a2 + 25) = BYTE4(v22);
    *(a2 + 32) = v18;
    *(a2 + 40) = v21 & 1;
  }

  return sub_2BF8(a1);
}

Swift::Int sub_FDD0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  sub_1B57F4();
  if (v2 == 1)
  {
    sub_1B5814(0);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1B5814(0);
    if (v5 != 2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1B5814(1u);
  sub_1B5834(v1);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5834(v3);
  if (v5 != 2)
  {
LABEL_4:
    sub_1B5814(1u);
    v8 = v5 & 1;
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
LABEL_8:
  sub_1B5814(v8);
  if (v7)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    sub_1B5834(v9);
  }

  return sub_1B5844();
}

uint64_t Transport.BookIdToBisacCodesEntry.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x646F436361736962;
  }

  else
  {
    result = 0x64496B6F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_FF3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646F436361736962;
  }

  else
  {
    v4 = 0x64496B6F6F62;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v6 = 0x646F436361736962;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007365;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_FFE4()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_10068()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_100D8()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_10164(uint64_t *a1@<X8>)
{
  v2 = 0x64496B6F6F62;
  if (*v1)
  {
    v2 = 0x646F436361736962;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_101B0(uint64_t a1)
{
  v2 = sub_1FA70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101EC(uint64_t a1)
{
  v2 = sub_1FA70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.BookIdToBisacCodesEntry.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_228838, &qword_1B6690);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13 = v1[2];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1FA70();
  sub_1B5884();
  v17 = 0;
  sub_1B54D4();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    sub_2B0C(&qword_228590, &qword_1B6590);
    sub_1E474();
    sub_1B54B4();
  }

  return (*(v14 + 8))(v7, v4);
}

void Transport.BookIdToBisacCodesEntry.hash(into:)()
{
  v1 = *(v0 + 16);
  if (*(v0 + 8) == 1)
  {
    sub_1B5814(0);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1B5814(0);
    return;
  }

  v6 = *v0;
  sub_1B5814(1u);
  sub_1B5834(v6);
  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_1B4884();

      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

Swift::Int Transport.BookIdToBisacCodesEntry.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B57F4();
  if (v2 == 1)
  {
    sub_1B5814(0);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1B5814(0);
    return sub_1B5844();
  }

  sub_1B5814(1u);
  sub_1B5834(v1);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1B4884();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return sub_1B5844();
}

uint64_t Transport.BookIdToBisacCodesEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_228848, &qword_1B6698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1FA70();
  sub_1B5864();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1B5394();
    v13 = v12;
    v14 = v11;
    sub_2B0C(&qword_228590, &qword_1B6590);
    v18 = 1;
    sub_1E61C();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v16 = v17[1];
    *a2 = v14;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v16;
  }

  sub_2BF8(a1);
}

Swift::Int sub_107E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B57F4();
  if (v2 == 1)
  {
    sub_1B5814(0);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1B5814(0);
    return sub_1B5844();
  }

  sub_1B5814(1u);
  sub_1B5834(v1);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1B5804(*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1B4884();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return sub_1B5844();
}

uint64_t Transport.BookIdToMediaTypeEntry.mediaType.getter()
{
  v1 = *(v0 + 16);
  sub_1E060(v1, *(v0 + 24));
  return v1;
}

uint64_t Transport.BookIdToMediaTypeEntry.mediaType.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1E070(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_10944@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X2>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_1B52E4(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t Transport.BookIdToMediaTypeEntry.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x707954616964656DLL;
  }

  else
  {
    result = 0x64496B6F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_109E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x707954616964656DLL;
  }

  else
  {
    v4 = 0x64496B6F6F62;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x707954616964656DLL;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B5604();
  }

  return v9 & 1;
}

Swift::Int sub_10A88()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_10B0C()
{
  *v0;
  sub_1B4884();
}

Swift::Int sub_10B7C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_10C08@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1B52E4(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_10C64(uint64_t *a1@<X8>)
{
  v2 = 0x64496B6F6F62;
  if (*v1)
  {
    v2 = 0x707954616964656DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10CB0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X4>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_1B52E4(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_10D10(uint64_t a1)
{
  v2 = sub_1FAC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10D4C(uint64_t a1)
{
  v2 = sub_1FAC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.BookIdToMediaTypeEntry.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_228850, &qword_1B66A0);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v14 = v1[3];
  v15 = v10;
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1FAC4();
  sub_1B5884();
  LOBYTE(v17) = 0;
  sub_1B54D4();
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = 1;
    sub_1FB18();
    sub_1B54B4();
  }

  return (*(v16 + 8))(v7, v4);
}

void Transport.BookIdToMediaTypeEntry.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 8) != 1)
  {
    v3 = *v0;
    sub_1B5814(1u);
    sub_1B5834(v3);
    if (v2 != 2)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1B5814(0);
    return;
  }

  sub_1B5814(0);
  if (v2 == 2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1B5814(1u);
  sub_1E060(v1, v2);
  sub_1B4884();
}

Swift::Int Transport.BookIdToMediaTypeEntry.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B57F4();
  if (v2 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v1);
  }

  if (v4 == 2)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1E060(v3, v4);
    sub_1B4884();
  }

  return sub_1B5844();
}

uint64_t Transport.BookIdToMediaTypeEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_228868, &qword_1B66A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1FAC4();
  sub_1B5864();
  if (v2)
  {
    sub_2BF8(a1);
    v18 = 0;
    v19 = 2;
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v11 = sub_1B5394();
    v13 = v12;
    v14 = v11;
    v21 = 1;
    sub_1FB6C();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v16 = v20[0];
    v17 = v20[1];
    *a2 = v14;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
    sub_1E060(v16, v17);
    sub_2BF8(a1);
    v18 = v16;
    v19 = v17;
  }

  return sub_1E070(v18, v19);
}

Swift::Int sub_11358()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B57F4();
  if (v2 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1B5834(v1);
  }

  if (v4 == 2)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    sub_1E060(v3, v4);
    sub_1B4884();
  }

  return sub_1B5844();
}

uint64_t sub_11474(uint64_t a1, unint64_t a2)
{
  v2 = 0xD000000000000012;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x4148435255504F43;
  }

  sub_1E04C(a1, a2);
  return v3;
}

uint64_t sub_114F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1FBC0(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_11520@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = 0xEA00000000004553;
  v5 = 0x4148435255504F43;
  v6 = 0x80000000001D54F0;
  v7 = 0xD000000000000012;
  if (v3 != 1)
  {
    v7 = *v1;
    v6 = v1[1];
  }

  if (v3)
  {
    v5 = v7;
    v4 = v6;
  }

  *a1 = v5;
  a1[1] = v4;
  return sub_1E04C(v2, v3);
}

uint64_t sub_11624(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xD000000000000012;
  v7 = 0x80000000001D54F0;
  if (v3 == 1)
  {
    v8 = 0x80000000001D54F0;
  }

  else
  {
    v6 = *a1;
    v8 = a1[1];
  }

  if (v3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x4148435255504F43;
  }

  if (v3)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000004553;
  }

  v11 = 0xD000000000000012;
  if (v5 != 1)
  {
    v11 = *a2;
    v7 = a2[1];
  }

  if (v5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x4148435255504F43;
  }

  if (v5)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0xEA00000000004553;
  }

  if (v9 == v12 && v10 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1B5604();
  }

  sub_1E04C(v2, v3);
  sub_1E04C(v4, v5);

  return v14 & 1;
}

Swift::Int sub_11720()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1E04C(v1, v2);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_117D0()
{
  v1 = v0[1];
  if (v1 != 1)
  {
    v2 = *v0;
    v3 = v0[1];
  }

  sub_1E04C(*v0, v1);
  sub_1B4884();
}

Swift::Int sub_1186C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B57F4();
  sub_1E04C(v1, v2);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_11918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1FBC0(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_11950()
{
  v1 = v0[1];
  v2 = 0xD000000000000012;
  if (v1 != 1)
  {
    v2 = *v0;
    v3 = v0[1];
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x4148435255504F43;
  }

  sub_1E04C(*v0, v1);
  return v4;
}

uint64_t sub_119D0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = 0xE500000000000000;
  v6 = 0x4B4F4F4245;
  v7 = 0xE90000000000004BLL;
  v8 = 0x4F4F424F49445541;
  if (v4 != 1)
  {
    v8 = *v2;
    v7 = v2[1];
  }

  if (v4)
  {
    v6 = v8;
    v5 = v7;
  }

  *a2 = v6;
  a2[1] = v5;
  return a1();
}

uint64_t sub_11AD0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = 0x4F4F424F49445541;
  v11 = 0xE90000000000004BLL;
  if (v7 != 1)
  {
    v10 = *a1;
    v11 = a1[1];
  }

  if (v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x4B4F4F4245;
  }

  if (v7)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = 0x4F4F424F49445541;
  v15 = 0xE90000000000004BLL;
  if (v9 != 1)
  {
    v14 = *a2;
    v15 = a2[1];
  }

  if (v9)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0x4B4F4F4245;
  }

  if (v9)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  if (v12 == v16 && v13 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1B5604();
  }

  a5(v6, v7);
  a5(v8, v9);

  return v18 & 1;
}

Swift::Int sub_11BE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *v3;
  v5 = v3[1];
  sub_1B57F4();
  a3(v6, v5);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_11C98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = *v4;
  if (v4[1] != 1)
  {
    v6 = *v4;
    v7 = v4[1];
  }

  a4();
  sub_1B4884();
}

Swift::Int sub_11D30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *v4;
  v6 = v4[1];
  sub_1B57F4();
  a4(v7, v6);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_11DF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *v3;
  v5 = v3[1];
  v6 = 0x4F4F424F49445541;
  if (v5 != 1)
  {
    v6 = *v3;
    v7 = v3[1];
  }

  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x4B4F4F4245;
  }

  a3();
  return v8;
}

uint64_t sub_11E7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = 1145651536;
  v4 = 5852737;
  if (a2 != 2)
  {
    v4 = a1;
  }

  if (a2 != 1)
  {
    v3 = v4;
  }

  if (a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1162170950;
  }

  a3();
  return v5;
}

uint64_t sub_11EFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1FD5C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_11F2C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = 0xE400000000000000;
  v6 = 1162170950;
  v7 = 0xE400000000000000;
  v8 = 1145651536;
  v9 = 0xE300000000000000;
  v10 = 5852737;
  if (v4 != 2)
  {
    v10 = *v2;
    v9 = v2[1];
  }

  if (v4 != 1)
  {
    v8 = v10;
    v7 = v9;
  }

  if (v4)
  {
    v6 = v8;
    v5 = v7;
  }

  *a2 = v6;
  a2[1] = v5;
  return a1();
}

uint64_t sub_12034(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v10 = 0xE400000000000000;
  v11 = 1145651536;
  v12 = 0xE300000000000000;
  v13 = 5852737;
  if (v7 != 2)
  {
    v13 = *a1;
    v12 = a1[1];
  }

  if (v7 != 1)
  {
    v11 = v13;
    v10 = v12;
  }

  if (v7)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1162170950;
  }

  if (v7)
  {
    v15 = v10;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  v16 = 0xE400000000000000;
  v17 = 1145651536;
  v18 = 0xE300000000000000;
  v19 = 5852737;
  if (v9 != 2)
  {
    v19 = *a2;
    v18 = a2[1];
  }

  if (v9 != 1)
  {
    v17 = v19;
    v16 = v18;
  }

  if (v9)
  {
    v20 = v17;
  }

  else
  {
    v20 = 1162170950;
  }

  if (v9)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  if (v14 == v20 && v15 == v21)
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1B5604();
  }

  a5(v6, v7);
  a5(v8, v9);

  return v22 & 1;
}

Swift::Int sub_12158(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *v3;
  v5 = v3[1];
  sub_1B57F4();
  a3(v6, v5);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_12218(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = *v4;
  v6 = v4[1];
  if (v6 != 2)
  {
    v7 = *v4;
    v8 = v4[1];
  }

  a4();
  sub_1B4884();
}

Swift::Int sub_122B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *v4;
  v6 = v4[1];
  sub_1B57F4();
  a4(v7, v6);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_12374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1FD5C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_123AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *v3;
  v5 = v3[1];
  v6 = 1145651536;
  v7 = 5852737;
  if (v5 != 2)
  {
    v7 = *v3;
    v8 = v3[1];
  }

  if (v5 != 1)
  {
    v6 = v7;
  }

  if (v5)
  {
    v9 = v6;
  }

  else
  {
    v9 = 1162170950;
  }

  a3();
  return v9;
}

uint64_t Transport.StoreAssetRequestDetails.saleType.getter()
{
  v1 = *(v0 + 16);
  sub_1FE84(v1, *(v0 + 24));
  return v1;
}

uint64_t Transport.StoreAssetRequestDetails.saleType.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1FE94(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Transport.StoreAssetRequestDetails.init(mediaType:profileGenreDenylist:saleType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Transport.StoreAssetRequestDetails.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_20F7F0;
  v9._object = a2;
  v6 = sub_1B52E4(v5, v9);

  v8 = 3;
  if (v6 < 3)
  {
    v8 = v6;
  }

  *a3 = v8;
  return result;
}

uint64_t Transport.StoreAssetRequestDetails.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x65707954656C6173;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x707954616964656DLL;
  }
}

uint64_t sub_1255C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000014;
  v4 = 0x80000000001D42B0;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000000001D42B0;
  }

  else
  {
    v3 = 0x65707954656C6173;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x707954616964656DLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  v8 = 0xD000000000000014;
  if (*a2 != 1)
  {
    v8 = 0x65707954656C6173;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x707954616964656DLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_12658()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_12704()
{
  *v0;
  *v0;
  sub_1B4884();
}

Swift::Int sub_1279C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_12850(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x80000000001D42B0;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x65707954656C6173;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x707954616964656DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_128B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = Transport.StoreAssetRequestDetails.CodingKeys.init(stringValue:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_128F0(uint64_t a1)
{
  v2 = sub_1FEB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1292C(uint64_t a1)
{
  v2 = sub_1FEB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Transport.StoreAssetRequestDetails.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_228878, &qword_1B66B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v17 = v11;
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1FEB8();

  sub_1B5884();
  v20 = v10;
  v22 = 0;
  sub_2B0C(&qword_228888, &qword_1B66B8);
  sub_1FF0C();
  sub_1B54B4();

  if (!v2)
  {
    v14 = v17;
    v13 = v18;
    v20 = v19;
    v22 = 1;
    sub_2B0C(&qword_2284B0, &qword_1B6538);
    sub_1CBA0();
    sub_1B54B4();
    v20 = v13;
    v21 = v14;
    v22 = 2;
    sub_1FF90();
    sub_1B54B4();
  }

  return (*(v5 + 8))(v8, v4);
}