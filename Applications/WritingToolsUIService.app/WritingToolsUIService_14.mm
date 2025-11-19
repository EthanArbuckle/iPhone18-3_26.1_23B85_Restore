uint64_t sub_10017EF24(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10017EFDC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = __DataStorage._length.getter();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_10017EF24(v3, v7);

  return v8;
}

uint64_t sub_10017F0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    v11 = type metadata accessor for __DataStorage();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == enum case for Data.Deallocator.none(_:))
    {
      v15 = __DataStorage._capacity.modify();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_10017EFDC(v14, a2);
  }

  else
  {
    v17 = Data.Deallocator._deallocator.getter();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_10017F2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025F4E0, &unk_1001D1110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017F384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10017F3EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10017F468(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_10017F50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment.UploadState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10017F5E0()
{
  result = qword_100265FD8;
  if (!qword_100265FD8)
  {
    sub_100003E34(&qword_100265FE0, qword_1001DF290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265FD8);
  }

  return result;
}

uint64_t sub_10017F648()
{
  v1 = type metadata accessor for Attachment(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[5] + 8);

  v9 = v1[6];
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = *(v6 + v1[8] + 8);

  v13 = v1[10];
  v14 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if (!(*(*(v14 - 8) + 48))(v6 + v13, 1, v14))
  {
    v15 = type metadata accessor for DocumentResourceIdentifier();
    (*(*(v15 - 8) + 8))(v6 + v13, v15);
  }

  v16 = *(v6 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10017F878(uint64_t a1)
{
  v4 = *(type metadata accessor for Attachment(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100028688;

  return sub_10017AD20(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10017F970()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10017F9A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100028688;

  return sub_10017E50C(a1, v5);
}

uint64_t sub_10017FC38@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 == 2)
  {
    v6._countAndFlagsBits = 0x6F746F6870;
    v6._object = 0xE500000000000000;
    String.append(_:)(v6);
    v5 = &off_10024A068;
  }

  else if (v3 == 1)
  {
    v4._countAndFlagsBits = 0x74786554676E6F6CLL;
    v4._object = 0xE800000000000000;
    String.append(_:)(v4);
    v5 = &off_10024A018;
  }

  else
  {
    v7._countAndFlagsBits = 0x78655474726F6873;
    v7._object = 0xE900000000000074;
    String.append(_:)(v7);
    v5 = &off_100249FC8;
  }

  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = v5[2];
  if (v9)
  {
    sub_100163C20(0, v9, 0);
    v10 = (v5 + 5);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      String.append(_:)(v13);
      v14._countAndFlagsBits = 34;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_100163C20((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      *(v17 + 4) = 34;
      *(v17 + 5) = 0xE100000000000000;
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100183068();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  *a2 = 8237;
  a2[1] = v23;
  return result;
}

uint64_t sub_10017FE98(unsigned __int8 a1)
{
  v2 = sub_10000341C(&qword_100265FF8, &qword_1001DF3D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v301 = v262 - v4;
  v5 = sub_10000341C(&qword_100266000, &qword_1001DF3D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v299 = v262 - v7;
  v300 = type metadata accessor for DateComponents();
  v303 = *(v300 - 8);
  v8 = *(v303 + 64);
  __chkstk_darwin(v300);
  v298 = v262 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for Calendar();
  v302 = *(v297 - 8);
  v10 = *(v302 + 64);
  __chkstk_darwin(v297);
  v296 = v262 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_100266008, &unk_1001DF3E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v280 = v262 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v285 = v262 - v16;
  v310 = type metadata accessor for PromptExampleBuilder.ExampleMessage();
  v308 = *(v310 - 8);
  v17 = *(v308 + 64);
  v18 = __chkstk_darwin(v310);
  v266 = v262 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v290 = v262 - v21;
  v22 = __chkstk_darwin(v20);
  v265 = v262 - v23;
  v24 = __chkstk_darwin(v22);
  v289 = v262 - v25;
  v26 = __chkstk_darwin(v24);
  v288 = v262 - v27;
  v28 = __chkstk_darwin(v26);
  v283 = v262 - v29;
  v30 = __chkstk_darwin(v28);
  v287 = v262 - v31;
  v32 = __chkstk_darwin(v30);
  v279 = v262 - v33;
  v34 = __chkstk_darwin(v32);
  v278 = v262 - v35;
  v36 = __chkstk_darwin(v34);
  v294 = v262 - v37;
  v38 = __chkstk_darwin(v36);
  v293 = v262 - v39;
  v40 = __chkstk_darwin(v38);
  v277 = v262 - v41;
  v42 = __chkstk_darwin(v40);
  v284 = v262 - v43;
  v44 = __chkstk_darwin(v42);
  v276 = v262 - v45;
  v46 = __chkstk_darwin(v44);
  v292 = v262 - v47;
  v48 = __chkstk_darwin(v46);
  v309 = v262 - v49;
  v50 = __chkstk_darwin(v48);
  v282 = v262 - v51;
  v52 = __chkstk_darwin(v50);
  v304 = v262 - v53;
  v54 = __chkstk_darwin(v52);
  v56 = v262 - v55;
  v57 = __chkstk_darwin(v54);
  v59 = v262 - v58;
  v60 = __chkstk_darwin(v57);
  v62 = v262 - v61;
  v63 = __chkstk_darwin(v60);
  v65 = v262 - v64;
  v66 = __chkstk_darwin(v63);
  v68 = v262 - v67;
  v69 = __chkstk_darwin(v66);
  v71 = v262 - v70;
  __chkstk_darwin(v69);
  v73 = v262 - v72;
  v314 = &_swiftEmptyArrayStorage;
  if (a1 > 1u)
  {
    v89 = v309;
    if (a1 != 2)
    {
      goto LABEL_25;
    }

    v94 = enum case for ChatMessageRole.user(_:);
    v95 = type metadata accessor for ChatMessageRole();
    (*(*(v95 - 8) + 104))(v68, v94, v95);
    v96 = &v68[*(v310 + 20)];
    *v96 = 0xD00000000000001CLL;
    *(v96 + 1) = 0x80000001001E89E0;
    *(v96 + 2) = 0;
    *(v96 + 3) = 0;
    *(v96 + 4) = 0xD000000000000055;
    *(v96 + 5) = 0x80000001001E8A40;
    v96[48] = 1;
    v85 = sub_10017D920(0, 1, 1, &_swiftEmptyArrayStorage);
    v98 = v85[2];
    v97 = v85[3];
    if (v98 >= v97 >> 1)
    {
      v85 = sub_10017D920(v97 > 1, v98 + 1, 1, v85);
    }

    v85[2] = v98 + 1;
    sub_10004DE04(v68, v85 + ((*(v308 + 80) + 32) & ~*(v308 + 80)) + *(v308 + 72) * v98);
    v90 = sub_10017DB24(0, 1, 1, &_swiftEmptyArrayStorage);
    v92 = *(v90 + 2);
    v99 = *(v90 + 3);
    v93 = v92 + 1;
    if (v92 >= v99 >> 1)
    {
      v90 = sub_10017DB24((v99 > 1), v92 + 1, 1, v90);
    }
  }

  else if (a1)
  {
    v100 = enum case for ChatMessageRole.user(_:);
    v101 = type metadata accessor for ChatMessageRole();
    (*(*(v101 - 8) + 104))(v65, v100, v101);
    v102 = &v65[*(v310 + 20)];
    *v102 = 0xD00000000000001CLL;
    *(v102 + 1) = 0x80000001001E89E0;
    *(v102 + 2) = 0xD000000000000033;
    *(v102 + 3) = 0x80000001001E8A00;
    *(v102 + 4) = 0xD000000000000055;
    *(v102 + 5) = 0x80000001001E8A40;
    v102[48] = 1;
    v85 = sub_10017D920(0, 1, 1, &_swiftEmptyArrayStorage);
    v104 = v85[2];
    v103 = v85[3];
    if (v104 >= v103 >> 1)
    {
      v85 = sub_10017D920(v103 > 1, v104 + 1, 1, v85);
    }

    v85[2] = v104 + 1;
    sub_10004DE04(v65, v85 + ((*(v308 + 80) + 32) & ~*(v308 + 80)) + *(v308 + 72) * v104);
    v90 = sub_10017DB24(0, 1, 1, &_swiftEmptyArrayStorage);
    v92 = *(v90 + 2);
    v105 = *(v90 + 3);
    v93 = v92 + 1;
    if (v92 >= v105 >> 1)
    {
      v90 = sub_10017DB24((v105 > 1), v92 + 1, 1, v90);
    }

    v89 = v309;
  }

  else
  {
    v305 = v56;
    v74 = sub_10004D4A8(0xD000000000000028, 0x80000001001E8AA0, 0, 0, 0, 0, &_swiftEmptyArrayStorage);
    v75 = enum case for ChatMessageRole.assistant(_:);
    v76 = type metadata accessor for ChatMessageRole();
    v77 = *(v76 - 8);
    v78 = *(v77 + 104);
    v307 = v75;
    v306 = v78;
    v295 = (v77 + 104);
    v78(v73, v75, v76);
    v79 = &v73[*(v310 + 20)];
    *v79 = 0x1000000000000014;
    *(v79 + 1) = 0x80000001001E8AD0;
    *(v79 + 2) = &off_10024A0E0;
    *(v79 + 3) = 0;
    *(v79 + 4) = 0;
    *(v79 + 5) = 0;
    v79[48] = 2;

    v80 = v74;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_10017D920(0, v74[2] + 1, 1, v74);
    }

    v82 = v80[2];
    v81 = v80[3];
    if (v82 >= v81 >> 1)
    {
      v80 = sub_10017D920(v81 > 1, v82 + 1, 1, v80);
    }

    v80[2] = v82 + 1;
    v83 = (*(v308 + 80) + 32) & ~*(v308 + 80);
    v84 = *(v308 + 72);
    sub_10004DE04(v73, v80 + v83 + v84 * v82);
    v85 = sub_10004D4A8(0xD00000000000002DLL, 0x80000001001E8AF0, 0, 0, 0, 0, v80);

    v306(v71, v307, v76);
    v86 = &v71[*(v310 + 20)];
    *v86 = 0xD000000000000032;
    *(v86 + 1) = 0x80000001001E8B20;
    *(v86 + 2) = &off_10024A130;
    *(v86 + 3) = 0;
    *(v86 + 4) = 0;
    *(v86 + 5) = 0;
    v86[48] = 2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = sub_10017D920(0, v85[2] + 1, 1, v85);
    }

    v88 = v85[2];
    v87 = v85[3];
    v89 = v309;
    if (v88 >= v87 >> 1)
    {
      v85 = sub_10017D920(v87 > 1, v88 + 1, 1, v85);
    }

    v85[2] = v88 + 1;
    sub_10004DE04(v71, v85 + v83 + v88 * v84);
    v90 = sub_10017DB24(0, 1, 1, &_swiftEmptyArrayStorage);
    v92 = *(v90 + 2);
    v91 = *(v90 + 3);
    v93 = v92 + 1;
    if (v92 >= v91 >> 1)
    {
      v90 = sub_10017DB24((v91 > 1), v92 + 1, 1, v90);
    }

    v56 = v305;
  }

  *(v90 + 2) = v93;
  *&v90[8 * v92 + 32] = v85;
  v314 = v90;
LABEL_25:
  v281 = sub_10000341C(&qword_100265FC0, &qword_1001DF238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v107 = sub_10004D4A8(0x2061206574697257, 0xEC0000006D656F70, 0, 0, 0, 0, &_swiftEmptyArrayStorage);
  v108 = enum case for ChatMessageRole.assistant(_:);
  v109 = type metadata accessor for ChatMessageRole();
  v110 = *(v109 - 8);
  v111 = *(v110 + 104);
  v307 = v108;
  v306 = (v110 + 104);
  v111(v62, v108, v109);
  v112 = &v62[*(v310 + 20)];
  *v112 = xmmword_1001DF3B0;
  *(v112 + 2) = &off_10024A180;
  *(v112 + 3) = 0;
  *(v112 + 4) = 0;
  *(v112 + 5) = 0;
  v112[48] = 2;

  v113 = v107;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v113 = sub_10017D920(0, v107[2] + 1, 1, v107);
  }

  v115 = *(v113 + 16);
  v114 = *(v113 + 24);
  if (v115 >= v114 >> 1)
  {
    v305 = v56;
    v113 = sub_10017D920(v114 > 1, v115 + 1, 1, v113);
    v56 = v305;
  }

  *(v113 + 16) = v115 + 1;
  v309 = ((*(v308 + 80) + 32) & ~*(v308 + 80));
  v308 = *(v308 + 72);
  sub_10004DE04(v62, &v309[v113 + v308 * v115]);
  *(inited + 32) = v113;
  v116 = sub_10004D4A8(0xD000000000000019, 0x80000001001E8360, 0, 0, 0, 0, &_swiftEmptyArrayStorage);
  v111(v59, v307, v109);
  v117 = &v59[*(v310 + 20)];
  *v117 = &off_10024A1D0;
  *(v117 + 1) = 0;
  *(v117 + 2) = 0;
  *(v117 + 3) = 1;
  *(v117 + 4) = 0;
  *(v117 + 5) = 0;
  v117[48] = 2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v116 = sub_10017D920(0, *(v116 + 16) + 1, 1, v116);
  }

  v119 = *(v116 + 16);
  v118 = *(v116 + 24);
  if (v119 >= v118 >> 1)
  {
    v116 = sub_10017D920(v118 > 1, v119 + 1, 1, v116);
  }

  *(v116 + 16) = v119 + 1;
  sub_10004DE04(v59, &v309[v116 + v119 * v308]);
  v312 = sub_100006100(&_swiftEmptyArrayStorage);
  sub_100093E98(0x73616D6F6854, 0xE600000000000000, 0x656D616E20796DLL, 0xE700000000000000);
  v286 = 0xD000000000000010;
  sub_100093E98(0x796C6C6153, 0xE500000000000000, 0xD000000000000010, 0x80000001001E8380);
  sub_100093E98(0xD000000000000015, 0x80000001001E83A0, 0x6E6F73616572, 0xE600000000000000);
  v120 = v312;
  LODWORD(v305) = enum case for ChatMessageRole.user(_:);
  (v111)(v56);
  v121 = &v56[*(v310 + 20)];
  *v121 = v120;
  *(v121 + 1) = 0;
  *(v121 + 2) = 0;
  *(v121 + 3) = 2;
  *(v121 + 4) = 0;
  *(v121 + 5) = 0;
  v121[48] = 2;

  v122 = v116;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v122 = sub_10017D920(0, *(v116 + 16) + 1, 1, v116);
  }

  v124 = *(v122 + 16);
  v123 = *(v122 + 24);
  if (v124 >= v123 >> 1)
  {
    v122 = sub_10017D920(v123 > 1, v124 + 1, 1, v122);
  }

  *(v122 + 16) = v124 + 1;
  sub_10004DE04(v56, &v309[v122 + v124 * v308]);
  v125 = v304;
  v111(v304, v307, v109);
  v126 = v125 + *(v310 + 20);
  *v126 = 0xD000000000000034;
  *(v126 + 8) = 0x80000001001E83C0;
  *(v126 + 16) = &off_10024A268;
  *(v126 + 24) = 0;
  *(v126 + 32) = 0;
  *(v126 + 40) = 0;
  *(v126 + 48) = 2;

  v127 = v122;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v127 = sub_10017D920(0, *(v122 + 16) + 1, 1, v122);
  }

  v129 = *(v127 + 16);
  v128 = *(v127 + 24);
  if (v129 >= v128 >> 1)
  {
    v127 = sub_10017D920(v128 > 1, v129 + 1, 1, v127);
  }

  *(v127 + 16) = v129 + 1;
  sub_10004DE04(v304, &v309[v127 + v129 * v308]);
  v291 = "ffOriginatorMode [";
  v130 = sub_10004D4A8(0xD00000000000001ALL, 0x80000001001E4B90, 0, 0, 0, 0, v127);

  v131 = v282;
  v111(v282, v307, v109);
  v132 = v131 + *(v310 + 20);
  *v132 = 0xD000000000000034;
  *(v132 + 8) = 0x80000001001E83C0;
  *(v132 + 16) = &off_10024A2B8;
  *(v132 + 24) = 0;
  *(v132 + 32) = 0;
  *(v132 + 40) = 0;
  *(v132 + 48) = 2;

  v133 = v130;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v133 = sub_10017D920(0, v130[2] + 1, 1, v130);
  }

  v135 = *(v133 + 16);
  v134 = *(v133 + 24);
  if (v135 >= v134 >> 1)
  {
    v133 = sub_10017D920(v134 > 1, v135 + 1, 1, v133);
  }

  *(v133 + 16) = v135 + 1;
  sub_10004DE04(v131, &v309[v133 + v135 * v308]);
  *(inited + 40) = v133;
  sub_10019E41C(inited);
  v304 = swift_initStackObject();
  *(v304 + 16) = xmmword_1001DF3C0;
  v136 = sub_10004D4A8(0xD000000000000038, 0x80000001001E8400, 0, 0, 0, 0, &_swiftEmptyArrayStorage);
  v111(v89, v307, v109);
  v137 = v89 + *(v310 + 20);
  *v137 = &off_10024A308;
  *(v137 + 8) = 0;
  *(v137 + 16) = 0;
  *(v137 + 24) = 1;
  *(v137 + 32) = 0;
  *(v137 + 40) = 0;
  *(v137 + 48) = 2;

  v138 = v136;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v138 = sub_10017D920(0, v136[2] + 1, 1, v136);
  }

  v140 = *(v138 + 16);
  v139 = *(v138 + 24);
  v295 = v111;
  v275 = v109;
  if (v140 >= v139 >> 1)
  {
    v138 = sub_10017D920(v139 > 1, v140 + 1, 1, v138);
  }

  *(v138 + 16) = v140 + 1;
  sub_10004DE04(v89, &v309[v138 + v140 * v308]);
  v312 = sub_100006100(&_swiftEmptyArrayStorage);
  sub_100093E98(0x6D5320796C6C6153, 0xEB00000000687469, 0xD000000000000015, 0x80000001001E2E40);
  v267 = 0xD000000000000012;
  sub_100093E98(0x6D5320796D6D6F54, 0xEB00000000687469, 0xD000000000000012, 0x80000001001E2E60);
  v141 = v312;
  v312 = 0;
  v313 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v142 = v296;
  static Calendar.current.getter();
  v143 = v302;
  v144 = *(v302 + 56);
  v145 = v297;
  v282 = (v302 + 56);
  v281 = v144;
  v144(v299, 1, 1, v297);
  v146 = type metadata accessor for TimeZone();
  v147 = *(v146 - 8);
  v148 = *(v147 + 56);
  v274 = v146;
  v273 = v148;
  v272 = v147 + 56;
  (v148)(v301, 1, 1);
  v149 = v298;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v150 = v285;
  Calendar.date(from:)();
  v151 = *(v303 + 8);
  v303 += 8;
  v271 = v151;
  v151(v149, v300);
  v152 = *(v143 + 8);
  v302 = v143 + 8;
  v270 = v152;
  v152(v142, v145);
  v153 = type metadata accessor for Date();
  v154 = *(v153 - 8);
  v155 = *(v154 + 48);
  v269 = v154 + 48;
  v268 = v155;
  result = v155(v150, 1, v153);
  if (result == 1)
  {
    __break(1u);
LABEL_113:
    __break(1u);
    return result;
  }

  v262[1] = sub_100182E1C();
  v157._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v157);

  v158 = *(v154 + 8);
  v264 = v153;
  v262[2] = v154 + 8;
  v262[0] = v158;
  v158(v150, v153);
  v159._countAndFlagsBits = 0xD00000000000001CLL;
  v159._object = 0x80000001001E8440;
  String.append(_:)(v159);
  v160 = v312;
  v312 = v141;
  sub_100093E98(v160, v313, 0xD00000000000001ALL, 0x80000001001E2E80);

  v263 = "Son's Birthday Party Event";
  v285 = 0xD000000000000011;
  sub_100093E98(0x6E616874616E6F4ALL, 0xEE006874696D5320, 0xD000000000000011, 0x80000001001E2EA0);
  v161 = v312;
  v162 = v292;
  v163 = v275;
  v164 = v295;
  v295(v292, v305, v275);
  v165 = v162 + *(v310 + 20);
  *v165 = v161;
  *(v165 + 8) = 0;
  *(v165 + 16) = 0;
  *(v165 + 24) = 2;
  *(v165 + 32) = 0;
  *(v165 + 40) = 0;
  *(v165 + 48) = 2;

  v166 = v138;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v166 = sub_10017D920(0, *(v138 + 16) + 1, 1, v138);
  }

  v168 = *(v166 + 16);
  v167 = *(v166 + 24);
  v169 = v276;
  if (v168 >= v167 >> 1)
  {
    v166 = sub_10017D920(v167 > 1, v168 + 1, 1, v166);
  }

  *(v166 + 16) = v168 + 1;
  sub_10004DE04(v292, &v309[v166 + v168 * v308]);
  v164(v169, v307, v163);
  v170 = v169 + *(v310 + 20);
  *v170 = 0xD0000000000000BFLL;
  *(v170 + 8) = 0x80000001001E8460;
  *(v170 + 16) = &off_10024A3C8;
  *(v170 + 24) = 0;
  *(v170 + 32) = 0;
  *(v170 + 40) = 0;
  *(v170 + 48) = 2;

  v171 = v166;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v171 = sub_10017D920(0, *(v166 + 16) + 1, 1, v166);
  }

  v173 = *(v171 + 16);
  v172 = *(v171 + 24);
  v174 = v278;
  if (v173 >= v172 >> 1)
  {
    v171 = sub_10017D920(v172 > 1, v173 + 1, 1, v171);
  }

  *(v171 + 16) = v173 + 1;
  sub_10004DE04(v169, &v309[v171 + v173 * v308]);
  v175 = sub_10004D4A8(0xD00000000000001ALL, v291 | 0x8000000000000000, 0, 0, 0, 0, v171);

  v176 = v284;
  v164(v284, v307, v163);
  v177 = v176 + *(v310 + 20);
  *v177 = 0xD0000000000000BFLL;
  *(v177 + 8) = 0x80000001001E8460;
  *(v177 + 16) = &off_10024A418;
  *(v177 + 24) = 0;
  *(v177 + 32) = 0;
  *(v177 + 40) = 0;
  *(v177 + 48) = 2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v175 = sub_10017D920(0, *(v175 + 16) + 1, 1, v175);
  }

  v179 = *(v175 + 16);
  v178 = *(v175 + 24);
  if (v179 >= v178 >> 1)
  {
    v175 = sub_10017D920(v178 > 1, v179 + 1, 1, v175);
    v176 = v284;
  }

  *(v175 + 16) = v179 + 1;
  sub_10004DE04(v176, &v309[v175 + v179 * v308]);
  *(v304 + 32) = v175;
  v180 = sub_10004D4A8(0xD000000000000036, 0x80000001001E8520, 0, 0, 0, 0, &_swiftEmptyArrayStorage);
  v181 = v277;
  v164(v277, v307, v163);
  v182 = v181 + *(v310 + 20);
  *v182 = &off_10024A468;
  *(v182 + 8) = 0;
  *(v182 + 16) = 0;
  *(v182 + 24) = 1;
  *(v182 + 32) = 0;
  *(v182 + 40) = 0;
  *(v182 + 48) = 2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v184 = v180;
  v185 = v180;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v185 = sub_10017D920(0, v180[2] + 1, 1, v180);
    v184 = v180;
  }

  v187 = *(v185 + 16);
  v186 = *(v185 + 24);
  if (v187 >= v186 >> 1)
  {
    v292 = v184;
    v185 = sub_10017D920(v186 > 1, v187 + 1, 1, v185);
  }

  *(v185 + 16) = v187 + 1;
  sub_10004DE04(v181, &v309[v185 + v187 * v308]);
  v312 = sub_100006100(&_swiftEmptyArrayStorage);
  sub_100093E98(0xD000000000000020, 0x80000001001E8560, 0xD000000000000016, 0x80000001001E2EC0);
  sub_100093E98(0x6E656C6C65637865, 0xE900000000000074, v267, 0x80000001001E2EE0);
  sub_100093E98(0x2064656C6C697247, 0xEE006E6F6D6C6173, 0x4F20736568736944, 0xEE00646572656472);
  v188 = v312;
  v189 = v293;
  v164(v293, v305, v163);
  v190 = v189 + *(v310 + 20);
  *v190 = v188;
  *(v190 + 8) = 0;
  *(v190 + 16) = 0;
  *(v190 + 24) = 2;
  *(v190 + 32) = 0;
  *(v190 + 40) = 0;
  *(v190 + 48) = 2;

  v191 = v185;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v191 = sub_10017D920(0, *(v185 + 16) + 1, 1, v185);
  }

  v193 = *(v191 + 16);
  v192 = *(v191 + 24);
  if (v193 >= v192 >> 1)
  {
    v191 = sub_10017D920(v192 > 1, v193 + 1, 1, v191);
  }

  *(v191 + 16) = v193 + 1;
  sub_10004DE04(v293, &v309[v191 + v193 * v308]);
  *(v304 + 40) = v191;
  v194 = sub_10004D4A8(0xD000000000000031, 0x80000001001E8590, 0, 0, 0, 0, &_swiftEmptyArrayStorage);
  v195 = v294;
  v164(v294, v307, v163);
  v196 = v195 + *(v310 + 20);
  *v196 = &off_10024A500;
  *(v196 + 8) = 0;
  *(v196 + 16) = 0;
  *(v196 + 24) = 1;
  *(v196 + 32) = 0;
  *(v196 + 40) = 0;
  *(v196 + 48) = 2;

  v197 = swift_isUniquelyReferenced_nonNull_native();
  v198 = v194;
  v199 = v194;
  if ((v197 & 1) == 0)
  {
    v199 = sub_10017D920(0, v194[2] + 1, 1, v194);
    v198 = v194;
  }

  v201 = *(v199 + 16);
  v200 = *(v199 + 24);
  v202 = v279;
  if (v201 >= v200 >> 1)
  {
    v293 = v198;
    v199 = sub_10017D920(v200 > 1, v201 + 1, 1, v199);
  }

  *(v199 + 16) = v201 + 1;
  sub_10004DE04(v294, &v309[v199 + v201 * v308]);
  v312 = sub_100006100(&_swiftEmptyArrayStorage);
  sub_100093E98(0x3220656E7544, 0xE600000000000000, 0x7645206569766F4DLL, 0xEB00000000746E65);
  sub_100093E98(53, 0xE100000000000000, 0xD000000000000015, 0x80000001001E2F20);
  sub_100093E98(0xD00000000000002FLL, 0x80000001001E85D0, 0x657469726F766146, 0xEE00737472615020);
  sub_100093E98(0xD00000000000002ELL, 0x80000001001E8600, v285, 0x80000001001E2F00);
  v203 = v312;
  v204 = v295;
  v295(v174, v305, v163);
  v205 = v174 + *(v310 + 20);
  *v205 = v203;
  *(v205 + 8) = 0;
  *(v205 + 16) = 0;
  *(v205 + 24) = 2;
  *(v205 + 32) = 0;
  *(v205 + 40) = 0;
  *(v205 + 48) = 2;

  v206 = v199;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v206 = sub_10017D920(0, *(v199 + 16) + 1, 1, v199);
  }

  v208 = *(v206 + 16);
  v207 = *(v206 + 24);
  if (v208 >= v207 >> 1)
  {
    v206 = sub_10017D920(v207 > 1, v208 + 1, 1, v206);
  }

  *(v206 + 16) = v208 + 1;
  sub_10004DE04(v174, &v309[v206 + v208 * v308]);
  *(v304 + 48) = v206;
  v209 = sub_10004D4A8(0xD000000000000043, 0x80000001001E8630, 0, 0, 0, 0, &_swiftEmptyArrayStorage);
  v204(v202, v307, v163);
  v210 = v202 + *(v310 + 20);
  *v210 = &off_10024A5C0;
  *(v210 + 8) = 0;
  *(v210 + 16) = 0;
  *(v210 + 24) = 1;
  *(v210 + 32) = 0;
  *(v210 + 40) = 0;
  *(v210 + 48) = 2;

  v211 = v209;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v211 = sub_10017D920(0, v209[2] + 1, 1, v209);
  }

  v213 = *(v211 + 16);
  v212 = *(v211 + 24);
  if (v213 >= v212 >> 1)
  {
    v211 = sub_10017D920(v212 > 1, v213 + 1, 1, v211);
  }

  *(v211 + 16) = v213 + 1;
  sub_10004DE04(v202, &v309[v211 + v213 * v308]);
  v214 = sub_100006100(&_swiftEmptyArrayStorage);
  v312 = 0;
  v313 = 0xE000000000000000;
  v215 = v296;
  static Calendar.current.getter();
  v216 = v297;
  v281(v299, 1, 1, v297);
  v273(v301, 1, 1, v274);
  v217 = v298;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v218 = v280;
  Calendar.date(from:)();
  v271(v217, v300);
  v270(v215, v216);
  v219 = v264;
  result = v268(v218, 1, v264);
  if (result == 1)
  {
    goto LABEL_113;
  }

  v220._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v220);

  (v262[0])(v218, v219);
  v221 = v312;
  v312 = v214;
  sub_100093E98(v221, v313, 0x67616C4620786953, 0xEF746E6576452073);

  sub_100093E98(3748388, 0xE300000000000000, 0x502074656B636954, 0xEC00000065636972);
  sub_100093E98(0xD000000000000015, 0x80000001001E8680, 0x657469726F766146, 0xEE00736564695220);
  sub_100093E98(57, 0xE100000000000000, v286, 0x80000001001E2F40);
  v222 = v312;
  v223 = v287;
  v204(v287, v305, v163);
  v224 = v223 + *(v310 + 20);
  *v224 = v222;
  *(v224 + 8) = 0;
  *(v224 + 16) = 0;
  *(v224 + 24) = 2;
  *(v224 + 32) = 0;
  *(v224 + 40) = 0;
  *(v224 + 48) = 2;

  v225 = v211;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v225 = sub_10017D920(0, *(v211 + 16) + 1, 1, v211);
  }

  v227 = *(v225 + 16);
  v226 = *(v225 + 24);
  v228 = v265;
  if (v227 >= v226 >> 1)
  {
    v225 = sub_10017D920(v226 > 1, v227 + 1, 1, v225);
  }

  *(v225 + 16) = v227 + 1;
  sub_10004DE04(v287, &v309[v225 + v227 * v308]);
  *(v304 + 56) = v225;
  v229 = sub_10004D4A8(0xD000000000000029, 0x80000001001E86A0, 0, 0, 0, 0, &_swiftEmptyArrayStorage);
  v230 = v283;
  v204(v283, v307, v163);
  v231 = v230 + *(v310 + 20);
  *v231 = &off_10024A680;
  *(v231 + 8) = 0;
  *(v231 + 16) = 0;
  *(v231 + 24) = 1;
  *(v231 + 32) = 0;
  *(v231 + 40) = 0;
  *(v231 + 48) = 2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v229 = sub_10017D920(0, *(v229 + 16) + 1, 1, v229);
  }

  v233 = *(v229 + 16);
  v232 = *(v229 + 24);
  if (v233 >= v232 >> 1)
  {
    v229 = sub_10017D920(v232 > 1, v233 + 1, 1, v229);
    v230 = v283;
  }

  *(v229 + 16) = v233 + 1;
  sub_10004DE04(v230, &v309[v229 + v233 * v308]);
  v312 = sub_100006100(&_swiftEmptyArrayStorage);
  sub_100093E98(0xD0000000000001BELL, 0x80000001001E86D0, 0x20676E697465654DLL, 0xED00007365746F4ELL);
  v234 = v312;
  v235 = v288;
  v204(v288, v305, v163);
  v236 = v235 + *(v310 + 20);
  *v236 = v234;
  *(v236 + 8) = 0;
  *(v236 + 16) = 0;
  *(v236 + 24) = 2;
  *(v236 + 32) = 0;
  *(v236 + 40) = 0;
  *(v236 + 48) = 2;

  v237 = v229;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v237 = sub_10017D920(0, *(v229 + 16) + 1, 1, v229);
  }

  v239 = *(v237 + 16);
  v238 = *(v237 + 24);
  if (v239 >= v238 >> 1)
  {
    v237 = sub_10017D920(v238 > 1, v239 + 1, 1, v237);
  }

  *(v237 + 16) = v239 + 1;
  sub_10004DE04(v288, &v309[v237 + v239 * v308]);
  v240 = v289;
  v204(v289, v307, v163);
  v241 = v240 + *(v310 + 20);
  *v241 = 0xD000000000000049;
  *(v241 + 8) = 0x80000001001E8890;
  *(v241 + 16) = &off_10024A6C8;
  *(v241 + 24) = 0;
  *(v241 + 32) = 0;
  *(v241 + 40) = 0;
  *(v241 + 48) = 2;

  v242 = v237;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v242 = sub_10017D920(0, *(v237 + 16) + 1, 1, v237);
  }

  v244 = *(v242 + 16);
  v243 = *(v242 + 24);
  if (v244 >= v243 >> 1)
  {
    v242 = sub_10017D920(v243 > 1, v244 + 1, 1, v242);
  }

  *(v242 + 16) = v244 + 1;
  sub_10004DE04(v289, &v309[v242 + v244 * v308]);
  v245 = sub_10004D4A8(0xD00000000000001ALL, v291 | 0x8000000000000000, 0, 0, 0, 0, v242);

  v204(v228, v307, v163);
  v246 = v228 + *(v310 + 20);
  *v246 = 0xD000000000000049;
  *(v246 + 8) = 0x80000001001E8890;
  *(v246 + 16) = &off_10024A718;
  *(v246 + 24) = 0;
  *(v246 + 32) = 0;
  *(v246 + 40) = 0;
  *(v246 + 48) = 2;

  v247 = v245;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v247 = sub_10017D920(0, v245[2] + 1, 1, v245);
  }

  v249 = *(v247 + 16);
  v248 = *(v247 + 24);
  if (v249 >= v248 >> 1)
  {
    v247 = sub_10017D920(v248 > 1, v249 + 1, 1, v247);
  }

  *(v247 + 16) = v249 + 1;
  sub_10004DE04(v228, &v309[v247 + v249 * v308]);
  *(v304 + 64) = v247;
  v250 = sub_10004D4A8(0xD00000000000002BLL, 0x80000001001E88E0, 0, 0, 0, 0, &_swiftEmptyArrayStorage);
  v251 = v290;
  v204(v290, v307, v163);
  v252 = v251 + *(v310 + 20);
  *v252 = &off_10024A768;
  *(v252 + 8) = 0;
  *(v252 + 16) = 0;
  *(v252 + 24) = 1;
  *(v252 + 32) = 0;
  *(v252 + 40) = 0;
  *(v252 + 48) = 2;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v250 = sub_10017D920(0, *(v250 + 16) + 1, 1, v250);
  }

  v254 = *(v250 + 16);
  v253 = *(v250 + 24);
  if (v254 >= v253 >> 1)
  {
    v250 = sub_10017D920(v253 > 1, v254 + 1, 1, v250);
  }

  *(v250 + 16) = v254 + 1;
  sub_10004DE04(v290, &v309[v250 + v254 * v308]);
  v311 = sub_100006100(&_swiftEmptyArrayStorage);
  sub_100093E98(0xD000000000000025, 0x80000001001E8910, 0xD000000000000013, 0x80000001001E2F60);
  sub_100093E98(0xD000000000000022, 0x80000001001E8940, v285, v263 | 0x8000000000000000);
  sub_100093E98(0xD000000000000026, 0x80000001001E8970, 0xD000000000000015, 0x80000001001E2F80);
  sub_100093E98(0xD000000000000037, 0x80000001001E89A0, v286, 0x80000001001E2FA0);
  v255 = v311;
  v256 = v266;
  v204(v266, v305, v163);
  v257 = v256 + *(v310 + 20);
  *v257 = v255;
  *(v257 + 8) = 0;
  *(v257 + 16) = 0;
  *(v257 + 24) = 2;
  *(v257 + 32) = 0;
  *(v257 + 40) = 0;
  *(v257 + 48) = 2;

  v258 = v250;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v258 = sub_10017D920(0, *(v250 + 16) + 1, 1, v250);
  }

  v260 = *(v258 + 16);
  v259 = *(v258 + 24);
  if (v260 >= v259 >> 1)
  {
    v258 = sub_10017D920(v259 > 1, v260 + 1, 1, v258);
  }

  *(v258 + 16) = v260 + 1;
  sub_10004DE04(v256, &v309[v258 + v260 * v308]);
  v261 = v304;
  *(v304 + 72) = v258;
  sub_10019E41C(v261);
  return v314;
}

