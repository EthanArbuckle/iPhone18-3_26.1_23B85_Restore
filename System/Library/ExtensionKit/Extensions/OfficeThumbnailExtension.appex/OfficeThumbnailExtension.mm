uint64_t sub_100001D60()
{
  v0 = *(*(sub_100005E58() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(sub_100005DA8() - 8) + 64);
  __chkstk_darwin();
  v2 = sub_100005E68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000535C(0, &qword_10000C3F0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  sub_100005D98();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_100003C50(&qword_10000C3F8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000050E8(&qword_10000C400, &qword_1000068F8);
  sub_1000053A4();
  sub_100005EA8();
  result = sub_100005E88();
  qword_10000CEF0 = result;
  return result;
}

uint64_t sub_100001F98(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_100005E08();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = sub_100005C78();
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v9 = sub_100005B68();
  v2[25] = v9;
  v10 = *(v9 - 8);
  v2[26] = v10;
  v11 = *(v10 + 64) + 15;
  v2[27] = swift_task_alloc();
  v12 = sub_100005AF8();
  v2[28] = v12;
  v13 = *(v12 - 8);
  v2[29] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v2[30] = v15;
  v16 = async function pointer to ThumbnailRequest.fileURL.getter[1];
  v17 = swift_task_alloc();
  v2[31] = v17;
  *v17 = v2;
  v17[1] = sub_1000021D0;

  return ThumbnailRequest.fileURL.getter(v15);
}

uint64_t sub_1000021D0()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_100002AD8;
  }

  else
  {
    v3 = sub_1000022E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000022E4()
{
  v84 = v0;
  if (qword_10000C4C0 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[15];
  v4 = qword_10000CEF0;
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  sub_10000535C(0, &qword_10000C3A0, &off_1000084E8);
  v6 = v4;
  sub_100005E78();

  if (v1)
  {
    goto LABEL_4;
  }

  v12 = v0[10];
  v13 = [v12 embeddedThumbnail];
  if (v13)
  {
    v14 = v13;
    v15 = sub_100005B08();
    v17 = v16;

    v18 = [v12 embeddedThumbnailType];
    if (v18)
    {
      v19 = v0[27];
      v21 = v0[23];
      v20 = v0[24];
      v22 = v0[19];
      v23 = v0[20];
      v24 = v18;
      sub_100005C38();

      (*(v23 + 32))(v20, v21, v22);
      sub_100005B58();
      sub_100005094(v15, v17);
      (*(v23 + 8))(v20, v22);
LABEL_24:
      v67 = v0[26];
      v66 = v0[27];
      v68 = v0[25];
      v69 = v0[14];
      [v12 multipage];
      sub_100005B38();

      (*(v67 + 32))(v69, v66, v68);
      v70 = v0[27];
      v72 = v0[23];
      v71 = v0[24];
      v74 = v0[21];
      v73 = v0[22];
      v75 = v0[18];
      (*(v0[29] + 8))(v0[30], v0[28]);

      v32 = v0[1];
      goto LABEL_25;
    }

    sub_100005094(v15, v17);
  }

  v34 = v0[17];
  v33 = v0[18];
  v35 = v0[16];
  v36 = [v12 htmlContent];
  sub_100005DD8();

  sub_100005DF8();
  v37 = sub_100005DE8();
  v39 = v38;

  (*(v34 + 8))(v33, v35);
  if (v39 >> 60 != 15)
  {
    v80 = v0[27];
    v42 = v0[21];
    v41 = v0[22];
    v44 = v0[19];
    v43 = v0[20];
    v78 = v0[15];
    sub_100005C48();
    v45 = v37;
    v46 = [v12 attachments];
    sub_10000535C(0, &qword_10000C3B8, QLThumbnailReplyAttachment_ptr);
    sub_100005DB8();

    v79 = v45;
    v81 = v39;
    sub_100005B58();

    v47 = *(v43 + 8);
    v47(v41, v44);
    [v12 size];
    v49 = v48;
    v51 = v50;
    sub_100005B78();
    sub_100005C08();
    LOBYTE(v45) = sub_100005C68();
    v47(v42, v44);
    v47(v41, v44);
    if (v45)
    {
      v52 = v49 * 1.33333333;
      if (v49 * 1.33333333 >= v51)
      {
        v52 = v51;
      }

      if (v51 * 1.33333333 < v49)
      {
        v49 = v51 * 1.33333333;
      }

      else
      {
        v51 = v52;
      }
    }

    v53 = v0[27];
    v55 = v0[21];
    v54 = v0[22];
    v76 = v0[15];
    v77 = v0[19];
    v56 = sub_100005DD8();
    v58 = v57;
    v86.width = v49;
    v86.height = v51;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v86);
    v83 = sub_10000535C(0, &qword_10000C3C0, NSDictionary_ptr);
    *v82 = DictionaryRepresentation;
    v60 = sub_100005B48();
    sub_1000030BC(v82, v56, v58);
    v60(v0 + 2, 0);
    sub_100005B78();
    sub_100005C18();
    LOBYTE(v53) = sub_100005C68();
    v47(v55, v77);
    v47(v54, v77);
    if (v53)
    {
      v61 = v0[27];
      v62 = sub_100005DD8();
      v64 = v63;
      v83 = &type metadata for String;
      strcpy(v82, "/html/body/div");
      v82[15] = -18;
      v65 = sub_100005B48();
      sub_1000030BC(v82, v62, v64);
      v65(v0 + 6, 0);
    }

    sub_100005080(v79, v81);
    goto LABEL_24;
  }

  type metadata accessor for QLThumbnailError(0);
  v0[13] = 0;
  sub_100004F5C(&_swiftEmptyArrayStorage);
  sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError);
  sub_100005AC8();
  v40 = v0[12];
  swift_willThrow();

LABEL_4:
  type metadata accessor for Code(0);
  v0[11] = 1;
  swift_errorRetain();
  sub_100003C50(&qword_10000C3A8, type metadata accessor for Code);
  v7 = sub_100005A58();

  if (v7)
  {

    v8 = swift_task_alloc();
    v0[33] = v8;
    *v8 = v0;
    v8[1] = sub_100002B94;
    v9 = v0[14];
    v10 = v0[15];

    return sub_10000318C(v9, v10);
  }

  (*(v0[29] + 8))(v0[30], v0[28]);
  v25 = v0[30];
  v26 = v0[27];
  v28 = v0[23];
  v27 = v0[24];
  v30 = v0[21];
  v29 = v0[22];
  v31 = v0[18];

  v32 = v0[1];
LABEL_25:

  return v32();
}

uint64_t sub_100002AD8()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100002B94()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_100002D7C;
  }

  else
  {
    v3 = sub_100002CA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002CA8()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  (*(v0[29] + 8))(v0[30], v0[28]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100002D7C()
{
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

id sub_100002E50@<X0>(void *a1@<X8>)
{
  v22 = a1;
  v24 = sub_100005BA8();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005C78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_opt_self();
  sub_100005AE8(v10);
  v12 = v11;
  sub_100005B78();
  isa = sub_100005C28().super.isa;
  (*(v6 + 8))(v9, v5);
  sub_100005BC8();
  sub_100005B88();
  v15 = v14;
  v17 = v16;
  (*(v1 + 8))(v4, v24);
  v25 = 0;
  v18 = [v23 parseFile:v12 contentType:isa requestedSize:&v25 error:{v15, v17}];

  v19 = v25;
  if (v18)
  {
    *v22 = v18;
    return v19;
  }

  else
  {
    v21 = v25;
    sub_100005AD8();

    return swift_willThrow();
  }
}

uint64_t sub_1000030BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100005130(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100004B7C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1000052FC(a1, &qword_10000C3C8, &qword_1000068A0);
    sub_1000045D8(a2, a3, v10);

    return sub_1000052FC(v10, &qword_10000C3C8, &qword_1000068A0);
  }

  return result;
}

uint64_t sub_10000318C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_100005BA8();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_100005C78();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_100005E48();
  v2[15] = sub_100005E38();
  v10 = sub_100005E28();

  return _swift_task_switch(sub_1000032E8, v10, v9);
}

uint64_t sub_1000032E8()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  v19 = *(v0 + 64);
  v20 = *(v0 + 48);

  sub_100005B78();
  sub_100005C18();
  v9 = sub_100005C68();
  v10 = *(v4 + 8);
  v10(v3, v6);
  v10(v2, v6);
  v11 = 1280.0;
  if ((v9 & 1) == 0)
  {
    v11 = 3.0;
  }

  v12 = 720.0;
  if ((v9 & 1) == 0)
  {
    v12 = 4.0;
  }

  *(v0 + 16) = sub_100003540;
  *(v0 + 24) = 0;
  *(v0 + 32) = v11 / v12;
  *(v0 + 40) = 0;
  v13 = sub_1000050E8(&qword_10000C3E0, &qword_1000068B8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_100005CD8();
  sub_100005BC8();
  sub_100005B88();
  v16 = *(v7 + 8);
  v16(v5, v19);
  sub_100005CA8();
  sub_100005BC8();
  sub_100005B98();
  v16(v5, v19);
  sub_100005CB8();
  sub_100005CE8();

  sub_100005B28();

  v17 = *(v0 + 8);

  return v17();
}

double sub_100003540@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100005D48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(sub_1000050E8(&qword_10000C3E8, &qword_1000068C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v19 - v8;
  v10 = sub_100005D78();
  sub_100005C98();
  sub_100005C98();
  v11 = sub_100005D28();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = sub_100005D38();
  sub_1000052FC(v9, &qword_10000C3E8, &qword_1000068C0);
  KeyPath = swift_getKeyPath();
  sub_100005C98();
  sub_100005C98();
  sub_100005D88();
  sub_100005C88();
  (*(v3 + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  v14 = sub_100005D68();
  v15 = sub_100005D58();
  v16 = sub_100005D18();
  *a1 = v10;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v12;
  v17 = v19[1];
  *(a1 + 24) = v19[0];
  *(a1 + 40) = v17;
  result = *&v20;
  *(a1 + 56) = v20;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  return result;
}

uint64_t sub_1000037B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100005BE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100003818(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C398, type metadata accessor for OfficeThumbnailExtension);

  return ThumbnailExtension.configuration.getter(a1, v2);
}

uint64_t sub_100003894()
{
  v0 = *(*(sub_100005C78() - 8) + 64);
  __chkstk_darwin();
  sub_100005C58();
  sub_100005BD8();
  CGImageSourceDisableCaching();
  CGImageSourceDisableRAWDecoding();
  CGImageSourceDisableMetadataParsing();
  CGImageSourceDisableHardwareDecoding();
  return CGImageSourceEnableRestrictedDecoding();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for OfficeThumbnailExtension();
  sub_100003C50(&qword_10000C310, type metadata accessor for OfficeThumbnailExtension);
  sub_100005B18();
  return 0;
}

uint64_t type metadata accessor for OfficeThumbnailExtension()
{
  result = qword_10000C4C8;
  if (!qword_10000C4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005BE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100003AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005BE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100003B1C()
{
  result = sub_100005BE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100003C50(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100003C98@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100002E50(a1);
}

uint64_t sub_100003CDC(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C430, type metadata accessor for QLThumbnailError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003D48(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C430, type metadata accessor for QLThumbnailError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003DB4(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003E40(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003EAC(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003F18(void *a1, uint64_t a2)
{
  v4 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100004034(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000040A0(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000410C(void *a1, uint64_t a2)
{
  v4 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000041C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100004240()
{
  v2 = *v0;
  sub_100005F48();
  sub_100005DC8();
  return sub_100005F58();
}

void *sub_1000042A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000042D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100004354(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C478, type metadata accessor for OIError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000043C0(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C478, type metadata accessor for OIError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004430(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000449C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_100004520(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100005EF8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_1000045D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100004690(a1, a2, sub_100004520);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100004D60();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100005130((*(v12 + 56) + 32 * v9), a3);
    sub_1000049CC(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100004690(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_100005F48();
  sub_100005E18();
  v7 = sub_100005F58();

  return a3(a1, a2, v7);
}

uint64_t sub_100004714(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000050E8(&qword_10000C3D0, &qword_1000068A8);
  v36 = a2;
  result = sub_100005ED8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100005130(v25, v37);
      }

      else
      {
        sub_10000518C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_100005F48();
      sub_100005E18();
      result = sub_100005F58();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100005130(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000049CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100005EB8() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_100005F48();

      sub_100005E18();
      v14 = sub_100005F58();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100004B7C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004690(a2, a3, sub_100004520);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100004D60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100004714(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100004690(a2, a3, sub_100004520);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_100005F08();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100005140(v23);

    return sub_100005130(a1, v23);
  }

  else
  {
    sub_100004CF4(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100004CF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100005130(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100004D60()
{
  v1 = v0;
  sub_1000050E8(&qword_10000C3D0, &qword_1000068A8);
  v2 = *v0;
  v3 = sub_100005EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000518C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100005130(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100004F04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005CF8();
  *a1 = result;
  return result;
}

uint64_t sub_100004F30(uint64_t *a1)
{
  v1 = *a1;

  return sub_100005D08();
}

unint64_t sub_100004F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000050E8(&qword_10000C3D0, &qword_1000068A8);
    v3 = sub_100005EE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000051E8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100004690(v13, v14, sub_100004520);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005130(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100005080(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005094(a1, a2);
  }

  return a1;
}

uint64_t sub_100005094(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000050E8(uint64_t *a1, uint64_t *a2)
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

_OWORD *sub_100005130(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005140(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000518C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000051E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000050E8(&qword_10000C3D8, &qword_1000068B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100005298(void (*a1)(void))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  a1();
}

uint64_t sub_1000052FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000050E8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000535C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1000053A4()
{
  result = qword_10000C408;
  if (!qword_10000C408)
  {
    sub_100005408(&qword_10000C400, &qword_1000068F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C408);
  }

  return result;
}

uint64_t sub_100005408(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000565C()
{
  result = qword_10000C458;
  if (!qword_10000C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C458);
  }

  return result;
}

void sub_1000057E4(uint64_t a1, unint64_t *a2)
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