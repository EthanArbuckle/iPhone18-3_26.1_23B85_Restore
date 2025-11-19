uint64_t sub_50D50@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v1 = sub_754B8();
  v93 = *(v1 - 8);
  v94 = v1;
  v2 = *(v93 + 64);
  __chkstk_darwin(v1);
  v4 = v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_38F8(&unk_8FAE8, &unk_7A7E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v87 = v80 - v7;
  v8 = sub_74F18();
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  v10 = __chkstk_darwin(v8);
  v83 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = v80 - v12;
  v92 = sub_74968();
  v88 = *(v92 - 8);
  v13 = *(v88 + 64);
  v14 = __chkstk_darwin(v92);
  v82 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v81 = v80 - v17;
  v18 = __chkstk_darwin(v16);
  v90 = v80 - v19;
  __chkstk_darwin(v18);
  v98 = v80 - v20;
  v21 = sub_749B8();
  v91 = *(v21 - 8);
  v22 = *(v91 + 64);
  v23 = __chkstk_darwin(v21);
  v89 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v100 = v80 - v26;
  v95 = v25;
  v27 = sub_75A68();

  if ((v27 & 1) == 0)
  {
  }

  v99 = HDSQLiteColumnAsInt64();
  v28 = sub_75A68();

  if ((v28 & 1) == 0)
  {
    v29 = sub_75A68();

    if ((v29 & 1) == 0)
    {
    }
  }

  v80[2] = HDSQLiteColumnAsInt64();
  v30 = sub_75A68();

  if ((v30 & 1) == 0)
  {
    v31 = sub_75A68();

    if ((v31 & 1) == 0)
    {
      v32 = sub_75A68();

      if ((v32 & 1) == 0)
      {
      }
    }
  }

  v80[1] = HDSQLiteColumnAsInt64();
  v33 = sub_75A68();

  if ((v33 & 1) == 0)
  {
    v34 = sub_75A68();

    if ((v34 & 1) == 0)
    {
      v35 = sub_75A68();

      if ((v35 & 1) == 0)
      {
        v36 = sub_75A68();

        if ((v36 & 1) == 0)
        {
          v37 = sub_75A68();

          if ((v37 & 1) == 0)
          {
            v38 = sub_75A68();

            if ((v38 & 1) == 0)
            {
            }
          }
        }
      }
    }
  }

  v39 = HDSQLiteColumnAsString();
  if (v39)
  {
    v40 = v39;
    v80[0] = sub_755A8();
    v97 = v41;

    v42 = v99;
    if ((v99 & 0x8000000000000000) == 0)
    {
LABEL_30:

      goto LABEL_31;
    }
  }

  else
  {
    v80[0] = 0;
    v97 = 0;
    v42 = v99;
    if ((v99 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  if (!v42)
  {
    goto LABEL_30;
  }

  v43 = sub_75A68();

  if ((v43 & 1) == 0)
  {
    v44 = sub_75A68();

    if ((v44 & 1) == 0)
    {
      v45 = sub_75A68();

      if ((v45 & 1) == 0)
      {
        v46 = sub_75A68();

        if ((v46 & 1) == 0)
        {
          v47 = sub_75A68();

          if ((v47 & 1) == 0)
          {
            sub_75A68();
          }
        }
      }
    }
  }

LABEL_31:
  v48 = HDSQLiteColumnAsUUID();
  if (!v48)
  {
LABEL_40:

    v55 = v96;
    goto LABEL_41;
  }

  v49 = v48;
  sub_74998();

  LOBYTE(v49) = sub_75A68();

  if ((v49 & 1) == 0)
  {
    v50 = sub_75A68();

    if ((v50 & 1) == 0)
    {
      v51 = sub_75A68();

      if ((v51 & 1) == 0)
      {
        v52 = sub_75A68();

        if ((v52 & 1) == 0)
        {
        }
      }
    }
  }

  v53 = HDSQLiteColumnAsDate();
  if (!v53)
  {
    (*(v91 + 8))(v100, v95);
    goto LABEL_40;
  }

  v54 = v53;
  sub_74938();

  v60 = sub_75A68();

  if (v60)
  {
    goto LABEL_50;
  }

  v61 = sub_75A68();

  if (v61 & 1) != 0 || (v62 = sub_75A68(), , (v62) || (v63 = sub_75A68(), , (v63) || (v64 = sub_75A68(), , (v64))
  {
LABEL_50:
    v55 = v96;
    v65 = v92;
  }

  else
  {
    v55 = v96;
    v65 = v92;
  }

  v66 = v88;
  v67 = HDSQLiteColumnAsDate();
  if (v67)
  {
    v68 = v90;
    v69 = v67;
    sub_74938();

    v70 = v84;
    sub_74EF8();
    v71 = v91;
    (*(v91 + 16))(v89, v100, v95);
    v72 = *(v66 + 16);
    v72(v81, v98, v65);
    v72(v82, v68, v65);
    v74 = v85;
    v73 = v86;
    (*(v85 + 16))(v83, v70, v86);
    v75 = sub_74AB8();
    (*(*(v75 - 8) + 56))(v87, 1, 1, v75);
    sub_74D18();
    (*(v74 + 8))(v70, v73);
    v76 = *(v66 + 8);
    v77 = v92;
    v76(v90, v92);
    v76(v98, v77);
    (*(v71 + 8))(v100, v95);
    v59 = 0;
    goto LABEL_53;
  }

  (*(v66 + 8))(v98, v65);
  (*(v91 + 8))(v100, v95);
LABEL_41:
  sub_75378();
  v56 = sub_754A8();
  v57 = sub_75718();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_0, v56, v57, "Failed to initialize WorkoutRecord from row: no uuid, or dates", v58, 2u);
  }

  (*(v93 + 8))(v4, v94);
  v59 = 1;
LABEL_53:
  v78 = sub_74D28();
  return (*(*(v78 - 8) + 56))(v55, v59, 1, v78);
}

void *sub_53D08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v64 = a4;
  v7 = sub_754B8();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  __chkstk_darwin(v7);
  v62 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_74968();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v57 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v56 = v53 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v53 - v17;
  __chkstk_darwin(v16);
  v20 = v53 - v19;
  v65 = _swiftEmptyArrayStorage;
  v63 = [a3 database];
  v21 = *(v11 + 16);
  v54 = a1;
  v21(v20, a1, v10);
  v55 = a2;
  v53[1] = v11 + 16;
  v53[0] = v21;
  v21(v18, a2, v10);
  v22 = *(v11 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = (v12 + v22 + v23) & ~v22;
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v58 = v11;
  v27 = *(v11 + 32);
  v27(v26 + v23, v20, v10);
  v59 = v10;
  v27(v26 + v24, v18, v10);
  *(v26 + v25) = &v65;
  v28 = swift_allocObject();
  v28[2] = sub_544C0;
  v28[3] = v26;
  aBlock[4] = sub_FC94;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_88B38;
  v29 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v30 = v63;
  v31 = [v63 performTransactionWithContext:v64 error:aBlock block:v29 inaccessibilityHandler:0];
  _Block_release(v29);

  v32 = aBlock[0];
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  if (v31)
  {
    v33 = v62;
    sub_75378();
    v34 = v56;
    v35 = v59;
    v36 = v53[0];
    (v53[0])(v56, v54, v59);
    v37 = v57;
    v36(v57, v55, v35);
    v38 = sub_754A8();
    v39 = sub_75738();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v40 = 136315650;
      sub_5457C(&qword_8F9F8, &type metadata accessor for Date);
      v41 = sub_75A38();
      LODWORD(v55) = v39;
      v43 = v42;
      v64 = v26;
      v44 = *(v58 + 8);
      v44(v34, v35);
      v45 = sub_31B4(v41, v43, aBlock);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      v46 = sub_75A38();
      v48 = v47;
      v44(v37, v35);
      v49 = sub_31B4(v46, v48, aBlock);

      *(v40 + 14) = v49;
      *(v40 + 22) = 2048;
      swift_beginAccess();
      *(v40 + 24) = v65[2];
      _os_log_impl(&dword_0, v38, v55, "Found workouts from %s to %s: %ld", v40, 0x20u);
      swift_arrayDestroy();

      (*(v60 + 8))(v62, v61);
    }

    else
    {

      v51 = *(v58 + 8);
      v51(v37, v35);
      v51(v34, v35);
      (*(v60 + 8))(v33, v61);
    }

    swift_beginAccess();
    v50 = v65;
  }

  else
  {
    sub_74898();

    swift_willThrow();
    v50 = v65;
  }

  return v50;
}

uint64_t sub_543F8()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8, v4 | 7);
}

uint64_t sub_544C0(void *a1, void *a2)
{
  v5 = *(sub_74968() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v2 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_503DC(a1, a2, v2 + v7, v2 + v9, v10);
}

uint64_t sub_5457C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_545C4()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v7 + v6, v4 | 7);
}

uint64_t sub_54680(sqlite3_stmt *a1)
{
  v3 = *(sub_74968() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 64) + *(v3 + 80) + ((*(v3 + 80) + 24) & ~*(v3 + 80))) & ~*(v3 + 80));

  return sub_50A58(a1, v4);
}

uint64_t sub_54748()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_54794(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x766F7250636E7973;
    v10 = 0xEE0065636E616E65;
    if (a1 != 6)
    {
      v9 = 0x6E656449636E7973;
      v10 = 0xEC00000079746974;
    }

    v11 = 0xE700000000000000;
    v12 = 0x6E6F6973726576;
    if (a1 != 4)
    {
      v12 = 0x4164657461657263;
      v11 = 0xE900000000000074;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x6568636143646E65;
    v5 = 0xED00007865646E49;
    if (a1 != 2)
    {
      v4 = 0xD000000000000016;
      v5 = 0x80000000000773B0;
    }

    v6 = 0x6361437472617473;
    if (a1)
    {
      v3 = 0xEF7865646E496568;
    }

    else
    {
      v6 = 0x4449574F52;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEE0065636E616E65;
        if (v7 != 0x766F7250636E7973)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xEC00000079746974;
        if (v7 != 0x6E656449636E7973)
        {
LABEL_47:
          v14 = sub_75A68();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x6E6F6973726576)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE900000000000074;
      if (v7 != 0x4164657461657263)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xED00007865646E49;
      if (v7 != 0x6568636143646E65)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000000000773B0;
      if (v7 != 0xD000000000000016)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEF7865646E496568;
    if (v7 != 0x6361437472617473)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x4449574F52)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_54A70()
{
  sub_755E8();
}

Swift::Int sub_54BD0()
{
  sub_75AE8();
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_54D8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_55FD0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_54DBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x4449574F52;
  v5 = 0xEE0065636E616E65;
  v6 = 0x766F7250636E7973;
  if (v2 != 6)
  {
    v6 = 0x6E656449636E7973;
    v5 = 0xEC00000079746974;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6973726576;
  if (v2 != 4)
  {
    v8 = 0x4164657461657263;
    v7 = 0xE900000000000074;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00007865646E49;
  v10 = 0x6568636143646E65;
  if (v2 != 2)
  {
    v10 = 0xD000000000000016;
    v9 = 0x80000000000773B0;
  }

  if (*v1)
  {
    v4 = 0x6361437472617473;
    v3 = 0xEF7865646E496568;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_550E0()
{
  result = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  v2 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity + 8);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity);
  }

  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity + 8);
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_11760(result, v2);
      sub_FB28(v3, v4);
      return BYTE6(v4);
    }

    goto LABEL_14;
  }

  if (v5 != 2)
  {
    sub_11760(result, v2);
    sub_FB28(v3, v4);
    return 0;
  }

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_11760(result, v2);
  sub_FB28(v3, v4);
  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_14:
    sub_11760(result, v2);
    result = sub_FB28(v3, v4);
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
    }

    else
    {
      return HIDWORD(v3) - v3;
    }
  }

  return result;
}

void sub_552C4()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A7F0;
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
  v20 = [v17 initWithName:v18 columnType:v19 keyPathType:3];

  *(v0 + 64) = v20;
  v21 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v22 = sub_75598();
  v23 = sub_75598();
  v24 = [v21 initWithName:v22 columnType:v23 keyPathType:1];

  *(v0 + 72) = v24;
  v25 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v26 = sub_75598();
  v27 = sub_75598();
  v28 = [v25 initWithName:v26 columnType:v27 keyPathType:3];

  *(v0 + 80) = v28;
  v29 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v30 = sub_75598();
  v31 = sub_75598();
  v32 = [v29 initWithName:v30 columnType:v31 keyPathType:3];

  *(v0 + 88) = v32;
  qword_90040 = v0;
}

uint64_t static PropertyRecordCheckpointEntity.indices(with:)()
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

id PropertyRecordCheckpointEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PropertyRecordCheckpointEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id PropertyRecordCheckpointEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PropertyRecordCheckpointEntity();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_55A30(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_55A6C()
{
  sub_67C58(0, 7, 0);
  v0 = 0;
  result = &_swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_85710 + v0 + 32);
    if (v2 == 6)
    {
      v3 = 0x766F7250636E7973;
    }

    else
    {
      v3 = 0x6E656449636E7973;
    }

    if (v2 == 6)
    {
      v4 = 0xEE0065636E616E65;
    }

    else
    {
      v4 = 0xEC00000079746974;
    }

    if (v2 == 4)
    {
      v5 = 0x6E6F6973726576;
    }

    else
    {
      v5 = 0x4164657461657263;
    }

    if (v2 == 4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }

    if (*(&off_85710 + v0 + 32) <= 5u)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xD000000000000016;
    if (v2 == 2)
    {
      v7 = 0x6568636143646E65;
      v8 = 0xED00007865646E49;
    }

    else
    {
      v8 = 0x80000000000773B0;
    }

    if (*(&off_85710 + v0 + 32))
    {
      v9 = 0x6361437472617473;
    }

    else
    {
      v9 = 0x4449574F52;
    }

    if (*(&off_85710 + v0 + 32))
    {
      v10 = 0xEF7865646E496568;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (*(&off_85710 + v0 + 32) <= 1u)
    {
      v7 = v9;
      v8 = v10;
    }

    if (*(&off_85710 + v0 + 32) <= 3u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (*(&off_85710 + v0 + 32) <= 3u)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }

    v16 = result;
    v14 = result[2];
    v13 = result[3];
    if (v14 >= v13 >> 1)
    {
      sub_67C58((v13 > 1), v14 + 1, 1);
      result = v16;
    }

    ++v0;
    result[2] = v14 + 1;
    v15 = &result[2 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v12;
  }

  while (v0 != 7);
  return result;
}

char *_s25FitnessIntelligencePlugin30PropertyRecordCheckpointEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD000000000000033;
  v22._object = 0x80000000000791C0;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8EA00 != -1)
  {
    swift_once();
  }

  v0 = qword_90040;
  if (qword_90040 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90040 & 0xFFFFFFFFFFFFFF8));
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

