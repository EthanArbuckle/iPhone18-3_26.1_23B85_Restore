uint64_t sub_1B868(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2CC4(&qword_39648, &qword_2D100);
    v1 = sub_2BD90();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    sub_2A5D4(*(a1 + 48) + 40 * v11, v32);
    sub_25098(*(a1 + 56) + 32 * v11, v33 + 8);
    v30[0] = v33[0];
    v30[1] = v33[1];
    v31 = v34;
    v29[0] = v32[0];
    v29[1] = v32[1];
    sub_2A5D4(v29, v26);
    type metadata accessor for Key(0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v12 = v25;
    sub_25098(v30 + 8, v27 + 8);
    sub_2AF20(v29, &qword_39650, &qword_2D108);
    sub_2A5C4((v27 + 8), v24);
    v13 = v12;
    sub_2A5C4(v24, v28);
    sub_2A5C4(v28, v27);
    v14 = v1[5];
    sub_2B9F0();
    sub_2BE40();
    sub_2BA20();
    v15 = sub_2BE60();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v6[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v18];
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*&v6[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v13;
    result = sub_2A5C4(v27, (v1[7] + 32 * v9));
    ++v1[2];
  }

  sub_2AF20(v29, &qword_39650, &qword_2D108);

  return 0;
}

void sub_1BB94(uint64_t a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v7 = sub_25AC(v2, HMLog);
    swift_beginAccess();
    (*(v3 + 16))(v6, v7, v2);
    swift_errorRetain();
    v8 = sub_2B890();
    v9 = sub_2BB60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_0, v8, v9, "Could not run player completion handler %@", v10, 0xCu);
      sub_2AF20(v11, &qword_391A8, &qword_2CDE8);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR___AXHapticMusicServer_currentHapticPlayerStarted] = 0;
    }
  }
}

void sub_1BE0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1BE78()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2B8B0();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2B800();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v31);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 hapticMusicAlgorithmSelections];

  if (!v13 || (v33[0] = 0, sub_2BA90(), v13, (v14 = v33[0]) == 0))
  {

    v14 = &_swiftEmptyArrayStorage;
  }

  v33[0] = sub_2B9F0();
  v33[1] = v15;
  __chkstk_darwin(v33[0]);
  *(&v28 - 2) = v33;
  v16 = sub_24168(sub_2A49C, (&v28 - 4), v14);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (v16)
  {
    v19 = sub_2B9C0();
    v20 = sub_2B9C0();
    v21 = [v18 URLForResource:v19 withExtension:v20];

    if (v21)
    {

      sub_2B7F0();

      sub_18EC8();
      (*(v5 + 8))(v11, v31);
      goto LABEL_9;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v22 = sub_2B9C0();
  v23 = sub_2B9C0();
  v24 = [v18 URLForResource:v22 withExtension:v23];

  if (!v24)
  {
    goto LABEL_18;
  }

  sub_2B7F0();

  sub_18EC8();
  (*(v5 + 8))(v9, v31);
LABEL_9:
  v25 = OBJC_IVAR___AXHapticMusicServer_players;
  swift_beginAccess();
  v26 = *(v1 + v25);
  if (!(v26 >> 62))
  {
    if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)) < 1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v26 < 0)
  {
    v27 = *(v1 + v25);
  }

  if (sub_2BD60() >= 1)
  {
LABEL_11:
    sub_15820(0x7420656C706D6173, 0xEC0000006B636172);
  }
}

uint64_t sub_1C474(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void *a5, uint64_t a6, uint64_t a7, unint64_t a8, char *a9)
{
  v82 = a8;
  v79 = a7;
  v78 = a6;
  v83 = a3;
  v80 = a1;
  v12 = sub_2B8F0();
  v81 = *(v12 - 8);
  v13 = *(v81 + 64);
  __chkstk_darwin(v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2B920();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2B8B0();
  v84 = *(v21 - 8);
  v22 = *(v84 + 64);
  v23 = __chkstk_darwin(v21);
  __chkstk_darwin(v23);
  v26 = &v71 - v25;
  v85 = a4;
  if (a2)
  {
    swift_errorRetain();
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v27 = v21;
    v28 = sub_25AC(v21, HMLog);
    swift_beginAccess();
    v29 = v84;
    (*(v84 + 16))(v26, v28, v27);
    swift_errorRetain();
    v30 = v83;
    v31 = sub_2B890();
    v32 = sub_2BB60();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412546;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v30;
      *v34 = v35;
      v34[1] = v30;
      v36 = v30;
      _os_log_impl(&dword_0, v31, v32, "Error fetching track %@ %@", v33, 0x16u);
      sub_2CC4(&qword_391A8, &qword_2CDE8);
      swift_arrayDestroy();
    }

    (*(v29 + 8))(v26, v27);
    v85(0);
  }

  else
  {
    v38 = v24;
    v39 = v78;
    v73 = v20;
    v74 = v17;
    v75 = v15;
    v76 = v16;
    v77 = v12;
    v83 = a5;
    if (qword_39890 != -1)
    {
      swift_once();
    }

    v40 = v21;
    v41 = sub_25AC(v21, HMLog);
    swift_beginAccess();
    v42 = v84;
    v43 = v38;
    (*(v84 + 16))(v38, v41, v40);
    v44 = v39;
    sub_29BF0(v39, v87);
    v45 = v82;

    v46 = sub_2B890();
    v47 = sub_2BB40();
    sub_29C28(v39);

    v48 = os_log_type_enabled(v46, v47);
    v49 = v85;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v87[0] = v72;
      *v50 = 136315394;
      v51 = sub_25E4();
      v53 = sub_20958(v51, v52, v87);

      *(v50 + 4) = v53;
      v45 = v82;
      *(v50 + 12) = 2080;
      v54 = v79;
      *(v50 + 14) = sub_20958(v79, v45, v87);
      _os_log_impl(&dword_0, v46, v47, "fetched haptics %s %s", v50, 0x16u);
      swift_arrayDestroy();

      v49 = v85;

      (*(v42 + 8))(v43, v40);
      v55 = v54;
      v56 = v80;
    }

    else
    {

      (*(v42 + 8))(v38, v40);
      v56 = v80;
      v55 = v79;
    }

    sub_29BF0(v44, v87);

    Current = CFAbsoluteTimeGetCurrent();
    v58 = v44;
    v59 = OBJC_IVAR___AXHapticMusicServer_hapticCache;
    swift_beginAccess();
    v60 = *&a9[v59];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = *&a9[v59];
    *&a9[v59] = 0x8000000000000000;
    sub_2341C(v56, v58, isUniquelyReferenced_nonNull_native, Current);
    sub_29C28(v58);
    *&a9[v59] = aBlock[0];
    swift_endAccess();
    v62 = *&a9[OBJC_IVAR___AXHapticMusicServer_queue];
    v63 = swift_allocObject();
    *(v63 + 16) = v56;
    *(v63 + 24) = v55;
    *(v63 + 32) = v45;
    *(v63 + 40) = v49;
    *(v63 + 48) = v83;
    *(v63 + 56) = a9;
    v64 = *(v58 + 16);
    *(v63 + 64) = *v58;
    *(v63 + 80) = v64;
    *(v63 + 96) = *(v58 + 32);
    *(v63 + 112) = *(v58 + 48);
    aBlock[4] = sub_2B64C;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_361C0;
    v65 = _Block_copy(aBlock);
    sub_29BF0(v58, v87);

    v66 = v62;

    v67 = a9;
    v68 = v73;
    sub_2B900();
    v87[0] = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    v69 = v75;
    v70 = v77;
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v65);

    (*(v81 + 8))(v69, v70);
    (*(v74 + 8))(v68, v76);
  }
}

void sub_1CD34(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2ACCC(0, &qword_395D0, SHHaptic_ptr);
  v6 = sub_2BAA0();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t a5, _BYTE *a6, uint64_t a7)
{
  v74 = a6;
  v76 = a5;
  v77 = a4;
  v75 = a2;
  isEscapingClosureAtFileLocation = sub_2B8B0();
  v11 = *(isEscapingClosureAtFileLocation - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(isEscapingClosureAtFileLocation);
  v15 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v67[-v16];
  if (qword_39890 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v18 = sub_25AC(isEscapingClosureAtFileLocation, HMLog);
    swift_beginAccess();
    v19 = v11[2];
    v73 = v18;
    v72 = v11 + 2;
    v71 = v19;
    v19(v17, v18, isEscapingClosureAtFileLocation);

    v20 = sub_2B890();
    v21 = sub_2BB40();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v70 = a7;
      v23 = v22;
      v69 = swift_slowAlloc();
      v80[0] = v69;
      *v23 = 136315394;
      sub_2ACCC(0, &qword_395D0, SHHaptic_ptr);
      v24 = sub_2BAB0();
      v26 = sub_20958(v24, v25, v80);
      v68 = v21;
      v27 = a3;
      v28 = v26;

      *(v23 + 4) = v28;
      a3 = v27;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_20958(v75, v27, v80);
      _os_log_impl(&dword_0, v20, v68, "Fetched items: %s %s", v23, 0x16u);
      swift_arrayDestroy();

      a7 = v70;
    }

    v29 = v11[1];
    v29(v17, isEscapingClosureAtFileLocation);
    if (a1 >> 62)
    {
      break;
    }

    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      return v77(0);
    }

LABEL_6:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v30 = sub_2BD00();
    }

    else
    {
      if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_30;
      }

      v30 = *(a1 + 32);
    }

    a1 = v30;
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v80[0] = 0;
    v31 = [a1 tracksWithError:v80];
    v32 = v80[0];
    if (v31)
    {
      v33 = v31;
      sub_2ACCC(0, &qword_395C8, SHHapticTrack_ptr);
      v34 = sub_2BAA0();
      v35 = v32;

      v36 = [a1 associatedSpatialTrackInformation];
      v37 = a3;
      v38 = v36;
      v17 = v74;
      sub_19390(v75, v37, v34, v36, v77, v76);

      if (!(v34 >> 62))
      {
        v39 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
LABEL_12:

        *(v20 + 16) = v39 > 0;
        goto LABEL_17;
      }

LABEL_30:
      v39 = sub_2BD60();
      goto LABEL_12;
    }

    v40 = isEscapingClosureAtFileLocation;
    v41 = v80[0];
    sub_2B7D0();

    v42 = v40;
    swift_willThrow();
    v71(v15, v73, v40);
    sub_29BF0(a7, v80);
    v75 = a1;
    v43 = a1;
    swift_errorRetain();
    v44 = sub_2B890();
    v45 = sub_2BB70();
    sub_29C28(a7);

    LODWORD(v73) = v45;
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v72 = v11;
      v47 = v46;
      v48 = swift_slowAlloc();
      v69 = v44;
      v49 = a7;
      v50 = v48;
      v51 = swift_slowAlloc();
      v80[0] = v51;
      *v47 = 136315650;
      v52 = sub_25E4();
      v71 = v42;
      v54 = sub_20958(v52, v53, v80);
      v70 = v15;
      v55 = v54;

      *(v47 + 4) = v55;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v43;
      *v50 = v43;
      *(v47 + 22) = 2112;
      v56 = v43;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 24) = v57;
      v50[1] = v57;
      v58 = v69;
      _os_log_impl(&dword_0, v69, v73, "Couldn't load tracks: %s %@ %@", v47, 0x20u);
      sub_2CC4(&qword_391A8, &qword_2CDE8);
      swift_arrayDestroy();
      a7 = v49;

      sub_2566C(v51);

      v59 = v70;
      v60 = v71;
    }

    else
    {

      v59 = v15;
      v60 = v42;
    }

    v29(v59, v60);
    v77(0);

    v17 = v74;
    a1 = v75;
