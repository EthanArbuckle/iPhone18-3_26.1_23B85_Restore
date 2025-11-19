void sub_10044103C(uint64_t a1, double **a2)
{
  if (qword_100ACFE28 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  v4 = v3;
  sub_1000F24EC(&qword_100AE4500);
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v62)
  {
    v5 = [v62 userId];
    if (v5)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1003E6194(0, *(v10 + 2) + 1, 1, v10);
        *a2 = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_1003E6194((v12 > 1), v13 + 1, 1, v10);
        *a2 = v10;
      }

      *(v10 + 2) = v13 + 1;
      v14 = &v10[4 * v13];
      v14[4] = 1.46113623e-307;
      v14[5] = -1.39234638e188;
      *(v14 + 6) = v7;
      *(v14 + 7) = v9;
      v15 = 0xD000000000000011;
      v16 = 0x80000001008F43B0;
    }

    else
    {
      v17 = *a2;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v17;
      if ((v18 & 1) == 0)
      {
        v17 = sub_1003E6194(0, *(v17 + 2) + 1, 1, v17);
        *a2 = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_1003E6194((v19 > 1), v20 + 1, 1, v17);
        *a2 = v17;
      }

      *(v17 + 2) = v20 + 1;
      v21 = &v17[4 * v20];
      v21[4] = 1.46113623e-307;
      v21[5] = -1.39234638e188;
      *(v21 + 6) = 0x7974706D65;
      v21[7] = -3.24180904e178;
      v15 = 0x203A444972657375;
      v16 = 0xED00007974706D65;
    }

    String.append(_:)(*&v15);
    v22 = [v62 statedata];
    if (v22)
    {
      v23 = v22;
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      sub_100049ED8(v24, v26);
      v27 = Data.description.getter();
      v29 = v28;
      sub_1000340DC(v24, v26);
      v30 = *a2;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v30;
      if ((v31 & 1) == 0)
      {
        v30 = sub_1003E6194(0, *(v30 + 2) + 1, 1, v30);
        *a2 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        v30 = sub_1003E6194((v32 > 1), v33 + 1, 1, v30);
        *a2 = v30;
      }

      *(v30 + 2) = v33 + 1;
      v34 = &v30[4 * v33];
      v34[4] = 1.41480632e161;
      v34[5] = -2.56842574e207;
      *(v34 + 6) = v27;
      *(v34 + 7) = v29;
      v35._countAndFlagsBits = 0xD000000000000015;
      v35._object = 0x80000001008F4390;
      String.append(_:)(v35);
      sub_1000340DC(v24, v26);
    }

    else
    {
      v36 = *a2;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v36;
      if ((v37 & 1) == 0)
      {
        v36 = sub_1003E6194(0, *(v36 + 2) + 1, 1, v36);
        *a2 = v36;
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      if (v39 >= v38 >> 1)
      {
        v36 = sub_1003E6194((v38 > 1), v39 + 1, 1, v36);
        *a2 = v36;
      }

      *(v36 + 2) = v39 + 1;
      v40 = &v36[4 * v39];
      v40[4] = 1.41480632e161;
      v40[5] = -2.56842574e207;
      *(v40 + 6) = 0x7974706D65;
      v40[7] = -3.24180904e178;
      v41._countAndFlagsBits = 0xD000000000000011;
      v41._object = 0x80000001008F4310;
      String.append(_:)(v41);
    }

    v42 = [v62 metadata];
    if (v42)
    {
      v43 = v42;
      v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      sub_100049ED8(v44, v46);
      v47 = Data.description.getter();
      v49 = v48;
      sub_1000340DC(v44, v46);
      v50 = *a2;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v50;
      if ((v51 & 1) == 0)
      {
        v50 = sub_1003E6194(0, *(v50 + 2) + 1, 1, v50);
        *a2 = v50;
      }

      v53 = *(v50 + 2);
      v52 = *(v50 + 3);
      if (v53 >= v52 >> 1)
      {
        v50 = sub_1003E6194((v52 > 1), v53 + 1, 1, v50);
        *a2 = v50;
      }

      *(v50 + 2) = v53 + 1;
      v54 = &v50[4 * v53];
      v54[4] = -2.31584178e77;
      *(v54 + 5) = 0x80000001008F4330;
      *(v54 + 6) = v47;
      *(v54 + 7) = v49;
      v55._object = 0x80000001008F4370;
      v55._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v55);

      sub_1000340DC(v44, v46);
    }

    else
    {
      v56 = *a2;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v56;
      if ((v57 & 1) == 0)
      {
        v56 = sub_1003E6194(0, *(v56 + 2) + 1, 1, v56);
        *a2 = v56;
      }

      v59 = *(v56 + 2);
      v58 = *(v56 + 3);
      if (v59 >= v58 >> 1)
      {
        v56 = sub_1003E6194((v58 > 1), v59 + 1, 1, v56);
        *a2 = v56;
      }

      *(v56 + 2) = v59 + 1;
      v60 = &v56[4 * v59];
      v60[4] = -2.31584178e77;
      *(v60 + 5) = 0x80000001008F4330;
      *(v60 + 6) = 0x7974706D65;
      v60[7] = -3.24180904e178;
      v61._countAndFlagsBits = 0xD000000000000010;
      v61._object = 0x80000001008F4350;
      String.append(_:)(v61);
    }
  }
}

void *sub_1004416B0(uint64_t a1, void *a2, double **a3, uint64_t a4)
{
  v154 = a4;
  v155 = a3;
  v156 = a2;
  v165 = type metadata accessor for AssetType();
  v4 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v152 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v161 = v4;

  if (qword_100ACFE28 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    type metadata accessor for JournalEntryMO();
    v7 = static JournalEntryMO.fetchRequest()();
    __chkstk_darwin(v7);
    v8 = v156;
    *(&v152 - 2) = v156;
    *(&v152 - 1) = v9;
    NSManagedObjectContext.performAndWait<A>(_:)();

    countAndFlagsBits = v167._countAndFlagsBits;
    v163 = type metadata accessor for JournalEntryAssetMO();
    v11 = static JournalEntryAssetMO.fetchRequest()();
    __chkstk_darwin(v11);
    *(&v152 - 2) = v8;
    *(&v152 - 1) = v12;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v13 = v167._countAndFlagsBits;
    type metadata accessor for JournalEntryAssetFileAttachmentMO();
    v14 = static JournalEntryAssetFileAttachmentMO.fetchRequest()();
    __chkstk_darwin(v14);
    *(&v152 - 2) = v8;
    *(&v152 - 1) = v15;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v162 = 0;

    v16 = v167._countAndFlagsBits;
    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    strcpy(&v167, "Entries:");
    BYTE1(v167._object) = 0;
    WORD1(v167._object) = 0;
    HIDWORD(v167._object) = -402653184;
    v166 = countAndFlagsBits;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x7374657373410920;
    v18._object = 0xE90000000000003ALL;
    String.append(_:)(v18);
    v166 = v13;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0x6863617474410920;
    v20._object = 0xEE003A73746E656DLL;
    String.append(_:)(v20);
    v166 = v16;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v23 = v167._countAndFlagsBits;
    object = v167._object;
    v24 = v155;
    v25 = *v155;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1003E6194(0, *(v25 + 2) + 1, 1, v25);
      *v155 = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1003E6194((v27 > 1), v28 + 1, 1, v25);
      *v155 = v25;
    }

    *(v25 + 2) = v28 + 1;
    v29 = &v25[4 * v28];
    strcpy(v29 + 32, "Total count:");
    *(v29 + 45) = 0;
    *(v29 + 23) = -5120;
    *(v29 + 6) = v23;
    *(v29 + 7) = object;
    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v167, "\nTotal count: ");
    HIBYTE(v167._object) = -18;
    v30._countAndFlagsBits = v23;
    v30._object = object;
    String.append(_:)(v30);

    String.append(_:)(v167);

    v31 = qword_100B2F9E0;
    v32 = *(qword_100B2F9E0 + 16);
    v33 = sub_100725AB4();

    v153 = v31;
    v34 = *(v31 + 16);
    v35 = sub_100756FD4();

    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    strcpy(&v167, "Assets:");
    v167._object = 0xE700000000000000;
    if (v33 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v36;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 0x6863617474410920;
    v38._object = 0xEE003A73746E656DLL;
    String.append(_:)(v38);
    if (v35 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v39;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v42 = v167._countAndFlagsBits;
    v41 = v167._object;
    v43 = v155;
    v44 = *v155;

    v45 = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v44;
    if ((v45 & 1) == 0)
    {
      v44 = sub_1003E6194(0, *(v44 + 2) + 1, 1, v44);
      *v155 = v44;
    }

    v47 = *(v44 + 2);
    v46 = *(v44 + 3);
    if (v47 >= v46 >> 1)
    {
      v44 = sub_1003E6194((v46 > 1), v47 + 1, 1, v44);
      *v155 = v44;
    }

    *(v44 + 2) = v47 + 1;
    v48 = &v44[4 * v47];
    strcpy(v48 + 32, "Emtpy count:");
    *(v48 + 45) = 0;
    *(v48 + 23) = -5120;
    *(v48 + 6) = v42;
    *(v48 + 7) = v41;
    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v167, "\nEmtpy count: ");
    HIBYTE(v167._object) = -18;
    v49._countAndFlagsBits = v42;
    v49._object = v41;
    String.append(_:)(v49);

    String.append(_:)(v167);

    __chkstk_darwin(v50);
    v51 = v156;
    *(&v152 - 2) = v156;
    sub_1000F24EC(&qword_100ADFAC8);
    NSManagedObjectContext.performAndWait<A>(_:)();
    v52 = v167._countAndFlagsBits;
    v53 = static JournalEntryMO.fetchRequest()();
    v54 = static JournalEntryMO.objectsToDeletePredicate.getter();
    [v53 setPredicate:v54];

    __chkstk_darwin(v55);
    *(&v152 - 2) = v51;
    *(&v152 - 1) = v53;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v56 = v167._countAndFlagsBits;
    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    strcpy(&v167, "To Save:");
    BYTE1(v167._object) = 0;
    WORD1(v167._object) = 0;
    HIDWORD(v167._object) = -402653184;
    if (v52 >> 62)
    {
      v57 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v57 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v57;
    v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v58);

    v59._countAndFlagsBits = 0x6C6544206F540920;
    v59._object = 0xEC0000003A657465;
    String.append(_:)(v59);
    if (v56 >> 62)
    {
      v60 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v60 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v60;
    v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v61);

    v63 = v167._countAndFlagsBits;
    v62 = v167._object;
    v64 = v155;
    v65 = *v155;

    v66 = swift_isUniquelyReferenced_nonNull_native();
    *v64 = v65;
    if ((v66 & 1) == 0)
    {
      v65 = sub_1003E6194(0, *(v65 + 2) + 1, 1, v65);
      *v155 = v65;
    }

    v68 = *(v65 + 2);
    v67 = *(v65 + 3);
    if (v68 >= v67 >> 1)
    {
      v65 = sub_1003E6194((v67 > 1), v68 + 1, 1, v65);
      *v155 = v65;
    }

    *(v65 + 2) = v68 + 1;
    v69 = &v65[4 * v68];
    v69[4] = -2.31584178e77;
    *(v69 + 5) = 0x80000001008F4270;
    *(v69 + 6) = v63;
    *(v69 + 7) = v62;
    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v167._countAndFlagsBits = 0xD000000000000012;
    v167._object = 0x80000001008F4290;
    v70._countAndFlagsBits = v63;
    v70._object = v62;
    String.append(_:)(v70);

    String.append(_:)(v167);

    v71 = static JournalEntryAssetMO.fetchRequest()();
    v72 = static JournalEntryAssetMO.objectsToSyncPredicate.getter();
    [v71 setPredicate:v72];

    __chkstk_darwin(v73);
    v74 = v156;
    *(&v152 - 2) = v156;
    *(&v152 - 1) = v71;
    sub_1000F24EC(&qword_100ADF600);
    NSManagedObjectContext.performAndWait<A>(_:)();

    v75 = v167._countAndFlagsBits;
    v76 = *(v153 + 16);
    v77 = sub_1000B4824(v74);

    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    strcpy(&v167, "To Save:");
    BYTE1(v167._object) = 0;
    WORD1(v167._object) = 0;
    HIDWORD(v167._object) = -402653184;
    if (v75 >> 62)
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v78 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v78;
    v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 0x6C6544206F540920;
    v80._object = 0xEC0000003A657465;
    String.append(_:)(v80);
    if (v77 >> 62)
    {
      v81 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v81 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v81;
    v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v82);

    v84 = v167._countAndFlagsBits;
    v83 = v167._object;
    v85 = v155;
    v86 = *v155;

    v87 = swift_isUniquelyReferenced_nonNull_native();
    *v85 = v86;
    if ((v87 & 1) == 0)
    {
      v86 = sub_1003E6194(0, *(v86 + 2) + 1, 1, v86);
      *v155 = v86;
    }

    v89 = *(v86 + 2);
    v88 = *(v86 + 3);
    if (v89 >= v88 >> 1)
    {
      v86 = sub_1003E6194((v88 > 1), v89 + 1, 1, v86);
      *v155 = v86;
    }

    *(v86 + 2) = v89 + 1;
    v90 = &v86[4 * v89];
    v90[4] = 1.39806869e-152;
    v90[5] = -6.26612061e227;
    *(v90 + 6) = v84;
    *(v90 + 7) = v83;
    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v167._countAndFlagsBits = 0xD000000000000011;
    v167._object = 0x80000001008F42B0;
    v91._countAndFlagsBits = v84;
    v91._object = v83;
    String.append(_:)(v91);

    String.append(_:)(v167);

    v92 = v153;
    v93 = *(v153 + 16);
    v94 = sub_100756E34();

    v95 = *(v92 + 16);
    v96 = sub_100756CE4();

    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    strcpy(&v167, "To Save:");
    BYTE1(v167._object) = 0;
    WORD1(v167._object) = 0;
    HIDWORD(v167._object) = -402653184;
    if (v94 >> 62)
    {
      v97 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v97 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v97;
    v98._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v98);

    v99._countAndFlagsBits = 0x6C6544206F540920;
    v99._object = 0xEC0000003A657465;
    String.append(_:)(v99);
    if (v96 >> 62)
    {
      v100 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v100 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v100;
    v101._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v101);

    v103 = v167._countAndFlagsBits;
    v102 = v167._object;
    v104 = v155;
    v105 = *v155;

    v106 = swift_isUniquelyReferenced_nonNull_native();
    *v104 = v105;
    if ((v106 & 1) == 0)
    {
      v105 = sub_1003E6194(0, *(v105 + 2) + 1, 1, v105);
      *v155 = v105;
    }

    v108 = *(v105 + 2);
    v107 = *(v105 + 3);
    if (v108 >= v107 >> 1)
    {
      v105 = sub_1003E6194((v107 > 1), v108 + 1, 1, v105);
      *v155 = v105;
    }

    *(v105 + 2) = v108 + 1;
    v109 = &v105[4 * v108];
    v109[4] = -2.31584178e77;
    *(v109 + 5) = 0x80000001008F42D0;
    *(v109 + 6) = v103;
    *(v109 + 7) = v102;
    v167._countAndFlagsBits = 0;
    v167._object = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v167._countAndFlagsBits = 0xD000000000000016;
    v167._object = 0x80000001008F42F0;
    v110._countAndFlagsBits = v103;
    v110._object = v102;
    String.append(_:)(v110);

    String.append(_:)(v167);

    __chkstk_darwin(v111);
    *(&v152 - 2) = v156;
    *(&v152 - 8) = 0;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v112 = v167._countAndFlagsBits;
    v152 = v167._countAndFlagsBits >> 62;
    if (v167._countAndFlagsBits >> 62)
    {
      break;
    }

    v113 = *((v167._countAndFlagsBits & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v113)
    {
      goto LABEL_75;
    }

LABEL_41:
    v114 = 0;
    v162 = v112 & 0xFFFFFFFFFFFFFF8;
    v163 = v112 & 0xC000000000000001;
    v159 = enum case for AssetType.streakEvent(_:);
    v157 = (v161 + 8);
    v158 = (v161 + 104);
    v115 = _swiftEmptyArrayStorage;
    v160 = v113;
    v161 = v112;
    while (1)
    {
      if (v163)
      {
        v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v114 >= *(v162 + 16))
        {
          goto LABEL_64;
        }

        v116 = *(v112 + 8 * v114 + 32);
      }

      v117 = v116;
      v118 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      v119 = [v116 assetType];
      if (v119)
      {
        v120 = v119;
        v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v122;
      }

      else
      {
        v121 = 0;
        v123 = 0;
      }

      v124 = v164;
      v125 = v165;
      (*v158)(v164, v159, v165);
      v126 = AssetType.rawValue.getter();
      v128 = v127;
      (*v157)(v124, v125);
      if (v123)
      {
        if (v121 == v126 && v123 == v128)
        {
          v129 = 1;
        }

        else
        {
          v129 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v130 = v160;
        v112 = v161;
      }

      else
      {

        v129 = 0;
        v130 = v160;
        v112 = v161;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1003E62A0(0, *(v115 + 2) + 1, 1, v115);
      }

      v132 = *(v115 + 2);
      v131 = *(v115 + 3);
      if (v132 >= v131 >> 1)
      {
        v115 = sub_1003E62A0((v131 > 1), v132 + 1, 1, v115);
      }

      *(v115 + 2) = v132 + 1;
      *(v115 + v132 + 32) = v129 & 1;
      ++v114;
      if (v118 == v130)
      {
        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  v113 = _CocoaArrayWrapper.endIndex.getter();
  if (v113)
  {
    goto LABEL_41;
  }

LABEL_75:
  v115 = _swiftEmptyArrayStorage;
LABEL_76:
  v133 = *(v153 + 16);
  v134 = sub_100756AF4(v156);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  strcpy(&v167, "TotalAssets:");
  BYTE5(v167._object) = 0;
  HIWORD(v167._object) = -5120;
  if (v152)
  {
    v135 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v135 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v166 = v135;
  v136._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v136);

  v137._countAndFlagsBits = 0x416B616572745309;
  v137._object = 0xEE003A7374657373;
  String.append(_:)(v137);
  v138 = *(v115 + 2);

  v166 = v138;
  v139._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v139);

  v140._countAndFlagsBits = 0x63617474410A2020;
  v140._object = 0xEF3A73746E656D68;
  String.append(_:)(v140);
  if (v134 >> 62)
  {
    v141 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v141 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v166 = v141;
  v142._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v142);

  v144 = v167._countAndFlagsBits;
  v143 = v167._object;
  v145 = v155;
  v146 = *v155;

  v147 = swift_isUniquelyReferenced_nonNull_native();
  *v145 = v146;
  if ((v147 & 1) == 0)
  {
    v146 = sub_1003E6194(0, *(v146 + 2) + 1, 1, v146);
    *v155 = v146;
  }

  v149 = *(v146 + 2);
  v148 = *(v146 + 3);
  if (v149 >= v148 >> 1)
  {
    v146 = sub_1003E6194((v148 > 1), v149 + 1, 1, v146);
    *v155 = v146;
  }

  *(v146 + 2) = v149 + 1;
  v150 = &v146[4 * v149];
  v150[4] = 3.9240943e-27;
  v150[5] = -9.12488124e192;
  *(v150 + 6) = v144;
  *(v150 + 7) = v143;
  strcpy(&v167, "\nOrphans: ");
  BYTE3(v167._object) = 0;
  HIDWORD(v167._object) = -369098752;
  v151._countAndFlagsBits = v144;
  v151._object = v143;
  String.append(_:)(v151);

  String.append(_:)(v167);
}

uint64_t sub_100442AE0()
{
  v86 = type metadata accessor for URL.DirectoryHint();
  v0 = *(v86 - 1);
  __chkstk_darwin(v86);
  v2 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v75 - v8;
  v10 = type metadata accessor for FileStoreConfiguration.Location();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileStoreConfiguration();
  v88 = *(v14 - 8);
  v89 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for FileStoreConfiguration.Location.production(_:), v10, v15);
  v18 = NSURLFileProtectionCompleteUnlessOpen;
  FileStoreConfiguration.init(location:fileProtectionClass:)();
  FileStoreConfiguration.homeDirectoryURL.getter();
  v19 = sub_100443E0C();
  v75 = v20;
  v76 = v19;
  v21 = *(v4 + 8);
  v21(v9, v3);
  FileStoreConfiguration.temporaryDirectoryURL.getter();
  v22 = sub_100443E0C();
  v77 = v23;
  v78 = v22;
  v21(v9, v3);
  FileStoreConfiguration.libraryDirectoryURL.getter();
  v24 = sub_100443E0C();
  v79 = v25;
  v80 = v24;
  v21(v9, v3);
  FileStoreConfiguration.cachesDirectoryURL.getter();
  v26 = sub_100443E0C();
  v81 = v27;
  v82 = v26;
  v21(v9, v3);
  v87 = v17;
  FileStoreConfiguration.applicationSupportDirectoryURL.getter();
  v28 = sub_100443E0C();
  v84 = v29;
  v85 = v28;
  v21(v9, v3);
  FileStoreConfiguration.libraryDirectoryURL.getter();
  v30 = v86;
  (*(v0 + 104))(v2, enum case for URL.DirectoryHint.inferFromPath(_:), v86);
  sub_1000777B4();
  URL.appending<A>(components:directoryHint:)();
  (*(v0 + 8))(v2, v30);
  v21(v6, v3);
  v83 = sub_100443E0C();
  v86 = v31;
  v21(v9, v3);
  v93 = 47;
  v94 = 0xE100000000000000;
  v92._countAndFlagsBits = 46;
  v92._object = 0xE100000000000000;
  v32 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v34 = v33;
  v93 = v76;
  v94 = v75;
  v35._countAndFlagsBits = 10;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36 = v93;
  v37 = v94;
  v93 = v32;
  v94 = v34;

  v38._countAndFlagsBits = v36;
  v38._object = v37;
  String.append(_:)(v38);

  v92._countAndFlagsBits = 1886221359;
  v92._object = 0xE400000000000000;
  v90 = 46;
  v91 = 0xE100000000000000;
  v39 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v41 = v40;
  v92._countAndFlagsBits = v78;
  v92._object = v77;
  v42._countAndFlagsBits = 10;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  countAndFlagsBits = v92._countAndFlagsBits;
  object = v92._object;
  v92._countAndFlagsBits = v39;
  v92._object = v41;

  v45._countAndFlagsBits = countAndFlagsBits;
  v45._object = object;
  String.append(_:)(v45);

  String.append(_:)(v92);

  v92._countAndFlagsBits = 0x7972617262694C2FLL;
  v92._object = 0xE800000000000000;
  v90 = 46;
  v91 = 0xE100000000000000;
  v46 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v48 = v47;
  v92._countAndFlagsBits = v80;
  v92._object = v79;
  v49._countAndFlagsBits = 10;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  v50 = v92._countAndFlagsBits;
  v51 = v92._object;
  v92._countAndFlagsBits = v46;
  v92._object = v48;

  v52._countAndFlagsBits = v50;
  v52._object = v51;
  String.append(_:)(v52);

  String.append(_:)(v92);

  v92._countAndFlagsBits = 0x7972617262694C2FLL;
  v92._object = 0xEF7365686361432FLL;
  v90 = 46;
  v91 = 0xE100000000000000;
  v53 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v55 = v54;
  v92._countAndFlagsBits = v82;
  v92._object = v81;
  v56._countAndFlagsBits = 10;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);
  v57 = v92._countAndFlagsBits;
  v58 = v92._object;
  v92._countAndFlagsBits = v53;
  v92._object = v55;

  v59._countAndFlagsBits = v57;
  v59._object = v58;
  String.append(_:)(v59);

  String.append(_:)(v92);

  v92._countAndFlagsBits = 0xD00000000000001CLL;
  v92._object = 0x80000001008F4230;
  v90 = 46;
  v91 = 0xE100000000000000;
  v60 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v62 = v61;
  v92._countAndFlagsBits = v85;
  v92._object = v84;
  v63._countAndFlagsBits = 10;
  v63._object = 0xE100000000000000;
  String.append(_:)(v63);
  v64 = v92._countAndFlagsBits;
  v65 = v92._object;
  v92._countAndFlagsBits = v60;
  v92._object = v62;

  v66._countAndFlagsBits = v64;
  v66._object = v65;
  String.append(_:)(v66);

  String.append(_:)(v92);

  v92._countAndFlagsBits = 0xD000000000000014;
  v92._object = 0x80000001008F4250;
  v90 = 46;
  v91 = 0xE100000000000000;
  v67 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v69 = v68;
  v92._countAndFlagsBits = v83;
  v92._object = v86;
  v70._countAndFlagsBits = 10;
  v70._object = 0xE100000000000000;
  String.append(_:)(v70);
  v71 = v92._countAndFlagsBits;
  v72 = v92._object;
  v92._countAndFlagsBits = v67;
  v92._object = v69;

  v73._countAndFlagsBits = v71;
  v73._object = v72;
  String.append(_:)(v73);

  String.append(_:)(v92);

  (*(v88 + 8))(v87, v89);
  return v93;
}

