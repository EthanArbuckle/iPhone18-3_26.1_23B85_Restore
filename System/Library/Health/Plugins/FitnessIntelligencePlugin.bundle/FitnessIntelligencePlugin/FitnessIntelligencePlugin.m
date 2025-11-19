__n128 sub_15F4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1604(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1624(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1678(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1698(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_16E8(uint64_t a1, unint64_t *a2)
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

void *sub_1734@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id static PropertyRecordCheckpointEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:3 schemaIdentifier:v1];

  return v2;
}

uint64_t static PropertyRecordCheckpointEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v78 = a5;
  v86 = a1;
  v87 = a4;
  v84 = a2;
  v85 = a3;
  v5 = sub_754B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v76 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v77 = &v75 - v11;
  __chkstk_darwin(v10);
  v13 = &v75 - v12;
  sub_75378();
  v14 = sub_754A8();
  v15 = sub_75738();
  v16 = os_log_type_enabled(v14, v15);
  v82 = v5;
  v81 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v91 = sub_38F8(&qword_8EB08, &qword_79B20);
    sub_38F8(&qword_8EB10, &qword_79B28);
    v19 = sub_755B8();
    v21 = sub_31B4(v19, v20, aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_0, v14, v15, "Generate sync objects for %s", v17, 0xCu);
    sub_3940(v18);
  }

  v80 = *(v6 + 8);
  v80(v13, v5);
  v22 = swift_allocObject();
  v22[2] = -1;
  v83 = v22 + 2;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = v88;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = v86;
  v27 = [v86 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata];
  v28 = swift_allocObject();
  *(v28 + 16) = &_swiftEmptySetSingleton;
  v79 = (v28 + 16);
  v29 = swift_allocObject();
  v29[2] = v23;
  v29[3] = v27;
  v29[4] = v28;
  v29[5] = 1000;
  v29[6] = v24;
  v30 = swift_allocObject();
  v30[2] = v24;
  v30[3] = v26;
  v31 = v85;
  v30[4] = v84;
  v30[5] = v31;
  v32 = v87;
  v30[6] = v22;
  v30[7] = v32;
  v30[8] = sub_37E4;
  v30[9] = v29;
  v85 = v23;

  v33 = v26;
  v86 = v22;

  v34 = v32;

  v35 = [v34 database];
  v36 = swift_allocObject();
  v36[2] = sub_386C;
  v36[3] = v30;
  aBlock[4] = sub_38B4;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_862C0;
  v37 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v38 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v35 error:aBlock block:v37];
  _Block_release(v37);

  v39 = aBlock[0];
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    if (!v38)
    {
      goto LABEL_25;
    }

    v40 = v83;
    swift_beginAccess();
    if (*v40 == -1)
    {
      v51 = v76;
      sub_75378();

      v52 = sub_754A8();
      v53 = sub_75738();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v79;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v90 = v57;
        *v56 = 134218242;
        swift_beginAccess();
        v58 = *v55;
        if ((v58 & 0xC000000000000001) != 0)
        {

          v59 = sub_75898();
        }

        else
        {
          v59 = *(v58 + 16);
        }

        *(v56 + 4) = v59;

        *(v56 + 12) = 2080;
        v72 = sub_75B18();
        v74 = sub_31B4(v72, v73, &v90);

        *(v56 + 14) = v74;
        _os_log_impl(&dword_0, v52, v53, "Last anchor is invalid, not syncing %ld %s", v56, 0x16u);
        sub_3940(v57);

        v80(v76, v82);
      }

      else
      {

        v80(v51, v82);
      }

      goto LABEL_28;
    }

    v41 = v77;
    sub_75378();

    v42 = sub_754A8();
    v43 = sub_75738();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v79;
    if (v44)
    {
      LODWORD(v87) = v43;
      v46 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v91 = v84;
      *v46 = 134218242;
      swift_beginAccess();
      v47 = *v45;
      if ((*v45 & 0xC000000000000001) != 0)
      {
        if (v47 < 0)
        {
          v48 = *v45;
        }

        v49 = *v45;

        v50 = sub_75898();
      }

      else
      {
        v50 = *(v47 + 16);
      }

      *(v46 + 4) = v50;

      *(v46 + 12) = 2080;
      v60 = sub_75B18();
      v62 = sub_31B4(v60, v61, &v91);

      *(v46 + 14) = v62;
      _os_log_impl(&dword_0, v42, v87, "Syncing over %ld %s", v46, 0x16u);
      sub_3940(v84);
    }

    else
    {
    }

    v80(v41, v82);
    swift_beginAccess();
    v63 = *v45;

    v65 = sub_3BF4(v64, sub_6214, sub_5AF8);

    if ((v65 & 0x8000000000000000) == 0 && (v65 & 0x4000000000000000) == 0)
    {
      sub_75A78();
      goto LABEL_22;
    }
  }

  sub_38F8(&qword_8EB00, &qword_79B18);
  sub_759C8();

LABEL_22:
  v66 = v78;

  sub_38F8(&qword_8EB00, &qword_79B18);
  isa = sub_75678().super.isa;

  v68 = *v83;
  v89 = 0;
  v69 = [v66 sendCodableChange:isa version:0 resultAnchor:v68 sequence:0 done:1 error:&v89];

  v70 = v89;
  if (!v69)
  {
    v39 = v70;
LABEL_25:
    sub_74898();

    swift_willThrow();
  }

LABEL_28:
}

uint64_t sub_22A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59 = a5;
  v60 = a6;
  v13 = sub_754B8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_38F8(&qword_8EB18, &qword_7A950);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - v20;
  v22 = sub_751D8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v58 - v28;
  sub_4E9F8(a3, v21);
  v30 = (*(v23 + 48))(v21, 1, v22);
  if (v30 == 1)
  {
    sub_3D48(v21, &qword_8EB18, &qword_7A950);
    sub_75378();
    v51 = sub_754A8();
    v52 = sub_75718();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = v59;
      _os_log_impl(&dword_0, v51, v52, "Failed to decode SnapshotContainer from row: %ld", v53, 0xCu);
    }

    (*(v14 + 8))(v17, v13);
    return v30 != 1;
  }

  v59 = a8;
  (*(v23 + 32))(v29, v21, v22);
  v31 = *(v23 + 16);
  v31(v27, v29, v22);
  v32 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper();
  v33 = objc_allocWithZone(v32);
  v34 = OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry;
  v31(&v33[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry], v27, v22);
  (*(v23 + 56))(&v33[v34], 0, 1, v22);
  sub_39E0();
  v35 = sub_74F78();
  v36 = &v33[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
  *v36 = v35;
  v36[1] = v37;
  v62.receiver = v33;
  v62.super_class = v32;
  v38 = objc_msgSendSuper2(&v62, "init");
  v39 = *(v23 + 8);
  v39(v27, v22);
  v40 = sub_550E0();
  if (v40 < 1)
  {
    goto LABEL_16;
  }

  v41 = v40;
  v42 = v59;
  result = swift_beginAccess();
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, v41);
  v46 = v44 + v41;
  if (v45)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v46 > a9)
  {
    goto LABEL_16;
  }

  v58 = a11;
  swift_beginAccess();
  v47 = *(a10 + 16);
  if ((v47 & 0xC000000000000001) != 0)
  {
    if (v47 < 0)
    {
      v48 = *(a10 + 16);
    }

    v49 = *(a10 + 16);

    v50 = sub_75898();
  }

  else
  {
    v50 = *(v47 + 16);
  }

  if (v50 >= v58)
  {
LABEL_16:
    *v60 = 1;

    v39(v29, v22);
    return v30 != 1;
  }

  swift_beginAccess();
  v54 = v38;
  sub_68B3C(&v61, v54);
  swift_endAccess();

  v39(v29, v22);
  v55 = v59;
  result = swift_beginAccess();
  v56 = *(v55 + 16);
  v45 = __OFADD__(v56, v41);
  v57 = v56 + v41;
  if (!v45)
  {
    *(v55 + 16) = v57;
    return v30 != 1;
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_27AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_754B8();
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  __chkstk_darwin(v15);
  v35 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a7 + 16;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = sub_55A6C();
  sub_462C(v20);

  isa = sub_75678().super.isa;

  v22 = [a8 database];
  v23 = swift_allocObject();
  *(v23 + 16) = a9;
  *(v23 + 24) = a10;
  aBlock[4] = sub_3D1C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_778C;
  aBlock[3] = &unk_86310;
  v24 = _Block_copy(aBlock);

  swift_beginAccess();
  v38 = 0;
  v25 = [ObjCClassFromMetadata enumerateEntitiesForSyncWithProperties:isa predicate:0 session:a4 syncAnchorRange:a5 limit:a6 lastSyncAnchor:0 healthDatabase:v18 error:v22 block:{&v38, v24}];
  v26 = v38;
  swift_endAccess();
  v27 = v26;
  _Block_release(v24);

  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  if (!v25)
  {
    sub_74898();

    swift_willThrow();
    v28 = v35;
    sub_75378();
    swift_errorRetain();
    v29 = sub_754A8();
    v30 = sub_75718();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&dword_0, v29, v30, "Error while enumerating entities for sync: %@", v31, 0xCu);
      sub_3D48(v32, &unk_8EB30, &unk_7A270);
    }

    else
    {
    }

    (*(v36 + 8))(v28, v37);
  }

  return v25;
}

uint64_t sub_2BB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

id static PropertyRecordCheckpointEntity.nextSyncAnchor(with:startSyncAnchor:profile:error:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [a3 database];
  v10 = [ObjCClassFromMetadata nextSyncAnchorWithStartAnchor:a2 predicate:0 syncEntityClass:ObjCClassFromMetadata session:a1 orderingTerms:0 limit:0 healthDatabase:v9 error:a4];

  return v10;
}

id static PropertyRecordCheckpointEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_38F8(&qword_8EB18, &qword_7A950);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper();
  v9 = objc_allocWithZone(v8);
  v10 = sub_751D8();
  sub_398C(a1, a2);
  sub_398C(a1, a2);
  sub_39E0();
  sub_74F88();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  sub_3A38(v7, &v9[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry]);
  v11 = &v9[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
  *v11 = a1;
  v11[1] = a2;
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_31B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3280(v11, 0, 0, 1, a1, a2);
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
    sub_3CBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3940(v11);
  return v7;
}

unint64_t sub_3280(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_338C(a5, a6);
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
    result = sub_75948();
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

char *sub_338C(uint64_t a1, unint64_t a2)
{
  v4 = sub_33D8(a1, a2);
  sub_3508(&off_85738);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_33D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_35F4(v5, 0);
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

  result = sub_75948();
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
        v10 = sub_75618();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_35F4(v10, 0);
        result = sub_758F8();
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

uint64_t sub_3508(uint64_t result)
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

  result = sub_3668(result, v12, 1, v3);
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

void *sub_35F4(uint64_t a1, uint64_t a2)
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

  sub_38F8(&qword_8EB28, &qword_79B38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3668(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8EB28, &qword_79B38);
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

uint64_t sub_376C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_37A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_381C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_38B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_38E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_38F8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_3940(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_398C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_39E0()
{
  result = qword_8EB20;
  if (!qword_8EB20)
  {
    sub_751D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8EB20);
  }

  return result;
}

uint64_t sub_3A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8EB18, &qword_7A950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_3AD4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_6214(v1, 0);

    sub_75918();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_759D8();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

char *sub_3BF4(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_75898();
  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_3CB4();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return a2;
}

uint64_t sub_3CBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3D48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_38F8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FitnessIntelligencePlugin.pluginIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___FIFitnessIntelligencePlugin_pluginIdentifier);
  v2 = *(v0 + OBJC_IVAR___FIFitnessIntelligencePlugin_pluginIdentifier + 8);

  return v1;
}

id sub_3E08(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_75598();

  return v6;
}

uint64_t FitnessIntelligencePlugin.syncSchemaIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___FIFitnessIntelligencePlugin_syncSchemaIdentifier);
  v2 = *(v0 + OBJC_IVAR___FIFitnessIntelligencePlugin_syncSchemaIdentifier + 8);

  return v1;
}

id FitnessIntelligencePlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FitnessIntelligencePlugin.init()()
{
  v1 = v0;
  v2 = sub_754B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[OBJC_IVAR___FIFitnessIntelligencePlugin_pluginIdentifier];
  *v7 = 0xD000000000000024;
  *(v7 + 1) = 0x8000000000077430;
  v8 = &v1[OBJC_IVAR___FIFitnessIntelligencePlugin_syncSchemaIdentifier];
  *v8 = 0xD000000000000029;
  *(v8 + 1) = 0x8000000000077460;
  sub_75378();
  v9 = sub_754A8();
  v10 = sub_75738();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "FitnessIntelligence Plugin Loaded", v11, 2u);
  }

  (*(v3 + 8))(v6, v2);
  *&v1[OBJC_IVAR___FIFitnessIntelligencePlugin_schemaProvider] = [objc_allocWithZone(type metadata accessor for DatabaseSchemaProvider()) init];
  v12 = type metadata accessor for FitnessIntelligencePlugin();
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "init");
}

id FitnessIntelligencePlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessIntelligencePlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t FitnessIntelligencePlugin.taskServerClasses()()
{
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79B90;
  *(v0 + 32) = type metadata accessor for SnapshotContainerTaskServer();
  *(v0 + 40) = type metadata accessor for InferenceRecordTaskServer();
  *(v0 + 48) = type metadata accessor for WorkoutTaskServer();
  *(v0 + 56) = type metadata accessor for SanityTaskServer();
  return v0;
}

