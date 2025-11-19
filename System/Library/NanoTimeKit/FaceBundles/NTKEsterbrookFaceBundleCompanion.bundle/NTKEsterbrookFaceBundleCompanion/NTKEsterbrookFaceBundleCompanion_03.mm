void *sub_23BE24380(uint64_t a1, uint64_t a2)
{
  sub_23BDE652C(&qword_27E1C9470);
  result = sub_23BE32BC8();
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  if (v8)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v10 = v9 | (v5 << 6);
LABEL_10:
      v13 = *(*(a1 + 48) + 8 * v10);
      v14 = *(*(a1 + 56) + 16 * v10);
      v15 = result[6];
      v16 = *(a2 + 40);
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
      *(v15 + 8 * v10) = v13;
      *(result[7] + 16 * v10) = vaddq_f64(v14, v16);
      v17 = result[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        break;
      }

      result[2] = v19;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= ((v6 + 63) >> 6))
      {
        return result;
      }

      v12 = *(a1 + 64 + 8 * v5);
      ++v11;
      if (v12)
      {
        v8 = (v12 - 1) & v12;
        v10 = __clz(__rbit64(v12)) | (v5 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23BE244BC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

  v7 = *(a1 + 32);
  v37 = *(a1 + 40);
  v8 = *a3;
  v9 = sub_23BE28F2C(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_23BE29668(v14, a2 & 1);
    v9 = sub_23BE28F2C(v7);
    if ((v15 & 1) != (v16 & 1))
    {
LABEL_5:
      sub_23BE32D68();
      __break(1u);
LABEL_6:

      return;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v19 = v9;
  sub_23BE2B1F0();
  v9 = v19;
  if (v15)
  {
LABEL_9:
    v17 = swift_allocError();
    swift_willThrow();
    v18 = v17;
    sub_23BDE652C(&qword_27E1C82A8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v20[6] + 8 * v9) = v7;
  *(v20[7] + 16 * v9) = v37;
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_23BE32B08();
    MEMORY[0x23EEBE160](0xD00000000000001BLL, 0x800000023BE35A40);
    sub_23BE32B98();
    MEMORY[0x23EEBE160](39, 0xE100000000000000);
    sub_23BE32BA8();
    __break(1u);
    return;
  }

  v20[2] = v22;
  if (v4 != 1)
  {
    v23 = (a1 + 64);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v25 = *(v23 - 1);
      v38 = *v23;
      v26 = *a3;
      v27 = sub_23BE28F2C(v25);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v13 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v13)
      {
        goto LABEL_24;
      }

      v32 = v28;
      if (v26[3] < v31)
      {
        sub_23BE29668(v31, 1);
        v27 = sub_23BE28F2C(v25);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v32)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 8 * v27) = v25;
      *(v34[7] + 16 * v27) = v38;
      v35 = v34[2];
      v13 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v13)
      {
        goto LABEL_25;
      }

      ++v24;
      v34[2] = v36;
      v23 = (v23 + 24);
      if (v4 == v24)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

void *sub_23BE24824(uint64_t a1, void *a2)
{
  sub_23BDE652C(&qword_27E1C9470);
  result = sub_23BE32BC8();
  v4 = result;
  v5 = 0;
  v25 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v13 = (result + 8);
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v5 << 6);
      v18 = *(*(v25 + 48) + 8 * v17);
      result = [a2 scaledPoint_];
      *&v13[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
      *(v4[6] + 8 * v17) = v18;
      v19 = (v4[7] + 16 * v17);
      *v19 = v20;
      v19[1] = v21;
      v22 = v4[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v4[2] = v24;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return v4;
      }

      v16 = *(v7 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_23BE24998@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *&v25 = sub_23BE2BB20(&unk_284E91490);
  sub_23BDE652C(&qword_27E1C9448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BE38690;
  *(inited + 32) = 1;
  *(inited + 40) = sub_23BE2BC00(&unk_284E91570);
  *(inited + 48) = 2;
  *(inited + 56) = sub_23BE2BC00(&unk_284E91680);
  v5 = sub_23BE2BCE8(inited);
  swift_setDeallocating();
  sub_23BDE652C(&qword_27E1C9450);
  swift_arrayDestroy();
  *(&v25 + 1) = v5;
  *&v26 = sub_23BE2BC00(&unk_284E91748);
  *v27 = sub_23BE2BCE8(MEMORY[0x277D84F90]);
  v6 = [objc_allocWithZone(MEMORY[0x277CBBAF8]) initWithDevice:a1 identitySizeClass:2];
  [v6 setScale:6 forSizeClass:1.2376];
  [v6 setScale:9 forSizeClass:1.2584];
  sub_23BDE652C(&qword_27E1C9458);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_23BE3E850;
  *(v7 + 32) = 1;
  [v6 scaledSize_];
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 72) = 2;
  [v6 scaledSize_];
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = v10;
  *(v7 + 104) = v11;
  *(v7 + 112) = 3;
  [v6 scaledSize_];
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = v12;
  *(v7 + 144) = v13;
  v14 = sub_23BE2BCFC(v7);
  swift_setDeallocating();
  *(&v26 + 1) = v14;
  [a1 screenBounds];
  MidX = CGRectGetMidX(v38);
  [a1 screenBounds];
  *&v27[8] = MidX;
  *&v27[16] = CGRectGetMidY(v39);
  v32 = v25;
  v33 = v26;
  v34 = *v27;
  v35 = *&v27[16];
  v16 = sub_23BE23FD4(1, v6);
  v29 = v26;
  v30 = *v27;
  v28 = v25;
  v31 = *&v27[16];
  v36 = v26;
  v37 = *v27;

  v17 = sub_23BE23FD4(2, v6);
  [v6 setScale:2 forSizeClass:0.957];
  v18 = v6;
  v19 = sub_23BE24824(v26, v18);

  sub_23BDF5A94(&v36, &qword_27E1C9460);
  v20 = sub_23BE24380(v19, &v25);

  v21 = swift_initStackObject();
  *(v21 + 32) = 1;
  *(v21 + 16) = xmmword_23BE3E850;
  *(v21 + 40) = v16;
  *(v21 + 48) = 2;
  *(v21 + 56) = v17;
  *(v21 + 64) = 3;
  *(v21 + 72) = v20;
  v22 = sub_23BE2BCE8(v21);
  swift_setDeallocating();
  swift_arrayDestroy();

  sub_23BDF5A94(&v37, &qword_27E1C9468);
  result = *&v27[8];
  v24 = v26;
  *a2 = v25;
  *(a2 + 16) = v24;
  *(a2 + 32) = v22;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_23BE24D60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23BE24D6C()
{
  v1 = *v0;
  sub_23BE32DC8();
  if (v1)
  {
    v2 = 5;
  }

  else
  {
    v2 = 2;
  }

  MEMORY[0x23EEBE630](v2);
  return sub_23BE32E08();
}

uint64_t sub_23BE24DC0()
{
  if (*v0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 2;
  }

  return MEMORY[0x23EEBE630](v1);
}

uint64_t sub_23BE24DFC()
{
  v1 = *v0;
  sub_23BE32DC8();
  if (v1)
  {
    v2 = 5;
  }

  else
  {
    v2 = 2;
  }

  MEMORY[0x23EEBE630](v2);
  return sub_23BE32E08();
}

void *sub_23BE24E4C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 5)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_23BE24E6C(uint64_t *a1@<X8>)
{
  v2 = 2;
  if (*v1)
  {
    v2 = 5;
  }

  *a1 = v2;
}

uint64_t sub_23BE24E88()
{
  v1 = *(v0 + 48);
  if (v1 != 2 && (v1 & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + 64))
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
  }

  else
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
  }

  if (*(v0 + 80))
  {
    v4 = 0x303273656D726548;
  }

  else
  {
    v4 = 0x6F72627265747365;
  }

  if (*(v0 + 80))
  {
    v5 = 0xEA00000000003532;
  }

  else
  {
    v5 = 0xEA00000000006B6FLL;
  }

  MEMORY[0x23EEBE160](v4, v5);

  MEMORY[0x23EEBE160](47, 0xE100000000000000);
  MEMORY[0x23EEBE160](v2, v3);

  return 0;
}

uint64_t sub_23BE24F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a3;
  v27 = a2;
  v25 = a1;
  v5 = sub_23BE32A38();
  v23[0] = v5;
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v28 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BE32A28();
  MEMORY[0x28223BE20](v7);
  v8 = sub_23BE32818();
  MEMORY[0x28223BE20](v8 - 8);
  *(v3 + 72) = 1;
  v9 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCache;
  v10 = MEMORY[0x277D84F90];
  *(v4 + v9) = sub_23BE2C38C(MEMORY[0x277D84F90], &qword_27E1C94E0);
  *(v4 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCacheIsValid) = 0;
  *(v4 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_lastRequestedIndex) = 0;
  v11 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cachedIndexes;
  *(v4 + v11) = [objc_allocWithZone(MEMORY[0x277CCAB58]) init];
  v24 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cacheIsolationQueue;
  v12 = sub_23BE0C76C();
  v23[3] = "QQ}8^B24";
  v23[4] = v12;
  sub_23BE32808();
  v30 = v10;
  v23[2] = sub_23BE2C708(&qword_27E1C9548, MEMORY[0x277D85230]);
  v23[1] = sub_23BDE652C(&qword_27E1C9550);
  sub_23BE2C750(&qword_27E1C9558, &qword_27E1C9550);
  sub_23BE32AC8();
  v13 = *MEMORY[0x277D85260];
  v14 = *(v29 + 104);
  v29 += 104;
  v14(v28, v13, v5);
  *(v4 + v24) = sub_23BE32A68();
  v24 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameGenerationQueue;
  sub_23BE32808();
  v30 = MEMORY[0x277D84F90];
  sub_23BE32AC8();
  v14(v28, v13, v23[0]);
  v15 = sub_23BE32A68();
  v16 = v25;
  *(v4 + v24) = v15;
  *(v4 + 64) = *(v16 + 48);
  v17 = *(v16 + 32);
  *(v4 + 32) = *(v16 + 16);
  *(v4 + 48) = v17;
  *(v4 + 16) = *v16;
  v19 = v26;
  v18 = v27;
  v20 = *(v26 + 8);
  v21 = *(v26 + 16);
  *(v4 + 80) = *v26;
  *(v4 + 88) = v20;
  *(v4 + 96) = v21;
  sub_23BE2C7A4(v18, v4 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_timing, type metadata accessor for Timing);

  sub_23BE25EC8();
  sub_23BE2C80C(v19, type metadata accessor for SpriteAnimationAttributes);
  sub_23BE2C80C(v18, type metadata accessor for Timing);
  return v4;
}

