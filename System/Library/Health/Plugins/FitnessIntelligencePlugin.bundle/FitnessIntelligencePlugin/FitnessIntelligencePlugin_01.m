void *sub_1AD00(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = sub_38F8(&qword_8F3D8, &qword_7A208);
  v7 = *(*(v63 - 8) + 64);
  v8 = __chkstk_darwin(v63);
  v62 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v61 = v55 - v11;
  __chkstk_darwin(v10);
  v60 = v55 - v12;
  v13 = type metadata accessor for DatabaseChecksum();
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  __chkstk_darwin(v13);
  v64 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_74CA8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v69 = &_swiftEmptyDictionarySingleton;
  v19 = [a2 database];
  (*(v17 + 16))(v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v21 = swift_allocObject();
  (*(v17 + 32))(v21 + v20, v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  *(v21 + ((v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v69;
  v22 = swift_allocObject();
  v22[2] = sub_1B470;
  v22[3] = v21;
  aBlock[4] = sub_FC94;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_86E58;
  v23 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v24 = [v19 performTransactionWithContext:a3 error:aBlock block:v23 inaccessibilityHandler:0];
  _Block_release(v23);

  v25 = aBlock[0];
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    goto LABEL_30;
  }

  if (!v24)
  {
    sub_74898();

    swift_willThrow();

    return v25;
  }

  v26 = v69;
  v27 = v69[2];
  v25 = _swiftEmptyArrayStorage;
  if (!v27)
  {
    goto LABEL_23;
  }

  v55[1] = v21;
  v55[2] = v3;
  aBlock[0] = _swiftEmptyArrayStorage;

  sub_67DFC(0, v27, 0);
  v25 = aBlock[0];
  v28 = -1 << *(v26 + 32);
  v67 = v26 + 8;
  v29 = sub_75868();
  v30 = 0;
  v56 = v26 + 9;
  v57 = v27;
  do
  {
    if (v29 < 0 || v29 >= 1 << *(v26 + 32))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    v32 = v29 >> 6;
    if ((v67[v29 >> 6] & (1 << v29)) == 0)
    {
      goto LABEL_26;
    }

    v33 = *(v26 + 9);
    v65 = v30;
    v66 = v33;
    v34 = v26[6];
    v35 = sub_38F8(&qword_8F000, &qword_7A5D0);
    v36 = v60;
    sub_FCE0(v34 + *(*(v35 - 8) + 72) * v29, v60, &qword_8F000, &qword_7A5D0);
    v37 = *(v26[7] + 8 * v29);
    v38 = v36;
    v39 = v61;
    sub_1B748(v38, v61, &qword_8F000, &qword_7A5D0);
    *(v39 + *(v63 + 48)) = v37;
    v40 = v39;
    v41 = v62;
    sub_1B748(v40, v62, &qword_8F3D8, &qword_7A208);
    v42 = v41;
    v43 = v64;
    sub_1B748(v42, v64, &qword_8F000, &qword_7A5D0);
    v44 = v43;
    *(v43 + *(v59 + 20)) = v37;
    aBlock[0] = v25;
    v46 = v25[2];
    v45 = v25[3];
    if (v46 >= v45 >> 1)
    {
      sub_67DFC(v45 > 1, v46 + 1, 1);
      v44 = v64;
      v25 = aBlock[0];
    }

    v25[2] = v46 + 1;
    sub_1B534(v44, v25 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46);
    v31 = 1 << *(v26 + 32);
    if (v29 >= v31)
    {
      goto LABEL_27;
    }

    v47 = v67[v32];
    if ((v47 & (1 << v29)) == 0)
    {
      goto LABEL_28;
    }

    if (v66 != *(v26 + 9))
    {
      goto LABEL_29;
    }

    v48 = v47 & (-2 << (v29 & 0x3F));
    if (v48)
    {
      v31 = __clz(__rbit64(v48)) | v29 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v49 = v32 << 6;
      v50 = v32 + 1;
      v51 = &v56[v32];
      while (v50 < (v31 + 63) >> 6)
      {
        v53 = *v51++;
        v52 = v53;
        v49 += 64;
        ++v50;
        if (v53)
        {
          sub_1B598(v29, v66, 0);
          v31 = __clz(__rbit64(v52)) + v49;
          goto LABEL_6;
        }
      }

      sub_1B598(v29, v66, 0);
    }

LABEL_6:
    v30 = v65 + 1;
    v29 = v31;
  }

  while (v65 + 1 != v57);

LABEL_23:

  return v25;
}

uint64_t sub_1B3DC()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B470(void *a1, void *a2)
{
  v5 = *(sub_74CA8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_19C58(a1, a2, v2 + v6, v7);
}

uint64_t sub_1B51C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseChecksum();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B598(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B5A4()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B638(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_74CA8() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1A388(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1B700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B748(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_38F8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7C4(unint64_t a1, void *a2)
{
  v87 = a2;
  v83 = sub_754B8();
  v3 = *(v83 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v83);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  isa = (&v70 - v8);
  v10 = sub_38F8(&unk_8FD00, &qword_7A260);
  v92 = *(v10 - 1);
  v11 = *(v92 + 64);
  v12 = __chkstk_darwin(v10);
  v98 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v70 - v15;
  __chkstk_darwin(v14);
  v91 = &v70 - v17;
  v18 = sub_65518(a1);
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
        v99 = v10;
        v93 = v16;
        v70 = v19;
        v100[0] = v19;
        sub_38F8(&qword_8F420, &qword_7A268);
        sub_7718(&qword_8F428, &qword_8F420, &qword_7A268);
        isa = v100;
        v16 = 0;
        v20 = sub_75648();
        v22 = 0;
        v23 = *(v20 + 64);
        v71 = v20 + 64;
        v24 = 1 << *(v20 + 32);
        v19 = -1;
        if (v24 < 64)
        {
          v19 = ~(-1 << v24);
        }

        v25 = v19 & v23;
        v26 = (v24 + 63) >> 6;
        v97 = (v92 + 32);
        v80 = (v3 + 8);
        *&v21 = 136315394;
        v76 = v21;
        v86 = v7;
        v73 = v20;
        v72 = v26;
LABEL_8:
        while (v25)
        {
LABEL_13:
          v28 = (v22 << 9) | (8 * __clz(__rbit64(v25)));
          v19 = *(v20 + 56);
          v79 = *(*(v20 + 48) + v28);
          v29 = *(v19 + v28);
          v82 = v29 >> 62;
          if (v29 >> 62)
          {
            v61 = v20;
            isa = v22;
            v10 = v26;
            v3 = v25;
            v62 = sub_759D8();
            v25 = v3;
            v26 = v10;
            v22 = isa;
            v30 = v62;
            v20 = v61;
          }

          else
          {
            v30 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
          }

          v25 &= v25 - 1;
          if (v30)
          {
            v74 = v25;
            v75 = v22;
            v85 = v29 & 0xC000000000000001;
            v31 = v29 & 0xFFFFFFFFFFFFFF8;
            v78 = v29 + 32;
            v81 = v29 & 0xFFFFFFFFFFFFFF8;
            if (v29 < 0)
            {
              v31 = v29;
            }

            v77 = v31;
            v84 = v30;

            v32 = 0;
            v88 = v29;
            while (1)
            {
              if (v85)
              {
                v33 = sub_75928();
              }

              else
              {
                if (v32 >= *(v81 + 16))
                {
                  goto LABEL_62;
                }

                v33 = *(v78 + 8 * v32);
              }

              v90 = v33;
              v34 = __OFADD__(v32, 1);
              v35 = v32 + 1;
              if (v34)
              {
                goto LABEL_60;
              }

              v89 = v35;
              v3 = *&v90[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities];
              if (v3 >> 62)
              {
                if (v3 < 0)
                {
                  v49 = *&v90[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities];
                }

                v36 = sub_759D8();
                if (v36)
                {
LABEL_28:
                  v7 = 0;
                  v94 = v3 & 0xFFFFFFFFFFFFFF8;
                  v95 = v3 & 0xC000000000000001;
                  v37 = _swiftEmptyArrayStorage;
                  while (1)
                  {
                    if (v95)
                    {
                      v38 = sub_75928();
                    }

                    else
                    {
                      if (v7 >= *(v94 + 16))
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

                    sub_398C(*&v38[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity], *&v38[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity + 8]);
                    sub_7718(&qword_8F430, &unk_8FD00, &qword_7A260);
                    v40 = v93;
                    v41 = v99;
                    sub_74F88();
                    if (v16)
                    {

                      goto LABEL_49;
                    }

                    v96 = 0;
                    v42 = (v7 + 1);
                    v43 = v3;

                    v10 = *v97;
                    v44 = v91;
                    (*v97)(v91, v40, v41);
                    (v10)(v98, v44, v41);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v37 = sub_67644(0, v37[2] + 1, 1, v37);
                    }

                    v46 = v37[2];
                    v45 = v37[3];
                    v47 = v37;
                    isa = (v46 + 1);
                    v3 = v43;
                    if (v46 >= v45 >> 1)
                    {
                      v47 = sub_67644(v45 > 1, v46 + 1, 1, v37);
                    }

                    v37 = v47;
                    *(v47 + 16) = isa;
                    (v10)(v47 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v46, v98, v99);
                    ++v7;
                    v48 = v42 == v36;
                    v16 = v96;
                    if (v48)
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
                if (v36)
                {
                  goto LABEL_28;
                }
              }

              v37 = _swiftEmptyArrayStorage;
LABEL_47:
              sub_5D36C(v37, v79, v87, 0);
              if (v16)
              {

LABEL_49:
                v16 = 0;
                v7 = v86;
                sub_75378();
                swift_errorRetain();
                v50 = sub_754A8();
                v51 = sub_75718();

                if (os_log_type_enabled(v50, v51))
                {
                  v52 = swift_slowAlloc();
                  v53 = swift_slowAlloc();
                  v54 = swift_slowAlloc();
                  v100[0] = v54;
                  *v52 = v76;
                  v55 = sub_75B18();
                  v57 = sub_31B4(v55, v56, v100);

                  *(v52 + 4) = v57;
                  *(v52 + 12) = 2112;
                  swift_errorRetain();
                  v58 = _swift_stdlib_bridgeErrorToNSError();
                  *(v52 + 14) = v58;
                  *v53 = v58;
                  _os_log_impl(&dword_0, v50, v51, "Failed to apply %s: %@", v52, 0x16u);
                  sub_3D48(v53, &unk_8EB30, &unk_7A270);

                  sub_3940(v54);
                  v7 = v86;
                }

                (*v80)(v7, v83);
                v59 = [v87 database];
                if (v82)
                {
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);

                  v3 = sub_759C8();
                }

                else
                {
                  v3 = v88;

                  sub_75A78();
                  sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                }

                sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
                isa = sub_75678().super.isa;

                v100[0] = 0;
                v10 = [v59 addJournalEntries:isa error:v100];

                if (!v10)
                {
                  v69 = v100[0];
                  sub_74898();

                  swift_willThrow();
                  v100[0] = 0;
                  v100[1] = 0xE000000000000000;
                  sub_75908(38);
                  v101._object = 0x80000000000779F0;
                  v101._countAndFlagsBits = 0xD000000000000024;
                  sub_75608(v101);
                  swift_getErrorValue();
                  sub_75A48();
                  result = sub_759B8();
                  __break(1u);
                  return result;
                }

                v60 = v100[0];
              }

              else
              {
              }

              v32 = v89;

              if (v32 == v84)
              {

                v20 = v73;
                v22 = v75;
                v26 = v72;
                v25 = v74;
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

          v25 = *(v71 + 8 * v27);
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
        v64 = v19;
        v65 = sub_759D8();
        v19 = v64;
      }

      while (v65);
    }
  }

  sub_75378();
  v66 = sub_754A8();
  v67 = sub_75718();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_0, v66, v67, "Applying journal entries, but none found. Skipping.", v68, 2u);
  }

  return (*(v3 + 8))(isa, v83);
}

void *sub_1C2D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_provenance);
  *(a2 + 8) = 0;
  return result;
}

id sub_1C38C(id a1)
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
        v12 = type metadata accessor for FitnessPlusPropertyRecordEntity.EntityWrapper();
        v13 = (v10 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;
          v16 = objc_allocWithZone(v12);
          v17 = &v16[OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity];
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

      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities] = v19;
      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_provenance] = v30;
      v31 = type metadata accessor for FitnessPlusPropertyRecordJournalEntry();
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
  type metadata accessor for FitnessPlusPropertyRecordJournalEntry();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1C7E8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_provenance);
  v4 = sub_75598();
  [a1 encodeInt64:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v22 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin37FitnessPlusPropertyRecordJournalEntry_entities);
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
        v9 = *(v8 + OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity);
        v10 = *(v8 + OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity + 8);
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
        v15 = (*v14 + OBJC_IVAR___FitnessPlusEntityWrapper_serializedEntity);
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

id sub_1CAF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FitnessPlusPropertyRecordJournalEntry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1CBB8()
{
  sub_38F8(&qword_8F180, &qword_79D40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A280;
  v1 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v2 = sub_75598();
  v3 = sub_75598();
  v4 = [v1 initWithName:v2 columnType:v3 keyPathType:3];

  *(v0 + 32) = v4;
  v5 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v6 = sub_75598();
  v7 = sub_75598();
  v8 = [v5 initWithName:v6 columnType:v7 keyPathType:5];

  *(v0 + 40) = v8;
  v9 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v10 = sub_75598();
  v11 = sub_75598();
  v12 = [v9 initWithName:v10 columnType:v11 keyPathType:4];

  *(v0 + 48) = v12;
  v13 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v14 = sub_75598();
  v15 = sub_75598();
  v16 = [v13 initWithName:v14 columnType:v15 keyPathType:1];

  *(v0 + 56) = v16;
  v17 = objc_allocWithZone(HDSQLiteEntityColumnDefinitionObject);
  v18 = sub_75598();
  v19 = sub_75598();
  v20 = [v17 initWithName:v18 columnType:v19 keyPathType:0];

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
  qword_90028 = v0;
}

id InferenceRecordContainerEntity.init(persistentID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return objc_msgSendSuper2(&v4, "initWithPersistentID:", a1);
}

id InferenceRecordContainerEntity.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return objc_msgSendSuper2(&v2, "init");
}

id InferenceRecordContainerEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InferenceRecordContainerEntity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *_s25FitnessIntelligencePlugin30InferenceRecordContainerEntityC14createTableSQL4withSSSgSo11_HKBehaviorC_tFZ_0()
{
  sub_75908(34);

  v22._countAndFlagsBits = 0xD00000000000002ALL;
  v22._object = 0x8000000000078960;
  sub_75608(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  sub_75608(v23);
  if (qword_8E9F8 != -1)
  {
    swift_once();
  }

  v0 = qword_90028;
  if (qword_90028 >> 62)
  {
    v1 = sub_759D8();
  }

  else
  {
    v1 = *(&dword_10 + (qword_90028 & 0xFFFFFFFFFFFFFF8));
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
      *(v16 + 4) = v20;
      *(v16 + 5) = v21;
    }

    while (v1 != v3);
LABEL_14:
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_1D80C();
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

void *sub_1D420()
{
  sub_67C58(0, 6, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_85B18 + v0 + 32);
    if (v2 == 5)
    {
      v3 = 0x766F7250636E7973;
    }

    else
    {
      v3 = 0x6E656449636E7973;
    }

    if (v2 == 5)
    {
      v4 = 0xEE0065636E616E65;
    }

    else
    {
      v4 = 0xEC00000079746974;
    }

    if (v2 == 3)
    {
      v5 = 0x4164657461657263;
    }

    else
    {
      v5 = 1635017060;
    }

    if (v2 == 3)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (*(&off_85B18 + v0 + 32) <= 4u)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v2 == 1)
    {
      v7 = 1684632949;
    }

    else
    {
      v7 = 0x72657470616461;
    }

    if (v2 == 1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (!*(&off_85B18 + v0 + 32))
    {
      v7 = 0x4449574F52;
      v8 = 0xE500000000000000;
    }

    if (*(&off_85B18 + v0 + 32) <= 2u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (*(&off_85B18 + v0 + 32) <= 2u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v14 = result;
    v12 = result[2];
    v11 = result[3];
    if (v12 >= v11 >> 1)
    {
      sub_67C58((v11 > 1), v12 + 1, 1);
      result = v14;
    }

    ++v0;
    result[2] = v12 + 1;
    v13 = &result[2 * v12];
    v13[4] = v9;
    v13[5] = v10;
  }

  while (v0 != 6);
  return result;
}

uint64_t sub_1D634(uint64_t *a1)
{
  if (qword_8E9F8 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = qword_90028;
  v3 = qword_90028 >> 62;
  if (qword_90028 >> 62)
  {
    if (qword_90028 < 0)
    {
      v1 = qword_90028;
    }

    else
    {
      v1 = qword_90028 & 0xFFFFFFFFFFFFFF8;
    }

    *a1 = sub_759D8();
    v4 = sub_759D8();
  }

  else
  {
    v4 = *(&dword_10 + (qword_90028 & 0xFFFFFFFFFFFFFF8));
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
  sub_1D7C0();
  swift_arrayInitWithCopy();
  swift_unknownObjectRelease();
  return v1;
}

unint64_t sub_1D7C0()
{
  result = qword_8FB90;
  if (!qword_8FB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8FB90);
  }

  return result;
}

unint64_t sub_1D80C()
{
  result = qword_8FBA0;
  if (!qword_8FBA0)
  {
    sub_76D0(&qword_8F280, &unk_7ABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FBA0);
  }

  return result;
}

id sub_1D8E8(void *a1)
{
  v2 = v1;
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_74D78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_38F8(&qword_8EB58, &unk_79BB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_79BF0;
  *(v13 + 32) = sub_7688(0, &qword_8EF00, NSData_ptr);
  sub_757F8();

  if (v28)
  {
    if (swift_dynamicCast())
    {
      v14 = v25;
      v15 = v26;
      sub_398C(v25, v26);
      sub_11CF4();
      sub_74F88();
      (*(v9 + 56))(v7, 0, 1, v8);
      (*(v9 + 32))(v12, v7, v8);
      (*(v9 + 16))(&v1[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_record], v12, v8);
      v18 = sub_75598();
      v19 = [a1 decodeInt64ForKey:v18];

      *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_provenance] = v19;
      v20 = type metadata accessor for InferenceRecordContainerJournalEntry();
      v24.receiver = v2;
      v24.super_class = v20;
      v21 = objc_msgSendSuper2(&v24, "init");

      sub_FB28(v14, v15);
      (*(v9 + 8))(v12, v8);
      return v21;
    }
  }

  else
  {

    sub_3D48(v27, &qword_8EF08, &unk_7A250);
  }

  type metadata accessor for InferenceRecordContainerJournalEntry();
  v16 = *&stru_20.segname[(swift_isaMask & *v1) + 8];
  v17 = *&stru_20.segname[(swift_isaMask & *v1) + 12];
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DCD4(void *a1)
{
  v2 = v1;
  sub_74D78();
  sub_11CF4();
  v4 = sub_74F98();
  v6 = v5;
  isa = sub_748A8().super.isa;
  v8 = sub_75598();
  [a1 encodeObject:isa forKey:v8];

  v9 = *(v2 + OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_provenance);
  v10 = sub_75598();
  [a1 encodeInt64:v9 forKey:v10];

  return sub_FB28(v4, v6);
}

id sub_1DECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InferenceRecordContainerJournalEntry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InferenceRecordContainerJournalEntry()
{
  result = qword_8F488;
  if (!qword_8F488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DFC4()
{
  result = sub_74D78();
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

uint64_t sub_1E060(unint64_t a1, void *a2)
{
  v47 = a2;
  v42 = sub_754B8();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v42);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v48 = &v39 - v9;
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = sub_65534(a1);
  if (v12)
  {
    v13 = v12;
    sub_75378();

    v14 = sub_754A8();
    v15 = sub_75708();
    v16 = v13 >> 62;
    if (os_log_type_enabled(v14, v15))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      if (v16)
      {
        v18 = sub_759D8();
      }

      else
      {
        v18 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      }

      *(v17 + 4) = v18;

      _os_log_impl(&dword_0, v14, v15, "applying %ld journal entries", v17, 0xCu);
    }

    else
    {
    }

    v40 = *(v3 + 8);
    v41 = v3 + 8;
    v40(v11, v42);
    v27 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v16)
    {
      goto LABEL_22;
    }

    for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); i; i = sub_759D8())
    {
      v29 = 0;
      v46 = v13 & 0xC000000000000001;
      *(&v30 + 1) = 2;
      v43 = xmmword_79BF0;
      *&v30 = 138412290;
      v39 = v30;
      v44 = i;
      v45 = v27;
      while (1)
      {
        if (v46)
        {
          v31 = sub_75928();
        }

        else
        {
          if (v29 >= *(v27 + 16))
          {
            goto LABEL_21;
          }

          v31 = *(v13 + 8 * v29 + 32);
        }

        v32 = v31;
        v33 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        type metadata accessor for InferenceRecordContainerEntity();
        sub_38F8(&qword_8F3C8, &unk_7A2E0);
        v34 = sub_74D78();
        v35 = *(v34 - 8);
        v36 = *(v35 + 72);
        v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = swift_allocObject();
        *(v38 + 16) = v43;
        (*(v35 + 16))(v38 + v37, &v32[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_record], v34);
        sub_705B8(v38, *&v32[OBJC_IVAR____TtC25FitnessIntelligencePlugin36InferenceRecordContainerJournalEntry_provenance], v47);

        v27 = v45;
        ++v29;
        if (v33 == v44)
        {
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }
  }

  else
  {
    sub_75378();

    v19 = sub_754A8();
    v20 = sub_75718();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136315138;
      sub_7688(0, &qword_8EF18, HDJournalEntry_ptr);
      v23 = sub_75698();
      v25 = sub_31B4(v23, v24, &v49);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "Unexpected journal entries: %s", v21, 0xCu);
      sub_3940(v22);
    }

    return (*(v3 + 8))(v7, v42);
  }
}

uint64_t sub_1E630()
{
  v1 = v0;
  v2 = *(v0 + 40);

  sub_38F8(&qword_8F598, &unk_7A350);
  sub_74CC8();

  [v6 invalidate];

  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1E714(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_1E7B8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E7D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

id sub_1E800@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = v2;
  return v2;
}

id sub_1E830@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

void sub_1E860(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v53 = a2;
  v55 = a3;
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v7 = __chkstk_darwin(v4);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - v10;
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = a1[2];
  v15 = a1[3];
  sub_75378();

  v16 = sub_754A8();
  v17 = sub_75738();

  v18 = os_log_type_enabled(v16, v17);
  v52 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v54 = v4;
    v51 = v11;
    v20 = v19;
    v21 = v5;
    v22 = swift_slowAlloc();
    v58 = v22;
    *v20 = 136315138;
    *(v20 + 4) = sub_31B4(v14, v15, &v58);
    _os_log_impl(&dword_0, v16, v17, "Incrementing assertion %s", v20, 0xCu);
    sub_3940(v22);
    v5 = v21;

    v11 = v51;
    v4 = v54;
  }

  v23 = *(v5 + 1);
  v23(v13, v4);
  v24 = a1[6];
  v25 = v56;
  if (v24)
  {
    v26 = a1[7];
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
    }

    v28 = v4;
    a1[7] = v27;
    v29 = v24;
    sub_75378();
    v30 = sub_754A8();
    v31 = sub_75738();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v27;
      _os_log_impl(&dword_0, v30, v31, "Count is now: %ld", v32, 0xCu);
    }

    v23(v25, v28);
  }

  else
  {
    sub_75378();

    v33 = sub_754A8();
    v34 = sub_75738();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v56 = v5;
      v36 = v35;
      v37 = swift_slowAlloc();
      v54 = v4;
      v38 = v11;
      v39 = v37;
      v58 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_31B4(v52, v15, &v58);
      _os_log_impl(&dword_0, v33, v34, "Taking assertion: %s", v36, 0xCu);
      sub_3940(v39);

      v23(v38, v54);
    }

    else
    {

      v23(v11, v4);
    }

    v40 = [v53 profile];
    v41 = [v40 database];

    v42 = sub_75598();
    v43 = a1[4];
    v58 = 0;
    v44 = [v41 takeAccessibilityAssertionWithOwnerIdentifier:v42 contextType:v43 error:&v58];

    v45 = v58;
    if (!v44)
    {
      v48 = v58;
      v49 = sub_74898();

      v57 = v49;
      swift_willThrow();
      return;
    }

    v46 = a1[6];
    a1[6] = v44;
    a1[7] = 1;
    v47 = v45;
    v29 = v44;
  }

  *v55 = v29;
}

void sub_1ED68(void *a1)
{
  v2 = sub_754B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v42 = &v40 - v8;
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  v11 = a1[2];
  v12 = a1[3];
  sub_75378();

  v13 = sub_754A8();
  v14 = sub_75738();

  v15 = os_log_type_enabled(v13, v14);
  v43 = v2;
  v41 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v40 = v3;
    v18 = v17;
    v45 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_31B4(v11, v12, &v45);
    _os_log_impl(&dword_0, v13, v14, "Decrementing assertion: %s", v16, 0xCu);
    sub_3940(v18);
    v19 = v40;

    v20 = *(v19 + 8);
  }

  else
  {

    v20 = *(v3 + 8);
  }

  v20(v10, v2);
  v22 = (a1 + 6);
  v21 = a1[6];
  v23 = v44;
  if (v21)
  {
    v24 = a1[7];
    if (v24 < 2)
    {
      v32 = v21;
      sub_75378();

      v33 = sub_754A8();
      v34 = sub_75738();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v45 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_31B4(v41, v12, &v45);
        _os_log_impl(&dword_0, v33, v34, "Invalidating assertion: %s", v35, 0xCu);
        sub_3940(v36);

        v37 = v44;
      }

      else
      {

        v37 = v23;
      }

      v20(v37, v43);
      [v32 invalidate];

      v39 = *v22;
      *v22 = 0;
      a1[7] = 0;
    }

    else
    {
      v25 = v24 - 1;
      a1[7] = v24 - 1;
      v26 = v21;
      v27 = v42;
      sub_75378();
      v28 = sub_754A8();
      v29 = sub_75738();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = v25;
        _os_log_impl(&dword_0, v28, v29, "Count is now: %ld", v30, 0xCu);

        v31 = v26;
      }

      else
      {
        v31 = v28;
        v28 = v26;
      }

      v38 = v43;

      v20(v27, v38);
    }
  }
}

uint64_t getEnumTagSinglePayload for DatabaseEntityError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseEntityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1F2FC()
{
  result = qword_8F5A0;
  if (!qword_8F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F5A0);
  }

  return result;
}

id InferenceRecordTaskServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_1F5F8(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v6;
}

NSXPCInterface __swiftcall InferenceRecordTaskServer.exportedInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence34InferenceRecordTaskServerInterface_];

  return v0;
}

id InferenceRecordTaskServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InferenceRecordTaskServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1F5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_754D8();
  v27 = _swiftEmptyArrayStorage;
  sub_17258();
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_172B0();
  sub_75858();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v13 = sub_75798();
  v14 = v21;
  v15 = v22;
  *&v22[OBJC_IVAR____TtC25FitnessIntelligencePlugin25InferenceRecordTaskServer_queue] = v13;
  isa = sub_74988().super.isa;
  v17 = type metadata accessor for InferenceRecordTaskServer();
  v26.receiver = v15;
  v26.super_class = v17;
  v18 = objc_msgSendSuper2(&v26, "initWithUUID:configuration:client:delegate:", isa, v23, v24, v25);

  v19 = sub_749B8();
  (*(*(v19 - 8) + 8))(v14, v19);
  return v18;
}

unint64_t sub_1F8B0()
{
  result = qword_8F5D8;
  if (!qword_8F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F5D8);
  }

  return result;
}

uint64_t sub_1F94C(uint64_t a1)
{
  result = sub_20100(&qword_8F638, type metadata accessor for RingsPropertyRecordEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1F9A8(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v5 = sub_38F8(&qword_8F290, &qword_7A130);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_38F8(&qword_8F298, &qword_7A138);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  sub_75158();
  v13 = sub_74D08();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_3D48(v12, &qword_8F298, &qword_7A138);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  else
  {
    *(&v35 + 1) = v13;
    v36 = sub_20100(&qword_8F670, &type metadata accessor for MonthOfYear);
    v15 = sub_5914(&v34);
    (*(v14 + 32))(v15, v12, v13);
  }

  sub_38F8(&qword_8F658, &unk_7AD30);
  inited = swift_initStackObject();
  v17 = inited;
  v33 = xmmword_79BF0;
  *(inited + 16) = xmmword_79BF0;
  if (*(&v35 + 1))
  {
    sub_5978(&v34, inited + 32);
  }

  else
  {
    v18 = v36;
    v19 = v35;
    *(inited + 32) = v34;
    *(inited + 48) = v19;
    *(inited + 64) = v18;
  }

  v20 = sub_6C4F0(a2, a3, v17);
  swift_setDeallocating();
  if (*(v17 + 56))
  {
    sub_3940((v17 + 32));
  }

  if (*(&v35 + 1))
  {
    sub_3940(&v34);
  }

  sub_75178();
  v21 = sub_753D8();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    sub_3D48(v8, &qword_8F290, &qword_7A130);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  else
  {
    *(&v35 + 1) = v21;
    v36 = sub_20100(&qword_8F668, &type metadata accessor for DayOfWeek);
    v23 = sub_5914(&v34);
    (*(v22 + 32))(v23, v8, v21);
  }

  v24 = swift_initStackObject();
  v25 = v24;
  *(v24 + 16) = v33;
  if (*(&v35 + 1))
  {
    sub_5978(&v34, v24 + 32);
  }

  else
  {
    v26 = v36;
    v27 = v35;
    *(v24 + 32) = v34;
    *(v24 + 48) = v27;
    *(v24 + 64) = v26;
  }

  v28 = sub_6C4F0(a2, v20, v25);
  swift_setDeallocating();
  if (*(v25 + 56))
  {
    sub_3940((v25 + 32));
  }

  if (*(&v35 + 1))
  {
    sub_3940(&v34);
  }

  v29 = sub_75168();
  sub_38F8(&qword_8F660, &qword_7A498);
  v30 = swift_initStackObject();
  *(v30 + 16) = v33;
  *(v30 + 32) = v29;
  v31 = sub_6C668(a2, v28, v30);
  swift_setDeallocating();
  return v31;
}

uint64_t sub_1FDE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_38F8(&qword_8F0A0, &qword_79EC8);
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
      sub_2009C();
      v18 = sub_74F78();
      if (v2)
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      v22 = type metadata accessor for RingsPropertyRecordEntity.EntityWrapper();
      v23 = objc_allocWithZone(v22);
      v24 = &v23[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
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
    v26 = type metadata accessor for RingsPropertyRecordJournalEntry();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_entities] = v13;
    *&v27[OBJC_IVAR____TtC25FitnessIntelligencePlugin31RingsPropertyRecordJournalEntry_provenance] = a2;
    v35.receiver = v27;
    v35.super_class = v26;
    *(v11 + 32) = objc_msgSendSuper2(&v35, "init");
  }

  return v11;
}

unint64_t sub_2009C()
{
  result = qword_8EF30;
  if (!qword_8EF30)
  {
    sub_76D0(&qword_8F0A0, &qword_79EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8EF30);
  }

  return result;
}