uint64_t FitnessIntelligencePlugin.currentSchemaVersion(for:)(uint64_t a1)
{
  v1 = 6;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

void *_s25FitnessIntelligencePluginAAC16databaseEntities3forSayyXlXpGSo29HDSQLiteEntityProtectionClassV_tF_0(uint64_t a1)
{
  if (a1 != 2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_38F8(&qword_8EB58, &unk_79BB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_79BA0;
  *(v1 + 32) = type metadata accessor for WorkoutPropertyRecordEntity();
  *(v1 + 40) = type metadata accessor for RingsPropertyRecordEntity();
  *(v1 + 48) = type metadata accessor for FitnessPlusPropertyRecordEntity();
  *(v1 + 56) = type metadata accessor for PropertyRecordCheckpointEntity();
  v2 = type metadata accessor for InferenceRecordContainerEntity();
  result = v1;
  *(v1 + 64) = v2;
  return result;
}

uint64_t _s25FitnessIntelligencePluginAAC19orderedSyncEntitiesSayyXlXpGyF_0()
{
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79BA0;
  *(v0 + 32) = type metadata accessor for WorkoutPropertyRecordEntity();
  *(v0 + 40) = type metadata accessor for RingsPropertyRecordEntity();
  *(v0 + 48) = type metadata accessor for FitnessPlusPropertyRecordEntity();
  *(v0 + 56) = type metadata accessor for PropertyRecordCheckpointEntity();
  *(v0 + 64) = type metadata accessor for InferenceRecordContainerEntity();
  return v0;
}

unint64_t *sub_462C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_67C78(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_67C78((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_5F90(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_472C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_67C98(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v8 = *(v3 - 1);
      v9 = *v3;

      sub_38F8(&qword_8EDA8, &unk_79D30);
      swift_dynamicCast();
      v4 = v10;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_67C98((v5 > 1), v6 + 1, 1);
        v4 = v10;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_48BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_67C78(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_38F8(&qword_8EDD0, &qword_79D50);
      swift_dynamicCast();
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_67C78((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      sub_5F90(&v9, &v2[4 * v7 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_49C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_67C78(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    type metadata accessor for HKWorkoutActivityType(0);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_67C78((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      sub_5F90(&v9, &v2[4 * v7 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_4BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_67D9C(0, v1, 0);
    v3 = (a1 + 32);
    type metadata accessor for HKWorkoutActivityType(0);
    do
    {
      v4 = *v3++;
      sub_38F8(&qword_8EDD8, &qword_79D58);
      swift_dynamicCast();
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_67D9C((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[5 * v6];
      v7[8] = v11;
      *(v7 + 2) = v9;
      *(v7 + 3) = v10;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_4DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_67C78(0, v8, 0);
    v9 = v20;
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v7, v13, v3);
      swift_dynamicCast();
      v20 = v9;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_67C78((v15 > 1), v16 + 1, 1);
        v9 = v20;
      }

      v9[2] = v16 + 1;
      sub_5F90(&v19, &v9[4 * v16 + 4]);
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  return v9;
}

void *sub_4FBC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v27 = a4;
  v28 = a5;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v32 = _swiftEmptyArrayStorage;
    v26 = a3;
    a3(0, v12, 0);
    v13 = v32;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v14 = v16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v18 = *(v15 + 56);
    do
    {
      v14(v11, v17, v7);
      sub_38F8(v27, v28);
      swift_dynamicCast();
      v32 = v13;
      v20 = v13[2];
      v19 = v13[3];
      if (v20 >= v19 >> 1)
      {
        v26(v19 > 1, v20 + 1, 1);
        v13 = v32;
      }

      v13[2] = v20 + 1;
      v21 = &v13[5 * v20];
      v22 = v29;
      v23 = v30;
      v21[8] = v31;
      *(v21 + 2) = v22;
      *(v21 + 3) = v23;
      v17 += v18;
      --v12;
    }

    while (v12);
  }

  return v13;
}

char *sub_5174(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_759D8();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_67C78(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_75928();
        sub_5FA0();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_67C78((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_5F90(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_5FA0();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_67C78((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_5F90(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

Swift::Int sub_5354()
{
  v1 = *v0;
  sub_75AE8();
  sub_75AF8(v1);
  return sub_75B08();
}

Swift::Int sub_53C8()
{
  v1 = *v0;
  sub_75AE8();
  sub_75AF8(v1);
  return sub_75B08();
}

uint64_t sub_5434()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ReduceStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReduceStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5604()
{
  result = qword_8ED90;
  if (!qword_8ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8ED90);
  }

  return result;
}

uint64_t sub_5658(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_74CA8();
  v29 = v6;
  v7 = sub_5FEC(&qword_8ED98, &type metadata accessor for CacheIndex);
  v30 = v7;
  v8 = sub_5914(&v27);
  v9 = *(*(v6 - 8) + 16);
  v9(v8, a2, v6);
  sub_38F8(&qword_8EDA0, &unk_79D20);
  inited = swift_initStackObject();
  v11 = inited;
  *(inited + 16) = xmmword_79BF0;
  if (v29)
  {
    sub_5978(&v27, inited + 32);
  }

  else
  {
    v12 = v30;
    v13 = v28;
    *(inited + 32) = v27;
    *(inited + 48) = v13;
    *(inited + 64) = v12;
  }

  v14 = sub_6C2DC(a1, 1, v11);
  swift_setDeallocating();
  if (*(v11 + 56))
  {
    sub_3940((v11 + 32));
  }

  if (v29)
  {
    sub_3940(&v27);
  }

  v15 = *(sub_38F8(&qword_8F000, &qword_7A5D0) + 36);
  v29 = v6;
  v30 = v7;
  v16 = sub_5914(&v27);
  v9(v16, a2 + v15, v6);
  v17 = swift_initStackObject();
  v18 = v17;
  *(v17 + 16) = xmmword_79BF0;
  if (v29)
  {
    sub_5978(&v27, v17 + 32);
  }

  else
  {
    v19 = v30;
    v20 = v28;
    *(v17 + 32) = v27;
    *(v17 + 48) = v20;
    *(v17 + 64) = v19;
  }

  v21 = sub_6C2DC(a1, v14, v18);
  swift_setDeallocating();
  if (*(v18 + 56))
  {
    sub_3940((v18 + 32));
  }

  if (v29)
  {
    sub_3940(&v27);
  }

  v22 = *(a3 + 16);
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = sub_59E8(*(a3 + 16), 0);
  v24 = sub_5B2C(&v27, v23 + 4, v22, a3);

  sub_3CB4();
  if (v24 != v22)
  {
    __break(1u);
LABEL_18:
    v23 = _swiftEmptyArrayStorage;
  }

  v25 = sub_472C(v23);

  sub_6C3E0(a1, v21, v25);
}

uint64_t *sub_5914(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_5978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_59E8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_38F8(&qword_8EDB0, &qword_7AC50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_5A70(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_38F8(&qword_8F180, &qword_79D40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_5B2C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_5CB8(void *result, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_75888();
  a5(0);
  sub_5FEC(a6, a7);
  result = sub_756F8();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_758B8())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

_OWORD *sub_5F90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_5FA0()
{
  result = qword_8EDE8;
  if (!qword_8EDE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8EDE8);
  }

  return result;
}

uint64_t sub_5FEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PropertyRecordEntityError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PropertyRecordEntityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_61C0()
{
  result = qword_8EDF8;
  if (!qword_8EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8EDF8);
  }

  return result;
}

uint64_t sub_6218(unint64_t a1, void *a2)
{
  v94 = a2;
  v92 = sub_754B8();
  v3 = *(v92 - 8);
  v4 = *(v3 + 8);
  v5 = __chkstk_darwin(v92);
  v88 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = (&v74 - v8);
  __chkstk_darwin(v7);
  v11 = (&v74 - v10);
  v12 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v98 = *(v12 - 8);
  v13 = *(v98 + 64);
  v14 = __chkstk_darwin(v12);
  v104 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v74 - v17;
  __chkstk_darwin(v16);
  v97 = &v74 - v19;
  v20 = sub_654E0(a1);
  if (!v20)
  {
    goto LABEL_70;
  }

  if (v20 >> 62)
  {
    goto LABEL_68;
  }

  if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_69:

LABEL_70:
    sub_75378();
    v71 = sub_754A8();
    v72 = sub_75718();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "Applying journal entries, but none found. Skipping.", v73, 2u);
    }

    return (*(v3 + 1))(v11, v92);
  }

LABEL_4:
  v99 = v18;
  v105 = v12;
  v106 = v20;
  v12 = v20;
  v18 = sub_38F8(&qword_8EF20, qword_79ED0);
  sub_7718(&qword_8EF28, &qword_8EF20, qword_79ED0);
  v11 = &v106;
  v21 = 0;
  v22 = sub_75648();

  v24 = 0;
  v25 = *(v22 + 64);
  v75 = v22 + 64;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v103 = (v98 + 32);
  v91 = (v3 + 8);
  *&v23 = 136315394;
  v81 = v23;
  *&v23 = 138412290;
  v80 = v23;
  v85 = v9;
  v77 = v22;
  v76 = v29;
LABEL_8:
  while (v28)
  {
LABEL_13:
    v31 = (v24 << 9) | (8 * __clz(__rbit64(v28)));
    v32 = *(v22 + 56);
    v84 = *(*(v22 + 48) + v31);
    v33 = *(v32 + v31);
    v87 = v33 >> 62;
    if (v33 >> 62)
    {
      v67 = v24;
      v12 = v29;
      v18 = v28;
      v20 = sub_759D8();
      v28 = v18;
      v29 = v12;
      v24 = v67;
      v11 = v20;
    }

    else
    {
      v11 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    }

    v28 &= v28 - 1;
    if (v11)
    {
      v78 = v28;
      v79 = v24;
      v90 = v33 & 0xC000000000000001;
      v34 = v33 & 0xFFFFFFFFFFFFFF8;
      v83 = v33 + 32;
      v86 = v33 & 0xFFFFFFFFFFFFFF8;
      if (v33 < 0)
      {
        v34 = v33;
      }

      v82 = v34;

      v35 = 0;
      v93 = v33;
      v89 = v11;
      while (1)
      {
        if (v90)
        {
          v20 = sub_75928();
          v37 = __OFADD__(v35, 1);
          v38 = (v35 + 1);
          if (v37)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v35 >= *(v86 + 16))
          {
            goto LABEL_67;
          }

          v20 = *(v83 + 8 * v35);
          v37 = __OFADD__(v35, 1);
          v38 = (v35 + 1);
          if (v37)
          {
            goto LABEL_65;
          }
        }

        v12 = *(v20 + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities);
        if (v12 >> 62)
        {
          v49 = v20;
          if (v12 < 0)
          {
            v50 = *(v20 + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities);
          }

          v51 = sub_759D8();
          v20 = v49;
          v18 = v51;
          v95 = v20;
          v96 = v38;
          if (v51)
          {
LABEL_29:
            v39 = 0;
            v100 = v12 & 0xFFFFFFFFFFFFFF8;
            v101 = v12 & 0xC000000000000001;
            v9 = _swiftEmptyArrayStorage;
            while (1)
            {
              if (v101)
              {
                v20 = sub_75928();
              }

              else
              {
                if (v39 >= *(v100 + 16))
                {
                  goto LABEL_64;
                }

                v20 = *(v12 + 8 * v39 + 32);
              }

              v40 = v20;
              v3 = (v39 + 1);
              if (__OFADD__(v39, 1))
              {
                break;
              }

              sub_398C(*(v20 + OBJC_IVAR___RingsEntityWrapper_serializedEntity), *(v20 + OBJC_IVAR___RingsEntityWrapper_serializedEntity + 8));
              sub_7718(&qword_8EF30, &qword_8F0A0, &qword_79EC8);
              v41 = v99;
              v42 = v105;
              sub_74F88();
              if (v21)
              {

                goto LABEL_50;
              }

              v102 = 0;
              v43 = (v39 + 1);
              v3 = v12;

              v44 = *v103;
              v45 = v97;
              (*v103)(v97, v41, v42);
              v44(v104, v45, v42);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_675D0(0, v9[2] + 1, 1, v9);
              }

              v47 = v9[2];
              v46 = v9[3];
              v11 = (v47 + 1);
              if (v47 >= v46 >> 1)
              {
                v9 = sub_675D0(v46 > 1, v47 + 1, 1, v9);
              }

              v9[2] = v11;
              v20 = (v44)(v9 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v47, v104, v105);
              ++v39;
              v48 = v43 == v18;
              v21 = v102;
              if (v48)
              {
                goto LABEL_48;
              }
            }

            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            v69 = v20;
            v70 = sub_759D8();
            v20 = v69;
            if (!v70)
            {
              goto LABEL_69;
            }

            goto LABEL_4;
          }
        }

        else
        {
          v18 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
          v95 = v20;
          v96 = v38;
          if (v18)
          {
            goto LABEL_29;
          }
        }

        v9 = _swiftEmptyArrayStorage;
LABEL_48:
        sub_5CD24(v9, v84, v94, 0);
        if (v21)
        {

LABEL_50:
          v21 = 0;
          v9 = v85;
          sub_75378();
          swift_errorRetain();
          v52 = sub_754A8();
          v53 = sub_75718();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v106 = v56;
            *v54 = v81;
            v57 = sub_75B18();
            v59 = sub_31B4(v57, v58, &v106);

            *(v54 + 4) = v59;
            *(v54 + 12) = 2112;
            swift_errorRetain();
            v60 = _swift_stdlib_bridgeErrorToNSError();
            *(v54 + 14) = v60;
            *v55 = v60;
            _os_log_impl(&dword_0, v52, v53, "Failed to apply %s: %@", v54, 0x16u);
            sub_3D48(v55, &unk_8EB30, &unk_7A270);

            sub_3940(v56);
          }

          v3 = *v91;
          (*v91)(v9, v92);
          v18 = [v94 database];
          if (v87)
          {
            sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);

            sub_759C8();
          }

          else
          {

            sub_75A78();
            sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
          }

          sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
          isa = sub_75678().super.isa;

          v106 = 0;
          v12 = [v18 addJournalEntries:isa error:&v106];

          if (v12)
          {
            v36 = v106;
          }

          else
          {
            v62 = v106;
            v18 = sub_74898();

            swift_willThrow();
            sub_75378();
            swift_errorRetain();
            v63 = sub_754A8();
            v64 = sub_75728();

            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v12 = swift_slowAlloc();
              *v65 = v80;
              swift_errorRetain();
              v66 = _swift_stdlib_bridgeErrorToNSError();
              *(v65 + 4) = v66;
              *v12 = v66;
              _os_log_impl(&dword_0, v63, v64, "Failed to add journal entries back: %@", v65, 0xCu);
              sub_3D48(v12, &unk_8EB30, &unk_7A270);
            }

            else
            {
            }

            v20 = (v3)(v88, v92);
            v21 = 0;
          }
        }

        else
        {
        }

        v11 = v89;
        v35 = v96;
        if (v96 == v89)
        {

          v22 = v77;
          v24 = v79;
          v29 = v76;
          v28 = v78;
          goto LABEL_8;
        }
      }
    }
  }

  while (1)
  {
    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_66;
    }

    if (v30 >= v29)
    {
    }

    v28 = *(v75 + 8 * v30);
    ++v24;
    if (v28)
    {
      v24 = v30;
      goto LABEL_13;
    }
  }
}

void *sub_6E08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_provenance);
  *(a2 + 8) = 0;
  return result;
}

id sub_6EBC(id a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_79E90;
  *(v9 + 32) = sub_7688(0, &qword_8EEF8, NSArray_ptr);
  *(v9 + 40) = sub_7688(0, &qword_8EF00, NSData_ptr);
  sub_757F8();

  if (v37[3])
  {
    sub_38F8(&qword_8EF10, &qword_79EC0);
    if (swift_dynamicCast())
    {
      v10 = v36;
      v11 = *(v36 + 16);
      if (v11)
      {
        v33 = a1;
        v37[0] = _swiftEmptyArrayStorage;
        sub_75978();
        v12 = type metadata accessor for RingsPropertyRecordEntity.EntityWrapper();
        v13 = (v10 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;
          v16 = objc_allocWithZone(v12);
          v17 = &v16[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
          *v17 = v14;
          v17[1] = v15;
          sub_398C(v14, v15);
          v35.receiver = v16;
          v35.super_class = v12;
          objc_msgSendSuper2(&v35, "init");
          sub_75958();
          v18 = *(v37[0] + 16);
          sub_75988();
          sub_75998();
          sub_75968();
          v13 += 2;
          --v11;
        }

        while (v11);

        v19 = v37[0];
        a1 = v33;
      }

      else
      {

        v19 = _swiftEmptyArrayStorage;
      }

      v29 = sub_75598();
      v30 = [a1 decodeInt64ForKey:v29];

      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities] = v19;
      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_provenance] = v30;
      v31 = type metadata accessor for RingsPropertyRecordJournalEntry();
      v34.receiver = v2;
      v34.super_class = v31;
      v32 = objc_msgSendSuper2(&v34, "init");

      return v32;
    }
  }

  else
  {
    sub_3D48(v37, &qword_8EF08, &unk_7A250);
  }

  sub_75378();
  v20 = sub_754A8();
  v21 = sub_75718();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = a1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v37[0] = v24;
    *v23 = 136315138;
    v25 = sub_75B18();
    v27 = sub_31B4(v25, v26, v37);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_0, v20, v21, "Failed to decode %s journal entry: missing entity data", v23, 0xCu);
    sub_3940(v24);
  }

  else
  {
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for RingsPropertyRecordJournalEntry();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_7318(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_provenance);
  v4 = sub_75598();
  [a1 encodeInt64:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v22 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities);
    }

    v6 = sub_759D8();
  }

  else
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  if (v6)
  {
    sub_67DDC(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = sub_75928();
        v9 = *(v8 + OBJC_IVAR___RingsEntityWrapper_serializedEntity);
        v10 = *(v8 + OBJC_IVAR___RingsEntityWrapper_serializedEntity + 8);
        sub_398C(v9, v10);
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_67DDC((v11 > 1), v12 + 1, 1);
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v12 + 1;
        v13 = &_swiftEmptyArrayStorage[2 * v12];
        v13[4] = v9;
        v13[5] = v10;
      }

      while (v6 != v7);
    }

    else
    {
      v14 = (v5 + 32);
      do
      {
        v15 = (*v14 + OBJC_IVAR___RingsEntityWrapper_serializedEntity);
        v16 = *v15;
        v17 = v15[1];
        sub_398C(*v15, v17);
        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_67DDC((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v16;
        v20[5] = v17;
        ++v14;
        --v6;
      }

      while (v6);
    }
  }

  isa = sub_75678().super.isa;

  v23 = sub_75598();
  [a1 encodeObject:isa forKey:v23];
}

id sub_7620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RingsPropertyRecordJournalEntry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_7688(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_76D0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_7718(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_76D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18[3] = swift_getObjectType();
  v18[0] = a2;
  v16 = sub_75688();
  swift_unknownObjectRetain();
  LOBYTE(a8) = v15(v18, v16, a4, a5, a6, a7, a8);

  sub_3940(v18);
  return a8 & 1;
}

uint64_t sub_7858(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v95 = a3;
  v94 = a2;
  v10 = sub_754B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v5 respondsToSelector:"syncVersionRangeForSession:"];
  if (result)
  {
    v77 = v14;
    v74 = v11;
    v75 = v10;
    v76 = v6;
    v16 = [v5 syncVersionRangeForSession:a1];
    v87 = HIDWORD(v16);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v85 = [a1 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata] / 3;
    v93 = swift_allocObject();
    v17 = a5;
    v89 = a5;
    v86 = a1;
    *(v93 + 16) = -1;
    v18 = swift_allocObject();
    v92 = v18;
    *(v18 + 16) = &_swiftEmptySetSingleton;
    v81 = (v18 + 16);
    v19 = swift_allocObject();
    v91 = v19;
    *(v19 + 16) = -1;
    v78 = (v19 + 16);
    v20 = swift_allocObject();
    v90 = v20;
    *(v20 + 16) = 0;
    v80 = (v20 + 16);
    v21 = swift_allocObject();
    v96 = v21;
    *(v21 + 16) = &_swiftEmptySetSingleton;
    v83 = (v21 + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = -1;
    v82 = (v22 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v79 = (v23 + 16);
    sub_38F8(&qword_8EFF8, &unk_79F38);
    v24 = swift_allocBox();
    v84 = a4;
    v25 = v24;
    v27 = v26;
    v28 = sub_38F8(&qword_8F000, &qword_7A5D0);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    *(v29 + 24) = v23;
    v30 = v85;
    *(v29 + 32) = v20;
    *(v29 + 40) = v30;
    *(v29 + 48) = v22;
    *(v29 + 56) = v21;
    *(v29 + 64) = v17;
    v85 = v16;
    LODWORD(v30) = v87;
    *(v29 + 72) = v16;
    *(v29 + 76) = v30;
    v31 = v91;
    *(v29 + 80) = v92;
    *(v29 + 88) = v31;
    v32 = swift_allocObject();
    v33 = v86;
    v32[2] = v5;
    v32[3] = v33;
    v34 = v95;
    v32[4] = v94;
    v32[5] = v34;
    v35 = v84;
    v32[6] = v93;
    v32[7] = v35;
    v32[8] = sub_FEEC;
    v32[9] = v29;
    v87 = v25;

    v94 = v23;

    v95 = v22;

    v36 = v32;

    swift_unknownObjectRetain();

    v37 = v33;

    v38 = v35;

    v39 = [v38 database];
    v40 = swift_allocObject();
    v40[2] = sub_FFA4;
    v40[3] = v36;
    aBlock[4] = sub_1008C;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_86808;
    v41 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v42 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v39 error:aBlock block:v41];
    _Block_release(v41);

    v43 = aBlock[0];
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      __break(1u);
    }

    else
    {
      if (!v42)
      {
LABEL_22:
        sub_74898();

        swift_willThrow();
      }

      v44 = v83;
      swift_beginAccess();
      v45 = *v44;
      v46 = v81;
      swift_beginAccess();
      v47 = *v46;

      sub_E4F0(v48, v45);
      v49 = *v44;
      *v44 = v50;

      v51 = v80;
      swift_beginAccess();
      v52 = *v51;
      v53 = v79;
      swift_beginAccess();
      if (!__OFADD__(*v53, v52))
      {
        *v53 += v52;
        v54 = v78;
        swift_beginAccess();
        v55 = *v54;
        v43 = v82;
        swift_beginAccess();
        *v43 = v55;
        v56 = *v46;
        *v46 = &_swiftEmptySetSingleton;

        *v51 = 0;
        *v54 = -1;
        if (*v43 == -1)
        {
LABEL_20:
        }

        ObjCClassFromMetadata = v36;
        v57 = v77;
        sub_75378();

        v58 = sub_754A8();
        v59 = sub_75738();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v97 = v61;
          *v60 = 136315394;
          *(v60 + 4) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, &v97);
          *(v60 + 12) = 2048;
          v62 = *v44;
          v35 = v89;
          v36 = v85;
          if ((*v44 & 0xC000000000000001) != 0)
          {
            if (v62 < 0)
            {
              v63 = *v44;
            }

            v64 = *v44;

            v65 = sub_75898();
          }

          else
          {
            v65 = *(v62 + 16);
          }

          *(v60 + 14) = v65;

          _os_log_impl(&dword_0, v58, v59, "[%s] Wrapping up syncing with %ld records to send", v60, 0x16u);
          sub_3940(v61);

          (*(v74 + 8))(v77, v75);
          v43 = v82;
          v44 = v83;
        }

        else
        {

          (*(v74 + 8))(v57, v75);
          v35 = v89;
          v36 = v85;
        }

        v66 = *v44;

        v68 = sub_3AA8(v67);

        if ((v68 & 0x8000000000000000) == 0 && (v68 & 0x4000000000000000) == 0)
        {
          sub_75A78();
LABEL_18:

          sub_38F8(&qword_8EB00, &qword_79B18);
          isa = sub_75678().super.isa;

          v70 = *v43;
          v97 = 0;
          v71 = [v35 sendCodableChange:isa version:v36 resultAnchor:v70 sequence:0 done:1 error:&v97];

          if (v71)
          {
            v72 = v97;
            goto LABEL_20;
          }

          v43 = v97;
          goto LABEL_22;
        }

LABEL_26:
        sub_38F8(&qword_8EB00, &qword_79B18);
        sub_759C8();

        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_832C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v95 = a3;
  v94 = a2;
  v10 = sub_754B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v5 respondsToSelector:"syncVersionRangeForSession:"];
  if (result)
  {
    v77 = v14;
    v74 = v11;
    v75 = v10;
    v76 = v6;
    v16 = [v5 syncVersionRangeForSession:a1];
    v87 = HIDWORD(v16);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v85 = [a1 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata] / 3;
    v93 = swift_allocObject();
    v17 = a5;
    v89 = a5;
    v86 = a1;
    *(v93 + 16) = -1;
    v18 = swift_allocObject();
    v92 = v18;
    *(v18 + 16) = &_swiftEmptySetSingleton;
    v81 = (v18 + 16);
    v19 = swift_allocObject();
    v91 = v19;
    *(v19 + 16) = -1;
    v78 = (v19 + 16);
    v20 = swift_allocObject();
    v90 = v20;
    *(v20 + 16) = 0;
    v80 = (v20 + 16);
    v21 = swift_allocObject();
    v96 = v21;
    *(v21 + 16) = &_swiftEmptySetSingleton;
    v83 = (v21 + 16);
    v22 = swift_allocObject();
    v84 = a4;
    v23 = v22;
    *(v22 + 16) = -1;
    v82 = (v22 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v79 = (v24 + 16);
    sub_38F8(&qword_8EFF8, &unk_79F38);
    v25 = swift_allocBox();
    v27 = v26;
    v28 = sub_38F8(&qword_8F000, &qword_7A5D0);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    *(v29 + 24) = v24;
    v30 = v85;
    *(v29 + 32) = v20;
    *(v29 + 40) = v30;
    *(v29 + 48) = v23;
    *(v29 + 56) = v21;
    *(v29 + 64) = v17;
    v85 = v16;
    LODWORD(v30) = v87;
    *(v29 + 72) = v16;
    *(v29 + 76) = v30;
    v31 = v91;
    *(v29 + 80) = v92;
    *(v29 + 88) = v31;
    v32 = swift_allocObject();
    v33 = v86;
    v32[2] = v5;
    v32[3] = v33;
    v34 = v95;
    v32[4] = v94;
    v32[5] = v34;
    v35 = v84;
    v32[6] = v93;
    v32[7] = v35;
    v32[8] = sub_FE28;
    v32[9] = v29;
    v87 = v25;

    v94 = v24;

    v95 = v23;

    v36 = v32;

    swift_unknownObjectRetain();

    v37 = v33;

    v38 = v35;

    v39 = [v38 database];
    v40 = swift_allocObject();
    v40[2] = sub_FE40;
    v40[3] = v36;
    aBlock[4] = sub_1008C;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_866F0;
    v41 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v42 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v39 error:aBlock block:v41];
    _Block_release(v41);

    v43 = aBlock[0];
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      __break(1u);
    }

    else
    {
      if (!v42)
      {
LABEL_22:
        sub_74898();

        swift_willThrow();
      }

      v44 = v83;
      swift_beginAccess();
      v45 = *v44;
      v46 = v81;
      swift_beginAccess();
      v47 = *v46;

      sub_E6DC(v48, v45, type metadata accessor for RingsPropertyRecordEntity.EntityWrapper, &qword_8F090, type metadata accessor for RingsPropertyRecordEntity.EntityWrapper, sub_68D04);
      v49 = *v44;
      *v44 = v50;

      v51 = v80;
      swift_beginAccess();
      v52 = *v51;
      v53 = v79;
      swift_beginAccess();
      if (!__OFADD__(*v53, v52))
      {
        *v53 += v52;
        v54 = v78;
        swift_beginAccess();
        v55 = *v54;
        v43 = v82;
        swift_beginAccess();
        *v43 = v55;
        v56 = *v46;
        *v46 = &_swiftEmptySetSingleton;

        *v51 = 0;
        *v54 = -1;
        if (*v43 == -1)
        {
LABEL_20:
        }

        ObjCClassFromMetadata = v36;
        v57 = v77;
        sub_75378();

        v58 = sub_754A8();
        v59 = sub_75738();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v97 = v61;
          *v60 = 136315394;
          *(v60 + 4) = sub_31B4(0xD000000000000019, 0x8000000000077890, &v97);
          *(v60 + 12) = 2048;
          v62 = *v44;
          v35 = v89;
          v36 = v85;
          if ((*v44 & 0xC000000000000001) != 0)
          {
            if (v62 < 0)
            {
              v63 = *v44;
            }

            v64 = *v44;

            v65 = sub_75898();
          }

          else
          {
            v65 = *(v62 + 16);
          }

          *(v60 + 14) = v65;

          _os_log_impl(&dword_0, v58, v59, "[%s] Wrapping up syncing with %ld records to send", v60, 0x16u);
          sub_3940(v61);

          (*(v74 + 8))(v77, v75);
          v43 = v82;
          v44 = v83;
        }

        else
        {

          (*(v74 + 8))(v57, v75);
          v35 = v89;
          v36 = v85;
        }

        v66 = *v44;

        v68 = sub_3B70(v67);

        if ((v68 & 0x8000000000000000) == 0 && (v68 & 0x4000000000000000) == 0)
        {
          sub_75A78();
LABEL_18:

          sub_38F8(&qword_8EB00, &qword_79B18);
          isa = sub_75678().super.isa;

          v70 = *v43;
          v97 = 0;
          v71 = [v35 sendCodableChange:isa version:v36 resultAnchor:v70 sequence:0 done:1 error:&v97];

          if (v71)
          {
            v72 = v97;
            goto LABEL_20;
          }

          v43 = v97;
          goto LABEL_22;
        }

LABEL_26:
        sub_38F8(&qword_8EB00, &qword_79B18);
        sub_759C8();

        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_8E44(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v95 = a3;
  v94 = a2;
  v10 = sub_754B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v5 respondsToSelector:"syncVersionRangeForSession:"];
  if (result)
  {
    v77 = v14;
    v74 = v11;
    v75 = v10;
    v76 = v6;
    v16 = [v5 syncVersionRangeForSession:a1];
    v87 = HIDWORD(v16);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v85 = [a1 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata] / 3;
    v93 = swift_allocObject();
    v17 = a5;
    v89 = a5;
    v86 = a1;
    *(v93 + 16) = -1;
    v18 = swift_allocObject();
    v92 = v18;
    *(v18 + 16) = &_swiftEmptySetSingleton;
    v81 = (v18 + 16);
    v19 = swift_allocObject();
    v91 = v19;
    *(v19 + 16) = -1;
    v78 = (v19 + 16);
    v20 = swift_allocObject();
    v90 = v20;
    *(v20 + 16) = 0;
    v80 = (v20 + 16);
    v21 = swift_allocObject();
    v96 = v21;
    *(v21 + 16) = &_swiftEmptySetSingleton;
    v83 = (v21 + 16);
    v22 = swift_allocObject();
    v84 = a4;
    v23 = v22;
    *(v22 + 16) = -1;
    v82 = (v22 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v79 = (v24 + 16);
    sub_38F8(&qword_8EFF8, &unk_79F38);
    v25 = swift_allocBox();
    v27 = v26;
    v28 = sub_38F8(&qword_8F000, &qword_7A5D0);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    *(v29 + 24) = v24;
    v30 = v85;
    *(v29 + 32) = v20;
    *(v29 + 40) = v30;
    *(v29 + 48) = v23;
    *(v29 + 56) = v21;
    *(v29 + 64) = v17;
    v85 = v16;
    LODWORD(v30) = v87;
    *(v29 + 72) = v16;
    *(v29 + 76) = v30;
    v31 = v91;
    *(v29 + 80) = v92;
    *(v29 + 88) = v31;
    v32 = swift_allocObject();
    v33 = v86;
    v32[2] = v5;
    v32[3] = v33;
    v34 = v95;
    v32[4] = v94;
    v32[5] = v34;
    v35 = v84;
    v32[6] = v93;
    v32[7] = v35;
    v32[8] = sub_FC2C;
    v32[9] = v29;
    v87 = v25;

    v94 = v24;

    v95 = v23;

    v36 = v32;

    swift_unknownObjectRetain();

    v37 = v33;

    v38 = v35;

    v39 = [v38 database];
    v40 = swift_allocObject();
    v40[2] = sub_FC48;
    v40[3] = v36;
    aBlock[4] = sub_FC94;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_865D8;
    v41 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v42 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v39 error:aBlock block:v41];
    _Block_release(v41);

    v43 = aBlock[0];
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      __break(1u);
    }

    else
    {
      if (!v42)
      {
LABEL_22:
        sub_74898();

        swift_willThrow();
      }

      v44 = v83;
      swift_beginAccess();
      v45 = *v44;
      v46 = v81;
      swift_beginAccess();
      v47 = *v46;

      sub_E6DC(v48, v45, type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper, &qword_8EDB8, type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper, sub_68D7C);
      v49 = *v44;
      *v44 = v50;

      v51 = v80;
      swift_beginAccess();
      v52 = *v51;
      v53 = v79;
      swift_beginAccess();
      if (!__OFADD__(*v53, v52))
      {
        *v53 += v52;
        v54 = v78;
        swift_beginAccess();
        v55 = *v54;
        v43 = v82;
        swift_beginAccess();
        *v43 = v55;
        v56 = *v46;
        *v46 = &_swiftEmptySetSingleton;

        *v51 = 0;
        *v54 = -1;
        if (*v43 == -1)
        {
LABEL_20:
        }

        ObjCClassFromMetadata = v36;
        v57 = v77;
        sub_75378();

        v58 = sub_754A8();
        v59 = sub_75738();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v97 = v61;
          *v60 = 136315394;
          *(v60 + 4) = sub_31B4(0xD00000000000001FLL, 0x8000000000077870, &v97);
          *(v60 + 12) = 2048;
          v62 = *v44;
          v35 = v89;
          v36 = v85;
          if ((*v44 & 0xC000000000000001) != 0)
          {
            if (v62 < 0)
            {
              v63 = *v44;
            }

            v64 = *v44;

            v65 = sub_75898();
          }

          else
          {
            v65 = *(v62 + 16);
          }

          *(v60 + 14) = v65;

          _os_log_impl(&dword_0, v58, v59, "[%s] Wrapping up syncing with %ld records to send", v60, 0x16u);
          sub_3940(v61);

          (*(v74 + 8))(v77, v75);
          v43 = v82;
          v44 = v83;
        }

        else
        {

          (*(v74 + 8))(v57, v75);
          v35 = v89;
          v36 = v85;
        }

        v66 = *v44;

        v68 = sub_3BC8(v67);

        if ((v68 & 0x8000000000000000) == 0 && (v68 & 0x4000000000000000) == 0)
        {
          sub_75A78();
LABEL_18:

          sub_38F8(&qword_8EB00, &qword_79B18);
          isa = sub_75678().super.isa;

          v70 = *v43;
          v97 = 0;
          v71 = [v35 sendCodableChange:isa version:v36 resultAnchor:v70 sequence:0 done:1 error:&v97];

          if (v71)
          {
            v72 = v97;
            goto LABEL_20;
          }

          v43 = v97;
          goto LABEL_22;
        }

LABEL_26:
        sub_38F8(&qword_8EB00, &qword_79B18);
        sub_759C8();

        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, int *a14, void *a15, uint64_t a16, void *a17)
{
  v191 = a5;
  v187 = a4;
  v196 = a3;
  v186 = sub_38F8(&qword_8F068, &qword_79F48);
  v17 = *(*(v186 - 1) + 64);
  v18 = __chkstk_darwin(v186);
  v179 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v182 = &v162 - v20;
  v21 = sub_38F8(&qword_8EFF8, &unk_79F38);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v183 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v180 = &v162 - v26;
  v27 = __chkstk_darwin(v25);
  v176 = &v162 - v28;
  v29 = __chkstk_darwin(v27);
  v181 = (&v162 - v30);
  v31 = __chkstk_darwin(v29);
  v185 = &v162 - v32;
  v33 = __chkstk_darwin(v31);
  v177 = &v162 - v34;
  v35 = __chkstk_darwin(v33);
  v184 = &v162 - v36;
  __chkstk_darwin(v35);
  v188 = (&v162 - v37);
  v189 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v192 = *(v189 - 8);
  v38 = v192[8];
  v39 = __chkstk_darwin(v189);
  v173 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v174 = &v162 - v42;
  __chkstk_darwin(v41);
  v193 = &v162 - v43;
  v44 = sub_754B8();
  v194 = *(v44 - 8);
  v195 = v44;
  v45 = *(v194 + 64);
  v46 = __chkstk_darwin(v44);
  v175 = &v162 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v178 = &v162 - v49;
  v50 = __chkstk_darwin(v48);
  __chkstk_darwin(v50);
  v52 = &v162 - v51;
  v53 = sub_38F8(&qword_8F0B8, &unk_79F60);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v56 = &v162 - v55;
  v57 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v58 = *(v57 - 8);
  v59 = v58[8];
  __chkstk_darwin(v57);
  v61 = &v162 - v60;
  v190 = swift_projectBox();
  v62 = type metadata accessor for WorkoutPropertyRecordEntity();
  v63 = sub_10030(&unk_8F0C0, 255, type metadata accessor for WorkoutPropertyRecordEntity);
  (*(v63 + 48))(v196, v62, v63);
  if ((v58[6])(v56, 1, v57) == 1)
  {
    sub_3D48(v56, &qword_8F0B8, &unk_79F60);
    sub_75378();
    v64 = sub_754A8();
    v65 = sub_75718();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = v191;
      _os_log_impl(&dword_0, v64, v65, "Failed to decode SnapshotContainer from row: %ld", v66, 0xCu);
    }

    (*(v194 + 8))(v52, v195);
    return 0;
  }

  (v58[4])(v61, v56, v57);
  v68 = (*(v63 + 56))(v61, v62, v63);
  v69 = [v68 encodedByteCount];
  if (v69 <= 0)
  {
    (v58[1])(v61, v57);

    return 1;
  }

  v167 = v68;
  v168 = v69;
  v164 = a13;
  v165 = a12;
  v169 = a17;
  v171 = a16;
  v196 = a10;
  v166 = a9;
  v191 = v57;
  v170 = v61;
  sub_75088();
  v70 = v190;
  swift_beginAccess();
  v71 = v188;
  sub_FCE0(v70, v188, &qword_8EFF8, &unk_79F38);
  v72 = v192 + 6;
  v73 = v192[6];
  v74 = v189;
  v75 = (v73)(v71, 1, v189);
  v76 = v71;
  v77 = v196;
  sub_3D48(v76, &qword_8EFF8, &unk_79F38);
  v172 = v58;
  if (v75 != 1)
  {
    swift_beginAccess();
    v78 = v70;
    v79 = v184;
    sub_FCE0(v193, v184, &qword_8F000, &qword_7A5D0);
    v80 = v192[7];
    v188 = v192 + 7;
    v163 = v80;
    v80(v79, 0, 1, v74);
    v81 = v186[12];
    v82 = v78;
    v83 = v182;
    sub_FCE0(v82, v182, &qword_8EFF8, &unk_79F38);
    sub_FCE0(v79, v83 + v81, &qword_8EFF8, &unk_79F38);
    if ((v73)(v83, 1, v74) == 1)
    {
      sub_3D48(v79, &qword_8EFF8, &unk_79F38);
      v84 = (v73)(v83 + v81, 1, v74);
      v77 = v196;
      v70 = v190;
      if (v84 == 1)
      {
        sub_3D48(v83, &qword_8EFF8, &unk_79F38);
        goto LABEL_21;
      }
    }

    else
    {
      v85 = v177;
      sub_FCE0(v83, v177, &qword_8EFF8, &unk_79F38);
      if ((v73)(v83 + v81, 1, v74) != 1)
      {
        v98 = v174;
        sub_FDB8(v83 + v81, v174);
        sub_74CA8();
        sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex);
        v99 = sub_75588();
        v100 = v85;
        v77 = v196;
        v70 = v190;
        if (v99)
        {
          v101 = *(v74 + 36);
          v102 = sub_75588();
          sub_3D48(v98, &qword_8F000, &qword_7A5D0);
          sub_3D48(v184, &qword_8EFF8, &unk_79F38);
          sub_3D48(v100, &qword_8F000, &qword_7A5D0);
          v74 = v189;
          sub_3D48(v182, &qword_8EFF8, &unk_79F38);
          v58 = v172;
          if (v102)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_3D48(v98, &qword_8F000, &qword_7A5D0);
          sub_3D48(v184, &qword_8EFF8, &unk_79F38);
          sub_3D48(v100, &qword_8F000, &qword_7A5D0);
          sub_3D48(v182, &qword_8EFF8, &unk_79F38);
          v58 = v172;
        }

        goto LABEL_14;
      }

      sub_3D48(v184, &qword_8EFF8, &unk_79F38);
      sub_3D48(v85, &qword_8F000, &qword_7A5D0);
      v77 = v196;
      v70 = v190;
    }

    sub_3D48(v83, &qword_8F068, &qword_79F48);
LABEL_14:
    v86 = v166;
    swift_beginAccess();
    v87 = *(v86 + 16);
    swift_beginAccess();
    v88 = *(v77 + 16);
    v89 = __OFADD__(v87, v88);
    v90 = v87 + v88;
    if (v89)
    {
      goto LABEL_56;
    }

    if (v90 > a11)
    {
      v192 = a15;
      v186 = a14;
      v91 = v178;
      sub_75378();
      v92 = v165;

      v72 = v164;

      v93 = sub_754A8();
      v94 = sub_75738();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v199[0] = v185;
        *v95 = 136315906;
        *(v95 + 4) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, v199);
        *(v95 + 12) = 2048;
        swift_beginAccess();
        *(v95 + 14) = *(v92 + 16);

        *(v95 + 22) = 2048;
        swift_beginAccess();
        v96 = v72[2];
        if ((v96 & 0xC000000000000001) != 0)
        {

          v97 = sub_75898();
        }

        else
        {
          v97 = *(v96 + 16);
        }

        v133 = v178;
        *(v95 + 24) = v97;
        v72 = v164;

        *(v95 + 32) = 2080;
        *(v95 + 34) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, v199);
        _os_log_impl(&dword_0, v93, v94, "[%s][%lld] Syncing over %ld %s", v95, 0x2Au);
        swift_arrayDestroy();

        v73 = *(v194 + 8);
        (v73)(v133, v195);
        v74 = v191;
        v58 = v172;
      }

      else
      {

        v73 = *(v194 + 8);
        (v73)(v91, v195);
        v74 = v191;
      }

      swift_beginAccess();
      v134 = v72[2];

      v136 = sub_3AA8(v135);

      if ((v136 & 0x8000000000000000) == 0 && (v136 & 0x4000000000000000) == 0)
      {
        sub_75A78();
        goto LABEL_44;
      }

      goto LABEL_58;
    }
  }

LABEL_21:
  swift_beginAccess();
  v103 = v185;
  sub_FCE0(v70, v185, &qword_8EFF8, &unk_79F38);
  v104 = (v73)(v103, 1, v74);
  sub_3D48(v103, &qword_8EFF8, &unk_79F38);
  if (v104 == 1)
  {
LABEL_22:
    swift_beginAccess();
    v105 = v180;
    sub_FCE0(v70, v180, &qword_8EFF8, &unk_79F38);
    v106 = (v73)(v105, 1, v74);
    sub_3D48(v105, &qword_8EFF8, &unk_79F38);
    v107 = v74;
    v74 = v191;
    v73 = v171;
    v58 = v172;
    v72 = v169;
    if (v106 != 1)
    {
      goto LABEL_52;
    }

    v108 = v183;
    sub_FCE0(v193, v183, &qword_8F000, &qword_7A5D0);
    (v192[7])(v108, 0, 1, v107);
    goto LABEL_51;
  }

  swift_beginAccess();
  v58 = v181;
  sub_FCE0(v193, v181, &qword_8F000, &qword_7A5D0);
  v195 = v192[7];
  v195(v58, 0, 1, v74);
  v109 = v70;
  v110 = v186[12];
  v111 = v179;
  sub_FCE0(v109, v179, &qword_8EFF8, &unk_79F38);
  sub_FCE0(v58, v111 + v110, &qword_8EFF8, &unk_79F38);
  if ((v73)(v111, 1, v74) == 1)
  {
    sub_3D48(v58, &qword_8EFF8, &unk_79F38);
    v112 = (v73)(v111 + v110, 1, v74);
    v77 = v196;
    if (v112 == 1)
    {
      sub_3D48(v111, &qword_8EFF8, &unk_79F38);
      v70 = v190;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v113 = v176;
  sub_FCE0(v111, v176, &qword_8EFF8, &unk_79F38);
  if ((v73)(v111 + v110, 1, v74) == 1)
  {
    sub_3D48(v181, &qword_8EFF8, &unk_79F38);
    sub_3D48(v113, &qword_8F000, &qword_7A5D0);
    v74 = v189;
    v77 = v196;
LABEL_29:
    sub_3D48(v111, &qword_8F068, &qword_79F48);
LABEL_30:
    v70 = v190;
    goto LABEL_31;
  }

  v127 = v173;
  sub_FDB8(v111 + v110, v173);
  sub_74CA8();
  sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex);
  v128 = sub_75588();
  v129 = v113;
  v77 = v196;
  if ((v128 & 1) == 0)
  {
    sub_3D48(v127, &qword_8F000, &qword_7A5D0);
    v58 = &qword_8EFF8;
    sub_3D48(v181, &qword_8EFF8, &unk_79F38);
    sub_3D48(v129, &qword_8F000, &qword_7A5D0);
    sub_3D48(v111, &qword_8EFF8, &unk_79F38);
    v74 = v189;
    goto LABEL_30;
  }

  v130 = v189;
  v131 = *(v189 + 36);
  v132 = sub_75588();
  sub_3D48(v127, &qword_8F000, &qword_7A5D0);
  v58 = &unk_79F38;
  sub_3D48(v181, &qword_8EFF8, &unk_79F38);
  sub_3D48(v129, &qword_8F000, &qword_7A5D0);
  v74 = v130;
  sub_3D48(v179, &qword_8EFF8, &unk_79F38);
  v70 = v190;
  if (v132)
  {
    goto LABEL_22;
  }

LABEL_31:
  v72 = v164;
  swift_beginAccess();
  v114 = v72[2];
  v73 = v171;
  swift_beginAccess();
  v115 = *(v73 + 16);

  sub_E4F0(v116, v114);
  v118 = v117;
  swift_beginAccess();
  v119 = v72[2];
  v72[2] = v118;

  swift_beginAccess();
  v120 = *(v77 + 16);
  v121 = v166;
  swift_beginAccess();
  v122 = *(v121 + 16);
  v89 = __OFADD__(v122, v120);
  v123 = v122 + v120;
  if (v89)
  {
    goto LABEL_57;
  }

  *(v121 + 16) = v123;
  v72 = v169;
  swift_beginAccess();
  v124 = v72[2];
  v125 = v165;
  swift_beginAccess();
  *(v125 + 16) = v124;
  swift_beginAccess();
  v126 = *(v73 + 16);
  *(v73 + 16) = &_swiftEmptySetSingleton;

  swift_beginAccess();
  *(v77 + 16) = 0;
  swift_beginAccess();
  v72[2] = -1;
  v108 = v183;
  sub_FCE0(v193, v183, &qword_8F000, &qword_7A5D0);
  v195(v108, 0, 1, v74);
  v74 = v191;
  v58 = v172;
LABEL_51:
  while (1)
  {
    swift_beginAccess();
    sub_FD48(v108, v70);
LABEL_52:
    swift_beginAccess();
    v157 = v167;
    sub_68CC8(v197, v157);
    swift_endAccess();

    sub_3D48(v193, &qword_8F000, &qword_7A5D0);
    v158 = v58[1];
    ++v58;
    v158(v170, v74);
    swift_beginAccess();
    v159 = *(v77 + 16);
    v89 = __OFADD__(v159, v168);
    v160 = &v168[v159];
    if (!v89)
    {
      break;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_38F8(&qword_8EB00, &qword_79B18);
    sub_759C8();

LABEL_44:

    sub_38F8(&qword_8EB00, &qword_79B18);
    isa = sub_75678().super.isa;

    v138 = v165;
    swift_beginAccess();
    v139 = *(v138 + 16);
    v198[0] = 0;
    v140 = [v186 sendCodableChange:isa version:v192 resultAnchor:v139 sequence:0 done:0 error:v198];

    if (v140)
    {
      v141 = v198[0];
    }

    else
    {
      v142 = v198[0];
      sub_74898();

      swift_willThrow();
      v143 = v175;
      sub_75378();
      swift_errorRetain();
      v144 = sub_754A8();
      v145 = sub_75718();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v198[0] = v148;
        *v146 = 136315394;
        *(v146 + 4) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, v198);
        *(v146 + 12) = 2112;
        swift_errorRetain();
        v149 = _swift_stdlib_bridgeErrorToNSError();
        *(v146 + 14) = v149;
        *v147 = v149;
        _os_log_impl(&dword_0, v144, v145, "[%s] Failed to send sync message: %@", v146, 0x16u);
        sub_3D48(v147, &unk_8EB30, &unk_7A270);

        sub_3940(v148);
        v72 = v164;
        v74 = v191;

        v150 = v175;
      }

      else
      {

        v150 = v143;
      }

      (v73)(v150, v195);
      v58 = v172;
      v138 = v165;
    }

    v73 = v171;
    swift_beginAccess();
    v151 = *(v73 + 16);
    swift_beginAccess();
    v152 = v72[2];
    v72[2] = v151;

    swift_beginAccess();
    v153 = *(v77 + 16);
    v154 = v166;
    swift_beginAccess();
    *(v154 + 16) = v153;
    v72 = v169;
    swift_beginAccess();
    v155 = v72[2];
    swift_beginAccess();
    *(v138 + 16) = v155;
    swift_beginAccess();
    v156 = *(v73 + 16);
    *(v73 + 16) = &_swiftEmptySetSingleton;

    swift_beginAccess();
    *(v77 + 16) = 0;
    swift_beginAccess();
    v72[2] = -1;
    v108 = v183;
    sub_FCE0(v193, v183, &qword_8F000, &qword_7A5D0);
    v163(v108, 0, 1, v189);
  }

  *(v77 + 16) = v160;
  v67 = 1;
  swift_beginAccess();
  v72[2] = v187;
  return v67;
}

uint64_t sub_B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, int *a14, void *a15, uint64_t a16, void *a17)
{
  v191 = a5;
  v187 = a4;
  v196 = a3;
  v186 = sub_38F8(&qword_8F068, &qword_79F48);
  v17 = *(*(v186 - 1) + 64);
  v18 = __chkstk_darwin(v186);
  v179 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v182 = &v162 - v20;
  v21 = sub_38F8(&qword_8EFF8, &unk_79F38);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v183 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v180 = &v162 - v26;
  v27 = __chkstk_darwin(v25);
  v176 = &v162 - v28;
  v29 = __chkstk_darwin(v27);
  v181 = (&v162 - v30);
  v31 = __chkstk_darwin(v29);
  v185 = &v162 - v32;
  v33 = __chkstk_darwin(v31);
  v177 = &v162 - v34;
  v35 = __chkstk_darwin(v33);
  v184 = &v162 - v36;
  __chkstk_darwin(v35);
  v188 = (&v162 - v37);
  v189 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v192 = *(v189 - 8);
  v38 = v192[8];
  v39 = __chkstk_darwin(v189);
  v173 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v174 = &v162 - v42;
  __chkstk_darwin(v41);
  v193 = &v162 - v43;
  v44 = sub_754B8();
  v194 = *(v44 - 8);
  v195 = v44;
  v45 = *(v194 + 64);
  v46 = __chkstk_darwin(v44);
  v175 = &v162 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v178 = &v162 - v49;
  v50 = __chkstk_darwin(v48);
  __chkstk_darwin(v50);
  v52 = &v162 - v51;
  v53 = sub_38F8(&qword_8F098, &qword_79F58);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v56 = &v162 - v55;
  v57 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v58 = *(v57 - 8);
  v59 = v58[8];
  __chkstk_darwin(v57);
  v61 = &v162 - v60;
  v190 = swift_projectBox();
  v62 = type metadata accessor for RingsPropertyRecordEntity();
  v63 = sub_10030(&qword_8F0A8, 255, type metadata accessor for RingsPropertyRecordEntity);
  (*(v63 + 48))(v196, v62, v63);
  if ((v58[6])(v56, 1, v57) == 1)
  {
    sub_3D48(v56, &qword_8F098, &qword_79F58);
    sub_75378();
    v64 = sub_754A8();
    v65 = sub_75718();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = v191;
      _os_log_impl(&dword_0, v64, v65, "Failed to decode SnapshotContainer from row: %ld", v66, 0xCu);
    }

    (*(v194 + 8))(v52, v195);
    return 0;
  }

  (v58[4])(v61, v56, v57);
  v68 = (*(v63 + 56))(v61, v62, v63);
  v69 = [v68 encodedByteCount];
  if (v69 <= 0)
  {
    (v58[1])(v61, v57);

    return 1;
  }

  v167 = v68;
  v168 = v69;
  v164 = a13;
  v165 = a12;
  v169 = a17;
  v171 = a16;
  v196 = a10;
  v166 = a9;
  v191 = v57;
  v170 = v61;
  sub_75088();
  v70 = v190;
  swift_beginAccess();
  v71 = v188;
  sub_FCE0(v70, v188, &qword_8EFF8, &unk_79F38);
  v72 = v192 + 6;
  v73 = v192[6];
  v74 = v189;
  v75 = (v73)(v71, 1, v189);
  v76 = v71;
  v77 = v196;
  sub_3D48(v76, &qword_8EFF8, &unk_79F38);
  v172 = v58;
  if (v75 != 1)
  {
    swift_beginAccess();
    v78 = v70;
    v79 = v184;
    sub_FCE0(v193, v184, &qword_8F000, &qword_7A5D0);
    v80 = v192[7];
    v188 = v192 + 7;
    v163 = v80;
    v80(v79, 0, 1, v74);
    v81 = v186[12];
    v82 = v78;
    v83 = v182;
    sub_FCE0(v82, v182, &qword_8EFF8, &unk_79F38);
    sub_FCE0(v79, v83 + v81, &qword_8EFF8, &unk_79F38);
    if ((v73)(v83, 1, v74) == 1)
    {
      sub_3D48(v79, &qword_8EFF8, &unk_79F38);
      v84 = (v73)(v83 + v81, 1, v74);
      v77 = v196;
      v70 = v190;
      if (v84 == 1)
      {
        sub_3D48(v83, &qword_8EFF8, &unk_79F38);
        goto LABEL_21;
      }
    }

    else
    {
      v85 = v177;
      sub_FCE0(v83, v177, &qword_8EFF8, &unk_79F38);
      if ((v73)(v83 + v81, 1, v74) != 1)
      {
        v98 = v174;
        sub_FDB8(v83 + v81, v174);
        sub_74CA8();
        sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex);
        v99 = sub_75588();
        v100 = v85;
        v77 = v196;
        v70 = v190;
        if (v99)
        {
          v101 = *(v74 + 36);
          v102 = sub_75588();
          sub_3D48(v98, &qword_8F000, &qword_7A5D0);
          sub_3D48(v184, &qword_8EFF8, &unk_79F38);
          sub_3D48(v100, &qword_8F000, &qword_7A5D0);
          v74 = v189;
          sub_3D48(v182, &qword_8EFF8, &unk_79F38);
          v58 = v172;
          if (v102)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_3D48(v98, &qword_8F000, &qword_7A5D0);
          sub_3D48(v184, &qword_8EFF8, &unk_79F38);
          sub_3D48(v100, &qword_8F000, &qword_7A5D0);
          sub_3D48(v182, &qword_8EFF8, &unk_79F38);
          v58 = v172;
        }

        goto LABEL_14;
      }

      sub_3D48(v184, &qword_8EFF8, &unk_79F38);
      sub_3D48(v85, &qword_8F000, &qword_7A5D0);
      v77 = v196;
      v70 = v190;
    }

    sub_3D48(v83, &qword_8F068, &qword_79F48);
LABEL_14:
    v86 = v166;
    swift_beginAccess();
    v87 = *(v86 + 16);
    swift_beginAccess();
    v88 = *(v77 + 16);
    v89 = __OFADD__(v87, v88);
    v90 = v87 + v88;
    if (v89)
    {
      goto LABEL_56;
    }

    if (v90 > a11)
    {
      v192 = a15;
      v186 = a14;
      v91 = v178;
      sub_75378();
      v92 = v165;

      v72 = v164;

      v93 = sub_754A8();
      v94 = sub_75738();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v199[0] = v185;
        *v95 = 136315906;
        *(v95 + 4) = sub_31B4(0xD000000000000019, 0x8000000000077890, v199);
        *(v95 + 12) = 2048;
        swift_beginAccess();
        *(v95 + 14) = *(v92 + 16);

        *(v95 + 22) = 2048;
        swift_beginAccess();
        v96 = v72[2];
        if ((v96 & 0xC000000000000001) != 0)
        {

          v97 = sub_75898();
        }

        else
        {
          v97 = *(v96 + 16);
        }

        v133 = v178;
        *(v95 + 24) = v97;
        v72 = v164;

        *(v95 + 32) = 2080;
        *(v95 + 34) = sub_31B4(0xD000000000000019, 0x8000000000077890, v199);
        _os_log_impl(&dword_0, v93, v94, "[%s][%lld] Syncing over %ld %s", v95, 0x2Au);
        swift_arrayDestroy();

        v73 = *(v194 + 8);
        (v73)(v133, v195);
        v74 = v191;
        v58 = v172;
      }

      else
      {

        v73 = *(v194 + 8);
        (v73)(v91, v195);
        v74 = v191;
      }

      swift_beginAccess();
      v134 = v72[2];

      v136 = sub_3B70(v135);

      if ((v136 & 0x8000000000000000) == 0 && (v136 & 0x4000000000000000) == 0)
      {
        sub_75A78();
        goto LABEL_44;
      }

      goto LABEL_58;
    }
  }

LABEL_21:
  swift_beginAccess();
  v103 = v185;
  sub_FCE0(v70, v185, &qword_8EFF8, &unk_79F38);
  v104 = (v73)(v103, 1, v74);
  sub_3D48(v103, &qword_8EFF8, &unk_79F38);
  if (v104 == 1)
  {
LABEL_22:
    swift_beginAccess();
    v105 = v180;
    sub_FCE0(v70, v180, &qword_8EFF8, &unk_79F38);
    v106 = (v73)(v105, 1, v74);
    sub_3D48(v105, &qword_8EFF8, &unk_79F38);
    v107 = v74;
    v74 = v191;
    v73 = v171;
    v58 = v172;
    v72 = v169;
    if (v106 != 1)
    {
      goto LABEL_52;
    }

    v108 = v183;
    sub_FCE0(v193, v183, &qword_8F000, &qword_7A5D0);
    (v192[7])(v108, 0, 1, v107);
    goto LABEL_51;
  }

  swift_beginAccess();
  v58 = v181;
  sub_FCE0(v193, v181, &qword_8F000, &qword_7A5D0);
  v195 = v192[7];
  v195(v58, 0, 1, v74);
  v109 = v70;
  v110 = v186[12];
  v111 = v179;
  sub_FCE0(v109, v179, &qword_8EFF8, &unk_79F38);
  sub_FCE0(v58, v111 + v110, &qword_8EFF8, &unk_79F38);
  if ((v73)(v111, 1, v74) == 1)
  {
    sub_3D48(v58, &qword_8EFF8, &unk_79F38);
    v112 = (v73)(v111 + v110, 1, v74);
    v77 = v196;
    if (v112 == 1)
    {
      sub_3D48(v111, &qword_8EFF8, &unk_79F38);
      v70 = v190;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v113 = v176;
  sub_FCE0(v111, v176, &qword_8EFF8, &unk_79F38);
  if ((v73)(v111 + v110, 1, v74) == 1)
  {
    sub_3D48(v181, &qword_8EFF8, &unk_79F38);
    sub_3D48(v113, &qword_8F000, &qword_7A5D0);
    v74 = v189;
    v77 = v196;
LABEL_29:
    sub_3D48(v111, &qword_8F068, &qword_79F48);
LABEL_30:
    v70 = v190;
    goto LABEL_31;
  }

  v127 = v173;
  sub_FDB8(v111 + v110, v173);
  sub_74CA8();
  sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex);
  v128 = sub_75588();
  v129 = v113;
  v77 = v196;
  if ((v128 & 1) == 0)
  {
    sub_3D48(v127, &qword_8F000, &qword_7A5D0);
    v58 = &qword_8EFF8;
    sub_3D48(v181, &qword_8EFF8, &unk_79F38);
    sub_3D48(v129, &qword_8F000, &qword_7A5D0);
    sub_3D48(v111, &qword_8EFF8, &unk_79F38);
    v74 = v189;
    goto LABEL_30;
  }

  v130 = v189;
  v131 = *(v189 + 36);
  v132 = sub_75588();
  sub_3D48(v127, &qword_8F000, &qword_7A5D0);
  v58 = &unk_79F38;
  sub_3D48(v181, &qword_8EFF8, &unk_79F38);
  sub_3D48(v129, &qword_8F000, &qword_7A5D0);
  v74 = v130;
  sub_3D48(v179, &qword_8EFF8, &unk_79F38);
  v70 = v190;
  if (v132)
  {
    goto LABEL_22;
  }

LABEL_31:
  v72 = v164;
  swift_beginAccess();
  v114 = v72[2];
  v73 = v171;
  swift_beginAccess();
  v115 = *(v73 + 16);

  sub_E6DC(v116, v114, type metadata accessor for RingsPropertyRecordEntity.EntityWrapper, &qword_8F090, type metadata accessor for RingsPropertyRecordEntity.EntityWrapper, sub_68D04);
  v118 = v117;
  swift_beginAccess();
  v119 = v72[2];
  v72[2] = v118;

  swift_beginAccess();
  v120 = *(v77 + 16);
  v121 = v166;
  swift_beginAccess();
  v122 = *(v121 + 16);
  v89 = __OFADD__(v122, v120);
  v123 = v122 + v120;
  if (v89)
  {
    goto LABEL_57;
  }

  *(v121 + 16) = v123;
  v72 = v169;
  swift_beginAccess();
  v124 = v72[2];
  v125 = v165;
  swift_beginAccess();
  *(v125 + 16) = v124;
  swift_beginAccess();
  v126 = *(v73 + 16);
  *(v73 + 16) = &_swiftEmptySetSingleton;

  swift_beginAccess();
  *(v77 + 16) = 0;
  swift_beginAccess();
  v72[2] = -1;
  v108 = v183;
  sub_FCE0(v193, v183, &qword_8F000, &qword_7A5D0);
  v195(v108, 0, 1, v74);
  v74 = v191;
  v58 = v172;
LABEL_51:
  while (1)
  {
    swift_beginAccess();
    sub_FD48(v108, v70);
LABEL_52:
    swift_beginAccess();
    v157 = v167;
    sub_68D04(v197, v157);
    swift_endAccess();

    sub_3D48(v193, &qword_8F000, &qword_7A5D0);
    v158 = v58[1];
    ++v58;
    v158(v170, v74);
    swift_beginAccess();
    v159 = *(v77 + 16);
    v89 = __OFADD__(v159, v168);
    v160 = &v168[v159];
    if (!v89)
    {
      break;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_38F8(&qword_8EB00, &qword_79B18);
    sub_759C8();

LABEL_44:

    sub_38F8(&qword_8EB00, &qword_79B18);
    isa = sub_75678().super.isa;

    v138 = v165;
    swift_beginAccess();
    v139 = *(v138 + 16);
    v198[0] = 0;
    v140 = [v186 sendCodableChange:isa version:v192 resultAnchor:v139 sequence:0 done:0 error:v198];

    if (v140)
    {
      v141 = v198[0];
    }

    else
    {
      v142 = v198[0];
      sub_74898();

      swift_willThrow();
      v143 = v175;
      sub_75378();
      swift_errorRetain();
      v144 = sub_754A8();
      v145 = sub_75718();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v198[0] = v148;
        *v146 = 136315394;
        *(v146 + 4) = sub_31B4(0xD000000000000019, 0x8000000000077890, v198);
        *(v146 + 12) = 2112;
        swift_errorRetain();
        v149 = _swift_stdlib_bridgeErrorToNSError();
        *(v146 + 14) = v149;
        *v147 = v149;
        _os_log_impl(&dword_0, v144, v145, "[%s] Failed to send sync message: %@", v146, 0x16u);
        sub_3D48(v147, &unk_8EB30, &unk_7A270);

        sub_3940(v148);
        v72 = v164;
        v74 = v191;

        v150 = v175;
      }

      else
      {

        v150 = v143;
      }

      (v73)(v150, v195);
      v58 = v172;
      v138 = v165;
    }

    v73 = v171;
    swift_beginAccess();
    v151 = *(v73 + 16);
    swift_beginAccess();
    v152 = v72[2];
    v72[2] = v151;

    swift_beginAccess();
    v153 = *(v77 + 16);
    v154 = v166;
    swift_beginAccess();
    *(v154 + 16) = v153;
    v72 = v169;
    swift_beginAccess();
    v155 = v72[2];
    swift_beginAccess();
    *(v138 + 16) = v155;
    swift_beginAccess();
    v156 = *(v73 + 16);
    *(v73 + 16) = &_swiftEmptySetSingleton;

    swift_beginAccess();
    *(v77 + 16) = 0;
    swift_beginAccess();
    v72[2] = -1;
    v108 = v183;
    sub_FCE0(v193, v183, &qword_8F000, &qword_7A5D0);
    v163(v108, 0, 1, v189);
  }

  *(v77 + 16) = v160;
  v67 = 1;
  swift_beginAccess();
  v72[2] = v187;
  return v67;
}

uint64_t sub_CBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, int *a14, void *a15, uint64_t a16, void *a17)
{
  v191 = a5;
  v187 = a4;
  v196 = a3;
  v186 = sub_38F8(&qword_8F068, &qword_79F48);
  v17 = *(*(v186 - 1) + 64);
  v18 = __chkstk_darwin(v186);
  v179 = &v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v182 = &v162 - v20;
  v21 = sub_38F8(&qword_8EFF8, &unk_79F38);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v183 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v180 = &v162 - v26;
  v27 = __chkstk_darwin(v25);
  v176 = &v162 - v28;
  v29 = __chkstk_darwin(v27);
  v181 = (&v162 - v30);
  v31 = __chkstk_darwin(v29);
  v185 = &v162 - v32;
  v33 = __chkstk_darwin(v31);
  v177 = &v162 - v34;
  v35 = __chkstk_darwin(v33);
  v184 = &v162 - v36;
  __chkstk_darwin(v35);
  v188 = (&v162 - v37);
  v189 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v192 = *(v189 - 8);
  v38 = v192[8];
  v39 = __chkstk_darwin(v189);
  v173 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v174 = &v162 - v42;
  __chkstk_darwin(v41);
  v193 = &v162 - v43;
  v44 = sub_754B8();
  v194 = *(v44 - 8);
  v195 = v44;
  v45 = *(v194 + 64);
  v46 = __chkstk_darwin(v44);
  v175 = &v162 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v178 = &v162 - v49;
  v50 = __chkstk_darwin(v48);
  __chkstk_darwin(v50);
  v52 = &v162 - v51;
  v53 = sub_38F8(&unk_8F070, &qword_79F50);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8);
  v56 = &v162 - v55;
  v57 = sub_38F8(&unk_8FD00, &qword_7A260);
  v58 = *(v57 - 8);
  v59 = v58[8];
  __chkstk_darwin(v57);
  v61 = &v162 - v60;
  v190 = swift_projectBox();
  v62 = type metadata accessor for FitnessPlusPropertyRecordEntity();
  v63 = sub_10030(&qword_8F080, 255, type metadata accessor for FitnessPlusPropertyRecordEntity);
  (*(v63 + 48))(v196, v62, v63);
  if ((v58[6])(v56, 1, v57) == 1)
  {
    sub_3D48(v56, &unk_8F070, &qword_79F50);
    sub_75378();
    v64 = sub_754A8();
    v65 = sub_75718();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = v191;
      _os_log_impl(&dword_0, v64, v65, "Failed to decode SnapshotContainer from row: %ld", v66, 0xCu);
    }

    (*(v194 + 8))(v52, v195);
    return 0;
  }

  (v58[4])(v61, v56, v57);
  v68 = (*(v63 + 56))(v61, v62, v63);
  v69 = [v68 encodedByteCount];
  if (v69 <= 0)
  {
    (v58[1])(v61, v57);

    return 1;
  }

  v167 = v68;
  v168 = v69;
  v164 = a13;
  v165 = a12;
  v169 = a17;
  v171 = a16;
  v196 = a10;
  v166 = a9;
  v191 = v57;
  v170 = v61;
  sub_75088();
  v70 = v190;
  swift_beginAccess();
  v71 = v188;
  sub_FCE0(v70, v188, &qword_8EFF8, &unk_79F38);
  v72 = v192 + 6;
  v73 = v192[6];
  v74 = v189;
  v75 = (v73)(v71, 1, v189);
  v76 = v71;
  v77 = v196;
  sub_3D48(v76, &qword_8EFF8, &unk_79F38);
  v172 = v58;
  if (v75 != 1)
  {
    swift_beginAccess();
    v78 = v70;
    v79 = v184;
    sub_FCE0(v193, v184, &qword_8F000, &qword_7A5D0);
    v80 = v192[7];
    v188 = v192 + 7;
    v163 = v80;
    v80(v79, 0, 1, v74);
    v81 = v186[12];
    v82 = v78;
    v83 = v182;
    sub_FCE0(v82, v182, &qword_8EFF8, &unk_79F38);
    sub_FCE0(v79, v83 + v81, &qword_8EFF8, &unk_79F38);
    if ((v73)(v83, 1, v74) == 1)
    {
      sub_3D48(v79, &qword_8EFF8, &unk_79F38);
      v84 = (v73)(v83 + v81, 1, v74);
      v77 = v196;
      v70 = v190;
      if (v84 == 1)
      {
        sub_3D48(v83, &qword_8EFF8, &unk_79F38);
        goto LABEL_21;
      }
    }

    else
    {
      v85 = v177;
      sub_FCE0(v83, v177, &qword_8EFF8, &unk_79F38);
      if ((v73)(v83 + v81, 1, v74) != 1)
      {
        v98 = v174;
        sub_FDB8(v83 + v81, v174);
        sub_74CA8();
        sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex);
        v99 = sub_75588();
        v100 = v85;
        v77 = v196;
        v70 = v190;
        if (v99)
        {
          v101 = *(v74 + 36);
          v102 = sub_75588();
          sub_3D48(v98, &qword_8F000, &qword_7A5D0);
          sub_3D48(v184, &qword_8EFF8, &unk_79F38);
          sub_3D48(v100, &qword_8F000, &qword_7A5D0);
          v74 = v189;
          sub_3D48(v182, &qword_8EFF8, &unk_79F38);
          v58 = v172;
          if (v102)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_3D48(v98, &qword_8F000, &qword_7A5D0);
          sub_3D48(v184, &qword_8EFF8, &unk_79F38);
          sub_3D48(v100, &qword_8F000, &qword_7A5D0);
          sub_3D48(v182, &qword_8EFF8, &unk_79F38);
          v58 = v172;
        }

        goto LABEL_14;
      }

      sub_3D48(v184, &qword_8EFF8, &unk_79F38);
      sub_3D48(v85, &qword_8F000, &qword_7A5D0);
      v77 = v196;
      v70 = v190;
    }

    sub_3D48(v83, &qword_8F068, &qword_79F48);
LABEL_14:
    v86 = v166;
    swift_beginAccess();
    v87 = *(v86 + 16);
    swift_beginAccess();
    v88 = *(v77 + 16);
    v89 = __OFADD__(v87, v88);
    v90 = v87 + v88;
    if (v89)
    {
      goto LABEL_56;
    }

    if (v90 > a11)
    {
      v192 = a15;
      v186 = a14;
      v91 = v178;
      sub_75378();
      v92 = v165;

      v72 = v164;

      v93 = sub_754A8();
      v94 = sub_75738();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v199[0] = v185;
        *v95 = 136315906;
        *(v95 + 4) = sub_31B4(0xD00000000000001FLL, 0x8000000000077870, v199);
        *(v95 + 12) = 2048;
        swift_beginAccess();
        *(v95 + 14) = *(v92 + 16);

        *(v95 + 22) = 2048;
        swift_beginAccess();
        v96 = v72[2];
        if ((v96 & 0xC000000000000001) != 0)
        {

          v97 = sub_75898();
        }

        else
        {
          v97 = *(v96 + 16);
        }

        v133 = v178;
        *(v95 + 24) = v97;
        v72 = v164;

        *(v95 + 32) = 2080;
        *(v95 + 34) = sub_31B4(0xD00000000000001FLL, 0x8000000000077870, v199);
        _os_log_impl(&dword_0, v93, v94, "[%s][%lld] Syncing over %ld %s", v95, 0x2Au);
        swift_arrayDestroy();

        v73 = *(v194 + 8);
        (v73)(v133, v195);
        v74 = v191;
        v58 = v172;
      }

      else
      {

        v73 = *(v194 + 8);
        (v73)(v91, v195);
        v74 = v191;
      }

      swift_beginAccess();
      v134 = v72[2];

      v136 = sub_3BC8(v135);

      if ((v136 & 0x8000000000000000) == 0 && (v136 & 0x4000000000000000) == 0)
      {
        sub_75A78();
        goto LABEL_44;
      }

      goto LABEL_58;
    }
  }

LABEL_21:
  swift_beginAccess();
  v103 = v185;
  sub_FCE0(v70, v185, &qword_8EFF8, &unk_79F38);
  v104 = (v73)(v103, 1, v74);
  sub_3D48(v103, &qword_8EFF8, &unk_79F38);
  if (v104 == 1)
  {
LABEL_22:
    swift_beginAccess();
    v105 = v180;
    sub_FCE0(v70, v180, &qword_8EFF8, &unk_79F38);
    v106 = (v73)(v105, 1, v74);
    sub_3D48(v105, &qword_8EFF8, &unk_79F38);
    v107 = v74;
    v74 = v191;
    v73 = v171;
    v58 = v172;
    v72 = v169;
    if (v106 != 1)
    {
      goto LABEL_52;
    }

    v108 = v183;
    sub_FCE0(v193, v183, &qword_8F000, &qword_7A5D0);
    (v192[7])(v108, 0, 1, v107);
    goto LABEL_51;
  }

  swift_beginAccess();
  v58 = v181;
  sub_FCE0(v193, v181, &qword_8F000, &qword_7A5D0);
  v195 = v192[7];
  v195(v58, 0, 1, v74);
  v109 = v70;
  v110 = v186[12];
  v111 = v179;
  sub_FCE0(v109, v179, &qword_8EFF8, &unk_79F38);
  sub_FCE0(v58, v111 + v110, &qword_8EFF8, &unk_79F38);
  if ((v73)(v111, 1, v74) == 1)
  {
    sub_3D48(v58, &qword_8EFF8, &unk_79F38);
    v112 = (v73)(v111 + v110, 1, v74);
    v77 = v196;
    if (v112 == 1)
    {
      sub_3D48(v111, &qword_8EFF8, &unk_79F38);
      v70 = v190;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v113 = v176;
  sub_FCE0(v111, v176, &qword_8EFF8, &unk_79F38);
  if ((v73)(v111 + v110, 1, v74) == 1)
  {
    sub_3D48(v181, &qword_8EFF8, &unk_79F38);
    sub_3D48(v113, &qword_8F000, &qword_7A5D0);
    v74 = v189;
    v77 = v196;
LABEL_29:
    sub_3D48(v111, &qword_8F068, &qword_79F48);
LABEL_30:
    v70 = v190;
    goto LABEL_31;
  }

  v127 = v173;
  sub_FDB8(v111 + v110, v173);
  sub_74CA8();
  sub_10030(&qword_8F088, 255, &type metadata accessor for CacheIndex);
  v128 = sub_75588();
  v129 = v113;
  v77 = v196;
  if ((v128 & 1) == 0)
  {
    sub_3D48(v127, &qword_8F000, &qword_7A5D0);
    v58 = &qword_8EFF8;
    sub_3D48(v181, &qword_8EFF8, &unk_79F38);
    sub_3D48(v129, &qword_8F000, &qword_7A5D0);
    sub_3D48(v111, &qword_8EFF8, &unk_79F38);
    v74 = v189;
    goto LABEL_30;
  }

  v130 = v189;
  v131 = *(v189 + 36);
  v132 = sub_75588();
  sub_3D48(v127, &qword_8F000, &qword_7A5D0);
  v58 = &unk_79F38;
  sub_3D48(v181, &qword_8EFF8, &unk_79F38);
  sub_3D48(v129, &qword_8F000, &qword_7A5D0);
  v74 = v130;
  sub_3D48(v179, &qword_8EFF8, &unk_79F38);
  v70 = v190;
  if (v132)
  {
    goto LABEL_22;
  }

LABEL_31:
  v72 = v164;
  swift_beginAccess();
  v114 = v72[2];
  v73 = v171;
  swift_beginAccess();
  v115 = *(v73 + 16);

  sub_E6DC(v116, v114, type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper, &qword_8EDB8, type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper, sub_68D7C);
  v118 = v117;
  swift_beginAccess();
  v119 = v72[2];
  v72[2] = v118;

  swift_beginAccess();
  v120 = *(v77 + 16);
  v121 = v166;
  swift_beginAccess();
  v122 = *(v121 + 16);
  v89 = __OFADD__(v122, v120);
  v123 = v122 + v120;
  if (v89)
  {
    goto LABEL_57;
  }

  *(v121 + 16) = v123;
  v72 = v169;
  swift_beginAccess();
  v124 = v72[2];
  v125 = v165;
  swift_beginAccess();
  *(v125 + 16) = v124;
  swift_beginAccess();
  v126 = *(v73 + 16);
  *(v73 + 16) = &_swiftEmptySetSingleton;

  swift_beginAccess();
  *(v77 + 16) = 0;
  swift_beginAccess();
  v72[2] = -1;
  v108 = v183;
  sub_FCE0(v193, v183, &qword_8F000, &qword_7A5D0);
  v195(v108, 0, 1, v74);
  v74 = v191;
  v58 = v172;
LABEL_51:
  while (1)
  {
    swift_beginAccess();
    sub_FD48(v108, v70);
LABEL_52:
    swift_beginAccess();
    v157 = v167;
    sub_68D7C(v197, v157);
    swift_endAccess();

    sub_3D48(v193, &qword_8F000, &qword_7A5D0);
    v158 = v58[1];
    ++v58;
    v158(v170, v74);
    swift_beginAccess();
    v159 = *(v77 + 16);
    v89 = __OFADD__(v159, v168);
    v160 = &v168[v159];
    if (!v89)
    {
      break;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_38F8(&qword_8EB00, &qword_79B18);
    sub_759C8();

LABEL_44:

    sub_38F8(&qword_8EB00, &qword_79B18);
    isa = sub_75678().super.isa;

    v138 = v165;
    swift_beginAccess();
    v139 = *(v138 + 16);
    v198[0] = 0;
    v140 = [v186 sendCodableChange:isa version:v192 resultAnchor:v139 sequence:0 done:0 error:v198];

    if (v140)
    {
      v141 = v198[0];
    }

    else
    {
      v142 = v198[0];
      sub_74898();

      swift_willThrow();
      v143 = v175;
      sub_75378();
      swift_errorRetain();
      v144 = sub_754A8();
      v145 = sub_75718();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v198[0] = v148;
        *v146 = 136315394;
        *(v146 + 4) = sub_31B4(0xD00000000000001FLL, 0x8000000000077870, v198);
        *(v146 + 12) = 2112;
        swift_errorRetain();
        v149 = _swift_stdlib_bridgeErrorToNSError();
        *(v146 + 14) = v149;
        *v147 = v149;
        _os_log_impl(&dword_0, v144, v145, "[%s] Failed to send sync message: %@", v146, 0x16u);
        sub_3D48(v147, &unk_8EB30, &unk_7A270);

        sub_3940(v148);
        v72 = v164;
        v74 = v191;

        v150 = v175;
      }

      else
      {

        v150 = v143;
      }

      (v73)(v150, v195);
      v58 = v172;
      v138 = v165;
    }

    v73 = v171;
    swift_beginAccess();
    v151 = *(v73 + 16);
    swift_beginAccess();
    v152 = v72[2];
    v72[2] = v151;

    swift_beginAccess();
    v153 = *(v77 + 16);
    v154 = v166;
    swift_beginAccess();
    *(v154 + 16) = v153;
    v72 = v169;
    swift_beginAccess();
    v155 = v72[2];
    swift_beginAccess();
    *(v138 + 16) = v155;
    swift_beginAccess();
    v156 = *(v73 + 16);
    *(v73 + 16) = &_swiftEmptySetSingleton;

    swift_beginAccess();
    *(v77 + 16) = 0;
    swift_beginAccess();
    v72[2] = -1;
    v108 = v183;
    sub_FCE0(v193, v183, &qword_8F000, &qword_7A5D0);
    v163(v108, 0, 1, v189);
  }

  *(v77 + 16) = v160;
  v67 = 1;
  swift_beginAccess();
  v72[2] = v187;
  return v67;
}

void sub_E4F0(unint64_t a1, void *a2)
{
  v2 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_75888();
    _s13EntityWrapperCMa();
    sub_10030(&qword_8F0B0, v3, _s13EntityWrapperCMa);
    sub_756F8();
    v2 = v16[2];
    v4 = v16[3];
    v5 = v16[4];
    v6 = v16[5];
    v7 = v16[6];
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_3CB4();
      return;
    }

    while (1)
    {
      sub_68CC8(v16, v15);

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_758B8())
      {
        _s13EntityWrapperCMa();
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v6;
        v14 = v7;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = v4[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_E6DC(unint64_t a1, void *a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), void (*a6)(id *))
{
  v8 = a1;
  v23[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_75888();
    a3(0);
    sub_10030(a4, 255, a5);
    sub_756F8();
    v8 = v23[2];
    v11 = v23[3];
    v12 = v23[4];
    v13 = v23[5];
    v14 = v23[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_3CB4();
      return;
    }

    while (1)
    {
      a6(v23);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_758B8())
      {
        a3(0);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_E8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void), uint64_t a12, uint64_t a13, uint64_t a14)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v16 = sub_754B8();
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  __chkstk_darwin(v16);
  v36 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a7 + 16;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = a11();
  sub_462C(v21);

  isa = sub_75678().super.isa;

  v23 = [a8 database];
  v24 = swift_allocObject();
  *(v24 + 16) = a9;
  *(v24 + 24) = a10;
  aBlock[4] = a13;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_778C;
  aBlock[3] = a14;
  v25 = _Block_copy(aBlock);

  swift_beginAccess();
  v42 = 0;
  v26 = [ObjCClassFromMetadata enumerateEntitiesForSyncWithProperties:isa predicate:0 session:v39 syncAnchorRange:v40 limit:v41 lastSyncAnchor:0 healthDatabase:v19 error:v23 block:{&v42, v25}];
  v27 = v42;
  swift_endAccess();
  v28 = v27;
  _Block_release(v25);

  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  if ((v26 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
    v29 = v36;
    sub_75378();
    swift_errorRetain();
    v30 = sub_754A8();
    v31 = sub_75728();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&dword_0, v30, v31, "Error while enumerating entities for sync: %@", v32, 0xCu);
      sub_3D48(v33, &unk_8EB30, &unk_7A270);
    }

    else
    {
    }

    (*(v37 + 8))(v29, v38);
  }

  return v26;
}

id sub_ECA8(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_ED08@<X0>(uint64_t a1@<X8>)
{
  sub_752E8();
  sub_10030(&qword_8EFF0, 255, &type metadata accessor for WorkoutPropertyDimensionsField);
  v2 = sub_756B8();

  return sub_6ADA8(v2, a1);
}

id sub_EDA0()
{
  sub_38F8(&qword_8EFE0, &qword_79F30);
  sub_FB7C();
  result = sub_74F78();
  v3 = result;
  if (!v0)
  {
    v4 = v2;
    v5 = _s13EntityWrapperCMa();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
    *v7 = v3;
    *(v7 + 1) = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, "init");
  }

  return result;
}

id sub_F124()
{
  v2.receiver = v0;
  v2.super_class = _s13EntityWrapperCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static WorkoutPropertyRecordEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:4 schemaIdentifier:v1];

  return v2;
}

uint64_t static WorkoutPropertyRecordEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = v5;
  v32 = a1;
  v12 = sub_754B8();
  v30 = *(v12 - 8);
  v31 = v12;
  v13 = *(v30 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  v16 = sub_754A8();
  v17 = sub_75738();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v6;
    v19 = v18;
    v26 = v18;
    v27 = swift_slowAlloc();
    v28 = v7;
    v34 = v27;
    *v19 = 136315138;
    v33 = sub_38F8(&qword_8EF40, &qword_79EF0);
    sub_38F8(&qword_8EF48, &qword_79EF8);
    v20 = sub_755B8();
    v22 = a4;
    v23 = sub_31B4(v20, v21, &v34);

    v24 = v26;
    *(v26 + 4) = v23;
    a4 = v22;
    _os_log_impl(&dword_0, v16, v17, "Generate sync objects for %s", v24, 0xCu);
    sub_3940(v27);
  }

  (*(v30 + 8))(v15, v31);
  return sub_7858(v32, a2, a3, a4, a5);
}

id static WorkoutPropertyRecordEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = _s13EntityWrapperCMa();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
  *v6 = a1;
  v6[1] = a2;
  sub_398C(a1, a2);
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t _s25FitnessIntelligencePlugin27WorkoutPropertyRecordEntityC18receiveSyncObjects_7version9syncStore7profile5errorSo013HDSyncReceiveJ6ResultVSaySo0P7Codable_pG_So0P12VersionRangeaSo0pM0_pSo9HDProfileCSAySo7NSErrorCSgGSgtFZ_0(unint64_t a1)
{
  v2 = sub_754B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  swift_bridgeObjectRetain_n();
  v7 = sub_754A8();
  v8 = sub_75738();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    v16 = sub_38F8(&qword_8EF40, &qword_79EF0);
    sub_38F8(&qword_8EF48, &qword_79EF8);
    v11 = sub_755B8();
    v13 = sub_31B4(v11, v12, &v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    if (a1 >> 62)
    {
      v14 = sub_759D8();
    }

    else
    {
      v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v9 + 14) = v14;

    _os_log_impl(&dword_0, v7, v8, "Received synced %s entities, count: %ld", v9, 0x16u);
    sub_3940(v10);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_FACC(uint64_t a1)
{
  result = sub_10030(&qword_8EFA8, 255, type metadata accessor for WorkoutPropertyRecordEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_FB28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_FB7C()
{
  result = qword_8EFE8;
  if (!qword_8EFE8)
  {
    sub_76D0(&qword_8EFE0, &qword_79F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8EFE8);
  }

  return result;
}

uint64_t sub_FBF0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FC9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_FCB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_FCE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_38F8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_FD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8EFF8, &unk_79F38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_FDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FE7C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];
  swift_unknownObjectRelease();
  v7 = v0[10];

  v8 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void))
{
  v9 = *(v8 + 24);
  v10 = *(v8 + 56);
  return a8(a1, a2, a3, a4, a5, a6, a7, *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88)) & 1;
}