unint64_t sub_100182E1C()
{
  result = qword_100266010;
  if (!qword_100266010)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266010);
  }

  return result;
}

unint64_t sub_100182E74()
{
  v24 = _swiftEmptyArrayStorage;
  sub_100163C20(0, 3, 0);
  v0 = _swiftEmptyArrayStorage;
  v21 = 0;
  sub_10017FC38(&v21, &v22);
  v1 = v22;
  v2 = v23;
  v4 = _swiftEmptyArrayStorage[2];
  v3 = _swiftEmptyArrayStorage[3];
  if (v4 >= v3 >> 1)
  {
    sub_100163C20((v3 > 1), v4 + 1, 1);
    v0 = v24;
  }

  v0[2] = v4 + 1;
  v5 = &v0[2 * v4];
  v5[4] = v1;
  v5[5] = v2;
  v21 = 1;
  sub_10017FC38(&v21, &v22);
  v6 = v22;
  v7 = v23;
  v24 = v0;
  v9 = v0[2];
  v8 = v0[3];
  if (v9 >= v8 >> 1)
  {
    sub_100163C20((v8 > 1), v9 + 1, 1);
    v0 = v24;
  }

  v0[2] = v9 + 1;
  v10 = &v0[2 * v9];
  v10[4] = v6;
  v10[5] = v7;
  v21 = 2;
  sub_10017FC38(&v21, &v22);
  v11 = v22;
  v12 = v23;
  v24 = v0;
  v14 = v0[2];
  v13 = v0[3];
  if (v14 >= v13 >> 1)
  {
    sub_100163C20((v13 > 1), v14 + 1, 1);
    v0 = v24;
  }

  v0[2] = v14 + 1;
  v15 = &v0[2 * v14];
  v15[4] = v11;
  v15[5] = v12;
  v22 = v0;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100183068();
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  v22 = 0xD000000000000024;
  v23 = 0x80000001001E8B60;
  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  return v22;
}

unint64_t sub_100183068()
{
  result = qword_10025F3D0;
  if (!qword_10025F3D0)
  {
    sub_100003E34(&qword_10025CC10, &qword_1001D1FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025F3D0);
  }

  return result;
}

