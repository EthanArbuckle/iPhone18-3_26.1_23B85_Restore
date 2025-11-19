uint64_t sub_1508()
{
  v1 = [v0 destination];
  if (!v1)
  {
    sub_115E4();
    v1 = sub_115B4();
  }

  v2 = [objc_opt_self() isStringEmailAddress:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 destination];
  v4 = sub_115E4();

  return v4;
}

id sub_15E0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_115B4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1660()
{
  v1 = [v0 destination];
  if (!v1)
  {
    sub_115E4();
    v1 = sub_115B4();
  }

  v2 = [objc_opt_self() isStringEmailAddress:v1];

  if (v2)
  {
    return 0;
  }

  v4 = [v0 destination];
  v5 = sub_115E4();

  return v5;
}

id sub_17B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DSHandle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1830(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1884(uint64_t a1, id *a2)
{
  result = sub_115C4();
  *a2 = 0;
  return result;
}

uint64_t sub_18FC(uint64_t a1, id *a2)
{
  v3 = sub_115D4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_197C@<X0>(void *a1@<X8>)
{
  sub_115E4();
  v2 = sub_115B4();

  *a1 = v2;
  return result;
}

uint64_t sub_19C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_115B4();

  *a2 = v5;
  return result;
}

uint64_t sub_1A08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_115E4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1A34(uint64_t a1)
{
  v2 = sub_1B34(&qword_1ED98);
  v3 = sub_1B34(&unk_1EDA0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1B34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DSSourceName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B78()
{
  v1 = *v0;
  sub_115E4();
  v2 = sub_11624();

  return v2;
}

uint64_t sub_1BB4()
{
  v1 = *v0;
  sub_115E4();
  sub_11604();
}

Swift::Int sub_1C08()
{
  v1 = *v0;
  sub_115E4();
  sub_11884();
  sub_11604();
  v2 = sub_11894();

  return v2;
}

uint64_t sub_1C7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_115E4();
  v6 = v5;
  if (v4 == sub_115E4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_11854();
  }

  return v9 & 1;
}

uint64_t sub_1D4C()
{
  v0 = sub_11584();
  sub_F824(v0, qword_1EE10);
  v1 = sub_F488(v0, qword_1EE10);
  if (qword_1EBB8 != -1)
  {
    swift_once();
  }

  v2 = sub_F488(v0, qword_1F380);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1E24()
{
  v1 = DSSourceNameItemSharing;
  *&v0[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_name] = DSSourceNameItemSharing;
  v2 = OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession;
  v3 = objc_allocWithZone(SPOwnerInterface);
  v4 = v1;
  v5 = [v3 init];
  v6 = [v5 beaconSharingSession];

  *&v0[v2] = v6;
  v7 = OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_ownerSession;
  v8 = [objc_allocWithZone(SPOwnerInterface) init];
  v9 = [v8 ownerSession];

  *&v0[v7] = v9;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FindMyItemsDigitalSeparationSource();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_1F34(uint64_t (*a1)(void *, void), uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = (*(*(sub_F3B8(&qword_1EF38, &qword_14018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17[-1] - v8;
  v10 = sub_11514();
  v17[3] = v10;
  v17[4] = sub_F8CC(&qword_1EF40, &type metadata accessor for Feature.FindMy);
  v11 = sub_F914(v17);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.FindMy.itemSharing(_:), v10);
  LOBYTE(v10) = sub_11504();
  sub_F978(v17);
  if ((v10 & 1) == 0)
  {
    return a1(&_swiftEmptyArrayStorage, 0);
  }

  v12 = sub_11694();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = ObjectType;
  v14 = v3;

  sub_4950(0, 0, v9, &unk_14030, v13);
}

uint64_t sub_2120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[45] = a4;
  v7 = sub_11554();
  v6[48] = v7;
  v8 = *(v7 - 8);
  v6[49] = v8;
  v9 = *(v8 + 64) + 15;
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v10 = *(*(sub_F3B8(&qword_1EF48, &qword_14050) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_22B4, 0, 0);
}

uint64_t sub_22B4()
{
  v14 = v0;
  v0[37] = &_swiftEmptyArrayStorage;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v1 = sub_11584();
  v0[61] = sub_F488(v1, qword_1EE10);
  v2 = sub_11564();
  v3 = sub_116F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_B480(0xD000000000000021, 0x8000000000012A60, &v13);
    _os_log_impl(&dword_0, v2, v3, "%s Attempting to fetch shared resources", v4, 0xCu);
    sub_F978(v5);
  }

  v6 = v0[45];
  v7 = swift_allocObject();
  v0[62] = v7;
  *(v7 + 16) = v6;
  v8 = async function pointer to withTimeout<A>(_:block:)[1];
  v9 = v6;
  v10 = swift_task_alloc();
  v0[63] = v10;
  v11 = sub_F3B8(&qword_1EF50, &qword_14068);
  *v10 = v0;
  v10[1] = sub_2510;

  return withTimeout<A>(_:block:)(v0 + 38, 0x40AAD21B3B700000, 3, &unk_14060, v7, v11);
}

uint64_t sub_2510()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v7 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = sub_4220;
  }

  else
  {
    v5 = *(v2 + 496);

    v4 = sub_2660;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2660()
{
  v286 = v0;
  v277 = (v0 + 216);
  v1 = *(v0 + 304);
  v284 = &_swiftEmptyDictionarySingleton;
  v260 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {

    sub_11744();
    sub_C794();
    sub_F8CC(&qword_1EED0, sub_C794);
    sub_116D4();
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = (v1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v5 = 0;
  }

  v10 = *(v0 + 392);
  v276 = v4;
  v11 = (v4 + 64) >> 6;
  v12 = (v10 + 8);
  v271 = v10;
  v282 = (v10 + 16);
  v263 = xmmword_13F20;
  v278 = (v10 + 8);
  v280 = v3;
  v281 = v2;
  while ((v2 & 0x8000000000000000) == 0)
  {
    v15 = v5;
    v16 = v6;
    v17 = v5;
    if (!v6)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v11)
        {
          goto LABEL_36;
        }

        v16 = *(v3 + v17);
        ++v15;
        if (v16)
        {
          goto LABEL_16;
        }
      }

LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:

      swift_bridgeObjectRelease_n();
    }

LABEL_16:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v2 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_36;
    }

LABEL_20:
    v283 = v18;
    v21 = *(v0 + 464);
    v22 = [v19 beaconIdentifier];
    sub_11544();

    v23 = v284;
    if (!v284[2])
    {
      v25 = *v12;
LABEL_26:
      v37 = *(v0 + 448);
      v25(*(v0 + 464), *(v0 + 384));
      v38 = [v19 beaconIdentifier];
      sub_11544();

      sub_F3B8(&qword_1EF60, &qword_14078);
      inited = swift_initStackObject();
      *(inited + 16) = v263;
      *(inited + 32) = v19;
      v40 = v19;
      sub_EBF0(inited);
      v42 = v41;
      swift_setDeallocating();
      v43 = *(inited + 16);
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v285[0] = v23;
      v45 = sub_BA28(v37);
      v47 = v23[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        goto LABEL_151;
      }

      v51 = v46;
      if (v23[3] >= v50)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = v45;
          sub_D54C();
          v45 = v59;
          v23 = v285[0];
          v12 = v278;
          if ((v51 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v52 = *(v0 + 448);
        sub_CBD8(v50, isUniquelyReferenced_nonNull_native);
        v23 = v285[0];
        v45 = sub_BA28(v52);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_146;
        }
      }

      v12 = v278;
      if ((v51 & 1) == 0)
      {
LABEL_32:
        v54 = *(v0 + 448);
        v55 = *(v0 + 384);
        v23[(v45 >> 6) + 8] |= 1 << v45;
        v56 = v45;
        (*(v271 + 16))(v23[6] + *(v271 + 72) * v45, v54, v55);
        *(v23[7] + 8 * v56) = v42;
        v57 = v23[2];
        v49 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v49)
        {
          goto LABEL_152;
        }

        v23[2] = v58;
        goto LABEL_9;
      }

LABEL_8:
      v13 = v23[7];
      v14 = *(v13 + 8 * v45);
      *(v13 + 8 * v45) = v42;

LABEL_9:
      v25(*(v0 + 448), *(v0 + 384));

      v284 = v23;
      v5 = v17;
      v6 = v283;
      goto LABEL_10;
    }

    v24 = sub_BA28(*(v0 + 464));
    v25 = *v12;
    if ((v26 & 1) == 0)
    {
      goto LABEL_26;
    }

    v27 = v12;
    v29 = *(v0 + 456);
    v28 = *(v0 + 464);
    v30 = *(v0 + 384);
    v31 = *(v284[7] + 8 * v24);

    v25(v28, v30);

    v32 = [v19 beaconIdentifier];
    sub_11544();

    v33 = sub_47A4(v277);
    v35 = *v34;
    v36 = *(v0 + 456);
    v279 = *(v0 + 384);
    if (v35)
    {
      v19 = v19;
      sub_BC94(v285, v19);
    }

    (v33)(v277, 0);

    v25(v36, v279);
    v5 = v17;
    v6 = v283;
    v12 = v27;
LABEL_10:
    v3 = v280;
    v2 = v281;
  }

  v20 = sub_11774();
  if (v20)
  {
    *(v0 + 352) = v20;
    sub_C794();
    swift_dynamicCast();
    v19 = *(v0 + 344);
    v17 = v5;
    v18 = v6;
    if (v19)
    {
      goto LABEL_20;
    }
  }

LABEL_36:
  v60 = *(v0 + 392);
  sub_C7E0();
  v61 = v284[8];
  v273 = (v284 + 8);
  v62 = -1 << *(v284 + 32);
  if (-v62 < 64)
  {
    v63 = ~(-1 << -v62);
  }

  else
  {
    v63 = -1;
  }

  v277 = (v63 & v61);
  v264 = (63 - v62) >> 6;
  v275 = (v60 + 32);
  v266 = "stopSharing(withParticipant:)";
  v272 = enum case for Feature.FindMy.cowardlyCarrot(_:);
  v259 = *(v0 + 512);
  v270 = v284;

  v64 = 0;
  v269 = &_swiftEmptyArrayStorage;
  *&v65 = 136315650;
  v265 = v65;
  *&v65 = 141558275;
  v261 = v65;
  *&v65 = 134218499;
  v262 = v65;
  while (2)
  {
    v67 = v277;
    if (v277)
    {
      v276 = v64;
      v68 = v64;
      goto LABEL_52;
    }

    if (v264 <= v64 + 1)
    {
      v69 = v64 + 1;
    }

    else
    {
      v69 = v264;
    }

    v70 = v69 - 1;
    do
    {
      v68 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
        goto LABEL_150;
      }

      if (v68 >= v264)
      {
        v149 = *(v0 + 472);
        v150 = sub_F3B8(&qword_1EF58, &qword_14070);
        (*(*(v150 - 8) + 56))(v149, 1, 1, v150);
        v276 = v70;
        v277 = 0;
        goto LABEL_53;
      }

      v67 = *&v273[8 * v68];
      ++v64;
    }

    while (!v67);
    v276 = v68;
LABEL_52:
    v71 = *(v0 + 472);
    v72 = *(v0 + 440);
    v73 = *(v0 + 384);
    v277 = ((v67 - 1) & v67);
    v74 = __clz(__rbit64(v67)) | (v68 << 6);
    v75 = v270;
    (*(v271 + 16))(v72, v270[6] + *(v271 + 72) * v74, v73);
    v76 = *(v75[7] + 8 * v74);
    v77 = sub_F3B8(&qword_1EF58, &qword_14070);
    v78 = *(v77 + 48);
    (*v275)(v71, v72, v73);
    *(v71 + v78) = v76;
    (*(*(v77 - 8) + 56))(v71, 0, 1, v77);

LABEL_53:
    v79 = *(v0 + 480);
    sub_FD78(*(v0 + 472), v79);
    v80 = sub_F3B8(&qword_1EF58, &qword_14070);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {
      v243 = *(v0 + 368);
      v244 = *(v0 + 376);

      v243(v269, 0);

      v246 = *(v0 + 472);
      v245 = *(v0 + 480);
      v248 = *(v0 + 456);
      v247 = *(v0 + 464);
      v250 = *(v0 + 440);
      v249 = *(v0 + 448);
      v252 = *(v0 + 424);
      v251 = *(v0 + 432);
      v254 = *(v0 + 408);
      v253 = *(v0 + 416);
      v283 = *(v0 + 400);

      v255 = *(v0 + 8);

      return v255();
    }

    v81 = *(v0 + 488);
    v83 = *(v0 + 424);
    v82 = *(v0 + 432);
    v84 = *(v0 + 384);
    v85 = *(*(v0 + 480) + *(v80 + 48));
    (*v275)(v82);
    v86 = v83;
    v87 = v85;
    v279 = *v282;
    v279(v86, v82, v84);

    v88 = sub_11564();
    v89 = sub_116F4();

    v90 = os_log_type_enabled(v88, v89);
    v91 = *(v0 + 424);
    v92 = *(v0 + 384);
    v283 = v85;
    if (v90)
    {
      v93 = swift_slowAlloc();
      v285[0] = swift_slowAlloc();
      *v93 = v265;
      *(v93 + 4) = sub_B480(0xD000000000000021, v266 | 0x8000000000000000, v285);
      *(v93 + 12) = 2080;
      sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
      v94 = sub_11844();
      v95 = v12;
      v97 = v96;
      v280 = *v95;
      v280(v91, v92);
      v98 = sub_B480(v94, v97, v285);

      *(v93 + 14) = v98;
      *(v93 + 22) = 2080;
      sub_C794();
      sub_F8CC(&qword_1EED0, sub_C794);
      v99 = sub_116B4();
      v101 = sub_B480(v99, v100, v285);

      *(v93 + 24) = v101;
      _os_log_impl(&dword_0, v88, v89, "%s beacon identifier: %s with shares: %s", v93, 0x20u);
      swift_arrayDestroy();

      v87 = v283;
    }

    else
    {

      v280 = *v12;
      v280(v91, v92);
    }

    v281 = v87 & 0xC000000000000001;
    v102 = &_swiftEmptySetSingleton;
    if ((v87 & 0xC000000000000001) == 0)
    {
      v128 = *(v87 + 32);
      v129 = v128 & 0x3F;
      v130 = ((1 << v128) + 63) >> 6;
      v131 = 8 * v130;

      if (v129 > 0xD)
      {

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v239 = swift_slowAlloc();

          v240 = v259;
          v241 = sub_C954(v239, v130, v87, sub_103B0);
          if (v240)
          {
            goto LABEL_155;
          }

          v102 = v241;
          v258[1] = 0;
          swift_bridgeObjectRelease_n();

          v259 = 0;
          v120 = v102 & 0xC000000000000001;
          if ((v102 & 0xC000000000000001) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_77;
        }
      }

      v267 = v258;
      v268 = v130;
      __chkstk_darwin();
      v132 = v258 - ((v131 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v132, v131);
      v274 = 0;
      v133 = 0;
      v134 = v87 + 56;
      v135 = 1 << *(v87 + 32);
      if (v135 < 64)
      {
        v136 = ~(-1 << v135);
      }

      else
      {
        v136 = -1;
      }

      v137 = v136 & *(v87 + 56);
      v138 = (v135 + 63) >> 6;
      while (v137)
      {
        v139 = __clz(__rbit64(v137));
        v137 &= v137 - 1;
        v140 = v139 | (v133 << 6);
        v87 = v283;
LABEL_93:
        v143 = *(*(v87 + 48) + 8 * v140);
        v144 = [v143 sharee];
        v145 = [v144 type];

        if (v145 != &dword_0 + 2)
        {
          *&v132[(v140 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v140;
          v49 = __OFADD__(v274++, 1);
          if (v49)
          {
            goto LABEL_154;
          }
        }
      }

      v141 = v133;
      v87 = v283;
      while (1)
      {
        v133 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          goto LABEL_144;
        }

        if (v133 >= v138)
        {
          break;
        }

        v142 = *(v134 + 8 * v133);
        ++v141;
        if (v142)
        {
          v137 = (v142 - 1) & v142;
          v140 = __clz(__rbit64(v142)) | (v133 << 6);
          goto LABEL_93;
        }
      }

      v102 = sub_C9E4(v132, v268, v274, v283);
      v120 = v102 & 0xC000000000000001;
      if ((v102 & 0xC000000000000001) == 0)
      {
        goto LABEL_98;
      }

LABEL_77:
      if (sub_11754())
      {
LABEL_78:
        v121 = *(v0 + 488);
        v279(*(v0 + 416), *(v0 + 432), *(v0 + 384));

        v122 = sub_11564();
        v123 = sub_116F4();
        v124 = os_log_type_enabled(v122, v123);
        v274 = v278 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v124)
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v285[0] = v126;
          *v125 = v262;
          if (v120)
          {
            v127 = sub_11754();
          }

          else
          {
            v127 = *(v102 + 16);
          }

          v151 = *(v0 + 416);
          v152 = *(v0 + 384);
          *(v125 + 4) = v127;

          *(v125 + 12) = 2160;
          *(v125 + 14) = 1752392040;
          *(v125 + 22) = 2081;
          sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
          v153 = sub_11844();
          v155 = v154;
          v156 = v152;
          v146 = v280;
          v280(v151, v156);
          v157 = sub_B480(v153, v155, v285);

          *(v125 + 24) = v157;
          _os_log_impl(&dword_0, v122, v123, "Adding privates shares[%ld] for beacon %{private,mask.hash}s", v125, 0x20u);
          sub_F978(v126);
        }

        else
        {
          v147 = *(v0 + 416);
          v148 = *(v0 + 384);

          v146 = v280;
          v280(v147, v148);
        }

        v158 = *(v0 + 440);
        v159 = *(v0 + 384);
        v160 = v279;
        v279(v158, *(v0 + 432), v159);
        v161 = type metadata accessor for DSBeacon();
        v162 = objc_allocWithZone(v161);
        v160(&v162[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_dsBeaconIdentifier], v158, v159);
        *&v162[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_beaconShares] = v102;
        *(v0 + 248) = v162;
        *(v0 + 256) = v161;
        objc_msgSendSuper2((v0 + 248), "init");
        v146(v158, v159);
        sub_11634();
        if (*(&dword_10 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v238 = *(&dword_10 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8));
          sub_11654();
        }

        sub_11664();
        v269 = *(v0 + 296);
        v87 = v283;
        goto LABEL_107;
      }

LABEL_99:

      v146 = v280;
LABEL_107:
      v163 = sub_11514();
      *(v0 + 120) = v163;
      *(v0 + 128) = sub_F8CC(&qword_1EF40, &type metadata accessor for Feature.FindMy);
      v164 = sub_F914((v0 + 96));
      (*(*(v163 - 8) + 104))(v164, v272, v163);
      LOBYTE(v163) = sub_11504();
      sub_F978((v0 + 96));
      if ((v163 & 1) == 0)
      {
        v66 = v278;
        v146(*(v0 + 432), *(v0 + 384));
        v12 = v66;

        goto LABEL_41;
      }

      if (v281)
      {
        swift_unknownObjectRetain();
        sub_11744();
        sub_C794();
        sub_F8CC(&qword_1EED0, sub_C794);
        sub_116D4();
        v165 = *(v0 + 16);
        v166 = *(v0 + 24);
        v167 = *(v0 + 32);
        v168 = *(v0 + 40);
        v169 = *(v0 + 48);
      }

      else
      {
        v170 = -1 << *(v87 + 32);
        v166 = v87 + 56;
        v167 = ~v170;
        v171 = -v170;
        if (v171 < 64)
        {
          v172 = ~(-1 << v171);
        }

        else
        {
          v172 = -1;
        }

        v169 = v172 & *(v87 + 56);

        v168 = 0;
      }

      v274 = v167;
      v173 = (v167 + 64) >> 6;
      v281 = v165;
      if (v165 < 0)
      {
LABEL_115:
        v174 = sub_11774();
        if (v174)
        {
          *(v0 + 320) = v174;
          sub_C794();
          swift_dynamicCast();
          v175 = *(v0 + 312);
          i = v168;
          v177 = v169;
          if (v175)
          {
            goto LABEL_123;
          }
        }

LABEL_126:
        v183 = *(v0 + 488);
        v184 = *(v0 + 432);
        v185 = *(v0 + 400);
        v186 = *(v0 + 384);
        sub_C7E0();

        v279(v185, v184, v186);
        v187 = sub_11564();
        v188 = sub_116F4();
        v189 = os_log_type_enabled(v187, v188);
        v190 = *(v0 + 432);
        v191 = *(v0 + 400);
        v192 = *(v0 + 384);
        if (v189)
        {
          v193 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v285[0] = v194;
          *v193 = v261;
          *(v193 + 4) = 1752392040;
          *(v193 + 12) = 2081;
          sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
          v195 = sub_11844();
          v283 = v190;
          v196 = v195;
          v198 = v197;
          v199 = v278;
          v280(v191, v192);
          v200 = sub_B480(v196, v198, v285);

          *(v193 + 14) = v200;
          _os_log_impl(&dword_0, v187, v188, "No delegated share for beacon %{private,mask.hash}s", v193, 0x16u);
          sub_F978(v194);

          v12 = v199;

          v280(v283, v192);
        }

        else
        {

          v201 = v191;
          v12 = v278;
          v202 = v280;
          v280(v201, v192);
          v202(v190, v192);
        }

LABEL_41:
        v64 = v276;
        continue;
      }

      while (1)
      {
        v178 = v168;
        v179 = v169;
        for (i = v168; !v179; ++v178)
        {
          i = v178 + 1;
          if (__OFADD__(v178, 1))
          {
            goto LABEL_145;
          }

          if (i >= v173)
          {
            goto LABEL_126;
          }

          v179 = *(v166 + 8 * i);
        }

        v177 = (v179 - 1) & v179;
        v175 = *(*(v165 + 48) + ((i << 9) | (8 * __clz(__rbit64(v179)))));
        if (!v175)
        {
          goto LABEL_126;
        }

LABEL_123:
        v180 = v175;
        v181 = [v180 sharee];
        v182 = [v181 type];

        if (v182 == &dword_0 + 2)
        {
          break;
        }

        v168 = i;
        v169 = v177;
        v165 = v281;
        if ((v281 & 0x8000000000000000) != 0)
        {
          goto LABEL_115;
        }
      }

      v203 = *(v0 + 488);
      v204 = *(v0 + 432);
      v205 = *(v0 + 408);
      v206 = *(v0 + 384);
      sub_C7E0();

      v279(v205, v204, v206);
      v207 = sub_11564();
      v208 = sub_116F4();
      v209 = os_log_type_enabled(v207, v208);
      v210 = *(v0 + 408);
      v211 = *(v0 + 384);
      if (v209)
      {
        v212 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        v285[0] = v281;
        *v212 = v261;
        *(v212 + 4) = 1752392040;
        *(v212 + 12) = 2081;
        sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
        v213 = sub_11844();
        v215 = v214;
        v216 = v278;
        v283 = v278 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v280(v210, v211);
        v217 = sub_B480(v213, v215, v285);

        *(v212 + 14) = v217;
        _os_log_impl(&dword_0, v207, v208, "Adding delegated share for beacon %{private,mask.hash}s", v212, 0x16u);
        sub_F978(v281);
        v218 = v216;
      }

      else
      {

        v283 = v278 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v218 = v278;
        v280(v210, v211);
      }

      v219 = *(v0 + 440);
      v220 = *(v0 + 384);
      v221 = v279;
      v279(v219, *(v0 + 432), v220);
      sub_F3B8(&qword_1EF60, &qword_14078);
      v222 = swift_initStackObject();
      *(v222 + 16) = v263;
      *(v222 + 32) = v180;
      v223 = v180;
      sub_EBF0(v222);
      v225 = v224;
      swift_setDeallocating();
      v226 = *(v222 + 16);
      swift_arrayDestroy();
      v227 = type metadata accessor for DSBeacon();
      v228 = objc_allocWithZone(v227);
      v221(&v228[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_dsBeaconIdentifier], v219, v220);
      *&v228[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_beaconShares] = v225;
      *(v0 + 264) = v228;
      *(v0 + 272) = v227;
      v229 = objc_msgSendSuper2((v0 + 264), "init");
      v280(v219, v220);
      v230 = type metadata accessor for DSDelegatedBeaconShare();
      v231 = objc_allocWithZone(v230);
      v232 = v223;
      v233 = v229;
      v234 = [v232 sharee];
      v235 = [v234 type];

      if (v235 != &dword_0 + 2)
      {
        goto LABEL_153;
      }

      *&v231[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation22DSDelegatedBeaconShare_beaconShare] = v232;
      *&v231[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation22DSDelegatedBeaconShare_beacon] = v233;
      *(v0 + 280) = v231;
      *(v0 + 288) = v230;
      objc_msgSendSuper2((v0 + 280), "init");
      sub_11634();
      if (*(&dword_10 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v242 = *(&dword_10 + (*(v0 + 296) & 0xFFFFFFFFFFFFFF8));
        sub_11654();
      }

      v236 = *(v0 + 432);
      v237 = *(v0 + 384);
      sub_11664();

      v280(v236, v237);
      v269 = *(v0 + 296);
      v64 = v276;
      v12 = v218;
      continue;
    }

    break;
  }

  v285[0] = &_swiftEmptySetSingleton;

  sub_11744();
  v103 = sub_11774();
  if (!v103)
  {
LABEL_76:

    v87 = v283;
    v120 = v102 & 0xC000000000000001;
    if ((v102 & 0xC000000000000001) != 0)
    {
      goto LABEL_77;
    }

LABEL_98:
    if (*(v102 + 16))
    {
      goto LABEL_78;
    }

    goto LABEL_99;
  }

  v104 = v103;
  sub_C794();
  v105 = v104;
LABEL_62:
  *(v0 + 336) = v105;
  swift_dynamicCast();
  v106 = [*(v0 + 328) sharee];
  v107 = [v106 type];

  v108 = *(v0 + 328);
  if (v107 == &dword_0 + 2)
  {

    goto LABEL_61;
  }

  v109 = *(v102 + 16);
  if (*(v102 + 24) <= v109)
  {
    sub_C18C(v109 + 1);
  }

  v102 = v285[0];
  v110 = sub_11704(*(v285[0] + 5));
  v111 = v102 + 56;
  v112 = -1 << *(v102 + 32);
  v113 = v110 & ~v112;
  v114 = v113 >> 6;
  if (((-1 << v113) & ~*(v102 + 56 + 8 * (v113 >> 6))) != 0)
  {
    v115 = __clz(__rbit64((-1 << v113) & ~*(v102 + 56 + 8 * (v113 >> 6)))) | v113 & 0x7FFFFFFFFFFFFFC0;
    goto LABEL_75;
  }

  v116 = 0;
  v117 = (63 - v112) >> 6;
  while (++v114 != v117 || (v116 & 1) == 0)
  {
    v118 = v114 == v117;
    if (v114 == v117)
    {
      v114 = 0;
    }

    v116 |= v118;
    v119 = *(v111 + 8 * v114);
    if (v119 != -1)
    {
      v115 = __clz(__rbit64(~v119)) + (v114 << 6);
LABEL_75:
      *(v111 + ((v115 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v115;
      *(*(v102 + 48) + 8 * v115) = v108;
      ++*(v102 + 16);
LABEL_61:
      v105 = sub_11774();
      if (!v105)
      {
        goto LABEL_76;
      }

      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  v257 = *(v0 + 384);

  return sub_11874();
}

uint64_t sub_4220()
{
  v28 = v0;
  v1 = v0[64];
  v3 = v0[61];
  v2 = v0[62];

  swift_errorRetain();
  v4 = sub_11564();
  v5 = sub_116E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[64];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_B480(0xD000000000000021, 0x8000000000012A60, &v27);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_0, v4, v5, "%s error %{public}@", v7, 0x16u);
    sub_FB50(v8, &qword_1EEE8, &qword_13FD8);

    sub_F978(v9);
  }

  v11 = v0[64];
  v13 = v0[46];
  v12 = v0[47];
  swift_errorRetain();
  v13(&_swiftEmptyArrayStorage, v11);

  v15 = v0[59];
  v14 = v0[60];
  v17 = v0[57];
  v16 = v0[58];
  v19 = v0[55];
  v18 = v0[56];
  v21 = v0[53];
  v20 = v0[54];
  v23 = v0[51];
  v22 = v0[52];
  v26 = v0[50];

  v24 = v0[1];

  return v24();
}

uint64_t sub_44A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_44C4, 0, 0);
}

uint64_t sub_44C4()
{
  v1 = *(v0[20] + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_45EC;
  v2 = swift_continuation_init();
  v0[17] = sub_F3B8(&qword_1EF30, &qword_14010);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_46EC;
  v0[13] = &unk_188D0;
  v0[14] = v2;
  [v1 allSharesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_45EC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_46CC, 0, 0);
}

uint64_t sub_46EC(uint64_t a1)
{
  v1 = *sub_F888((a1 + 32), *(a1 + 56));
  sub_C794();
  sub_F8CC(&qword_1EED0, sub_C794);
  **(*(v1 + 64) + 40) = sub_116A4();

  return _swift_continuation_resume(v1);
}

void (*sub_47A4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = sub_11554();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_BAC0(v3, v8);
  return sub_48BC;
}

void sub_48BC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_4950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_F3B8(&qword_1EF38, &qword_14018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_FAE0(a3, v26 - v10);
  v12 = sub_11694();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_FB50(v11, &qword_1EF38, &qword_14018);
  }

  else
  {
    sub_11684();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_11674();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_115F4() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_FB50(a3, &qword_1EF38, &qword_14018);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_FB50(a3, &qword_1EF38, &qword_14018);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_4CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_F3B8(&unk_1EF70, qword_14118);
  v5.super.isa = sub_11644().super.isa;
  if (a2)
  {
    v6 = sub_11524();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_4D70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_4D90, 0, 0);
}

uint64_t sub_4D90()
{
  v18 = v0;
  v1 = v0[2];
  type metadata accessor for DSBeacon();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_5048;
    v5 = v0[3];

    return sub_6CF0(v3);
  }

  else
  {
    type metadata accessor for DSDelegatedBeaconShare();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      swift_unknownObjectRetain();
      v9 = swift_task_alloc();
      v0[6] = v9;
      *v9 = v0;
      v9[1] = sub_51C0;
      v10 = v0[3];

      return sub_8B24(v8);
    }

    else
    {
      if (qword_1EBB0 != -1)
      {
        swift_once();
      }

      v11 = sub_11584();
      sub_F488(v11, qword_1EE10);
      v12 = sub_11564();
      v13 = sub_116E4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_B480(0x72616853706F7473, 0xEF293A5F28676E69, &v17);
        _os_log_impl(&dword_0, v12, v13, "%s Shared resource isn't the right type", v14, 0xCu);
        sub_F978(v15);
      }

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_5048()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_52D4;
  }

  else
  {
    v3 = sub_515C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_515C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_51C0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_5338;
  }

  else
  {
    v3 = sub_103CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_52D4()
{
  v1 = v0[5];
  v2 = v0[2];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_5338()
{
  v1 = v0[7];
  v2 = v0[2];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_5528(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10380;

  return sub_4D70(a1);
}

uint64_t sub_55EC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_560C, 0, 0);
}

uint64_t sub_560C()
{
  v25 = v0;
  v1 = v0[18];
  type metadata accessor for DSHandle();
  v2 = swift_dynamicCastClass();
  v0[20] = v2;
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v4 = [v3 destination];
    if (!v4)
    {
      sub_115E4();
      v4 = sub_115B4();
    }

    v5 = [objc_opt_self() handleWithString:v4];
    v0[21] = v5;

    if (v5)
    {
      if (qword_1EBB0 != -1)
      {
        swift_once();
      }

      v6 = v0[18];
      v7 = sub_11584();
      v0[22] = sub_F488(v7, qword_1EE10);
      swift_unknownObjectRetain();
      v8 = sub_11564();
      v9 = sub_116F4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = v0[18];
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24 = v13;
        *v11 = 136315394;
        *(v11 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012A40, &v24);
        *(v11 + 12) = 2112;
        *(v11 + 14) = v3;
        *v12 = v3;
        swift_unknownObjectRetain();
        _os_log_impl(&dword_0, v8, v9, "%s Trying to stop sharing with participant: %@", v11, 0x16u);
        sub_FB50(v12, &qword_1EEE8, &qword_13FD8);

        sub_F978(v13);
      }

      v14 = *(v0[19] + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_5AB4;
      v15 = swift_continuation_init();
      v0[17] = sub_F3B8(&qword_1EED8, &qword_13FD0);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_5E34;
      v0[13] = &unk_18808;
      v0[14] = v15;
      [v14 forceBreakAllSharesWithUser:v5 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v16 = v0[18];
    swift_unknownObjectRelease();
  }

  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v17 = sub_11584();
  sub_F488(v17, qword_1EE10);
  v18 = sub_11564();
  v19 = sub_116E4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012A40, &v24);
    _os_log_impl(&dword_0, v18, v19, "%s Shared resource isn't the right type", v20, 0xCu);
    sub_F978(v21);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_5AB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_5DB4;
  }

  else
  {
    v3 = sub_5BC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_5BC4()
{
  v18 = v0;
  v1 = *(v0 + 144);
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 144);
    swift_unknownObjectRelease();
LABEL_5:

    goto LABEL_7;
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  swift_unknownObjectRetain();
  v2 = sub_11564();
  v6 = sub_116E4();
  swift_unknownObjectRelease();
  v7 = os_log_type_enabled(v2, v6);
  v8 = *(v0 + 168);
  if (v7)
  {
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012A40, &v17);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v9;
    *v12 = v9;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_0, v2, v6, "%s Failed to stop sharing with participant %@", v11, 0x16u);
    sub_FB50(v12, &qword_1EEE8, &qword_13FD8);

    sub_F978(v13);

    swift_unknownObjectRelease();

    goto LABEL_5;
  }

  v14 = *(v0 + 144);

  swift_unknownObjectRelease();
LABEL_7:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_5DB4()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_5E34(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_F888((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_F3B8(&qword_1EF00, &qword_13FF0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_608C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_6150;

  return sub_55EC(a1);
}

uint64_t sub_6150()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  swift_unknownObjectRelease();

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_11524();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_6310()
{
  v10 = v0;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v1 = sub_11584();
  sub_F488(v1, qword_1EE10);
  v2 = sub_11564();
  v3 = sub_116F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_B480(0xD000000000000010, 0x8000000000012A20, &v9);
    _os_log_impl(&dword_0, v2, v3, "%s", v4, 0xCu);
    sub_F978(v5);
  }

  v6 = *(v0[19] + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_6548;
  v7 = swift_continuation_init();
  v0[17] = sub_F3B8(&qword_1EF30, &qword_14010);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_46EC;
  v0[13] = &unk_187E0;
  v0[14] = v7;
  [v6 allSharesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6548()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_6628, 0, 0);
}

uint64_t sub_6628()
{
  v1 = v0[18];
  v0[20] = v1;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_66C4;
  v3 = v0[19];

  return sub_751C(v1);
}

uint64_t sub_66C4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[20];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[22] = v8;
    *v8 = v4;
    v8[1] = sub_6840;
    v9 = v2[19];
    v10 = v2[20];

    return sub_96A4(v10);
  }
}

uint64_t sub_6840()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 160);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_6AC4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_6B6C;

  return sub_62F0();
}

uint64_t sub_6B6C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_11524();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_6CF0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_11554();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_6DB0, 0, 0);
}