uint64_t sub_20100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20148()
{
  sub_38F8(&qword_8F678, &qword_7A4A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A450;
  v1 = sub_752A8();
  v2 = sub_4844(v1);

  v3 = sub_39E1C(3, v2);
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = sub_752C8();
  v7 = sub_485C(v6);

  v8 = sub_39E1C(4, v7);
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = sub_752B8();
  v12 = sub_48BC(v11);

  v13 = sub_39E1C(5, v12);
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  return v0;
}

void sub_20254(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for WorkoutPropertyRecordEntity();
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() contextForWritingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = [a2 database];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_30094;
  v11[3] = v10;
  aBlock[4] = sub_1008C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87B70;
  v12 = _Block_copy(aBlock);
  v13 = v6;

  aBlock[0] = 0;
  v14 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v9 context:v13 error:aBlock block:v12];
  _Block_release(v12);

  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v14 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_204A4(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for RingsPropertyRecordEntity();
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() contextForWritingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = [a2 database];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_3008C;
  v11[3] = v10;
  aBlock[4] = sub_1008C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87A58;
  v12 = _Block_copy(aBlock);
  v13 = v6;

  aBlock[0] = 0;
  v14 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v9 context:v13 error:aBlock block:v12];
  _Block_release(v12);

  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v14 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_206F4(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for FitnessPlusPropertyRecordEntity();
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [objc_opt_self() contextForWritingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = [a2 database];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_3007C;
  v11[3] = v10;
  aBlock[4] = sub_1008C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87940;
  v12 = _Block_copy(aBlock);
  v13 = v6;

  aBlock[0] = 0;
  v14 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v9 context:v13 error:aBlock block:v12];
  _Block_release(v12);

  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v14 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

uint64_t sub_20944(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = [a1 protectedDatabase];
  if (v14)
  {
    v15 = v14;
    v40 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_75908(28);

    strcpy(&aBlock, "DELETE FROM ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    type metadata accessor for FitnessPlusPropertyRecordEntity();
    v16 = [swift_getObjCClassFromMetadata() databaseTable];
    v17 = sub_755A8();
    v19 = v18;

    v46._countAndFlagsBits = v17;
    v46._object = v19;
    sub_75608(v46);

    v47._countAndFlagsBits = 0x20455245485720;
    v47._object = 0xE700000000000000;
    sub_75608(v47);
    v48._countAndFlagsBits = 0x6568636143646E65;
    v48._object = 0xED00007865646E49;
    sub_75608(v48);
    v49._countAndFlagsBits = 0x3F203D3E20;
    v49._object = 0xE500000000000000;
    sub_75608(v49);
    v20 = sub_75598();

    v21 = swift_allocObject();
    v39 = a3;
    *(v21 + 16) = a3;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_30084;
    *(v22 + 24) = v21;
    v44 = sub_303D0;
    v45 = v22;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v42 = sub_644E0;
    v43 = &unk_879B8;
    v23 = _Block_copy(&aBlock);

    v44 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v45 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v42 = sub_4F494;
    v43 = &unk_879E0;
    v24 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v25 = [v15 executeSQL:v20 error:&aBlock bindingHandler:v23 enumerationHandler:v24];
    _Block_release(v24);
    _Block_release(v23);

    if (v25)
    {
      v26 = aBlock;

      return 1;
    }

    v32 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v33 = sub_754A8();
    v34 = sub_75718();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 134218242;
      *(v35 + 4) = v39;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v37;
      *v36 = v37;
      _os_log_impl(&dword_0, v33, v34, "Failed to invalidate snapshots after %lld: %@", v35, 0x16u);
      sub_3D48(v36, &unk_8EB30, &unk_7A270);
    }

    (*(v7 + 8))(v11, v6);
    v38 = v40;
    if (v40)
    {
      *v38 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v28 = sub_754A8();
    v29 = sub_75718();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = a3;
      _os_log_impl(&dword_0, v28, v29, "Failed to invalidate snapshots after cacheIndex: %lld: no protected database", v30, 0xCu);
    }

    (*(v7 + 8))(v13, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v31 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_20F10(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = [a1 protectedDatabase];
  if (v14)
  {
    v15 = v14;
    v40 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_75908(28);

    strcpy(&aBlock, "DELETE FROM ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    type metadata accessor for RingsPropertyRecordEntity();
    v16 = [swift_getObjCClassFromMetadata() databaseTable];
    v17 = sub_755A8();
    v19 = v18;

    v46._countAndFlagsBits = v17;
    v46._object = v19;
    sub_75608(v46);

    v47._countAndFlagsBits = 0x20455245485720;
    v47._object = 0xE700000000000000;
    sub_75608(v47);
    v48._countAndFlagsBits = 0x6568636143646E65;
    v48._object = 0xED00007865646E49;
    sub_75608(v48);
    v49._countAndFlagsBits = 0x3F203D3E20;
    v49._object = 0xE500000000000000;
    sub_75608(v49);
    v20 = sub_75598();

    v21 = swift_allocObject();
    v39 = a3;
    *(v21 + 16) = a3;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_303D8;
    *(v22 + 24) = v21;
    v44 = sub_303D0;
    v45 = v22;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v42 = sub_644E0;
    v43 = &unk_87AD0;
    v23 = _Block_copy(&aBlock);

    v44 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v45 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v42 = sub_4F494;
    v43 = &unk_87AF8;
    v24 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v25 = [v15 executeSQL:v20 error:&aBlock bindingHandler:v23 enumerationHandler:v24];
    _Block_release(v24);
    _Block_release(v23);

    if (v25)
    {
      v26 = aBlock;

      return 1;
    }

    v32 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v33 = sub_754A8();
    v34 = sub_75718();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 134218242;
      *(v35 + 4) = v39;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v37;
      *v36 = v37;
      _os_log_impl(&dword_0, v33, v34, "Failed to invalidate snapshots after %lld: %@", v35, 0x16u);
      sub_3D48(v36, &unk_8EB30, &unk_7A270);
    }

    (*(v7 + 8))(v11, v6);
    v38 = v40;
    if (v40)
    {
      *v38 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v28 = sub_754A8();
    v29 = sub_75718();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = a3;
      _os_log_impl(&dword_0, v28, v29, "Failed to invalidate snapshots after cacheIndex: %lld: no protected database", v30, 0xCu);
    }

    (*(v7 + 8))(v13, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v31 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_214DC(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = [a1 protectedDatabase];
  if (v14)
  {
    v15 = v14;
    v40 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_75908(28);

    strcpy(&aBlock, "DELETE FROM ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    type metadata accessor for WorkoutPropertyRecordEntity();
    v16 = [swift_getObjCClassFromMetadata() databaseTable];
    v17 = sub_755A8();
    v19 = v18;

    v46._countAndFlagsBits = v17;
    v46._object = v19;
    sub_75608(v46);

    v47._countAndFlagsBits = 0x20455245485720;
    v47._object = 0xE700000000000000;
    sub_75608(v47);
    v48._countAndFlagsBits = 0x6568636143646E65;
    v48._object = 0xED00007865646E49;
    sub_75608(v48);
    v49._countAndFlagsBits = 0x3F203D3E20;
    v49._object = 0xE500000000000000;
    sub_75608(v49);
    v20 = sub_75598();

    v21 = swift_allocObject();
    v39 = a3;
    *(v21 + 16) = a3;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_303D8;
    *(v22 + 24) = v21;
    v44 = sub_303D0;
    v45 = v22;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v42 = sub_644E0;
    v43 = &unk_87BE8;
    v23 = _Block_copy(&aBlock);

    v44 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v45 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v42 = sub_4F494;
    v43 = &unk_87C10;
    v24 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v25 = [v15 executeSQL:v20 error:&aBlock bindingHandler:v23 enumerationHandler:v24];
    _Block_release(v24);
    _Block_release(v23);

    if (v25)
    {
      v26 = aBlock;

      return 1;
    }

    v32 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v33 = sub_754A8();
    v34 = sub_75718();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 134218242;
      *(v35 + 4) = v39;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v37;
      *v36 = v37;
      _os_log_impl(&dword_0, v33, v34, "Failed to invalidate snapshots after %lld: %@", v35, 0x16u);
      sub_3D48(v36, &unk_8EB30, &unk_7A270);
    }

    (*(v7 + 8))(v11, v6);
    v38 = v40;
    if (v40)
    {
      *v38 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v28 = sub_754A8();
    v29 = sub_75718();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = a3;
      _os_log_impl(&dword_0, v28, v29, "Failed to invalidate snapshots after cacheIndex: %lld: no protected database", v30, 0xCu);
    }

    (*(v7 + 8))(v13, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v31 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

void sub_21AA8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_74888();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t SnapshotContainerTaskServer.mostRecentCheckpoints(type:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v4 = sub_754B8();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_754C8();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_754F8();
  v47 = *(v49 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v49);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_38F8(&qword_8F680, &unk_7A4B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v43 - v16;
  v18 = sub_750F8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v22 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v43 - v23;

  sub_750D8();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v25 = v52;
    sub_3D48(v17, &qword_8F680, &unk_7A4B0);
    sub_75378();
    v26 = sub_754A8();
    v27 = sub_75718();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Unknown Properties Type", v28, 2u);
    }

    (*(v44 + 1))(v7, v45);
    sub_22144();
    v29 = swift_allocError();
    *v30 = 1;
    v25(_swiftEmptyArrayStorage, v29);
  }

  else
  {
    v32 = *(v19 + 32);
    v32(v24, v17, v18);
    v44 = v13;
    v33 = v46;
    v45 = *&v46[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
    (*(v19 + 16))(v22, v24, v18);
    v34 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    v32((v35 + v34), v22, v18);
    v36 = (v35 + ((v20 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    v37 = v53;
    *v36 = v52;
    v36[1] = v37;
    aBlock[4] = sub_2DCF4;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_17314;
    aBlock[3] = &unk_87068;
    v38 = _Block_copy(aBlock);
    v39 = v33;

    v40 = v44;
    sub_754D8();
    v54 = _swiftEmptyArrayStorage;
    sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_38F8(&qword_8F3B0, &qword_7A1D8);
    sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
    v41 = v48;
    v42 = v51;
    sub_75858();
    sub_75788();
    _Block_release(v38);
    (*(v50 + 8))(v41, v42);
    (*(v47 + 8))(v40, v49);
    (*(v19 + 8))(v24, v18);
  }
}

unint64_t sub_22144()
{
  result = qword_8F688;
  if (!qword_8F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F688);
  }

  return result;
}

void sub_22198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_754B8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = a2;
  v12 = a1;
  v13 = a3;
  v14 = a4;
  sub_233A4(0, sub_301BC, v10);
}

void sub_223C0(void *a1, uint64_t a2, void *a3, void (*a4)(void *, void), uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v9 = sub_751D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PropertyRecordCheckpointEntity();
  v14 = [a3 client];
  v15 = [v14 profile];

  v16 = sub_47A7C(a2, v15, a1);
  if (!v5)
  {
    v17 = v36;
    v41 = v10;
    v42 = 0;
    v34 = v13;
    v40 = v9;
    v18 = v16[2];
    if (v18)
    {
      v43 = _swiftEmptyArrayStorage;
      sub_67DDC(0, v18, 0);
      v19 = 0;
      v20 = v43;
      v21 = v41;
      v38 = v16 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v37 = v41 + 16;
      v39 = (v41 + 8);
      v22 = v34;
      while (v19 < v16[2])
      {
        v23 = v18;
        v24 = v40;
        (*(v21 + 16))(v22, &v38[*(v21 + 72) * v19], v40);
        sub_30174(&qword_8EB20, &type metadata accessor for PropertyRecordCheckpoint);
        v25 = v42;
        v26 = sub_74F78();
        v42 = v25;
        if (v25)
        {
          (*v39)(v22, v24);

          goto LABEL_12;
        }

        v28 = v26;
        v29 = v27;
        (*v39)(v22, v24);
        v43 = v20;
        v31 = v20[2];
        v30 = v20[3];
        if (v31 >= v30 >> 1)
        {
          sub_67DDC((v30 > 1), v31 + 1, 1);
          v22 = v34;
          v20 = v43;
        }

        ++v19;
        v20[2] = v31 + 1;
        v32 = &v20[2 * v31];
        v32[4] = v28;
        v32[5] = v29;
        v18 = v23;
        v21 = v41;
        if (v23 == v19)
        {

          v36(v20, 0);
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {

      v17(_swiftEmptyArrayStorage, 0);
LABEL_12:
    }
  }
}

void sub_226EC(char a1, char *a2, void *a3, void (*a4)(uint64_t, void))
{
  v34 = a4;
  v35 = a3;
  v7 = sub_75508();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  v14 = sub_75518();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v15 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
  [v15 setRequiresWrite:a1 & 1];
  v16 = [v15 setRequiresProtectedData:1];
  v17 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_lock];
  __chkstk_darwin(v16);
  *&v32[-16] = a2;

  sub_74CC8();

  v18 = v36;
  p_base_meths = &PropertyRecordCheckpointEntity.base_meths;
  if (v36 == 1)
  {
    v33 = 1;
    v20 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
    v21 = [a2 client];
    v22 = *(v20 + 40);
    v23 = __chkstk_darwin(v21);
    *&v32[-16] = v20;
    *&v32[-8] = v23;
    sub_2DE20();

    sub_74CC8();
    if (v4)
    {

      return;
    }

    v25 = v36;
    [v15 addAccessibilityAssertion:v36];
    v26 = v35;
    v18 = v33;
    p_base_meths = (&PropertyRecordCheckpointEntity + 32);
    goto LABEL_8;
  }

  v24 = *(*&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion] + 40);

  sub_38F8(&qword_8F598, &unk_7A350);
  sub_74CC8();

  v25 = v36;
  if (v36)
  {
    [v15 addAccessibilityAssertion:v36];
    v26 = v35;
LABEL_8:

    goto LABEL_10;
  }

  v26 = v35;
LABEL_10:
  type metadata accessor for PropertyRecordCheckpointEntity();
  v27 = [v26 p_base_meths[177]];
  v28 = [v27 profile];

  v29 = sub_48188(v28, v15);
  if (v4)
  {
  }

  else
  {
    v30 = v29;

    v34(v30, 0);

    if (v18)
    {
      v31 = *(*&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion] + 40);

      sub_74CC8();
    }

    else
    {
    }
  }
}

void sub_22B98(char a1, char *a2, uint64_t a3, void *a4)
{
  v9 = sub_75508();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = sub_75518();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v16 setRequiresWrite:a1 & 1];
    v17 = [v16 setRequiresProtectedData:1];
    v18 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_lock];
    __chkstk_darwin(v17);
    *(&v27 - 2) = a2;

    sub_74CC8();

    if (v29 == 1)
    {
      v28 = a3;
      v19 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
      v20 = [a2 client];
      v21 = *(v19 + 40);
      v22 = __chkstk_darwin(v20);
      *(&v27 - 2) = v19;
      *(&v27 - 1) = v22;
      sub_2DE20();

      sub_74CC8();
      if (v4)
      {

        return;
      }

      v25 = v29;
      [v16 addAccessibilityAssertion:v29];

      sub_29F4C(v16, v28, a4);
      v26 = *(*&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion] + 40);

      sub_74CC8();
    }

    else
    {
      v23 = *(*&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion] + 40);

      sub_38F8(&qword_8F598, &unk_7A350);
      sub_74CC8();

      v24 = v29;
      if (v29)
      {
        [v16 addAccessibilityAssertion:v29];
      }

      sub_29F4C(v16, a3, a4);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22FA8(char a1, char *a2, void *a3)
{
  v7 = sub_75508();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = sub_75518();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v14 setRequiresWrite:a1 & 1];
    v15 = [v14 setRequiresProtectedData:1];
    v16 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_lock];
    __chkstk_darwin(v15);
    *(&v25 - 2) = a2;

    sub_74CC8();

    if (v26 == 1)
    {
      v17 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
      v18 = [a2 client];
      v19 = *(v17 + 40);
      v20 = __chkstk_darwin(v18);
      *(&v25 - 2) = v17;
      *(&v25 - 1) = v20;
      sub_2DE20();

      sub_74CC8();
      if (v3)
      {

        return;
      }

      v23 = v26;
      [v14 addAccessibilityAssertion:v26];

      sub_2A280(v14, a3);
      v24 = *(*&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion] + 40);

      sub_74CC8();
    }

    else
    {
      v21 = *(*&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion] + 40);

      sub_38F8(&qword_8F598, &unk_7A350);
      sub_74CC8();

      v22 = v26;
      if (v26)
      {
        [v14 addAccessibilityAssertion:v26];
      }

      sub_2A280(v14, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_233A4(char a1, void (*a2)(id), uint64_t a3)
{
  v5 = v3;
  v9 = sub_75508();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = sub_75518();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v16 setRequiresWrite:a1 & 1];
    v17 = [v16 setRequiresProtectedData:1];
    v18 = *&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_lock];
    __chkstk_darwin(v17);
    *(&v27 - 2) = v5;

    sub_74CC8();

    if (v29 == 1)
    {
      v27 = a3;
      v28 = a2;
      v19 = *&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
      v20 = [v5 client];
      v21 = *(v19 + 40);
      v22 = __chkstk_darwin(v20);
      *(&v27 - 2) = v19;
      *(&v27 - 1) = v22;
      sub_2DE20();

      sub_74CC8();

      if (!v4)
      {
        v25 = v29;
        [v16 addAccessibilityAssertion:v29];

        v28(v16);
        v26 = *(*&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion] + 40);

        sub_74CC8();
      }
    }

    else
    {
      v23 = *(*&v5[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion] + 40);

      sub_38F8(&qword_8F598, &unk_7A350);
      sub_74CC8();

      v24 = v29;
      if (v29)
      {
        [v16 addAccessibilityAssertion:v29];
      }

      a2(v16);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SnapshotContainerTaskServer.listIntermediateCheckpoints(step:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
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
  v22[1] = *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_2DD6C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_870B8;
  v19 = _Block_copy(aBlock);
  v20 = v4;
  sub_398C(a1, a2);

  sub_754D8();
  v24 = _swiftEmptyArrayStorage;
  sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
  sub_75858();
  sub_75788();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_23B28(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void *, void), uint64_t a5)
{
  v10 = sub_754B8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_398C(a2, a3);
  v12 = a1;

  sub_2E590(0, v12, a2, a3, v12, a4, a5);
}

void sub_23D9C(void (**a1)(char *, uint64_t), uint64_t a2, unint64_t a3, char *a4, void (*a5)(void *, void), uint64_t a6)
{
  v45 = a4;
  v46 = a1;
  v11 = sub_751D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v40 - v17;
  sub_398C(a2, a3);
  v19 = sub_30174(&qword_8EB20, &type metadata accessor for PropertyRecordCheckpoint);
  sub_74F88();
  if (!v6)
  {
    v40[1] = a6;
    v41 = a5;
    v47 = v19;
    v48 = v16;
    type metadata accessor for PropertyRecordCheckpointEntity();
    v20 = [v45 client];
    v21 = [v20 profile];

    v22 = v18;
    v23 = sub_47DDC(v18, v21, v46);

    v24 = *(v23 + 16);
    if (v24)
    {
      v49 = _swiftEmptyArrayStorage;
      v42 = v24;
      sub_67DDC(0, v24, 0);
      v25 = 0;
      v26 = v49;
      v27 = v12;
      v45 = (v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
      v43 = v12;
      v44 = v12 + 16;
      v46 = (v12 + 8);
      v28 = 0;
      while (v25 < *(v23 + 16))
      {
        v29 = v26;
        v30 = v48;
        (*(v27 + 16))(v48, &v45[*(v27 + 72) * v25], v11);
        v31 = sub_74F98();
        if (v28)
        {

          v38 = *v46;
          (*v46)(v30, v11);
          v38(v22, v11);

          return;
        }

        v33 = v31;
        v34 = v32;
        (*v46)(v30, v11);
        v26 = v29;
        v49 = v29;
        v35 = v29[2];
        v36 = v26[3];
        if (v35 >= v36 >> 1)
        {
          v40[0] = 0;
          sub_67DDC((v36 > 1), v35 + 1, 1);
          v28 = v40[0];
          v26 = v49;
        }

        ++v25;
        v26[2] = v35 + 1;
        v37 = &v26[2 * v35];
        v37[4] = v33;
        v37[5] = v34;
        v27 = v43;
        if (v42 == v25)
        {
          v39 = v26;

          v41(v39, 0);
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {

      v27 = v12;
      v41(_swiftEmptyArrayStorage, 0);
LABEL_12:

      (*(v27 + 8))(v22, v11);
    }
  }
}

void sub_24294(void *a1, void (*a2)(uint64_t, void))
{
  v3 = a1;

  sub_226EC(0, v3, v3, a2);
}

void sub_24378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = sub_75678().super.isa;
  if (a2)
  {
    v6 = sub_74888();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t SnapshotContainerTaskServer.save(recordsData:type:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t a6)
{
  v39 = a2;
  v41 = a6;
  v42 = a5;
  v37 = a1;
  v40 = sub_754B8();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v40);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_38F8(&qword_8F680, &unk_7A4B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v37 - v12;
  v14 = sub_750F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;

  sub_750D8();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v21 = v42;
    sub_3D48(v13, &qword_8F680, &unk_7A4B0);
    sub_75378();
    v22 = sub_754A8();
    v23 = sub_75718();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Unknown Properties Type", v24, 2u);
    }

    (*(v6 + 8))(v9, v40);
    sub_22144();
    v25 = swift_allocError();
    *v26 = 1;
    v21(0, v25);
  }

  else
  {
    v28 = *(v15 + 32);
    v28(v20, v13, v14);
    v42(1, 0);
    (*(v15 + 16))(v18, v20, v14);
    v29 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v30 = (v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v32 = v38;
    *(v31 + 16) = v38;
    v28((v31 + v29), v18, v14);
    v33 = (v31 + v30);
    v34 = v37;
    v35 = v39;
    *v33 = v37;
    v33[1] = v35;
    v36 = v32;
    sub_398C(v34, v35);
    sub_264E0(sub_2DD8C, v31, &OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitQueue, &unk_87C48, sub_300C8, &unk_87C60);

    return (*(v15 + 8))(v20, v14);
  }
}

void sub_24818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_754B8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_233A4(1, sub_30154, v10);
}

void sub_24A20(NSObject *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v237 = a5;
  v238 = a1;
  v223 = sub_751D8();
  v222 = *(v223 - 8);
  v8 = *(v222 + 64);
  __chkstk_darwin(v223);
  v221 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_38F8(&qword_8F700, &qword_7A5C0);
  v209 = *(v225 - 1);
  v10 = *(v209 + 64);
  v11 = __chkstk_darwin(v225);
  v203 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v202 = &v198 - v14;
  __chkstk_darwin(v13);
  v226 = (&v198 - v15);
  v240 = sub_38F8(&qword_8F708, &qword_7A5C8);
  v229 = *(v240 - 1);
  v16 = *(v229 + 64);
  v17 = __chkstk_darwin(v240);
  v213 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v212 = &v198 - v20;
  __chkstk_darwin(v19);
  v241 = (&v198 - v21);
  v22 = sub_754B8();
  v232 = *(v22 - 8);
  v233 = v22;
  v23 = *(v232 + 64);
  v24 = __chkstk_darwin(v22);
  v211 = &v198 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v198 - v27;
  v29 = __chkstk_darwin(v26);
  v204 = &v198 - v30;
  v31 = __chkstk_darwin(v29);
  v215 = &v198 - v32;
  __chkstk_darwin(v31);
  v210 = &v198 - v33;
  v228 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v34 = *(*(v228 - 8) + 64);
  __chkstk_darwin(v228);
  v216 = &v198 - v35;
  v234 = sub_38F8(&qword_8F710, &qword_7A5D8);
  v214 = *(v234 - 1);
  v36 = *(v214 + 64);
  v37 = __chkstk_darwin(v234);
  v205 = &v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v41 = &v198 - v40;
  __chkstk_darwin(v39);
  v43 = (&v198 - v42);
  v44 = sub_750F8();
  v45 = *(v44 - 8);
  v46 = v45[8];
  v47 = __chkstk_darwin(v44);
  v207 = &v198 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v219 = &v198 - v50;
  __chkstk_darwin(v49);
  v52 = &v198 - v51;
  v239 = sub_74CA8();
  v230 = *(v239 - 8);
  v53 = v230[8];
  v54 = __chkstk_darwin(v239);
  v208 = &v198 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v206 = &v198 - v57;
  v58 = __chkstk_darwin(v56);
  v218 = &v198 - v59;
  v60 = __chkstk_darwin(v58);
  v217 = &v198 - v61;
  v62 = __chkstk_darwin(v60);
  v235 = &v198 - v63;
  __chkstk_darwin(v62);
  v236 = &v198 - v64;
  v65 = v45[2];
  v224 = a2;
  v66 = a2;
  v67 = v65;
  v220 = v45 + 2;
  v65(v52, v66, v44);
  v227 = v45;
  v68 = v45[11];
  v231 = v44;
  v69 = v68(v52, v44);
  if (v69 == enum case for SnapshotPropertiesType.rings(_:))
  {
    sub_398C(a3, a4);
    sub_7718(&qword_8F728, &qword_8F708, &qword_7A5C8);
    v71 = v240;
    v70 = v241;
    v72 = v242;
    sub_74F88();
    if (v72)
    {
      return;
    }

    v73 = sub_74FB8();
    v74 = [v237 client];
    v75 = [v74 profile];

    sub_5CD24(v73, 0, v75, v238);
    v242 = 0;
    v201 = v67;

    v88 = v216;
    sub_74FA8();
    v89 = v230[2];
    v199 = (v230 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v90 = v239;
    v89(v236, v88, v239);
    sub_3D48(v88, &qword_8F000, &qword_7A5D0);
    sub_74FA8();
    v91 = v88 + *(v228 + 36);
    v200 = v89;
    v89(v235, v91, v90);
    sub_3D48(v88, &qword_8F000, &qword_7A5D0);
    v92 = v215;
    sub_75378();
    v93 = v229;
    v94 = *(v229 + 16);
    v95 = v212;
    v94(v212, v70, v71);
    v96 = v213;
    v94(v213, v70, v71);
    v97 = sub_754A8();
    v98 = sub_75738();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = v93;
      v100 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v245 = v234;
      *v100 = 134218242;
      LODWORD(v226) = v98;
      v101 = *(sub_74FB8() + 16);

      v225 = *(v99 + 8);
      v225(v95, v71);
      *(v100 + 4) = v101;
      *(v100 + 12) = 2080;
      sub_74FA8();
      v243 = 0;
      v244 = 0xE000000000000000;
      sub_759A8();
      v246._countAndFlagsBits = 3026478;
      v246._object = 0xE300000000000000;
      sub_75608(v246);
      v102 = v88 + *(v228 + 36);
      v103 = v200;
      sub_759A8();
      v104 = v243;
      v105 = v244;
      sub_3D48(v88, &qword_8F000, &qword_7A5D0);
      v106 = v96;
      v107 = v225;
      v225(v106, v71);
      v108 = sub_31B4(v104, v105, &v245);
      v109 = v199;
      v110 = v239;

      *(v100 + 14) = v108;
      _os_log_impl(&dword_0, v97, v226, "Saved %ld records for %s rings properties", v100, 0x16u);
      sub_3940(v234);

      v229 = *(v232 + 8);
      (v229)(v215, v233);
      v107(v241, v71);
      v111 = v110;
LABEL_15:
      v112 = v221;
      v113 = v231;
      goto LABEL_25;
    }

    v136 = *(v93 + 8);
    v136(v95, v71);

    v136(v96, v71);
    v229 = *(v232 + 8);
    (v229)(v92, v233);
    v137 = v241;
    v138 = v71;
LABEL_19:
    v136(v137, v138);
    v112 = v221;
    v113 = v231;
    v111 = v239;
LABEL_24:
    v103 = v200;
    v109 = v199;
LABEL_25:
    v199 = v109;
    v200 = v103;
    type metadata accessor for PropertyRecordCheckpointEntity();
    v103(v217, v236, v111);
    v103(v218, v235, v111);
    v161 = v224;
    v162 = v201;
    v201(v219, v224, v113);
    sub_751A8();
    v163 = v113;
    v164 = [v237 client];
    v165 = [v164 profile];

    v166 = v242;
    sub_48464(v112, 0, v165, v238);
    v242 = v166;
    if (v166)
    {

      (*(v222 + 8))(v112, v223);
      v167 = v230[1];
      v168 = v239;
      v167(v235, v239);
      v167(v236, v168);
    }

    else
    {
      (*(v222 + 8))(v112, v223);

      v169 = v211;
      sub_75378();
      v170 = v207;
      v171 = v163;
      v162(v207, v161, v163);
      v172 = v206;
      v173 = v239;
      v174 = v200;
      v200(v206, v236, v239);
      v175 = v208;
      v176 = v235;
      v174();
      v177 = sub_754A8();
      v178 = sub_75738();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        LODWORD(v240) = v178;
        v180 = v179;
        v241 = swift_slowAlloc();
        v243 = v241;
        *v180 = 136315650;
        v181 = sub_750E8();
        v183 = v182;
        (v227[1])(v170, v171);
        v184 = sub_31B4(v181, v183, &v243);

        *(v180 + 4) = v184;
        *(v180 + 12) = 2080;
        sub_30174(&qword_8F720, &type metadata accessor for CacheIndex);
        v185 = sub_75A38();
        v186 = v175;
        v238 = v177;
        v187 = v173;
        v189 = v188;
        v190 = v230[1];
        v190(v172, v187);
        v191 = sub_31B4(v185, v189, &v243);

        *(v180 + 14) = v191;
        *(v180 + 22) = 2080;
        v192 = sub_75A38();
        v194 = v193;
        v190(v186, v187);
        v195 = sub_31B4(v192, v194, &v243);

        *(v180 + 24) = v195;
        v196 = v238;
        _os_log_impl(&dword_0, v238, v240, "Registered [%s] %s -> %s entry", v180, 0x20u);
        swift_arrayDestroy();

        (v229)(v211, v233);
        v190(v235, v187);
        v190(v236, v187);
      }

      else
      {

        v197 = v230[1];
        v197(v175, v173);
        v197(v172, v173);
        (v227[1])(v170, v171);
        (v229)(v169, v233);
        v197(v176, v173);
        v197(v236, v173);
      }
    }

    return;
  }

  v201 = v67;
  v76 = v242;
  if (v69 == enum case for SnapshotPropertiesType.workout(_:))
  {
    sub_398C(a3, a4);
    sub_7718(&unk_8F730, &qword_8F710, &qword_7A5D8);
    sub_74F88();
    if (v76)
    {
      return;
    }

    v77 = sub_74FB8();
    v78 = [v237 client];
    v79 = [v78 profile];

    sub_5D9B4(v77, 0, v79, v238);
    v242 = 0;

    v114 = v216;
    sub_74FA8();
    v115 = v43;
    v116 = v230[2];
    v199 = (v230 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v117 = v239;
    v116(v236, v114, v239);
    sub_3D48(v114, &qword_8F000, &qword_7A5D0);
    sub_74FA8();
    v118 = v114 + *(v228 + 36);
    v200 = v116;
    v116(v235, v118, v117);
    v119 = v234;
    sub_3D48(v114, &qword_8F000, &qword_7A5D0);
    v120 = v210;
    sub_75378();
    v121 = v214;
    v122 = *(v214 + 16);
    v122(v41, v115, v119);
    v123 = v205;
    v241 = v115;
    v122(v205, v115, v119);
    v124 = sub_754A8();
    v125 = sub_75738();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v245 = v240;
      *v126 = 134218242;
      LODWORD(v229) = v125;
      v127 = *(sub_74FB8() + 16);

      v226 = *(v121 + 8);
      v226(v41, v119);
      *(v126 + 4) = v127;
      *(v126 + 12) = 2080;
      sub_74FA8();
      v243 = 0;
      v244 = 0xE000000000000000;
      v128 = v119;
      v129 = v239;
      sub_759A8();
      v247._countAndFlagsBits = 3026478;
      v247._object = 0xE300000000000000;
      sub_75608(v247);
      v130 = *(v228 + 36);
      sub_759A8();
      v131 = v243;
      v132 = v244;
      sub_3D48(v114, &qword_8F000, &qword_7A5D0);
      v133 = v123;
      v134 = v226;
      v226(v133, v128);
      v135 = sub_31B4(v131, v132, &v245);

      *(v126 + 14) = v135;
      _os_log_impl(&dword_0, v124, v229, "Saved %ld records for %s workout properties", v126, 0x16u);
      sub_3940(v240);

      v229 = *(v232 + 8);
      (v229)(v210, v233);
      v134(v241, v128);
      v111 = v129;
    }

    else
    {
      v160 = *(v121 + 8);
      v160(v41, v119);

      v160(v123, v119);
      v229 = *(v232 + 8);
      (v229)(v120, v233);
      v160(v241, v119);
      v111 = v239;
    }

    v112 = v221;
    v113 = v231;
    goto LABEL_24;
  }

  if (v69 == enum case for SnapshotPropertiesType.fitnessPlus(_:))
  {
    sub_398C(a3, a4);
    sub_7718(&qword_8F718, &qword_8F700, &qword_7A5C0);
    v80 = v225;
    v81 = v226;
    sub_74F88();
    if (v76)
    {
      return;
    }

    v82 = sub_74FB8();
    v83 = [v237 client];
    v84 = [v83 profile];

    sub_5D36C(v82, 0, v84, v238);
    v242 = 0;

    v139 = v216;
    sub_74FA8();
    v140 = v80;
    v141 = v230[2];
    v199 = (v230 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v142 = v239;
    v141(v236, v139, v239);
    sub_3D48(v139, &qword_8F000, &qword_7A5D0);
    sub_74FA8();
    v143 = v139 + *(v228 + 36);
    v200 = v141;
    v141(v235, v143, v142);
    sub_3D48(v139, &qword_8F000, &qword_7A5D0);
    v144 = v204;
    sub_75378();
    v145 = v209;
    v146 = *(v209 + 16);
    v147 = v202;
    v146(v202, v81, v140);
    v148 = v203;
    v146(v203, v81, v140);
    v149 = sub_754A8();
    v150 = sub_75738();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = v145;
      v152 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v245 = v241;
      *v152 = 134218242;
      LODWORD(v240) = v150;
      v153 = *(sub_74FB8() + 16);

      v234 = *(v151 + 8);
      (v234)(v147, v140);
      *(v152 + 4) = v153;
      *(v152 + 12) = 2080;
      sub_74FA8();
      v243 = 0;
      v244 = 0xE000000000000000;
      sub_759A8();
      v248._countAndFlagsBits = 3026478;
      v248._object = 0xE300000000000000;
      sub_75608(v248);
      v154 = v139 + *(v228 + 36);
      v109 = v199;
      sub_759A8();
      v155 = v243;
      v156 = v244;
      sub_3D48(v139, &qword_8F000, &qword_7A5D0);
      v157 = v148;
      v158 = v234;
      (v234)(v157, v140);
      v159 = sub_31B4(v155, v156, &v245);
      v103 = v200;

      *(v152 + 14) = v159;
      _os_log_impl(&dword_0, v149, v240, "Saved %ld records for %s F+ properties", v152, 0x16u);
      sub_3940(v241);

      v229 = *(v232 + 8);
      (v229)(v204, v233);
      (v158)(v226, v140);
      v111 = v239;
      goto LABEL_15;
    }

    v136 = *(v145 + 8);
    v136(v147, v140);

    v136(v148, v140);
    v229 = *(v232 + 8);
    (v229)(v144, v233);
    v137 = v226;
    v138 = v140;
    goto LABEL_19;
  }

  sub_75378();
  v85 = sub_754A8();
  v86 = sub_75718();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_0, v85, v86, "Unknown type to save for, skipping.", v87, 2u);
  }

  (*(v232 + 8))(v28, v233);
  (v227[1])(v52, v231);
}

uint64_t sub_264E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v11 = sub_754C8();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_754F8();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v26);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v6[*a3];
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = a5;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);
  v21 = v6;

  sub_754D8();
  v28 = _swiftEmptyArrayStorage;
  sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
  sub_75858();
  sub_75788();
  _Block_release(v20);
  (*(v27 + 8))(v14, v11);
  (*(v15 + 8))(v18, v26);
}

uint64_t SnapshotContainerTaskServer.execute(queryPlanData:type:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, unint64_t, uint64_t), uint64_t a6)
{
  v94 = a5;
  v95 = a6;
  v90 = a3;
  v91 = a4;
  v79 = a2;
  v78 = a1;
  v77 = sub_754B8();
  v76 = *(v77 - 8);
  v6 = *(v76 + 64);
  __chkstk_darwin(v77);
  v75 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_754C8();
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  __chkstk_darwin(v8);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_754F8();
  v82 = *(v84 - 8);
  v11 = *(v82 + 64);
  __chkstk_darwin(v84);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_38F8(&qword_8F680, &unk_7A4B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v89 = &v73 - v15;
  v16 = sub_750F8();
  v96 = *(v16 - 8);
  v17 = *(v96 + 64);
  v18 = __chkstk_darwin(v16);
  v74 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v19;
  __chkstk_darwin(v18);
  v92 = &v73 - v20;
  v88 = sub_75428();
  v21 = *(v88 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v88);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v73 - v26;
  v28 = sub_75448();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v73 - v34;
  sub_75368();
  sub_75368();
  sub_75438();
  sub_75408();
  v87 = *(v29 + 8);
  v87(v33, v28);
  v36 = sub_75438();
  v37 = sub_757B8();
  v38 = sub_75828();
  v93 = v16;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_75418();
    _os_signpost_emit_with_name_impl(&dword_0, v36, v37, v40, "executeQuery", "", v39, 2u);
    v16 = v93;
  }

  v41 = v88;
  (*(v21 + 16))(v25, v27, v88);
  v42 = sub_75488();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_75478();
  (*(v21 + 8))(v27, v41);
  v87(v35, v28);

  v46 = v89;
  sub_750D8();
  v47 = v96;
  if ((*(v96 + 48))(v46, 1, v16) == 1)
  {
    sub_3D48(v46, &qword_8F680, &unk_7A4B0);
    v48 = v75;
    sub_75378();
    v49 = sub_754A8();
    v50 = sub_75718();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "Unknown Properties Type", v51, 2u);
    }

    (*(v76 + 8))(v48, v77);
    sub_22144();
    v52 = swift_allocError();
    *v53 = 1;
    v94(0, 0xF000000000000000, v52);
  }

  else
  {
    v54 = *(v47 + 32);
    v90 = v45;
    v55 = v92;
    v54(v92, v46, v16);
    v56 = v80;
    v91 = *&v80[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
    v57 = v74;
    (*(v47 + 16))(v74, v55, v16);
    v58 = (*(v47 + 80) + 24) & ~*(v47 + 80);
    v59 = (v73 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 16) = v56;
    v54((v61 + v58), v57, v16);
    v62 = (v61 + v59);
    v63 = v78;
    v64 = v79;
    *v62 = v78;
    v62[1] = v64;
    v65 = (v61 + v60);
    v66 = v95;
    *v65 = v94;
    v65[1] = v66;
    *(v61 + ((v60 + 23) & 0xFFFFFFFFFFFFFFF8)) = v90;
    aBlock[4] = sub_2DDA8;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_17314;
    aBlock[3] = &unk_87180;
    v67 = _Block_copy(aBlock);
    v68 = v56;
    sub_398C(v63, v64);

    v69 = v81;
    sub_754D8();
    v97 = _swiftEmptyArrayStorage;
    sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_38F8(&qword_8F3B0, &qword_7A1D8);
    sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
    v70 = v83;
    v71 = v86;
    sub_75858();
    sub_75788();
    _Block_release(v67);

    (*(v85 + 8))(v70, v71);
    (*(v82 + 8))(v69, v84);
    (*(v96 + 8))(v92, v93);
  }
}

void sub_27140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_754B8();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a1;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  sub_233A4(0, sub_3009C, v16);
}

uint64_t sub_2737C(void *a1, void (*a2)(char *, uint64_t), void (*a3)(char *, uint64_t), uint64_t *a4, void *a5, void (*a6)(uint64_t, unint64_t, void), uint64_t a7, uint64_t a8)
{
  v309 = a8;
  v296 = a7;
  v297 = a6;
  v306 = a5;
  v307 = a1;
  v313 = a3;
  v314 = a4;
  v316 = a2;
  v284 = sub_75458();
  v303 = *(v284 - 8);
  v8 = *(v303 + 64);
  __chkstk_darwin(v284);
  v283 = &v252 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75428();
  v300 = *(v10 - 8);
  v301 = v10;
  v11 = *(v300 + 64);
  __chkstk_darwin(v10);
  v308 = &v252 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75448();
  v298 = *(v13 - 8);
  v299 = v13;
  v14 = *(v298 + 64);
  __chkstk_darwin(v13);
  v310 = &v252 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_74C38();
  v269 = *(v270 - 8);
  v16 = *(v269 + 64);
  __chkstk_darwin(v270);
  v268 = &v252 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_38F8(&qword_8F6A0, &qword_7A590);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v256 = &v252 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v252 = &v252 - v23;
  v24 = __chkstk_darwin(v22);
  v255 = &v252 - v25;
  __chkstk_darwin(v24);
  v261 = &v252 - v26;
  v267 = sub_74B18();
  v266 = *(v267 - 8);
  v27 = *(v266 + 64);
  v28 = __chkstk_darwin(v267);
  v265 = &v252 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v264 = &v252 - v31;
  v32 = __chkstk_darwin(v30);
  v263 = &v252 - v33;
  __chkstk_darwin(v32);
  v257 = &v252 - v34;
  v294 = sub_38F8(&qword_8F6A8, &qword_7A598);
  v282 = *(v294 - 8);
  v35 = *(v282 + 64);
  v36 = __chkstk_darwin(v294);
  v262 = &v252 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v295 = &v252 - v38;
  v280 = sub_75358();
  v279 = *(v280 - 8);
  v39 = *(v279 + 64);
  __chkstk_darwin(v280);
  v302 = &v252 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_75138();
  v277 = *(v278 - 8);
  v41 = *(v277 + 64);
  v42 = __chkstk_darwin(v278);
  v276 = &v252 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v275 = &v252 - v45;
  __chkstk_darwin(v44);
  v274 = &v252 - v46;
  v47 = sub_38F8(&qword_8F6B0, &qword_7A5A0);
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v260 = &v252 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v254 = &v252 - v52;
  v53 = __chkstk_darwin(v51);
  v271 = &v252 - v54;
  __chkstk_darwin(v53);
  v273 = &v252 - v55;
  v304 = sub_38F8(&qword_8F6B8, &qword_7A5A8);
  v281 = *(v304 - 8);
  v56 = *(v281 + 64);
  __chkstk_darwin(v304);
  v305 = &v252 - v57;
  v292 = sub_752D8();
  v291 = *(v292 - 8);
  v58 = *(v291 + 64);
  __chkstk_darwin(v292);
  v60 = &v252 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_74F68();
  v289 = *(v290 - 8);
  v61 = *(v289 + 64);
  v62 = __chkstk_darwin(v290);
  v288 = &v252 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v66 = &v252 - v65;
  __chkstk_darwin(v64);
  v68 = &v252 - v67;
  v69 = sub_38F8(&qword_8F6C0, &qword_7A5B0);
  v70 = *(*(v69 - 8) + 64);
  v71 = __chkstk_darwin(v69 - 8);
  v272 = &v252 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v259 = &v252 - v74;
  v75 = __chkstk_darwin(v73);
  v285 = &v252 - v76;
  __chkstk_darwin(v75);
  v287 = &v252 - v77;
  v311 = sub_38F8(&qword_8F6C8, &qword_7A5B8);
  v293 = *(v311 - 8);
  v78 = *(v293 + 64);
  __chkstk_darwin(v311);
  v312 = &v252 - v79;
  v315 = sub_754B8();
  v317 = *(v315 - 8);
  v80 = *(v317 + 64);
  v81 = __chkstk_darwin(v315);
  v253 = &v252 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __chkstk_darwin(v81);
  v85 = &v252 - v84;
  v86 = __chkstk_darwin(v83);
  v258 = &v252 - v87;
  v88 = __chkstk_darwin(v86);
  v90 = &v252 - v89;
  v91 = __chkstk_darwin(v88);
  v286 = &v252 - v92;
  __chkstk_darwin(v91);
  v94 = &v252 - v93;
  v95 = sub_750F8();
  v96 = *(v95 - 8);
  v97 = *(v96 + 64);
  __chkstk_darwin(v95);
  v99 = &v252 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v96 + 16))(v99, v316, v95);
  v100 = (*(v96 + 88))(v99, v95);
  if (v100 == enum case for SnapshotPropertiesType.rings(_:))
  {
    sub_75378();
    v101 = sub_754A8();
    v102 = sub_75738();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_0, v101, v102, "Executing Rings Properties Query", v103, 2u);
    }

    v104 = v317 + 8;
    v105 = *(v317 + 8);
    (v105)(v94, v315);
    sub_398C(v313, v314);
    sub_7718(&qword_8F6F0, &qword_8F6C8, &qword_7A5B8);
    v106 = v311;
    v107 = v318;
    result = sub_74F88();
    if (!v107)
    {
      v314 = v105;
      v317 = v104;
      v318 = 0;
      v316 = sub_74DF8();
      sub_74DE8();
      sub_74F48();
      v109 = *(v289 + 8);
      v110 = v290;
      v109(v68, v290);
      sub_74DE8();
      v111 = sub_74F38();
      v109(v66, v110);
      v112 = v288;
      sub_74DE8();
      v113 = sub_74F58();
      v109(v112, v110);
      v114 = v316;
      v115 = [v306 client];
      v116 = [v115 profile];

      v117 = v318;
      v118 = sub_32FE4(v114, v60, v111, v113, 1, v116, v307);
      v318 = v117;
      if (v117)
      {

        (*(v291 + 8))(v60, v292);
        return (*(v293 + 8))(v312, v106);
      }

      v163 = v118;
      (*(v291 + 8))(v60, v292);

      if (*(v163 + 2))
      {
        v164 = sub_74D98();
        v165 = *(v164 - 8);
        v166 = v287;
        (*(v165 + 16))(v287, &v163[(*(v165 + 80) + 32) & ~*(v165 + 80)], v164);

        (*(v165 + 56))(v166, 0, 1, v164);
      }

      else
      {

        v172 = sub_74D98();
        v166 = v287;
        (*(*(v172 - 8) + 56))(v287, 1, 1, v172);
      }

      v142 = v308;
      v162 = v303;
      v173 = v272;
      sub_75378();
      v174 = v285;
      sub_FCE0(v166, v285, &qword_8F6C0, &qword_7A5B0);
      v175 = sub_754A8();
      v176 = sub_75738();
      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        *v177 = 134217984;
        v178 = v259;
        sub_FCE0(v174, v259, &qword_8F6C0, &qword_7A5B0);
        v179 = sub_74D98();
        v180 = *(v179 - 8);
        if ((*(v180 + 48))(v178, 1, v179) == 1)
        {
          sub_3D48(v178, &qword_8F6C0, &qword_7A5B0);
          v181 = 0;
        }

        else
        {
          v195 = sub_74D88();
          (*(v180 + 8))(v178, v179);
          v181 = *(v195 + 16);
          v162 = v303;
        }

        sub_3D48(v285, &qword_8F6C0, &qword_7A5B0);
        *(v177 + 4) = v181;
        _os_log_impl(&dword_0, v175, v176, "Found %ld records", v177, 0xCu);
      }

      else
      {
        sub_3D48(v174, &qword_8F6C0, &qword_7A5B0);
      }

      v314(v286, v315);
      v196 = v287;
      sub_FCE0(v287, v173, &qword_8F6C0, &qword_7A5B0);
      v197 = sub_74D98();
      v198 = *(v197 - 8);
      if ((*(v198 + 48))(v173, 1, v197) == 1)
      {
        sub_3D48(v196, &qword_8F6C0, &qword_7A5B0);
        (*(v293 + 8))(v312, v311);
        sub_3D48(v173, &qword_8F6C0, &qword_7A5B0);
        v161 = 0;
        v159 = 0xF000000000000000;
      }

      else
      {
        sub_30174(&qword_8F6F8, &type metadata accessor for RingsProperties);
        v199 = v318;
        v200 = sub_74F78();
        v318 = v199;
        if (v199)
        {
          sub_3D48(v287, &qword_8F6C0, &qword_7A5B0);
          (*(v293 + 8))(v312, v311);
          return (*(v198 + 8))(v173, v197);
        }

        v161 = v200;
        v159 = v201;
        sub_3D48(v287, &qword_8F6C0, &qword_7A5B0);
        (*(v293 + 8))(v312, v311);
        (*(v198 + 8))(v173, v197);
      }

      goto LABEL_60;
    }
  }

  else
  {
    if (v100 != enum case for SnapshotPropertiesType.workout(_:))
    {
      v142 = v308;
      if (v100 != enum case for SnapshotPropertiesType.fitnessPlus(_:))
      {
        sub_22144();
        v157 = swift_allocError();
        *v158 = 1;
        v159 = 0xF000000000000000;
        v160 = v297;
        v297(0, 0xF000000000000000, v157);

        (*(v96 + 8))(v99, v95);
        v161 = 0;
        v162 = v303;
LABEL_61:
        v160(v161, v159, 0);
        sub_75368();
        v240 = sub_75438();
        sub_75468();
        v241 = sub_757A8();
        if (sub_75828())
        {

          v242 = v283;
          sub_75498();
          v243 = v242;

          v244 = v242;
          v245 = v284;
          if ((*(v162 + 88))(v244, v284) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v246 = "[Error] Interval already ended";
          }

          else
          {
            (*(v162 + 8))(v243, v245);
            v246 = "";
          }

          v247 = swift_slowAlloc();
          *v247 = 0;
          v248 = sub_75418();
          _os_signpost_emit_with_name_impl(&dword_0, v240, v241, v248, "executeQuery", v246, v247, 2u);
        }

        sub_11774(v161, v159);

        (*(v300 + 8))(v142, v301);
        return (*(v298 + 8))(v310, v299);
      }

      sub_398C(v313, v314);
      sub_7718(&qword_8F6D0, &qword_8F6A8, &qword_7A598);
      v143 = v295;
      v144 = v294;
      v145 = v318;
      result = sub_74F88();
      if (v145)
      {
        return result;
      }

      v318 = 0;
      sub_75378();
      v146 = v282;
      v147 = v262;
      (*(v282 + 16))(v262, v143, v144);
      v148 = sub_754A8();
      v149 = sub_75738();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v151 = v147;
        v314 = swift_slowAlloc();
        v319 = v314;
        *v150 = 136315138;
        sub_74DE8();
        v152 = v267;
        v153 = sub_755B8();
        v155 = v154;
        v316 = *(v146 + 8);
        v316(v151, v294);
        v156 = sub_31B4(v153, v155, &v319);
        v144 = v294;

        *(v150 + 4) = v156;
        _os_log_impl(&dword_0, v148, v149, "Executing FitnessPlus Properties Query: %s", v150, 0xCu);
        sub_3940(v314);

        v313 = *(v317 + 8);
        v313(v85, v315);
      }

      else
      {

        v316 = *(v146 + 8);
        v316(v147, v144);
        v313 = *(v317 + 8);
        v313(v85, v315);
        v152 = v267;
      }

      v314 = sub_74DF8();
      v182 = v263;
      sub_74DE8();
      v183 = v268;
      sub_74AF8();
      v184 = *(v266 + 8);
      v184(v182, v152);
      v185 = v264;
      sub_74DE8();
      v186 = sub_74AE8();
      v184(v185, v152);
      v187 = v265;
      sub_74DE8();
      v188 = sub_74B08();
      v189 = v187;
      v190 = v314;
      v184(v189, v152);
      v191 = [v306 client];
      v192 = [v191 profile];

      v193 = v318;
      v194 = sub_358B4(v190, v183, v186, v188, 1, v192, v307);
      v318 = v193;
      if (v193)
      {

        (*(v269 + 8))(v183, v270);
        return (v316)(v295, v144);
      }

      v202 = v194;
      (*(v269 + 8))(v183, v270);

      if (*(v202 + 2))
      {
        v203 = sub_74A88();
        v204 = *(v203 - 8);
        v205 = v261;
        (*(v204 + 16))(v261, &v202[(*(v204 + 80) + 32) & ~*(v204 + 80)], v203);
        v206 = v205;

        (*(v204 + 56))(v205, 0, 1, v203);
      }

      else
      {

        v226 = sub_74A88();
        v206 = v261;
        (*(*(v226 - 8) + 56))(v261, 1, 1, v226);
      }

      v227 = v255;
      v228 = v253;
      sub_75378();
      sub_FCE0(v206, v227, &qword_8F6A0, &qword_7A590);
      v229 = sub_754A8();
      v230 = sub_75738();
      if (os_log_type_enabled(v229, v230))
      {
        v231 = swift_slowAlloc();
        *v231 = 134217984;
        v232 = v252;
        sub_FCE0(v227, v252, &qword_8F6A0, &qword_7A590);
        v233 = sub_74A88();
        v234 = *(v233 - 8);
        if ((*(v234 + 48))(v232, 1, v233) == 1)
        {
          sub_3D48(v232, &qword_8F6A0, &qword_7A590);
          v235 = 0;
        }

        else
        {
          v236 = sub_74A78();
          (*(v234 + 8))(v232, v233);
          v235 = *(v236 + 16);
        }

        v162 = v303;
        sub_3D48(v227, &qword_8F6A0, &qword_7A590);
        *(v231 + 4) = v235;
        _os_log_impl(&dword_0, v229, v230, "Found %ld records", v231, 0xCu);

        v206 = v261;
      }

      else
      {
        sub_3D48(v227, &qword_8F6A0, &qword_7A590);
        v162 = v303;
      }

      v313(v228, v315);
      v237 = v256;
      sub_FCE0(v206, v256, &qword_8F6A0, &qword_7A590);
      v238 = sub_74A88();
      v239 = *(v238 - 8);
      if ((*(v239 + 48))(v237, 1, v238) == 1)
      {
        sub_3D48(v206, &qword_8F6A0, &qword_7A590);
        v316(v295, v294);
        sub_3D48(v237, &qword_8F6A0, &qword_7A590);
        v161 = 0;
        v159 = 0xF000000000000000;
        v142 = v308;
      }

      else
      {
        sub_30174(&qword_8F6D8, &type metadata accessor for FitnessPlusProperties);
        v249 = v318;
        v250 = sub_74F78();
        if (v249)
        {
          sub_3D48(v261, &qword_8F6A0, &qword_7A590);
          v316(v295, v294);
          return (*(v239 + 8))(v237, v238);
        }

        v161 = v250;
        v159 = v251;
        sub_3D48(v261, &qword_8F6A0, &qword_7A590);
        v316(v295, v294);
        (*(v239 + 8))(v237, v238);
        v318 = 0;
        v142 = v308;
      }

LABEL_60:
      v160 = v297;
      goto LABEL_61;
    }

    sub_75378();
    v119 = sub_754A8();
    v120 = sub_75738();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_0, v119, v120, "Executing Workout Properties Query", v121, 2u);
    }

    v122 = v317 + 8;
    v123 = *(v317 + 8);
    (v123)(v90, v315);
    sub_398C(v313, v314);
    sub_7718(&qword_8F6E0, &qword_8F6B8, &qword_7A5A8);
    v124 = v304;
    v125 = v305;
    v126 = v318;
    result = sub_74F88();
    v127 = v302;
    if (!v126)
    {
      v314 = v123;
      v317 = v122;
      v318 = 0;
      v316 = sub_74DF8();
      v128 = v274;
      sub_74DE8();
      sub_75118();
      v129 = *(v277 + 8);
      v130 = v278;
      v129(v128, v278);
      v131 = v275;
      sub_74DE8();
      v132 = sub_75108();
      v129(v131, v130);
      v133 = v276;
      sub_74DE8();
      v134 = sub_75128();
      v135 = v133;
      v136 = v316;
      v129(v135, v130);
      v137 = [v306 client];
      v138 = v124;
      v139 = [v137 profile];

      v140 = v318;
      v141 = sub_3444C(v136, v127, v132, v134, 1, v139, v307);
      v318 = v140;
      if (v140)
      {

        (*(v279 + 8))(v127, v280);
        return (*(v281 + 8))(v125, v138);
      }

      v167 = v141;
      (*(v279 + 8))(v127, v280);

      if (*(v167 + 2))
      {
        v168 = sub_74E18();
        v169 = *(v168 - 8);
        v170 = v273;
        (*(v169 + 16))(v273, &v167[(*(v169 + 80) + 32) & ~*(v169 + 80)], v168);
        v171 = v170;

        (*(v169 + 56))(v170, 0, 1, v168);
      }

      else
      {

        v207 = sub_74E18();
        v171 = v273;
        (*(*(v207 - 8) + 56))(v273, 1, 1, v207);
      }

      v208 = v305;
      v142 = v308;
      v209 = v271;
      v210 = v258;
      sub_75378();
      sub_FCE0(v171, v209, &qword_8F6B0, &qword_7A5A0);
      v211 = sub_754A8();
      v212 = sub_75738();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        *v213 = 134217984;
        v214 = v254;
        sub_FCE0(v209, v254, &qword_8F6B0, &qword_7A5A0);
        v215 = sub_74E18();
        v216 = *(v215 - 8);
        if ((*(v216 + 48))(v214, 1, v215) == 1)
        {
          sub_3D48(v214, &qword_8F6B0, &qword_7A5A0);
          v217 = 0;
        }

        else
        {
          v218 = sub_74E08();
          (*(v216 + 8))(v214, v215);
          v217 = *(v218 + 16);
          v208 = v305;
        }

        v162 = v303;
        sub_3D48(v271, &qword_8F6B0, &qword_7A5A0);
        *(v213 + 4) = v217;
        _os_log_impl(&dword_0, v211, v212, "Found %ld records", v213, 0xCu);

        v171 = v273;
      }

      else
      {
        sub_3D48(v209, &qword_8F6B0, &qword_7A5A0);
        v162 = v303;
      }

      v314(v210, v315);
      v219 = v260;
      sub_FCE0(v171, v260, &qword_8F6B0, &qword_7A5A0);
      v220 = sub_74E18();
      v221 = *(v220 - 8);
      if ((*(v221 + 48))(v219, 1, v220) == 1)
      {
        sub_3D48(v171, &qword_8F6B0, &qword_7A5A0);
        (*(v281 + 8))(v208, v304);
        sub_3D48(v219, &qword_8F6B0, &qword_7A5A0);
        v161 = 0;
        v159 = 0xF000000000000000;
      }

      else
      {
        sub_30174(&qword_8F6E8, &type metadata accessor for WorkoutProperties);
        v222 = v219;
        v223 = v318;
        v224 = sub_74F78();
        v318 = v223;
        if (v223)
        {
          sub_3D48(v273, &qword_8F6B0, &qword_7A5A0);
          (*(v281 + 8))(v208, v304);
          return (*(v221 + 8))(v219, v220);
        }

        v161 = v224;
        v159 = v225;
        sub_3D48(v273, &qword_8F6B0, &qword_7A5A0);
        (*(v281 + 8))(v208, v304);
        (*(v221 + 8))(v222, v220);
      }

      goto LABEL_60;
    }
  }

  return result;
}