uint64_t sub_23BE253C4()
{
  v1 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCache;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84F98];

  v2 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cachedIndexes;
  [*(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cachedIndexes) removeAllIndexes];

  sub_23BE2C80C(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_timing, type metadata accessor for Timing);

  return v0;
}

uint64_t sub_23BE254AC()
{
  sub_23BE253C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AtlasImageCache()
{
  result = qword_27E1C94A0;
  if (!qword_27E1C94A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BE25558()
{
  result = type metadata accessor for Timing(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BE25638(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_timing;
  v4 = type metadata accessor for Timing(0);
  v5 = *(v3 + *(v4 + 20));
  v6 = *(v3 + *(v4 + 24));
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 > a1 || v6 < a1)
  {
    if (qword_27E1C7A38 == -1)
    {
LABEL_8:
      v8 = sub_23BE327D8();
      sub_23BDEA278(v8, qword_27E1DBEB0);

      v9 = sub_23BE327B8();
      v10 = sub_23BE32A08();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 134218242;
        *(v11 + 4) = a1;
        *(v11 + 12) = 2080;
        sub_23BE32B98();
        MEMORY[0x23EEBE160](3026478, 0xE300000000000000);
        sub_23BE32B98();
        v13 = sub_23BE288C4(0, 0xE000000000000000, &v24);

        *(v11 + 14) = v13;
        _os_log_impl(&dword_23BDE0000, v9, v10, "Out of bound frame; requested (%ld) but there are only %s frames)", v11, 0x16u);
        sub_23BDE6478(v12);
        MEMORY[0x23EEBF030](v12, -1, -1);
        MEMORY[0x23EEBF030](v11, -1, -1);
      }

      return 0;
    }

LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v24 = 0;
  v15 = *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cacheIsolationQueue);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = &v24;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_23BE2C68C;
  *(v18 + 24) = v17;
  aBlock[4] = sub_23BE2C888;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BE25EA0;
  aBlock[3] = &unk_284E95988;
  v19 = _Block_copy(aBlock);
  v20 = v15;

  dispatch_sync(v20, v19);

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    sub_23BE25EC8();
    v14 = v24;

    return v14;
  }

  __break(1u);
  return result;
}

void sub_23BE259B0(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = sub_23BE32828();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v43[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_lastRequestedIndex) != a2)
    {
      *(Strong + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_lastRequestedIndex) = a2;
      v11 = *(Strong + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cacheIsolationQueue);
      *v8 = v11;
      (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
      v12 = v11;
      LOBYTE(v11) = sub_23BE32838();
      (*(v6 + 8))(v8, v5);
      if ((v11 & 1) == 0)
      {
        __break(1u);
        goto LABEL_29;
      }

      *(v10 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCacheIsValid) = 0;
    }

    v13 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCache;
    swift_beginAccess();
    v14 = *(v10 + v13);
    if (*(v14 + 16) && (v15 = sub_23BE28F2C(a2), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      v18 = v17;
    }

    else
    {
      v17 = 0;
    }

    v19 = *a3;
    *a3 = v17;

    if (*a3)
    {

      return;
    }

    v20 = *(v10 + 32);
    v44[0] = *(v10 + 16);
    v44[1] = v20;
    v44[2] = *(v10 + 48);
    v45 = *(v10 + 64);
    sub_23BDFB698(v44, v43);
    v21 = sub_23BDFA5DC(a2);
    v23 = v22;
    sub_23BDFB6D0(v44);
    if (v23)
    {
      v24 = sub_23BE27CD8(v21, v23);
      if (v24)
      {
        v25 = v24;
        if (qword_27E1C7A38 != -1)
        {
          swift_once();
        }

        v26 = sub_23BE327D8();
        v27 = sub_23BDEA278(v26, qword_27E1DBEB0);

        v28 = sub_23BE327B8();
        v29 = sub_23BE32A18();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v42 = v27;
          v43[0] = v31;
          v32 = v31;
          *v30 = 136315394;
          v33 = sub_23BE288C4(v21, v23, v43);

          *(v30 + 4) = v33;
          *(v30 + 12) = 2048;
          *(v30 + 14) = a2;
          _os_log_impl(&dword_23BDE0000, v28, v29, "Caching image frame named: %s at index: %ld", v30, 0x16u);
          sub_23BDE6478(v32);
          MEMORY[0x23EEBF030](v32, -1, -1);
          MEMORY[0x23EEBF030](v30, -1, -1);
        }

        else
        {
        }

        sub_23BE27B24(v25, a2);
        v38 = *a3;
        *a3 = v25;
        v39 = v25;

        v35 = sub_23BE327B8();
        v40 = sub_23BE329E8();
        if (os_log_type_enabled(v35, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          *(v41 + 4) = a2;
          _os_log_impl(&dword_23BDE0000, v35, v40, "Returning undrawn frame at index %ld", v41, 0xCu);
          MEMORY[0x23EEBF030](v41, -1, -1);
        }

LABEL_26:
        return;
      }
    }

    if (qword_27E1C7A38 == -1)
    {
LABEL_19:
      v34 = sub_23BE327D8();
      sub_23BDEA278(v34, qword_27E1DBEB0);
      v35 = sub_23BE327B8();
      v36 = sub_23BE32A08();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = a2;
        _os_log_impl(&dword_23BDE0000, v35, v36, "Failed to create image for undrawn frame at index: %ld", v37, 0xCu);
        MEMORY[0x23EEBF030](v37, -1, -1);
      }

      goto LABEL_26;
    }

LABEL_29:
    swift_once();
    goto LABEL_19;
  }
}

uint64_t sub_23BE25EC8()
{
  v1 = sub_23BE327E8();
  v14 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BE32818();
  v12 = *(v4 - 8);
  v13 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameGenerationQueue);
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_23BE2C684;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BE08AD8;
  aBlock[3] = &unk_284E95910;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  sub_23BE327F8();
  v15 = MEMORY[0x277D84F90];
  sub_23BE2C708(&qword_27E1C8A58, MEMORY[0x277D85198]);
  sub_23BDE652C(&qword_27E1C8A60);
  sub_23BE2C750(&qword_27E1C8A68, &qword_27E1C8A60);
  sub_23BE32AC8();
  MEMORY[0x23EEBE2B0](0, v6, v3, v9);
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v12 + 8))(v6, v13);
}

uint64_t sub_23BE261A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23BE26200();
  }

  return result;
}