uint64_t sub_1004432B0()
{
  v80 = type metadata accessor for URL.DirectoryHint();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v79 = &v69 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v69 - v6;
  v8 = type metadata accessor for FileStoreConfiguration.Location();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FileStoreConfiguration();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for FileStoreConfiguration.Location.staging(_:), v8, v14);
  v17 = v1;
  v18 = NSURLFileProtectionNone;
  FileStoreConfiguration.init(location:fileProtectionClass:)();
  FileStoreConfiguration.homeDirectoryURL.getter();
  v83 = v16;
  FileStoreConfiguration.homeDirectoryURL.getter();
  v19 = sub_100443E0C();
  v21 = v20;
  v84 = *(v2 + 8);
  v85 = v2 + 8;
  v84(v4, v17);
  v90 = 47;
  v91 = 0xE100000000000000;
  v89._countAndFlagsBits = 46;
  v89._object = 0xE100000000000000;
  v78 = sub_1000777B4();
  v22 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v24 = v23;
  v90 = v19;
  v91 = v21;
  v25._countAndFlagsBits = 10;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26 = v90;
  v27 = v91;
  v90 = v22;
  v91 = v24;

  v28._countAndFlagsBits = v26;
  v28._object = v27;
  String.append(_:)(v28);

  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  v81 = v7;
  URL.path.getter();
  v31 = String._bridgeToObjectiveC()();

  v89._countAndFlagsBits = 0;
  v32 = [v30 contentsOfDirectoryAtPath:v31 error:&v89];

  countAndFlagsBits = v89._countAndFlagsBits;
  if (v32)
  {
    v71 = v13;
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = countAndFlagsBits;

    v36 = *(v34 + 16);
    if (v36)
    {
      v70 = v12;
      v76 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v74 = (v82 + 8);
      v75 = (v82 + 104);
      v69 = v34;
      v37 = (v34 + 40);
      v73 = xmmword_100940080;
      v77 = v29;
      v72 = v17;
      do
      {
        v38 = *(v37 - 1);
        v39 = *v37;

        FileStoreConfiguration.homeDirectoryURL.getter();
        URL.path.getter();
        v84(v4, v17);
        v40 = String._bridgeToObjectiveC()();

        v41 = String._bridgeToObjectiveC()();
        v42 = [v40 stringByAppendingPathComponent:{v41, v69}];

        if (!v42)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = String._bridgeToObjectiveC()();
        }

        v88[0] = 0;
        v43 = [v29 defaultManager];
        v44 = [v43 fileExistsAtPath:v42 isDirectory:v88];

        if (v44 && v88[0] == 1)
        {
          sub_1000F24EC(&unk_100AD9A60);
          v45 = swift_allocObject();
          *(v45 + 16) = v73;
          *(v45 + 32) = v38;
          *(v45 + 40) = v39;
          v46 = v79;
          v47 = v80;
          (*v75)(v79, v76, v80);

          URL.appending<A>(components:directoryHint:)();

          (*v74)(v46, v47);
          v82 = sub_100443E0C();
          v49 = v48;
          v50 = v72;
          v84(v4, v72);
          v89._countAndFlagsBits = 47;
          v89._object = 0xE100000000000000;
          v51._countAndFlagsBits = v38;
          v51._object = v39;
          String.append(_:)(v51);

          v86 = 46;
          v87 = 0xE100000000000000;
          v52 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
          v53 = v50;
          v55 = v54;

          v89._countAndFlagsBits = v82;
          v89._object = v49;
          v56._countAndFlagsBits = 10;
          v56._object = 0xE100000000000000;
          String.append(_:)(v56);
          v57 = v89._countAndFlagsBits;
          object = v89._object;
          v89._countAndFlagsBits = v52;
          v89._object = v55;

          v59._countAndFlagsBits = v57;
          v59._object = object;
          String.append(_:)(v59);
          v17 = v53;
          v29 = v77;

          String.append(_:)(v89);
        }

        v37 += 2;
        --v36;
      }

      while (v36);

      v12 = v70;
    }

    else
    {
    }

    v13 = v71;
  }

  else
  {
    v60 = v17;
    v61 = v89._countAndFlagsBits;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFDA0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_10000617C(v62, qword_100AE4480);
    swift_errorRetain();
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      swift_errorRetain();
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v67;
      *v66 = v67;
      _os_log_impl(&_mh_execute_header, v63, v64, "Error listing contents of directory: %@", v65, 0xCu);
      sub_100004F84(v66, &unk_100AD4BB0);
    }

    v17 = v60;
  }

  v84(v81, v17);
  (*(v13 + 8))(v83, v12);
  return v90;
}

id sub_100443D6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100443E0C()
{
  URL.path.getter();
  v0 = sub_100443FA0();
  v2 = v1;

  v3 = vcvtd_n_f64_u64(v0, 0x14uLL);
  if (v2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  sub_1000F24EC(&unk_100AD5B10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  *(v5 + 56) = &type metadata for Double;
  *(v5 + 64) = &protocol witness table for Double;
  *(v5 + 32) = v4;
  v6 = String.init(format:_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100940080;
  *(v7 + 56) = &type metadata for Double;
  *(v7 + 64) = &protocol witness table for Double;
  *(v7 + 32) = v4 * 0.0009765625;
  v8 = String.init(format:_:)();
  v10 = v9;
  if (v4 * 0.0009765625 >= 0.1)
  {
    v17 = v6;
    v13 = v8;
    v14._countAndFlagsBits = 673202765;
    v14._object = 0xE400000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = v13;
    v15._object = v10;
    String.append(_:)(v15);

    v11 = 2703943;
    v12 = 0xE300000000000000;
  }

  else
  {

    v17 = v6;
    v11 = 16973;
    v12 = 0xE200000000000000;
  }

  String.append(_:)(*&v11);
  return v17;
}

uint64_t sub_100443FA0()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = String._bridgeToObjectiveC()();
  v40[0] = 0;
  v2 = [v0 contentsOfDirectoryAtPath:v1 error:v40];

  v3 = v40[0];
  if (v2)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;

    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v4 + 40;
      do
      {

        v9 = String._bridgeToObjectiveC()();
        v10 = String._bridgeToObjectiveC()();

        v11 = [v9 stringByAppendingPathComponent:v10];

        v12 = v11;
        v13 = v11;
        if (!v11)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = String._bridgeToObjectiveC()();

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = String._bridgeToObjectiveC()();
        }

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        v39[0] = 0;
        v17 = v11;
        v18 = [v0 fileExistsAtPath:v13 isDirectory:v39];

        if (v18)
        {
          if (v39[0] == 1)
          {

            v19 = sub_100443FA0(v14, v16);
            v21 = v20;

            if ((v21 & 1) == 0)
            {
              v22 = __CFADD__(v7, v19);
              v7 += v19;
              if (v22)
              {
                __break(1u);
                goto LABEL_31;
              }
            }
          }

          else
          {

            v40[0] = 0;
            v23 = [v0 attributesOfItemAtPath:v12 error:v40];

            v24 = v40[0];
            if (v23)
            {
              type metadata accessor for FileAttributeKey(0);
              sub_10001E508(&qword_100AD1C38, type metadata accessor for FileAttributeKey);
              v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
              v26 = v24;

              if (*(v25 + 16) && (v27 = sub_100051964(NSFileSize), (v28 & 1) != 0))
              {
                sub_10000BA20(*(v25 + 56) + 32 * v27, v40);

                if (swift_dynamicCast())
                {
                  v22 = __CFADD__(v7, v38);
                  v7 += v38;
                  if (v22)
                  {
                    __break(1u);
                  }
                }
              }

              else
              {
              }
            }

            else
            {
              v29 = v40[0];
              _convertNSErrorToError(_:)();

              swift_willThrow();
            }
          }
        }

        else
        {
        }

        v8 += 16;
        --v6;
      }

      while (v6);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v30 = v40[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFDA0 != -1)
    {
LABEL_31:
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000617C(v31, qword_100AE4480);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "(directorySize): error%@", v34, 0xCu);
      sub_100004F84(v35, &unk_100AD4BB0);
    }

    else
    {
    }

    return 0;
  }

  return v7;
}

uint64_t sub_1004444DC@<X0>(void (*a1)(void)@<X2>, const char *a2@<X3>, uint64_t *a3@<X8>)
{
  a1(0);
  result = NSManagedObjectContext.count<A>(for:)();
  if (v3)
  {
    if (qword_100ACFDA0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100AE4480);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 0xCu);
      sub_100004F84(v11, &unk_100AD4BB0);
    }

    else
    {
    }

    result = 0;
  }

  *a3 = result;
  return result;
}