uint64_t sub_6DB0()
{
  v27 = v0;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_11584();
  *(v0 + 184) = sub_F488(v2, qword_1EE10);
  v3 = v1;
  v4 = sub_11564();
  v5 = sub_116F4();

  v6 = &off_1E000;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136315651;
    *(v11 + 4) = sub_B480(0xD000000000000014, 0x80000000000129F0, &v26);
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v12 = [v10 identifier];
    sub_11544();

    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
    v13 = sub_11844();
    v15 = v14;
    (*(v8 + 8))(v7, v9);
    v16 = sub_B480(v13, v15, &v26);

    *(v11 + 24) = v16;
    v6 = &off_1E000;
    _os_log_impl(&dword_0, v4, v5, "%s Trying to stop sharing resource: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v19 = *(v0 + 160);
  v20 = *(*(v0 + 152) + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
  v21 = [*(v0 + 144) v6[117]];
  sub_11544();

  isa = sub_11534().super.isa;
  *(v0 + 192) = isa;
  v23 = *(v18 + 8);
  *(v0 + 200) = v23;
  *(v0 + 208) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v17, v19);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_7154;
  v24 = swift_continuation_init();
  *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_5E34;
  *(v0 + 104) = &unk_187B8;
  *(v0 + 112) = v24;
  [v20 stopSharing:isa completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_7154()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_749C;
  }

  else
  {
    v3 = sub_7264;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_7264()
{
  v21 = v0;
  v1 = *(v0 + 224);

  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 144);
    v4 = sub_11564();
    v5 = sub_116E4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 200);
      v19 = *(v0 + 208);
      v7 = *(v0 + 176);
      v8 = *(v0 + 160);
      v9 = *(v0 + 144);
      v10 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v10 = 136315394;
      *(v10 + 4) = sub_B480(0xD000000000000014, 0x80000000000129F0, &v20);
      *(v10 + 12) = 2080;
      v11 = [v9 identifier];
      sub_11544();

      sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
      v12 = sub_11844();
      v14 = v13;
      v6(v7, v8);
      v15 = sub_B480(v12, v14, &v20);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_0, v4, v5, "%s Failed to stop sharing %s", v10, 0x16u);
      swift_arrayDestroy();
    }
  }

  v16 = *(v0 + 176);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_749C()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[27];

  return v4();
}