uint64_t sub_55FD0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_85B68;
  v6._object = a2;
  v4 = sub_75A18(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5601C(void *a1)
{
  if (qword_8EA00 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = qword_90040;
  v3 = qword_90040 >> 62;
  if (qword_90040 >> 62)
  {
    if (qword_90040 < 0)
    {
      v1 = qword_90040;
    }

    else
    {
      v1 = qword_90040 & 0xFFFFFFFFFFFFFF8;
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90040 & 0xFFFFFFFFFFFFFF8));
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

uint64_t type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper()
{
  result = qword_8FB48;
  if (!qword_8FB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5620C()
{
  sub_562A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_562A4()
{
  if (!qword_8FB58)
  {
    sub_751D8();
    v0 = sub_75848();
    if (!v1)
    {
      atomic_store(v0, &qword_8FB58);
    }
  }
}

uint64_t getEnumTagSinglePayload for PropertyRecordCheckpointEntity.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PropertyRecordCheckpointEntity.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_56494()
{
  result = qword_8FB70;
  if (!qword_8FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FB70);
  }

  return result;
}

unint64_t sub_564E8(uint64_t a1)
{
  *(a1 + 8) = sub_56518();
  result = sub_5656C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_56518()
{
  result = qword_8FB78;
  if (!qword_8FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FB78);
  }

  return result;
}

unint64_t sub_5656C()
{
  result = qword_8FB80;
  if (!qword_8FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FB80);
  }

  return result;
}

uint64_t sub_565C0(uint64_t a1)
{
  v2 = sub_38F8(&qword_8EB18, &qword_7A950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_56670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_583E0(a4, a5);
  }

  while ((sub_75588() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_567C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_754B8();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin(v3);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_74B88();
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
  v21 = sub_38F8(&unk_8F070, &qword_79F50);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v38 - v23;
  v25 = sub_38F8(&unk_8FD00, &qword_7A260);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v38 - v28;
  sub_56DA8(a1, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_3D48(v24, &unk_8F070, &qword_79F50);
    v33 = 1;
    v34 = v45;
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
    v30 = sub_75098();
    v32 = v31;
    sub_74BC8();
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
    sub_74AC8();
    sub_3940(v47);
    (*(v26 + 8))(v29, v25);
    v33 = 0;
  }

  v35 = sub_74AD8();
  return (*(*(v35 - 8) + 56))(v34, v33, 1, v35);
}

uint64_t sub_56DA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_754B8();
  v153 = *(v4 - 8);
  v154 = v4;
  v5 = *(v153 + 64);
  __chkstk_darwin(v4);
  v7 = v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_38F8(&qword_8F288, &qword_7A128);
  v8 = *(*(v143 - 8) + 64);
  v9 = __chkstk_darwin(v143);
  v142 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v140 = v130 - v11;
  v151 = sub_74CA8();
  v141 = *(v151 - 8);
  v12 = *(v141 + 64);
  v13 = __chkstk_darwin(v151);
  v150 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v152 = v130 - v15;
  v136 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v16 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v138 = v130 - v17;
  v18 = sub_74B88();
  v139 = *(v18 - 8);
  v19 = *(v139 + 64);
  v20 = __chkstk_darwin(v18);
  v137 = v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v130 - v22;
  v24 = sub_38F8(&qword_8FBB0, &qword_7A958);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v149 = v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v156 = v130 - v28;
  v29 = sub_38F8(&qword_8FBB8, &qword_7A960);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v148 = v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v159 = v130 - v33;
  v34 = sub_38F8(&qword_8FBC0, &unk_7A968);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v38 = v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v157 = v130 - v39;
  v40 = sub_38F8(&qword_8F290, &qword_7A130);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v147 = v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v158 = v130 - v44;
  v45 = sub_74BD8();
  v46 = *(v45 - 8);
  v47 = v46[8];
  __chkstk_darwin(v45);
  v49 = v130 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_38F8(&qword_8F298, &qword_7A138);
  v51 = *(*(v50 - 8) + 64);
  v52 = __chkstk_darwin(v50 - 8);
  v146 = v130 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v160 = v130 - v54;
  sub_6E030(1);
  v145 = HDSQLiteColumnAsInt64();
  sub_6E030(2);
  v144 = HDSQLiteColumnAsInt64();
  sub_6E030(10);
  v135 = HDSQLiteColumnAsInt64();
  sub_6E030(9);
  v55 = HDSQLiteColumnAsData();
  if (!v55)
  {

LABEL_15:
    sub_75378();
    v77 = sub_754A8();
    v78 = sub_75718();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "Failed to initialize FitnessPlusPropertyRecordEntity from row: no propertyData", v79, 2u);
    }

    (*(v153 + 8))(v7, v154);
    v80 = 1;
    goto LABEL_37;
  }

  v155 = a1;
  v56 = a2;
  v133 = v38;
  v132 = v18;
  v57 = v55;
  v58 = sub_748C8();
  v60 = v59;

  sub_6E030(8);
  v61 = HDSQLiteColumnAsString();
  if (!v61)
  {

    sub_FB28(v58, v60);
    a2 = v56;
    goto LABEL_15;
  }

  v62 = v61;
  v153 = v58;
  v154 = v60;
  v134 = v23;
  v131 = v56;
  v130[1] = sub_755A8();
  v130[0] = v63;

  v64 = v46[13];
  v64(v49, enum case for FitnessPlusPropertyDimensionsField.monthOfYear(_:), v45);
  v65 = v155;
  v66 = sub_56670(v49, v155, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField);
  v67 = v46[1];
  v67(v49, v45);
  if (v66 && (sub_6E030(3), (v68 = HDSQLiteColumnAsString()) != 0))
  {
    v69 = v68;
    sub_755A8();

    v65 = v155;
    sub_74CF8();
  }

  else
  {
    v70 = sub_74D08();
    (*(*(v70 - 8) + 56))(v160, 1, 1, v70);
  }

  v64(v49, enum case for FitnessPlusPropertyDimensionsField.dayOfWeek(_:), v45);
  v71 = sub_56670(v49, v65, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField);
  v67(v49, v45);
  v72 = v157;
  if (v71 && (sub_6E030(4), (v73 = HDSQLiteColumnAsString()) != 0))
  {
    v74 = v73;
    sub_755A8();

    v65 = v155;
    v72 = v157;
    sub_753C8();
  }

  else
  {
    v75 = sub_753D8();
    (*(*(v75 - 8) + 56))(v158, 1, 1, v75);
  }

  v64(v49, enum case for FitnessPlusPropertyDimensionsField.hourOfDay(_:), v45);
  v76 = sub_56670(v49, v65, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField);
  v67(v49, v45);
  if (v76)
  {
    sub_6E030(5);
    HDSQLiteColumnAsInt64();
    sub_753E8();
  }

  else
  {
    v81 = sub_753F8();
    (*(*(v81 - 8) + 56))(v72, 1, 1, v81);
  }

  v64(v49, enum case for FitnessPlusPropertyDimensionsField.modalityKind(_:), v45);
  v82 = sub_56670(v49, v65, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField);
  v67(v49, v45);
  if (v82 && (sub_6E030(6), (v83 = HDSQLiteColumnAsString()) != 0))
  {
    v84 = v83;
    sub_755A8();

    v65 = v155;
    v72 = v157;
    sub_74A98();
  }

  else
  {
    v85 = sub_74AA8();
    (*(*(v85 - 8) + 56))(v159, 1, 1, v85);
  }

  v64(v49, enum case for FitnessPlusPropertyDimensionsField.trainerIdentifiers(_:), v45);
  v86 = sub_56670(v49, v65, &type metadata accessor for FitnessPlusPropertyDimensionsField, &qword_8FBC8, &type metadata accessor for FitnessPlusPropertyDimensionsField);

  v67(v49, v45);
  if (v86)
  {
    sub_6E030(7);
    v87 = HDSQLiteColumnAsString();
    v88 = v152;
    v89 = v160;
    if (v87)
    {
      v90 = v87;
      v91 = sub_755A8();
      v93 = v92;

      v161[0] = 44;
      v161[1] = 0xE100000000000000;
      __chkstk_darwin(v94);
      v129 = v161;
      v95 = sub_57FC8(0x7FFFFFFFFFFFFFFFLL, 1, sub_58388, &v130[-4], v91, v93, v130);
      v96 = v95[2];
      if (v96)
      {
        v161[0] = _swiftEmptyArrayStorage;
        sub_67C58(0, v96, 0);
        v97 = v161[0];
        v98 = v95 + 7;
        do
        {
          v99 = *(v98 - 3);
          v100 = *(v98 - 2);
          v101 = *(v98 - 1);
          v102 = *v98;

          v103 = sub_755D8();
          v105 = v104;

          v161[0] = v97;
          v107 = *(v97 + 16);
          v106 = *(v97 + 24);
          if (v107 >= v106 >> 1)
          {
            sub_67C58((v106 > 1), v107 + 1, 1);
            v97 = v161[0];
          }

          *(v97 + 16) = v107 + 1;
          v108 = v97 + 16 * v107;
          *(v108 + 32) = v103;
          *(v108 + 40) = v105;
          v98 += 4;
          --v96;
        }

        while (v96);

        v88 = v152;
        v72 = v157;
      }

      else
      {
      }

      v111 = v158;
      sub_74B98();
      v109 = 0;
      v110 = v150;
      v89 = v160;
    }

    else
    {
      v109 = 1;
      v111 = v158;
      v110 = v150;
    }
  }

  else
  {
    v109 = 1;
    v110 = v150;
    v88 = v152;
    v89 = v160;
    v111 = v158;
  }

  v112 = sub_74BB8();
  v113 = v156;
  (*(*(v112 - 8) + 56))(v156, v109, 1, v112);
  sub_FCE0(v89, v146, &qword_8F298, &qword_7A138);
  sub_FCE0(v111, v147, &qword_8F290, &qword_7A130);
  sub_FCE0(v72, v133, &qword_8FBC0, &unk_7A968);
  sub_FCE0(v159, v148, &qword_8FBB8, &qword_7A960);
  sub_FCE0(v113, v149, &qword_8FBB0, &qword_7A958);
  sub_74B28();
  sub_74CB8();
  sub_74CB8();
  sub_583E0(&qword_8F2A0, &type metadata accessor for CacheIndex);
  v114 = v151;
  result = sub_75568();
  if (result)
  {
    v116 = v141;
    v117 = *(v141 + 32);
    v118 = v140;
    v117(v140, v88, v114);
    v119 = v143;
    v117((v118 + *(v143 + 48)), v110, v114);
    v120 = v142;
    sub_FCE0(v118, v142, &qword_8F288, &qword_7A128);
    v121 = v119;
    v122 = *(v119 + 48);
    v123 = v138;
    v117(v138, v120, v114);
    v124 = *(v116 + 8);
    v124(v120 + v122, v114);
    sub_14C60(v118, v120);
    v117(&v123[*(v136 + 36)], (v120 + *(v121 + 48)), v114);
    v124(v120, v114);
    v125 = v139;
    v126 = v134;
    v127 = v132;
    (*(v139 + 16))(v137, v134, v132);
    sub_74AD8();
    v129 = sub_583E0(&qword_8F900, &type metadata accessor for FitnessPlusPropertyRecord);
    a2 = v131;
    sub_75078();
    (*(v125 + 8))(v126, v127);
    sub_3D48(v156, &qword_8FBB0, &qword_7A958);
    sub_3D48(v159, &qword_8FBB8, &qword_7A960);
    sub_3D48(v157, &qword_8FBC0, &unk_7A968);
    sub_3D48(v158, &qword_8F290, &qword_7A130);
    sub_3D48(v160, &qword_8F298, &qword_7A138);
    v80 = 0;
LABEL_37:
    v128 = sub_38F8(&unk_8FD00, &qword_7A260);
    return (*(*(v128 - 8) + 56))(a2, v80, 1, v128);
  }

  __break(1u);
  return result;
}

void *sub_57FC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_75638();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_673C0(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_673C0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_75628();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_755F8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_755F8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_75638();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_673C0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_75638();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_673C0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_673C0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_755F8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_58388(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_75A68() & 1;
  }
}

uint64_t sub_583E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_58428(sqlite3_stmt *a1)
{
  v2 = sub_74C98();

  return sqlite3_bind_int64(a1, 1, v2);
}

unint64_t sub_58470()
{
  result = qword_8FBE0;
  if (!qword_8FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FBE0);
  }

  return result;
}

uint64_t sub_5850C(uint64_t a1)
{
  result = sub_59144(&qword_8FC38, type metadata accessor for WorkoutPropertyRecordEntity);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_58568()
{
  result = qword_8FC40;
  if (!qword_8FC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FC40);
  }

  return result;
}

uint64_t sub_585BC(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v5 = sub_38F8(&qword_8FC60, &qword_7A9D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v72 = &v71 - v7;
  v8 = sub_38F8(&qword_8FBC0, &unk_7A968);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v71 - v10;
  v12 = sub_38F8(&qword_8F290, &qword_7A130);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v71 - v14;
  v16 = sub_38F8(&qword_8F298, &qword_7A138);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v71 - v18;
  sub_75208();
  v20 = sub_74D08();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_3D48(v19, &qword_8F298, &qword_7A138);
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
  }

  else
  {
    *(&v75 + 1) = v20;
    v76 = sub_59144(&qword_8F670, &type metadata accessor for MonthOfYear);
    v22 = sub_5914(&v74);
    (*(v21 + 32))(v22, v19, v20);
  }

  sub_38F8(&qword_8F658, &unk_7AD30);
  inited = swift_initStackObject();
  v24 = inited;
  v73 = xmmword_79BF0;
  *(inited + 16) = xmmword_79BF0;
  if (*(&v75 + 1))
  {
    sub_5978(&v74, inited + 32);
  }

  else
  {
    v25 = v76;
    v26 = v75;
    *(inited + 32) = v74;
    *(inited + 48) = v26;
    *(inited + 64) = v25;
  }

  v27 = sub_6C4F0(a2, a3, v24);
  swift_setDeallocating();
  if (*(v24 + 56))
  {
    sub_3940((v24 + 32));
  }

  if (*(&v75 + 1))
  {
    sub_3940(&v74);
  }

  sub_75248();
  v28 = sub_753D8();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v15, 1, v28) == 1)
  {
    sub_3D48(v15, &qword_8F290, &qword_7A130);
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
  }

  else
  {
    *(&v75 + 1) = v28;
    v76 = sub_59144(&qword_8F668, &type metadata accessor for DayOfWeek);
    v30 = sub_5914(&v74);
    (*(v29 + 32))(v30, v15, v28);
  }

  v31 = swift_initStackObject();
  v32 = v31;
  *(v31 + 16) = v73;
  if (*(&v75 + 1))
  {
    sub_5978(&v74, v31 + 32);
  }

  else
  {
    v33 = v76;
    v34 = v75;
    *(v31 + 32) = v74;
    *(v31 + 48) = v34;
    *(v31 + 64) = v33;
  }

  v35 = sub_6C4F0(a2, v27, v32);
  swift_setDeallocating();
  if (*(v32 + 56))
  {
    sub_3940((v32 + 32));
  }

  if (*(&v75 + 1))
  {
    sub_3940(&v74);
  }

  sub_75258();
  v36 = sub_753F8();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v11, 1, v36) == 1)
  {
    sub_3D48(v11, &qword_8FBC0, &unk_7A968);
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
  }

  else
  {
    *(&v75 + 1) = v36;
    v76 = sub_59144(&unk_8FC80, &type metadata accessor for HourOfDay);
    v38 = sub_5914(&v74);
    (*(v37 + 32))(v38, v11, v36);
  }

  sub_38F8(&qword_8EDA0, &unk_79D20);
  v39 = swift_initStackObject();
  v40 = v39;
  *(v39 + 16) = v73;
  if (*(&v75 + 1))
  {
    sub_5978(&v74, v39 + 32);
  }

  else
  {
    v41 = v76;
    v42 = v75;
    *(v39 + 32) = v74;
    *(v39 + 48) = v42;
    *(v39 + 64) = v41;
  }

  v43 = sub_6C2DC(a2, v35, v40);
  swift_setDeallocating();
  if (*(v40 + 56))
  {
    sub_3940((v40 + 32));
  }

  if (*(&v75 + 1))
  {
    sub_3940(&v74);
  }

  v44 = sub_75218();
  if (v45)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    *(&v74 + 1) = 0;
    *&v75 = 0;
  }

  else
  {
    v46 = v44;
    type metadata accessor for HKWorkoutActivityType(0);
    v47 = v49;
    v48 = sub_59144(&qword_8FC78, type metadata accessor for HKWorkoutActivityType);
  }

  *&v74 = v46;
  *(&v75 + 1) = v47;
  v76 = v48;
  sub_38F8(&qword_8FC68, &qword_7AD70);
  v50 = swift_initStackObject();
  v51 = v50;
  *(v50 + 16) = v73;
  if (v47)
  {
    sub_5978(&v74, v50 + 32);
  }

  else
  {
    v52 = v76;
    v53 = v75;
    *(v50 + 32) = v74;
    *(v50 + 48) = v53;
    *(v50 + 64) = v52;
  }

  v54 = sub_6C850(a2, v43, v51);
  swift_setDeallocating();
  v55 = v72;
  if (*(v51 + 56))
  {
    sub_3940((v51 + 32));
  }

  if (*(&v75 + 1))
  {
    sub_3940(&v74);
  }

  sub_75228();
  v56 = sub_74F18();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v55, 1, v56) == 1)
  {
    sub_3D48(v55, &qword_8FC60, &qword_7A9D8);
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
  }

  else
  {
    *(&v75 + 1) = v56;
    v76 = sub_59144(&qword_8FC70, &type metadata accessor for WorkoutLocationType);
    v58 = sub_5914(&v74);
    (*(v57 + 32))(v58, v55, v56);
  }

  v59 = swift_initStackObject();
  v60 = v59;
  *(v59 + 16) = v73;
  if (*(&v75 + 1))
  {
    sub_5978(&v74, v59 + 32);
  }

  else
  {
    v61 = v76;
    v62 = v75;
    *(v59 + 32) = v74;
    *(v59 + 48) = v62;
    *(v59 + 64) = v61;
  }

  v63 = sub_6C4F0(a2, v54, v60);
  swift_setDeallocating();
  if (*(v60 + 56))
  {
    sub_3940((v60 + 32));
  }

  if (*(&v75 + 1))
  {
    sub_3940(&v74);
  }

  v64 = sub_75238();
  v66 = v65;
  sub_38F8(&qword_8F678, &qword_7A4A0);
  v67 = swift_initStackObject();
  *(v67 + 16) = v73;
  *(v67 + 32) = v64;
  v68 = v67 + 32;
  *(v67 + 40) = v66;
  v69 = sub_6C3E0(a2, v63, v67);
  swift_setDeallocating();
  sub_3D48(v68, &qword_8EDA8, &unk_79D30);
  return v69;
}

uint64_t sub_58E88(uint64_t a1, uint64_t a2)
{
  v5 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  sub_38F8(&qword_8F180, &qword_79D40);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_79FD0;
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v30 = a2;
    v31 = v10;
    v37 = _swiftEmptyArrayStorage;
    sub_75978();
    v14 = v6 + 16;
    v15 = *(v6 + 16);
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v33 = (v6 + 8);
    v34 = v15;
    v32 = *(v6 + 72);
    while (1)
    {
      v17 = v14;
      v34(v9, v16, v5);
      sub_FB7C();
      v18 = sub_74F78();
      if (v2)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      v22 = _s13EntityWrapperCMa();
      v23 = objc_allocWithZone(v22);
      v24 = &v23[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
      *v24 = v20;
      *(v24 + 1) = v21;
      v36.receiver = v23;
      v36.super_class = v22;
      objc_msgSendSuper2(&v36, "init");
      (*v33)(v9, v5);
      sub_75958();
      v25 = v37[2];
      sub_75988();
      sub_75998();
      sub_75968();
      v16 += v32;
      --v12;
      v14 = v17;
      if (!v12)
      {
        v13 = v37;
        a2 = v30;
        v11 = v31;
        goto LABEL_6;
      }
    }

    (*v33)(v9, v5);

    v11 = v31;
    *(v31 + 16) = 0;
  }

  else
  {
LABEL_6:
    v26 = type metadata accessor for WorkoutPropertyRecordJournalEntry();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities] = v13;
    *&v27[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_provenance] = a2;
    v35.receiver = v27;
    v35.super_class = v26;
    *(v11 + 32) = objc_msgSendSuper2(&v35, "init");
  }

  return v11;
}