unint64_t sub_10044474C()
{
  v1 = objc_allocWithZone(type metadata accessor for SyncStatsDisplayVC.SyncStatsCell());
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithStyle:0 reuseIdentifier:v2];

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(*(v0 + OBJC_IVAR____TtC7Journal18SyncStatsDisplayVC_dataObjects) + 16))
  {
    v5 = *&v3[OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_titleLabel];

    v6 = String._bridgeToObjectiveC()();
    [v5 setText:v6];

    v7 = *&v3[OBJC_IVAR____TtCC7Journal18SyncStatsDisplayVC13SyncStatsCell_descriptionLabel];
    v8 = String._bridgeToObjectiveC()();
    [v7 setText:v8];

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004448B0()
{
  v110 = type metadata accessor for FileStoreConfiguration();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v104 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v2 = __chkstk_darwin(v118);
  v111 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v104 - v5;
  v7 = __chkstk_darwin(v4);
  v113 = &v104 - v8;
  __chkstk_darwin(v7);
  v10 = &v104 - v9;
  v11 = sub_1000F24EC(&unk_100AD6DD0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v104 - v15;
  v121 = type metadata accessor for AssetAttachment.AssetType(0);
  v17 = __chkstk_darwin(v121);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = (&v104 - v21);
  v23 = __chkstk_darwin(v20);
  v112 = &v104 - v24;
  __chkstk_darwin(v23);
  v26 = (&v104 - v25);
  v27 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  result = swift_beginAccess();
  v106 = v0;
  v29 = *(v0 + v27);
  if (v29 >> 62)
  {
LABEL_44:
    v65 = v29;
    result = _CocoaArrayWrapper.endIndex.getter();
    v29 = v65;
    v30 = result;
    v119 = v10;
    v120 = v26;
    if (result)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v119 = v10;
  v120 = v26;
  if (!v30)
  {
LABEL_45:
    v33 = 0;
LABEL_46:
    v66 = *(v106 + OBJC_IVAR____TtC7Journal5Asset_attachments);
    v67 = v113;
    if (v66 >> 62)
    {
      goto LABEL_89;
    }

    v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v68)
    {
LABEL_90:
      v69 = 0;
LABEL_91:
      if (v69 <= v33)
      {
        return v33;
      }

      else
      {
        return v69;
      }
    }

LABEL_48:
    if (v68 < 1)
    {
      goto LABEL_96;
    }

    v117 = v66 & 0xC000000000000001;
    v115 = (v107 + 8);

    v69 = 0;
    v70 = 0;
    v116 = v68;
    while (1)
    {
      v71 = v16;
      if (v117)
      {
        v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v72 = *(v66 + 8 * v70 + 32);
      }

      v73 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
      sub_100068B98(v72 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v26, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v75 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      v77 = v26;
      if (!v75)
      {
        goto LABEL_57;
      }

      v94 = *v26;
      v95 = UIImageHEICRepresentation(v94);
      if (!v95)
      {

        v90 = 0;
        goto LABEL_71;
      }

      v96 = v95;
      v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = v99;
      v101 = v99 >> 62;
      if ((v99 >> 62) > 1)
      {
        v16 = v71;
        if (v101 == 2)
        {
          v103 = *(v97 + 16);
          v102 = *(v97 + 24);
          result = sub_1000340DC(v97, v100);
          v90 = v102 - v103;
          v10 = v119;
          if (__OFSUB__(v102, v103))
          {
            goto LABEL_99;
          }

          v67 = v113;
        }

        else
        {
          sub_1000340DC(v97, v99);
          v90 = 0;
          v67 = v113;
          v10 = v119;
        }

        goto LABEL_72;
      }

      v16 = v71;
      v26 = v120;
      if (v101)
      {
        result = sub_1000340DC(v97, v99);
        LODWORD(v90) = HIDWORD(v97) - v97;
        v10 = v119;
        if (__OFSUB__(HIDWORD(v97), v97))
        {
          goto LABEL_100;
        }

        v90 = v90;
        v67 = v113;
      }

      else
      {
        sub_1000340DC(v97, v99);
        v90 = BYTE6(v99);
        v67 = v113;
        v10 = v119;
      }

LABEL_73:
      v56 = __OFADD__(v69, v90);
      v69 += v90;
      if (v56)
      {
        __break(1u);
LABEL_89:
        result = _CocoaArrayWrapper.endIndex.getter();
        v68 = result;
        if (!result)
        {
          goto LABEL_90;
        }

        goto LABEL_48;
      }

      if (v116 == ++v70)
      {

        goto LABEL_91;
      }
    }

    v76 = EnumCaseMultiPayload - 2;
    v77 = v26;
    if (v76 >= 2)
    {

      v77 = v26 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
    }

LABEL_57:
    sub_100069200(v77, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v78 = v72 + v73;
    v79 = v112;
    sub_100068B98(v78, v112, type metadata accessor for AssetAttachment.AssetType);
    v80 = swift_getEnumCaseMultiPayload();
    v81 = v80;
    if (v80 <= 1)
    {
      v83 = v79;
      if (v81)
      {
        sub_100069200(v79, type metadata accessor for AssetAttachment.AssetType);
        v87 = 1;
        goto LABEL_65;
      }
    }

    else
    {
      v82 = v80 - 2;
      v83 = v79;
      if (v82 >= 2)
      {

        v84 = sub_1000F24EC(&qword_100AD33B8);
        v83 = v112 + *(v84 + 48);
      }
    }

    sub_100048F6C(v83, v10, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    sub_100068B98(v10, v67, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100069200(v10, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v85 = type metadata accessor for URL();
      (*(*(v85 - 8) + 32))(v71, v67, v85);
    }

    else
    {
      v86 = v109;
      static FileStoreConfiguration.shared.getter();
      FileStoreConfiguration.getAttachmentURL(from:)();

      (*v115)(v86, v110);
      sub_100069200(v10, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v87 = 0;
LABEL_65:
    v88 = type metadata accessor for URL();
    v89 = *(v88 - 8);
    (*(v89 + 56))(v71, v87, 1, v88);
    if ((*(v89 + 48))(v71, 1, v88) == 1)
    {

      sub_100004F84(v71, &unk_100AD6DD0);
      v90 = 0;
    }

    else
    {
      v91 = URL.fileSize.getter();
      v93 = v92;

      (*(v89 + 8))(v71, v88);
      v55 = (v93 & 1) == 0;
      v10 = v119;
      if (v55)
      {
        v90 = v91;
      }

      else
      {
        v90 = 0;
      }
    }

    v67 = v113;
LABEL_71:
    v16 = v71;
LABEL_72:
    v26 = v120;
    goto LABEL_73;
  }

LABEL_3:
  if (v30 >= 1)
  {
    v105 = v16;
    v117 = v29 & 0xC000000000000001;
    v108 = (v107 + 8);
    v31 = v29;

    v32 = v31;
    v33 = 0;
    v16 = 0;
    v114 = v6;
    v115 = v30;
    v116 = v32;
    while (1)
    {
      if (v117)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v32 + 8 * v16 + 32);
      }

      v35 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
      sub_100068B98(v34 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v22, type metadata accessor for AssetAttachment.AssetType);
      v36 = swift_getEnumCaseMultiPayload();
      v37 = v36;
      if (v36 > 1)
      {
        break;
      }

      v39 = v22;
      if (!v37)
      {
        goto LABEL_12;
      }

      v57 = *v22;
      v58 = UIImageHEICRepresentation(*v22);
      if (!v58)
      {

        v50 = 0;
        v10 = v119;
        goto LABEL_26;
      }

      v59 = v58;
      v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v61;

      v62 = v6 >> 62;
      if ((v6 >> 62) > 1)
      {
        v10 = v119;
        if (v62 == 2)
        {
          v64 = *(v60 + 16);
          v63 = *(v60 + 24);
          result = sub_1000340DC(v60, v6);
          v50 = v63 - v64;
          if (__OFSUB__(v63, v64))
          {
            goto LABEL_97;
          }

          goto LABEL_26;
        }

        sub_1000340DC(v60, v6);
LABEL_22:
        v50 = 0;
LABEL_26:
        v26 = v120;
        goto LABEL_27;
      }

      v10 = v119;
      v26 = v120;
      if (v62)
      {
        result = sub_1000340DC(v60, v6);
        LODWORD(v50) = HIDWORD(v60) - v60;
        if (__OFSUB__(HIDWORD(v60), v60))
        {
          goto LABEL_98;
        }

        v50 = v50;
      }

      else
      {
        sub_1000340DC(v60, v6);
        v50 = BYTE6(v6);
      }

LABEL_27:
      v29 = v115;
      v32 = v116;
      v56 = __OFADD__(v33, v50);
      v33 += v50;
      if (v56)
      {
        __break(1u);
        goto LABEL_44;
      }

      ++v16;
      v6 = v114;
      if (v115 == v16)
      {

        v16 = v105;
        goto LABEL_46;
      }
    }

    v38 = v36 - 2;
    v39 = v22;
    if (v38 >= 2)
    {

      v39 = v22 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
    }

LABEL_12:
    sub_100069200(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    sub_100068B98(v34 + v35, v19, type metadata accessor for AssetAttachment.AssetType);
    v40 = swift_getEnumCaseMultiPayload();
    v41 = v40;
    if (v40 <= 1)
    {
      v43 = v19;
      v44 = v111;
      if (v41)
      {
        sub_100069200(v19, type metadata accessor for AssetAttachment.AssetType);
        v48 = 1;
LABEL_20:
        v49 = type metadata accessor for URL();
        v6 = *(v49 - 8);
        (*(v6 + 56))(v14, v48, 1, v49);
        if ((*(v6 + 48))(v14, 1, v49) != 1)
        {
          v51 = URL.fileSize.getter();
          v53 = v52;

          v54 = *(v6 + 8);
          v6 += 8;
          v54(v14, v49);
          v55 = (v53 & 1) == 0;
          v10 = v119;
          if (v55)
          {
            v50 = v51;
          }

          else
          {
            v50 = 0;
          }

          goto LABEL_26;
        }

        sub_100004F84(v14, &unk_100AD6DD0);
        goto LABEL_22;
      }
    }

    else
    {
      v42 = v40 - 2;
      v43 = v19;
      v44 = v111;
      if (v42 >= 2)
      {

        v43 = &v19[*(sub_1000F24EC(&qword_100AD33B8) + 48)];
      }
    }

    sub_100048F6C(v43, v6, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    sub_100068B98(v6, v44, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100069200(v6, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v45 = type metadata accessor for URL();
      (*(*(v45 - 8) + 32))(v14, v44, v45);
    }

    else
    {
      v46 = v109;
      static FileStoreConfiguration.shared.getter();
      FileStoreConfiguration.getAttachmentURL(from:)();

      v47 = v46;
      v10 = v119;
      (*v108)(v47, v110);
      sub_100069200(v6, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v48 = 0;
    goto LABEL_20;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

Class sub_1004455B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000065A8(0, &unk_100AD43A0);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100445650()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE4508);
  sub_10000617C(v0, qword_100AE4508);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004456D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[86] = v8;
  v9[85] = a8;
  v9[84] = a7;
  v9[83] = a6;
  v9[82] = a5;
  v9[81] = a4;
  v9[80] = a3;
  v9[79] = a2;
  v9[78] = a1;
  v9[87] = sub_1000F24EC(&qword_100AE45C0);
  v9[88] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v9[89] = swift_task_alloc();
  v11 = type metadata accessor for SuggestionMergeConflict(0);
  v9[90] = v11;
  v9[91] = *(v11 - 8);
  v9[92] = swift_task_alloc();
  v9[93] = swift_task_alloc();
  v9[94] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE45C8);
  v9[95] = swift_task_alloc();
  v9[96] = swift_task_alloc();
  v9[97] = swift_task_alloc();
  v9[98] = swift_task_alloc();
  v9[99] = swift_task_alloc();
  v9[100] = swift_task_alloc();
  v9[101] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v9[102] = v12;
  v9[103] = *(v12 - 8);
  v9[104] = swift_task_alloc();
  v13 = type metadata accessor for AssetAnalytics.AssetTransferEvent(0);
  v9[105] = v13;
  v14 = *(v13 - 8);
  v9[106] = v14;
  v9[107] = *(v14 + 64);
  v9[108] = swift_task_alloc();
  v9[109] = swift_task_alloc();
  v9[110] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v9[111] = v15;
  v9[112] = *(v15 - 8);
  v9[113] = swift_task_alloc();
  v9[114] = swift_task_alloc();
  v9[115] = swift_task_alloc();
  v9[116] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v9[118] = v18;
  v9[117] = v16;

  return _swift_task_switch(sub_100445A54, v16, v18);
}

uint64_t sub_100445A54()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v0 + 688);
  v5 = [*(v0 + 640) suggestionIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = UUID.uuidString.getter();
  v8 = v7;
  v9 = *(v2 + 8);
  *(v0 + 952) = v9;
  *(v0 + 960) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49 = v9;
  v9(v1, v3);
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 93;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  *(v0 + 968) = 91;
  *(v0 + 976) = 0xE100000000000000;
  v12 = swift_allocObject();
  *(v0 + 984) = v12;
  v12[2] = 91;
  v12[3] = 0xE100000000000000;
  v12[4] = v4;
  v13 = swift_allocObject();
  *(v0 + 992) = v13;
  v13[2] = 91;
  v13[3] = 0xE100000000000000;
  v13[4] = v4;
  swift_bridgeObjectRetain_n();
  UUID.init()();
  if (qword_100AD00A8 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 928);
  v15 = *(v0 + 912);
  v16 = *(v0 + 888);
  v17 = *(v0 + 880);
  v18 = *(v0 + 840);
  v43 = v16;
  v44 = *(v0 + 832);
  v19 = *(v0 + 824);
  v20 = *(v0 + 816);
  v48 = *(v0 + 904);
  v45 = (*(v0 + 896) + 16);
  v46 = *(v0 + 920);
  v47 = *v45;
  (*v45)(v15);
  swift_beginAccess();
  sub_100286F3C(v14, v15);
  swift_endAccess();
  v49(v14, v16);
  *v17 = 0;
  v17[1] = 0;
  v21 = v17 + v18[5];
  v22 = *(v19 + 56);
  *(v0 + 1000) = v22;
  *(v0 + 1008) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v21, 1, 1, v20);
  v23 = type metadata accessor for AssetAnalytics.AssetTransferEvent.TimeRange(0);
  *(v0 + 1016) = v23;
  v22(v21 + *(v23 + 20), 1, 1, v20);
  v24 = v17 + v18[6];
  v22(v24, 1, 1, v20);
  v22(&v24[*(v23 + 20)], 1, 1, v20);
  v25 = v17 + v18[7];
  v22(v25, 1, 1, v20);
  v22(&v25[*(v23 + 20)], 1, 1, v20);
  Date.init()();
  sub_100004F84(v21, &unk_100AD4790);
  (*(v19 + 32))(v21, v44, v20);
  v22(v21, 0, 1, v20);
  (v47)(v48, v46, v43);
  v26 = sub_100081D68();
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  if (v27)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = 0;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v30 = v29;
  }

  if (v30)
  {
    v31 = swift_task_alloc();
    *(v0 + 1040) = v31;
    *v31 = v0;
    v31[1] = sub_100446328;
    v32 = *(v0 + 992);
    v33 = *(v0 + 984);
    v34 = *(v0 + 640);
    v35 = *(v0 + 632);
    v36 = *(v0 + 624);

    return sub_100621CD8(v0 + 96, v36, v35, v34, sub_1004534D8, v33, sub_100453508, v32);
  }

  else
  {
    v38 = *(v0 + 640);
    v39 = swift_task_alloc();
    *(v0 + 1024) = v39;
    *v39 = v0;
    v39[1] = sub_100445F78;
    v40 = *(v0 + 648);
    v41 = *(v0 + 632);
    v42 = *(v0 + 624);

    return sub_1006129CC(v42, v41, v38, v40);
  }
}

uint64_t sub_100445F78()
{
  v1 = *v0;
  v2 = *(*v0 + 656);
  v3 = *v0;

  v8 = (v2 + *v2);
  v4 = swift_task_alloc();
  v1[129] = v4;
  *v4 = v3;
  v4[1] = sub_100446154;
  v5 = v1[79];
  v6 = v1[78];

  return v8(v6, v5);
}

uint64_t sub_100446154()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[130] = v3;
  *v3 = v2;
  v3[1] = sub_100446328;
  v4 = v1[124];
  v5 = v1[123];
  v6 = v1[80];
  v7 = v1[79];
  v8 = v1[78];

  return sub_100621CD8((v1 + 12), v8, v7, v6, sub_1004534D8, v5, sub_100453508, v4);
}

uint64_t sub_100446328()
{
  v1 = *v0;

  v2 = *(v1 + 944);
  v3 = *(v1 + 936);

  return _swift_task_switch(sub_100446448, v3, v2);
}

uint64_t sub_100446448()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 1000);
    v3 = *(v0 + 880);
    v4 = *(v0 + 840);
    v5 = *(v0 + 832);
    v6 = *(v0 + 824);
    v7 = *(v0 + 816);
    v8 = *(v0 + 728);
    v48 = *(v0 + 808);
    v50 = *(v0 + 720);
    v9 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v9;
    *(v0 + 48) = v1;
    v10 = *(v0 + 136);
    v11 = *(v0 + 152);
    *(v0 + 88) = *(v0 + 168);
    *(v0 + 72) = v11;
    *(v0 + 56) = v10;
    *(v0 + 1048) = type metadata accessor for SuggestionUtil();
    *(v0 + 1056) = *(v0 + 72);
    *(v0 + 488) = *(v0 + 160);
    swift_beginAccess();
    *v3 = *(v0 + 488);
    sub_1000082B4(v0 + 488, v0 + 504, &unk_100AE4870);
    Date.init()();
    v12 = *(v4 + 24);
    sub_100004F84(&v3[v12], &unk_100AD4790);
    v13 = *(v6 + 16);
    *(v0 + 1064) = v13;
    *(v0 + 1072) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(&v3[v12], v5, v7);
    v2(&v3[v12], 0, 1, v7);
    swift_endAccess();
    v14 = *(v6 + 8);
    *(v0 + 1080) = v14;
    *(v0 + 1088) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v5, v7);
    v15 = *(v8 + 56);
    *(v0 + 1096) = v15;
    *(v0 + 1104) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v15(v48, 1, 1, v50);
    *(v0 + 1112) = 0;
    v16 = *(v0 + 1080);
    v17 = *(v0 + 832);
    v18 = *(v0 + 816);
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    *(v0 + 1120) = v19;
    v16(v17, v18);
    v20 = swift_task_alloc();
    *(v0 + 1128) = v20;
    *v20 = v0;
    v20[1] = sub_100446A78;
    v21 = *(v0 + 992);
    v22 = *(v0 + 792);
    v23 = *(v0 + 648);
    v24 = *(v0 + 632);
    v25 = *(v0 + 624);

    return sub_1006070AC(v22, v25, v24, v0 + 16, v23, 0, sub_100453508, v21);
  }

  else
  {
    v27 = *(v0 + 1016);
    v46 = *(v0 + 1000);
    v28 = *(v0 + 880);
    v29 = *(v0 + 840);
    v30 = *(v0 + 832);
    v31 = *(v0 + 824);
    v32 = *(v0 + 816);
    v49 = *(v0 + 712);
    v51 = *(v0 + 904);

    Date.init()();
    swift_beginAccess();
    v33 = v28 + *(v29 + 24);
    v34 = *(v27 + 20);
    sub_100004F84(v33 + v34, &unk_100AD4790);
    v35 = *(v31 + 16);
    v35(v33 + v34, v30, v32);
    v46(v33 + v34, 0, 1, v32);
    v36 = v28 + *(v29 + 20);
    v37 = *(v27 + 20);
    sub_100004F84(v36 + v37, &unk_100AD4790);
    v35(v36 + v37, v30, v32);
    v46(v36 + v37, 0, 1, v32);
    swift_beginAccess();
    sub_10044AD0C(v51, v49);
    swift_endAccess();
    sub_100004F84(v49, &qword_100AD1420);
    if (qword_100ACFD50 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 976);
    v39 = *(v0 + 968);
    v40 = *(v0 + 952);
    v52 = *(v0 + 920);
    v47 = *(v0 + 904);
    v41 = *(v0 + 888);
    v42 = *(v0 + 832);
    v43 = *(v0 + 824);
    v44 = *(v0 + 816);
    sub_1003EC7B0();
    sub_10045332C(0xD000000000000014, 0x80000001008F4400, v39, v38, &static os_log_type_t.default.getter);
    (*(v43 + 8))(v42, v44);

    swift_bridgeObjectRelease_n();

    v40(v47, v41);
    v40(v52, v41);
    sub_100069200(*(v0 + 880), type metadata accessor for AssetAnalytics.AssetTransferEvent);

    v45 = *(v0 + 8);

    return v45(0);
  }
}

uint64_t sub_100446A78()
{
  v1 = *v0;

  v2 = *(v1 + 944);
  v3 = *(v1 + 936);

  return _swift_task_switch(sub_100446B98, v3, v2);
}

uint64_t sub_100446B98()
{
  v210 = v0 + 16;
  v1 = *(v0 + 792);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v2 + 48);
  *(v0 + 1136) = v4;
  *(v0 + 1144) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 1120);
    v6 = *(v0 + 1080);
    v7 = *(v0 + 832);
    v8 = *(v0 + 816);
    sub_100004F84(v1, &qword_100AE45C8);
    *(v0 + 536) = 0;
    *(v0 + 544) = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    *(v0 + 520) = 0xD000000000000011;
    *(v0 + 528) = 0x80000001008F4420;
    *(v0 + 1152) = sub_1000F24EC(&unk_100AD5B10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100940080;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v11 = v10;
    v6(v7, v8);
    *(v9 + 56) = &type metadata for Double;
    *(v9 + 64) = &protocol witness table for Double;
    *(v9 + 32) = v11 - v5;
    v12._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v12);

    v13._object = 0x80000001008F4440;
    v13._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v13);
    v14 = *(v0 + 520);
    v15 = *(v0 + 528);
    if (qword_100ACFDA8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000617C(v16, qword_100AE4508);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 976);
      v20 = *(v0 + 968);
      v21 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_100008458(v20, v19, &v219);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_100008458(v14, v15, &v219);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    v22 = *(v0 + 56);
    *(v0 + 1160) = v22;
    if (*(v22 + 16))
    {
      v23 = *(v0 + 1080);
      v24 = *(v0 + 1048);
      v25 = *(v0 + 992);
      v26 = *(v0 + 984);
      v27 = *(v0 + 832);
      v28 = *(v0 + 816);
      v205 = *(v0 + 640);
      static Date.now.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      *(v0 + 1168) = v29;
      v23(v27, v28);
      Outcome = type metadata accessor for PhotoFetchOutcome();
      v31 = swift_task_alloc();
      *(v0 + 1176) = v31;
      v31[1].i64[0] = v22;
      v31[1].i64[1] = v24;
      v31[2] = vextq_s8(v205, v205, 8uLL);
      v31[3].i64[0] = v210;
      v31[3].i64[1] = sub_100453508;
      v31[4].i64[0] = v25;
      v31[4].i64[1] = sub_1004534D8;
      v31[5].i64[0] = v26;
      v32 = swift_task_alloc();
      *(v0 + 1184) = v32;
      *v32 = v0;
      v32[1] = sub_100448848;
      v33 = *(v0 + 632);
      v34 = *(v0 + 624);

      return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v32, Outcome, &type metadata for () + 8, v34, v33, &unk_100956710, v31, Outcome);
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 976);
      v44 = *(v0 + 968);
      v45 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *v45 = 136315394;
      *(v45 + 4) = sub_100008458(v44, v43, &v219);
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_100008458(0xD000000000000013, 0x80000001008F4540, &v219);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s %s", v45, 0x16u);
      swift_arrayDestroy();
    }

    v46 = 1;
  }

  else
  {
    v35 = *(v0 + 800);
    v36 = *(v0 + 752);
    sub_100048F6C(v1, v35, type metadata accessor for SuggestionMergeConflict);
    *(v0 + 600) = 0;
    *(v0 + 608) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    *(v0 + 584) = 0xD00000000000001BLL;
    *(v0 + 592) = 0x80000001008F4560;
    sub_100068B98(v35, v36, type metadata accessor for SuggestionMergeConflict);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v40 = EnumCaseMultiPayload == 2;
      if (EnumCaseMultiPayload == 2)
      {
        v39 = 0xD000000000000017;
      }

      else
      {
        v39 = 0x7373417972746E65;
      }

      if (v40)
      {
        v38 = 0x80000001008ED040;
      }

      else
      {
        v38 = 0xEF6C6C7546737465;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v38 = 0x80000001008ED000;
      v39 = 0xD000000000000017;
    }

    else
    {
      sub_100069200(*(v0 + 752), type metadata accessor for SuggestionMergeConflict);
      v38 = 0x80000001008ED020;
      v39 = 0xD000000000000018;
    }

    v47 = *(v0 + 1120);
    v48 = *(v0 + 1080);
    v49 = *(v0 + 832);
    v50 = *(v0 + 816);
    v51 = v38;
    String.append(_:)(*&v39);

    v52._countAndFlagsBits = 8236;
    v52._object = 0xE200000000000000;
    String.append(_:)(v52);
    sub_1000F24EC(&unk_100AD5B10);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100940080;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v55 = v54;
    v48(v49, v50);
    *(v53 + 56) = &type metadata for Double;
    *(v53 + 64) = &protocol witness table for Double;
    *(v53 + 32) = v55 - v47;
    v56._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v56);

    v57._object = 0x80000001008F4440;
    v57._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v57);
    v58 = *(v0 + 584);
    v59 = *(v0 + 592);
    if (qword_100ACFDA8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000617C(v60, qword_100AE4508);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 976);
      v64 = *(v0 + 968);
      v65 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *v65 = 136315394;
      *(v65 + 4) = sub_100008458(v64, v63, &v219);
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_100008458(v58, v59, &v219);
      _os_log_impl(&_mh_execute_header, v61, v62, "%s %s", v65, 0x16u);
      swift_arrayDestroy();
    }

    v46 = 0;
  }

  v66 = *(v0 + 1136);
  v67 = *(v0 + 800);
  v68 = *(v0 + 784);
  v69 = *(v0 + 720);
  (*(v0 + 1096))(v67, v46, 1, v69);
  sub_1000082B4(v67, v68, &qword_100AE45C8);
  if (v66(v68, 1, v69) != 1)
  {
    v100 = *(v0 + 744);
    v101 = *(v0 + 736);
    sub_100048F6C(*(v0 + 784), v100, type metadata accessor for SuggestionMergeConflict);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v100) = sub_100612570(v100, v101);
    sub_100069200(v101, type metadata accessor for SuggestionMergeConflict);
    if (v100)
    {
      v199 = *(v0 + 1056);
      v102 = *(v0 + 1016);
      v175 = *(v0 + 1064);
      v178 = *(v0 + 1000);
      v214 = *(v0 + 904);
      v103 = *(v0 + 880);
      v181 = *(v0 + 872);
      v185 = *(v0 + 864);
      v190 = *(v0 + 848);
      v104 = *(v0 + 840);
      v105 = *(v0 + 832);
      v106 = *(v0 + 816);
      v207 = *(v0 + 712);
      sub_10045332C(0xD000000000000045, 0x80000001008F44F0, *(v0 + 968), *(v0 + 976), &static os_log_type_t.default.getter);

      Date.init()();
      v107 = v103 + *(v104 + 24);
      v108 = *(v102 + 20);
      sub_100004F84(v107 + v108, &unk_100AD4790);
      v175(v107 + v108, v105, v106);
      v178(v107 + v108, 0, 1, v106);
      v109 = v103 + *(v104 + 20);
      v110 = *(v102 + 20);
      sub_100004F84(v109 + v110, &unk_100AD4790);
      v175(v109 + v110, v105, v106);
      v178(v109 + v110, 0, 1, v106);
      sub_100068B98(v103, v181, type metadata accessor for AssetAnalytics.AssetTransferEvent);
      v111 = String._bridgeToObjectiveC()();
      sub_100068B98(v181, v185, type metadata accessor for AssetAnalytics.AssetTransferEvent);
      v112 = (*(v190 + 80) + 32) & ~*(v190 + 80);
      v113 = swift_allocObject();
      *(v113 + 16) = v199;
      *(v113 + 24) = v199;
      sub_100048F6C(v185, v113 + v112, type metadata accessor for AssetAnalytics.AssetTransferEvent);
      *(v0 + 304) = sub_10045398C;
      *(v0 + 312) = v113;
      *(v0 + 272) = _NSConcreteStackBlock;
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1004455B4;
      *(v0 + 296) = &unk_100A6D668;
      v114 = _Block_copy((v0 + 272));

      AnalyticsSendEventLazy();
      _Block_release(v114);

      sub_100069200(v181, type metadata accessor for AssetAnalytics.AssetTransferEvent);
      swift_beginAccess();
      sub_10044AD0C(v214, v207);
      swift_endAccess();
      sub_100004F84(v207, &qword_100AD1420);
      if (qword_100ACFD50 != -1)
      {
        swift_once();
      }

      v115 = *(v0 + 1080);
      v116 = *(v0 + 976);
      v117 = *(v0 + 968);
      aBlocka = *(v0 + 952);
      v215 = *(v0 + 920);
      v118 = *(v0 + 888);
      v119 = *(v0 + 832);
      v120 = *(v0 + 816);
      v195 = *(v0 + 808);
      v200 = *(v0 + 904);
      v191 = *(v0 + 800);
      v186 = *(v0 + 744);
      sub_1003EC7B0();
      sub_10045332C(0xD000000000000014, 0x80000001008F4400, v117, v116, &static os_log_type_t.default.getter);
      v115(v119, v120);

      swift_bridgeObjectRelease_n();

      sub_100004F84(v0 + 96, &unk_100AE45D0);
      sub_100069200(v186, type metadata accessor for SuggestionMergeConflict);
      sub_100004F84(v191, &qword_100AE45C8);
      sub_100004F84(v195, &qword_100AE45C8);
      aBlocka(v200, v118);
      aBlocka(v215, v118);
      v213 = 1;
      goto LABEL_53;
    }

    v131 = *(v0 + 1136);
    v132 = *(v0 + 1096);
    v133 = *(v0 + 808);
    v134 = *(v0 + 776);
    v135 = *(v0 + 720);
    v136 = *(v0 + 704);
    v137 = *(v0 + 696);
    sub_100068B98(*(v0 + 744), v134, type metadata accessor for SuggestionMergeConflict);
    v132(v134, 0, 1, v135);
    v138 = *(v137 + 48);
    sub_1000082B4(v134, v136, &qword_100AE45C8);
    sub_1000082B4(v133, v136 + v138, &qword_100AE45C8);
    v139 = v131(v136, 1, v135);
    v140 = *(v0 + 1136);
    if (v139 == 1)
    {
      v141 = *(v0 + 720);
      sub_100004F84(*(v0 + 776), &qword_100AE45C8);
      if (v140(v136 + v138, 1, v141) == 1)
      {
        sub_100004F84(*(v0 + 704), &qword_100AE45C8);
LABEL_50:
        v201 = *(v0 + 1056);
        v153 = *(v0 + 1016);
        v176 = *(v0 + 1064);
        v179 = *(v0 + 1000);
        v217 = *(v0 + 904);
        v154 = *(v0 + 880);
        v182 = *(v0 + 872);
        v187 = *(v0 + 864);
        v192 = *(v0 + 848);
        v155 = *(v0 + 840);
        v156 = *(v0 + 832);
        v157 = *(v0 + 816);
        v208 = *(v0 + 712);
        sub_10045332C(0xD00000000000003FLL, 0x80000001008F44B0, *(v0 + 968), *(v0 + 976), &static os_log_type_t.error.getter);

        Date.init()();
        v158 = v154 + *(v155 + 24);
        v159 = *(v153 + 20);
        sub_100004F84(v158 + v159, &unk_100AD4790);
        v176(v158 + v159, v156, v157);
        v179(v158 + v159, 0, 1, v157);
        v160 = v154 + *(v155 + 20);
        v161 = *(v153 + 20);
        sub_100004F84(v160 + v161, &unk_100AD4790);
        v176(v160 + v161, v156, v157);
        v179(v160 + v161, 0, 1, v157);
        sub_100068B98(v154, v182, type metadata accessor for AssetAnalytics.AssetTransferEvent);
        v162 = String._bridgeToObjectiveC()();
        sub_100068B98(v182, v187, type metadata accessor for AssetAnalytics.AssetTransferEvent);
        v163 = (*(v192 + 80) + 32) & ~*(v192 + 80);
        v164 = swift_allocObject();
        *(v164 + 16) = v201;
        *(v164 + 24) = v201;
        sub_100048F6C(v187, v164 + v163, type metadata accessor for AssetAnalytics.AssetTransferEvent);
        *(v0 + 256) = sub_10045398C;
        *(v0 + 264) = v164;
        *(v0 + 224) = _NSConcreteStackBlock;
        *(v0 + 232) = 1107296256;
        *(v0 + 240) = sub_1004455B4;
        *(v0 + 248) = &unk_100A6D618;
        v165 = _Block_copy((v0 + 224));

        AnalyticsSendEventLazy();
        _Block_release(v165);

        sub_100069200(v182, type metadata accessor for AssetAnalytics.AssetTransferEvent);
        swift_beginAccess();
        sub_10044AD0C(v217, v208);
        swift_endAccess();
        sub_100004F84(v208, &qword_100AD1420);
        if (qword_100ACFD50 != -1)
        {
          swift_once();
        }

        v166 = *(v0 + 1080);
        v167 = *(v0 + 976);
        v168 = *(v0 + 968);
        v202 = *(v0 + 952);
        v209 = *(v0 + 920);
        v169 = *(v0 + 888);
        v170 = *(v0 + 832);
        v171 = *(v0 + 816);
        v193 = *(v0 + 808);
        v196 = *(v0 + 904);
        v188 = *(v0 + 800);
        v183 = *(v0 + 744);
        sub_1003EC7B0();
        sub_10045332C(0xD000000000000014, 0x80000001008F4400, v168, v167, &static os_log_type_t.default.getter);
        v166(v170, v171);

        v213 = 2;
        swift_bridgeObjectRelease_n();

        sub_100004F84(v0 + 96, &unk_100AE45D0);
        sub_100069200(v183, type metadata accessor for SuggestionMergeConflict);
        sub_100004F84(v188, &qword_100AE45C8);
        sub_100004F84(v193, &qword_100AE45C8);
        v202(v196, v169);
        v202(v209, v169);
        goto LABEL_53;
      }
    }

    else
    {
      v142 = *(v0 + 720);
      sub_1000082B4(*(v0 + 704), *(v0 + 768), &qword_100AE45C8);
      v143 = v140(v136 + v138, 1, v142);
      v144 = *(v0 + 776);
      v145 = *(v0 + 768);
      if (v143 != 1)
      {
        v150 = *(v0 + 736);
        v151 = *(v0 + 704);
        sub_100048F6C(v136 + v138, v150, type metadata accessor for SuggestionMergeConflict);
        v152 = sub_100612570(v145, v150);
        sub_100069200(v150, type metadata accessor for SuggestionMergeConflict);
        sub_100004F84(v144, &qword_100AE45C8);
        sub_100069200(v145, type metadata accessor for SuggestionMergeConflict);
        sub_100004F84(v151, &qword_100AE45C8);
        if (v152)
        {
          goto LABEL_50;
        }

LABEL_46:
        v216 = (*(v0 + 672) + **(v0 + 672));
        v146 = swift_task_alloc();
        *(v0 + 1192) = v146;
        *v146 = v0;
        v146[1] = sub_100449EFC;
        v147 = *(v0 + 744);
        v148 = *(v0 + 632);
        v149 = *(v0 + 624);

        return v216(v149, v148, v147);
      }

      sub_100004F84(*(v0 + 776), &qword_100AE45C8);
      sub_100069200(v145, type metadata accessor for SuggestionMergeConflict);
    }

    sub_100004F84(*(v0 + 704), &qword_100AE45C0);
    goto LABEL_46;
  }

  sub_100004F84(*(v0 + 808), &qword_100AE45C8);
  v70 = *(v0 + 1112);
  v71 = *(v0 + 1136);
  v72 = *(v0 + 808);
  v73 = *(v0 + 800);
  v74 = *(v0 + 760);
  v75 = *(v0 + 720);
  sub_100004F84(*(v0 + 784), &qword_100AE45C8);
  sub_100453638(v73, v72);
  sub_1000082B4(v72, v74, &qword_100AE45C8);
  if (v71(v74, 1, v75) == 1)
  {
    v76 = *(v0 + 1064);
    v197 = *(v0 + 1056);
    v77 = *(v0 + 1016);
    v177 = v77;
    v78 = *(v0 + 1000);
    v211 = *(v0 + 904);
    v79 = *(v0 + 880);
    v180 = *(v0 + 872);
    v184 = *(v0 + 864);
    v189 = *(v0 + 848);
    v80 = *(v0 + 840);
    v174 = v80;
    v81 = *(v0 + 832);
    v82 = *(v0 + 816);
    v83 = *(v0 + 760);
    v206 = *(v0 + 712);

    sub_100004F84(v83, &qword_100AE45C8);
    Date.init()();
    v84 = v79 + *(v80 + 24);
    v85 = v79;
    v86 = *(v77 + 20);
    sub_100004F84(v84 + v86, &unk_100AD4790);
    v76(v84 + v86, v81, v82);
    v78(v84 + v86, 0, 1, v82);
    v87 = v85 + *(v174 + 20);
    v88 = v85;
    v89 = *(v177 + 20);
    sub_100004F84(v87 + v89, &unk_100AD4790);
    v76(v87 + v89, v81, v82);
    v78(v87 + v89, 0, 1, v82);
    sub_100068B98(v88, v180, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    v90 = String._bridgeToObjectiveC()();
    sub_100068B98(v180, v184, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    v91 = (*(v189 + 80) + 32) & ~*(v189 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v197;
    *(v92 + 24) = v197;
    sub_100048F6C(v184, v92 + v91, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    *(v0 + 208) = sub_1004536A8;
    *(v0 + 216) = v92;
    *(v0 + 176) = _NSConcreteStackBlock;
    *(v0 + 184) = 1107296256;
    *(v0 + 192) = sub_1004455B4;
    *(v0 + 200) = &unk_100A6D5C8;
    v93 = _Block_copy((v0 + 176));

    AnalyticsSendEventLazy();
    _Block_release(v93);

    sub_100069200(v180, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    swift_beginAccess();
    sub_10044AD0C(v211, v206);
    swift_endAccess();
    sub_100004F84(v206, &qword_100AD1420);
    if (qword_100ACFD50 != -1)
    {
      swift_once();
    }

    v94 = *(v0 + 1080);
    v95 = *(v0 + 976);
    v96 = *(v0 + 968);
    aBlock = *(v0 + 952);
    v212 = *(v0 + 920);
    v198 = *(v0 + 904);
    v97 = *(v0 + 888);
    v98 = *(v0 + 832);
    v99 = *(v0 + 816);
    v194 = *(v0 + 808);
    sub_1003EC7B0();
    sub_10045332C(0xD000000000000014, 0x80000001008F4400, v96, v95, &static os_log_type_t.default.getter);
    v94(v98, v99);

    swift_bridgeObjectRelease_n();

    sub_100004F84(v0 + 96, &unk_100AE45D0);
    sub_100004F84(v194, &qword_100AE45C8);
    aBlock(v198, v97);
    aBlock(v212, v97);
    v213 = 0;
LABEL_53:
    sub_100069200(*(v0 + 880), type metadata accessor for AssetAnalytics.AssetTransferEvent);

    v172 = *(v0 + 8);

    return v172(v213);
  }

  sub_100004F84(*(v0 + 760), &qword_100AE45C8);
  *(v0 + 1112) = v70;
  v121 = *(v0 + 1080);
  v122 = *(v0 + 832);
  v123 = *(v0 + 816);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  *(v0 + 1120) = v124;
  v121(v122, v123);
  v125 = swift_task_alloc();
  *(v0 + 1128) = v125;
  *v125 = v0;
  v125[1] = sub_100446A78;
  v126 = *(v0 + 992);
  v127 = *(v0 + 792);
  v128 = *(v0 + 648);
  v129 = *(v0 + 632);
  v130 = *(v0 + 624);

  return sub_1006070AC(v127, v130, v129, v210, v128, v70, sub_100453508, v126);
}

uint64_t sub_100448848()
{
  v2 = *v1;

  if (v0)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v4 = *(v2 + 944);
    v5 = *(v2 + 936);

    return _swift_task_switch(sub_10044899C, v5, v4);
  }
}

uint64_t sub_10044899C()
{
  v1 = v0[146];
  v2 = *(v0 + 145);
  v3 = *(v0 + 135);
  v159 = *(v0 + 122);
  v154 = *(v0 + 121);
  v4 = *(v0 + 104);
  v5 = *(v0 + 102);
  v0[71] = 0.0;
  v0[72] = -2.68156159e154;
  _StringGuts.grow(_:)(74);
  v6 = *(v0 + 72);
  v0[69] = v0[71];
  *(v0 + 70) = v6;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  v7._object = 0x80000001008F4460;
  String.append(_:)(v7);
  v0[77] = *(v2 + 16);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD000000000000020;
  v9._object = 0x80000001008F4480;
  String.append(_:)(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100940080;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v12 = v11;
  v3(v4, v5);
  *(v10 + 56) = &type metadata for Double;
  *(v10 + 64) = &protocol witness table for Double;
  *(v10 + 32) = v12 - v1;
  v13._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x73646E6F63657320;
  v14._object = 0xE90000000000002ELL;
  String.append(_:)(v14);
  sub_10045332C(*(v0 + 69), *(v0 + 70), v154, v159, &static os_log_type_t.default.getter);

  v15 = *(v0 + 142);
  v16 = *(v0 + 100);
  v17 = *(v0 + 98);
  v18 = *(v0 + 90);
  (*(v0 + 137))(v16, 1, 1, v18);
  sub_1000082B4(v16, v17, &qword_100AE45C8);
  if (v15(v17, 1, v18) != 1)
  {
    v50 = *(v0 + 93);
    v51 = *(v0 + 92);
    sub_100048F6C(*(v0 + 98), v50, type metadata accessor for SuggestionMergeConflict);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v50) = sub_100612570(v50, v51);
    sub_100069200(v51, type metadata accessor for SuggestionMergeConflict);
    if (v50)
    {
      v148 = *(v0 + 132);
      v52 = *(v0 + 127);
      v125 = *(v0 + 133);
      v128 = *(v0 + 125);
      v53 = *(v0 + 110);
      v131 = *(v0 + 109);
      v135 = *(v0 + 108);
      v140 = *(v0 + 106);
      v54 = *(v0 + 105);
      v55 = *(v0 + 104);
      v56 = *(v0 + 102);
      v156 = *(v0 + 89);
      v163 = *(v0 + 113);
      sub_10045332C(0xD000000000000045, 0x80000001008F44F0, *(v0 + 121), *(v0 + 122), &static os_log_type_t.default.getter);

      Date.init()();
      v57 = v53 + *(v54 + 24);
      v58 = *(v52 + 20);
      sub_100004F84(v57 + v58, &unk_100AD4790);
      v125(v57 + v58, v55, v56);
      v128(v57 + v58, 0, 1, v56);
      v59 = v53 + *(v54 + 20);
      v60 = *(v52 + 20);
      sub_100004F84(v59 + v60, &unk_100AD4790);
      v125(v59 + v60, v55, v56);
      v128(v59 + v60, 0, 1, v56);
      sub_100068B98(v53, v131, type metadata accessor for AssetAnalytics.AssetTransferEvent);
      v61 = String._bridgeToObjectiveC()();
      sub_100068B98(v131, v135, type metadata accessor for AssetAnalytics.AssetTransferEvent);
      v62 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = v148;
      *(v63 + 24) = v148;
      sub_100048F6C(v135, v63 + v62, type metadata accessor for AssetAnalytics.AssetTransferEvent);
      *(v0 + 38) = sub_10045398C;
      *(v0 + 39) = v63;
      *(v0 + 34) = _NSConcreteStackBlock;
      *(v0 + 35) = 1107296256;
      *(v0 + 36) = sub_1004455B4;
      *(v0 + 37) = &unk_100A6D668;
      v64 = _Block_copy(v0 + 34);

      AnalyticsSendEventLazy();
      _Block_release(v64);

      sub_100069200(v131, type metadata accessor for AssetAnalytics.AssetTransferEvent);
      swift_beginAccess();
      sub_10044AD0C(v163, v156);
      swift_endAccess();
      sub_100004F84(v156, &qword_100AD1420);
      if (qword_100ACFD50 != -1)
      {
        swift_once();
      }

      v65 = *(v0 + 135);
      v66 = *(v0 + 122);
      v67 = *(v0 + 121);
      aBlocka = *(v0 + 119);
      v164 = *(v0 + 115);
      v68 = *(v0 + 111);
      v69 = *(v0 + 104);
      v70 = *(v0 + 102);
      v144 = *(v0 + 101);
      v149 = *(v0 + 113);
      v141 = *(v0 + 100);
      v136 = *(v0 + 93);
      sub_1003EC7B0();
      sub_10045332C(0xD000000000000014, 0x80000001008F4400, v67, v66, &static os_log_type_t.default.getter);
      v65(v69, v70);

      swift_bridgeObjectRelease_n();

      sub_100004F84((v0 + 12), &unk_100AE45D0);
      sub_100069200(v136, type metadata accessor for SuggestionMergeConflict);
      sub_100004F84(v141, &qword_100AE45C8);
      sub_100004F84(v144, &qword_100AE45C8);
      aBlocka(v149, v68);
      aBlocka(v164, v68);
      v162 = 1;
      goto LABEL_26;
    }

    v82 = *(v0 + 142);
    v83 = *(v0 + 137);
    v84 = *(v0 + 101);
    v85 = *(v0 + 97);
    v86 = *(v0 + 90);
    v87 = *(v0 + 88);
    v88 = *(v0 + 87);
    sub_100068B98(*(v0 + 93), v85, type metadata accessor for SuggestionMergeConflict);
    v83(v85, 0, 1, v86);
    v89 = *(v88 + 48);
    sub_1000082B4(v85, v87, &qword_100AE45C8);
    sub_1000082B4(v84, v87 + v89, &qword_100AE45C8);
    v90 = v82(v87, 1, v86);
    v91 = *(v0 + 142);
    if (v90 == 1)
    {
      v92 = *(v0 + 90);
      sub_100004F84(*(v0 + 97), &qword_100AE45C8);
      if (v91(v87 + v89, 1, v92) == 1)
      {
        sub_100004F84(*(v0 + 88), &qword_100AE45C8);
LABEL_23:
        v150 = *(v0 + 132);
        v104 = *(v0 + 127);
        v126 = *(v0 + 133);
        v129 = *(v0 + 125);
        v105 = *(v0 + 110);
        v132 = *(v0 + 109);
        v137 = *(v0 + 108);
        v142 = *(v0 + 106);
        v106 = *(v0 + 105);
        v107 = *(v0 + 104);
        v108 = *(v0 + 102);
        v157 = *(v0 + 89);
        v166 = *(v0 + 113);
        sub_10045332C(0xD00000000000003FLL, 0x80000001008F44B0, *(v0 + 121), *(v0 + 122), &static os_log_type_t.error.getter);

        Date.init()();
        v109 = v105 + *(v106 + 24);
        v110 = *(v104 + 20);
        sub_100004F84(v109 + v110, &unk_100AD4790);
        v126(v109 + v110, v107, v108);
        v129(v109 + v110, 0, 1, v108);
        v111 = v105 + *(v106 + 20);
        v112 = *(v104 + 20);
        sub_100004F84(v111 + v112, &unk_100AD4790);
        v126(v111 + v112, v107, v108);
        v129(v111 + v112, 0, 1, v108);
        sub_100068B98(v105, v132, type metadata accessor for AssetAnalytics.AssetTransferEvent);
        v113 = String._bridgeToObjectiveC()();
        sub_100068B98(v132, v137, type metadata accessor for AssetAnalytics.AssetTransferEvent);
        v114 = (*(v142 + 80) + 32) & ~*(v142 + 80);
        v115 = swift_allocObject();
        *(v115 + 16) = v150;
        *(v115 + 24) = v150;
        sub_100048F6C(v137, v115 + v114, type metadata accessor for AssetAnalytics.AssetTransferEvent);
        *(v0 + 32) = sub_10045398C;
        *(v0 + 33) = v115;
        *(v0 + 28) = _NSConcreteStackBlock;
        *(v0 + 29) = 1107296256;
        *(v0 + 30) = sub_1004455B4;
        *(v0 + 31) = &unk_100A6D618;
        v116 = _Block_copy(v0 + 28);

        AnalyticsSendEventLazy();
        _Block_release(v116);

        sub_100069200(v132, type metadata accessor for AssetAnalytics.AssetTransferEvent);
        swift_beginAccess();
        sub_10044AD0C(v166, v157);
        swift_endAccess();
        sub_100004F84(v157, &qword_100AD1420);
        if (qword_100ACFD50 != -1)
        {
          swift_once();
        }

        v117 = *(v0 + 135);
        v118 = *(v0 + 122);
        v119 = *(v0 + 121);
        v151 = *(v0 + 119);
        v158 = *(v0 + 115);
        v120 = *(v0 + 111);
        v121 = *(v0 + 104);
        v122 = *(v0 + 102);
        v143 = *(v0 + 101);
        v145 = *(v0 + 113);
        v138 = *(v0 + 100);
        v133 = *(v0 + 93);
        sub_1003EC7B0();
        sub_10045332C(0xD000000000000014, 0x80000001008F4400, v119, v118, &static os_log_type_t.default.getter);
        v117(v121, v122);

        v162 = 2;
        swift_bridgeObjectRelease_n();

        sub_100004F84((v0 + 12), &unk_100AE45D0);
        sub_100069200(v133, type metadata accessor for SuggestionMergeConflict);
        sub_100004F84(v138, &qword_100AE45C8);
        sub_100004F84(v143, &qword_100AE45C8);
        v151(v145, v120);
        v151(v158, v120);
        goto LABEL_26;
      }
    }

    else
    {
      v93 = *(v0 + 90);
      sub_1000082B4(*(v0 + 88), *(v0 + 96), &qword_100AE45C8);
      v94 = v91(v87 + v89, 1, v93);
      v95 = *(v0 + 97);
      v96 = *(v0 + 96);
      if (v94 != 1)
      {
        v101 = *(v0 + 92);
        v102 = *(v0 + 88);
        sub_100048F6C(v87 + v89, v101, type metadata accessor for SuggestionMergeConflict);
        v103 = sub_100612570(v96, v101);
        sub_100069200(v101, type metadata accessor for SuggestionMergeConflict);
        sub_100004F84(v95, &qword_100AE45C8);
        sub_100069200(v96, type metadata accessor for SuggestionMergeConflict);
        sub_100004F84(v102, &qword_100AE45C8);
        if (v103)
        {
          goto LABEL_23;
        }

LABEL_19:
        v165 = (*(v0 + 84) + **(v0 + 84));
        v97 = swift_task_alloc();
        *(v0 + 149) = v97;
        *v97 = v0;
        v97[1] = sub_100449EFC;
        v98 = *(v0 + 93);
        v99 = *(v0 + 79);
        v100 = *(v0 + 78);

        return v165(v100, v99, v98);
      }

      sub_100004F84(*(v0 + 97), &qword_100AE45C8);
      sub_100069200(v96, type metadata accessor for SuggestionMergeConflict);
    }

    sub_100004F84(*(v0 + 88), &qword_100AE45C0);
    goto LABEL_19;
  }

  sub_100004F84(*(v0 + 101), &qword_100AE45C8);
  v19 = *(v0 + 139);
  v20 = *(v0 + 142);
  v21 = *(v0 + 101);
  v22 = *(v0 + 100);
  v23 = *(v0 + 95);
  v24 = *(v0 + 90);
  sub_100004F84(*(v0 + 98), &qword_100AE45C8);
  sub_100453638(v22, v21);
  sub_1000082B4(v21, v23, &qword_100AE45C8);
  if (v20(v23, 1, v24) == 1)
  {
    v25 = *(v0 + 133);
    v146 = *(v0 + 132);
    v26 = *(v0 + 127);
    v127 = v26;
    v27 = *(v0 + 125);
    v28 = *(v0 + 110);
    v130 = *(v0 + 109);
    v134 = *(v0 + 108);
    v139 = *(v0 + 106);
    v29 = *(v0 + 105);
    v124 = v29;
    v30 = *(v0 + 104);
    v31 = *(v0 + 102);
    v32 = *(v0 + 95);
    v155 = *(v0 + 89);
    v160 = *(v0 + 113);

    sub_100004F84(v32, &qword_100AE45C8);
    Date.init()();
    v33 = v28 + *(v29 + 24);
    v34 = v28;
    v35 = *(v26 + 20);
    sub_100004F84(v33 + v35, &unk_100AD4790);
    v25(v33 + v35, v30, v31);
    v27(v33 + v35, 0, 1, v31);
    v36 = v34 + *(v124 + 20);
    v37 = v34;
    v38 = *(v127 + 20);
    sub_100004F84(v36 + v38, &unk_100AD4790);
    v25(v36 + v38, v30, v31);
    v27(v36 + v38, 0, 1, v31);
    sub_100068B98(v37, v130, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    v39 = String._bridgeToObjectiveC()();
    sub_100068B98(v130, v134, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    v40 = (*(v139 + 80) + 32) & ~*(v139 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v146;
    *(v41 + 24) = v146;
    sub_100048F6C(v134, v41 + v40, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    *(v0 + 26) = sub_1004536A8;
    *(v0 + 27) = v41;
    *(v0 + 22) = _NSConcreteStackBlock;
    *(v0 + 23) = 1107296256;
    *(v0 + 24) = sub_1004455B4;
    *(v0 + 25) = &unk_100A6D5C8;
    v42 = _Block_copy(v0 + 22);

    AnalyticsSendEventLazy();
    _Block_release(v42);

    sub_100069200(v130, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    swift_beginAccess();
    sub_10044AD0C(v160, v155);
    swift_endAccess();
    sub_100004F84(v155, &qword_100AD1420);
    if (qword_100ACFD50 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 135);
    v44 = *(v0 + 122);
    v45 = *(v0 + 121);
    v46 = *(v0 + 119);
    v161 = *(v0 + 115);
    v47 = *(v0 + 111);
    v48 = *(v0 + 104);
    v49 = *(v0 + 102);
    v147 = *(v0 + 101);
    aBlock = *(v0 + 113);
    sub_1003EC7B0();
    sub_10045332C(0xD000000000000014, 0x80000001008F4400, v45, v44, &static os_log_type_t.default.getter);
    v43(v48, v49);

    swift_bridgeObjectRelease_n();

    sub_100004F84((v0 + 12), &unk_100AE45D0);
    sub_100004F84(v147, &qword_100AE45C8);
    v46(aBlock, v47);
    v46(v161, v47);
    v162 = 0;
LABEL_26:
    sub_100069200(*(v0 + 110), type metadata accessor for AssetAnalytics.AssetTransferEvent);

    v123 = *(v0 + 1);

    return v123(v162);
  }

  sub_100004F84(*(v0 + 95), &qword_100AE45C8);
  *(v0 + 139) = v19;
  v71 = *(v0 + 135);
  v72 = *(v0 + 104);
  v73 = *(v0 + 102);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  *(v0 + 140) = v74;
  v71(v72, v73);
  v75 = swift_task_alloc();
  *(v0 + 141) = v75;
  *v75 = v0;
  v75[1] = sub_100446A78;
  v76 = *(v0 + 124);
  v77 = *(v0 + 99);
  v78 = *(v0 + 81);
  v79 = *(v0 + 79);
  v80 = *(v0 + 78);

  return sub_1006070AC(v77, v80, v79, (v0 + 2), v78, v19, sub_100453508, v76);
}

uint64_t sub_100449EFC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 1200) = a1;

  v3 = *(v2 + 944);
  v4 = *(v2 + 936);

  return _swift_task_switch(sub_10044A024, v4, v3);
}

uint64_t sub_10044A024()
{
  sub_100069200(v0[93], type metadata accessor for SuggestionMergeConflict);
  v1 = v0[150];
  v2 = v0[101];
  v3 = v0[142];
  v4 = v0[100];
  v5 = v0[95];
  v6 = v0[90];
  sub_100004F84(v2, &qword_100AE45C8);
  sub_100453638(v4, v2);
  sub_1000082B4(v2, v5, &qword_100AE45C8);
  if (v3(v5, 1, v6) == 1)
  {
    v7 = v0[133];
    v49 = v0[132];
    v8 = v0[127];
    v45 = v8;
    v9 = v0[125];
    v10 = v0[110];
    v46 = v0[109];
    v47 = v0[108];
    v48 = v0[106];
    v11 = v0[105];
    v44 = v11;
    v12 = v0[104];
    v13 = v0[102];
    v14 = v0[95];
    v52 = v0[89];
    v53 = v0[113];

    sub_100004F84(v14, &qword_100AE45C8);
    Date.init()();
    v15 = v10 + *(v11 + 24);
    v16 = v10;
    v17 = *(v8 + 20);
    sub_100004F84(v15 + v17, &unk_100AD4790);
    v7(v15 + v17, v12, v13);
    v9(v15 + v17, 0, 1, v13);
    v18 = v16 + *(v44 + 20);
    v19 = v16;
    v20 = *(v45 + 20);
    sub_100004F84(v18 + v20, &unk_100AD4790);
    v7(v18 + v20, v12, v13);
    v9(v18 + v20, 0, 1, v13);
    sub_100068B98(v19, v46, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    v21 = String._bridgeToObjectiveC()();
    sub_100068B98(v46, v47, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    v22 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v49;
    *(v23 + 24) = v49;
    sub_100048F6C(v47, v23 + v22, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    v0[26] = sub_1004536A8;
    v0[27] = v23;
    v0[22] = _NSConcreteStackBlock;
    v0[23] = 1107296256;
    v0[24] = sub_1004455B4;
    v0[25] = &unk_100A6D5C8;
    v24 = _Block_copy(v0 + 22);

    AnalyticsSendEventLazy();
    _Block_release(v24);

    sub_100069200(v46, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    swift_beginAccess();
    sub_10044AD0C(v53, v52);
    swift_endAccess();
    sub_100004F84(v52, &qword_100AD1420);
    if (qword_100ACFD50 != -1)
    {
      swift_once();
    }

    v25 = v0[135];
    v26 = v0[122];
    v27 = v0[121];
    v28 = v0[119];
    v54 = v0[115];
    v29 = v0[111];
    v30 = v0[104];
    v31 = v0[102];
    v50 = v0[101];
    aBlock = v0[113];
    sub_1003EC7B0();
    sub_10045332C(0xD000000000000014, 0x80000001008F4400, v27, v26, &static os_log_type_t.default.getter);
    v25(v30, v31);

    swift_bridgeObjectRelease_n();

    sub_100004F84((v0 + 12), &unk_100AE45D0);
    sub_100004F84(v50, &qword_100AE45C8);
    v28(aBlock, v29);
    v28(v54, v29);
    sub_100069200(v0[110], type metadata accessor for AssetAnalytics.AssetTransferEvent);

    v32 = v0[1];

    return v32(0);
  }

  else
  {
    sub_100004F84(v0[95], &qword_100AE45C8);
    v0[139] = v1;
    v34 = v0[135];
    v35 = v0[104];
    v36 = v0[102];
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v0[140] = v37;
    v34(v35, v36);
    v38 = swift_task_alloc();
    v0[141] = v38;
    *v38 = v0;
    v38[1] = sub_100446A78;
    v39 = v0[124];
    v40 = v0[99];
    v41 = v0[81];
    v42 = v0[79];
    v43 = v0[78];

    return sub_1006070AC(v40, v43, v42, (v0 + 2), v41, v1, sub_100453508, v39);
  }
}

uint64_t sub_10044A75C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_10044B1E8();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for JournalMO();
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100294F00();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_10044B97C(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_10044A920(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v10 = *v5;
    }

    else
    {
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = a1;
    v12 = __CocoaSet.contains(_:)();

    if (v12)
    {
      v13 = sub_10044B340(v10, v11, a5, a2);

      return v13;
    }

    return 0;
  }

  v16 = v5;
  sub_1000065A8(0, a2);
  v17 = NSObject._rawHashValue(seed:)(*(v7 + 40));
  v18 = -1 << *(v7 + 32);
  v19 = v17 & ~v18;
  if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v7 + 48) + 8 * v19);
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v7 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v16;
  v26 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v24 = v26;
  }

  v25 = *(*(v24 + 48) + 8 * v19);
  sub_10044B97C(v19);
  result = v25;
  *v16 = v26;
  return result;
}

uint64_t sub_10044AAC8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100294D7C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10044B4B0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10044AC04(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 8;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 8;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100295A4C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_10044BB1C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_10044AD0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100453938(&qword_100AD4B40, &type metadata accessor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100453938(&qword_100AD9220, &type metadata accessor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100294ED8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_10044B674(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_10044AFF0(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 13;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 13;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100295A60();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_10044BB1C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_10044B0F8(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100296078();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_10044BCC4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_10044B1E8()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_10028B878(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    type metadata accessor for JournalMO();
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_10044B97C(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10044B340(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4)
{
  v7 = v4;

  v8 = __CocoaSet.count.getter();
  v9 = swift_unknownObjectRetain();
  v10 = a3(v9, v8);
  v20 = v10;
  v11 = *(v10 + 40);

  v12 = NSObject._rawHashValue(seed:)(v11);
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    sub_1000065A8(0, a4);
    while (1)
    {
      v16 = *(*(v10 + 48) + 8 * v14);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v18 = *(*(v10 + 48) + 8 * v14);
  sub_10044B97C(v14);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v7 = v20;
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10044B4B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_10044B674(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_100453938(&qword_100AD4B40, &type metadata accessor for UUID);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

unint64_t sub_10044B97C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10044BB1C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10044BCC4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10044BE48(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  if (qword_100ACFCB8 != -1)
  {
    swift_once();
  }

  v15 = qword_100B2F858;
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_100356C88;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A6D528;
  v13 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100453938(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v4, v2);
  (*(v5 + 8))(v7, v16);
}

uint64_t sub_10044C1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 852) = a7;
  *(v7 + 144) = a5;
  *(v7 + 152) = a6;
  *(v7 + 128) = a3;
  *(v7 + 136) = a4;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  sub_1000F24EC(&qword_100AD1420);
  *(v7 + 160) = swift_task_alloc();
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 168) = v9;
  *(v7 + 176) = *(v9 - 8);
  *(v7 + 184) = swift_task_alloc();
  v10 = type metadata accessor for JournalFeatureFlags();
  *(v7 + 192) = v10;
  *(v7 + 200) = *(v10 - 8);
  *(v7 + 208) = swift_task_alloc();
  v11 = type metadata accessor for AssetType();
  *(v7 + 216) = v11;
  *(v7 + 224) = *(v11 - 8);
  *(v7 + 232) = swift_task_alloc();
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  v12 = type metadata accessor for AssetPlacement();
  *(v7 + 256) = v12;
  *(v7 + 264) = *(v12 - 8);
  *(v7 + 272) = swift_task_alloc();
  v13 = type metadata accessor for AssetSource();
  *(v7 + 280) = v13;
  *(v7 + 288) = *(v13 - 8);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = sub_1000F24EC(&qword_100AD6BD8);
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED30);
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  v14 = type metadata accessor for VisitAssetMetadata();
  *(v7 + 408) = v14;
  *(v7 + 416) = *(v14 - 8);
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD5B30);
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  v15 = type metadata accessor for MultiPinMapAssetMetadata();
  *(v7 + 504) = v15;
  *(v7 + 512) = *(v15 - 8);
  *(v7 + 520) = swift_task_alloc();
  *(v7 + 528) = swift_task_alloc();
  *(v7 + 536) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *(v7 + 552) = v18;
  *(v7 + 544) = v16;

  return _swift_task_switch(sub_10044C6F8, v16, v18);
}

uint64_t sub_10044C6F8()
{
  v1 = *(v0 + 136);
  v2 = OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
  if (v3)
  {
    v4 = *(v0 + 504);
    v5 = *(v0 + 512);
    v6 = *(v0 + 496);
    if (*&v3[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
    {
      v7 = v3;

      sub_1000768B4(v6);

      if ((*(v5 + 48))(v6, 1, v4) != 1)
      {
        v9 = *(v0 + 536);
        v10 = *(v0 + 504);
        v11 = *(v0 + 512);
        (*(v11 + 32))(v9, *(v0 + 496), v10);
        v8 = MultiPinMapAssetMetadata.visitsData.getter();

        (*(v11 + 8))(v9, v10);
        goto LABEL_9;
      }
    }

    else
    {
      (*(v5 + 56))(*(v0 + 496), 1, 1, *(v0 + 504));
    }

    sub_100004F84(*(v0 + 496), &unk_100AD5B30);
    v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  *(v0 + 560) = v8;
  type metadata accessor for MultiPinMapAsset();
  v12 = swift_dynamicCastClass();
  if (!v12 || !*(v12 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    v17 = *(v0 + 504);
    v18 = *(v0 + 512);
    v19 = *(v0 + 488);

    (*(v18 + 56))(v19, 1, 1, v17);
    goto LABEL_14;
  }

  v13 = *(v0 + 504);
  v14 = *(v0 + 512);
  v15 = *(v0 + 488);

  sub_1000768B4(v15);

  v16 = *(v14 + 48);
  *(v0 + 568) = v16;
  *(v0 + 576) = (v14 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v16(v15, 1, v13) == 1)
  {

LABEL_14:
    sub_100004F84(*(v0 + 488), &unk_100AD5B30);
    goto LABEL_15;
  }

  v44 = *(v0 + 528);
  v45 = *(v0 + 504);
  v46 = *(v0 + 512);
  v47 = *(v0 + 488);
  v48 = *(v46 + 32);
  *(v0 + 584) = v48;
  *(v0 + 592) = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v48(v44, v47, v45);
  v49 = *(v1 + v2);
  *(v0 + 600) = v49;
  if (v49)
  {
    v49;
    v50 = swift_task_alloc();
    *(v0 + 608) = v50;
    *v50 = v0;
    v50[1] = sub_10044D18C;
    v51 = *(v0 + 528);

    return sub_1001B2D30(v51);
  }

  (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));

LABEL_15:
  if (*(v0 + 852) == 1)
  {
    type metadata accessor for PlaceholderAsset();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for MainActor();
      *(v0 + 728) = static MainActor.shared.getter();
      v59 = dispatch thunk of Actor.unownedExecutor.getter();
      v61 = v60;
      v54 = sub_100450B78;
      v55 = v59;
      v56 = v61;

      return _swift_task_switch(v54, v55, v56);
    }
  }

  v20 = sub_1004448B0();
  if (sub_100119B20(v20))
  {
    v21 = *(v0 + 144);
    if (v21)
    {
      v22 = v21;
      sub_1000F24EC(&unk_100AE1A40);
      v23 = type metadata accessor for UUID();
      v24 = *(v23 - 8);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100940080;
      (*(v24 + 16))(v26 + v25, v22 + OBJC_IVAR____TtC7Journal5Asset_id, v23);
      v27 = sub_1004960D4(v26);
      *(v0 + 736) = v27;
      swift_setDeallocating();
      (*(v24 + 8))(v26 + v25, v23);
      swift_deallocClassInstance();
      v28 = swift_task_alloc();
      *(v0 + 744) = v28;
      *v28 = v0;
      v28[1] = sub_100451330;
      v30 = *(v0 + 112);
      v29 = *(v0 + 120);

      return sub_10056824C(v30, v29, v27);
    }

    v58 = 2;
    goto LABEL_44;
  }

  v33 = *(v0 + 264);
  v32 = *(v0 + 272);
  v34 = *(v0 + 256);
  v35 = *(v0 + 144);
  *(v0 + 848) = enum case for AssetPlacement.hidden(_:);
  v36 = *(v33 + 104);
  *(v0 + 752) = v36;
  *(v0 + 760) = (v33 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v36(v32);
  *(v0 + 768) = sub_100453938(&qword_100AE45B8, &type metadata accessor for AssetPlacement);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v33 + 8);
  *(v0 + 776) = v38;
  *(v0 + 784) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v32, v34);
  if ((v37 & 1) == 0 && v35)
  {
    v39 = *(v0 + 144);
    v40 = swift_task_alloc();
    *(v0 + 792) = v40;
    *v40 = v0;
    v40[1] = sub_100451680;
    v41 = *(v0 + 128);
    v43 = *(v0 + 112);
    v42 = *(v0 + 120);

    return sub_100566FD4(v43, v42, v39, v41);
  }

  v52 = *(*(v0 + 136) + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v52 >> 62)
  {
    v53 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = sub_10005AAB0(128);
  if (qword_100AD0A20 != -1)
  {
    v78 = v54;
    swift_once();
    v54 = v78;
  }

  v57 = qword_100B30F68;
  if (v54)
  {
    v57 = qword_100B30F68 - 1;
    if (__OFSUB__(qword_100B30F68, 1))
    {
      __break(1u);
      return _swift_task_switch(v54, v55, v56);
    }
  }

  if (v53 >= v57 && !*(v0 + 144))
  {
    v58 = 1;
LABEL_44:
    v79 = v58;

    v62 = *(v0 + 8);

    return v62(v79);
  }

  v64 = *(v0 + 200);
  v63 = *(v0 + 208);
  v65 = *(v0 + 192);
  (*(v64 + 104))(v63, enum case for JournalFeatureFlags.enhancedSync(_:), v65);
  v66 = JournalFeatureFlags.isEnabled.getter();
  (*(v64 + 8))(v63, v65);
  if (v66)
  {
    *(v0 + 808) = CFAbsoluteTimeGetCurrent();
    v67 = swift_task_alloc();
    *(v0 + 816) = v67;
    *v67 = v0;
    v67[1] = sub_1004520C0;
    v68 = *(v0 + 852);
    v69 = *(v0 + 152);
    v70 = *(v0 + 128);
    v72 = *(v0 + 112);
    v71 = *(v0 + 120);

    return sub_10056B238(v72, v71, v70, v69, v68);
  }

  else
  {
    v73 = swift_task_alloc();
    *(v0 + 832) = v73;
    *v73 = v0;
    v73[1] = sub_100452430;
    v74 = *(v0 + 152);
    v75 = *(v0 + 128);
    v77 = *(v0 + 112);
    v76 = *(v0 + 120);

    return sub_1001F8424(v77, v76, v75, v74);
  }
}

uint64_t sub_10044D18C()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_10044D2AC, v3, v2);
}

uint64_t sub_10044D2AC()
{
  v1 = v0[75];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v1;
    v5 = swift_task_alloc();
    v0[77] = v5;
    *v5 = v0;
    v5[1] = sub_10044D394;
    v7 = v0[14];
    v6 = v0[15];

    return sub_10078BBDC(v7, v6, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10044D394()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_10044D4B4, v3, v2);
}

uint64_t sub_10044D4B4()
{
  v1 = swift_task_alloc();
  *(v0 + 624) = v1;
  *v1 = v0;
  v1[1] = sub_10044D564;
  v2 = *(v0 + 112);

  return sub_1001DA5A8(v2);
}

uint64_t sub_10044D564()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_10044D684, v3, v2);
}

uint64_t sub_10044D684()
{
  if (qword_100ACFCB0 != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v1 = *(v0 + 600);
    v2 = OBJC_IVAR____TtC7Journal5Asset_id;
    *(v0 + 632) = OBJC_IVAR____TtC7Journal5Asset_id;
    sub_10044BE48(v1 + v2);
    v3 = objc_opt_self();
    *(v0 + 640) = v3;
    v4 = [v3 defaultCenter];
    if (qword_100ACFFA8 != -1)
    {
      swift_once();
    }

    v5 = qword_100B2FB98;
    *(v0 + 648) = qword_100B2FB98;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v4 postNotificationName:v5 object:isa];

    if (sub_10011A350())
    {
      type metadata accessor for MainActor();
      *(v0 + 656) = static MainActor.shared.getter();
      v8 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_10044EAD8, v8, v7);
    }

    if (!*(*(v0 + 600) + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
    {
      (*(*(v0 + 512) + 56))(*(v0 + 480), 1, 1, *(v0 + 504));
LABEL_29:
      sub_100004F84(*(v0 + 480), &unk_100AD5B30);
      goto LABEL_30;
    }

    v9 = *(v0 + 568);
    v10 = *(v0 + 504);
    v11 = *(v0 + 480);

    sub_1000768B4(v11);

    if (v9(v11, 1, v10) == 1)
    {
      goto LABEL_29;
    }

    v12 = *(v0 + 520);
    v14 = *(v0 + 504);
    v13 = *(v0 + 512);
    (*(v0 + 584))(v12, *(v0 + 480), v14);
    v15 = MultiPinMapAssetMetadata.visitsData.getter();
    v16 = *(v13 + 8);
    *(v0 + 664) = v16;
    *(v0 + 672) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v12, v14);
    if (!v15)
    {
      goto LABEL_30;
    }

    v17 = v15;
    v153 = *(v15 + 16);
    if (v153)
    {
      v18 = 0;
      v19 = *(v0 + 416);
      v20 = *(v0 + 288);
      v147 = *(v0 + 304);
      v144 = (v20 + 104);
      v143 = (v20 + 56);
      v125 = (v20 + 32);
      v131 = (v20 + 8);
      v133 = (v19 + 8);
      v149 = v19;
      v135 = (v19 + 32);
      v137 = _swiftEmptyArrayStorage;
      v141 = enum case for AssetSource.automatic(_:);
      v151 = v15;
      v139 = (v20 + 48);
      while (1)
      {
        if (v18 >= *(v17 + 16))
        {
          goto LABEL_87;
        }

        v22 = *(v0 + 400);
        v23 = *(v0 + 392);
        v24 = *(v0 + 328);
        v25 = *(v0 + 280);
        v157 = (*(v149 + 80) + 32) & ~*(v149 + 80);
        v159 = v18;
        v155 = *(v149 + 72);
        (*(v149 + 16))(*(v0 + 464), v17 + v157 + v155 * v18, *(v0 + 408));
        VisitAssetMetadata.assetSource.getter();
        (*v144)(v23, v141, v25);
        (*v143)(v23, 0, 1, v25);
        v26 = *(v147 + 48);
        sub_1000082B4(v22, v24, &unk_100AEED30);
        sub_1000082B4(v23, v24 + v26, &unk_100AEED30);
        v27 = *v139;
        v28 = (*v139)(v24, 1, v25);
        v29 = *(v0 + 280);
        if (v28 == 1)
        {
          break;
        }

        sub_1000082B4(*(v0 + 328), *(v0 + 384), &unk_100AEED30);
        v31 = v27(v24 + v26, 1, v29);
        v32 = *(v0 + 392);
        v33 = *(v0 + 400);
        v34 = *(v0 + 384);
        if (v31 == 1)
        {
          v21 = *(v0 + 280);
          sub_100004F84(*(v0 + 392), &unk_100AEED30);
          sub_100004F84(v33, &unk_100AEED30);
          (*v131)(v34, v21);
LABEL_14:
          sub_100004F84(*(v0 + 328), &qword_100AD6BD8);
          goto LABEL_15;
        }

        v129 = *(v0 + 328);
        v35 = *(v0 + 296);
        v36 = *(v0 + 280);
        (*v125)(v35, v24 + v26, v36);
        sub_100453938(&qword_100AD6BF0, &type metadata accessor for AssetSource);
        v127 = dispatch thunk of static Equatable.== infix(_:_:)();
        v37 = *v131;
        (*v131)(v35, v36);
        sub_100004F84(v32, &unk_100AEED30);
        sub_100004F84(v33, &unk_100AEED30);
        v37(v34, v36);
        sub_100004F84(v129, &unk_100AEED30);
        if (v127)
        {
          goto LABEL_23;
        }

LABEL_15:
        (*v133)(*(v0 + 464), *(v0 + 408));
LABEL_16:
        v18 = v159 + 1;
        v17 = v151;
        if (v153 == v159 + 1)
        {
          goto LABEL_60;
        }
      }

      v30 = *(v0 + 400);
      sub_100004F84(*(v0 + 392), &unk_100AEED30);
      sub_100004F84(v30, &unk_100AEED30);
      if (v27(v24 + v26, 1, v29) == 1)
      {
        sub_100004F84(*(v0 + 328), &unk_100AEED30);
LABEL_23:
        v38 = *v135;
        (*v135)(*(v0 + 448), *(v0 + 464), *(v0 + 408));
        v39 = v137;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100199CF8(0, *(v137 + 2) + 1, 1);
          v39 = v137;
        }

        v41 = *(v39 + 2);
        v40 = *(v39 + 3);
        if (v41 >= v40 >> 1)
        {
          sub_100199CF8(v40 > 1, v41 + 1, 1);
          v39 = v137;
        }

        v42 = *(v0 + 448);
        v43 = *(v0 + 408);
        *(v39 + 2) = v41 + 1;
        v137 = v39;
        v38(v39 + v157 + v41 * v155, v42, v43);
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v137 = _swiftEmptyArrayStorage;
LABEL_60:

    if (!*(v137 + 2))
    {

      goto LABEL_30;
    }

    v81 = *(v0 + 472);
    v82 = *(v0 + 456);
    v84 = *(v0 + 408);
    v83 = *(v0 + 416);
    v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v86 = *(v83 + 16);
    v86(v82, v137 + v85, v84);

    (*(v83 + 32))(v81, v82, v84);
    v87 = MultiPinMapAssetMetadata.visitsData.getter();
    if (v87)
    {
      if (*(v87 + 16))
      {
        v88 = *(v0 + 440);
        v89 = *(v0 + 408);
        v90 = *(v0 + 416);
        v86(v88, (v87 + v85), v89);

        VisitAssetMetadata.assetSource.getter();
        (*(v90 + 8))(v88, v89);
        goto LABEL_69;
      }
    }

    (*(*(v0 + 288) + 56))(*(v0 + 376), 1, 1, *(v0 + 280));
LABEL_69:
    v95 = *(v0 + 368);
    v94 = *(v0 + 376);
    v96 = *(v0 + 320);
    v97 = *(v0 + 304);
    v98 = *(v0 + 280);
    v99 = *(v0 + 288);
    (*(v99 + 104))(v95, enum case for AssetSource.suggestionSheet(_:), v98);
    (*(v99 + 56))(v95, 0, 1, v98);
    v100 = *(v97 + 48);
    sub_1000082B4(v94, v96, &unk_100AEED30);
    sub_1000082B4(v95, v96 + v100, &unk_100AEED30);
    v101 = *(v99 + 48);
    if (v101(v96, 1, v98) == 1)
    {
      v102 = *(v0 + 376);
      v103 = *(v0 + 280);
      sub_100004F84(*(v0 + 368), &unk_100AEED30);
      sub_100004F84(v102, &unk_100AEED30);
      if (v101(v96 + v100, 1, v103) == 1)
      {
        sub_100004F84(*(v0 + 320), &unk_100AEED30);
LABEL_77:
        v116 = *(v0 + 560);
        if (v116)
        {
          v117 = *(v116 + 16);

          if (v117 > 1)
          {
            v118 = VisitAssetMetadata.id.getter();
            v120 = v119;
            *(v0 + 688) = v119;
            v121 = swift_task_alloc();
            *(v0 + 696) = v121;
            *v121 = v0;
            v121[1] = sub_10045007C;

            return sub_1001B38D8(v118, v120);
          }
        }

        v92 = swift_task_alloc();
        *(v0 + 680) = v92;
        *v92 = v0;
        v93 = sub_10044FEA4;
        goto LABEL_83;
      }
    }

    else
    {
      v104 = *(v0 + 280);
      sub_1000082B4(*(v0 + 320), *(v0 + 360), &unk_100AEED30);
      v105 = v101(v96 + v100, 1, v104);
      v107 = *(v0 + 368);
      v106 = *(v0 + 376);
      v108 = *(v0 + 360);
      if (v105 != 1)
      {
        v161 = *(v0 + 320);
        v112 = *(v0 + 288);
        v111 = *(v0 + 296);
        v113 = *(v0 + 280);
        (*(v112 + 32))(v111, v96 + v100, v113);
        sub_100453938(&qword_100AD6BF0, &type metadata accessor for AssetSource);
        v114 = dispatch thunk of static Equatable.== infix(_:_:)();
        v115 = *(v112 + 8);
        v115(v111, v113);
        sub_100004F84(v107, &unk_100AEED30);
        sub_100004F84(v106, &unk_100AEED30);
        v115(v108, v113);
        sub_100004F84(v161, &unk_100AEED30);
        if (v114)
        {
          goto LABEL_77;
        }

        goto LABEL_75;
      }

      v109 = *(v0 + 280);
      v110 = *(v0 + 288);
      sub_100004F84(*(v0 + 368), &unk_100AEED30);
      sub_100004F84(v106, &unk_100AEED30);
      (*(v110 + 8))(v108, v109);
    }

    sub_100004F84(*(v0 + 320), &qword_100AD6BD8);
LABEL_75:
    (*(*(v0 + 416) + 8))(*(v0 + 472), *(v0 + 408));
LABEL_30:
    v44 = *(v0 + 560);
    if (!v44)
    {
      goto LABEL_53;
    }

    v150 = *(v44 + 16);
    if (!v150)
    {
      break;
    }

    v45 = 0;
    v46 = *(v0 + 416);
    v47 = *(v0 + 288);
    v145 = *(v0 + 304);
    v142 = (v47 + 104);
    v140 = (v47 + 56);
    v126 = (v47 + 32);
    v134 = (v47 + 8);
    v152 = (v46 + 32);
    v154 = _swiftEmptyArrayStorage;
    v146 = v46;
    v148 = *(v0 + 560);
    v128 = (v46 + 8);
    v136 = enum case for AssetSource.automatic(_:);
    v138 = (v47 + 48);
    while (v45 < *(v44 + 16))
    {
      v49 = *(v0 + 344);
      v48 = *(v0 + 352);
      v50 = *(v0 + 312);
      v51 = *(v0 + 280);
      v158 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v160 = v45;
      v156 = *(v146 + 72);
      (*(v146 + 16))(*(v0 + 432), v44 + v158 + v156 * v45, *(v0 + 408));
      VisitAssetMetadata.assetSource.getter();
      (*v142)(v49, v136, v51);
      (*v140)(v49, 0, 1, v51);
      v52 = *(v145 + 48);
      sub_1000082B4(v48, v50, &unk_100AEED30);
      sub_1000082B4(v49, v50 + v52, &unk_100AEED30);
      v53 = *v138;
      v54 = (*v138)(v50, 1, v51);
      v55 = *(v0 + 280);
      if (v54 == 1)
      {
        v56 = *(v0 + 352);
        sub_100004F84(*(v0 + 344), &unk_100AEED30);
        sub_100004F84(v56, &unk_100AEED30);
        if (v53(v50 + v52, 1, v55) != 1)
        {
          goto LABEL_42;
        }

        sub_100004F84(*(v0 + 312), &unk_100AEED30);
      }

      else
      {
        sub_1000082B4(*(v0 + 312), *(v0 + 336), &unk_100AEED30);
        v57 = v53(v50 + v52, 1, v55);
        v58 = *(v0 + 344);
        v59 = *(v0 + 352);
        v60 = *(v0 + 336);
        if (v57 == 1)
        {
          v61 = *(v0 + 280);
          sub_100004F84(*(v0 + 344), &unk_100AEED30);
          sub_100004F84(v59, &unk_100AEED30);
          (*v134)(v60, v61);
LABEL_42:
          sub_100004F84(*(v0 + 312), &qword_100AD6BD8);
LABEL_43:
          v62 = *v152;
          (*v152)(*(v0 + 424), *(v0 + 432), *(v0 + 408));
          v63 = v154;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100199CF8(0, *(v154 + 2) + 1, 1);
            v63 = v154;
          }

          v65 = *(v63 + 2);
          v64 = *(v63 + 3);
          if (v65 >= v64 >> 1)
          {
            sub_100199CF8(v64 > 1, v65 + 1, 1);
            v63 = v154;
          }

          v66 = *(v0 + 424);
          v67 = *(v0 + 408);
          *(v63 + 2) = v65 + 1;
          v154 = v63;
          v62(v63 + v158 + v65 * v156, v66, v67);
          goto LABEL_35;
        }

        v132 = *(v0 + 312);
        v68 = *(v0 + 296);
        v69 = *(v0 + 280);
        (*v126)(v68, v50 + v52, v69);
        sub_100453938(&qword_100AD6BF0, &type metadata accessor for AssetSource);
        v130 = dispatch thunk of static Equatable.== infix(_:_:)();
        v70 = *v134;
        (*v134)(v68, v69);
        sub_100004F84(v58, &unk_100AEED30);
        sub_100004F84(v59, &unk_100AEED30);
        v70(v60, v69);
        sub_100004F84(v132, &unk_100AEED30);
        if ((v130 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      (*v128)(*(v0 + 432), *(v0 + 408));
LABEL_35:
      v45 = v160 + 1;
      v44 = v148;
      if (v150 == v160 + 1)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v154 = _swiftEmptyArrayStorage;
LABEL_51:

  v71 = *(v154 + 2);

  if (!v71)
  {
    v73 = *(v0 + 264);
    v72 = *(v0 + 272);
    v74 = *(v0 + 256);
    (*(v73 + 104))(v72, enum case for AssetPlacement.hidden(_:), v74);
    sub_100453938(&qword_100AE45B8, &type metadata accessor for AssetPlacement);
    v75 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v73 + 8))(v72, v74);
    if ((v75 & 1) == 0)
    {
      (*(*(v0 + 224) + 104))(*(v0 + 248), enum case for AssetType.multiPinMap(_:), *(v0 + 216));
      sub_100453938(&qword_100AD5B40, &type metadata accessor for AssetType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v78 = *(v0 + 248);
      v79 = *(v0 + 216);
      v80 = *(v0 + 224);
      if (*(v0 + 80) == *(v0 + 96) && *(v0 + 88) == *(v0 + 104))
      {
        (*(v80 + 8))(*(v0 + 248), *(v0 + 216));
      }

      else
      {
        v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (*(v80 + 8))(v78, v79);

        if ((v91 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v92 = swift_task_alloc();
      *(v0 + 720) = v92;
      *v92 = v0;
      v93 = sub_10045082C;
LABEL_83:
      v92[1] = v93;
      v123 = *(v0 + 112);
      v122 = *(v0 + 120);

      return sub_10056923C(v123, v122);
    }
  }

LABEL_53:
  v76 = *(v0 + 600);
  (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));

  v77 = *(v0 + 8);

  return v77(0);
}

uint64_t sub_10044EAD8()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[17];
    v2 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    v4 = sub_1004959AC(&off_100A589D8);
    (*(v2 + 8))(v1, v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v5 = v0[69];
  v6 = v0[68];

  return _swift_task_switch(sub_10044EBB8, v6, v5);
}

uint64_t sub_10044EBB8()
{
  if (!*(*(v0 + 600) + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(*(v0 + 512) + 56))(*(v0 + 480), 1, 1, *(v0 + 504));
    goto LABEL_22;
  }

  v1 = *(v0 + 568);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);

  sub_1000768B4(v3);

  if (v1(v3, 1, v2) == 1)
  {
LABEL_22:
    sub_100004F84(*(v0 + 480), &unk_100AD5B30);
    goto LABEL_23;
  }

  v4 = *(v0 + 520);
  v6 = *(v0 + 504);
  v5 = *(v0 + 512);
  (*(v0 + 584))(v4, *(v0 + 480), v6);
  v7 = MultiPinMapAssetMetadata.visitsData.getter();
  v8 = *(v5 + 8);
  *(v0 + 664) = v8;
  *(v0 + 672) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  if (!v7)
  {
    goto LABEL_23;
  }

  result = v7;
  v143 = *(v7 + 16);
  if (v143)
  {
    v10 = 0;
    v11 = *(v0 + 416);
    v12 = *(v0 + 288);
    v137 = *(v0 + 304);
    v134 = (v12 + 104);
    v133 = (v12 + 56);
    v115 = (v12 + 32);
    v121 = (v12 + 8);
    v123 = (v11 + 8);
    v139 = v11;
    v125 = (v11 + 32);
    v127 = _swiftEmptyArrayStorage;
    v131 = enum case for AssetSource.automatic(_:);
    v141 = v7;
    v129 = (v12 + 48);
    while (1)
    {
      if (v10 >= *(result + 16))
      {
        goto LABEL_80;
      }

      v14 = *(v0 + 400);
      v15 = *(v0 + 392);
      v16 = *(v0 + 328);
      v17 = *(v0 + 280);
      v147 = (*(v139 + 80) + 32) & ~*(v139 + 80);
      v149 = v10;
      v145 = *(v139 + 72);
      (*(v139 + 16))(*(v0 + 464), result + v147 + v145 * v10, *(v0 + 408));
      VisitAssetMetadata.assetSource.getter();
      (*v134)(v15, v131, v17);
      (*v133)(v15, 0, 1, v17);
      v18 = *(v137 + 48);
      sub_1000082B4(v14, v16, &unk_100AEED30);
      sub_1000082B4(v15, v16 + v18, &unk_100AEED30);
      v19 = *v129;
      v20 = (*v129)(v16, 1, v17);
      v21 = *(v0 + 280);
      if (v20 == 1)
      {
        break;
      }

      sub_1000082B4(*(v0 + 328), *(v0 + 384), &unk_100AEED30);
      v23 = v19(v16 + v18, 1, v21);
      v24 = *(v0 + 392);
      v25 = *(v0 + 400);
      v26 = *(v0 + 384);
      if (v23 == 1)
      {
        v13 = *(v0 + 280);
        sub_100004F84(*(v0 + 392), &unk_100AEED30);
        sub_100004F84(v25, &unk_100AEED30);
        (*v121)(v26, v13);
LABEL_7:
        sub_100004F84(*(v0 + 328), &qword_100AD6BD8);
        goto LABEL_8;
      }

      v119 = *(v0 + 328);
      v27 = *(v0 + 296);
      v28 = *(v0 + 280);
      (*v115)(v27, v16 + v18, v28);
      sub_100453938(&qword_100AD6BF0, &type metadata accessor for AssetSource);
      v117 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *v121;
      (*v121)(v27, v28);
      sub_100004F84(v24, &unk_100AEED30);
      sub_100004F84(v25, &unk_100AEED30);
      v29(v26, v28);
      sub_100004F84(v119, &unk_100AEED30);
      if (v117)
      {
        goto LABEL_16;
      }

LABEL_8:
      (*v123)(*(v0 + 464), *(v0 + 408));
LABEL_9:
      v10 = v149 + 1;
      result = v141;
      if (v143 == v149 + 1)
      {
        goto LABEL_53;
      }
    }

    v22 = *(v0 + 400);
    sub_100004F84(*(v0 + 392), &unk_100AEED30);
    sub_100004F84(v22, &unk_100AEED30);
    if (v19(v16 + v18, 1, v21) == 1)
    {
      sub_100004F84(*(v0 + 328), &unk_100AEED30);
LABEL_16:
      v30 = *v125;
      (*v125)(*(v0 + 448), *(v0 + 464), *(v0 + 408));
      v31 = v127;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100199CF8(0, *(v127 + 2) + 1, 1);
        v31 = v127;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        sub_100199CF8(v32 > 1, v33 + 1, 1);
        v31 = v127;
      }

      v34 = *(v0 + 448);
      v35 = *(v0 + 408);
      *(v31 + 2) = v33 + 1;
      v127 = v31;
      v30(v31 + v147 + v33 * v145, v34, v35);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v127 = _swiftEmptyArrayStorage;
LABEL_53:

  if (!*(v127 + 2))
  {

    goto LABEL_23;
  }

  v72 = *(v0 + 472);
  v73 = *(v0 + 456);
  v75 = *(v0 + 408);
  v74 = *(v0 + 416);
  v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v77 = *(v74 + 16);
  v77(v73, v127 + v76, v75);

  (*(v74 + 32))(v72, v73, v75);
  v78 = MultiPinMapAssetMetadata.visitsData.getter();
  if (v78)
  {
    if (*(v78 + 16))
    {
      v79 = *(v0 + 440);
      v80 = *(v0 + 408);
      v81 = *(v0 + 416);
      v77(v79, (v78 + v76), v80);

      VisitAssetMetadata.assetSource.getter();
      (*(v81 + 8))(v79, v80);
      goto LABEL_62;
    }
  }

  (*(*(v0 + 288) + 56))(*(v0 + 376), 1, 1, *(v0 + 280));
LABEL_62:
  v86 = *(v0 + 368);
  v85 = *(v0 + 376);
  v87 = *(v0 + 320);
  v88 = *(v0 + 304);
  v89 = *(v0 + 280);
  v90 = *(v0 + 288);
  (*(v90 + 104))(v86, enum case for AssetSource.suggestionSheet(_:), v89);
  (*(v90 + 56))(v86, 0, 1, v89);
  v91 = *(v88 + 48);
  sub_1000082B4(v85, v87, &unk_100AEED30);
  sub_1000082B4(v86, v87 + v91, &unk_100AEED30);
  v92 = *(v90 + 48);
  if (v92(v87, 1, v89) == 1)
  {
    v93 = *(v0 + 376);
    v94 = *(v0 + 280);
    sub_100004F84(*(v0 + 368), &unk_100AEED30);
    sub_100004F84(v93, &unk_100AEED30);
    if (v92(v87 + v91, 1, v94) == 1)
    {
      sub_100004F84(*(v0 + 320), &unk_100AEED30);
      goto LABEL_70;
    }
  }

  else
  {
    v95 = *(v0 + 280);
    sub_1000082B4(*(v0 + 320), *(v0 + 360), &unk_100AEED30);
    v96 = v92(v87 + v91, 1, v95);
    v98 = *(v0 + 368);
    v97 = *(v0 + 376);
    v99 = *(v0 + 360);
    if (v96 != 1)
    {
      v151 = *(v0 + 320);
      v103 = *(v0 + 288);
      v102 = *(v0 + 296);
      v104 = *(v0 + 280);
      (*(v103 + 32))(v102, v87 + v91, v104);
      sub_100453938(&qword_100AD6BF0, &type metadata accessor for AssetSource);
      v105 = dispatch thunk of static Equatable.== infix(_:_:)();
      v106 = *(v103 + 8);
      v106(v102, v104);
      sub_100004F84(v98, &unk_100AEED30);
      sub_100004F84(v97, &unk_100AEED30);
      v106(v99, v104);
      sub_100004F84(v151, &unk_100AEED30);
      if (v105)
      {
LABEL_70:
        v107 = *(v0 + 560);
        if (v107)
        {
          v108 = *(v107 + 16);

          if (v108 > 1)
          {
            v109 = VisitAssetMetadata.id.getter();
            v111 = v110;
            *(v0 + 688) = v110;
            v112 = swift_task_alloc();
            *(v0 + 696) = v112;
            *v112 = v0;
            v112[1] = sub_10045007C;

            return sub_1001B38D8(v109, v111);
          }
        }

        v83 = swift_task_alloc();
        *(v0 + 680) = v83;
        *v83 = v0;
        v84 = sub_10044FEA4;
        goto LABEL_76;
      }

      goto LABEL_68;
    }

    v100 = *(v0 + 280);
    v101 = *(v0 + 288);
    sub_100004F84(*(v0 + 368), &unk_100AEED30);
    sub_100004F84(v97, &unk_100AEED30);
    (*(v101 + 8))(v99, v100);
  }

  sub_100004F84(*(v0 + 320), &qword_100AD6BD8);
LABEL_68:
  (*(*(v0 + 416) + 8))(*(v0 + 472), *(v0 + 408));
LABEL_23:
  result = *(v0 + 560);
  if (!result)
  {
    goto LABEL_46;
  }

  v140 = *(result + 16);
  if (!v140)
  {
    v144 = _swiftEmptyArrayStorage;
LABEL_44:

    v62 = *(v144 + 2);

    if (v62)
    {
      goto LABEL_46;
    }

    v64 = *(v0 + 264);
    v63 = *(v0 + 272);
    v65 = *(v0 + 256);
    (*(v64 + 104))(v63, enum case for AssetPlacement.hidden(_:), v65);
    sub_100453938(&qword_100AE45B8, &type metadata accessor for AssetPlacement);
    v66 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v64 + 8))(v63, v65);
    if (v66)
    {
      goto LABEL_46;
    }

    (*(*(v0 + 224) + 104))(*(v0 + 248), enum case for AssetType.multiPinMap(_:), *(v0 + 216));
    sub_100453938(&qword_100AD5B40, &type metadata accessor for AssetType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v69 = *(v0 + 248);
    v70 = *(v0 + 216);
    v71 = *(v0 + 224);
    if (*(v0 + 80) == *(v0 + 96) && *(v0 + 88) == *(v0 + 104))
    {
      (*(v71 + 8))(*(v0 + 248), *(v0 + 216));

LABEL_59:
      v83 = swift_task_alloc();
      *(v0 + 720) = v83;
      *v83 = v0;
      v84 = sub_10045082C;
LABEL_76:
      v83[1] = v84;
      v114 = *(v0 + 112);
      v113 = *(v0 + 120);

      return sub_10056923C(v114, v113);
    }

    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v71 + 8))(v69, v70);

    if (v82)
    {
      goto LABEL_59;
    }

LABEL_46:
    v67 = *(v0 + 600);
    (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));

    v68 = *(v0 + 8);

    return v68(0);
  }

  v36 = 0;
  v37 = *(v0 + 416);
  v38 = *(v0 + 288);
  v135 = *(v0 + 304);
  v132 = (v38 + 104);
  v130 = (v38 + 56);
  v116 = (v38 + 32);
  v124 = (v38 + 8);
  v142 = (v37 + 32);
  v144 = _swiftEmptyArrayStorage;
  v136 = v37;
  v138 = *(v0 + 560);
  v118 = (v37 + 8);
  v126 = enum case for AssetSource.automatic(_:);
  v128 = (v38 + 48);
  while (v36 < *(result + 16))
  {
    v40 = *(v0 + 344);
    v39 = *(v0 + 352);
    v41 = *(v0 + 312);
    v42 = *(v0 + 280);
    v148 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v150 = v36;
    v146 = *(v136 + 72);
    (*(v136 + 16))(*(v0 + 432), result + v148 + v146 * v36, *(v0 + 408));
    VisitAssetMetadata.assetSource.getter();
    (*v132)(v40, v126, v42);
    (*v130)(v40, 0, 1, v42);
    v43 = *(v135 + 48);
    sub_1000082B4(v39, v41, &unk_100AEED30);
    sub_1000082B4(v40, v41 + v43, &unk_100AEED30);
    v44 = *v128;
    v45 = (*v128)(v41, 1, v42);
    v46 = *(v0 + 280);
    if (v45 == 1)
    {
      v47 = *(v0 + 352);
      sub_100004F84(*(v0 + 344), &unk_100AEED30);
      sub_100004F84(v47, &unk_100AEED30);
      if (v44(v41 + v43, 1, v46) != 1)
      {
        goto LABEL_35;
      }

      sub_100004F84(*(v0 + 312), &unk_100AEED30);
    }

    else
    {
      sub_1000082B4(*(v0 + 312), *(v0 + 336), &unk_100AEED30);
      v48 = v44(v41 + v43, 1, v46);
      v49 = *(v0 + 344);
      v50 = *(v0 + 352);
      v51 = *(v0 + 336);
      if (v48 == 1)
      {
        v52 = *(v0 + 280);
        sub_100004F84(*(v0 + 344), &unk_100AEED30);
        sub_100004F84(v50, &unk_100AEED30);
        (*v124)(v51, v52);
LABEL_35:
        sub_100004F84(*(v0 + 312), &qword_100AD6BD8);
LABEL_36:
        v53 = *v142;
        (*v142)(*(v0 + 424), *(v0 + 432), *(v0 + 408));
        v54 = v144;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100199CF8(0, *(v144 + 2) + 1, 1);
          v54 = v144;
        }

        v56 = *(v54 + 2);
        v55 = *(v54 + 3);
        if (v56 >= v55 >> 1)
        {
          sub_100199CF8(v55 > 1, v56 + 1, 1);
          v54 = v144;
        }

        v57 = *(v0 + 424);
        v58 = *(v0 + 408);
        *(v54 + 2) = v56 + 1;
        v144 = v54;
        v53(v54 + v148 + v56 * v146, v57, v58);
        goto LABEL_28;
      }

      v122 = *(v0 + 312);
      v59 = *(v0 + 296);
      v60 = *(v0 + 280);
      (*v116)(v59, v41 + v43, v60);
      sub_100453938(&qword_100AD6BF0, &type metadata accessor for AssetSource);
      v120 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = *v124;
      (*v124)(v59, v60);
      sub_100004F84(v49, &unk_100AEED30);
      sub_100004F84(v50, &unk_100AEED30);
      v61(v51, v60);
      sub_100004F84(v122, &unk_100AEED30);
      if ((v120 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    (*v118)(*(v0 + 432), *(v0 + 408));
LABEL_28:
    v36 = v150 + 1;
    result = v138;
    if (v140 == v150 + 1)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_10044FEA4()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_10044FFC4, v3, v2);
}

uint64_t sub_10044FFC4()
{
  v1 = VisitAssetMetadata.id.getter();
  v3 = v2;
  *(v0 + 688) = v2;
  v4 = swift_task_alloc();
  *(v0 + 696) = v4;
  *v4 = v0;
  v4[1] = sub_10045007C;

  return sub_1001B38D8(v1, v3);
}

uint64_t sub_10045007C()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_10045019C, v3, v2);
}

uint64_t sub_10045019C()
{
  v1 = v0[75];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v1;
    v5 = swift_task_alloc();
    v0[88] = v5;
    *v5 = v0;
    v5[1] = sub_100450284;
    v7 = v0[14];
    v6 = v0[15];

    return sub_10078BBDC(v7, v6, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100450284()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_1004503A4, v3, v2);
}

uint64_t sub_1004503A4()
{
  v1 = swift_task_alloc();
  *(v0 + 712) = v1;
  *v1 = v0;
  v1[1] = sub_100450454;
  v2 = *(v0 + 112);

  return sub_1001DA5A8(v2);
}

uint64_t sub_100450454()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_100450574, v3, v2);
}

uint64_t sub_100450574()
{
  v13 = v0[83];
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[75];
  v11 = v0[63];
  v12 = v0[66];
  v4 = v0[59];
  v5 = v0[51];
  v6 = v0[52];
  sub_10044BE48(v3 + v0[79]);
  v7 = [v2 defaultCenter];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v7 postNotificationName:v1 object:isa];

  (*(v6 + 8))(v4, v5);
  v13(v12, v11);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_10045082C()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_10045094C, v3, v2);
}

uint64_t sub_10045094C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_100450B78()
{
  v1 = v0[17];

  v2 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
  if (v2)
  {
    v3 = v2;
    sub_10012B2C8();
  }

  v4 = v0[69];
  v5 = v0[68];

  return _swift_task_switch(sub_100450C08, v5, v4);
}

uint64_t sub_100450C08()
{
  v1 = sub_1004448B0();
  if (sub_100119B20(v1))
  {
    v2 = *(v0 + 144);
    if (v2)
    {
      v3 = v2;
      sub_1000F24EC(&unk_100AE1A40);
      v4 = type metadata accessor for UUID();
      v5 = *(v4 - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100940080;
      (*(v5 + 16))(v7 + v6, v3 + OBJC_IVAR____TtC7Journal5Asset_id, v4);
      v8 = sub_1004960D4(v7);
      *(v0 + 736) = v8;
      swift_setDeallocating();
      (*(v5 + 8))(v7 + v6, v4);
      swift_deallocClassInstance();
      v9 = swift_task_alloc();
      *(v0 + 744) = v9;
      *v9 = v0;
      v9[1] = sub_100451330;
      v11 = *(v0 + 112);
      v10 = *(v0 + 120);

      return sub_10056824C(v11, v10, v8);
    }

    v39 = 2;
    goto LABEL_27;
  }

  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 144);
  *(v0 + 848) = enum case for AssetPlacement.hidden(_:);
  v17 = *(v14 + 104);
  *(v0 + 752) = v17;
  *(v0 + 760) = (v14 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v17(v13);
  *(v0 + 768) = sub_100453938(&qword_100AE45B8, &type metadata accessor for AssetPlacement);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v14 + 8);
  *(v0 + 776) = v19;
  *(v0 + 784) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v13, v15);
  if ((v18 & 1) != 0 || !v16)
  {
    v25 = *(*(v0 + 136) + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
    if (v25 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_10005AAB0(128);
    if (qword_100AD0A20 != -1)
    {
      v46 = result;
      swift_once();
      result = v46;
    }

    v27 = qword_100B30F68;
    if (result)
    {
      v27 = qword_100B30F68 - 1;
      if (__OFSUB__(qword_100B30F68, 1))
      {
        __break(1u);
        return result;
      }
    }

    if (v26 >= v27 && *(v0 + 144) == 0)
    {
      v39 = 1;
LABEL_27:
      v47 = v39;

      v40 = *(v0 + 8);

      return v40(v47);
    }

    v30 = *(v0 + 200);
    v29 = *(v0 + 208);
    v31 = *(v0 + 192);
    (*(v30 + 104))(v29, enum case for JournalFeatureFlags.enhancedSync(_:), v31);
    v32 = JournalFeatureFlags.isEnabled.getter();
    (*(v30 + 8))(v29, v31);
    if (v32)
    {
      *(v0 + 808) = CFAbsoluteTimeGetCurrent();
      v33 = swift_task_alloc();
      *(v0 + 816) = v33;
      *v33 = v0;
      v33[1] = sub_1004520C0;
      v34 = *(v0 + 852);
      v35 = *(v0 + 152);
      v36 = *(v0 + 128);
      v38 = *(v0 + 112);
      v37 = *(v0 + 120);

      return sub_10056B238(v38, v37, v36, v35, v34);
    }

    else
    {
      v41 = swift_task_alloc();
      *(v0 + 832) = v41;
      *v41 = v0;
      v41[1] = sub_100452430;
      v42 = *(v0 + 152);
      v43 = *(v0 + 128);
      v45 = *(v0 + 112);
      v44 = *(v0 + 120);

      return sub_1001F8424(v45, v44, v43, v42);
    }
  }

  else
  {
    v20 = *(v0 + 144);
    v21 = swift_task_alloc();
    *(v0 + 792) = v21;
    *v21 = v0;
    v21[1] = sub_100451680;
    v22 = *(v0 + 128);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);

    return sub_100566FD4(v24, v23, v20, v22);
  }
}

uint64_t sub_100451330()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_100451474, v3, v2);
}

uint64_t sub_100451474()
{

  v1 = *(v0 + 8);

  return v1(2);
}

uint64_t sub_100451680(char a1)
{
  v2 = *v1;
  *(*v1 + 853) = a1;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);

  return _swift_task_switch(sub_1004517A8, v4, v3);
}

uint64_t sub_1004517A8()
{
  if (*(v0 + 853) == 1)
  {
    (*(*(v0 + 224) + 104))(*(v0 + 240), enum case for AssetType.multiPinMap(_:), *(v0 + 216));
    sub_100453938(&qword_100AD5B40, &type metadata accessor for AssetType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v1 = *(v0 + 240);
    v2 = *(v0 + 216);
    v3 = *(v0 + 224);
    if (*(v0 + 48) == *(v0 + 64) && *(v0 + 56) == *(v0 + 72))
    {
      (*(v3 + 8))(*(v0 + 240), *(v0 + 216));

LABEL_20:
      v20 = swift_task_alloc();
      *(v0 + 800) = v20;
      *v20 = v0;
      v20[1] = sub_100451D94;
      v22 = *(v0 + 112);
      v21 = *(v0 + 120);

      return sub_10056923C(v22, v21);
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v3 + 8))(v1, v2);

    if (v19)
    {
      goto LABEL_20;
    }

    v30 = 0;
    goto LABEL_25;
  }

  v4 = *(*(v0 + 136) + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_10005AAB0(128);
  if (qword_100AD0A20 != -1)
  {
    v29 = result;
    swift_once();
    result = v29;
  }

  v7 = qword_100B30F68;
  if (result)
  {
    v7 = qword_100B30F68 - 1;
    if (__OFSUB__(qword_100B30F68, 1))
    {
      __break(1u);
      return result;
    }
  }

  if (v5 >= v7 && *(v0 + 144) == 0)
  {
    v30 = 1;
LABEL_25:

    v23 = *(v0 + 8);

    return v23(v30);
  }

  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v11 = *(v0 + 192);
  (*(v10 + 104))(v9, enum case for JournalFeatureFlags.enhancedSync(_:), v11);
  v12 = JournalFeatureFlags.isEnabled.getter();
  (*(v10 + 8))(v9, v11);
  if (v12)
  {
    *(v0 + 808) = CFAbsoluteTimeGetCurrent();
    v13 = swift_task_alloc();
    *(v0 + 816) = v13;
    *v13 = v0;
    v13[1] = sub_1004520C0;
    v14 = *(v0 + 852);
    v15 = *(v0 + 152);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);

    return sub_10056B238(v18, v17, v16, v15, v14);
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 832) = v24;
    *v24 = v0;
    v24[1] = sub_100452430;
    v25 = *(v0 + 152);
    v26 = *(v0 + 128);
    v28 = *(v0 + 112);
    v27 = *(v0 + 120);

    return sub_1001F8424(v28, v27, v26, v25);
  }
}

uint64_t sub_100451D94()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_100451EB4, v3, v2);
}

uint64_t sub_100451EB4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1004520C0()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_1004521E0, v3, v2);
}

