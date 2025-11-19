id sub_1000011E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v12 = v3;
  ObjectType = swift_getObjectType();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    a2[3] = ObjectType;
    *a2 = v12;

    return v12;
  }

  else
  {
    sub_100001FB4(25);

    v8 = [a1 description];
    v9 = sub_100001F64();
    v11 = v10;

    v14._countAndFlagsBits = v9;
    v14._object = v11;
    sub_100001F84(v14);

    result = sub_100001FD4();
    __break(1u);
  }

  return result;
}

id sub_1000013A8()
{
  v1 = [v0 mediaItems];
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = v1;
  v3 = sub_100001E78();
  v4 = sub_100001FA4();

  if (v4 >> 62)
  {
    if (sub_100001FE4())
    {
      goto LABEL_4;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_100001FC4();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_31;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 identifier];
  if (v7)
  {
    v8 = v7;
    sub_100001F64();

    LOBYTE(v8) = sub_100001820();

    if (v8)
    {
      result = [v0 mediaItems];
      if (!result)
      {
        return result;
      }

      v10 = result;
      v3 = sub_100001FA4();

      if (!(v3 >> 62))
      {
        result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_12:
          if ((v3 & 0xC000000000000001) != 0)
          {
            v11 = sub_100001FC4();
          }

          else
          {
            if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v11 = *(v3 + 32);
          }

          v12 = v11;

          v13 = [v12 title];
LABEL_24:
          v17 = v13;

          if (v17)
          {
            v18 = sub_100001F64();

            return v18;
          }

          return 0;
        }

        goto LABEL_32;
      }

LABEL_31:
      result = sub_100001FE4();
      if (result)
      {
        goto LABEL_12;
      }

LABEL_32:

      return 0;
    }
  }

  else
  {
  }

LABEL_19:
  result = [v0 mediaContainer];
  if (!result)
  {
    return result;
  }

  v14 = result;
  v15 = [result identifier];
  if (v15)
  {
    v16 = v15;
    sub_100001F64();

    LOBYTE(v16) = sub_100001820();

    if (v16)
    {
      result = [v0 mediaContainer];
      if (!result)
      {
        return result;
      }

      v12 = result;
      v13 = [result title];
      goto LABEL_24;
    }
  }

  else
  {
  }

  return 0;
}

id sub_1000017C4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001820()
{

  v0 = sub_100001F94();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_100001F94();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_100002014();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_100001F94();
      v3 = v5;
    }

    while (v5);
  }

  sub_100001F94();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

unint64_t sub_10000197C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100002024();
  sub_100001F74();
  v6 = sub_100002034();

  return sub_1000019F4(a1, a2, v6);
}

unint64_t sub_1000019F4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100002014())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100001AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001DB0(&qword_100008418, qword_100002428);
    v3 = sub_100001FF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100001DF8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000197C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100001E68(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_100001BBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000013A8();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:1 userActivity:0];
    sub_100001DB0(&qword_100008408, &qword_100002418);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000023E0;
    *(inited + 32) = sub_100001F64();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v9;
    *(inited + 48) = v5;
    *(inited + 56) = v6;
    *(inited + 80) = sub_100001F64();
    *(inited + 88) = v10;
    *(inited + 120) = &type metadata for UInt;
    *(inited + 96) = 2;
    sub_100001AAC(inited);
    swift_setDeallocating();
    sub_100001DB0(&qword_100008410, &qword_100002420);
    swift_arrayDestroy();
    isa = sub_100001F54().super.isa;

    [v7 setNowPlayingInfo:isa];

    (*(a2 + 16))(a2, v7);
  }

  else
  {
    v12 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:6 userActivity:0];
    (*(a2 + 16))(a2, v12);
  }
}

uint64_t sub_100001DB0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001DB0(&qword_100008410, &qword_100002420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100001E68(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100001E78()
{
  result = qword_100008420;
  if (!qword_100008420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008420);
  }

  return result;
}

void *sub_100001EC4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001F08(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}