void sub_29A5C(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v19 = a1;
  v13 = sub_748C8();
  v15 = v14;

  v16 = sub_755A8();
  v18 = v17;

  _Block_copy(v10);
  a6(v13, v15, v16, v18, v19, v10);
  _Block_release(v10);
  _Block_release(v10);

  sub_FB28(v13, v15);
}

void sub_29B54(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_74888();
      goto LABEL_6;
    }
  }

  else
  {
    isa = sub_748A8().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t SnapshotContainerTaskServer.invalidate(after:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_754C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_754F8();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_2DDEC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_871D0;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  sub_754D8();
  v22 = _swiftEmptyArrayStorage;
  sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
  sub_75858();
  sub_75788();
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_29ED8(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = a1;
  sub_22B98(1, v5, a2, v5);
  a3(0);
}

void sub_29F4C(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for PropertyRecordCheckpointEntity();
  v7 = [a3 client];
  v8 = [v7 profile];

  sub_489A0(a2, v8, a1);
  if (!v3)
  {
    v9 = [a3 client];
    v10 = [v9 profile];

    sub_20254(a2, v10, a1);
    v11 = [a3 client];
    v12 = [v11 profile];

    sub_204A4(a2, v12, a1);
    v13 = [a3 client];
    v14 = [v13 profile];

    sub_206F4(a2, v14, a1);
  }
}

void sub_2A180(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_74888();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2A214(void *a1, void (*a2)(void))
{
  v3 = a1;
  sub_22FA8(1, v3, v3);
  a2(0);
}

void sub_2A280(void *a1, id a2)
{
  v5 = [a2 client];
  v6 = [v5 profile];

  sub_2A3F8(v6, a1);
  if (!v2)
  {
    v7 = [a2 client];
    v8 = [v7 profile];

    sub_2A894(v8, a1);
    v9 = [a2 client];
    v10 = [v9 profile];

    sub_2AD30(v10, a1);
    v11 = [a2 client];
    v12 = [v11 profile];

    sub_2B1CC(v12, a1);
  }
}

void sub_2A3F8(void *a1, void *a2)
{
  v37 = a2;
  v36 = a1;
  v2 = sub_74968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_74CA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = v33 - v12;
  __chkstk_darwin(v11);
  v15 = v33 - v14;
  v35 = type metadata accessor for PropertyRecordCheckpointEntity();
  sub_74958();
  sub_74908();
  (*(v3 + 8))(v6, v2);
  v16 = ObjCClassFromMetadata;
  sub_74C88();
  if (v16)
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v17 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v36;
    v33[0] = *(v8 + 8);
    v33[1] = v8 + 8;
    (v33[0])(v13, v7);
    v19 = v37;
    if (v37)
    {
      v34 = v37;
    }

    else
    {
      v34 = [objc_opt_self() contextForWritingProtectedData];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = v19;
    v21 = [v18 database];
    v22 = *(v8 + 16);
    v37 = v15;
    v22(v17, v15, v7);
    v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24 = swift_allocObject();
    v25 = v24 + v23;
    v26 = v7;
    (*(v8 + 32))(v25, v17, v7);
    v27 = swift_allocObject();
    v27[2] = sub_2FF5C;
    v27[3] = v24;
    aBlock[4] = sub_1008C;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_87828;
    v28 = _Block_copy(aBlock);
    v29 = v34;

    aBlock[0] = 0;
    v30 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v21 context:v29 error:aBlock block:v28];
    _Block_release(v28);

    v31 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v30)
    {
      (v33[0])(v37, v26);
    }

    else
    {
      sub_74898();

      swift_willThrow();
      (v33[0])(v37, v26);
    }
  }
}

void sub_2A894(void *a1, void *a2)
{
  v37 = a2;
  v36 = a1;
  v2 = sub_74968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_74CA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = v33 - v12;
  __chkstk_darwin(v11);
  v15 = v33 - v14;
  v35 = type metadata accessor for WorkoutPropertyRecordEntity();
  sub_74958();
  sub_74908();
  (*(v3 + 8))(v6, v2);
  v16 = ObjCClassFromMetadata;
  sub_74C88();
  if (v16)
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v17 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v36;
    v33[0] = *(v8 + 8);
    v33[1] = v8 + 8;
    (v33[0])(v13, v7);
    v19 = v37;
    if (v37)
    {
      v34 = v37;
    }

    else
    {
      v34 = [objc_opt_self() contextForWritingProtectedData];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = v19;
    v21 = [v18 database];
    v22 = *(v8 + 16);
    v37 = v15;
    v22(v17, v15, v7);
    v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24 = swift_allocObject();
    v25 = v24 + v23;
    v26 = v7;
    (*(v8 + 32))(v25, v17, v7);
    v27 = swift_allocObject();
    v27[2] = sub_2FF44;
    v27[3] = v24;
    aBlock[4] = sub_1008C;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_87710;
    v28 = _Block_copy(aBlock);
    v29 = v34;

    aBlock[0] = 0;
    v30 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v21 context:v29 error:aBlock block:v28];
    _Block_release(v28);

    v31 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v30)
    {
      (v33[0])(v37, v26);
    }

    else
    {
      sub_74898();

      swift_willThrow();
      (v33[0])(v37, v26);
    }
  }
}