uint64_t sub_FF54()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10030(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100D4(unint64_t a1, void *a2)
{
  v118 = a2;
  v98 = sub_754B8();
  v3 = *(v98 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v98);
  p_aBlock = (&v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v94 = &v90 - v8;
  v9 = sub_38F8(&qword_8EB18, &qword_7A950);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v90 - v11;
  v13 = sub_751D8();
  v119 = *(v13 - 1);
  v14 = *(v119 + 64);
  v15 = __chkstk_darwin(v13);
  v107 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v124 = &v90 - v17;
  __chkstk_darwin(v16);
  v117 = &v90 - v18;
  v19 = sub_654FC(a1);
  if (v19)
  {
    v20 = v19;
    if (v19 >> 62)
    {
      goto LABEL_54;
    }

    if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
    {
      do
      {
        v91 = v20;
        aBlock = v20;
        sub_38F8(&qword_8F168, &unk_79FB0);
        sub_11788();
        p_aBlock = &aBlock;
        v21 = sub_75648();
        v92 = 0;
        v23 = 0;
        v25 = v21 + 64;
        v24 = *(v21 + 64);
        v99 = v21;
        v26 = 1 << *(v21 + 32);
        v27 = -1;
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        v28 = v27 & v24;
        v29 = (v26 + 63) >> 6;
        v114 = (v119 + 48);
        v123 = (v119 + 32);
        v116 = v119 + 16;
        v104 = v14 + 7;
        v115 = &v127;
        v102 = (v119 + 8);
        v20 = &v124;
        v93 = (v3 + 1);
        *&v22 = 136315394;
        v90 = v22;
        v95 = v29;
        v103 = v12;
        v96 = v21 + 64;
        while (v28)
        {
LABEL_14:
          v100 = v28;
          v101 = v23;
          v31 = (v23 << 9) | (8 * __clz(__rbit64(v28)));
          v32 = *(v99 + 56);
          v121 = *(*(v99 + 48) + v31);
          v33 = *(v32 + v31);
          v97 = v33 >> 62;
          if (v33 >> 62)
          {
            v14 = sub_759D8();
          }

          else
          {
            v14 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
          }

          v122 = v33;
          if (v14)
          {
            v34 = 0;
            p_aBlock = (v33 & 0xC000000000000001);
            v3 = (v33 & 0xFFFFFFFFFFFFFF8);
            v35 = _swiftEmptyArrayStorage;
            while (1)
            {
              if (p_aBlock)
              {
                v36 = sub_75928();
              }

              else
              {
                if (v34 >= v3[2])
                {
                  goto LABEL_50;
                }

                v36 = *(v33 + 8 * v34 + 32);
              }

              v37 = v36;
              v38 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              sub_117EC(*&v36[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_entity] + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry, v12);

              if ((*v114)(v12, 1, v13) == 1)
              {
                sub_3D48(v12, &qword_8EB18, &qword_7A950);
              }

              else
              {
                v39 = *v123;
                (*v123)(v117, v12, v13);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v35 = sub_675F4(0, v35[2] + 1, 1, v35);
                }

                v40 = v35;
                v41 = v35[2];
                v42 = v40;
                v43 = v40[3];
                if (v41 >= v43 >> 1)
                {
                  v42 = sub_675F4(v43 > 1, v41 + 1, 1, v42);
                }

                v42[2] = v41 + 1;
                v44 = v42 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v41;
                v35 = v42;
                v39(v44, v117, v13);
                v33 = v122;
              }

              ++v34;
              if (v38 == v14)
              {
                goto LABEL_32;
              }
            }

            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v35 = _swiftEmptyArrayStorage;
LABEL_32:
          v120 = type metadata accessor for PropertyRecordCheckpointEntity();
          v106 = v35[2];
          if (v106)
          {
            v14 = 0;
            v105 = v35;
            while (v14 < v35[2])
            {
              v45 = v119;
              v46 = *(v119 + 80);
              v47 = *(v119 + 72);
              v108 = v14;
              v48 = v35 + ((v46 + 32) & ~v46) + v47 * v14;
              v49 = *(v119 + 16);
              v50 = v124;
              v49(v124, v48, v13);
              v51 = v49;
              v110 = v49;
              v52 = v118;
              v53 = [v118 syncIdentityManager];
              v54 = [v53 currentSyncIdentity];

              v55 = [v54 entity];
              v56 = [v55 persistentID];

              v111 = [objc_opt_self() contextForWritingProtectedData];
              v113 = [v52 database];
              v57 = v107;
              v51(v107, v50, v13);
              v58 = (v46 + 24) & ~v46;
              v59 = (v104 + v58) & 0xFFFFFFFFFFFFFFF8;
              v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
              v3 = swift_allocObject();
              v3[2] = v120;
              v109 = *(v45 + 32);
              v109(v3 + v58, v57, v13);
              *(v3 + v59) = v121;
              *(v3 + v60) = v56;
              v61 = swift_allocObject();
              *(v61 + 16) = sub_118F8;
              *(v61 + 24) = v3;
              v129 = sub_FC94;
              v130 = v61;
              aBlock = _NSConcreteStackBlock;
              v126 = 1107296256;
              v127 = sub_2BB8;
              v128 = &unk_868D0;
              v112 = _Block_copy(&aBlock);
              v111 = v111;

              v110(v57, v124, v13);
              v12 = swift_allocObject();
              *(v12 + 2) = v120;
              v62 = &v12[v58];
              p_aBlock = v13;
              v109(v62, v57, v13);
              *&v12[v59] = v121;
              v63 = v118;
              *&v12[v60] = v118;
              v64 = swift_allocObject();
              *(v64 + 16) = sub_119DC;
              *(v64 + 24) = v12;
              v129 = sub_11AC4;
              v130 = v64;
              aBlock = _NSConcreteStackBlock;
              v126 = 1107296256;
              v127 = sub_65494;
              v128 = &unk_86948;
              v65 = _Block_copy(&aBlock);
              v14 = v63;

              aBlock = 0;
              v66 = v113;
              v13 = v111;
              v67 = v112;
              v68 = [v113 performTransactionWithContext:v111 error:&aBlock block:v112 inaccessibilityHandler:v65];
              _Block_release(v65);
              _Block_release(v67);

              v69 = aBlock;
              LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

              if (v67)
              {
                goto LABEL_52;
              }

              if (!v68)
              {
                sub_74898();

                swift_willThrow();

                v13 = p_aBlock;
                (*v102)(v124, p_aBlock);
                v70 = v94;
                sub_75378();
                swift_errorRetain();
                v71 = sub_754A8();
                v72 = sub_75718();

                if (os_log_type_enabled(v71, v72))
                {
                  v73 = swift_slowAlloc();
                  v74 = swift_slowAlloc();
                  v75 = swift_slowAlloc();
                  aBlock = v75;
                  *v73 = v90;
                  v76 = sub_75B18();
                  v78 = sub_31B4(v76, v77, &aBlock);

                  *(v73 + 4) = v78;
                  *(v73 + 12) = 2112;
                  swift_errorRetain();
                  v79 = _swift_stdlib_bridgeErrorToNSError();
                  *(v73 + 14) = v79;
                  *v74 = v79;
                  _os_log_impl(&dword_0, v71, v72, "Failed to apply %s: %@", v73, 0x16u);
                  sub_3D48(v74, &unk_8EB30, &unk_7A270);

                  sub_3940(v75);

                  (*v93)(v94, v98);
                }

                else
                {

                  (*v93)(v70, v98);
                }

                v12 = v103;
                v80 = [v14 database];
                if (v97)
                {
                  v3 = HDJournalEntry_ptr;
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);

                  sub_759C8();
                }

                else
                {

                  sub_75A78();
                  v3 = HDJournalEntry_ptr;
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                }

                sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                p_aBlock = sub_75678().super.isa;

                aBlock = 0;
                v81 = [v80 addJournalEntries:p_aBlock error:&aBlock];

                if (v81)
                {
                  v82 = aBlock;

                  v92 = 0;
                  goto LABEL_8;
                }

                v89 = aBlock;
                sub_74898();

                swift_willThrow();
                aBlock = 0;
                v126 = 0xE000000000000000;
                sub_75908(38);
                v131._object = 0x80000000000779F0;
                v131._countAndFlagsBits = 0xD000000000000024;
                sub_75608(v131);
                swift_getErrorValue();
                sub_75A48();
                result = sub_759B8();
                __break(1u);
                return result;
              }

              v14 = v108 + 1;

              v13 = p_aBlock;
              (*v102)(v124, p_aBlock);
              v12 = v103;
              v35 = v105;
              if (v106 == v14)
              {
                goto LABEL_7;
              }
            }

LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_7:

LABEL_8:
          v14 = (v100 - 1) & v100;

          v28 = v14;
          v25 = v96;
          v23 = v101;
          v29 = v95;
        }

        while (1)
        {
          v30 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v30 >= v29)
          {
          }

          v28 = *(v25 + 8 * v30);
          ++v23;
          if (v28)
          {
            v23 = v30;
            goto LABEL_14;
          }
        }

LABEL_53:
        __break(1u);
LABEL_54:
        v84 = v20;
        v85 = sub_759D8();
        v20 = v84;
      }

      while (v85);
    }
  }

  sub_75378();
  v86 = sub_754A8();
  v87 = sub_75718();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_0, v86, v87, "Applying journal entries, but none found. Skipping.", v88, 2u);
  }

  return (v3[1])(p_aBlock, v98);
}