uint64_t sub_751C(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = sub_11554();
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_7614, 0, 0);
}

uint64_t sub_7614()
{
  v84 = v0;
  v1 = *(v0 + 216);
  v81 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_11744();
    sub_C794();
    sub_F8CC(&qword_1EED0, sub_C794);
    sub_116D4();
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v5 = 0;
    v3 = v1;
  }

  v82 = 0;
  v80 = v4;
  v10 = (v4 + 64) >> 6;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v83[0] = v15;
      sub_EEBC(v83);

      v5 = v13;
      v6 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = sub_11774();
      if (v16)
      {
        *(v0 + 208) = v16;
        sub_C794();
        swift_dynamicCast();
        v15 = *(v0 + 200);
        v13 = v5;
        v14 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v13 >= v10)
    {
      break;
    }

    v12 = *(v2 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_C7E0();
  v3 = *(v0 + 216);
  if (!v81)
  {
    v34 = *(v3 + 32);
    v35 = v34 & 0x3F;
    v36 = ((1 << v34) + 63) >> 6;
    v37 = 8 * v36;
    v38 = *(v0 + 216);

    v1 = v3;
    if (v35 <= 0xD)
    {
      goto LABEL_39;
    }

    goto LABEL_73;
  }

  v17 = &_swiftEmptySetSingleton;
  v83[0] = &_swiftEmptySetSingleton;

  v1 = sub_11744();
  v18 = sub_11774();
  if (v18)
  {
    v19 = v18;
    sub_C794();
    v20 = v19;
    do
    {
      *(v0 + 192) = v20;
      swift_dynamicCast();
      v21 = [*(v0 + 184) sharee];
      v22 = [v21 type];

      v3 = *(v0 + 184);
      if (v22 == &dword_0 + 2)
      {

        goto LABEL_22;
      }

      v23 = v17[2];
      if (v17[3] <= v23)
      {
        sub_C18C(v23 + 1);
        v17 = v83[0];
      }

      v24 = sub_11704(v17[5]);
      v25 = (v17 + 7);
      v26 = -1 << *(v17 + 32);
      v27 = v24 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v17[(v27 >> 6) + 7]) != 0)
      {
        v29 = __clz(__rbit64((-1 << v27) & ~v17[(v27 >> 6) + 7])) | v27 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_36;
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v31 && (v30 & 1) != 0)
        {
          __break(1u);
          goto LABEL_69;
        }

        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *&v25[8 * v28];
      }

      while (v33 == -1);
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
LABEL_36:
      *&v25[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
      *(v17[6] + 8 * v29) = v3;
      ++v17[2];
LABEL_22:
      v20 = sub_11774();
    }

    while (v20);
  }