uint64_t sub_1001830CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC21WritingToolsUIService25WritingToolsIntentManager_text;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WritingToolsIntentManager()
{
  result = qword_100266050;
  if (!qword_100266050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001831E4()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001832B8()
{
  if (*v0)
  {
    result = 0x657669746361;
  }

  else
  {
    result = 0x6576697463616E69;
  }

  *v0;
  return result;
}

void sub_100183370()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v44 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView];
  v45 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView + 8];
  v46 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView + 16];
  v47 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView + 24];
  objc_allocWithZone(sub_10000341C(&qword_100266180, &qword_1001DF5C8));

  v4 = UIHostingController.init(rootView:)();
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor:v7];

  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v8 = [v1 view];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [v4 view];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  [v9 addSubview:v10];

  v12 = [v4 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v1 addChildViewController:v4];
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001CE090;
  v15 = [v4 view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v14 + 32) = v21;
  v22 = [v4 view];
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v14 + 40) = v28;
  v29 = [v4 view];
  if (!v29)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v14 + 48) = v35;
  v36 = [v4 view];

  if (!v36)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = [v36 bottomAnchor];

  v38 = [v1 view];
  if (v38)
  {
    v39 = v38;
    v40 = objc_opt_self();
    v41 = [v39 bottomAnchor];

    v42 = [v37 constraintEqualToAnchor:v41];
    *(v14 + 56) = v42;
    sub_1000B128C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v40 activateConstraints:isa];

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_10018391C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_presentationModel;
  v3 = *&v0[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_presentationModel];
  swift_getKeyPath();
  v37 = v3;
  sub_1001701F8();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  if (v5)
  {
    if (qword_10025A730 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F34C(v6, qword_100276FF8);
    v7 = static os_log_type_t.error.getter();
    v8 = Logger.logObject.getter();
    if (!os_log_type_enabled(v8, v7))
    {
      goto LABEL_7;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "refreshKeyboardLayoutTrackingHeight unexpected nil size class";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v8, v7, v10, v9, 2u);

LABEL_7:

    return;
  }

  switch(v4)
  {
    case 0:
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000F34C(v33, qword_100276FF8);
      v7 = static os_log_type_t.error.getter();
      v8 = Logger.logObject.getter();
      if (!os_log_type_enabled(v8, v7))
      {
        goto LABEL_7;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "refreshKeyboardLayoutTrackingHeight for unexpected unspecified size class";
      goto LABEL_6;
    case 2:
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000F34C(v27, qword_100276FF8);
      v28 = static os_log_type_t.default.getter();
      v29 = v1;
      v30 = Logger.logObject.getter();

      if (os_log_type_enabled(v30, v28))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        *(v31 + 4) = 0x4051800000000000;
        _os_log_impl(&_mh_execute_header, v30, v28, "refreshKeyboardLayoutTrackingHeight for UCB height: %f", v31, 0xCu);
      }

      v32 = *&v29[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsDelegate];
      if (v32 && ([v32 respondsToSelector:"updateKeyboardTrackingHeight:"] & 1) != 0)
      {
        [v32 updateKeyboardTrackingHeight:70.0];
      }

      break;
    case 1:
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000F34C(v11, qword_100276FF8);
      v12 = static os_log_type_t.default.getter();
      v13 = v1;
      v14 = Logger.logObject.getter();

      if (os_log_type_enabled(v14, v12))
      {
        v36 = v13;
        v15 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v37 = v35;
        *v15 = 136315138;
        v16 = *&v1[v2];
        swift_getKeyPath();

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v17 = *(v16 + 64);
        v18 = *(v16 + 72);

        v38.width = v17;
        v38.height = v18;
        v19 = NSStringFromCGSize(v38);
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = sub_10002510C(v20, v22, &v37);

        *(v15 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v14, v12, "refreshKeyboardLayoutTrackingHeight for preferred content size: %s", v15, 0xCu);
        sub_10000F4B4(v35);

        v13 = v36;
      }

      v24 = *&v13[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsDelegate];
      if (v24 && ([v24 respondsToSelector:"updateKeyboardTrackingHeight:"] & 1) != 0)
      {
        v25 = *&v1[v2];
        swift_getKeyPath();
        v37 = v25;
        swift_unknownObjectRetain();

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v26 = *(v25 + 72);

        [v24 updateKeyboardTrackingHeight:v26];
        swift_unknownObjectRelease();
      }

      break;
    default:
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000F34C(v34, qword_100276FF8);
      v7 = static os_log_type_t.error.getter();
      v8 = Logger.logObject.getter();
      if (!os_log_type_enabled(v8, v7))
      {
        goto LABEL_7;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "refreshKeyboardLayoutTrackingHeight for unexpected unknown size class";
      goto LABEL_6;
  }
}

id sub_100183F0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullscreenViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100184018(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100184044(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_10018408C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100184118()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v11, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100184274@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a2;
  v3 = sub_10000341C(&qword_100266190, &qword_1001DF6F0);
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  __chkstk_darwin(v3);
  v86 = &v81 - v5;
  v6 = sub_10000341C(&qword_100266198, &qword_1001DF6F8);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  v8 = __chkstk_darwin(v6);
  v91 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = &v81 - v10;
  v11 = type metadata accessor for Divider();
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  v13 = __chkstk_darwin(v11);
  v89 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v88 = &v81 - v15;
  v16 = type metadata accessor for Attachment(0);
  v17 = *(v16 - 8);
  v101 = v16;
  v102 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v87 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000341C(&qword_1002661A0, &unk_1001DF700);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v97 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v96 = &v81 - v24;
  v25 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v81 - v28;
  v30 = sub_10000341C(&qword_1002661A8, &unk_1001DF710);
  v94 = *(v30 - 8);
  v95 = v30;
  v31 = *(v94 + 64);
  v32 = __chkstk_darwin(v30);
  v93 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v81 - v34;
  v36 = swift_allocObject();
  v37 = *(a1 + 80);
  *(v36 + 80) = *(a1 + 64);
  *(v36 + 96) = v37;
  *(v36 + 112) = *(a1 + 96);
  *(v36 + 128) = *(a1 + 112);
  v38 = *(a1 + 16);
  *(v36 + 16) = *a1;
  *(v36 + 32) = v38;
  v39 = *(a1 + 48);
  *(v36 + 48) = *(a1 + 32);
  *(v36 + 64) = v39;
  sub_10018557C(a1, &v113);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  Button.init(action:label:)();
  LOBYTE(v113) = static Edge.Set.all.getter();
  *(&v113 + 1) = 0;
  LOBYTE(v114) = 0;
  sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240);
  sub_1001855B4();
  v92 = v35;
  View.labelStyle<A>(_:)();
  (*(v26 + 8))(v29, v25);
  v40 = sub_100184118();
  swift_getKeyPath();
  *&v113 = v40;
  sub_1001857BC(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v40 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  swift_getKeyPath();
  *&v113 = v41;
  sub_1001857BC(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v42 = *(v41 + 16);

  v43 = *(v42 + 16);
  if (!v43)
  {
LABEL_12:

    v55 = v97;
    v56 = v94;
    v57 = v100;
LABEL_14:
    v58 = v96;
    (*(v98 + 56))(v96, 1, 1, v99);
    v59 = v95;
    goto LABEL_16;
  }

  v44 = 0;
  v45 = v87;
  v46 = &v87[*(v101 + 44)];
  v47 = *(a1 + 64);
  v115 = *(a1 + 48);
  v116 = v47;
  v117 = *(a1 + 80);
  v49 = *(a1 + 16);
  v48 = *(a1 + 32);
  v81 = a1;
  v113 = v49;
  v114 = v48;
  v50 = v42 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  v101 = *(v102 + 72);
  v102 = v43 - 1;
  while (1)
  {
    sub_1000A6690(v50, v45);
    v52 = *v46;
    v51 = *(v46 + 1);
    v109 = v115;
    v110 = v116;
    v111 = v117;
    v107 = v113;
    v108 = v114;
    sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
    Binding.wrappedValue.getter();
    v112[0] = v103;
    v112[1] = v104;
    v112[2] = v105;
    v112[3] = v106;
    v53 = v103;

    sub_10004C65C(v112);
    if (!v51)
    {
      sub_10003D7E8(v45);

      goto LABEL_9;
    }

    if (__PAIR128__(v51, v52) == v53)
    {
      break;
    }

    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10003D7E8(v45);
    if (v54)
    {
      goto LABEL_15;
    }

LABEL_9:
    if (v102 == v44)
    {

      v57 = v100;
      v55 = v97;
      v56 = v94;
      goto LABEL_14;
    }

    ++v44;
    v50 += v101;
    if (v44 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  sub_10003D7E8(v45);
LABEL_15:

  v60 = v88;
  Divider.init()();
  v61 = static Axis.Set.horizontal.getter();
  __chkstk_darwin(v61);
  *(&v81 - 2) = v81;
  sub_10000341C(&qword_1002661C0, &qword_1001DF780);
  sub_100007120(&qword_1002661C8, &qword_1002661C0, &qword_1001DF780);
  v62 = v90;
  ScrollView.init(_:showsIndicators:content:)();
  v63 = v82;
  v64 = v83;
  v65 = *(v82 + 16);
  v66 = v89;
  v65(v89, v60, v83);
  v67 = v84;
  v102 = *(v84 + 16);
  v68 = v62;
  v69 = v85;
  (v102)(v91, v68, v85);
  v70 = v86;
  v65(v86, v66, v64);
  v71 = sub_10000341C(&qword_1002661D0, &qword_1001DF788);
  v72 = v91;
  (v102)(v70 + *(v71 + 48), v91, v69);
  v73 = *(v67 + 8);
  v73(v90, v69);
  v74 = *(v63 + 8);
  v74(v88, v64);
  v73(v72, v69);
  v74(v89, v64);
  v58 = v96;
  sub_100185690(v70, v96);
  (*(v98 + 56))(v58, 0, 1, v99);
  v57 = v100;
  v55 = v97;
  v56 = v94;
  v59 = v95;
LABEL_16:
  v76 = v92;
  v75 = v93;
  v77 = *(v56 + 16);
  v77(v93, v92, v59);
  sub_100185618(v58, v55);
  v77(v57, v75, v59);
  v78 = sub_10000341C(&qword_1002661B8, &qword_1001DF778);
  sub_100185618(v55, &v57[*(v78 + 48)]);
  sub_10000F500(v58, &qword_1002661A0, &unk_1001DF700);
  v79 = *(v56 + 8);
  v79(v76, v59);
  sub_10000F500(v55, &qword_1002661A0, &unk_1001DF700);
  return (v79)(v75, v59);
}

uint64_t sub_100184D98()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_100184E00@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10000341C(&qword_1002661D8, &unk_1001DF790);
  return sub_100184E58(a1, a2 + *(v4 + 44));
}

uint64_t sub_100184E58@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for Attachment(0);
  v30 = *(v31 - 8);
  v3 = *(v30 + 64);
  v4 = __chkstk_darwin(v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v32 = &v27 - v6;
  v7 = sub_100184118();
  swift_getKeyPath();
  *&v37 = v7;
  sub_1001857BC(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  swift_getKeyPath();
  *&v37 = v8;
  sub_1001857BC(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v9 = *(v8 + 16);

  v29 = *(v9 + 16);
  if (v29)
  {
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v14 = *(v30 + 72);
      v15 = v9;
      v16 = v32;
      sub_1000A6690(v9 + v13 + v14 * v11, v32);
      v17 = (v16 + *(v31 + 44));
      v18 = *v17;
      v19 = v17[1];
      v20 = a1[4];
      v39 = a1[3];
      v40 = v20;
      v41 = a1[5];
      v21 = a1[1];
      v38 = a1[2];
      v37 = v21;
      sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
      Binding.wrappedValue.getter();
      v42[0] = v33;
      v42[1] = v34;
      v42[2] = v35;
      v42[3] = v36;
      v22 = v33;

      sub_10004C65C(v42);
      if (v19)
      {
        if (__PAIR128__(v19, v18) == v22)
        {

          v9 = v15;
LABEL_11:
          sub_10003D784(v32, v28);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100163CE0(0, v12[2] + 1, 1);
            v12 = v43;
          }

          v26 = v12[2];
          v25 = v12[3];
          if (v26 >= v25 >> 1)
          {
            sub_100163CE0(v25 > 1, v26 + 1, 1);
            v12 = v43;
          }

          v12[2] = v26 + 1;
          result = sub_10003D784(v28, v12 + v13 + v26 * v14);
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = v15;
        if (v23)
        {
          goto LABEL_11;
        }
      }

      else
      {

        v9 = v15;
      }

      result = sub_10003D7E8(v32);
LABEL_5:
      if (v29 == ++v11)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_17:

  *&v37 = v12;
  sub_10000341C(&qword_10025F848, &qword_1001D50C0);
  type metadata accessor for URL();
  sub_10000341C(&qword_1002661E0, &qword_1001DF7A0);
  sub_100007120(&qword_100265650, &qword_10025F848, &qword_1001D50C0);
  sub_100185700();
  sub_1001857BC(&qword_100265668, type metadata accessor for Attachment);
  return ForEach<>.init(_:content:)();
}

double sub_10018538C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotoAttachmentView();
  sub_1000A6690(a1, a2 + *(v4 + 20));
  type metadata accessor for CompositionModel(0);
  sub_1001857BC(&qword_10025B210, type metadata accessor for CompositionModel);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v5 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a2 + *(sub_10000341C(&qword_1002661E0, &qword_1001DF7A0) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_100185480@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v8[6] = *(v1 + 96);
  v9 = *(v1 + 112);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_10000341C(&qword_100266188, &qword_1001DF6E8);
  return sub_100184274(v8, (a1 + *(v6 + 44)));
}

uint64_t sub_100185504()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[15];

  return _swift_deallocObject(v0, 129, 7);
}

unint64_t sub_1001855B4()
{
  result = qword_1002661B0;
  if (!qword_1002661B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002661B0);
  }

  return result;
}

uint64_t sub_100185618(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002661A0, &unk_1001DF700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100185690(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100266190, &qword_1001DF6F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100185700()
{
  result = qword_1002661E8;
  if (!qword_1002661E8)
  {
    sub_100003E34(&qword_1002661E0, &qword_1001DF7A0);
    sub_1001857BC(&qword_1002661F0, type metadata accessor for PhotoAttachmentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002661E8);
  }

  return result;
}

uint64_t sub_1001857BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100185848()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100185988@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhotoAttachmentView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  Image.init(uiImage:)();
  (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v9);
  v15 = Image.resizable(capInsets:resizingMode:)();

  (*(v10 + 8))(v13, v9);
  sub_100186574(a2, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_100186818(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *a3 = v15;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = sub_10018687C;
  *(a3 + 32) = v17;

  sub_100058574(sub_10018687C);
  sub_1000F3AB4(sub_10018687C);
}

uint64_t sub_100185BB8(uint64_t a1)
{
  v2 = sub_100185848();
  swift_getKeyPath();
  sub_1000637F0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  v4 = type metadata accessor for PhotoAttachmentView();
  sub_100175970(a1 + *(v4 + 20));
}

void sub_100185C68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *(v4 + *(type metadata accessor for Attachment(0) + 36));
  if (v5)
  {
    v6 = objc_allocWithZone(UIImage);
    v7 = v5;
    v8 = [v6 initWithCGImage:v7];
    v5 = static Alignment.center.getter();
    v10 = v9;
    sub_100185988(v8, v2, v16);

    v11 = v16[0];
    v12 = v16[1];
    v13 = v19;
    LOBYTE(v16[0]) = v17;
    v14 = 256;
    if (!v18)
    {
      v14 = 0;
    }

    v15 = v14 | v17;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v15 = 0;
    v13 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v13;
}

char *sub_100185D60()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for PlatformCloseButton();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v3[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform];
  v5 = *&v3[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform];
  v6 = *&v3[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform + 8];
  *v4 = v1;
  v4[1] = v2;
  sub_100058574(v1);
  sub_1000F3AB4(v5);
  return v3;
}

uint64_t sub_100185DDC(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = (a1 + OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform);
  v5 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform);
  v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform + 8);
  *v4 = v3;
  v4[1] = v2;
  sub_100058574(v3);

  return sub_1000F3AB4(v5);
}

uint64_t sub_100185E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100186AFC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100185E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100186AFC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100185EF8()
{
  sub_100186AFC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *sub_100185F20(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_perform];
  *v10 = 0;
  *(v10 + 1) = 0;
  result = [objc_opt_self() roundButtonWithStyle:0];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_closeButton] = result;
    v16.receiver = v4;
    v16.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
    v13 = OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_closeButton;
    v14 = *&v12[OBJC_IVAR____TtC21WritingToolsUIService19PlatformCloseButton_closeButton];
    v15 = v12;
    [v14 addTarget:v15 action:"didTapCloseButton" forControlEvents:64];
    [v15 addSubview:*&v12[v13]];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001862D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Attachment(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100186390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for Attachment(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PhotoAttachmentView()
{
  result = qword_100266298;
  if (!qword_100266298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018647C()
{
  sub_100186500();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Attachment(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100186500()
{
  if (!qword_10025DE18)
  {
    type metadata accessor for CompositionModel(255);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10025DE18);
    }
  }
}

uint64_t sub_100186574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoAttachmentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001865D8()
{
  v1 = (type metadata accessor for PhotoAttachmentView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v0 + v3 + v1[7];
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = type metadata accessor for Attachment(0);
  v9 = *(v6 + v8[5] + 8);

  v10 = v8[6];
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = *(v6 + v8[8] + 8);

  v14 = v8[10];
  v15 = sub_10000341C(&qword_100265E48, &qword_1001DEEF8);
  if (!(*(*(v15 - 8) + 48))(v6 + v14, 1, v15))
  {
    v16 = type metadata accessor for DocumentResourceIdentifier();
    (*(*(v16 - 8) + 8))(v6 + v14, v16);
  }

  v17 = *(v6 + v8[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100186818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoAttachmentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018687C()
{
  v1 = *(type metadata accessor for PhotoAttachmentView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100185BB8(v2);
}

uint64_t sub_1001868E4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001868FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100186958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1001869BC()
{
  result = qword_1002662D0;
  if (!qword_1002662D0)
  {
    sub_100003E34(&qword_1002662D8, &qword_1001DF8B8);
    sub_100186A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002662D0);
  }

  return result;
}

unint64_t sub_100186A40()
{
  result = qword_1002662E0;
  if (!qword_1002662E0)
  {
    sub_100003E34(&qword_1002662E8, &qword_1001DF8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002662E0);
  }

  return result;
}

unint64_t sub_100186AA8()
{
  result = qword_1002662F0;
  if (!qword_1002662F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002662F0);
  }

  return result;
}

unint64_t sub_100186AFC()
{
  result = qword_1002662F8;
  if (!qword_1002662F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002662F8);
  }

  return result;
}

uint64_t sub_100186C30(void *a1)
{
  v2 = v1;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F08);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138739971;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "contact picker picked contact: %{sensitive}@", v8, 0xCu);
    sub_100186D9C(v9);
  }

  v11 = v2 + OBJC_IVAR____TtCV21WritingToolsUIService17ContactPickerView11Coordinator_onSelectContact;
  v12 = *(v2 + OBJC_IVAR____TtCV21WritingToolsUIService17ContactPickerView11Coordinator_onSelectContact);
  v13 = *(v11 + 8);

  v12(v5);
}

uint64_t sub_100186D9C(uint64_t a1)
{
  v2 = sub_10000341C(&unk_10025D580, &qword_1001CFA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100186E04()
{
  _StringGuts.grow(_:)(637);
  v0._countAndFlagsBits = 0xD0000000000000DDLL;
  v0._object = 0x80000001001EA3B0;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0xD000000000000080;
  v1._object = 0x80000001001EA490;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  v2._object = 0x80000001001EA520;
  v2._countAndFlagsBits = 0xD000000000000036;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0xD0000000000000E4;
  v3._object = 0x80000001001EA560;
  String.append(_:)(v3);
  return 0;
}

uint64_t sub_100186F48()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_1002772D8);
  sub_10000F34C(v0, qword_1002772D8);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  v1 = *(type metadata accessor for Schema.Field() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1001CF9E0;
  Schema.Field.init<A>(name:description:type:)();
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_10018B50C(&qword_1002664D8);
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_100187110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_10000341C(&qword_100266520, &qword_1001E00F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_10018ABE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    sub_10018B50C(&qword_100260F68);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1001872D8()
{
  if (*v0)
  {
    result = 0x656D656E69666572;
  }

  else
  {
    result = 2036625250;
  }

  *v0;
  return result;
}

uint64_t sub_100187314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2036625250 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D656E69666572 && a2 == 0xEB0000000073746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001873F4(uint64_t a1)
{
  v2 = sub_10018ABE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100187430(uint64_t a1)
{
  v2 = sub_10018ABE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018746C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018A3E8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1001874E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    sub_10018B50C(&qword_1002664D8);
    GeneratedValues.extract<A>(field:)();
    v7 = type metadata accessor for GeneratedValues();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v8;
  }

  return result;
}

uint64_t sub_100187688()
{
  swift_getKeyPath();
  v4 = v0;
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_100187724@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1001877BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018A27C(&qword_100266480);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100187908()
{
  swift_getKeyPath();
  v4 = v0;
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_1001879A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_100187A3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018A27C(&qword_100266480);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100187B88()
{
  swift_getKeyPath();
  v4 = v0;
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_100187C24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_100187CBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (v6 = *(v2 + 56), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018A27C(&qword_100266480);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100187E08()
{
  swift_getKeyPath();
  v4 = v0;
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 64);
  v1 = *(v4 + 72);

  return v2;
}

uint64_t sub_100187EA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_100187F3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (v6 = *(v2 + 72), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10018A27C(&qword_100266480);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100188088()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_1002772F0);
  sub_10000F34C(v0, qword_1002772F0);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  v1 = *(type metadata accessor for Schema.Field() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1001CF9E0;
  Schema.Field.init<A>(name:description:type:)();
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_100188208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000341C(&qword_100266538, &qword_1001E00F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_10018B644();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001883A4()
{
  if (*v0)
  {
    result = 0x74706D6F7270;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_1001883D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001884AC(uint64_t a1)
{
  v2 = sub_10018B644();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001884E8(uint64_t a1)
{
  v2 = sub_10018B644();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100188568@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    v7 = type metadata accessor for GeneratedValues();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v8;
    a2[3] = v9;
  }

  return result;
}

uint64_t sub_1001886CC()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = OBJC_IVAR____TtC21WritingToolsUIService11SummaryTool___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummaryTool()
{
  result = qword_1002663C0;
  if (!qword_1002663C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001887DC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10018887C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v3[2] = *a2;
  v3[3] = v4;
  v5 = a2[3];
  v3[4] = a2[2];
  v3[5] = v5;
  v3[6] = *v2;

  return _swift_task_switch(sub_100188904, 0, 0);
}

uint64_t sub_100188904()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_100187CBC(v0[2], v0[3]);
  sub_100187F3C(v3, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100188984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to Tooling.invoke(arguments:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002B2A0;

  return Tooling.invoke(arguments:)(a1, a2, a3, a4);
}

uint64_t sub_100188A48()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_100188AE4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10018A27C(&qword_100266480);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_100188B80(uint64_t a1)
{
  v2 = sub_10018A27C(&qword_100266488);

  return Tooling.argumentsSchema.getter(a1, v2);
}

uint64_t sub_100188BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Tooling.invoke(arguments:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = sub_10018A27C(&qword_100266488);
  *v8 = v3;
  v8[1] = sub_100028688;

  return Tooling.invoke(arguments:)(a1, a2, a3, v9);
}

uint64_t sub_100188CC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x74786554676E6F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6F746F6870;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x78655474726F6873;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  v7 = 0xE800000000000000;
  v8 = 0x74786554676E6F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6F746F6870;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x78655474726F6873;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000074;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100188DC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100188E68()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100188EF8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100188F98@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018A610(*a1);
  *a2 = result;
  return result;
}

void sub_100188FC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0xE800000000000000;
  v5 = 0x74786554676E6F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6F746F6870;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x78655474726F6873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001890E8()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_100277308);
  sub_10000F34C(v0, qword_100277308);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  v1 = *(type metadata accessor for Schema.Field() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1001CF9F0;
  Schema.Field.init<A>(name:type:)();
  Schema.Field.init<A>(name:type:)();
  sub_10018A84C();
  Schema.Field.init<A>(name:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_100189270(void *a1)
{
  v3 = v1;
  v5 = sub_10000341C(&qword_100266560, &qword_1001E0108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_10018B698();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v16[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16[13] = *(v3 + 32);
    v16[12] = 2;
    sub_10018B740();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100189450()
{
  v1 = 0x7972657571;
  if (*v0 != 1)
  {
    v1 = 0x6570795461746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1001894A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018AC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001894D4(uint64_t a1)
{
  v2 = sub_10018B698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189510(uint64_t a1)
{
  v2 = sub_10018B698();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10018954C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018AD4C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1001895AC()
{
  v0 = type metadata accessor for JSONEncoder.OutputFormatting();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = JSONEncoder.init()();
  (*(v3 + 104))(v6, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v2);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  result = dispatch thunk of JSONEncoder.outputFormatting.setter();
  qword_100277320 = v10;
  return result;
}

uint64_t sub_1001896FC()
{
  v0 = type metadata accessor for Schema();
  sub_10002B2EC(v0, qword_100277328);
  sub_10000F34C(v0, qword_100277328);
  sub_10000341C(&qword_10025F6A0, &qword_1001D4E80);
  v1 = *(type metadata accessor for Schema.Field() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1001CF9D0;
  sub_10000341C(&qword_100266508, &qword_1001E00E8);
  sub_10018B578(&qword_100266528, sub_10018B5F0);
  Schema.Field.init<A>(name:description:type:)();
  return Schema.init(fields:)();
}

uint64_t sub_100189884(void *a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002664F8, &qword_1001E00E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_10018B464();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10000341C(&qword_100266508, &qword_1001E00E8);
  sub_10018B578(&qword_100266510, sub_10018B4B8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100189A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574736575716572 && a2 == 0xED00006F666E4964)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100189AD0(uint64_t a1)
{
  v2 = sub_10018B464();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100189B0C(uint64_t a1)
{
  v2 = sub_10018B464();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100189B88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10000341C(&qword_100266508, &qword_1001E00E8);
  sub_10018B578(&qword_100266528, sub_10018B5F0);
  GeneratedValues.extract<A>(field:)();
  v5 = type metadata accessor for GeneratedValues();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_100189CC4(uint64_t a1, uint64_t *a2)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_100189D84;

  return sub_10018AFAC(v4, v6);
}

uint64_t sub_100189D84(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_100189EA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_100189ED0(uint64_t a1)
{
  v2 = sub_10009A590();

  return Tooling.argumentsSchema.getter(a1, v2);
}

uint64_t sub_100189F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Tooling.invoke(arguments:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = sub_10009A590();
  *v8 = v3;
  v8[1] = sub_10002B2A0;

  return Tooling.invoke(arguments:)(a1, a2, a3, v9);
}

uint64_t sub_100189FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10018A340();
  v5 = sub_10018A394();

  return static CaseIterable<>.schema.getter(a1, a2, v4, v5);
}

uint64_t sub_10018A048()
{
  sub_10018A340();
  sub_10018A394();
  return CaseIterable<>.init(from:)();
}

double sub_10018A0D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10018A65C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_10018A158()
{
  result = qword_100266470;
  if (!qword_100266470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266470);
  }

  return result;
}

unint64_t sub_10018A1B0()
{
  result = qword_100266478;
  if (!qword_100266478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266478);
  }

  return result;
}

uint64_t sub_10018A220()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 72);
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

uint64_t sub_10018A27C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SummaryTool();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10018A2F8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

unint64_t sub_10018A340()
{
  result = qword_100266490;
  if (!qword_100266490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266490);
  }

  return result;
}

unint64_t sub_10018A394()
{
  result = qword_100266498;
  if (!qword_100266498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266498);
  }

  return result;
}

uint64_t sub_10018A3E8(uint64_t *a1)
{
  v3 = sub_10000341C(&qword_1002664E0, &qword_1001E00D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_10018ABE4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
    v10[15] = 1;
    sub_10018B50C(&qword_1002664F0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000F4B4(a1);
  return v8;
}

unint64_t sub_10018A610(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10024AC90, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10018A65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  GeneratedValues.extract<A>(field:)();
  if (v2)
  {
    v5 = type metadata accessor for GeneratedValues();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    GeneratedValues.extract<A>(field:)();
    sub_10018A84C();
    GeneratedValues.extract<A>(field:)();
    v7 = type metadata accessor for GeneratedValues();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v8;
  }

  return result;
}

unint64_t sub_10018A84C()
{
  result = qword_1002664A0;
  if (!qword_1002664A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664A0);
  }

  return result;
}

uint64_t sub_10018A8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018A8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018A954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018A99C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018AA20()
{
  result = qword_1002664A8;
  if (!qword_1002664A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664A8);
  }

  return result;
}

unint64_t sub_10018AA78()
{
  result = qword_1002664B0;
  if (!qword_1002664B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664B0);
  }

  return result;
}

unint64_t sub_10018AAD0()
{
  result = qword_1002664B8;
  if (!qword_1002664B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664B8);
  }

  return result;
}

unint64_t sub_10018AB28()
{
  result = qword_1002664C0;
  if (!qword_1002664C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664C0);
  }

  return result;
}

unint64_t sub_10018AB80()
{
  result = qword_1002664C8;
  if (!qword_1002664C8)
  {
    sub_100003E34(&qword_1002664D0, &qword_1001E0088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664C8);
  }

  return result;
}

unint64_t sub_10018ABE4()
{
  result = qword_1002664E8;
  if (!qword_1002664E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002664E8);
  }

  return result;
}

uint64_t sub_10018AC38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10018AD4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000341C(&qword_100266548, &qword_1001E0100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_10018B698();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000F4B4(a1);
  }

  v25 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v14;
  v22 = 2;
  sub_10018B6EC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  result = sub_10000F4B4(a1);
  *a2 = v21;
  *(a2 + 8) = v13;
  v17 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_10018AFAC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 136) = v5;
  *v5 = v2;
  v5[1] = sub_10018B0A0;

  return v7(a1);
}

uint64_t sub_10018B0A0(uint64_t a1)
{
  v3 = *(*v2 + 136);
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10018B1D4, 0, 0);
  }
}

uint64_t sub_10018B1D4()
{
  if (qword_10025A880 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  *(v0 + 128) = *(v0 + 144);
  sub_10004DBF8();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  v5 = *(v0 + 144);

  if (v1)
  {
    v6 = *(v0 + 8);

    return v6();
  }

  sub_10004DC4C(v2, v4);
  v8 = sub_100097014(v2, v4);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    sub_10004DD08(v2, v4);
LABEL_15:
    sub_10004DD08(v2, v4);
    goto LABEL_16;
  }

  *(v0 + 96) = v2;
  *(v0 + 104) = v4;
  sub_10004DC4C(v2, v4);
  sub_10000341C(&qword_10025F350, &unk_1001D40F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10004DD08(v2, v4);
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_10004DCA0(v0 + 56);
LABEL_14:
    v10 = sub_100095E84(v2, v4);
    v11 = v15;
    goto LABEL_15;
  }

  sub_100008198((v0 + 56), v0 + 16);
  v12 = *(v0 + 48);
  sub_100027874((v0 + 16), *(v0 + 40));
  HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
  sub_10004DD08(v2, v4);
  if ((HasContiguous & 1) == 0)
  {
    sub_10000F4B4((v0 + 16));
    goto LABEL_14;
  }

  v14 = *(v0 + 48);
  sub_100027874((v0 + 16), *(v0 + 40));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_10004DD08(v2, v4);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_10000F4B4((v0 + 16));
LABEL_16:
  v16 = *(v0 + 8);

  return v16(v10, v11);
}

unint64_t sub_10018B464()
{
  result = qword_100266500;
  if (!qword_100266500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266500);
  }

  return result;
}

unint64_t sub_10018B4B8()
{
  result = qword_100266518;
  if (!qword_100266518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266518);
  }

  return result;
}

uint64_t sub_10018B50C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(&qword_10025CC10, &qword_1001D1FB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10018B578(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(&qword_100266508, &qword_1001E00E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018B5F0()
{
  result = qword_100266530;
  if (!qword_100266530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266530);
  }

  return result;
}

unint64_t sub_10018B644()
{
  result = qword_100266540;
  if (!qword_100266540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266540);
  }

  return result;
}

unint64_t sub_10018B698()
{
  result = qword_100266550;
  if (!qword_100266550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266550);
  }

  return result;
}

unint64_t sub_10018B6EC()
{
  result = qword_100266558;
  if (!qword_100266558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266558);
  }

  return result;
}

unint64_t sub_10018B740()
{
  result = qword_100266568;
  if (!qword_100266568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266568);
  }

  return result;
}

unint64_t sub_10018B7DC()
{
  result = qword_100266570;
  if (!qword_100266570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266570);
  }

  return result;
}

unint64_t sub_10018B834()
{
  result = qword_100266578;
  if (!qword_100266578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266578);
  }

  return result;
}

unint64_t sub_10018B88C()
{
  result = qword_100266580;
  if (!qword_100266580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266580);
  }

  return result;
}

unint64_t sub_10018B8E4()
{
  result = qword_100266588;
  if (!qword_100266588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266588);
  }

  return result;
}

unint64_t sub_10018B93C()
{
  result = qword_100266590;
  if (!qword_100266590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266590);
  }

  return result;
}

unint64_t sub_10018B994()
{
  result = qword_100266598;
  if (!qword_100266598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266598);
  }

  return result;
}

unint64_t sub_10018B9EC()
{
  result = qword_1002665A0;
  if (!qword_1002665A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665A0);
  }

  return result;
}

unint64_t sub_10018BA44()
{
  result = qword_1002665A8;
  if (!qword_1002665A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665A8);
  }

  return result;
}

unint64_t sub_10018BA9C()
{
  result = qword_1002665B0;
  if (!qword_1002665B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665B0);
  }

  return result;
}

unint64_t sub_10018BAF4()
{
  result = qword_1002665B8;
  if (!qword_1002665B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665B8);
  }

  return result;
}

unint64_t sub_10018BB4C()
{
  result = qword_1002665C0;
  if (!qword_1002665C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665C0);
  }

  return result;
}

unint64_t sub_10018BBA4()
{
  result = qword_1002665C8;
  if (!qword_1002665C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665C8);
  }

  return result;
}

uint64_t sub_10018BC14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018BC5C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10018BCB4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10018BCCC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10018BCE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018BD30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018BD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v49 = sub_10000341C(&qword_1002665F0, &qword_1001E0750);
  v48 = *(v49 - 8);
  v3 = *(v48 + 64);
  __chkstk_darwin(v49);
  v5 = &v45 - v4;
  v6 = sub_10000341C(&qword_1002665F8, &unk_1001E0758);
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  v8 = __chkstk_darwin(v6);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v45 - v10;
  v11 = sub_10000341C(&qword_1002600B0, &qword_1001DA0A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = sub_10000341C(&qword_100266600, &unk_1001E0768);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v46 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v45 - v20;
  v22 = *(a1 + 18) == 1;
  v45 = &v45 - v20;
  if (v22)
  {
    sub_100003734(a1, &v54);
    v23 = swift_allocObject();
    v24 = v57;
    v23[3] = v56;
    v23[4] = v24;
    v23[5] = v58;
    v25 = v55;
    v23[1] = v54;
    v23[2] = v25;
    sub_10000341C(&qword_1002600B8, &qword_1001D56E0);
    sub_1000AF918();
    Button.init(action:label:)();
    (*(v12 + 32))(v21, v15, v11);
    (*(v12 + 56))(v21, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(&v45 - v20, 1, 1, v11);
  }

  v27 = *(a1 + 8);
  v28 = *(a1 + 16);
  *&v54 = *a1;
  v26 = v54;
  *(&v54 + 1) = v27;
  LOBYTE(v55) = v28;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.projectedValue.getter();
  v29 = *(a1 + 17);
  v30 = *(a1 + 24);
  v31 = *(a1 + 32);
  v54 = v59;
  LOBYTE(v55) = v60;
  BYTE1(v55) = v29;
  *(&v55 + 1) = v30;
  *&v56 = v31;
  *&v59 = v26;
  *(&v59 + 1) = v27;
  v60 = v28;

  FocusState.Binding.projectedValue.getter();
  v32 = sub_10018CA54();
  View.focused(_:)();

  type metadata accessor for IntelligenceUI.PromptEntryView();
  *&v54 = &type metadata for OpenEndedAdjustmentView;
  *(&v54 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v47;
  v34 = v49;
  View.representablePreferredFocusableView<A>(_:resolver:)();
  (*(v48 + 8))(v5, v34);
  v35 = v45;
  v36 = v46;
  sub_1000081F8(v45, v46, &qword_100266600, &unk_1001E0768);
  v38 = v50;
  v37 = v51;
  v39 = *(v51 + 16);
  v40 = v52;
  v39(v50, v33, v52);
  v41 = v53;
  sub_1000081F8(v36, v53, &qword_100266600, &unk_1001E0768);
  v42 = sub_10000341C(&qword_100266608, &unk_1001E0778);
  v39((v41 + *(v42 + 48)), v38, v40);
  v43 = *(v37 + 8);
  v43(v33, v40);
  sub_10000F500(v35, &qword_100266600, &unk_1001E0768);
  v43(v38, v40);
  return sub_10000F500(v36, &qword_100266600, &unk_1001E0768);
}

uint64_t sub_10018C370(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v10 = *a1;
  v11 = v3;
  v12 = v4;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if (v9 == 1)
  {
    v10 = v2;
    v11 = v3;
    v12 = v4;

    FocusState.Binding.wrappedValue.getter();
    FocusState.Binding.wrappedValue.setter();
  }

  sub_1000081F8(a1 + 40, &v10, &unk_10025B1C0, &unk_1001CFA90);
  if (!v13)
  {
    return sub_10000F500(&v10, &unk_10025B1C0, &unk_1001CFA90);
  }

  v5 = sub_100027874(&v10, v13);
  if (qword_10025A620 != -1)
  {
    v8 = v5;
    swift_once();
    v5 = v8;
  }

  v6 = *v5;
  sub_100009C54(qword_100276E30);
  return sub_10000F4B4(&v10);
}

uint64_t sub_10018C4E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = a1 + *(sub_10000341C(&unk_100262F20, &qword_1001D56F8) + 36);
  TintShapeStyle.init()();
  *a1 = v2;
  v4 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(sub_10000341C(&unk_100262F10, &qword_1001D56F0) + 36));
  *v6 = KeyPath;
  v6[1] = v4;
  LOBYTE(v4) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_10000341C(&unk_100262F00, &qword_1001D56E8) + 36);
  *v15 = v4;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  v16 = qword_100277168;
  v17 = static Alignment.center.getter();
  v19 = v18;
  v20 = a1 + *(sub_10000341C(&qword_1002600B8, &qword_1001D56E0) + 36);
  *v20 = v16;
  *(v20 + 4) = 256;
  *(v20 + 2) = v17;
  *(v20 + 3) = v19;
}