void *sub_1103C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_provenance);
  *(a2 + 8) = 0;
  return result;
}

id sub_110F0(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_38F8(&qword_8EB18, &qword_7A950);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  sub_7688(0, &qword_8EF00, NSData_ptr);
  v13 = sub_757E8();
  if (v13 && (v39 = xmmword_79F70, v14 = v13, sub_748B8(), v14, v15 = *(&v39 + 1), *(&v39 + 1) >> 60 != 15))
  {
    v26 = v39;
    v27 = sub_75598();
    v28 = a1;
    v29 = [a1 decodeInt64ForKey:v27];

    v30 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper();
    v31 = objc_allocWithZone(v30);
    v32 = sub_751D8();
    sub_398C(v26, v15);
    sub_398C(v26, v15);
    sub_39E0();
    sub_74F88();
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    sub_3A38(v12, &v31[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry]);
    v33 = &v31[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
    *v33 = v26;
    v33[1] = v15;
    v38.receiver = v31;
    v38.super_class = v30;
    *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_entity] = objc_msgSendSuper2(&v38, "init");
    *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_provenance] = v29;
    v34 = type metadata accessor for PropertyRecordCheckpointJournalEntry();
    v37.receiver = v2;
    v37.super_class = v34;
    v35 = objc_msgSendSuper2(&v37, "init");
    sub_11774(v26, v15);

    return v35;
  }

  else
  {
    sub_75378();
    v16 = sub_754A8();
    v17 = sub_75718();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v39 = v19;
      *v18 = 136315138;
      v20 = sub_75B18();
      v22 = sub_31B4(v20, v21, &v39);
      v36 = v2;
      v23 = a1;
      v24 = v22;

      *(v18 + 4) = v24;
      _os_log_impl(&dword_0, v16, v17, "Failed to decode %s journal entry: missing entity data", v18, 0xCu);
      sub_3940(v19);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    type metadata accessor for PropertyRecordCheckpointJournalEntry();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

void sub_11538(void *a1)
{
  v3 = (*(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_entity) + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = v3[1];
  }

  sub_11760(*v3, v4);
  isa = sub_748A8().super.isa;
  sub_FB28(v5, v6);
  v8 = sub_75598();
  [a1 encodeObject:isa forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_provenance);
  v10 = sub_75598();
  [a1 encodeInt64:v9 forKey:v10];
}

id sub_116F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PropertyRecordCheckpointJournalEntry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11760(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_398C(a1, a2);
  }

  return a1;
}