LABEL_17:
    v61 = *&v17[OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue];
    v15 = swift_allocObject();
    *(v15 + 2) = v17;
    v62 = *(a7 + 16);
    *(v15 + 24) = *a7;
    *(v15 + 40) = v62;
    *(v15 + 56) = *(a7 + 32);
    *(v15 + 9) = *(a7 + 48);
    *(v15 + 10) = v20;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_2A548;
    *(a3 + 24) = v15;
    aBlock[4] = sub_2B658;
    v79 = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1449C;
    aBlock[3] = &unk_35F40;
    v63 = _Block_copy(aBlock);
    v11 = v79;
    v64 = v61;
    v65 = v17;
    sub_29BF0(a7, v80);

    dispatch_sync(v64, v63);

    _Block_release(v63);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  if (a1 < 0)
  {
    v17 = a1;
  }

  else
  {
    v17 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  if (sub_2BD60())
  {
    result = sub_2BD60();
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  return v77(0);
}

void sub_1D668(char *a1, uint64_t a2, uint64_t a3)
{
  v52 = sub_2B8F0();
  v51 = *(v52 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin(v52);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2B920();
  v48 = *(v50 - 8);
  v8 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2B8B0();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  swift_beginAccess();
  v15 = *&a1[v14];
  v16 = *(v15 + 16);
  v46 = v10;
  if (v16 && (v17 = sub_20F00(a2), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    v20 = v19;
  }

  else
  {
    v19 = 0;
  }

  swift_endAccess();
  swift_beginAccess();
  v21 = [objc_allocWithZone(NSNumber) initWithBool:*(a3 + 16)];
  v22 = v21;
  if (v19)
  {
    if (v21)
    {
      sub_2ACCC(0, &qword_39148, NSNumber_ptr);
      v23 = sub_2BC60();

      if (v23)
      {
        return;
      }

      goto LABEL_13;
    }

    v22 = v19;
  }

  else if (!v21)
  {
    return;
  }

LABEL_13:
  swift_beginAccess();
  v24 = *(a3 + 16);
  v25 = objc_allocWithZone(NSNumber);
  sub_29BF0(a2, v54);
  v26 = [v25 initWithBool:v24];
  swift_beginAccess();
  sub_339C(v26, a2);
  swift_endAccess();
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v27 = v46;
  v28 = sub_25AC(v46, HMLog);
  swift_beginAccess();
  v29 = v45;
  (*(v45 + 16))(v13, v28, v27);
  sub_29BF0(a2, v54);

  v30 = sub_2B890();
  v31 = sub_2BB40();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109376;
    swift_beginAccess();
    *(v32 + 4) = *(a3 + 16);

    *(v32 + 8) = 2048;
    *(v32 + 10) = *a2;
    sub_29C28(a2);
    _os_log_impl(&dword_0, v30, v31, "Storing cache value %{BOOL}d, for %lld  ", v32, 0x12u);
  }

  else
  {
    sub_29C28(a2);
  }

  (*(v29 + 8))(v13, v27);
  v33 = *&a1[OBJC_IVAR___AXHapticMusicServer_ahapAvailableQueue];
  v34 = swift_allocObject();
  v35 = *(a2 + 16);
  *(v34 + 24) = *a2;
  *(v34 + 16) = a1;
  *(v34 + 40) = v35;
  *(v34 + 56) = *(a2 + 32);
  *(v34 + 72) = *(a2 + 48);
  aBlock[4] = sub_2A684;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_35FB8;
  v36 = _Block_copy(aBlock);
  sub_29BF0(a2, v54);
  v37 = v33;
  v38 = a1;
  v39 = v47;
  sub_2B900();
  v54[0] = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
  v40 = v49;
  v41 = v52;
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v36);

  (*(v51 + 8))(v40, v41);
  (*(v48 + 8))(v39, v50);

  swift_beginAccess();
  LODWORD(v39) = *(a3 + 16);
  v42 = objc_opt_self();
  v43 = [v42 sharedInstance];
  LODWORD(v41) = [v43 hapticMusicTrackAvailable];

  if (v39 != v41)
  {
    v44 = [v42 sharedInstance];
    swift_beginAccess();
    [v44 setHapticMusicTrackAvailable:*(a3 + 16)];

    sub_2B980();
    sub_2B970();
    sub_2B960();
  }
}

uint64_t sub_1DDE8(void *a1, uint64_t a2)
{
  v4 = sub_2CC4(&qword_39140, &qword_2CD98);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14[-v6 - 8];
  v8 = sub_2BB10();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a1;
  v10 = *(a2 + 16);
  *(v9 + 40) = *a2;
  *(v9 + 56) = v10;
  *(v9 + 72) = *(a2 + 32);
  *(v9 + 88) = *(a2 + 48);
  v11 = a1;
  sub_29BF0(a2, v14);
  sub_C560(0, 0, v7, &unk_2D120, v9);
}

uint64_t sub_1DF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = sub_2B8F0();
  v5[32] = v6;
  v7 = *(v6 - 8);
  v5[33] = v7;
  v8 = *(v7 + 64) + 15;
  v5[34] = swift_task_alloc();
  v9 = sub_2B920();
  v5[35] = v9;
  v10 = *(v9 - 8);
  v5[36] = v10;
  v11 = *(v10 + 64) + 15;
  v5[37] = swift_task_alloc();
  v12 = sub_2B8B0();
  v5[38] = v12;
  v13 = *(v12 - 8);
  v5[39] = v13;
  v14 = *(v13 + 64) + 15;
  v5[40] = swift_task_alloc();

  return (_swift_task_switch)(sub_1E098, 0, 0);
}

uint64_t sub_1E0C4()
{
  v1 = *(v0 + 328);
  swift_beginAccess();
  *(v0 + 336) = *(v1 + 112);

  return (_swift_task_switch)(sub_1E14C, 0, 0);
}

uint64_t sub_1E14C()
{
  v76 = v0;
  if (qword_39890 != -1)
  {
LABEL_28:
    swift_once();
  }

  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[31];
  v6 = sub_25AC(v4, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v2, v6, v4);

  sub_29BF0(v5, (v0 + 2));
  v7 = sub_2B890();
  v8 = sub_2BB40();
  sub_29C28(v5);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[42];
    v10 = v0[39];
    v73 = v0[40];
    v11 = v0[38];
    v12 = v0[31];
    v13 = swift_slowAlloc();
    v75[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = sub_25E4();
    v16 = sub_20958(v14, v15, v75);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = sub_2B9B0();
    v19 = sub_20958(v17, v18, v75);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_0, v7, v8, "Notifying clients of haptic availability change: %s %s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v73, v11);
  }

  else
  {
    v21 = v0[39];
    v20 = v0[40];
    v22 = v0[38];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[31];
  if (*v23)
  {
    v0[28] = *v23;
    v65 = sub_2BDB0();
    v66 = v24;
    goto LABEL_14;
  }

  v25 = v23[2];
  v65 = v23[1];
  if (!v65 && v25 == 0xE000000000000000)
  {
    v65 = 0;
LABEL_12:
    v66 = 0xE000000000000000;
    goto LABEL_14;
  }

  if (sub_2BDC0())
  {
    v65 = 0;
    goto LABEL_12;
  }

  v66 = v25;

LABEL_14:
  v26 = 0;
  v27 = v0[42];
  v28 = *(v27 + 64);
  v59 = v27 + 64;
  v29 = -1;
  v64 = v0[42];
  v30 = -1 << *(v64 + 32);
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  v31 = v29 & v28;
  v62 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableQueue;
  v63 = v0[30];
  v58 = (63 - v30) >> 6;
  v61 = (v0[33] + 8);
  v60 = (v0[36] + 8);
  if ((v29 & v28) != 0)
  {
    while (1)
    {
      v32 = v26;
LABEL_22:
      v70 = v0[37];
      v71 = v0[34];
      v33 = v0[31];
      v72 = v0[32];
      v74 = v0[35];
      v34 = v0[30];
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v35 | (v32 << 6);
      v37 = (*(v64 + 48) + 16 * v36);
      v38 = *v37;
      v39 = v37[1];
      v40 = (*(v64 + 56) + 24 * v36);
      v41 = *v40;
      v42 = v40[1];
      v43 = v40[2];
      v67 = *(v63 + v62);
      v44 = swift_allocObject();
      *(v44 + 16) = v34;
      *(v44 + 24) = v65;
      *(v44 + 32) = v66;
      v46 = *(v33 + 16);
      v45 = *(v33 + 32);
      v47 = *(v33 + 48);
      *(v44 + 40) = *v33;
      *(v44 + 72) = v45;
      *(v44 + 56) = v46;
      *(v44 + 88) = v47;
      *(v44 + 96) = v38;
      *(v44 + 104) = v39;
      *(v44 + 112) = v41;
      *(v44 + 120) = v42;
      *(v44 + 128) = v43;
      v0[20] = sub_2A7F0;
      v0[21] = v44;
      v0[16] = _NSConcreteStackBlock;
      v0[17] = 1107296256;
      v0[18] = sub_2B614;
      v0[19] = &unk_36030;
      v69 = _Block_copy(v0 + 16);
      v48 = v43;

      sub_29BF0(v33, (v0 + 9));

      v68 = v48;
      v49 = v67;
      v50 = v34;

      sub_2B900();
      v0[29] = &_swiftEmptyArrayStorage;
      sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
      sub_2CC4(&qword_39168, &qword_2CDD0);
      sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
      sub_2BC80();
      sub_2BBE0();
      _Block_release(v69);

      (*v61)(v71, v72);
      (*v60)(v70, v74);
      v51 = v0[21];

      if (!v31)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
LABEL_18:
    v32 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v32 >= v58)
    {
      break;
    }

    v31 = *(v59 + 8 * v32);
    ++v26;
    if (v31)
    {
      v26 = v32;
      goto LABEL_22;
    }
  }

  v52 = v0[42];
  v53 = v0[40];
  v54 = v0[37];
  v55 = v0[34];

  v56 = v0[1];

  return v56();
}

Swift::Void __swiftcall AXHapticMusicServer.updateSiriStatus()()
{
  v1 = v0;
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___AXHapticMusicServer_siriActivationSource;
  v8 = *&v1[OBJC_IVAR___AXHapticMusicServer_siriActivationSource];
  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = [v8 isEnabled];
  if (v9)
  {
    v10 = *&v1[v7];
    if (v10)
    {
      LOBYTE(v9) = [v10 isActive];
      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    return;
  }

LABEL_5:
  v11 = OBJC_IVAR___AXHapticMusicServer_siriActive;
  v1[OBJC_IVAR___AXHapticMusicServer_siriActive] = v9;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v12 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v6, v12, v2);
  v13 = v1;
  v14 = sub_2B890();
  v15 = sub_2BB40();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v1[v11];

    _os_log_impl(&dword_0, v14, v15, "Update siri status to: %{BOOL}d", v16, 8u);
  }

  else
  {

    v14 = v13;
  }

  (*(v3 + 8))(v6, v2);
  sub_4760(0x7320657461647075, 0xEB00000000697269);
}