uint64_t sub_10018C66C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000341C(&qword_1002665D8, &qword_1001E0738);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_10000341C(&qword_1002665E0, &qword_1001E0740);
  sub_10018BD94(v1, &v6[*(v7 + 44)]);
  *(v1 + 18);
  v8 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10018CAC4(v6, a1);
  result = sub_10000341C(&qword_1002665E8, &qword_1001E0748);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

void sub_10018C794()
{
  v0 = type metadata accessor for UIPromptBackgroundView.Configuration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_projectBox();
  v6 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  dispatch thunk of UIPromptBackgroundView.configuration.setter();
}

id sub_10018C8AC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  v8 = v1[3];
  v7 = v1[4];
  v9 = type metadata accessor for OpenEndedAdjustmentViewCoordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC21WritingToolsUIService34OpenEndedAdjustmentViewCoordinator_owner];
  *v11 = v3;
  *(v11 + 1) = v4;
  v11[16] = v5;
  v11[17] = v6;
  *(v11 + 3) = v8;
  *(v11 + 4) = v7;
  v13.receiver = v10;
  v13.super_class = v9;

  result = objc_msgSendSuper2(&v13, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10018C960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10018D9D4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10018C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10018D9D4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10018CA28()
{
  sub_10018D9D4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10018CA54()
{
  result = qword_1002665D0;
  if (!qword_1002665D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002665D0);
  }

  return result;
}

uint64_t sub_10018CAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002665D8, &qword_1001E0738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018CB34()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  if (v0[10])
  {
    sub_10000F4B4(v0 + 7);
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10018CB94@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10018CBC0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10018CBEC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_10018CC18(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

void sub_10018CC44(void *a1, uint64_t a2, void **a3, uint64_t a4, int a5, char a6)
{
  LODWORD(v88) = a5;
  v86 = a3;
  v87 = a4;
  v8 = sub_10000341C(&unk_1002628E8, &unk_1001E07C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v80 = &v69 - v10;
  v11 = type metadata accessor for UIButton.Configuration();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = *(v84 + 64);
  __chkstk_darwin(v11);
  v82 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for IntelligenceUI.PromptEntryView.PlaceholderConfiguration();
  v81 = *(v83 - 8);
  v14 = *(v81 + 64);
  v15 = __chkstk_darwin(v83);
  v78 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v69 - v17;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v18 - 8);
  v77 = v18;
  v19 = *(v76 + 64);
  __chkstk_darwin(v18);
  v74 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchQoS();
  v73 = *(v75 - 8);
  v21 = *(v73 + 64);
  __chkstk_darwin(v75);
  v72 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for UIPromptBackgroundView.FillStyle();
  v70 = *(v71 - 8);
  v23 = *(v70 + 64);
  v24 = __chkstk_darwin(v71);
  v26 = (&v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = &v69 - v27;
  v29 = type metadata accessor for UIPromptBackgroundView.Configuration();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v69 - v35;
  v37 = IntelligenceUI.PromptEntryView.trailingButton.getter();
  [v37 setNeedsUpdateConfiguration];

  v38 = IntelligenceUI.PromptEntryView.textView.getter();
  [v38 setSelectable:1];

  v39 = IntelligenceUI.PromptEntryView.textView.getter();
  [v39 setEditable:1];

  [a1 setUserInteractionEnabled:a6 & 1];
  dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.setter();
  aBlock = v86;
  v90 = v87;
  LOBYTE(v91) = v88;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if (v95 == 1)
  {
    v40 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
    dispatch thunk of UIPromptBackgroundView.configuration.getter();

    static UIPromptBackgroundView.Configuration.intelligent.getter();
    sub_10018D98C(&unk_100262900, &type metadata accessor for UIPromptBackgroundView.Configuration);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v42 = *(v30 + 8);
    v42(v34, v29);
    v42(v36, v29);
    if ((v41 & 1) == 0)
    {
      v43 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      static UIPromptBackgroundView.Configuration.intelligent.getter();
      dispatch thunk of UIPromptBackgroundView.configuration.setter();
    }
  }

  else
  {
    v44 = swift_allocBox();
    static UIPromptBackgroundView.Configuration.default.getter();
    if (a6)
    {
      if (qword_10025A808 != -1)
      {
        swift_once();
      }

      v45 = v71;
      v46 = sub_10000F34C(v71, qword_1002771B8);
      (*(v70 + 16))(v28, v46, v45);
    }

    else
    {
      v47 = [objc_opt_self() _textFieldDisabledBackgroundColor];
      if (!v47)
      {
        __break(1u);
        return;
      }

      *v26 = v47;
      (*(v70 + 104))(v26, enum case for UIPromptBackgroundView.FillStyle.solid(_:), v71);
    }

    UIPromptBackgroundView.Configuration.fillStyle.setter();
    UIPromptBackgroundView.Configuration.shadowRadius.setter();
    v48 = objc_opt_self();
    v49 = [v48 clearColor];
    UIPromptBackgroundView.Configuration.shadowColor.setter();
    sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
    v50 = static OS_dispatch_queue.main.getter();
    v51 = swift_allocObject();
    *(v51 + 16) = a1;
    *(v51 + 24) = v44;
    v93 = sub_10018D718;
    v94 = v51;
    aBlock = _NSConcreteStackBlock;
    v90 = 1107296256;
    v91 = sub_1001256BC;
    v92 = &unk_100251FC8;
    v52 = _Block_copy(&aBlock);
    a1;

    v53 = v72;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10018D98C(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags);
    v88 = v44;
    sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
    sub_100007120(&qword_100262470, &unk_10025D5E0, &qword_1001DAE20);
    v54 = v74;
    v55 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);

    (*(v76 + 8))(v54, v55);
    (*(v73 + 8))(v53, v75);
    sub_1000081B0(0, &qword_100262510, UIColor_ptr);
    if (qword_10025A7D0 != -1)
    {
      swift_once();
    }

    UIColor.init(_:)();
    v56 = v79;
    IntelligenceUI.PromptEntryView.PlaceholderConfiguration.init(textColor:)();
    v57 = v81;
    v58 = v83;
    (*(v81 + 16))(v78, v56, v83);
    dispatch thunk of IntelligenceUI.PromptEntryView.placeholderConfiguration.setter();
    v59 = v82;
    static UIButton.Configuration.borderless()();
    v60 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle2];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    sub_100125454(0);
    v61 = String._bridgeToObjectiveC()();

    v62 = [objc_opt_self() _systemImageNamed:v61];

    UIButton.Configuration.image.setter();
    v63 = [v48 secondaryLabelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v64 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    v66 = v84;
    v65 = v85;
    v67 = v80;
    (*(v84 + 16))(v80, v59, v85);
    (*(v66 + 56))(v67, 0, 1, v65);
    UIButton.configuration.setter();

    v68 = IntelligenceUI.PromptEntryView.textView.getter();
    [v68 setKeyboardAppearance:13];

    (*(v66 + 8))(v59, v65);
    (*(v57 + 8))(v56, v58);
  }
}

uint64_t sub_10018D6D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10018D718()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10018C794();
}

uint64_t sub_10018D720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10018D738()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  type metadata accessor for IntelligenceUI.PromptEntryView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  dispatch thunk of IntelligenceUI.PromptEntryView.placeholder.setter();
  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonVisible.setter();
  v5 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  [v5 setConfigurationUpdateHandler:0];

  v6 = IntelligenceUI.PromptEntryView.leadingButton.getter();
  [v6 setUserInteractionEnabled:0];

  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonConfiguredAsToggle.setter();
  dispatch thunk of IntelligenceUI.PromptEntryView.trailingButtonActivatesDictationWhenEmpty.setter();
  sub_10000341C(&qword_100262918, &qword_1001E07D0);
  sub_100007120(&qword_100262920, &qword_100262918, &qword_1001E07D0);
  dispatch thunk of IntelligenceUI.PromptEntryView.visibleLineLimit.setter();
  sub_10000341C(&qword_100266610, &qword_1001E07D8);
  UIViewRepresentableContext.coordinator.getter();
  sub_10018D98C(&qword_100266618, type metadata accessor for OpenEndedAdjustmentViewCoordinator);
  dispatch thunk of IntelligenceUI.PromptEntryView.delegate.setter();
  return v4;
}

uint64_t sub_10018D98C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10018D9D4()
{
  result = qword_100266620;
  if (!qword_100266620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266620);
  }

  return result;
}

unint64_t sub_10018DA2C()
{
  result = qword_100266628;
  if (!qword_100266628)
  {
    sub_100003E34(&qword_1002665E8, &qword_1001E0748);
    sub_100007120(&unk_100266630, &qword_1002665D8, &qword_1001E0738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266628);
  }

  return result;
}

uint64_t (*sub_10018DAE4())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1000284C4();
  EnvironmentValues.subscript.getter();
  *(swift_allocObject() + 16) = v1;
  return sub_10018DB88;
}

uint64_t sub_10018DB50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018DB88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4;
  return v5(v8);
}

uint64_t sub_10018DC20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000341C(&qword_100266640, &qword_1001E0920);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v36 - v8;
  v10 = sub_10000341C(&qword_100266648, &qword_1001E0928);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = v36 - v13;
  v15 = sub_10000341C(&qword_100266650, &qword_1001E0930);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = v36 - v18;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4040000000000000;
  v9[16] = 0;
  v20 = sub_10000341C(&qword_100266658, &qword_1001E0938);
  sub_10018DEDC(a1, a2 & 1, &v9[*(v20 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v9, v14, &qword_100266640, &qword_1001E0920);
  v21 = &v14[*(v11 + 44)];
  v22 = v36[5];
  *(v21 + 4) = v36[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v36[6];
  v23 = v36[1];
  *v21 = v36[0];
  *(v21 + 1) = v23;
  v24 = v36[3];
  *(v21 + 2) = v36[2];
  *(v21 + 3) = v24;
  LOBYTE(v9) = static Edge.Set.horizontal.getter();
  sub_10002A894(v14, v19, &qword_100266648, &qword_1001E0928);
  v25 = &v19[*(v16 + 44)];
  *v25 = v9;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  LOBYTE(v9) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10002A894(v19, a3, &qword_100266650, &qword_1001E0930);
  result = sub_10000341C(&unk_100266660, &unk_1001E0940);
  v35 = a3 + *(result + 36);
  *v35 = v9;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_10018DEDC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a1;
  v4 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v43 = &v37 - v6;
  v7 = sub_10000341C(&unk_100266670, &qword_1001E0950);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v37 - v12;
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x20656C62616E45;
  v15._object = 0xE700000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  v16._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v16);

  v17._object = 0x80000001001EA990;
  v17._countAndFlagsBits = 0xD000000000000025;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  LocalizedStringKey.init(stringInterpolation:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v39 = v19;
  v40 = v18;
  v38 = v20;
  v49 = v21;
  KeyPath = swift_getKeyPath();
  if (qword_10025A7C8 != -1)
  {
    swift_once();
  }

  v37 = qword_100277178;

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x20705520746553;
  v22._object = 0xE700000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
  v23._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v23);

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
  LocalizedStringKey.init(stringInterpolation:)();
  v25 = swift_allocObject();
  *(v25 + 16) = v42;
  *(v25 + 24) = v41 & 1;

  v26 = v43;
  Button<>.init(_:action:)();
  v50 = 0;
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  sub_10018E5E8();
  v27 = v48;
  v28 = v45;
  View.buttonStyle<A>(_:)();
  (*(v44 + 8))(v26, v28);
  v29 = v8[2];
  v30 = v46;
  v29(v46, v27, v7);
  v32 = v39;
  v31 = v40;
  *a3 = v40;
  *(a3 + 8) = v32;
  LOBYTE(v26) = v38 & 1;
  *(a3 + 16) = v38 & 1;
  v33 = KeyPath;
  *(a3 + 24) = v49;
  *(a3 + 32) = v33;
  *(a3 + 40) = 1;
  *(a3 + 48) = v37;
  v34 = sub_10000341C(&unk_100266688, &unk_1001E0988);
  v29((a3 + *(v34 + 48)), v30, v7);
  sub_100007D98(v31, v32, v26);
  v35 = v8[1];

  v35(v48, v7);
  v35(v30, v7);
  sub_10002A984(v31, v32, v26);
}

uint64_t sub_10018E3CC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    a1 = v14;
  }

  swift_getKeyPath();
  v14 = a1;
  sub_1000637F0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if ([Strong respondsToSelector:"enrollmentBegan"])
    {
      [v11 enrollmentBegan];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10018E5A4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_10018E5E8()
{
  result = qword_100266680;
  if (!qword_100266680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266680);
  }

  return result;
}

uint64_t sub_10018E6B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018E73C()
{
  result = qword_1002666A8;
  if (!qword_1002666A8)
  {
    sub_100003E34(&qword_100266648, &qword_1001E0928);
    sub_100007120(&unk_1002666B0, &qword_100266640, &qword_1001E0920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002666A8);
  }

  return result;
}

