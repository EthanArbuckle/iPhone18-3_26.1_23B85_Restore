uint64_t sub_100001100(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_100002BE8();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  v5 = async function pointer to ThumbnailRequest.data.getter[1];
  v6 = swift_task_alloc();
  v1[25] = v6;
  *v6 = v1;
  v6[1] = sub_1000011F4;

  return ThumbnailRequest.data.getter();
}

uint64_t sub_1000011F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 200);
  v6 = *v3;
  v4[26] = a1;
  v4[27] = a2;

  if (v2)
  {
    v7 = v4[24];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100001344, 0, 0);
  }
}

uint64_t sub_100001344()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = objc_opt_self();
  isa = sub_100002B48().super.isa;
  v0[28] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100001490;
  v5 = swift_continuation_init();
  v0[17] = sub_100001E50(&qword_1000080A8, &qword_100002FF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000189C;
  v0[13] = &unk_100004468;
  v0[14] = v5;
  [v3 contactsWithData:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100001490()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_10000180C;
  }

  else
  {
    v3 = sub_1000015A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1000015A0()
{
  v1 = *(v0 + 144);

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (sub_100002C58() != 1 || !sub_100002C58())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_100002C48();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;

  v4 = [v3 imageData];
  if (!v4)
  {
    v4 = [v3 thumbnailImageData];
    if (!v4)
    {

LABEL_13:
      v16 = *(v0 + 208);
      v15 = *(v0 + 216);
      type metadata accessor for QLThumbnailError(0);
      *(v0 + 160) = 0;
      sub_100002574(&_swiftEmptyArrayStorage);
      sub_100001E08(&qword_1000080B0, type metadata accessor for QLThumbnailError);
      sub_100002B38();
      v17 = *(v0 + 152);
      swift_willThrow();
      sub_100001F58(v16, v15);
      v18 = *(v0 + 192);

      v14 = *(v0 + 8);
      goto LABEL_14;
    }
  }

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 168);
  v19 = *(v0 + 176);
  v10 = v4;
  v11 = sub_100002B58();
  v13 = v12;

  sub_100002BD8();
  sub_100002B78();

  sub_100001F58(v6, v5);
  sub_100001F58(v11, v13);
  (*(v8 + 8))(v7, v19);

  v14 = *(v0 + 8);
LABEL_14:

  v14();
}

uint64_t sub_10000180C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  swift_willThrow();
  sub_100001F58(v3, v4);

  v5 = v0[29];
  v6 = v0[24];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000189C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100002704((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001E50(&qword_1000080D0, &qword_100003010);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100002748();
    **(*(v4 + 64) + 40) = sub_100002C28();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10000197C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002BA8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000019E4(uint64_t a1)
{
  v2 = sub_100001E08(&qword_1000080A0, type metadata accessor for ContactThumbnailExtension);

  return ThumbnailExtension.configuration.getter(a1, v2);
}

uint64_t sub_100001A60()
{
  v0 = *(*(sub_100002BE8() - 8) + 64);
  __chkstk_darwin();
  sub_100002BC8();
  return sub_100002B98();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ContactThumbnailExtension();
  sub_100001E08(&qword_100008018, type metadata accessor for ContactThumbnailExtension);
  sub_100002B68();
  return 0;
}

uint64_t type metadata accessor for ContactThumbnailExtension()
{
  result = qword_100008130;
  if (!qword_100008130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100001C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100001CD4()
{
  result = sub_100002BA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100001E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001E50(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001EA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001F0C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100001F58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100001FC0(uint64_t a1)
{
  v2 = sub_100001E08(&qword_1000080F0, type metadata accessor for QLThumbnailError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000202C(uint64_t a1)
{
  v2 = sub_100001E08(&qword_1000080F0, type metadata accessor for QLThumbnailError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000209C(uint64_t a1)
{
  v2 = sub_100001E08(&qword_1000080B0, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002128(uint64_t a1)
{
  v2 = sub_100001E08(&qword_1000080B0, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002194(uint64_t a1)
{
  v2 = sub_100001E08(&qword_1000080B0, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002200(void *a1, uint64_t a2)
{
  v4 = sub_100001E08(&qword_1000080B0, type metadata accessor for QLThumbnailError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000022B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001E08(&qword_1000080B0, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002330()
{
  v2 = *v0;
  sub_100002CB8();
  sub_100002BF8();
  return sub_100002CC8();
}

void *sub_100002390@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000023AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001E08(&qword_1000080B0, type metadata accessor for QLThumbnailError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_100002444(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100002CB8();
  sub_100002C18();
  v6 = sub_100002CC8();

  return sub_1000024BC(a1, a2, v6);
}

unint64_t sub_1000024BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100002C78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100002574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001E50(&qword_1000080B8, &qword_100003000);
    v3 = sub_100002C68();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002684(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100002444(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000026F4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100002684(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001E50(&qword_1000080C0, &qword_100003008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1000026F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100002704(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002748()
{
  result = qword_1000080C8;
  if (!qword_1000080C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000080C8);
  }

  return result;
}

void sub_100002958(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1000029F0()
{
  result = qword_100008118;
  if (!qword_100008118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008118);
  }

  return result;
}