void sub_2AD30(void *a1, void *a2)
{
  v37 = a2;
  v36 = a1;
  v2 = sub_74968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_74CA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = v33 - v12;
  __chkstk_darwin(v11);
  v15 = v33 - v14;
  v35 = type metadata accessor for RingsPropertyRecordEntity();
  sub_74958();
  sub_74908();
  (*(v3 + 8))(v6, v2);
  v16 = ObjCClassFromMetadata;
  sub_74C88();
  if (v16)
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v17 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v36;
    v33[0] = *(v8 + 8);
    v33[1] = v8 + 8;
    (v33[0])(v13, v7);
    v19 = v37;
    if (v37)
    {
      v34 = v37;
    }

    else
    {
      v34 = [objc_opt_self() contextForWritingProtectedData];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = v19;
    v21 = [v18 database];
    v22 = *(v8 + 16);
    v37 = v15;
    v22(v17, v15, v7);
    v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24 = swift_allocObject();
    v25 = v24 + v23;
    v26 = v7;
    (*(v8 + 32))(v25, v17, v7);
    v27 = swift_allocObject();
    v27[2] = sub_2FE88;
    v27[3] = v24;
    aBlock[4] = sub_1008C;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_875F8;
    v28 = _Block_copy(aBlock);
    v29 = v34;

    aBlock[0] = 0;
    v30 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v21 context:v29 error:aBlock block:v28];
    _Block_release(v28);

    v31 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v30)
    {
      (v33[0])(v37, v26);
    }

    else
    {
      sub_74898();

      swift_willThrow();
      (v33[0])(v37, v26);
    }
  }
}

void sub_2B1CC(void *a1, void *a2)
{
  v37 = a2;
  v36 = a1;
  v2 = sub_74968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_74CA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = v33 - v12;
  __chkstk_darwin(v11);
  v15 = v33 - v14;
  v35 = type metadata accessor for FitnessPlusPropertyRecordEntity();
  sub_74958();
  sub_74908();
  (*(v3 + 8))(v6, v2);
  v16 = ObjCClassFromMetadata;
  sub_74C88();
  if (v16)
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v17 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v36;
    v33[0] = *(v8 + 8);
    v33[1] = v8 + 8;
    (v33[0])(v13, v7);
    v19 = v37;
    if (v37)
    {
      v34 = v37;
    }

    else
    {
      v34 = [objc_opt_self() contextForWritingProtectedData];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = v19;
    v21 = [v18 database];
    v22 = *(v8 + 16);
    v37 = v15;
    v22(v17, v15, v7);
    v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24 = swift_allocObject();
    v25 = v24 + v23;
    v26 = v7;
    (*(v8 + 32))(v25, v17, v7);
    v27 = swift_allocObject();
    v27[2] = sub_2FE60;
    v27[3] = v24;
    aBlock[4] = sub_FC94;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_874E0;
    v28 = _Block_copy(aBlock);
    v29 = v34;

    aBlock[0] = 0;
    v30 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v21 context:v29 error:aBlock block:v28];
    _Block_release(v28);

    v31 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v30)
    {
      (v33[0])(v37, v26);
    }

    else
    {
      sub_74898();

      swift_willThrow();
      (v33[0])(v37, v26);
    }
  }
}

uint64_t sub_2B69C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t SnapshotContainerTaskServer.requestDatabaseAssertion(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_754B8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = *&v1[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion];
  v6 = [v1 client];
  v7 = *(v5 + 40);
  sub_2DE20();

  sub_74CC8();

  return a1(v8);
}

uint64_t SnapshotContainerTaskServer.invalidateDatabaseAssertion(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(*(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion) + 40);

  sub_74CC8();

  return a1(v4);
}

uint64_t sub_2BB00(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_754C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_754F8();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a1[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitSemaphore];
  sub_757C8();
  v20[1] = *&a1[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = sub_30114;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_87CB0;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_754D8();
  v22 = _swiftEmptyArrayStorage;
  sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
  sub_75858();
  sub_75788();
  _Block_release(v17);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v21);
}

uint64_t sub_2BE00(void *a1, void *a2, uint64_t a3)
{
  v50 = a3;
  v5 = sub_754B8();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = sub_74CA8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 protectedDatabase];
  if (v16)
  {
    v17 = v16;
    v48 = a2;
    v49 = v9;
    v47 = v5;
    aBlock = 0;
    v53 = 0xE000000000000000;
    sub_75908(86);
    v59._countAndFlagsBits = 0x46204554454C4544;
    v59._object = 0xEC000000204D4F52;
    sub_75608(v59);
    type metadata accessor for FitnessPlusPropertyRecordEntity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [ObjCClassFromMetadata databaseTable];
    v20 = sub_755A8();
    v22 = v21;

    v60._countAndFlagsBits = v20;
    v60._object = v22;
    sub_75608(v60);

    v61._countAndFlagsBits = 0x2820455245485720;
    v61._object = 0xE900000000000028;
    sub_75608(v61);
    v62._countAndFlagsBits = 0x6568636143646E65;
    v62._object = 0xED00007865646E49;
    sub_75608(v62);
    v63._countAndFlagsBits = 2108704;
    v63._object = 0xE300000000000000;
    sub_75608(v63);
    v64._countAndFlagsBits = 0x6361437472617473;
    v64._object = 0xEF7865646E496568;
    sub_75608(v64);
    v65._countAndFlagsBits = 540811305;
    v65._object = 0xE400000000000000;
    sub_75608(v65);
    v58 = 691200;
    v66._countAndFlagsBits = sub_75A38();
    sub_75608(v66);

    v67._countAndFlagsBits = 0x20444E4120;
    v67._object = 0xE500000000000000;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x6568636143646E65;
    v68._object = 0xED00007865646E49;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x524F20293F203C20;
    v69._object = 0xE900000000000020;
    sub_75608(v69);
    v70._countAndFlagsBits = 0x6E6F6973726576;
    v70._object = 0xE700000000000000;
    sub_75608(v70);
    v71._object = 0x8000000000078BD0;
    v71._countAndFlagsBits = 0xD00000000000001DLL;
    sub_75608(v71);
    v23 = [ObjCClassFromMetadata databaseTable];
    v24 = sub_755A8();
    v26 = v25;

    v72._countAndFlagsBits = v24;
    v72._object = v26;
    sub_75608(v72);

    v73._countAndFlagsBits = 41;
    v73._object = 0xE100000000000000;
    sub_75608(v73);
    v27 = sub_75598();

    (*(v13 + 16))(&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v12);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v29 = swift_allocObject();
    (*(v13 + 32))(v29 + v28, v15, v12);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_2FE78;
    *(v30 + 24) = v29;
    v56 = sub_2FE7C;
    v57 = v30;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_644E0;
    v55 = &unk_87558;
    v31 = _Block_copy(&aBlock);

    v56 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v57 = 0;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_4F494;
    v55 = &unk_87580;
    v32 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v26) = [v17 executeSQL:v27 error:&aBlock bindingHandler:v31 enumerationHandler:v32];
    _Block_release(v32);
    _Block_release(v31);

    if (v26)
    {
      v33 = aBlock;

      return 1;
    }

    v39 = aBlock;
    sub_74898();

    swift_willThrow();
    v40 = v49;
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
      _os_log_impl(&dword_0, v41, v42, "Failed to clean up: %@", v43, 0xCu);
      sub_3D48(v44, &unk_8EB30, &unk_7A270);

      v40 = v49;
    }

    (*(v51 + 8))(v40, v47);
    v46 = v48;
    if (v48)
    {
      *v46 = sub_74888();
    }
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
      _os_log_impl(&dword_0, v35, v36, "Failed to clean up: no protected database", v37, 2u);
    }

    (*(v51 + 8))(v11, v5);
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

uint64_t sub_2C5BC(void *a1, void *a2, uint64_t a3)
{
  v50 = a3;
  v5 = sub_754B8();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = sub_74CA8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 protectedDatabase];
  if (v16)
  {
    v17 = v16;
    v48 = a2;
    v49 = v9;
    v47 = v5;
    aBlock = 0;
    v53 = 0xE000000000000000;
    sub_75908(86);
    v59._countAndFlagsBits = 0x46204554454C4544;
    v59._object = 0xEC000000204D4F52;
    sub_75608(v59);
    type metadata accessor for RingsPropertyRecordEntity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [ObjCClassFromMetadata databaseTable];
    v20 = sub_755A8();
    v22 = v21;

    v60._countAndFlagsBits = v20;
    v60._object = v22;
    sub_75608(v60);

    v61._countAndFlagsBits = 0x2820455245485720;
    v61._object = 0xE900000000000028;
    sub_75608(v61);
    v62._countAndFlagsBits = 0x6568636143646E65;
    v62._object = 0xED00007865646E49;
    sub_75608(v62);
    v63._countAndFlagsBits = 2108704;
    v63._object = 0xE300000000000000;
    sub_75608(v63);
    v64._countAndFlagsBits = 0x6361437472617473;
    v64._object = 0xEF7865646E496568;
    sub_75608(v64);
    v65._countAndFlagsBits = 540811305;
    v65._object = 0xE400000000000000;
    sub_75608(v65);
    v58 = 691200;
    v66._countAndFlagsBits = sub_75A38();
    sub_75608(v66);

    v67._countAndFlagsBits = 0x20444E4120;
    v67._object = 0xE500000000000000;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x6568636143646E65;
    v68._object = 0xED00007865646E49;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x524F20293F203C20;
    v69._object = 0xE900000000000020;
    sub_75608(v69);
    v70._countAndFlagsBits = 0x6E6F6973726576;
    v70._object = 0xE700000000000000;
    sub_75608(v70);
    v71._object = 0x8000000000078BD0;
    v71._countAndFlagsBits = 0xD00000000000001DLL;
    sub_75608(v71);
    v23 = [ObjCClassFromMetadata databaseTable];
    v24 = sub_755A8();
    v26 = v25;

    v72._countAndFlagsBits = v24;
    v72._object = v26;
    sub_75608(v72);

    v73._countAndFlagsBits = 41;
    v73._object = 0xE100000000000000;
    sub_75608(v73);
    v27 = sub_75598();

    (*(v13 + 16))(&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v12);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v29 = swift_allocObject();
    (*(v13 + 32))(v29 + v28, v15, v12);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_3039C;
    *(v30 + 24) = v29;
    v56 = sub_303D0;
    v57 = v30;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_644E0;
    v55 = &unk_87670;
    v31 = _Block_copy(&aBlock);

    v56 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v57 = 0;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_4F494;
    v55 = &unk_87698;
    v32 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v26) = [v17 executeSQL:v27 error:&aBlock bindingHandler:v31 enumerationHandler:v32];
    _Block_release(v32);
    _Block_release(v31);

    if (v26)
    {
      v33 = aBlock;

      return 1;
    }

    v39 = aBlock;
    sub_74898();

    swift_willThrow();
    v40 = v49;
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
      _os_log_impl(&dword_0, v41, v42, "Failed to clean up: %@", v43, 0xCu);
      sub_3D48(v44, &unk_8EB30, &unk_7A270);

      v40 = v49;
    }

    (*(v51 + 8))(v40, v47);
    v46 = v48;
    if (v48)
    {
      *v46 = sub_74888();
    }
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
      _os_log_impl(&dword_0, v35, v36, "Failed to clean up: no protected database", v37, 2u);
    }

    (*(v51 + 8))(v11, v5);
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

uint64_t sub_2CD78(void *a1, void *a2, uint64_t a3)
{
  v50 = a3;
  v5 = sub_754B8();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = sub_74CA8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 protectedDatabase];
  if (v16)
  {
    v17 = v16;
    v48 = a2;
    v49 = v9;
    v47 = v5;
    aBlock = 0;
    v53 = 0xE000000000000000;
    sub_75908(86);
    v59._countAndFlagsBits = 0x46204554454C4544;
    v59._object = 0xEC000000204D4F52;
    sub_75608(v59);
    type metadata accessor for WorkoutPropertyRecordEntity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [ObjCClassFromMetadata databaseTable];
    v20 = sub_755A8();
    v22 = v21;

    v60._countAndFlagsBits = v20;
    v60._object = v22;
    sub_75608(v60);

    v61._countAndFlagsBits = 0x2820455245485720;
    v61._object = 0xE900000000000028;
    sub_75608(v61);
    v62._countAndFlagsBits = 0x6568636143646E65;
    v62._object = 0xED00007865646E49;
    sub_75608(v62);
    v63._countAndFlagsBits = 2108704;
    v63._object = 0xE300000000000000;
    sub_75608(v63);
    v64._countAndFlagsBits = 0x6361437472617473;
    v64._object = 0xEF7865646E496568;
    sub_75608(v64);
    v65._countAndFlagsBits = 540811305;
    v65._object = 0xE400000000000000;
    sub_75608(v65);
    v58 = 691200;
    v66._countAndFlagsBits = sub_75A38();
    sub_75608(v66);

    v67._countAndFlagsBits = 0x20444E4120;
    v67._object = 0xE500000000000000;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x6568636143646E65;
    v68._object = 0xED00007865646E49;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x524F20293F203C20;
    v69._object = 0xE900000000000020;
    sub_75608(v69);
    v70._countAndFlagsBits = 0x6E6F6973726576;
    v70._object = 0xE700000000000000;
    sub_75608(v70);
    v71._object = 0x8000000000078BD0;
    v71._countAndFlagsBits = 0xD00000000000001DLL;
    sub_75608(v71);
    v23 = [ObjCClassFromMetadata databaseTable];
    v24 = sub_755A8();
    v26 = v25;

    v72._countAndFlagsBits = v24;
    v72._object = v26;
    sub_75608(v72);

    v73._countAndFlagsBits = 41;
    v73._object = 0xE100000000000000;
    sub_75608(v73);
    v27 = sub_75598();

    (*(v13 + 16))(&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v12);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v29 = swift_allocObject();
    (*(v13 + 32))(v29 + v28, v15, v12);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_3039C;
    *(v30 + 24) = v29;
    v56 = sub_303D0;
    v57 = v30;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_644E0;
    v55 = &unk_87788;
    v31 = _Block_copy(&aBlock);

    v56 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v57 = 0;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_4F494;
    v55 = &unk_877B0;
    v32 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v26) = [v17 executeSQL:v27 error:&aBlock bindingHandler:v31 enumerationHandler:v32];
    _Block_release(v32);
    _Block_release(v31);

    if (v26)
    {
      v33 = aBlock;

      return 1;
    }

    v39 = aBlock;
    sub_74898();

    swift_willThrow();
    v40 = v49;
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
      _os_log_impl(&dword_0, v41, v42, "Failed to clean up: %@", v43, 0xCu);
      sub_3D48(v44, &unk_8EB30, &unk_7A270);

      v40 = v49;
    }

    (*(v51 + 8))(v40, v47);
    v46 = v48;
    if (v48)
    {
      *v46 = sub_74888();
    }
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
      _os_log_impl(&dword_0, v35, v36, "Failed to clean up: no protected database", v37, 2u);
    }

    (*(v51 + 8))(v11, v5);
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

uint64_t sub_2D534(void *a1, void *a2, uint64_t a3)
{
  v50 = a3;
  v5 = sub_754B8();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = sub_74CA8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 protectedDatabase];
  if (v16)
  {
    v17 = v16;
    v48 = a2;
    v49 = v9;
    v47 = v5;
    aBlock = 0;
    v53 = 0xE000000000000000;
    sub_75908(86);
    v59._countAndFlagsBits = 0x46204554454C4544;
    v59._object = 0xEC000000204D4F52;
    sub_75608(v59);
    type metadata accessor for PropertyRecordCheckpointEntity();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [ObjCClassFromMetadata databaseTable];
    v20 = sub_755A8();
    v22 = v21;

    v60._countAndFlagsBits = v20;
    v60._object = v22;
    sub_75608(v60);

    v61._countAndFlagsBits = 0x2820455245485720;
    v61._object = 0xE900000000000028;
    sub_75608(v61);
    v62._countAndFlagsBits = 0x6568636143646E65;
    v62._object = 0xED00007865646E49;
    sub_75608(v62);
    v63._countAndFlagsBits = 2108704;
    v63._object = 0xE300000000000000;
    sub_75608(v63);
    v64._countAndFlagsBits = 0x6361437472617473;
    v64._object = 0xEF7865646E496568;
    sub_75608(v64);
    v65._countAndFlagsBits = 540811305;
    v65._object = 0xE400000000000000;
    sub_75608(v65);
    v58 = 691200;
    v66._countAndFlagsBits = sub_75A38();
    sub_75608(v66);

    v67._countAndFlagsBits = 0x20444E4120;
    v67._object = 0xE500000000000000;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x6568636143646E65;
    v68._object = 0xED00007865646E49;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x524F20293F203C20;
    v69._object = 0xE900000000000020;
    sub_75608(v69);
    v70._countAndFlagsBits = 0x6E6F6973726576;
    v70._object = 0xE700000000000000;
    sub_75608(v70);
    v71._object = 0x8000000000078BD0;
    v71._countAndFlagsBits = 0xD00000000000001DLL;
    sub_75608(v71);
    v23 = [ObjCClassFromMetadata databaseTable];
    v24 = sub_755A8();
    v26 = v25;

    v72._countAndFlagsBits = v24;
    v72._object = v26;
    sub_75608(v72);

    v73._countAndFlagsBits = 41;
    v73._object = 0xE100000000000000;
    sub_75608(v73);
    v27 = sub_75598();

    (*(v13 + 16))(&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v12);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v29 = swift_allocObject();
    (*(v13 + 32))(v29 + v28, v15, v12);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_3039C;
    *(v30 + 24) = v29;
    v56 = sub_303D0;
    v57 = v30;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_644E0;
    v55 = &unk_878A0;
    v31 = _Block_copy(&aBlock);

    v56 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v57 = 0;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_4F494;
    v55 = &unk_878C8;
    v32 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v26) = [v17 executeSQL:v27 error:&aBlock bindingHandler:v31 enumerationHandler:v32];
    _Block_release(v32);
    _Block_release(v31);

    if (v26)
    {
      v33 = aBlock;

      return 1;
    }

    v39 = aBlock;
    sub_74898();

    swift_willThrow();
    v40 = v49;
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
      _os_log_impl(&dword_0, v41, v42, "Failed to clean up: %@", v43, 0xCu);
      sub_3D48(v44, &unk_8EB30, &unk_7A270);

      v40 = v49;
    }

    (*(v51 + 8))(v40, v47);
    v46 = v48;
    if (v48)
    {
      *v46 = sub_74888();
    }
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
      _os_log_impl(&dword_0, v35, v36, "Failed to clean up: no protected database", v37, 2u);
    }

    (*(v51 + 8))(v11, v5);
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

uint64_t sub_2DD0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2DD24()
{
  sub_FB28(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2DDAC()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_2DE20()
{
  result = qword_8F690;
  if (!qword_8F690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8F690);
  }

  return result;
}

unint64_t sub_2DE9C()
{
  result = qword_8F698;
  if (!qword_8F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F698);
  }

  return result;
}

