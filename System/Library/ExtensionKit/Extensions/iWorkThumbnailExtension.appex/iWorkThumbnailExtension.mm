uint64_t sub_100000F90(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_100001DF0() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_100001E00();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_100001EF0();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_100001E30();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v2[13] = v13;
  v14 = async function pointer to ThumbnailRequest.fileURL.getter[1];
  v15 = swift_task_alloc();
  v2[14] = v15;
  *v15 = v2;
  v15[1] = sub_100001174;

  return ThumbnailRequest.fileURL.getter(v13);
}

uint64_t sub_100001174()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100001510;
  }

  else
  {
    v3 = sub_100001288;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100001288@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[13];
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[8];
  v6 = v1[3];
  sub_100001E20(a1);
  v8 = v7;
  sub_100001E70();
  isa = sub_100001EC0().super.isa;
  v10 = *(v4 + 8);
  v10(v3, v5);
  v11 = QLPreviewCopyEmbeddedIWorkThumbnailDataInFile();

  if (v11)
  {
    v13 = v1[12];
    v12 = v1[13];
    v14 = v1[10];
    v33 = v1[8];
    v34 = v1[11];
    v35 = v1[7];
    v36 = v1[4];
    v15 = v1[2];
    v16 = sub_100001E40();
    v17 = v10;
    v19 = v18;

    sub_100001EE0();
    sub_100001E60();
    sub_100001CB4(v16, v19);
    v17(v14, v33);
    (*(v13 + 8))(v12, v34);
  }

  else
  {
    v22 = v1[12];
    v21 = v1[13];
    v23 = v1[11];
    v25 = v1[6];
    v24 = v1[7];
    v26 = v1[4];
    v27 = v1[5];
    sub_100001DE0();
    sub_100001B5C(&_swiftEmptyArrayStorage);
    sub_100001C6C(&qword_100008090, &type metadata accessor for CocoaError);
    sub_100001E10();
    sub_100001DD0();
    (*(v25 + 8))(v24, v27);
    swift_willThrow();
    (*(v22 + 8))(v21, v23);
    v28 = v1[13];
    v29 = v1[10];
    v30 = v1[7];
    v31 = v1[4];
  }

  v20 = v1[1];

  return v20();
}

uint64_t sub_100001510()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000015A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001EA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100001608(uint64_t a1)
{
  v2 = sub_100001C6C(&qword_100008088, type metadata accessor for iWorkThumbnailExtension);

  return ThumbnailExtension.configuration.getter(a1, v2);
}

uint64_t sub_100001684()
{
  v0 = *(*(sub_100001EF0() - 8) + 64);
  __chkstk_darwin();
  sub_100001ED0();
  return sub_100001E90();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for iWorkThumbnailExtension();
  sub_100001C6C(&qword_100008000, type metadata accessor for iWorkThumbnailExtension);
  sub_100001E50();
  return 0;
}

uint64_t type metadata accessor for iWorkThumbnailExtension()
{
  result = qword_1000080B0;
  if (!qword_1000080B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001808(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100001888(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001EA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000018F8()
{
  result = sub_100001EA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100001A2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100001F30();
  sub_100001F00();
  v6 = sub_100001F40();

  return sub_100001AA4(a1, a2, v6);
}

unint64_t sub_100001AA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100001F20())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100001B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001D08(&qword_100008098, &qword_100002180);
    v3 = sub_100001F10();
    v4 = a1 + 32;

    while (1)
    {
      sub_100001D50(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100001A2C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100001DC0(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100001C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001CB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100001D08(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D08(&unk_1000080A0, &qword_100002188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100001DC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}