uint64_t sub_1004521E0()
{
  (*(v0[22] + 104))(v0[23], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[21]);

  v1 = swift_task_alloc();
  v0[103] = v1;
  *v1 = v0;
  v1[1] = sub_1004522D8;
  v2 = v0[23];
  v3 = v0[17];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_1002D2D78, v3, &type metadata for () + 8);
}

uint64_t sub_1004522D8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[22] + 8))(v2[23], v2[21]);

    v4 = v2[69];
    v5 = v2[68];

    return _swift_task_switch(sub_100452954, v5, v4);
  }
}

uint64_t sub_100452430()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_100452550, v3, v2);
}

uint64_t sub_100452550()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  (*(v0 + 752))(v2, *(v0 + 848), v3);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  v1(v2, v3);
  if (v4)
  {
LABEL_2:

    v5 = *(v0 + 8);

    return v5(0);
  }

  (*(*(v0 + 224) + 104))(*(v0 + 232), enum case for AssetType.multiPinMap(_:), *(v0 + 216));
  sub_100453938(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 216);
  if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
  {
    (*(v8 + 8))(*(v0 + 232), *(v0 + 216));
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v8 + 8))(v7, v9);

    if ((v10 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v11 = swift_task_alloc();
  *(v0 + 840) = v11;
  *v11 = v0;
  v11[1] = sub_100452E1C;
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);

  return sub_10056923C(v13, v12);
}