uint64_t sub_11774(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_FB28(a1, a2);
  }

  return a1;
}

unint64_t sub_11788()
{
  result = qword_8F170;
  if (!qword_8F170)
  {
    sub_76D0(&qword_8F168, &unk_79FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F170);
  }

  return result;
}

uint64_t sub_117EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8EB18, &qword_7A950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1185C()
{
  v1 = sub_751D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_11920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_11938()
{
  v1 = sub_751D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_119F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_751D8() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + 16);
  v10 = *(v3 + v8);
  v11 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v9, v3 + v7, v10, v11);
}

uint64_t sub_11AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_38F8(&unk_8FA00, &qword_7A740);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_75598();
  v7 = HDSQLiteColumnWithNameAsData();

  if (!v7)
  {
    goto LABEL_4;
  }

  sub_748C8();

  v8 = sub_74D78();
  sub_11CF4();
  sub_74F88();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v5, 0, 1, v8);
  if ((*(v9 + 48))(v5, 1, v8))
  {
    sub_11D4C(v5);
LABEL_4:
    v11 = sub_74D78();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  (*(v9 + 32))(a1, v5, v8);
  return (v10)(a1, 0, 1, v8);
}

unint64_t sub_11CF4()
{
  result = qword_8F178;
  if (!qword_8F178)
  {
    sub_74D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F178);
  }

  return result;
}