uint64_t sub_10018E7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v57 = sub_10000341C(&qword_1002666C8, &unk_1001E0B48);
  v56 = *(v57 - 8);
  v3 = *(v56 + 64);
  __chkstk_darwin(v57);
  v54 = &v47 - v4;
  v5 = sub_10000341C(&qword_10025A990, &qword_1001CE170);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v47 - v7;
  v9 = sub_10000341C(&qword_1002666D0, &qword_1001E0B58);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v47 - v11;
  *(&v47 - v11) = 0x4010000000000000;
  v13 = sub_10000341C(&qword_1002666D8, &qword_1001E0B60);
  sub_10018EFCC(a1, &v12[*(v13 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v12, v8, &qword_1002666D0, &qword_1001E0B58);
  v53 = v5;
  v14 = *(v5 + 36);
  v52 = v8;
  v15 = &v8[v14];
  v16 = v59[8];
  v17 = v59[10];
  v18 = v59[11];
  *(v15 + 4) = v59[9];
  *(v15 + 5) = v17;
  *(v15 + 6) = v18;
  v19 = v59[6];
  *v15 = v59[5];
  *(v15 + 1) = v19;
  *(v15 + 2) = v59[7];
  *(v15 + 3) = v16;
  type metadata accessor for MainActor();
  sub_1000AE0F0(a1, v59);
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = &protocol witness table for MainActor;
  v22 = *(a1 + 48);
  *(v21 + 64) = *(a1 + 32);
  *(v21 + 80) = v22;
  *(v21 + 96) = *(a1 + 64);
  v23 = *(a1 + 16);
  *(v21 + 32) = *a1;
  *(v21 + 48) = v23;
  v24 = type metadata accessor for TaskPriority();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v47 - v27;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v49 = type metadata accessor for _TaskModifier2();
    v50 = &v47;
    v48 = *(v49 - 8);
    v29 = *(v48 + 64);
    __chkstk_darwin(v49);
    v47 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v59[0] = 0;
    *(&v59[0] + 1) = 0xE000000000000000;
    v51 = &v47;
    _StringGuts.grow(_:)(17);

    *&v59[0] = 0xD000000000000044;
    *(&v59[0] + 1) = 0x80000001001EA9C0;
    v58 = 160;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    __chkstk_darwin(v32);
    (*(v25 + 16))(&v47 - v27, &v47 - v27, v24);
    v33 = v47;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v25 + 8))(v28, v24);
    v34 = v54;
    sub_10002A894(v52, v54, &qword_10025A990, &qword_1001CE170);
    v35 = sub_10000341C(&qword_10025A998, &qword_1001CE178);
    (*(v48 + 32))(v34 + *(v35 + 36), v33, v49);
  }

  else
  {
    v36 = sub_10000341C(&qword_10025A9A0, &unk_1001CE180);
    v34 = v54;
    v37 = (v54 + *(v36 + 36));
    v38 = type metadata accessor for _TaskModifier();
    (*(v25 + 32))(&v37[*(v38 + 20)], &v47 - v27, v24);
    *v37 = &unk_1001E0B70;
    *(v37 + 1) = v21;
    sub_10002A894(v52, v34, &qword_10025A990, &qword_1001CE170);
  }

  v59[0] = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v39 = v58;
  swift_getKeyPath();
  *&v59[0] = v39;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = *(v39 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  LOBYTE(v58) = v40;
  v41 = swift_allocObject();
  v42 = *(a1 + 48);
  *(v41 + 48) = *(a1 + 32);
  *(v41 + 64) = v42;
  *(v41 + 80) = *(a1 + 64);
  v43 = *(a1 + 16);
  *(v41 + 16) = *a1;
  *(v41 + 32) = v43;
  sub_1000AE0F0(a1, v59);
  v44 = sub_10019A234();
  *&v59[0] = v53;
  *(&v59[0] + 1) = v44;
  swift_getOpaqueTypeConformance2();
  sub_100035198();
  v45 = v57;
  View.onChange<A>(of:initial:_:)();

  return (*(v56 + 8))(v34, v45);
}

uint64_t sub_10018EFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v79 = sub_10000341C(&qword_100266708, &qword_1001E0C58);
  v3 = *(*(v79 - 8) + 64);
  v4 = __chkstk_darwin(v79);
  v82 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v80 = &v75[-v6];
  v7 = sub_10000341C(&qword_100266710, &qword_1001E0C60);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v75[-v10];
  v12 = sub_10000341C(&qword_100266718, &qword_1001E0C68);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v83 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v75[-v17];
  __chkstk_darwin(v16);
  v84 = &v75[-v19];
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v20 = 1;
  v11[16] = 1;
  v21 = sub_10000341C(&qword_100266720, &qword_1001E0C70);
  sub_10018F8DC(a1, &v11[*(v21 + 44)]);
  *&v11[*(v8 + 44)] = 0x3FF0000000000000;
  v122 = *(a1 + 16);
  v78 = a1;
  v95[0] = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v22 = *&v85[0];
  swift_getKeyPath();
  *&v95[0] = v22;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v8) = *(v22 + 112);

  if ((v8 & 1) == 0)
  {
    v95[0] = v122;
    State.wrappedValue.getter();
    v23 = *&v85[0];
    swift_getKeyPath();
    *&v95[0] = v23;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v23 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  sub_10002A894(v11, v18, &qword_100266710, &qword_1001E0C60);
  v26 = &v18[*(v12 + 36)];
  *v26 = KeyPath;
  v26[1] = sub_10002AAC0;
  v26[2] = v25;
  sub_10002A894(v18, v84, &qword_100266718, &qword_1001E0C68);
  v95[0] = v122;
  State.wrappedValue.getter();
  v27 = *&v85[0];
  swift_getKeyPath();
  *&v95[0] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v27 + 72);
  v28 = *(v27 + 80);
  v30 = *(v27 + 88);
  v31 = *(v27 + 96);
  sub_10002879C(v29, v28, v30, *(v27 + 96));

  if (v31 != 255)
  {
    if (!v31 && v29 == 5)
    {
      if (v30)
      {
        v33 = v30;
LABEL_10:
        *&v95[0] = v28;
        *(&v95[0] + 1) = v33;
        sub_10002AC34();
        v36 = Text.init<A>(_:)();
        v38 = v37;
        v40 = v39;
        v42 = v41;
        type metadata accessor for PresentationModel();
        sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel);
        v43 = Environment.init<A>(_:)();
        v123 = v36;
        v124 = v38;
        v125 = v40 & 1;
        v126 = v42;
        v127 = v43;
        v128 = v44 & 1;
        v45 = static Color.blue.getter();
        sub_1000E4714(v45, &v109);

        sub_10002A984(v36, v38, v40 & 1);

        j__swift_release();
        v46 = swift_getKeyPath();
        v77 = v46;
        v117 = 0;
        v47 = static Edge.Set.horizontal.getter();
        v48 = v47;
        v76 = v47;
        v49 = EdgeInsets.init(_all:)();
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v118 = 0;
        __chkstk_darwin(v49);
        *&v75[-16] = v78;
        sub_10000341C(&qword_100266728, &qword_1001E0D00);
        sub_100007120(&qword_100266730, &qword_100266728, &qword_1001E0D00);
        v58 = v80;
        _GlassEffectContainer.init(smoothness:content:)();
        *(v58 + *(v79 + 36)) = 0x3FF0000000000000;
        v60 = v83;
        v59 = v84;
        sub_1000081F8(v84, v83, &qword_100266718, &qword_1001E0C68);
        v61 = v82;
        sub_1000081F8(v58, v82, &qword_100266708, &qword_1001E0C58);
        v62 = v81;
        sub_1000081F8(v60, v81, &qword_100266718, &qword_1001E0C68);
        v63 = sub_10000341C(&qword_100266738, &qword_1001E0D08);
        v64 = (v62 + *(v63 + 48));
        v86 = v113;
        v87 = v114;
        v88 = v115;
        v89 = v116;
        v85[0] = v109;
        v85[1] = v110;
        v85[2] = v111;
        v85[3] = v112;
        *&v90 = v46;
        *(&v90 + 1) = 1;
        LOBYTE(v91) = 0;
        DWORD1(v91) = *&v120[3];
        *(&v91 + 1) = *v120;
        BYTE8(v91) = v48;
        *(&v91 + 9) = *v119;
        HIDWORD(v91) = *&v119[3];
        *&v92 = v51;
        *(&v92 + 1) = v53;
        *&v93 = v55;
        *(&v93 + 1) = v57;
        LOBYTE(v94) = 0;
        *(&v94 + 1) = *v121;
        DWORD1(v94) = *&v121[3];
        *(&v94 + 1) = 0;
        v65 = v109;
        v66 = v110;
        v67 = v112;
        v64[2] = v111;
        v64[3] = v67;
        *v64 = v65;
        v64[1] = v66;
        v68 = v86;
        v69 = v87;
        v70 = v89;
        v64[6] = v88;
        v64[7] = v70;
        v64[4] = v68;
        v64[5] = v69;
        v71 = v90;
        v72 = v91;
        v73 = v94;
        v64[11] = v93;
        v64[12] = v73;
        v74 = v92;
        v64[9] = v72;
        v64[10] = v74;
        v64[8] = v71;
        sub_1000081F8(v61, v62 + *(v63 + 64), &qword_100266708, &qword_1001E0C58);
        sub_1000081F8(v85, v95, &qword_100266740, &qword_1001E0D10);
        sub_10000F500(v58, &qword_100266708, &qword_1001E0C58);
        sub_10000F500(v59, &qword_100266718, &qword_1001E0C68);
        sub_10000F500(v61, &qword_100266708, &qword_1001E0C58);
        v95[4] = v113;
        v95[5] = v114;
        v95[6] = v115;
        v95[7] = v116;
        v95[0] = v109;
        v95[1] = v110;
        v95[2] = v111;
        v95[3] = v112;
        v96 = v77;
        v97 = 1;
        v98 = 0;
        *&v99[3] = *&v120[3];
        *v99 = *v120;
        v100 = v76;
        *&v101[3] = *&v119[3];
        *v101 = *v119;
        v102 = v51;
        v103 = v53;
        v104 = v55;
        v105 = v57;
        v106 = 0;
        *&v107[3] = *&v121[3];
        *v107 = *v121;
        v108 = 0;
        sub_10000F500(v95, &qword_100266740, &qword_1001E0D10);
        return sub_10000F500(v60, &qword_100266718, &qword_1001E0C68);
      }

      sub_10000F3F4(v29, v28, 0, 0);
    }

    v34 = sub_100106A3C();
    v33 = v35;
    sub_1000278C0(v29, v28, v30, v31);
    v28 = v34;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018F8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v166 = type metadata accessor for FeedbackView();
  v3 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v165 = v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_10025BB58, &unk_1001D09D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v178 = v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v181 = v149 - v9;
  *&v169 = type metadata accessor for PopoverAttachmentAnchor();
  v163 = *(v169 - 8);
  v10 = *(v163 + 64);
  __chkstk_darwin(v169);
  v162 = (v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = type metadata accessor for IconOnlyLabelStyle();
  v154 = *(v180 - 8);
  v12 = *(v154 + 64);
  __chkstk_darwin(v180);
  v153 = v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v151 = *(v152 - 8);
  v14 = *(v151 + 64);
  __chkstk_darwin(v152);
  v150 = v149 - v15;
  v158 = sub_10000341C(&qword_1002667A8, &qword_1001E0E38);
  v157 = *(v158 - 8);
  v16 = *(v157 + 64);
  __chkstk_darwin(v158);
  v167 = v149 - v17;
  v155 = sub_10000341C(&qword_10025AAA0, &unk_1001E0E40);
  v18 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v156 = v149 - v19;
  v168 = sub_10000341C(&qword_10025AA80, &qword_1001CE228);
  v20 = *(*(v168 - 8) + 64);
  __chkstk_darwin(v168);
  v160 = v149 - v21;
  v174 = sub_10000341C(&qword_1002667B0, &qword_1001E0E50);
  v173 = *(v174 - 8);
  v22 = *(v173 + 64);
  __chkstk_darwin(v174);
  v159 = v149 - v23;
  v24 = sub_10000341C(&qword_1002667B8, &qword_1001E0E58);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v177 = v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v182 = v149 - v28;
  v172 = type metadata accessor for ButtonToggleStyle();
  v175 = *(v172 - 8);
  v29 = *(v175 + 8);
  __chkstk_darwin(v172);
  *&v170 = v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v170 + 1) = sub_10000341C(&qword_10025BB60, &unk_1001E0E60);
  v171 = *(*(&v170 + 1) - 8);
  v31 = *(v171 + 64);
  __chkstk_darwin(*(&v170 + 1));
  v33 = v149 - v32;
  v34 = sub_10000341C(&qword_10025BB68, &qword_1001D09E0);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  v37 = __chkstk_darwin(v34);
  v176 = v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = v149 - v39;
  v192 = *(a1 + 16);
  v161 = a1;
  v190 = *(a1 + 16);
  v41 = sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.projectedValue.getter();
  v42 = v183;
  v43 = v184;
  swift_getKeyPath();
  v190 = v42;
  v191 = v43;
  v149[3] = sub_10000341C(&qword_1002667C0, &unk_1001E0E70);
  Binding.subscript.getter();

  *(&v169 + 1) = v187;

  sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v44 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v45 = v41;
  v46 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  v47 = sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  v149[2] = v44;
  *&v183 = v44;
  *(&v183 + 1) = v180;
  v149[1] = v46;
  v184 = v46;
  v185 = v47;
  swift_getOpaqueTypeConformance2();
  Toggle.init(isOn:label:)();
  v48 = v170;
  ButtonToggleStyle.init()();
  sub_100007120(&qword_10025BB80, &qword_10025BB60, &unk_1001E0E60);
  sub_10019A648(&qword_10025BB88, &type metadata accessor for ButtonToggleStyle);
  v49 = *(&v170 + 1);
  v50 = v172;
  View.toggleStyle<A>(_:)();
  (*(v175 + 1))(v48, v50);
  (*(v171 + 8))(v33, v49);
  v51 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v53 = *(v35 + 44);
  v175 = v40;
  v54 = &v40[v53];
  *v54 = KeyPath;
  v54[1] = v51;
  v183 = v192;
  State.wrappedValue.getter();
  v55 = v190;
  swift_getKeyPath();
  *&v183 = v55;
  v56 = sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v55 + 96);
  v164 = v45;
  if (!v57 && *(v55 + 72) != 5)
  {

    goto LABEL_7;
  }

  v185 = &type metadata for WritingTools;
  v186 = sub_10002AC88();
  LOBYTE(v183) = 3;
  v58 = isFeatureEnabled(_:)();
  sub_10000F4B4(&v183);

  if ((v58 & 1) == 0)
  {
LABEL_7:
    v70 = 1;
    v71 = v182;
    v72 = v174;
    v73 = v173;
    goto LABEL_10;
  }

  v59 = swift_allocObject();
  v60 = v161;
  v61 = *(v161 + 48);
  *(v59 + 48) = *(v161 + 32);
  *(v59 + 64) = v61;
  *(v59 + 80) = *(v60 + 64);
  v62 = *(v60 + 16);
  *(v59 + 16) = *v60;
  *(v59 + 32) = v62;
  __chkstk_darwin(v59);
  sub_1000AE0F0(v60, &v183);
  v63 = v150;
  Button.init(action:label:)();
  v64 = v153;
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240);
  v65 = v152;
  v66 = v180;
  View.labelStyle<A>(_:)();
  (*(v154 + 8))(v64, v66);
  (*(v151 + 8))(v63, v65);
  v183 = v192;
  State.wrappedValue.getter();
  v67 = v190;
  swift_getKeyPath();
  *&v183 = v67;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v68 = *(v67 + 112);
  v172 = v56;
  if (v68)
  {
    v69 = 1;
  }

  else
  {
    swift_getKeyPath();
    *&v183 = v67;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v69 = *(v67 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  v74 = swift_getKeyPath();
  v75 = swift_allocObject();
  *(v75 + 16) = v69;
  v76 = v156;
  (*(v157 + 32))(v156, v167, v158);
  v77 = (v76 + *(v155 + 36));
  *v77 = v74;
  v77[1] = sub_100035DEC;
  v77[2] = v75;
  LOBYTE(v74) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v160;
  sub_10002A894(v76, v160, &qword_10025AAA0, &unk_1001E0E40);
  v87 = v86 + *(v168 + 36);
  *v87 = v74;
  *(v87 + 8) = v79;
  *(v87 + 16) = v81;
  *(v87 + 24) = v83;
  *(v87 + 32) = v85;
  *(v87 + 40) = 0;
  v190 = v192;
  State.projectedValue.getter();
  v89 = *(&v183 + 1);
  v88 = v183;
  v90 = v184;
  swift_getKeyPath();
  v190 = __PAIR128__(v89, v88);
  v191 = v90;
  Binding.subscript.getter();

  v171 = v188;
  LODWORD(v180) = v189;

  static UnitPoint.top.getter();
  v91 = v162;
  *v162 = v92;
  v91[1] = v93;
  v94 = v163;
  (*(v163 + 104))(v91, enum case for PopoverAttachmentAnchor.point(_:), v169);
  v95 = swift_allocObject();
  v96 = *(v60 + 48);
  *(v95 + 48) = *(v60 + 32);
  *(v95 + 64) = v96;
  *(v95 + 80) = *(v60 + 64);
  v97 = *(v60 + 16);
  *(v95 + 16) = *v60;
  *(v95 + 32) = v97;
  sub_1000AE0F0(v60, &v183);
  Edge.Set.init(_:)();
  sub_10000341C(&qword_10025AA88, &unk_1001CE230);
  sub_10019A788();
  v98 = sub_100003E34(&qword_10025AAD0, &qword_1001CE250);
  v99 = sub_100003E34(&qword_10025AAD8, &qword_1001CE258);
  v100 = sub_10019A814();
  *&v183 = v99;
  *(&v183 + 1) = v100;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v183 = v98;
  *(&v183 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v102 = v159;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v94 + 8))(v91, v169);
  sub_10000F500(v86, &qword_10025AA80, &qword_1001CE228);
  v73 = v173;
  v71 = v182;
  v72 = v174;
  (*(v173 + 32))(v182, v102, v174);
  v70 = 0;
  v56 = v172;
LABEL_10:
  v103 = 1;
  (*(v73 + 56))(v71, v70, 1, v72);
  v104 = type metadata accessor for FeedbackFeatureFlags();
  v185 = v104;
  v186 = sub_10019A648(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v105 = sub_10002DB6C(&v183);
  (*(*(v104 - 8) + 104))(v105, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v104);
  LOBYTE(v104) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v183);
  if (v104)
  {
    v183 = v192;
    State.wrappedValue.getter();
    v106 = v190;
    swift_getKeyPath();
    *&v183 = v106;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v107 = *(v106 + 80);
    v108 = *(v106 + 88);
    v109 = *(v106 + 96);
    v180 = *(v106 + 72);
    v174 = v107;
    v173 = v108;
    LODWORD(v171) = v109;
    sub_10002879C(v180, v107, v108, v109);

    v183 = v192;
    State.wrappedValue.getter();
    v110 = v190;
    swift_getKeyPath();
    *&v183 = v110;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v111 = *(v110 + 40);
    *&v170 = *(v110 + 32);
    *(&v170 + 1) = v111;

    v183 = v192;
    State.wrappedValue.getter();
    v112 = v190;
    swift_getKeyPath();
    *&v183 = v112;
    v172 = v56;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v113 = *(v112 + 56);
    *&v169 = *(v112 + 48);
    *(&v169 + 1) = v113;

    v183 = v192;
    State.wrappedValue.getter();
    v114 = v190;
    swift_getKeyPath();
    *&v183 = v114;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v115 = *(v114 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);
    v167 = *(v114 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
    v168 = v115;

    v183 = v192;
    State.wrappedValue.getter();
    v116 = v190;
    swift_getKeyPath();
    *&v183 = v116;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v117 = *(v116 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
    if (v117)
    {
      v118 = v117;
      v119 = [v118 string];
      v163 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v162 = v120;
    }

    else
    {

      v163 = 0;
      v162 = 0xE000000000000000;
    }

    v183 = v192;
    State.wrappedValue.getter();
    v121 = v190;
    swift_getKeyPath();
    *&v183 = v121;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v122 = *(v121 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
    v123 = *(v121 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);

    v183 = v192;
    State.wrappedValue.getter();
    v124 = v190;
    swift_getKeyPath();
    *&v183 = v124;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v125 = *(v124 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);

    if (v125)
    {
      v183 = v192;
      State.wrappedValue.getter();
      v126 = v190;
      swift_getKeyPath();
      *&v183 = v126;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v127 = *(v126 + 112);
    }

    else
    {
      v127 = 1;
    }

    v183 = v192;
    State.wrappedValue.getter();
    v128 = v190;
    swift_getKeyPath();
    *&v183 = v128;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v130 = *(v128 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
    v129 = *(v128 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);

    v131 = v165;
    *(v165 + 25) = 0;
    v132 = *(v166 + 92);
    *(v131 + v132) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    v133 = v174;
    *(v131 + 128) = v180;
    *(v131 + 136) = v133;
    *(v131 + 144) = v173;
    *(v131 + 152) = v171;
    v134 = v170;
    *(v131 + 24) = v169;
    *(v131 + 8) = v134;
    v135 = v168;
    *(v131 + 40) = v167;
    *(v131 + 48) = v135;
    *(v131 + 56) = 0;
    *(v131 + 64) = 0;
    v136 = v162;
    *(v131 + 72) = v163;
    *(v131 + 80) = v136;
    *(v131 + 88) = v122;
    *(v131 + 96) = v123;
    *v131 = 0;
    *(v131 + 153) = v127;
    *(v131 + 154) = 0;
    *(v131 + 156) = 0;
    *&v190 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v137 = v183;
    *(v131 + 104) = _swiftEmptyArrayStorage;
    *(v131 + 112) = _swiftEmptyArrayStorage;
    *(v131 + 120) = _swiftEmptyArrayStorage;
    v138 = *(&v183 + 1);
    *(v131 + 208) = v137;
    *(v131 + 160) = 0u;
    *(v131 + 176) = 0u;
    *(v131 + 192) = 0;
    *(v131 + 216) = v138;
    *(v131 + 224) = v130;
    *(v131 + 232) = v129;
    LOBYTE(v183) = 0;
    sub_10019A648(&qword_10025BBA0, type metadata accessor for FeedbackView);
    sub_1000354E8();
    View.buttonStyle<A>(_:)();
    sub_10003553C(v131);
    v103 = 0;
  }

  v139 = sub_10000341C(&qword_10025BB50, &qword_1001E0EB0);
  v140 = v181;
  (*(*(v139 - 8) + 56))(v181, v103, 1, v139);
  v141 = v175;
  v142 = v176;
  sub_1000081F8(v175, v176, &qword_10025BB68, &qword_1001D09E0);
  v143 = v182;
  v144 = v177;
  sub_1000081F8(v182, v177, &qword_1002667B8, &qword_1001E0E58);
  v145 = v178;
  sub_1000081F8(v140, v178, &qword_10025BB58, &unk_1001D09D0);
  v146 = v179;
  sub_1000081F8(v142, v179, &qword_10025BB68, &qword_1001D09E0);
  v147 = sub_10000341C(&qword_1002667C8, &qword_1001E0EB8);
  sub_1000081F8(v144, v146 + *(v147 + 48), &qword_1002667B8, &qword_1001E0E58);
  sub_1000081F8(v145, v146 + *(v147 + 64), &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v140, &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v143, &qword_1002667B8, &qword_1001E0E58);
  sub_10000F500(v141, &qword_10025BB68, &qword_1001D09E0);
  sub_10000F500(v145, &qword_10025BB58, &unk_1001D09D0);
  sub_10000F500(v144, &qword_1002667B8, &qword_1001E0E58);
  return sub_10000F500(v142, &qword_10025BB68, &qword_1001D09E0);
}

uint64_t sub_10019132C()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001915A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100191640, v6, v5);
}

uint64_t sub_100191640()
{
  *(v0 + 16) = *(*(v0 + 40) + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100020C40;

  return sub_1000B6880(0);
}

uint64_t sub_100191704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001935AC();
  v6 = v5;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = v4;
  *(a2 + 16) = v6 & 1;
  v7 = sub_10000341C(&qword_100266748, &qword_1001E0D18);
  return sub_100191770(a1, a2 + *(v7 + 44));
}

uint64_t sub_100191770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = type metadata accessor for IconOnlyLabelStyle();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_100266750, &qword_1001E0D20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v39 - v9;
  v11 = sub_10000341C(&qword_100266758, &qword_1001E0D28);
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  __chkstk_darwin(v11);
  v14 = v39 - v13;
  v48 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v15 = v47;
  swift_getKeyPath();
  *&v48 = v15;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v15 + 96))
  {

LABEL_3:
    v16 = 1;
    v18 = v45;
    v17 = v46;
    return (*(v44 + 56))(v17, v16, 1, v18);
  }

  v39[0] = v10;
  v39[1] = v7;
  v19 = a1;
  v40 = v14;
  v41 = v6;
  v20 = v43;
  v21 = *(v15 + 72);

  if ((v21 - 2) >= 4 && v21)
  {
    goto LABEL_3;
  }

  v48 = *(a1 + 16);
  State.wrappedValue.getter();
  v22 = v47;
  swift_getKeyPath();
  *&v48 = v22;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v22 + 112);

  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v48 = *(v19 + 16);
    State.wrappedValue.getter();
    v25 = v47;
    swift_getKeyPath();
    *&v48 = v25;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(v25 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal);
  }

  v26 = v19;
  v27 = v20;
  v29 = v41;
  v28 = v42;
  v30 = v39[0];
  *v30 = static VerticalAlignment.center.getter();
  *(v30 + 8) = 0x4030000000000000;
  *(v30 + 16) = 0;
  v31 = sub_10000341C(&qword_100266760, &qword_1001E0D58);
  sub_100191C94(v26, v24, v30 + *(v31 + 44));
  IconOnlyLabelStyle.init()();
  sub_100007120(&qword_100266768, &qword_100266750, &qword_1001E0D20);
  sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  v32 = v40;
  View.labelStyle<A>(_:)();
  (*(v28 + 8))(v29, v27);
  sub_10000F500(v30, &qword_100266750, &qword_1001E0D20);
  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v24;
  v35 = v45;
  v36 = (v32 + *(v45 + 36));
  *v36 = KeyPath;
  v36[1] = sub_100035DEC;
  v36[2] = v34;
  v37 = v46;
  sub_10002A894(v32, v46, &qword_100266758, &qword_1001E0D28);
  v18 = v35;
  v17 = v37;
  v16 = 0;
  return (*(v44 + 56))(v17, v16, 1, v18);
}