uint64_t sub_2DEF0(uint64_t a1, uint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v45 = a3;
  v54 = a1;
  v5 = sub_754B8();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_754C8();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_754F8();
  v49 = *(v51 - 8);
  v12 = *(v49 + 64);
  __chkstk_darwin(v51);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_38F8(&qword_8F680, &unk_7A4B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v44 - v16;
  v18 = sub_750F8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v22 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v44 - v23;
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  _Block_copy(a4);

  sub_750D8();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_3D48(v17, &qword_8F680, &unk_7A4B0);
    sub_75378();
    v26 = sub_754A8();
    v27 = sub_75718();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Unknown Properties Type", v28, 2u);
    }

    (*(v46 + 8))(v8, v47);
    sub_22144();
    swift_allocError();
    *v29 = 1;
    isa = sub_75678().super.isa;
    v31 = sub_74888();
    (a4)[2](a4, isa, v31);
  }

  else
  {
    v32 = *(v19 + 32);
    v33 = v24;
    v44 = v24;
    v32(v24, v17, v18);
    v34 = v45;
    v54 = *&v45[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
    (*(v19 + 16))(v22, v33, v18);
    v35 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    v32((v36 + v35), v22, v18);
    v37 = (v36 + ((v20 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = sub_30308;
    v37[1] = v25;
    aBlock[4] = sub_30298;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_17314;
    aBlock[3] = &unk_87468;
    v38 = _Block_copy(aBlock);
    v39 = v34;

    v40 = v48;
    sub_754D8();
    v55 = _swiftEmptyArrayStorage;
    sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_38F8(&qword_8F3B0, &qword_7A1D8);
    sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
    v41 = v50;
    v42 = v53;
    sub_75858();
    sub_75788();
    _Block_release(v38);
    (*(v52 + 8))(v41, v42);
    (*(v49 + 8))(v40, v51);
    (*(v19 + 8))(v44, v18);
  }
}

void sub_2E590(char a1, char *a2, uint64_t a3, unint64_t a4, char *a5, void (*a6)(void *, void), uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v35 = a3;
  v12 = sub_75508();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = sub_75518();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v19 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v19 setRequiresWrite:a1 & 1];
    v20 = [v19 setRequiresProtectedData:1];
    v21 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_lock];
    __chkstk_darwin(v20);
    *(&v32 - 2) = a2;

    sub_74CC8();

    if (v36 == 1)
    {
      v32 = a4;
      v22 = a5;
      v23 = *&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion];
      v24 = [a2 client];
      v25 = *(v23 + 40);
      v26 = __chkstk_darwin(v24);
      *(&v32 - 2) = v23;
      *(&v32 - 1) = v26;
      sub_2DE20();

      sub_74CC8();

      if (v7)
      {

        sub_FB28(v35, v32);
        return;
      }

      v30 = v36;
      [v19 addAccessibilityAssertion:v36];

      v29 = v35;
      a5 = v22;
      sub_23D9C(v19, v35, v32, v22, v33, v34);
      v31 = *(*&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion] + 40);

      sub_74CC8();

      a4 = v32;
    }

    else
    {
      v27 = *(*&a2[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion] + 40);

      sub_38F8(&qword_8F598, &unk_7A350);
      sub_74CC8();

      v28 = v36;
      if (v36)
      {
        [v19 addAccessibilityAssertion:v36];
      }

      v29 = v35;
      sub_23D9C(v19, v35, a4, a5, v33, v34);
    }

    sub_FB28(v29, a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2E9D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v36 = a5;
  v37 = a1;
  v39 = a2;
  v40 = sub_754B8();
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_38F8(&qword_8F680, &unk_7A4B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v35 - v12;
  v14 = sub_750F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v35 - v19;

  sub_750D8();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_3D48(v13, &qword_8F680, &unk_7A4B0);
    sub_75378();
    v21 = sub_754A8();
    v22 = sub_75718();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Unknown Properties Type", v23, 2u);
    }

    (*(v38 + 8))(v9, v40);
    sub_22144();
    swift_allocError();
    *v24 = 1;
    v25 = sub_74888();
    (*(a6 + 16))(a6, 0, v25);
  }

  else
  {
    v27 = *(v15 + 32);
    v27(v20, v13, v14);
    (*(a6 + 16))(a6, 1, 0);
    (*(v15 + 16))(v18, v20, v14);
    v28 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v36;
    v27((v29 + v28), v18, v14);
    v31 = (v29 + ((v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v32 = v37;
    v33 = v39;
    *v31 = v37;
    v31[1] = v33;
    v34 = v30;
    sub_398C(v32, v33);
    sub_264E0(sub_30290, v29, &OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitQueue, &unk_87C48, sub_300C8, &unk_87C60);

    return (*(v15 + 8))(v20, v14);
  }
}

uint64_t sub_2EDFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (**a6)(const void *, void, void *))
{
  v84 = a5;
  v96 = a3;
  v85 = a2;
  v83 = a1;
  v82 = sub_754B8();
  v81 = *(v82 - 8);
  v8 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_754C8();
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = *(v91 + 64);
  __chkstk_darwin(v10);
  v89 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_754F8();
  v88 = *(v90 - 8);
  v13 = *(v88 + 64);
  __chkstk_darwin(v90);
  v87 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_38F8(&qword_8F680, &unk_7A4B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v95 = &v77 - v17;
  v100 = sub_750F8();
  v98 = *(v100 - 8);
  v18 = *(v98 + 64);
  v19 = __chkstk_darwin(v100);
  v79 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v20;
  __chkstk_darwin(v19);
  v97 = &v77 - v21;
  v94 = sub_75428();
  v22 = *(v94 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v94);
  v93 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v77 - v26;
  v28 = sub_75448();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v77 - v34;
  v99 = swift_allocObject();
  *(v99 + 16) = a6;
  v86 = a6;
  _Block_copy(a6);
  sub_75368();
  sub_75368();
  sub_75438();
  sub_75408();
  v36 = *(v29 + 8);
  v36(v33, v28);
  v37 = sub_75438();
  v38 = sub_757B8();
  if (sub_75828())
  {
    v39 = swift_slowAlloc();
    v77 = a4;
    v40 = v39;
    *v39 = 0;
    v41 = sub_75418();
    _os_signpost_emit_with_name_impl(&dword_0, v37, v38, v41, "executeQuery", "", v40, 2u);
  }

  v42 = v94;
  (*(v22 + 16))(v93, v27, v94);
  v43 = sub_75488();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_75478();
  (*(v22 + 8))(v27, v42);
  v36(v35, v28);

  v47 = v95;
  sub_750D8();
  v48 = v98;
  v49 = v100;
  if ((*(v98 + 48))(v47, 1, v100) == 1)
  {
    sub_3D48(v47, &qword_8F680, &unk_7A4B0);
    v50 = v80;
    sub_75378();
    v51 = sub_754A8();
    v52 = sub_75718();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "Unknown Properties Type", v53, 2u);
    }

    (*(v81 + 8))(v50, v82);
    sub_22144();
    swift_allocError();
    *v54 = 1;
    v55 = sub_74888();
    v86[2](v86, 0, v55);
  }

  else
  {
    v56 = *(v48 + 32);
    v57 = v97;
    v56(v97, v47, v49);
    v95 = v46;
    v58 = v84;
    v96 = *&v84[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue];
    v59 = v79;
    (*(v48 + 16))(v79, v57, v49);
    v60 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v61 = (v78 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v49;
    v65 = v63;
    *(v63 + 16) = v58;
    v56((v63 + v60), v59, v64);
    v66 = (v65 + v61);
    v67 = v83;
    v68 = v85;
    *v66 = v83;
    v66[1] = v68;
    v69 = (v65 + v62);
    v70 = v99;
    *v69 = sub_2FA00;
    v69[1] = v70;
    *(v65 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8)) = v95;
    aBlock[4] = sub_30288;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_17314;
    aBlock[3] = &unk_87378;
    v71 = _Block_copy(aBlock);
    v72 = v58;
    sub_398C(v67, v68);

    v73 = v87;
    sub_754D8();
    v101 = _swiftEmptyArrayStorage;
    sub_30174(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
    sub_38F8(&qword_8F3B0, &qword_7A1D8);
    sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
    v74 = v89;
    v75 = v92;
    sub_75858();
    sub_75788();
    _Block_release(v71);

    (*(v91 + 8))(v74, v75);
    (*(v88 + 8))(v73, v90);
    (*(v48 + 8))(v97, v100);
  }
}

uint64_t sub_2F7C4(char *a1, uint64_t a2)
{
  v4 = sub_754B8();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = *&a1[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion];
  v7 = [a1 client];
  v8 = *(v6 + 40);
  sub_2DE20();

  sub_74CC8();

  return (*(a2 + 16))(a2);
}

uint64_t sub_2F9C0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2FA08()
{
  v1 = sub_750F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_FB28(*(v0 + v5), *(v0 + v5 + 8));
  v8 = *(v0 + v6 + 8);

  v9 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

void sub_2FB10()
{
  v1 = *(sub_750F8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_27140(v5, v0 + v2, v7, v8, v9, v10, v11);
}

uint64_t sub_2FBC0()
{
  v1 = sub_750F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_FB28(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_2FCA4()
{
  v1 = sub_750F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_2FD80(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_750F8() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t sub_2FEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_74CA8() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_2FF74()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2FFFC(sqlite3_stmt *a1)
{
  v2 = *(*(sub_74CA8() - 8) + 80);

  return sub_58428(a1);
}

uint64_t sub_300D4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Int sub_30114()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v1();
  v4 = *(v2 + OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitSemaphore);
  return sub_757D8();
}

uint64_t sub_30174(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_303DC@<X0>(uint64_t a1@<X8>)
{
  sub_75288();
  sub_30EBC(&unk_8F7B0, &type metadata accessor for RingsPropertyDimensionsField);
  v2 = sub_756B8();

  return sub_1411C(v2, a1);
}

id sub_30470()
{
  sub_38F8(&qword_8F0A0, &qword_79EC8);
  sub_2009C();
  result = sub_74F78();
  v3 = result;
  if (!v0)
  {
    v4 = v2;
    v5 = type metadata accessor for RingsPropertyRecordEntity.EntityWrapper();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
    *v7 = v3;
    *(v7 + 1) = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    return objc_msgSendSuper2(&v8, "init");
  }

  return result;
}

id static RingsPropertyRecordEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:5 schemaIdentifier:v1];

  return v2;
}

uint64_t static RingsPropertyRecordEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
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
    v33 = sub_38F8(&qword_8F740, &qword_7A5E0);
    sub_38F8(&qword_8F748, &qword_7A5E8);
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
  return sub_832C(v32, a2, a3, a4, a5);
}

id static RingsPropertyRecordEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RingsPropertyRecordEntity.EntityWrapper();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR___RingsEntityWrapper_serializedEntity];
  *v6 = a1;
  v6[1] = a2;
  sub_398C(a1, a2);
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t _s25FitnessIntelligencePlugin25RingsPropertyRecordEntityC18receiveSyncObjects_7version9syncStore7profile5errorSo013HDSyncReceiveJ6ResultVSaySo0P7Codable_pG_So0P12VersionRangeaSo0pM0_pSo9HDProfileCSAySo7NSErrorCSgGSgtFZ_0(unint64_t a1)
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
    v16 = sub_38F8(&qword_8F740, &qword_7A5E0);
    sub_38F8(&qword_8F748, &qword_7A5E8);
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

uint64_t sub_30E64(uint64_t a1)
{
  result = sub_30EBC(&unk_8F7A0, type metadata accessor for RingsPropertyRecordEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_30EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_30F04(char a1)
{
  v2 = v1;
  v4 = sub_75768();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75758();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_754F8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_749B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = a1 & 1;
  *(v2 + 32) = _swiftEmptyArrayStorage;
  v20 = sub_1720C();
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_75908(59);
  v26._object = 0x8000000000078E20;
  v26._countAndFlagsBits = 0xD000000000000039;
  sub_75608(v26);
  sub_749A8();
  v16 = sub_74978();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  v27._countAndFlagsBits = v16;
  v27._object = v18;
  sub_75608(v27);

  sub_754E8();
  v24 = _swiftEmptyArrayStorage;
  sub_43B30(&qword_8F940, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_7718(&qword_8F950, &qword_8F3A0, &unk_7A440);
  sub_75858();
  (*(v22 + 104))(v21, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  *(v2 + 16) = sub_75798();
  return v2;
}

uint64_t sub_31278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v35 = a5;
  v33 = a1;
  v41 = sub_754C8();
  v43 = *(v41 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v41);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_754F8();
  v40 = *(v42 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v42);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_74CA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v33 - v19;
  v36 = *(v7 + 16);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = *(v15 + 16);
  v22(v20, v33, v14);
  v22(v18, a2, v14);
  v23 = *(v15 + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = (v16 + v23 + v24) & ~v23;
  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  *(v26 + 24) = a3;
  v27 = *(v15 + 32);
  v27(v26 + v24, v20, v14);
  v27(v26 + v25, v18, v14);
  aBlock[4] = v37;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = v38;
  v28 = _Block_copy(aBlock);

  v29 = v34;
  sub_754D8();
  v44 = _swiftEmptyArrayStorage;
  sub_43B30(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8);
  v30 = v39;
  v31 = v41;
  sub_75858();
  sub_75788();
  _Block_release(v28);
  (*(v43 + 8))(v30, v31);
  (*(v40 + 8))(v29, v42);
}

uint64_t sub_316B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_754B8();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_38F8(&qword_8F6A0, &qword_7A590);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v55);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - v15;
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = sub_74A88();
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  v21 = __chkstk_darwin(v19);
  v54 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v60 = &v50 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(a2 + 16))
    {
      v25 = result;
      v26 = sub_43B30(&qword_8F8E0, &type metadata accessor for FitnessPlusProperties);
      sub_74EC8();
      if (*(v25 + 24))
      {
        v50 = v26;
        sub_38F8(&qword_8F8F0, &qword_7A6E0);
        v27 = *(v6 + 72);
        v53 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v52 = swift_allocObject();
        swift_beginAccess();
        v51 = v25;
        v28 = *(v25 + 32);
        v29 = v56;
        if (*(v28 + 16))
        {
          v30 = *(v56 + 16);
          v30(v18, v28 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v19);
          v31 = *(v29 + 56);
          v31(v18, 0, 1, v19);
          v30(v16, v60, v19);
        }

        else
        {
          v31 = *(v56 + 56);
          v37 = v56;
          v31(v18, 1, 1, v19);
          (*(v37 + 16))(v16, v60, v19);
        }

        v31(v16, 0, 1, v19);
        v38 = v52;
        v39 = v53;
        sub_74EB8();
        sub_3D48(v16, &qword_8F6A0, &qword_7A590);
        sub_3D48(v18, &qword_8F6A0, &qword_7A590);
        sub_FCE0(v38 + v39, v13, &qword_8F6A0, &qword_7A590);
        sub_1B748(v13, v10, &qword_8F6A0, &qword_7A590);
        v40 = v56;
        v41 = (*(v56 + 48))(v10, 1, v19);
        v42 = v51;
        if (v41 == 1)
        {
          sub_3D48(v10, &qword_8F6A0, &qword_7A590);
          v43 = _swiftEmptyArrayStorage;
          v44 = v60;
        }

        else
        {
          v45 = *(v40 + 32);
          v46 = v54;
          v45(v54, v10, v19);
          v43 = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_67754(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
          }

          v48 = *(v43 + 2);
          v47 = *(v43 + 3);
          if (v48 >= v47 >> 1)
          {
            v43 = sub_67754(v47 > 1, v48 + 1, 1, v43);
          }

          *(v43 + 2) = v48 + 1;
          v45(&v43[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v48], v46, v19);
          v44 = v60;
          v38 = v52;
        }

        swift_setDeallocating();
        sub_3D48(v38 + v53, &qword_8F6A0, &qword_7A590);
        swift_deallocClassInstance();
        (*(v40 + 8))(v44, v19);
        v49 = *(v42 + 32);
        *(v42 + 32) = v43;
      }

      else
      {
        sub_38F8(&qword_8F8E8, &unk_7AD80);
        v32 = v56;
        v33 = *(v56 + 72);
        v34 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_79BF0;
        v36 = v60;
        (*(v32 + 16))(v35 + v34, v60, v19);
        swift_beginAccess();
        sub_66E44(v35);
        swift_endAccess();

        return (*(v32 + 8))(v36, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_31F1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_754B8();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_38F8(&qword_8F6B0, &qword_7A5A0);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v55);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - v15;
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = sub_74E18();
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  v21 = __chkstk_darwin(v19);
  v54 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v60 = &v50 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(a2 + 16))
    {
      v25 = result;
      v26 = sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties);
      sub_74EC8();
      if (*(v25 + 24))
      {
        v50 = v26;
        sub_38F8(&qword_8F8B0, &qword_7A6B8);
        v27 = *(v6 + 72);
        v53 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v52 = swift_allocObject();
        swift_beginAccess();
        v51 = v25;
        v28 = *(v25 + 32);
        v29 = v56;
        if (*(v28 + 16))
        {
          v30 = *(v56 + 16);
          v30(v18, v28 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v19);
          v31 = *(v29 + 56);
          v31(v18, 0, 1, v19);
          v30(v16, v60, v19);
        }

        else
        {
          v31 = *(v56 + 56);
          v37 = v56;
          v31(v18, 1, 1, v19);
          (*(v37 + 16))(v16, v60, v19);
        }

        v31(v16, 0, 1, v19);
        v38 = v52;
        v39 = v53;
        sub_74EB8();
        sub_3D48(v16, &qword_8F6B0, &qword_7A5A0);
        sub_3D48(v18, &qword_8F6B0, &qword_7A5A0);
        sub_FCE0(v38 + v39, v13, &qword_8F6B0, &qword_7A5A0);
        sub_1B748(v13, v10, &qword_8F6B0, &qword_7A5A0);
        v40 = v56;
        v41 = (*(v56 + 48))(v10, 1, v19);
        v42 = v51;
        if (v41 == 1)
        {
          sub_3D48(v10, &qword_8F6B0, &qword_7A5A0);
          v43 = _swiftEmptyArrayStorage;
          v44 = v60;
        }

        else
        {
          v45 = *(v40 + 32);
          v46 = v54;
          v45(v54, v10, v19);
          v43 = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_677A4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
          }

          v48 = *(v43 + 2);
          v47 = *(v43 + 3);
          if (v48 >= v47 >> 1)
          {
            v43 = sub_677A4(v47 > 1, v48 + 1, 1, v43);
          }

          *(v43 + 2) = v48 + 1;
          v45(&v43[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v48], v46, v19);
          v44 = v60;
          v38 = v52;
        }

        swift_setDeallocating();
        sub_3D48(v38 + v53, &qword_8F6B0, &qword_7A5A0);
        swift_deallocClassInstance();
        (*(v40 + 8))(v44, v19);
        v49 = *(v42 + 32);
        *(v42 + 32) = v43;
      }

      else
      {
        sub_38F8(&qword_8F8A8, &unk_7AD60);
        v32 = v56;
        v33 = *(v56 + 72);
        v34 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_79BF0;
        v36 = v60;
        (*(v32 + 16))(v35 + v34, v60, v19);
        swift_beginAccess();
        sub_66E80(v35);
        swift_endAccess();

        return (*(v32 + 8))(v36, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_32780(uint64_t a1, uint64_t a2)
{
  v3 = sub_754B8();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  __chkstk_darwin(v3);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_38F8(&qword_8F6C0, &qword_7A5B0);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v55);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - v15;
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = sub_74D98();
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  v21 = __chkstk_darwin(v19);
  v54 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v60 = &v50 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(a2 + 16))
    {
      v25 = result;
      v26 = sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties);
      sub_74EC8();
      if (*(v25 + 24))
      {
        v50 = v26;
        sub_38F8(&qword_8F858, &qword_7A678);
        v27 = *(v6 + 72);
        v53 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v52 = swift_allocObject();
        swift_beginAccess();
        v51 = v25;
        v28 = *(v25 + 32);
        v29 = v56;
        if (*(v28 + 16))
        {
          v30 = *(v56 + 16);
          v30(v18, v28 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v19);
          v31 = *(v29 + 56);
          v31(v18, 0, 1, v19);
          v30(v16, v60, v19);
        }

        else
        {
          v31 = *(v56 + 56);
          v37 = v56;
          v31(v18, 1, 1, v19);
          (*(v37 + 16))(v16, v60, v19);
        }

        v31(v16, 0, 1, v19);
        v38 = v52;
        v39 = v53;
        sub_74EB8();
        sub_3D48(v16, &qword_8F6C0, &qword_7A5B0);
        sub_3D48(v18, &qword_8F6C0, &qword_7A5B0);
        sub_FCE0(v38 + v39, v13, &qword_8F6C0, &qword_7A5B0);
        sub_1B748(v13, v10, &qword_8F6C0, &qword_7A5B0);
        v40 = v56;
        v41 = (*(v56 + 48))(v10, 1, v19);
        v42 = v51;
        if (v41 == 1)
        {
          sub_3D48(v10, &qword_8F6C0, &qword_7A5B0);
          v43 = _swiftEmptyArrayStorage;
          v44 = v60;
        }

        else
        {
          v45 = *(v40 + 32);
          v46 = v54;
          v45(v54, v10, v19);
          v43 = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_677F4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
          }

          v48 = *(v43 + 2);
          v47 = *(v43 + 3);
          if (v48 >= v47 >> 1)
          {
            v43 = sub_677F4(v47 > 1, v48 + 1, 1, v43);
          }

          *(v43 + 2) = v48 + 1;
          v45(&v43[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v48], v46, v19);
          v44 = v60;
          v38 = v52;
        }

        swift_setDeallocating();
        sub_3D48(v38 + v53, &qword_8F6C0, &qword_7A5B0);
        swift_deallocClassInstance();
        (*(v40 + 8))(v44, v19);
        v49 = *(v42 + 32);
        *(v42 + 32) = v43;
      }

      else
      {
        sub_38F8(&qword_8F850, &unk_7AD20);
        v32 = v56;
        v33 = *(v56 + 72);
        v34 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_79BF0;
        v36 = v60;
        (*(v32 + 16))(v35 + v34, v60, v19);
        swift_beginAccess();
        sub_67018(v35);
        swift_endAccess();

        return (*(v32 + 8))(v36, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

char *sub_32FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7)
{
  v161 = a6;
  v164 = a4;
  v166 = a3;
  v163 = a2;
  v179 = a1;
  v9 = sub_74D98();
  v154 = *(v9 - 8);
  v10 = *(v154 + 64);
  v11 = __chkstk_darwin(v9);
  v153 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v149 - v13;
  v162 = sub_752D8();
  v160 = *(v162 - 8);
  v15 = *(v160 + 64);
  __chkstk_darwin(v162);
  v158 = v16;
  v159 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_38F8(&qword_8F830, &qword_7A660);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v168 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v172 = &v149 - v21;
  v22 = sub_74CA8();
  v186 = *(v22 - 8);
  v23 = *(v186 + 64);
  v24 = __chkstk_darwin(v22);
  v185 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v167 = &v149 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v149 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v149 - v32;
  v34 = __chkstk_darwin(v31);
  v184 = &v149 - v35;
  __chkstk_darwin(v34);
  v183 = &v149 - v36;
  v175 = sub_754B8();
  v174 = *(v175 - 8);
  v37 = *(v174 + 64);
  __chkstk_darwin(v175);
  v173 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_751D8();
  v178 = *(v195 - 8);
  v39 = *(v178 + 64);
  v40 = __chkstk_darwin(v195);
  v156 = &v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v190 = &v149 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v149 - v45;
  v47 = __chkstk_darwin(v44);
  v187 = &v149 - v48;
  v49 = __chkstk_darwin(v47);
  v171 = &v149 - v50;
  __chkstk_darwin(v49);
  v177 = &v149 - v51;
  sub_38F8(&qword_8F838, &qword_7A668);
  swift_allocObject();
  v157 = a5;
  v52 = sub_30F04(a5 & 1);
  v197 = _swiftEmptyArrayStorage;
  if (a7)
  {
    v176 = a7;
  }

  else
  {
    v176 = [objc_opt_self() contextForReadingProtectedData];
  }

  v53 = *(v179 + 16);
  if (!v53)
  {
    v78 = a7;
    goto LABEL_25;
  }

  v150 = v14;
  v152 = v30;
  v169 = v52;
  v165 = v33;
  v151 = v9;
  v54 = *(v178 + 16);
  v55 = (*(v178 + 80) + 32) & ~*(v178 + 80);
  v170 = v179 + v55;
  v193 = v54;
  v194 = v178 + 16;
  (v54)(v187);
  v56 = a7;
  v188 = v22;
  v189 = v53;
  v57 = v185;
  v58 = v53;
  if (v53 != 1)
  {
    v79 = *(v178 + 72);
    v181 = (v186 + 8);
    v80 = (v178 + 8);
    v180 = (v178 + 32);
    v182 = v79;
    v81 = v79 + v179 + v55;
    v82 = 1;
    while (1)
    {
      v193(v46, v81, v195);
      if (__OFADD__(v82, 1))
      {
        break;
      }

      v192 = (v82 + 1);
      v83 = v183;
      sub_751B8();
      v84 = v184;
      sub_751B8();
      LODWORD(v191) = sub_74C78();
      v85 = *v181;
      (*v181)(v84, v22);
      v85(v83, v22);
      v86 = *v80;
      if (v191)
      {
        v87 = v187;
        v88 = v195;
        v86(v187, v195);
        (*v180)(v87, v46, v88);
      }

      else
      {
        v86(v46, v195);
      }

      v57 = v185;
      v22 = v188;
      v58 = v189;
      ++v82;
      v81 += v182;
      if (v192 == v189)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_6:
  v60 = v178 + 32;
  v59 = *(v178 + 32);
  v61 = v171;
  v62 = v195;
  v59(v171, v187, v195);
  v59(v177, v61, v62);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_67CB8(0, v58, 0);
  v63 = aBlock[0];
  v187 = *(v60 + 40);
  v191 = (v186 + 32);
  v192 = (v60 - 24);
  v64 = v170;
  do
  {
    v65 = v190;
    v66 = v195;
    v193(v190, v64, v195);
    sub_751B8();
    v67 = *v192;
    (*v192)(v65, v66);
    aBlock[0] = v63;
    v69 = v63[2];
    v68 = v63[3];
    if (v69 >= v68 >> 1)
    {
      sub_67CB8(v68 > 1, v69 + 1, 1);
      v63 = aBlock[0];
    }

    v63[2] = v69 + 1;
    v70 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v71 = *(v186 + 72);
    v72 = v63 + v70 + v71 * v69;
    v73 = *(v186 + 32);
    v74 = v188;
    v73(v72, v57, v188);
    v64 += v187;
    --v58;
  }

  while (v58);
  v75 = v172;
  sub_36D1C(v63, v172);

  v76 = (v186 + 48);
  v77 = *(v186 + 48);
  if (v77(v75, 1, v74) == 1)
  {
    sub_3D48(v75, &qword_8F830, &qword_7A660);
    v67(v177, v195);
LABEL_25:
    v98 = v173;
    sub_75378();
    v99 = sub_754A8();
    v100 = sub_75718();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_0, v99, v100, "Empty step path", v101, 2u);
    }

    (*(v174 + 8))(v98, v175);
    sub_431DC();
    swift_allocError();
    *v102 = 1;
    swift_willThrow();

    v103 = 0;
    goto LABEL_28;
  }

  v180 = v77;
  v181 = v76;
  v185 = v67;
  v182 = v73;
  v73(v165, v75, v74);
  aBlock[0] = _swiftEmptyArrayStorage;
  v89 = v189;
  sub_67CB8(0, v189, 0);
  v90 = aBlock[0];
  v91 = v167;
  v92 = v170;
  do
  {
    v189 = v89;
    v93 = v190;
    v94 = v195;
    v193(v190, v92, v195);
    sub_75198();
    (v185)(v93, v94);
    aBlock[0] = v90;
    v96 = v90[2];
    v95 = v90[3];
    if (v96 >= v95 >> 1)
    {
      sub_67CB8(v95 > 1, v96 + 1, 1);
      v90 = aBlock[0];
    }

    v90[2] = v96 + 1;
    v182(v90 + v70 + v96 * v71, v91, v74);
    v92 += v187;
    v89 = v189 - 1;
  }

  while (v189 != (&dword_0 + 1));
  v97 = v168;
  sub_5DFFC(v90, v168);

  if ((v180)(v97, 1, v74) == 1)
  {
    (*(v186 + 8))(v165, v74);
    sub_3D48(v97, &qword_8F830, &qword_7A660);
    (v185)(v177, v195);
    goto LABEL_25;
  }

  v182(v152, v97, v74);
  v191 = [v161 database];
  v105 = v160;
  v106 = v159;
  v107 = v162;
  (*(v160 + 16))(v159, v163, v162);
  v108 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v109 = (v158 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  v113 = v166;
  *(v112 + 16) = v179;
  *(v112 + 24) = v113;
  (*(v105 + 32))(v112 + v108, v106, v107);
  *(v112 + v109) = v164;
  *(v112 + v110) = v177;
  *(v112 + v111) = v169;
  *(v112 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v197;
  v114 = swift_allocObject();
  v114[2] = sub_43258;
  v114[3] = v112;
  aBlock[4] = sub_FC94;
  aBlock[5] = v114;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87DA0;
  v115 = _Block_copy(aBlock);
  v116 = v176;

  aBlock[0] = 0;
  v117 = v191;
  v118 = [v191 performTransactionWithContext:v116 error:aBlock block:v115 inaccessibilityHandler:0];
  _Block_release(v115);

  v119 = aBlock[0];
  LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

  if (v105)
  {
LABEL_44:
    __break(1u);
  }

  if (v118)
  {
    v191 = v116;
    v120 = v190;
    v121 = v177;
    v122 = v195;
    v123 = v193;
    v193(v190, v177, v195);
    v124 = v183;
    sub_751B8();
    v125 = v185;
    (v185)(v120, v122);
    v126 = v156;
    v123(v156, v121, v122);
    v127 = v184;
    sub_75198();
    v125(v126, v122);
    v128 = v197;

    v129 = v169;
    sub_31278(v124, v127, v128, &unk_87DD8, &unk_87E00, sub_432C0, &unk_87E18);

    v131 = v186 + 8;
    v130 = *(v186 + 8);
    v132 = v188;
    v130(v127, v188);
    v130(v124, v132);
    if (v157)
    {
      v186 = v131;
      v133 = *(v129 + 16);
      sub_38F8(&qword_8F848, &qword_7A670);
      v134 = v155;
      sub_75778();
      if (*(aBlock[0] + 2))
      {
        v135 = v154;
        v136 = v153;
        v137 = v151;
        (*(v154 + 16))(v153, aBlock[0] + ((*(v135 + 80) + 32) & ~*(v135 + 80)), v151);

        sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties);
        sub_74E98();
        (*(v135 + 8))(v136, v137);
      }

      else
      {

        v137 = v151;
      }

      sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties);
      v141 = v150;
      v142 = v165;
      v143 = v152;
      sub_74EC8();
      if (v134)
      {

        v144 = v188;
        v130(v143, v188);
        v130(v142, v144);
        goto LABEL_40;
      }

      sub_38F8(&qword_8F850, &unk_7AD20);
      v145 = v154;
      v146 = *(v154 + 72);
      v194 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v103 = swift_allocObject();
      *(v103 + 1) = xmmword_79BF0;
      (*(v145 + 32))(&v103[v194], v141, v137);

      v147 = v143;
      v148 = v188;
      v130(v147, v188);
      v130(v142, v148);
    }

    else
    {
      v140 = *(v129 + 16);
      sub_38F8(&qword_8F848, &qword_7A670);
      sub_75778();

      v130(v152, v132);
      v130(v165, v132);

      v103 = aBlock[0];
    }

    (v185)(v177, v195);

    return v103;
  }

  sub_74898();

  swift_willThrow();

  v138 = *(v186 + 8);
  v139 = v188;
  v138(v152, v188);
  v138(v165, v139);
LABEL_40:
  (v185)(v177, v195);
  v103 = sub_43258;
LABEL_28:

  sub_43230(v103);
  return v103;
}

char *sub_3444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7)
{
  v161 = a6;
  v164 = a4;
  v166 = a3;
  v163 = a2;
  v179 = a1;
  v9 = sub_74E18();
  v154 = *(v9 - 8);
  v10 = *(v154 + 64);
  v11 = __chkstk_darwin(v9);
  v153 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v149 - v13;
  v162 = sub_75358();
  v160 = *(v162 - 8);
  v15 = *(v160 + 64);
  __chkstk_darwin(v162);
  v158 = v16;
  v159 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_38F8(&qword_8F830, &qword_7A660);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v168 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v172 = &v149 - v21;
  v22 = sub_74CA8();
  v186 = *(v22 - 8);
  v23 = *(v186 + 64);
  v24 = __chkstk_darwin(v22);
  v185 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v167 = &v149 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v149 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v149 - v32;
  v34 = __chkstk_darwin(v31);
  v184 = &v149 - v35;
  __chkstk_darwin(v34);
  v183 = &v149 - v36;
  v175 = sub_754B8();
  v174 = *(v175 - 8);
  v37 = *(v174 + 64);
  __chkstk_darwin(v175);
  v173 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_751D8();
  v178 = *(v195 - 8);
  v39 = *(v178 + 64);
  v40 = __chkstk_darwin(v195);
  v156 = &v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v190 = &v149 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v149 - v45;
  v47 = __chkstk_darwin(v44);
  v187 = &v149 - v48;
  v49 = __chkstk_darwin(v47);
  v171 = &v149 - v50;
  __chkstk_darwin(v49);
  v177 = &v149 - v51;
  sub_38F8(&qword_8F898, &qword_7A6A8);
  swift_allocObject();
  v157 = a5;
  v52 = sub_30F04(a5 & 1);
  v197 = _swiftEmptyArrayStorage;
  if (a7)
  {
    v176 = a7;
  }

  else
  {
    v176 = [objc_opt_self() contextForReadingProtectedData];
  }

  v53 = *(v179 + 16);
  if (!v53)
  {
    v78 = a7;
    goto LABEL_25;
  }

  v150 = v14;
  v152 = v30;
  v169 = v52;
  v165 = v33;
  v151 = v9;
  v54 = *(v178 + 16);
  v55 = (*(v178 + 80) + 32) & ~*(v178 + 80);
  v170 = v179 + v55;
  v193 = v54;
  v194 = v178 + 16;
  (v54)(v187);
  v56 = a7;
  v188 = v22;
  v189 = v53;
  v57 = v185;
  v58 = v53;
  if (v53 != 1)
  {
    v79 = *(v178 + 72);
    v181 = (v186 + 8);
    v80 = (v178 + 8);
    v180 = (v178 + 32);
    v182 = v79;
    v81 = v79 + v179 + v55;
    v82 = 1;
    while (1)
    {
      v193(v46, v81, v195);
      if (__OFADD__(v82, 1))
      {
        break;
      }

      v192 = (v82 + 1);
      v83 = v183;
      sub_751B8();
      v84 = v184;
      sub_751B8();
      LODWORD(v191) = sub_74C78();
      v85 = *v181;
      (*v181)(v84, v22);
      v85(v83, v22);
      v86 = *v80;
      if (v191)
      {
        v87 = v187;
        v88 = v195;
        v86(v187, v195);
        (*v180)(v87, v46, v88);
      }

      else
      {
        v86(v46, v195);
      }

      v57 = v185;
      v22 = v188;
      v58 = v189;
      ++v82;
      v81 += v182;
      if (v192 == v189)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_6:
  v60 = v178 + 32;
  v59 = *(v178 + 32);
  v61 = v171;
  v62 = v195;
  v59(v171, v187, v195);
  v59(v177, v61, v62);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_67CB8(0, v58, 0);
  v63 = aBlock[0];
  v187 = *(v60 + 40);
  v191 = (v186 + 32);
  v192 = (v60 - 24);
  v64 = v170;
  do
  {
    v65 = v190;
    v66 = v195;
    v193(v190, v64, v195);
    sub_751B8();
    v67 = *v192;
    (*v192)(v65, v66);
    aBlock[0] = v63;
    v69 = v63[2];
    v68 = v63[3];
    if (v69 >= v68 >> 1)
    {
      sub_67CB8(v68 > 1, v69 + 1, 1);
      v63 = aBlock[0];
    }

    v63[2] = v69 + 1;
    v70 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v71 = *(v186 + 72);
    v72 = v63 + v70 + v71 * v69;
    v73 = *(v186 + 32);
    v74 = v188;
    v73(v72, v57, v188);
    v64 += v187;
    --v58;
  }

  while (v58);
  v75 = v172;
  sub_36D1C(v63, v172);

  v76 = (v186 + 48);
  v77 = *(v186 + 48);
  if (v77(v75, 1, v74) == 1)
  {
    sub_3D48(v75, &qword_8F830, &qword_7A660);
    v67(v177, v195);
LABEL_25:
    v98 = v173;
    sub_75378();
    v99 = sub_754A8();
    v100 = sub_75718();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_0, v99, v100, "Empty step path", v101, 2u);
    }

    (*(v174 + 8))(v98, v175);
    sub_431DC();
    swift_allocError();
    *v102 = 1;
    swift_willThrow();

    v103 = 0;
    goto LABEL_28;
  }

  v180 = v77;
  v181 = v76;
  v185 = v67;
  v182 = v73;
  v73(v165, v75, v74);
  aBlock[0] = _swiftEmptyArrayStorage;
  v89 = v189;
  sub_67CB8(0, v189, 0);
  v90 = aBlock[0];
  v91 = v167;
  v92 = v170;
  do
  {
    v189 = v89;
    v93 = v190;
    v94 = v195;
    v193(v190, v92, v195);
    sub_75198();
    (v185)(v93, v94);
    aBlock[0] = v90;
    v96 = v90[2];
    v95 = v90[3];
    if (v96 >= v95 >> 1)
    {
      sub_67CB8(v95 > 1, v96 + 1, 1);
      v90 = aBlock[0];
    }

    v90[2] = v96 + 1;
    v182(v90 + v70 + v96 * v71, v91, v74);
    v92 += v187;
    v89 = v189 - 1;
  }

  while (v189 != (&dword_0 + 1));
  v97 = v168;
  sub_5DFFC(v90, v168);

  if ((v180)(v97, 1, v74) == 1)
  {
    (*(v186 + 8))(v165, v74);
    sub_3D48(v97, &qword_8F830, &qword_7A660);
    (v185)(v177, v195);
    goto LABEL_25;
  }

  v182(v152, v97, v74);
  v191 = [v161 database];
  v105 = v160;
  v106 = v159;
  v107 = v162;
  (*(v160 + 16))(v159, v163, v162);
  v108 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v109 = (v158 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  v113 = v166;
  *(v112 + 16) = v179;
  *(v112 + 24) = v113;
  (*(v105 + 32))(v112 + v108, v106, v107);
  *(v112 + v109) = v164;
  *(v112 + v110) = v177;
  *(v112 + v111) = v169;
  *(v112 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v197;
  v114 = swift_allocObject();
  v114[2] = sub_433C0;
  v114[3] = v112;
  aBlock[4] = sub_1008C;
  aBlock[5] = v114;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_87F80;
  v115 = _Block_copy(aBlock);
  v116 = v176;

  aBlock[0] = 0;
  v117 = v191;
  v118 = [v191 performTransactionWithContext:v116 error:aBlock block:v115 inaccessibilityHandler:0];
  _Block_release(v115);

  v119 = aBlock[0];
  LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

  if (v105)
  {
LABEL_44:
    __break(1u);
  }

  if (v118)
  {
    v191 = v116;
    v120 = v190;
    v121 = v177;
    v122 = v195;
    v123 = v193;
    v193(v190, v177, v195);
    v124 = v183;
    sub_751B8();
    v125 = v185;
    (v185)(v120, v122);
    v126 = v156;
    v123(v156, v121, v122);
    v127 = v184;
    sub_75198();
    v125(v126, v122);
    v128 = v197;

    v129 = v169;
    sub_31278(v124, v127, v128, &unk_87FB8, &unk_87FE0, sub_434D0, &unk_87FF8);

    v131 = v186 + 8;
    v130 = *(v186 + 8);
    v132 = v188;
    v130(v127, v188);
    v130(v124, v132);
    if (v157)
    {
      v186 = v131;
      v133 = *(v129 + 16);
      sub_38F8(&qword_8F8A0, &qword_7A6B0);
      v134 = v155;
      sub_75778();
      if (*(aBlock[0] + 2))
      {
        v135 = v154;
        v136 = v153;
        v137 = v151;
        (*(v154 + 16))(v153, aBlock[0] + ((*(v135 + 80) + 32) & ~*(v135 + 80)), v151);

        sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties);
        sub_74E98();
        (*(v135 + 8))(v136, v137);
      }

      else
      {

        v137 = v151;
      }

      sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties);
      v141 = v150;
      v142 = v165;
      v143 = v152;
      sub_74EC8();
      if (v134)
      {

        v144 = v188;
        v130(v143, v188);
        v130(v142, v144);
        goto LABEL_40;
      }

      sub_38F8(&qword_8F8A8, &unk_7AD60);
      v145 = v154;
      v146 = *(v154 + 72);
      v194 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v103 = swift_allocObject();
      *(v103 + 1) = xmmword_79BF0;
      (*(v145 + 32))(&v103[v194], v141, v137);

      v147 = v143;
      v148 = v188;
      v130(v147, v188);
      v130(v142, v148);
    }

    else
    {
      v140 = *(v129 + 16);
      sub_38F8(&qword_8F8A0, &qword_7A6B0);
      sub_75778();

      v130(v152, v132);
      v130(v165, v132);

      v103 = aBlock[0];
    }

    (v185)(v177, v195);

    return v103;
  }

  sub_74898();

  swift_willThrow();

  v138 = *(v186 + 8);
  v139 = v188;
  v138(v152, v188);
  v138(v165, v139);
LABEL_40:
  (v185)(v177, v195);
  v103 = sub_433C0;
LABEL_28:

  sub_43230(v103);
  return v103;
}

char *sub_358B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7)
{
  v161 = a6;
  v164 = a4;
  v166 = a3;
  v163 = a2;
  v179 = a1;
  v9 = sub_74A88();
  v154 = *(v9 - 8);
  v10 = *(v154 + 64);
  v11 = __chkstk_darwin(v9);
  v153 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v149 - v13;
  v162 = sub_74C38();
  v160 = *(v162 - 8);
  v15 = *(v160 + 64);
  __chkstk_darwin(v162);
  v158 = v16;
  v159 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_38F8(&qword_8F830, &qword_7A660);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v168 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v172 = &v149 - v21;
  v22 = sub_74CA8();
  v186 = *(v22 - 8);
  v23 = *(v186 + 64);
  v24 = __chkstk_darwin(v22);
  v185 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v167 = &v149 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v149 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v149 - v32;
  v34 = __chkstk_darwin(v31);
  v184 = &v149 - v35;
  __chkstk_darwin(v34);
  v183 = &v149 - v36;
  v175 = sub_754B8();
  v174 = *(v175 - 8);
  v37 = *(v174 + 64);
  __chkstk_darwin(v175);
  v173 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_751D8();
  v178 = *(v195 - 8);
  v39 = *(v178 + 64);
  v40 = __chkstk_darwin(v195);
  v156 = &v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v190 = &v149 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v149 - v45;
  v47 = __chkstk_darwin(v44);
  v187 = &v149 - v48;
  v49 = __chkstk_darwin(v47);
  v171 = &v149 - v50;
  __chkstk_darwin(v49);
  v177 = &v149 - v51;
  sub_38F8(&qword_8F8D0, &qword_7A6D0);
  swift_allocObject();
  v157 = a5;
  v52 = sub_30F04(a5 & 1);
  v197 = _swiftEmptyArrayStorage;
  if (a7)
  {
    v176 = a7;
  }

  else
  {
    v176 = [objc_opt_self() contextForReadingProtectedData];
  }

  v53 = *(v179 + 16);
  if (!v53)
  {
    v78 = a7;
    goto LABEL_25;
  }

  v150 = v14;
  v152 = v30;
  v169 = v52;
  v165 = v33;
  v151 = v9;
  v54 = *(v178 + 16);
  v55 = (*(v178 + 80) + 32) & ~*(v178 + 80);
  v170 = v179 + v55;
  v193 = v54;
  v194 = v178 + 16;
  (v54)(v187);
  v56 = a7;
  v188 = v22;
  v189 = v53;
  v57 = v185;
  v58 = v53;
  if (v53 != 1)
  {
    v79 = *(v178 + 72);
    v181 = (v186 + 8);
    v80 = (v178 + 8);
    v180 = (v178 + 32);
    v182 = v79;
    v81 = v79 + v179 + v55;
    v82 = 1;
    while (1)
    {
      v193(v46, v81, v195);
      if (__OFADD__(v82, 1))
      {
        break;
      }

      v192 = (v82 + 1);
      v83 = v183;
      sub_751B8();
      v84 = v184;
      sub_751B8();
      LODWORD(v191) = sub_74C78();
      v85 = *v181;
      (*v181)(v84, v22);
      v85(v83, v22);
      v86 = *v80;
      if (v191)
      {
        v87 = v187;
        v88 = v195;
        v86(v187, v195);
        (*v180)(v87, v46, v88);
      }

      else
      {
        v86(v46, v195);
      }

      v57 = v185;
      v22 = v188;
      v58 = v189;
      ++v82;
      v81 += v182;
      if (v192 == v189)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_6:
  v60 = v178 + 32;
  v59 = *(v178 + 32);
  v61 = v171;
  v62 = v195;
  v59(v171, v187, v195);
  v59(v177, v61, v62);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_67CB8(0, v58, 0);
  v63 = aBlock[0];
  v187 = *(v60 + 40);
  v191 = (v186 + 32);
  v192 = (v60 - 24);
  v64 = v170;
  do
  {
    v65 = v190;
    v66 = v195;
    v193(v190, v64, v195);
    sub_751B8();
    v67 = *v192;
    (*v192)(v65, v66);
    aBlock[0] = v63;
    v69 = v63[2];
    v68 = v63[3];
    if (v69 >= v68 >> 1)
    {
      sub_67CB8(v68 > 1, v69 + 1, 1);
      v63 = aBlock[0];
    }

    v63[2] = v69 + 1;
    v70 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v71 = *(v186 + 72);
    v72 = v63 + v70 + v71 * v69;
    v73 = *(v186 + 32);
    v74 = v188;
    v73(v72, v57, v188);
    v64 += v187;
    --v58;
  }

  while (v58);
  v75 = v172;
  sub_36D1C(v63, v172);

  v76 = (v186 + 48);
  v77 = *(v186 + 48);
  if (v77(v75, 1, v74) == 1)
  {
    sub_3D48(v75, &qword_8F830, &qword_7A660);
    v67(v177, v195);
LABEL_25:
    v98 = v173;
    sub_75378();
    v99 = sub_754A8();
    v100 = sub_75718();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_0, v99, v100, "Empty step path", v101, 2u);
    }

    (*(v174 + 8))(v98, v175);
    sub_431DC();
    swift_allocError();
    *v102 = 1;
    swift_willThrow();

    v103 = 0;
    goto LABEL_28;
  }

  v180 = v77;
  v181 = v76;
  v185 = v67;
  v182 = v73;
  v73(v165, v75, v74);
  aBlock[0] = _swiftEmptyArrayStorage;
  v89 = v189;
  sub_67CB8(0, v189, 0);
  v90 = aBlock[0];
  v91 = v167;
  v92 = v170;
  do
  {
    v189 = v89;
    v93 = v190;
    v94 = v195;
    v193(v190, v92, v195);
    sub_75198();
    (v185)(v93, v94);
    aBlock[0] = v90;
    v96 = v90[2];
    v95 = v90[3];
    if (v96 >= v95 >> 1)
    {
      sub_67CB8(v95 > 1, v96 + 1, 1);
      v90 = aBlock[0];
    }

    v90[2] = v96 + 1;
    v182(v90 + v70 + v96 * v71, v91, v74);
    v92 += v187;
    v89 = v189 - 1;
  }

  while (v189 != (&dword_0 + 1));
  v97 = v168;
  sub_5DFFC(v90, v168);

  if ((v180)(v97, 1, v74) == 1)
  {
    (*(v186 + 8))(v165, v74);
    sub_3D48(v97, &qword_8F830, &qword_7A660);
    (v185)(v177, v195);
    goto LABEL_25;
  }

  v182(v152, v97, v74);
  v191 = [v161 database];
  v105 = v160;
  v106 = v159;
  v107 = v162;
  (*(v160 + 16))(v159, v163, v162);
  v108 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v109 = (v158 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
  v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  v113 = v166;
  *(v112 + 16) = v179;
  *(v112 + 24) = v113;
  (*(v105 + 32))(v112 + v108, v106, v107);
  *(v112 + v109) = v164;
  *(v112 + v110) = v177;
  *(v112 + v111) = v169;
  *(v112 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v197;
  v114 = swift_allocObject();
  v114[2] = sub_43724;
  v114[3] = v112;
  aBlock[4] = sub_1008C;
  aBlock[5] = v114;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_88160;
  v115 = _Block_copy(aBlock);
  v116 = v176;

  aBlock[0] = 0;
  v117 = v191;
  v118 = [v191 performTransactionWithContext:v116 error:aBlock block:v115 inaccessibilityHandler:0];
  _Block_release(v115);

  v119 = aBlock[0];
  LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

  if (v105)
  {
LABEL_44:
    __break(1u);
  }

  if (v118)
  {
    v191 = v116;
    v120 = v190;
    v121 = v177;
    v122 = v195;
    v123 = v193;
    v193(v190, v177, v195);
    v124 = v183;
    sub_751B8();
    v125 = v185;
    (v185)(v120, v122);
    v126 = v156;
    v123(v156, v121, v122);
    v127 = v184;
    sub_75198();
    v125(v126, v122);
    v128 = v197;

    v129 = v169;
    sub_31278(v124, v127, v128, &unk_88198, &unk_881C0, sub_438AC, &unk_881D8);

    v131 = v186 + 8;
    v130 = *(v186 + 8);
    v132 = v188;
    v130(v127, v188);
    v130(v124, v132);
    if (v157)
    {
      v186 = v131;
      v133 = *(v129 + 16);
      sub_38F8(&qword_8F8D8, &qword_7A6D8);
      v134 = v155;
      sub_75778();
      if (*(aBlock[0] + 2))
      {
        v135 = v154;
        v136 = v153;
        v137 = v151;
        (*(v154 + 16))(v153, aBlock[0] + ((*(v135 + 80) + 32) & ~*(v135 + 80)), v151);

        sub_43B30(&qword_8F8E0, &type metadata accessor for FitnessPlusProperties);
        sub_74E98();
        (*(v135 + 8))(v136, v137);
      }

      else
      {

        v137 = v151;
      }

      sub_43B30(&qword_8F8E0, &type metadata accessor for FitnessPlusProperties);
      v141 = v150;
      v142 = v165;
      v143 = v152;
      sub_74EC8();
      if (v134)
      {

        v144 = v188;
        v130(v143, v188);
        v130(v142, v144);
        goto LABEL_40;
      }

      sub_38F8(&qword_8F8E8, &unk_7AD80);
      v145 = v154;
      v146 = *(v154 + 72);
      v194 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v103 = swift_allocObject();
      *(v103 + 1) = xmmword_79BF0;
      (*(v145 + 32))(&v103[v194], v141, v137);

      v147 = v143;
      v148 = v188;
      v130(v147, v188);
      v130(v142, v148);
    }

    else
    {
      v140 = *(v129 + 16);
      sub_38F8(&qword_8F8D8, &qword_7A6D8);
      sub_75778();

      v130(v152, v132);
      v130(v165, v132);

      v103 = aBlock[0];
    }

    (v185)(v177, v195);

    return v103;
  }

  sub_74898();

  swift_willThrow();

  v138 = *(v186 + 8);
  v139 = v188;
  v138(v152, v188);
  v138(v165, v139);
LABEL_40:
  (v185)(v177, v195);
  v103 = sub_43724;
LABEL_28:

  sub_43230(v103);
  return v103;
}

uint64_t sub_36D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
        sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex);
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

uint64_t sub_36FCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v139 = a8;
  v137 = a7;
  v138 = a6;
  v142 = a5;
  v143 = a4;
  v136 = sub_74C38();
  v135 = *(v136 - 8);
  v12 = *(v135 + 64);
  __chkstk_darwin(v136);
  v133 = v13;
  v134 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_74968();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v123 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v120 - v20;
  __chkstk_darwin(v19);
  v23 = &v120 - v22;
  v24 = sub_754B8();
  v141 = *(v24 - 8);
  v25 = *(v141 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v130 = &v120 - v30;
  __chkstk_darwin(v29);
  v32 = &v120 - v31;
  v132 = type metadata accessor for FitnessPlusPropertyRecordEntity();
  v140 = [a1 protectedDatabase];
  if (!v140)
  {
    sub_75378();
    v61 = sub_754A8();
    v62 = sub_75718();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "Failed to insert: no protected database", v63, 2u);
    }

    (*(v141 + 8))(v32, v24);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v64 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v120 = v21;
  v121 = v28;
  v131 = v23;
  v127 = v15;
  v128 = v14;
  v122 = a2;
  v129 = v24;
  v33 = *(a3 + 16);
  v34 = _swiftEmptyArrayStorage;
  if (v33)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_67C58(0, v33, 0);
    v34 = aBlock;
    v35 = *(aBlock + 16);
    v36 = 16 * v35;
    do
    {
      aBlock = v34;
      v37 = *(v34 + 3);
      v38 = v35 + 1;
      if (v35 >= v37 >> 1)
      {
        sub_67C58((v37 > 1), v35 + 1, 1);
        v34 = aBlock;
      }

      *(v34 + 2) = v38;
      v39 = &v34[v36];
      *(v39 + 4) = 0xD00000000000002BLL;
      *(v39 + 5) = 0x8000000000078DD0;
      v36 += 16;
      v35 = v38;
      --v33;
    }

    while (v33);
  }

  v40 = sub_4D28(v143);
  v41 = sub_39E34(8, v40, sub_6E0D4);
  v43 = v42;

  v44 = sub_5AD68();
  sub_38F8(&qword_8F678, &qword_7A4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_79BF0;
  *(inited + 32) = v41;
  *(inited + 40) = v43;
  aBlock = v44;
  sub_66C3C(inited);
  v46 = aBlock;
  v47 = *(aBlock + 16);
  v126 = a3;
  if (v47)
  {
    v48 = 0;
    aBlock = 541347393;
    v146 = 0xE400000000000000;
    v49 = _swiftEmptyArrayStorage;
LABEL_9:
    v50 = 16 * v48 + 40;
    while (v47 != v48)
    {
      if (v48 >= *(v46 + 16))
      {
        __break(1u);
      }

      ++v48;
      v51 = v50 + 16;
      v52 = *(v46 + v50);
      v50 += 16;
      if (v52)
      {
        v53 = *(v46 + v51 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_67180(0, *(v49 + 2) + 1, 1, v49);
        }

        v55 = *(v49 + 2);
        v54 = *(v49 + 3);
        if (v55 >= v54 >> 1)
        {
          v49 = sub_67180((v54 > 1), v55 + 1, 1, v49);
        }

        *(v49 + 2) = v55 + 1;
        v56 = &v49[16 * v55];
        *(v56 + 4) = v53;
        *(v56 + 5) = v52;
        goto LABEL_9;
      }
    }

    v144 = v49;
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
    v57 = sub_75538();
    v59 = v58;

    v151._countAndFlagsBits = v57;
    v151._object = v59;
    sub_75608(v151);

    v60 = v146;
    v124 = aBlock;
  }

  else
  {

    v124 = 0;
    v60 = 0;
  }

  v125 = a9;
  aBlock = sub_6F270();
  sub_38F8(&qword_8F280, &unk_7ABA0);
  sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
  v65 = sub_75538();
  v67 = v66;

  aBlock = 0;
  v146 = 0xE000000000000000;
  sub_75908(88);
  v152._countAndFlagsBits = 0x205443454C4553;
  v152._object = 0xE700000000000000;
  sub_75608(v152);
  v153._countAndFlagsBits = v65;
  v153._object = v67;
  sub_75608(v153);

  v154._countAndFlagsBits = 0x204D4F524620;
  v154._object = 0xE600000000000000;
  sub_75608(v154);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = [ObjCClassFromMetadata databaseTable];
  v70 = sub_755A8();
  v72 = v71;

  v155._countAndFlagsBits = v70;
  v155._object = v72;
  sub_75608(v155);

  v156._countAndFlagsBits = 0x2820455245485720;
  v156._object = 0xE800000000000000;
  sub_75608(v156);
  v144 = v34;
  v73 = sub_75538();
  v75 = v74;

  v157._countAndFlagsBits = v73;
  v157._object = v75;
  sub_75608(v157);

  v158._countAndFlagsBits = 0x20444E412029;
  v158._object = 0xE600000000000000;
  sub_75608(v158);
  v159._countAndFlagsBits = 0x6E6F6973726576;
  v159._object = 0xE700000000000000;
  sub_75608(v159);
  v160._object = 0x8000000000078E00;
  v160._countAndFlagsBits = 0xD00000000000001ELL;
  sub_75608(v160);
  v76 = [ObjCClassFromMetadata databaseTable];
  v77 = sub_755A8();
  v79 = v78;

  v161._countAndFlagsBits = v77;
  v161._object = v79;
  sub_75608(v161);

  v162._countAndFlagsBits = 8233;
  v162._object = 0xE200000000000000;
  sub_75608(v162);
  if (v60)
  {
    v80._countAndFlagsBits = v124;
  }

  else
  {
    v80._countAndFlagsBits = 0;
  }

  if (v60)
  {
    v81 = v60;
  }

  else
  {
    v81 = 0xE000000000000000;
  }

  v80._object = v81;
  sub_75608(v80);

  v163._countAndFlagsBits = 0x4220524544524F20;
  v163._object = 0xEA00000000002059;
  sub_75608(v163);
  v164._countAndFlagsBits = 0x6361437472617473;
  v164._object = 0xEF7865646E496568;
  sub_75608(v164);
  v165._countAndFlagsBits = 0x3B43534120;
  v165._object = 0xE500000000000000;
  sub_75608(v165);
  v82 = v131;
  sub_74958();
  v144 = 0;
  v83 = sub_75598();

  v84 = v135;
  v85 = v134;
  v86 = v136;
  (*(v135 + 16))(v134, v142, v136);
  v87 = (*(v84 + 80) + 24) & ~*(v84 + 80);
  v88 = (v133 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  *(v89 + 16) = v126;
  (*(v84 + 32))(v89 + v87, v85, v86);
  *(v89 + v88) = v143;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_439BC;
  *(v90 + 24) = v89;
  v149 = sub_303D0;
  v150 = v90;
  aBlock = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_644E0;
  v148 = &unk_88250;
  v91 = _Block_copy(&aBlock);

  v92 = swift_allocObject();
  v92[2] = v138;
  v92[3] = &v144;
  v93 = v139;
  v92[4] = v137;
  v92[5] = v93;
  v92[6] = v125;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_43B00;
  *(v94 + 24) = v92;
  v149 = sub_43BA8;
  v150 = v94;
  aBlock = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_4F494;
  v148 = &unk_882C8;
  v95 = _Block_copy(&aBlock);

  aBlock = 0;
  v96 = v140;
  LODWORD(v84) = [v140 executeSQL:v83 error:&aBlock bindingHandler:v91 enumerationHandler:v95];
  _Block_release(v95);
  _Block_release(v91);

  if (!v84)
  {
    v110 = aBlock;
    sub_74898();

    swift_willThrow();
    (*(v127 + 8))(v82, v128);
    v111 = v121;
    sub_75378();
    swift_errorRetain();
    v112 = sub_754A8();
    v113 = sub_75718();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      swift_errorRetain();
      v116 = _swift_stdlib_bridgeErrorToNSError();
      *(v114 + 4) = v116;
      *v115 = v116;
      _os_log_impl(&dword_0, v112, v113, "Failed to query: %@", v114, 0xCu);
      sub_3D48(v115, &unk_8EB30, &unk_7A270);
    }

    (*(v141 + 8))(v111, v129);
    v117 = v122;
    if (v122)
    {
      *v117 = sub_74888();
    }

    return 0;
  }

  v143 = v89;
  v97 = aBlock;
  v98 = v130;
  sub_75378();
  v99 = v82;
  v100 = v127;
  v101 = v120;
  v102 = v128;
  (*(v127 + 16))(v120, v99, v128);
  v103 = sub_754A8();
  v104 = sub_75738();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 134218240;
    swift_beginAccess();
    *(v105 + 4) = v144;
    *(v105 + 12) = 2048;
    v106 = v123;
    sub_74958();
    sub_748F8();
    v108 = v107;
    v109 = *(v100 + 8);
    v109(v106, v102);
    v109(v101, v102);
    *(v105 + 14) = v108;
    _os_log_impl(&dword_0, v103, v104, "Queried %ld records in %fs", v105, 0x16u);

    (*(v141 + 8))(v98, v129);
    v109(v131, v102);
  }

  else
  {

    v119 = *(v100 + 8);
    v119(v101, v102);
    (*(v141 + 8))(v98, v129);
    v119(v131, v102);
  }

  return 1;
}

uint64_t sub_37F34(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v139 = a8;
  v137 = a7;
  v138 = a6;
  v142 = a5;
  v143 = a4;
  v136 = sub_75358();
  v135 = *(v136 - 8);
  v12 = *(v135 + 64);
  __chkstk_darwin(v136);
  v133 = v13;
  v134 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_74968();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v123 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v120 - v20;
  __chkstk_darwin(v19);
  v23 = &v120 - v22;
  v24 = sub_754B8();
  v141 = *(v24 - 8);
  v25 = *(v141 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v130 = &v120 - v30;
  __chkstk_darwin(v29);
  v32 = &v120 - v31;
  v132 = type metadata accessor for WorkoutPropertyRecordEntity();
  v140 = [a1 protectedDatabase];
  if (!v140)
  {
    sub_75378();
    v61 = sub_754A8();
    v62 = sub_75718();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "Failed to insert: no protected database", v63, 2u);
    }

    (*(v141 + 8))(v32, v24);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v64 = 0;
      *a2 = sub_74888();
    }

    return 0;
  }

  v120 = v21;
  v121 = v28;
  v131 = v23;
  v127 = v15;
  v128 = v14;
  v122 = a2;
  v129 = v24;
  v33 = *(a3 + 16);
  v34 = _swiftEmptyArrayStorage;
  if (v33)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_67C58(0, v33, 0);
    v34 = aBlock;
    v35 = *(aBlock + 16);
    v36 = 16 * v35;
    do
    {
      aBlock = v34;
      v37 = *(v34 + 3);
      v38 = v35 + 1;
      if (v35 >= v37 >> 1)
      {
        sub_67C58((v37 > 1), v35 + 1, 1);
        v34 = aBlock;
      }

      *(v34 + 2) = v38;
      v39 = &v34[v36];
      *(v39 + 4) = 0xD00000000000002BLL;
      *(v39 + 5) = 0x8000000000078DD0;
      v36 += 16;
      v35 = v38;
      --v33;
    }

    while (v33);
  }

  v40 = sub_4D7C(v143);
  v41 = sub_39E34(9, v40, sub_5B270);
  v43 = v42;

  v44 = sub_5918C();
  sub_38F8(&qword_8F678, &qword_7A4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_79BF0;
  *(inited + 32) = v41;
  *(inited + 40) = v43;
  aBlock = v44;
  sub_66C3C(inited);
  v46 = aBlock;
  v47 = *(aBlock + 16);
  v126 = a3;
  if (v47)
  {
    v48 = 0;
    aBlock = 541347393;
    v146 = 0xE400000000000000;
    v49 = _swiftEmptyArrayStorage;
LABEL_9:
    v50 = 16 * v48 + 40;
    while (v47 != v48)
    {
      if (v48 >= *(v46 + 16))
      {
        __break(1u);
      }

      ++v48;
      v51 = v50 + 16;
      v52 = *(v46 + v50);
      v50 += 16;
      if (v52)
      {
        v53 = *(v46 + v51 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_67180(0, *(v49 + 2) + 1, 1, v49);
        }

        v55 = *(v49 + 2);
        v54 = *(v49 + 3);
        if (v55 >= v54 >> 1)
        {
          v49 = sub_67180((v54 > 1), v55 + 1, 1, v49);
        }

        *(v49 + 2) = v55 + 1;
        v56 = &v49[16 * v55];
        *(v56 + 4) = v53;
        *(v56 + 5) = v52;
        goto LABEL_9;
      }
    }

    v144 = v49;
    sub_38F8(&qword_8F280, &unk_7ABA0);
    sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
    v57 = sub_75538();
    v59 = v58;

    v151._countAndFlagsBits = v57;
    v151._object = v59;
    sub_75608(v151);

    v60 = v146;
    v124 = aBlock;
  }

  else
  {

    v124 = 0;
    v60 = 0;
  }

  v125 = a9;
  aBlock = sub_5C16C();
  sub_38F8(&qword_8F280, &unk_7ABA0);
  sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0);
  v65 = sub_75538();
  v67 = v66;

  aBlock = 0;
  v146 = 0xE000000000000000;
  sub_75908(88);
  v152._countAndFlagsBits = 0x205443454C4553;
  v152._object = 0xE700000000000000;
  sub_75608(v152);
  v153._countAndFlagsBits = v65;
  v153._object = v67;
  sub_75608(v153);

  v154._countAndFlagsBits = 0x204D4F524620;
  v154._object = 0xE600000000000000;
  sub_75608(v154);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = [ObjCClassFromMetadata databaseTable];
  v70 = sub_755A8();
  v72 = v71;

  v155._countAndFlagsBits = v70;
  v155._object = v72;
  sub_75608(v155);

  v156._countAndFlagsBits = 0x2820455245485720;
  v156._object = 0xE800000000000000;
  sub_75608(v156);
  v144 = v34;
  v73 = sub_75538();
  v75 = v74;

  v157._countAndFlagsBits = v73;
  v157._object = v75;
  sub_75608(v157);

  v158._countAndFlagsBits = 0x20444E412029;
  v158._object = 0xE600000000000000;
  sub_75608(v158);
  v159._countAndFlagsBits = 0x6E6F6973726576;
  v159._object = 0xE700000000000000;
  sub_75608(v159);
  v160._object = 0x8000000000078E00;
  v160._countAndFlagsBits = 0xD00000000000001ELL;
  sub_75608(v160);
  v76 = [ObjCClassFromMetadata databaseTable];
  v77 = sub_755A8();
  v79 = v78;

  v161._countAndFlagsBits = v77;
  v161._object = v79;
  sub_75608(v161);

  v162._countAndFlagsBits = 8233;
  v162._object = 0xE200000000000000;
  sub_75608(v162);
  if (v60)
  {
    v80._countAndFlagsBits = v124;
  }

  else
  {
    v80._countAndFlagsBits = 0;
  }

  if (v60)
  {
    v81 = v60;
  }

  else
  {
    v81 = 0xE000000000000000;
  }

  v80._object = v81;
  sub_75608(v80);

  v163._countAndFlagsBits = 0x4220524544524F20;
  v163._object = 0xEA00000000002059;
  sub_75608(v163);
  v164._countAndFlagsBits = 0x6361437472617473;
  v164._object = 0xEF7865646E496568;
  sub_75608(v164);
  v165._countAndFlagsBits = 0x3B43534120;
  v165._object = 0xE500000000000000;
  sub_75608(v165);
  v82 = v131;
  sub_74958();
  v144 = 0;
  v83 = sub_75598();

  v84 = v135;
  v85 = v134;
  v86 = v136;
  (*(v135 + 16))(v134, v142, v136);
  v87 = (*(v84 + 80) + 24) & ~*(v84 + 80);
  v88 = (v133 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  *(v89 + 16) = v126;
  (*(v84 + 32))(v89 + v87, v85, v86);
  *(v89 + v88) = v143;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_435A4;
  *(v90 + 24) = v89;
  v149 = sub_303D0;
  v150 = v90;
  aBlock = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_644E0;
  v148 = &unk_88070;
  v91 = _Block_copy(&aBlock);

  v92 = swift_allocObject();
  v92[2] = v138;
  v92[3] = &v144;
  v93 = v139;
  v92[4] = v137;
  v92[5] = v93;
  v92[6] = v125;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_435E4;
  *(v94 + 24) = v92;
  v149 = sub_43BA8;
  v150 = v94;
  aBlock = _NSConcreteStackBlock;
  v146 = 1107296256;
  v147 = sub_4F494;
  v148 = &unk_880E8;
  v95 = _Block_copy(&aBlock);

  aBlock = 0;
  v96 = v140;
  LODWORD(v84) = [v140 executeSQL:v83 error:&aBlock bindingHandler:v91 enumerationHandler:v95];
  _Block_release(v95);
  _Block_release(v91);

  if (!v84)
  {
    v110 = aBlock;
    sub_74898();

    swift_willThrow();
    (*(v127 + 8))(v82, v128);
    v111 = v121;
    sub_75378();
    swift_errorRetain();
    v112 = sub_754A8();
    v113 = sub_75718();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      swift_errorRetain();
      v116 = _swift_stdlib_bridgeErrorToNSError();
      *(v114 + 4) = v116;
      *v115 = v116;
      _os_log_impl(&dword_0, v112, v113, "Failed to query: %@", v114, 0xCu);
      sub_3D48(v115, &unk_8EB30, &unk_7A270);
    }

    (*(v141 + 8))(v111, v129);
    v117 = v122;
    if (v122)
    {
      *v117 = sub_74888();
    }

    return 0;
  }

  v143 = v89;
  v97 = aBlock;
  v98 = v130;
  sub_75378();
  v99 = v82;
  v100 = v127;
  v101 = v120;
  v102 = v128;
  (*(v127 + 16))(v120, v99, v128);
  v103 = sub_754A8();
  v104 = sub_75738();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 134218240;
    swift_beginAccess();
    *(v105 + 4) = v144;
    *(v105 + 12) = 2048;
    v106 = v123;
    sub_74958();
    sub_748F8();
    v108 = v107;
    v109 = *(v100 + 8);
    v109(v106, v102);
    v109(v101, v102);
    *(v105 + 14) = v108;
    _os_log_impl(&dword_0, v103, v104, "Queried %ld records in %fs", v105, 0x16u);

    (*(v141 + 8))(v98, v129);
    v109(v131, v102);
  }

  else
  {

    v119 = *(v100 + 8);
    v119(v101, v102);
    (*(v141 + 8))(v98, v129);
    v119(v131, v102);
  }

  return 1;
}