Swift::Void __swiftcall AXHapticMusicServer.canActivateChanged(to:)(Swift::Bool to)
{
  v3 = sub_2B8F0();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2B920();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR___AXHapticMusicServer_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = to;
  *(v12 + 24) = v1;
  aBlock[4] = sub_256F0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2B614;
  aBlock[3] = &unk_34FA0;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v1;
  sub_2B900();
  v19 = &_swiftEmptyArrayStorage;
  sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
  sub_2CC4(&qword_39168, &qword_2CDD0);
  sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
  sub_2BC80();
  sub_2BBE0();
  _Block_release(v13);

  (*(v18 + 8))(v6, v3);
  (*(v7 + 8))(v10, v17);
}

void sub_1ED1C(char a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v7 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2B890();
  v9 = sub_2BB40();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v8, v9, "Siri can activate change to: %{BOOL}d", v10, 8u);
  }

  (*(v3 + 8))(v6, v2);
  AXHapticMusicServer.updateSiriStatus()();
}

id AXHapticMusicServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t AXHapticMusicError.description.getter(uint64_t a1, void *a2)
{
  sub_2BCF0(22);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_2BA40(v5);
  return 0xD000000000000014;
}

unint64_t sub_1F1F0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2BCF0(22);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_2BA40(v4);
  return 0xD000000000000014;
}

id HapticMusicSiriActionSource.init(delegate:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC19AXHapticMusicServer27HapticMusicSiriActionSource_hmDelegate] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HapticMusicSiriActionSource();
  return objc_msgSendSuper2(&v4, "initWithDelegate:", a1);
}

Swift::Void __swiftcall HapticMusicSiriActionSource.activeChangedTo(value:)(NSNumber value)
{
  v2 = v1;
  v4 = sub_2B8B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v9 = sub_25AC(v4, HMLog);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = value.super.super.isa;
  v11 = sub_2B890();
  v12 = sub_2BB70();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_0, v11, v12, "Siri active changed to: %@", v13, 0xCu);
    sub_2AF20(v14, &qword_391A8, &qword_2CDE8);
  }

  (*(v5 + 8))(v8, v4);
  if (*(v2 + OBJC_IVAR____TtC19AXHapticMusicServer27HapticMusicSiriActionSource_hmDelegate))
  {
    type metadata accessor for AXHapticMusicServer();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      AXHapticMusicServer.updateSiriStatus()();
      swift_unknownObjectRelease();
    }
  }
}

id HapticMusicSiriActionSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HapticMusicSiriActionSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HapticMusicSiriActionSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1F6AC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_2B9C0();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_2B7D0();

    swift_willThrow();
  }

  return v6;
}

id sub_1F788()
{
  type metadata accessor for Key(0);
  sub_254AC(&qword_395C0, type metadata accessor for Key);
  isa = sub_2B990().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_2B7D0();

    swift_willThrow();
  }

  return v2;
}

void *sub_1F8AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1F8E8(uint64_t a1, id *a2)
{
  result = sub_2B9D0();
  *a2 = 0;
  return result;
}