uint64_t sub_59144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5918C()
{
  sub_38F8(&qword_8F678, &qword_7A4A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A990;
  v1 = sub_752F8();
  v2 = sub_4844(v1);

  v3 = sub_39FD0(3, v2);
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = sub_75338();
  v7 = sub_485C(v6);

  v8 = sub_39FD0(4, v7);
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = sub_75348();
  v12 = sub_4874(v11);

  v13 = sub_39FD0(5, v12);
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = sub_75308();
  v17 = sub_49C8(v16);

  v18 = sub_39FD0(6, v17);
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = sub_75318();
  v22 = sub_4AC4(v21);

  v23 = sub_39FD0(7, v22);
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = sub_75328();
  v27 = sub_462C(v26);

  v28 = sub_39FD0(8, v27);
  v30 = v29;

  *(v0 + 112) = v28;
  *(v0 + 120) = v30;
  return v0;
}

uint64_t sub_59340(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_752F8();
  v6 = sub_4ADC(v5);

  v7 = sub_6C4F0(a1, a3, v6);

  v8 = sub_75338();
  v9 = sub_4B18(v8);

  v10 = sub_6C4F0(a1, v7, v9);

  v11 = sub_75348();
  v12 = sub_4B54(v11);

  v13 = sub_6C2DC(a1, v10, v12);

  v14 = sub_75308();
  v15 = sub_4BCC(v14);

  v16 = sub_6C850(a1, v13, v15);

  v17 = sub_75318();
  v18 = sub_4CEC(v17);

  v19 = sub_6C4F0(a1, v16, v18);

  v20 = sub_75328();
  v21 = sub_472C(v20);

  v22 = sub_6C3E0(a1, v19, v21);

  return v22;
}

uint64_t sub_594BC@<X0>(uint64_t a1@<X8>)
{
  sub_74BD8();
  sub_5A000(&unk_8FD10, &type metadata accessor for FitnessPlusPropertyDimensionsField);
  v2 = sub_756B8();

  return sub_56DA8(v2, a1);
}

id sub_59550()
{
  sub_38F8(&unk_8FD00, &qword_7A260);
  sub_59F9C();
  result = sub_74F78();
  v3 = result;
  if (!v0)
  {
    v4 = v2;
    v5 = type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
    *v7 = v3;
    *(v7 + 1) = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, "init");
  }

  return result;
}

id static FitnessPlusPropertyRecordEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:6 schemaIdentifier:v1];

  return v2;
}

uint64_t static FitnessPlusPropertyRecordEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
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
    v33 = sub_38F8(&qword_8FC90, &qword_7A9E0);
    sub_38F8(&qword_8FC98, &qword_7A9E8);
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
  return sub_8E44(v32, a2, a3, a4, a5);
}

id static FitnessPlusPropertyRecordEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
  *v6 = a1;
  v6[1] = a2;
  sub_398C(a1, a2);
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t _s25FitnessIntelligencePlugin0A24PlusPropertyRecordEntityC18receiveSyncObjects_7version9syncStore7profile5errorSo013HDSyncReceiveJ6ResultVSaySo0P7Codable_pG_So0P12VersionRangeaSo0pM0_pSo9HDProfileCSAySo7NSErrorCSgGSgtFZ_0(unint64_t a1)
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
    v16 = sub_38F8(&qword_8FC90, &qword_7A9E0);
    sub_38F8(&qword_8FC98, &qword_7A9E8);
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

uint64_t sub_59F44(uint64_t a1)
{
  result = sub_5A000(&unk_8FCF0, type metadata accessor for FitnessPlusPropertyRecordEntity);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_59F9C()
{
  result = qword_8F430;
  if (!qword_8F430)
  {
    sub_76D0(&unk_8FD00, &qword_7A260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F430);
  }

  return result;
}

uint64_t sub_5A000(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_5A04C()
{
  result = qword_8FD20;
  if (!qword_8FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FD20);
  }

  return result;
}

uint64_t sub_5A0E8(uint64_t a1)
{
  result = sub_5AD20(&qword_8FD78, type metadata accessor for FitnessPlusPropertyRecordEntity);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_5A144()
{
  result = qword_8FD80;
  if (!qword_8FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FD80);
  }

  return result;
}

uint64_t sub_5A198(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v69 = a2;
  v4 = sub_38F8(&qword_8FBB0, &qword_7A958);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v64 = &v64 - v6;
  v7 = sub_38F8(&qword_8FBB8, &qword_7A960);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v64 - v9;
  v11 = sub_38F8(&qword_8FBC0, &unk_7A968);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v64 - v13;
  v15 = sub_38F8(&qword_8F290, &qword_7A130);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v64 - v17;
  v19 = sub_38F8(&qword_8F298, &qword_7A138);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v64 - v21;
  sub_74B38();
  v23 = sub_74D08();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_3D48(v22, &qword_8F298, &qword_7A138);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  else
  {
    *(&v67 + 1) = v23;
    v68 = sub_5AD20(&qword_8F670, &type metadata accessor for MonthOfYear);
    v25 = sub_5914(&v66);
    (*(v24 + 32))(v25, v22, v23);
  }

  sub_38F8(&qword_8F658, &unk_7AD30);
  inited = swift_initStackObject();
  v27 = inited;
  v65 = xmmword_79BF0;
  *(inited + 16) = xmmword_79BF0;
  if (*(&v67 + 1))
  {
    sub_5978(&v66, inited + 32);
  }

  else
  {
    v28 = v68;
    v29 = v67;
    *(inited + 32) = v66;
    *(inited + 48) = v29;
    *(inited + 64) = v28;
  }

  v30 = sub_6C4F0(v69, a3, v27);
  swift_setDeallocating();
  if (*(v27 + 56))
  {
    sub_3940((v27 + 32));
  }

  if (*(&v67 + 1))
  {
    sub_3940(&v66);
  }

  sub_74B68();
  v31 = sub_753D8();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v18, 1, v31) == 1)
  {
    sub_3D48(v18, &qword_8F290, &qword_7A130);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  else
  {
    *(&v67 + 1) = v31;
    v68 = sub_5AD20(&qword_8F668, &type metadata accessor for DayOfWeek);
    v33 = sub_5914(&v66);
    (*(v32 + 32))(v33, v18, v31);
  }

  v34 = swift_initStackObject();
  v35 = v34;
  *(v34 + 16) = v65;
  v36 = v69;
  if (*(&v67 + 1))
  {
    sub_5978(&v66, v34 + 32);
  }

  else
  {
    v37 = v68;
    v38 = v67;
    *(v34 + 32) = v66;
    *(v34 + 48) = v38;
    *(v34 + 64) = v37;
  }

  v39 = sub_6C4F0(v36, v30, v35);
  swift_setDeallocating();
  if (*(v35 + 56))
  {
    sub_3940((v35 + 32));
  }

  if (*(&v67 + 1))
  {
    sub_3940(&v66);
  }

  sub_74B78();
  v40 = sub_753F8();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v14, 1, v40) == 1)
  {
    sub_3D48(v14, &qword_8FBC0, &unk_7A968);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  else
  {
    *(&v67 + 1) = v40;
    v68 = sub_5AD20(&unk_8FC80, &type metadata accessor for HourOfDay);
    v42 = sub_5914(&v66);
    (*(v41 + 32))(v42, v14, v40);
  }

  sub_38F8(&qword_8EDA0, &unk_79D20);
  v43 = swift_initStackObject();
  v44 = v43;
  *(v43 + 16) = v65;
  if (*(&v67 + 1))
  {
    sub_5978(&v66, v43 + 32);
  }

  else
  {
    v45 = v68;
    v46 = v67;
    *(v43 + 32) = v66;
    *(v43 + 48) = v46;
    *(v43 + 64) = v45;
  }

  v47 = sub_6C2DC(v36, v39, v44);
  swift_setDeallocating();
  if (*(v44 + 56))
  {
    sub_3940((v44 + 32));
  }

  if (*(&v67 + 1))
  {
    sub_3940(&v66);
  }

  sub_74B48();
  v48 = sub_74AA8();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v10, 1, v48) == 1)
  {
    sub_3D48(v10, &qword_8FBB8, &qword_7A960);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  else
  {
    *(&v67 + 1) = v48;
    v68 = sub_5AD20(&qword_8FDB0, &type metadata accessor for FitnessPlusModalityKind);
    v50 = sub_5914(&v66);
    (*(v49 + 32))(v50, v10, v48);
  }

  v51 = swift_initStackObject();
  v52 = v51;
  *(v51 + 16) = v65;
  v53 = v64;
  if (*(&v67 + 1))
  {
    sub_5978(&v66, v51 + 32);
  }

  else
  {
    v54 = v68;
    v55 = v67;
    *(v51 + 32) = v66;
    *(v51 + 48) = v55;
    *(v51 + 64) = v54;
  }

  v56 = sub_6C4F0(v36, v47, v52);
  swift_setDeallocating();
  if (*(v52 + 56))
  {
    sub_3940((v52 + 32));
  }

  if (*(&v67 + 1))
  {
    sub_3940(&v66);
  }

  sub_74B58();
  v57 = sub_74BB8();
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v53, 1, v57) == 1)
  {
    sub_3D48(v53, &qword_8FBB0, &qword_7A958);
    v59 = _swiftEmptyArrayStorage;
  }

  else
  {
    v59 = sub_74BA8();
    (*(v58 + 8))(v53, v57);
  }

  sub_38F8(&qword_8FDA0, &unk_7AD90);
  v60 = swift_initStackObject();
  *(v60 + 16) = v65;
  *(v60 + 32) = v59;
  v61 = v60 + 32;
  v62 = sub_6C6F4(v36, v56, v60);
  swift_setDeallocating();
  sub_3D48(v61, &qword_8FDA8, &qword_7AA48);
  return v62;
}

uint64_t sub_5AA64(uint64_t a1, uint64_t a2)
{
  v5 = sub_38F8(&unk_8FD00, &qword_7A260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  sub_38F8(&qword_8F180, &qword_79D40);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_79FD0;
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v30 = a2;
    v31 = v10;
    v37 = _swiftEmptyArrayStorage;
    sub_75978();
    v14 = v6 + 16;
    v15 = *(v6 + 16);
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v33 = (v6 + 8);
    v34 = v15;
    v32 = *(v6 + 72);
    while (1)
    {
      v17 = v14;
      v34(v9, v16, v5);
      sub_59F9C();
      v18 = sub_74F78();
      if (v2)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      v22 = type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper();
      v23 = objc_allocWithZone(v22);
      v24 = &v23[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
      *v24 = v20;
      *(v24 + 1) = v21;
      v36.receiver = v23;
      v36.super_class = v22;
      objc_msgSendSuper2(&v36, "init");
      (*v33)(v9, v5);
      sub_75958();
      v25 = v37[2];
      sub_75988();
      sub_75998();
      sub_75968();
      v16 += v32;
      --v12;
      v14 = v17;
      if (!v12)
      {
        v13 = v37;
        a2 = v30;
        v11 = v31;
        goto LABEL_6;
      }
    }

    (*v33)(v9, v5);

    v11 = v31;
    *(v31 + 16) = 0;
  }

  else
  {
LABEL_6:
    v26 = type metadata accessor for FitnessPlusPropertyRecordJournalEntry();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities] = v13;
    *&v27[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_provenance] = a2;
    v35.receiver = v27;
    v35.super_class = v26;
    *(v11 + 32) = objc_msgSendSuper2(&v35, "init");
  }

  return v11;
}