uint64_t sub_100452954()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = OBJC_IVAR____TtC7Journal5Asset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, &v3[v4], v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  sub_1001F81C4(v2);
  sub_100004F84(v2, &qword_100AD1420);
  sub_10056B00C(v3, v1);
  v7 = *(v0 + 776);
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  (*(v0 + 752))(v8, *(v0 + 848), v9);
  LOBYTE(v2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v7(v8, v9);
  if (v2)
  {
LABEL_2:

    v10 = *(v0 + 8);

    return v10(0);
  }

  (*(*(v0 + 224) + 104))(*(v0 + 232), enum case for AssetType.multiPinMap(_:), *(v0 + 216));
  sub_100453938(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v14 = *(v0 + 216);
  if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
  {
    (*(v13 + 8))(*(v0 + 232), *(v0 + 216));
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v13 + 8))(v12, v14);

    if ((v15 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v16 = swift_task_alloc();
  *(v0 + 840) = v16;
  *v16 = v0;
  v16[1] = sub_100452E1C;
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);

  return sub_10056923C(v18, v17);
}

uint64_t sub_100452E1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0);
}

void sub_10045332C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  if (qword_100ACFDA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000617C(v10, qword_100AE4508);

  oslog = Logger.logObject.getter();
  v11 = a5();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100008458(a3, a4, &v14);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100008458(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, oslog, v11, "%s %s", v12, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100453538(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100032ECC;

  return sub_10060EE00(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100453638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE45C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004536AC()
{
  v1 = type metadata accessor for AssetAnalytics.AssetTransferEvent(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  v7 = type metadata accessor for AssetAnalytics.AssetTransferEvent.TimeRange(0);
  v8 = *(v7 + 20);
  if (!v6(v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v3 + v8, v4);
  }

  v9 = v2 + v1[6];
  if (!v6(v9, 1, v4))
  {
    (*(v5 + 8))(v9, v4);
  }

  v10 = *(v7 + 20);
  if (!v6(v9 + v10, 1, v4))
  {
    (*(v5 + 8))(v9 + v10, v4);
  }

  v11 = v2 + v1[7];
  if (!v6(v11, 1, v4))
  {
    (*(v5 + 8))(v11, v4);
  }

  v12 = *(v7 + 20);
  if (!v6(v11 + v12, 1, v4))
  {
    (*(v5 + 8))(v11 + v12, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100453938(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_10045399C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1006A52A4();
  *a1 = result;
  return result;
}

id sub_1004539CC(uint64_t a1)
{
  v32 = a1;
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v1 - 8);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AE4630);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_1000F24EC(&qword_100AE4638);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v27 = &v27 - v11;
  KeyPath = swift_getKeyPath();
  LOBYTE(v35) = 0;
  v12 = type metadata accessor for MacSettingsNotificationsTab();
  v13 = sub_100455278(&qword_100AE4640, type metadata accessor for MacSettingsNotificationsTab);
  v14 = sub_1004552C0();
  View.formStyle<A>(_:)();

  sub_1000065A8(0, &qword_100AE1A30);
  v15 = static NSUserDefaults.shared.getter();
  KeyPath = v12;
  v35 = &type metadata for MacSettingsFormStyle;
  v36 = v13;
  v37 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = v27;
  View.defaultAppStorage(_:)();

  (*(v4 + 8))(v6, v3);
  v18 = v28;
  v17 = v29;
  v19 = v16;
  (*(v28 + 16))(v9, v16, v29);
  v20 = objc_allocWithZone(sub_1000F24EC(&qword_100AE4658));
  v21 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v22 = v31;
  *&v31[OBJC_IVAR____TtC7Journal31MacSettingsTabHostingController_contentViewController] = v21;
  v23 = type metadata accessor for MacSettingsTabHostingController();
  v33.receiver = v22;
  v33.super_class = v23;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
  [v25 addChildViewController:v24];
  [v24 didMoveToParentViewController:v25];

  sub_100455904(v32, type metadata accessor for MacSettingsNotificationsTab);
  (*(v18 + 8))(v19, v17);
  return v25;
}

id sub_100453DB4(uint64_t a1)
{
  v32 = a1;
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v1 - 8);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AE4668);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_1000F24EC(&qword_100AE4670);
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v27 = &v27 - v11;
  KeyPath = swift_getKeyPath();
  LOBYTE(v35) = 0;
  v12 = type metadata accessor for MacSettingsGeneralTab();
  v13 = sub_100455278(&qword_100AE4678, type metadata accessor for MacSettingsGeneralTab);
  v14 = sub_1004552C0();
  View.formStyle<A>(_:)();

  sub_1000065A8(0, &qword_100AE1A30);
  v15 = static NSUserDefaults.shared.getter();
  KeyPath = v12;
  v35 = &type metadata for MacSettingsFormStyle;
  v36 = v13;
  v37 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = v27;
  View.defaultAppStorage(_:)();

  (*(v4 + 8))(v6, v3);
  v18 = v28;
  v17 = v29;
  v19 = v16;
  (*(v28 + 16))(v9, v16, v29);
  v20 = objc_allocWithZone(sub_1000F24EC(&unk_100AE4680));
  v21 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v22 = v31;
  *&v31[OBJC_IVAR____TtC7Journal31MacSettingsTabHostingController_contentViewController] = v21;
  v23 = type metadata accessor for MacSettingsTabHostingController();
  v33.receiver = v22;
  v33.super_class = v23;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
  [v25 addChildViewController:v24];
  [v24 didMoveToParentViewController:v25];

  sub_100455904(v32, type metadata accessor for MacSettingsGeneralTab);
  (*(v18 + 8))(v19, v17);
  return v25;
}

id sub_10045419C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = objc_allocWithZone(UITab);
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  aBlock[4] = a9;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023FEC;
  aBlock[3] = a10;
  v16 = _Block_copy(aBlock);

  v17 = [v19 initWithTitle:v13 image:a3 identifier:v14 viewControllerProvider:v16];

  _Block_release(v16);

  return v17;
}

uint64_t sub_1004542FC(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(char *))
{
  v7 = a4(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v13 - v9;
  a2(v8);
  v11 = objc_allocWithZone(type metadata accessor for MacSettingsTabHostingController());
  return a5(v10);
}

id sub_1004543F4()
{
  v1 = OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate____lazy_storage___tabBarController;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate____lazy_storage___tabBarController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate____lazy_storage___tabBarController);
  }

  else
  {
    v4 = sub_100454EC8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100454454()
{
  v1 = OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate____lazy_storage___accessManager;
  if (*(v0 + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate____lazy_storage___accessManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate____lazy_storage___accessManager);
  }

  else
  {
    v3 = v0;
    type metadata accessor for AppSecureAccessManager();
    swift_allocObject();
    v2 = sub_10018AAFC();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1004544D0(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AE46A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  sub_10000AA6C(a1, &v11 - v4);
  v6 = type metadata accessor for AppLaunchAction();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_100004F84(v5, &qword_100AE46A0);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v7 = *v5;
    if (v7 != 4)
    {
      v8 = sub_1004543F4();
      v9 = String._bridgeToObjectiveC()();

      v10 = [v8 tabForIdentifier:v9];

      if (v10)
      {
        [*(v1 + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate____lazy_storage___tabBarController) setSelectedTab:v10];
      }
    }
  }

  else
  {
    sub_100455904(v5, type metadata accessor for AppLaunchAction);
  }
}

id sub_10045489C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MacSettingsSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100454950()
{
  sub_1000065A8(0, &qword_100ADB900);
  sub_1000F24EC(&unk_100AD5B10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100940080;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100031B20();
  *(v0 + 32) = 0xD00000000000001ALL;
  *(v0 + 40) = 0x80000001008F4610;
  result = NSPredicate.init(format:_:)();
  qword_100B2F900 = result;
  return result;
}

void sub_100454A18()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_1000065A8(0, &qword_100AE4620);
  sub_10000A908(&qword_100AD5F70, &qword_100AE4620);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v23;
    v3 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
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

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v21 = v5;
  v11 = (v5 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v16 = v22, v14 = v6, v15 = v7, !v22))
    {
LABEL_22:
      sub_100014FF8();

      v17 = objc_allocWithZone(NSUserActivity);
      v18 = String._bridgeToObjectiveC()();
      [v17 initWithActivityType:v18];

      v19 = UIWindowSceneSessionRoleApplication;
      UISceneSessionActivationRequest.init(role:userActivity:options:)();
      return;
    }

LABEL_19:
    if ([v16 delegate])
    {
      type metadata accessor for MacSettingsSceneDelegate();
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();
        sub_100014FF8();

        v20 = [v16 session];
        UISceneSessionActivationRequest.init(session:userActivity:options:)();

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_100454D60()
{
  type metadata accessor for NotificationSettingsViewModel();
  swift_allocObject();
  sub_1003F3878();
  sub_100455278(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel);

  return Bindable<A>.init(wrappedValue:)();
}

id sub_100454EC8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_1000F24EC(&unk_100AD4780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941D60;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v3 = String.init(localized:table:bundle:locale:comment:)();
  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed:v6];

  *(v2 + 32) = sub_10045419C(v3, v5, v8, 0x6C6172656E6567, 0xE700000000000000, sub_100454D5C, 0, &unk_100A6D6F0, sub_100455314, &unk_100A6D708);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v7 systemImageNamed:v12];

  *(v2 + 40) = sub_10045419C(v9, v11, v13, 0x6163696669746F6ELL, 0xED0000736E6F6974, sub_100454D60, 0, &unk_100A6D6A0, sub_100455234, &unk_100A6D6B8);
  v14 = objc_allocWithZone(UITabBarController);
  sub_1000065A8(0, &qword_100AE4628);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initWithTabs:isa];

  return v16;
}

uint64_t sub_100455278(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004552C0()
{
  result = qword_100AE4648;
  if (!qword_100AE4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4648);
  }

  return result;
}

uint64_t sub_100455358(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AE46A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v12 = result;
    v13 = objc_allocWithZone(UIWindow);
    v14 = a1;
    v15 = [v13 initWithWindowScene:v12];
    [v15 setCanResizeToFitContent:1];
    v16 = sub_1004543F4();
    [v15 setRootViewController:v16];

    [v15 makeKeyAndVisible];
    v17 = *(v3 + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC7Journal24MacSettingsSceneDelegate_window) = v15;
    v18 = v15;

    v19 = v14;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v20 = String._bridgeToObjectiveC()();

    [v12 setTitle:v20];

    v21 = [v12 activationConditions];
    if (qword_100ACFDB0 != -1)
    {
      swift_once();
    }

    [v21 setCanActivateForTargetContentIdentifierPredicate:qword_100B2F900];

    v22 = [v12 sizeRestrictions];
    if (v22)
    {
      v23 = v22;
      [v22 setAllowsFullScreen:0];
    }

    v24 = [v12 sizeRestrictions];
    if (v24)
    {
      v25 = v24;
      [v24 setMinimumSize:{640.0, 0.0}];
    }

    v26 = [v12 sizeRestrictions];
    if (v26)
    {
      v27 = v26;
      [v26 setMaximumSize:{640.0, 0.0}];
    }

    v28 = [v12 windowingBehaviors];
    if (v28)
    {
      v29 = v28;
      [v28 setMiniaturizable:0];
    }

    sub_100454454();
    sub_1000258DC(v12);

    sub_10000A63C(a2, v8);
    sub_1004544D0(v8);

    return sub_100004F84(v8, &qword_100AE46A0);
  }

  return result;
}

uint64_t sub_100455748(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v14 - v3);
  v5 = sub_1000F24EC(&qword_100AE46A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_100603F8C(a1);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  }

  sub_1006CA44C(v4, v7);
  sub_100004F84(v4, &unk_100AD6DD0);
  sub_1004544D0(v7);
  return sub_100004F84(v7, &qword_100AE46A0);
}

uint64_t sub_100455904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1004559DC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation] = 0;
  v9 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_searchResult;
  v10 = type metadata accessor for Loc(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_cellType] = 1;
  v4[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_sortMethod] = 1;
  v11 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_addressLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconView;
  *&v4[v13] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconSizeConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_AXDependentConstraints] = _swiftEmptyArrayStorage;
  v70.receiver = v4;
  v70.super_class = type metadata accessor for LocationCollectionViewCell();
  v14 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  [v14 setIsAccessibilityElement:1];
  v15 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_addressLabel;
  v16 = *&v14[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_addressLabel];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v20 = sub_10006F14C(UIFontWeightRegular);

  [v18 setFont:v20];
  v21 = *&v14[v15];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 secondaryLabelColor];
  [v23 setTextColor:v24];

  v25 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel;
  [*&v14[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel] setAdjustsFontForContentSizeCategory:1];
  [*&v14[v15] setAdjustsFontForContentSizeCategory:1];
  [v14 addSubview:*&v14[v25]];
  [v14 addSubview:*&v14[v15]];
  v26 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconView;
  [v14 addSubview:*&v14[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconView]];
  v27 = *&v14[v25];
  v28 = [v27 superview];
  v29 = &selRef_setSuggestedName_;
  if (v28)
  {
    v30 = v28;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [v27 trailingAnchor];
    v32 = [v30 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    [v33 setConstant:-20.0];
    if (v33)
    {
      [v33 setActive:1];
    }

    v29 = &selRef_setSuggestedName_;
  }

  else
  {
    v33 = 0;
    v30 = v27;
  }

  v34 = *&v14[v15];
  v35 = sub_100028DA0(0, 1, 12.0);

  v36 = *&v14[v15];
  v37 = [v36 superview];
  if (v37)
  {
    v38 = v37;
    [v36 v29[278]];
    v39 = [v36 trailingAnchor];
    v40 = [v38 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    [v41 setConstant:-20.0];
    if (v41)
    {
      [v41 setActive:1];
    }

    v29 = &selRef_setSuggestedName_;
  }

  else
  {
    v41 = 0;
    v38 = v36;
  }

  v42 = *&v14[v25];
  v43 = *&v14[v15];
  v44 = v42;
  [v43 v29[278]];
  v45 = [v43 topAnchor];
  v46 = [v44 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  [v47 setConstant:0.0];
  [v47 setActive:1];

  v48 = [*&v14[v26] heightAnchor];
  v49 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
  [v49 scaledValueForValue:30.0];
  v51 = v50;

  v52 = [v48 constraintEqualToConstant:v51];
  v53 = *&v14[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconSizeConstraint];
  *&v14[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconSizeConstraint] = v52;
  v54 = v52;

  if (v54)
  {
    [v54 setActive:1];

    v55 = [*&v14[v26] widthAnchor];
    v56 = [*&v14[v26] heightAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    [v57 setActive:1];
    [*&v14[v26] setContentMode:2];
    v58 = *&v14[v26];
    v59 = [v58 superview];
    if (v59)
    {
      v60 = v59;
      [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
      v61 = [v58 topAnchor];
      v62 = [v60 topAnchor];
      v63 = [v61 constraintGreaterThanOrEqualToAnchor:v62];

      [v63 setConstant:12.0];
      if (v63)
      {
        [v63 setActive:1];
      }
    }

    else
    {
      v63 = 0;
      v60 = v58;
    }

    sub_1000F24EC(&unk_100AEBEC0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100940080;
    *(v64 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v64 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    UIView.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();

    v65 = v14;
    v66 = [v65 separatorLayoutGuide];
    v67 = [v66 leadingAnchor];

    v68 = [*&v14[v25] leadingAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    [v69 setActive:1];
    UICollectionViewCell.configurationUpdateHandler.setter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100456278()
{
  v0 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isFocused.getter())
  {
    v7 = [objc_opt_self() effectWithStyle:8];
    v8 = [objc_opt_self() effectForBlurEffect:v7 style:6];

    UIBackgroundConfiguration.visualEffect.setter();
    v9 = [objc_opt_self() whiteColor];
    UIBackgroundConfiguration.backgroundColor.setter();
  }

  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v4 + 8))(v6, v3);
}

void sub_10045657C()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_cellType))
  {
    sub_1004566A4();
  }

  else
  {
    sub_100456BD4();
  }

  v1 = *(v0 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconSizeConstraint);
  if (v1)
  {
    v2 = objc_allocWithZone(UIFontMetrics);
    v6 = v1;
    v3 = [v2 initForTextStyle:UIFontTextStyleHeadline];
    [v3 scaledValueForValue:30.0];
    v5 = v4;

    [v6 setConstant:v5];
  }

  else
  {
    __break(1u);
  }
}

id sub_1004566A4()
{
  v1 = sub_1000F24EC(&unk_100AEE090);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v46 - v6;
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_searchResult;
  swift_beginAccess();
  sub_100459270(&v0[v10], v9);
  v11 = type metadata accessor for Loc(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11))
  {
    sub_100004F84(v9, &unk_100AEE090);
    goto LABEL_3;
  }

  v13 = *(v9 + 1);
  v14 = v13;
  sub_100004F84(v9, &unk_100AEE090);
  if (!v13)
  {
LABEL_3:
    sub_100459270(&v0[v10], v4);
    if (v12(v4, 1, v11))
    {
      sub_100004F84(v4, &unk_100AEE090);
    }

    else
    {
      v27 = *(v4 + 2);
      v28 = v27;
      sub_100004F84(v4, &unk_100AEE090);
      if (v27)
      {
        [v28 coordinate];
        v30 = v29;
        [v28 coordinate];
        sub_10032BA5C(v30, v31);
        v32 = *&v0[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel];
        v33 = String._bridgeToObjectiveC()();
        [v32 setText:v33];

        v34 = String._bridgeToObjectiveC()();

        [v0 setAccessibilityLabel:v34];

        sub_100457298(0);
      }
    }

    goto LABEL_19;
  }

  v48 = v14;
  v15 = [v14 name];
  if (v15)
  {
    v16 = v15;
    v17 = *&v0[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel];
    if (qword_100AD0398 != -1)
    {
      swift_once();
    }

    [v17 setFont:qword_100B30390];
    [v17 setText:v16];
    [v0 setAccessibilityLabel:v16];
  }

  v47 = *&v0[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel];
  v18 = [v47 text];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v13;
    v23 = v22;

    v24 = HIBYTE(v23) & 0xF;
    v25 = (v23 & 0x2000000000000000) == 0;
    v13 = v21;
    if (v25)
    {
      v24 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
      sub_100459270(&v0[v10], v7);
      if (v12(v7, 1, v11))
      {
        sub_100004F84(v7, &unk_100AEE090);
      }

      else
      {
        v40 = &v7[*(v11 + 36)];
        v42 = *v40;
        v41 = *(v40 + 1);

        sub_100004F84(v7, &unk_100AEE090);
        if (v41)
        {
          v43 = HIBYTE(v41) & 0xF;
          if ((v41 & 0x2000000000000000) == 0)
          {
            v43 = v42 & 0xFFFFFFFFFFFFLL;
          }

          if (v43)
          {
            v44 = String._bridgeToObjectiveC()();
            [v47 setText:v44];

            v45 = String._bridgeToObjectiveC()();

            [v0 setAccessibilityLabel:v45];
          }

          else
          {
          }
        }
      }
    }
  }

  v26 = v48;
  sub_100457298(v13);

LABEL_19:
  v35 = [v0 traitCollection];
  v36 = [v35 preferredContentSizeCategory];

  LOBYTE(v35) = static UIContentSizeCategory.>= infix(_:_:)();
  v37 = *&v0[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel];
  [v37 setNumberOfLines:(v35 & 1) == 0];
  if (v35)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  return [v37 setLineBreakMode:v38];
}

void sub_100456BD4()
{
  v1 = sub_1000F24EC(&unk_100AEE090);
  __chkstk_darwin(v1 - 8);
  v3 = (&v58 - v2);
  v4 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_searchResult;
  swift_beginAccess();
  sub_100459270(&v0[v4], v3);
  v5 = type metadata accessor for Loc(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5))
  {
    sub_100004F84(v3, &unk_100AEE090);
    return;
  }

  v6 = *v3;
  v7 = *v3;
  sub_100004F84(v3, &unk_100AEE090);
  if (v6)
  {
    v62 = v0;
    sub_1000F24EC(&qword_100AE4758);
    inited = swift_initStackObject();
    v64 = xmmword_100940080;
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSFontAttributeName;
    v9 = qword_100AD0378;
    v10 = NSFontAttributeName;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = qword_100B30370;
    *(inited + 40) = qword_100B30370;
    v12 = v11;
    v13 = sub_10036340C(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &qword_100AE4760);
    v14 = swift_initStackObject();
    *(v14 + 16) = v64;
    *(v14 + 32) = v10;
    if (qword_100AD0390 != -1)
    {
      swift_once();
    }

    v15 = qword_100B30388;
    *(v14 + 40) = qword_100B30388;
    v16 = v15;
    v17 = sub_10036340C(v14);
    swift_setDeallocating();
    sub_100004F84(v14 + 32, &qword_100AE4760);
    v18 = [v7 title];
    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    sub_10023B0F0(v13);

    v19 = objc_allocWithZone(NSMutableAttributedString);
    type metadata accessor for Key(0);
    v21 = v20;
    v22 = sub_1000806F8();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v24 = [v19 initWithString:v18 attributes:isa];

    v25 = [v7 titleHighlightRanges];
    sub_1000065A8(0, &qword_100AE4768);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v7;
    *&v64 = v24;
    v60 = v17;
    v59 = v21;
    v58 = v22;
    if (v27)
    {
      v65 = _swiftEmptyArrayStorage;
      sub_100199A24(0, v27 & ~(v27 >> 63), 0);
      if (v27 < 0)
      {
        __break(1u);
        return;
      }

      v28 = 0;
      v29 = v65;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v30 = *(v26 + 8 * v28 + 32);
        }

        v31 = v30;
        v32 = [v30 rangeValue];
        v34 = v33;

        v65 = v29;
        v36 = v29[2];
        v35 = v29[3];
        if (v36 >= v35 >> 1)
        {
          sub_100199A24((v35 > 1), v36 + 1, 1);
          v29 = v65;
        }

        ++v28;
        v29[2] = v36 + 1;
        v37 = &v29[2 * v36];
        v37[4] = v32;
        v37[5] = v34;
      }

      while (v27 != v28);
    }

    else
    {

      v29 = _swiftEmptyArrayStorage;
    }

    v63 = v29;
    v38 = v29[2];
    v39 = v60;
    v40 = v59;
    v41 = v58;
    if (v38)
    {
      v42 = v63 + 5;
      do
      {
        v43 = *(v42 - 1);
        v44 = *v42;
        sub_10023B0F0(v39);
        v45 = v41;
        v46 = v40;
        v47 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v64 addAttributes:v47 range:{v43, v44}];

        v40 = v46;
        v41 = v45;
        v42 += 2;
        --v38;
      }

      while (v38);
    }

    v48 = v62;
    v49 = *&v62[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel];
    v50 = v64;
    [v49 setAttributedText:v64];
    v51 = [v48 traitCollection];
    v52 = [v51 preferredContentSizeCategory];

    LOBYTE(v51) = static UIContentSizeCategory.>= infix(_:_:)();
    [v49 setNumberOfLines:(v51 & 1) == 0];
    if (v51)
    {
      v53 = 0;
    }

    else
    {
      v53 = 4;
    }

    [v49 setLineBreakMode:{v53, v58, v59, v60}];
    LODWORD(v54) = 1144750080;
    [v49 setContentCompressionResistancePriority:1 forAxis:v54];
    v55 = v61;
    v56 = [v61 mapItem];
    sub_100457298(v56);

    v57 = [v55 title];
    if (!v57)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = String._bridgeToObjectiveC()();
    }

    [v48 setAccessibilityLabel:v57];
  }
}