uint64_t sub_23BE26200()
{
  v1 = v0;
  v2 = sub_23BE32828();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameGenerationQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_23BE32838();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CCAB58]) init];
  v44 = 0;
  v45 = v9;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v10 = v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_timing;
  v11 = *(v10 + *(type metadata accessor for Timing(0) + 28));
  v12 = *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cacheIsolationQueue);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v11 == 3;
  *(v14 + 32) = &v45;
  *(v14 + 40) = &v43;
  *(v14 + 48) = &v41;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_23BE2C600;
  *(v15 + 24) = v14;
  v39 = sub_23BE2C888;
  v40 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_23BE25EA0;
  v38 = &unk_284E957F8;
  v16 = _Block_copy(&aBlock);
  v17 = v12;

  dispatch_sync(v17, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (![v45 count])
  {
    v29 = 0;
    v32 = 0;
    goto LABEL_10;
  }

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v44;
  v20 = v45;
  v21 = v43;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_23BE2C614;
  *(v22 + 24) = v18;
  v39 = sub_23BE2C61C;
  v40 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_23BE26DB0;
  v38 = &unk_284E95848;
  v23 = _Block_copy(&aBlock);
  swift_retain_n();
  v24 = v20;

  [v24 enumerateRangesInRange:v21 options:v19 usingBlock:{0, v23}];

  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    goto LABEL_13;
  }

  if (v11 != 3)
  {

    v32 = 0;
    v29 = sub_23BE2C614;
    goto LABEL_10;
  }

  v25 = v45;
  v26 = v41;
  v27 = v42;
  v28 = swift_allocObject();
  v29 = sub_23BE2C614;
  *(v28 + 16) = sub_23BE2C614;
  *(v28 + 24) = v18;
  v39 = sub_23BE2C8AC;
  v40 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_23BE26DB0;
  v38 = &unk_284E95898;
  v30 = _Block_copy(&aBlock);
  v31 = v25;

  [v31 enumerateRangesInRange:v26 options:v27 usingBlock:{0, v30}];

  _Block_release(v30);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if ((v26 & 1) == 0)
  {
    v32 = sub_23BE2C614;
LABEL_10:
    v33 = v45;

    sub_23BE2C644(v29);
    return sub_23BE2C644(v32);
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_23BE267B0(uint64_t a1, char a2, void **a3, void *a4, void *a5)
{
  v9 = sub_23BE32768();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (*(Strong + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCacheIsValid))
    {
LABEL_25:

      return;
    }

    *(Strong + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCacheIsValid) = 1;
    v15 = Strong + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_timing;
    v16 = type metadata accessor for Timing(0);
    v17 = *(v16 + 20);
    v52 = *(v16 + 24);
    v53 = v17;
    v18 = *(v15 + v17);
    v19 = *(v15 + v52);
    v20 = __OFSUB__(v19, v18);
    v21 = v19 - v18;
    if (v21 < 0 != v20)
    {
      __break(1u);
    }

    else if (!v20)
    {
      v20 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (!v20)
      {
        v50 = a3;
        v51 = a4;
        v23 = 2;
        if (*(v14 + 72))
        {
          v23 = 5;
        }

        if (v23 >= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        v25 = *(v14 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_lastRequestedIndex);
        v26 = v22 - v25;
        if (!__OFSUB__(v22, v25))
        {
          v48 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_lastRequestedIndex;
          v49 = a5;
          if (v26 < 0)
          {
            v26 = 0;
            v27 = v24;
            if (v22 <= 0)
            {
LABEL_15:
              v28 = [objc_allocWithZone(MEMORY[0x277CCAB58]) initWithIndexesInRange_];
              v29 = v28;
              if (v27 >= v24 || (a2 & 1) == 0)
              {
LABEL_20:
                v30 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cachedIndexes;
                v31 = *(v14 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cachedIndexes);
                v32 = v29;
                if ([v31 isEqualToIndexSet_])
                {

                  return;
                }

                sub_23BE32758();
                v33 = objc_allocWithZone(MEMORY[0x277CCAB58]);
                v34 = sub_23BE32748();
                v35 = [v33 initWithIndexSet_];

                (*(v10 + 8))(v12, v9);
                [v35 removeIndexes_];

                v36 = swift_allocObject();
                *(v36 + 16) = sub_23BE2C654;
                *(v36 + 24) = v14;
                aBlock[4] = sub_23BE2C65C;
                aBlock[5] = v36;
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_23BE26CDC;
                aBlock[3] = &unk_284E958E8;
                v37 = _Block_copy(aBlock);
                v38 = v35;

                [v38 enumerateIndexesUsingBlock_];
                _Block_release(v37);
                LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

                if ((v35 & 1) == 0)
                {
                  v39 = *(v14 + v30);
                  [v39 removeIndexes_];

                  [v32 removeIndexes_];
                  v40 = *v50;
                  *v50 = v32;
                  v41 = v32;

                  v42 = v48;
                  v43 = v49;
                  v44 = v51;
                  *v51 = *(v14 + v48);
                  v44[1] = v26;
                  v45 = *(v15 + v53);
                  if (*(v15 + v52) >= v45)
                  {
                    v46 = *(v14 + v42);

                    *v43 = v45;
                    v43[1] = v46;
                    goto LABEL_25;
                  }

LABEL_36:
                  __break(1u);
                  return;
                }

                goto LABEL_34;
              }

              if (*(v15 + v52) >= *(v15 + v53))
              {
                if (__OFSUB__(v24, v27))
                {
LABEL_35:
                  __break(1u);
                  goto LABEL_36;
                }

                [v28 addIndexesInRange_];
                goto LABEL_20;
              }

LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          else
          {
            v27 = v24;
            if (v26 >= v24)
            {
              goto LABEL_15;
            }
          }

          v27 = v26;
          goto LABEL_15;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_31;
  }
}

uint64_t sub_23BE26C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCache;
  swift_beginAccess();
  v6 = sub_23BE28F2C(a1);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a3 + v5);
    *(a3 + v5) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23BE2B9D4(&qword_27E1C94E0);
    }

    sub_23BE2A8CC(v8, v10);
    *(a3 + v5) = v10;
  }

  return swift_endAccess();
}

void sub_23BE26D0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2 + a1 < a1)
    {
      __break(1u);
    }

    else
    {
      sub_23BE26DE4(a1);
      if (!a2)
      {
LABEL_7:

        return;
      }

      if (a2 + a1 > a1)
      {
        v4 = a1 + 1;
        do
        {
          sub_23BE26DE4(v4++);
          --a2;
        }

        while (a2);
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_23BE26DE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BE32828();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v56[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameGenerationQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = v8;
  LOBYTE(v8) = sub_23BE32838();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = v2 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_timing;
  v11 = type metadata accessor for Timing(0);
  v12 = *(v10 + *(v11 + 20));
  v13 = *(v10 + *(v11 + 24));
  if (v13 < v12)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v12 > a1 || v13 < a1)
  {
    return;
  }

  v57 = 1;
  v15 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cacheIsolationQueue;
  v16 = *(v2 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cacheIsolationQueue);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &v57;
  v18[4] = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_23BE2C5A4;
  *(v19 + 24) = v18;
  *&v60 = sub_23BE2C5B0;
  *(&v60 + 1) = v19;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v59 = sub_23BE25EA0;
  *(&v59 + 1) = &unk_284E95708;
  v20 = _Block_copy(&aBlock);
  v21 = v16;

  dispatch_sync(v21, v20);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    goto LABEL_33;
  }

  if (v57 != 1)
  {

    return;
  }

  v22 = *(v2 + 32);
  aBlock = *(v2 + 16);
  v59 = v22;
  v60 = *(v2 + 48);
  v61 = *(v2 + 64);
  v23 = sub_23BDFA5DC(a1);
  if (!v24)
  {
    if (qword_27E1C7A38 == -1)
    {
LABEL_18:
      v38 = sub_23BE327D8();
      sub_23BDEA278(v38, qword_27E1DBEB0);
      v39 = sub_23BE327B8();
      v40 = sub_23BE32A08();
      if (!os_log_type_enabled(v39, v40))
      {
LABEL_25:

        return;
      }

      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = a1;
      _os_log_impl(&dword_23BDE0000, v39, v40, "No image name for frame index: %ld", v41, 0xCu);
      v42 = v41;
LABEL_24:
      MEMORY[0x23EEBF030](v42, -1, -1);
      goto LABEL_25;
    }

LABEL_35:
    swift_once();
    goto LABEL_18;
  }

  v25 = v23;
  v26 = v24;
  v27 = sub_23BE27CD8(v23, v24);
  if (!v27)
  {
    if (qword_27E1C7A38 != -1)
    {
      swift_once();
    }

    v43 = sub_23BE327D8();
    sub_23BDEA278(v43, qword_27E1DBEB0);

    v39 = sub_23BE327B8();
    v44 = sub_23BE32A08();

    if (!os_log_type_enabled(v39, v44))
    {

      return;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v56[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = a1;
    *(v45 + 12) = 2080;
    v47 = sub_23BE288C4(v25, v26, v56);

    *(v45 + 14) = v47;
    _os_log_impl(&dword_23BDE0000, v39, v44, "Unable to create CGImage for frame index: %ld with image name: %s", v45, 0x16u);
    sub_23BDE6478(v46);
    MEMORY[0x23EEBF030](v46, -1, -1);
    v42 = v45;
    goto LABEL_24;
  }

  v28 = v27;
  v29 = sub_23BE277E8(v27);
  if (!v29)
  {
    if (qword_27E1C7A38 != -1)
    {
      swift_once();
    }

    v30 = sub_23BE327D8();
    sub_23BDEA278(v30, qword_27E1DBEB0);

    v31 = sub_23BE327B8();
    v32 = sub_23BE32A08();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v55 = v31;
      v56[0] = v34;
      v35 = v34;
      *v33 = 134218242;
      *(v33 + 4) = a1;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_23BE288C4(v25, v26, v56);
      v36 = v32;
      v37 = v55;
      _os_log_impl(&dword_23BDE0000, v55, v36, "Predrawing failed for image at index: %ld with name: %s", v33, 0x16u);
      sub_23BDE6478(v35);
      MEMORY[0x23EEBF030](v35, -1, -1);
      MEMORY[0x23EEBF030](v33, -1, -1);
    }

    else
    {
    }

    v29 = v28;
  }

  v48 = v29;
  v49 = *(v2 + v15);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v48;
  v51[4] = a1;
  v51[5] = v25;
  v51[6] = v26;
  a1 = swift_allocObject();
  *(a1 + 16) = sub_23BE2C5F0;
  *(a1 + 24) = v51;
  v56[4] = sub_23BE2C888;
  v56[5] = a1;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 1107296256;
  v56[2] = sub_23BE25EA0;
  v56[3] = &unk_284E95780;
  v52 = _Block_copy(v56);
  v53 = v49;
  v54 = v48;

  dispatch_sync(v53, v52);

  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

uint64_t sub_23BE2758C(uint64_t a1, char *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCache;
    swift_beginAccess();
    if (*(*(v6 + v7) + 16) && (sub_23BE28F2C(a3), (v8 & 1) != 0))
    {

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    *a2 = v9;
  }

  return result;
}

void sub_23BE27644(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_23BE27B24(a2, a3);
    if (qword_27E1C7A38 != -1)
    {
      swift_once();
    }

    v9 = sub_23BE327D8();
    sub_23BDEA278(v9, qword_27E1DBEB0);

    v10 = sub_23BE327B8();
    v11 = sub_23BE329E8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 134218242;
      *(v12 + 4) = a3;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_23BE288C4(a4, a5, &v14);
      _os_log_impl(&dword_23BDE0000, v10, v11, "Cached image at index: %ld with name: %s", v12, 0x16u);
      sub_23BDE6478(v13);
      MEMORY[0x23EEBF030](v13, -1, -1);
      MEMORY[0x23EEBF030](v12, -1, -1);
    }
  }
}

CGImageRef sub_23BE277E8(CGImage *a1)
{
  v3 = sub_23BE32828();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameGenerationQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_23BE32838();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if ((Width - 0x2000000000000000) >> 62 != 3)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_7;
  }

  v11 = Height;
  v12 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0x23EEBE960]();
    v15 = sub_23BE2C570(Width, v11, 4 * Width, v13);
    if (v15)
    {
      v16 = v15;
      sub_23BE2C590();
      sub_23BE329B8();
      Image = CGBitmapContextCreateImage(v16);
    }

    else
    {
      if (qword_27E1C7A38 != -1)
      {
        swift_once();
      }

      v21 = sub_23BE327D8();
      sub_23BDEA278(v21, qword_27E1DBEB0);
      v22 = sub_23BE327B8();
      v23 = sub_23BE32A08();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23BDE0000, v22, v23, "Failed to create pre-drawing context", v24, 2u);
        MEMORY[0x23EEBF030](v24, -1, -1);
      }

      Image = 0;
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_16;
  }

  if (qword_27E1C7A38 != -1)
  {
    goto LABEL_19;
  }