LABEL_54:
  v1 = sub_86C0(v17);

  if (qword_1EBB0 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v52 = sub_11584();
    *(v0 + 264) = sub_F488(v52, qword_1EE10);
    v53 = sub_11564();
    v54 = sub_116F4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v83[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_B480(0xD00000000000001ELL, 0x80000000000129D0, v83);
      _os_log_impl(&dword_0, v53, v54, "%s Trying to stop all private sharing", v55, 0xCu);
      sub_F978(v56);
    }

    v36 = sub_F21C(v1);

    v57 = *(v36 + 16);
    if (v57)
    {
      v58 = *(v0 + 240);
      v59 = sub_B384(*(v36 + 16), 0);
      v36 = sub_E94C(v83, &v59[(*(v58 + 80) + 32) & ~*(v58 + 80)], v57, v36);
      sub_C7E0();
      if (v36 == v57)
      {
        goto LABEL_61;
      }

      __break(1u);
    }

    v59 = &_swiftEmptyArrayStorage;
LABEL_61:
    *(v0 + 272) = v59;
    v37 = *(v0 + 224);
    v60 = *(v59 + 2);
    v61 = OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession;
    *(v0 + 280) = v60;
    *(v0 + 288) = v61;
    if (!v60)
    {
      break;
    }

    v62 = *(v0 + 240);
    *(v0 + 296) = 0;
    if (*(v59 + 2))
    {
      v63 = *(v0 + 256);
      v64 = *(v0 + 232);
      v66 = *(v62 + 16);
      v65 = v62 + 16;
      v67 = (*(v65 + 64) + 32) & ~*(v65 + 64);
      *(v0 + 304) = v66;
      *(v0 + 312) = v65 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v66(v63, &v59[v67], v64);
      v68 = *(v37 + v61);
      isa = sub_11534().super.isa;
      *(v0 + 320) = isa;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 336;
      *(v0 + 24) = sub_7FDC;
      v70 = swift_continuation_init();
      *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_5E34;
      *(v0 + 104) = &unk_18790;
      *(v0 + 112) = v70;
      [v68 stopSharing:isa completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    __break(1u);
LABEL_73:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v1 = *(v0 + 216);
    if ((isStackAllocationSafe & 1) == 0)
    {
      v74 = swift_slowAlloc();
      v75 = v36;
      v76 = v82;
      v17 = sub_C954(v74, v75, v1, sub_103B0);

      if (v76)
      {
        return result;
      }

      v82 = 0;
      goto LABEL_54;
    }

LABEL_39:
    v78[1] = v78;
    v79 = v36;
    __chkstk_darwin(isStackAllocationSafe);
    v80 = v78 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v80, v37);
    v81 = 0;
    v40 = 0;
    v41 = 1 << *(v3 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v1 + 56);
    v44 = (v41 + 63) >> 6;
    while (v43)
    {
      v45 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
LABEL_49:
      v48 = v45 | (v40 << 6);
      v3 = *(*(v1 + 48) + 8 * v48);
      v49 = [v3 sharee];
      v50 = [v49 type];

      if (v50 != &dword_0 + 2)
      {
        *&v80[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
        if (__OFADD__(v81++, 1))
        {
          __break(1u);
LABEL_53:
          v17 = sub_C9E4(v80, v79, v81, *(v0 + 216));
          goto LABEL_54;
        }
      }
    }

    v46 = v40;
    while (1)
    {
      v40 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v40 >= v44)
      {
        goto LABEL_53;
      }

      v47 = *(v1 + 56 + 8 * v40);
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v43 = (v47 - 1) & v47;
        goto LABEL_49;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  v72 = *(v0 + 248);
  v71 = *(v0 + 256);

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_7FDC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  if (v3)
  {
    v4 = *(v1 + 272);

    v5 = sub_8580;
  }

  else
  {
    v5 = sub_8120;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8120()
{
  v37 = v0;
  v1 = *(v0 + 336);

  if (v1)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
  }

  else
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 264);
    (*(v0 + 304))(*(v0 + 248), *(v0 + 256), *(v0 + 232));
    v4 = sub_11564();
    v5 = sub_116E4();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 232);
    v9 = *(v0 + 240);
    if (v6)
    {
      v35 = *(v0 + 256);
      v11 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v11 = 136315651;
      *(v11 + 4) = sub_B480(0xD00000000000001ELL, 0x80000000000129D0, &v36);
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
      v12 = sub_11844();
      v14 = v13;
      v15 = *(v9 + 8);
      v15(v7, v10);
      v16 = sub_B480(v12, v14, &v36);

      *(v11 + 24) = v16;
      _os_log_impl(&dword_0, v4, v5, "%s Failed to stop sharing %{private,mask.hash}s", v11, 0x20u);
      swift_arrayDestroy();

      v15(v35, v10);
    }

    else
    {

      v17 = *(v9 + 8);
      v17(v7, v10);
      v17(v8, v10);
    }
  }

  v18 = *(v0 + 296) + 1;
  if (v18 == *(v0 + 280))
  {
    v19 = *(v0 + 272);
    v20 = *(v0 + 248);
    v21 = *(v0 + 256);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    *(v0 + 296) = v18;
    v24 = *(v0 + 272);
    if (v18 >= *(v24 + 16))
    {
      __break(1u);
    }

    v25 = *(v0 + 288);
    v26 = *(v0 + 256);
    v27 = *(v0 + 232);
    v28 = *(v0 + 240);
    v29 = *(v0 + 224);
    v30 = *(v28 + 16);
    v28 += 16;
    v31 = v24 + ((*(v28 + 64) + 32) & ~*(v28 + 64)) + *(v28 + 56) * v18;
    *(v0 + 304) = v30;
    *(v0 + 312) = v28 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v26, v31, v27);
    v32 = *(v29 + v25);
    isa = sub_11534().super.isa;
    *(v0 + 320) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = sub_7FDC;
    v34 = swift_continuation_init();
    *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_5E34;
    *(v0 + 104) = &unk_18790;
    *(v0 + 112) = v34;
    [v32 stopSharing:isa completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_8580()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  swift_willThrow();
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];
  v8 = v0[41];

  return v7();
}