void sub_100457298(void *a1)
{
  v2 = v1;
  v218 = a1;
  v196 = type metadata accessor for Date();
  v195 = *(v196 - 1);
  __chkstk_darwin(v196);
  v187 = &v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v209 = *(v204 - 8);
  __chkstk_darwin(v204);
  v193 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v203 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1000F24EC(&qword_100AD8D68);
  v208 = *(v192 - 8);
  __chkstk_darwin(v192);
  v202 = &v179 - v7;
  v8 = sub_1000F24EC(&qword_100AD8D38);
  __chkstk_darwin(v8 - 8);
  v191 = &v179 - v9;
  v201 = sub_1000F24EC(&qword_100AE0DF0);
  v207 = *(v201 - 8);
  __chkstk_darwin(v201);
  v189 = &v179 - v10;
  v200 = sub_1000F24EC(&qword_100AE0DF8);
  v205 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = &v179 - v11;
  v199 = sub_1000F24EC(&qword_100AE0E00);
  v188 = *(v199 - 8);
  __chkstk_darwin(v199);
  v197 = &v179 - v12;
  v206 = sub_1000F24EC(&qword_100AE0E08);
  v190 = *(v206 - 8);
  __chkstk_darwin(v206);
  v211 = &v179 - v13;
  v14 = sub_1000F24EC(&unk_100AEE090);
  v15 = __chkstk_darwin(v14 - 8);
  v212 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v215 = (&v179 - v18);
  v19 = __chkstk_darwin(v17);
  v194 = &v179 - v20;
  v21 = __chkstk_darwin(v19);
  v210 = &v179 - v22;
  v23 = __chkstk_darwin(v21);
  v217 = (&v179 - v24);
  __chkstk_darwin(v23);
  v213 = &v179 - v25;
  v26 = [v1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];

  v28 = static UIContentSizeCategory.>= infix(_:_:)();
  v29 = objc_opt_self();
  v30 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_AXDependentConstraints;
  v31 = sub_1000065A8(0, &qword_100AD8000);

  v214 = v31;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v220 = v29;
  [v29 deactivateConstraints:isa];

  sub_1000F24EC(&unk_100AD4780);
  v219 = v28;
  v33 = swift_allocObject();
  if (v28)
  {
    *(v33 + 16) = xmmword_100941040;
    v34 = *&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel];
    v35 = [v34 leadingAnchor];
    v36 = [v2 leadingAnchor];
    v37 = &selRef_constraintEqualToAnchor_constant_;
    v38 = [v35 constraintEqualToAnchor:v36 constant:20.0];

    *(v33 + 32) = v38;
    v216 = *&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_addressLabel];
    v39 = [v216 leadingAnchor];
    v40 = [v2 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:20.0];

    *(v33 + 40) = v41;
    v42 = &selRef_topAnchor;
    v43 = [v34 topAnchor];
    v44 = *&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconView];
    v45 = [v44 bottomAnchor];
    v46 = [v43 constraintEqualToAnchor:v45 constant:12.0];

    *(v33 + 48) = v46;
    v47 = [v44 leadingAnchor];
    v48 = [v2 leadingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:20.0];

    *(v33 + 56) = v49;
    v50 = (v33 + 64);
  }

  else
  {
    *(v33 + 16) = xmmword_10094F800;
    v51 = *&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel];
    v52 = [v51 leadingAnchor];
    v44 = *&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconView];
    v53 = [v44 trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:10.0];

    *(v33 + 32) = v54;
    v216 = *&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_addressLabel];
    v55 = [v216 leadingAnchor];
    v56 = [v44 trailingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:10.0];

    *(v33 + 40) = v57;
    v58 = [v51 topAnchor];
    v59 = [v2 topAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:12.0];

    *(v33 + 48) = v60;
    v61 = [v44 centerYAnchor];
    v62 = [v2 centerYAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    *(v33 + 56) = v63;
    v64 = [v44 leadingAnchor];
    v65 = [v2 leadingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:20.0];

    *(v33 + 64) = v66;
    v50 = (v33 + 72);
    v37 = &selRef_constraintLessThanOrEqualToAnchor_constant_;
    v42 = &selRef_bottomAnchor;
  }

  v67 = [v44 *v42];
  v68 = [v2 *v42];
  v69 = [v67 *v37];

  *v50 = v69;
  *&v2[v30] = v33;

  v70 = Array._bridgeToObjectiveC()().super.isa;

  [v220 activateConstraints:v70];

  v71 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_searchResult;
  swift_beginAccess();
  v72 = v213;
  sub_100459270(&v2[v71], v213);
  v73 = type metadata accessor for Loc(0);
  v74 = *(v73 - 1);
  v75 = *(v74 + 48);
  v220 = (v74 + 48);
  if (v75(v72, 1, v73))
  {
    sub_100004F84(v72, &unk_100AEE090);
    v77 = v217;
    v76 = v218;
  }

  else
  {
    v79 = *(v72 + v73[11]);
    v80 = v79;
    sub_100004F84(v72, &unk_100AEE090);
    v77 = v217;
    v76 = v218;
    if (v79)
    {
      goto LABEL_10;
    }
  }

  v78 = [v76 _styleAttributes];
  if (!v78)
  {
    v78 = [objc_opt_self() markerStyleAttributes];
  }

  v79 = v78;