uint64_t sub_100191C94@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = sub_10000341C(&qword_100266770, &qword_1001E0D60);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v31[-v10];
  v12 = sub_10000341C(&qword_100266778, &qword_1001E0D68);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31[-v15];
  v17 = sub_10000341C(&qword_100266780, &qword_1001E0D70);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v31[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v31[-v22];
  v33[0] = *(a1 + 32);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v34 == 1)
  {
    *v16 = static VerticalAlignment.center.getter();
    *(v16 + 1) = 0x4020000000000000;
    v16[16] = 0;
    v24 = sub_10000341C(&qword_100266790, &qword_1001E0D80);
    sub_100192084(v32 & 1, a1, &v16[*(v24 + 44)]);
    sub_10002A894(v16, v23, &qword_100266778, &qword_1001E0D68);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v13 + 56))(v23, v25, 1, v12);
  v26 = swift_allocObject();
  v27 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v27;
  *(v26 + 80) = *(a1 + 64);
  v28 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v28;
  sub_1000AE0F0(a1, v33);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  Button.init(action:label:)();
  sub_1000081F8(v23, v21, &qword_100266780, &qword_1001E0D70);
  sub_1000081F8(v11, v9, &qword_100266770, &qword_1001E0D60);
  sub_1000081F8(v21, a3, &qword_100266780, &qword_1001E0D70);
  v29 = sub_10000341C(&qword_100266788, &qword_1001E0D78);
  sub_1000081F8(v9, a3 + *(v29 + 48), &qword_100266770, &qword_1001E0D60);
  sub_10000F500(v11, &qword_100266770, &qword_1001E0D60);
  sub_10000F500(v23, &qword_100266780, &qword_1001E0D70);
  sub_10000F500(v9, &qword_100266770, &qword_1001E0D60);
  return sub_10000F500(v21, &qword_100266780, &qword_1001E0D70);
}

uint64_t sub_100192084@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_10000341C(&qword_100266798, &qword_1001E0D88);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v42 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v11 = &v39[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v39[-v13];
  __chkstk_darwin(v12);
  v16 = &v39[-v15];
  if (a1)
  {
    v40 = 1;
    v17 = 1;
  }

  else
  {
    v45 = *(a2 + 16);
    v43[0] = *(a2 + 16);
    sub_10000341C(&qword_100261898, &qword_1001D7C40);
    State.wrappedValue.getter();
    v18 = v44;
    swift_getKeyPath();
    *&v43[0] = v18;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v18 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount);

    v17 = v19 == 0;
    v43[0] = v45;
    State.wrappedValue.getter();
    v20 = v44;
    swift_getKeyPath();
    *&v43[0] = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v20 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount);

    v40 = v21 == 0;
  }

  v22 = swift_allocObject();
  v23 = *(a2 + 48);
  *(v22 + 48) = *(a2 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a2 + 64);
  v24 = *(a2 + 16);
  *(v22 + 16) = *a2;
  *(v22 + 32) = v24;
  sub_1000AE0F0(a2, v43);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  v27 = sub_10000341C(&qword_100264608, &qword_1001DCD40);
  v28 = &v16[*(v27 + 36)];
  *v28 = KeyPath;
  v28[1] = sub_100035DEC;
  v28[2] = v26;
  v29 = swift_allocObject();
  v30 = *(a2 + 48);
  *(v29 + 48) = *(a2 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(a2 + 64);
  v31 = *(a2 + 16);
  *(v29 + 16) = *a2;
  *(v29 + 32) = v31;
  sub_1000AE0F0(a2, v43);
  Button.init(action:label:)();
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v40;
  v34 = &v14[*(v27 + 36)];
  *v34 = v32;
  v34[1] = sub_100035DEC;
  v34[2] = v33;
  sub_1000081F8(v16, v11, &qword_100266798, &qword_1001E0D88);
  v35 = v42;
  sub_1000081F8(v14, v42, &qword_100266798, &qword_1001E0D88);
  v36 = v41;
  sub_1000081F8(v11, v41, &qword_100266798, &qword_1001E0D88);
  v37 = sub_10000341C(&qword_1002667A0, &unk_1001E0DE8);
  sub_1000081F8(v35, v36 + *(v37 + 48), &qword_100266798, &qword_1001E0D88);
  sub_10000F500(v14, &qword_100266798, &qword_1001E0D88);
  sub_10000F500(v16, &qword_100266798, &qword_1001E0D88);
  sub_10000F500(v35, &qword_100266798, &qword_1001E0D88);
  return sub_10000F500(v11, &qword_100266798, &qword_1001E0D88);
}

uint64_t sub_100192584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_10019261C, v6, v5);
}

uint64_t sub_10019261C()
{
  *(v0 + 16) = *(*(v0 + 40) + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100011F4C;

  return sub_1000B6880(0);
}

uint64_t sub_1001926E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a3;
  type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_100192778, v5, v4);
}

uint64_t sub_100192778()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v2 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v2;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
  {
    v3 = *(v0 + 112);

LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  *(v0 + 32) = *(v1 + 16);
  State.wrappedValue.getter();
  v4 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 88) = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  if (v5 == 1)
  {
    v6 = *(v0 + 112);
    goto LABEL_5;
  }

  *(v0 + 48) = *(v1 + 16);
  State.wrappedValue.getter();
  *(v0 + 136) = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_100030018;

  return sub_1000B6880(1);
}

void sub_1001929C4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F34C(v2, qword_100276F08);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Handoff state changed, request alert presentation", v5, 2u);
    }

    sub_100192AB8();
  }
}

uint64_t sub_100192AB8()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x2065736F706D6F43;
  v8._object = 0xED00002068746977;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  v9._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v9);

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  sub_100149E4C(v11);
  v12 = [objc_opt_self() mainBundle];
  v33._object = 0x80000001001E3AF0;
  v13._countAndFlagsBits = 0x402520657355;
  v13._object = 0xE600000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD000000000000069;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v33);

  sub_10000341C(&qword_10025BA50, &qword_1001D0860);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001CF9D0;
  v16 = sub_1000971C0();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_10002D7B0();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  static String.localizedStringWithFormat(_:_:)();

  aBlock = *(v1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:{"showAlertWithTitle:message:buttonTitle:buttonAction:", aBlock}])
    {
      v20 = swift_allocObject();
      v21 = *(v1 + 48);
      *(v20 + 48) = *(v1 + 32);
      *(v20 + 64) = v21;
      *(v20 + 80) = *(v1 + 64);
      v22 = *(v1 + 16);
      *(v20 + 16) = *v1;
      *(v20 + 32) = v22;
      sub_1000AE0F0(v1, &aBlock);
      v23 = String._bridgeToObjectiveC()();

      v24 = String._bridgeToObjectiveC()();

      v25 = String._bridgeToObjectiveC()();

      v31 = sub_10019A3D0;
      v32 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v29 = sub_1001256BC;
      v30 = &unk_1002522B8;
      v26 = _Block_copy(&aBlock);
      [Strong showAlertWithTitle:v23 message:v24 buttonTitle:v25 buttonAction:v26];
      swift_unknownObjectRelease();
      _Block_release(v26);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_100192F2C(uint64_t a1)
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276F08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handoff approved, proceeding...", v5, 2u);
  }

  v25 = *(a1 + 16);
  v23 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v23 = v22[0];
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v22[0] + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task))
  {
    v6 = *(v22[0] + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);

    Task.cancel()();
  }

  sub_1000B2528(0);

  v23 = *(a1 + 16);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v23 = v22[0];
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v22[0] + v7, &v23, &unk_10025B1C0, &unk_1001CFA90);

  if (v24)
  {
    sub_100028458(&v23, v22);
    sub_10000F500(&v23, &unk_10025B1C0, &unk_1001CFA90);
    v8 = *sub_100027874(v22, v22[3]);
    sub_10000ECC4();
    sub_10000F4B4(v22);
  }

  else
  {
    sub_10000F500(&v23, &unk_10025B1C0, &unk_1001CFA90);
  }

  v23 = *(a1 + 16);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if (([Strong respondsToSelector:"handoffFromUCBFromTool:withPrompt:"] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return;
    }

    v23 = *(a1 + 16);
    State.wrappedValue.getter();
    v10 = v22[0];
    swift_getKeyPath();
    *&v23 = v10;
    sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + 72);
    v12 = *(v10 + 80);
    v13 = *(v10 + 88);
    v14 = *(v10 + 96);
    sub_10002879C(v11, v12, v13, *(v10 + 96));

    if (v14 == 255)
    {
      swift_unknownObjectRelease();
      __break(1u);
    }

    else
    {
      v15 = sub_100106D00(v11, v12, v13, v14);
      sub_1000278C0(v11, v12, v13, v14);
      v23 = v25;
      State.wrappedValue.getter();
      v16 = v22[0];
      swift_getKeyPath();
      *&v23 = v16;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v17 = *(v16 + 96);
      if (v17 != 255)
      {
        v19 = *(v16 + 72);
        v18 = *(v16 + 80);
        v20 = *(v16 + 88);
        sub_10000F3F4(v19, v18, v20, *(v16 + 96));

        if (v17)
        {
          sub_1000278C0(v19, v18, v20, v17);
          v21 = 0;
        }

        else if (v20)
        {
          v21 = String._bridgeToObjectiveC()();
        }

        else
        {
          v21 = 0;
        }

        [Strong handoffFromUCBFromTool:v15 withPrompt:v21];

        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1001934A4@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v3;
  v15 = *(v1 + 64);
  v4 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  v8 = swift_allocObject();
  v9 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v1 + 64);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  *a1 = sub_10019A13C;
  a1[1] = v5;
  a1[2] = sub_10019A15C;
  a1[3] = v8;
  v11 = *(sub_10000341C(&qword_1002666C0, &qword_1001E0B40) + 40);
  sub_1000AE0F0(v14, v13);
  sub_1000AE0F0(v14, v13);
  return sub_10018E7F4(v14, a1 + v11);
}

uint64_t sub_1001935AC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 8);
  v6 = *v0;
  v12 = *v0;
  v7 = v13;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v12, &qword_10025BAA0, &qword_1001D0808);
    (*(v2 + 8))(v5, v1);
    v6 = v11;
  }

  if (v6)
  {
    swift_getKeyPath();
    v11 = v6;
    sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  return 0;
}

uint64_t sub_100193784()
{
  v1 = v0;
  v2 = sub_10000341C(&qword_1002667D8, &qword_1001E1030);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v55 = &v44 - v4;
  v54 = sub_10000341C(&qword_1002667E0, &qword_1001E1038);
  v53 = *(v54 - 8);
  v5 = *(v53 + 64);
  __chkstk_darwin(v54);
  v52 = &v44 - v6;
  v7 = sub_10000341C(&qword_10025A9A8, &qword_1001E1040);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v44 - v9;
  *(&v44 - v9) = 0x4010000000000000;
  v11 = sub_10000341C(&qword_1002667E8, &qword_1001E1048);
  sub_100193F14(v0, &v10[*(v11 + 44)]);
  type metadata accessor for MainActor();
  sub_10019A9EC(v0, v58);
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  v14 = *(v0 + 48);
  *(v13 + 64) = *(v0 + 32);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(v0 + 64);
  v15 = *(v0 + 16);
  *(v13 + 32) = *v0;
  *(v13 + 48) = v15;
  v51 = type metadata accessor for TaskPriority();
  v16 = *(v51 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v51);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v44 - v18;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v49 = type metadata accessor for _TaskModifier2();
    v50 = &v44;
    v48 = *(v49 - 8);
    v20 = *(v48 + 64);
    __chkstk_darwin(v49);
    v46 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v58[0] = 0;
    *(&v58[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    *&v58[0] = 0xD000000000000044;
    *(&v58[0] + 1) = 0x80000001001EA9C0;
    *&v56[0] = 377;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v10;
    v47 = v2;
    String.append(_:)(v22);

    v44 = &v44;
    __chkstk_darwin(v23);
    v24 = &v44 - v18;
    v25 = &v44 - v18;
    v26 = v51;
    (*(v16 + 16))(v24, v25, v51);
    v27 = v46;
    v2 = v47;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v16 + 8))(v19, v26);
    v28 = v52;
    sub_10002A894(v45, v52, &qword_10025A9A8, &qword_1001E1040);
    v29 = sub_10000341C(&qword_10025A9B0, &unk_1001CE190);
    (*(v48 + 32))(v28 + *(v29 + 36), v27, v49);
  }

  else
  {
    v30 = sub_10000341C(&qword_10025A9B8, &unk_1001E1070);
    v28 = v52;
    v31 = (v52 + *(v30 + 36));
    v32 = type metadata accessor for _TaskModifier();
    (*(v16 + 32))(&v31[*(v32 + 20)], &v44 - v18, v51);
    *v31 = &unk_1001E1058;
    *(v31 + 1) = v13;
    sub_10002A894(v10, v28, &qword_10025A9A8, &qword_1001E1040);
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v33 = v55;
  (*(v53 + 32))(v55, v28, v54);
  v34 = (v33 + *(v2 + 36));
  v35 = v58[5];
  v34[4] = v58[4];
  v34[5] = v35;
  v34[6] = v58[6];
  v36 = v58[1];
  *v34 = v58[0];
  v34[1] = v36;
  v37 = v58[3];
  v34[2] = v58[2];
  v34[3] = v37;
  v56[0] = *(v1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v38 = v57;
  swift_getKeyPath();
  *&v56[0] = v38;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v38 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  LOBYTE(v57) = v39;
  v40 = swift_allocObject();
  v41 = *(v1 + 48);
  *(v40 + 48) = *(v1 + 32);
  *(v40 + 64) = v41;
  *(v40 + 80) = *(v1 + 64);
  v42 = *(v1 + 16);
  *(v40 + 16) = *v1;
  *(v40 + 32) = v42;
  sub_10019A9EC(v1, v56);
  sub_10019AAD0();
  sub_100035198();
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v33, &qword_1002667D8, &qword_1001E1030);
}

uint64_t sub_100193F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_10000341C(&qword_1002620E8, &qword_1001D8800);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v81[-v5];
  v85 = sub_10000341C(&qword_100266818, &unk_1001E1080);
  v7 = *(*(v85 - 8) + 64);
  v8 = __chkstk_darwin(v85);
  v89 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v88 = &v81[-v10];
  v11 = sub_10000341C(&qword_1002620F8, &qword_1001D8810);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v81[-v13];
  v15 = sub_10000341C(&qword_100266820, &qword_1001E1090);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v81[-v21];
  v23 = sub_1001935AC();
  v25 = v24;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = v23;
  v14[16] = v25 & 1;
  v26 = sub_10000341C(&qword_100266828, &qword_1001E1098);
  sub_1001946CC(a1, &v14[*(v26 + 44)]);
  v27 = static Color.blue.getter();
  sub_1000E4920(v27, v22);

  sub_10000F500(v14, &qword_1002620F8, &qword_1001D8810);
  v28 = *(v16 + 44);
  v86 = a1;
  v87 = v22;
  *&v22[v28] = 0x3FF0000000000000;
  v101[0] = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v29 = *&v91[0];
  swift_getKeyPath();
  *&v101[0] = v29;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = *(v29 + 72);
  v30 = *(v29 + 80);
  v32 = *(v29 + 88);
  v33 = *(v29 + 96);
  sub_10002879C(v31, v30, v32, *(v29 + 96));

  if (v33 != 255)
  {
    v84 = v20;
    if (!v33 && v31 == 5)
    {
      if (v32)
      {
        v35 = v32;
LABEL_8:
        *&v101[0] = v30;
        *(&v101[0] + 1) = v35;
        sub_10002AC34();
        v38 = Text.init<A>(_:)();
        v40 = v39;
        v42 = v41;
        v44 = v43;
        type metadata accessor for PresentationModel();
        sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel);
        v45 = Environment.init<A>(_:)();
        v128 = v38;
        v129 = v40;
        v130 = v42 & 1;
        v131 = v44;
        v132 = v45;
        v133 = v46 & 1;
        v47 = static Color.blue.getter();
        sub_1000E4714(v47, &v115);

        sub_10002A984(v38, v40, v42 & 1);

        j__swift_release();
        KeyPath = swift_getKeyPath();
        v83 = KeyPath;
        v123 = 0;
        v49 = static Edge.Set.horizontal.getter();
        v50 = v49;
        v82 = v49;
        EdgeInsets.init(_all:)();
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v124 = 0;
        v59 = v86;
        v60 = sub_1001935AC();
        LOBYTE(v38) = v61;
        *v6 = static VerticalAlignment.center.getter();
        *(v6 + 1) = v60;
        v6[16] = v38 & 1;
        v62 = sub_10000341C(&qword_100266830, &qword_1001E10A0);
        sub_1001978A0(v59, &v6[*(v62 + 44)]);
        v63 = static Color.blue.getter();
        v64 = v88;
        sub_1000E4944(v63, v88);

        sub_10000F500(v6, &qword_1002620E8, &qword_1001D8800);
        v65 = v84;
        *&v64[*(v85 + 36)] = 0x3FF0000000000000;
        v66 = v87;
        sub_1000081F8(v87, v65, &qword_100266820, &qword_1001E1090);
        v67 = v89;
        sub_1000081F8(v64, v89, &qword_100266818, &unk_1001E1080);
        v68 = v90;
        sub_1000081F8(v65, v90, &qword_100266820, &qword_1001E1090);
        v69 = sub_10000341C(&qword_100266838, &qword_1001E10A8);
        v70 = (v68 + *(v69 + 48));
        v92 = v119;
        v93 = v120;
        v94 = v121;
        v95 = v122;
        v91[0] = v115;
        v91[1] = v116;
        v91[2] = v117;
        v91[3] = v118;
        *&v96 = KeyPath;
        *(&v96 + 1) = 1;
        LOBYTE(v97) = 0;
        DWORD1(v97) = *&v126[3];
        *(&v97 + 1) = *v126;
        BYTE8(v97) = v50;
        *(&v97 + 9) = *v125;
        HIDWORD(v97) = *&v125[3];
        *&v98 = v52;
        *(&v98 + 1) = v54;
        *&v99 = v56;
        *(&v99 + 1) = v58;
        LOBYTE(v100) = 0;
        *(&v100 + 1) = *v127;
        DWORD1(v100) = *&v127[3];
        *(&v100 + 1) = 0x3FE0000000000000;
        v71 = v115;
        v72 = v116;
        v73 = v118;
        v70[2] = v117;
        v70[3] = v73;
        *v70 = v71;
        v70[1] = v72;
        v74 = v92;
        v75 = v93;
        v76 = v95;
        v70[6] = v94;
        v70[7] = v76;
        v70[4] = v74;
        v70[5] = v75;
        v77 = v96;
        v78 = v97;
        v79 = v100;
        v70[11] = v99;
        v70[12] = v79;
        v80 = v98;
        v70[9] = v78;
        v70[10] = v80;
        v70[8] = v77;
        sub_1000081F8(v67, v68 + *(v69 + 64), &qword_100266818, &unk_1001E1080);
        sub_1000081F8(v91, v101, &qword_100266740, &qword_1001E0D10);
        sub_10000F500(v64, &qword_100266818, &unk_1001E1080);
        sub_10000F500(v66, &qword_100266820, &qword_1001E1090);
        sub_10000F500(v67, &qword_100266818, &unk_1001E1080);
        v101[4] = v119;
        v101[5] = v120;
        v101[6] = v121;
        v101[7] = v122;
        v101[0] = v115;
        v101[1] = v116;
        v101[2] = v117;
        v101[3] = v118;
        v102 = v83;
        v103 = 1;
        v104 = 0;
        *&v105[3] = *&v126[3];
        *v105 = *v126;
        v106 = v82;
        *&v107[3] = *&v125[3];
        *v107 = *v125;
        v108 = v52;
        v109 = v54;
        v110 = v56;
        v111 = v58;
        v112 = 0;
        *&v113[3] = *&v127[3];
        *v113 = *v127;
        v114 = 0x3FE0000000000000;
        sub_10000F500(v101, &qword_100266740, &qword_1001E0D10);
        return sub_10000F500(v65, &qword_100266820, &qword_1001E1090);
      }

      sub_10000F3F4(v31, v30, 0, 0);
    }

    v36 = sub_100106A3C();
    v35 = v37;
    sub_1000278C0(v31, v30, v32, v33);
    v30 = v36;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001946CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v64 = sub_10000341C(&qword_1002668A0, &qword_1001E1140);
  v63 = *(v64 - 8);
  v3 = *(v63 + 64);
  __chkstk_darwin(v64);
  v57 = &v57 - v4;
  v62 = sub_10000341C(&qword_1002668A8, &qword_1001E1148);
  v5 = *(*(v62 - 8) + 64);
  v6 = __chkstk_darwin(v62);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v60 = &v57 - v9;
  __chkstk_darwin(v8);
  v65 = &v57 - v10;
  v11 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v12 = *(v11 - 8);
  v59 = v11 - 8;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = &v57 - v16;
  v17 = sub_10000341C(&qword_10025BCC8, &qword_1001E1150);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v57 - v20;
  v22 = sub_10000341C(&qword_10025BCD0, &qword_1001D0C60);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22);
  v61 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v57 - v27;
  v29 = swift_allocObject();
  v30 = *(a1 + 48);
  *(v29 + 48) = *(a1 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(a1 + 64);
  v31 = *(a1 + 16);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v31;
  sub_10019A9EC(a1, v72);
  sub_10000341C(&qword_10025BCE0, &qword_1001D0C70);
  v32 = v57;
  sub_10019AE38(&qword_10025BCE8, &qword_10025BCE0, &qword_1001D0C70, sub_100035B10);
  Button.init(action:label:)();
  sub_100007120(&qword_10025BCF8, &qword_10025BCC8, &qword_1001E1150);
  sub_100035980();
  LODWORD(v72[0]) = 0;
  View.buttonStyle<A>(_:)();
  (*(v18 + 8))(v21, v17);
  type metadata accessor for PresentationModel();
  sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel);
  v33 = Environment.init<A>(_:)();
  v34 = &v28[*(v23 + 44)];
  *v34 = v33;
  v34[8] = v35 & 1;
  v36 = v58;
  Divider.init()();
  static Alignment.center.getter();
  v37 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v38 = v36;
  v39 = &v36[*(v59 + 44)];
  v40 = v72[1];
  *v39 = v72[0];
  *(v39 + 1) = v40;
  *(v39 + 2) = v72[2];
  v69 = a1;
  sub_10000341C(&qword_1002668B0, &qword_1001E1158);
  sub_100007120(&qword_1002668B8, &qword_1002668B0, &qword_1001E1158);
  Section<>.init(content:)();
  v73 = *(a1 + 16);
  v71 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v41 = v70;
  swift_getKeyPath();
  *&v71 = v41;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v36) = *(v41 + 112);

  if ((v36 & 1) == 0)
  {
    v71 = v73;
    State.wrappedValue.getter();
    v42 = v70;
    swift_getKeyPath();
    *&v71 = v42;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = *(v42 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v37;
  v45 = v60;
  (*(v63 + 32))(v60, v32, v64);
  v46 = (v45 + *(v62 + 36));
  *v46 = KeyPath;
  v46[1] = sub_100035DEC;
  v46[2] = v44;
  v47 = v65;
  sub_10002A894(v45, v65, &qword_1002668A8, &qword_1001E1148);
  v48 = v28;
  v49 = v61;
  sub_1000081F8(v28, v61, &qword_10025BCD0, &qword_1001D0C60);
  v50 = v38;
  v51 = v38;
  v52 = v66;
  sub_1000081F8(v51, v66, &qword_10025D700, &unk_1001DE550);
  v53 = v67;
  sub_1000081F8(v47, v67, &qword_1002668A8, &qword_1001E1148);
  v54 = v68;
  sub_1000081F8(v49, v68, &qword_10025BCD0, &qword_1001D0C60);
  v55 = sub_10000341C(&qword_1002668C0, &unk_1001E1160);
  sub_1000081F8(v52, v54 + *(v55 + 48), &qword_10025D700, &unk_1001DE550);
  sub_1000081F8(v53, v54 + *(v55 + 64), &qword_1002668A8, &qword_1001E1148);
  sub_10000F500(v47, &qword_1002668A8, &qword_1001E1148);
  sub_10000F500(v50, &qword_10025D700, &unk_1001DE550);
  sub_10000F500(v48, &qword_10025BCD0, &qword_1001D0C60);
  sub_10000F500(v53, &qword_1002668A8, &qword_1001E1148);
  sub_10000F500(v52, &qword_10025D700, &unk_1001DE550);
  return sub_10000F500(v49, &qword_10025BCD0, &qword_1001D0C60);
}

uint64_t sub_100194FC0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for PresentationModel();
  sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel);
  result = Environment.init<A>(_:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = v10 & 1;
  return result;
}