BOOL sub_865C(id *a1)
{
  v1 = [*a1 sharee];
  v2 = [v1 type];

  return v2 != &dword_0 + 2;
}

void *sub_86C0(uint64_t a1)
{
  v3 = (*(*(sub_F3B8(&qword_1EF28, &qword_14008) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v5 = &v31 - v4;
  v40 = sub_11554();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v33 = &v31 - v10;
  v36 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_11744();
    sub_C794();
    sub_F8CC(&qword_1EED0, sub_C794);
    result = sub_116D4();
    a1 = v42;
    v12 = v43;
    v13 = v44;
    v14 = v45;
    v15 = v46;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v35 = v13;
  v38 = (v6 + 48);
  v39 = (v6 + 56);
  v31 = v6;
  v32 = (v6 + 32);
  v37 = &_swiftEmptyArrayStorage;
  while (a1 < 0)
  {
    v22 = sub_11774();
    if (!v22 || (v41 = v22, sub_C794(), swift_dynamicCast(), (v21 = v47) == 0))
    {
LABEL_24:
      sub_C7E0();
      return v37;
    }

LABEL_17:
    v23 = [v21 beaconIdentifier];
    sub_11544();

    v24 = v40;
    (*v39)(v5, 0, 1, v40);

    if ((*v38)(v5, 1, v24) == 1)
    {
      result = sub_FB50(v5, &qword_1EF28, &qword_14008);
    }

    else
    {
      v25 = *v32;
      v26 = v40;
      (*v32)(v33, v5, v40);
      v25(v34, v33, v26);
      v27 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_B1AC(0, v37[2] + 1, 1, v37);
      }

      v29 = v37[2];
      v28 = v37[3];
      if (v29 >= v28 >> 1)
      {
        v37 = sub_B1AC(v28 > 1, v29 + 1, 1, v37);
      }

      v30 = v37;
      v37[2] = v29 + 1;
      result = (v27)(v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, v34, v40);
    }
  }

  v19 = v14;
  v20 = v15;
  if (v15)
  {
LABEL_13:
    v15 = (v20 - 1) & v20;
    v21 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v21)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v14 >= ((v13 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v20 = *(v12 + 8 * v14);
    ++v19;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_8B24(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_11554();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_8C08, 0, 0);
}

uint64_t sub_8C08()
{
  v30 = v0;
  v1 = v0[25];
  v2 = [*(v0[18] + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation22DSDelegatedBeaconShare_beaconShare) beaconIdentifier];
  sub_11544();

  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[20];
  v6 = v0[21];
  v7 = sub_11584();
  v0[26] = sub_F488(v7, qword_1EE10);
  v8 = *(v6 + 16);
  v0[27] = v8;
  v0[28] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v4, v5);
  v9 = sub_11564();
  v10 = sub_116F4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[24];
  v13 = v0[20];
  v14 = v0[21];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v15 = 136315651;
    *(v15 + 4) = sub_B480(0xD00000000000001CLL, 0x80000000000129B0, &v29);
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
    v16 = sub_11844();
    v18 = v17;
    v19 = *(v14 + 8);
    v19(v12, v13);
    v20 = sub_B480(v16, v18, &v29);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_0, v9, v10, "%s for beacon %{private,mask.hash}s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v19 = *(v14 + 8);
    v19(v12, v13);
  }

  v0[29] = v19;
  v21 = v0[25];
  v22 = v0[19];
  v23 = objc_allocWithZone(SPBeaconLocationShareContext);
  isa = sub_11534().super.isa;
  v25 = [v23 initWithBeaconIdentifier:isa];
  v0[30] = v25;

  v26 = *(v22 + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession);
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_8FD8;
  v27 = swift_continuation_init();
  v0[17] = sub_F3B8(&qword_1EED8, &qword_13FD0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_5E34;
  v0[13] = &unk_18768;
  v0[14] = v27;
  [v26 stopTemporaryItemLocationShare:v25 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_8FD8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_9384;
  }

  else
  {
    v3 = sub_90E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_90E8()
{
  v25 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  (*(v0 + 216))(*(v0 + 184), *(v0 + 200), *(v0 + 160));
  v3 = sub_11564();
  v4 = sub_116F4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  if (v5)
  {
    v22 = *(v0 + 240);
    v23 = *(v0 + 232);
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315651;
    *(v11 + 4) = sub_B480(0xD00000000000001CLL, 0x80000000000129B0, &v24);
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
    v12 = sub_11844();
    v14 = v13;
    v23(v8, v10);
    v15 = sub_B480(v12, v14, &v24);

    *(v11 + 24) = v15;
    _os_log_impl(&dword_0, v3, v4, "%s Successfully stopped delegated sharing for beacon %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();

    v23(v7, v10);
  }

  else
  {

    v6(v8, v10);
    v6(v7, v10);
  }

  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_9384()
{
  v38 = v0;
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[20];
  swift_willThrow();
  v3(v6, v4, v7);
  swift_errorRetain();
  v8 = sub_11564();
  v9 = sub_116E4();

  if (os_log_type_enabled(v8, v9))
  {
    v35 = v0[29];
    v36 = v0[31];
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v13 = 136315907;
    *(v13 + 4) = sub_B480(0xD00000000000001CLL, 0x80000000000129B0, v37);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
    v15 = sub_11844();
    v17 = v16;
    v35(v10, v12);
    v18 = sub_B480(v15, v17, v37);

    *(v13 + 24) = v18;
    *(v13 + 32) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v19;
    *v14 = v19;
    _os_log_impl(&dword_0, v8, v9, "%s Failed to stop delegated share with beacon identifier %{private,mask.hash}s\nError %{public}@", v13, 0x2Au);
    sub_FB50(v14, &qword_1EEE8, &qword_13FD8);

    swift_arrayDestroy();
  }

  else
  {
    v20 = v0[29];
    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[20];

    v20(v21, v23);
  }

  v25 = v0[30];
  v24 = v0[31];
  v26 = v0[29];
  v27 = v0[24];
  v28 = v0[25];
  v30 = v0[22];
  v29 = v0[23];
  v31 = v0[20];
  swift_willThrow();

  v26(v28, v31);

  v32 = v0[1];
  v33 = v0[31];

  return v32();
}

uint64_t sub_96A4(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = sub_11554();
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_979C, 0, 0);
}

uint64_t sub_979C()
{
  v79 = v0;
  v1 = *(v0 + 216);
  v76 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_11744();
    sub_C794();
    sub_F8CC(&qword_1EED0, sub_C794);
    sub_116D4();
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v5 = 0;
    v3 = v1;
  }

  v77 = 0;
  v75 = v4;
  v10 = (v4 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v78[0] = v15;
      sub_F4C0(v78);

      v5 = v13;
      v6 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = sub_11774();
      if (v16)
      {
        *(v0 + 208) = v16;
        sub_C794();
        swift_dynamicCast();
        v15 = *(v0 + 200);
        v13 = v5;
        v14 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v13 >= v10)
    {
      break;
    }

    v12 = *(v2 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  v6 = 0;
LABEL_19:
  sub_C7E0();
  v3 = *(v0 + 216);
  if (!v76)
  {
    v34 = *(v3 + 32);
    v35 = v34 & 0x3F;
    v5 = ((1 << v34) + 63) >> 6;
    v6 = 8 * v5;
    v36 = *(v0 + 216);

    v38 = v3;
    if (v35 <= 0xD)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  v17 = &_swiftEmptySetSingleton;
  v78[0] = &_swiftEmptySetSingleton;

  sub_11744();
  v18 = sub_11774();
  if (v18)
  {
    v19 = v18;
    v6 = sub_C794();
    v20 = v19;
    v5 = &off_1E000;
    do
    {
      *(v0 + 192) = v20;
      swift_dynamicCast();
      v21 = [*(v0 + 184) sharee];
      v22 = [v21 type];

      v3 = *(v0 + 184);
      if (v22 != &dword_0 + 2)
      {

        goto LABEL_23;
      }

      v23 = v17[2];
      if (v17[3] <= v23)
      {
        sub_C18C(v23 + 1);
        v17 = v78[0];
      }

      v24 = sub_11704(v17[5]);
      v25 = (v17 + 7);
      v26 = -1 << *(v17 + 32);
      v27 = v24 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~v17[(v27 >> 6) + 7]) != 0)
      {
        v29 = __clz(__rbit64((-1 << v27) & ~v17[(v27 >> 6) + 7])) | v27 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_37;
      }

      v30 = 0;
      v31 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v31 && (v30 & 1) != 0)
        {
          __break(1u);
          goto LABEL_67;
        }

        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *&v25[8 * v28];
      }

      while (v33 == -1);
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
LABEL_37:
      *&v25[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
      *(v17[6] + 8 * v29) = v3;
      ++v17[2];
LABEL_23:
      v20 = sub_11774();
    }

    while (v20);
  }

  while (1)
  {
LABEL_55:
    v49 = sub_86C0(v17);

    v5 = sub_F21C(v49);

    v50 = *(v5 + 16);
    if (v50)
    {
      v51 = *(v0 + 240);
      v52 = sub_B384(*(v5 + 16), 0);
      v5 = sub_E94C(v78, &v52[(*(v51 + 80) + 32) & ~*(v51 + 80)], v50, v5);
      sub_C7E0();
      if (v5 == v50)
      {
        goto LABEL_59;
      }

      __break(1u);
    }

    v52 = &_swiftEmptyArrayStorage;
LABEL_59:
    *(v0 + 264) = v52;
    v53 = *(v0 + 224);
    v54 = *(v52 + 2);
    v55 = OBJC_IVAR____TtC28FindMyItemsDigitalSeparation34FindMyItemsDigitalSeparationSource_beaconSharingSession;
    *(v0 + 272) = v54;
    *(v0 + 280) = v55;
    if (!v54)
    {
      break;
    }

    v56 = *(v0 + 240);
    *(v0 + 288) = 0;
    if (*(v52 + 2))
    {
      v77 = v0 + 96;
      v57 = *(v0 + 256);
      v58 = *(v0 + 232);
      v60 = *(v56 + 16);
      v59 = v56 + 16;
      v61 = (*(v59 + 64) + 32) & ~*(v59 + 64);
      *(v0 + 296) = v60;
      *(v0 + 304) = v59 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v60(v57, &v52[v61], v58);
      v62 = objc_allocWithZone(SPBeaconLocationShareContext);
      isa = sub_11534().super.isa;
      v64 = [v62 initWithBeaconIdentifier:isa];
      *(v0 + 312) = v64;

      v65 = *(v53 + v55);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 328;
      *(v0 + 24) = sub_A088;
      v66 = swift_continuation_init();
      *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_5E34;
      *(v0 + 104) = &unk_18740;
      *(v0 + 112) = v66;
      [v65 stopTemporaryItemLocationShare:v64 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    while (1)
    {
      __break(1u);
LABEL_70:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v38 = *(v0 + 216);
      if ((isStackAllocationSafe & 1) == 0)
      {
        break;
      }

LABEL_40:
      v73[1] = v73;
      v74 = v5;
      __chkstk_darwin(isStackAllocationSafe);
      v75 = v73 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v75, v6);
      v76 = 0;
      v5 = 0;
      v39 = 1 << *(v3 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      v6 = v40 & *(v38 + 56);
      v41 = (v39 + 63) >> 6;
      while (v6)
      {
        v42 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
LABEL_50:
        v45 = v42 | (v5 << 6);
        v3 = *(*(v38 + 48) + 8 * v45);
        v46 = [v3 sharee];
        v47 = [v46 type];

        if (v47 == &dword_0 + 2)
        {
          *&v75[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
          if (__OFADD__(v76++, 1))
          {
            __break(1u);
LABEL_54:
            v17 = sub_C9E4(v75, v74, v76, *(v0 + 216));
            goto LABEL_55;
          }
        }
      }

      v43 = v5;
      while (1)
      {
        v5 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v5 >= v41)
        {
          goto LABEL_54;
        }

        v44 = *(v38 + 56 + 8 * v5);
        ++v43;
        if (v44)
        {
          v42 = __clz(__rbit64(v44));
          v6 = (v44 - 1) & v44;
          goto LABEL_50;
        }
      }

LABEL_68:
      __break(1u);
    }

    v6 = swift_slowAlloc();
    v70 = v5;
    v71 = v77;
    v17 = sub_C954(v6, v70, v38, sub_A7FC);

    if (v71)
    {
      return result;
    }

    v77 = 0;
  }

  v68 = *(v0 + 248);
  v67 = *(v0 + 256);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_A088()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  if (v3)
  {
    v4 = *(v1 + 264);

    v5 = sub_A488;
  }

  else
  {
    v5 = sub_A1CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A1CC()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);

  (*(v5 + 8))(v3, v4);
  if (v1 + 1 == v2)
  {
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 288) + 1;
    *(v0 + 288) = v11;
    v12 = *(v0 + 264);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
    }

    v13 = *(v0 + 280);
    v14 = *(v0 + 256);
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    v17 = *(v0 + 224);
    v18 = *(v16 + 16);
    v16 += 16;
    v19 = v12 + ((*(v16 + 64) + 32) & ~*(v16 + 64)) + *(v16 + 56) * v11;
    *(v0 + 296) = v18;
    *(v0 + 304) = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v14, v19, v15);
    v20 = objc_allocWithZone(SPBeaconLocationShareContext);
    isa = sub_11534().super.isa;
    v22 = [v20 initWithBeaconIdentifier:isa];
    *(v0 + 312) = v22;

    v23 = *(v17 + v13);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 328;
    *(v0 + 24) = sub_A088;
    v24 = swift_continuation_init();
    *(v0 + 136) = sub_F3B8(&qword_1EED8, &qword_13FD0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_5E34;
    *(v0 + 104) = &unk_18740;
    *(v0 + 112) = v24;
    [v23 stopTemporaryItemLocationShare:v22 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_A488()
{
  v36 = v0;
  v1 = v0[40];
  swift_willThrow();
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[29];
  v8 = sub_11584();
  sub_F488(v8, qword_1EE10);
  v4(v5, v6, v7);
  swift_errorRetain();
  v9 = sub_11564();
  v10 = sub_116E4();

  if (os_log_type_enabled(v9, v10))
  {
    v34 = v0[40];
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v14 = 136315907;
    *(v14 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012990, &v35);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
    v15 = sub_11844();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_B480(v15, v17, &v35);

    *(v14 + 24) = v19;
    *(v14 + 32) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v20;
    *v33 = v20;
    _os_log_impl(&dword_0, v9, v10, "%s: Failed to stop sharing %{private,mask.hash}s error %{public}@", v14, 0x2Au);
    sub_FB50(v33, &qword_1EEE8, &qword_13FD8);

    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[30];
    v21 = v0[31];
    v23 = v0[29];

    v18 = *(v22 + 8);
    v18(v21, v23);
  }

  v25 = v0[39];
  v24 = v0[40];
  v26 = v0[31];
  v27 = v0[32];
  v28 = v0[29];
  v29 = v0[30] + 8;
  swift_willThrow();

  v18(v27, v28);

  v30 = v0[1];
  v31 = v0[40];

  return v30();
}

BOOL sub_A7FC(id *a1)
{
  v1 = [*a1 sharee];
  v2 = [v1 type];

  return v2 == &dword_0 + 2;
}

id sub_A860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyItemsDigitalSeparationSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A914(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_AA0C;

  return v7(a1);
}

uint64_t sub_AA0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_AB04(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_103A8;

  return v7();
}

uint64_t sub_ABEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_ACD4;

  return v8();
}

uint64_t sub_ACD4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_F3B8(&qword_1EF38, &qword_14018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_FAE0(a3, v24 - v10);
  v12 = sub_11694();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_FB50(v11, &qword_1EF38, &qword_14018);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_11684();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_11674();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_115F4() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_FB50(a3, &qword_1EF38, &qword_14018);

    return v22;
  }

LABEL_8:
  sub_FB50(a3, &qword_1EF38, &qword_14018);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_B0B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_103AC;

  return v7(a1);
}

size_t sub_B1AC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_F3B8(&qword_1EF08, &qword_13FF8);
  v10 = *(sub_11554() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_11554() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_B384(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_F3B8(&qword_1EF08, &qword_13FF8);
  v4 = *(sub_11554() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_B480(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_B54C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_F410(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_F978(v11);
  return v7;
}

unint64_t sub_B54C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_B658(a5, a6);
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
    result = sub_117E4();
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

char *sub_B658(uint64_t a1, unint64_t a2)
{
  v4 = sub_B6A4(a1, a2);
  sub_B7D4(&off_186D0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_B6A4(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_B8C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_117E4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_11614();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_B8C0(v10, 0);
        result = sub_117C4();
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

uint64_t sub_B7D4(uint64_t result)
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

  result = sub_B934(result, v12, 1, v3);
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

void *sub_B8C0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_F3B8(&qword_1EEF8, &qword_13FE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_B934(char *result, int64_t a2, char a3, char *a4)
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
    sub_F3B8(&qword_1EEF8, &qword_13FE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_BA28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_11554();
  sub_F8CC(&qword_1EF10, &type metadata accessor for UUID);
  v5 = sub_11594();

  return sub_D38C(a1, v5);
}

void (*sub_BAC0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_11554();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_E918(v6);
  v6[12] = sub_E668(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_BBFC;
}

void sub_BBFC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t sub_BC94(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_11764();

    if (v9)
    {

      sub_C794();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_11754();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_D7CC(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_C18C(v21 + 1);
    }

    v19 = v8;
    sub_C710(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_C794();
  v11 = sub_11704(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_D9AC(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_11714();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_BEAC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_11554();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_F8CC(&qword_1EF10, &type metadata accessor for UUID);
  v36 = a2;
  v13 = sub_11594();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_F8CC(&qword_1EF18, &type metadata accessor for UUID);
      v23 = sub_115A4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_DB0C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_C18C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_F3B8(&qword_1EEF0, &qword_13FE0);
  result = sub_11794();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_11704(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_C3B4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_11554();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_F3B8(&qword_1EF20, &qword_14000);
  result = sub_11794();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_F8CC(&qword_1EF10, &type metadata accessor for UUID);
      result = sub_11594();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_C710(uint64_t a1, uint64_t a2)
{
  sub_11704(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_11734();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_C794()
{
  result = qword_1F020;
  if (!qword_1F020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1F020);
  }

  return result;
}

void sub_C7E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_C9E4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_C954(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_C7E8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_C9E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_F3B8(&qword_1EEF0, &qword_13FE0);
  result = sub_117B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_11704(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_CBD8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_11554();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_F3B8(&qword_1EF68, &qword_14080);
  v43 = a2;
  result = sub_11824();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_F8CC(&qword_1EF10, &type metadata accessor for UUID);
      result = sub_11594();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_CFB4(int64_t a1, uint64_t a2)
{
  v43 = sub_11554();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin();
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_11724();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_F8CC(&qword_1EF10, &type metadata accessor for UUID);
      v26 = sub_11594();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_D2D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_11554();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_D38C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_11554();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_F8CC(&qword_1EF18, &type metadata accessor for UUID);
      v16 = sub_115A4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_D54C()
{
  v1 = v0;
  v34 = sub_11554();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin();
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3B8(&qword_1EF68, &qword_14080);
  v4 = *v0;
  v5 = sub_11814();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

Swift::Int sub_D7CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_F3B8(&qword_1EEF0, &qword_13FE0);
    v2 = sub_117A4();
    v15 = v2;
    sub_11744();
    if (sub_11774())
    {
      sub_C794();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_C18C(v9 + 1);
        }

        v2 = v15;
        result = sub_11704(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_11774());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_D9AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_C18C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_DDB0();
      goto LABEL_12;
    }

    sub_E138(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_11704(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_C794();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_11714();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_11864();
  __break(1u);
}

uint64_t sub_DB0C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_11554();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_C3B4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_DF00();
      goto LABEL_12;
    }

    sub_E34C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_F8CC(&qword_1EF10, &type metadata accessor for UUID);
  v15 = sub_11594();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_F8CC(&qword_1EF18, &type metadata accessor for UUID);
      v23 = sub_115A4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_11864();
  __break(1u);
  return result;
}

id sub_DDB0()
{
  v1 = v0;
  sub_F3B8(&qword_1EEF0, &qword_13FE0);
  v2 = *v0;
  v3 = sub_11784();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_DF00()
{
  v1 = v0;
  v2 = sub_11554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3B8(&qword_1EF20, &qword_14000);
  v7 = *v0;
  v8 = sub_11784();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_E138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_F3B8(&qword_1EEF0, &qword_13FE0);
  result = sub_11794();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_11704(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_E34C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_11554();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_F3B8(&qword_1EF20, &qword_14000);
  v10 = sub_11794();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_F8CC(&qword_1EF10, &type metadata accessor for UUID);
      result = sub_11594();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

void (*sub_E668(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = sub_11554();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_BA28(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_D54C();
      v14 = v22;
      goto LABEL_14;
    }

    sub_CBD8(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_BA28(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_11874();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  *v9 = v25;
  return sub_E818;
}

void sub_E818(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_D2D4(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_CFB4(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*sub_E918(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_E940;
}

uint64_t sub_E94C(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_11554();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v32;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = (&dword_0 + 1);
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_EBF0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_11804())
    {
LABEL_3:
      sub_F3B8(&qword_1EEF0, &qword_13FE0);
      v3 = sub_117B4();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_11804();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
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
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_117D4();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_11704(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_C794();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_11714();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_11704(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_C794();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_11714();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_EEBC(void **a1)
{
  v2 = sub_11554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v8 = sub_11584();
  sub_F488(v8, qword_1EE10);
  v9 = v7;
  v10 = sub_11564();
  v11 = sub_116F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136315907;
    *(v12 + 4) = sub_B480(0xD00000000000001ELL, 0x80000000000129D0, &v29);
    *(v12 + 12) = 2082;
    v13 = [v9 identifier];
    v27 = v10;
    v14 = v13;
    sub_11544();

    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
    HIDWORD(v26) = v11;
    v15 = sub_11844();
    v17 = v16;
    v18 = *(v3 + 8);
    v18(v6, v2);
    v19 = sub_B480(v15, v17, &v29);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v20 = [v9 beaconIdentifier];
    sub_11544();

    v21 = sub_11844();
    v23 = v22;
    v18(v6, v2);
    v24 = sub_B480(v21, v23, &v29);

    *(v12 + 34) = v24;
    v25 = v27;
    _os_log_impl(&dword_0, v27, BYTE4(v26), "%s identifier: %{public}s beacon: %{private,mask.hash}s", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_F21C(uint64_t a1)
{
  v2 = sub_11554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_F8CC(&qword_1EF10, &type metadata accessor for UUID);
  result = sub_116C4();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_BEAC(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_F3B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_F410(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_F488(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_F4C0(void **a1)
{
  v2 = sub_11554();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_1EBB0 != -1)
  {
    swift_once();
  }

  v8 = sub_11584();
  sub_F488(v8, qword_1EE10);
  v9 = v7;
  v10 = sub_11564();
  v11 = sub_116F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136315907;
    *(v12 + 4) = sub_B480(0xD00000000000001DLL, 0x8000000000012990, &v29);
    *(v12 + 12) = 2082;
    v13 = [v9 identifier];
    v27 = v10;
    v14 = v13;
    sub_11544();

    sub_F8CC(&qword_1EEE0, &type metadata accessor for UUID);
    HIDWORD(v26) = v11;
    v15 = sub_11844();
    v17 = v16;
    v18 = *(v3 + 8);
    v18(v6, v2);
    v19 = sub_B480(v15, v17, &v29);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v20 = [v9 beaconIdentifier];
    sub_11544();

    v21 = sub_11844();
    v23 = v22;
    v18(v6, v2);
    v24 = sub_B480(v21, v23, &v29);

    *(v12 + 34) = v24;
    v25 = v27;
    _os_log_impl(&dword_0, v27, BYTE4(v26), "%s identifier: %{public}s beacon: %{private,mask.hash}s", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t *sub_F824(uint64_t a1, uint64_t *a2)
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

void *sub_F888(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_F8CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_F914(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_F978(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_F9C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_FA0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_103A8;

  return sub_2120(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_FAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_F3B8(&qword_1EF38, &qword_14018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FB50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_F3B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_FBB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_FBE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_103A8;

  return sub_A914(a1, v5);
}

uint64_t sub_FCA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FCD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_ACD4;

  return sub_44A4(a1, v4);
}

uint64_t sub_FD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_F3B8(&qword_1EF48, &qword_14050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FDE8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_FE28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_103A8;

  return sub_6AC4(v2, v3);
}

uint64_t sub_FED8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_103A8;

  return sub_AB04(v2, v3, v5);
}

uint64_t sub_FF98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_103A8;

  return sub_ABEC(a1, v4, v5, v7);
}

uint64_t sub_10064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_103A8;

  return sub_B0B4(a1, v5);
}

uint64_t sub_10120()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_ACD4;

  return sub_608C(v2, v3, v4);
}

uint64_t sub_101D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1021C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_103A8;

  return sub_5528(v2, v3, v4);
}

uint64_t sub_102D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10310()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_103D0()
{
  v0 = sub_11584();
  sub_F824(v0, qword_1F380);
  sub_F488(v0, qword_1F380);
  return sub_11574();
}

void sub_1051C()
{
  v44 = &_swiftEmptyArrayStorage;
  v1 = *(v0 + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_beaconShares);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSBeacon_beaconShares);
    }

    sub_11744();
    sub_C794();
    sub_10C98();
    sub_116D4();
    v1 = v45;
    v3 = v46;
    v4 = v47;
    v5 = v48;
    v6 = v49;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_11774() || (sub_C794(), swift_dynamicCast(), (v13 = v41) == 0))
      {
LABEL_42:
        sub_C7E0();
        return;
      }

      goto LABEL_20;
    }

    v11 = v5;
    v12 = v6;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v6 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_42;
    }

LABEL_20:
    if ((SPBeaconShare.shouldBeListed.getter() & 1) == 0 || (v14 = [v13 sharee], v15 = objc_msgSend(v14, "type"), v14, v15 == &dword_0 + 2))
    {
LABEL_10:
    }

    else
    {
      v16 = [v13 owner];
      v17 = [v16 destination];

      v18 = sub_115E4();
      v20 = v19;

      if (v18 == 0x6F6C4072656E776FLL && v20 == 0xEF74736F686C6163)
      {
      }

      else
      {
        v22 = sub_11854();

        if ((v22 & 1) == 0)
        {
          v23 = [v13 owner];
          v24 = type metadata accessor for DSHandle();
          v25 = objc_allocWithZone(v24);
          *&v25[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSHandle_role] = 1;
          v39 = [v23 type];
          v26 = [v23 destination];
          if (!v26)
          {
            sub_115E4();
            v26 = sub_115B4();
          }

          v43.receiver = v25;
          v43.super_class = v24;
          objc_msgSendSuper2(&v43, "initWithType:destination:", v39, v26);

          sub_11634();
          if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v44 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v38 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
            sub_11654();
          }

          sub_11664();
        }
      }

      v27 = [v13 sharee];
      v28 = [v27 destination];

      v29 = sub_115E4();
      v31 = v30;

      if (v29 == 0x6F6C4072656E776FLL && v31 == 0xEF74736F686C6163)
      {
      }

      else
      {
        v32 = sub_11854();

        if (v32)
        {
          goto LABEL_10;
        }

        v33 = [v13 sharee];
        v34 = type metadata accessor for DSHandle();
        v35 = objc_allocWithZone(v34);
        *&v35[OBJC_IVAR____TtC28FindMyItemsDigitalSeparation8DSHandle_role] = 2;
        v40 = [v33 type];
        v36 = [v33 destination];
        if (!v36)
        {
          sub_115E4();
          v36 = sub_115B4();
        }

        v42.receiver = v35;
        v42.super_class = v34;
        objc_msgSendSuper2(&v42, "initWithType:destination:", v40, v36);

        sub_11634();
        if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v44 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v37 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
          sub_11654();
        }

        sub_11664();
      }
    }
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_42;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

id sub_10AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DSBeacon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DSBeacon()
{
  result = qword_1F010;
  if (!qword_1F010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10BF8()
{
  result = sub_11554();
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

unint64_t sub_10C98()
{
  result = qword_1EED0;
  if (!qword_1EED0)
  {
    sub_C794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EED0);
  }

  return result;
}

id sub_10D28()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL SPBeaconShare.isDelegated.getter()
{
  v1 = [v0 sharee];
  v2 = [v1 type];

  return v2 == &dword_0 + 2;
}

uint64_t SPBeaconShare.shouldBeListed.getter()
{
  v1 = [v0 state];
  if (v1 > 6)
  {
    return 0;
  }

  if (((1 << v1) & 0x1E) == 0)
  {
    v20 = [v0 owner];
    v21 = [v20 destination];

    v22 = sub_115E4();
    v24 = v23;

    v25 = [v0 sharee];
    v26 = [v25 destination];

    v27 = sub_115E4();
    v29 = v28;

    if (v22 == v27 && v24 == v29)
    {
    }

    else
    {
      v31 = sub_11854();

      if ((v31 & 1) == 0)
      {
        v32 = [v0 owner];
        v33 = [v32 destination];

        v34 = sub_115E4();
        v36 = v35;

        if (v34 != 0x6F6C4072656E776FLL || v36 != 0xEF74736F686C6163)
        {
          v41 = sub_11854();

          if (v41)
          {
LABEL_34:
            if (qword_1EBB8 != -1)
            {
              swift_once();
            }

            v42 = sub_11584();
            sub_F488(v42, qword_1F380);
            v15 = sub_11564();
            v16 = sub_116F4();
            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              *v17 = 0;
              v18 = "FindMyItemsDigitalSeparation: Owner is part of the share record- showing.";
              goto LABEL_15;
            }

LABEL_45:
            v19 = 1;
            goto LABEL_46;
          }

          v43 = [v0 sharee];
          v44 = [v43 destination];

          v45 = sub_115E4();
          v47 = v46;

          if (v45 != 0x6F6C4072656E776FLL || v47 != 0xEF74736F686C6163)
          {
            v48 = sub_11854();

            if ((v48 & 1) == 0)
            {
              if (qword_1EBB8 != -1)
              {
                swift_once();
              }

              v49 = sub_11584();
              sub_F488(v49, qword_1F380);
              v15 = sub_11564();
              v16 = sub_116F4();
              if (os_log_type_enabled(v15, v16))
              {
                v17 = swift_slowAlloc();
                *v17 = 0;
                v18 = "FindMyItemsDigitalSeparation: Owner is not part of the share record- this is a one to many share. Showing.";
                goto LABEL_15;
              }

              goto LABEL_45;
            }

            goto LABEL_34;
          }
        }

        goto LABEL_34;
      }
    }

    if (qword_1EBB8 != -1)
    {
      swift_once();
    }

    v37 = sub_11584();
    sub_F488(v37, qword_1F380);
    v15 = sub_11564();
    v38 = sub_116F4();
    if (!os_log_type_enabled(v15, v38))
    {
      v19 = 0;
      goto LABEL_46;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v15, v38, "FindMyItemsDigitalSeparation: Owner and sharee destinations match- not showing", v39, 2u);
    v19 = 0;
LABEL_29:

LABEL_46:

    return v19;
  }

  v2 = [v0 owner];
  v3 = [v2 destination];

  v4 = sub_115E4();
  v6 = v5;

  if (v4 == 0x6F6C4072656E776FLL && v6 == 0xEF74736F686C6163)
  {
    goto LABEL_10;
  }

  v8 = sub_11854();

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = [v0 sharee];
  v10 = [v9 destination];

  v11 = sub_115E4();
  v13 = v12;

  if (v11 == 0x6F6C4072656E776FLL && v13 == 0xEF74736F686C6163)
  {
LABEL_10:

    goto LABEL_11;
  }

  v40 = sub_11854();

  if (v40)
  {
LABEL_11:
    if (qword_1EBB8 != -1)
    {
      swift_once();
    }

    v14 = sub_11584();
    sub_F488(v14, qword_1F380);
    v15 = sub_11564();
    v16 = sub_116F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "FindMyItemsDigitalSeparation: Owner is invited or has invited someone. Showing.";
LABEL_15:
      _os_log_impl(&dword_0, v15, v16, v18, v17, 2u);
      v19 = 1;
      goto LABEL_29;
    }

    goto LABEL_45;
  }

  return 0;
}

uint64_t sub_114A8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}