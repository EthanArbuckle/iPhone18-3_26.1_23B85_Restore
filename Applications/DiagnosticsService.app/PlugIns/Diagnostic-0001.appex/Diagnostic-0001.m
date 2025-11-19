id sub_100000F34()
{
  v1 = v0;
  v2 = [v0 result];
  sub_1000011AC(&qword_100008168, &qword_1000017D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000017A0;
  sub_100001640();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0x21666F6F4DLL;
  *(inited + 80) = 0xE500000000000000;
  sub_100001300(inited);
  swift_setDeallocating();
  sub_10000141C(inited + 32);
  isa = sub_100001600().super.isa;

  [v2 setData:isa];

  v5 = [v1 result];
  sub_100001484();
  v6 = sub_100001610(0).super.super.isa;
  [v5 setStatusCode:v6];

  return [v1 setFinished:1];
}

id sub_100001154()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarusController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000011AC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000011F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100001620(*(v2 + 40));

  return sub_100001238(a1, v4);
}

unint64_t sub_100001238(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100001550(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100001630();
      sub_1000015AC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100001300(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000011AC(&qword_100008180, &qword_1000017E8);
    v3 = sub_100001650();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000014D0(v4, v13);
      result = sub_1000011F4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100001540(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000141C(uint64_t a1)
{
  v2 = sub_1000011AC(&qword_100008170, &qword_1000017E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100001484()
{
  result = qword_100008178;
  if (!qword_100008178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008178);
  }

  return result;
}

uint64_t sub_1000014D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000011AC(&qword_100008170, &qword_1000017E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100001540(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}