uint64_t sub_11D4C(uint64_t a1)
{
  v2 = sub_38F8(&unk_8FA00, &qword_7A740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_11DB4(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_11E14(unsigned __int8 a1)
{
  v2 = sub_12FE0();
  v3 = sub_11EB8(a1);
  v5 = v4;
  v6 = v2[2];
  if (v6)
  {
    v7 = v3;
    v8 = 0;
    v9 = v2 + 5;
    while (1)
    {
      v10 = *(v9 - 1) == v7 && *v9 == v5;
      if (v10 || (sub_75A68() & 1) != 0)
      {
        break;
      }

      ++v8;
      v9 += 2;
      if (v6 == v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v8 = -1;
  }

  return v8;
}

uint64_t sub_11EB8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x4164657461657263;
    v7 = 0x766F7250636E7973;
    if (a1 != 10)
    {
      v7 = 0x6E656449636E7973;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x79747265706F7270;
    v9 = 0x79747265706F7270;
    if (a1 != 7)
    {
      v9 = 0x6E6F6973726576;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4449574F52;
    v2 = 0x59664F68746E6F6DLL;
    v3 = 0x656557664F796164;
    if (a1 != 4)
    {
      v3 = 0x646573756170;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6361437472617473;
    if (a1 != 1)
    {
      v4 = 0x6568636143646E65;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1207C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_11EB8(*a1);
  v5 = v4;
  if (v3 == sub_11EB8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_75A68();
  }

  return v8 & 1;
}

Swift::Int sub_12104()
{
  v1 = *v0;
  sub_75AE8();
  sub_11EB8(v1);
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_12168()
{
  sub_11EB8(*v0);
  sub_755E8();
}

Swift::Int sub_121BC()
{
  v1 = *v0;
  sub_75AE8();
  sub_11EB8(v1);
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_1221C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1330C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1224C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_11EB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_125F0()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79FC0;
  v1 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v2 = sub_75598();
  v3 = sub_75598();
  v4 = [v1 initWithName:v2 columnType:v3 keyPathType:3];

  *(v0 + 32) = v4;
  v5 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v6 = sub_75598();
  v7 = sub_75598();
  v8 = [v5 initWithName:v6 columnType:v7 keyPathType:3];

  *(v0 + 40) = v8;
  v9 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v10 = sub_75598();
  v11 = sub_75598();
  v12 = [v9 initWithName:v10 columnType:v11 keyPathType:3];

  *(v0 + 48) = v12;
  v13 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v14 = sub_75598();
  v15 = sub_75598();
  v16 = [v13 initWithName:v14 columnType:v15 keyPathType:4];

  *(v0 + 56) = v16;
  v17 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v18 = sub_75598();
  v19 = sub_75598();
  v20 = [v17 initWithName:v18 columnType:v19 keyPathType:4];

  *(v0 + 64) = v20;
  v21 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v22 = sub_75598();
  v23 = sub_75598();
  v24 = [v21 initWithName:v22 columnType:v23 keyPathType:3];

  *(v0 + 72) = v24;
  v25 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v26 = sub_75598();
  v27 = sub_75598();
  v28 = [v25 initWithName:v26 columnType:v27 keyPathType:4];

  *(v0 + 80) = v28;
  v29 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v30 = sub_75598();
  v31 = sub_75598();
  v32 = [v29 initWithName:v30 columnType:v31 keyPathType:4];

  *(v0 + 88) = v32;
  v33 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v34 = sub_75598();
  v35 = sub_75598();
  v36 = [v33 initWithName:v34 columnType:v35 keyPathType:3];

  *(v0 + 96) = v36;
  v37 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v38 = sub_75598();
  v39 = sub_75598();
  v40 = [v37 initWithName:v38 columnType:v39 keyPathType:1];

  *(v0 + 104) = v40;
  v41 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v42 = sub_75598();
  v43 = sub_75598();
  v44 = [v41 initWithName:v42 columnType:v43 keyPathType:3];

  *(v0 + 112) = v44;
  v45 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v46 = sub_75598();
  v47 = sub_75598();
  v48 = [v45 initWithName:v46 columnType:v47 keyPathType:3];

  *(v0 + 120) = v48;
  qword_90008 = v0;
}

uint64_t static RingsPropertyRecordEntity.indices(with:)()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79FD0;
  v1 = objc_allocWithZone(HDSQLiteEntityIndex);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_75598();
  isa = sub_75678().super.isa;
  v5 = [v1 initWithEntity:ObjCClassFromMetadata name:v3 columns:isa];

  *(v0 + 32) = v5;
  return v0;
}

id PropertyRecordCheckpointEntity.__allocating_init(persistentID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPersistentID:a1];
}

id RingsPropertyRecordEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RingsPropertyRecordEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id RingsPropertyRecordEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RingsPropertyRecordEntity();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_12FA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_12FE0()
{
  sub_67C58(0, 11, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_85760 + v0 + 32);
    if (v2 > 5)
    {
      v9 = 0xE900000000000074;
      v10 = 0x6E656449636E7973;
      if (v2 == 10)
      {
        v10 = 0x766F7250636E7973;
      }

      v11 = 0xEC00000079746974;
      if (v2 == 10)
      {
        v11 = 0xEE0065636E616E65;
      }

      if (v2 == 9)
      {
        v10 = 0x4164657461657263;
      }

      else
      {
        v9 = v11;
      }

      if (v2 == 7)
      {
        v12 = 0x79747265706F7270;
      }

      else
      {
        v12 = 0x6E6F6973726576;
      }

      v13 = 0xEC00000061746144;
      if (v2 != 7)
      {
        v13 = 0xE700000000000000;
      }

      if (v2 == 6)
      {
        v12 = 0x79747265706F7270;
        v13 = 0xEC000000646E694BLL;
      }

      if (*(&off_85760 + v0 + 32) <= 8u)
      {
        v7 = v12;
      }

      else
      {
        v7 = v10;
      }

      if (*(&off_85760 + v0 + 32) <= 8u)
      {
        v8 = v13;
      }

      else
      {
        v8 = v9;
      }
    }

    else
    {
      if (v2 == 4)
      {
        v3 = 0x656557664F796164;
      }

      else
      {
        v3 = 0x646573756170;
      }

      if (v2 == 4)
      {
        v4 = 0xE90000000000006BLL;
      }

      else
      {
        v4 = 0xE600000000000000;
      }

      if (v2 == 3)
      {
        v3 = 0x59664F68746E6F6DLL;
        v4 = 0xEB00000000726165;
      }

      if (v2 == 1)
      {
        v5 = 0x6361437472617473;
      }

      else
      {
        v5 = 0x6568636143646E65;
      }

      if (v2 == 1)
      {
        v6 = 0xEF7865646E496568;
      }

      else
      {
        v6 = 0xED00007865646E49;
      }

      if (!*(&off_85760 + v0 + 32))
      {
        v5 = 0x4449574F52;
        v6 = 0xE500000000000000;
      }

      if (*(&off_85760 + v0 + 32) <= 2u)
      {
        v7 = v5;
      }

      else
      {
        v7 = v3;
      }

      if (*(&off_85760 + v0 + 32) <= 2u)
      {
        v8 = v6;
      }

      else
      {
        v8 = v4;
      }
    }

    v17 = result;
    v15 = result[2];
    v14 = result[3];
    if (v15 >= v14 >> 1)
    {
      sub_67C58((v14 > 1), v15 + 1, 1);
      result = v17;
    }

    ++v0;
    result[2] = v15 + 1;
    v16 = &result[2 * v15];
    v16[4] = v7;
    v16[5] = v8;
  }

  while (v0 != 11);
  return result;
}

uint64_t sub_1330C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_85958;
  v6._object = a2;
  v4 = sub_75A18(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

char *_s25FitnessIntelligencePlugin25RingsPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD00000000000002ELL;
  v22._object = 0x8000000000077A20;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8E9E8 != -1)
  {
    swift_once();
  }

  v0 = qword_90008;
  if (qword_90008 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90008 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  result = sub_67C58(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = sub_75928();
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 name];
      v7 = sub_755A8();
      v9 = v8;

      v20 = v7;
      v21 = v9;
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      sub_75608(v24);
      v10 = [v5 columnType];
      v11 = sub_755A8();
      v13 = v12;

      v25._countAndFlagsBits = v11;
      v25._object = v13;
      sub_75608(v25);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_67C58((v14 > 1), v15 + 1, 1);
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v20;
      v16[5] = v21;
    }

    while (v1 != v3);
LABEL_14:
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
    v17 = sub_75538();
    v19 = v18;

    v26._countAndFlagsBits = v17;
    v26._object = v19;
    sub_75608(v26);

    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    sub_75608(v27);
    return 0xD00000000000001BLL;
  }

  __break(1u);
  return result;
}

uint64_t sub_13634(void *a1)
{
  if (qword_8E9E8 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = qword_90008;
  v3 = qword_90008 >> 62;
  if (qword_90008 >> 62)
  {
    if (qword_90008 < 0)
    {
      v1 = qword_90008;
    }

    else
    {
      v1 = qword_90008 & 0xFFFFFFFFFFFFFF8;
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90008 & 0xFFFFFFFFFFFFFF8));
    *a1 = v4;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = swift_slowAlloc();
  if (v3)
  {
    sub_759D8();
    v6 = sub_759D8();

    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_3AD4(v2);

    goto LABEL_9;
  }

  v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));

LABEL_9:
  sub_7688(0, &qword_8FB90, HDSQLiteEntityColumnDefinitionObject_ptr);
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t getEnumTagSinglePayload for RingsPropertyRecordEntity.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RingsPropertyRecordEntity.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1398C()
{
  result = qword_8F250;
  if (!qword_8F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F250);
  }

  return result;
}

unint64_t sub_139E0(uint64_t a1)
{
  *(a1 + 8) = sub_13A10();
  result = sub_13A64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_13A10()
{
  result = qword_8F258;
  if (!qword_8F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F258);
  }

  return result;
}

unint64_t sub_13A64()
{
  result = qword_8F260;
  if (!qword_8F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F260);
  }

  return result;
}

unint64_t sub_13AB8(uint64_t a1)
{
  result = sub_13AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_13AE0()
{
  result = qword_8F268;
  if (!qword_8F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F268);
  }

  return result;
}

uint64_t sub_13B34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_754B8();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin(v3);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75188();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_74CA8();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  v11 = __chkstk_darwin(v9);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = &v38 - v13;
  v14 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = sub_38F8(&qword_8F098, &qword_79F58);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v38 - v23;
  v25 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v38 - v28;
  sub_1411C(a1, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_3D48(v24, &qword_8F098, &qword_79F58);
    v33 = 1;
    v34 = v45;
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
    v30 = sub_75098();
    v32 = v31;
    sub_75278();
    sub_FB28(v30, v32);
    sub_75088();
    v37 = *(v38 + 16);
    v37(v44, v20, v9);
    sub_3D48(v20, &qword_8F000, &qword_7A5D0);
    sub_75088();
    v37(v39, &v18[*(v14 + 36)], v9);
    sub_3D48(v18, &qword_8F000, &qword_7A5D0);
    sub_75058();
    sub_5978(v47, v46);
    v34 = v45;
    sub_74ED8();
    sub_3940(v47);
    (*(v26 + 8))(v29, v25);
    v33 = 0;
  }

  v35 = sub_74EE8();
  return (*(*(v35 - 8) + 56))(v34, v33, 1, v35);
}

uint64_t sub_1411C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v103 = sub_754B8();
  v4 = *(v103 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v103);
  v7 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_38F8(&qword_8F288, &qword_7A128);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v95 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = v84 - v12;
  v101 = sub_74CA8();
  v93 = *(v101 - 8);
  v13 = *(v93 + 64);
  v14 = __chkstk_darwin(v101);
  v100 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v99 = v84 - v16;
  v88 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v17 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v90 = v84 - v18;
  v94 = sub_75188();
  v91 = *(v94 - 8);
  v19 = *(v91 + 64);
  v20 = __chkstk_darwin(v94);
  v89 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v104 = v84 - v22;
  v23 = sub_38F8(&qword_8F290, &qword_7A130);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v105 = v84 - v28;
  v29 = sub_75288();
  v30 = *(v29 - 8);
  v31 = v30[8];
  __chkstk_darwin(v29);
  v33 = v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_38F8(&qword_8F298, &qword_7A138);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v98 = v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v106 = v84 - v38;
  sub_11E14(1u);
  v97 = HDSQLiteColumnAsInt64();
  sub_11E14(2u);
  v96 = HDSQLiteColumnAsInt64();
  sub_11E14(8u);
  v87 = HDSQLiteColumnAsInt64();
  sub_11E14(7u);
  v39 = HDSQLiteColumnAsData();
  if (!v39)
  {

LABEL_16:
    sub_75378();
    v67 = sub_754A8();
    v68 = sub_75718();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "Failed to initialize RingsPropertyRecord from row: no propertyData", v69, 2u);
    }

    (*(v4 + 8))(v7, v103);
    v70 = 1;
    goto LABEL_24;
  }

  v85 = v27;
  v40 = a2;
  v102 = a1;
  v86 = v8;
  v41 = v39;
  v42 = sub_748C8();
  v44 = v43;

  sub_11E14(6u);
  v45 = HDSQLiteColumnAsString();
  if (!v45)
  {

    sub_FB28(v42, v44);
    a2 = v40;
    goto LABEL_16;
  }

  v46 = v45;
  v84[3] = v42;
  v84[4] = v44;
  v103 = v40;
  v84[2] = sub_755A8();
  v84[1] = v47;

  v48 = v30[13];
  v48(v33, enum case for RingsPropertyDimensionsField.monthOfYear(_:), v29);
  v49 = v102;
  v50 = sub_56628(v33, v102);
  v51 = v30[1];
  v51(v33, v29);
  if (v50 && (sub_11E14(3u), (v52 = HDSQLiteColumnAsString()) != 0))
  {
    v53 = v52;
    sub_755A8();

    v49 = v102;
    sub_74CF8();
  }

  else
  {
    v54 = sub_74D08();
    (*(*(v54 - 8) + 56))(v106, 1, 1, v54);
  }

  v48(v33, enum case for RingsPropertyDimensionsField.dayOfWeek(_:), v29);
  v55 = sub_56628(v33, v49);
  v51(v33, v29);
  v56 = v86;
  if (v55 && (sub_11E14(4u), (v57 = HDSQLiteColumnAsString()) != 0))
  {
    v58 = v57;
    sub_755A8();

    v49 = v102;
    v56 = v86;
    sub_753C8();
  }

  else
  {
    v59 = sub_753D8();
    (*(*(v59 - 8) + 56))(v105, 1, 1, v59);
  }

  v48(v33, enum case for RingsPropertyDimensionsField.paused(_:), v29);
  v60 = sub_56628(v33, v49);

  v51(v33, v29);
  v61 = v56;
  if (v60)
  {
    sub_11E14(5u);
    IsNull = HDSQLiteColumnIsNull();
    v64 = v100;
    v63 = v101;
    v65 = v99;
    v66 = v106;
    if ((IsNull & 1) == 0)
    {
      sub_11E14(5u);
      HDSQLiteColumnAsInt64();
    }

    v71 = v105;
  }

  else
  {
    v71 = v105;
    v64 = v100;
    v63 = v101;
    v65 = v99;
    v66 = v106;
  }

  sub_FCE0(v66, v98, &qword_8F298, &qword_7A138);
  sub_FCE0(v71, v85, &qword_8F290, &qword_7A130);
  sub_75148();
  sub_74CB8();
  sub_74CB8();
  sub_14CD0(&qword_8F2A0, &type metadata accessor for CacheIndex);
  result = sub_75568();
  if (result)
  {
    v74 = v92;
    v73 = v93;
    v75 = *(v93 + 32);
    v75(v92, v65, v63);
    v75((v74 + *(v61 + 48)), v64, v63);
    v76 = v95;
    sub_FCE0(v74, v95, &qword_8F288, &qword_7A128);
    v77 = *(v61 + 48);
    v78 = v90;
    v75(v90, v76, v63);
    v79 = *(v73 + 8);
    v79(v76 + v77, v63);
    sub_14C60(v74, v76);
    v75(&v78[*(v88 + 36)], (v76 + *(v61 + 48)), v63);
    v79(v76, v63);
    v80 = v91;
    v81 = v104;
    v82 = v94;
    (*(v91 + 16))(v89, v104, v94);
    sub_74EE8();
    sub_14CD0(&qword_8F2A8, &type metadata accessor for RingsPropertyRecord);
    a2 = v103;
    sub_75078();
    (*(v80 + 8))(v81, v82);
    sub_3D48(v105, &qword_8F290, &qword_7A130);
    sub_3D48(v106, &qword_8F298, &qword_7A138);
    v70 = 0;
LABEL_24:
    v83 = sub_38F8(&qword_8F0A0, &qword_79EC8);
    return (*(*(v83 - 8) + 56))(a2, v70, 1, v83);
  }

  __break(1u);
  return result;
}

uint64_t sub_14C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F288, &qword_7A128);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_14CD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_14D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_14DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DatabaseChecksum()
{
  result = qword_8F308;
  if (!qword_8F308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14E80()
{
  sub_14EF4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_14EF4()
{
  if (!qword_8F318)
  {
    sub_74CA8();
    sub_14F58();
    v0 = sub_75578();
    if (!v1)
    {
      atomic_store(v0, &qword_8F318);
    }
  }
}

unint64_t sub_14F58()
{
  result = qword_8F2A0;
  if (!qword_8F2A0)
  {
    sub_74CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F2A0);
  }

  return result;
}

uint64_t sub_15090()
{
  v0 = sub_754B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  v5 = sub_754A8();
  v6 = sub_75738();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = 6;
    _os_log_impl(&dword_0, v5, v6, "No-op unprotected database migration to v%ld", v7, 0xCu);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_151D8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = a2;
  v12 = a3;
  v13 = v10(v11, v12, a4, a5);

  return v13;
}

id sub_15270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v2", _s25FitnessIntelligencePlugin30InferenceRecordContainerEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 2);
}

id sub_152E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v3", _s25FitnessIntelligencePlugin27WorkoutPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 3);
}

id sub_15360(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v4", _s25FitnessIntelligencePlugin30PropertyRecordCheckpointEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 4);
}

id sub_153D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v5", _s25FitnessIntelligencePlugin25RingsPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 5);
}

id sub_15450(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  return sub_154C8(a1, a2, a3, a4, "Starting migration to v6", _s25FitnessIntelligencePlugin0A24PlusPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0, 6);
}

id sub_154C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5, void (*a6)(void), uint64_t a7)
{
  v37[0] = a7;
  v10 = sub_754B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v37 - v16;
  sub_75378();
  v18 = sub_754A8();
  v19 = sub_75738();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, a5, v20, 2u);
  }

  v21 = *(v11 + 8);
  v21(v17, v10);
  v22 = [a2 protectedDatabase];
  if (v22)
  {
    v23 = v22;
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    a6();
    v27 = v26;

    if (v27)
    {
      v28 = sub_75598();

      v38 = 0;
      v29 = [v23 executeSQL:v28 error:&v38 bindingHandler:0 enumerationHandler:0];

      if (v29)
      {
        v30 = v38;

        return 0;
      }

      v31 = v38;
      sub_74898();

      swift_willThrow();
      sub_75378();
      swift_errorRetain();
      v32 = sub_754A8();
      v33 = sub_75718();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 134218242;
        *(v34 + 4) = v37[0];
        *(v34 + 12) = 2112;
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v36;
        *v35 = v36;
        _os_log_impl(&dword_0, v32, v33, "Failed to run migration to %ld: %@", v34, 0x16u);
        sub_16B00(v35);
      }

      else
      {
      }

      v21(v15, v10);
    }

    else
    {
    }
  }

  return &dword_0 + 1;
}

uint64_t sub_15868(uint64_t a1, void *a2)
{
  v3 = sub_754B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v37[-v9];
  sub_75378();
  v11 = sub_754A8();
  v12 = sub_75738();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Starting migration to v7", v13, 2u);
  }

  v14 = *(v4 + 8);
  v14(v10, v3);
  v15 = [a2 protectedDatabase];
  if (v15)
  {
    v16 = v15;
    v17 = sub_75598();
    v38 = 0;
    v18 = [v16 executeSQL:v17 error:&v38 bindingHandler:0 enumerationHandler:0];

    v19 = v38;
    if (v18)
    {
      v20 = v38;
      v21 = sub_75598();
      v38 = 0;
      v22 = [v16 executeSQL:v21 error:&v38 bindingHandler:0 enumerationHandler:0];

      v19 = v38;
      if (v22)
      {
        v23 = v38;
        v24 = sub_75598();
        v38 = 0;
        v25 = [v16 executeSQL:v24 error:&v38 bindingHandler:0 enumerationHandler:0];

        v19 = v38;
        if (v25)
        {
          v26 = v38;
          v27 = sub_75598();
          v38 = 0;
          v28 = [v16 executeSQL:v27 error:&v38 bindingHandler:0 enumerationHandler:0];

          v19 = v38;
          if (v28)
          {
            v29 = v38;

            return 0;
          }
        }
      }
    }

    v31 = v19;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v32 = sub_754A8();
    v33 = sub_75718();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 134218242;
      *(v34 + 4) = 7;
      *(v34 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v36;
      *v35 = v36;
      _os_log_impl(&dword_0, v32, v33, "Failed to run migration to %ld: %@", v34, 0x16u);
      sub_16B00(v35);
    }

    else
    {
    }

    v14(v8, v3);
  }

  return 1;
}

uint64_t sub_15CB4(uint64_t a1, void *a2)
{
  v3 = sub_754B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v56 - v9;
  sub_75378();
  v11 = sub_754A8();
  v12 = sub_75738();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Starting migration to v8", v13, 2u);
  }

  v16 = *(v4 + 8);
  v15 = v4 + 8;
  v14 = v16;
  v16(v10, v3);
  v17 = [a2 protectedDatabase];
  if (v17)
  {
    v18 = v17;
    v19 = sub_75598();
    v57 = 0;
    v20 = [v18 executeSQL:v19 error:&v57 bindingHandler:0 enumerationHandler:0];

    v21 = v57;
    if (v20)
    {
      v22 = v57;
      v23 = sub_75598();
      v57 = 0;
      v24 = [v18 executeSQL:v23 error:&v57 bindingHandler:0 enumerationHandler:0];

      v21 = v57;
      if (v24)
      {
        v25 = v57;
        v26 = sub_75598();
        v57 = 0;
        v27 = [v18 executeSQL:v26 error:&v57 bindingHandler:0 enumerationHandler:0];

        v21 = v57;
        if (v27)
        {
          v28 = v57;
          v29 = sub_75598();
          v57 = 0;
          v30 = [v18 executeSQL:v29 error:&v57 bindingHandler:0 enumerationHandler:0];

          v21 = v57;
          if (v30)
          {
            v31 = v57;
            v32 = sub_75598();
            v57 = 0;
            v33 = [v18 executeSQL:v32 error:&v57 bindingHandler:0 enumerationHandler:0];

            v21 = v57;
            if (v33)
            {
              v34 = v57;
              v35 = sub_75598();
              v57 = 0;
              v36 = [v18 executeSQL:v35 error:&v57 bindingHandler:0 enumerationHandler:0];

              v21 = v57;
              if (v36)
              {
                v37 = v57;
                v38 = sub_75598();
                v57 = 0;
                v39 = [v18 executeSQL:v38 error:&v57 bindingHandler:0 enumerationHandler:0];

                v21 = v57;
                if (v39)
                {
                  v40 = v57;
                  v41 = sub_75598();
                  v57 = 0;
                  v42 = [v18 executeSQL:v41 error:&v57 bindingHandler:0 enumerationHandler:0];

                  v21 = v57;
                  if (v42)
                  {
                    v43 = v57;

                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }

    v45 = v21;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v46 = sub_754A8();
    v47 = sub_75718();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v56[0] = v15;
      v50 = v18;
      v51 = v8;
      v52 = v3;
      v53 = v14;
      v54 = v49;
      *v48 = 134218242;
      *(v48 + 4) = 8;
      *(v48 + 12) = 2112;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 14) = v55;
      *v54 = v55;
      _os_log_impl(&dword_0, v46, v47, "Failed to run migration to %ld: %@", v48, 0x16u);
      sub_16B00(v54);

      v53(v51, v52);
    }

    else
    {

      v14(v8, v3);
    }
  }

  return 1;
}

uint64_t sub_16270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75378();
  v11 = sub_754A8();
  v12 = sub_75738();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a5, v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  return 0;
}

id DatabaseSchemaProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseSchemaProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id DatabaseSchemaProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseSchemaProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s25FitnessIntelligencePluginAAC22registerMigrationSteps3for8migratorySo29HDSQLiteEntityProtectionClassV_So18HDDatabaseMigratorCtF_0(uint64_t a1, void *a2)
{
  v4 = sub_75598();
  if (a1 == 2)
  {
    v25 = sub_15264;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86AA0;
    v5 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v4 toVersion:1 foreignKeyStatus:0 handler:v5];
    _Block_release(v5);

    v6 = sub_75598();
    v25 = sub_15270;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86AC8;
    v7 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v6 toVersion:2 foreignKeyStatus:0 handler:v7];
    _Block_release(v7);

    v8 = sub_75598();
    v25 = sub_152E8;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86AF0;
    v9 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v8 toVersion:3 foreignKeyStatus:0 handler:v9];
    _Block_release(v9);

    v10 = sub_75598();
    v25 = sub_15360;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86B18;
    v11 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v10 toVersion:4 foreignKeyStatus:0 handler:v11];
    _Block_release(v11);

    v12 = sub_75598();
    v25 = sub_153D8;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86B40;
    v13 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v12 toVersion:5 foreignKeyStatus:0 handler:v13];
    _Block_release(v13);

    v14 = sub_75598();
    v25 = sub_15450;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86B68;
    v15 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v14 toVersion:6 foreignKeyStatus:0 handler:v15];
    _Block_release(v15);

    v16 = sub_75598();
    v25 = sub_15868;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86B90;
    v17 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v16 toVersion:7 foreignKeyStatus:0 handler:v17];
    _Block_release(v17);

    v18 = sub_75598();
    v25 = sub_15CB4;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86BB8;
    v19 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v18 toVersion:8 foreignKeyStatus:0 handler:v19];
    _Block_release(v19);

    v4 = sub_75598();
    v25 = sub_16264;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86BE0;
    v20 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v4 toVersion:9 foreignKeyStatus:0 handler:v20];
  }

  else
  {
    v25 = sub_15090;
    v26 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_151D8;
    v24 = &unk_86A78;
    v20 = _Block_copy(&v21);
    [a2 addMigrationForSchema:v4 toVersion:6 foreignKeyStatus:0 handler:v20];
  }

  _Block_release(v20);
}