LABEL_10:
  sub_100459270(&v2[v71], v77);
  v217 = v75;
  if (v75(v77, 1, v73))
  {
    sub_100004F84(v77, &unk_100AEE090);
LABEL_17:
    v83 = v73;
    v86 = objc_opt_self();
    v87 = [objc_opt_self() mainScreen];
    [v87 scale];
    v89 = v88;

    v90 = [v86 imageForStyle:v79 size:3 forScale:0 format:v89];
    if (v90)
    {
      v91 = v90;
LABEL_26:
      v98 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline];
      v99 = [v91 imageByApplyingSymbolConfiguration:v98];

      v100 = v99;
      if (v100)
      {
        [v44 setImage:v100];
        v214 = v100;

LABEL_29:
        v76 = v218;
LABEL_30:
        v101 = v215;
        v73 = v83;
        goto LABEL_31;
      }

LABEL_28:
      v214 = 0;
      goto LABEL_29;
    }

    if (qword_100AD09D8 != -1)
    {
      swift_once();
    }

    v82 = qword_100B30EB0;
    if (!qword_100B30EB0)
    {
      v214 = 0;
      goto LABEL_30;
    }

    sub_1000F24EC(&unk_100AD4780);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_100941D60;
    *(v92 + 32) = [objc_opt_self() whiteColor];
    if (qword_100AD0360 != -1)
    {
      swift_once();
    }

    v93 = qword_100B30358;
    *(v92 + 40) = qword_100B30358;
    sub_1000065A8(0, &qword_100AD4C70);
    v94 = v93;
LABEL_25:
    v95 = Array._bridgeToObjectiveC()().super.isa;

    v96 = [objc_opt_self() configurationWithPaletteColors:v95];

    v97 = [v82 imageWithConfiguration:v96];
    v91 = [v97 imageWithAlignmentRectInsets:{2.0, 2.0, 2.0, 2.0}];

    if (!v91)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v81 = *(v77 + v73[12]);
  sub_100004F84(v77, &unk_100AEE090);
  if (v81 != 1)
  {
    goto LABEL_17;
  }

  if (qword_100AD09D0 != -1)
  {
    swift_once();
  }

  v82 = qword_100B30EA8;
  if (qword_100B30EA8)
  {
    v83 = v73;
    sub_1000F24EC(&unk_100AD4780);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_100941D60;
    v85 = objc_opt_self();
    *(v84 + 32) = [v85 whiteColor];
    *(v84 + 40) = [v85 systemGrayColor];
    sub_1000065A8(0, &qword_100AD4C70);
    goto LABEL_25;
  }

  v214 = 0;
  v101 = v215;
LABEL_31:
  v102 = v217;
  [v44 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  *&v222 = 0;
  *(&v222 + 1) = 0xE000000000000000;
  v103 = &v2[v71];
  if (v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_sortMethod] == 1)
  {
    v104 = v210;
    sub_100459270(v103, v210);
    if (v102(v104, 1, v73))
    {
      sub_100004F84(v104, &unk_100AEE090);
      goto LABEL_44;
    }

    v110 = *(v104 + v73[12]);
    sub_100004F84(v104, &unk_100AEE090);
    if (v110 != 1)
    {
LABEL_44:
      if (!v76 || (v111 = [v76 placemark], v112 = objc_msgSend(v111, "location"), v111, !v112))
      {
        v113 = v194;
        sub_100459270(&v2[v71], v194);
        if (v102(v113, 1, v73))
        {
          sub_100004F84(v113, &unk_100AEE090);
LABEL_56:
          v106 = 0xE000000000000000;
          v108 = _swiftEmptyArrayStorage;
          goto LABEL_57;
        }

        v114 = *(v113 + 16);
        v112 = v114;
        sub_100004F84(v113, &unk_100AEE090);
        if (!v114)
        {
          goto LABEL_56;
        }
      }

      v115 = *&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation];
      if (!v115)
      {

        goto LABEL_56;
      }

      v215 = v73;
      v210 = v71;
      v180 = v79;
      v116 = v115;
      v196 = v112;
      v195 = v116;
      [v112 distanceFromLocation:?];
      v117 = [objc_opt_self() meters];
      v118 = sub_1000065A8(0, &qword_100AE0E10);
      Measurement.init(value:unit:)();
      v119 = v198;
      v213 = v118;
      static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
      v120 = v189;
      static MeasurementFormatUnitUsage<>.road.getter();
      static Locale.autoupdatingCurrent.getter();
      v194 = sub_10009BA68();
      v121 = v202;
      FloatingPointFormatStyle.init(locale:)();
      v122 = v193;
      static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
      v123 = v191;
      v124 = v192;
      FloatingPointFormatStyle.precision(_:)();
      v125 = *(v209 + 8);
      v209 += 8;
      v187 = v125;
      (v125)(v122, v204);
      v126 = v208;
      v127 = *(v208 + 8);
      v185 = v208 + 8;
      v186 = v127;
      v127(v121, v124);
      v128 = *(v126 + 56);
      v208 = v126 + 56;
      v184 = v128;
      v128(v123, 0, 1, v124);
      v129 = v197;
      static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
      sub_100004F84(v123, &qword_100AD8D38);
      v130 = *(v207 + 8);
      v207 += 8;
      v183 = v130;
      v130(v120, v201);
      v131 = *(v205 + 8);
      v205 += 8;
      v182 = v131;
      v131(v119, v200);
      v181 = sub_10000B58C(&qword_100AE0E18, &qword_100AE0E00);
      v132 = v199;
      Measurement<>.formatted<A>(_:)();
      v188 = *(v188 + 8);
      (v188)(v129, v132);
      v106 = *(&v221 + 1);
      v107 = v221;
      v222 = v221;
      static Measurement<>.FormatStyle.UnitWidth.wide.getter();
      static MeasurementFormatUnitUsage<>.road.getter();
      static Locale.autoupdatingCurrent.getter();
      v133 = v202;
      FloatingPointFormatStyle.init(locale:)();
      static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
      FloatingPointFormatStyle.precision(_:)();
      (v187)(v122, v204);
      v186(v133, v124);
      v184(v123, 0, 1, v124);
      v134 = v197;
      v135 = v198;
      static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
      sub_100004F84(v123, &qword_100AD8D38);
      v183(v120, v201);
      v182(v135, v200);
      v136 = v199;
      Measurement<>.formatted<A>(_:)();
      (v188)(v134, v136);
      v137 = v221;
      v108 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
      v139 = *(v108 + 2);
      v138 = *(v108 + 3);
      if (v139 >= v138 >> 1)
      {
        v108 = sub_10009BCC8((v138 > 1), v139 + 1, 1, v108);
      }

      v79 = v180;

      (*(v190 + 8))(v211, v206);
      *(v108 + 2) = v139 + 1;
      *&v108[16 * v139 + 32] = v137;
      v76 = v218;
      v71 = v210;
      v73 = v215;
      if ((v106 & 0x2000000000000000) != 0)
      {
        goto LABEL_57;
      }

LABEL_39:
      v109 = v107 & 0xFFFFFFFFFFFFLL;
      goto LABEL_58;
    }

    if (qword_100AD0660 != -1)
    {
      swift_once();
    }

    v106 = *(&xmmword_100B308A0 + 1);
    v107 = xmmword_100B308A0;
    v222 = xmmword_100B308A0;
  }

  else
  {
    sub_100459270(v103, v101);
    if (v102(v101, 1, v73) || (v105 = v73[8], (*(v195 + 6))(v101 + v105, 1, v196)))
    {
      sub_100004F84(v101, &unk_100AEE090);
      v106 = 0xE100000000000000;
      v107 = 32;
    }

    else
    {
      v215 = v73;
      v174 = v195;
      v175 = v101 + v105;
      v176 = v187;
      v177 = v196;
      (*(v195 + 2))(v187, v175, v196);
      sub_100004F84(v101, &unk_100AEE090);
      v107 = sub_10048FE64();
      v106 = v178;
      (v174)[1](v176, v177);
      v73 = v215;
    }

    *&v222 = v107;
    *(&v222 + 1) = v106;
  }

  v108 = _swiftEmptyArrayStorage;
  if ((v106 & 0x2000000000000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_57:
  v109 = HIBYTE(v106) & 0xF;
LABEL_58:
  v140 = 548913696;
  if (v219)
  {
    v140 = 10;
  }

  v141 = 0xA400000000000000;
  if (v219)
  {
    v141 = 0xE100000000000000;
  }

  if (v109)
  {
    v142 = v140;
  }

  else
  {
    v142 = 0;
  }

  if (v109)
  {
    v143 = v141;
  }

  else
  {
    v143 = 0xE000000000000000;
  }

  if (v76)
  {
    v144 = [v76 addressRepresentations];
    if (v144)
    {
      v145 = v144;
      v146 = [v144 cityName];

      if (v146)
      {
        v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v149 = v148;

        v150 = HIBYTE(v149) & 0xF;
        if ((v149 & 0x2000000000000000) == 0)
        {
          v150 = v147 & 0xFFFFFFFFFFFFLL;
        }

        if (v150)
        {
          *&v221 = v142;
          *(&v221 + 1) = v143;

          v151._countAndFlagsBits = v147;
          v151._object = v149;
          String.append(_:)(v151);

          v152 = *(&v221 + 1);
          v153 = v221;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_10009BCC8(0, *(v108 + 2) + 1, 1, v108);
          }

          v155 = *(v108 + 2);
          v154 = *(v108 + 3);
          if (v155 >= v154 >> 1)
          {
            v108 = sub_10009BCC8((v154 > 1), v155 + 1, 1, v108);
          }

          *(v108 + 2) = v155 + 1;
          v156 = &v108[16 * v155];
          *(v156 + 4) = v147;
          *(v156 + 5) = v149;
          goto LABEL_94;
        }
      }
    }
  }

  v157 = v212;
  sub_100459270(&v2[v71], v212);
  if (v217(v157, 1, v73))
  {

    sub_100004F84(v157, &unk_100AEE090);
LABEL_93:
    v153 = 0;
    v152 = 0xE000000000000000;
    goto LABEL_94;
  }

  v158 = (v157 + v73[9]);
  v160 = *v158;
  v159 = v158[1];

  sub_100004F84(v157, &unk_100AEE090);
  if (!v159)
  {
LABEL_92:

    goto LABEL_93;
  }

  v161 = HIBYTE(v159) & 0xF;
  if ((v159 & 0x2000000000000000) == 0)
  {
    v161 = v160 & 0xFFFFFFFFFFFFLL;
  }

  if (!v161)
  {

    goto LABEL_92;
  }

  *&v221 = v142;
  *(&v221 + 1) = v143;

  v162._countAndFlagsBits = v160;
  v162._object = v159;
  String.append(_:)(v162);

  v152 = *(&v221 + 1);
  v153 = v221;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v108 = sub_10009BCC8(0, *(v108 + 2) + 1, 1, v108);
  }

  v164 = *(v108 + 2);
  v163 = *(v108 + 3);
  if (v164 >= v163 >> 1)
  {
    v108 = sub_10009BCC8((v163 > 1), v164 + 1, 1, v108);
  }

  *(v108 + 2) = v164 + 1;
  v165 = &v108[16 * v164];
  *(v165 + 4) = v160;
  *(v165 + 5) = v159;