uint64_t sub_1001950A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v175 = a2;
  v160 = type metadata accessor for FeedbackView();
  v3 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v159 = v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_10025BD18, &unk_1001D0C90);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v174 = v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v176 = v142 - v9;
  v162 = type metadata accessor for PopoverAttachmentAnchor();
  v158 = *(v162 - 8);
  v10 = *(v158 + 64);
  __chkstk_darwin(v162);
  v157 = (v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = type metadata accessor for IconOnlyLabelStyle();
  v147 = *(v148 - 8);
  v12 = *(v147 + 64);
  __chkstk_darwin(v148);
  v146 = v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v144 = *(v145 - 8);
  v14 = *(v144 + 64);
  __chkstk_darwin(v145);
  v143 = v142 - v15;
  v153 = sub_10000341C(&qword_1002667A8, &qword_1001E0E38);
  v152 = *(v153 - 8);
  v16 = *(v152 + 64);
  __chkstk_darwin(v153);
  v150 = v142 - v17;
  v149 = sub_10000341C(&qword_10025AAA0, &unk_1001E0E40);
  v18 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v151 = v142 - v19;
  v161 = sub_10000341C(&qword_10025AA80, &qword_1001CE228);
  v20 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v155 = v142 - v21;
  v169 = sub_10000341C(&qword_1002667B0, &qword_1001E0E50);
  v168 = *(v169 - 8);
  v22 = *(v168 + 64);
  __chkstk_darwin(v169);
  v154 = v142 - v23;
  v24 = sub_10000341C(&qword_1002667B8, &qword_1001E0E58);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v173 = v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v178 = v142 - v28;
  v166 = type metadata accessor for ButtonToggleStyle();
  v167 = *(v166 - 8);
  v29 = *(v167 + 64);
  __chkstk_darwin(v166);
  v31 = v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_10000341C(&qword_10025BD20, &unk_1001E1170);
  v165 = *(v164 - 8);
  v32 = *(v165 + 64);
  __chkstk_darwin(v164);
  v34 = v142 - v33;
  v172 = sub_10000341C(&qword_10025BD28, &unk_1001D0CA0);
  v171 = *(v172 - 8);
  v35 = *(v171 + 64);
  v36 = __chkstk_darwin(v172);
  v170 = v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = v142 - v38;
  v187 = *(a1 + 16);
  v156 = a1;
  v181 = *(a1 + 16);
  v40 = sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.projectedValue.getter();
  v41 = v183;
  v42 = v184;
  swift_getKeyPath();
  v183 = v41;
  v184 = v42;
  v142[1] = sub_10000341C(&qword_1002667C0, &unk_1001E0E70);
  Binding.subscript.getter();

  sub_10000341C(&qword_10025BD30, &unk_1001E1180);
  sub_100035B64();
  v163 = v40;
  Toggle.init(isOn:label:)();
  ButtonToggleStyle.init()();
  sub_100007120(&qword_10025BD40, &qword_10025BD20, &unk_1001E1170);
  sub_10019A648(&qword_10025BB88, &type metadata accessor for ButtonToggleStyle);
  v177 = v39;
  v43 = v164;
  v44 = v166;
  View.toggleStyle<A>(_:)();
  (*(v167 + 8))(v31, v44);
  (*(v165 + 8))(v34, v43);
  v183 = v187;
  State.wrappedValue.getter();
  v45 = v181;
  swift_getKeyPath();
  *&v183 = v45;
  v46 = sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v45 + 96) && *(v45 + 72) != 5)
  {

    goto LABEL_7;
  }

  v185 = &type metadata for WritingTools;
  v186 = sub_10002AC88();
  LOBYTE(v183) = 3;
  v47 = isFeatureEnabled(_:)();
  sub_10000F4B4(&v183);

  if ((v47 & 1) == 0)
  {
LABEL_7:
    v60 = 1;
    v61 = v178;
    v62 = v169;
    v63 = v168;
    goto LABEL_10;
  }

  v48 = swift_allocObject();
  v49 = v156;
  v50 = *(v156 + 48);
  *(v48 + 48) = *(v156 + 32);
  *(v48 + 64) = v50;
  *(v48 + 80) = *(v49 + 64);
  v51 = *(v49 + 16);
  *(v48 + 16) = *v49;
  *(v48 + 32) = v51;
  __chkstk_darwin(v48);
  sub_10019A9EC(v49, &v183);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  v52 = v143;
  Button.init(action:label:)();
  v53 = v146;
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240);
  sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  v54 = v150;
  v55 = v145;
  v56 = v148;
  View.labelStyle<A>(_:)();
  (*(v147 + 8))(v53, v56);
  (*(v144 + 8))(v52, v55);
  v183 = v187;
  State.wrappedValue.getter();
  v57 = v181;
  swift_getKeyPath();
  *&v183 = v57;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(v57 + 112);
  v167 = v46;
  if (v58)
  {
    v59 = 1;
  }

  else
  {
    swift_getKeyPath();
    *&v183 = v57;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v59 = *(v57 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  KeyPath = swift_getKeyPath();
  v65 = swift_allocObject();
  *(v65 + 16) = v59;
  v66 = v151;
  (*(v152 + 32))(v151, v54, v153);
  v67 = (v66 + *(v149 + 36));
  *v67 = KeyPath;
  v67[1] = sub_100035DEC;
  v67[2] = v65;
  LOBYTE(KeyPath) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = v155;
  sub_10002A894(v66, v155, &qword_10025AAA0, &unk_1001E0E40);
  v77 = v76 + *(v161 + 36);
  *v77 = KeyPath;
  *(v77 + 8) = v69;
  *(v77 + 16) = v71;
  *(v77 + 24) = v73;
  *(v77 + 32) = v75;
  *(v77 + 40) = 0;
  v181 = v187;
  State.projectedValue.getter();
  v79 = *(&v183 + 1);
  v78 = v183;
  v80 = v184;
  swift_getKeyPath();
  v181 = __PAIR128__(v79, v78);
  v182 = v80;
  Binding.subscript.getter();

  v165 = v179;
  LODWORD(v166) = v180;

  static UnitPoint.top.getter();
  v81 = v157;
  *v157 = v82;
  v81[1] = v83;
  v84 = v158;
  (*(v158 + 104))(v81, enum case for PopoverAttachmentAnchor.point(_:), v162);
  v85 = swift_allocObject();
  v86 = *(v49 + 48);
  *(v85 + 48) = *(v49 + 32);
  *(v85 + 64) = v86;
  *(v85 + 80) = *(v49 + 64);
  v87 = *(v49 + 16);
  *(v85 + 16) = *v49;
  *(v85 + 32) = v87;
  sub_10019A9EC(v49, &v183);
  Edge.Set.init(_:)();
  sub_10000341C(&qword_10025AA88, &unk_1001CE230);
  sub_10019A788();
  v88 = sub_100003E34(&qword_10025AAD0, &qword_1001CE250);
  v89 = sub_100003E34(&qword_10025AAD8, &qword_1001CE258);
  v90 = sub_10019A814();
  *&v183 = v89;
  *(&v183 + 1) = v90;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v183 = v88;
  *(&v183 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v92 = v154;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v84 + 8))(v81, v162);
  sub_10000F500(v76, &qword_10025AA80, &qword_1001CE228);
  v63 = v168;
  v61 = v178;
  v62 = v169;
  (*(v168 + 32))(v178, v92, v169);
  v60 = 0;
  v46 = v167;
LABEL_10:
  v93 = 1;
  (*(v63 + 56))(v61, v60, 1, v62);
  v94 = type metadata accessor for FeedbackFeatureFlags();
  v185 = v94;
  v186 = sub_10019A648(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v95 = sub_10002DB6C(&v183);
  (*(*(v94 - 8) + 104))(v95, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v94);
  LOBYTE(v94) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v183);
  if (v94)
  {
    v183 = v187;
    State.wrappedValue.getter();
    v96 = v181;
    swift_getKeyPath();
    *&v183 = v96;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v97 = *(v96 + 80);
    v98 = *(v96 + 88);
    v99 = *(v96 + 96);
    v169 = *(v96 + 72);
    v168 = v97;
    v166 = v98;
    LODWORD(v165) = v99;
    sub_10002879C(v169, v97, v98, v99);

    v183 = v187;
    State.wrappedValue.getter();
    v100 = v181;
    swift_getKeyPath();
    *&v183 = v100;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v101 = *(v100 + 40);
    v162 = *(v100 + 32);
    v164 = v101;

    v183 = v187;
    State.wrappedValue.getter();
    v102 = v181;
    swift_getKeyPath();
    *&v183 = v102;
    v167 = v46;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v103 = *(v102 + 56);
    v158 = *(v102 + 48);
    v161 = v103;

    v183 = v187;
    State.wrappedValue.getter();
    v104 = v181;
    swift_getKeyPath();
    *&v183 = v104;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v105 = *(v104 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);
    v157 = *(v104 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);

    v183 = v187;
    State.wrappedValue.getter();
    v106 = v181;
    swift_getKeyPath();
    *&v183 = v106;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v107 = *(v106 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
    if (v107)
    {
      v108 = v107;
      v109 = [v108 string];
      v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v155 = v110;
    }

    else
    {

      v156 = 0;
      v155 = 0xE000000000000000;
    }

    v183 = v187;
    State.wrappedValue.getter();
    v111 = v181;
    swift_getKeyPath();
    *&v183 = v111;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v112 = *(v111 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
    v113 = *(v111 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);

    v183 = v187;
    State.wrappedValue.getter();
    v114 = v181;
    swift_getKeyPath();
    *&v183 = v114;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v115 = *(v114 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);

    if (v115)
    {
      v183 = v187;
      State.wrappedValue.getter();
      v116 = v181;
      swift_getKeyPath();
      *&v183 = v116;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v117 = *(v116 + 112);
    }

    else
    {
      v117 = 1;
    }

    v183 = v187;
    State.wrappedValue.getter();
    v118 = v181;
    swift_getKeyPath();
    *&v183 = v118;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v120 = *(v118 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
    v119 = *(v118 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);

    v121 = v159;
    *(v159 + 25) = 0;
    v122 = *(v160 + 92);
    *(v121 + v122) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    v123 = v168;
    *(v121 + 128) = v169;
    *(v121 + 136) = v123;
    *(v121 + 144) = v166;
    *(v121 + 152) = v165;
    *&v124 = v162;
    *(&v124 + 1) = v164;
    *&v125 = v158;
    *(&v125 + 1) = v161;
    *(v121 + 24) = v125;
    *(v121 + 8) = v124;
    *(v121 + 40) = v157;
    *(v121 + 48) = v105;
    *(v121 + 56) = 0;
    *(v121 + 64) = 0;
    v126 = v155;
    *(v121 + 72) = v156;
    *(v121 + 80) = v126;
    *(v121 + 88) = v112;
    *(v121 + 96) = v113;
    *v121 = 0;
    *(v121 + 153) = v117;
    *(v121 + 154) = 0;
    *(v121 + 156) = 0;
    *&v181 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v127 = v183;
    *(v121 + 104) = _swiftEmptyArrayStorage;
    *(v121 + 112) = _swiftEmptyArrayStorage;
    *(v121 + 120) = _swiftEmptyArrayStorage;
    v128 = *(&v183 + 1);
    *(v121 + 208) = v127;
    *(v121 + 160) = 0u;
    *(v121 + 176) = 0u;
    *(v121 + 192) = 0;
    *(v121 + 216) = v128;
    *(v121 + 224) = v120;
    *(v121 + 232) = v119;
    LODWORD(v183) = 0x1000000;
    sub_10019A648(&qword_10025BBA0, type metadata accessor for FeedbackView);
    sub_100035980();
    View.buttonStyle<A>(_:)();
    sub_10003553C(v121);
    v93 = 0;
  }

  v129 = sub_10000341C(&qword_10025BD10, &unk_1001DE680);
  v130 = v176;
  (*(*(v129 - 8) + 56))(v176, v93, 1, v129);
  v131 = v171;
  v132 = *(v171 + 16);
  v133 = v170;
  v134 = v172;
  v132(v170, v177, v172);
  v135 = v178;
  v136 = v173;
  sub_1000081F8(v178, v173, &qword_1002667B8, &qword_1001E0E58);
  v137 = v174;
  sub_1000081F8(v130, v174, &qword_10025BD18, &unk_1001D0C90);
  v138 = v175;
  v132(v175, v133, v134);
  v139 = sub_10000341C(&qword_1002668C8, &qword_1001E1190);
  sub_1000081F8(v136, &v138[*(v139 + 48)], &qword_1002667B8, &qword_1001E0E58);
  sub_1000081F8(v137, &v138[*(v139 + 64)], &qword_10025BD18, &unk_1001D0C90);
  sub_10000F500(v130, &qword_10025BD18, &unk_1001D0C90);
  sub_10000F500(v135, &qword_1002667B8, &qword_1001E0E58);
  v140 = *(v131 + 8);
  v140(v177, v134);
  sub_10000F500(v137, &qword_10025BD18, &unk_1001D0C90);
  sub_10000F500(v136, &qword_1002667B8, &qword_1001E0E58);
  return (v140)(v133, v134);
}

uint64_t sub_100196A34@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IconOnlyLabelStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  LOBYTE(v11) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = sub_10000341C(&qword_10025BD30, &unk_1001E1180);
  v21 = a1 + *(result + 36);
  *v21 = v11;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_100196CE0(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) = (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_100196E2C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100196EA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002667D0, &qword_1001E1028);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v13 - v6;
  sub_100125454(0);
  Image.init(_internalSystemName:)();
  v14 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v8 = v13[1];
  swift_getKeyPath();
  *&v14 = v8;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + 112) == 1)
  {

LABEL_5:
    static SymbolRenderingMode.monochrome.getter();
    goto LABEL_6;
  }

  swift_getKeyPath();
  *&v14 = v8;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);

  if (!v9)
  {
    goto LABEL_5;
  }

  static SymbolRenderingMode.multicolor.getter();
LABEL_6:
  v10 = type metadata accessor for SymbolRenderingMode();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = Image.symbolRenderingMode(_:)();

  result = sub_10000F500(v7, &qword_1002667D0, &qword_1001E1028);
  *a2 = v11;
  return result;
}

uint64_t sub_1001970F8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __int128 *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = a3;
  v50 = a4;
  v6 = type metadata accessor for PresentationKind();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  __chkstk_darwin(v6);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PresentationBackgroundInteraction();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10000341C(&qword_10025AAD0, &qword_1001CE250);
  v45 = *(v43 - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin(v43);
  v15 = &v40 - v14;
  v51 = *(a1 + 48);
  v52 = *(a1 + 64);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  v16 = *(&v78 + 1);
  v41 = v78;
  v17 = v79;
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  v78 = v20;
  a2(a1, &v51);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v21 = v51;
  swift_getKeyPath();
  *&v51 = v21;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v21 + v22, v56, &unk_10025B1C0, &unk_1001CFA90);

  *&v51 = v41;
  *(&v51 + 1) = v16;
  v52 = v17;
  v53 = 1;
  v54 = v42;
  v55 = v18;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v56[40] = v78;
  v57 = v79;
  v58 = v80;
  v59 = 1;
  LOBYTE(v22) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v60 = v22;
  v61 = v23;
  v62 = v24;
  v63 = v25;
  v64 = v26;
  v65 = 0;
  LOBYTE(v22) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v66 = v22;
  v67 = v27;
  v68 = v28;
  v69 = v29;
  v70 = v30;
  v71 = 0;
  LOBYTE(v22) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v72 = v22;
  v73 = v31;
  v74 = v32;
  v75 = v33;
  v76 = v34;
  v77 = 0;
  v35 = sub_10000341C(&qword_10025AAD8, &qword_1001CE258);
  v36 = sub_10019A814();
  View.interactiveDismissDisabled(_:)();
  sub_10000F500(&v51, &qword_10025AAD8, &qword_1001CE258);
  static PresentationBackgroundInteraction.enabled.getter();
  v37 = v44;
  static PresentationKind.popover.getter();
  *&v51 = v35;
  *(&v51 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v38 = v43;
  View.presentationBackgroundInteraction(_:for:)();
  (*(v48 + 8))(v37, v49);
  (*(v46 + 8))(v12, v47);
  return (*(v45 + 8))(v15, v38);
}

uint64_t sub_1001975C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v12 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v24 - v14;
  v30 = *(a3 + 16);
  v28[0] = *(a3 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v16 = v29;
  if (*(v29 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust))
  {
    KeyPath = swift_getKeyPath();
    v26 = a7;
    v24[1] = v24;
    __chkstk_darwin(KeyPath);
    v25 = a1;
    v24[-2] = v16;
    LOBYTE(v24[-1]) = 0;
    *&v28[0] = v16;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    a1 = v25;

    a7 = v26;
  }

  else
  {
    *(v29 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) = 0;
  }

  v28[0] = v30;
  State.wrappedValue.getter();

  sub_100036534(5, a1, a2, 0);

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  type metadata accessor for MainActor();
  a5(a3, v28);
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  v21 = *(a3 + 48);
  *(v20 + 64) = *(a3 + 32);
  *(v20 + 80) = v21;
  *(v20 + 96) = *(a3 + 64);
  v22 = *(a3 + 16);
  *(v20 + 32) = *a3;
  *(v20 + 48) = v22;
  sub_10015C9C8(0, 0, v15, a7, v20);
}