uint64_t sub_16AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_16B00(uint64_t a1)
{
  v2 = sub_38F8(&unk_8EB30, &unk_7A270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SnapshotContainerTaskServer.__allocating_init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  isa = sub_74988().super.isa;
  v11 = [v9 initWithUUID:isa configuration:a2 client:a3 delegate:a4];

  swift_unknownObjectRelease();
  v12 = sub_749B8();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id SanityTaskServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_16F58(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v6;
}

NSXPCInterface __swiftcall SanityTaskServer.exportedInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence25SanityTaskServerInterface_];

  return v0;
}

NSXPCInterface __swiftcall SnapshotContainerTaskServer.remoteInterface()()
{
  v0 = objc_allocWithZone(NSXPCInterface);

  return [v0 init];
}

id SanityTaskServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SanityTaskServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_16F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v21 = a1;
  v4 = sub_75768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75758();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_754F8();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1720C();
  sub_754E8();
  v27 = _swiftEmptyArrayStorage;
  sub_17258();
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_172B0();
  sub_75858();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v13 = sub_75798();
  v14 = v21;
  v15 = v22;
  *&v22[OBJC_IVAR____TtC25FitnessIntelligencePlugin16SanityTaskServer_queue] = v13;
  isa = sub_74988().super.isa;
  v17 = type metadata accessor for SanityTaskServer();
  v26.receiver = v15;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithUUID:configuration:client:delegate:", isa, v23, v24, v25);

  v19 = sub_749B8();
  (*(*(v19 - 8) + 8))(v14, v19);
  return v18;
}

unint64_t sub_1720C()
{
  result = qword_8F930;
  if (!qword_8F930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8F930);
  }

  return result;
}

unint64_t sub_17258()
{
  result = qword_8F940;
  if (!qword_8F940)
  {
    sub_75758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F940);
  }

  return result;
}

unint64_t sub_172B0()
{
  result = qword_8F950;
  if (!qword_8F950)
  {
    sub_76D0(&qword_8F3A0, &unk_7A440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F950);
  }

  return result;
}

uint64_t sub_17314(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t InferenceRecordTaskServer.retrieve(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v28 = sub_754C8();
  v30 = *(v28 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v28);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_754F8();
  v27 = *(v29 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v29);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_749B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *&v3[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue];
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v15, v14, v11);
  *(v17 + v16) = v3;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = v25;
  *v18 = v24;
  v18[1] = v19;
  aBlock[4] = sub_17A58;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_86C30;
  v20 = _Block_copy(aBlock);
  v21 = v3;

  sub_754D8();
  v31 = _swiftEmptyArrayStorage;
  sub_19A18(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  v22 = v28;
  sub_75858();
  sub_75788();
  _Block_release(v20);
  (*(v30 + 8))(v7, v22);
  (*(v27 + 8))(v10, v29);
}

uint64_t sub_17700(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v6 = sub_74D78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v24[-v12];
  type metadata accessor for InferenceRecordContainerEntity();
  v14 = [a2 client];
  v15 = [v14 profile];

  v16 = 0;
  v17 = sub_6FE28(a1, v15);

  if (v17[2])
  {
    (*(v7 + 16))(v11, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v7 + 32))(v13, v11, v6);
    sub_19A18(&qword_8F178, &type metadata accessor for InferenceRecord);
    v21 = sub_74F98();
    v23 = v22;
    (*(v7 + 8))(v13, v6);
  }

  else
  {

    sub_19A60();
    v19 = swift_allocError();
    *v20 = 3;
    swift_willThrow();
    v16 = v19;
    v21 = 0;
    v23 = 0xC000000000000000;
  }

  a3(v21, v23, v16);

  return sub_FB28(v21, v23);
}

uint64_t sub_179A8()
{
  v1 = sub_749B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_17A58()
{
  v1 = *(sub_749B8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_17700(v0 + v2, v4, v6);
}

uint64_t sub_17AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_17B0C()
{
  result = qword_8F3B8;
  if (!qword_8F3B8)
  {
    sub_76D0(&qword_8F3B0, &qword_7A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F3B8);
  }

  return result;
}

void sub_17CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6.super.isa = sub_748A8().super.isa;
  if (a3)
  {
    v7 = sub_74888();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6.super.isa);
}

uint64_t InferenceRecordTaskServer.listRecords(adapter:interval:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a1;
  v8 = sub_754C8();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_754F8();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v20 = &v29 - v19;
  v32 = *&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue];
  sub_183FC(a3, &v29 - v19);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  *(v23 + 24) = a2;
  sub_185B4(v20, v23 + v21);
  *(v23 + v22) = v5;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v31;
  *v24 = v30;
  v24[1] = v25;
  aBlock[4] = sub_18624;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_86C80;
  v26 = _Block_copy(aBlock);

  v27 = v5;

  sub_754D8();
  v36 = _swiftEmptyArrayStorage;
  sub_19A18(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  sub_75858();
  sub_75788();
  _Block_release(v26);
  (*(v35 + 8))(v11, v8);
  (*(v33 + 8))(v15, v34);
}

char *sub_180BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v35 = a5;
  v11 = sub_74D78();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InferenceRecordContainerEntity();
  v15 = [a4 client];
  v16 = [v15 profile];

  v17 = a1;
  v18 = 0;
  v20 = sub_702A8(v17, a2, a3, v16);
  v39 = v14;

  v21 = v20[2];
  if (v21)
  {
    v34 = a6;
    v42 = _swiftEmptyArrayStorage;
    result = sub_67DDC(0, v21, 0);
    v22 = 0;
    v23 = v42;
    v24 = v40;
    v37 = v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v36 = v40 + 16;
    v38 = (v40 + 8);
    while (v22 < v20[2])
    {
      v25 = v39;
      (*(v24 + 16))(v39, &v37[*(v24 + 72) * v22], v11);
      sub_19A18(&qword_8F178, &type metadata accessor for InferenceRecord);
      v26 = sub_74F98();
      if (v18)
      {
        (*v38)(v25, v11);

        v35(_swiftEmptyArrayStorage, v18);
        goto LABEL_2;
      }

      v28 = v26;
      v29 = v27;
      v41 = 0;
      v30 = v21;
      result = (*v38)(v25, v11);
      v42 = v23;
      v32 = v23[2];
      v31 = v23[3];
      if (v32 >= v31 >> 1)
      {
        result = sub_67DDC((v31 > 1), v32 + 1, 1);
        v23 = v42;
      }

      ++v22;
      v23[2] = v32 + 1;
      v33 = &v23[2 * v32];
      v33[4] = v28;
      v33[5] = v29;
      v21 = v30;
      v24 = v40;
      v18 = v41;
      if (v30 == v22)
      {

        v35(v23, 0);
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  else
  {

    v35(_swiftEmptyArrayStorage, 0);
LABEL_2:
  }

  return result;
}

uint64_t sub_183FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1846C()
{
  v1 = *(sub_38F8(&qword_8F3C0, &qword_7A1E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_74848();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v2 | 7);
}

uint64_t sub_185B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_18624()
{
  v1 = *(sub_38F8(&qword_8F3C0, &qword_7A1E0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_180BC(v4, v5, v0 + v2, v6, v8, v9);
}

uint64_t InferenceRecordTaskServer.setFeedbackId(_:for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v35 = a2;
  v32 = a4;
  v33 = a1;
  v39 = sub_754C8();
  v41 = *(v39 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v39);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_754F8();
  v38 = *(v40 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v40);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_749B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue];
  (*(v13 + 16))(v15, a3, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v16, v15, v12);
  *(v20 + v17) = v5;
  v21 = (v20 + v18);
  v22 = v33;
  v24 = v34;
  v23 = v35;
  *v21 = v32;
  v21[1] = v24;
  v25 = (v20 + v19);
  *v25 = v22;
  v25[1] = v23;
  aBlock[4] = sub_190D8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_86CD0;
  v26 = _Block_copy(aBlock);
  v27 = v5;

  sub_754D8();
  v42 = _swiftEmptyArrayStorage;
  sub_19A18(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  v28 = v37;
  v29 = v39;
  sub_75858();
  sub_75788();
  _Block_release(v26);
  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v11, v40);
}

uint64_t sub_18C34(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v46 = a4;
  v9 = sub_74D78();
  v45 = *(v9 - 8);
  v10 = *(v45 + 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v38 - v15;
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = type metadata accessor for InferenceRecordContainerEntity();
  v20 = [a2 client];
  v21 = [v20 profile];

  v22 = sub_6FE28(a1, v21);
  v23 = a3;
  v41 = v19;
  v42 = a2;
  v24 = v45;
  v40 = v13;
  if (*(v22 + 2))
  {
    v39 = v23;
    v25 = (v45[80] + 32) & ~v45[80];
    v38 = *(v45 + 2);
    v38(v16, &v22[v25], v9);

    v27 = *(v24 + 4);
    v26 = v24 + 32;
    v27(v18, v16, v9);
    v28 = v40;
    v45 = v18;
    sub_74D38();
    sub_38F8(&qword_8F3C8, &unk_7A2E0);
    v29 = *(v26 + 5);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_79BF0;
    v31 = v28;
    v38((v30 + v25), v28, v9);
    v32 = [v42 client];
    v33 = [v32 profile];

    sub_705B8(v30, 0, v33);

    v39(1, 0);
    v36 = *(v26 - 3);
    v36(v31, v9);
    return (v36)(v45, v9);
  }

  else
  {

    sub_19A60();
    v34 = swift_allocError();
    *v35 = 2;
    v23(0, v34);
  }
}

uint64_t sub_1900C()
{
  v1 = sub_749B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6 + 8);

  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_190D8()
{
  v1 = *(sub_749B8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_18C34(v0 + v2, v5, v6, v7, v9, v10);
}

uint64_t InferenceRecordTaskServer.saveInference(_:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_754C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_754F8();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v4;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_19878;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_86D20;
  v19 = _Block_copy(aBlock);
  sub_398C(a1, a2);
  v20 = v4;

  sub_754D8();
  v24 = _swiftEmptyArrayStorage;
  sub_19A18(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  sub_75858();
  sub_75788();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_195B8(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t, void))
{
  v8 = sub_74D78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_398C(a1, a2);
  sub_19A18(&qword_8F178, &type metadata accessor for InferenceRecord);
  sub_74F88();
  type metadata accessor for InferenceRecordContainerEntity();
  sub_38F8(&qword_8F3C8, &unk_7A2E0);
  v13 = *(v9 + 72);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_79BF0;
  (*(v9 + 16))(v15 + v14, v12, v8);
  v16 = [a3 client];
  v17 = [v16 profile];

  sub_705B8(v15, 0, v17);

  a4(1, 0);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_19830()
{
  sub_FB28(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_19960()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_199A8(uint64_t a1)
{
  v2 = sub_38F8(&qword_8F3C0, &qword_7A1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A60()
{
  result = qword_8F3D0;
  if (!qword_8F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F3D0);
  }

  return result;
}

uint64_t sub_19ADC(uint64_t a1)
{
  result = sub_1B700(&qword_8EFA8, type metadata accessor for WorkoutPropertyRecordEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19B34()
{
  v0 = sub_74F28();
  sub_19BBC(v0, qword_90010);
  v1 = sub_19C20(v0, qword_90010);
  v2 = enum case for WorkoutPropertyKind.totalCount(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_19BBC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_19C20(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_19C58(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a3;
  v52 = sub_74CA8();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v52);
  v8 = sub_749C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_74A38();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_754B8();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  v19 = __chkstk_darwin(v17);
  v50 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v47 - v21;
  v23 = [a1 protectedDatabase];
  if (v23)
  {
    v24 = v23;
    v48 = a2;
    (*(v9 + 104))(v12, enum case for Calendar.Identifier.gregorian(_:), v8);
    sub_749D8();
    (*(v9 + 8))(v12, v8);
    v49 = sub_75598();
    v62 = nullsub_1;
    v63 = 0;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_644E0;
    v61 = &unk_86E80;
    v25 = _Block_copy(&aBlock);

    v26 = v52;
    (*(v6 + 16))(&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v52);
    v27 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v16;
    (*(v6 + 32))(v28 + v27, &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
    *(v28 + ((v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v53;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1B638;
    *(v29 + 24) = v28;
    v62 = sub_1B6F8;
    v63 = v29;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v30 = v24;
    v60 = sub_4F494;
    v61 = &unk_86EF8;
    v31 = _Block_copy(&aBlock);

    aBlock = 0;
    v32 = v49;
    LOBYTE(v26) = [v24 executeSQL:v49 error:&aBlock bindingHandler:v25 enumerationHandler:v31];
    _Block_release(v31);
    _Block_release(v25);

    if (v26)
    {
      v33 = aBlock;

      (*(v54 + 8))(v16, v55);

      return 1;
    }

    v39 = aBlock;
    sub_74898();

    swift_willThrow();
    v40 = v50;
    sub_75378();
    swift_errorRetain();
    v41 = sub_754A8();
    v42 = sub_75718();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&dword_0, v41, v42, "Failed to list all cache indexes %@", v43, 0xCu);
      sub_3D48(v44, &unk_8EB30, &unk_7A270);
    }

    (*(v56 + 8))(v40, v57);
    v46 = v48;
    if (v48)
    {
      *v46 = sub_74888();
    }

    (*(v54 + 8))(v16, v55);
  }

  else
  {
    sub_75378();
    v35 = sub_754A8();
    v36 = sub_75718();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Failed to list cache indexes: no protected database", v37, 2u);
    }

    (*(v56 + 8))(v22, v57);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v38 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_1A388(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v90 = a5;
  v100 = a3;
  v101 = a4;
  v92 = a2;
  v88 = sub_38F8(&qword_8F288, &qword_7A128);
  v6 = *(*(v88 - 8) + 64);
  v7 = __chkstk_darwin(v88);
  v87 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = &v85 - v9;
  v95 = sub_74CA8();
  v97 = *(v95 - 8);
  v10 = v97[8];
  v11 = __chkstk_darwin(v95);
  v91 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = &v85 - v13;
  v93 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v14 = *(*(v93 - 8) + 64);
  v15 = __chkstk_darwin(v93);
  v85 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v89 = &v85 - v18;
  __chkstk_darwin(v17);
  v103 = &v85 - v19;
  v99 = sub_74A38();
  v20 = *(v99 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v99);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_74968();
  v98 = *(v24 - 8);
  v25 = *(v98 + 64);
  __chkstk_darwin(v24);
  v102 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_38F8(&qword_8F3E0, &unk_7A210);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v85 - v29;
  v31 = sub_74A68();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v85 - v37;
  HDSQLiteColumnAsDouble();
  v39 = HDSQLiteColumnAsString();
  if (!v39)
  {
    goto LABEL_4;
  }

  v96 = v24;
  v40 = v39;
  sub_755A8();
  v5 = v41;

  sub_74A48();

  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_3D48(v30, &qword_8F3E0, &unk_7A210);
    v24 = v96;
LABEL_4:
    sub_74A58();
    v42 = v100;
    sub_74A18();
    goto LABEL_6;
  }

  (*(v32 + 32))(v38, v30, v31);
  (*(v32 + 16))(v36, v38, v31);
  v42 = v100;
  sub_74A18();
  (*(v32 + 8))(v38, v31);
  v24 = v96;
LABEL_6:
  v43 = v102;
  sub_748D8();
  isa = sub_74918().super.isa;
  v45 = v99;
  (*(v20 + 16))(v23, v42, v99);
  v46 = sub_749F8().super.isa;
  (*(v20 + 8))(v23, v45);
  v47 = _HKCacheIndexFromDate();

  v48 = v101;
  if (sub_74C98() < v47)
  {
    (*(v98 + 8))(v43, v24);
    return 1;
  }

  v49 = v94;
  sub_74CB8();
  LOBYTE(v50) = 0;
  sub_74C58();
  v96 = v24;
  v51 = v97;
  v52 = v95;
  v99 = v97[1];
  v100 = v97 + 1;
  (v99)(v49, v95);
  v53 = *(v93 + 36);
  v54 = sub_1B700(&qword_8F2A0, &type metadata accessor for CacheIndex);
  v55 = sub_75558();
  v58 = v51[2];
  v56 = v51 + 2;
  v57 = v58;
  if (v55)
  {
    v59 = v91;
    v60 = v91;
    v61 = v48;
  }

  else
  {
    v61 = v103 + v53;
    v59 = v91;
    v60 = v91;
  }

  v57(v60, v61, v52);
  if ((sub_75568() & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v62 = v86;
  v57(v86, v103, v52);
  v63 = v88;
  v64 = v97[4];
  v64(v62 + *(v88 + 48), v59, v52);
  v65 = v52;
  v66 = v87;
  sub_FCE0(v62, v87, &qword_8F288, &qword_7A128);
  v50 = *(v63 + 48);
  v5 = v89;
  v64(v89, v66, v65);
  v67 = v66 + v50;
  v68 = v99;
  LOBYTE(v50) = v100;
  (v99)(v67, v65);
  sub_1B748(v62, v66, &qword_8F288, &qword_7A128);
  v64(v5 + *(v93 + 36), (v66 + *(v63 + 48)), v65);
  v68(v66, v65);
  v56 = v90;
  v69 = *v90;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v56;
  v71 = v104;
  *v56 = 0x8000000000000000;
  v54 = sub_42788(v5);
  v73 = v71[2];
  v74 = (v72 & 1) == 0;
  v75 = v73 + v74;
  if (__OFADD__(v73, v74))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v50) = v72;
  if (v71[3] >= v75)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  sub_42AC4(v75, isUniquelyReferenced_nonNull_native);
  v71 = v104;
  v76 = sub_42788(v5);
  if ((v50 & 1) == (v77 & 1))
  {
    v54 = v76;
    while (1)
    {
LABEL_17:
      v78 = *v56;
      *v56 = v71;

      v79 = *v56;
      if ((v50 & 1) == 0)
      {
        v50 = v85;
        sub_FCE0(v5, v85, &qword_8F000, &qword_7A5D0);
        sub_6D61C(v54, v50, 0, v79);
      }

      v80 = v79[7];
      v81 = *(v80 + 8 * v54);
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (!v82)
      {
        break;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      sub_42874();
      v71 = v104;
    }

    *(v80 + 8 * v54) = v83;
    sub_3D48(v5, &qword_8F000, &qword_7A5D0);
    sub_3D48(v103, &qword_8F000, &qword_7A5D0);
    (*(v98 + 8))(v43, v96);
    return 1;
  }

  result = sub_75A98();
  __break(1u);
  return result;
}