LABEL_94:
  v166 = HIBYTE(v152) & 0xF;
  if ((v152 & 0x2000000000000000) == 0)
  {
    v166 = v153 & 0xFFFFFFFFFFFFLL;
  }

  if (v166)
  {
    v167._countAndFlagsBits = v153;
    v167._object = v152;
    String.append(_:)(v167);
  }

  v168 = v219;
  v169 = v216;
  [v216 setNumberOfLines:(v219 & 1) == 0];
  if (v168)
  {
    v170 = 0;
  }

  else
  {
    v170 = 4;
  }

  [v169 setLineBreakMode:v170];
  v171 = String._bridgeToObjectiveC()();

  [v169 setText:v171];

  LODWORD(v172) = 1144750080;
  [v169 setContentCompressionResistancePriority:1 forAxis:v172];
  if (*(v108 + 2))
  {
    *&v221 = v108;
    sub_1000F24EC(&qword_100AD60A0);
    sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
    BidirectionalCollection<>.joined(separator:)();

    v173 = String._bridgeToObjectiveC()();

    [v2 setAccessibilityValue:v173];
  }

  else
  {

    [v2 setAccessibilityValue:0];
  }
}

id sub_100458F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LocationCollectionViewCell()
{
  result = qword_100AE4730;
  if (!qword_100AE4730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100459080()
{
  sub_100459148();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100459148()
{
  if (!qword_100AE4740)
  {
    type metadata accessor for Loc(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE4740);
    }
  }
}

unint64_t sub_1004591C4()
{
  result = qword_100AE4748;
  if (!qword_100AE4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4748);
  }

  return result;
}

unint64_t sub_10045921C()
{
  result = qword_100AE4750;
  if (!qword_100AE4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4750);
  }

  return result;
}

uint64_t sub_100459270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AEE090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1004592E0()
{
  *(v0 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_centerLocation) = 0;
  v1 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_searchResult;
  v2 = type metadata accessor for Loc(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_cellType) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_sortMethod) = 1;
  v3 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_addressLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconView;
  *(v0 + v5) = [objc_allocWithZone(UIImageView) init];
  *(v0 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconSizeConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_AXDependentConstraints) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10045959C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ColorPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100459604()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE47A0);
  v1 = sub_10000617C(v0, qword_100AE47A0);
  if (qword_100AD0178 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004596CC()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for AdminEntriesVC();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v2 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;

  sub_100117F38();

  v3 = *(*&v0[v2] + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v3)
  {
    [v3 setDelegate:v0];
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() systemImageNamed:v4];

  v6 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v5 style:2 target:v1 action:"showActionSheet:"];
  v7 = [v1 navigationItem];
  sub_1000F24EC(&unk_100AD4780);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100941D50;
  *(v8 + 32) = v6;
  sub_1000065A8(0, &qword_100AD43B0);
  v9 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setRightBarButtonItems:isa];

  v11 = *&v1[OBJC_IVAR____TtC7Journal14AdminEntriesVC_activityIndicator];
  v12 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v11];
  v13 = [v1 navigationItem];
  [v13 setLeftBarButtonItem:v12 animated:1];

  [v11 setHidesWhenStopped:1];
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  if (qword_100ACFF90 != -1)
  {
    swift_once();
  }

  [v15 addObserver:v1 selector:? name:? object:?];

  v16 = [v14 defaultCenter];
  if (qword_100ACFF98 != -1)
  {
    swift_once();
  }

  [v16 addObserver:v1 selector:? name:? object:?];

  sub_10045DD14();
}

id sub_100459A60()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AdminEntriesVC();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100459BA8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v92 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:0];

  v3 = String._bridgeToObjectiveC()();
  v105 = sub_10045ADD8;
  v106 = 0;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DA58;
  v4 = _Block_copy(&aBlock);

  v5 = objc_opt_self();
  v90 = [v5 actionWithTitle:v3 style:0 handler:v4];
  _Block_release(v4);

  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 systemImageNamed:v6];

  v9 = String._bridgeToObjectiveC()();
  [v90 setValue:v8 forKey:v9];

  v10 = String._bridgeToObjectiveC()();
  v105 = sub_10045B408;
  v106 = 0;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DA80;
  v11 = _Block_copy(&aBlock);

  v100 = [v5 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  v12 = String._bridgeToObjectiveC()();
  v13 = [v7 systemImageNamed:v12];

  v14 = String._bridgeToObjectiveC()();
  [v100 setValue:v13 forKey:v14];

  v15 = String._bridgeToObjectiveC()();
  v105 = sub_10045BC7C;
  v106 = 0;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DAA8;
  v16 = _Block_copy(&aBlock);

  v99 = [v5 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  v17 = String._bridgeToObjectiveC()();
  v18 = [v7 systemImageNamed:v17];

  v19 = String._bridgeToObjectiveC()();
  [v99 setValue:v18 forKey:v19];

  v20 = String._bridgeToObjectiveC()();
  v105 = sub_10045BE38;
  v106 = 0;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DAD0;
  v21 = _Block_copy(&aBlock);

  v22 = v5;
  v98 = [v5 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  v23 = String._bridgeToObjectiveC()();
  v84 = v7;
  v24 = [v7 systemImageNamed:v23];

  v25 = String._bridgeToObjectiveC()();
  [v98 setValue:v24 forKey:v25];

  v26 = swift_allocObject();
  *(v26 + 16) = v96;
  *(v26 + 24) = v92;
  v27 = v96;
  v87 = v92;
  v28 = String._bridgeToObjectiveC()();
  v105 = sub_100466518;
  v106 = v26;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DB20;
  v29 = _Block_copy(&aBlock);

  v30 = v5;
  v97 = [v5 actionWithTitle:v28 style:0 handler:v29];
  _Block_release(v29);

  v31 = String._bridgeToObjectiveC()();
  v32 = [v7 systemImageNamed:v31];

  v33 = String._bridgeToObjectiveC()();
  [v97 setValue:v32 forKey:v33];

  v34 = swift_allocObject();
  *(v34 + 16) = v27;
  *(v34 + 24) = ObjectType;
  v88 = v27;
  v35 = String._bridgeToObjectiveC()();

  v105 = sub_100466520;
  v106 = v34;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DB70;
  v36 = _Block_copy(&aBlock);

  v95 = [v5 actionWithTitle:v35 style:0 handler:v36];
  _Block_release(v36);

  v37 = String._bridgeToObjectiveC()();
  v38 = [v84 systemImageNamed:v37];

  v39 = String._bridgeToObjectiveC()();
  [v95 setValue:v38 forKey:v39];

  v40 = String._bridgeToObjectiveC()();
  v105 = sub_10045C2F0;
  v106 = 0;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DB98;
  v41 = _Block_copy(&aBlock);

  v93 = [v5 actionWithTitle:v40 style:0 handler:v41];
  _Block_release(v41);

  v42 = String._bridgeToObjectiveC()();
  v43 = [v84 systemImageNamed:v42];

  v44 = String._bridgeToObjectiveC()();
  [v93 setValue:v43 forKey:v44];

  v45 = String._bridgeToObjectiveC()();
  v105 = sub_10045C2F4;
  v106 = 0;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DBC0;
  v46 = _Block_copy(&aBlock);

  v91 = [v5 actionWithTitle:v45 style:0 handler:v46];
  _Block_release(v46);

  v47 = String._bridgeToObjectiveC()();
  v48 = [v84 systemImageNamed:v47];

  v49 = String._bridgeToObjectiveC()();
  [v91 setValue:v48 forKey:v49];

  v50 = swift_allocObject();
  *(v50 + 16) = v88;
  v51 = v88;
  v52 = String._bridgeToObjectiveC()();
  v105 = sub_100466528;
  v106 = v50;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DC10;
  v53 = _Block_copy(&aBlock);

  v89 = [v5 actionWithTitle:v52 style:0 handler:v53];
  _Block_release(v53);

  v54 = String._bridgeToObjectiveC()();
  v55 = [v84 systemImageNamed:v54];

  v56 = String._bridgeToObjectiveC()();
  [v89 setValue:v55 forKey:v56];

  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  v58 = v51;
  v59 = String._bridgeToObjectiveC()();
  v105 = sub_100466560;
  v106 = v57;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DC60;
  v60 = _Block_copy(&aBlock);

  v86 = [v5 actionWithTitle:v59 style:0 handler:v60];
  _Block_release(v60);

  v61 = String._bridgeToObjectiveC()();
  v62 = [v84 systemImageNamed:v61];

  v63 = String._bridgeToObjectiveC()();
  [v86 setValue:v62 forKey:v63];

  v64 = swift_allocObject();
  *(v64 + 16) = v58;
  v65 = v58;
  v66 = String._bridgeToObjectiveC()();
  v105 = sub_100466584;
  v106 = v64;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DCB0;
  v67 = _Block_copy(&aBlock);

  v68 = [v22 actionWithTitle:v66 style:0 handler:v67];
  _Block_release(v67);

  v69 = String._bridgeToObjectiveC()();
  v70 = [v84 systemImageNamed:v69];

  v71 = String._bridgeToObjectiveC()();
  [v68 setValue:v70 forKey:v71];

  v72 = swift_allocObject();
  *(v72 + 16) = v65;
  v85 = v65;
  v73 = String._bridgeToObjectiveC()();
  v105 = sub_1004665BC;
  v106 = v72;
  aBlock = _NSConcreteStackBlock;
  v102 = 1107296256;
  v103 = sub_10016B4D8;
  v104 = &unk_100A6DD00;
  v74 = _Block_copy(&aBlock);

  v75 = [v22 actionWithTitle:v73 style:0 handler:v74];
  _Block_release(v74);

  v76 = String._bridgeToObjectiveC()();
  v77 = [v84 systemImageNamed:v76];

  v78 = String._bridgeToObjectiveC()();
  [v75 setValue:v77 forKey:v78];

  [v87 addAction:v90];
  [v87 addAction:v100];
  [v87 addAction:v99];
  [v87 addAction:v98];
  [v87 addAction:v95];
  [v87 addAction:v97];
  [v87 addAction:v93];
  [v87 addAction:v91];
  [v87 addAction:?];
  [v87 addAction:?];
  [v87 addAction:v68];
  [v87 addAction:v75];
  v79 = String._bridgeToObjectiveC()();
  v80 = [v30 actionWithTitle:v79 style:1 handler:0];

  [v87 addAction:v80];
  v81 = [v87 popoverPresentationController];
  if (v81)
  {
    v82 = v81;
    [v81 setSourceItem:a1];
  }

  [v85 presentViewController:v87 animated:1 completion:{0, a1}];
}

uint64_t sub_10045ADD8()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1004667D0;
  *(v2 + 24) = v1;
  v6[4] = sub_100177C4C;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10001A7D4;
  v6[3] = &unk_100A6E048;
  v3 = _Block_copy(v6);
  v4 = v0;

  [v4 performBlockAndWait:v3];

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_10045AF80(void *a1)
{
  v40 = a1;
  v39 = type metadata accessor for UUID();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = 0;
  v37 = 0x80000001008F4F10;
  v38 = ObjCClassFromMetadata;
  v9 = (v1 + 8);
  do
  {
    v10 = v8 + 1;
    v11 = objc_allocWithZone(v38);
    v12 = [v11 initWithContext:v40];
    UUID.init()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v12 setId:isa];

    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v41 = v8;
    v42 = 0xD000000000000015;
    v43 = v37;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = v42;
    v17 = v43;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    v42 = v16;
    v43 = v17;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22 = String._bridgeToObjectiveC()();

    [v12 setName:v22];

    UUID.init()();
    v23 = UUID._bridgeToObjectiveC()().super.isa;
    v24 = *v9;
    v25 = v39;
    (*v9)(v3, v39);
    [v12 setParentID:v23];

    v24(v6, v25);
    v8 = v10;
  }

  while (v10 != 100);
  v42 = 0;
  v26 = [v40 save:&v42];
  v27 = v42;
  if (v26)
  {

    v28 = v27;
  }

  else
  {
    v40 = v42;
    v29 = v42;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFDB8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000617C(v30, qword_100AE47A0);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Generate Attachments Orphans error:%@", v33, 0xCu);
      sub_100004F84(v34, &unk_100AD4BB0);
    }

    else
    {
    }
  }
}

uint64_t sub_10045B408()
{
  v0 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v0 - 8);
  v2 = v21 - v1;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v3 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v4 = v3;
  v5 = static JournalEntryAssetFileAttachmentMO.fetchRequest()();
  v26 = _swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = &v26;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1004667C4;
  *(v7 + 24) = v6;
  aBlock[4] = sub_100177C4C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A6DFD0;
  v8 = _Block_copy(aBlock);
  v9 = v4;
  v10 = v5;

  [v9 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v12 = v26;
    v13 = *(v26 + 2);
    if (v13)
    {
      v22 = v9;
      v23 = v10;
      v24 = v6;
      v14 = objc_opt_self();

      v21[1] = v12;
      v15 = v12 + 5;
      do
      {

        v16 = [v14 defaultCenter];
        if (qword_100ACFFA8 != -1)
        {
          swift_once();
        }

        v17 = qword_100B2FB98;
        UUID.init(uuidString:)();

        v18 = type metadata accessor for UUID();
        v19 = *(v18 - 8);
        isa = 0;
        if ((*(v19 + 48))(v2, 1, v18) != 1)
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v19 + 8))(v2, v18);
        }

        [v16 postNotificationName:v17 object:isa];

        swift_unknownObjectRelease();
        v15 += 2;
        --v13;
      }

      while (v13);
    }

    else
    {
    }
  }

  return result;
}

void sub_10045B7D8(void *a1, uint64_t a2, char **a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v9 = NSManagedObjectContext.fetch<A>(_:)();
  v10 = v9;
  v49 = v5;
  v50 = v8;
  if (v9 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
  }

  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  v45 = (v6 + 8);
  v46 = v10 & 0xC000000000000001;
  v14 = &selRef_initWithName_managedObjectModel_;
  v47 = a1;
  v48 = a3;
  do
  {
    if (v13)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v10 + 8 * v12 + 32);
    }

    v19 = v18;
    v20 = [v18 v14[219]];
    if (v20)
    {
      v21 = v20;
      [v20 removeFileAttachmentsObject:v19];
      v22 = [v21 id];
      if (v22)
      {
        v23 = v10;
        v24 = v11;
        v25 = v22;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = UUID.uuidString.getter();
        v28 = v27;
        v29 = *a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_10009BCC8(0, *(v29 + 2) + 1, 1, v29);
          *a3 = v29;
        }

        v32 = *(v29 + 2);
        v31 = *(v29 + 3);
        if (v32 >= v31 >> 1)
        {
          v33 = sub_10009BCC8((v31 > 1), v32 + 1, 1, v29);
          *v48 = v33;
        }

        (*v45)(v50);
        v15 = v48;
        v16 = *v48;
        *(v16 + 2) = v32 + 1;
        a3 = v15;
        v17 = &v16[16 * v32];
        *(v17 + 4) = v26;
        *(v17 + 5) = v28;
        v13 = v46;
        a1 = v47;
        v11 = v24;
        v10 = v23;
        v14 = &selRef_initWithName_managedObjectModel_;
      }

      [a1 deleteObject:v21];
    }

    ++v12;
  }

  while (v11 != v12);
LABEL_18:

  v51[0] = 0;
  v34 = [a1 save:v51];
  v35 = v51[0];
  if (v34)
  {

    v36 = v35;
  }

  else
  {
    v50 = v51[0];
    v37 = v51[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFDB8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000617C(v38, qword_100AE47A0);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Make Orphans From Existing error:%@", v41, 0xCu);
      sub_100004F84(v42, &unk_100AD4BB0);
    }

    else
    {
    }
  }
}

void sub_10045BC7C()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = qword_100B2F9E0;
  v1 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1004667BC;
  *(v3 + 24) = v2;
  v7[4] = sub_100177C4C;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10001A7D4;
  v7[3] = &unk_100A6DF58;
  v4 = _Block_copy(v7);
  v5 = v1;

  [v5 performBlockAndWait:v4];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 16);
    sub_1006F0764();
  }
}

void sub_10045BE38()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100B2F9E0 + 16);
  v1 = *&v0[OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate];
  v2 = v0;
  v3 = v1;
  sub_100488D28(v3);
}

void sub_10045BED4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a2 + OBJC_IVAR____TtC7Journal14AdminEntriesVC_model) + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [v5 fetchedObjects];
  if (!v6)
  {
LABEL_13:

LABEL_14:
    type metadata accessor for JurassicAlertController();
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() actionWithTitle:v14 style:0 handler:0];

    [v13 addAction:v15];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v13;
    v20[4] = sub_1004667B4;
    v20[5] = v17;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100006C7C;
    v20[3] = &unk_100A6DEE0;
    v18 = _Block_copy(v20);
    v19 = v13;

    [a3 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);

    return;
  }

  v7 = v6;
  type metadata accessor for JournalEntryMO();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  sub_1001BC04C(v10);
}

void sub_10045C1D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong presentViewController:a2 animated:1 completion:0];
  }
}

void sub_10045C244(uint64_t a1, void *a2)
{
  v3 = byte_100B2F920;

  if (v3)
  {
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v4 = &off_100A59A70;
  }

  sub_1004841FC(v4);

  v5 = [a2 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];

    byte_100B2F920 = (byte_100B2F920 & 1) == 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10045C2F4()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1004667AC;
  *(v2 + 24) = v1;
  v6[4] = sub_100177C4C;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10001A7D4;
  v6[3] = &unk_100A6DE68;
  v3 = _Block_copy(v6);
  v4 = v0;

  [v4 performBlockAndWait:v3];
  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10045C49C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a2;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_1003E9628(0, 0, v8, a4, v12);
}

void sub_10045C5C0(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for BatchSettingsVC();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = *&a2[OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings + 32];
  v5 = *&a2[OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings + 40];
  v6 = a2[OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings + 48];
  v7 = &v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC_batchSettings];
  v11 = *&a2[OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings + 16];
  v12 = *&a2[OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings];
  swift_beginAccess();
  *v7 = v12;
  *(v7 + 1) = v11;
  *(v7 + 4) = v4;
  *(v7 + 5) = v5;
  v7[48] = v6;
  v8 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v9 = &v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass];
  v10 = *&v3[OBJC_IVAR____TtC7Journal15BatchSettingsVC_pass];
  *v9 = sub_1004665C4;
  v9[1] = v8;

  sub_100004DF8(v10);

  [a2 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_10045C758()
{
  v0 = type metadata accessor for JournalFeatureFlags();
  v67 = *(v0 - 8);
  v68 = v0;
  __chkstk_darwin(v0);
  v66 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Date();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v58 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v10 = sub_1000F24EC(&unk_100ADE5F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  v16 = type metadata accessor for EntrySource();
  v17 = __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v21;
  v62 = v20;
  (*(v21 + 104))(v19, enum case for EntrySource.blankEntry(_:), v17);
  v22 = type metadata accessor for EntryListType();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v15, 1, 1, v22);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v24 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  UUID.init()();
  v59 = v5;
  v60 = v4;
  (*(v5 + 56))(v9, 0, 1, v4);
  type metadata accessor for JournalEntryMO();
  v25 = static JournalEntryMO.create(type:context:uuid:)();
  type metadata accessor for EntryViewModel();
  swift_allocObject();
  v26 = v24;
  v27 = v25;
  v28 = sub_100035ADC(v27, 1, 1, v26);
  sub_1000082B4(v15, v12, &unk_100ADE5F0);
  if ((*(v23 + 48))(v12, 1, v22) == 1)
  {

    sub_100004F84(v9, &qword_100AD1420);
    sub_100004F84(v15, &unk_100ADE5F0);
    (*(v61 + 8))(v19, v62);
    sub_100004F84(v12, &unk_100ADE5F0);
  }

  else
  {
    v29 = sub_1000F24EC(&qword_100AD47A0);
    if ((*(*(v29 - 8) + 48))(v12, 2, v29))
    {

      sub_100004F84(v9, &qword_100AD1420);
      sub_100004F84(v15, &unk_100ADE5F0);
      (*(v61 + 8))(v19, v62);
      sub_100011478(v12);
    }

    else
    {
      v30 = v58;
      v31 = v59;
      v32 = v12;
      v33 = v60;
      (*(v59 + 32))(v58, v32, v60);

      sub_1007788F0(v30);

      (*(v31 + 8))(v30, v33);
      sub_100004F84(v9, &qword_100AD1420);
      sub_100004F84(v15, &unk_100ADE5F0);
      (*(v61 + 8))(v19, v62);
    }
  }

  v70 = 0x6D6574692077654ELL;
  v71 = 0xE900000000000020;
  v34 = v63;
  Date.init()();
  sub_100006A3C(&qword_100AE1D80, &type metadata accessor for Date);
  v35 = v65;
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v36);

  (*(v64 + 8))(v34, v35);
  v37 = objc_allocWithZone(NSAttributedString);
  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 initWithString:v38];

  v41 = v66;
  v40 = v67;
  v42 = v68;
  (*(v67 + 104))(v66, enum case for JournalFeatureFlags.enhancedSync(_:), v68);
  v43 = JournalFeatureFlags.isEnabled.getter();
  (*(v40 + 8))(v41, v42);
  if (v43)
  {
    sub_100780694(v39);
  }

  else
  {
    v44 = OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText;
    v45 = *&v28[OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText];
    if (!v45 || (sub_1000065A8(0, &qword_100AE4890), v46 = v45, v47 = v39, v48 = static NSObject.== infix(_:_:)(), v47, v46, (v48 & 1) == 0))
    {
      v28[OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged] = 1;
    }

    v49 = *&v28[v44];
    *&v28[v44] = v39;
    v50 = v39;
  }

  v51 = objc_allocWithZone(type metadata accessor for AdminComposerVC());

  sub_1007873C8(v52);
  v54 = v53;
  v55 = [v69 navigationController];
  if (v55)
  {
    v56 = v55;
    [v55 pushViewController:v54 animated:1];
  }
}