uint64_t sub_5AD20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5AD68()
{
  sub_38F8(&qword_8F678, &qword_7A4A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_79BA0;
  v1 = sub_74BE8();
  v2 = sub_4844(v1);

  v3 = sub_39E04(3, v2);
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = sub_74C18();
  v7 = sub_485C(v6);

  v8 = sub_39E04(4, v7);
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = sub_74C28();
  v12 = sub_4874(v11);

  v13 = sub_39E04(5, v12);
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = sub_74BF8();
  v17 = sub_488C(v16);

  v18 = sub_39E04(6, v17);
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = sub_74C08();
  v22 = sub_48A4(v21);

  v23 = sub_39E04(7, v22);
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  return v0;
}

uint64_t sub_5AEE4(sqlite3_stmt *a1, uint64_t a2, uint64_t a3)
{
  v44 = sub_74BB8();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_74BE8();
  v10 = sub_4ADC(v9);

  v11 = sub_6C4F0(a1, a3, v10);

  v12 = sub_74C18();
  v13 = sub_4B18(v12);

  v14 = sub_6C4F0(a1, v11, v13);

  v15 = sub_74C28();
  v16 = sub_4B54(v15);

  v17 = sub_6C2DC(a1, v14, v16);

  v18 = sub_74BF8();
  v19 = sub_4B90(v18);

  v20 = sub_6C4F0(a1, v17, v19);

  v21 = sub_74C08();
  v22 = *(v21 + 16);
  if (v22)
  {
    v38 = v20;
    v39 = a1;
    v40 = v3;
    v45 = _swiftEmptyArrayStorage;
    sub_67CFC(0, v22, 0);
    v23 = v45;
    v25 = *(v6 + 16);
    v24 = v6 + 16;
    v26 = *(v24 + 64);
    v37 = v21;
    v27 = v21 + ((v26 + 32) & ~v26);
    v41 = *(v24 + 56);
    v42 = v25;
    v28 = (v24 - 8);
    do
    {
      v29 = v43;
      v30 = v44;
      v31 = v24;
      v42(v43, v27, v44);
      v32 = sub_74BA8();
      (*v28)(v29, v30);
      v45 = v23;
      v34 = v23[2];
      v33 = v23[3];
      if (v34 >= v33 >> 1)
      {
        sub_67CFC((v33 > 1), v34 + 1, 1);
        v23 = v45;
      }

      v23[2] = v34 + 1;
      v23[v34 + 4] = v32;
      v27 += v41;
      --v22;
      v24 = v31;
    }

    while (v22);

    a1 = v39;
    v20 = v38;
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
  }

  v35 = sub_6C6F4(a1, v20, v23);

  return v35;
}

uint64_t sub_5B1CC(char a1)
{
  v2 = sub_5C16C();
  v3 = sub_5B270(a1);
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

unint64_t sub_5B270(char a1)
{
  result = 0x4449574F52;
  switch(a1)
  {
    case 1:
      result = 0x6361437472617473;
      break;
    case 2:
      result = 0x6568636143646E65;
      break;
    case 3:
      result = 0x59664F68746E6F6DLL;
      break;
    case 4:
      result = 0x656557664F796164;
      break;
    case 5:
      result = 0x6144664F72756F68;
      break;
    case 6:
      result = 0x7974697669746361;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
    case 10:
      result = 0x79747265706F7270;
      break;
    case 11:
      result = 0x6E6F6973726576;
      break;
    case 12:
      result = 0x4164657461657263;
      break;
    case 13:
      result = 0x766F7250636E7973;
      break;
    case 14:
      result = 0x6E656449636E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5B480(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_5B270(*a1);
  v5 = v4;
  if (v3 == sub_5B270(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_75A68();
  }

  return v8 & 1;
}

Swift::Int sub_5B508()
{
  v1 = *v0;
  sub_75AE8();
  sub_5B270(v1);
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_5B56C()
{
  sub_5B270(*v0);
  sub_755E8();
}

Swift::Int sub_5B5C0()
{
  v1 = *v0;
  sub_75AE8();
  sub_5B270(v1);
  sub_755E8();

  return sub_75B08();
}

uint64_t sub_5B620@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5C850(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_5B650@<X0>(unint64_t *a1@<X8>)
{
  result = sub_5B270(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_5B6E8()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7AA50;
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
  v28 = [v25 initWithName:v26 columnType:v27 keyPathType:3];

  *(v0 + 80) = v28;
  v29 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v30 = sub_75598();
  v31 = sub_75598();
  v32 = [v29 initWithName:v30 columnType:v31 keyPathType:4];

  *(v0 + 88) = v32;
  v33 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v34 = sub_75598();
  v35 = sub_75598();
  v36 = [v33 initWithName:v34 columnType:v35 keyPathType:4];

  *(v0 + 96) = v36;
  v37 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v38 = sub_75598();
  v39 = sub_75598();
  v40 = [v37 initWithName:v38 columnType:v39 keyPathType:4];

  *(v0 + 104) = v40;
  v41 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v42 = sub_75598();
  v43 = sub_75598();
  v44 = [v41 initWithName:v42 columnType:v43 keyPathType:4];

  *(v0 + 112) = v44;
  v45 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v46 = sub_75598();
  v47 = sub_75598();
  v48 = [v45 initWithName:v46 columnType:v47 keyPathType:3];

  *(v0 + 120) = v48;
  v49 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v50 = sub_75598();
  v51 = sub_75598();
  v52 = [v49 initWithName:v50 columnType:v51 keyPathType:1];

  *(v0 + 128) = v52;
  v53 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v54 = sub_75598();
  v55 = sub_75598();
  v56 = [v53 initWithName:v54 columnType:v55 keyPathType:3];

  *(v0 + 136) = v56;
  v57 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v58 = sub_75598();
  v59 = sub_75598();
  v60 = [v57 initWithName:v58 columnType:v59 keyPathType:3];

  *(v0 + 144) = v60;
  qword_90058 = v0;
}

uint64_t static WorkoutPropertyRecordEntity.indices(with:)()
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

id WorkoutPropertyRecordEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for WorkoutPropertyRecordEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id WorkoutPropertyRecordEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPropertyRecordEntity();
  return objc_msgSendSuper2(&v2, "init");
}

id WorkoutPropertyRecordEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPropertyRecordEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_5C16C()
{
  sub_67C58(0, 14, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = 0xE500000000000000;
    v3 = 0x4449574F52;
    switch(*(&off_858B0 + v0 + 32))
    {
      case 1:
        v3 = 0x6361437472617473;
        v2 = 0xEF7865646E496568;
        break;
      case 2:
        v3 = 0x6568636143646E65;
        v2 = 0xED00007865646E49;
        break;
      case 3:
        v3 = 0x59664F68746E6F6DLL;
        v2 = 0xEB00000000726165;
        break;
      case 4:
        v3 = 0x656557664F796164;
        v2 = 0xE90000000000006BLL;
        break;
      case 5:
        v2 = 0xE900000000000079;
        v3 = 0x6144664F72756F68;
        break;
      case 6:
        v3 = 0x7974697669746361;
        v2 = 0xEC00000065707954;
        break;
      case 7:
        v3 = 0x6E6F697461636F6CLL;
        v2 = 0xEC00000065707954;
        break;
      case 8:
        v3 = 0xD000000000000010;
        v2 = 0x80000000000773F0;
        break;
      case 9:
        v3 = 0x79747265706F7270;
        v2 = 0xEC000000646E694BLL;
        break;
      case 0xA:
        v3 = 0x79747265706F7270;
        v2 = 0xEC00000061746144;
        break;
      case 0xB:
        v2 = 0xE700000000000000;
        v3 = 0x6E6F6973726576;
        break;
      case 0xC:
        v2 = 0xE900000000000074;
        v3 = 0x4164657461657263;
        break;
      case 0xD:
        v3 = 0x766F7250636E7973;
        v2 = 0xEE0065636E616E65;
        break;
      case 0xE:
        v3 = 0x6E656449636E7973;
        v2 = 0xEC00000079746974;
        break;
      default:
        break;
    }

    v7 = result;
    v5 = result[2];
    v4 = result[3];
    if (v5 >= v4 >> 1)
    {
      sub_67C58((v4 > 1), v5 + 1, 1);
      result = v7;
    }

    ++v0;
    result[2] = v5 + 1;
    v6 = &result[2 * v5];
    v6[4] = v3;
    v6[5] = v2;
  }

  while (v0 != 14);
  return result;
}

char *_s25FitnessIntelligencePlugin27WorkoutPropertyRecordEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD000000000000030;
  v22._object = 0x80000000000796A0;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8EA08 != -1)
  {
    swift_once();
  }

  v0 = qword_90058;
  if (qword_90058 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90058 & 0xFFFFFFFFFFFFFF8));
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

uint64_t sub_5C850(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_85CC0;
  v6._object = a2;
  v4 = sub_75A18(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5C89C(void *a1)
{
  if (qword_8EA08 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = qword_90058;
  v3 = qword_90058 >> 62;
  if (qword_90058 >> 62)
  {
    if (qword_90058 < 0)
    {
      v1 = qword_90058;
    }

    else
    {
      v1 = qword_90058 & 0xFFFFFFFFFFFFFF8;
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90058 & 0xFFFFFFFFFFFFFF8));
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

uint64_t getEnumTagSinglePayload for WorkoutPropertyRecordEntity.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPropertyRecordEntity.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_5CBD0()
{
  result = qword_8FDF0;
  if (!qword_8FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FDF0);
  }

  return result;
}

unint64_t sub_5CC24(uint64_t a1)
{
  *(a1 + 8) = sub_5CC54();
  result = sub_5CCA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_5CC54()
{
  result = qword_8FDF8;
  if (!qword_8FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FDF8);
  }

  return result;
}

unint64_t sub_5CCA8()
{
  result = qword_8FE00;
  if (!qword_8FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FE00);
  }

  return result;
}

unint64_t sub_5CCFC(uint64_t a1)
{
  result = sub_58568();
  *(a1 + 8) = result;
  return result;
}

void sub_5CD24(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v60 = a3;
  v61 = a2;
  v6 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v11 = sub_75028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75008();
  v59 = sub_75018();
  (*(v12 + 8))(v15, v11);
  v16 = *(a1 + 16);
  if (v16)
  {
    v57 = a4;
    v58 = a1;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v62 = *(v17 + 56);
    v63 = v18;
    v64 = v17;
    v20 = (v17 - 8);
    v21 = _swiftEmptyArrayStorage;
    do
    {
      v63(v10, v19, v6);
      v22 = sub_750A8();
      (*v20)(v10, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_674CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v21 = sub_674CC((v23 > 1), v24 + 1, 1, v21);
      }

      *(v21 + 2) = v25;
      *&v21[8 * v24 + 32] = v22;
      v19 += v62;
      --v16;
    }

    while (v16);
LABEL_11:
    v26 = *(v21 + 4);
    v27 = v25 - 1;
    if (v25 == 1)
    {
      a4 = v57;
      a1 = v58;
LABEL_22:
      v37 = v59;
      goto LABEL_23;
    }

    if (v25 >= 5)
    {
      v28 = v27 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v29 = vdupq_n_s64(v26);
      v30 = (v21 + 56);
      v31 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = v29;
      do
      {
        v29 = vbslq_s8(vcgtq_s64(v29, v30[-1]), v29, v30[-1]);
        v32 = vbslq_s8(vcgtq_s64(v32, *v30), v32, *v30);
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v33 = vbslq_s8(vcgtq_s64(v29, v32), v29, v32);
      v34 = vextq_s8(v33, v33, 8uLL).u64[0];
      v26 = vbsl_s8(vcgtd_s64(v33.i64[0], v34), *v33.i8, v34);
      a4 = v57;
      a1 = v58;
      if (v27 == (v27 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v28 = 1;
      a4 = v57;
      a1 = v58;
    }

    v35 = v25 - v28;
    v36 = 8 * v28 + 32;
    do
    {
      if (v26 <= *&v21[v36])
      {
        v26 = *&v21[v36];
      }

      v36 += 8;
      --v35;
    }

    while (v35);
    goto LABEL_22;
  }

  v21 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v57 = a4;
    v58 = a1;
    goto LABEL_11;
  }

  v37 = v59;
  v26 = v59;
LABEL_23:

  if (v37 <= v26)
  {
    v38 = v26;
  }

  else
  {
    v38 = v37;
  }

  if (a4)
  {
    v39 = a4;
  }

  else
  {
    v39 = [objc_opt_self() contextForWritingProtectedData];
  }

  v40 = a4;
  v41 = v60;
  v64 = [v60 database];
  v42 = swift_allocObject();
  v42[2] = a1;
  v42[3] = v41;
  v42[4] = v38;
  v43 = v61;
  v42[5] = v61;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_6A9C0;
  *(v44 + 24) = v42;
  v69 = sub_1008C;
  v70 = v44;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_2BB8;
  v68 = &unk_89248;
  v45 = _Block_copy(&aBlock);
  v63 = v39;

  v46 = v41;

  v47 = swift_allocObject();
  v47[2] = a1;
  v47[3] = v43;
  v47[4] = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_6AA0C;
  *(v48 + 24) = v47;
  v69 = sub_6AD24;
  v70 = v48;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_65494;
  v68 = &unk_892C0;
  v49 = _Block_copy(&aBlock);
  v50 = v63;

  v51 = v46;

  aBlock = 0;
  v52 = v64;
  v53 = [v64 performTransactionWithContext:v50 error:&aBlock block:v45 inaccessibilityHandler:v49];
  _Block_release(v49);
  _Block_release(v45);

  v54 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v53 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_5D36C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v60 = a3;
  v61 = a2;
  v6 = sub_38F8(&unk_8FD00, &qword_7A260);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v11 = sub_75028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75008();
  v59 = sub_75018();
  (*(v12 + 8))(v15, v11);
  v16 = *(a1 + 16);
  if (v16)
  {
    v57 = a4;
    v58 = a1;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v62 = *(v17 + 56);
    v63 = v18;
    v64 = v17;
    v20 = (v17 - 8);
    v21 = _swiftEmptyArrayStorage;
    do
    {
      v63(v10, v19, v6);
      v22 = sub_750A8();
      (*v20)(v10, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_674CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v21 = sub_674CC((v23 > 1), v24 + 1, 1, v21);
      }

      *(v21 + 2) = v25;
      *&v21[8 * v24 + 32] = v22;
      v19 += v62;
      --v16;
    }

    while (v16);
LABEL_11:
    v26 = *(v21 + 4);
    v27 = v25 - 1;
    if (v25 == 1)
    {
      a4 = v57;
      a1 = v58;
LABEL_22:
      v37 = v59;
      goto LABEL_23;
    }

    if (v25 >= 5)
    {
      v28 = v27 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v29 = vdupq_n_s64(v26);
      v30 = (v21 + 56);
      v31 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = v29;
      do
      {
        v29 = vbslq_s8(vcgtq_s64(v29, v30[-1]), v29, v30[-1]);
        v32 = vbslq_s8(vcgtq_s64(v32, *v30), v32, *v30);
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v33 = vbslq_s8(vcgtq_s64(v29, v32), v29, v32);
      v34 = vextq_s8(v33, v33, 8uLL).u64[0];
      v26 = vbsl_s8(vcgtd_s64(v33.i64[0], v34), *v33.i8, v34);
      a4 = v57;
      a1 = v58;
      if (v27 == (v27 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v28 = 1;
      a4 = v57;
      a1 = v58;
    }

    v35 = v25 - v28;
    v36 = 8 * v28 + 32;
    do
    {
      if (v26 <= *&v21[v36])
      {
        v26 = *&v21[v36];
      }

      v36 += 8;
      --v35;
    }

    while (v35);
    goto LABEL_22;
  }

  v21 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v57 = a4;
    v58 = a1;
    goto LABEL_11;
  }

  v37 = v59;
  v26 = v59;
LABEL_23:

  if (v37 <= v26)
  {
    v38 = v26;
  }

  else
  {
    v38 = v37;
  }

  if (a4)
  {
    v39 = a4;
  }

  else
  {
    v39 = [objc_opt_self() contextForWritingProtectedData];
  }

  v40 = a4;
  v41 = v60;
  v64 = [v60 database];
  v42 = swift_allocObject();
  v42[2] = a1;
  v42[3] = v41;
  v42[4] = v38;
  v43 = v61;
  v42[5] = v61;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_6A85C;
  *(v44 + 24) = v42;
  v69 = sub_1008C;
  v70 = v44;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_2BB8;
  v68 = &unk_89068;
  v45 = _Block_copy(&aBlock);
  v63 = v39;

  v46 = v41;

  v47 = swift_allocObject();
  v47[2] = a1;
  v47[3] = v43;
  v47[4] = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_6A86C;
  *(v48 + 24) = v47;
  v69 = sub_6AD24;
  v70 = v48;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_65494;
  v68 = &unk_890E0;
  v49 = _Block_copy(&aBlock);
  v50 = v63;

  v51 = v46;

  aBlock = 0;
  v52 = v64;
  v53 = [v64 performTransactionWithContext:v50 error:&aBlock block:v45 inaccessibilityHandler:v49];
  _Block_release(v49);
  _Block_release(v45);

  v54 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v53 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_5D9B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v60 = a3;
  v61 = a2;
  v6 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v11 = sub_75028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75008();
  v59 = sub_75018();
  (*(v12 + 8))(v15, v11);
  v16 = *(a1 + 16);
  if (v16)
  {
    v57 = a4;
    v58 = a1;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v62 = *(v17 + 56);
    v63 = v18;
    v64 = v17;
    v20 = (v17 - 8);
    v21 = _swiftEmptyArrayStorage;
    do
    {
      v63(v10, v19, v6);
      v22 = sub_750A8();
      (*v20)(v10, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_674CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v21 = sub_674CC((v23 > 1), v24 + 1, 1, v21);
      }

      *(v21 + 2) = v25;
      *&v21[8 * v24 + 32] = v22;
      v19 += v62;
      --v16;
    }

    while (v16);
LABEL_11:
    v26 = *(v21 + 4);
    v27 = v25 - 1;
    if (v25 == 1)
    {
      a4 = v57;
      a1 = v58;
LABEL_22:
      v37 = v59;
      goto LABEL_23;
    }

    if (v25 >= 5)
    {
      v28 = v27 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v29 = vdupq_n_s64(v26);
      v30 = (v21 + 56);
      v31 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = v29;
      do
      {
        v29 = vbslq_s8(vcgtq_s64(v29, v30[-1]), v29, v30[-1]);
        v32 = vbslq_s8(vcgtq_s64(v32, *v30), v32, *v30);
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v33 = vbslq_s8(vcgtq_s64(v29, v32), v29, v32);
      v34 = vextq_s8(v33, v33, 8uLL).u64[0];
      v26 = vbsl_s8(vcgtd_s64(v33.i64[0], v34), *v33.i8, v34);
      a4 = v57;
      a1 = v58;
      if (v27 == (v27 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_22;
      }
    }

    else
    {
      v28 = 1;
      a4 = v57;
      a1 = v58;
    }

    v35 = v25 - v28;
    v36 = 8 * v28 + 32;
    do
    {
      if (v26 <= *&v21[v36])
      {
        v26 = *&v21[v36];
      }

      v36 += 8;
      --v35;
    }

    while (v35);
    goto LABEL_22;
  }

  v21 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v57 = a4;
    v58 = a1;
    goto LABEL_11;
  }

  v37 = v59;
  v26 = v59;
LABEL_23:

  if (v37 <= v26)
  {
    v38 = v26;
  }

  else
  {
    v38 = v37;
  }

  if (a4)
  {
    v39 = a4;
  }

  else
  {
    v39 = [objc_opt_self() contextForWritingProtectedData];
  }

  v40 = a4;
  v41 = v60;
  v64 = [v60 database];
  v42 = swift_allocObject();
  v42[2] = a1;
  v42[3] = v41;
  v42[4] = v38;
  v43 = v61;
  v42[5] = v61;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_685A0;
  *(v44 + 24) = v42;
  v69 = sub_FC94;
  v70 = v44;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_2BB8;
  v68 = &unk_88E88;
  v45 = _Block_copy(&aBlock);
  v63 = v39;

  v46 = v41;

  v47 = swift_allocObject();
  v47[2] = a1;
  v47[3] = v43;
  v47[4] = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_685C4;
  *(v48 + 24) = v47;
  v69 = sub_685FC;
  v70 = v48;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_65494;
  v68 = &unk_88F00;
  v49 = _Block_copy(&aBlock);
  v50 = v63;

  v51 = v46;

  aBlock = 0;
  v52 = v64;
  v53 = [v64 performTransactionWithContext:v50 error:&aBlock block:v45 inaccessibilityHandler:v49];
  _Block_release(v49);
  _Block_release(v45);

  v54 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v53 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

uint64_t sub_5DFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_74CA8();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_6A7F0(&qword_8F2A0);
        v21 = sub_75558();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_5E298(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v238 = a5;
  v237 = a4;
  v255 = sub_38F8(&qword_8F0A0, &qword_79EC8);
  v239 = *(v255 - 8);
  v10 = *(v239 + 64);
  __chkstk_darwin(v255);
  v254 = &v217 - v11;
  v269 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v261 = *(v269 - 8);
  v12 = *(v261 + 64);
  v13 = __chkstk_darwin(v269);
  v263 = &v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v253 = (&v217 - v16);
  v272 = v17;
  __chkstk_darwin(v15);
  v260 = &v217 - v18;
  v19 = sub_38F8(&qword_8FED0, &qword_7ACB0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v265 = &v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v264 = &v217 - v23;
  v270 = sub_74CA8();
  v243 = *(v270 - 8);
  v24 = *(v243 + 64);
  v25 = __chkstk_darwin(v270);
  v27 = (&v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v266 = &v217 - v28;
  v242 = sub_74968();
  v29 = *(v242 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v242);
  v236 = &v217 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v240 = &v217 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v217 - v36;
  __chkstk_darwin(v35);
  v245 = &v217 - v38;
  v39 = sub_754B8();
  v246 = *(v39 - 8);
  v40 = *(v246 + 64);
  v41 = __chkstk_darwin(v39);
  v235 = &v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v268 = &v217 - v44;
  v45 = __chkstk_darwin(v43);
  v241 = &v217 - v46;
  v47 = __chkstk_darwin(v45);
  v267 = &v217 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v217 - v50;
  __chkstk_darwin(v49);
  v53 = &v217 - v52;
  v54 = [a1 protectedDatabase];
  if (!v54)
  {
    sub_75378();
    v58 = sub_754A8();
    v59 = sub_75718();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "Failed to insert: no protected database", v60, 2u);
    }

    (*(v246 + 8))(v53, v39);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v61 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v262 = *(a3 + 16);
  if (!v262)
  {

    return 1;
  }

  v229 = v51;
  v231 = a2;
  v227 = a6;
  v234 = v54;
  v230 = a3;
  v55 = v245;
  sub_74958();
  v56 = v29[2];
  v57 = v242;
  v56(v37, v55, v242);
  sub_74908();
  v233 = v29[1];
  v233(v37, v57);
  sub_74C68();
  v223 = v29;
  v218 = v56;
  v219 = v29 + 2;
  v225 = v29 + 1;
  v63 = *(v243 + 8);
  v243 += 8;
  v224 = v63;
  v63(v27, v270);
  *&aBlock = v230;
  sub_38F8(&qword_8FED8, &qword_7ACB8);
  v64 = sub_7718(&qword_8FEE0, &qword_8FED8, &qword_7ACB8);
  sub_6A63C();
  v65 = sub_75648();
  v226 = 0;
  v232 = 0;
  v228 = 0;
  v67 = 0;
  v68 = *(v65 + 64);
  v244 = v65 + 64;
  v256 = v65;
  v69 = 1 << *(v65 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & v68;
  v72 = (v69 + 63) >> 6;
  v271 = (v246 + 8);
  v257 = "FitnessPlusPropertyRecordEntity";
  v252 = v239 + 16;
  v251 = (v239 + 8);
  v222 = "ournalEntry.swift";
  v221 = v272 + 7;
  v220 = &v277;
  *&v66 = 136315394;
  v248 = v66;
  *&v66 = 136315138;
  v247 = v66;
  v259 = v39;
  v73 = v253;
  v258 = v72;
LABEL_13:
  v74 = v67;
  v75 = v265;
  while (1)
  {
    if (!v71)
    {
      if (v72 <= v74 + 1)
      {
        v78 = v74 + 1;
      }

      else
      {
        v78 = v72;
      }

      while (1)
      {
        v77 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if (v77 >= v72)
        {
          v272 = (v78 - 1);
          v106 = sub_38F8(&qword_8FEE8, &qword_7ACC0);
          (*(*(v106 - 8) + 56))(v75, 1, 1, v106);
          v71 = 0;
          goto LABEL_25;
        }

        v71 = *(v244 + 8 * v77);
        v74 = (v74 + 1);
        if (v71)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_70:
      v216 = v64;
      sub_74898();

      swift_willThrow();

      sub_3D48(v27, &qword_8F000, &qword_7A5D0);
      v224(v266, v270);
      v233(v245, v242);
      v203 = 0;
      v207 = sub_6ADA0;
      v205 = v259;
      v206 = v241;
      v204 = v231;
      goto LABEL_61;
    }

    v77 = v74;
LABEL_24:
    v79 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v80 = v79 | (v77 << 6);
    v81 = v256;
    v82 = v260;
    sub_6A6DC(*(v256 + 48) + *(v261 + 72) * v80, v260);
    v83 = *(*(v81 + 56) + 8 * v80);
    v84 = sub_38F8(&qword_8FEE8, &qword_7ACC0);
    v85 = *(v84 + 48);
    sub_1B748(v82, v75, &qword_8F000, &qword_7A5D0);
    *(v75 + v85) = v83;
    (*(*(v84 - 8) + 56))(v75, 0, 1, v84);

    v272 = v77;
LABEL_25:
    v86 = v264;
    sub_1B748(v75, v264, &qword_8FED0, &qword_7ACB0);
    v87 = sub_38F8(&qword_8FEE8, &qword_7ACC0);
    v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
    v89 = v263;
    if (v88 == 1)
    {
      break;
    }

    v90 = *(v86 + *(v87 + 48));
    v27 = &qword_7A5D0;
    sub_1B748(v86, v73, &qword_8F000, &qword_7A5D0);
    v91 = *(v269 + 36);
    sub_6A7F0(&qword_8F2A0);
    if (sub_75568())
    {
      v107 = *(v90 + 16);
      if (v107)
      {
        *&aBlock = _swiftEmptyArrayStorage;
        sub_67C58(0, v107, 0);
        v108 = aBlock;
        v109 = v90 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
        v250 = *(v239 + 72);
        v249 = *(v239 + 16);
        do
        {
          v110 = v254;
          v111 = v255;
          v249(v254, v109, v255);
          v112 = sub_75068();
          v114 = v113;
          (*v251)(v110, v111);
          *&aBlock = v108;
          v116 = v108[2];
          v115 = v108[3];
          if (v116 >= v115 >> 1)
          {
            sub_67C58((v115 > 1), v116 + 1, 1);
            v108 = aBlock;
          }

          v108[2] = v116 + 1;
          v117 = &v108[2 * v116];
          v117[4] = v112;
          v117[5] = v114;
          v109 += v250;
          --v107;
        }

        while (v107);
      }

      else
      {

        v108 = _swiftEmptyArrayStorage;
      }

      v118 = sub_6A488(v108);

      v119 = v226;
      v120 = sub_64290(v118);
      v226 = v119;
      *&aBlock = v120;
      sub_38F8(&qword_8F280, &unk_7ABA0);
      sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
      v121 = sub_75538();
      v123 = v122;

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_75908(87);
      v283._countAndFlagsBits = 0x46204554454C4544;
      v283._object = 0xEC000000204D4F52;
      sub_75608(v283);
      type metadata accessor for RingsPropertyRecordEntity();
      v124 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
      v125 = sub_755A8();
      v127 = v126;

      v284._countAndFlagsBits = v125;
      v284._object = v127;
      sub_75608(v284);

      v285._countAndFlagsBits = 0xD000000000000046;
      v285._object = (v222 | 0x8000000000000000);
      sub_75608(v285);
      v286._countAndFlagsBits = v121;
      v286._object = v123;
      sub_75608(v286);

      v287._countAndFlagsBits = 41;
      v287._object = 0xE100000000000000;
      sub_75608(v287);
      v128 = sub_75598();

      v27 = v253;
      v129 = v260;
      sub_6A6DC(v253, v260);
      v130 = (*(v261 + 80) + 16) & ~*(v261 + 80);
      v131 = &v221[v130] & 0xFFFFFFFFFFFFFFF8;
      v132 = swift_allocObject();
      sub_1B748(v129, v132 + v130, &qword_8F000, &qword_7A5D0);
      *(v132 + v131) = v118;
      sub_43230(v232);
      v133 = swift_allocObject();
      *(v133 + 16) = sub_6ADA0;
      *(v133 + 24) = v132;
      v279 = sub_6ADA4;
      v280 = v133;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v277 = sub_644E0;
      v278 = &unk_893B0;
      v134 = _Block_copy(&aBlock);

      *&aBlock = 0;
      LODWORD(v129) = [v234 executeSQL:v128 error:&aBlock bindingHandler:v134 enumerationHandler:0];
      _Block_release(v134);

      v64 = aBlock;
      if (v129)
      {
        v135 = aBlock;
        sub_3D48(v27, &qword_8F000, &qword_7A5D0);
        v232 = sub_6ADA0;
        v228 = v132;
        v67 = v272;
        v73 = v27;
        v72 = v258;
        goto LABEL_13;
      }

      goto LABEL_70;
    }

    v92 = v267;
    sub_75378();
    sub_6A6DC(v73, v89);
    v93 = sub_754A8();
    v94 = sub_75718();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      *v95 = v248;
      *(v95 + 4) = sub_31B4(0xD000000000000019, v257 | 0x8000000000000000, &v281);
      *(v95 + 12) = 2080;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_759A8();
      v282._countAndFlagsBits = 3026478;
      v282._object = 0xE300000000000000;
      sub_75608(v282);
      v96 = *(v269 + 36);
      sub_759A8();
      v97 = aBlock;
      sub_3D48(v89, &qword_8F000, &qword_7A5D0);
      v98 = sub_31B4(v97, *(&v97 + 1), &v281);

      *(v95 + 14) = v98;
      _os_log_impl(&dword_0, v93, v94, "[%s] Trying to insert records in the future: %s, skipping...", v95, 0x16u);
      swift_arrayDestroy();

      v27 = &qword_7A5D0;
      v73 = v253;

      v99 = *v271;
      v100 = v267;
    }

    else
    {

      sub_3D48(v89, &qword_8F000, &qword_7A5D0);
      v99 = *v271;
      v100 = v92;
    }

    v101 = v259;
    (v99)(v100, v259);
    v64 = v268;
    sub_75378();
    v102 = sub_754A8();
    v103 = sub_75728();
    v104 = os_log_type_enabled(v102, v103);
    v75 = v265;
    if (v104)
    {
      v64 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&aBlock = v105;
      *v64 = v247;
      *(v64 + 1) = sub_31B4(0xD000000000000019, v257 | 0x8000000000000000, &aBlock);
      _os_log_impl(&dword_0, v102, v103, "[%s] Tried to insert records in the future", v64, 0xCu);
      sub_3940(v105);

      v76 = v268;
    }

    else
    {

      v76 = v64;
    }

    (v99)(v76, v101);
    sub_3D48(v73, &qword_8F000, &qword_7A5D0);
    v74 = v272;
    v72 = v258;
  }

  sub_75378();
  v136 = sub_754A8();
  v137 = sub_75738();
  v138 = os_log_type_enabled(v136, v137);
  v139 = v242;
  v140 = v245;
  v141 = v233;
  if (v138)
  {
    v142 = swift_slowAlloc();
    *v142 = 134217984;
    v143 = v240;
    sub_74958();
    swift_beginAccess();
    v144 = v236;
    v218(v236, v140, v139);
    sub_748F8();
    v146 = v145;
    v141(v144, v139);
    v141(v143, v139);
    *(v142 + 4) = v146;
    _os_log_impl(&dword_0, v136, v137, "Deleted existing matching records in %fs", v142, 0xCu);
  }

  v268 = *v271;
  (v268)(v229, v259);
  v147 = v240;
  sub_74958();
  swift_beginAccess();
  (v223[5])(v140, v147, v139);
  v275 = &off_85790;
  sub_66D40(&off_857B8, &qword_8FEF0, &qword_7ACC8);
  sub_66D40(&off_857E0, &qword_8FEF0, &qword_7ACC8);
  v272 = v275;
  v274 = _swiftEmptyArrayStorage;
  v148 = v262;
  sub_67C58(0, v262, 0);
  v149 = 0;
  v150 = v274;
  do
  {
    if (v149 == v148)
    {
      __break(1u);
    }

    *&aBlock = 40;
    *(&aBlock + 1) = 0xE100000000000000;
    v151 = *(v272 + 2);
    if (v151)
    {
      v273 = _swiftEmptyArrayStorage;
      sub_67C58(0, v151, 0);
      v152 = v273;
      v153 = v273[2];
      v154 = 2 * v153;
      do
      {
        v273 = v152;
        v155 = v152[3];
        v156 = v153 + 1;
        if (v153 >= v155 >> 1)
        {
          sub_67C58((v155 > 1), v153 + 1, 1);
          v152 = v273;
        }

        v152[2] = v156;
        v157 = &v152[v154];
        v157[4] = 63;
        v157[5] = 0xE100000000000000;
        v154 += 2;
        v153 = v156;
        --v151;
      }

      while (v151);
    }

    else
    {
      v152 = _swiftEmptyArrayStorage;
    }

    v273 = v152;
    v158 = sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
    v269 = v158;
    v159 = sub_75538();
    v161 = v160;

    v288._countAndFlagsBits = v159;
    v288._object = v161;
    sub_75608(v288);

    v289._countAndFlagsBits = 41;
    v289._object = 0xE100000000000000;
    sub_75608(v289);
    v162 = aBlock;
    v274 = v150;
    v164 = v150[2];
    v163 = v150[3];
    if (v164 >= v163 >> 1)
    {
      sub_67C58((v163 > 1), v164 + 1, 1);
      v150 = v274;
    }

    ++v149;
    v150[2] = v164 + 1;
    *&v150[2 * v164 + 4] = v162;
    v148 = v262;
  }

  while (v149 != v262);

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_75908(30);

  strcpy(&aBlock, "INSERT INTO ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  type metadata accessor for RingsPropertyRecordEntity();
  v165 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
  v166 = sub_755A8();
  v168 = v167;

  v290._countAndFlagsBits = v166;
  v290._object = v168;
  sub_75608(v290);

  v291._countAndFlagsBits = 10272;
  v291._object = 0xE200000000000000;
  sub_75608(v291);
  v274 = sub_12FE0();
  v169 = sub_75538();
  v171 = v170;

  v292._countAndFlagsBits = v169;
  v292._object = v171;
  sub_75608(v292);

  v293._countAndFlagsBits = 0x5345554C41562029;
  v293._object = 0xE900000000000020;
  sub_75608(v293);
  v274 = v150;
  v172 = sub_75538();
  v174 = v173;

  v294._countAndFlagsBits = v172;
  v294._object = v174;
  sub_75608(v294);

  v295._countAndFlagsBits = 59;
  v295._object = 0xE100000000000000;
  sub_75608(v295);
  v175 = [v237 syncIdentityManager];
  v176 = [v175 currentSyncIdentity];

  v177 = [v176 entity];
  v178 = [v177 persistentID];

  v179 = sub_75598();

  v180 = swift_allocObject();
  v181 = v238;
  v180[2] = v230;
  v180[3] = v181;
  v182 = v245;
  v183 = v227;
  v180[4] = v245;
  v180[5] = v183;
  v180[6] = v178;
  v184 = swift_allocObject();
  *(v184 + 16) = sub_6AA7C;
  *(v184 + 24) = v180;
  v279 = sub_6ADA4;
  v280 = v184;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v277 = sub_644E0;
  v278 = &unk_89338;
  v185 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v186 = v234;
  LOBYTE(v178) = [v234 executeSQL:v179 error:&aBlock bindingHandler:v185 enumerationHandler:0];
  _Block_release(v185);

  if (v178)
  {
    v187 = aBlock;
    v188 = v235;
    sub_75378();

    v189 = sub_754A8();
    v190 = sub_75738();
    v191 = os_log_type_enabled(v189, v190);
    v192 = v259;
    v193 = v242;
    if (v191)
    {
      v194 = swift_slowAlloc();
      *v194 = 134218240;
      *(v194 + 4) = v262;

      *(v194 + 12) = 2048;
      v195 = v240;
      sub_74958();
      v196 = v236;
      v197 = v245;
      v218(v236, v245, v193);
      sub_748F8();
      v199 = v198;
      v200 = v196;
      v201 = v233;
      v233(v200, v193);
      v201(v195, v193);
      *(v194 + 14) = v199;
      _os_log_impl(&dword_0, v189, v190, "Inserted %ld records in %fs", v194, 0x16u);
      v188 = v235;
    }

    else
    {

      v197 = v245;
      v201 = v233;
    }

    v215 = v224;

    (v268)(v188, v192);
    v215(v266, v270);
    v201(v197, v193);
    sub_43230(v232);

    return 1;
  }

  v202 = aBlock;
  sub_74898();

  swift_willThrow();
  v224(v266, v270);
  v233(v182, v242);
  v203 = sub_6AA7C;
  v204 = v231;
  v205 = v259;
  v206 = v241;
  v207 = v232;
LABEL_61:
  sub_75378();
  swift_errorRetain();
  v208 = sub_754A8();
  v209 = sub_75718();

  if (os_log_type_enabled(v208, v209))
  {
    v210 = swift_slowAlloc();
    v272 = v203;
    v211 = v210;
    v212 = swift_slowAlloc();
    v232 = v207;
    v213 = v212;
    *v211 = 138412290;
    swift_errorRetain();
    v214 = _swift_stdlib_bridgeErrorToNSError();
    *(v211 + 4) = v214;
    *v213 = v214;
    _os_log_impl(&dword_0, v208, v209, "Failed to insert: %@", v211, 0xCu);
    sub_3D48(v213, &unk_8EB30, &unk_7A270);
    v207 = v232;

    v203 = v272;
  }

  (*(v246 + 8))(v206, v205);
  if (v204)
  {
    *v204 = sub_74888();
  }

  sub_43230(v207);
  sub_43230(v203);
  return 0;
}

uint64_t sub_6023C(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v238 = a5;
  v237 = a4;
  v255 = sub_38F8(&unk_8FD00, &qword_7A260);
  v239 = *(v255 - 8);
  v10 = *(v239 + 64);
  __chkstk_darwin(v255);
  v254 = &v217 - v11;
  v269 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v261 = *(v269 - 8);
  v12 = *(v261 + 64);
  v13 = __chkstk_darwin(v269);
  v263 = &v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v253 = (&v217 - v16);
  v272 = v17;
  __chkstk_darwin(v15);
  v260 = &v217 - v18;
  v19 = sub_38F8(&qword_8FEA0, &qword_7AC78);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v265 = &v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v264 = &v217 - v23;
  v270 = sub_74CA8();
  v243 = *(v270 - 8);
  v24 = *(v243 + 64);
  v25 = __chkstk_darwin(v270);
  v27 = (&v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v266 = &v217 - v28;
  v242 = sub_74968();
  v29 = *(v242 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v242);
  v236 = &v217 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v240 = &v217 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v217 - v36;
  __chkstk_darwin(v35);
  v245 = &v217 - v38;
  v39 = sub_754B8();
  v246 = *(v39 - 8);
  v40 = *(v246 + 64);
  v41 = __chkstk_darwin(v39);
  v235 = &v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v268 = &v217 - v44;
  v45 = __chkstk_darwin(v43);
  v241 = &v217 - v46;
  v47 = __chkstk_darwin(v45);
  v267 = &v217 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v217 - v50;
  __chkstk_darwin(v49);
  v53 = &v217 - v52;
  v54 = [a1 protectedDatabase];
  if (!v54)
  {
    sub_75378();
    v58 = sub_754A8();
    v59 = sub_75718();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "Failed to insert: no protected database", v60, 2u);
    }

    (*(v246 + 8))(v53, v39);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v61 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v262 = *(a3 + 16);
  if (!v262)
  {

    return 1;
  }

  v229 = v51;
  v231 = a2;
  v227 = a6;
  v234 = v54;
  v230 = a3;
  v55 = v245;
  sub_74958();
  v56 = v29[2];
  v57 = v242;
  v56(v37, v55, v242);
  sub_74908();
  v233 = v29[1];
  v233(v37, v57);
  sub_74C68();
  v223 = v29;
  v218 = v56;
  v219 = v29 + 2;
  v225 = v29 + 1;
  v63 = *(v243 + 8);
  v243 += 8;
  v224 = v63;
  v63(v27, v270);
  *&aBlock = v230;
  sub_38F8(&qword_8FEA8, &qword_7AC80);
  v64 = sub_7718(&qword_8FEB0, &qword_8FEA8, &qword_7AC80);
  sub_6A63C();
  v65 = sub_75648();
  v226 = 0;
  v232 = 0;
  v228 = 0;
  v67 = 0;
  v68 = *(v65 + 64);
  v244 = v65 + 64;
  v256 = v65;
  v69 = 1 << *(v65 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & v68;
  v72 = (v69 + 63) >> 6;
  v271 = (v246 + 8);
  v257 = "ncePlugin.EntityWrapper";
  v252 = v239 + 16;
  v251 = (v239 + 8);
  v222 = "ournalEntry.swift";
  v221 = v272 + 7;
  v220 = &v277;
  *&v66 = 136315394;
  v248 = v66;
  *&v66 = 136315138;
  v247 = v66;
  v259 = v39;
  v73 = v253;
  v258 = v72;
LABEL_13:
  v74 = v67;
  v75 = v265;
  while (1)
  {
    if (!v71)
    {
      if (v72 <= v74 + 1)
      {
        v78 = v74 + 1;
      }

      else
      {
        v78 = v72;
      }

      while (1)
      {
        v77 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if (v77 >= v72)
        {
          v272 = (v78 - 1);
          v106 = sub_38F8(&qword_8FEB8, &qword_7AC88);
          (*(*(v106 - 8) + 56))(v75, 1, 1, v106);
          v71 = 0;
          goto LABEL_25;
        }

        v71 = *(v244 + 8 * v77);
        v74 = (v74 + 1);
        if (v71)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_70:
      v216 = v64;
      sub_74898();

      swift_willThrow();

      sub_3D48(v27, &qword_8F000, &qword_7A5D0);
      v224(v266, v270);
      v233(v245, v242);
      v203 = 0;
      v207 = sub_6ADA0;
      v205 = v259;
      v206 = v241;
      v204 = v231;
      goto LABEL_61;
    }

    v77 = v74;
LABEL_24:
    v79 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v80 = v79 | (v77 << 6);
    v81 = v256;
    v82 = v260;
    sub_6A6DC(*(v256 + 48) + *(v261 + 72) * v80, v260);
    v83 = *(*(v81 + 56) + 8 * v80);
    v84 = sub_38F8(&qword_8FEB8, &qword_7AC88);
    v85 = *(v84 + 48);
    sub_1B748(v82, v75, &qword_8F000, &qword_7A5D0);
    *(v75 + v85) = v83;
    (*(*(v84 - 8) + 56))(v75, 0, 1, v84);

    v272 = v77;
LABEL_25:
    v86 = v264;
    sub_1B748(v75, v264, &qword_8FEA0, &qword_7AC78);
    v87 = sub_38F8(&qword_8FEB8, &qword_7AC88);
    v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
    v89 = v263;
    if (v88 == 1)
    {
      break;
    }

    v90 = *(v86 + *(v87 + 48));
    v27 = &qword_7A5D0;
    sub_1B748(v86, v73, &qword_8F000, &qword_7A5D0);
    v91 = *(v269 + 36);
    sub_6A7F0(&qword_8F2A0);
    if (sub_75568())
    {
      v107 = *(v90 + 16);
      if (v107)
      {
        *&aBlock = _swiftEmptyArrayStorage;
        sub_67C58(0, v107, 0);
        v108 = aBlock;
        v109 = v90 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
        v250 = *(v239 + 72);
        v249 = *(v239 + 16);
        do
        {
          v110 = v254;
          v111 = v255;
          v249(v254, v109, v255);
          v112 = sub_75068();
          v114 = v113;
          (*v251)(v110, v111);
          *&aBlock = v108;
          v116 = v108[2];
          v115 = v108[3];
          if (v116 >= v115 >> 1)
          {
            sub_67C58((v115 > 1), v116 + 1, 1);
            v108 = aBlock;
          }

          v108[2] = v116 + 1;
          v117 = &v108[2 * v116];
          v117[4] = v112;
          v117[5] = v114;
          v109 += v250;
          --v107;
        }

        while (v107);
      }

      else
      {

        v108 = _swiftEmptyArrayStorage;
      }

      v118 = sub_6A488(v108);

      v119 = v226;
      v120 = sub_64290(v118);
      v226 = v119;
      *&aBlock = v120;
      sub_38F8(&qword_8F280, &unk_7ABA0);
      sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
      v121 = sub_75538();
      v123 = v122;

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_75908(87);
      v283._countAndFlagsBits = 0x46204554454C4544;
      v283._object = 0xEC000000204D4F52;
      sub_75608(v283);
      type metadata accessor for FitnessPlusPropertyRecordEntity();
      v124 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
      v125 = sub_755A8();
      v127 = v126;

      v284._countAndFlagsBits = v125;
      v284._object = v127;
      sub_75608(v284);

      v285._countAndFlagsBits = 0xD000000000000046;
      v285._object = (v222 | 0x8000000000000000);
      sub_75608(v285);
      v286._countAndFlagsBits = v121;
      v286._object = v123;
      sub_75608(v286);

      v287._countAndFlagsBits = 41;
      v287._object = 0xE100000000000000;
      sub_75608(v287);
      v128 = sub_75598();

      v27 = v253;
      v129 = v260;
      sub_6A6DC(v253, v260);
      v130 = (*(v261 + 80) + 16) & ~*(v261 + 80);
      v131 = &v221[v130] & 0xFFFFFFFFFFFFFFF8;
      v132 = swift_allocObject();
      sub_1B748(v129, v132 + v130, &qword_8F000, &qword_7A5D0);
      *(v132 + v131) = v118;
      sub_43230(v232);
      v133 = swift_allocObject();
      *(v133 + 16) = sub_6ADA0;
      *(v133 + 24) = v132;
      v279 = sub_6ADA4;
      v280 = v133;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v277 = sub_644E0;
      v278 = &unk_891D0;
      v134 = _Block_copy(&aBlock);

      *&aBlock = 0;
      LODWORD(v129) = [v234 executeSQL:v128 error:&aBlock bindingHandler:v134 enumerationHandler:0];
      _Block_release(v134);

      v64 = aBlock;
      if (v129)
      {
        v135 = aBlock;
        sub_3D48(v27, &qword_8F000, &qword_7A5D0);
        v232 = sub_6ADA0;
        v228 = v132;
        v67 = v272;
        v73 = v27;
        v72 = v258;
        goto LABEL_13;
      }

      goto LABEL_70;
    }

    v92 = v267;
    sub_75378();
    sub_6A6DC(v73, v89);
    v93 = sub_754A8();
    v94 = sub_75718();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      *v95 = v248;
      *(v95 + 4) = sub_31B4(0xD00000000000001FLL, v257 | 0x8000000000000000, &v281);
      *(v95 + 12) = 2080;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_759A8();
      v282._countAndFlagsBits = 3026478;
      v282._object = 0xE300000000000000;
      sub_75608(v282);
      v96 = *(v269 + 36);
      sub_759A8();
      v97 = aBlock;
      sub_3D48(v89, &qword_8F000, &qword_7A5D0);
      v98 = sub_31B4(v97, *(&v97 + 1), &v281);

      *(v95 + 14) = v98;
      _os_log_impl(&dword_0, v93, v94, "[%s] Trying to insert records in the future: %s, skipping...", v95, 0x16u);
      swift_arrayDestroy();

      v27 = &qword_7A5D0;
      v73 = v253;

      v99 = *v271;
      v100 = v267;
    }

    else
    {

      sub_3D48(v89, &qword_8F000, &qword_7A5D0);
      v99 = *v271;
      v100 = v92;
    }

    v101 = v259;
    (v99)(v100, v259);
    v64 = v268;
    sub_75378();
    v102 = sub_754A8();
    v103 = sub_75728();
    v104 = os_log_type_enabled(v102, v103);
    v75 = v265;
    if (v104)
    {
      v64 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&aBlock = v105;
      *v64 = v247;
      *(v64 + 1) = sub_31B4(0xD00000000000001FLL, v257 | 0x8000000000000000, &aBlock);
      _os_log_impl(&dword_0, v102, v103, "[%s] Tried to insert records in the future", v64, 0xCu);
      sub_3940(v105);

      v76 = v268;
    }

    else
    {

      v76 = v64;
    }

    (v99)(v76, v101);
    sub_3D48(v73, &qword_8F000, &qword_7A5D0);
    v74 = v272;
    v72 = v258;
  }

  sub_75378();
  v136 = sub_754A8();
  v137 = sub_75738();
  v138 = os_log_type_enabled(v136, v137);
  v139 = v242;
  v140 = v245;
  v141 = v233;
  if (v138)
  {
    v142 = swift_slowAlloc();
    *v142 = 134217984;
    v143 = v240;
    sub_74958();
    swift_beginAccess();
    v144 = v236;
    v218(v236, v140, v139);
    sub_748F8();
    v146 = v145;
    v141(v144, v139);
    v141(v143, v139);
    *(v142 + 4) = v146;
    _os_log_impl(&dword_0, v136, v137, "Deleted existing matching records in %fs", v142, 0xCu);
  }

  v268 = *v271;
  (v268)(v229, v259);
  v147 = v240;
  sub_74958();
  swift_beginAccess();
  (v223[5])(v140, v147, v139);
  v275 = &off_85838;
  sub_66D40(&off_85860, &qword_8FEC0, &qword_7AC90);
  sub_66D40(&off_85888, &qword_8FEC0, &qword_7AC90);
  v272 = v275;
  v274 = _swiftEmptyArrayStorage;
  v148 = v262;
  sub_67C58(0, v262, 0);
  v149 = 0;
  v150 = v274;
  do
  {
    if (v149 == v148)
    {
      __break(1u);
    }

    *&aBlock = 40;
    *(&aBlock + 1) = 0xE100000000000000;
    v151 = *(v272 + 2);
    if (v151)
    {
      v273 = _swiftEmptyArrayStorage;
      sub_67C58(0, v151, 0);
      v152 = v273;
      v153 = v273[2];
      v154 = 2 * v153;
      do
      {
        v273 = v152;
        v155 = v152[3];
        v156 = v153 + 1;
        if (v153 >= v155 >> 1)
        {
          sub_67C58((v155 > 1), v153 + 1, 1);
          v152 = v273;
        }

        v152[2] = v156;
        v157 = &v152[v154];
        v157[4] = 63;
        v157[5] = 0xE100000000000000;
        v154 += 2;
        v153 = v156;
        --v151;
      }

      while (v151);
    }

    else
    {
      v152 = _swiftEmptyArrayStorage;
    }

    v273 = v152;
    v158 = sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
    v269 = v158;
    v159 = sub_75538();
    v161 = v160;

    v288._countAndFlagsBits = v159;
    v288._object = v161;
    sub_75608(v288);

    v289._countAndFlagsBits = 41;
    v289._object = 0xE100000000000000;
    sub_75608(v289);
    v162 = aBlock;
    v274 = v150;
    v164 = v150[2];
    v163 = v150[3];
    if (v164 >= v163 >> 1)
    {
      sub_67C58((v163 > 1), v164 + 1, 1);
      v150 = v274;
    }

    ++v149;
    v150[2] = v164 + 1;
    *&v150[2 * v164 + 4] = v162;
    v148 = v262;
  }

  while (v149 != v262);

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_75908(30);

  strcpy(&aBlock, "INSERT INTO ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  type metadata accessor for FitnessPlusPropertyRecordEntity();
  v165 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
  v166 = sub_755A8();
  v168 = v167;

  v290._countAndFlagsBits = v166;
  v290._object = v168;
  sub_75608(v290);

  v291._countAndFlagsBits = 10272;
  v291._object = 0xE200000000000000;
  sub_75608(v291);
  v274 = sub_6F270();
  v169 = sub_75538();
  v171 = v170;

  v292._countAndFlagsBits = v169;
  v292._object = v171;
  sub_75608(v292);

  v293._countAndFlagsBits = 0x5345554C41562029;
  v293._object = 0xE900000000000020;
  sub_75608(v293);
  v274 = v150;
  v172 = sub_75538();
  v174 = v173;

  v294._countAndFlagsBits = v172;
  v294._object = v174;
  sub_75608(v294);

  v295._countAndFlagsBits = 59;
  v295._object = 0xE100000000000000;
  sub_75608(v295);
  v175 = [v237 syncIdentityManager];
  v176 = [v175 currentSyncIdentity];

  v177 = [v176 entity];
  v178 = [v177 persistentID];

  v179 = sub_75598();

  v180 = swift_allocObject();
  v181 = v238;
  v180[2] = v230;
  v180[3] = v181;
  v182 = v245;
  v183 = v227;
  v180[4] = v245;
  v180[5] = v183;
  v180[6] = v178;
  v184 = swift_allocObject();
  *(v184 + 16) = sub_6A8A4;
  *(v184 + 24) = v180;
  v279 = sub_6ADA4;
  v280 = v184;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v277 = sub_644E0;
  v278 = &unk_89158;
  v185 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v186 = v234;
  LOBYTE(v178) = [v234 executeSQL:v179 error:&aBlock bindingHandler:v185 enumerationHandler:0];
  _Block_release(v185);

  if (v178)
  {
    v187 = aBlock;
    v188 = v235;
    sub_75378();

    v189 = sub_754A8();
    v190 = sub_75738();
    v191 = os_log_type_enabled(v189, v190);
    v192 = v259;
    v193 = v242;
    if (v191)
    {
      v194 = swift_slowAlloc();
      *v194 = 134218240;
      *(v194 + 4) = v262;

      *(v194 + 12) = 2048;
      v195 = v240;
      sub_74958();
      v196 = v236;
      v197 = v245;
      v218(v236, v245, v193);
      sub_748F8();
      v199 = v198;
      v200 = v196;
      v201 = v233;
      v233(v200, v193);
      v201(v195, v193);
      *(v194 + 14) = v199;
      _os_log_impl(&dword_0, v189, v190, "Inserted %ld records in %fs", v194, 0x16u);
      v188 = v235;
    }

    else
    {

      v197 = v245;
      v201 = v233;
    }

    v215 = v224;

    (v268)(v188, v192);
    v215(v266, v270);
    v201(v197, v193);
    sub_43230(v232);

    return 1;
  }

  v202 = aBlock;
  sub_74898();

  swift_willThrow();
  v224(v266, v270);
  v233(v182, v242);
  v203 = sub_6A8A4;
  v204 = v231;
  v205 = v259;
  v206 = v241;
  v207 = v232;
LABEL_61:
  sub_75378();
  swift_errorRetain();
  v208 = sub_754A8();
  v209 = sub_75718();

  if (os_log_type_enabled(v208, v209))
  {
    v210 = swift_slowAlloc();
    v272 = v203;
    v211 = v210;
    v212 = swift_slowAlloc();
    v232 = v207;
    v213 = v212;
    *v211 = 138412290;
    swift_errorRetain();
    v214 = _swift_stdlib_bridgeErrorToNSError();
    *(v211 + 4) = v214;
    *v213 = v214;
    _os_log_impl(&dword_0, v208, v209, "Failed to insert: %@", v211, 0xCu);
    sub_3D48(v213, &unk_8EB30, &unk_7A270);
    v207 = v232;

    v203 = v272;
  }

  (*(v246 + 8))(v206, v205);
  if (v204)
  {
    *v204 = sub_74888();
  }

  sub_43230(v207);
  sub_43230(v203);
  return 0;
}

uint64_t sub_621E0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v238 = a5;
  v237 = a4;
  v255 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v239 = *(v255 - 8);
  v10 = *(v239 + 64);
  __chkstk_darwin(v255);
  v254 = &v217 - v11;
  v269 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v261 = *(v269 - 8);
  v12 = *(v261 + 64);
  v13 = __chkstk_darwin(v269);
  v263 = &v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v253 = (&v217 - v16);
  v272 = v17;
  __chkstk_darwin(v15);
  v260 = &v217 - v18;
  v19 = sub_38F8(&qword_8FE58, &qword_7ABE8);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v265 = &v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v264 = &v217 - v23;
  v270 = sub_74CA8();
  v243 = *(v270 - 8);
  v24 = *(v243 + 64);
  v25 = __chkstk_darwin(v270);
  v27 = (&v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v266 = &v217 - v28;
  v242 = sub_74968();
  v29 = *(v242 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v242);
  v236 = &v217 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v240 = &v217 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v217 - v36;
  __chkstk_darwin(v35);
  v245 = &v217 - v38;
  v39 = sub_754B8();
  v246 = *(v39 - 8);
  v40 = *(v246 + 64);
  v41 = __chkstk_darwin(v39);
  v235 = &v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v268 = &v217 - v44;
  v45 = __chkstk_darwin(v43);
  v241 = &v217 - v46;
  v47 = __chkstk_darwin(v45);
  v267 = &v217 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v217 - v50;
  __chkstk_darwin(v49);
  v53 = &v217 - v52;
  v54 = [a1 protectedDatabase];
  if (!v54)
  {
    sub_75378();
    v58 = sub_754A8();
    v59 = sub_75718();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "Failed to insert: no protected database", v60, 2u);
    }

    (*(v246 + 8))(v53, v39);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v61 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v262 = *(a3 + 16);
  if (!v262)
  {

    return 1;
  }

  v229 = v51;
  v231 = a2;
  v227 = a6;
  v234 = v54;
  v230 = a3;
  v55 = v245;
  sub_74958();
  v56 = v29[2];
  v57 = v242;
  v56(v37, v55, v242);
  sub_74908();
  v233 = v29[1];
  v233(v37, v57);
  sub_74C68();
  v223 = v29;
  v218 = v56;
  v219 = v29 + 2;
  v225 = v29 + 1;
  v63 = *(v243 + 8);
  v243 += 8;
  v224 = v63;
  v63(v27, v270);
  *&aBlock = v230;
  sub_38F8(&qword_8FE60, &qword_7ABF0);
  v64 = sub_7718(&qword_8FE68, &qword_8FE60, &qword_7ABF0);
  sub_6A63C();
  v65 = sub_75648();
  v226 = 0;
  v232 = 0;
  v228 = 0;
  v67 = 0;
  v68 = *(v65 + 64);
  v244 = v65 + 64;
  v256 = v65;
  v69 = 1 << *(v65 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & v68;
  v72 = (v69 + 63) >> 6;
  v271 = (v246 + 8);
  v257 = "RingsPropertyRecordEntity";
  v252 = v239 + 16;
  v251 = (v239 + 8);
  v222 = "ournalEntry.swift";
  v221 = v272 + 7;
  v220 = &v277;
  *&v66 = 136315394;
  v248 = v66;
  *&v66 = 136315138;
  v247 = v66;
  v259 = v39;
  v73 = v253;
  v258 = v72;
LABEL_13:
  v74 = v67;
  v75 = v265;
  while (1)
  {
    if (!v71)
    {
      if (v72 <= v74 + 1)
      {
        v78 = v74 + 1;
      }

      else
      {
        v78 = v72;
      }

      while (1)
      {
        v77 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          break;
        }

        if (v77 >= v72)
        {
          v272 = (v78 - 1);
          v106 = sub_38F8(&qword_8FE78, &unk_7ABF8);
          (*(*(v106 - 8) + 56))(v75, 1, 1, v106);
          v71 = 0;
          goto LABEL_25;
        }

        v71 = *(v244 + 8 * v77);
        v74 = (v74 + 1);
        if (v71)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_70:
      v216 = v64;
      sub_74898();

      swift_willThrow();

      sub_3D48(v27, &qword_8F000, &qword_7A5D0);
      v224(v266, v270);
      v233(v245, v242);
      v203 = 0;
      v207 = sub_6A7EC;
      v205 = v259;
      v206 = v241;
      v204 = v231;
      goto LABEL_61;
    }

    v77 = v74;
LABEL_24:
    v79 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v80 = v79 | (v77 << 6);
    v81 = v256;
    v82 = v260;
    sub_6A6DC(*(v256 + 48) + *(v261 + 72) * v80, v260);
    v83 = *(*(v81 + 56) + 8 * v80);
    v84 = sub_38F8(&qword_8FE78, &unk_7ABF8);
    v85 = *(v84 + 48);
    sub_1B748(v82, v75, &qword_8F000, &qword_7A5D0);
    *(v75 + v85) = v83;
    (*(*(v84 - 8) + 56))(v75, 0, 1, v84);

    v272 = v77;
LABEL_25:
    v86 = v264;
    sub_1B748(v75, v264, &qword_8FE58, &qword_7ABE8);
    v87 = sub_38F8(&qword_8FE78, &unk_7ABF8);
    v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
    v89 = v263;
    if (v88 == 1)
    {
      break;
    }

    v90 = *(v86 + *(v87 + 48));
    v27 = &qword_7A5D0;
    sub_1B748(v86, v73, &qword_8F000, &qword_7A5D0);
    v91 = *(v269 + 36);
    sub_6A7F0(&qword_8F2A0);
    if (sub_75568())
    {
      v107 = *(v90 + 16);
      if (v107)
      {
        *&aBlock = _swiftEmptyArrayStorage;
        sub_67C58(0, v107, 0);
        v108 = aBlock;
        v109 = v90 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
        v250 = *(v239 + 72);
        v249 = *(v239 + 16);
        do
        {
          v110 = v254;
          v111 = v255;
          v249(v254, v109, v255);
          v112 = sub_75068();
          v114 = v113;
          (*v251)(v110, v111);
          *&aBlock = v108;
          v116 = v108[2];
          v115 = v108[3];
          if (v116 >= v115 >> 1)
          {
            sub_67C58((v115 > 1), v116 + 1, 1);
            v108 = aBlock;
          }

          v108[2] = v116 + 1;
          v117 = &v108[2 * v116];
          v117[4] = v112;
          v117[5] = v114;
          v109 += v250;
          --v107;
        }

        while (v107);
      }

      else
      {

        v108 = _swiftEmptyArrayStorage;
      }

      v118 = sub_6A488(v108);

      v119 = v226;
      v120 = sub_64290(v118);
      v226 = v119;
      *&aBlock = v120;
      sub_38F8(&qword_8F280, &unk_7ABA0);
      sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
      v121 = sub_75538();
      v123 = v122;

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_75908(87);
      v283._countAndFlagsBits = 0x46204554454C4544;
      v283._object = 0xEC000000204D4F52;
      sub_75608(v283);
      type metadata accessor for WorkoutPropertyRecordEntity();
      v124 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
      v125 = sub_755A8();
      v127 = v126;

      v284._countAndFlagsBits = v125;
      v284._object = v127;
      sub_75608(v284);

      v285._countAndFlagsBits = 0xD000000000000046;
      v285._object = (v222 | 0x8000000000000000);
      sub_75608(v285);
      v286._countAndFlagsBits = v121;
      v286._object = v123;
      sub_75608(v286);

      v287._countAndFlagsBits = 41;
      v287._object = 0xE100000000000000;
      sub_75608(v287);
      v128 = sub_75598();

      v27 = v253;
      v129 = v260;
      sub_6A6DC(v253, v260);
      v130 = (*(v261 + 80) + 16) & ~*(v261 + 80);
      v131 = &v221[v130] & 0xFFFFFFFFFFFFFFF8;
      v132 = swift_allocObject();
      sub_1B748(v129, v132 + v130, &qword_8F000, &qword_7A5D0);
      *(v132 + v131) = v118;
      sub_43230(v232);
      v133 = swift_allocObject();
      *(v133 + 16) = sub_6A7EC;
      *(v133 + 24) = v132;
      v279 = sub_6ADA4;
      v280 = v133;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v277 = sub_644E0;
      v278 = &unk_88FF0;
      v134 = _Block_copy(&aBlock);

      *&aBlock = 0;
      LODWORD(v129) = [v234 executeSQL:v128 error:&aBlock bindingHandler:v134 enumerationHandler:0];
      _Block_release(v134);

      v64 = aBlock;
      if (v129)
      {
        v135 = aBlock;
        sub_3D48(v27, &qword_8F000, &qword_7A5D0);
        v232 = sub_6A7EC;
        v228 = v132;
        v67 = v272;
        v73 = v27;
        v72 = v258;
        goto LABEL_13;
      }

      goto LABEL_70;
    }

    v92 = v267;
    sub_75378();
    sub_6A6DC(v73, v89);
    v93 = sub_754A8();
    v94 = sub_75718();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      *v95 = v248;
      *(v95 + 4) = sub_31B4(0xD00000000000001BLL, v257 | 0x8000000000000000, &v281);
      *(v95 + 12) = 2080;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_759A8();
      v282._countAndFlagsBits = 3026478;
      v282._object = 0xE300000000000000;
      sub_75608(v282);
      v96 = *(v269 + 36);
      sub_759A8();
      v97 = aBlock;
      sub_3D48(v89, &qword_8F000, &qword_7A5D0);
      v98 = sub_31B4(v97, *(&v97 + 1), &v281);

      *(v95 + 14) = v98;
      _os_log_impl(&dword_0, v93, v94, "[%s] Trying to insert records in the future: %s, skipping...", v95, 0x16u);
      swift_arrayDestroy();

      v27 = &qword_7A5D0;
      v73 = v253;

      v99 = *v271;
      v100 = v267;
    }

    else
    {

      sub_3D48(v89, &qword_8F000, &qword_7A5D0);
      v99 = *v271;
      v100 = v92;
    }

    v101 = v259;
    (v99)(v100, v259);
    v64 = v268;
    sub_75378();
    v102 = sub_754A8();
    v103 = sub_75728();
    v104 = os_log_type_enabled(v102, v103);
    v75 = v265;
    if (v104)
    {
      v64 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&aBlock = v105;
      *v64 = v247;
      *(v64 + 1) = sub_31B4(0xD00000000000001BLL, v257 | 0x8000000000000000, &aBlock);
      _os_log_impl(&dword_0, v102, v103, "[%s] Tried to insert records in the future", v64, 0xCu);
      sub_3940(v105);

      v76 = v268;
    }

    else
    {

      v76 = v64;
    }

    (v99)(v76, v101);
    sub_3D48(v73, &qword_8F000, &qword_7A5D0);
    v74 = v272;
    v72 = v258;
  }

  sub_75378();
  v136 = sub_754A8();
  v137 = sub_75738();
  v138 = os_log_type_enabled(v136, v137);
  v139 = v242;
  v140 = v245;
  v141 = v233;
  if (v138)
  {
    v142 = swift_slowAlloc();
    *v142 = 134217984;
    v143 = v240;
    sub_74958();
    swift_beginAccess();
    v144 = v236;
    v218(v236, v140, v139);
    sub_748F8();
    v146 = v145;
    v141(v144, v139);
    v141(v143, v139);
    *(v142 + 4) = v146;
    _os_log_impl(&dword_0, v136, v137, "Deleted existing matching records in %fs", v142, 0xCu);
  }

  v268 = *v271;
  (v268)(v229, v259);
  v147 = v240;
  sub_74958();
  swift_beginAccess();
  (v223[5])(v140, v147, v139);
  v275 = &off_858E0;
  sub_66D40(&off_85908, &qword_8FE88, &qword_7AC58);
  sub_66D40(&off_85930, &qword_8FE88, &qword_7AC58);
  v272 = v275;
  v274 = _swiftEmptyArrayStorage;
  v148 = v262;
  sub_67C58(0, v262, 0);
  v149 = 0;
  v150 = v274;
  do
  {
    if (v149 == v148)
    {
      __break(1u);
    }

    *&aBlock = 40;
    *(&aBlock + 1) = 0xE100000000000000;
    v151 = *(v272 + 2);
    if (v151)
    {
      v273 = _swiftEmptyArrayStorage;
      sub_67C58(0, v151, 0);
      v152 = v273;
      v153 = v273[2];
      v154 = 2 * v153;
      do
      {
        v273 = v152;
        v155 = v152[3];
        v156 = v153 + 1;
        if (v153 >= v155 >> 1)
        {
          sub_67C58((v155 > 1), v153 + 1, 1);
          v152 = v273;
        }

        v152[2] = v156;
        v157 = &v152[v154];
        v157[4] = 63;
        v157[5] = 0xE100000000000000;
        v154 += 2;
        v153 = v156;
        --v151;
      }

      while (v151);
    }

    else
    {
      v152 = _swiftEmptyArrayStorage;
    }

    v273 = v152;
    v158 = sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
    v269 = v158;
    v159 = sub_75538();
    v161 = v160;

    v288._countAndFlagsBits = v159;
    v288._object = v161;
    sub_75608(v288);

    v289._countAndFlagsBits = 41;
    v289._object = 0xE100000000000000;
    sub_75608(v289);
    v162 = aBlock;
    v274 = v150;
    v164 = v150[2];
    v163 = v150[3];
    if (v164 >= v163 >> 1)
    {
      sub_67C58((v163 > 1), v164 + 1, 1);
      v150 = v274;
    }

    ++v149;
    v150[2] = v164 + 1;
    *&v150[2 * v164 + 4] = v162;
    v148 = v262;
  }

  while (v149 != v262);

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_75908(30);

  strcpy(&aBlock, "INSERT INTO ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  type metadata accessor for WorkoutPropertyRecordEntity();
  v165 = [swift_getObjCClassFromMetadata() disambiguatedDatabaseTable];
  v166 = sub_755A8();
  v168 = v167;

  v290._countAndFlagsBits = v166;
  v290._object = v168;
  sub_75608(v290);

  v291._countAndFlagsBits = 10272;
  v291._object = 0xE200000000000000;
  sub_75608(v291);
  v274 = sub_5C16C();
  v169 = sub_75538();
  v171 = v170;

  v292._countAndFlagsBits = v169;
  v292._object = v171;
  sub_75608(v292);

  v293._countAndFlagsBits = 0x5345554C41562029;
  v293._object = 0xE900000000000020;
  sub_75608(v293);
  v274 = v150;
  v172 = sub_75538();
  v174 = v173;

  v294._countAndFlagsBits = v172;
  v294._object = v174;
  sub_75608(v294);

  v295._countAndFlagsBits = 59;
  v295._object = 0xE100000000000000;
  sub_75608(v295);
  v175 = [v237 syncIdentityManager];
  v176 = [v175 currentSyncIdentity];

  v177 = [v176 entity];
  v178 = [v177 persistentID];

  v179 = sub_75598();

  v180 = swift_allocObject();
  v181 = v238;
  v180[2] = v230;
  v180[3] = v181;
  v182 = v245;
  v183 = v227;
  v180[4] = v245;
  v180[5] = v183;
  v180[6] = v178;
  v184 = swift_allocObject();
  *(v184 + 16) = sub_6A74C;
  *(v184 + 24) = v180;
  v279 = sub_6A7C4;
  v280 = v184;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v277 = sub_644E0;
  v278 = &unk_88F78;
  v185 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v186 = v234;
  LOBYTE(v178) = [v234 executeSQL:v179 error:&aBlock bindingHandler:v185 enumerationHandler:0];
  _Block_release(v185);

  if (v178)
  {
    v187 = aBlock;
    v188 = v235;
    sub_75378();

    v189 = sub_754A8();
    v190 = sub_75738();
    v191 = os_log_type_enabled(v189, v190);
    v192 = v259;
    v193 = v242;
    if (v191)
    {
      v194 = swift_slowAlloc();
      *v194 = 134218240;
      *(v194 + 4) = v262;

      *(v194 + 12) = 2048;
      v195 = v240;
      sub_74958();
      v196 = v236;
      v197 = v245;
      v218(v236, v245, v193);
      sub_748F8();
      v199 = v198;
      v200 = v196;
      v201 = v233;
      v233(v200, v193);
      v201(v195, v193);
      *(v194 + 14) = v199;
      _os_log_impl(&dword_0, v189, v190, "Inserted %ld records in %fs", v194, 0x16u);
      v188 = v235;
    }

    else
    {

      v197 = v245;
      v201 = v233;
    }

    v215 = v224;

    (v268)(v188, v192);
    v215(v266, v270);
    v201(v197, v193);
    sub_43230(v232);

    return 1;
  }

  v202 = aBlock;
  sub_74898();

  swift_willThrow();
  v224(v266, v270);
  v233(v182, v242);
  v203 = sub_6A74C;
  v204 = v231;
  v205 = v259;
  v206 = v241;
  v207 = v232;
LABEL_61:
  sub_75378();
  swift_errorRetain();
  v208 = sub_754A8();
  v209 = sub_75718();

  if (os_log_type_enabled(v208, v209))
  {
    v210 = swift_slowAlloc();
    v272 = v203;
    v211 = v210;
    v212 = swift_slowAlloc();
    v232 = v207;
    v213 = v212;
    *v211 = 138412290;
    swift_errorRetain();
    v214 = _swift_stdlib_bridgeErrorToNSError();
    *(v211 + 4) = v214;
    *v213 = v214;
    _os_log_impl(&dword_0, v208, v209, "Failed to insert: %@", v211, 0xCu);
    sub_3D48(v213, &unk_8EB30, &unk_7A270);
    v207 = v232;

    v203 = v272;
  }

  (*(v246 + 8))(v206, v205);
  if (v204)
  {
    *v204 = sub_74888();
  }

  sub_43230(v207);
  sub_43230(v203);
  return 0;
}

uint64_t sub_641FC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  sub_38F8(a1, a2);
  sub_75088();
  v4 = sub_38F8(&qword_8F000, &qword_7A5D0);
  return (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
}

uint64_t sub_64290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a1 + 16);
  sub_67C58(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_75868();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_67C58((v12 > 1), v13 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = 8255;
    v14[5] = 0xE200000000000000;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v3 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1B598(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1B598(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_6450C(sqlite3_stmt *a1, uint64_t a2, sqlite3_int64 a3, uint64_t a4, sqlite3_int64 a5, sqlite3_int64 a6, uint64_t (*a7)(void), uint64_t *a8, uint64_t *a9, uint64_t (*a10)(char *, sqlite3_stmt *, uint64_t), void *(*a11)(uint64_t *__return_ptr, void *, char *))
{
  v87 = a6;
  v88 = a5;
  v93 = a3;
  v94 = a4;
  v90 = sub_74968();
  v15 = *(v90 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v90);
  v89 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_754B8();
  *&v112 = *(v96 - 8);
  v18 = *(v112 + 64);
  __chkstk_darwin(v96);
  v106 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_75028();
  v109 = *(v92 - 8);
  v20 = *(v109 + 64);
  __chkstk_darwin(v92);
  v91 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a7(0);
  v22 = *(v105 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v105);
  v104 = &v82 - v24;
  v103 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v25 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v111 = &v82 - v26;
  v27 = sub_38F8(a8, a9);
  v28 = *(*(v27 - 8) + 64);
  result = __chkstk_darwin(v27);
  v32 = &v82 - v31;
  v33 = *(a2 + 16);
  if (v33)
  {
    v86 = a11;
    v101 = a10;
    v34 = v30;
    v35 = a2 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    swift_beginAccess();
    v36 = *(v34 + 16);
    v34 += 16;
    v99 = (v22 + 8);
    v100 = v36;
    v95 = v112 + 8;
    v37 = *(v34 + 56);
    v84 = (v15 + 16);
    v85 = (v109 + 8);
    v83 = (v15 + 8);
    v102 = v34;
    v97 = (v34 - 8);
    v98 = v37;
    LODWORD(v109) = 1;
    *(&v38 + 1) = 2;
    v112 = xmmword_79BF0;
    *&v38 = 138412290;
    v82 = v38;
    v110 = a1;
    v113 = v32;
    while (1)
    {
      v108 = v33;
      v100(v32, v35, v27);
      v39 = v111;
      sub_75088();
      v40 = sub_74CA8();
      v116 = v40;
      v41 = sub_6A7F0(&qword_8ED98);
      v117 = v41;
      v42 = sub_5914(&v114);
      v43 = *(*(v40 - 8) + 16);
      v43(v42, v39, v40);
      sub_3D48(v39, &qword_8F000, &qword_7A5D0);
      sub_38F8(&qword_8EDA0, &unk_79D20);
      inited = swift_initStackObject();
      v45 = inited;
      *(inited + 16) = v112;
      if (v116)
      {
        sub_5978(&v114, inited + 32);
      }

      else
      {
        v46 = v117;
        v47 = v115;
        *(inited + 32) = v114;
        *(inited + 48) = v47;
        *(inited + 64) = v46;
      }

      v107 = v35;
      LODWORD(v109) = sub_6C2DC(v110, v109, v45);
      swift_setDeallocating();
      if (*(v45 + 56))
      {
        sub_3940((v45 + 32));
      }

      if (v116)
      {
        sub_3940(&v114);
      }

      v48 = v111;
      sub_75088();
      v49 = *(v103 + 36);
      v116 = v40;
      v117 = v41;
      v50 = sub_5914(&v114);
      v43(v50, v48 + v49, v40);
      sub_3D48(v48, &qword_8F000, &qword_7A5D0);
      v51 = swift_initStackObject();
      v52 = v51;
      *(v51 + 16) = v112;
      if (v116)
      {
        sub_5978(&v114, v51 + 32);
      }

      else
      {
        v53 = v117;
        v54 = v115;
        *(v51 + 32) = v114;
        *(v51 + 48) = v54;
        *(v51 + 64) = v53;
      }

      v55 = v110;
      v56 = sub_6C2DC(v110, v109, v52);
      swift_setDeallocating();
      v57 = v104;
      if (*(v52 + 56))
      {
        sub_3940((v52 + 32));
      }

      if (v116)
      {
        sub_3940(&v114);
      }

      sub_75058();
      v58 = v101(v57, v55, v56);
      (*v99)(v57, v105);
      v59 = sub_75068();
      v60 = v27;
      v62 = v61;
      sub_38F8(&qword_8F678, &qword_7A4A0);
      v63 = swift_initStackObject();
      *(v63 + 16) = v112;
      *(v63 + 32) = v59;
      v64 = v63 + 32;
      *(v63 + 40) = v62;
      LODWORD(v59) = sub_6C3E0(v55, v58, v63);
      v32 = v113;
      swift_setDeallocating();
      sub_3D48(v64, &qword_8EDA8, &unk_79D30);
      v118 = v59;
      v65 = v60;
      v66 = sub_75098();
      v68 = v67;
      __chkstk_darwin(v66);
      *(&v82 - 4) = v55;
      *(&v82 - 3) = &v118;
      *(&v82 - 2) = v32;
      sub_64ED8(v86, (&v82 - 3), v66, v68);
      result = sub_FB28(v66, v68);
      v69 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        break;
      }

      v70 = v91;
      sub_75008();
      v71 = sub_75018();
      (*v85)(v70, v92);
      if (v71 <= v93)
      {
        v72 = v93;
      }

      else
      {
        v72 = v71;
      }

      result = sqlite3_bind_int64(v55, v69, v72);
      v73 = __OFADD__(v69, 1);
      v74 = v69 + 1;
      if (v73)
      {
        goto LABEL_29;
      }

      v75 = v89;
      v76 = v90;
      (*v84)(v89, v94, v90);
      sub_748E8();
      v78 = v77;
      (*v83)(v75, v76);
      result = sqlite3_bind_double(v55, v74, v78);
      if (__OFADD__(v74, 1))
      {
        goto LABEL_30;
      }

      result = sqlite3_bind_int64(v55, v74 + 1, v88);
      v79 = v74 + 2;
      if (__OFADD__(v74 + 1, 1))
      {
        goto LABEL_31;
      }

      result = sqlite3_bind_int64(v55, v79, v87);
      if (__OFADD__(v79, 1))
      {
        goto LABEL_32;
      }

      LODWORD(v109) = v74 + 3;
      v80 = v107;
      v81 = v108;
      v27 = v65;
      result = (*v97)(v32, v65);
      v35 = v80 + v98;
      v33 = v81 - 1;
      if (!v33)
      {
        return result;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

void *sub_64ED8(void *(*a1)(uint64_t *__return_ptr, void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v12[0] = a3;
      LOWORD(v12[1]) = a4;
      BYTE2(v12[1]) = BYTE2(a4);
      BYTE3(v12[1]) = BYTE3(a4);
      BYTE4(v12[1]) = BYTE4(a4);
      BYTE5(v12[1]) = BYTE5(a4);
      v7 = v12 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_6A19C(v8, v9, a1);
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    return sub_6A19C(v8, v9, a1);
  }

  memset(v12, 0, 14);
  v7 = v12;
LABEL_9:
  result = a1(&v11, v12, v7);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_65028(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t))
{
  v41 = a6;
  v40 = sub_754B8();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v40);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  sub_75378();

  swift_errorRetain();
  v16 = sub_754A8();
  v17 = sub_75718();

  v18 = os_log_type_enabled(v16, v17);
  v39 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = a5;
    v21 = swift_slowAlloc();
    *v19 = 134218242;
    *(v19 + 4) = *(a3 + 16);

    *(v19 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v22;
    *v21 = v22;
    _os_log_impl(&dword_0, v16, v17, "Failed to insert %ld records: %@. Journaling entries", v19, 0x16u);
    sub_3D48(v21, &unk_8EB30, &unk_7A270);
    a5 = v20;
  }

  else
  {
  }

  v23 = *(v10 + 8);
  v24 = v40;
  v23(v15, v40);
  v41(a3, a4);
  v25 = v42;
  v26 = [a5 database];
  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
  isa = sub_75678().super.isa;

  v43[0] = 0;
  v28 = [v26 addJournalEntries:isa error:v43];

  if (v28)
  {
    v29 = v43[0];
    return 1;
  }

  else
  {
    v31 = v43[0];
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v32 = sub_754A8();
    v33 = sub_75728();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&dword_0, v32, v33, "Failed to add journal entries: %@", v34, 0xCu);
      sub_3D48(v35, &unk_8EB30, &unk_7A270);
    }

    v23(v25, v24);
    v37 = v39;
    if (v39)
    {
      *v37 = sub_74888();
    }

    return 0;
  }
}

uint64_t sub_65494(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

void *sub_65550(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_759D8();
    sub_75978();
    v3 = sub_759D8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    sub_75978();
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_75928();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        _s31InferenceRecordContainerWrapperCMa();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_75958();
        v7 = _swiftEmptyArrayStorage[2];
        sub_75988();
        sub_75998();
        sub_75968();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_656C0(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  sub_75978();
  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_759D8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_75928();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a3(a2);
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_75958();
      v11 = _swiftEmptyArrayStorage[2];
      sub_75988();
      sub_75998();
      sub_75968();
      if (v10 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_759D8();
    sub_75978();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_65834(unint64_t a1, void *a2)
{
  v90 = a2;
  v86 = sub_754B8();
  v3 = *(v86 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v86);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  isa = (&v73 - v8);
  v102 = sub_38F8(&qword_8EFE0, &qword_79F30);
  v95 = *(v102 - 8);
  v10 = *(v95 + 64);
  v11 = __chkstk_darwin(v102);
  v101 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v73 - v14;
  __chkstk_darwin(v13);
  v94 = &v73 - v16;
  v18 = sub_656C0(a1, v17, type metadata accessor for WorkoutPropertyRecordJournalEntry);
  if (v18)
  {
    v19 = v18;
    if (v18 >> 62)
    {
      goto LABEL_63;
    }

    if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
      do
      {
        v96 = v15;
        v73 = v19;
        v103[0] = v19;
        sub_38F8(&qword_8FE48, &qword_7ABE0);
        sub_7718(&qword_8FE50, &qword_8FE48, &qword_7ABE0);
        isa = v103;
        v15 = 0;
        v20 = sub_75648();
        v22 = 0;
        v23 = *(v20 + 64);
        v74 = v20 + 64;
        v24 = 1 << *(v20 + 32);
        v19 = -1;
        if (v24 < 64)
        {
          v19 = ~(-1 << v24);
        }

        v25 = v19 & v23;
        v26 = (v24 + 63) >> 6;
        v100 = (v95 + 32);
        v83 = (v3 + 8);
        *&v21 = 136315394;
        v79 = v21;
        v89 = v7;
        v76 = v20;
        v75 = v26;
LABEL_8:
        while (v25)
        {
LABEL_13:
          v28 = (v22 << 9) | (8 * __clz(__rbit64(v25)));
          v29 = *(v20 + 56);
          v82 = *(*(v20 + 48) + v28);
          v30 = *(v29 + v28);
          v91 = v30;
          v85 = v30 >> 62;
          if (v30 >> 62)
          {
            v63 = v20;
            isa = v22;
            v64 = v26;
            v3 = v25;
            v65 = sub_759D8();
            v25 = v3;
            v26 = v64;
            v22 = isa;
            v19 = v65;
            v20 = v63;
            v30 = v91;
          }

          else
          {
            v19 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
          }

          v25 &= v25 - 1;
          if (v19)
          {
            v87 = v19;
            v77 = v25;
            v78 = v22;
            v88 = v30 & 0xC000000000000001;
            v31 = v30 & 0xFFFFFFFFFFFFFF8;
            v81 = v30 + 32;
            v84 = v30 & 0xFFFFFFFFFFFFFF8;
            if (v30 < 0)
            {
              v31 = v30;
            }

            v80 = v31;

            v32 = 0;
            while (1)
            {
              if (v88)
              {
                v33 = sub_75928();
              }

              else
              {
                if (v32 >= *(v84 + 16))
                {
                  goto LABEL_62;
                }

                v33 = *(v81 + 8 * v32);
              }

              v93 = v33;
              v34 = __OFADD__(v32, 1);
              v35 = v32 + 1;
              if (v34)
              {
                goto LABEL_60;
              }

              v3 = *&v93[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities];
              if (v3 >> 62)
              {
                if (v3 < 0)
                {
                  v50 = *&v93[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities];
                }

                v36 = sub_759D8();
                v92 = v35;
                if (v36)
                {
LABEL_28:
                  v7 = 0;
                  v97 = v3 & 0xFFFFFFFFFFFFFF8;
                  v98 = v3 & 0xC000000000000001;
                  v37 = _swiftEmptyArrayStorage;
                  while (1)
                  {
                    if (v98)
                    {
                      v38 = sub_75928();
                    }

                    else
                    {
                      if (v7 >= *(v97 + 16))
                      {
                        goto LABEL_59;
                      }

                      v38 = *(v3 + 8 * v7 + 32);
                    }

                    v39 = v38;
                    if (__OFADD__(v7, 1))
                    {
                      break;
                    }

                    sub_398C(*&v38[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity], *&v38[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity + 8]);
                    sub_7718(&qword_8EFE8, &qword_8EFE0, &qword_79F30);
                    v40 = v96;
                    v41 = v102;
                    sub_74F88();
                    if (v15)
                    {

                      goto LABEL_49;
                    }

                    v99 = 0;
                    v42 = (v7 + 1);
                    v43 = v3;

                    v44 = *v100;
                    v45 = v94;
                    (*v100)(v94, v40, v41);
                    v44(v101, v45, v41);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v37 = sub_67A70(0, v37[2] + 1, 1, v37, &qword_8FE98, &unk_7AC68, &qword_8EFE0, &qword_79F30);
                    }

                    v47 = v37[2];
                    v46 = v37[3];
                    v48 = v37;
                    isa = (v47 + 1);
                    v3 = v43;
                    if (v47 >= v46 >> 1)
                    {
                      v48 = sub_67A70(v46 > 1, v47 + 1, 1, v37, &qword_8FE98, &unk_7AC68, &qword_8EFE0, &qword_79F30);
                    }

                    v37 = v48;
                    *(v48 + 16) = isa;
                    (v44)(v48 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v47, v101);
                    ++v7;
                    v49 = v42 == v36;
                    v15 = v99;
                    if (v49)
                    {
                      goto LABEL_47;
                    }
                  }

                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
                  goto LABEL_61;
                }
              }

              else
              {
                v36 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
                v92 = v35;
                if (v36)
                {
                  goto LABEL_28;
                }
              }

              v37 = _swiftEmptyArrayStorage;
LABEL_47:
              sub_5D9B4(v37, v82, v90, 0);
              if (v15)
              {

LABEL_49:
                v15 = 0;
                v7 = v89;
                sub_75378();
                swift_errorRetain();
                v51 = sub_754A8();
                v52 = sub_75718();

                if (os_log_type_enabled(v51, v52))
                {
                  v53 = swift_slowAlloc();
                  v54 = swift_slowAlloc();
                  v55 = swift_slowAlloc();
                  v103[0] = v55;
                  *v53 = v79;
                  v56 = sub_75B18();
                  v58 = sub_31B4(v56, v57, v103);

                  *(v53 + 4) = v58;
                  *(v53 + 12) = 2112;
                  swift_errorRetain();
                  v59 = _swift_stdlib_bridgeErrorToNSError();
                  *(v53 + 14) = v59;
                  *v54 = v59;
                  _os_log_impl(&dword_0, v51, v52, "Failed to apply %s: %@", v53, 0x16u);
                  sub_3D48(v54, &unk_8EB30, &unk_7A270);

                  sub_3940(v55);
                  v7 = v89;
                }

                (*v83)(v7, v86);
                v60 = [v90 database];
                if (v85)
                {
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);

                  v3 = sub_759C8();
                }

                else
                {
                  v3 = v91;

                  sub_75A78();
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                }

                sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                isa = sub_75678().super.isa;

                v103[0] = 0;
                v61 = [v60 addJournalEntries:isa error:v103];

                if (!v61)
                {
                  v72 = v103[0];
                  sub_74898();

                  swift_willThrow();
                  v103[0] = 0;
                  v103[1] = 0xE000000000000000;
                  sub_75908(38);
                  v104._object = 0x80000000000779F0;
                  v104._countAndFlagsBits = 0xD000000000000024;
                  sub_75608(v104);
                  swift_getErrorValue();
                  sub_75A48();
                  result = sub_759B8();
                  __break(1u);
                  return result;
                }

                v62 = v103[0];
              }

              else
              {
              }

              v32 = v92;
              if (v92 == v87)
              {

                v20 = v76;
                v22 = v78;
                v26 = v75;
                v25 = v77;
                goto LABEL_8;
              }
            }
          }
        }

        while (1)
        {
          v27 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v27 >= v26)
          {
          }

          v25 = *(v74 + 8 * v27);
          ++v22;
          if (v25)
          {
            v22 = v27;
            goto LABEL_13;
          }
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v67 = v19;
        v68 = sub_759D8();
        v19 = v67;
      }

      while (v68);
    }
  }

  sub_75378();
  v69 = sub_754A8();
  v70 = sub_75718();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_0, v69, v70, "Applying journal entries, but none found. Skipping.", v71, 2u);
  }

  return (*(v3 + 8))(isa, v86);
}

void *sub_663BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_provenance);
  *(a2 + 8) = 0;
  return result;
}

id sub_66470(id a1)
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
        v12 = _s13EntityWrapperCMa();
        v13 = (v10 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;
          v16 = objc_allocWithZone(v12);
          v17 = &v16[OBJC_IVAR___WorkoutEntityWrapper_serializedEntity];
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

      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities] = v19;
      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_provenance] = v30;
      v31 = type metadata accessor for WorkoutPropertyRecordJournalEntry();
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
  type metadata accessor for WorkoutPropertyRecordJournalEntry();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_668CC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_provenance);
  v4 = sub_75598();
  [a1 encodeInt64:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v22 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin33WorkoutPropertyRecordJournalEntry_entities);
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
        v9 = *(v8 + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity);
        v10 = *(v8 + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity + 8);
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
        v15 = (*v14 + OBJC_IVAR___WorkoutEntityWrapper_serializedEntity);
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

id sub_66BD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPropertyRecordJournalEntry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_66C3C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_6728C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_38F8(&qword_8EDA8, &unk_79D30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_66D40(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= *(v5 + 24) >> 1)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v16 = v6 + v4;
  }

  else
  {
    v16 = v6;
  }

  result = sub_67668(result, v16, 1, v5, a2, a3);
  v5 = result;
  if (!*(v10 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v12 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v12 < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v5 + v12 + 32), (v10 + 32), v4);

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v13 = *(v5 + 16);
  v14 = __OFADD__(v13, v4);
  v15 = v13 + v4;
  if (!v14)
  {
    *(v5 + 16) = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_66EBC(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_67894(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_67090(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_759D8();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_759D8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_6A0FC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_6A2D4(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_67180(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8EDB0, &qword_7AC50);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_6728C(void *result, int64_t a2, char a3, void *a4)
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
    sub_38F8(&qword_8F678, &qword_7A4A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_38F8(&qword_8EDA8, &unk_79D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_673C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8FF00, &qword_7ACD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_674CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8FE90, &qword_7AC60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_67668(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_38F8(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

size_t sub_67894(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_38F8(a5, a6);
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

size_t sub_67A70(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_38F8(a5, a6);
  v16 = *(sub_38F8(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_38F8(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_67C58(char *a1, int64_t a2, char a3)
{
  result = sub_67EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_67C78(char *a1, int64_t a2, char a3)
{
  result = sub_67FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_67C98(void *a1, int64_t a2, char a3)
{
  result = sub_680E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_67CB8(size_t a1, int64_t a2, char a3)
{
  result = sub_68674(a1, a2, a3, *v3, &qword_8FF38, &qword_7AD40, &type metadata accessor for CacheIndex);
  *v3 = result;
  return result;
}

void *sub_67CFC(void *a1, int64_t a2, char a3)
{
  result = sub_68214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_67D1C(void *a1, int64_t a2, char a3)
{
  result = sub_68348(a1, a2, a3, *v3, &qword_8F658, &unk_7AD30, &qword_8EDC8, &qword_79D48);
  *v3 = result;
  return result;
}

void *sub_67D5C(void *a1, int64_t a2, char a3)
{
  result = sub_68348(a1, a2, a3, *v3, &qword_8EDA0, &unk_79D20, &qword_8EDE0, &unk_79D60);
  *v3 = result;
  return result;
}

void *sub_67D9C(void *a1, int64_t a2, char a3)
{
  result = sub_68348(a1, a2, a3, *v3, &qword_8FC68, &qword_7AD70, &qword_8EDD8, &qword_79D58);
  *v3 = result;
  return result;
}

char *sub_67DDC(char *a1, int64_t a2, char a3)
{
  result = sub_68490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_67DFC(size_t a1, int64_t a2, char a3)
{
  result = sub_68674(a1, a2, a3, *v3, &qword_8FF48, &qword_7AD58, type metadata accessor for DatabaseChecksum);
  *v3 = result;
  return result;
}

size_t sub_67E40(size_t a1, int64_t a2, char a3)
{
  result = sub_68674(a1, a2, a3, *v3, &qword_8FAA0, &unk_7ACA0, &type metadata accessor for PropertyRecordCheckpoint);
  *v3 = result;
  return result;
}

size_t sub_67E84(size_t a1, int64_t a2, char a3)
{
  result = sub_68850(a1, a2, a3, *v3, &qword_8FF40, &qword_7AD48, &qword_8F7D0, &qword_7AD50);
  *v3 = result;
  return result;
}

char *sub_67EC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8EDB0, &qword_7AC50);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_67FD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8FF10, &qword_7ACE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_680E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_38F8(&qword_8F678, &qword_7A4A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_38F8(&qword_8EDA8, &unk_79D30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_68214(void *result, int64_t a2, char a3, void *a4)
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
    sub_38F8(&qword_8FDA0, &unk_7AD90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_38F8(&qword_8FDA8, &qword_7AA48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_68348(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_38F8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_38F8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_68490(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8FE40, &qword_7ABD8);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_685AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_685FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

size_t sub_68674(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_38F8(a5, a6);
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

size_t sub_68850(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_38F8(a5, a6);
  v16 = *(sub_38F8(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_38F8(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}