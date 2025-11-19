void sub_F38()
{
  v1 = v0;
  v2 = sub_2860();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  (__chkstk_darwin)();
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_2880();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = [v1 delegate];
  if (v13)
  {
    v14 = v13;
    v15 = sub_28A0();
    [v14 diagnosticOperation:v1 logMessage:v15];

    swift_unknownObjectRelease();
  }

  v16 = [objc_allocWithZone(HKHealthStore) init];
  sub_2850();
  v17 = objc_allocWithZone(HKDeviceKeyValueStore);
  v18 = v16;
  v19 = sub_28A0();

  v20 = [v17 initWithProtectionCategory:1 domain:v19 healthStore:v18];

  v37 = v18;
  v21 = dispatch_semaphore_create(0);
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  *(v22 + 24) = v21;
  aBlock[4] = sub_2360;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_15C4;
  aBlock[3] = &unk_43A0;
  v23 = _Block_copy(aBlock);
  v24 = v1;
  v25 = v21;

  v38 = v20;
  [v20 fetchEntriesForKey:0 completion:v23];
  _Block_release(v23);
  sub_2870();
  *v5 = 10;
  v27 = v40;
  v26 = v41;
  (*(v40 + 104))(v5, enum case for DispatchTimeInterval.seconds(_:), v41);
  sub_2890();
  (*(v27 + 8))(v5, v26);
  v28 = *(v6 + 8);
  v29 = v10;
  v30 = v39;
  v28(v29, v39);
  v31 = sub_2900();
  v28(v12, v30);
  v32 = [v24 delegate];
  v33 = v32;
  if (v31)
  {
    if (v32)
    {
      v34 = sub_28A0();
      [v33 diagnosticOperation:v24 logMessage:v34];

      swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  if (!v32)
  {
LABEL_8:

    goto LABEL_9;
  }

  v35 = sub_28A0();
  [v33 diagnosticOperation:v24 logMessage:v35];

  swift_unknownObjectRelease();
LABEL_9:
}

void sub_13B0(unint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    [v1 appendStrongSeparator];
    if (a1 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_2950())
    {
      v11 = v2;
      if (!i)
      {
        break;
      }

      v2 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = sub_2940();
        }

        else
        {
          if (v2 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_20;
          }

          v5 = *(a1 + 8 * v2 + 32);
        }

        v6 = v5;
        v7 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          break;
        }

        sub_16B0(v5);

        ++v2;
        if (v7 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_13:
  }

  else
  {
    v8 = [v1 delegate];
    if (v8)
    {
      v9 = v8;
      sub_2930(24);

      swift_errorRetain();
      sub_240C(0, &qword_8318, sub_23A8);
      v13._countAndFlagsBits = sub_28C0();
      sub_28D0(v13);

      v10 = sub_28A0();

      [v9 diagnosticOperation:v1 logMessage:v10];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_15C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2460(0, &qword_8310, HKDeviceKeyValueStorageGroup_ptr);
    v4 = sub_28F0();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_16B0(void *a1)
{
  v2 = v1;
  sub_240C(0, &qword_8328, &type metadata accessor for TimeZone);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v63 - v6;
  v97 = sub_2840();
  v99 = *(v97 - 8);
  v8 = *(v99 + 8);
  __chkstk_darwin();
  v91 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_27F0();
  v98 = *(v96 - 8);
  v10 = *(v98 + 8);
  __chkstk_darwin();
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_27D0();
  v77 = *(v95 - 8);
  v13 = *(v77 + 64);
  __chkstk_darwin();
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_27B0();
  v79 = *(v94 - 8);
  v16 = *(v79 + 64);
  __chkstk_darwin();
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_27C0();
  v81 = *(v93 - 8);
  v19 = *(v81 + 64);
  __chkstk_darwin();
  v92 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2800();
  *&v73 = *(v90 - 8);
  v21 = *(v73 + 64);
  __chkstk_darwin();
  v89 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2820();
  v71 = *(v88 - 8);
  v23 = *(v71 + 64);
  __chkstk_darwin();
  v100 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a1 deviceContext];
  v26 = [v25 description];
  sub_28B0();

  v27 = sub_28A0();

  [v2 appendString:v27];

  [v2 appendSeparator];
  v28 = objc_allocWithZone(HKTableFormatter);
  isa = sub_28E0().super.isa;
  v30 = [v28 initWithColumnTitles:isa];

  v31 = [a1 storageEntries];
  sub_2460(0, &qword_8330, HKDeviceKeyValueStorageEntry_ptr);
  v32 = sub_28F0();

  v33 = v32;
  if (v32 >> 62)
  {
    goto LABEL_20;
  }

  v34 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
  if (v34)
  {
    do
    {
      v87 = v18;
      v83 = v15;
      v84 = v12;
      v85 = v7;
      v64 = v2;
      v18 = 0;
      v65 = 0;
      v86 = v33 & 0xC000000000000001;
      v66 = v33 & 0xFFFFFFFFFFFFFF8;
      v82 = enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:);
      v81 += 104;
      v80 = enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:);
      v79 += 104;
      v78 = enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:);
      v77 += 104;
      v76 = enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:);
      v75 = v98 + 104;
      v74 = (v99 + 48);
      v69 = (v99 + 32);
      v68 = (v73 + 8);
      v67 = (v71 + 8);
      v73 = xmmword_2CB0;
      v7 = v100;
      v2 = &type metadata for String;
      v71 = v33;
      v72 = v30;
      v70 = v34;
      while (v86)
      {
        v35 = sub_2940();
        v12 = v87;
        v36 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          goto LABEL_18;
        }

LABEL_10:
        v99 = v36;
        sub_24A8();
        v37 = swift_allocObject();
        *(v37 + 16) = v73;
        v38 = [v35 key];
        v39 = sub_28B0();
        v41 = v40;

        *(v37 + 56) = &type metadata for String;
        *(v37 + 32) = v39;
        *(v37 + 40) = v41;
        v101 = 0;
        v42 = [v35 numberValue:&v101];
        v100 = v18;
        if (!v42)
        {
          v51 = v101;
          sub_2760();

          swift_willThrow();

          v65 = 0;
          v49 = (v37 + 64);
          *(v37 + 88) = &type metadata for String;
LABEL_14:
          v50 = v85;
          *v49 = 45;
          v48 = 0xE100000000000000;
          goto LABEL_15;
        }

        v43 = v42;
        v44 = v101;
        v45 = [v43 stringValue];

        v46 = sub_28B0();
        v48 = v47;

        v49 = (v37 + 64);
        *(v37 + 88) = &type metadata for String;
        if (!v48)
        {
          goto LABEL_14;
        }

        *v49 = v46;
        v50 = v85;
LABEL_15:
        v52 = v92;
        *(v37 + 72) = v48;
        v53 = [v35 modificationDate];
        sub_2810();

        (*v81)(v52, v82, v93);
        (*v79)(v12, v80, v94);
        (*v77)(v83, v78, v95);
        (*v75)(v84, v76, v96);
        sub_2830();
        v54 = v97;
        v55 = (*v74)(v50, 1, v97);
        v98 = v35;
        if (v55 == 1)
        {
          __break(1u);
        }

        (*v69)(v91, v50, v54);
        v56 = v89;
        sub_27E0();
        v57 = sub_27A0();
        v15 = v58;
        (*v68)(v56, v90);
        (*v67)(v7, v88);
        v2 = &type metadata for String;
        *(v37 + 120) = &type metadata for String;
        *(v37 + 96) = v57;
        *(v37 + 104) = v15;
        v59 = sub_28E0().super.isa;

        v30 = v72;
        [v72 appendHeterogenousRow:v59];

        v18 = (v100 + 1);
        v33 = v71;
        if (v99 == v70)
        {

          v2 = v64;
          goto LABEL_22;
        }
      }

      v12 = v87;
      if (v18 >= *(v66 + 16))
      {
        goto LABEL_19;
      }

      v35 = *(v33 + 8 * v18 + 32);
      v36 = (v18 + 1);
      if (!__OFADD__(v18, 1))
      {
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v60 = v33;
      v61 = sub_2950();
      v33 = v60;
      v34 = v61;
    }

    while (v61);
  }

LABEL_22:
  v62 = [v30 formattedTable];
  if (!v62)
  {
    sub_28B0();
    v62 = sub_28A0();
  }

  [v2 appendString:v62];
}

id sub_22C4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2320()
{

  return _swift_deallocObject(v0, 32, 7);
}

Swift::Int sub_2360(unint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  sub_13B0(a1);
  return sub_2910();
}

uint64_t sub_2390(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A8()
{
  result = qword_8320;
  if (!qword_8320)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_8320);
  }

  return result;
}

void sub_240C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2460(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_24A8()
{
  if (!qword_8338)
  {
    v0 = sub_2960();
    if (!v1)
    {
      atomic_store(v0, &qword_8338);
    }
  }
}

void sub_26C0()
{
  if (!qword_83C8)
  {
    v0 = sub_2960();
    if (!v1)
    {
      atomic_store(v0, &qword_83C8);
    }
  }
}

unint64_t sub_2714()
{
  result = qword_83D0;
  if (!qword_83D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_83D0);
  }

  return result;
}