LABEL_7:
  v18 = sub_23BE327D8();
  sub_23BDEA278(v18, qword_27E1DBEB0);
  v13 = sub_23BE327B8();
  v19 = sub_23BE32A08();
  if (os_log_type_enabled(v13, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23BDE0000, v13, v19, "Failed to create sRGB color space", v20, 2u);
    MEMORY[0x23EEBF030](v20, -1, -1);
  }

  Image = 0;
LABEL_16:

  return Image;
}

id sub_23BE27B24(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23BE32828();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cacheIsolationQueue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_23BE32838();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_frameCache;
    swift_beginAccess();
    v14 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + v13);
    *(v3 + v13) = 0x8000000000000000;
    sub_23BE2AED0(v14, a2, isUniquelyReferenced_nonNull_native, &qword_27E1C94E0);
    *(v3 + v13) = v16;
    swift_endAccess();
    return [*(v3 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion15AtlasImageCache_cachedIndexes) addIndex_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

CGImageRef sub_23BE27CD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_23BDE652C(&qword_27E1C8280);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_23BE32658();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  sub_23BE283E4(a1, a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_23BDF5A94(v6, &qword_27E1C8280);
    if (qword_27E1C7A38 != -1)
    {
      swift_once();
    }

    v14 = sub_23BE327D8();
    sub_23BDEA278(v14, qword_27E1DBEB0);

    v15 = sub_23BE327B8();
    v16 = sub_23BE32A08();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v48 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_23BE288C4(a1, a2, &v48);
      _os_log_impl(&dword_23BDE0000, v15, v16, "Could not create URL for image name: %s", v17, 0xCu);
      sub_23BDE6478(v18);
      MEMORY[0x23EEBF030](v18, -1, -1);
      MEMORY[0x23EEBF030](v17, -1, -1);
    }

    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  v20 = sub_23BE32638();
  v21 = CGImageSourceCreateWithURL(v20, 0);

  if (!v21)
  {
    if (qword_27E1C7A38 != -1)
    {
      swift_once();
    }

    v29 = sub_23BE327D8();
    sub_23BDEA278(v29, qword_27E1DBEB0);
    (*(v8 + 16))(v11, v13, v7);
    v30 = sub_23BE327B8();
    v31 = sub_23BE32A08();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v32 = 136315138;
      sub_23BE2C708(&qword_27E1C8290, MEMORY[0x277CC9260]);
      v33 = sub_23BE32D18();
      v35 = v34;
      v36 = *(v8 + 8);
      v36(v11, v7);
      v37 = sub_23BE288C4(v33, v35, &v48);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_23BDE0000, v30, v31, "Could not create image source at url: %s", v32, 0xCu);
      v38 = v47;
      sub_23BDE6478(v47);
      MEMORY[0x23EEBF030](v38, -1, -1);
      MEMORY[0x23EEBF030](v32, -1, -1);

      v36(v13, v7);
    }

    else
    {

      v46 = *(v8 + 8);
      v46(v11, v7);
      v46(v13, v7);
    }

    return 0;
  }

  sub_23BDE652C(&qword_27E1C94C0);
  inited = swift_initStackObject();
  v23 = MEMORY[0x277CD3618];
  *(inited + 16) = xmmword_23BE36630;
  v24 = *v23;
  *(inited + 32) = v24;
  *(inited + 40) = 0;
  v25 = v24;
  sub_23BE2C480(inited);
  swift_setDeallocating();
  sub_23BDF5A94(inited + 32, &qword_27E1C94C8);
  type metadata accessor for CFString(0);
  sub_23BE2C708(&qword_27E1C7BB8, type metadata accessor for CFString);
  v26 = sub_23BE32848();

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v21, 0, v26);
  if (!ImageAtIndex)
  {
    if (qword_27E1C7A38 != -1)
    {
      swift_once();
    }

    v39 = sub_23BE327D8();
    sub_23BDEA278(v39, qword_27E1DBEB0);

    v40 = sub_23BE327B8();
    v41 = sub_23BE32A08();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v40;
      v44 = v43;
      v48 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_23BE288C4(a1, a2, &v48);
      v45 = v47;
      _os_log_impl(&dword_23BDE0000, v47, v41, "Unable to create CGImage for imageName: %s", v42, 0xCu);
      sub_23BDE6478(v44);
      MEMORY[0x23EEBF030](v44, -1, -1);
      MEMORY[0x23EEBF030](v42, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v13, v7);
    return 0;
  }

  v28 = ImageAtIndex;
  (*(v8 + 8))(v13, v7);

  return v28;
}

uint64_t sub_23BE283E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a2;

  MEMORY[0x23EEBE160](7877184, 0xE300000000000000);
  v6 = v30;
  v5 = v31;
  v7 = sub_23BE24E88();
  v9 = v8;
  v10 = *(v3 + 48);
  if (v10 == 2 || (v10 & 1) != 0)
  {
    v11 = NTKAssetsBundle();
    if (v11)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  type metadata accessor for SceneLoader();
  v11 = sub_23BDF31AC();
LABEL_6:
  v12 = sub_23BE32898();
  v13 = sub_23BE32898();
  if (v9)
  {

    v14 = sub_23BE32898();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v11 URLForResource:v12 withExtension:v13 subdirectory:v14];

  if (v15)
  {

    sub_23BE32648();

    v16 = sub_23BE32658();
    v17 = *(*(v16 - 8) + 56);

    return v17(a3, 0, 1, v16);
  }

  else
  {
    if (qword_27E1C7A38 != -1)
    {
      swift_once();
    }

    v19 = sub_23BE327D8();
    sub_23BDEA278(v19, qword_27E1DBEB0);

    v20 = sub_23BE327B8();
    v21 = sub_23BE32A08();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315394;
      v24 = sub_23BE288C4(v6, v5, &v29);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2080;
      v30 = v7;
      v31 = v9;
      sub_23BDE652C(&qword_27E1C8A18);
      v25 = sub_23BE328E8();
      v27 = sub_23BE288C4(v25, v26, &v29);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_23BDE0000, v20, v21, "Could not create URL for image name: %s in subdirectory: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEBF030](v23, -1, -1);
      MEMORY[0x23EEBF030](v22, -1, -1);
    }

    else
    {
    }

    v28 = sub_23BE32658();
    return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
  }
}

unint64_t sub_23BE287A0()
{
  result = qword_27E1C94B0;
  if (!qword_27E1C94B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C94B0);
  }

  return result;
}