uint64_t sub_1001978A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v91 = sub_10000341C(&qword_10025BC58, &unk_1001E10B0);
  v90 = *(v91 - 8);
  v3 = *(v90 + 64);
  __chkstk_darwin(v91);
  v89 = v85 - v4;
  v92 = sub_10000341C(&qword_10025BC60, &unk_1001D0C10);
  v5 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v96 = v85 - v6;
  v95 = sub_10000341C(&qword_10025BC68, &unk_1001E10C0);
  v7 = *(*(v95 - 8) + 64);
  v8 = __chkstk_darwin(v95);
  v99 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v94 = v85 - v11;
  __chkstk_darwin(v10);
  v97 = v85 - v12;
  v88 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v13 = *(*(v88 - 8) + 64);
  v14 = __chkstk_darwin(v88);
  v98 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v103 = v85 - v16;
  v17 = type metadata accessor for IconOnlyLabelStyle();
  v86 = *(v17 - 8);
  v18 = *(v86 + 64);
  __chkstk_darwin(v17);
  v20 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000341C(&qword_100266840, &qword_1001E10D0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = v85 - v23;
  v87 = sub_10000341C(&qword_100266848, &qword_1001E10D8);
  v25 = *(v87 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v87);
  v28 = v85 - v27;
  v29 = sub_10000341C(&qword_100266850, &unk_1001E10E0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v93 = v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v104 = v85 - v33;
  v110 = *(a1 + 16);
  v106 = *(a1 + 16);
  v102 = sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v34 = v107;
  swift_getKeyPath();
  *&v106 = v34;
  v101 = sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v34 + 96))
  {
  }

  else
  {
    v85[0] = v28;
    v85[1] = v21;
    v38 = *(v34 + 72);

    if ((v38 - 2) < 4 || !v38)
    {
      v106 = v110;
      State.wrappedValue.getter();
      v39 = v107;
      swift_getKeyPath();
      *&v106 = v39;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v40 = *(v39 + 112);

      if (v40)
      {
        v41 = 1;
      }

      else
      {
        v106 = v110;
        State.wrappedValue.getter();
        v42 = v107;
        swift_getKeyPath();
        *&v106 = v42;
        sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v41 = *(v42 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal);
      }

      v43 = v20;
      *v24 = static VerticalAlignment.center.getter();
      *(v24 + 1) = 0x4030000000000000;
      v24[16] = 0;
      v44 = sub_10000341C(&qword_100266860, &qword_1001E10F8);
      sub_100198670(a1, v41, &v24[*(v44 + 44)]);
      IconOnlyLabelStyle.init()();
      sub_100007120(&qword_100266868, &qword_100266840, &qword_1001E10D0);
      sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
      v45 = v85[0];
      View.labelStyle<A>(_:)();
      (*(v86 + 8))(v43, v17);
      sub_10000F500(v24, &qword_100266840, &qword_1001E10D0);
      KeyPath = swift_getKeyPath();
      v47 = swift_allocObject();
      *(v47 + 16) = v41;
      v48 = (v45 + *(sub_10000341C(&qword_100266870, &qword_1001E1100) + 36));
      *v48 = KeyPath;
      v48[1] = sub_100035DEC;
      v48[2] = v47;
      LOBYTE(KeyPath) = static Edge.Set.trailing.getter();
      EdgeInsets.init(_all:)();
      v49 = v87;
      v50 = v45 + *(v87 + 36);
      *v50 = KeyPath;
      *(v50 + 8) = v51;
      *(v50 + 16) = v52;
      *(v50 + 24) = v53;
      *(v50 + 32) = v54;
      *(v50 + 40) = 0;
      v55 = v104;
      sub_10002A894(v45, v104, &qword_100266848, &qword_1001E10D8);
      v37 = v49;
      v36 = v55;
      v35 = 0;
      goto LABEL_10;
    }
  }

  v35 = 1;
  v36 = v104;
  v37 = v87;
LABEL_10:
  (*(v25 + 56))(v36, v35, 1, v37);
  v56 = v103;
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v57 = (v56 + *(v88 + 36));
  v58 = v108;
  *v57 = v107;
  v57[1] = v58;
  v57[2] = v109;
  v59 = swift_allocObject();
  v60 = *(a1 + 48);
  *(v59 + 48) = *(a1 + 32);
  *(v59 + 64) = v60;
  *(v59 + 80) = *(a1 + 64);
  v61 = *(a1 + 16);
  *(v59 + 16) = *a1;
  *(v59 + 32) = v61;
  sub_10019A9EC(a1, &v106);
  sub_10000341C(&qword_10025BC98, &qword_1001D0C40);
  sub_10019AE38(&qword_10025BCA0, &qword_10025BC98, &qword_1001D0C40, sub_100035A58);
  v62 = v89;
  Button.init(action:label:)();
  v106 = v110;
  State.wrappedValue.getter();
  v63 = v105;
  swift_getKeyPath();
  *&v106 = v63;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v64 = *(v63 + 112);

  LOBYTE(v106) = v64;
  *(&v106 + 1) = 0;
  BYTE3(v106) = 0;
  sub_100007120(&qword_10025BCB0, &qword_10025BC58, &unk_1001E10B0);
  sub_100035980();
  v65 = v96;
  v66 = v91;
  View.buttonStyle<A>(_:)();
  (*(v90 + 8))(v62, v66);
  type metadata accessor for PresentationModel();
  sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel);
  v67 = Environment.init<A>(_:)();
  v68 = &v65[*(v92 + 36)];
  *v68 = v67;
  v68[8] = v69 & 1;
  v106 = v110;
  State.wrappedValue.getter();
  v70 = v105;
  swift_getKeyPath();
  v71 = 1;
  *&v106 = v70;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v70 + 112) & 1) == 0)
  {
    swift_getKeyPath();
    *&v106 = v70;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v71 = *(v70 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  v72 = swift_getKeyPath();
  v73 = swift_allocObject();
  *(v73 + 16) = v71;
  v74 = v65;
  v75 = v94;
  sub_10002A894(v74, v94, &qword_10025BC60, &unk_1001D0C10);
  v76 = (v75 + *(v95 + 36));
  *v76 = v72;
  v76[1] = sub_100035DEC;
  v76[2] = v73;
  v77 = v97;
  sub_10002A894(v75, v97, &qword_10025BC68, &unk_1001E10C0);
  v78 = v93;
  sub_1000081F8(v104, v93, &qword_100266850, &unk_1001E10E0);
  v79 = v103;
  v80 = v98;
  sub_1000081F8(v103, v98, &qword_10025D700, &unk_1001DE550);
  v81 = v99;
  sub_1000081F8(v77, v99, &qword_10025BC68, &unk_1001E10C0);
  v82 = v100;
  sub_1000081F8(v78, v100, &qword_100266850, &unk_1001E10E0);
  v83 = sub_10000341C(&qword_100266858, &qword_1001E10F0);
  sub_1000081F8(v80, v82 + *(v83 + 48), &qword_10025D700, &unk_1001DE550);
  sub_1000081F8(v81, v82 + *(v83 + 64), &qword_10025BC68, &unk_1001E10C0);
  sub_10000F500(v77, &qword_10025BC68, &unk_1001E10C0);
  sub_10000F500(v79, &qword_10025D700, &unk_1001DE550);
  sub_10000F500(v104, &qword_100266850, &unk_1001E10E0);
  sub_10000F500(v81, &qword_10025BC68, &unk_1001E10C0);
  sub_10000F500(v80, &qword_10025D700, &unk_1001DE550);
  return sub_10000F500(v78, &qword_100266850, &unk_1001E10E0);
}

uint64_t sub_100198670@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v38 = a3;
  v37 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v4 = *(v37 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v37);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v34[-v9];
  v11 = sub_10000341C(&qword_100266878, &qword_1001E1108);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34[-v14];
  v16 = sub_10000341C(&qword_100266880, &qword_1001E1110);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v34[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v34[-v21];
  v39[0] = *(a1 + 32);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v40 == 1)
  {
    *v15 = static VerticalAlignment.center.getter();
    *(v15 + 1) = 0x4020000000000000;
    v15[16] = 0;
    v23 = sub_10000341C(&qword_100266890, &qword_1001E1120);
    sub_100198AB8(v35 & 1, a1, &v15[*(v23 + 44)]);
    sub_10002A894(v15, v22, &qword_100266878, &qword_1001E1108);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v12 + 56))(v22, v24, 1, v11);
  v25 = swift_allocObject();
  v36 = v22;
  v26 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(a1 + 64);
  v27 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  sub_10019A9EC(a1, v39);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  Button.init(action:label:)();
  sub_1000081F8(v22, v20, &qword_100266880, &qword_1001E1110);
  v28 = v4[2];
  v29 = v37;
  v28(v8, v10, v37);
  v30 = v38;
  sub_1000081F8(v20, v38, &qword_100266880, &qword_1001E1110);
  v31 = sub_10000341C(&qword_100266888, &qword_1001E1118);
  v28(v30 + *(v31 + 48), v8, v29);
  v32 = v4[1];
  v32(v10, v29);
  sub_10000F500(v36, &qword_100266880, &qword_1001E1110);
  v32(v8, v29);
  return sub_10000F500(v20, &qword_100266880, &qword_1001E1110);
}

uint64_t sub_100198AB8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v40 = sub_10000341C(&qword_100264608, &qword_1001DCD40);
  v5 = *(*(v40 - 8) + 64);
  v6 = __chkstk_darwin(v40);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - v13;
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  if (a1)
  {
    v38 = 1;
    v39 = 1;
  }

  else
  {
    v44 = *(a2 + 16);
    v42[0] = *(a2 + 16);
    sub_10000341C(&qword_100261898, &qword_1001D7C40);
    State.wrappedValue.getter();
    v17 = v43;
    swift_getKeyPath();
    *&v42[0] = v17;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount);

    v38 = v18 == 0;
    v42[0] = v44;
    State.wrappedValue.getter();
    v19 = v43;
    swift_getKeyPath();
    *&v42[0] = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v19 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount);

    v39 = v20 == 0;
  }

  v21 = swift_allocObject();
  v22 = *(a2 + 48);
  *(v21 + 48) = *(a2 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a2 + 64);
  v23 = *(a2 + 16);
  *(v21 + 16) = *a2;
  *(v21 + 32) = v23;
  sub_10019A9EC(a2, v42);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v38;
  v26 = v40;
  v27 = &v16[*(v40 + 36)];
  *v27 = KeyPath;
  v27[1] = sub_100035DEC;
  v27[2] = v25;
  v28 = swift_allocObject();
  v29 = *(a2 + 48);
  *(v28 + 48) = *(a2 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(a2 + 64);
  v30 = *(a2 + 16);
  *(v28 + 16) = *a2;
  *(v28 + 32) = v30;
  sub_10019A9EC(a2, v42);
  Button.init(action:label:)();
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  v33 = &v14[*(v26 + 36)];
  *v33 = v31;
  v33[1] = sub_100035DEC;
  v33[2] = v32;
  sub_1000081F8(v16, v11, &qword_100264608, &qword_1001DCD40);
  sub_1000081F8(v14, v8, &qword_100264608, &qword_1001DCD40);
  v34 = v41;
  sub_1000081F8(v11, v41, &qword_100264608, &qword_1001DCD40);
  v35 = sub_10000341C(&qword_100266898, &qword_1001E1128);
  sub_1000081F8(v8, v34 + *(v35 + 48), &qword_100264608, &qword_1001DCD40);
  sub_10000F500(v14, &qword_100264608, &qword_1001DCD40);
  sub_10000F500(v16, &qword_100264608, &qword_1001DCD40);
  sub_10000F500(v8, &qword_100264608, &qword_1001DCD40);
  return sub_10000F500(v11, &qword_100264608, &qword_1001DCD40);
}

uint64_t sub_100198FA8(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  v3 = State.wrappedValue.getter();
  a2(v3);
}

uint64_t sub_10019900C(uint64_t a1, void (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  v7 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v17 - v9;
  v17[0] = *(a1 + 32);
  v18 = 1;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  type metadata accessor for MainActor();
  a2(a1, v17);
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  v14 = *(a1 + 48);
  *(v13 + 64) = *(a1 + 32);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(a1 + 64);
  v15 = *(a1 + 16);
  *(v13 + 32) = *a1;
  *(v13 + 48) = v15;
  sub_10015C9C8(0, 0, v10, a4, v13);
}

uint64_t sub_100199184(uint64_t a1, char a2)
{
  v6 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  sub_1000C2BCC(a2, 0, 0);

  v7 = *(a1 + 16);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100199250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a3;
  type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_1001992E8, v5, v4);
}

uint64_t sub_1001992E8()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v2 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v2;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
  {
    v3 = *(v0 + 112);

LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  *(v0 + 32) = *(v1 + 16);
  State.wrappedValue.getter();
  v4 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 88) = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  if (v5 == 1)
  {
    v6 = *(v0 + 112);
    goto LABEL_5;
  }

  *(v0 + 48) = *(v1 + 16);
  State.wrappedValue.getter();
  *(v0 + 136) = *(v0 + 96);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_100034594;

  return sub_1000B6880(1);
}

uint64_t sub_100199534(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9 - 8);
  if (*a2 == 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0x2065736F706D6F43;
    v12._object = 0xED00002068746977;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
    v13._countAndFlagsBits = sub_1000971C0();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v13);

    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    sub_100149E4C(v15);
    v16 = [objc_opt_self() mainBundle];
    v36._object = 0x80000001001E3AF0;
    v17._countAndFlagsBits = 0x402520657355;
    v17._object = 0xE600000000000000;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0xD000000000000069;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v36);

    sub_10000341C(&qword_10025BA50, &qword_1001D0860);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001CF9D0;
    v20 = sub_1000971C0();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10002D7B0();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    static String.localizedStringWithFormat(_:_:)();

    aBlock = *(a3 + 16);
    sub_10000341C(&qword_100261898, &qword_1001D7C40);
    State.wrappedValue.getter();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if ([Strong respondsToSelector:{"showAlertWithTitle:message:buttonTitle:buttonAction:", aBlock}])
      {
        v24 = swift_allocObject();
        v25 = *(a3 + 48);
        *(v24 + 48) = *(a3 + 32);
        *(v24 + 64) = v25;
        *(v24 + 80) = *(a3 + 64);
        v26 = *(a3 + 16);
        *(v24 + 16) = *a3;
        *(v24 + 32) = v26;
        sub_10019A9EC(a3, &aBlock);
        v27 = String._bridgeToObjectiveC()();

        v28 = String._bridgeToObjectiveC()();

        v29 = String._bridgeToObjectiveC()();

        v34 = sub_10019AD34;
        v35 = v24;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v32 = sub_1001256BC;
        v33 = &unk_100252560;
        v30 = _Block_copy(&aBlock);
        [Strong showAlertWithTitle:v27 message:v28 buttonTitle:v29 buttonAction:v30];
        swift_unknownObjectRelease();
        _Block_release(v30);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1001999B8(uint64_t a1)
{
  v21 = *(a1 + 16);
  v19 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v19 = v18[0];
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v18[0] + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task))
  {
    v2 = *(v18[0] + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task);

    Task.cancel()();
  }

  sub_1000B2528(0);

  v19 = *(a1 + 16);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v19 = v18[0];
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v18[0] + v3, &v19, &unk_10025B1C0, &unk_1001CFA90);

  if (v20)
  {
    sub_100028458(&v19, v18);
    sub_10000F500(&v19, &unk_10025B1C0, &unk_1001CFA90);
    v4 = *sub_100027874(v18, v18[3]);
    sub_10000ECC4();
    sub_10000F4B4(v18);
  }

  else
  {
    sub_10000F500(&v19, &unk_10025B1C0, &unk_1001CFA90);
  }

  v19 = *(a1 + 16);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if (([Strong respondsToSelector:"handoffFromUCBFromTool:withPrompt:"] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return;
    }

    v19 = *(a1 + 16);
    State.wrappedValue.getter();
    v6 = v18[0];
    swift_getKeyPath();
    *&v19 = v6;
    sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v6 + 72);
    v8 = *(v6 + 80);
    v9 = *(v6 + 88);
    v10 = *(v6 + 96);
    sub_10002879C(v7, v8, v9, *(v6 + 96));

    if (v10 == 255)
    {
      swift_unknownObjectRelease();
      __break(1u);
    }

    else
    {
      v11 = sub_100106D00(v7, v8, v9, v10);
      sub_1000278C0(v7, v8, v9, v10);
      v19 = v21;
      State.wrappedValue.getter();
      v12 = v18[0];
      swift_getKeyPath();
      *&v19 = v12;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = *(v12 + 96);
      if (v13 != 255)
      {
        v15 = *(v12 + 72);
        v14 = *(v12 + 80);
        v16 = *(v12 + 88);
        sub_10000F3F4(v15, v14, v16, *(v12 + 96));

        if (v13)
        {
          sub_1000278C0(v15, v14, v16, v13);
          v17 = 0;
        }

        else if (v16)
        {
          v17 = String._bridgeToObjectiveC()();
        }

        else
        {
          v17 = 0;
        }

        [Strong handoffFromUCBFromTool:v11 withPrompt:v17];

        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100199E7C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 64);
  v2 = *v0;
  v3 = v0[1];
  return sub_100193784();
}

uint64_t sub_100199EC0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100199EF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_100199F28@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PresentationModel();
  sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel);
  v2 = Environment.init<A>(_:)();
  v13 = v3 & 1;
  State.init(wrappedValue:)();
  v4 = FocusState.init<>()();
  v6 = v5;
  v7 = v4 & 1;
  v9 = v8 & 1;
  type metadata accessor for RewritingModel();
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v13;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v7;
  *(a1 + 56) = v6;
  *(a1 + 64) = v9;
  return result;
}

uint64_t sub_10019A050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019A09C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10019A180()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002B2A0;

  return sub_1001926E0(v2, v3, v0 + 32);
}

unint64_t sub_10019A234()
{
  result = qword_1002666E0;
  if (!qword_1002666E0)
  {
    sub_100003E34(&qword_10025A990, &qword_1001CE170);
    sub_10019ABCC(&qword_1002666E8, &qword_1002666D0, &qword_1001E0B58, sub_10019A2EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002666E0);
  }

  return result;
}

unint64_t sub_10019A2EC()
{
  result = qword_1002666F0;
  if (!qword_1002666F0)
  {
    sub_100003E34(&qword_1002666D8, &qword_1001E0B60);
    sub_100007120(&qword_10025BBF0, &qword_10025BBF8, &qword_1001D0B90);
    sub_100007120(&qword_1002666F8, &qword_100266700, &qword_1001E0BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002666F0);
  }

  return result;
}

uint64_t sub_10019A3D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019A420@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10019A454(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_10019A550(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100028688;

  return sub_100192584(a1, v4, v5, v1 + 32);
}

uint64_t sub_10019A648(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10019A788()
{
  result = qword_10025AA90;
  if (!qword_10025AA90)
  {
    sub_100003E34(&qword_10025AA80, &qword_1001CE228);
    sub_100006FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA90);
  }

  return result;
}

unint64_t sub_10019A814()
{
  result = qword_10025AAE0;
  if (!qword_10025AAE0)
  {
    sub_100003E34(&qword_10025AAD8, &qword_1001CE258);
    sub_100007168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AAE0);
  }

  return result;
}

uint64_t sub_10019A900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_1001915A8(a1, v4, v5, v1 + 32);
}

uint64_t sub_10019AA24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002B2A0;

  return sub_100199250(v2, v3, v0 + 32);
}

unint64_t sub_10019AAD0()
{
  result = qword_1002667F0;
  if (!qword_1002667F0)
  {
    sub_100003E34(&qword_1002667D8, &qword_1001E1030);
    sub_100003E34(&qword_10025A9A8, &qword_1001E1040);
    sub_10019ABCC(&qword_1002667F8, &qword_10025A9A8, &qword_1001E1040, sub_10019AC50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002667F0);
  }

  return result;
}

uint64_t sub_10019ABCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_100035924();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019AC50()
{
  result = qword_100266800;
  if (!qword_100266800)
  {
    sub_100003E34(&qword_1002667E8, &qword_1001E1048);
    sub_100007120(&qword_10025BBF0, &qword_10025BBF8, &qword_1001D0B90);
    sub_100007120(&qword_100266808, &qword_100266810, &qword_1001E1068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266800);
  }

  return result;
}

uint64_t sub_10019AD88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_1001915A8(a1, v4, v5, v1 + 32);
}

uint64_t sub_10019AE38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019AF88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  j__swift_release();
  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10019B044()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  j__swift_release();
  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_10019B0A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_1001915A8(a1, v4, v5, v1 + 32);
}

uint64_t sub_10019B19C()
{
  sub_100003E34(&qword_1002667D8, &qword_1001E1030);
  sub_10019AAD0();
  sub_100035198();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10019B2F0(unsigned __int8 a1)
{
  v12 = sub_10017FA90();

  v2._countAndFlagsBits = 2570;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);

  v11._countAndFlagsBits = sub_100182E74();
  v11._object = v3;

  v4._countAndFlagsBits = 2570;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);

  String.append(_:)(v11);

  v5 = sub_10017FE98(a1);
  v6 = sub_10019BA24(v5);
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v12;
}

uint64_t sub_10019B3D4()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder.OutputFormatting();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10000341C(&qword_10025CC18, &qword_1001D1FB8);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001CF9E0;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  *&v24 = v10;
  sub_10004DBA0();
  sub_10000341C(&qword_10025CC28, &unk_1001D1FC0);
  sub_100007120(&qword_10025CC30, &qword_10025CC28, &unk_1001D1FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v11 = v1[1];
  v24 = *v1;
  v25 = v11;
  v26 = v1[2];
  sub_10009A85C();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  sub_10004DC4C(v12, v13);
  v15 = sub_100097014(v12, v14);
  if (v16)
  {
    v17 = v15;
    sub_10004DD08(v12, v14);
LABEL_9:

    sub_10004DD08(v12, v14);
    return v17;
  }

  v22 = v12;
  v23 = v14;
  sub_10004DC4C(v12, v14);
  sub_10000341C(&qword_10025F350, &unk_1001D40F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10004DD08(v12, v14);
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_10004DCA0(v20);
LABEL_8:
    v17 = sub_100095E84(v12, v14);
    goto LABEL_9;
  }

  sub_100008198(v20, &v24);
  sub_100027874(&v24, *(&v25 + 1));
  HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
  sub_10004DD08(v12, v14);
  if ((HasContiguous & 1) == 0)
  {
    sub_10000F4B4(&v24);
    goto LABEL_8;
  }

  sub_100027874(&v24, *(&v25 + 1));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

  sub_10004DD08(v12, v14);
  v17 = *&v20[0];
  sub_10000F4B4(&v24);
  return v17;
}

uint64_t sub_10019B75C(void *a1)
{
  v3 = v1;
  v5 = sub_10000341C(&qword_1002668D8, &qword_1001E1268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_100027874(a1, a1[3]);
  sub_10019BBA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10019B8FC()
{
  v1 = 0x6C616E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x646E756F72727573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_10019B968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10019BD24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10019B990(uint64_t a1)
{
  v2 = sub_10019BBA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019B9CC(uint64_t a1)
{
  v2 = sub_10019BBA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019BA24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100163C20(0, v1, 0);
    v3 = (a1 + 32);
    v4 = 1;
    do
    {
      v5 = *v3;

      v6 = sub_10004D750(v4, v5);
      v8 = v7;

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_100163C20((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      ++v4;
      ++v3;
      --v1;
    }

    while (v1);
  }

  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0);
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

unint64_t sub_10019BBA8()
{
  result = qword_1002668E0;
  if (!qword_1002668E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002668E0);
  }

  return result;
}

unint64_t sub_10019BC20()
{
  result = qword_1002668E8;
  if (!qword_1002668E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002668E8);
  }

  return result;
}