uint64_t sub_1F960(uint64_t a1, id *a2)
{
  v3 = sub_2B9E0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1F9E0@<X0>(void *a1@<X8>)
{
  sub_2B9F0();
  v2 = sub_2B9C0();

  *a1 = v2;
  return result;
}

uint64_t sub_1FA2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2B9F0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1FA58(uint64_t a1)
{
  v2 = sub_254AC(&qword_397A0, type metadata accessor for Name);
  v3 = sub_254AC(&qword_397A8, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1FB14(uint64_t a1)
{
  v2 = sub_254AC(&qword_396A8, type metadata accessor for SHMediaItemProperty);
  v3 = sub_254AC(&qword_39798, type metadata accessor for SHMediaItemProperty);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1FBD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2B9C0();

  *a2 = v5;
  return result;
}

uint64_t sub_1FC18(uint64_t a1)
{
  v2 = sub_254AC(&qword_395C0, type metadata accessor for Key);
  v3 = sub_254AC(&qword_39790, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1FCD4()
{
  v1 = *v0;
  sub_2B9F0();
  v2 = sub_2BA60();

  return v2;
}

uint64_t sub_1FD10()
{
  v1 = *v0;
  sub_2B9F0();
  sub_2BA20();
}

Swift::Int sub_1FD64()
{
  v1 = *v0;
  sub_2B9F0();
  sub_2BE40();
  sub_2BA20();
  v2 = sub_2BE60();

  return v2;
}

uint64_t sub_1FDD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2B9F0();
  v6 = v5;
  if (v4 == sub_2B9F0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2BDC0();
  }

  return v9 & 1;
}

uint64_t sub_1FE60(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_2BDC0() & 1) == 0)
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

uint64_t sub_1FEF0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1FFE8;

  return v7(a1);
}

uint64_t sub_1FFE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_200E0()
{
  v1 = v0;
  sub_2CC4(&qword_396B8, &qword_2D170);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_25098(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2A5C4(v19, (*(v4 + 56) + 32 * v17));
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

uint64_t sub_20260(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2CC4(&qword_396B8, &qword_2D170);
  v37 = a2;
  result = sub_2BD80();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_2A5C4(v23, v38);
      }

      else
      {
        sub_25098(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_2B9F0();
      sub_2BE40();
      sub_2BA20();
      v26 = sub_2BE60();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_2A5C4(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void sub_20530(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2BC90() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_2B9F0();
      sub_2BE40();
      v12 = v11;
      sub_2BA20();
      v13 = sub_2BE60();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_206F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2B9F0();
      v9 = v8;
      if (v7 == sub_2B9F0() && v9 == v10)
      {
        break;
      }

      v12 = sub_2BDC0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_207FC(void *a1, int64_t a2, char a3)
{
  result = sub_2081C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2081C(void *result, int64_t a2, char a3, void *a4)
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
    sub_2CC4(&qword_39568, &qword_2D0A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3)) | 1;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2ACCC(0, &qword_396B0, SHRange_ptr);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20958(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20A24(v11, 0, 0, 1, a1, a2);
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
    sub_25098(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2566C(v11);
  return v7;
}

unint64_t sub_20A24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20B30(a5, a6);
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
    result = sub_2BD10();
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

char *sub_20B30(uint64_t a1, unint64_t a2)
{
  v4 = sub_20B7C(a1, a2);
  sub_20CAC(&off_34D80);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_20B7C(uint64_t a1, unint64_t a2)
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

  v6 = sub_20D98(v5, 0);
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

  result = sub_2BD10();
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
        v10 = sub_2BA50();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_20D98(v10, 0);
        result = sub_2BCE0();
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

uint64_t sub_20CAC(uint64_t result)
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

  result = sub_20E0C(result, v12, 1, v3);
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

void *sub_20D98(uint64_t a1, uint64_t a2)
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

  sub_2CC4(&qword_396F0, &qword_2D1E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20E0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2CC4(&qword_396F0, &qword_2D1E0);
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

unint64_t sub_20F00(uint64_t *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  sub_2BE40();
  sub_2BE50(v4);
  sub_2BA20();
  sub_2BA20();
  sub_2BA20();
  v11 = sub_2BE60();

  return sub_21120(a1, v11);
}

unint64_t sub_20FC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2BE40();
  sub_2BA20();
  v6 = sub_2BE60();

  return sub_21270(a1, a2, v6);
}

unint64_t sub_2103C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2BCA0(*(v2 + 40));

  return sub_21328(a1, v4);
}

uint64_t sub_21080(uint64_t a1, uint64_t (*a2)(uint64_t, Swift::Int))
{
  v4 = *(v2 + 40);
  sub_2B9F0();
  sub_2BE40();
  sub_2BA20();
  v5 = sub_2BE60();

  return a2(a1, v5);
}

unint64_t sub_21120(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[2];
    v22 = a1[3];
    v23 = a1[1];
    v20 = a1[5];
    v21 = a1[4];
    v19 = a1[6];
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 56 * v5);
      if (*v10 == v7)
      {
        v11 = v10[3];
        v12 = v10[4];
        v13 = v10[5];
        v14 = v10[6];
        v15 = v10[1] == v23 && v10[2] == v8;
        if (v15 || (sub_2BDC0() & 1) != 0)
        {
          v16 = v11 == v22 && v12 == v21;
          if (v16 || (sub_2BDC0() & 1) != 0)
          {
            v17 = v13 == v20 && v14 == v19;
            if (v17 || (sub_2BDC0() & 1) != 0)
            {
              break;
            }
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21270(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2BDC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21328(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_2A5D4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_2BCB0();
      sub_25044(v8);
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

double sub_213F0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2103C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23948();
      v11 = v13;
    }

    sub_25044(*(v11 + 48) + 40 * v8);
    sub_2A5C4((*(v11 + 56) + 32 * v8), a2);
    sub_227B8(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21494(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2CC4(&qword_396E8, &qword_2D1C0);
  v40 = a2;
  result = sub_2BD80();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = v25[1];
      v41 = *v25;
      v42 = *v23;
      v27 = v25[2];
      if ((v40 & 1) == 0)
      {
        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_2BE40();
      sub_2BA20();
      result = sub_2BE60();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v41;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21764(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2CC4(&qword_39640, &qword_2D0F8);
  result = sub_2BD80();
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_2A5C4((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_2A5D4(v24, &v37);
        sub_25098(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_2BCA0(*(v8 + 40));
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
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_2A5C4(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21A1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2CC4(&qword_396E0, &qword_2D1B0);
  v41 = a2;
  result = sub_2BD80();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_2A5D4(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_2BE40();
      sub_2BA20();
      result = sub_2BE60();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21CEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2CC4(&qword_39580, &qword_2D0B8);
  v39 = a2;
  result = sub_2BD80();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_2BE40();
      sub_2BA20();
      result = sub_2BE60();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21F90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2CC4(&qword_39598, &qword_2D0D0);
  v41 = a2;
  result = sub_2BD80();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v5;
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
      v19 = __clz(__rbit64(v13));
      v42 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 56 * v22);
      v46 = *v24;
      v25 = v24[2];
      v45 = v24[1];
      v26 = v24[4];
      v44 = v24[3];
      v27 = v24[6];
      v43 = v24[5];
      v28 = (v23 + 16 * v22);
      v29 = *v28;
      v30 = v28[1];
      if ((v41 & 1) == 0)
      {
      }

      v31 = *(v8 + 40);
      sub_2BE40();
      sub_2BE50(v46);
      sub_2BA20();
      sub_2BA20();
      sub_2BA20();
      result = sub_2BE60();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 56 * v16);
      *v17 = v46;
      v17[1] = v45;
      v17[2] = v25;
      v17[3] = v44;
      v17[4] = v26;
      v17[5] = v43;
      v17[6] = v27;
      v18 = (*(v8 + 56) + 16 * v16);
      *v18 = v29;
      v18[1] = v30;
      ++*(v8 + 16);
      v5 = v40;
      v13 = v42;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_222D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2CC4(&qword_39678, &qword_2D140);
  v39 = a2;
  result = sub_2BD80();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
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
      v40 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 56 * v21);
      v44 = *v23;
      v24 = v23[2];
      v43 = v23[1];
      v25 = v23[4];
      v42 = v23[3];
      v26 = v23[6];
      v41 = v23[5];
      v27 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_2BE40();
      sub_2BE50(v44);
      sub_2BA20();
      sub_2BA20();
      sub_2BA20();
      result = sub_2BE60();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 56 * v16);
      *v17 = v44;
      v17[1] = v43;
      v17[2] = v24;
      v17[3] = v42;
      v17[4] = v25;
      v17[5] = v41;
      v17[6] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v38;
      v13 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v40 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_225FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2BC90() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_2BE40();

      sub_2BA20();
      v14 = sub_2BE60();

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
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
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

uint64_t sub_227B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2BC90() + 1) & ~v5;
    do
    {
      sub_2A5D4(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_2BCA0(*(a2 + 40));
      result = sub_25044(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
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

uint64_t sub_2295C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v33 = a2 + 64;
    v32 = (sub_2BC90() + 1) & ~v5;
    do
    {
      v35 = v3;
      v8 = *(v2 + 40);
      v9 = (*(v2 + 48) + 56 * v6);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v15 = v9[4];
      v14 = v9[5];
      v16 = v7;
      v17 = v9[6];
      sub_2BE40();
      sub_2BE50(v10);

      sub_2BA20();
      sub_2BA20();
      sub_2BA20();
      v18 = sub_2BE60();
      v7 = v16;
      v3 = v35;

      v19 = v18 & v7;
      if (v35 >= v32)
      {
        if (v19 < v32)
        {
          v4 = v33;
          v2 = a2;
        }

        else
        {
          v4 = v33;
          v2 = a2;
          if (v35 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v33;
        v2 = a2;
        if (v19 >= v32 || v35 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = v20 + 56 * v35;
          v22 = (v20 + 56 * v6);
          if (v35 != v6 || v21 >= v22 + 56)
          {
            v23 = *v22;
            v24 = v22[1];
            v25 = v22[2];
            *(v21 + 48) = *(v22 + 6);
            *(v21 + 16) = v24;
            *(v21 + 32) = v25;
            *v21 = v23;
          }

          v26 = *(v2 + 56);
          v27 = (v26 + 16 * v35);
          v28 = (v26 + 16 * v6);
          if (v35 != v6 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(v2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v31;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_22BB4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v33 = a2 + 64;
    v32 = (sub_2BC90() + 1) & ~v5;
    do
    {
      v35 = v3;
      v8 = *(v2 + 40);
      v9 = (*(v2 + 48) + 56 * v6);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v15 = v9[4];
      v14 = v9[5];
      v16 = v7;
      v17 = v9[6];
      sub_2BE40();
      sub_2BE50(v10);

      sub_2BA20();
      sub_2BA20();
      sub_2BA20();
      v18 = sub_2BE60();
      v7 = v16;
      v3 = v35;

      v19 = v18 & v7;
      if (v35 >= v32)
      {
        if (v19 < v32)
        {
          v4 = v33;
          v2 = a2;
        }

        else
        {
          v4 = v33;
          v2 = a2;
          if (v35 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v33;
        v2 = a2;
        if (v19 >= v32 || v35 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = v20 + 56 * v35;
          v22 = (v20 + 56 * v6);
          if (v35 != v6 || v21 >= v22 + 56)
          {
            v23 = *v22;
            v24 = v22[1];
            v25 = v22[2];
            *(v21 + 48) = *(v22 + 6);
            *(v21 + 16) = v24;
            *(v21 + 32) = v25;
            *v21 = v23;
          }

          v26 = *(v2 + 56);
          v27 = (v26 + 8 * v35);
          v28 = (v26 + 8 * v6);
          if (v35 != v6 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(v2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v31;
    ++*(v2 + 36);
  }

  return result;
}

void sub_22E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_20FC4(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_21494(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_20FC4(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_2BDE0();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_237B0();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = v27[1];
    v33 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;

    return;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a4;
  v29[1] = a5;
  v30 = (v26[7] + 24 * v15);
  *v30 = a1;
  v30[1] = a2;
  v30[2] = a3;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

_OWORD *sub_22FC8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2103C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23948();
      goto LABEL_7;
    }

    sub_21764(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_2103C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2A5D4(a2, v22);
      return sub_23734(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_2BDE0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_2566C(v17);

  return sub_2A5C4(a1, v17);
}

uint64_t sub_23114(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20FC4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21A1C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_20FC4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2BDE0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23AEC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_2A888(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_232A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20FC4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21CEC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_20FC4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_2BDE0();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_23CA0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_2341C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20F00(a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_21F90(v16, a3 & 1);
      v20 = *v5;
      v11 = sub_20F00(a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2BDE0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23E0C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v26 = v22[6] + 56 * v11;
    v27 = *a2;
    v28 = *(a2 + 16);
    v29 = *(a2 + 32);
    *(v26 + 48) = *(a2 + 48);
    *(v26 + 16) = v28;
    *(v26 + 32) = v29;
    *v26 = v27;
    v30 = v22[7] + 16 * v11;
    *v30 = a1;
    *(v30 + 8) = a4;
    v31 = v22[2];
    v15 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v15)
    {
      v22[2] = v32;
      return sub_29BF0(a2, v33);
    }

    goto LABEL_15;
  }

  v23 = v22[7] + 16 * v11;
  v24 = *v23;
  *v23 = a1;
  *(v23 + 8) = a4;
}

uint64_t sub_235B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_20F00(a2);
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
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * v9);
      *(v21 + 8 * v9) = a1;

      return _objc_release_x1();
    }

    v20[(v9 >> 6) + 8] |= 1 << v9;
    v23 = v20[6] + 56 * v9;
    v24 = *a2;
    v25 = *(a2 + 16);
    v26 = *(a2 + 32);
    *(v23 + 48) = *(a2 + 48);
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    *v23 = v24;
    *(v20[7] + 8 * v9) = a1;
    v27 = v20[2];
    v13 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v13)
    {
      v20[2] = v28;
      return sub_29BF0(a2, v30);
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = v9;
    sub_23FC4();
    v9 = v17;
    goto LABEL_8;
  }

  sub_222D4(v14, a3 & 1);
  v18 = *v4;
  v9 = sub_20F00(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_2BDE0();
  __break(1u);
  return _objc_release_x1();
}

_OWORD *sub_23734(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2A5C4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_237B0()
{
  v1 = v0;
  sub_2CC4(&qword_396E8, &qword_2D1C0);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v20;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
        v28 = v25;
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

void *sub_23948()
{
  v1 = v0;
  sub_2CC4(&qword_39640, &qword_2D0F8);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v18 = 40 * v17;
        sub_2A5D4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_25098(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2A5C4(v22, (*(v4 + 56) + v17));
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

void *sub_23AEC()
{
  v1 = v0;
  sub_2CC4(&qword_396E0, &qword_2D1B0);
  v2 = *v0;
  v3 = sub_2BD70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_2A5D4(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

id sub_23CA0()
{
  v1 = v0;
  sub_2CC4(&qword_39580, &qword_2D0B8);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_23E0C()
{
  v1 = v0;
  sub_2CC4(&qword_39598, &qword_2D0D0);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v18 = 56 * v17;
        v19 = *(v2 + 48) + 56 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v23 = *(v19 + 32);
        v22 = *(v19 + 40);
        v24 = *(v19 + 48);
        v17 *= 16;
        v25 = (*(v2 + 56) + v17);
        v26 = *v25;
        v27 = v25[1];
        v28 = *(v4 + 48) + v18;
        *v28 = *v19;
        *(v28 + 16) = v20;
        *(v28 + 24) = v21;
        *(v28 + 32) = v23;
        *(v28 + 40) = v22;
        *(v28 + 48) = v24;
        v29 = (*(v4 + 56) + v17);
        *v29 = v26;
        v29[1] = v27;
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

id sub_23FC4()
{
  v1 = v0;
  sub_2CC4(&qword_39678, &qword_2D140);
  v2 = *v0;
  v3 = sub_2BD70();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v24 = *(v20 + 32);
        v23 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = *(*(v2 + 56) + v17);
        v27 = *(v4 + 48) + v19;
        *v27 = *v20;
        *(v27 + 16) = v21;
        *(v27 + 24) = v22;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        *(v27 + 48) = v25;
        *(*(v4 + 56) + v17) = v26;

        result = v26;
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

uint64_t sub_24168(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

size_t sub_24214(size_t a1, int64_t a2, char a3)
{
  result = sub_24234(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24234(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2CC4(&qword_39658, &qword_2D110);
  v10 = *(sub_2B800() - 8);
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
  v15 = *(sub_2B800() - 8);
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

unint64_t sub_2440C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39678, &qword_2D140);
    v3 = sub_2BD90();

    for (i = (a1 + 88); ; i += 8)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v19 = *(i - 7);
      *&v20 = v5;
      *(&v20 + 1) = v6;
      *&v21 = v8;
      *(&v21 + 1) = v7;
      v22 = v9;

      v11 = v10;
      result = sub_20F00(&v19);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 56 * result;
      v15 = v20;
      *v14 = v19;
      *(v14 + 16) = v15;
      *(v14 + 32) = v21;
      *(v14 + 48) = v22;
      *(v3[7] + 8 * result) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_2457C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_396E8, &qword_2D1C0);
    v3 = sub_2BD90();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      v10 = *i;

      result = sub_20FC4(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_2469C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39598, &qword_2D0D0);
    v3 = sub_2BD90();

    for (i = (a1 + 96); ; i += 9)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v8 = *(i - 4);
      v7 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      v20 = *(i - 4);
      *&v21 = v5;
      *(&v21 + 1) = v6;
      *&v22 = v8;
      *(&v22 + 1) = v7;
      v23 = v10;

      result = sub_20F00(&v20);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 56 * result;
      v15 = v21;
      *v14 = v20;
      *(v14 + 16) = v15;
      *(v14 + 32) = v22;
      *(v14 + 48) = v23;
      v16 = (v3[7] + 16 * result);
      *v16 = v9;
      v16[1] = v11;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
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

unint64_t sub_247FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39640, &qword_2D0F8);
    v3 = sub_2BD90();
    v4 = a1 + 32;

    while (1)
    {
      sub_2B0F0(v4, v13, &qword_396F8, &qword_2D1E8);
      result = sub_2103C(v13);
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
      result = sub_2A5C4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39670, &qword_2D138);
    v3 = sub_2BD90();
    v4 = a1 + 32;

    while (1)
    {
      sub_2B0F0(v4, &v13, &qword_39668, &qword_2D130);
      v5 = v13;
      v6 = v14;
      result = sub_20FC4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2A5C4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_396B8, &qword_2D170);
    v3 = sub_2BD90();
    v4 = a1 + 32;

    while (1)
    {
      sub_2B0F0(v4, &v11, &qword_395B0, &qword_2D0E0);
      v5 = v11;
      result = sub_21080(v11, sub_206F8);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2A5C4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_24BA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2CC4(a2, a3);
    v5 = sub_2BD90();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_20FC4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

Swift::Int sub_24CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_39708, &qword_2D1F8);
    v3 = sub_2BCD0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_2A5D4(v6 + 40 * v4, v19);
      result = sub_2BCA0(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_2A5D4(*(v3 + 48) + 40 * i, v18);
        v11 = sub_2BCB0();
        result = sub_25044(v18);
        if (v11)
        {
          sub_25044(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int _s19AXHapticMusicServerAAC48possibleRequiredEntitlementsForProcessingMessage14withIdentifierShys11AnyHashableVGSgSi_tFZ_0(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 4)
  {
    if (a1 != 1)
    {
      if (a1 == 4)
      {
        goto LABEL_8;
      }

      return v1;
    }

LABEL_7:
    sub_2CC4(&qword_39700, &qword_2D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2CD50;
    sub_2BCC0();
    v1 = sub_24CA0(inited);
    swift_setDeallocating();
    sub_25044(inited + 32);
    return v1;
  }

  if (a1 == 5)
  {
LABEL_8:
    sub_2CC4(&qword_39700, &qword_2D1F0);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_2CD60;
    sub_2BCC0();
    sub_2BCC0();
    v1 = sub_24CA0(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    return v1;
  }

  if (a1 == 6)
  {
    goto LABEL_7;
  }

  return v1;
}

uint64_t sub_25098(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_250F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2513C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2B650;

  return sub_DE8C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_251E8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2B650;

  return sub_DCC0(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_252AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_25304()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2B650;

  return sub_D2F8(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_253C8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_25494(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25518()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_25570()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[9];
  v6 = v0[10];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_C46C;

  return sub_C3A0(v8, v9, v10, v11, v2, v3, v4, v5);
}

uint64_t sub_2566C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_256B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_25744(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_257E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_257F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_25854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_258B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_2594C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_259B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25A10()
{
  result = qword_394F8;
  if (!qword_394F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_394F8);
  }

  return result;
}

void sub_25A64()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(type metadata accessor for HapticMusicSiriActionSource()) initWithDelegate:v1];
  v3 = *(v1 + OBJC_IVAR___AXHapticMusicServer_siriActivationSource);
  *(v1 + OBJC_IVAR___AXHapticMusicServer_siriActivationSource) = v2;

  sub_7140();
  sub_4760(0x696C616974696E69, 0xEE006E6F6974617ALL);
}

unint64_t sub_25AD8()
{
  result = qword_39518;
  if (!qword_39518)
  {
    sub_2ACCC(255, &qword_39120, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_39518);
  }

  return result;
}

uint64_t sub_25B40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2D0C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25D2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_25DE8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___AXHapticMusicServer_mediaDomain);
  if (v1)
  {
    v1 = [v1 data];
  }

  v2 = v1;
  sub_432C(v1);
}

void sub_25E50()
{
  v1 = *(v0 + 16);
  sub_35DC();
  sub_4760(0xD000000000000013, 0x800000000002E040);
}

uint64_t sub_25E90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_25F00()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v1 + v2) = &_swiftEmptyDictionarySingleton;
}

uint64_t sub_25F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2CC4(&qword_39540, &qword_2D088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25FE0()
{
  v1 = *(v0 + 16);
  sub_2CC4(&qword_39550, &qword_2D090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CD50;
  *(inited + 32) = 0x6567617355;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v1];
  v3 = sub_24BA4(inited, &qword_39560, &qword_2D0A0);
  swift_setDeallocating();
  sub_2AF20(inited + 32, &qword_39558, &qword_2D098);
  return v3;
}

uint64_t sub_260E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_26124(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_9EE4(a1);
  return 2;
}

uint64_t sub_2614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[52] = a5;
  v6[53] = a6;
  v6[50] = a3;
  v6[51] = a4;
  v6[48] = a1;
  v6[49] = a2;
  v7 = sub_2B8B0();
  v6[54] = v7;
  v8 = *(v7 - 8);
  v6[55] = v8;
  v9 = *(v8 + 64) + 15;
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();

  return (_swift_task_switch)(sub_26220, 0, 0);
}

uint64_t sub_26220()
{
  v44 = v0;
  v1 = v0[50];
  v2 = v0[51];
  v3 = objc_allocWithZone(LSApplicationRecord);

  v4 = sub_1F6AC(v1, v2, 0);
  v0[58] = v4;
  v5 = v0[50];
  v6 = v0[51];
  v8 = v0[48];
  v7 = v0[49];
  v9 = AXApplicationSupportsHapticMusic();
  sub_2CC4(&qword_39660, &qword_2D128);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2CD40;
  *(inited + 32) = 0x6574726F70707573;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = v9;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 1684632949;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v8;
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 168) = &type metadata for String;
  *(inited + 136) = 0x800000000002D950;
  *(inited + 144) = v5;
  *(inited + 152) = v6;

  v11 = sub_24938(inited);
  swift_setDeallocating();
  sub_2CC4(&qword_39668, &qword_2D130);
  swift_arrayDestroy();
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v12 = v0[57];
  v14 = v0[54];
  v13 = v0[55];
  v15 = v0[53];
  v16 = sub_25AC(v14, HMLog);
  v0[59] = v16;
  swift_beginAccess();
  v17 = *(v13 + 16);
  v0[60] = v17;
  v0[61] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v12, v16, v14);

  v18 = sub_2B890();
  v19 = sub_2BB40();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[57];
  v23 = v0[54];
  v22 = v0[55];
  if (v20)
  {
    v42 = v0[57];
    v24 = v0[52];
    v25 = v0[53];
    v26 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_20958(v24, v25, v43);
    *(v26 + 12) = 2080;
    v27 = sub_2B9B0();
    v29 = sub_20958(v27, v28, v43);

    *(v26 + 14) = v29;
    _os_log_impl(&dword_0, v18, v19, "App supported: %s %s", v26, 0x16u);
    swift_arrayDestroy();

    v30 = *(v22 + 8);
    v30(v42, v23);
  }

  else
  {

    v30 = *(v22 + 8);
    v30(v21, v23);
  }

  v0[62] = v30;
  v31 = v0[52];
  v32 = v0[53];
  v33 = sub_2B9C0();
  v34 = [objc_opt_self() clientMessengerWithIdentifier:v33];
  v0[63] = v34;

  if (v34)
  {
    sub_E0D0(v11);

    isa = sub_2B990().super.isa;
    v0[64] = isa;

    v36 = [objc_opt_self() mainAccessQueue];
    v0[65] = v36;
    v0[2] = v0;
    v0[7] = v0 + 46;
    v0[3] = sub_267B0;
    v37 = swift_continuation_init();
    v0[39] = sub_2CC4(&qword_396D0, &qword_2D1A0);
    v0[32] = _NSConcreteStackBlock;
    v0[33] = 1107296256;
    v0[34] = sub_E684;
    v0[35] = &unk_362D8;
    v0[36] = v37;
    [v34 sendAsynchronousMessage:isa withIdentifier:5 targetAccessQueue:v36 completionRequiresWritingBlock:0 completion:v0 + 32];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v39 = v0[56];
    v38 = v0[57];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_267B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 528) = v2;
  if (v2)
  {
    v3 = sub_26954;
  }

  else
  {
    v3 = sub_268C0;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_268C0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 464);

  v4 = *(v0 + 368);

  v6 = *(v0 + 448);
  v5 = *(v0 + 456);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26954()
{
  v36 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  v5 = *(v0 + 480);
  v33 = *(v0 + 488);
  v6 = *(v0 + 472);
  v7 = *(v0 + 448);
  v8 = *(v0 + 432);
  swift_willThrow();

  v5(v7, v6, v8);
  swift_errorRetain();
  v9 = sub_2B890();
  v10 = sub_2BB60();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 528);
    v12 = *(v0 + 464);
    v13 = *(v0 + 440);
    v32 = *(v0 + 448);
    v34 = *(v0 + 496);
    v31 = *(v0 + 432);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = *(v0 + 344);
    v16 = *(v0 + 352);
    v18 = *(v0 + 360);
    v19 = sub_2BDF0();
    v21 = sub_20958(v19, v20, &v35);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_0, v9, v10, "Error sending message: %s", v14, 0xCu);
    sub_2566C(v15);

    v34(v32, v31);
  }

  else
  {
    v22 = *(v0 + 528);
    v23 = *(v0 + 496);
    v25 = *(v0 + 440);
    v24 = *(v0 + 448);
    v26 = *(v0 + 432);

    v23(v24, v26);
  }

  v28 = *(v0 + 448);
  v27 = *(v0 + 456);

  v29 = *(v0 + 8);

  return v29();
}

unint64_t sub_26B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CC4(&qword_396C0, &qword_2D178);
    v3 = sub_2BD90();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_21080(v6, sub_206F8);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_26C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 361) = a5;
  *(v5 + 288) = a3;
  *(v5 + 296) = a4;
  *(v5 + 272) = a1;
  *(v5 + 280) = a2;
  v6 = sub_2B8B0();
  *(v5 + 304) = v6;
  v7 = *(v6 - 8);
  *(v5 + 312) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 320) = swift_task_alloc();

  return (_swift_task_switch)(sub_26D64, 0, 0);
}

uint64_t sub_26D64()
{
  v25 = v0;
  v1 = *(v0 + 296);
  sub_2A5D4(*(v0 + 288), v0 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = &_swiftEmptyDictionarySingleton;
  sub_23114(v0 + 144, 1684632949, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  if (*v1 < 1)
  {
    v6 = *(v0 + 296);
    v3 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    *(v0 + 264) = *v1;
    v3 = sub_2BDB0();
    v5 = v4;
  }

  v8 = *(v0 + 361);
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  *(v0 + 232) = v3;
  *(v0 + 240) = v5;
  sub_2BCC0();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v24 = &_swiftEmptyDictionarySingleton;
  sub_23114(v23, 1701080931, 0xE400000000000000, v11);
  v12 = v24;
  *(v0 + 360) = v8;
  sub_2BCC0();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v24 = v12;
  sub_23114(v23, 0x657669746361, 0xE600000000000000, v13);
  v14 = v24;
  v15 = sub_2B9C0();
  v16 = [objc_opt_self() clientMessengerWithIdentifier:v15];
  *(v0 + 328) = v16;

  if (v16)
  {
    sub_E398(v14);

    isa = sub_2B990().super.isa;
    *(v0 + 336) = isa;

    v18 = [objc_opt_self() mainAccessQueue];
    *(v0 + 344) = v18;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 248;
    *(v0 + 24) = sub_270BC;
    v19 = swift_continuation_init();
    *(v0 + 136) = sub_2CC4(&qword_396D0, &qword_2D1A0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_E684;
    *(v0 + 104) = &unk_36210;
    *(v0 + 112) = v19;
    [v16 sendAsynchronousMessage:isa withIdentifier:3 targetAccessQueue:v18 completionRequiresWritingBlock:0 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v20 = *(v0 + 320);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_270BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = sub_27248;
  }

  else
  {
    v3 = sub_271CC;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_271CC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  v3 = *(v0 + 248);

  v4 = *(v0 + 320);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_27248()
{
  v31 = v0;
  v1 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  swift_willThrow();

  if (qword_39890 != -1)
  {
    swift_once();
  }

  v5 = v0[44];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[38];
  v9 = sub_25AC(v8, HMLog);
  swift_beginAccess();
  (*(v7 + 16))(v6, v9, v8);
  swift_errorRetain();
  v10 = sub_2B890();
  v11 = sub_2BB60();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[44];
  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[38];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v29 = v14;
    v20 = v0[26];
    v19 = v0[27];
    v21 = v0[28];
    v22 = sub_2BDF0();
    v24 = sub_20958(v22, v23, &v30);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_0, v10, v11, "Error sending message: %s", v17, 0xCu);
    sub_2566C(v18);

    (*(v15 + 8))(v29, v16);
  }

  else
  {
    v25 = v0[44];

    (*(v15 + 8))(v14, v16);
  }

  v26 = v0[40];

  v27 = v0[1];

  return v27();
}

void sub_2748C(char *a1, void *a2)
{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR___AXHapticMusicServer_notificationTimer];
    v4 = a1;
    if (v3)
    {
      v10 = v4;
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      *(v5 + 24) = v10;
      aBlock[4] = sub_27920;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2B614;
      aBlock[3] = &unk_35900;
      v6 = _Block_copy(aBlock);
      v7 = a2;
      v8 = v10;
      v9 = v3;

      [v9 afterDelay:v6 processBlock:1.0];

      _Block_release(v6);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_275CC(char *a1)
{
  v2 = sub_2B8F0();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2B920();
  v17 = *(v6 - 8);
  v18 = v6;
  v7 = *(v17 + 64);
  result = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *&a1[OBJC_IVAR___AXHapticMusicServer_queue];
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = a1;
    aBlock[4] = sub_278C4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_35888;
    v14 = _Block_copy(aBlock);
    v15 = v11;
    v16 = v13;
    sub_2B900();
    v20 = &_swiftEmptyArrayStorage;
    sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
    sub_2CC4(&qword_39168, &qword_2CDD0);
    sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
    sub_2BC80();
    sub_2BBE0();
    _Block_release(v14);

    (*(v19 + 8))(v5, v2);
    (*(v17 + 8))(v10, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_278E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_27928()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2BCF0(19);
  v5._countAndFlagsBits = 0x6163696669746F6ELL;
  v5._object = 0xEE00203A6E6F6974;
  sub_2BA40(v5);
  v3 = v2;
  sub_2CC4(&qword_39570, &qword_2D0B0);
  v6._countAndFlagsBits = sub_2BA00();
  sub_2BA40(v6);

  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  sub_2BA40(v7);
  CFAbsoluteTimeGetCurrent();
  sub_2BB20();
  sub_4760(0, 0xE000000000000000);
}

uint64_t sub_27A48()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_27AB4()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

void sub_27AFC(unint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v70 = a3;
  v71 = a2;
  v8 = sub_2B8B0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v80 = &v67 - v14;
  v15 = __chkstk_darwin(v13);
  v72 = &v67 - v16;
  __chkstk_darwin(v15);
  v18 = &v67 - v17;
  if (qword_39890 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v19 = sub_25AC(v8, HMLog);
    swift_beginAccess();
    v20 = v9[2];
    v87 = v19;
    v86 = v9 + 2;
    v85 = v20;
    v20(v18, v19, v8);
    v21 = a1;
    v22 = sub_2B890();
    v23 = sub_2BB40();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = a4;
      v25 = a5;
      v26 = v9;
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = *(&v21->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);

      _os_log_impl(&dword_0, v22, v23, "Handling pause state. Haptic track is playing: %{BOOL}d", v27, 8u);
      v9 = v26;
      a5 = v25;
      a4 = v24;
    }

    else
    {

      v22 = v21;
    }

    v28 = v9[1];
    ++v9;
    v84 = v28;
    v28(v18, v8);
    v29 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v77 = v21;
    a1 = *(&v21->isa + v29);
    v30 = v80;
    v18 = a1 >> 62 ? sub_2BD60() : *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    v31 = v75;
    if (!v18)
    {
      break;
    }

    v68 = a4;
    v69 = a5;
    v79 = OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying;
    v83 = a1 & 0xC000000000000001;
    v76 = a1 & 0xFFFFFFFFFFFFFF8;

    a4 = 0;
    *&v32 = 136315138;
    v73 = v32;
    v33 = v77;
    v74 = v8;
    v82 = a1;
    v81 = v18;
    while (v83)
    {
      a5 = sub_2BD00();
      v34 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        goto LABEL_34;
      }

LABEL_18:
      aBlock[0] = 0;
      v35 = [a5 pauseAtTime:aBlock error:0.0];
      v36 = aBlock[0];
      if (v35)
      {
        *(&v33->isa + v79) = 0;
        v85(v30, v87, v8);
        v37 = v36;
        v38 = sub_2B890();
        v39 = sub_2BB40();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_0, v38, v39, "Haptics Paused", v40, 2u);
          v30 = v80;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v84(v30, v8);
      }

      else
      {
        v41 = aBlock[0];
        sub_2B7D0();

        swift_willThrow();
        v85(v31, v87, v8);
        swift_errorRetain();
        v42 = v31;
        v43 = sub_2B890();
        v44 = sub_2BB60();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          aBlock[0] = v78;
          *v45 = v73;
          swift_getErrorValue();
          v46 = sub_2BDF0();
          v48 = v43;
          v49 = v9;
          v50 = sub_20958(v46, v47, aBlock);

          *(v45 + 4) = v50;
          v9 = v49;
          v51 = v48;
          _os_log_impl(&dword_0, v48, v44, "Failed to pause haptics. %s", v45, 0xCu);
          sub_2566C(v78);
          v33 = v77;

          v8 = v74;

          swift_unknownObjectRelease();

          v31 = v75;
          v84(v75, v8);
        }

        else
        {
          swift_unknownObjectRelease();

          v84(v42, v8);
          v31 = v42;
        }

        v30 = v80;
      }

      v18 = v81;
      ++a4;
      a1 = v82;
      if (v34 == v81)
      {

        a5 = v69;
        a4 = v68;
        goto LABEL_26;
      }
    }

    if (a4 >= *(v76 + 16))
    {
      goto LABEL_35;
    }

    a5 = *(a1 + 8 * a4 + 32);
    swift_unknownObjectRetain();
    v34 = a4 + 1;
    if (!__OFADD__(a4, 1))
    {
      goto LABEL_18;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

LABEL_26:
  v52 = v71;
  sub_97B0();
  *(v52 + OBJC_IVAR___AXHapticMusicServer_pauseShouldCancelEngineStartup) = 0;
  v53 = *(&v77->isa + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);
  v54 = *(&v77[1].isa + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);

  v55 = sub_2BA30();

  if (v55)
  {
    v56 = 20.0;
  }

  else
  {
    v56 = 1.0;
  }

  v57 = v72;
  v85(v72, v87, v8);
  v58 = sub_2B890();
  v59 = sub_2BB40();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    *(v60 + 4) = v56;
    _os_log_impl(&dword_0, v58, v59, "Engine shutdown in %f", v60, 0xCu);
  }

  v84(v57, v8);
  v61 = v77;
  v62 = *(&v77->isa + OBJC_IVAR___AXHapticMusicServer_shutdownTimer);
  if (v62)
  {
    v63 = swift_allocObject();
    v63[2] = v61;
    aBlock[4] = a4;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = a5;
    v64 = _Block_copy(aBlock);
    v65 = v61;
    v66 = v62;

    [v66 afterDelay:v64 processBlock:v56];
    _Block_release(v64);
  }
}

void sub_28404(void *a1, uint64_t a2)
{
  v58[1] = a2;
  v3 = sub_2B8B0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v58 - v10;
  v12 = __chkstk_darwin(v9);
  v59 = v58 - v13;
  __chkstk_darwin(v12);
  v15 = v58 - v14;
  if (qword_39890 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v16 = sub_25AC(v3, HMLog);
    swift_beginAccess();
    v17 = v4[2];
    v74 = v16;
    v73 = v4 + 2;
    v72 = v17;
    v17(v15, v16, v3);
    v18 = a1;
    v19 = sub_2B890();
    v20 = sub_2BB40();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = *(&v18->isa + OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying);

      _os_log_impl(&dword_0, v19, v20, "Handling pause state. Haptic track is playing: %{BOOL}d", v21, 8u);
    }

    else
    {

      v19 = v18;
    }

    v22 = v4[1];
    ++v4;
    v71 = v22;
    v22(v15, v3);
    v23 = OBJC_IVAR___AXHapticMusicServer_players;
    swift_beginAccess();
    v15 = *(&v18->isa + v23);
    if (!(v15 >> 62))
    {
      a1 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      if (!a1)
      {
        break;
      }

      goto LABEL_7;
    }

    a1 = sub_2BD60();
    if (!a1)
    {
      break;
    }

LABEL_7:
    v65 = OBJC_IVAR___AXHapticMusicServer_isHapticTrackPlaying;
    v70 = v15 & 0xC000000000000001;
    v63 = v15 & 0xFFFFFFFFFFFFFF8;

    v24 = 0;
    *&v25 = 136315138;
    v61 = v25;
    v67 = v18;
    v62 = v3;
    v66 = v11;
    v69 = v15;
    v68 = a1;
    v60 = v8;
    while (v70)
    {
      v26 = sub_2BD00();
      v27 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_33;
      }

LABEL_17:
      aBlock[0] = 0;
      v28 = [v26 pauseAtTime:aBlock error:0.0];
      v29 = aBlock[0];
      if (v28)
      {
        *(&v18->isa + v65) = 0;
        v72(v11, v74, v3);
        v30 = v29;
        v31 = sub_2B890();
        v32 = sub_2BB40();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_0, v31, v32, "Haptics Paused", v33, 2u);
          v18 = v67;

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v71(v11, v3);
      }

      else
      {
        v34 = aBlock[0];
        sub_2B7D0();

        swift_willThrow();
        v72(v8, v74, v3);
        swift_errorRetain();
        v35 = v8;
        v36 = sub_2B890();
        v37 = sub_2BB60();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          aBlock[0] = v64;
          *v38 = v61;
          swift_getErrorValue();
          v39 = sub_2BDF0();
          v41 = v36;
          v42 = v4;
          v43 = sub_20958(v39, v40, aBlock);

          *(v38 + 4) = v43;
          v4 = v42;
          v44 = v41;
          _os_log_impl(&dword_0, v41, v37, "Failed to pause haptics. %s", v38, 0xCu);
          sub_2566C(v64);
          v3 = v62;

          v18 = v67;

          swift_unknownObjectRelease();

          v8 = v60;
          v71(v60, v3);
        }

        else
        {
          swift_unknownObjectRelease();

          v71(v35, v3);
          v8 = v35;
        }

        v11 = v66;
      }

      v15 = v69;
      a1 = v68;
      ++v24;
      if (v27 == v68)
      {

        goto LABEL_25;
      }
    }

    if (v24 >= *(v63 + 16))
    {
      goto LABEL_34;
    }

    v26 = *(v15 + 8 * v24 + 32);
    swift_unknownObjectRetain();
    v27 = (v24 + 1);
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_17;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_25:
  sub_97B0();
  v45 = *(&v18->isa + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);
  v46 = *(&v18[1].isa + OBJC_IVAR___AXHapticMusicServer_nowPlayingBundleIdentifier);

  v47 = sub_2BA30();

  if (v47)
  {
    v48 = 20.0;
  }

  else
  {
    v48 = 1.0;
  }

  v49 = v59;
  v72(v59, v74, v3);
  v50 = sub_2B890();
  v51 = sub_2BB40();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    *(v52 + 4) = v48;
    _os_log_impl(&dword_0, v50, v51, "Engine shutdown in %f", v52, 0xCu);
  }

  v71(v49, v3);
  v53 = *(&v18->isa + OBJC_IVAR___AXHapticMusicServer_shutdownTimer);
  if (v53)
  {
    v54 = swift_allocObject();
    v54[2] = v18;
    aBlock[4] = sub_2B6F0;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2B614;
    aBlock[3] = &unk_36260;
    v55 = _Block_copy(aBlock);
    v56 = v18;
    v57 = v53;

    [v57 afterDelay:v55 processBlock:v48];
    _Block_release(v55);
  }
}

void sub_28CAC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, double a7)
{
  v134 = a4;
  v13 = sub_2B8F0();
  v121 = *(v13 - 8);
  v122 = v13;
  v14 = *(v121 + 64);
  __chkstk_darwin(v13);
  v119 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2B920();
  v118 = *(v120 - 8);
  v16 = *(v118 + 64);
  __chkstk_darwin(v120);
  v117 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2B8B0();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v127 = (&v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v123 = &v116 - v24;
  v25 = __chkstk_darwin(v23);
  v125 = &v116 - v26;
  __chkstk_darwin(v25);
  v28 = &v116 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a5;
  *(v29 + 24) = a6;
  v133 = v29;
  v30 = qword_39890;
  v128 = a5;

  v129 = a6;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_25AC(v18, HMLog);
  swift_beginAccess();
  v32 = v19[2];
  v131 = v19 + 2;
  v132 = v31;
  v130 = v32;
  v32(v28, v31, v18);
  sub_29BF0(a3, v142);
  v33 = v28;
  v34 = sub_2B890();
  v35 = sub_2BB40();
  sub_29C28(a3);
  v36 = os_log_type_enabled(v34, v35);
  v126 = a2;
  v124 = a1;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v142[0] = v38;
    *v37 = 136315394;
    v116 = v33;
    v39 = sub_25E4();
    v41 = v19;
    v42 = v18;
    v43 = a3;
    v44 = sub_20958(v39, v40, v142);

    *(v37 + 4) = v44;
    a3 = v43;
    v18 = v42;
    v19 = v41;
    *(v37 + 12) = 2048;
    *(v37 + 14) = a7;
    _os_log_impl(&dword_0, v34, v35, "Fetching haptic track for: %s, duration: %f", v37, 0x16u);
    sub_2566C(v38);

    v45 = v41[1];
    v45(v116, v18);
  }

  else
  {

    v45 = v19[1];
    v45(v33, v18);
  }

  v46 = *a3;
  if (*a3 != 99999999)
  {
    v143[0] = *(a3 + 8);
    v141 = 0;
    v51 = v134;
    v52 = *(v134 + OBJC_IVAR___AXHapticMusicServer_ahapAvailableCacheQueue);
    v53 = swift_allocObject();
    *(v53 + 16) = &v141;
    *(v53 + 24) = v51;
    v54 = *(a3 + 16);
    *(v53 + 32) = *a3;
    *(v53 + 48) = v54;
    *(v53 + 64) = *(a3 + 32);
    *(v53 + 80) = *(a3 + 48);
    v55 = swift_allocObject();
    *(v55 + 16) = sub_2A18C;
    *(v55 + 24) = v53;
    v116 = v53;
    v139 = sub_2A31C;
    v140 = v55;
    v135 = _NSConcreteStackBlock;
    v136 = 1107296256;
    v137 = sub_1449C;
    v138 = &unk_35E00;
    v56 = _Block_copy(&v135);
    v127 = a3;
    sub_29BF0(a3, v142);
    sub_2A344(v143, v142);
    v57 = v52;
    v58 = v51;

    dispatch_sync(v57, v56);

    _Block_release(v56);
    LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

    if (v56)
    {
      __break(1u);
      return;
    }

    v59 = v127;
    if (v141)
    {
      v60 = v58;
      v61 = v141;
      if (![v61 BOOLValue])
      {
        sub_2A3A0(v143);
        v130(v125, v132, v18);
        sub_29BF0(v59, v142);
        v100 = sub_2B890();
        v101 = sub_2BB40();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = v59;
          v104 = v102;
          *v102 = 134217984;
          *(v102 + 4) = v46;
          sub_29C28(v103);
          _os_log_impl(&dword_0, v100, v101, "Not requesting %lld again, it's already cached as not available", v104, 0xCu);
        }

        else
        {
          sub_29C28(v59);
        }

        v45(v125, v18);
        sub_15B38(0, v128, v129);

        goto LABEL_29;
      }

      v58 = v60;
    }

    v62 = OBJC_IVAR___AXHapticMusicServer_hapticCache;
    swift_beginAccess();
    v63 = *(v58 + v62);
    if (*(v63 + 16))
    {
      v64 = sub_20F00(v59);
      if (v65)
      {
        v129 = v58;
        v134 = v19;
        v66 = *(*(v63 + 56) + 16 * v64);
        swift_endAccess();
        sub_2A3A0(v143);
        v67 = v123;
        v130(v123, v132, v18);
        sub_29BF0(v59, v142);
        v68 = v126;

        v69 = sub_2B890();
        v70 = sub_2BB40();
        sub_29C28(v59);

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v132 = v66;
          v72 = v71;
          v73 = swift_slowAlloc();
          v131 = v18;
          v142[0] = v73;
          *v72 = 136315394;
          v74 = sub_25E4();
          v76 = sub_20958(v74, v75, v142);

          *(v72 + 4) = v76;
          v77 = v126;
          v59 = v127;
          *(v72 + 12) = 2080;
          v78 = v124;
          *(v72 + 14) = sub_20958(v124, v77, v142);
          _os_log_impl(&dword_0, v69, v70, "Processing track from cache %s %s", v72, 0x16u);
          swift_arrayDestroy();
          v68 = v126;

          v66 = v132;

          v45(v123, v131);
        }

        else
        {

          v45(v67, v18);
          v78 = v124;
        }

        v105 = v129;
        v106 = *(v129 + OBJC_IVAR___AXHapticMusicServer_queue);
        v107 = swift_allocObject();
        *(v107 + 16) = v66;
        *(v107 + 24) = v78;
        *(v107 + 32) = v68;
        *(v107 + 40) = sub_2A180;
        *(v107 + 48) = v133;
        *(v107 + 56) = v105;
        v108 = *(v59 + 16);
        *(v107 + 64) = *v59;
        *(v107 + 80) = v108;
        *(v107 + 96) = *(v59 + 32);
        *(v107 + 112) = *(v59 + 48);
        v139 = sub_2A498;
        v140 = v107;
        v135 = _NSConcreteStackBlock;
        v136 = 1107296256;
        v137 = sub_2B614;
        v138 = &unk_35EA0;
        v109 = _Block_copy(&v135);
        sub_29BF0(v59, v142);
        v110 = v105;

        v111 = v106;
        v112 = v117;
        sub_2B900();
        v142[0] = &_swiftEmptyArrayStorage;
        sub_254AC(&qword_39160, &type metadata accessor for DispatchWorkItemFlags);
        sub_2CC4(&qword_39168, &qword_2CDD0);
        sub_25B40(&qword_39170, &qword_39168, &qword_2CDD0);
        v113 = v119;
        v114 = v122;
        sub_2BC80();
        sub_2BBE0();
        _Block_release(v109);

        (*(v121 + 8))(v113, v114);
        (*(v118 + 8))(v112, v120);

        v99 = v141;
        goto LABEL_32;
      }
    }

    swift_endAccess();
    if (v46)
    {
      v79 = v58;
      sub_2A3A0(v143);
      sub_2ACCC(0, &qword_395A0, SHMediaItem_ptr);
      sub_2CC4(&qword_395A8, &qword_2D0D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2CD60;
      *(inited + 32) = SHMediaItemAppleMusicID;
      v142[0] = v46;
      v81 = SHMediaItemAppleMusicID;
      *(inited + 40) = sub_2BDB0();
      *(inited + 48) = v82;
      v83 = SHMediaItemDuration;
      *(inited + 64) = &type metadata for String;
      *(inited + 72) = v83;
      *(inited + 104) = &type metadata for Double;
      *(inited + 80) = a7;
LABEL_20:
      v84 = v83;
      v85 = sub_24A68(inited);
      swift_setDeallocating();
      sub_2CC4(&qword_395B0, &qword_2D0E0);
      swift_arrayDestroy();
      v86 = sub_144C4(v85);
      v87 = objc_opt_self();
      sub_2CC4(&qword_39568, &qword_2D0A8);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_2CD80;
      *(v88 + 32) = v86;
      sub_2ACCC(0, &qword_395A0, SHMediaItem_ptr);
      v89 = v86;
      isa = sub_2BA80().super.isa;

      v91 = swift_allocObject();
      v93 = v126;
      v92 = v127;
      v94 = v127[1];
      *(v91 + 40) = *v127;
      *(v91 + 16) = v89;
      *(v91 + 24) = sub_2A180;
      *(v91 + 32) = v133;
      *(v91 + 56) = v94;
      *(v91 + 72) = *(v92 + 32);
      v95 = v124;
      *(v91 + 88) = *(v92 + 48);
      *(v91 + 96) = v95;
      *(v91 + 104) = v93;
      *(v91 + 112) = v79;
      v139 = sub_2A45C;
      v140 = v91;
      v135 = _NSConcreteStackBlock;
      v136 = 1107296256;
      v137 = sub_1CD34;
      v138 = &unk_35E50;
      v96 = _Block_copy(&v135);
      sub_29BF0(v92, v142);
      v97 = v79;
      v98 = v89;

      [v87 fetchHapticsWithMediaItems:isa completionHandler:v96];

      _Block_release(v96);
      v99 = v141;
LABEL_32:

      return;
    }

    if ((*&v143[0] || *(&v143[0] + 1) != 0xE000000000000000) && (sub_2BDC0() & 1) == 0)
    {
      v79 = v58;
      sub_2ACCC(0, &qword_395A0, SHMediaItem_ptr);
      sub_2CC4(&qword_395A8, &qword_2D0D8);
      inited = swift_initStackObject();
      *(inited + 32) = SHMediaItemISRC;
      *(inited + 16) = xmmword_2CD60;
      *(inited + 40) = v143[0];
      v83 = SHMediaItemDuration;
      *(inited + 64) = &type metadata for String;
      *(inited + 72) = v83;
      *(inited + 104) = &type metadata for Double;
      *(inited + 80) = a7;
      v115 = SHMediaItemISRC;
      goto LABEL_20;
    }

    sub_2A3A0(v143);
    sub_15B38(0, v128, v129);
LABEL_29:
    v99 = v141;
    goto LABEL_32;
  }

  *(v134 + OBJC_IVAR___AXHapticMusicServer_fetchingHapticTracks) = 0;
  sub_1BE78();
  v47 = v127;
  v130(v127, v132, v18);
  v48 = sub_2B890();
  v49 = sub_2BB40();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_0, v48, v49, "Sample track always matches", v50, 2u);
  }

  v45(v47, v18);
  sub_15B38(1, v128, v129);
}

uint64_t sub_29C58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_29C98()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_15820(v1, v3);
  }
}

uint64_t sub_29D10(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_29D7C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

double sub_29DD0(void *a1)
{
  v2 = sub_2B8B0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  [a1 calculatedPlaybackPosition];
  v11 = v10;
  if (qword_39890 != -1)
  {
    swift_once();
  }

  v12 = sub_25AC(v2, HMLog);
  swift_beginAccess();
  v13 = v3[2];
  v13(v9, v12, v2);
  v14 = sub_2B890();
  v15 = sub_2BB50();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v7;
    *v16 = 134218240;
    *(v16 + 4) = v11;
    *(v16 + 12) = 2048;
    *(v16 + 14) = 0;
    _os_log_impl(&dword_0, v14, v15, "Calculated position %f, device latency: %f", v16, 0x16u);
    v7 = v25;
  }

  v17 = v3[1];
  v17(v9, v2);
  v13(v7, v12, v2);
  v18 = a1;
  v19 = sub_2B890();
  v20 = sub_2BB40();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    [v18 elapsedTimeTimestamp];
    *(v21 + 4) = v22;
    *(v21 + 12) = 2048;
    [v18 inferredTimestamp];
    *(v21 + 14) = v23;
    _os_log_impl(&dword_0, v19, v20, "playback pos: elapse %f infer %f", v21, 0x16u);
  }

  v17(v7, v2);
  return v11 + 0.0;
}

uint64_t sub_2A0F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2A140()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_2A18C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_20F00(v0 + 4), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = *v2;
    *v2 = v7;
    v9 = v7;

    sub_2BAE0();
  }

  else
  {
    swift_endAccess();
    v10 = *v2;
    *v2 = 0;
  }
}

uint64_t sub_2A31C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2A3F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2A4B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2A4CC(a1, a2);
  }

  return a1;
}

uint64_t sub_2A4CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_2A560(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_2A5C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2A634()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2A690()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_2A6E8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2B650;

  return sub_1DF20(v3, v4, v5, v2, v0 + 40);
}

uint64_t sub_2A780()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_2A7F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[15];
  if (v5)
  {
    v6 = v0[14];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v0[15];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = v0[4];
  v9 = v0[5] != 0;

  sub_CB50(v2, v8, v9, v6, v7, v3, v4);
}

uint64_t sub_2A8E4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

void sub_2A934()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = OBJC_IVAR___AXHapticMusicServer_ahapAvailableCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_20F00(v0 + 4), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  v9 = *v2;
  *v2 = v7;
}

uint64_t sub_2A9C4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2A9FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2AA50()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_2AAA8()
{
  v1 = v0[2];
  v2 = v0[10];
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = objc_allocWithZone(NSNumber);
  sub_29BF0((v0 + 3), v10);
  v5 = [v4 initWithBool:v3];
  swift_beginAccess();
  sub_339C(v5, v0 + 3);
  swift_endAccess();
  v6 = objc_opt_self();
  v7 = [v6 sharedInstance];
  LODWORD(v4) = [v7 hapticMusicTrackAvailable];

  result = swift_beginAccess();
  if (v4 != *(v2 + 16))
  {
    v9 = [v6 sharedInstance];
    swift_beginAccess();
    [v9 setHapticMusicTrackAvailable:*(v2 + 16)];

    sub_2B980();
    sub_2B970();
    sub_2B960();
  }

  return result;
}

uint64_t sub_2AC3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2ACCC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2AD14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_2AD54()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2B650;

  return sub_15F1C(v4, v5, v6, v2, v3);
}

unint64_t sub_2ADF0()
{
  result = qword_396C8;
  if (!qword_396C8)
  {
    sub_2D0C(&qword_39588, &qword_2D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_396C8);
  }

  return result;
}

void *sub_2AE84(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2AEC8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2BDC0() & 1;
  }
}

uint64_t sub_2AF20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2CC4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2AF80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2B650;

  return sub_1FEF0(a1, v5);
}

uint64_t sub_2B038(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_C46C;

  return sub_1FEF0(a1, v5);
}

uint64_t sub_2B0F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2CC4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_2B158(uint64_t a1, uint64_t *a2)
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

void sub_2B1E4(uint64_t a1, unint64_t *a2)
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