uint64_t sub_23BE287F4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23BE28868(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23BE288C4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_23BE288C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23BE28990(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23BE28E7C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_23BDE6478(v11);
  return v7;
}

unint64_t sub_23BE28990(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23BE28A9C(a5, a6);
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
    result = sub_23BE32B88();
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

uint64_t sub_23BE28A9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_23BE28AE8(a1, a2);
  sub_23BE28C18(&unk_284E91900);
  return v3;
}

uint64_t sub_23BE28AE8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23BE28D04(v5, 0);
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

  result = sub_23BE32B88();
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
        v10 = sub_23BE32918();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23BE28D04(v10, 0);
        result = sub_23BE32AF8();
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

uint64_t sub_23BE28C18(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23BE28D78(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23BE28D04(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_23BDE652C(&qword_27E1C94B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23BE28D78(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BDE652C(&qword_27E1C94B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **sub_23BE28E6C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23BE28E7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_23BE28EDC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_23BE28EFC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_23BE28F2C(uint64_t a1)
{
  v2 = sub_23BE32DB8();

  return sub_23BE29208(a1, v2);
}

unint64_t sub_23BE28F70(uint64_t a1, uint64_t a2)
{
  sub_23BE32DC8();
  sub_23BE328F8();
  v4 = sub_23BE32E08();

  return sub_23BE29274(a1, a2, v4);
}

unint64_t sub_23BE28FE8(uint64_t a1)
{
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](a1);
  v2 = sub_23BE32E08();
  return sub_23BE29208(a1, v2);
}

unint64_t sub_23BE29050(char a1)
{
  sub_23BE32DC8();
  MEMORY[0x23EEBE630](a1 & 1);
  v2 = sub_23BE32E08();

  return sub_23BE2932C(a1 & 1, v2);
}

unint64_t sub_23BE290BC(uint64_t a1)
{
  sub_23BE326D8();
  sub_23BE2C708(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  v2 = sub_23BE32868();

  return sub_23BE2939C(a1, v2);
}

unint64_t sub_23BE29154(uint64_t a1)
{
  sub_23BE32DC8();
  type metadata accessor for CFString(0);
  sub_23BE2C708(&qword_27E1C94D8, type metadata accessor for CFString);
  sub_23BE32798();
  v2 = sub_23BE32E08();

  return sub_23BE2955C(a1, v2);
}

unint64_t sub_23BE29208(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23BE29274(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23BE32D48())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23BE2932C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23BE2939C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23BE326D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_23BE2C708(&qword_27E1C9530, MEMORY[0x277CC95F0]);
      v15 = sub_23BE32888();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_23BE2955C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23BE2C708(&qword_27E1C94D8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23BE32788();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23BE29668(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BDE652C(&qword_27E1C9470);
  result = sub_23BE32BD8();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = sub_23BE32DB8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23BE298CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23BDE652C(&qword_27E1C9510);
  v30 = a2;
  result = sub_23BE32BD8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_23BE32DC8();
      MEMORY[0x23EEBE630](v20);
      result = sub_23BE32E08();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23BE29B5C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Scene();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_23BDE652C(&qword_27E1C9520);
  v36 = a2;
  result = sub_23BE32BD8();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_23BDF5A30(v24, v37);
      }

      else
      {
        sub_23BE2C7A4(v24, v37, type metadata accessor for Scene);
      }

      sub_23BE32DC8();
      MEMORY[0x23EEBE630](v22);
      result = sub_23BE32E08();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_23BDF5A30(v37, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_23BE29E90(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Scene();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BE326D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23BDE652C(&qword_27E1C9528);
  v43 = a2;
  result = sub_23BE32BD8();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_23BDF5A30(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_23BE2C7A4(v29 + v28 * v24, v47, type metadata accessor for Scene);
      }

      sub_23BE2C708(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
      result = sub_23BE32868();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_23BDF5A30(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_23BE2A308(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_23BDE652C(a3);
  result = sub_23BE32BD8();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = sub_23BE32DB8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v6 + 32);
      if (v31 >= 64)
      {
        bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_23BE2A568(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23BE32AE8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_23BE32DC8();
      MEMORY[0x23EEBE630](v9);
      result = sub_23BE32E08();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23BE2A6FC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23BE32AE8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_23BE32DC8();
      MEMORY[0x23EEBE630](v9);
      result = sub_23BE32E08();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Scene() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23BE2A8CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23BE32AE8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_23BE32DB8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23BE2AA50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23BE28FE8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23BE298CC(v14, a3 & 1);
      result = sub_23BE28FE8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_23BE32D68();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23BE2B340();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_23BE2AB9C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23BE28FE8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23BE2B49C();
      goto LABEL_7;
    }

    sub_23BE29B5C(v13, a3 & 1);
    v20 = sub_23BE28FE8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23BE32D68();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for Scene() - 8) + 72) * v10;

    return sub_23BE0E648(a1, v18);
  }

LABEL_13:

  return sub_23BE2B080(v10, a2, a1, v16);
}

uint64_t sub_23BE2ACE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23BE326D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23BE290BC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23BE2B6BC();
      goto LABEL_7;
    }

    sub_23BE29E90(v17, a3 & 1);
    v24 = sub_23BE290BC(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_23BE2B114(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23BE32D68();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for Scene() - 8) + 72) * v14;

  return sub_23BE0E648(a1, v22);
}

unint64_t sub_23BE2AED0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v6 = v4;
  v10 = *v4;
  result = sub_23BE28F2C(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_8:
    v21 = *v6;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    *(v21[7] + 8 * result) = a1;
    v22 = v21[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v15)
    {
      v21[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_23BE2B9D4(a4);
    result = v19;
    goto LABEL_8;
  }

  sub_23BE2A308(v16, a3 & 1, a4);
  result = sub_23BE28F2C(a2);
  if ((v17 & 1) == (v20 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_23BE32D68();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_23BE2B03C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_23BE2B080(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Scene();
  result = sub_23BDF5A30(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_23BE2B114(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23BE326D8();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Scene();
  result = sub_23BDF5A30(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_23BE2B1F0()
{
  v1 = v0;
  sub_23BDE652C(&qword_27E1C9470);
  v2 = *v0;
  v3 = sub_23BE32BC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_23BE2B340()
{
  v1 = v0;
  sub_23BDE652C(&qword_27E1C9510);
  v2 = *v0;
  v3 = sub_23BE32BC8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23BE2B49C()
{
  v1 = v0;
  v2 = type metadata accessor for Scene();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDE652C(&qword_27E1C9520);
  v5 = *v0;
  v6 = sub_23BE32BC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_23BE2C7A4(*(v5 + 56) + v22, v4, type metadata accessor for Scene);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_23BDF5A30(v4, *(v7 + 56) + v22);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_23BE2B6BC()
{
  v1 = v0;
  v2 = type metadata accessor for Scene();
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23BE326D8();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BDE652C(&qword_27E1C9528);
  v5 = *v0;
  v6 = sub_23BE32BC8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_23BE2C7A4(*(v5 + 56) + v26, v35, type metadata accessor for Scene);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_23BDF5A30(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_23BE2B9D4(uint64_t *a1)
{
  v2 = v1;
  sub_23BDE652C(a1);
  v3 = *v1;
  v4 = sub_23BE32BC8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_23BE2BB20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BDE652C(&qword_27E1C9500);
    v3 = sub_23BE32BE8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_23BE28F2C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23BE2BC00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BDE652C(&qword_27E1C9470);
    v3 = sub_23BE32BE8();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_23BE28F2C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23BE2BCFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BDE652C(&qword_27E1C94F0);
    v3 = sub_23BE32BE8();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_23BE28FE8(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23BE2BDE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BDE652C(&qword_27E1C94E8);
    v3 = sub_23BE32BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_23BE28F70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23BE2BF00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BDE652C(&qword_27E1C9540);
    v3 = sub_23BE32BE8();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_23BE29050(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23BE2BFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BDE652C(&qword_27E1C9538);
    v3 = sub_23BE32BE8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_23BE29050(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23BE2C0C8(uint64_t a1)
{
  v2 = sub_23BDE652C(&qword_27E1C9518);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_23BDE652C(&qword_27E1C9520);
    v7 = sub_23BE32BE8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_23BE2C698(v9, v5);
      v11 = *v5;
      result = sub_23BE28FE8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for Scene();
      result = sub_23BDF5A30(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_23BE2C28C(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  sub_23BDE652C(a2);
  v4 = sub_23BE32BE8();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_23BE28FE8(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 7;
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_23BE28FE8(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23BE2C38C(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  sub_23BDE652C(a2);
  v4 = sub_23BE32BE8();
  v5 = a1[4];
  v6 = a1[5];
  result = sub_23BE28F2C(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v17 = v6;
    return v4;
  }

  v9 = (a1 + 7);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    *(v4[7] + 8 * result) = v6;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v4[2] = v12;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v13 = v9 + 2;
    v5 = *(v9 - 1);
    v14 = *v9;
    v15 = v6;
    result = sub_23BE28F2C(v5);
    v9 = v13;
    v6 = v14;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23BE2C480(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BDE652C(&qword_27E1C94D0);
    v3 = sub_23BE32BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23BE29154(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23BE2C5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BE2C644(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BE2C698(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BDE652C(&qword_27E1C9518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BE2C708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BE2C750(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_23BDE9D3C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BE2C7A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BE2C80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23BE2C8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23BDE652C(&qword_27E1C7C68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for Scene();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  swift_beginAccess();
  v14 = *(v1 + 24);
  if (*(v14 + 16))
  {
    swift_beginAccess();
    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    sub_23BE12E0C(v14 + v15, v13);
    sub_23BE2DD6C(0, 1);
    swift_endAccess();
    if (!*(*(v2 + 24) + 16))
    {
      v29[0] = *(v2 + 16);

      sub_23BE2D7B0();
      v16 = v29[0];
      swift_beginAccess();
      sub_23BE2CD00(v16);
      swift_endAccess();
      v17 = *(v2 + 24);
      if (*(v17 + 16) >= 2uLL)
      {
        while (1)
        {
          sub_23BE12E0C(v17 + v15, v11);
          if ((sub_23BE326B8() & 1) == 0)
          {
            break;
          }

          swift_beginAccess();
          sub_23BE2D9DC();
          swift_endAccess();
          sub_23BE12CE0(v11);
          v17 = *(v2 + 24);
          if (!*(v17 + 16))
          {
            goto LABEL_23;
          }
        }

        sub_23BE12CE0(v11);
      }
    }

LABEL_23:
    v28 = v13;
    return sub_23BDF5A30(v28, a1);
  }

  if (qword_27E1C7A50 != -1)
  {
    swift_once();
  }

  v18 = sub_23BE327D8();
  sub_23BDEA278(v18, qword_27E1DBEF8);

  v19 = sub_23BE327B8();
  v20 = sub_23BE32A08();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = *(*(v2 + 16) + 16);

    _os_log_impl(&dword_23BDE0000, v19, v20, "ShuffledSceneProvider tried to pop a scene when the shuffled array is already empty! (scene count: %ld)", v21, 0xCu);
    MEMORY[0x23EEBF030](v21, -1, -1);
  }

  else
  {
  }

  v22 = *(v2 + 16);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = sub_23BE2D324(v23);
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *(v22 + 16))
    {
      sub_23BE12E0C(v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, v6);
      v25 = 0;
      goto LABEL_17;
    }

    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_19;
  }

  v25 = 1;
LABEL_17:
  (*(v8 + 56))(v6, v25, 1, v7);
  v22 = *(v8 + 48);
  if ((v22)(v6, 1, v7) != 1)
  {
    v28 = v6;
    return sub_23BDF5A30(v28, a1);
  }

  if (qword_27E1C7A30 != -1)
  {
    goto LABEL_28;
  }

LABEL_19:
  v26 = sub_23BDEA278(v7, qword_27E1DBE98);
  sub_23BE12E0C(v26, a1);
  result = (v22)(v6, 1, v7);
  if (result != 1)
  {
    return sub_23BDE64C4(v6);
  }

  return result;
}

uint64_t sub_23BE2CD00(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_23BE2CF04(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27E1C9560, " Q", type metadata accessor for Scene);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Scene();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23BE2CE50()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

size_t sub_23BE2CF04(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_23BDE652C(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_23BE2D0E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_23BDE652C(&qword_27E1C9570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_23BDE652C(&qword_27E1C93D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23BE2D228(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_23BDE652C(&qword_27E1C9560);
  v4 = *(type metadata accessor for Scene() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
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

unint64_t sub_23BE2D324(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23EEBF040](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23EEBF040](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_23BE2D3B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BDE652C(&qword_27E1C9568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_23BE2D4CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BDE652C(&qword_27E1C9580);
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

size_t sub_23BE2D5D8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_23BDE652C(&qword_27E1C9560);
  v10 = *(type metadata accessor for Scene() - 8);
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
  v15 = *(type metadata accessor for Scene() - 8);
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

uint64_t sub_23BE2D7B0()
{
  v1 = type metadata accessor for Scene();
  v22 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v2);
  v23 = &v19 - v6;
  v21 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v20 = v8 - 2;
    while (1)
    {
      v24 = 0;
      result = MEMORY[0x23EEBF040](&v24, 8);
      v12 = (v24 * v8) >> 64;
      if (v8 > v24 * v8)
      {
        v13 = -v8 % v8;
        if (v13 > v24 * v8)
        {
          do
          {
            v24 = 0;
            result = MEMORY[0x23EEBF040](&v24, 8);
          }

          while (v13 > v24 * v8);
          v12 = (v24 * v8) >> 64;
        }
      }

      v14 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
        break;
      }

      if (v10 != v14)
      {
        v15 = v7[2];
        if (v10 >= v15)
        {
          goto LABEL_19;
        }

        v16 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v17 = *(v22 + 72);
        result = sub_23BE12E0C(v7 + v16 + v17 * v10, v23);
        if (v14 >= v15)
        {
          goto LABEL_20;
        }

        sub_23BE12E0C(v7 + v16 + v17 * v14, v4);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_23BE2DBC4(v7);
          v7 = result;
        }

        if (v10 >= v7[2])
        {
          goto LABEL_21;
        }

        v18 = v7 + v16;
        result = sub_23BE0E648(v4, &v18[v17 * v10]);
        if (v14 >= v7[2])
        {
          goto LABEL_22;
        }

        result = sub_23BE0E648(v23, &v18[v17 * v14]);
        v9 = v20;
        *v21 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_23BE2D9DC()
{
  v1 = type metadata accessor for Scene();
  v19 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(*v0 + 16);
  v7 = v6 - 2;
  if (v6 < 2)
  {
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_21:
    v5 = sub_23BE2DBD8(v5);
  }

  v9 = 0;
  while (1)
  {
    v20 = 0;
    result = MEMORY[0x23EEBF040](&v20, 8);
    v11 = (v20 * v6) >> 64;
    if (v6 > v20 * v6)
    {
      v12 = -v6 % v6;
      if (v12 > v20 * v6)
      {
        do
        {
          v20 = 0;
          result = MEMORY[0x23EEBF040](&v20, 8);
        }

        while (v12 > v20 * v6);
        v11 = (v20 * v6) >> 64;
      }
    }

    v13 = v9 + v11;
    if (__OFADD__(v9, v11))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v9 != v13)
    {
      break;
    }

LABEL_5:
    --v6;
    if (v9++ == v7)
    {
      goto LABEL_16;
    }
  }

  v14 = v5[2];
  if (v9 >= v14)
  {
    goto LABEL_19;
  }

  v15 = v5 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v16 = *(v19 + 72);
  sub_23BE12E0C(&v15[v16 * v9], v4);
  if (v13 >= v14)
  {
    goto LABEL_20;
  }

  result = sub_23BE2DE50(&v15[v16 * v13], &v15[v16 * v9]);
  if (v13 < v5[2])
  {
    result = sub_23BE0E648(v4, &v15[v16 * v13]);
    goto LABEL_5;
  }

  __break(1u);
LABEL_16:
  *v18 = v5;
  return result;
}

unint64_t sub_23BE2DC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Scene();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_23BE2DD6C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_23BE2CF04(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_27E1C9560, " Q", type metadata accessor for Scene);
    *v2 = v4;
  }

  result = sub_23BE2DC24(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_23BE2DE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Scene();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_23BE2DEB4()
{
  result = [objc_allocWithZone(type metadata accessor for SceneTimeOverrideManager()) init];
  qword_27E1DC010 = result;
  return result;
}

id sub_23BE2DF88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneTimeOverrideManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Sprite()
{
  result = qword_27E1C9588;
  if (!qword_27E1C9588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BE2E058()
{
  result = sub_23BE326D8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Timing(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23BE2E10C()
{
  result = qword_27E1C9598;
  if (!qword_27E1C9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9598);
  }

  return result;
}

uint64_t sub_23BE2E160(uint64_t a1)
{
  v2 = sub_23BE306C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE2E19C(uint64_t a1)
{
  v2 = sub_23BE306C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE2E1D8()
{
  v1 = 0x6E6F726665726F66;
  v2 = 0x6E756F726764696DLL;
  if (*v0 != 2)
  {
    v2 = 0x756F72676B636162;
  }

  if (*v0)
  {
    v1 = 0x756F726765726F66;
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

uint64_t sub_23BE2E258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE2FD0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE2E280(uint64_t a1)
{
  v2 = sub_23BE30670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE2E2BC(uint64_t a1)
{
  v2 = sub_23BE30670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE2E2F8(uint64_t a1)
{
  v2 = sub_23BE307C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE2E334(uint64_t a1)
{
  v2 = sub_23BE307C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE2E370(uint64_t a1)
{
  v2 = sub_23BE3076C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE2E3AC(uint64_t a1)
{
  v2 = sub_23BE3076C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE2E3E8(uint64_t a1)
{
  v2 = sub_23BE30718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE2E424(uint64_t a1)
{
  v2 = sub_23BE30718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE2E460()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656E616C70;
  v4 = 0x6E656D6563616C70;
  if (v1 != 3)
  {
    v4 = 0x676E696D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x73616C7461;
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

uint64_t sub_23BE2E4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23BE2FE8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23BE2E510(uint64_t a1)
{
  v2 = sub_23BE2F834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BE2E54C(uint64_t a1)
{
  v2 = sub_23BE2F834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BE2E588(void *a1)
{
  v3 = v1;
  v5 = sub_23BDE652C(&qword_27E1C95E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE2F834();
  sub_23BE32E28();
  v32 = 0;
  sub_23BE326D8();
  sub_23BE2FBA4(&qword_27E1C7D50, MEMORY[0x277CC95F0]);
  sub_23BE32D08();
  if (!v2)
  {
    v9 = type metadata accessor for Sprite();
    v10 = (v3 + v9[5]);
    v11 = v10[2];
    v12 = *v10;
    v13 = *v10;
    v27 = v10[1];
    v28 = v11;
    v26 = v12;
    v29 = *(v10 + 6);
    v22 = v13;
    v23 = v27;
    v24 = v10[2];
    v25 = *(v10 + 6);
    v31 = 1;
    sub_23BDFB698(&v26, v20);
    sub_23BE2FAA8();
    sub_23BE32D08();
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v21 = v25;
    sub_23BDFB6D0(v20);
    LOBYTE(v18[0]) = *(v3 + v9[6]);
    v30 = 2;
    sub_23BE2FAFC();
    sub_23BE32D08();
    v14 = v3 + v9[7];
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    v18[0] = *v14;
    v18[1] = v16;
    v19 = v15;
    v30 = 3;
    sub_23BE2FB50();
    sub_23BE32D08();
    LOBYTE(v18[0]) = 4;
    type metadata accessor for Timing(0);
    sub_23BE2FBA4(&qword_27E1C9608, type metadata accessor for Timing);
    sub_23BE32D08();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23BE2E908()
{
  sub_23BE32DC8();
  sub_23BE326D8();
  sub_23BE2FBA4(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  v1 = type metadata accessor for Sprite();
  sub_23BDFAA08();
  MEMORY[0x23EEBE630](*(v0 + *(v1 + 24)));
  sub_23BE18070();
  v2 = v0 + *(v1 + 32);
  sub_23BE32878();
  v3 = type metadata accessor for Timing(0);
  MEMORY[0x23EEBE630](*(v2 + v3[5]));
  MEMORY[0x23EEBE630](*(v2 + v3[6]));
  MEMORY[0x23EEBE630](*(v2 + v3[7]));
  return sub_23BE32E08();
}

uint64_t sub_23BE2EA78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for Timing(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BE326D8();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BDE652C(&qword_27E1C95B8);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v34 = type metadata accessor for Sprite();
  MEMORY[0x28223BE20](v34);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BE326C8();
  v14 = a1[3];
  v35 = a1;
  sub_23BDE9BF0(a1, v14);
  sub_23BE2F834();
  v32 = v11;
  v15 = v33;
  sub_23BE32E18();
  if (v15)
  {
    v16 = v6;
    v17 = v36;
    sub_23BDE6478(v35);
    return (*(v17 + 8))(v13, v16);
  }

  else
  {
    v33 = v5;
    LOBYTE(v40) = 0;
    sub_23BE2FBA4(&qword_27E1C7CF0, MEMORY[0x277CC95F0]);
    sub_23BE32C88();
    v19 = v13;
    (*(v36 + 40))(v13, v8, v6);
    v45 = 1;
    sub_23BE2F888();
    sub_23BE32C88();
    v20 = v34;
    v21 = &v13[*(v34 + 20)];
    v22 = v41;
    *v21 = v40;
    *(v21 + 1) = v22;
    *(v21 + 2) = v42;
    *(v21 + 6) = v43;
    v44 = 2;
    sub_23BE2F8DC();
    sub_23BE32C88();
    v23 = v30;
    v19[v20[6]] = v37;
    v44 = 3;
    sub_23BE2F930();
    sub_23BE32C88();
    v24 = v39;
    v25 = &v19[v20[7]];
    v26 = v38;
    *v25 = v37;
    *(v25 + 1) = v26;
    *(v25 + 4) = v24;
    LOBYTE(v37) = 4;
    sub_23BE2FBA4(&qword_27E1C95E0, type metadata accessor for Timing);
    v27 = v19;
    v28 = v33;
    sub_23BE32C88();
    (*(v23 + 8))(v32, v31);
    sub_23BE2F984(v28, v27 + v20[8]);
    sub_23BE2F9E8(v27, v29);
    sub_23BDE6478(v35);
    return sub_23BE2FA4C(v27);
  }
}

uint64_t sub_23BE2EFC8(void *a1, int a2)
{
  v29 = a2;
  v3 = sub_23BDE652C(&qword_27E1C9660);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = sub_23BDE652C(&qword_27E1C9668);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = sub_23BDE652C(&qword_27E1C9670);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = sub_23BDE652C(&qword_27E1C9678);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = sub_23BDE652C(&qword_27E1C9680);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  sub_23BDE9BF0(a1, a1[3]);
  sub_23BE30670();
  sub_23BE32E28();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_23BE30718();
      v9 = v23;
      sub_23BE32CA8();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_23BE306C4();
      v9 = v26;
      sub_23BE32CA8();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_23BE3076C();
    sub_23BE32CA8();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_23BE307C0();
  sub_23BE32CA8();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_23BE2F43C(uint64_t a1, uint64_t a2)
{
  sub_23BE326D8();
  sub_23BE2FBA4(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  sub_23BDFAA08();
  MEMORY[0x23EEBE630](*(v2 + *(a2 + 24)));
  sub_23BE18070();
  v4 = v2 + *(a2 + 32);
  sub_23BE32878();
  v5 = type metadata accessor for Timing(0);
  MEMORY[0x23EEBE630](*(v4 + v5[5]));
  MEMORY[0x23EEBE630](*(v4 + v5[6]));
  return MEMORY[0x23EEBE630](*(v4 + v5[7]));
}

uint64_t sub_23BE2F580(uint64_t a1, uint64_t a2)
{
  sub_23BE32DC8();
  sub_23BE326D8();
  sub_23BE2FBA4(&qword_27E1C7CD8, MEMORY[0x277CC95F0]);
  sub_23BE32878();
  sub_23BDFAA08();
  MEMORY[0x23EEBE630](*(v2 + *(a2 + 24)));
  sub_23BE18070();
  v4 = v2 + *(a2 + 32);
  sub_23BE32878();
  v5 = type metadata accessor for Timing(0);
  MEMORY[0x23EEBE630](*(v4 + v5[5]));
  MEMORY[0x23EEBE630](*(v4 + v5[6]));
  MEMORY[0x23EEBE630](*(v4 + v5[7]));
  return sub_23BE32E08();
}

void *sub_23BE2F6F4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BE30030(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_23BE2F740()
{
  result = qword_27E1C95A0;
  if (!qword_27E1C95A0)
  {
    sub_23BDE9D3C(&qword_27E1C95A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C95A0);
  }

  return result;
}

unint64_t sub_23BE2F834()
{
  result = qword_27E1C95C0;
  if (!qword_27E1C95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C95C0);
  }

  return result;
}

unint64_t sub_23BE2F888()
{
  result = qword_27E1C95C8;
  if (!qword_27E1C95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C95C8);
  }

  return result;
}

unint64_t sub_23BE2F8DC()
{
  result = qword_27E1C95D0;
  if (!qword_27E1C95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C95D0);
  }

  return result;
}

unint64_t sub_23BE2F930()
{
  result = qword_27E1C95D8;
  if (!qword_27E1C95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C95D8);
  }

  return result;
}

uint64_t sub_23BE2F984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timing(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BE2F9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sprite();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BE2FA4C(uint64_t a1)
{
  v2 = type metadata accessor for Sprite();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BE2FAA8()
{
  result = qword_27E1C95F0;
  if (!qword_27E1C95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C95F0);
  }

  return result;
}

unint64_t sub_23BE2FAFC()
{
  result = qword_27E1C95F8;
  if (!qword_27E1C95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C95F8);
  }

  return result;
}

unint64_t sub_23BE2FB50()
{
  result = qword_27E1C9600;
  if (!qword_27E1C9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9600);
  }

  return result;
}

uint64_t sub_23BE2FBA4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_23BE2FBEC(uint64_t a1, uint64_t a2)
{
  if ((sub_23BE326B8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Sprite();
  v5 = a1 + v4[5];
  v6 = *(v5 + 32);
  v19[1] = *(v5 + 16);
  v19[2] = v6;
  v20 = *(v5 + 48);
  v19[0] = *v5;
  v7 = a2 + v4[5];
  v22 = *(v7 + 48);
  v8 = *(v7 + 32);
  v21[1] = *(v7 + 16);
  v21[2] = v8;
  v21[0] = *v7;
  if ((sub_23BDFB1A4(v19, v21) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v9 = a1 + v4[7];
  v16 = *(v9 + 32);
  v10 = *(v9 + 16);
  v15[0] = *v9;
  v15[1] = v10;
  v11 = a2 + v4[7];
  v18 = *(v11 + 32);
  v12 = *(v11 + 16);
  v17[0] = *v11;
  v17[1] = v12;
  if ((sub_23BE1AD28(v15, v17) & 1) == 0)
  {
    return 0;
  }

  v13 = v4[8];

  return sub_23BE1569C(a1 + v13, a2 + v13);
}

uint64_t sub_23BE2FD0C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F726665726F66 && a2 == 0xE900000000000074 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F726764696DLL && a2 == 0xE900000000000064 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 3;
  }

  else
  {
    v5 = sub_23BE32D48();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23BE2FE8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23BE32D48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73616C7461 && a2 == 0xE500000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E616C70 && a2 == 0xE500000000000000 || (sub_23BE32D48() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_23BE32D48() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696D6974 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_23BE32D48();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *sub_23BE30030(void *a1)
{
  v39 = sub_23BDE652C(&qword_27E1C9610);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = sub_23BDE652C(&qword_27E1C9618);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = sub_23BDE652C(&qword_27E1C9620);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = sub_23BDE652C(&qword_27E1C9628);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_23BDE652C(&qword_27E1C9630);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  sub_23BDE9BF0(a1, v14);
  sub_23BE30670();
  v15 = v43;
  sub_23BE32E18();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_23BE32C98();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_23BE05594();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_23BE3076C();
        v29 = v33;
        sub_23BE32C18();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_23BE307C0();
        v23 = v33;
        sub_23BE32C18();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          sub_23BDE6478(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_23BE30718();
      v28 = v33;
      sub_23BE32C18();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_23BE306C4();
      v30 = v33;
      sub_23BE32C18();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_23BE32B78();
  swift_allocError();
  v11 = v25;
  sub_23BDE652C(&qword_27E1C7E20);
  *v11 = &type metadata for Sprite.Plane;
  sub_23BE32C28();
  sub_23BE32B38();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_23BDE6478(v44);
  return v11;
}

unint64_t sub_23BE30670()
{
  result = qword_27E1C9638;
  if (!qword_27E1C9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9638);
  }

  return result;
}

unint64_t sub_23BE306C4()
{
  result = qword_27E1C9640;
  if (!qword_27E1C9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9640);
  }

  return result;
}

unint64_t sub_23BE30718()
{
  result = qword_27E1C9648;
  if (!qword_27E1C9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9648);
  }

  return result;
}

unint64_t sub_23BE3076C()
{
  result = qword_27E1C9650;
  if (!qword_27E1C9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9650);
  }

  return result;
}

unint64_t sub_23BE307C0()
{
  result = qword_27E1C9658;
  if (!qword_27E1C9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9658);
  }

  return result;
}

unint64_t sub_23BE30878()
{
  result = qword_27E1C9688;
  if (!qword_27E1C9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9688);
  }

  return result;
}

unint64_t sub_23BE308D0()
{
  result = qword_27E1C9690;
  if (!qword_27E1C9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9690);
  }

  return result;
}

unint64_t sub_23BE30928()
{
  result = qword_27E1C9698;
  if (!qword_27E1C9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9698);
  }

  return result;
}

unint64_t sub_23BE30980()
{
  result = qword_27E1C96A0;
  if (!qword_27E1C96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96A0);
  }

  return result;
}

unint64_t sub_23BE309D8()
{
  result = qword_27E1C96A8;
  if (!qword_27E1C96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96A8);
  }

  return result;
}

unint64_t sub_23BE30A30()
{
  result = qword_27E1C96B0;
  if (!qword_27E1C96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96B0);
  }

  return result;
}

unint64_t sub_23BE30A88()
{
  result = qword_27E1C96B8;
  if (!qword_27E1C96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96B8);
  }

  return result;
}

unint64_t sub_23BE30AE0()
{
  result = qword_27E1C96C0;
  if (!qword_27E1C96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96C0);
  }

  return result;
}

unint64_t sub_23BE30B38()
{
  result = qword_27E1C96C8;
  if (!qword_27E1C96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96C8);
  }

  return result;
}

unint64_t sub_23BE30B90()
{
  result = qword_27E1C96D0;
  if (!qword_27E1C96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96D0);
  }

  return result;
}

unint64_t sub_23BE30BE8()
{
  result = qword_27E1C96D8;
  if (!qword_27E1C96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96D8);
  }

  return result;
}

unint64_t sub_23BE30C40()
{
  result = qword_27E1C96E0;
  if (!qword_27E1C96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96E0);
  }

  return result;
}

unint64_t sub_23BE30C98()
{
  result = qword_27E1C96E8;
  if (!qword_27E1C96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96E8);
  }

  return result;
}

unint64_t sub_23BE30CF0()
{
  result = qword_27E1C96F0;
  if (!qword_27E1C96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C96F0);
  }

  return result;
}

id sub_23BE30D44()
{
  result = CLKUIInterpolateBetweenColors();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v1 = result;
  result = CLKUIInterpolateBetweenColors();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  result = CLKUIInterpolateBetweenColors();
  if (result)
  {
    v3 = result;
    v4 = type metadata accessor for ScenePalette();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___NTKEsterbrookScenePalette_background] = v1;
    *&v5[OBJC_IVAR___NTKEsterbrookScenePalette_overlay] = v2;
    *&v5[OBJC_IVAR___NTKEsterbrookScenePalette_secondHand] = v3;
    v6.receiver = v5;
    v6.super_class = v4;
    objc_msgSendSuper2(&v6, sel_init);
    return swift_dynamicCastClassUnconditional();
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_23BE31048(uint64_t a1)
{
  sub_23BE313A0(a1, v5);
  if (v6)
  {
    type metadata accessor for ScenePalette();
    if (swift_dynamicCast())
    {
      if ([*(v1 + OBJC_IVAR___NTKEsterbrookScenePalette_background) isEqual_] && (objc_msgSend(*(v1 + OBJC_IVAR___NTKEsterbrookScenePalette_overlay), sel_isEqual_, *&v4[OBJC_IVAR___NTKEsterbrookScenePalette_overlay]) & 1) != 0)
      {
        v2 = [*(v1 + OBJC_IVAR___NTKEsterbrookScenePalette_secondHand) isEqual_];

        return v2;
      }
    }
  }

  else
  {
    sub_23BE31338(v5);
  }

  return 0;
}

id sub_23BE311D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScenePalette();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BE31308@<X0>(void *a1@<X8>)
{
  result = sub_23BE30D44();
  *a1 = result;
  return result;
}

uint64_t sub_23BE31338(uint64_t a1)
{
  v2 = sub_23BDE652C(&qword_27E1C9710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BE313A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BDE652C(&qword_27E1C9710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BE31420(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x303273656D726548;
  }

  else
  {
    v3 = 0x6F72627265747365;
  }

  if (v2)
  {
    v4 = 0xEA00000000006B6FLL;
  }

  else
  {
    v4 = 0xEA00000000003532;
  }

  if (*a2)
  {
    v5 = 0x303273656D726548;
  }

  else
  {
    v5 = 0x6F72627265747365;
  }

  if (*a2)
  {
    v6 = 0xEA00000000003532;
  }

  else
  {
    v6 = 0xEA00000000006B6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23BE32D48();
  }

  return v8 & 1;
}

uint64_t sub_23BE314D0()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BE3155C()
{
  sub_23BE328F8();
}

uint64_t sub_23BE315D4()
{
  sub_23BE32DC8();
  sub_23BE328F8();

  return sub_23BE32E08();
}

uint64_t sub_23BE3165C@<X0>(char *a1@<X8>)
{
  v2 = sub_23BE32C08();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_23BE316BC(uint64_t *a1@<X8>)
{
  v2 = 0x6F72627265747365;
  if (*v1)
  {
    v2 = 0x303273656D726548;
  }

  v3 = 0xEA00000000006B6FLL;
  if (*v1)
  {
    v3 = 0xEA00000000003532;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23BE31704()
{
  if (*v0)
  {
    return 0x303273656D726548;
  }

  else
  {
    return 0x6F72627265747365;
  }
}

uint64_t type metadata accessor for SpriteAnimationAttributes()
{
  result = qword_27E1C9718;
  if (!qword_27E1C9718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BE317BC()
{
  result = type metadata accessor for Timeline(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23BE3184C()
{
  result = qword_27E1C9728;
  if (!qword_27E1C9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9728);
  }

  return result;
}

void sub_23BE318B0()
{
  v1 = [v0 configuration];
  if (v1)
  {
    v2 = v1;
    [v1 handLength];
    [v2 armLength];
    [v2 pegRadius];
    [v2 pegStrokeWidth];
    [v2 inlayInsetRadius];

    v3 = [v0 configuration];
    if (v3)
    {
      v4 = v3;
      [v3 handWidth];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23BE319C0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v20[9] = *MEMORY[0x277D85DE8];
  v4 = sub_23BE32738();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for TimeAttributes(0) + 20);
  v9 = sub_23BE32698();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a2 + v8, a1, v9);
  v19 = 0;
  v20[0] = 0;
  v18 = 0;
  v11 = sub_23BE32678();
  v12 = [objc_opt_self() autoupdatingCurrentCalendar];
  sub_23BE326F8();

  v13 = sub_23BE326E8();
  (*(v5 + 8))(v7, v4);
  MEMORY[0x23EEBE860](v20, &v19, &v18, v11, v13);

  sub_23BDE652C(&qword_27E1C9738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23BE38690;
  *(inited + 32) = 0;
  v15 = v19;
  *(inited + 40) = v20[0];
  *(inited + 48) = 1;
  *(inited + 56) = v15;
  v16 = sub_23BE2BFE8(inited);
  swift_setDeallocating();
  result = (*(v10 + 8))(a1, v9);
  *a2 = v16;
  return result;
}

uint64_t *sub_23BE31C08@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_23BE31C24()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x657A696C61656469;
  }

  if (v1 == 2)
  {
    return 0x6D756974697274;
  }

  if (v1 == 1)
  {
    return 1702259052;
  }

  result = sub_23BE32D58();
  __break(1u);
  return result;
}

unint64_t sub_23BE31CB8()
{
  result = qword_27E1C9730;
  if (!qword_27E1C9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9730);
  }

  return result;
}

void sub_23BE31D64()
{
  sub_23BE31DE8();
  if (v0 <= 0x3F)
  {
    sub_23BE32698();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23BE31DE8()
{
  if (!qword_27E1C9750)
  {
    sub_23BE31E4C();
    v0 = sub_23BE32858();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C9750);
    }
  }
}

unint64_t sub_23BE31E4C()
{
  result = qword_27E1C9758;
  if (!qword_27E1C9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9758);
  }

  return result;
}

void sub_23BE31EE8()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_23BE31F9C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TimeAttributes(319);
      if (v2 <= 0x3F)
      {
        sub_23BE31FEC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23BE31F9C()
{
  if (!qword_27E1C9770)
  {
    v0 = sub_23BE32A98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C9770);
    }
  }
}

void sub_23BE31FEC()
{
  if (!qword_27E1C9778)
  {
    type metadata accessor for TimeRule();
    v0 = sub_23BE32A98();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1C9778);
    }
  }
}

uint64_t sub_23BE32064()
{
  if (*v0)
  {
    return 0x646573756170;
  }

  else
  {
    return 0x676E6979616C70;
  }
}

unint64_t sub_23BE320A0()
{
  result = qword_27E1C9780;
  if (!qword_27E1C9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9780);
  }

  return result;
}

uint64_t *sub_23BE320F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_23BE32110()
{
  if (*v0)
  {
    return 6710863;
  }

  else
  {
    return 7229216;
  }
}

uint64_t sub_23BE3219C()
{
  if (*(v0 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_screenState))
  {
    v1 = 6710863;
  }

  else
  {
    v1 = 7229216;
  }

  MEMORY[0x23EEBE160](v1, 0xE300000000000000);

  MEMORY[0x23EEBE160](8236, 0xE200000000000000);
  result = NTKFaceDataModeDescription();
  if (result)
  {
    v3 = result;
    sub_23BE328C8();

    sub_23BE02B40();
    v4 = sub_23BE32AA8();
    v6 = v5;

    MEMORY[0x23EEBE160](v4, v6);

    MEMORY[0x23EEBE160](41, 0xE100000000000000);
    return 40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_23BE322AC(uint64_t a1)
{
  sub_23BE313A0(a1, v5);
  if (v6)
  {
    type metadata accessor for NTKFaceState();
    if (swift_dynamicCast())
    {
      if (*&v4[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_dataMode] == *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_dataMode))
      {
        v2 = *&v4[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_screenState];

        return v2 == *(v1 + OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_screenState);
      }
    }
  }

  else
  {
    sub_23BE31338(v5);
  }

  return 0;
}

id sub_23BE3240C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKFaceState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BE32464(void *a1)
{
  v1 = a1;
  v2 = [v1 dataMode];
  v3 = NTKIsScreenOn() ^ 1;
  v4 = type metadata accessor for NTKFaceState();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_dataMode] = v2;
  *&v5[OBJC_IVAR____TtC32NTKEsterbrookFaceBundleCompanion12NTKFaceState_screenState] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

unint64_t sub_23BE32518()
{
  result = qword_27E1C9798;
  if (!qword_27E1C9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C9798);
  }

  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}