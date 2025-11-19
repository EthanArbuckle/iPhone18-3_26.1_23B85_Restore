uint64_t sub_1001D280C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v23 - v9;
  v11 = sub_100099DF4(&qword_1002E1880, &qword_100247908);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v23 - v14;
  v16 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  (*(*(v16 - 8) + 16))(v10, a1, v16);
  sub_100002728(v10, 0, 1, v16);
  _s22PrivateIdentifierModelCMa_0();
  sub_100032658(&qword_1002E1890, _s22PrivateIdentifierModelCMa_0);
  FetchDescriptor.init(predicate:sortBy:)();
  FetchDescriptor.fetchLimit.setter();
  v17 = *v4;
  v18 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v3)
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v19 = v18;
    if (sub_1001FEDE4())
    {
      sub_1001FEDE8(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v19 + 32);
      }

      (*(v12 + 8))(v15, v11);
      v21 = *(a2 + 24);
      a2 = (*(*(a2 + 48) + 392))(v20);
    }

    else
    {
      (*(v12 + 8))(v15, v11);

      return 0;
    }
  }

  return a2;
}

void sub_1001D2AFC()
{
  sub_100004868();
  v62 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100003724(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_100003774();
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v63 = v11;
  v64 = v9;
  v60 = v7;
  *&v61 = v5;
  v65 = v7;
  v66 = v5;
  v67 = v11;
  v68 = v9;
  _s22PrivateIdentifierModelCMa_0();
  Predicate.init(_:)();
  v20 = v0;
  v21 = v62;
  v22 = sub_1001D280C(v19, v3);
  (*(v14 + 8))(v19, v12);
  if (!v21)
  {
    v59 = v20;
    if (v22)
    {
      v69 = v22;
      v23 = *(v3 + 24);
      v58 = *(v3 + 48);
      v24 = *(v58 + 16);
      swift_unknownObjectRetain();
      v62 = v22;
      dispatch thunk of Identifiable.id.getter();
      v25 = sub_1001EC54C(v70, v71, *(&v71 + 1), v72, v11, v9, v60, v61);
      swift_unknownObjectRelease();
      v26 = v62;

      if ((v25 & 1) == 0)
      {
        v57 = v24;
        v27 = *(v3 + 68);

        swift_unknownObjectRetain();
        v28 = v26;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.fault.getter();

        v31 = os_log_type_enabled(v29, v30);
        v56 = v11;
        if (v31)
        {
          v32 = sub_1000328AC();
          v59 = v23;
          v33 = v32;
          v55 = swift_slowAlloc();
          v69 = v26;
          v70 = v55;
          *v33 = 136315394;
          v34 = *(v58 + 8);
          dispatch thunk of CustomStringConvertible.description.getter();
          swift_unknownObjectRelease();
          v35 = sub_1000050CC();
          v38 = sub_100009E5C(v35, v36, v37);

          *(v33 + 4) = v38;
          *(v33 + 12) = 2080;
          v40 = v60;
          v39 = v61;
          v41 = sub_1001ECC0C();
          v43 = sub_100009E5C(v41, v42, &v70);

          *(v33 + 14) = v43;
          _os_log_impl(&_mh_execute_header, v29, v30, "Fetched existing identifier record %s does not match requested id %s.", v33, 0x16u);
          swift_arrayDestroy();
          sub_1000327B4();
          sub_1000327B4();

          v44 = v9;
          v45 = v39;
        }

        else
        {
          swift_unknownObjectRelease();

          v44 = v9;
          v40 = v60;
          v45 = v61;
        }

        v69 = v28;
        dispatch thunk of Identifiable.id.getter();
        v46 = v70;
        v61 = v71;
        v47 = v72;
        LOBYTE(v69) = 1;
        v48 = sub_1000050CC();
        sub_100099DF4(v48, v49);
        sub_1000326F8();
        sub_1000326A8(v50, v51, v52);
        swift_allocError();
        *v53 = v46;
        *(v53 + 8) = v61;
        v54 = v56;
        *(v53 + 24) = v47;
        *(v53 + 32) = v54;
        *(v53 + 40) = v44;
        *(v53 + 48) = v40;
        *(v53 + 56) = v45;
        *(v53 + 64) = v69;
        swift_willThrow();

        swift_unknownObjectRelease();
      }
    }
  }

  sub_100005074();
}

void sub_1001D2F14()
{
  sub_100004868();
  v93 = v2;
  v4 = v3;
  v100 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v98 = type metadata accessor for Date();
  v14 = sub_100003724(v98);
  v95 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10000306C();
  v96 = v19 - v18;
  v20 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v20);
  v22 = *(v21 + 64);
  sub_100003774();
  __chkstk_darwin(v23);
  sub_10003CF80();
  v103 = sub_100099DF4(&qword_1002E1880, &qword_100247908);
  sub_100003724(v103);
  v25 = *(v24 + 64);
  sub_100003774();
  __chkstk_darwin(v26);
  sub_100004880();
  v106 = v9;

  _s22PrivateIdentifierModelCMa_0();
  sub_100032848();
  v27 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_1000327CC(v27);
  sub_100032718();
  sub_100032658(v28, v29);
  sub_10003290C();
  v94 = *v0;
  v30 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  v107 = v13;
  v104 = v4;
  if (v1)
  {
    v31 = *(v4 + 68);

    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_1000328AC();
      v91 = swift_slowAlloc();
      v92 = sub_10003294C();
      v108 = v92;
      *v34 = 136315394;
      v35 = sub_1001ECC0C();
      v37 = sub_100009E5C(v35, v36, &v108);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v38;
      *v91 = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to get count of existing persisted record with identifier %s: %@. Proceeding to allow insertion of a new record.", v34, 0x16u);
      sub_10003CD48(v91, &qword_1002E2700, &unk_1002474D0);
      sub_100032798();
      sub_100004118(v92);
      sub_100032798();
      v39 = v9;
      sub_1000327B4();

      v4 = v104;
    }

    else
    {

      v4 = v104;
      v39 = v9;
    }
  }

  else
  {
    v39 = v9;
    if (v30)
    {

      v40 = *(v4 + 68);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v102 = v7;
        v44 = sub_10003294C();
        v108 = v44;
        *v43 = 136315138;
        v45 = v107;
        v46 = sub_1001ECC0C();
        v48 = sub_100009E5C(v46, v47, &v108);

        *(v43 + 4) = v48;
        sub_10003292C(&_mh_execute_header, v49, v50, "Attempting to insert identifier record with identifier %s, but a record with the same identifier already exists. Preventing duplicate insertion.");
        sub_100004118(v44);
        v7 = v102;
        sub_1000327B4();
        sub_100032798();
      }

      else
      {

        v45 = v13;
      }

      LOBYTE(v117) = 0;
      v108 = v45;
      v109 = v11;
      v110 = v9;
      v111 = v7;
      v116 = 0;
      v84 = sub_1000050CC();
      sub_100099DF4(v84, v85);
      sub_1000326F8();
      sub_1000326A8(v86, v87, v88);
      swift_willThrowTypedImpl();
      v89 = sub_100032778();
      v90(v89);

      v83 = v7;
      v73 = 0;
      v76 = v11;
      v82 = v45;
      v72 = v9;
      goto LABEL_16;
    }
  }

  v51 = *(v4 + 24);
  (*(v95 + 16))(v96, v100, v98);
  v52 = *(v4 + 48);
  v53 = *(v52 + 400);

  v54 = v39;
  v55 = v53(v39, v7, v107, v11, v96, v51, v52);
  (*(v52 + 384))(v51, v52);
  v56 = v11;
  dispatch thunk of ModelContext.insert<A>(_:)();

  v117 = v55;
  v99 = *(v52 + 16);
  dispatch thunk of Identifiable.id.getter();
  v57 = v54;
  LOBYTE(v54) = sub_1001EC54C(v108, v109, v110, v111, v107, v11, v54, v7);

  if ((v54 & 1) == 0)
  {
    v60 = *(v104 + 68);

    swift_unknownObjectRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = sub_1000328AC();
      v108 = swift_slowAlloc();
      *v63 = 136315394;
      v117 = v55;
      v64 = *(v52 + 8);
      v97 = v62;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      swift_unknownObjectRelease();
      v68 = sub_100009E5C(v65, v67, &v108);

      *(v63 + 4) = v68;
      *(v63 + 12) = 2080;
      v69 = sub_1001ECC0C();
      v71 = sub_100009E5C(v69, v70, &v108);

      *(v63 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v61, v97, "Inserted identifier record %s does not have expected id %s.", v63, 0x16u);
      swift_arrayDestroy();
      sub_1000327B4();
      sub_1000327B4();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v9 = v7;
    v108 = v55;
    dispatch thunk of Identifiable.id.getter();
    v11 = v118;
    v101 = v117;
    v72 = v119;
    v105 = v120;
    v73 = 1;
    v121 = 1;
    v108 = v117;
    v109 = v118;
    v110 = v119;
    v111 = v120;
    v112 = v107;
    v113 = v56;
    v114 = v57;
    v115 = v9;
    v116 = 1;

    v74 = sub_1000050CC();
    sub_100099DF4(v74, v75);
    v76 = v56;
    sub_1000326F8();
    sub_1000326A8(v77, v78, v79);
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
    v80 = sub_100032778();
    v81(v80);
    v82 = v101;
    v83 = v105;
    v45 = v107;
LABEL_16:
    *v93 = v82;
    *(v93 + 8) = v11;
    *(v93 + 16) = v72;
    *(v93 + 24) = v83;
    *(v93 + 32) = v45;
    *(v93 + 40) = v76;
    *(v93 + 48) = v106;
    *(v93 + 56) = v9;
    *(v93 + 64) = v73;
    goto LABEL_17;
  }

  v58 = sub_100032778();
  v59(v58);
LABEL_17:
  sub_100005074();
}

uint64_t sub_1001D38F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v41 = type metadata accessor for Predicate();
  v9 = type metadata accessor for Optional();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v42 = v35 - v11;
  v45 = *v4;
  v57 = dispatch thunk of ModelContext.insertedModelsArray.getter();
  v12 = a2[3];
  v40 = a2[2];
  v48 = v40;
  v49 = v12;
  v39 = v12;
  v13 = a2[5];
  v38 = a2[4];
  v50 = v38;
  v51 = a3;
  v14 = a2[6];
  v15 = a2[7];
  v37 = v13;
  v52 = v13;
  v53 = v14;
  v16 = v14;
  v36 = v15;
  v54 = v15;
  v55 = a4;
  v46 = a4;
  sub_100099DF4(&qword_1002E15F8, &qword_1002476F8);
  sub_1000326A8(&qword_1002E1600, &qword_1002E15F8, &qword_1002476F8);
  v17 = v47;
  v18 = Sequence.compactMap<A>(_:)();

  v57 = v18;
  type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v47 = a1;
  v20 = Sequence.filter(_:)();

  if (!v17)
  {
    v56 = v20;
    v35[3] = v20;
    v22 = v40;
    v23 = v39;
    v24 = v38;
    v25 = v37;
    v35[1] = WitnessTable;
    v26 = v36;
    v27 = sub_1001D3D24(v45, v40, v39, v38, a3, v37, v16, v36, v46);
    v35[2] = v35;
    __chkstk_darwin(v27);
    v35[-10] = v22;
    v35[-9] = v23;
    v35[-8] = v24;
    v35[-7] = a3;
    v35[-6] = v25;
    v35[-5] = v16;
    v28 = v46;
    v35[-4] = v26;
    v35[-3] = v28;
    v33 = v29;
    v34 = v30;
    Sequence.forEach(_:)();

    v32 = v41;
    v31 = v42;
    (*(*(v41 - 8) + 16))(v42, v47, v41);
    sub_100002728(v31, 0, 1, v32);
    dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
    return (*(v43 + 8))(v31, v44);
  }

  return result;
}

uint64_t sub_1001D3CA4@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  sub_100099DF4(&qword_1002E1608, &qword_100247700);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t (*sub_1001D3D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))()
{
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a8;
  v17[9] = a9;
  v17[10] = a1;

  return sub_1000323EC;
}

uint64_t sub_1001D3DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v43 = v41 - v6;
  v7 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v41 - v9;
  v44 = sub_100099DF4(&qword_1002E1880, &qword_100247908);
  v51 = *(v44 - 8);
  v11 = *(v51 + 64);
  __chkstk_darwin(v44);
  v13 = v41 - v12;
  sub_1000325C8(a1, v10, &qword_1002E1878, &qword_100247900);
  sub_100099DF4(&qword_1002E1948, &qword_1002479B8);
  v14 = *(sub_100099DF4(&qword_1002E1950, &unk_1002479C0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_10022E400;
  swift_getKeyPath();
  sub_100032658(&qword_1002E1958, &type metadata accessor for UUID);
  SortDescriptor.init<A>(_:order:)();
  _s22PrivateIdentifierModelCMa_0();
  sub_100032658(&qword_1002E1890, _s22PrivateIdentifierModelCMa_0);
  v17 = v13;
  v18 = v44;
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100247530;
  *(v19 + 32) = swift_getKeyPath();
  *(v19 + 40) = swift_getKeyPath();
  *(v19 + 48) = swift_getKeyPath();
  FetchDescriptor.propertiesToFetch.setter();
  v20 = v49;
  v21 = *v48;
  v22 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v20)
  {
    return (*(v51 + 8))(v13, v18);
  }

  v24 = v22;
  v25 = v43;
  v26 = sub_1000044BC(v22);
  if (!v26)
  {

    result = (*(v51 + 8))(v17, v18);
    v29 = _swiftEmptyArrayStorage;
LABEL_14:
    *a2 = v29;
    return result;
  }

  v27 = v26;
  v41[1] = 0;
  v42 = v17;
  v52 = _swiftEmptyArrayStorage;
  result = sub_1001CC574(0, v26 & ~(v26 >> 63), 0);
  v49 = v27;
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = v52;
    v45 = v24 & 0xC000000000000001;
    v46 = v24;
    v47 = v4;
    v48 = a2;
    do
    {
      if (v45)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v24 + 8 * v28 + 32);
      }

      v31 = (v25 + *(v4 + 48));
      sub_1001E68AC();
      sub_1001E6944();
      v33 = v32;
      v35 = v34;
      v36 = sub_1001E6AA0(v32);
      v38 = v37;

      *v31 = v33;
      v31[1] = v35;
      v31[2] = v36;
      v31[3] = v38;
      v52 = v29;
      v40 = v29[2];
      v39 = v29[3];
      if (v40 >= v39 >> 1)
      {
        sub_1001CC574(v39 > 1, v40 + 1, 1);
        v29 = v52;
      }

      ++v28;
      v29[2] = v40 + 1;
      sub_1001DC084(v25, v29 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v40);
      a2 = v48;
      v24 = v46;
      v4 = v47;
    }

    while (v49 != v28);
    (*(v51 + 8))(v42, v44);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1001D4324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004868();
  a19 = v23;
  a20 = v24;
  v90 = v20;
  v91 = v21;
  v79 = v25;
  v26 = sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
  v27 = sub_100003724(v26);
  v89 = v28;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  sub_10000308C();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = v78 - v35;
  __chkstk_darwin(v37);
  v39 = v78 - v38;
  v40 = type metadata accessor for UUID();
  v41 = sub_100003724(v40);
  v87 = v42;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_10000306C();
  v47 = v46 - v45;
  v48 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v48);
  v50 = *(v49 + 64);
  sub_100003774();
  __chkstk_darwin(v51);
  sub_100004880();
  v93 = _s22PrivateIdentifierModelCMa_0();
  Predicate.init(_:)();
  v52 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100032830(v22, v53, v54, v52);
  v55 = v91;
  sub_1001D3DD4(v22, &a10);
  sub_10003CD48(v22, &qword_1002E1878, &qword_100247900);
  if (!v55)
  {
    v56 = v33;
    v57 = v89;
    v58 = v79;
    v78[2] = 0;
    v85 = v47;
    v86 = v39;
    v59 = a10;
    v60 = *(a10 + 16);
    if (v60)
    {
      v83 = v56;
      v91 = v60;
      v92 = _swiftEmptyArrayStorage;
      sub_1001CC594(0, v60, 0);
      v61 = v92;
      v62 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v78[1] = v59;
      v63 = v59 + v62;
      v64 = v57[9];
      v65 = v86;
      v66 = (v87 + 32);
      v80 = (v87 + 16);
      v81 = v64;
      v67 = v85;
      v84 = v26;
      v82 = v36;
      do
      {
        v90 = v61;
        sub_1000325C8(v63, v65, &qword_1002E1230, &qword_1002479B0);
        sub_1000325C8(v65, v36, &qword_1002E1230, &qword_1002479B0);
        v68 = *(v26 + 48);
        v88 = *&v36[v68];
        v69 = *&v36[v68 + 16];
        v70 = *&v36[v68 + 24];
        v71 = v36;
        v72 = v83;
        v73 = v83 + v68;
        v89 = *v66;
        (v89)(v83, v71, v40);
        *v73 = v88;
        *(v73 + 16) = v69;
        *(v73 + 24) = v70;
        v65 = v86;
        (*v80)(v67, v72, v40);
        sub_10003CD48(v72, &qword_1002E1230, &qword_1002479B0);
        v61 = v90;
        sub_10003CD48(v65, &qword_1002E1230, &qword_1002479B0);
        v92 = v61;
        v75 = v61[2];
        v74 = v61[3];
        if (v75 >= v74 >> 1)
        {
          sub_1001CC594(v74 > 1, v75 + 1, 1);
          v61 = v92;
        }

        v61[2] = v75 + 1;
        v67 = v85;
        (v89)(v61 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v75, v85, v40);
        v36 = v82;
        v63 += v81;
        --v91;
        v26 = v84;
      }

      while (v91);

      v76 = v79;
    }

    else
    {

      v61 = _swiftEmptyArrayStorage;
      v76 = v58;
    }

    v76[3] = sub_100099DF4(&qword_1002E1A20, &qword_100247A88);
    sub_100032748();
    v76[4] = sub_1000326A8(v77, &qword_1002E1A20, &qword_100247A88);
    *v76 = v61;
  }

  sub_100005074();
}

uint64_t sub_1001D4788@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002E1A30, &qword_100247A90);
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = sub_100099DF4(&qword_1002E1A38, &qword_100247A98);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v22 - v17;
  v19 = *a1;
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v13, v9);
  static PredicateExpressions.build_NilLiteral<A>()();
  a2[3] = sub_100099DF4(&qword_1002E1A40, &qword_100247AA0);
  a2[4] = sub_1001DC53C();
  sub_100007914(a2);
  sub_1000326A8(&qword_1002E1A60, &qword_1002E1A38, &qword_100247A98);
  sub_1000326A8(&qword_1002E1A68, &qword_1002E1A30, &qword_100247A90);
  sub_100032454(&qword_1002E16F0);
  v20 = v22;
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v23 + 8))(v8, v20);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1001D4B0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100003B38();
  v7 = type metadata accessor for Date();
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  v15 = v14 - v13;
  static Date.- infix(_:_:)();
  _s22PrivateIdentifierModelCMa_0();
  Predicate.init(_:)();
  v16 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100032830(v1, v17, v18, v16);
  a1[3] = sub_100099DF4(&qword_1002E1938, &qword_1002479A8);
  sub_100032748();
  a1[4] = sub_1000326A8(v19, &qword_1002E1938, &qword_1002479A8);
  sub_1001D3DD4(v1, a1);
  sub_10003CD48(v1, &qword_1002E1878, &qword_100247900);
  if (v21)
  {
    sub_1001513E8(a1);
  }

  return (*(v10 + 8))(v15, v7);
}

uint64_t sub_1001D4D10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a2;
  v67 = a3;
  v5 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  __chkstk_darwin(v5);
  v58 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100099DF4(&qword_1002E1610, &qword_100247708);
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v55 = v48 - v11;
  v59 = sub_100099DF4(&qword_1002E1968, &qword_1002479F8);
  v62 = *(v59 - 8);
  v12 = *(v62 + 64);
  __chkstk_darwin(v59);
  v53 = v48 - v13;
  v14 = sub_100099DF4(&qword_1002E1970, &qword_100247A00);
  v15 = *(v14 - 8);
  v65 = v14;
  v66 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v54 = v48 - v17;
  v18 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v48 - v21;
  v51 = sub_100099DF4(&qword_1002E1978, &qword_100247A08);
  v52 = *(v51 - 8);
  v23 = *(v52 + 64);
  __chkstk_darwin(v51);
  v25 = v48 - v24;
  v26 = sub_100099DF4(&qword_1002E1980, &qword_100247A10);
  v27 = *(v26 - 8);
  v56 = v26;
  v57 = v27;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v68 = v48 - v29;
  v30 = *a1;
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v31 = *(v19 + 8);
  v48[1] = v19 + 8;
  v49 = v31;
  v31(v22, v18);
  v69 = a2;
  v70 = v30;
  sub_100099DF4(&qword_1002E1988, &qword_100247A40);
  type metadata accessor for Date();
  v48[0] = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_1000326A8(&qword_1002E1990, &qword_1002E1978, &qword_100247A08);
  sub_1000326A8(&qword_1002E1998, &qword_1002E1988, &qword_100247A40);
  v32 = v51;
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v52 + 8))(v25, v32);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v33 = v53;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v49(v22, v18);
  v34 = v55;
  static PredicateExpressions.build_Arg<A>(_:)();
  v36 = v60;
  v35 = v61;
  v37 = v58;
  (*(v60 + 104))(v58, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v61);
  sub_1000326A8(&qword_1002E19A0, &qword_1002E1968, &qword_1002479F8);
  sub_1000326A8(&qword_1002E1660, &qword_1002E1610, &qword_100247708);
  sub_100032658(&qword_1002DB968, &type metadata accessor for Date);
  v38 = v54;
  v39 = v34;
  v40 = v59;
  v41 = v63;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v36 + 8))(v37, v35);
  (*(v64 + 8))(v39, v41);
  (*(v62 + 8))(v33, v40);
  v42 = sub_100099DF4(&qword_1002E19A8, &qword_100247A70);
  v43 = v67;
  v67[3] = v42;
  v43[4] = sub_1001DC0F4();
  sub_100007914(v43);
  sub_1000326A8(&qword_1002E1A00, &qword_1002E1980, &qword_100247A10);
  sub_1000326A8(&qword_1002E1A08, &qword_1002E1970, &qword_100247A00);
  v44 = v68;
  v45 = v56;
  v46 = v65;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  (*(v66 + 8))(v38, v46);
  return (*(v57 + 8))(v44, v45);
}

uint64_t sub_1001D5558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v50 = a2;
  v53 = a1;
  v66 = a4;
  v59 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v61 = *(v59 - 8);
  v4 = *(v61 + 64);
  __chkstk_darwin(v59);
  v57 = v47 - v5;
  v6 = sub_100099DF4(&qword_1002E1968, &qword_1002479F8);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v56 = v47 - v9;
  v10 = sub_100099DF4(&qword_1002E1970, &qword_100247A00);
  v11 = *(v10 - 8);
  v64 = v10;
  v65 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v58 = v47 - v13;
  v67 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v14 = *(v67 - 8);
  v15 = v14[8];
  __chkstk_darwin(v67);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100099DF4(&qword_1002E1610, &qword_100247708);
  v19 = *(v18 - 8);
  v68 = v18;
  v69 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v47 - v21;
  v23 = sub_100099DF4(&qword_1002E19E8, &qword_100247A80);
  v51 = *(v23 - 8);
  v24 = *(v51 + 64);
  __chkstk_darwin(v23);
  v26 = v47 - v25;
  v27 = sub_100099DF4(&qword_1002E19D8, &qword_100247A78);
  v28 = *(v27 - 8);
  v54 = v27;
  v55 = v28;
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v52 = v47 - v30;
  v47[1] = &protocol conformance descriptor for PredicateExpressions.Variable<A>;
  sub_1000326A8(&qword_1002E1A10, &qword_1002E19E8, &qword_100247A80);
  static PredicateExpressions.build_Arg<A>(_:)();
  v53 = type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v49 = enum case for PredicateExpressions.ComparisonOperator.lessThan(_:);
  v48 = v14[13];
  v31 = v67;
  v48(v17);
  v47[4] = sub_1000326A8(&qword_1002E1660, &qword_1002E1610, &qword_100247708);
  v47[3] = sub_100032658(&qword_1002DB968, &type metadata accessor for Date);
  v32 = v68;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v33 = v14[1];
  v47[2] = v14 + 1;
  v33(v17, v31);
  v34 = *(v69 + 8);
  v69 += 8;
  v34(v22, v32);
  (*(v51 + 8))(v26, v23);
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918);
  v35 = v57;
  v36 = v59;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v37 = v56;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v61 + 8))(v35, v36);
  static PredicateExpressions.build_Arg<A>(_:)();
  v38 = v67;
  (v48)(v17, v49, v67);
  sub_1000326A8(&qword_1002E19A0, &qword_1002E1968, &qword_1002479F8);
  v39 = v58;
  v40 = v37;
  v41 = v62;
  v42 = v68;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  v33(v17, v38);
  v34(v22, v42);
  (*(v63 + 8))(v40, v41);
  sub_1000326A8(&qword_1002E1A18, &qword_1002E19D8, &qword_100247A78);
  sub_1000326A8(&qword_1002E1A08, &qword_1002E1970, &qword_100247A00);
  v43 = v52;
  v44 = v54;
  v45 = v64;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v65 + 8))(v39, v45);
  return (*(v55 + 8))(v43, v44);
}

void sub_1001D5D0C()
{
  sub_100004868();
  v84 = v1;
  v4 = v3;
  v6 = v5;
  v81 = type metadata accessor for UUID();
  v7 = sub_100003724(v81);
  v83 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_10000308C();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v71 - v15;
  v17 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100003724(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_100003774();
  __chkstk_darwin(v22);
  sub_10000AF24();
  v82 = v6;
  v85 = v6;
  _s22PrivateIdentifierModelCMa_0();
  Predicate.init(_:)();
  v23 = v0;
  v24 = v84;
  v25 = sub_1001D280C(v2, v4);
  (*(v19 + 8))(v2, v17);
  if (!v24)
  {
    v84 = v23;
    v80 = v13;
    v26 = v82;
    if (v25)
    {
      v27 = *(v4 + 48);
      v28 = *(v27 + 144);
      v29 = *(v4 + 24);
      swift_unknownObjectRetain();
      v30 = v16;
      v78 = v29;
      v79 = v25;
      v75 = v27;
      v76 = v28;
      v77 = v27 + 144;
      v28(v29, v27);
      sub_100032730();
      sub_100032658(v31, v32);
      v33 = v26;
      v34 = v81;
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = v83;
      v37 = *(v83 + 8);
      v37(v30, v34);
      if (v35)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v73 = v37;
        v38 = *(v4 + 68);
        v39 = *(v36 + 16);
        v40 = v80;
        v83 = v36 + 16;
        v74 = v39;
        v39(v80, v33, v34);
        v41 = v79;
        swift_unknownObjectRetain();
        v42 = v34;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = sub_1000328AC();
          v84 = swift_slowAlloc();
          v86 = v41;
          v87 = v84;
          *v45 = 136315394;
          v46 = v75;
          v47 = *(v75 + 8);
          dispatch thunk of CustomStringConvertible.description.getter();
          v72 = v44;
          swift_unknownObjectRelease();
          v48 = sub_1000050CC();
          v51 = sub_100009E5C(v48, v49, v50);

          *(v45 + 4) = v51;
          *(v45 + 12) = 2080;
          sub_100032730();
          sub_100032658(v52, v53);
          v54 = v80;
          v55 = dispatch thunk of CustomStringConvertible.description.getter();
          v56 = v42;
          v58 = v57;
          v59 = v54;
          v60 = v56;
          v73(v59, v56);
          v61 = sub_100009E5C(v55, v58, &v87);

          *(v45 + 14) = v61;
          _os_log_impl(&_mh_execute_header, v43, v72, "Fetched existing identifier record %s does not match requested uuid %s.", v45, 0x16u);
          swift_arrayDestroy();
          sub_1000327B4();
          sub_1000327B4();

          v62 = v60;
        }

        else
        {

          swift_unknownObjectRelease();
          v73(v40, v42);
          v62 = v42;
          v46 = v75;
        }

        v63 = sub_1000050CC();
        sub_100099DF4(v63, v64);
        sub_1000326F8();
        sub_1000326A8(v65, v66, v67);
        swift_allocError();
        v69 = v68;
        v70 = *(sub_100099DF4(&qword_1002E1930, &qword_1002479A0) + 48);
        v76(v78, v46);
        v74(v69 + v70, v33, v62);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        swift_unknownObjectRelease_n();
      }
    }
  }

  sub_100005074();
}

uint64_t sub_1001D6238()
{
  v0 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100003724(v0);
  v2 = *(v1 + 64);
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100003B38();
  _s22PrivateIdentifierModelCMa_0();
  sub_100032864();
  sub_100032718();
  v6 = sub_100032658(v4, v5);
  sub_100032888(v6);
  v7 = sub_1000328F8();
  return v8(v7);
}

void sub_1001D6344()
{
  sub_100004868();
  v33 = v3;
  v5 = v4;
  v7 = v6;
  v32 = v8;
  v10 = v9;
  v12 = v11;
  v13 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v13);
  v15 = *(v14 + 64);
  sub_100003774();
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  v19 = sub_100099DF4(&qword_1002E1880, &qword_100247908);
  sub_100003724(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_100003774();
  __chkstk_darwin(v24);
  sub_1000327EC();
  v42 = v12;
  v43 = v10;
  _s22PrivateIdentifierModelCMa_0();
  Predicate.init(_:)();
  v25 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100032830(v18, v26, v27, v25);
  sub_100032718();
  sub_100032658(v28, v29);
  FetchDescriptor.init(predicate:sortBy:)();
  v44 = static Array._allocateUninitialized(_:)();
  v30 = *v0;
  v34 = *(v7 + 16);
  v35 = *(v7 + 32);
  v36 = v5;
  v37 = *(v7 + 40);
  v38 = *(v7 + 56);
  v39 = &v44;
  v40 = v32;
  v41 = v33;
  dispatch thunk of ModelContext.enumerate<A>(_:batchSize:allowEscapingMutations:block:)();
  (*(v21 + 8))(v2, v19);
  if (v1)
  {
  }

  sub_100005074();
}

uint64_t sub_1001D6584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = sub_100099DF4(&qword_1002E16A8, &qword_100247798);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = sub_100099DF4(&qword_1002E18A0, &qword_100247920);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v24 - v19;
  v21 = *a1;
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v12 + 8))(v15, v11);
  v28 = v24;
  v29 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = sub_100099DF4(&qword_1002E18B0, &qword_100247950);
  a4[4] = sub_1001DBD24();
  sub_100007914(a4);
  sub_1000326A8(&qword_1002E18D0, &qword_1002E18A0, &qword_100247920);
  sub_1000326A8(&qword_1002E16D8, &qword_1002E16A8, &qword_100247798);
  v22 = v26;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v27 + 8))(v10, v22);
  return (*(v17 + 8))(v20, v16);
}

void sub_1001D68F0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = objc_autoreleasePoolPush();
  sub_1001D69BC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, &v20);
  objc_autoreleasePoolPop(v19);
}

uint64_t sub_1001D69BC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v14 = *(*(a8 - 8) + 64);
  v15 = __chkstk_darwin(a1);
  (*(v16 + 392))(v15);
  a3();
  if (v12)
  {
    result = swift_unknownObjectRelease();
    *a12 = v12;
  }

  else
  {
    type metadata accessor for Array();
    Array.append(_:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001D6AC8()
{
  sub_100004868();
  v3 = sub_100099DF4(&qword_1002E1878, &qword_100247900);
  sub_1000030B8(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  sub_100002970();
  v7 = sub_100099DF4(&qword_1002E1880, &qword_100247908);
  v8 = sub_100003724(v7);
  v27 = v9;
  v28 = v8;
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100004880();
  v26 = *v0;
  v13 = dispatch thunk of ModelContext.insertedModelsArray.getter();
  v14 = 0;
  v15 = *(v13 + 16);
LABEL_2:
  v16 = 16 * v14 + 32;
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    ++v14;
    v17 = v16 + 16;
    v18 = *(v13 + v16);
    Class = object_getClass(v18);
    v16 = v17;
    if (Class == _TtCO18PrivateIdentifiers8SchemaV222PrivateIdentifierModel)
    {
      v16 = v17;
      if (v18)
      {
        swift_unknownObjectRetain();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_2;
      }
    }
  }

  v20 = sub_1001FEDE4(_swiftEmptyArrayStorage);
  for (i = 0; v20 != i; ++i)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v22 = _swiftEmptyArrayStorage[i + 4];
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_20;
    }

    sub_1001E6DDC();
  }

  v23 = sub_100099DF4(&qword_1002E1888, &qword_100247910);
  sub_100002728(v1, 1, 1, v23);
  _s22PrivateIdentifierModelCMa_0();
  sub_100032718();
  sub_100032658(v24, v25);
  FetchDescriptor.init(predicate:sortBy:)();
  dispatch thunk of ModelContext.enumerate<A>(_:batchSize:allowEscapingMutations:block:)();
  (*(v27 + 8))(v2, v28);
  sub_100005074();
}

void sub_1001D6DF0()
{
  sub_100004868();
  v46 = v0;
  v47 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_100099DF4(&qword_1002E1668, &qword_100247750);
  sub_1000030B8(v15);
  v17 = *(v16 + 64);
  sub_100003774();
  __chkstk_darwin(v18);
  sub_10003CF80();
  v19 = sub_100099DF4(&qword_1002E1670, &unk_100247758);
  sub_100003724(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_100003774();
  __chkstk_darwin(v24);
  sub_10000AF24();
  v48 = v6;
  v49 = v14;
  v50 = v12;
  v51 = v10;
  v26 = v25;
  v52 = v8;
  v53 = v14;
  v54 = v12;
  _s29PrivateIdentifierHistoryModelCMa();
  sub_100032848();
  v27 = sub_100099DF4(&qword_1002E15E8, &qword_1002476F0);
  sub_1000327CC(v27);
  sub_100032760();
  sub_100032658(v28, v29);
  FetchDescriptor.init(predicate:sortBy:)();
  sub_100099DF4(&qword_1002E17A8, &qword_100247868);
  v30 = *(sub_100099DF4(&qword_1002E17B0, &qword_100247870) - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_10022E400;
  swift_getKeyPath();
  sub_100032658(&qword_1002DB968, &type metadata accessor for Date);
  SortDescriptor.init<A>(_:order:)();
  FetchDescriptor.sortBy.setter();
  v33 = *v46;
  v34 = dispatch thunk of ModelContext.fetch<A>(_:)();
  if (v47)
  {
    (*(v21 + 8))(v2, v26);
  }

  else
  {
    v47 = &v46;
    v55 = v34;
    v35 = *(v4 + 32);
    __chkstk_darwin(v34);
    v41[1] = *(v4 + 16);
    v42 = v35;
    v43 = *(v4 + 40);
    v44 = *(v4 + 56);
    v45 = v35;
    v36 = sub_100099DF4(&qword_1002E17B8, &qword_100247878);
    v46 = v26;
    v37 = v36;
    sub_100032748();
    v39 = sub_1000326A8(v38, &qword_1002E17B8, &qword_100247878);
    sub_10020148C(sub_1000324D4, v41, v37, v35, &type metadata for Never, v39, &protocol witness table for Never, v40);
    (*(v21 + 8))(v2, v46);
  }

  sub_100005074();
}

uint64_t sub_1001D71BC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v129 = a8;
  v128 = a7;
  v119 = a6;
  v118 = a5;
  v117 = a4;
  v116 = a3;
  v141 = a2;
  v135 = a9;
  v10 = sub_100099DF4(&qword_1002E17C0, &qword_100247880);
  v11 = *(v10 - 8);
  v136 = v10;
  v137 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v134 = v91 - v13;
  v14 = sub_100099DF4(&qword_1002E1690, &qword_100247780);
  v15 = *(v14 - 8);
  v132 = v14;
  v133 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v125 = v91 - v17;
  v126 = sub_100099DF4(&qword_1002E1698, &qword_100247788);
  v127 = *(v126 - 8);
  v18 = *(v127 + 64);
  __chkstk_darwin(v126);
  v123 = v91 - v19;
  v20 = sub_100099DF4(&qword_1002E16A0, &qword_100247790);
  v21 = *(v20 - 8);
  v130 = v20;
  v131 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v124 = v91 - v23;
  v109 = sub_100099DF4(&qword_1002E17C8, &qword_100247888);
  v111 = *(v109 - 8);
  v24 = *(v111 + 64);
  __chkstk_darwin(v109);
  v105 = v91 - v25;
  v114 = sub_100099DF4(&qword_1002E17D0, &qword_100247890);
  v115 = *(v114 - 8);
  v26 = *(v115 + 64);
  __chkstk_darwin(v114);
  v104 = v91 - v27;
  v106 = sub_100099DF4(&qword_1002E16B0, &qword_1002477A0);
  v108 = *(v106 - 8);
  v28 = *(v108 + 64);
  __chkstk_darwin(v106);
  v98 = v91 - v29;
  v112 = sub_100099DF4(&qword_1002E17D8, &qword_100247898);
  v113 = *(v112 - 8);
  v30 = *(v113 + 64);
  __chkstk_darwin(v112);
  v102 = v91 - v31;
  v93 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v32 = *(v93 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v93);
  v92 = v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100099DF4(&qword_1002E1610, &qword_100247708);
  v99 = *(v94 - 8);
  v35 = *(v99 + 8);
  __chkstk_darwin(v94);
  v37 = v91 - v36;
  v38 = sub_100099DF4(&qword_1002E1618, &qword_100247710);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = v91 - v41;
  v142 = sub_100099DF4(&qword_1002E1620, &qword_100247718);
  v145 = *(v142 - 8);
  v43 = *(v145 + 64);
  __chkstk_darwin(v142);
  v120 = v91 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = v91 - v46;
  v96 = sub_100099DF4(&qword_1002E1630, &qword_100247748);
  v97 = *(v96 - 8);
  v48 = *(v97 + 64);
  __chkstk_darwin(v96);
  v140 = v91 - v49;
  v107 = sub_100099DF4(&qword_1002E17E0, &qword_1002478A0);
  v110 = *(v107 - 8);
  v50 = *(v110 + 64);
  __chkstk_darwin(v107);
  v143 = v91 - v51;
  v121 = sub_100099DF4(&qword_1002E17E8, &qword_1002478A8);
  v122 = *(v121 - 8);
  v52 = *(v122 + 64);
  __chkstk_darwin(v121);
  v103 = v91 - v53;
  v139 = *a1;
  v91[1] = sub_1000326A8(&qword_1002E1628, &qword_1002E1618, &qword_100247710);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v54 = v47;
  v91[0] = v38;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v144 = *(v39 + 8);
  v146 = v39 + 8;
  v144(v42, v38);
  type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v55 = v92;
  v56 = v93;
  (*(v32 + 104))(v92, enum case for PredicateExpressions.ComparisonOperator.greaterThan(_:), v93);
  v138 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  v100 = sub_1000326A8(&qword_1002E1658, &qword_1002E1620, &qword_100247718);
  v141 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_1000326A8(&qword_1002E1660, &qword_1002E1610, &qword_100247708);
  v101 = &type metadata accessor for Date;
  sub_100032658(&qword_1002DB968, &type metadata accessor for Date);
  v95 = v54;
  v57 = v142;
  v58 = v94;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v32 + 8))(v55, v56);
  (*(v99 + 1))(v37, v58);
  v59 = *(v145 + 8);
  v145 += 8;
  v99 = v59;
  v59(v54, v57);
  v60 = v91[0];
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v61 = v98;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v144(v42, v60);
  v147 = v116;
  v148 = v117;
  v149 = v118;
  v150 = v119;
  v62 = v105;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  sub_1000326A8(&qword_1002E17F0, &qword_1002E17C8, &qword_100247888);
  v63 = v104;
  v64 = v109;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v111 + 8))(v62, v64);
  sub_1000326A8(&qword_1002E16D0, &qword_1002E16B0, &qword_1002477A0);
  sub_1000326A8(&qword_1002E17F8, &qword_1002E17D0, &qword_100247890);
  v65 = v102;
  v66 = v106;
  v67 = v114;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v115 + 8))(v63, v67);
  (*(v108 + 8))(v61, v66);
  sub_1000326A8(&qword_1002E1800, &qword_1002E1630, &qword_100247748);
  v119 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_1000326A8(&qword_1002E1808, &qword_1002E17D8, &qword_100247898);
  v68 = v140;
  v69 = v96;
  v70 = v112;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v113 + 8))(v65, v70);
  (*(v97 + 8))(v68, v69);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v71 = v123;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v144(v42, v60);
  v147 = v128;
  v148 = v129;
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  v72 = v125;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_1000326A8(&qword_1002E16E0, &qword_1002E1698, &qword_100247788);
  sub_1000326A8(&qword_1002E16E8, &qword_1002E1690, &qword_100247780);
  sub_100032454(&qword_1002E16F0);
  v73 = v124;
  v74 = v126;
  v75 = v132;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v133 + 8))(v72, v75);
  (*(v127 + 8))(v71, v74);
  sub_1000326A8(&qword_1002E1810, &qword_1002E17E0, &qword_1002478A0);
  sub_1000326A8(&qword_1002E1700, &qword_1002E16A0, &qword_100247790);
  v76 = v103;
  v77 = v143;
  v78 = v107;
  v79 = v130;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v131 + 8))(v73, v79);
  (*(v110 + 8))(v77, v78);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v80 = v95;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v81 = v144;
  v144(v42, v60);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v82 = v120;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v81(v42, v60);
  sub_100032658(&qword_1002E27C0, v101);
  v83 = v134;
  v84 = v142;
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  v85 = v99;
  v99(v82, v84);
  v85(v80, v84);
  v86 = sub_100099DF4(&qword_1002E1818, &qword_1002478F8);
  v87 = v135;
  v135[3] = v86;
  v87[4] = sub_1001DB8B8();
  sub_100007914(v87);
  sub_1000326A8(&qword_1002E1868, &qword_1002E17E8, &qword_1002478A8);
  sub_1000326A8(&qword_1002E1870, &qword_1002E17C0, &qword_100247880);
  v88 = v121;
  v89 = v136;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v137 + 8))(v83, v89);
  return (*(v122 + 8))(v76, v88);
}

void sub_1001D8454()
{
  sub_100004868();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = sub_100099DF4(&qword_1002E1668, &qword_100247750);
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_10000AF24();
  v13 = sub_100099DF4(&qword_1002E1670, &unk_100247758);
  v14 = sub_100003724(v13);
  v52 = v15;
  v53 = v14;
  v17 = *(v16 + 64);
  sub_100003774();
  __chkstk_darwin(v18);
  sub_1000327EC();
  v54[7] = v8;
  v49 = *(v6 + 56);
  v50 = *(v6 + 32);
  v47 = *(v49 + 16);
  dispatch thunk of Identifiable.id.getter();
  _s29PrivateIdentifierHistoryModelCMa();
  Predicate.init(_:)();

  v19 = sub_100099DF4(&qword_1002E15E8, &qword_1002476F0);
  sub_100032830(v2, v20, v21, v19);
  sub_100032760();
  sub_100032658(v22, v23);
  FetchDescriptor.init(predicate:sortBy:)();
  v51 = v3;
  v48 = *v4;
  v24 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  if (v1)
  {
    v25 = *(v6 + 68);
    swift_unknownObjectRetain();
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = sub_1000328AC();
      v44 = swift_slowAlloc();
      v46 = sub_10003294C();
      v54[0] = v46;
      *v28 = 136315394;
      sub_1000328C4();
      v29 = v50;
      dispatch thunk of Identifiable.id.getter();
      v30 = sub_1000327FC();
      v32 = v31;
      swift_unknownObjectRelease();
      sub_10003CD48(v56, &qword_1002DCC48, &qword_100238200);
      sub_100179704(v55);
      v33 = sub_100009E5C(v30, v32, v54);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2112;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v34;
      *v44 = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to get count of existing persisted record with identifier %s: %@. Proceeding to allow insertion of a new record.", v28, 0x16u);
      sub_10003CD48(v44, &qword_1002E2700, &unk_1002474D0);
      sub_1000327B4();
      sub_100004118(v46);
      sub_1000327B4();
      sub_1000327B4();

      goto LABEL_11;
    }

    swift_unknownObjectRelease();

LABEL_8:
    v29 = v50;
    goto LABEL_11;
  }

  v35 = v24;
  if (!v24)
  {
    goto LABEL_8;
  }

  v36 = *(v6 + 68);
  swift_unknownObjectRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v29 = v50;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = sub_1000328AC();
    v45 = sub_10003294C();
    v54[0] = v45;
    *v39 = 134218242;
    *(v39 + 4) = v35;
    *(v39 + 12) = 2080;
    sub_1000328C4();
    dispatch thunk of Identifiable.id.getter();
    v40 = sub_1000327FC();
    v42 = v41;
    swift_unknownObjectRelease();
    sub_10003CD48(v56, &qword_1002DCC48, &qword_100238200);
    sub_100179704(v55);
    v43 = sub_100009E5C(v40, v42, v54);

    *(v39 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "%ld history item(s) with identifier %s already exist. It/they will be overwritten with the new one.", v39, 0x16u);
    sub_100004118(v45);
    sub_1000327B4();
    sub_100032798();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_11:
  (*(v49 + 104))(v29);
  dispatch thunk of ModelContext.insert<A>(_:)();

  (*(v52 + 8))(v51, v53);
  sub_100005074();
}

uint64_t sub_1001D8960()
{
  v0 = sub_100099DF4(&qword_1002E15E8, &qword_1002476F0);
  sub_100003724(v0);
  v2 = *(v1 + 64);
  sub_100003774();
  __chkstk_darwin(v3);
  sub_100003B38();
  _s29PrivateIdentifierHistoryModelCMa();
  sub_100032864();
  sub_100032760();
  v6 = sub_100032658(v4, v5);
  sub_100032888(v6);
  v7 = sub_1000328F8();
  return v8(v7);
}

uint64_t sub_1001D8A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29[1] = a2;
  v31 = a3;
  v30 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v29[0] = *(v30 - 8);
  v4 = *(v29[0] + 64);
  __chkstk_darwin(v30);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100099DF4(&qword_1002E1610, &qword_100247708);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  v12 = sub_100099DF4(&qword_1002E1618, &qword_100247710);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v29 - v15;
  v17 = sub_100099DF4(&qword_1002E1620, &qword_100247718);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v29 - v20;
  v22 = *a1;
  sub_1000326A8(&qword_1002E1628, &qword_1002E1618, &qword_100247710);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v13 + 8))(v16, v12);
  type metadata accessor for Date();
  static PredicateExpressions.build_Arg<A>(_:)();
  v23 = v29[0];
  v24 = v30;
  (*(v29[0] + 104))(v6, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v30);
  v25 = sub_100099DF4(&qword_1002E1630, &qword_100247748);
  v26 = v31;
  v31[3] = v25;
  v26[4] = sub_1001DAF60();
  sub_100007914(v26);
  sub_1000326A8(&qword_1002E1658, &qword_1002E1620, &qword_100247718);
  sub_1000326A8(&qword_1002E1660, &qword_1002E1610, &qword_100247708);
  sub_100032658(&qword_1002DB968, &type metadata accessor for Date);
  v27 = v32;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v23 + 8))(v6, v24);
  (*(v33 + 8))(v11, v27);
  return (*(v18 + 8))(v21, v17);
}

double sub_1001D8F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1001D2F14();
  if (v6)
  {
    *a6 = v9;
    *(a6 + 16) = v10;
    result = *&v11;
    *(a6 + 32) = v11;
    *(a6 + 48) = v12;
    *(a6 + 64) = v13;
  }

  return result;
}

uint64_t sub_1001D9050@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v71 = a6;
  v72 = a7;
  v62 = a5;
  v64 = a3;
  v65 = a4;
  v63 = a2;
  v59 = a1;
  v79 = a8;
  v8 = sub_100099DF4(&qword_1002E1690, &qword_100247780);
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v70 = &v53 - v11;
  v12 = sub_100099DF4(&qword_1002E1A38, &qword_100247A98);
  v13 = *(v12 - 8);
  v73 = v12;
  v74 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v67 = &v53 - v15;
  v16 = sub_100099DF4(&qword_1002E1A78, &qword_100247AB0);
  v17 = *(v16 - 8);
  v77 = v16;
  v78 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v69 = &v53 - v19;
  v57 = sub_100099DF4(&qword_1002E17C8, &qword_100247888);
  v58 = *(v57 - 8);
  v20 = *(v58 + 64);
  __chkstk_darwin(v57);
  v22 = &v53 - v21;
  v60 = sub_100099DF4(&qword_1002E17D0, &qword_100247890);
  v61 = *(v60 - 8);
  v23 = *(v61 + 64);
  __chkstk_darwin(v60);
  v25 = &v53 - v24;
  v26 = sub_100099DF4(&qword_1002E1898, &qword_100247918);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v53 - v29;
  v55 = sub_100099DF4(&qword_1002E18A0, &qword_100247920);
  v31 = *(v55 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v55);
  v34 = &v53 - v33;
  v66 = sub_100099DF4(&qword_1002E1A80, &qword_100247AB8);
  v68 = *(v66 - 8);
  v35 = *(v68 + 64);
  __chkstk_darwin(v66);
  v56 = &v53 - v36;
  v59 = *v59;
  sub_1000326A8(&qword_1002E18A8, &qword_1002E1898, &qword_100247918);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v37 = *(v27 + 8);
  v53 = v27 + 8;
  v54 = v37;
  v37(v30, v26);
  v80 = v63;
  v81 = v64;
  v82 = v65;
  v83 = v62;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v65 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_1000326A8(&qword_1002E17F0, &qword_1002E17C8, &qword_100247888);
  v38 = v57;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v58 + 8))(v22, v38);
  sub_1000326A8(&qword_1002E18D0, &qword_1002E18A0, &qword_100247920);
  sub_1000326A8(&qword_1002E17F8, &qword_1002E17D0, &qword_100247890);
  v39 = v55;
  v40 = v60;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v61 + 8))(v25, v40);
  (*(v31 + 8))(v34, v39);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v41 = v67;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v54(v30, v26);
  v80 = v71;
  v81 = v72;
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  v42 = v70;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_1000326A8(&qword_1002E1A60, &qword_1002E1A38, &qword_100247A98);
  sub_1000326A8(&qword_1002E16E8, &qword_1002E1690, &qword_100247780);
  sub_100032454(&qword_1002E16F0);
  v43 = v69;
  v44 = v73;
  v45 = v75;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v76 + 8))(v42, v45);
  (*(v74 + 8))(v41, v44);
  v46 = sub_100099DF4(&qword_1002E1A88, &unk_100247AC0);
  v47 = v79;
  v79[3] = v46;
  v47[4] = sub_1001DC6A4();
  sub_100007914(v47);
  sub_1000326A8(&qword_1002E1AA8, &qword_1002E1A80, &qword_100247AB8);
  sub_1000326A8(&qword_1002E1AB0, &qword_1002E1A78, &qword_100247AB0);
  v48 = v56;
  v49 = v43;
  v50 = v66;
  v51 = v77;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v78 + 8))(v49, v51);
  return (*(v68 + 8))(v48, v50);
}

uint64_t sub_1001D9970@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v103 = a6;
  v104 = a7;
  v97 = a5;
  v96 = a4;
  v106 = a2;
  v107 = a3;
  v105 = a8;
  v114 = sub_100099DF4(&qword_1002E1678, &qword_100247768);
  v118 = *(v114 - 8);
  v9 = *(v118 + 64);
  __chkstk_darwin(v114);
  v112 = v77 - v10;
  v102 = sub_100099DF4(&qword_1002E1680, &qword_100247770);
  v116 = *(v102 - 8);
  v11 = *(v116 + 64);
  __chkstk_darwin(v102);
  v100 = v77 - v12;
  v113 = sub_100099DF4(&qword_1002E1688, &qword_100247778);
  v117 = *(v113 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v113);
  v101 = v77 - v14;
  v93 = sub_100099DF4(&qword_1002E1690, &qword_100247780);
  v95 = *(v93 - 8);
  v15 = *(v95 + 8);
  __chkstk_darwin(v93);
  v87 = v77 - v16;
  v88 = sub_100099DF4(&qword_1002E1698, &qword_100247788);
  v89 = *(v88 - 8);
  v17 = *(v89 + 64);
  __chkstk_darwin(v88);
  v84 = v77 - v18;
  v91 = sub_100099DF4(&qword_1002E16A0, &qword_100247790);
  v92 = *(v91 - 8);
  v19 = *(v92 + 64);
  __chkstk_darwin(v91);
  v86 = v77 - v20;
  v81 = sub_100099DF4(&qword_1002E16A8, &qword_100247798);
  v82 = *(v81 - 8);
  v21 = *(v82 + 64);
  __chkstk_darwin(v81);
  v23 = v77 - v22;
  v24 = sub_100099DF4(&qword_1002E1618, &qword_100247710);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v77 - v27;
  v79 = sub_100099DF4(&qword_1002E16B0, &qword_1002477A0);
  v80 = *(v79 - 8);
  v29 = *(v80 + 64);
  __chkstk_darwin(v79);
  v31 = v77 - v30;
  v83 = sub_100099DF4(&qword_1002E16B8, &qword_1002477A8);
  v85 = *(v83 - 8);
  v32 = *(v85 + 64);
  __chkstk_darwin(v83);
  v78 = v77 - v33;
  v90 = sub_100099DF4(&qword_1002E16C0, &qword_1002477B0);
  v94 = *(v90 - 8);
  v34 = *(v94 + 64);
  __chkstk_darwin(v90);
  v110 = v77 - v35;
  v98 = sub_100099DF4(&qword_1002E16C8, &qword_1002477B8);
  v99 = *(v98 - 8);
  v36 = *(v99 + 64);
  __chkstk_darwin(v98);
  v111 = v77 - v37;
  v115 = *a1;
  v38 = v24;
  v39 = sub_1000326A8(&qword_1002E1628, &qword_1002E1618, &qword_100247710);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v40 = *(v25 + 8);
  v40(v28, v38);
  v108 = v40;
  v109 = v25 + 8;
  v119 = v106;
  v120 = v107;
  static PredicateExpressions.build_Arg<A>(_:)();
  v106 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_1000326A8(&qword_1002E16D0, &qword_1002E16B0, &qword_1002477A0);
  v107 = &protocol conformance descriptor for PredicateExpressions.Value<A>;
  sub_1000326A8(&qword_1002E16D8, &qword_1002E16A8, &qword_100247798);
  v41 = v31;
  v42 = v79;
  v43 = v81;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v82 + 8))(v23, v43);
  (*(v80 + 8))(v41, v42);
  v44 = v38;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v45 = v84;
  v46 = v39;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v40(v28, v44);
  v119 = v96;
  v120 = v97;
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  v47 = v87;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_1000326A8(&qword_1002E16E0, &qword_1002E1698, &qword_100247788);
  sub_1000326A8(&qword_1002E16E8, &qword_1002E1690, &qword_100247780);
  sub_100032454(&qword_1002E16F0);
  v48 = v86;
  v49 = v45;
  v50 = v47;
  v51 = v88;
  v52 = v93;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v95 + 1))(v50, v52);
  (*(v89 + 8))(v49, v51);
  sub_1000326A8(&qword_1002E16F8, &qword_1002E16B8, &qword_1002477A8);
  sub_1000326A8(&qword_1002E1700, &qword_1002E16A0, &qword_100247790);
  v53 = v78;
  v54 = v83;
  v55 = v91;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v92 + 8))(v48, v55);
  (*(v85 + 8))(v53, v54);
  v77[1] = v46;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v56 = v100;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v108(v28, v44);
  v119 = v103;
  v57 = v112;
  static PredicateExpressions.build_Arg<A>(_:)();
  v103 = sub_1000326A8(&qword_1002E1708, &qword_1002E1680, &qword_100247770);
  v97 = sub_1000326A8(&qword_1002E1710, &qword_1002E1678, &qword_100247768);
  v59 = v101;
  v58 = v102;
  v60 = v114;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v61 = *(v118 + 8);
  v118 += 8;
  v96 = v61;
  v61(v57, v60);
  v62 = *(v116 + 8);
  v116 += 8;
  v95 = v62;
  v62(v56, v58);
  v107 = &protocol conformance descriptor for PredicateExpressions.Conjunction<A, B>;
  sub_1000326A8(&qword_1002E1718, &qword_1002E16C0, &qword_1002477B0);
  v106 = sub_1000326A8(&qword_1002E1720, &qword_1002E1688, &qword_100247778);
  v63 = v110;
  v64 = v59;
  v65 = v90;
  v66 = v113;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v67 = *(v117 + 8);
  v117 += 8;
  v67(v64, v66);
  (*(v94 + 8))(v63, v65);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v68 = v56;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v108(v28, v44);
  v119 = v104;
  v69 = v112;
  static PredicateExpressions.build_Arg<A>(_:)();
  v70 = v114;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v96(v69, v70);
  v95(v68, v58);
  v71 = sub_100099DF4(&qword_1002E1728, &qword_100247860);
  v72 = v105;
  v105[3] = v71;
  v72[4] = sub_1001DB184();
  sub_100007914(v72);
  sub_1000326A8(&qword_1002E17A0, &qword_1002E16C8, &qword_1002477B8);
  v73 = v111;
  v74 = v98;
  v75 = v113;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v67(v64, v75);
  return (*(v99 + 8))(v73, v74);
}

uint64_t sub_1001DA830@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002E1AE0, &qword_100247AF0);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_100099DF4(&qword_1002E1AE8, &qword_100247AF8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = sub_100099DF4(&qword_1002E1AF0, &qword_100247B00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v22 - v17;
  v19 = *a1;
  sub_1000326A8(&qword_1002E1AF8, &qword_1002E1AE8, &qword_100247AF8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v13, v9);
  v25 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_100099DF4(&qword_1002E1B00, &qword_100247B30);
  a2[4] = sub_1001DC848();
  sub_100007914(a2);
  sub_1000326A8(&qword_1002E1B28, &qword_1002E1AF0, &qword_100247B00);
  sub_1000326A8(&qword_1002E1B30, &qword_1002E1AE0, &qword_100247AF0);
  v20 = v23;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v24 + 8))(v8, v20);
  return (*(v15 + 8))(v18, v14);
}

unint64_t sub_1001DABAC()
{
  result = qword_1002E1430;
  if (!qword_1002E1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1430);
  }

  return result;
}

unint64_t sub_1001DAC00()
{
  result = qword_1002E1438;
  if (!qword_1002E1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1438);
  }

  return result;
}

uint64_t sub_1001DAC5C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1001DACF8(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 68);
  v6 = type metadata accessor for Logger();
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

char *sub_1001DAD6C(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 68);
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *sub_1001DADE4(char *a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 68);
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  return a1;
}

uint64_t sub_1001DAE90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001DAECC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001DAF0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001DAF60()
{
  result = qword_1002E1638;
  if (!qword_1002E1638)
  {
    sub_10009A468(&qword_1002E1630, &qword_100247748);
    sub_1001DAFEC();
    sub_1001DB09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1638);
  }

  return result;
}

unint64_t sub_1001DAFEC()
{
  result = qword_1002E1640;
  if (!qword_1002E1640)
  {
    sub_10009A468(&qword_1002E1620, &qword_100247718);
    sub_1000326A8(&qword_1002E1648, &qword_1002E1618, &qword_100247710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1640);
  }

  return result;
}

unint64_t sub_1001DB09C()
{
  result = qword_1002E1650;
  if (!qword_1002E1650)
  {
    sub_10009A468(&qword_1002E1610, &qword_100247708);
    sub_100032658(&qword_1002DACC8, &type metadata accessor for Date);
    sub_100032658(&qword_1002DACE8, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1650);
  }

  return result;
}

unint64_t sub_1001DB184()
{
  result = qword_1002E1730;
  if (!qword_1002E1730)
  {
    sub_10009A468(&qword_1002E1728, &qword_100247860);
    sub_1001DB210();
    sub_1001DB6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1730);
  }

  return result;
}

unint64_t sub_1001DB210()
{
  result = qword_1002E1738;
  if (!qword_1002E1738)
  {
    sub_10009A468(&qword_1002E16C8, &qword_1002477B8);
    sub_1001DB29C();
    sub_1001DB6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1738);
  }

  return result;
}

unint64_t sub_1001DB29C()
{
  result = qword_1002E1740;
  if (!qword_1002E1740)
  {
    sub_10009A468(&qword_1002E16C0, &qword_1002477B0);
    sub_1001DB328();
    sub_1001DB4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1740);
  }

  return result;
}

unint64_t sub_1001DB328()
{
  result = qword_1002E1748;
  if (!qword_1002E1748)
  {
    sub_10009A468(&qword_1002E16B8, &qword_1002477A8);
    sub_1001DB3B4();
    sub_1001DB464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1748);
  }

  return result;
}

unint64_t sub_1001DB3B4()
{
  result = qword_1002E1750;
  if (!qword_1002E1750)
  {
    sub_10009A468(&qword_1002E16B0, &qword_1002477A0);
    sub_1000326A8(&qword_1002E1648, &qword_1002E1618, &qword_100247710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1750);
  }

  return result;
}

unint64_t sub_1001DB464()
{
  result = qword_1002E1758;
  if (!qword_1002E1758)
  {
    sub_10009A468(&qword_1002E16A8, &qword_100247798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1758);
  }

  return result;
}

unint64_t sub_1001DB4E8()
{
  result = qword_1002E1760;
  if (!qword_1002E1760)
  {
    sub_10009A468(&qword_1002E16A0, &qword_100247790);
    sub_1001DB574();
    sub_1001DB624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1760);
  }

  return result;
}

unint64_t sub_1001DB574()
{
  result = qword_1002E1768;
  if (!qword_1002E1768)
  {
    sub_10009A468(&qword_1002E1698, &qword_100247788);
    sub_1000326A8(&qword_1002E1648, &qword_1002E1618, &qword_100247710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1768);
  }

  return result;
}

unint64_t sub_1001DB624()
{
  result = qword_1002E1770;
  if (!qword_1002E1770)
  {
    sub_10009A468(&qword_1002E1690, &qword_100247780);
    sub_100032454(&qword_1002E1778);
    sub_100032454(&qword_1002E1780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1770);
  }

  return result;
}

unint64_t sub_1001DB6F8()
{
  result = qword_1002E1788;
  if (!qword_1002E1788)
  {
    sub_10009A468(&qword_1002E1688, &qword_100247778);
    sub_1001DB784();
    sub_1001DB834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1788);
  }

  return result;
}

unint64_t sub_1001DB784()
{
  result = qword_1002E1790;
  if (!qword_1002E1790)
  {
    sub_10009A468(&qword_1002E1680, &qword_100247770);
    sub_1000326A8(&qword_1002E1648, &qword_1002E1618, &qword_100247710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1790);
  }

  return result;
}

unint64_t sub_1001DB834()
{
  result = qword_1002E1798;
  if (!qword_1002E1798)
  {
    sub_10009A468(&qword_1002E1678, &qword_100247768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1798);
  }

  return result;
}

unint64_t sub_1001DB8B8()
{
  result = qword_1002E1820;
  if (!qword_1002E1820)
  {
    sub_10009A468(&qword_1002E1818, &qword_1002478F8);
    sub_1001DB944();
    sub_1001DBCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1820);
  }

  return result;
}

unint64_t sub_1001DB944()
{
  result = qword_1002E1828;
  if (!qword_1002E1828)
  {
    sub_10009A468(&qword_1002E17E8, &qword_1002478A8);
    sub_1001DB9D0();
    sub_1001DB4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1828);
  }

  return result;
}

unint64_t sub_1001DB9D0()
{
  result = qword_1002E1830;
  if (!qword_1002E1830)
  {
    sub_10009A468(&qword_1002E17E0, &qword_1002478A0);
    sub_1001DAF60();
    sub_1001DBA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1830);
  }

  return result;
}

unint64_t sub_1001DBA5C()
{
  result = qword_1002E1838;
  if (!qword_1002E1838)
  {
    sub_10009A468(&qword_1002E17D8, &qword_100247898);
    sub_1001DB3B4();
    sub_1001DBAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1838);
  }

  return result;
}

unint64_t sub_1001DBAE8()
{
  result = qword_1002E1840;
  if (!qword_1002E1840)
  {
    sub_10009A468(&qword_1002E17D0, &qword_100247890);
    sub_1001DBB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1840);
  }

  return result;
}

unint64_t sub_1001DBB6C()
{
  result = qword_1002E1848;
  if (!qword_1002E1848)
  {
    sub_10009A468(&qword_1002E17C8, &qword_100247888);
    sub_1001DBBF8();
    sub_1001DBC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1848);
  }

  return result;
}

unint64_t sub_1001DBBF8()
{
  result = qword_1002E1850;
  if (!qword_1002E1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1850);
  }

  return result;
}

unint64_t sub_1001DBC4C()
{
  result = qword_1002E1858;
  if (!qword_1002E1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1858);
  }

  return result;
}

unint64_t sub_1001DBCA0()
{
  result = qword_1002E1860;
  if (!qword_1002E1860)
  {
    sub_10009A468(&qword_1002E17C0, &qword_100247880);
    sub_1001DAFEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1860);
  }

  return result;
}

unint64_t sub_1001DBD24()
{
  result = qword_1002E18B8;
  if (!qword_1002E18B8)
  {
    sub_10009A468(&qword_1002E18B0, &qword_100247950);
    sub_1001DBDB0();
    sub_1001DB464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E18B8);
  }

  return result;
}

unint64_t sub_1001DBDB0()
{
  result = qword_1002E18C0;
  if (!qword_1002E18C0)
  {
    sub_10009A468(&qword_1002E18A0, &qword_100247920);
    sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E18C0);
  }

  return result;
}

unint64_t sub_1001DBE60()
{
  result = qword_1002E18F0;
  if (!qword_1002E18F0)
  {
    sub_10009A468(&qword_1002E18E8, &qword_100247990);
    sub_1001DBEEC();
    sub_1001DBF9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E18F0);
  }

  return result;
}

unint64_t sub_1001DBEEC()
{
  result = qword_1002E18F8;
  if (!qword_1002E18F8)
  {
    sub_10009A468(&qword_1002E18E0, &qword_100247960);
    sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E18F8);
  }

  return result;
}

unint64_t sub_1001DBF9C()
{
  result = qword_1002E1900;
  if (!qword_1002E1900)
  {
    sub_10009A468(&qword_1002E18D8, &qword_100247958);
    sub_100032658(&qword_1002E0BA0, &type metadata accessor for UUID);
    sub_100032658(&qword_1002E0B88, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1900);
  }

  return result;
}

uint64_t sub_1001DC084(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001DC0F4()
{
  result = qword_1002E19B0;
  if (!qword_1002E19B0)
  {
    sub_10009A468(&qword_1002E19A8, &qword_100247A70);
    sub_1001DC180();
    sub_1001DC400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E19B0);
  }

  return result;
}

unint64_t sub_1001DC180()
{
  result = qword_1002E19B8;
  if (!qword_1002E19B8)
  {
    sub_10009A468(&qword_1002E1980, &qword_100247A10);
    sub_1001DC20C();
    sub_1001DC2BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E19B8);
  }

  return result;
}

unint64_t sub_1001DC20C()
{
  result = qword_1002E19C0;
  if (!qword_1002E19C0)
  {
    sub_10009A468(&qword_1002E1978, &qword_100247A08);
    sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E19C0);
  }

  return result;
}

unint64_t sub_1001DC2BC()
{
  result = qword_1002E19C8;
  if (!qword_1002E19C8)
  {
    sub_10009A468(&qword_1002E1988, &qword_100247A40);
    sub_1001DC348();
    sub_1001DC400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E19C8);
  }

  return result;
}

unint64_t sub_1001DC348()
{
  result = qword_1002E19D0;
  if (!qword_1002E19D0)
  {
    sub_10009A468(&qword_1002E19D8, &qword_100247A78);
    sub_1000326A8(&qword_1002E19E0, &qword_1002E19E8, &qword_100247A80);
    sub_1001DB09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E19D0);
  }

  return result;
}

unint64_t sub_1001DC400()
{
  result = qword_1002E19F0;
  if (!qword_1002E19F0)
  {
    sub_10009A468(&qword_1002E1970, &qword_100247A00);
    sub_1001DC48C();
    sub_1001DB09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E19F0);
  }

  return result;
}

unint64_t sub_1001DC48C()
{
  result = qword_1002E19F8;
  if (!qword_1002E19F8)
  {
    sub_10009A468(&qword_1002E1968, &qword_1002479F8);
    sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E19F8);
  }

  return result;
}

unint64_t sub_1001DC53C()
{
  result = qword_1002E1A48;
  if (!qword_1002E1A48)
  {
    sub_10009A468(&qword_1002E1A40, &qword_100247AA0);
    sub_1001DC5F4();
    sub_1000326A8(&qword_1002E1A58, &qword_1002E1A30, &qword_100247A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1A48);
  }

  return result;
}

unint64_t sub_1001DC5F4()
{
  result = qword_1002E1A50;
  if (!qword_1002E1A50)
  {
    sub_10009A468(&qword_1002E1A38, &qword_100247A98);
    sub_1000326A8(&qword_1002E18C8, &qword_1002E1898, &qword_100247918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1A50);
  }

  return result;
}

unint64_t sub_1001DC6A4()
{
  result = qword_1002E1A90;
  if (!qword_1002E1A90)
  {
    sub_10009A468(&qword_1002E1A88, &unk_100247AC0);
    sub_1001DC730();
    sub_1001DC7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1A90);
  }

  return result;
}

unint64_t sub_1001DC730()
{
  result = qword_1002E1A98;
  if (!qword_1002E1A98)
  {
    sub_10009A468(&qword_1002E1A80, &qword_100247AB8);
    sub_1001DBDB0();
    sub_1001DBAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1A98);
  }

  return result;
}

unint64_t sub_1001DC7BC()
{
  result = qword_1002E1AA0;
  if (!qword_1002E1AA0)
  {
    sub_10009A468(&qword_1002E1A78, &qword_100247AB0);
    sub_1001DC5F4();
    sub_1001DB624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1AA0);
  }

  return result;
}

unint64_t sub_1001DC848()
{
  result = qword_1002E1B08;
  if (!qword_1002E1B08)
  {
    sub_10009A468(&qword_1002E1B00, &qword_100247B30);
    sub_1001DC8D4();
    sub_1001DC984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1B08);
  }

  return result;
}

unint64_t sub_1001DC8D4()
{
  result = qword_1002E1B10;
  if (!qword_1002E1B10)
  {
    sub_10009A468(&qword_1002E1AF0, &qword_100247B00);
    sub_1000326A8(&qword_1002E1B18, &qword_1002E1AE8, &qword_100247AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1B10);
  }

  return result;
}

unint64_t sub_1001DC984()
{
  result = qword_1002E1B20;
  if (!qword_1002E1B20)
  {
    sub_10009A468(&qword_1002E1AE0, &qword_100247AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1B20);
  }

  return result;
}

unint64_t sub_1001DCA0C()
{
  result = qword_1002E1B38;
  if (!qword_1002E1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1B38);
  }

  return result;
}

uint64_t sub_1001DCA60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v11 = v10;
  v43 = a8;
  v44 = a2;
  v39 = a6;
  v40 = a7;
  v46 = a4;
  v47 = a5;
  v45 = a3;
  v41 = a9;
  v42 = a10;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v35 - v21;
  v23 = *a1;
  v37 = a1[1];
  v38 = v23;
  v24 = a1[2];
  v35 = a1[3];
  v36 = v24;
  v25 = a1[4];
  v26 = a1[5];
  v27 = v15[2];
  v27(&v35 - v21, a6, v14, v20);
  v28 = v40;
  (v27)(v18, v40, v14);
  v29 = *(v11 + 48);
  v30 = *(v11 + 52);
  swift_allocObject();
  sub_1001E50CC(v36, v35, v38, v37, v44, v45, v46, v47, v25, v26, v22, v18);
  v32 = v31;
  v33 = v15[1];
  v33(v28, v14);
  v33(v39, v14);
  return v32;
}

uint64_t sub_1001DCC3C@<X0>(void *a1@<X8>)
{
  sub_1001E46D8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1001E44DC(v2);
  v8 = v7;
  v9 = sub_1001E4880();
  result = sub_1001E48E4();
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = result;
  return result;
}

double sub_1001DCCC8@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  sub_1001DCC3C(v6);
  v4 = v6[1];
  *a1 = v6[0];
  a1[1] = v4;
  result = *&v7;
  a1[2] = v7;
  return result;
}

uint64_t sub_1001DCD0C(uint64_t a1)
{
  *(a1 + 8) = sub_100032964(&qword_1002E1B40);
  result = sub_100032964(&qword_1002E1B48);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001DCD78()
{
  result = qword_1002E1B50;
  if (!qword_1002E1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1B50);
  }

  return result;
}

uint64_t sub_1001DCDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v25, a5, v20, v23);
  sub_100002728(v19, 1, 1, v20);
  sub_100002728(v16, 1, 1, v20);
  memset(v36, 0, sizeof(v36));
  v37 = 1;
  UUID.init()();
  v26 = *(v6 + 48);
  v27 = *(v6 + 52);
  swift_allocObject();
  LOBYTE(v31) = 1;
  sub_1001E8784(a1, v33, v34, v35, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 1u, 0, 0, 0, v12, v25, v19, v16, v36, 0, v31, 0, 1u, 0, 0xF000000000000000);
  v29 = v28;
  (*(v21 + 8))(a5, v20);
  return v29;
}

uint64_t sub_1001DD040()
{
  sub_1001E6944();
  v1 = v0;
  sub_1001E6AA0(v0);
  return v1;
}

uint64_t sub_1001DD084()
{
  v0 = sub_1001E6DFC();
  sub_1001E6E08();
  return v0;
}

uint64_t sub_1001DD0B4()
{
  sub_1001E6E14();

  return sub_1001E6E34();
}

uint64_t (*sub_1001DD0F4(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  v3 = sub_1001E6DFC();
  v4 = sub_1001E6E08();
  *a1 = v3;
  a1[1] = v4;
  return sub_1000329A8;
}

uint64_t sub_1001DD150@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1001DD040();
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

uint64_t sub_1001DD180(uint64_t a1)
{
  *(a1 + 8) = sub_1000329DC(&qword_1002E1B58);
  result = sub_1000329DC(&qword_1002E1B60);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001DD1E8(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 56))();
  if (!v2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1001D0980(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    return (*(a2 + 128))(a1, a2);
  }

  return result;
}

uint64_t sub_1001DD2CC(uint64_t a1)
{
  result = sub_100033470(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1000330A0(result, 1, sub_1001DE9FC);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001DD394(uint64_t a1)
{
  result = sub_100033470(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000330A0(result, 1, sub_1001DEC90);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for Schema.PropertyMetadata();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001DD56C()
{
  swift_getKeyPath();
  sub_100033350();
  sub_1000332EC(v0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001DD628()
{
  swift_getKeyPath();
  sub_1000332EC(&unk_1002E1C78);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001DD7CC()
{
  swift_getKeyPath();
  sub_1000332EC(&unk_1002E1C78);
  sub_100033264();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001DD9A8()
{
  swift_getKeyPath();
  sub_1000332EC(&unk_1002E1C78);
  sub_1000331C0();
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1001DDA88()
{
  sub_1000334E8();
  swift_getKeyPath();
  sub_100033398();
  sub_1000332EC(v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100033368();
  sub_1000332EC(v1);
  sub_100033138(&unk_1002E1CB0);
  PersistentModel.getValue<A>(forKey:)();

  sub_1000334FC();
}

uint64_t sub_1001DDB98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1001D035C(*a1, v3);
  return sub_1001DDBDC(v2, v3);
}

uint64_t sub_1001DDBDC(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_100033350();
  sub_1000332EC(v4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10009A7A0(a1, a2);
}

uint64_t sub_1001DDCB0()
{
  swift_getKeyPath();
  sub_1000332EC(&unk_1002E1C78);
  sub_100033138(&unk_1002E1CA0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001DDDE0(__int128 *a1)
{
  sub_1000334B8();
  sub_100004118((v1 + 24));
  sub_10000601C(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_1001DDE30()
{
  v23 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v23 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v5 = *(v0 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002329E0;
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v8 = sub_100033404();
  v24 = v8;
  v25 = v8;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v9 = sub_100033404();
  v24 = v9;
  v25 = v9;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v10 = sub_100033404();
  v24 = v10;
  v25 = v10;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  sub_100099DF4(&qword_1002E1C88, &qword_100247FC8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10022E400;
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100247D00;
  *(v12 + 32) = swift_getKeyPath();
  *(v11 + 32) = v12;
  v13 = sub_100099DF4(&qword_1002E1C90, &qword_100247FD8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = Schema.Unique.init(_:)();
  *(&v25 + 1) = v13;
  v26 = sub_1001DE998();
  *&v24 = v16;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v18 = v17;
  v19 = *(v17 + 16);
  if (v19 >= *(v17 + 24) >> 1)
  {
    sub_1001DEC90();
    v18 = v21;
  }

  *(v18 + 16) = v19 + 1;
  (*(v1 + 32))(v18 + v6 + v19 * v5, v4, v23);
  *&v24 = v7;
  sub_1001DD394(v18);
  return v24;
}

uint64_t sub_1001DE1E0(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1001DE220(a1);
  return v5;
}

void *sub_1001DE220(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100099DF4(&qword_1002E1D38, &qword_100248048);
  sub_100033350();
  sub_1000332EC(v5);
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 8) = 257;
  *(v2 + 18) = 1;
  ObservationRegistrar.init()();
  *(v2 + 8) = 0;
  *(v2 + 18) = 0;
  sub_1000334B8();
  sub_100004118(v2 + 3);
  sub_10000601C(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001DE364()
{
  sub_100004118(v0 + 3);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV120GlobalSyncStateModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000307C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t _s20GlobalSyncStateModelCMa()
{
  result = qword_1002E1B98;
  if (!qword_1002E1B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DE454()
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

Swift::Int sub_1001DE520()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100033350();
  sub_1000332EC(v2);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001DE5C8(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 24, v3);
  return sub_100032BB4;
}

uint64_t sub_1001DE680()
{
  v1 = *v0;
  sub_1000332EC(&unk_1002E1C78);
  return PersistentModel.hash(into:)();
}

uint64_t sub_1001DE6F4()
{
  v1 = *v0;
  sub_1000332EC(&unk_1002E1C78);
  return PersistentModel.id.getter();
}

uint64_t sub_1001DE768(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1000332EC(&unk_1002E1C78);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001DE998()
{
  result = qword_1002E1C98;
  if (!qword_1002E1C98)
  {
    sub_10009A468(&qword_1002E1C90, &qword_100247FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1C98);
  }

  return result;
}

void sub_1001DE9FC(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_100006D74();
    if (v9 != v10)
    {
      sub_100007310();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v8 = a2;
  }

  sub_1000066AC(v8);
  if (v5)
  {
    sub_100099DF4(&qword_1002E11F0, &qword_100248000);
    v11 = sub_10000EE6C();
    v12 = j__malloc_size(v11);
    sub_1000333D0(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[96 * v4] <= v13)
    {
      memmove(v13, v14, 96 * v4);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1001DEAE0()
{
  sub_1000333F4();
  if (v4)
  {
    sub_1000333E4();
    if (v6 != v7)
    {
      sub_1000334AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100033418();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000334D0(v2, v5, &qword_1002E1CE8, &qword_100247FF0);
  v9 = sub_100033464();
  v10 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(v9);
  sub_1000071F8(v10);
  v12 = *(v11 + 80);
  sub_10000AE20();
  if (v1)
  {
    sub_100033428(type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000333B0();
  }
}

void sub_1001DEBB8()
{
  sub_1000333F4();
  if (v4)
  {
    sub_1000333E4();
    if (v6 != v7)
    {
      sub_1000334AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100033418();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000334D0(v2, v5, &qword_1002E1CF0, &qword_100247FF8);
  v9 = sub_100033464();
  v10 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(v9);
  sub_1000071F8(v10);
  v12 = *(v11 + 80);
  sub_10000AE20();
  if (v1)
  {
    sub_100033428(type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000333B0();
  }
}

void sub_1001DEC90()
{
  sub_1000333F4();
  if (v4)
  {
    sub_1000333E4();
    if (v6 != v7)
    {
      sub_1000334AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100033418();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000334D0(v2, v5, &qword_1002E1C80, &qword_100247EF0);
  sub_100033464();
  v9 = type metadata accessor for Schema.PropertyMetadata();
  sub_1000071F8(v9);
  v11 = *(v10 + 80);
  sub_10000AE20();
  if (v1)
  {
    sub_100033428(&type metadata accessor for Schema.PropertyMetadata, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000333B0();
  }
}

void sub_1001DED68()
{
  sub_1000333F4();
  if (v4)
  {
    sub_1000333E4();
    if (v6 != v7)
    {
      sub_1000334AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_100033418();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000334D0(v2, v5, &qword_1002E1238, &qword_100247460);
  sub_100033464();
  v9 = type metadata accessor for UUID();
  sub_1000071F8(v9);
  v11 = *(v10 + 80);
  sub_10000AE20();
  if (v1)
  {
    sub_100033428(&type metadata accessor for UUID, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000333B0();
  }
}

void sub_1001DEE88(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_100006D74();
    if (v9 != v10)
    {
      sub_100007310();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v8 = a2;
  }

  sub_1000066AC(v8);
  if (v5)
  {
    sub_100099DF4(&qword_1002E1D28, &qword_100248038);
    v11 = sub_10000EE6C();
    v12 = j__malloc_size(v11);
    sub_1000333D0(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[5 * v4 + 4] <= v11 + 4)
    {
      v14 = sub_10000B80C();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100099DF4(&qword_1002E1D30, &qword_100248040);
    sub_10000B80C();
    swift_arrayInitWithCopy();
  }
}

void sub_1001DEF84(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    sub_100006D74();
    if (v9 != v10)
    {
      sub_100007310();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v8 = a2;
  }

  sub_1000066AC(v8);
  if (v5)
  {
    sub_100099DF4(&qword_1002E1D18, &qword_100248028);
    v11 = sub_10000EE6C();
    v12 = j__malloc_size(v11);
    sub_1000333D0(v12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v11 != a4 || &a4[3 * v4 + 4] <= v11 + 4)
    {
      v14 = sub_10000B80C();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100099DF4(&qword_1002E1D20, &qword_100248030);
    sub_10000B80C();
    swift_arrayInitWithCopy();
  }
}

char *sub_1001DF080(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

uint64_t sub_1001DF0A8()
{
  sub_10000B42C();
  if (v3 && (v4 = sub_100099DF4(&qword_1002E1230, &qword_1002479B0), result = sub_10000307C(v4), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      sub_100006A90();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
    sub_100006A90();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_1001DF180(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_100004BC4(a3, result);
  }

  return result;
}

char *sub_1001DF1A0(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void *sub_1001DF1F8(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1001DF22C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1001DF24C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DF22C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001DF33C(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E1FA8, &qword_1002489C8);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v13[-v9];
  v11 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001E2474();
  sub_100030418();
  v13[15] = 0;
  sub_1000303A8();
  if (!v1)
  {
    v13[14] = 1;
    sub_1000303A8();
    v13[13] = 2;
    sub_1000303A8();
  }

  return (*(v5 + 8))(v10, v3);
}

double sub_1001DF49C(uint64_t *a1)
{
  v2 = sub_100099DF4(&qword_1002E1FB8, &qword_1002489D0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100004880();
  v6 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001E2474();
  sub_1000303E0();
  sub_1000303C4();
  v8 = v7;
  sub_1000303C4();
  sub_1000303C4();
  v10 = sub_10000BD0C();
  v11(v10);
  sub_100004118(a1);
  return v8;
}

uint64_t sub_1001DF618(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_100099DF4(&qword_1002E1F58, &qword_1002487F0);
  sub_100003724(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_100003774();
  __chkstk_darwin(v15);
  v17 = &v20 - v16;
  v18 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001E20DC();
  sub_100030418();
  LOBYTE(v21) = 0;
  sub_1000303A8();
  if (!v5)
  {
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = 1;
    sub_1001E2130();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v17, v10);
}

double sub_1001DF784(uint64_t *a1)
{
  v2 = sub_100099DF4(&qword_1002E1F70, &qword_1002487F8);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100004880();
  v6 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001E20DC();
  sub_1000303E0();
  sub_1000303C4();
  v8 = v7;
  sub_1001E2184();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = sub_10000BD0C();
  v10(v9);
  sub_100004118(a1);
  return v8;
}

void sub_1001DF918(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1001DF328();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_1001DFA00(uint64_t a1)
{
  v2 = sub_1001E2474();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DFA3C(uint64_t a1)
{
  v2 = sub_1001E2474();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001DFA78(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001DF49C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1001DFAA8(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_1001DF33C(a1);
}

uint64_t sub_1001DFAC8(uint64_t a1)
{
  v2 = sub_1001E20DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DFB04(uint64_t a1)
{
  v2 = sub_1001E20DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001DFB40(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001DF784(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1001DFC64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001DFCA4();
}

uint64_t sub_1001DFCA4()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_100034A8C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001DFD70()
{
  swift_getKeyPath();
  sub_1000346B0(&unk_1002E1EA8);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001DFE54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001DFE94();
}

uint64_t sub_1001DFE94()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_100034A8C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E00A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_100033BDC();
}

uint64_t sub_1001E00F8()
{
  swift_getKeyPath();
  sub_1000346B0(&unk_1002E1EA8);
  sub_1001E1EE0();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E0288()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_1000349DC();
}

uint64_t sub_1001E0328()
{
  swift_getKeyPath();
  sub_1000346B0(&unk_1002E1EA8);
  sub_1001E1E38();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E04A8()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_1000349DC();
}

uint64_t sub_1001E0544()
{
  swift_getKeyPath();
  sub_1000346B0(&unk_1002E1EA8);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E07E4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_1000A9914(a1, &v10 - v6);
  v8 = *a2;
  return sub_1001E0878(v7);
}

uint64_t sub_1001E0878(uint64_t a1)
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v2);
  sub_1000349DC();

  return sub_1000ACD3C(a1);
}

uint64_t sub_1001E091C()
{
  swift_getKeyPath();
  sub_1000346B0(&unk_1002E1EA8);
  sub_100034508();
  PersistentModel.setValue<A>(forKey:to:)();
}

double sub_1001E09FC@<D0>(uint64_t a1@<X8>)
{
  *&v6 = v1;
  swift_getKeyPath();
  sub_100034A74();
  sub_1000346B0(v3);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10003491C();
  sub_1000346B0(v4);
  sub_100034484(&unk_1002E1F08);
  sub_100034B30();
  PersistentModel.getValue<A>(forKey:)();

  result = v1;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

double sub_1001E0B20@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1001E09FC(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1001E0B68(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 32);
  v2 = *a2;
  return sub_1001E0BA8();
}

uint64_t sub_1001E0BA8()
{
  swift_getKeyPath();
  sub_100034904();
  sub_1000346B0(v0);
  sub_1000349DC();
}

uint64_t sub_1001E0C44(uint64_t a1, __int128 *a2)
{
  swift_getKeyPath();
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 32);
  sub_1000346B0(&unk_1002E1EA8);
  sub_100034484(&unk_1002E1EF0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E0D38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_100033BDC();
}

uint64_t sub_1001E0D94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_100033BDC();
}

uint64_t sub_1001E0E20()
{
  v38 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v38 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v38);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v6 = *(v0 + 72);
  v39 = v0;
  v7 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100248050;
  v37 = v7;
  v35 = v8;
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_1000349BC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349CC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349BC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_1000349BC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349CC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349A8();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_1000349CC();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v43 = 0u;
  v44 = 0u;
  sub_100099DF4(&qword_1002E1EB0, &unk_100248528);
  v9 = sub_100034B5C();
  v34 = xmmword_1002329F0;
  *(v9 + 16) = xmmword_1002329F0;
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v10 = sub_100034B5C();
  v33 = xmmword_100248060;
  *(v10 + 16) = xmmword_100248060;
  *(v10 + 32) = swift_getKeyPath();
  *(v10 + 40) = swift_getKeyPath();
  *(v9 + 32) = v10;
  v11 = swift_allocObject();
  v32 = xmmword_100247D00;
  *(v11 + 16) = xmmword_100247D00;
  *(v11 + 32) = swift_getKeyPath();
  *(v9 + 40) = v11;
  v12 = sub_100099DF4(&qword_1002E1EB8, &qword_100248538);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_100004938();
  Schema.Index.init(_:)();
  *(&v41 + 1) = v12;
  v15 = sub_1000342D8(&unk_1002E1EC0);
  sub_100034B1C(v15);
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v17 = v16;
  if (*(v16 + 16) >= *(v16 + 24) >> 1)
  {
    sub_100034AD8();
    v17 = v30;
  }

  v18 = sub_100034AFC();
  v19 = *(v39 + 32);
  v39 += 32;
  v19(v18, v5);
  swift_getKeyPath();
  v43 = 0u;
  v44 = 0u;
  v20 = sub_100034B5C();
  *(v20 + 16) = v34;
  v21 = sub_100034B5C();
  *(v21 + 16) = v33;
  *(v21 + 32) = swift_getKeyPath();
  *(v21 + 40) = swift_getKeyPath();
  *(v20 + 32) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  *(v22 + 32) = swift_getKeyPath();
  *(v20 + 40) = v22;
  v23 = sub_100099DF4(&qword_1002E1EC8, &unk_100248540);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_100004938();
  Schema.Unique.init(_:)();
  *(&v41 + 1) = v23;
  v26 = sub_1000342D8(&unk_1002E1ED0);
  sub_100034B1C(v26);
  sub_1000349BC();
  v27 = v36;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  if (*(v17 + 16) >= *(v17 + 24) >> 1)
  {
    sub_100034AD8();
    v17 = v31;
  }

  v28 = sub_100034AFC();
  v19(v28, v27);
  *&v40 = v35;
  sub_1001DD394(v17);
  return v40;
}

uint64_t sub_1001E15E4(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1001E1624(a1);
  return v5;
}

void *sub_1001E1624(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100099DF4(&qword_1002E1F48, &qword_100248560);
  sub_100034904();
  sub_1000346B0(v5);
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  v2[2] = 0x101010101010101;
  ObservationRegistrar.init()();
  v2[2] = 0;
  sub_1000334B8();
  sub_100004118(v2 + 3);
  sub_10000601C(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001E1754()
{
  sub_100004118(v0 + 3);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV122PrivateIdentifierModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_100006EF0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t _s22PrivateIdentifierModelCMa()
{
  result = qword_1002E1D70;
  if (!qword_1002E1D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E1840()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

Swift::Int sub_1001E1920()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100034904();
  sub_1000346B0(v2);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001E19C0(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 24, v3);
  return sub_100033DA8;
}

uint64_t sub_1001E1A78()
{
  v1 = *v0;
  sub_1000346B0(&unk_1002E1EA8);
  return PersistentModel.hash(into:)();
}

uint64_t sub_1001E1AEC()
{
  v1 = *v0;
  sub_1000346B0(&unk_1002E1EA8);
  return PersistentModel.id.getter();
}

uint64_t sub_1001E1B60(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1000346B0(&unk_1002E1EA8);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001E1D90()
{
  result = qword_1002E1F00;
  if (!qword_1002E1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F00);
  }

  return result;
}

unint64_t sub_1001E1DE4()
{
  result = qword_1002E1F10;
  if (!qword_1002E1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F10);
  }

  return result;
}

unint64_t sub_1001E1E38()
{
  result = qword_1002E1F28;
  if (!qword_1002E1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F28);
  }

  return result;
}

unint64_t sub_1001E1E8C()
{
  result = qword_1002E1F30;
  if (!qword_1002E1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F30);
  }

  return result;
}

unint64_t sub_1001E1EE0()
{
  result = qword_1002E1F38;
  if (!qword_1002E1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F38);
  }

  return result;
}

unint64_t sub_1001E1F34()
{
  result = qword_1002E1F40;
  if (!qword_1002E1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F40);
  }

  return result;
}

_BYTE *_s24KeypairsModificationKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001E2088()
{
  result = qword_1002E1F50;
  if (!qword_1002E1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F50);
  }

  return result;
}

unint64_t sub_1001E20DC()
{
  result = qword_1002E1F60;
  if (!qword_1002E1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F60);
  }

  return result;
}

unint64_t sub_1001E2130()
{
  result = qword_1002E1F68;
  if (!qword_1002E1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F68);
  }

  return result;
}

unint64_t sub_1001E2184()
{
  result = qword_1002E1F78;
  if (!qword_1002E1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F78);
  }

  return result;
}

unint64_t sub_1001E21D8()
{
  result = qword_1002E1F80;
  if (!qword_1002E1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F80);
  }

  return result;
}

unint64_t sub_1001E222C()
{
  result = qword_1002E1F88;
  if (!qword_1002E1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F88);
  }

  return result;
}

_BYTE *_s30ScheduledRotationConfigurationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001E2370()
{
  result = qword_1002E1F90;
  if (!qword_1002E1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F90);
  }

  return result;
}

unint64_t sub_1001E23C8()
{
  result = qword_1002E1F98;
  if (!qword_1002E1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1F98);
  }

  return result;
}

unint64_t sub_1001E2420()
{
  result = qword_1002E1FA0;
  if (!qword_1002E1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1FA0);
  }

  return result;
}

unint64_t sub_1001E2474()
{
  result = qword_1002E1FB0;
  if (!qword_1002E1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1FB0);
  }

  return result;
}

_BYTE *_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001E25A8()
{
  result = qword_1002E1FC0;
  if (!qword_1002E1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1FC0);
  }

  return result;
}

unint64_t sub_1001E2600()
{
  result = qword_1002E1FC8;
  if (!qword_1002E1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1FC8);
  }

  return result;
}

unint64_t sub_1001E2658()
{
  result = qword_1002E1FD0;
  if (!qword_1002E1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E1FD0);
  }

  return result;
}

uint64_t sub_1001E26CC()
{
  sub_100099DF4(&qword_1002E1FD8, &unk_100248B20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002329F0;
  v1 = _s20GlobalSyncStateModelCMa();
  v2 = sub_100034B74(&qword_1002E1C78, _s20GlobalSyncStateModelCMa);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = _s22PrivateIdentifierModelCMa();
  v4 = sub_100034B74(&qword_1002E1EA8, _s22PrivateIdentifierModelCMa);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

void sub_1001E2A10()
{
  sub_1000334E8();
  swift_getKeyPath();
  sub_10003517C();
  sub_10003505C(v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100035134();
  sub_10003505C(v1);
  sub_100033138(&unk_1002E1CB0);
  PersistentModel.getValue<A>(forKey:)();

  sub_1000334FC();
}

uint64_t sub_1001E2B24(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_10003511C();
  sub_10003505C(v4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_10009A7A0(a1, a2);
}

uint64_t sub_1001E2CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1001E2BF8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1001E2CFC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1001E2D24();
}

uint64_t sub_1001E2D24()
{
  swift_getKeyPath();
  sub_10003511C();
  sub_10003505C(v0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E2DE0()
{
  swift_getKeyPath();
  sub_10003505C(&unk_1002E1AD8);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E2E88()
{
  swift_getKeyPath();
  sub_10003505C(&unk_1002E1AD8);
  sub_100034FD4();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E2F68()
{
  swift_getKeyPath();
  sub_10003505C(&unk_1002E1AD8);
  sub_100034EC8();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E3048(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1001D035C(*a1, v3);
  return sub_1001E2B24(v2, v3);
}

uint64_t sub_1001E308C()
{
  swift_getKeyPath();
  sub_10003505C(&unk_1002E1AD8);
  sub_100033138(&unk_1002E1CA0);
  PersistentModel.setValue<A>(forKey:to:)();
}

void *sub_1001E3174(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v8 = *v4;
  v9 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v10 = sub_1000030B8(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  v16 = sub_1000030B8(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  v5[6] = sub_100099DF4(&qword_1002E2100, &unk_100248DF0);
  sub_10003511C();
  v22 = sub_10003505C(v21);
  v31 = v8;
  v32 = v8;
  v33 = v22;
  v34 = v22;
  sub_1000351AC();
  v5[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v5 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v5 + 8) = 257;
  *(v5 + 18) = 1;
  ObservationRegistrar.init()();
  v23 = v5[7];
  sub_10000C4FC(v5 + 3, v5[6]);
  swift_getKeyPath();
  LOBYTE(v31) = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100012C94(a1, v20, &qword_1002E1AB8, &qword_100247AD0);
  sub_100035164();
  sub_100034BBC(v20, v24, v25, &qword_1002E1AB8, &qword_100247AD0);
  sub_100012C94(a2, v14, &qword_1002E12C8, &qword_100248D50);
  sub_10003514C();
  sub_100034BBC(v14, v26, v27, &qword_1002E12C8, &qword_100248D50);
  sub_1001E2B24(v29, v30);
  sub_100004E24(a2, &qword_1002E12C8, &qword_100248D50);
  sub_100004E24(a1, &qword_1002E1AB8, &qword_100247AD0);
  return v5;
}

uint64_t sub_1001E3418()
{
  v24 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v24 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  __chkstk_darwin(v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v5 = *(v0 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002329E0;
  swift_getKeyPath();
  *&v8 = sub_1000351C4();
  v25 = v8;
  v26 = v8;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v9 = sub_1000351C4();
  v25 = v9;
  v26 = v9;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v10 = sub_1000351C4();
  v25 = v10;
  v26 = v10;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v11 = sub_1000351C4();
  v25 = v11;
  v26 = v11;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v28 = 0u;
  v29 = 0u;
  sub_100099DF4(&qword_1002E20E8, &unk_100248DD8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10022E400;
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100247D00;
  *(v13 + 32) = swift_getKeyPath();
  *(v12 + 32) = v13;
  v14 = sub_100099DF4(&qword_1002E20F0, &qword_100248DE8);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = Schema.Unique.init(_:)();
  *(&v26 + 1) = v14;
  v27 = sub_1001E4428();
  *&v25 = v17;
  sub_100033454();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20 >= *(v18 + 24) >> 1)
  {
    sub_1001DEC90();
    v19 = v22;
  }

  *(v19 + 16) = v20 + 1;
  (*(v1 + 32))(v19 + v6 + v20 * v5, v4, v24);
  *&v25 = v7;
  sub_1001DD394(v19);
  return v25;
}

uint64_t sub_1001E37A8(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1001E37E8(a1);
  return v5;
}

void *sub_1001E37E8(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100099DF4(&qword_1002E2100, &unk_100248DF0);
  sub_10003511C();
  sub_10003505C(v5);
  sub_1000351AC();
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 8) = 257;
  *(v2 + 18) = 1;
  ObservationRegistrar.init()();
  *(v2 + 8) = 0;
  *(v2 + 18) = 0;
  sub_1000334B8();
  sub_100004118(v2 + 3);
  sub_10000601C(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001E391C()
{
  sub_100004118(v0 + 3);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV220GlobalSyncStateModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000307C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t _s20GlobalSyncStateModelCMa_0()
{
  result = qword_1002E2010;
  if (!qword_1002E2010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E3A0C()
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

uint64_t sub_1001E3AD8()
{
  v1 = *v0;
  v60 = type metadata accessor for UUID();
  v2 = sub_100003724(v60);
  v58 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v8 = sub_1000030B8(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000308C();
  v59 = v11 - v12;
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v16 = type metadata accessor for CKSyncEngine.State.Serialization();
  v17 = sub_100003724(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_10000308C();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v56 - v26;
  v28 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  v29 = sub_1000030B8(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_10000308C();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = &v56 - v36;
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(97);
  v38._countAndFlagsBits = 60;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v39);

  v40._object = 0x80000001002775A0;
  v40._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v40);
  v61 = v0;
  sub_1001E27AC();
  sub_100012C94(v37, v34, &qword_1002E1AB8, &qword_100247AD0);
  if (sub_100004DFC(v34, 1, v16) == 1)
  {
    sub_1000351D4();
  }

  else
  {
    (*(v19 + 32))(v27, v34, v16);
    (*(v19 + 16))(v24, v27, v16);
    String.init<A>(describing:)();
    (*(v19 + 8))(v27, v16);
  }

  v41 = sub_100004E24(v37, &qword_1002E1AB8, &qword_100247AD0);
  sub_1000351E4(v41);

  v42._countAndFlagsBits = 0xD00000000000001CLL;
  v42._object = 0x80000001002775C0;
  String.append(_:)(v42);
  sub_1001E28E0();
  v43 = v59;
  sub_100012C94(v15, v59, &qword_1002E12C8, &qword_100248D50);
  v44 = v60;
  if (sub_100004DFC(v43, 1, v60) == 1)
  {
    sub_1000351D4();
  }

  else
  {
    v45 = v57;
    v46 = v58;
    (*(v58 + 32))(v57, v43, v44);
    UUID.uuidString.getter();
    (*(v46 + 8))(v45, v44);
  }

  v47 = sub_100004E24(v15, &qword_1002E12C8, &qword_100248D50);
  sub_1000351E4(v47);

  v48._countAndFlagsBits = 0xD00000000000002ALL;
  v48._object = 0x80000001002775E0;
  String.append(_:)(v48);
  sub_1001E2A10();
  if (v50 >> 60 == 15)
  {
    sub_1000351D4();
  }

  else
  {
    v52 = v49;
    v53 = v50;
    Data.description.getter();
    v51 = sub_10009A7A0(v52, v53);
  }

  sub_1000351E4(v51);

  v54._countAndFlagsBits = 62;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  return v62;
}

Swift::Int sub_1001E3F94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10003511C();
  sub_10003505C(v2);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001E4058(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 24, v3);
  return sub_100034D4C;
}

uint64_t sub_1001E4110()
{
  v1 = *v0;
  sub_10003505C(&qword_1002E1AD8);
  return PersistentModel.hash(into:)();
}

uint64_t sub_1001E4184()
{
  v1 = *v0;
  sub_10003505C(&qword_1002E1AD8);
  return PersistentModel.id.getter();
}

uint64_t sub_1001E41F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10003505C(&qword_1002E1AD8);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001E4428()
{
  result = qword_1002E20F8;
  if (!qword_1002E20F8)
  {
    sub_10009A468(&qword_1002E20F0, &qword_100248DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E20F8);
  }

  return result;
}

uint64_t sub_1001E45B0(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001E44DC(v2);
  *v1 = result;
  v1[1] = v4;
  return result;
}

uint64_t sub_1001E45D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001E4618();
}

uint64_t sub_1001E4618()
{
  swift_getKeyPath();
  sub_1000362BC();
  sub_10003615C();
  sub_100036118(v0);
  sub_1000361BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1001E4708(uint64_t *a1)
{
  sub_100034AA8(a1);
  sub_1001E46D8();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t sub_1001E4730(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001E4770();
}

uint64_t sub_1001E4770()
{
  swift_getKeyPath();
  sub_1000362BC();
  sub_10003615C();
  sub_100036118(v0);
  sub_1000361BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E488C(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001E4880();
  *v1 = result;
  return result;
}

uint64_t sub_1001E48B4(uint64_t *a1, uint64_t *a2)
{
  sub_1000362B0(a1, a2);
  sub_1000361E8();
  return sub_100035568();
}

uint64_t sub_1001E48F0(uint64_t *a1)
{
  sub_100034AA8(a1);
  result = sub_1001E48E4();
  *v1 = result;
  return result;
}

uint64_t sub_1001E4918(uint64_t *a1, uint64_t *a2)
{
  sub_1000362B0(a1, a2);
  sub_1000361D0();
  return sub_100035568();
}

void sub_1001E4BAC()
{
  sub_1000334E8();
  v1 = v0[4];
  sub_10000C4FC(v0, v0[3]);
  swift_getKeyPath();
  sub_100036298();

  sub_1000334FC();
}

uint64_t sub_1001E4C34()
{
  swift_getKeyPath();
  sub_100036118(&unk_1002E15F0);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1001E4CE8()
{
  sub_10003630C();
  v1 = v0;
  v3 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  swift_getKeyPath();
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  sub_100034A2C();
  sub_100036068(v4);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *v1 = 0;
  sub_100036320();
}

uint64_t sub_1001E4DB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_1001E4DE8();
}

uint64_t sub_1001E4DE8()
{
  swift_getKeyPath();
  sub_1000362BC();
  sub_10003615C();
  sub_100036118(v0);
  sub_1000361BC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E4EA4()
{
  swift_getKeyPath();
  sub_100036118(&unk_1002E15F0);
  sub_1001E675C();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E4F64()
{
  swift_getKeyPath();
  sub_10003615C();
  sub_100036118(v0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001E5020()
{
  swift_getKeyPath();
  sub_100036118(&unk_1002E15F0);
  sub_1001E67B0();
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1001E50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10003630C();
  v13 = v12;
  v37 = v14;
  v38 = v15;
  v17 = v16;
  v39 = v18;
  v19 = *v12;
  v35 = type metadata accessor for Date();
  v20 = sub_100003724(v35);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_10000306C();
  v32 = v26 - v25;
  v13[6] = sub_100099DF4(&qword_1002E2238, &qword_100248FF0);
  sub_10003615C();
  sub_100036118(v27);
  sub_1000351AC();
  v13[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v13 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v13 + 8) = 257;
  *(v13 + 18) = 1;
  ObservationRegistrar.init()();
  sub_10000A874();
  sub_1001E4BAC();
  sub_1001E4CE8();
  v36 = v17;
  sub_1001D035C(v17, v39);
  sub_1000358A0();
  v28 = sub_1000362C8();
  sub_1001D035C(v28, v29);
  sub_1000362C8();
  sub_1000358A0();
  sub_100036200();
  swift_getKeyPath();
  sub_100036274();

  sub_100036200();
  swift_getKeyPath();
  sub_100036274();

  v30 = *(v22 + 16);
  v30(v32, a11, v35);
  v33 = v13[7];
  sub_10000C4FC(v13 + 3, v13[6]);
  swift_getKeyPath();
  sub_10003618C();
  sub_100036118(v31);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v34 = *(v22 + 8);
  v34(v32, v35);
  v30(v32, a12, v35);
  sub_100036200();
  swift_getKeyPath();
  sub_100036298();

  v34(v32, v35);
  sub_100036200();
  swift_getKeyPath();
  sub_1001E675C();
  sub_100036298();

  sub_100036200();
  swift_getKeyPath();
  sub_1001E67B0();
  sub_100036298();

  sub_10009A7A0(v37, v38);
  sub_10009A7A0(v36, v39);
  v34(a12, v35);
  v34(a11, v35);
  sub_100036320();
}

void sub_1001E5548()
{
  sub_10003630C();
  v44 = v0;
  v45 = v1;
  v2 = type metadata accessor for Schema.PropertyMetadata();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v32 - v7;
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v8 = *(v3 + 72);
  v38 = v3;
  v9 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100248E00;
  v37 = v9;
  v34 = v10;
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  sub_1000362F4();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  sub_1000362F4();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  sub_1000362F4();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  sub_1000362F4();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v42 = 0u;
  v43 = 0u;
  sub_100099DF4(&qword_1002E2260, &unk_1002491D0);
  v11 = swift_allocObject();
  v33 = xmmword_10022E400;
  *(v11 + 16) = xmmword_10022E400;
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v12 = swift_allocObject();
  v32 = xmmword_100248E10;
  *(v12 + 16) = xmmword_100248E10;
  *(v12 + 32) = swift_getKeyPath();
  *(v12 + 40) = swift_getKeyPath();
  *(v12 + 48) = swift_getKeyPath();
  *(v12 + 56) = swift_getKeyPath();
  *(v11 + 32) = v12;
  v13 = sub_100099DF4(&qword_1002E2268, &qword_1002491E0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_100004938();
  Schema.Index.init(_:)();
  *(&v40 + 1) = v13;
  v16 = sub_1000342D8(&unk_1002E2270);
  sub_100034B1C(v16);
  v17 = v36;
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20 >= *(v18 + 24) >> 1)
  {
    sub_100034AD8();
    v19 = v30;
  }

  *(v19 + 16) = v20 + 1;
  v21 = *(v38 + 32);
  v36 = v2;
  v38 += 32;
  v21(v19 + v37 + v20 * v8, v17, v2);
  swift_getKeyPath();
  v42 = 0u;
  v43 = 0u;
  v22 = swift_allocObject();
  *(v22 + 16) = v33;
  v23 = swift_allocObject();
  *(v23 + 16) = v32;
  *(v23 + 32) = swift_getKeyPath();
  *(v23 + 40) = swift_getKeyPath();
  *(v23 + 48) = swift_getKeyPath();
  *(v23 + 56) = swift_getKeyPath();
  *(v22 + 32) = v23;
  v24 = sub_100099DF4(&qword_1002E2278, &qword_1002491E8);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_100004938();
  Schema.Unique.init(_:)();
  *(&v40 + 1) = v24;
  v27 = sub_1000342D8(&unk_1002E2280);
  sub_100034B1C(v27);
  sub_100034A08();
  v28 = v35;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v29 = *(v19 + 16);
  if (v29 >= *(v19 + 24) >> 1)
  {
    sub_100034AD8();
    v19 = v31;
  }

  *(v19 + 16) = v29 + 1;
  v21(v19 + v37 + v29 * v8, v28, v36);
  *&v39 = v34;
  sub_1001DD394(v19);
  sub_100036320();
}

uint64_t sub_1001E5C04(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1001E5C44(a1);
  return v5;
}

void *sub_1001E5C44(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = sub_100099DF4(&qword_1002E2238, &qword_100248FF0);
  sub_10003615C();
  sub_100036118(v5);
  sub_1000351AC();
  v2[7] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 8) = 257;
  *(v2 + 18) = 1;
  ObservationRegistrar.init()();
  *(v2 + 8) = 0;
  *(v2 + 18) = 0;
  sub_1000334B8();
  sub_100004118(v2 + 3);
  sub_10000601C(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001E5D78()
{
  sub_100004118(v0 + 3);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV229PrivateIdentifierHistoryModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_100006EF0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t _s29PrivateIdentifierHistoryModelCMa()
{
  result = qword_1002E2138;
  if (!qword_1002E2138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E5E64()
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

Swift::Int sub_1001E6384()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10003615C();
  sub_100036118(v2);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001E6448(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 24, v3);
  return sub_100035B04;
}

uint64_t sub_1001E6500()
{
  v1 = *v0;
  sub_100036118(&unk_1002E15F0);
  return PersistentModel.hash(into:)();
}

uint64_t sub_1001E6574(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100036118(&unk_1002E15F0);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001E675C()
{
  result = qword_1002E2240;
  if (!qword_1002E2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2240);
  }

  return result;
}

unint64_t sub_1001E67B0()
{
  result = qword_1002E2248;
  if (!qword_1002E2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2248);
  }

  return result;
}

unint64_t sub_1001E6804()
{
  result = qword_1002E2250;
  if (!qword_1002E2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2250);
  }

  return result;
}

unint64_t sub_1001E6858()
{
  result = qword_1002E2258;
  if (!qword_1002E2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2258);
  }

  return result;
}

void sub_1001E6974(uint64_t *a1)
{
  sub_100034AA8(a1);
  sub_1001E6944();
  *v1 = v2;
  v1[1] = v3;
}

uint64_t sub_1001E699C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001E69DC();
}

uint64_t sub_1001E69DC()
{
  swift_getKeyPath();
  sub_100037DD8();
  sub_100037CD4(v0);
  sub_100034A8C();
  sub_100038144();
}

uint64_t sub_1001E6B74(uint64_t *a1)
{
  v2 = sub_100034AA8(a1);
  result = sub_1001E6AA0(v2);
  *v1 = result;
  v1[1] = v4;
  return result;
}

uint64_t sub_1001E6B9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1001E6BDC();
}

uint64_t sub_1001E6BDC()
{
  swift_getKeyPath();
  sub_100037DD8();
  sub_100037CD4(v0);
  sub_100034A8C();
  sub_100038144();
}

uint64_t sub_1001E7170(char a1)
{
  swift_getKeyPath();
  LOBYTE(v13) = a1;
  sub_100037DD8();
  v4 = sub_100037CD4(v3);
  sub_100037EAC(v4, v5, sub_1000379A8, v6, v7, v4, v8, v9, v11, v12, v1, v13, v14, v15);
  sub_100038144();
}

double sub_1001E7420@<D0>(uint64_t a1@<X8>)
{
  sub_1001E7464(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1001E7464@<D0>(uint64_t a1@<X8>)
{
  *&v6 = v1;
  swift_getKeyPath();
  sub_100037ED4();
  sub_100037CD4(v3);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100037DF0();
  sub_100037CD4(v4);
  sub_1000376F4(&unk_1002E2418);
  sub_100034B30();
  sub_1000049C0();
  PersistentModel.getValue<A>(forKey:)();

  result = v1;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_1001E7584(uint64_t a1)
{
  swift_getKeyPath();
  sub_100037DD8();
  v4 = sub_100037CD4(v3);
  sub_100037EAC(v4, v5, sub_1000376D8, v6, v7, v4, v8, v9, v11, v12, v1, a1, v13, v14);
  sub_100038144();
}

uint64_t sub_1001E7744()
{
  sub_100030404();
  _StringGuts.grow(_:)(48);
  v0._countAndFlagsBits = 60;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x8000000100249760;
  String.append(_:)(v1);
  v2._object = 0x8000000100276EE0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0xD000000000000016;
  v3._object = 0x8000000100276F00;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

unint64_t sub_1001E786C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1001E787C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E786C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001E796C(void *a1)
{
  v3 = sub_100099DF4(&qword_1002E24A8, &qword_100249B28);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v9 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001EAFC8();
  sub_100030418();
  sub_1000303A8();
  if (!v1)
  {
    sub_1000303A8();
    sub_1000303A8();
  }

  v10 = *(v5 + 8);
  v11 = sub_100038104();
  return v12(v11);
}

double sub_1001E7AC8(uint64_t *a1)
{
  v2 = sub_100099DF4(&qword_1002E2498, &qword_100249B20);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100004880();
  v6 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001EAFC8();
  sub_1000303E0();
  sub_1000303C4();
  v8 = v7;
  sub_1000303C4();
  sub_1000303C4();
  v10 = sub_10000BD0C();
  v11(v10);
  sub_100004118(a1);
  return v8;
}

uint64_t sub_1001E7C44()
{
  sub_100030404();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002E2470, &qword_100249B10);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v9 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  sub_1001EAECC();
  sub_100030418();
  sub_1000303A8();
  if (!v0)
  {
    sub_1001EAF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v10 = *(v5 + 8);
  v11 = sub_100038104();
  return v12(v11);
}

double sub_1001E7DA0(uint64_t *a1)
{
  v2 = sub_100099DF4(&qword_1002E2488, &qword_100249B18);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100004880();
  v6 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001EAECC();
  sub_1000303E0();
  sub_1000303C4();
  v8 = v7;
  sub_1001EAF74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = sub_10000BD0C();
  v10(v9);
  sub_100004118(a1);
  return v8;
}

void sub_1001E7F34(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1001E7958();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_1001E801C(uint64_t a1)
{
  v2 = sub_1001EAFC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E8058(uint64_t a1)
{
  v2 = sub_1001EAFC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001E8094(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001E7AC8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1001E80C4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_1001E796C(a1);
}

uint64_t sub_1001E80E4(uint64_t a1)
{
  v2 = sub_1001EAECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E8120(uint64_t a1)
{
  v2 = sub_1001EAECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001E815C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001E7DA0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1001E818C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1001E7C44();
}

void sub_1001E81AC()
{
  sub_1000334E8();
  v1 = v0[4];
  sub_10000C4FC(v0, v0[3]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_1000334FC();
}

uint64_t sub_1001E823C()
{
  swift_getKeyPath();
  sub_100037CD4(&qword_1002E1890);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1001E82F0()
{
  sub_10003630C();
  v1 = v0;
  v3 = v2[4];
  sub_10000C4FC(v2, v2[3]);
  swift_getKeyPath();
  sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  sub_100034A2C();
  sub_100037B54(v4);
  sub_1000380F8();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *v1 = 0;
  sub_100036320();
}

uint64_t sub_1001E83B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_100036AC8();
}

uint64_t sub_1001E8408()
{
  swift_getKeyPath();
  sub_100037CD4(&qword_1002E1890);
  sub_1001E675C();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E84C8()
{
  swift_getKeyPath();
  sub_100037CD4(&unk_1002E1890);
  sub_1001E67B0();
  PersistentModel.setValue<A>(forKey:to:)();
}

double sub_1001E8574@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1001E7464(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1001E85BC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *a2;
  return sub_1001E7584(v5);
}

uint64_t sub_1001E85FC(uint64_t a1, __int128 *a2)
{
  swift_getKeyPath();
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 32);
  sub_100037CD4(&qword_1002E1890);
  sub_1000376F4(&unk_1002E2400);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1001E86E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_100036AC8();
}

uint64_t sub_1001E8734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  return sub_100036AC8();
}

void sub_1001E8784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, unsigned __int8 a11, void (*a12)(void, void), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24)
{
  sub_10003630C();
  v120 = v25;
  v121 = v26;
  v27 = v24;
  v107 = v28;
  v108 = v29;
  v110 = v30;
  v111 = v31;
  v90 = v32;
  v89[2] = v33;
  v89[1] = v34;
  v89[0] = v35;
  v103 = a24;
  v104 = a23;
  v102 = a21;
  v101 = a22;
  v99 = a17;
  v100 = a18;
  v109 = a15;
  v112 = a16;
  v113 = a14;
  v105 = a13;
  v94 = a12;
  LODWORD(v93) = a11;
  LODWORD(v92) = a10;
  v36 = *v24;
  v91 = a9;
  v98 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_10000307C(v98);
  v38 = *(v37 + 64);
  sub_100003774();
  __chkstk_darwin(v39);
  v97 = v89 - v40;
  v96 = type metadata accessor for Date();
  v41 = sub_100003724(v96);
  v115 = v42;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  sub_10000306C();
  v95 = v46 - v45;
  v106 = type metadata accessor for UUID();
  v47 = sub_100003724(v106);
  v114 = v48;
  v50 = *(v49 + 64);
  __chkstk_darwin(v47);
  sub_10000306C();
  v53 = v52 - v51;
  v27[7] = sub_100099DF4(&qword_1002E23F8, &qword_100249480);
  sub_100037DD8();
  v55 = sub_100037CD4(v54);
  v116 = v36;
  v117 = v36;
  v118 = v55;
  v119 = v55;
  sub_1000351AC();
  v27[8] = swift_getOpaqueTypeConformance2();
  sub_100007914(v27 + 4);
  static PersistentModel.createBackingData<A>()();
  *(v27 + 8) = 257;
  *(v27 + 18) = 1;
  v56 = v27[8];
  sub_10000C4FC(v27 + 4, v27[7]);
  swift_getKeyPath();
  v116 = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v27 + 19) = 16843009;
  *(v27 + 23) = 257;
  ObservationRegistrar.init()();
  sub_1001E81AC();
  sub_1001E82F0();
  v57 = sub_1000362C8();
  sub_1001D035C(v57, v58);
  sub_1000362C8();
  sub_100036B78();
  v59 = sub_1000362C8();
  sub_1001D035C(v59, v60);
  sub_1000362C8();
  sub_100036B78();
  sub_100037E64();
  swift_getKeyPath();
  v116 = v91;
  LOBYTE(v117) = v92 & 1;
  sub_1001E675C();
  sub_1000380B8();

  sub_100037E64();
  swift_getKeyPath();
  LOBYTE(v116) = v93;
  sub_1001E67B0();
  sub_1000380B8();

  sub_100037E64();
  swift_getKeyPath();
  v116 = v94;
  sub_1000380B8();

  sub_100037E64();
  swift_getKeyPath();
  v116 = v105;
  sub_1000380B8();

  v61 = v114;
  (*(v114 + 16))(v53, v113, v106);
  sub_100037E64();
  swift_getKeyPath();
  sub_100037EEC();
  sub_100037CD4(v62);
  sub_1000380EC();
  sub_1000380B8();

  v63 = *(v61 + 8);
  v114 = v61 + 8;
  v94 = v63;
  v64 = sub_10003CF90();
  v65(v64);
  v66 = v115;
  v67 = *(v115 + 16);
  v105 = (v115 + 16);
  v68 = v95;
  v69 = v96;
  v67(v95, v109, v96);
  v93 = v67;
  v70 = v27[7];
  v90 = v27[8];
  sub_100038124();
  swift_getKeyPath();
  sub_100037E38();
  v91 = &protocol conformance descriptor for Date;
  v92 = sub_100037CD4(v71);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v73 = v66 + 8;
  v72 = *(v66 + 8);
  v72(v68, v69);
  v90 = v72;
  v115 = v73;
  v74 = sub_10003CF90();
  v75 = v69;
  (v67)(v74);
  v76 = v27[7];
  v77 = v27[8];
  sub_100038124();
  swift_getKeyPath();
  sub_1000380EC();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v78 = sub_10003CF90();
  (v72)(v78);
  v79 = v97;
  sub_1000A9914(v112, v97);
  v80 = v27[7];
  v81 = v27[8];
  sub_100038124();
  swift_getKeyPath();
  sub_1000377C8();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v82 = v79;
  sub_1000ACD3C(v79);
  *(v27 + 19) = 0;
  sub_1000380EC();
  v93(v83, v84, v85);
  sub_100037E64();
  swift_getKeyPath();
  sub_1000380B8();

  v86 = v90;
  (v90)(v68, v75);
  v87 = v99;
  sub_1000A9914(v99, v82);
  sub_100037F1C();
  sub_100036940(v82);
  sub_1001E7584(v100);
  sub_100038054();
  sub_100036AC8();
  sub_100037E88();
  sub_100036790();
  sub_10009A7A0(v107, v108);
  sub_10009A7A0(v110, v111);
  sub_1000ACD3C(v87);
  sub_1000ACD3C(v112);
  v88 = sub_10003CF90();
  v86(v88);
  v94(v113, v106);
  sub_100036320();
}

uint64_t sub_1001E9020(__int128 *a1)
{
  sub_1000334B8();
  sub_100004118((v1 + 32));
  sub_10000601C(a1, v1 + 32);
  return swift_endAccess();
}

void sub_1001E9070()
{
  sub_10003630C();
  v53 = v0;
  v54 = v1;
  v46 = type metadata accessor for Schema.PropertyMetadata();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v46);
  sub_1000037D4();
  v44 = v4;
  sub_100005238();
  __chkstk_darwin(v5);
  v42 = &v38 - v6;
  sub_100099DF4(&qword_1002E1C80, &qword_100247EF0);
  v7 = *(v2 + 72);
  v47 = v2;
  v8 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002491F0;
  v45 = v8;
  v43 = v9;
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  sub_100038084();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034964();
  sub_100034A08();
  sub_100038084();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100037EA0();
  v10 = type metadata accessor for Schema.Attribute();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v49 + 1) = v10;
  v50 = sub_100037CD4(&unk_1002E2428);
  *&v48 = v13;
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v52 = &type metadata for Int;
  v51 = 0;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *&v14 = sub_100037EA0();
  v50 = 0;
  v48 = v14;
  v49 = v14;
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100037E50();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100034934();
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_100037EA0();
  v41 = sub_100099DF4(&qword_1002E2430, &unk_1002497D8);
  v15 = sub_100034B5C();
  v40 = xmmword_1002329F0;
  *(v15 + 16) = xmmword_1002329F0;
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v16 = sub_100034B5C();
  v39 = xmmword_100248060;
  *(v16 + 16) = xmmword_100248060;
  *(v16 + 32) = swift_getKeyPath();
  *(v16 + 40) = swift_getKeyPath();
  *(v15 + 32) = v16;
  v17 = swift_allocObject();
  v38 = xmmword_100247D00;
  *(v17 + 16) = xmmword_100247D00;
  *(v17 + 32) = swift_getKeyPath();
  *(v15 + 40) = v17;
  v18 = sub_100099DF4(&qword_1002E2438, &qword_1002497E8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = Schema.Index.init(_:)();
  *(&v49 + 1) = v18;
  v22 = v42;
  v50 = sub_100037D1C(&unk_1002E2440);
  *&v48 = v21;
  sub_100034A08();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DEC90();
  v24 = v23;
  if (*(v23 + 16) >= *(v23 + 24) >> 1)
  {
    sub_100034AD8();
    v24 = v36;
  }

  v25 = sub_100038110();
  v26 = *(v47 + 32);
  v47 += 32;
  v26(v25, v22);
  swift_getKeyPath();
  sub_100037EA0();
  v27 = sub_100034B5C();
  *(v27 + 16) = v40;
  v28 = sub_100034B5C();
  *(v28 + 16) = v39;
  *(v28 + 32) = swift_getKeyPath();
  *(v28 + 40) = swift_getKeyPath();
  *(v27 + 32) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v38;
  *(v29 + 32) = swift_getKeyPath();
  *(v27 + 40) = v29;
  v30 = sub_100099DF4(&qword_1002E2448, &qword_1002497F0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = Schema.Unique.init(_:)();
  *(&v49 + 1) = v30;
  v50 = sub_100037D1C(&unk_1002E2450);
  *&v48 = v33;
  sub_100034A08();
  v34 = v44;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  if (*(v24 + 16) >= *(v24 + 24) >> 1)
  {
    sub_100034AD8();
    v24 = v37;
  }

  v35 = sub_100038110();
  v26(v35, v34);
  *&v48 = v43;
  sub_1001DD394(v24);
  sub_100036320();
}

uint64_t sub_1001E9968(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1001E99A8(a1);
  return v5;
}

void *sub_1001E99A8(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[7] = sub_100099DF4(&qword_1002E23F8, &qword_100249480);
  sub_100037DD8();
  sub_100037CD4(v5);
  sub_1000351AC();
  v2[8] = swift_getOpaqueTypeConformance2();
  sub_100007914(v2 + 4);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 8) = 257;
  *(v2 + 18) = 1;
  v6 = v2[8];
  sub_10000C4FC(v2 + 4, v2[7]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 19) = 16843009;
  *(v2 + 23) = 257;
  ObservationRegistrar.init()();
  *(v2 + 24) = 0;
  v2[2] = 0;
  sub_1000334B8();
  sub_100004118(v2 + 4);
  sub_10000601C(a1, (v2 + 4));
  swift_endAccess();
  return v2;
}

uint64_t sub_1001E9B40()
{
  sub_100004118(v0 + 4);
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers8SchemaV222PrivateIdentifierModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000307C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t _s22PrivateIdentifierModelCMa_0()
{
  result = qword_1002E22B8;
  if (!qword_1002E22B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E9C30()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1001E9D14(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x6C61636F6CLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0x7665446C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001E9DC4(uint64_t a1, char a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 2:
        sub_10002F438();
        result = v6 + 5;
        break;
      case 3:
        sub_10002F438();
        result = v7 | 4;
        break;
      case 4:
        sub_10002F438();
        result = v5 + 3;
        break;
      case 5:
        sub_10002F438();
        result = v8 | 8;
        break;
      default:
        result = sub_100038084();
        break;
    }
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(v9, "futureUnknown(");
    HIBYTE(v9[1]) = -18;
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v2);

    v3._countAndFlagsBits = 41;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    return v9[0];
  }

  return result;
}

uint64_t sub_1001E9F1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1001E7744();
}

Swift::Int sub_1001EA814()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100037DD8();
  sub_100037CD4(v2);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1001EA8E0(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_1001DF1F8(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001512EC(v1 + 32, v3);
  return sub_1000371C0;
}

uint64_t sub_1001EA998()
{
  v1 = *v0;
  sub_100037CD4(&qword_1002E1890);
  return PersistentModel.hash(into:)();
}

uint64_t sub_1001EAA0C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_100037CD4(&qword_1002E1890);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_1001EABF4()
{
  result = qword_1002E2410;
  if (!qword_1002E2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2410);
  }

  return result;
}

unint64_t sub_1001EAC48()
{
  result = qword_1002E2420;
  if (!qword_1002E2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2420);
  }

  return result;
}

_BYTE *_s24KeypairsModificationKindOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001EADD0()
{
  result = qword_1002E2458;
  if (!qword_1002E2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2458);
  }

  return result;
}

unint64_t sub_1001EAE24()
{
  result = qword_1002E2460;
  if (!qword_1002E2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2460);
  }

  return result;
}

unint64_t sub_1001EAE78()
{
  result = qword_1002E2468;
  if (!qword_1002E2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2468);
  }

  return result;
}

unint64_t sub_1001EAECC()
{
  result = qword_1002E2478;
  if (!qword_1002E2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2478);
  }

  return result;
}

unint64_t sub_1001EAF20()
{
  result = qword_1002E2480;
  if (!qword_1002E2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2480);
  }

  return result;
}

unint64_t sub_1001EAF74()
{
  result = qword_1002E2490;
  if (!qword_1002E2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2490);
  }

  return result;
}

unint64_t sub_1001EAFC8()
{
  result = qword_1002E24A0;
  if (!qword_1002E24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E24A0);
  }

  return result;
}

_BYTE *_s30ScheduledRotationConfigurationV19JitterConfigurationV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s30ScheduledRotationConfigurationV10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001EB1D8()
{
  result = qword_1002E24B0;
  if (!qword_1002E24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E24B0);
  }

  return result;
}

unint64_t sub_1001EB230()
{
  result = qword_1002E24B8;
  if (!qword_1002E24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E24B8);
  }

  return result;
}

unint64_t sub_1001EB288()
{
  result = qword_1002E24C0;
  if (!qword_1002E24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E24C0);
  }

  return result;
}

unint64_t sub_1001EB2E0()
{
  result = qword_1002E24C8;
  if (!qword_1002E24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E24C8);
  }

  return result;
}

unint64_t sub_1001EB338()
{
  result = qword_1002E24D0;
  if (!qword_1002E24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E24D0);
  }

  return result;
}

unint64_t sub_1001EB390()
{
  result = qword_1002E24D8;
  if (!qword_1002E24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E24D8);
  }

  return result;
}

uint64_t sub_1001EB404()
{
  sub_100099DF4(&qword_1002E1FD8, &unk_100248B20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002329D0;
  v1 = _s20GlobalSyncStateModelCMa_0();
  v2 = sub_100038174(&qword_1002E1AD8, _s20GlobalSyncStateModelCMa_0);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = _s22PrivateIdentifierModelCMa_0();
  v4 = sub_100038174(&qword_1002E1890, _s22PrivateIdentifierModelCMa_0);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = _s29PrivateIdentifierHistoryModelCMa();
  v6 = sub_100038174(&qword_1002E15F0, _s29PrivateIdentifierHistoryModelCMa);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

uint64_t sub_1001EB538()
{
  sub_100099DF4(&qword_1002E24F0, &unk_100249DE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002329F0;
  v1 = sub_1001EB6C0();
  *(v0 + 32) = &type metadata for SchemaV1;
  *(v0 + 40) = v1;
  v2 = sub_1001DABAC();
  *(v0 + 48) = &type metadata for SchemaV2;
  *(v0 + 56) = v2;
  return v0;
}

uint64_t sub_1001EB5A8()
{
  sub_100099DF4(&qword_1002E24E0, &qword_100249DD8);
  v0 = type metadata accessor for MigrationStage();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10022E400;
  v5 = (v4 + v3);
  v6 = sub_1001EB6C0();
  v7 = sub_1001DABAC();
  *v5 = &type metadata for SchemaV1;
  v5[1] = v6;
  v5[2] = &type metadata for SchemaV2;
  v5[3] = v7;
  (*(v1 + 104))(v5, enum case for MigrationStage.lightweight(_:), v0);
  return v4;
}

unint64_t sub_1001EB6C0()
{
  result = qword_1002E24E8;
  if (!qword_1002E24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E24E8);
  }

  return result;
}

uint64_t sub_1001EB714(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

BOOL sub_1001EB770(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = *a1;
    v11 = *a1 == *a2 && v4 == v7;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v5 == v8 && v6 == v9;
  return (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && a1[4] == a2[4] && a1[5] == a2[5];
}

void sub_1001EB838()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v4 = v0[5];
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_1001EB8C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = v0[4];
  v5 = v0[5];
  String.hash(into:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1001EB974()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

unint64_t sub_1001EBA28()
{
  result = qword_1002E24F8[0];
  if (!qword_1002E24F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002E24F8);
  }

  return result;
}

uint64_t sub_1001EBA7C()
{
  _StringGuts.grow(_:)(56);
  v1._countAndFlagsBits = 60;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x8000000100249E00;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x80000001002778D0;
  String.append(_:)(v3);
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = v0[3];
  v8._countAndFlagsBits = sub_1001ECC0C();
  String.append(_:)(v8);

  v9._object = 0x8000000100276B00;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  v10 = v0[4];
  v11 = v0[5];
  v12._countAndFlagsBits = PIGenerationCounter.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0;
}

uint64_t sub_1001EBB8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_1001EBC20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_22:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 255;
}

void sub_1001EBD7C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v6 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1001EBF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;
  sub_1000038DC();
  v63 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v54 - v10;
  __chkstk_darwin(v11);
  v59 = &v54 - v12;
  __chkstk_darwin(v13);
  v55 = &v54 - v14;
  v60 = v15;
  v16 = type metadata accessor for PersistenceError();
  sub_1000038DC();
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v54 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1000038DC();
  v56 = v28;
  v30 = *(v29 + 64);
  v32 = __chkstk_darwin(v31);
  v34 = &v54 - v33;
  v36 = &v54 + *(v35 + 48) - v33;
  v37 = *(v18 + 16);
  v37(&v54 - v33, v61, v16, v32);
  (v37)(v36, v62, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v37)(v26, v34, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v49 = v63;
      v50 = v55;
      (*(v63 + 32))(v55, v36, a3);
      v51 = *(v60 + 8);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v49 + 8);
      v52(v50, a3);
      v52(v26, a3);
      goto LABEL_11;
    }

    (*(v63 + 8))(v26, a3);
    goto LABEL_8;
  }

  (v37)(v23, v34, v16);
  v38 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v48 = *(v63 + 8);
    v48(&v23[v38], a3);
    v48(v23, a3);
LABEL_8:
    v47 = 0;
    v18 = v56;
    v16 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  v39 = v63;
  v40 = *(v63 + 32);
  v40(v59, v36, a3);
  v40(v58, &v23[v38], a3);
  v40(v57, &v36[v38], a3);
  v41 = v59;
  v42 = *(v60 + 8);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v39 + 8);
  v44(v23, a3);
  if (v43)
  {
    v46 = v57;
    v45 = v58;
    v47 = dispatch thunk of static Equatable.== infix(_:_:)();
    v44(v46, a3);
    v44(v45, a3);
    v44(v41, a3);
  }

  else
  {
    v44(v57, a3);
    v44(v58, a3);
    v44(v41, a3);
    v47 = 0;
  }

LABEL_11:
  (*(v18 + 8))(v34, v16);
  return v47 & 1;
}

uint64_t sub_1001EC4BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001EC4FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001EC54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a1 == a5 && a2 == a6;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

LABEL_8:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001EC5F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = sub_100099DF4(&qword_1002E2598, &qword_10024A0A8);
  v8 = sub_100003724(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = v17 - v13;
  v15 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001ECD08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_1001EC764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return String.hash(into:)();
}

Swift::Int sub_1001EC7E8()
{
  sub_10003821C();
  Hasher.init(_seed:)();
  if (v0)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EC870(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002E2588, &qword_10024A0A0);
  v4 = sub_100003724(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_1001ECD08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v9 = sub_100002960();
    v10(v9);
  }

  sub_100004118(a1);
  return v7;
}

uint64_t sub_1001ECA30(uint64_t a1)
{
  v2 = sub_1001ECD08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001ECA6C(uint64_t a1)
{
  v2 = sub_1001ECD08();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001ECAA8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1001EC7E8();
}

uint64_t sub_1001ECAB4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1001EC764(a1, *v1, v1[1]);
}

Swift::Int sub_1001ECAC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001ECB48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001EC870(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1001ECBB8()
{
  result = qword_1002E2580;
  if (!qword_1002E2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2580);
  }

  return result;
}

unint64_t sub_1001ECC0C()
{
  sub_10003821C();
  _StringGuts.grow(_:)(38);

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v3 = 7104878;
    v4 = 0xE300000000000000;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x617073656D616E20;
  v6._object = 0xEB000000003D6563;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v1;
  v7._object = v0;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD00000000000002FLL;
}

unint64_t sub_1001ECCFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1001ECC0C();
}

unint64_t sub_1001ECD08()
{
  result = qword_1002E2590;
  if (!qword_1002E2590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2590);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersistedIdentifierRecordID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001ECE3C()
{
  result = qword_1002E25A0;
  if (!qword_1002E25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E25A0);
  }

  return result;
}

unint64_t sub_1001ECE94()
{
  result = qword_1002E25A8;
  if (!qword_1002E25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E25A8);
  }

  return result;
}

unint64_t sub_1001ECEEC()
{
  result = qword_1002E25B0;
  if (!qword_1002E25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E25B0);
  }

  return result;
}

uint64_t sub_1001ECF50(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v97 = a8;
  v98 = a5;
  v110 = a4;
  v109 = a3;
  v96 = a1;
  v108 = type metadata accessor for Logger();
  v105 = *(v108 - 8);
  v13 = *(v105 + 64);
  __chkstk_darwin(v108);
  v107 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v93 - v16;
  v17 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v106 = *(v17 - 8);
  v18 = *(v106 + 64);
  __chkstk_darwin(v17 - 8);
  v111 = (&v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v100 = (&v93 - v21);
  v22 = type metadata accessor for PIDeviceKeypair(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v27 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v103 = &v93 - v29;
  v30 = type metadata accessor for PIAccountKeypair();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v104 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E6944();
  v34 = v33;
  v36 = v35;
  v102 = a2;
  sub_1001E6AA0(v33);

  if (!v36)
  {
    v39 = 0xE300000000000000;
LABEL_10:
    v53 = v39;
    swift_bridgeObjectRetain_n();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v101 = a7;
      v114[0] = v57;
      *v56 = 136315394;
      *(v56 + 4) = sub_100009E5C(a6, v101, v114);
      *(v56 + 12) = 2080;
      if (v36)
      {
        v58 = v34;
      }

      else
      {
        v58 = 7104878;
      }

      v59 = sub_100009E5C(v58, v53, v114);

      *(v56 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v54, v55, "Persisted identifier record has account identifier that differs from personalized key's account identifier when creating mapping: keyAccountIdentifier=%s, recordAccountIdentifier=%s", v56, 0x16u);
      swift_arrayDestroy();
      a7 = v101;
    }

    v114[0] = a6;
    v114[1] = a7;
    v114[2] = v34;
    v114[3] = v36;
    v114[4] = 0;
    v114[5] = 0;
    v115 = 1;
    sub_1001FE928();
    result = swift_willThrowTypedImpl();
    *a10 = a6;
    *(a10 + 8) = a7;
    *(a10 + 16) = v34;
    *(a10 + 24) = v36;
    *(a10 + 40) = 0;
    *(a10 + 48) = 1;
    return result;
  }

  if (v34 != a6 || v36 != a7)
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v39 = v36;
    if ((v38 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v94 = a6;
  v101 = a7;

  v40 = v110;
  v41 = v98;
  sub_1001EDB2C(v104, v110, v98);
  v43 = v42;
  v44 = v99;
  v45 = sub_1001EE018(v25, v40, v41);
  v93 = a9;
  if (v44)
  {
    ErrorValue = swift_getErrorValue();
    v47 = v113;
    v48 = *(*(v113 - 8) + 64);
    v49 = __chkstk_darwin(ErrorValue);
    v51 = &v93 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51, v49);
    sub_1001CBC4C(v51, v47, __src);

    memcpy(v103, __src, 0x60uLL);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v61 = v45;
    sub_100039FFC();
    sub_100039FFC();
    swift_storeEnumTagMultiPayload();
    if (v43)
    {
    }

    else
    {
      v43 = v61;
    }
  }

  v62 = v109;
  v63 = v105;
  v64 = v100;
  if (v109)
  {
    if (v43)
    {
      v65 = v95;
      v66 = v110;
      (*(v105 + 16))(v95, v110, v108);
      swift_retain_n();

      sub_1001EE4B4(v43, v65, v112, v64);
      sub_1001DEAE0();
      v67 = v68;
      v69 = v68[2];
      v70 = v69 + 1;
      if (v69 >= v68[3] >> 1)
      {
LABEL_42:
        sub_1001DEAE0();
        v67 = v92;
      }

      v100 = v43;

      v67[2] = v70;
      v71 = v67 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
      v72 = *(v106 + 72);
      sub_100039FFC();
    }

    else
    {
      v100 = 0;

      v67 = _swiftEmptyArrayStorage;
      v66 = v110;
    }

    v70 = sub_1000044BC(v62);
    v73 = 0;
    v105 = v62 & 0xC000000000000001;
    v43 = v62 & 0xFFFFFFFFFFFFFF8;
    v74 = (v63 + 16);
    while (v70 != v73)
    {
      if (v105)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v73 >= *(v43 + 16))
        {
          goto LABEL_41;
        }

        v62 = *(v62 + 8 * v73 + 32);
      }

      if (__OFADD__(v73, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v75 = v107;
      (*v74)(v107, v66, v108);

      sub_1001EE4B4(v76, v75, v112, v111);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = v67[2];
        sub_1001DEAE0();
        v67 = v80;
      }

      v77 = v67[2];
      v63 = v77 + 1;
      if (v77 >= v67[3] >> 1)
      {
        sub_1001DEAE0();
        v67 = v81;
      }

      v67[2] = v63;
      v78 = v67 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v77;
      sub_100039FFC();
      ++v73;
      v62 = v109;
      v66 = v110;
    }
  }

  else
  {
    v100 = v43;
    v67 = 0;
  }

  v82 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
  v83 = v96;
  v84 = v96 + v82[5];
  v85 = v103;
  sub_10003D1E4();
  v86 = v83 + v82[6];
  v87 = v104;
  sub_100039EA8();
  v88 = v82[7];
  v89 = v101;

  v90 = v93;

  sub_1001EE9F4(v83 + v88);
  v91 = v83 + v82[8];
  sub_1001E7374();
  sub_100004E24(v85, &unk_1002E2800, &qword_100245380);
  sub_100039FA4(v87, type metadata accessor for PIAccountKeypair);
  *v83 = v94;
  v83[1] = v89;
  v83[2] = v97;
  v83[3] = v90;
  *(v83 + v82[9]) = v67;
  return v100;
}

void sub_1001EDB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v38 = v32 - v7;
  v8 = sub_100099DF4(&qword_1002E27B0, &qword_10024A370);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v32 - v10;
  v12 = type metadata accessor for P384.Signing.PrivateKey();
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E6944();
  v17 = v16;
  sub_1001E6AA0(v18);

  if (v17)
  {
    v37 = v15;
    v34 = v12;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = a1;
      v23 = v22;
      v39[0] = v22;
      *v21 = 136315138;
      sub_1001E6944();
      v36 = a3;
      v32[2] = v11;
      sub_1001E6AA0(v24);
      v25 = sub_1001ECC0C();
      v32[1] = v8;
      v27 = v26;

      v28 = sub_100009E5C(v25, v27, v39);

      *(v21 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: Loading existing account keypair", v21, 0xCu);
      sub_10003991C(v23);
      a1 = v33;
    }

    else
    {
    }

    sub_1001E6E58();
    v31 = v37;
    if (v30 >> 60 != 15)
    {
      v39[0] = v29;
      v39[1] = v30;
      P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
      (*(v35 + 32))(a1, v31, v34);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1001EE018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001E6944();
  v5 = sub_1001E6AA0(v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v34 = v5;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315138;

    v10 = sub_1001ECC0C();
    v11 = a2;
    v13 = v12;

    v14 = sub_100009E5C(v10, v13, &v40);
    a2 = v11;

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Loading existing device keypair", v8, 0xCu);
    sub_10003991C(v9);

    v5 = v34;
  }

  sub_1001E6EDC();
  if (v16 >> 60 == 15)
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136315138;
      v35 = a2;
      v21 = sub_1001ECC0C();
      v23 = v22;

      v24 = sub_100009E5C(v21, v23, &v40);

      *(v19 + 4) = v24;
      a2 = v35;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: Existing device keypair data is missing, generating new device keypair", v19, 0xCu);
      sub_10003991C(v20);
    }

    else
    {
    }

    type metadata accessor for PIDeviceKeypair(0);
    v32 = sub_1001F0B08(a1, a2, a3);
    if (!v38)
    {
      return v32;
    }
  }

  else
  {
    v25 = v15;
    v26 = v16;

    sub_10000FF98(v25, v26);
    sub_1001BA128(v25, v26, a1);
    if (v38)
    {
      swift_errorRetain();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v36 = a2;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to initialize device keypair from previously persisted raw data when accessing persisted identifier record: %@. Generating a new keypair.", v29, 0xCu);
        sub_100004E24(v30, &qword_1002E2700, &unk_1002474D0);

        a2 = v36;
      }

      type metadata accessor for PIDeviceKeypair(0);
      v5 = sub_1001F0B08(a1, a2, a3);

      sub_10009A7A0(v25, v26);
    }

    else
    {
      sub_10009A7A0(v25, v26);
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1001EE4B4@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a4;
  v7 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v60 - v9;
  v11 = type metadata accessor for PIAccountKeypair();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001EEDC0(v10);
  if (sub_100004DFC(v10, 1, v11) == 1)
  {
    sub_100004E24(v10, &qword_1002E27A8, &qword_10024A368);

    v71 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v60 = v21;
      v62 = swift_slowAlloc();
      v63[0] = v62;
      *v21 = 136315138;
      sub_1001E46D8();
      v61 = v20;
      v23 = v22;
      v25 = v24;
      v26 = sub_1001E44DC(v22);
      v28 = v27;
      v29 = sub_1001E4880();
      v30 = sub_1001E48E4();
      v65 = v23;
      v66 = v25;
      v67 = v26;
      v68 = v28;
      v69 = v29;
      v70 = v30;
      v31 = sub_1001EBA7C();
      v33 = v32;

      v34 = sub_100009E5C(v31, v33, v63);

      v35 = v60;
      *(v60 + 1) = v34;
      _os_log_impl(&_mh_execute_header, v19, v61, "Attempting to create a history item for a personalized mapping from a persisted history item that is missing an account keypair, persistedHistoryItem.id=%s", v35, 0xCu);
      sub_10003991C(v62);
    }

    else
    {
    }

    sub_1001E46D8();
    v50 = v49;
    v52 = v51;
    v53 = sub_1001E44DC(v49);
    v55 = v54;
    v56 = sub_1001E4880();
    v57 = sub_1001E48E4();
    v63[0] = v50;
    v63[1] = v52;
    v63[2] = v53;
    v63[3] = v55;
    v63[4] = v56;
    v63[5] = v57;
    v64 = 2;
    sub_1001FE928();
    swift_willThrowTypedImpl();

    v58 = type metadata accessor for Logger();
    result = (*(*(v58 - 8) + 8))(v71, v58);
    *a3 = v50;
    *(a3 + 8) = v52;
    *(a3 + 16) = v53;
    *(a3 + 24) = v55;
    *(a3 + 32) = v56;
    *(a3 + 40) = v57;
    *(a3 + 48) = 2;
  }

  else
  {
    sub_100039FFC();
    v36 = v15[6];
    sub_100039EA8();
    sub_1001E46D8();

    sub_1001E44DC(v37);

    v38 = sub_1001E4880();
    v39 = sub_1001E48E4();
    *v18 = v38;
    v18[1] = v39;
    __chkstk_darwin(v39);
    *(&v60 - 2) = a1;
    *(&v60 - 1) = a2;
    v40 = v18 + v15[5];
    sub_100038230(sub_100039F00, (&v60 - 4), &unk_1002E2800, &qword_100245380);
    v41 = v18 + v15[7];
    v42 = sub_1001E4830();
    sub_1001E4A00(v42);
    sub_1001CCE80();
    v43 = v18 + v15[8];
    *v43 = v44;
    v43[8] = v45 & 1;
    v46 = sub_1001E4AD8(v44);

    result = sub_100039FA4(v14, type metadata accessor for PIAccountKeypair);
    v48 = 0;
    switch(v46)
    {
      case 1:
        goto LABEL_10;
      case 2:
        v48 = 1;
        goto LABEL_10;
      case 3:
        v48 = 2;
        goto LABEL_10;
      case 4:
        v48 = 3;
LABEL_10:
        *(v18 + v15[9]) = v48;
        sub_100039FFC();
        v59 = type metadata accessor for Logger();
        result = (*(*(v59 - 8) + 8))(a2, v59);
        break;
      default:
        __break(1u);
        break;
    }
  }

  return result;
}

uint64_t sub_1001EE9F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v49 = type metadata accessor for Date();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v49);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v48 = type metadata accessor for UUID();
  v14 = *(v48 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v48);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E6F78(v18);
  sub_1001CCE80();
  v47 = v19;
  v46 = v20;
  result = sub_1001E7098(v19);
  v22 = 0;
  switch(result)
  {
    case 1:
      goto LABEL_5;
    case 2:
      v22 = 1;
      goto LABEL_5;
    case 3:
      v22 = 2;
      goto LABEL_5;
    case 4:
      v22 = 3;
LABEL_5:
      v38 = sub_1001E6DFC();
      v37 = sub_1001E6E08();
      sub_1001E68AC();
      sub_1001E725C();
      sub_1001E6D10();
      sub_1001E7374();
      sub_1001E7340();
      sub_1001E7464(v50);
      v45 = v51 & 1;
      if (v51)
      {
        v23 = -1;
      }

      else
      {
        v23 = 0;
      }

      v24 = vdupq_n_s64(v23);
      v43 = vbicq_s8(v50[1], v24);
      v44 = vbicq_s8(v50[0], v24);
      v42 = sub_1001E7648();
      v41 = v25;
      v40 = sub_1001E76B8();
      v39 = v26;

      *a1 = v47;
      *(a1 + 8) = v46 & 1;
      *(a1 + 9) = v22;
      v27 = v37;
      *(a1 + 16) = v38;
      *(a1 + 24) = v27;
      v28 = type metadata accessor for PIPrivateIdentifierMetadata();
      (*(v14 + 32))(a1 + v28[7], v17, v48);
      v29 = *(v4 + 32);
      v30 = v13;
      v31 = v49;
      v29(a1 + v28[8], v30, v49);
      v29(a1 + v28[9], v10, v31);
      v29(a1 + v28[10], v7, v31);
      v32 = v28[11];
      result = sub_100012D44();
      v33 = (a1 + v28[12]);
      v34 = v43;
      *v33 = v44;
      v33[1] = v34;
      v33[2].i8[0] = v45;
      v35 = a1 + v28[13];
      *v35 = v42;
      *(v35 + 8) = v41 & 1;
      v36 = a1 + v28[14];
      *v36 = v40;
      *(v36 + 8) = v39 & 1;
      break;
    default:
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1001EEDC0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PIAccountKeypair();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for P384.Signing.PrivateKey();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1;
  sub_1001E4948();
  if (v11 >> 60 == 15)
  {

    return sub_100002728(a1, 1, 1, v3);
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v17 = a1;
    v19 = v10;
    v20 = v11;
    sub_1001D035C(v10, v11);
    P384.Signing.PrivateKey.init<A>(rawRepresentation:)();
    v15 = v17;
    (*(v6 + 32))(v17, v9, v5);
    sub_100002728(v15, 0, 1, v3);
    return sub_10009A7A0(v13, v14);
  }
}

uint64_t sub_1001EF0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v5 = type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  __chkstk_darwin(v5);
  v42 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v38 - v9;
  v11 = type metadata accessor for PIDeviceKeypair.SEP(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v39 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v38 - v15;
  v47 = type metadata accessor for PIDeviceKeypair(0);
  v17 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v38[1] = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v43 = v38 - v20;
  __chkstk_darwin(v21);
  v44 = v38 - v22;
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v46 = v2;
  sub_1001E49A4();
  if (v27 >> 60 != 15)
  {
    v29 = v26;
    v30 = v27;
    sub_10000FF98(v26, v27);
    sub_1001BA128(v29, v30, a2);
    if (!v3)
    {
      return sub_10009A7A0(v29, v30);
    }

    v31 = v29;
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to initialize device keypair from previously persisted raw data when accessing persisted history item: %@. Generating a new keypair.", v34, 0xCu);
      sub_100004E24(v35, &qword_1002E2700, &unk_1002474D0);
    }

    if (static SecureEnclave.isAvailable.getter())
    {
      result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
      if (!result)
      {
        goto LABEL_20;
      }

      v37 = v42;
      SecureEnclave.P384.Signing.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
      (*(v40 + 32))(v39, v37, v41);
      sub_100039FFC();
      swift_storeEnumTagMultiPayload();
      sub_100039FFC();
    }

    else
    {
      P384.Signing.PrivateKey.init(compactRepresentable:)();
      swift_storeEnumTagMultiPayload();
    }

    sub_100039FFC();
    sub_1001BA3B8();
    sub_1001E49E0();
    sub_10009A7A0(v31, v30);

    return sub_100039FFC();
  }

  if (static SecureEnclave.isAvailable.getter())
  {
    result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
    if (result)
    {
      result = SecureEnclave.P384.Signing.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
      if (v3)
      {
        return result;
      }

      (*(v40 + 32))(v16, v10, v41);
      sub_100039FFC();
      swift_storeEnumTagMultiPayload();
      sub_100039FFC();
      goto LABEL_13;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  P384.Signing.PrivateKey.init(compactRepresentable:)();
  swift_storeEnumTagMultiPayload();
LABEL_13:
  sub_100039FFC();
  sub_1001BA3B8();
  sub_1001E49E0();
  return sub_100039FFC();
}

uint64_t sub_1001EF6D8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t **a8)
{
  v139 = a8;
  v121 = a6;
  v122 = a7;
  v128 = a5;
  v134 = a3;
  v135 = a4;
  v120 = a1;
  v133 = type metadata accessor for Logger();
  v126 = *(v133 - 8);
  v9 = *(v126 + 64);
  __chkstk_darwin(v133);
  v132 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v125 = &v116 - v12;
  v136 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping.HistoryItem(0);
  v131 = *(v136 - 8);
  v13 = *(v131 + 64);
  __chkstk_darwin(v136);
  v140 = (&v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v116 - v16);
  v18 = type metadata accessor for PIDeviceKeypair(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v127 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v22 = sub_100099DF4(&unk_1002E2800, &qword_100245380);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v116 - v27;
  __chkstk_darwin(v29);
  v31 = &v116 - v30;
  sub_1001E6944();
  v138 = v32;
  v34 = v33;
  sub_1001E6AA0(v32);

  if (v34)
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v141[0] = v38;
      *v37 = 136315138;
      v39 = v138;
      *(v37 + 4) = sub_100009E5C(v138, v34, v141);
      _os_log_impl(&_mh_execute_header, v35, v36, "Persisted identifier record unexpectedly has account identifier when creating mapping for unpersonalized key: %s", v37, 0xCu);
      sub_10003991C(v38);
    }

    else
    {

      v39 = v138;
    }

    v141[0] = v39;
    v141[1] = v34;
    sub_1001FE928();
    v142 = 0u;
    v143 = 0u;
    v144 = 0;
    swift_willThrowTypedImpl();
    v56 = v139;
    *v139 = v39;
    v56[1] = v34;
    *(v56 + 1) = 0u;
    *(v56 + 2) = 0u;
    *(v56 + 48) = 0;
    return v34;
  }

  v138 = v17;
  v129 = v28;
  v130 = v22;
  v124 = v25;
  v119 = v31;
  v40 = v135;
  v41 = v137;
  v42 = sub_1001EE018(v127, v135, v128);
  v118 = a2;
  if (!v41)
  {
    v117 = v42;
    v139 = 0;
    sub_100039FFC();
    sub_100039FFC();
    swift_storeEnumTagMultiPayload();
    v34 = v134;
    v50 = v124;
    if (!v134)
    {
      v138 = 0;
LABEL_40:
      v74 = v121;
      v73 = v122;
      v34 = v117;
      goto LABEL_41;
    }

    v57 = v117;
    if (v117)
    {
      v58 = v125;
      (*(v126 + 16))(v125, v40, v133);
      swift_retain_n();

      sub_1001E46D8();

      sub_1001E44DC(v59);

      v60 = sub_1001E4880();
      v61 = sub_1001E48E4();
      v62 = v138;
      *v138 = v60;
      v62[1] = v61;
      __chkstk_darwin(v61);
      *(&v116 - 2) = v57;
      *(&v116 - 1) = v58;
      v63 = v136;
      v64 = v62 + *(v136 + 20);
      sub_100038230(sub_10003A3F4, (&v116 - 4), &unk_1002E2800, &qword_100245380);
      v65 = v62 + v63[6];
      v66 = sub_1001E4830();
      sub_1001E4A00(v66);
      sub_1001CCE80();
      v67 = v62 + v63[7];
      *v67 = v68;
      v67[8] = v69 & 1;
      LOBYTE(v60) = sub_1001E4AD8(v68);

      v71 = 0;
      v72 = v60;
      v53 = v131;
      switch(v72)
      {
        case 1:
          goto LABEL_18;
        case 2:
          v71 = 1;
          goto LABEL_18;
        case 3:
          v71 = 2;
          goto LABEL_18;
        case 4:
          v71 = 3;
LABEL_18:
          *(v62 + v63[8]) = v71;
          v54 = v133;
          (*(v126 + 8))(v125, v133);
          sub_1001DEBB8();
          v76 = v75[2];
          v77 = v75;
          v52 = v76 + 1;
          v55 = v132;
          if (v76 < v75[3] >> 1)
          {
            goto LABEL_19;
          }

          goto LABEL_45;
        default:
LABEL_47:
          __break(1u);
          return result;
      }
    }

LABEL_7:
    v51 = v136;
    v52 = v126;

    v117 = 0;
    v53 = _swiftEmptyArrayStorage;
    v55 = v132;
    v54 = v133;
    while (1)
    {
      v128 = sub_1000044BC(v34);
      if (!v128)
      {
        break;
      }

      v80 = 0;
      v123 = v34 & 0xFFFFFFFFFFFFFF8;
      v126 = v52 + 16;
      v127 = v34 & 0xC000000000000001;
      v125 = (v52 + 8);
      while (1)
      {
        if (v127)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v80 >= *(v123 + 16))
          {
            goto LABEL_44;
          }

          v52 = *(v34 + 8 * v80 + 32);
        }

        v34 = &qword_100245380;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        v137 = v80 + 1;
        v138 = v53;
        (*v126)(v55, v135, v54);

        sub_1001E46D8();

        sub_1001E44DC(v81);

        v82 = sub_1001E4880();
        v83 = sub_1001E48E4();
        v84 = v139;
        v85 = v140;
        *v140 = v82;
        v85[1] = v83;
        sub_1001EF0E0(v55, v50);
        if (v84)
        {
          ErrorValue = swift_getErrorValue();
          v87 = v145;
          v88 = *(*(v145 - 8) + 64);
          v89 = __chkstk_darwin(ErrorValue);
          v91 = &v116 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v92 + 16))(v91, v89);
          v93 = v91;
          v51 = v136;
          v85 = v140;
          sub_1001CBC4C(v93, v87, __src);
          v50 = v124;

          memcpy(v129, __src, 0x60uLL);
          swift_storeEnumTagMultiPayload();
          v139 = 0;
        }

        else
        {
          v139 = 0;
          swift_storeEnumTagMultiPayload();
          sub_100012D44();
        }

        v94 = v51[5];
        sub_100012D44();
        v95 = v85 + v51[6];
        v96 = sub_1001E4830();
        v97 = sub_1001E4A00(v96);
        v98 = v85 + v51[7];
        *v98 = v97;
        v98[8] = v99 & 1;
        v100 = sub_1001E4AD8(v97);

        v101 = 0;
        v55 = v132;
        v54 = v133;
        switch(v100)
        {
          case 1:
            break;
          case 2:
            v101 = 1;
            break;
          case 3:
            v101 = 2;
            break;
          case 4:
            v101 = 3;
            break;
          default:
            __break(1u);
            goto LABEL_47;
        }

        *(v140 + v51[8]) = v101;
        (*v125)(v55, v54);
        v102 = v138;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = v102[2];
          sub_1001DEBB8();
          v102 = v107;
        }

        v103 = v102[2];
        v104 = v102;
        if (v103 >= v102[3] >> 1)
        {
          sub_1001DEBB8();
          v104 = v108;
        }

        v104[2] = v103 + 1;
        v53 = v104;
        v105 = v104 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v103;
        sub_100039FFC();
        ++v80;
        v51 = v136;
        v34 = v134;
        if (v137 == v128)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      sub_1001DEBB8();
      v77 = v115;
LABEL_19:

      v77[2] = v52;
      v78 = v77 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v79 = v53[9];
      v53 = v77;
      sub_100039FFC();
      v51 = v136;
      v52 = v126;
    }

LABEL_39:
    v138 = v53;

    goto LABEL_40;
  }

  v43 = swift_getErrorValue();
  v44 = v146;
  v45 = *(*(v146 - 8) + 64);
  v46 = __chkstk_darwin(v43);
  v48 = &v116 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v49 + 16))(v48, v46);
  sub_1001CBC4C(v48, v44, v147);

  memcpy(v119, v147, 0x60uLL);
  swift_storeEnumTagMultiPayload();
  v34 = v134;
  v50 = v124;
  if (v134)
  {
    v139 = 0;
    goto LABEL_7;
  }

  v138 = 0;
  v139 = 0;
  v74 = v121;
  v73 = v122;
LABEL_41:
  v109 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
  v110 = v109[5];
  v111 = v119;
  v112 = v120;
  sub_10003D1E4();
  v113 = v109[6];

  sub_1001EE9F4(v112 + v113);
  v114 = v112 + v109[7];
  sub_1001E7374();
  sub_100004E24(v111, &unk_1002E2800, &qword_100245380);
  *v112 = v74;
  v112[1] = v73;
  *(v112 + v109[8]) = v138;
  return v34;
}

uint64_t sub_1001F02C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  sub_1001E7374();
  sub_1000396D0(&qword_1002E27C0, &type metadata accessor for Date);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {

    v14 = v4[1];
    v14(a2, v3);
    v14(v13, v3);
    return 0;
  }

  else
  {
    v48 = _s29PrivateIdentifierHistoryModelCMa();
    sub_1001E6944();
    v17 = v16;
    v19 = v18;
    v20 = sub_1001E6AA0(v16);
    v42 = v10;
    v21 = v20;
    v45 = a2;
    v23 = v22;
    v24 = sub_1001E6DFC();
    v41 = v7;
    v25 = v24;
    v26 = sub_1001E6E08();
    v49[0] = v17;
    v49[1] = v19;
    v49[2] = v21;
    v49[3] = v23;
    v49[4] = v25;
    v49[5] = v26;
    sub_1001E6E58();
    v46 = v28;
    v47 = v27;
    sub_1001E6EDC();
    v43 = v30;
    v44 = v29;
    v31 = v4[2];
    v32 = v42;
    v31(v42, v13, v3);
    v33 = v41;
    v34 = v45;
    v35 = (v31)(v41, v45, v3);
    v36 = sub_1001E6F78(v35);
    LOBYTE(v31) = v37;
    v38 = sub_1001E7098(v36);
    v15 = sub_1001DCA60(v49, v47, v46, v44, v43, v32, v33, v36, v31 & 1, v38);

    v39 = v4[1];
    v39(v34, v3);
    v39(v13, v3);
  }

  return v15;
}

SecAccessControlRef sub_1001F0580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a2;
  v7 = type metadata accessor for SecureEnclave.P384.Signing.PrivateKey();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  __chkstk_darwin(v7);
  v45 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PIDeviceKeypair.SEP(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for PIDeviceKeypair(0);
  v13 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v47 = &v37 - v16;
  v17 = type metadata accessor for Date();
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v7;
    v24 = v23;
    v37 = swift_slowAlloc();
    v51 = v37;
    *v24 = 136315138;
    sub_1001E6944();
    v39 = a1;
    v40 = a3;
    sub_1001E6AA0(v25);
    v26 = sub_1001ECC0C();
    v41 = v3;
    v28 = v27;

    v29 = sub_100009E5C(v26, v28, &v51);
    v4 = v41;

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: Generating new device keypair", v24, 0xCu);
    sub_10003991C(v37);

    v7 = v38;
  }

  else
  {
  }

  (*(v48 + 16))(v20, v50, v49);
  sub_1001E73E8();
  if ((static SecureEnclave.isAvailable.getter() & 1) == 0)
  {
    P384.Signing.PrivateKey.init(compactRepresentable:)();
    swift_storeEnumTagMultiPayload();
LABEL_12:
    sub_100039FFC();
    sub_1001BA3B8();
    return sub_1001E6F3C();
  }

  result = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, 0, 0);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v31 = v45;
  SecureEnclave.P384.Signing.PrivateKey.init(compactRepresentable:accessControl:authenticationContext:)();
  if (!v4)
  {
    (*(v44 + 32))(v43, v31, v7);
    sub_100039FFC();
    swift_storeEnumTagMultiPayload();
    sub_100039FFC();
    goto LABEL_12;
  }

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
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed to generate device keypair: %@. Clearing device keypair data to try regenerating device keypair later.", v34, 0xCu);
    sub_100004E24(v35, &qword_1002E2700, &unk_1002474D0);
  }

  sub_1001E6F3C();
  return swift_willThrow();
}

uint64_t sub_1001F0B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v32 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v7;
    v15 = v14;
    v26 = swift_slowAlloc();
    v33 = v26;
    *v15 = 136315138;
    sub_1001E6944();
    v29 = a3;
    v30 = v3;
    sub_1001E6AA0(v16);
    v17 = sub_1001ECC0C();
    v27 = v8;
    v19 = v18;

    a3 = v29;

    v20 = v17;
    v4 = v30;
    v21 = sub_100009E5C(v20, v19, &v33);
    v8 = v27;

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: Attempting to rotate device keypair", v15, 0xCu);
    sub_10003991C(v26);

    v7 = v28;
  }

  else
  {
  }

  (*(v8 + 16))(v11, a3, v7);

  v23 = sub_1001F02C0(v22, v11);
  sub_1001E6DFC();
  result = sub_1001E6E08();
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    sub_1001E6E14();
    sub_1001E6E34();
    sub_1001E7170(4);
    sub_1001F0580(v32, a3, v31);
    if (v4)
    {
    }

    return v23;
  }

  return result;
}

uint64_t sub_1001F0DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E27B8, &unk_10024A378);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a1;
    v16 = v15;
    v28 = swift_slowAlloc();
    v33 = v28;
    *v16 = 136315138;
    sub_1001E6944();
    v31 = a2;
    v29 = v8;
    sub_1001E6AA0(v17);
    v18 = sub_1001ECC0C();
    v32 = v7;
    v20 = v19;

    v8 = v29;

    v21 = v18;
    a2 = v31;
    v22 = sub_100009E5C(v21, v20, &v33);
    v7 = v32;

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Attempting to rotate device keypair", v16, 0xCu);
    sub_10003991C(v28);

    a1 = v30;
  }

  else
  {
  }

  (*(v9 + 16))(v12, a2, v8);

  v24 = sub_1001F02C0(v23, v12);
  sub_1001E6DFC();
  result = sub_1001E6E08();
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    sub_1001E6E14();
    sub_1001E6E34();
    sub_1001E7170(4);
    sub_1001F0580(a1, a2, v7);
    v26 = type metadata accessor for PIDeviceKeypair(0);
    sub_100002728(v7, 0, 1, v26);
    sub_100004E24(v7, &qword_1002E27B8, &unk_10024A378);
    return v24;
  }

  return result;
}

unint64_t sub_1001F10D4(unint64_t a1, unint64_t a2)
{
  v4 = sub_1001E6DFC();
  result = sub_1001E6E08();
  v6 = result > a2;
  if (v4 != a1)
  {
    v6 = v4 > a1;
  }

  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1001E6E14();

    return sub_1001E6E34();
  }

  return result;
}

uint64_t sub_1001F1144(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 16);
  v8(v7, a1, v2, v5);
  sub_1001E6DA8();
  (v8)(v7, a1, v2);
  sub_1001E72D0();
  (v8)(v7, a1, v2);
  return sub_1001E73E8();
}

uint64_t sub_1001F1254(uint64_t a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v55 = a7;
  v56 = a2;
  v57 = a6;
  v52 = a4;
  v53 = a5;
  v12 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v50 - v14;
  v16 = sub_100099DF4(&qword_1002E27B8, &unk_10024A378);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v61 = &v50 - v18;
  v58 = type metadata accessor for Date();
  v60 = *(v58 - 8);
  v19 = *(v60 + 64);
  __chkstk_darwin(v58);
  v59 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v54 = a8;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v62[0] = v24;
    *v23 = 136315138;
    sub_1001E6944();
    v51 = a3;
    sub_1001E6AA0(v25);
    v26 = sub_1001ECC0C();
    v50 = a1;
    v27 = v15;
    v29 = v28;

    v30 = sub_100009E5C(v26, v29, v62);
    v15 = v27;
    a1 = v50;

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: Setting new account keypair", v23, 0xCu);
    sub_10003991C(v24);
  }

  else
  {
  }

  sub_1001E6944();
  v32 = v31;
  sub_1001E6AA0(v33);

  v34 = type metadata accessor for PIAccountKeypair();
  result = sub_100004DFC(a1, 1, v34);
  v36 = v58;
  if (v32)
  {
    if (result != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (result != 1)
  {
    __break(1u);
    return result;
  }

LABEL_9:
  v37 = sub_1001E6DFC();
  v38 = sub_1001E6E08();
  v39 = v52;
  v40 = v38 < v53;
  if (v37 != v52)
  {
    v40 = v37 < v52;
  }

  if (v40)
  {
    v41 = v59;
    v42 = v53;
    (*(v60 + 16))(v59, a9, v36);

    v44 = sub_1001F02C0(v43, v41);
    sub_1001F10D4(v39, v42);
  }

  else
  {
    v44 = 0;
  }

  sub_1001F0580(v54, a9, v61);
  v45 = type metadata accessor for PIDeviceKeypair(0);
  v46 = v61;
  sub_100002728(v61, 0, 1, v45);
  sub_100004E24(v46, &qword_1002E27B8, &unk_10024A378);
  sub_10003D1E4();
  v47 = type metadata accessor for PIAccountKeypair();
  if (sub_100004DFC(v15, 1, v47) == 1)
  {
    sub_100004E24(v15, &qword_1002E27A8, &qword_10024A368);
  }

  else
  {
    P384.Signing.PrivateKey.rawRepresentation.getter();
    sub_100039FA4(v15, type metadata accessor for PIAccountKeypair);
  }

  sub_1001E6EB8();
  v48 = v59;
  v49 = *(v60 + 16);
  v49(v59, a9, v36);
  sub_1001E6DA8();
  sub_1001E7074();
  sub_1001E7170(v57);
  v49(v48, v55, v36);
  sub_1001E72D0();
  sub_1001E7464(v62);
  if ((v63 & 1) == 0)
  {
    sub_1001CE3D0(*v62, *&v62[1], *&v62[2], *&v62[3]);
  }

  sub_1001E767C();
  return v44;
}

uint64_t sub_1001F1778(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v8) = a2;
  v10 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v40 - v12;
  result = sub_1001E7098(v14);
  if (result)
  {
    __break(1u);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = a1;
      v19 = v18;
      v20 = swift_slowAlloc();
      v45 = a4;
      *&v46[0] = v20;
      v21 = v20;
      *v19 = 136315138;
      sub_1001E6944();
      v42 = v8;
      v41 = v13;
      sub_1001E6AA0(v22);
      v8 = sub_1001ECC0C();
      v44 = a5;
      v24 = v23;

      v13 = v41;

      v25 = v8;
      LOBYTE(v8) = v42;
      v26 = sub_100009E5C(v25, v24, v46);
      a5 = v44;

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: Initializing newly created record", v19, 0xCu);
      sub_10003991C(v21);
      a4 = v45;

      a1 = v43;
    }

    else
    {
    }

    if (*a3 != 3)
    {
      v27 = v8;
      v28 = *(a3 + 48);
      v29 = *(a3 + 40) & 1;
      if (v29)
      {
        v30 = -1;
      }

      else
      {
        v30 = 0;
      }

      v31 = vdupq_n_s64(v30);
      v32 = v13;
      v33 = *(a3 + 56);
      v34 = vbicq_s8(*(a3 + 24), v31);
      v46[0] = vbicq_s8(*(a3 + 8), v31);
      v46[1] = v34;
      v47 = v29;
      sub_1001E7584(v46);
      v13 = v32;
      LOBYTE(v8) = v27;
      sub_1001E76C4();
    }

    sub_1001E6944();
    v36 = v35;
    sub_1001E6AA0(v37);

    if (v36)
    {

      P384.Signing.PrivateKey.init(compactRepresentable:)();
      v38 = type metadata accessor for PIAccountKeypair();
      v39 = 0;
    }

    else
    {
      v38 = type metadata accessor for PIAccountKeypair();
      v39 = 1;
    }

    sub_100002728(v13, v39, 1, v38);
    sub_1001F1254(v13, a1, v8 & 1, 0, 0, 1, a5, a4, a5);

    return sub_100004E24(v13, &qword_1002E27A8, &qword_10024A368);
  }

  return result;
}

uint64_t sub_1001F1A88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v37 - v12;
  result = sub_1001E7098(v14);
  if (result)
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v41 = a2;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v37 = a1;
      v20 = v19;
      v21 = swift_slowAlloc();
      v38 = v13;
      v22 = v21;
      v42 = v21;
      *v20 = 136315138;
      sub_1001E6944();
      v40 = a3;
      sub_1001E6AA0(v23);
      v24 = sub_1001ECC0C();
      v39 = a4;
      v25 = a5;
      v27 = v26;

      a3 = v40;

      v28 = sub_100009E5C(v24, v27, &v42);
      a5 = v25;
      a4 = v39;

      *(v20 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: Rotating both keypairs once", v20, 0xCu);
      sub_10003991C(v22);
      v13 = v38;

      a1 = v37;
    }

    else
    {
    }

    sub_1001E6944();
    v30 = v29;
    sub_1001E6AA0(v31);

    if (v30)
    {

      P384.Signing.PrivateKey.init(compactRepresentable:)();
      v32 = type metadata accessor for PIAccountKeypair();
      v33 = 0;
    }

    else
    {
      v32 = type metadata accessor for PIAccountKeypair();
      v33 = 1;
    }

    sub_100002728(v13, v33, 1, v32);
    v34 = sub_1001E6DFC();
    result = sub_1001E6E08();
    if (v34 != -1)
    {
      v35 = sub_1001F1254(v13, a1, v41 & 1, v34 + 1, 0, 1, a4, a3, a4);
      v36 = *(sub_100099DF4(&qword_1002E27B0, &qword_10024A370) + 60);
      result = sub_100012D44();
      *a5 = v35;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1001F1D78(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v71 = a5;
  v83 = a4;
  v78 = a2;
  v79 = a1;
  v6 = sub_100099DF4(&qword_1002E27A8, &qword_10024A368);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v67 - v10;
  v77 = sub_100099DF4(&qword_1002E27B0, &qword_10024A370);
  v12 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = (&v67 - v16);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = v18[8];
  __chkstk_darwin(v17);
  v74 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v73 = &v67 - v22;
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  __chkstk_darwin(v26);
  v28 = &v67 - v27;
  __chkstk_darwin(v29);
  v31 = &v67 - v30;
  if (!sub_1001E7098(v32))
  {
    __break(1u);
LABEL_42:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_35:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v80 = v85;
LABEL_36:
    v61 = *v31;
    (*v31)(v28, v17);
    v61(v84, v17);
    if (v14)
    {
      sub_100004E24(v18, &qword_1002E27B0, &qword_10024A370);
    }

    else
    {
      v63 = v18 + *(v77 + 60);
      v64 = v69;
      sub_10003D1E4();
      sub_100004E24(v18, &qword_1002E27B0, &qword_10024A370);
      v65 = type metadata accessor for PIAccountKeypair();
      sub_100004DFC(v64, 1, v65);
      sub_100004E24(v64, &qword_1002E27A8, &qword_10024A368);
    }

    return v80;
  }

  v33 = Logger.logObject.getter();
  LODWORD(v81) = static os_log_type_t.info.getter();
  v34 = os_log_type_enabled(v33, v81);
  v84 = v31;
  v69 = v11;
  v82 = a3;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v88[0] = v80;
    *v35 = 136315394;
    v75 = v33;
    sub_1001E6944();
    v36 = v18;
    sub_1001E6AA0(v37);
    v68 = sub_1001ECC0C();
    v39 = v38;

    v40 = sub_100009E5C(v68, v39, v88);
    v18 = v36;

    *(v35 + 4) = v40;
    *(v35 + 12) = 1024;
    *(v35 + 14) = v71 & 1;
    v41 = v75;
    _os_log_impl(&_mh_execute_header, v75, v81, "%s: Populating history since last rotation according to current rotation schedule, performRotationNow=%{BOOL}d", v35, 0x12u);
    sub_10003991C(v80);
  }

  else
  {
  }

  v80 = _swiftEmptyArrayStorage;
  v85 = _swiftEmptyArrayStorage;
  sub_1001E7374();
  sub_1001E6D10();
  v42 = 0;
  v31 = (v18 + 1);
  v81 = (v18 + 4);
  v72 = v14;
  while (1)
  {
    sub_1001E76B8();
    if (v43)
    {
      v44.n128_f64[0] = sub_1001E7464(v88);
      if (v89)
      {
        goto LABEL_32;
      }

      sub_1001E7648();
      if (v45)
      {
        goto LABEL_32;
      }

      static Date.+ infix(_:_:)();
      v46 = 0;
    }

    else
    {
      sub_1001E7464(v86);
      if (v87 & 1) != 0 || (sub_1001E7648(), (v47))
      {
        static Date.+ infix(_:_:)();
        v46 = 1;
      }

      else
      {
        LODWORD(v75) = v42;
        v48 = v17;
        v49 = v73;
        static Date.+ infix(_:_:)();
        v50 = v74;
        static Date.+ infix(_:_:)();
        v51 = static Date.< infix(_:_:)();
        v52 = *v31;
        (*v31)(v50, v48);
        v53 = v49;
        v17 = v48;
        v52(v53, v48);
        static Date.+ infix(_:_:)();
        v46 = (v51 & 1) != 0;
        v14 = v72;
        v42 = v75;
      }
    }

    if (static Date.> infix(_:_:)())
    {
      break;
    }

    if (!v46)
    {
      sub_1001F1A88(v79, v78 & 1, v82, v25, v14);
      if (*v14)
      {
        v55 = *v14;
        swift_retain_n();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v80 = v85;
        (*v31)(v28, v17);

        if (v42)
        {
LABEL_24:
          sub_100004E24(v14, &qword_1002E27B0, &qword_10024A370);
          v42 = 1;
LABEL_29:
          v56 = v28;
          goto LABEL_30;
        }
      }

      else
      {
        (*v31)(v28, v17);
        if (v42)
        {
          goto LABEL_24;
        }
      }

      v57 = v14 + *(v77 + 60);
      v58 = v76;
      sub_10003D1E4();
      sub_100004E24(v14, &qword_1002E27B0, &qword_10024A370);
      v59 = type metadata accessor for PIAccountKeypair();
      v42 = sub_100004DFC(v58, 1, v59) != 1;
      sub_100004E24(v58, &qword_1002E27A8, &qword_10024A368);
      goto LABEL_29;
    }

    if (sub_1001F0DAC(v82, v25))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v54 = v84;
      v80 = v85;
      (*v31)(v84, v17);
    }

    else
    {
      v54 = v84;
      (*v31)(v84, v17);
    }

    v56 = v54;
LABEL_30:
    (*v81)(v56, v25, v17);
  }

  (*v31)(v25, v17);
LABEL_32:
  if (v71)
  {
    LOBYTE(v14) = v42;
    v18 = v70;
    sub_1001F1A88(v79, v78 & 1, v82, v83, v70);
    if (*v18)
    {
      v60 = *v18;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    goto LABEL_36;
  }

  v62 = *v31;
  (*v31)(v28, v17, v44);
  v62(v84, v17);
  return v80;
}

uint64_t *sub_1001F26E8(char a1, uint64_t a2, uint64_t a3)
{

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    sub_1001E6944();
    sub_1001E6AA0(v10);
    v11 = sub_1001ECC0C();
    v17 = a1;
    v13 = v12;

    v14 = sub_100009E5C(v11, v13, &v18);
    a1 = v17;

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Rotating keypairs on demand", v8, 0xCu);
    sub_10003991C(v9);
  }

  else
  {
  }

  if (a1)
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  return sub_1001F1D78(v15, 1, a2, a3, 1);
}

uint64_t *sub_1001F28A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    sub_1001E6944();
    v20 = a4;
    sub_1001E6AA0(v12);
    v13 = sub_1001ECC0C();
    v19 = a2;
    v15 = v14;

    v16 = v13;
    a4 = v20;
    v17 = sub_100009E5C(v16, v15, &v21);
    a2 = v19;

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: Rotating keypairs on schedule if needed", v10, 0xCu);
    sub_10003991C(v11);
  }

  else
  {
  }

  return sub_1001F1D78(a1, a2 & 1, a3, a4, 0);
}

uint64_t sub_1001F2A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  result = sub_1001E7098(v8);
  if (result)
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v24 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      sub_1001E6944();
      v23 = a1;
      sub_1001E6AA0(v15);
      v16 = sub_1001ECC0C();
      v18 = v17;

      a1 = v23;

      v19 = sub_100009E5C(v16, v18, &v25);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s: Preparing record for access", v13, 0xCu);
      sub_10003991C(v14);

      a2 = v24;
    }

    else
    {
    }

    v20 = sub_1001F28A4(1, 1, a1, a2);
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 16))(v7, a2, v21);
    sub_100002728(v7, 0, 1, v21);
    sub_1001E6CF0();
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1001F2CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *&v28[0] = swift_slowAlloc();
    *v8 = 136315394;
    sub_1001E6944();
    v25 = a3;
    sub_1001E6AA0(v9);
    v10 = sub_1001ECC0C();
    v12 = v11;

    v13 = sub_100009E5C(v10, v12, v28);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v15 = PIScheduledRotationConfigurationUpdate.description.getter(v14);
    v17 = sub_100009E5C(v15, v16, v28);

    *(v8 + 14) = v17;
    a3 = v25;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: Applying scheduled rotation configuration update %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  result = sub_1001E7098(v18);
  if (result)
  {
    v20 = *(a1 + 40);
    v21 = 0uLL;
    v22 = 0uLL;
    if ((v20 & 1) == 0)
    {
      v22 = *(a1 + 24);
      v21 = *(a1 + 8);
    }

    v28[0] = v21;
    v28[1] = v22;
    v29 = v20;
    sub_1001E7584(v28);
    sub_1001E7464(v26);
    if ((v27 & 1) == 0)
    {
      sub_1001CE3D0(v26[0], v26[1], v26[2], v26[3]);
    }

    sub_1001E767C();
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    sub_1001E76C4();
    if (*a1)
    {
      if (*a1 == 1)
      {
        return sub_1001F28A4(2, 1, a2, a3);
      }

      else
      {
        sub_1001F1144(a3);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      return sub_1001F1D78(2, 1, a2, a3, 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F2F70(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_1000044BC(a3);
  v7 = result;
  for (i = 0; v7 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v10 = v9;
    a1(&v10);

    if (v3)
    {
      return result;
    }
  }

  return result;
}

void sub_1001F3050()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (sub_10003A5EC(v1))
  {
    v2 = sub_10003A5D4();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Handling incoming XPC request", v2, 2u);
    sub_1000327B4();
  }

  if ((sub_1001F35F0() & 1) == 0)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (sub_10003A5EC(v16))
    {
      *sub_10003A5D4() = 0;
      sub_10003A530();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      sub_10003A540();
    }

    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
    goto LABEL_15;
  }

  v3 = sub_1001F3710(sub_1001F3648, 0);
  v4 = v3;
  if (v5)
  {
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1001FE9B4(v4, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_10003A604();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      sub_1001FE9CC();
      swift_allocError();
      *v10 = v4;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      sub_10003A654(&_mh_execute_header, v12, v13, "Private Identifiers not available due to error: %@, rejecting XPC request");
      sub_100004E24(v9, &qword_1002E2700, &unk_1002474D0);
      sub_1000327B4();
      sub_10003A514();
    }

    _StringGuts.grow(_:)(37);
    v14._object = 0x8000000100277BB0;
    v14._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    sub_10003A634();

    sub_1001FE9B4(v4, 1);
LABEL_15:
    sub_1000027F8();
    return;
  }

  if (v3)
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (sub_10003A5EC(v23))
    {
      v24 = sub_10003A5D4();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Sync engine has previously been created, accepting XPC request", v24, 2u);
      sub_1000327B4();
    }

    __chkstk_darwin(v25);
    type metadata accessor for XPCServer.PeerHandler(0);
    sub_1000396D0(&qword_1002E2828, type metadata accessor for XPCServer.PeerHandler);
    dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
    sub_1001FE9B4(v4, 0);
    sub_1001FE9B4(v4, 0);
    goto LABEL_15;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (sub_10003A5EC(v27))
  {
    *sub_10003A5D4() = 0;
    sub_10003A530();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    sub_10003A540();
  }

  dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  sub_1000027F8();

  sub_1001FE9B4(v33, v34);
}

uint64_t sub_1001F35F0()
{
  XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)();
  if (!v0)
  {
    v1 = v3;
  }

  return v1 & 1;
}

uint64_t sub_1001F3648@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for XPCServer.SyncEngineOwner(0);
  sub_1000396D0(&qword_1002E2818, type metadata accessor for XPCServer.SyncEngineOwner);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_1001F3FE4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1001F3710(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 16);
  OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = sub_1001FE3C8(sub_10003A1B8, v8, v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      if (!isEscapingClosureAtFileLocation)
      {
        return v9;
      }

      __break(1u);
    }

    else if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v9;
    }

    __break(1u);
  }

  _StringGuts.grow(_:)(66);
  v12._object = 0x8000000100277A60;
  v12._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v12);
  type metadata accessor for XPCServer.SyncEngineOwner(0);
  _print_unlocked<A, B>(_:_:)();
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001F38C8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  sub_1001F73B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1001FE468(sub_1000397A8, v7, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v10._object = 0x8000000100277A60;
    v10._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v10);
    _print_unlocked<A, B>(_:_:)();
    v11._countAndFlagsBits = 46;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F3A90(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = v2[14];
  OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1001FE4FC(sub_100039980, v9, v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v12._object = 0x8000000100277A60;
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v12);
    _print_unlocked<A, B>(_:_:)();
    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F3C5C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  dispatch thunk of XPCSession.setTargetQueue(_:)();
  v6 = *(type metadata accessor for XPCServer.PeerHandler(0) + 20);
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 16))(&a3[v6], a2, v7);
  *a3 = a1;
}

void sub_1001F3D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v12 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v27 - v14;
  *(v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_createSyncEngineTask) = 0;
  v16 = v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v6 + 16) = a1;
  v17 = OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_logger;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = v6 + v17;
  v21 = a2;
  (*(v19 + 16))(v20, a2, v18);
  v22 = (v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_shouldCreateSyncEngine);
  *v22 = a3;
  v22[1] = a4;
  v23 = (v6 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_syncEngineCreator);
  *v23 = v28;
  v23[1] = a6;
  v24 = type metadata accessor for TaskPriority();
  sub_100002728(v15, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v6;
  v26 = a1;

  sub_10013ABD4(0, 0, v15, &unk_10024A3C8, v25);

  (*(v19 + 8))(v21, v18);
  sub_1000027F8();
}

uint64_t sub_1001F3F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for XPCServer.SyncEngineOwner(0);
  sub_1000396D0(&qword_1002E2818, type metadata accessor for XPCServer.SyncEngineOwner);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000385E4, v6, v5);
}

uint64_t sub_1001F3FE4()
{
  v1 = v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult;
  if (*(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult + 8) == 1)
  {
    sub_1001F4048();
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
  }

  v3 = *v1;
  sub_1001FE9C0(*v1, v2);
  return v3;
}

void sub_1001F4048()
{
  v1 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_createSyncEngineTask;
  if (!*(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_createSyncEngineTask))
  {
    v6 = os_transaction_create();
    v7 = type metadata accessor for TaskPriority();
    sub_100002728(v4, 1, 1, v7);
    sub_10003A4E4();
    v10 = sub_1000396D0(v8, v9);
    v11 = swift_allocObject();
    v11[2] = v0;
    v11[3] = v10;
    v11[4] = v0;
    v11[5] = v6;
    swift_retain_n();
    v12 = sub_10013ABD4(0, 0, v4, &unk_10024A3B8, v11);
    v13 = *(v0 + v5);
    *(v0 + v5) = v12;
  }
}

uint64_t sub_1001F418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_10003863C;

  return sub_1001F4220();
}

uint64_t sub_1001F4220()
{
  sub_100004194();
  v1[2] = v0;
  type metadata accessor for XPCServer.SyncEngineOwner(0);
  sub_10003A4E4();
  sub_1000396D0(v2, v3);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[3] = v5;
  v1[4] = v4;

  return _swift_task_switch(sub_100038820, v5, v4);
}

uint64_t sub_1001F42C4()
{
  v1 = OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_logger;
  v2 = type metadata accessor for Logger();
  sub_10000307C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_shouldCreateSyncEngine + 8);

  v5 = *(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_syncEngineCreator + 8);

  v6 = *(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner_createSyncEngineTask);

  sub_1001FE9B4(*(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult), *(v0 + OBJC_IVAR____TtCO18PrivateIdentifiers9XPCServer15SyncEngineOwner__syncEngineResult + 8));
  return v0;
}

uint64_t sub_1001F4374()
{
  sub_1001F42C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1001F43F4()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1001F44B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1001F4508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1001F455C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

_OWORD *sub_1001F4590@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for PIXPCMessage();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099DF4(&qword_1002E2720, &unk_10024A310);
  sub_1000326A8(&qword_1002E2728, &qword_1002E2720, &unk_10024A310);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100039EA8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v11;
  v13 = *(v11 + 1);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v32 = sub_100099DF4(&qword_1002E2730, &qword_100246D10);
      v33 = *(v32 + 48);
      v34 = &v11[*(v32 + 64)];
      *&v55[9] = *(v34 + 41);
      v35 = *(v34 + 1);
      v53 = *v34;
      v54 = v35;
      *v55 = *(v34 + 2);
      v36 = sub_100012D44();
      __chkstk_darwin(v36);
      *(&v44 - 6) = a1;
      *(&v44 - 5) = v14;
      *(&v44 - 4) = v13;
      *(&v44 - 3) = v7;
      *(&v44 - 2) = &v53;
      v37 = sub_100099DF4(&qword_1002E2738, &unk_10024A320);
      v38 = v50;
      v50[3] = v37;
      v38[4] = sub_1000326A8(&unk_1002E2740, &qword_1002E2738, &unk_10024A320);
      sub_100007914(v38);
      sub_100038230(sub_100039860, (&v44 - 4), &qword_1002E2738, &unk_10024A320);

      v24 = v7;
      return sub_100004E24(v24, &qword_1002DA970, &qword_1002318B0);
    case 2:
      sub_1001F61D0(*v11, *(v11 + 1), *(v11 + 2), *(v11 + 3), v11[32]);
      if (v2)
      {

        ErrorValue = swift_getErrorValue();
        v26 = v51;
LABEL_9:
        v27 = *(*(v26 - 8) + 64);
        v28 = __chkstk_darwin(ErrorValue);
        v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v31 + 16))(v30, v28);
        sub_1001CBC4C(v30, v26, &v53);
        v48 = v54;
        v49 = v53;
        v46 = *&v55[16];
        v47 = *v55;
        v44 = v57;
        v45 = v56;
      }

      else
      {

LABEL_13:

        v49 = 0u;
        v48 = 0u;
        v47 = 0u;
        v46 = 0u;
        v45 = 0u;
        v44 = 0u;
      }

      v40 = v50;
      v50[3] = &type metadata for PIVoidCodableResult;
      v40[4] = sub_1001FE6B8();
      result = swift_allocObject();
      *v40 = result;
      v41 = v48;
      result[1] = v49;
      result[2] = v41;
      v42 = v46;
      result[3] = v47;
      result[4] = v42;
      v43 = v44;
      result[5] = v45;
      result[6] = v43;
      return result;
    case 3:
      sub_1001F6730(*v11, *(v11 + 1), v11[16]);
      if (!v2)
      {
        goto LABEL_13;
      }

      ErrorValue = swift_getErrorValue();
      v26 = v52;
      goto LABEL_9;
    default:
      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      v17 = sub_100099DF4(&qword_1002E0FF8, &qword_100246D18);
      v18 = *(v17 + 48);
      v19 = &v11[*(v17 + 64)];
      *&v55[9] = *(v19 + 41);
      v20 = *(v19 + 1);
      v53 = *v19;
      v54 = v20;
      *v55 = *(v19 + 2);
      v21 = sub_100012D44();
      *&v49 = &v44;
      __chkstk_darwin(v21);
      *(&v44 - 8) = a1;
      *(&v44 - 7) = v14;
      *(&v44 - 6) = v13;
      *(&v44 - 5) = v16;
      *(&v44 - 4) = v15;
      *(&v44 - 3) = v7;
      *(&v44 - 2) = &v53;
      v22 = sub_100099DF4(&qword_1002E2750, &unk_10024A330);
      v23 = v50;
      v50[3] = v22;
      v23[4] = sub_1000326A8(&qword_1002E2758, &qword_1002E2750, &unk_10024A330);
      sub_100007914(v23);
      sub_100038230(sub_100039890, (&v44 - 5), &qword_1002E2750, &unk_10024A330);

      v24 = v7;
      return sub_100004E24(v24, &qword_1002DA970, &qword_1002318B0);
  }
}

uint64_t sub_1001F4BFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v104 = a5;
  v93 = a7;
  v13 = a6[1];
  v115 = *a6;
  v116 = v13;
  *v117 = a6[2];
  v118 = a6;
  *&v117[9] = *(a6 + 41);
  v101 = type metadata accessor for Date();
  v99 = *(v101 - 8);
  v14 = *(v99 + 64);
  __chkstk_darwin(v101);
  v95 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v85 = &v80 - v17;
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v87 = (&v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v80 - v22;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v26 = v25[8];
  __chkstk_darwin(v24);
  v98 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v86 = &v80 - v29;
  v31 = __chkstk_darwin(v30);
  v33 = &v80 - v32;
  v103 = a1;
  v106[0] = a1;
  v106[1] = a2;
  v102 = a3;
  v106[2] = a3;
  v106[3] = a4;
  v96 = v8;
  v34 = v25[2];
  v90 = *(v8 + 24);
  v88 = qword_100310708;
  v91 = v25 + 2;
  v89 = v34;
  (v34)(&v80 - v32, v90 + qword_100310708, v24, v31);
  sub_10003D1E4();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v100 = v25;
  v97 = a2;
  v94 = a4;
  if (v37)
  {
    v82 = v35;
    v83 = v33;
    v84 = v24;
    v38 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v105 = v81;
    *v38 = 136315650;
    v39 = PIPersonalizedPrivateIdentifierMapping.Key.description.getter(v103, a2, v102, a4);
    v41 = v40;

    v42 = sub_100009E5C(v39, v41, &v105);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = v87;
    sub_10003D1E4();
    v44 = v101;
    if (sub_100004DFC(v43, 1, v101) == 1)
    {
      v45 = 0xE300000000000000;
      v46 = 7104878;
    }

    else
    {
      v50 = v99;
      v51 = v85;
      (*(v99 + 32))(v85, v43, v44);
      v46 = Date.description.getter();
      v45 = v52;
      (*(v50 + 8))(v51, v44);
    }

    v53 = v83;
    sub_100004E24(v23, &qword_1002DA970, &qword_1002318B0);
    v54 = sub_100009E5C(v46, v45, &v105);

    *(v38 + 14) = v54;
    *(v38 + 22) = 2080;
    v49 = v102;
    if (*v118 == 3)
    {
      v57 = 0xE300000000000000;
      v47 = v96;
      v48 = v95;
      v55 = 7104878;
    }

    else
    {
      v112 = v115;
      v113 = v116;
      *v114 = *v117;
      *&v114[9] = *&v117[9];
      v55 = PIScheduledRotationConfigurationUpdate.description.getter(*&v117[9]);
      v57 = v56;
      v47 = v96;
      v48 = v95;
    }

    v58 = sub_100009E5C(v55, v57, &v105);

    *(v38 + 24) = v58;
    v59 = v82;
    _os_log_impl(&_mh_execute_header, v82, v36, "Incoming query: key=%s, earliestHistoryDate=%s, rotationConfigurationUpdate=%s)", v38, 0x20u);
    swift_arrayDestroy();

    v24 = v84;
    v87 = v100[1];
    v87(v53, v84);
  }

  else
  {

    sub_100004E24(v23, &qword_1002DA970, &qword_1002318B0);
    v87 = v25[1];
    v87(v33, v24);
    v47 = v96;
    v48 = v95;
    v49 = v102;
  }

  v60 = static Date.now.getter();
  if (*v118 == 3)
  {
    v61 = v97;
    v62 = v94;
    v63 = v92;
  }

  else
  {
    v107 = *v118;
    v108 = *(v118 + 8);
    v109 = *(v118 + 24);
    v110 = *(v118 + 40);
    v111 = *(v118 + 56);
    __chkstk_darwin(v60);
    *(&v80 - 8) = v47;
    *(&v80 - 7) = &v107;
    v61 = v97;
    *(&v80 - 6) = v103;
    *(&v80 - 5) = v61;
    v62 = v94;
    *(&v80 - 4) = v49;
    *(&v80 - 3) = v62;
    *(&v80 - 2) = v48;
    v63 = v92;
    v60 = sub_1001F7C68(sub_100039904, (&v80 - 10));
    if (v63)
    {
      v89(v86, v90 + v88, v24);
      swift_errorRetain();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = v62;
        v68 = v24;
        v69 = swift_slowAlloc();
        *v66 = 138412290;
        swift_errorRetain();
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 4) = v70;
        *v69 = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "Failed to apply rotation configuration update: %@", v66, 0xCu);
        sub_100004E24(v69, &qword_1002E2700, &unk_1002474D0);
        v24 = v68;
        v62 = v67;
        v61 = v97;
      }

      else
      {
      }

      v60 = (v87)(v86, v24);
      v63 = 0;
      v49 = v102;
    }
  }

  __chkstk_darwin(v60);
  *(&v80 - 10) = v71;
  *(&v80 - 9) = v61;
  *(&v80 - 8) = v49;
  *(&v80 - 7) = v62;
  *(&v80 - 6) = v47;
  *(&v80 - 5) = v106;
  *(&v80 - 4) = v104;
  *(&v80 - 3) = v48;
  *(&v80 - 2) = v72;
  sub_1001F7CC4(sub_1000398E0, (&v80 - 12));
  if (v63)
  {

    v89(v98, v90 + v88, v24);
    swift_errorRetain();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v24;
      v77 = swift_slowAlloc();
      *v75 = 138412290;
      swift_errorRetain();
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v78;
      *v77 = v78;
      _os_log_impl(&_mh_execute_header, v73, v74, "Query failed: %@", v75, 0xCu);
      sub_100004E24(v77, &qword_1002E2700, &unk_1002474D0);
      v24 = v76;
    }

    v87(v98, v24);
    swift_willThrow();
  }

  else
  {
  }

  sub_1001FDAA4(v48);
  return (*(v99 + 8))(v48, v101);
}

uint64_t sub_1001F5740@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v87 = a5;
  v8 = a4[1];
  v104 = *a4;
  v105 = v8;
  *v106 = a4[2];
  v85 = a4;
  *&v106[9] = *(a4 + 41);
  v93 = type metadata accessor for Date();
  v90 = *(v93 - 8);
  v9 = *(v90 + 64);
  __chkstk_darwin(v93);
  v92 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v73 - v12;
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v73 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v88 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v78 = &v73 - v25;
  v27 = __chkstk_darwin(v26);
  v29 = &v73 - v28;
  v30 = a1;
  v95[0] = a1;
  v31 = v107;
  v95[1] = a2;
  v32 = v21[2];
  v82 = *(v107 + 24);
  v80 = qword_100310708;
  v83 = v21 + 2;
  v81 = v32;
  (v32)(&v73 - v28, v82 + qword_100310708, v20, v27);
  v86 = a3;
  sub_10003D1E4();

  v33 = Logger.logObject.getter();
  LODWORD(v79) = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v33, v79);
  v91 = v21;
  v89 = a2;
  if (v34)
  {
    v75 = v33;
    v76 = v20;
    v35 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v94 = v74;
    *v35 = 136315650;
    v36 = v30;
    v37 = PIUnpersonalizedPrivateIdentifierMapping.Key.description.getter(v30, a2);
    v39 = v38;

    v40 = sub_100009E5C(v37, v39, &v94);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    sub_10003D1E4();
    v41 = v93;
    if (sub_100004DFC(v16, 1, v93) == 1)
    {
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      v46 = v90;
      v47 = v77;
      (*(v90 + 32))(v77, v16, v41);
      v43 = Date.description.getter();
      v42 = v48;
      (*(v46 + 8))(v47, v41);
    }

    v20 = v76;
    v45 = v85;
    sub_100004E24(v19, &qword_1002DA970, &qword_1002318B0);
    v49 = sub_100009E5C(v43, v42, &v94);

    *(v35 + 14) = v49;
    *(v35 + 22) = 2080;
    v50 = v91;
    if (*v45 == 3)
    {
      v53 = 0xE300000000000000;
      v44 = v92;
      v51 = 7104878;
    }

    else
    {
      v101 = v104;
      v102 = v105;
      *v103 = *v106;
      *&v103[9] = *&v106[9];
      v51 = PIScheduledRotationConfigurationUpdate.description.getter(*&v106[9]);
      v53 = v52;
      v44 = v92;
    }

    v54 = sub_100009E5C(v51, v53, &v94);

    *(v35 + 24) = v54;
    v55 = v75;
    _os_log_impl(&_mh_execute_header, v75, v79, "Incoming query: key=%s, earliestHistoryDate=%s, rotationConfigurationUpdate=%s)", v35, 0x20u);
    swift_arrayDestroy();

    v79 = v50[1];
    v79(v29, v20);
    v31 = v107;
  }

  else
  {

    sub_100004E24(v19, &qword_1002DA970, &qword_1002318B0);
    v79 = v21[1];
    v79(v29, v20);
    v44 = v92;
    v45 = v85;
    v36 = v30;
  }

  v56 = static Date.now.getter();
  if (*v45 == 3)
  {
    v57 = v89;
    v58 = v84;
  }

  else
  {
    v96 = *v45;
    v97 = *(v45 + 8);
    v98 = *(v45 + 24);
    v99 = *(v45 + 40);
    v100 = *(v45 + 56);
    __chkstk_darwin(v56);
    *(&v73 - 8) = v31;
    *(&v73 - 7) = &v96;
    *(&v73 - 6) = 0;
    *(&v73 - 5) = 0;
    v57 = v89;
    *(&v73 - 4) = v36;
    *(&v73 - 3) = v57;
    *(&v73 - 2) = v44;
    v58 = v84;
    v56 = sub_1001F7C68(sub_10003A424, (&v73 - 10));
    if (v58)
    {
      v107 = v36;
      v81(v78, v82 + v80, v20);
      swift_errorRetain();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v20;
        v63 = swift_slowAlloc();
        *v61 = 138412290;
        swift_errorRetain();
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 4) = v64;
        *v63 = v64;
        _os_log_impl(&_mh_execute_header, v59, v60, "Failed to apply rotation configuration update: %@", v61, 0xCu);
        sub_100004E24(v63, &qword_1002E2700, &unk_1002474D0);
        v20 = v62;
        v57 = v89;
      }

      else
      {
      }

      v56 = (v79)(v78, v20);
      v58 = 0;
      v36 = v107;
    }
  }

  __chkstk_darwin(v56);
  *(&v73 - 10) = 0;
  *(&v73 - 9) = 0;
  *(&v73 - 8) = v36;
  *(&v73 - 7) = v57;
  *(&v73 - 6) = v31;
  *(&v73 - 5) = v95;
  *(&v73 - 4) = v86;
  *(&v73 - 3) = v44;
  *(&v73 - 2) = v45;
  sub_1001F7D50(sub_100039F28, (&v73 - 12));
  v65 = v88;
  if (v58)
  {
    v81(v88, v82 + v80, v20);
    swift_errorRetain();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = v20;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      swift_errorRetain();
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 4) = v71;
      *v70 = v71;
      _os_log_impl(&_mh_execute_header, v66, v67, "Query failed: %@", v69, 0xCu);
      sub_100004E24(v70, &qword_1002E2700, &unk_1002474D0);
      v44 = v92;

      v20 = v68;
    }

    v79(v65, v20);
    swift_willThrow();
  }

  sub_1001FDAA4(v44);
  return (*(v90 + 8))(v44, v93);
}

uint64_t sub_1001F61D0(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v6 = v5;
  v59 = a5;
  v11 = type metadata accessor for Date();
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  __chkstk_darwin(v11);
  v61 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v63 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v51 - v19;
  v65[0] = a1;
  v65[1] = a2;
  v65[2] = a3;
  v65[3] = a4;
  v21 = *(v6 + 24);
  v58 = v22;
  v23 = *(v22 + 16);
  v55 = v22 + 16;
  v56 = v21;
  v53 = qword_100310708;
  v54 = v23;
  v64 = v24;
  (v23)(&v51 - v19, v21 + qword_100310708, v18);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v57 = v11;
    v28 = v27;
    v29 = swift_slowAlloc();
    v52 = v6;
    v66 = v29;
    *v28 = 136315394;
    v30 = PIPersonalizedPrivateIdentifierMapping.Key.description.getter(a1, a2, a3, a4);
    v32 = v31;

    v33 = sub_100009E5C(v30, v32, &v66);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = v59;
    if (v59)
    {
      v35 = 0xD000000000000014;
    }

    else
    {
      v35 = 0xD000000000000015;
    }

    if (v59)
    {
      v36 = "<NonSEP privateKey=";
    }

    else
    {
      v36 = "programmaticRotation";
    }

    v37 = sub_100009E5C(v35, v36 | 0x8000000000000000, &v66);

    *(v28 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v25, v26, "Incoming on-demand rotation: key=%s, reason=%s", v28, 0x16u);
    swift_arrayDestroy();
    v6 = v52;

    v11 = v57;

    v38 = *(v58 + 8);
    v39 = v64;
    v38(v20, v64);
    v40 = v34;
  }

  else
  {

    v38 = *(v58 + 8);
    v39 = v64;
    v38(v20, v64);
    v40 = v59;
  }

  v41 = v61;
  v42 = static Date.now.getter();
  __chkstk_darwin(v42);
  *(&v51 - 4) = v65;
  *(&v51 - 24) = v40 & 1;
  *(&v51 - 2) = v6;
  *(&v51 - 1) = v41;
  v43 = v60;
  sub_1001F7C68(sub_10003A054, (&v51 - 6));
  if (v43)
  {
    v54(v63, v56 + v53, v39);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v57 = v11;
      v47 = v46;
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v49;
      *v48 = v49;
      _os_log_impl(&_mh_execute_header, v44, v45, "On-demand rotation failed: %@", v47, 0xCu);
      sub_100004E24(v48, &qword_1002E2700, &unk_1002474D0);

      v11 = v57;
      v39 = v64;
    }

    v38(v63, v39);
    swift_willThrow();
  }

  sub_1001FDAA4(v41);
  return (*(v62 + 8))(v41, v11);
}

uint64_t sub_1001F6730(uint64_t a1, void *a2, int a3)
{
  v50 = a3;
  v53 = type metadata accessor for Date();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v53);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v57[0] = a1;
  v57[1] = a2;
  v52 = v3;
  v17 = *(v3 + 24);
  v18 = v10[2];
  v48 = v10 + 2;
  v49 = v17;
  v46 = qword_100310708;
  v47 = v18;
  (v18)(&v45 - v15, v17 + qword_100310708, v9, v14);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v54 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = PIUnpersonalizedPrivateIdentifierMapping.Key.description.getter(a1, a2);
    v45 = v6;
    v25 = v24;

    v26 = sub_100009E5C(v23, v25, &v58);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = v50;
    if (v50)
    {
      v28 = 0xD000000000000014;
    }

    else
    {
      v28 = 0xD000000000000015;
    }

    if (v50)
    {
      v29 = "<NonSEP privateKey=";
    }

    else
    {
      v29 = "programmaticRotation";
    }

    v30 = sub_100009E5C(v28, v29 | 0x8000000000000000, &v58);

    *(v22 + 14) = v30;
    v6 = v45;
    _os_log_impl(&_mh_execute_header, v19, v20, "Incoming on-demand rotation: key=%s, reason=%s", v22, 0x16u);
    swift_arrayDestroy();

    v31 = v54[1];
    v31(v16, v9);
    v32 = v9;
    v33 = v27;
  }

  else
  {

    v31 = v10[1];
    v31(v16, v9);
    v32 = v9;
    v33 = v50;
  }

  v34 = v56;
  v35 = static Date.now.getter();
  __chkstk_darwin(v35);
  *(&v45 - 4) = v57;
  *(&v45 - 24) = v33 & 1;
  v36 = v51;
  *(&v45 - 2) = v52;
  *(&v45 - 1) = v34;
  sub_1001F7C68(sub_10003A094, (&v45 - 6));
  if (v36)
  {
    v47(v55, v49 + v46, v32);
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v32;
      v41 = v6;
      v42 = swift_slowAlloc();
      *v39 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "On-demand rotation failed: %@", v39, 0xCu);
      sub_100004E24(v42, &qword_1002E2700, &unk_1002474D0);
      v6 = v41;
      v32 = v40;

      v34 = v56;
    }

    v31(v55, v32);
    swift_willThrow();
  }

  sub_1001FDAA4(v34);
  return (*(v6 + 8))(v34, v53);
}

uint64_t sub_1001F6C50@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PIXPCMessage();
  v4 = sub_10000307C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v9 = v8 - v7;
  sub_1000396D0(&qword_1002E2708, type metadata accessor for PIXPCMessage);
  v10 = XPCReceivedMessage.decode<A>(as:)();
  v11 = *v1;
  __chkstk_darwin(v10);
  *(&v16 - 2) = v9;
  sub_1001F38C8(sub_10003977C, (&v16 - 2));
  v16 = v18;
  v12 = v18;
  v13 = sub_10000C4FC(__src, v18);
  *(a1 + 24) = v16;
  v14 = sub_100007914(a1);
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  sub_100039FA4(v9, type metadata accessor for PIXPCMessage);
  return sub_10003991C(__src);
}

void sub_1001F6FA4(uint64_t a1)
{
  v2 = type metadata accessor for XPCRichError();
  sub_1000038DC();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = *(type metadata accessor for XPCServer.PeerHandler(0) + 20);
  v12 = *(v4 + 16);
  v12(v10, a1, v2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (sub_10003A5EC(v14))
  {
    v15 = sub_10003A604();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    sub_1000396D0(&qword_1002E26F8, &type metadata accessor for XPCRichError);
    swift_allocError();
    v12(v17, v10, v2);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    (*(v4 + 8))(v10, v2);
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received cancellation from XPC peer: %@", v15, 0xCu);
    sub_100004E24(v16, &qword_1002E2700, &unk_1002474D0);
    sub_10003A514();
    sub_1000327B4();
  }

  else
  {

    (*(v4 + 8))(v10, v2);
  }

  sub_1000027F8();
}

void sub_1001F71D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = String._bridgeToObjectiveC()();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, &token);

    if (v9)
    {

      if (swift_dynamicCast())
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }

      *a5 = v10;
    }

    else
    {
      v11 = *token.val;
      if (*token.val)
      {
        type metadata accessor for CFError(0);
        sub_1000396D0(&qword_1002E2840, type metadata accessor for CFError);
        swift_allocError();
        *v12 = v11;
      }

      else
      {
        sub_1001FEA74();
        swift_allocError();
      }

      swift_willThrow();
    }
  }

  else
  {
    sub_1001FEA20();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1001F73B4()
{
  v1 = *(*(v0 + 24) + 112);
  v2 = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();

  return v2;
}

uint64_t sub_1001F7400(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v91 = a3;
  v92 = a4;
  v7 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v89 = &v75 - v9;
  v82 = type metadata accessor for UUID();
  v77 = *(v82 - 8);
  v10 = *(v77 + 64);
  __chkstk_darwin(v82);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100099DF4(&unk_1002E2780, &unk_10024A350);
  v88 = *(v13 - 8);
  v14 = *(v88 + 64);
  __chkstk_darwin(v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v75 - v18;
  __chkstk_darwin(v20);
  v22 = (&v75 - v21);
  v23 = a2[3];
  v24 = a2[4];
  sub_10000C4FC(a2, v23);
  v94 = a1;
  v95 = v87;
  v96 = v90;
  v25 = v98;
  result = (*(v24 + 120))(v91, v92, sub_1000399A8, v93, v13, v23, v24);
  if (v25)
  {
    return v22;
  }

  v86 = v22;
  v87 = a2;
  v76 = 0;
  v91 = v19;
  v79 = v16;
  v83 = v13;
  v78 = v12;
  v92 = *(result + 16);
  v75 = result;
  if (!v92)
  {
    v28 = _swiftEmptyArrayStorage;
    v51 = v88;
    v52 = v89;
LABEL_38:
    v22 = &v75;
    __chkstk_darwin(result);
    *(&v75 - 2) = v53;
    v54 = v76;
    sub_1001F2F70(sub_10003A4B4, (&v75 - 4), v28);
    if (v54)
    {
    }

    else
    {
      v76 = 0;

      if (v92)
      {
        v55 = v75 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v98 = (v77 + 32);
        v22 = _swiftEmptyArrayStorage;
        v56 = *(v51 + 72);
        v57 = &unk_1002E2780;
        v58 = &unk_10024A350;
        v59 = &qword_1002E12C8;
        do
        {
          sub_10003D1E4();
          v60 = v91;
          sub_100012D44();
          v61 = *v60;

          v62 = *(v83 + 48);
          sub_100012D44();
          v63 = v59;
          v64 = v82;
          if (sub_100004DFC(v52, 1, v82) == 1)
          {
            sub_100004E24(v52, v63, &qword_100248D50);
            v59 = v63;
          }

          else
          {
            v65 = v58;
            v66 = v57;
            v67 = v56;
            v68 = v63;
            v69 = *v98;
            (*v98)(v78, v52, v64);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = v22[2];
              sub_1001DED68();
              v22 = v73;
            }

            v70 = v22[2];
            v71 = v77;
            if (v70 >= v22[3] >> 1)
            {
              sub_1001DED68();
              v71 = v77;
              v22 = v74;
            }

            v22[2] = v70 + 1;
            v69(v22 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v70);
            v52 = v89;
            v59 = v68;
            v56 = v67;
            v57 = v66;
            v58 = v65;
          }

          v55 += v56;
          --v92;
        }

        while (v92);
      }

      else
      {
        v22 = _swiftEmptyArrayStorage;
      }
    }

    return v22;
  }

  v27 = 0;
  v85 = result + ((*(v88 + 80) + 32) & ~*(v88 + 80));
  v28 = _swiftEmptyArrayStorage;
  v84 = *(v88 + 72);
  v29 = v83;
  while (1)
  {
    sub_10003D1E4();
    v30 = v91;
    sub_100012D44();
    v31 = *v30;
    sub_100004E24(v30 + *(v29 + 48), &qword_1002E12C8, &qword_100248D50);
    v32 = v31 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v28 >> 62;
    result = v28 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = result + v32;
    if (__OFADD__(result, v32))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v33)
      {
        goto LABEL_16;
      }

      v35 = v28 & 0xFFFFFFFFFFFFFF8;
      if (v34 <= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v33)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v35 = v28 & 0xFFFFFFFFFFFFFF8;
    }

    v36 = *(v35 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v28 = result;
    v35 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v98 = v28;
    v37 = *(v35 + 16);
    v38 = (*(v35 + 24) >> 1) - v37;
    v39 = v35 + 8 * v37;
    v90 = v35;
    if (v31 >> 62)
    {
      v41 = _CocoaArrayWrapper.endIndex.getter();
      if (v41)
      {
        v42 = v41;
        result = _CocoaArrayWrapper.endIndex.getter();
        if (v38 < result)
        {
          goto LABEL_57;
        }

        if (v42 < 1)
        {
          goto LABEL_59;
        }

        v40 = result;
        v80 = v32;
        v81 = v27;
        v43 = v39 + 32;
        sub_1000326A8(&qword_1002E2790, &qword_1002E17B8, &qword_100247878);
        for (i = 0; i != v42; ++i)
        {
          sub_100099DF4(&qword_1002E17B8, &qword_100247878);
          v45 = sub_1001FE718(v97, i, v31);
          v47 = *v46;

          (v45)(v97, 0);
          *(v43 + 8 * i) = v47;
        }

        v29 = v83;
        v27 = v81;
        v32 = v80;
        goto LABEL_28;
      }
    }

    else
    {
      v40 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        if (v38 < v40)
        {
          goto LABEL_58;
        }

        _s29PrivateIdentifierHistoryModelCMa();
        swift_arrayInitWithCopy();
LABEL_28:

        v28 = v98;
        if (v40 < v32)
        {
          goto LABEL_55;
        }

        if (v40 > 0)
        {
          v48 = *(v90 + 16);
          v49 = __OFADD__(v48, v40);
          v50 = v48 + v40;
          if (v49)
          {
            goto LABEL_56;
          }

          *(v90 + 16) = v50;
        }

        goto LABEL_33;
      }
    }

    v28 = v98;
    if (v32 > 0)
    {
      goto LABEL_55;
    }

LABEL_33:
    ++v27;
    v51 = v88;
    v52 = v89;
    if (v27 == v92)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1001F7C68(uint64_t a1, uint64_t a2)
{
  v5[3] = a2;
  v3 = *(v2 + 24);
  v5[2] = a1;
  return sub_1001F3A90(sub_100039964, v5);
}

uint64_t sub_1001F7CC4(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(v2 + 24);
  v6 = a1;
  return sub_100038420(sub_100039E50, v5, "PrivateIdentifiers/PISyncEngine.swift", 37, 2, 244, &unk_1002C0D98, sub_100039E80, sub_1001FE590);
}

uint64_t sub_1001F7D50(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = *(v2 + 24);
  v6 = a1;
  return sub_100038420(sub_100039F74, v5, "PrivateIdentifiers/PISyncEngine.swift", 37, 2, 244, &unk_1002C0DE8, sub_10003A46C, sub_1001FE624);
}

uint64_t sub_1001F7DDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, NSObject *a11, uint64_t a12, uint64_t a13)
{
  v20 = a1[3];
  v19 = a1[4];
  sub_10000C4FC(a1, v20);
  v21 = (*(v19 + 64))(a2, a3, a4, a5, v20, v19);
  if (!v13)
  {
    if (v21)
    {
      sub_1001F8034(v21, a6, a7, a9, a10, a11, a1, a12, a8);
    }

    else
    {
      sub_1001FA01C(a2, a3, a4, a5, a6, a7, a9, a10, a8, a11, a13, a1, a12);
    }
  }

  return sub_10003991C(a1);
}

uint64_t sub_1001F7F10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = a1[3];
  v17 = a1[4];
  sub_10000C4FC(a1, v18);
  v19 = (*(v17 + 64))(a2, a3, a4, a5, v18, v17);
  if (!v11)
  {
    if (v19)
    {
      sub_1001F9040(v19, a6, a7, a9, a1, a10, a8);
    }

    else
    {
      sub_1001FAF3C(a2, a3, a4, a5, a6, a7, a9, a11, a8, a1, a10);
    }
  }

  return sub_10003991C(a1);
}

uint64_t sub_1001F8034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v158 = a8;
  v157 = a7;
  v150 = a6;
  v144 = a5;
  v147 = a4;
  v146 = a3;
  v145 = a2;
  v141 = a9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v143 = (&v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v149 = &v135 - v21;
  v151 = type metadata accessor for Date();
  v155 = *(v151 - 8);
  v22 = *(v155 + 64);
  __chkstk_darwin(v151);
  v142 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  v26 = v25[8];
  __chkstk_darwin(v24);
  v136 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v156 = &v135 - v29;
  __chkstk_darwin(v30);
  v153 = &v135 - v31;
  __chkstk_darwin(v32);
  v152 = &v135 - v33;
  v35 = __chkstk_darwin(v34);
  v37 = &v135 - v36;
  v135 = v9;
  v38 = v25[2];
  v159 = *(v9 + 24);
  *&v163 = qword_100310708;
  v165 = v39;
  *&v162 = v25 + 2;
  v160 = v38;
  (v38)(&v135 - v36, v159 + qword_100310708, v35);
  swift_retain_n();
  v40 = Logger.logObject.getter();
  LODWORD(v164) = static os_log_type_t.info.getter();
  v41 = os_log_type_enabled(v40, v164);
  v138 = v11;
  v140 = v12;
  v137 = v15;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v171 = v161;
    *v42 = 136315394;
    sub_1001E6944();
    sub_1001E6AA0(v43);
    v44 = sub_1001ECC0C();
    v46 = v45;

    v47 = sub_100009E5C(v44, v46, &v171);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v49 = sub_1001E9F28(v48);
    v51 = v50;

    v52 = sub_100009E5C(v49, v51, &v171);

    *(v42 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v40, v164, "Loaded existing persisted record for persistedRecordID=%s: %s", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v53 = (v25 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v164 = v25[1];
  v164(v37, v165);
  v54 = v159;
  v55 = v163;
  v56 = v152;
  v57 = v165;
  v58 = v160;
  v160(v152, v159 + v163, v165);
  v161 = sub_1001F2A60(v56, v158);
  v139 = v59;
  v164(v56, v57);
  v60 = v153;
  v58(v153, v54 + v55, v57);
  v61 = v60;

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();
  v64 = os_log_type_enabled(v62, v63);
  v65 = a1;
  v148 = v53;
  if (v64)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v171 = v67;
    *v66 = 136315138;
    v68 = sub_1001E9F28(v67);
    v69 = v61;
    v71 = v70;

    v72 = sub_100009E5C(v68, v71, &v171);

    *(v66 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v62, v63, "Prepared existing persisted record for access: %s", v66, 0xCu);
    sub_10003991C(v67);

    v73 = (v164)(v69, v165);
  }

  else
  {

    v73 = (v164)(v60, v165);
  }

  v74 = v157;
  v75 = v155;
  __chkstk_darwin(v73);
  v134 = v74;
  v76 = v161;

  v77 = v154;
  sub_1001F2F70(sub_10003A49C, (&v135 - 4), v76);
  v78 = v163;
  v79 = v156;
  if (v77)
  {
    return swift_bridgeObjectRelease_n();
  }

  v155 = 0;

  v81 = v149;
  sub_10003D1E4();
  v82 = v151;
  if (sub_100004DFC(v81, 1, v151) == 1)
  {
    sub_100004E24(v81, &qword_1002DA970, &qword_1002318B0);
    v83 = 0;
    v84 = v155;
  }

  else
  {
    v85 = v142;
    (*(v75 + 32))(v142, v81, v82);
    v86 = v74[3];
    v87 = v74[4];
    v154 = sub_10000C4FC(v74, v86);
    v88 = v75;
    v89 = v65;
    sub_1001E6944();
    v91 = v90;
    v93 = v92;
    v153 = v89;
    v94 = sub_1001E6AA0(v90);
    v95 = v155;
    v97 = (*(v87 + 136))(v91, v93, v94, v96, v85, v86, v87);
    v84 = v95;
    if (v95)
    {
      (*(v88 + 8))(v85, v151);
    }

    v83 = v97;
    (*(v88 + 8))(v85, v151);

    v65 = v153;
    v74 = v157;
    v78 = v163;
    v79 = v156;
  }

  v98 = v159;
  v160(v79, v159 + v78, v165);
  v99 = sub_1001ECF50(v143, v65, v83, v79, v158, v145, v146, v147, v144, v167);
  v100 = v79;
  if (v84)
  {
    v101 = v168;
    v102 = v169;
    v103 = v170;
    v163 = v167[0];
    v162 = v167[1];
    v164(v100, v165);

    sub_1001FE928();
    result = swift_allocError();
    v104 = v162;
    *v105 = v163;
    *(v105 + 16) = v104;
    *(v105 + 32) = v101;
    *(v105 + 40) = v102;
    *(v105 + 48) = v103;
  }

  else
  {
    v106 = v99;
    v164(v100, v165);

    sub_100039FFC();
    if (v106)
    {
      v107 = v74;
      v108 = v74[3];
      v109 = v74[4];
      sub_10000C4FC(v107, v108);
      v110 = *(v109 + 144);

      v110(v111, &v166, v108, v109);

      v98 = v159;
      v78 = v163;
    }

    else
    {
    }

    if (v139)
    {
      v112 = *(v135 + 16);
      v113 = v78;
      CKSyncEngine.state.getter();
      v114 = v137;
      sub_1001E68AC();
      v115 = *(v98 + 56);
      sub_10020A1EC(v114, v115);

      v116 = v140 + 8;
      *&v163 = *(v140 + 8);
      (v163)(v114, v138);
      v117 = v98 + v113;
      v118 = v136;
      v160(v136, v117, v165);
      swift_retain_n();
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *&v162 = swift_slowAlloc();
        v171 = v162;
        *v121 = 136315394;
        LODWORD(v161) = v120;
        sub_1001E6944();
        v140 = v116;
        sub_1001E6AA0(v122);
        v123 = sub_1001ECC0C();
        v125 = v124;

        v126 = sub_100009E5C(v123, v125, &v171);

        *(v121 + 4) = v126;
        *(v121 + 12) = 2080;
        v127 = v137;
        sub_1001E68AC();

        sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID);
        v128 = v138;
        v129 = dispatch thunk of CustomStringConvertible.description.getter();
        v131 = v130;

        (v163)(v127, v128);
        v132 = sub_100009E5C(v129, v131, &v171);

        *(v121 + 14) = v132;
        _os_log_impl(&_mh_execute_header, v119, v161, "Scheduled existing persisted record with persistedRecordID=%s uuid=%s for sending to cloud.", v121, 0x16u);
        swift_arrayDestroy();

        v133 = v136;
      }

      else
      {

        v133 = v118;
      }

      return (v164)(v133, v165);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001F9040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v153 = a6;
  v152 = a5;
  v145 = a4;
  v142 = a3;
  v141 = a2;
  v138 = a7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v140 = (&v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v144 = &v132 - v19;
  v146 = type metadata accessor for Date();
  v150 = *(v146 - 8);
  v20 = *(v150 + 64);
  __chkstk_darwin(v146);
  v139 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = v23[8];
  __chkstk_darwin(v22);
  v133 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v151 = &v132 - v27;
  __chkstk_darwin(v28);
  v148 = &v132 - v29;
  __chkstk_darwin(v30);
  v147 = &v132 - v31;
  v33 = __chkstk_darwin(v32);
  v35 = &v132 - v34;
  v132 = v7;
  v36 = v23[2];
  v154 = *(v7 + 24);
  *&v158 = qword_100310708;
  v160 = v37;
  *&v157 = v23 + 2;
  v155 = v36;
  (v36)(&v132 - v34, v154 + qword_100310708, v33);
  swift_retain_n();
  v38 = Logger.logObject.getter();
  LODWORD(v159) = static os_log_type_t.info.getter();
  v39 = os_log_type_enabled(v38, v159);
  v135 = v9;
  v137 = v10;
  v134 = v13;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v166 = v156;
    *v40 = 136315394;
    sub_1001E6944();
    sub_1001E6AA0(v41);
    v42 = sub_1001ECC0C();
    v44 = v43;

    v45 = sub_100009E5C(v42, v44, &v166);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v47 = sub_1001E9F28(v46);
    v49 = v48;

    v50 = sub_100009E5C(v47, v49, &v166);

    *(v40 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v38, v159, "Loaded existing persisted record for persistedRecordID=%s: %s", v40, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v51 = (v23 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v159 = v23[1];
  v159(v35, v160);
  v52 = v154;
  v53 = v158;
  v54 = v147;
  v55 = v160;
  v56 = v155;
  v155(v147, v154 + v158, v160);
  v156 = sub_1001F2A60(v54, v153);
  v136 = v57;
  v159(v54, v55);
  v58 = v148;
  v56(v148, v52 + v53, v55);
  v59 = v58;

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.info.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = a1;
  v143 = v51;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v166 = v65;
    *v64 = 136315138;
    v66 = sub_1001E9F28(v65);
    v67 = v59;
    v69 = v68;

    v70 = sub_100009E5C(v66, v69, &v166);

    *(v64 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v60, v61, "Prepared existing persisted record for access: %s", v64, 0xCu);
    sub_10003991C(v65);

    v71 = (v159)(v67, v160);
  }

  else
  {

    v71 = (v159)(v58, v160);
  }

  v72 = v152;
  v73 = v150;
  __chkstk_darwin(v71);
  *(&v132 - 2) = v72;
  v74 = v156;

  v75 = v149;
  sub_1001F2F70(sub_10003A4CC, (&v132 - 4), v74);
  v76 = v158;
  v77 = v151;
  if (v75)
  {
    return swift_bridgeObjectRelease_n();
  }

  v150 = 0;

  v79 = v144;
  sub_10003D1E4();
  v80 = v146;
  if (sub_100004DFC(v79, 1, v146) == 1)
  {
    sub_100004E24(v79, &qword_1002DA970, &qword_1002318B0);
    v81 = 0;
    v82 = v150;
  }

  else
  {
    v83 = v139;
    (*(v73 + 32))(v139, v79, v80);
    v84 = v72[3];
    v85 = v72[4];
    v149 = sub_10000C4FC(v72, v84);
    v86 = v73;
    v87 = v63;
    sub_1001E6944();
    v89 = v88;
    v91 = v90;
    v148 = v87;
    v92 = sub_1001E6AA0(v88);
    v93 = v150;
    v95 = (*(v85 + 136))(v89, v91, v92, v94, v83, v84, v85);
    v82 = v93;
    if (v93)
    {
      (*(v86 + 8))(v83, v146);
    }

    v81 = v95;
    (*(v86 + 8))(v83, v146);

    v63 = v148;
    v72 = v152;
    v76 = v158;
    v77 = v151;
  }

  v96 = v154;
  v155(v77, v154 + v76, v160);
  v97 = sub_1001EF6D8(v140, v63, v81, v77, v153, v141, v142, v162);
  v98 = v77;
  if (v82)
  {
    v99 = v163;
    v100 = v164;
    v101 = v165;
    v158 = v162[0];
    v157 = v162[1];
    v159(v98, v160);

    sub_1001FE928();
    result = swift_allocError();
    v102 = v157;
    *v103 = v158;
    *(v103 + 16) = v102;
    *(v103 + 32) = v99;
    *(v103 + 40) = v100;
    *(v103 + 48) = v101;
  }

  else
  {
    v104 = v97;
    v159(v98, v160);

    sub_100039FFC();
    if (v104)
    {
      v105 = v72;
      v106 = v72[3];
      v107 = v72[4];
      sub_10000C4FC(v105, v106);
      v108 = *(v107 + 144);

      v108(v109, &v161, v106, v107);

      v96 = v154;
      v76 = v158;
    }

    else
    {
    }

    if (v136)
    {
      v110 = *(v132 + 16);
      v111 = v76;
      CKSyncEngine.state.getter();
      v112 = v134;
      sub_1001E68AC();
      v113 = *(v96 + 56);
      sub_10020A1EC(v112, v113);

      v114 = v137 + 8;
      *&v158 = *(v137 + 8);
      (v158)(v112, v135);
      v115 = v96 + v111;
      v116 = v133;
      v155(v133, v115, v160);
      swift_retain_n();
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *&v157 = swift_slowAlloc();
        v166 = v157;
        *v119 = 136315394;
        LODWORD(v156) = v118;
        sub_1001E6944();
        v137 = v114;
        sub_1001E6AA0(v120);
        v121 = sub_1001ECC0C();
        v123 = v122;

        v124 = sub_100009E5C(v121, v123, &v166);

        *(v119 + 4) = v124;
        *(v119 + 12) = 2080;
        v125 = v134;
        sub_1001E68AC();

        sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID);
        v126 = v135;
        v127 = dispatch thunk of CustomStringConvertible.description.getter();
        v129 = v128;

        (v158)(v125, v126);
        v130 = sub_100009E5C(v127, v129, &v166);

        *(v119 + 14) = v130;
        _os_log_impl(&_mh_execute_header, v117, v156, "Scheduled existing persisted record with persistedRecordID=%s uuid=%s for sending to cloud.", v119, 0x16u);
        swift_arrayDestroy();

        v131 = v133;
      }

      else
      {

        v131 = v116;
      }

      return (v159)(v131, v160);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001FA01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, NSObject *a10, uint64_t a11, void *a12, uint64_t a13)
{
  v159 = a8;
  v162 = a7;
  v161 = a6;
  v160 = a5;
  *&v173 = a3;
  *&v172 = a1;
  v154 = a9;
  *&v174 = a13;
  v168 = a12;
  v151 = type metadata accessor for UUID();
  v155 = *(v151 - 8);
  v16 = *(v155 + 64);
  __chkstk_darwin(v151);
  v18 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PIPersonalizedPrivateIdentifierMapping(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v158 = (&v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v156 = &v148 - v24;
  v25 = type metadata accessor for Logger();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v157 = &v148 - v30;
  __chkstk_darwin(v31);
  v164 = &v148 - v32;
  __chkstk_darwin(v33);
  v163 = &v148 - v34;
  __chkstk_darwin(v35);
  v165 = &v148 - v36;
  v38 = __chkstk_darwin(v37);
  v40 = &v148 - v39;
  v149 = v13;
  v41 = *(v13 + 24);
  v42 = qword_100310708;
  v167 = v43;
  v44 = *(v43 + 16);
  v171 = v43 + 16;
  v166 = v41;
  *&v176 = v45;
  v170 = v44;
  (v44)(&v148 - v39, v41 + qword_100310708, v38);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  *&v175 = a4;
  v48 = a2;

  v49 = os_log_type_enabled(v46, v47);
  v153 = v28;
  v150 = v18;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = v42;
    v52 = v48;
    v53 = swift_slowAlloc();
    v183 = v53;
    *v50 = 136315138;
    v54 = sub_1001ECC0C();
    v56 = sub_100009E5C(v54, v55, &v183);

    *(v50 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v46, v47, "Will create and insert new persisted record for persistedRecordID=%s", v50, 0xCu);
    sub_10003991C(v53);
    v48 = v52;
    v57 = v176;
    v42 = v51;

    v58 = v167;
    v59 = *(v167 + 8);
    v59(v40, v57);
  }

  else
  {

    v58 = v167;
    v59 = *(v167 + 8);
    v59(v40, v176);
  }

  v60 = v58;
  v61 = v168[3];
  v62 = v168[4];
  sub_10000C4FC(v168, v61);
  v63 = v174;
  v64 = v169;
  *&v175 = (*(v62 + 72))(v172, v48, v173, v175, v174, v181, v61, v62);
  if (v64)
  {
    LOBYTE(v183) = v182;
    sub_100099DF4(&qword_1002E1A70, &qword_100247AA8);
    sub_1000326A8(&qword_1002E2810, &qword_1002E1A70, &qword_100247AA8);
    v176 = v181[0];
    v174 = v181[1];
    v175 = v181[2];
    v173 = v181[3];
    result = swift_allocError();
    v66 = v174;
    *v67 = v176;
    *(v67 + 16) = v66;
    v68 = v173;
    *(v67 + 32) = v175;
    *(v67 + 48) = v68;
    *(v67 + 64) = v183;
    return result;
  }

  *&v172 = 0;
  *&v173 = a11;
  v169 = a10;
  v69 = v166;
  v70 = v59;
  v71 = v165;
  v72 = v176;
  v73 = v170;
  v170(v165, v166 + v42, v176);
  sub_1001F1778(0, 1, v173, v71, v63);
  v74 = v71;
  v75 = v70;
  *&v173 = v60 + 8;
  v70(v74, v72);
  v152 = v42;
  v76 = v69;
  v77 = v163;
  v73(v163, v69 + v42, v72);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v183 = v81;
    *v80 = 136315138;
    v82 = sub_1001E9F28(v81);
    v84 = v83;

    v85 = sub_100009E5C(v82, v84, &v183);
    v86 = v176;
    v87 = v75;

    *(v80 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v78, v79, "Initialized new persisted record: %s", v80, 0xCu);
    sub_10003991C(v81);
    v88 = v174;

    v76 = v166;

    v75(v163, v86);
    v89 = v164;
  }

  else
  {

    v75(v77, v176);
    v89 = v164;
    v87 = v75;
    v88 = v174;
  }

  v90 = v152;
  v91 = v165;
  v92 = v176;
  v93 = v170;
  v170(v165, v76 + v152, v176);
  sub_1001F2A60(v91, v88);

  v87(v91, v92);
  v93(v89, v76 + v90, v92);

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v183 = v97;
    *v96 = 136315138;
    v98 = sub_1001E9F28(v97);
    v100 = v99;

    v101 = sub_100009E5C(v98, v100, &v183);
    v102 = v176;

    *(v96 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v94, v95, "Prepared newly inserted record for access: %s", v96, 0xCu);
    sub_10003991C(v97);

    v103 = v166;

    v104 = v102;
    v105 = v87;
    v87(v164, v104);
    v106 = v158;
    v107 = v157;
  }

  else
  {

    v87(v89, v176);
    v106 = v158;
    v107 = v157;
    v103 = v76;
    v105 = v87;
  }

  v108 = v156;
  sub_10003D1E4();
  v109 = type metadata accessor for Date();
  v110 = sub_100004DFC(v108, 1, v109);
  v111 = 0;
  v112 = v170;
  if (v110 != 1)
  {
    sub_100004E24(v108, &qword_1002DA970, &qword_1002318B0);
    v111 = _swiftEmptyArrayStorage;
  }

  v113 = v152;
  v112(v107, v103 + v152, v176);
  v114 = v172;
  sub_1001ECF50(v106, v175, v111, v107, v174, v160, v161, v162, v159, v177);
  if (v114)
  {
    v115 = v178;
    v116 = v179;
    v117 = v180;
    v174 = v177[0];
    v172 = v177[1];
    v105(v107, v176);

    sub_1001FE928();
    swift_allocError();
    v118 = v172;
    *v119 = v174;
    *(v119 + 16) = v118;
    *(v119 + 32) = v115;
    *(v119 + 40) = v116;
    *(v119 + 48) = v117;
  }

  v105(v107, v176);
  sub_100039FFC();
  sub_1001E6944();
  v121 = v120;
  sub_1001E6AA0(v122);

  if (!v121)
  {
  }

  *&v174 = v105;

  v123 = *(v149 + 16);
  CKSyncEngine.state.getter();
  v124 = v150;
  sub_1001E68AC();
  v125 = v166;
  v126 = *(v166 + 56);
  sub_10020A1EC(v124, v126);

  v127 = v155 + 8;
  v128 = v151;
  *&v172 = *(v155 + 8);
  (v172)(v124, v151);
  v129 = v125 + v113;
  v130 = v153;
  v112(v153, v129, v176);
  swift_retain_n();
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    LODWORD(v170) = v132;
    v134 = v133;
    v171 = swift_slowAlloc();
    v183 = v171;
    *v134 = 136315394;
    v169 = v131;
    sub_1001E6944();
    v135 = v128;
    v155 = v127;
    sub_1001E6AA0(v136);
    v137 = sub_1001ECC0C();
    v138 = v124;
    v140 = v139;

    v141 = sub_100009E5C(v137, v140, &v183);

    *(v134 + 4) = v141;
    *(v134 + 12) = 2080;
    sub_1001E68AC();

    sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID);
    v142 = dispatch thunk of CustomStringConvertible.description.getter();
    v144 = v143;

    (v172)(v138, v135);
    v145 = sub_100009E5C(v142, v144, &v183);

    *(v134 + 14) = v145;
    v146 = v169;
    _os_log_impl(&_mh_execute_header, v169, v170, "Scheduled newly inserted record with persistedRecordID=%s uuid=%s for sending to cloud.", v134, 0x16u);
    swift_arrayDestroy();

    v147 = v153;
  }

  else
  {

    v147 = v130;
  }

  return (v174)(v147, v176);
}

uint64_t sub_1001FAF3C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v142 = a8;
  v146 = a7;
  v149 = a6;
  v148 = a5;
  *&v163 = a3;
  *&v160 = a1;
  v140 = a9;
  *&v162 = a11;
  v153 = a10;
  v139 = type metadata accessor for UUID();
  v141 = *(v139 - 8);
  v14 = *(v141 + 64);
  __chkstk_darwin(v139);
  v16 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PIUnpersonalizedPrivateIdentifierMapping(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v147 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v144 = &v136 - v22;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = v24[8];
  __chkstk_darwin(v23);
  v27 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v145 = &v136 - v29;
  __chkstk_darwin(v30);
  v143 = &v136 - v31;
  __chkstk_darwin(v32);
  v150 = &v136 - v33;
  __chkstk_darwin(v34);
  v152 = &v136 - v35;
  v37 = __chkstk_darwin(v36);
  v39 = &v136 - v38;
  v136 = v11;
  v40 = *(v11 + 24);
  v157 = qword_100310708;
  v41 = v24[2];
  v155 = v40;
  *&v164 = v42;
  v158 = v24 + 2;
  v156 = v41;
  (v41)(&v136 - v38, v40 + qword_100310708, v37);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  *&v161 = a4;

  v159 = a2;

  v45 = os_log_type_enabled(v43, v44);
  v138 = v27;
  v137 = v16;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v171 = v47;
    *v46 = 136315138;
    v48 = sub_1001ECC0C();
    v50 = sub_100009E5C(v48, v49, &v171);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v43, v44, "Will create and insert new persisted record for persistedRecordID=%s", v46, 0xCu);
    sub_10003991C(v47);
  }

  v51 = v24[1];
  v51(v39, v164);
  v52 = v153[3];
  v53 = v153[4];
  sub_10000C4FC(v153, v52);
  v54 = v162;
  v55 = v154;
  *&v163 = (*(v53 + 72))(v160, v159, v163, v161, v162, v169, v52, v53);
  if (v55)
  {
    LOBYTE(v171) = v170;
    sub_100099DF4(&qword_1002E1A70, &qword_100247AA8);
    sub_1000326A8(&qword_1002E2810, &qword_1002E1A70, &qword_100247AA8);
    v164 = v169[0];
    v162 = v169[1];
    v163 = v169[2];
    v161 = v169[3];
    result = swift_allocError();
    v57 = v162;
    *v58 = v164;
    *(v58 + 16) = v57;
    v59 = v161;
    *(v58 + 32) = v163;
    *(v58 + 48) = v59;
    *(v58 + 64) = v171;
    return result;
  }

  *&v160 = 0;
  v60 = v155;
  v61 = v24;
  v62 = v157;
  v63 = v152;
  v64 = v164;
  v65 = v156;
  v156(v152, v155 + v157, v164);
  sub_1001F1778(0, 1, v142, v63, v54);
  v151 = v51;
  v51(v63, v64);
  v66 = v60 + v62;
  v67 = v150;
  v65(v150, v66, v64);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();
  v70 = os_log_type_enabled(v68, v69);
  *&v161 = v61 + 1;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v171 = v72;
    *v71 = 136315138;
    v73 = sub_1001E9F28(v72);
    v75 = v74;

    v76 = sub_100009E5C(v73, v75, &v171);
    v77 = v164;
    v78 = v151;

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v68, v69, "Initialized new persisted record: %s", v71, 0xCu);
    sub_10003991C(v72);
    v79 = v162;

    v60 = v155;

    v78(v150, v77);
  }

  else
  {

    v151(v67, v164);
    v79 = v162;
  }

  v80 = v157;
  v81 = v152;
  v82 = v164;
  v83 = v156;
  v156(v152, v60 + v157, v164);
  sub_1001F2A60(v81, v79);

  v151(v81, v82);
  v84 = v60 + v80;
  v85 = v143;
  v83(v143, v84, v82);

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v171 = v89;
    *v88 = 136315138;
    v90 = sub_1001E9F28(v89);
    v92 = v91;

    v93 = sub_100009E5C(v90, v92, &v171);
    v94 = v164;
    v95 = v151;

    *(v88 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v86, v87, "Prepared newly inserted record for access: %s", v88, 0xCu);
    sub_10003991C(v89);
    v79 = v162;

    v95(v85, v94);
    v96 = v147;
    v97 = v145;
  }

  else
  {

    v98 = v151;
    v151(v85, v164);
    v96 = v147;
    v97 = v145;
    v95 = v98;
  }

  v99 = v144;
  sub_10003D1E4();
  v100 = type metadata accessor for Date();
  v101 = 0;
  if (sub_100004DFC(v99, 1, v100) != 1)
  {
    sub_100004E24(v99, &qword_1002DA970, &qword_1002318B0);
    v101 = _swiftEmptyArrayStorage;
  }

  v102 = v156;
  v156(v97, v155 + v157, v164);
  v103 = v160;
  sub_1001EF6D8(v96, v163, v101, v97, v79, v148, v149, v165);
  if (v103)
  {
    v104 = v166;
    v105 = v167;
    v106 = v168;
    v162 = v165[0];
    v160 = v165[1];
    v95(v97, v164);

    sub_1001FE928();
    swift_allocError();
    v107 = v160;
    *v108 = v162;
    *(v108 + 16) = v107;
    *(v108 + 32) = v104;
    *(v108 + 40) = v105;
    *(v108 + 48) = v106;
  }

  v95(v97, v164);
  sub_100039FFC();
  sub_1001E6944();
  v110 = v109;
  sub_1001E6AA0(v111);

  if (!v110)
  {
  }

  v112 = *(v136 + 16);
  CKSyncEngine.state.getter();
  v113 = v137;
  sub_1001E68AC();
  v114 = v155;
  v115 = *(v155 + 56);
  sub_10020A1EC(v113, v115);

  v116 = v141 + 8;
  v117 = *(v141 + 8);
  v117(v113, v139);
  v118 = v114 + v157;
  v119 = v138;
  v102(v138, v118, v164);
  swift_retain_n();
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v159 = v117;
    v123 = v122;
    *&v162 = swift_slowAlloc();
    v171 = v162;
    *v123 = 136315394;
    LODWORD(v160) = v121;
    sub_1001E6944();
    v141 = v116;
    sub_1001E6AA0(v124);
    v125 = sub_1001ECC0C();
    v126 = v113;
    v128 = v127;

    v129 = sub_100009E5C(v125, v128, &v171);

    *(v123 + 4) = v129;
    *(v123 + 12) = 2080;
    sub_1001E68AC();

    sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID);
    v130 = v139;
    v131 = dispatch thunk of CustomStringConvertible.description.getter();
    v133 = v132;

    v159(v126, v130);
    v134 = sub_100009E5C(v131, v133, &v171);

    *(v123 + 14) = v134;
    _os_log_impl(&_mh_execute_header, v120, v160, "Scheduled newly inserted record with persistedRecordID=%s uuid=%s for sending to cloud.", v123, 0x16u);
    swift_arrayDestroy();

    v135 = v138;
  }

  else
  {

    v135 = v119;
  }

  return (v151)(v135, v164);
}

uint64_t sub_1001FBDE4(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v51 = a5;
  LODWORD(v49) = a4;
  v9 = type metadata accessor for UUID();
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v54 = a1;
  sub_10000C4FC(a1, v17);
  v19 = v53;
  v20 = (*(v18 + 64))(0, 0, a2, a3, v17, v18);
  if (!v19)
  {
    v23 = v52;
    v47 = v12;
    *&v53 = v9;
    if (v20)
    {
      v24 = *(v51 + 24);
      v25 = v50;
      v26 = v16;
      (*(v50 + 16))(v16, v24 + qword_100310708, v13);
      v27 = sub_1001F26E8(v49 & 1, v16, v23);
      v29 = v28;
      v30 = (*(v25 + 8))(v26, v13);
      __chkstk_darwin(v30);
      v21 = v54;
      *(&v46 - 2) = v54;

      sub_1001F2F70(sub_10003A484, (&v46 - 4), v27);
      swift_bridgeObjectRelease_n();
      if (v29)
      {
        v35 = *(v51 + 16);
        CKSyncEngine.state.getter();
        v36 = v47;
        sub_1001E68AC();
        v37 = *(v24 + 56);
        sub_10020A1EC(v36, v37);

LABEL_14:
        (*(v48 + 8))(v36, v53);
        return sub_10003991C(v21);
      }
    }

    else
    {
      v21 = v54;
      v32 = v54[3];
      v31 = v54[4];
      sub_10000C4FC(v54, v32);
      v33 = a3;
      v34 = v23;
      (*(v31 + 72))(0, 0, a2, v33, v23, &v55, v32, v31);
      if (v49)
      {
        v38 = 4;
      }

      else
      {
        v38 = 3;
      }

      v56 = 3;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v39 = v50;
      v40 = *(v50 + 16);
      v49 = *(v51 + 24);
      v40(v16, v49 + qword_100310708, v13);
      sub_1001F1778(v38, 1, &v56, v16, v34);
      (*(v39 + 8))(v16, v13);
      sub_1001E6944();
      v42 = v41;
      sub_1001E6AA0(v43);

      if (v42)
      {

        v44 = *(v51 + 16);
        CKSyncEngine.state.getter();
        v36 = v47;
        sub_1001E68AC();
        v45 = *(v49 + 56);
        sub_10020A1EC(v36, v45);

        goto LABEL_14;
      }
    }

    return sub_10003991C(v21);
  }

  v21 = v54;
  return sub_10003991C(v21);
}

uint64_t sub_1001FC3B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v65 = a8;
  *&v67 = a7;
  LODWORD(v66) = a6;
  *&v70 = a5;
  v63 = type metadata accessor for UUID();
  v62 = *(v63 - 8);
  v12 = *(v62 + 64);
  __chkstk_darwin(v63);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v69 = a1;
  sub_10000C4FC(a1, v18);
  v20 = a2;
  v21 = v68;
  v22 = (*(v19 + 64))(a2, a3, a4, v70, v18, v19);
  if (!v21)
  {
    v59 = a4;
    v60 = v17;
    v24 = v65;
    *&v68 = 0;
    if (v22)
    {
      v25 = *(v67 + 24);
      v26 = v64;
      v27 = v60;
      v28 = v14;
      (*(v64 + 16))(v60, v25 + qword_100310708, v14);
      v29 = sub_1001F26E8(v66 & 1, v27, v24);
      v31 = v30;
      v32 = (*(v26 + 8))(v27, v28);
      __chkstk_darwin(v32);
      v23 = v69;
      *(&v58 - 2) = v69;

      v33 = v68;
      sub_1001F2F70(sub_10003A078, (&v58 - 4), v29);
      v34 = v63;
      v35 = v62;
      if (v33)
      {

        swift_bridgeObjectRelease_n();
        return sub_10003991C(v23);
      }

      swift_bridgeObjectRelease_n();
      if (v31)
      {
        v45 = *(v67 + 16);
        *&v70 = CKSyncEngine.state.getter();
        v46 = v61;
        sub_1001E68AC();
        v47 = *(v25 + 56);
        sub_10020A1EC(v46, v47);

        (*(v35 + 8))(v46, v34);
        return sub_10003991C(v23);
      }
    }

    else
    {
      v36 = a3;
      v23 = v69;
      v37 = v69[3];
      v38 = v69[4];
      sub_10000C4FC(v69, v37);
      v39 = v68;
      (*(v38 + 72))(v20, v36, v59, v70, v24, v71, v37, v38);
      v40 = v67;
      v41 = v60;
      if (v39)
      {
        v78 = v72;
        sub_100099DF4(&qword_1002E1A70, &qword_100247AA8);
        sub_1000326A8(&qword_1002E2810, &qword_1002E1A70, &qword_100247AA8);
        v70 = v71[0];
        v67 = v71[1];
        v68 = v71[2];
        v66 = v71[3];
        swift_allocError();
        v42 = v67;
        *v43 = v70;
        *(v43 + 16) = v42;
        v44 = v66;
        *(v43 + 32) = v68;
        *(v43 + 48) = v44;
        *(v43 + 64) = v78;
        return sub_10003991C(v23);
      }

      *&v68 = 0;
      if (v66)
      {
        v48 = 4;
      }

      else
      {
        v48 = 3;
      }

      v73 = 3;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0;
      v49 = v64;
      v50 = *(v64 + 16);
      *&v70 = *(v67 + 24);
      v50(v60, v70 + qword_100310708, v14);
      sub_1001F1778(v48, 1, &v73, v41, v24);
      (*(v49 + 8))(v41, v14);
      sub_1001E6944();
      v52 = v51;
      sub_1001E6AA0(v53);

      if (v52)
      {

        v54 = *(v40 + 16);
        CKSyncEngine.state.getter();
        v55 = v61;
        sub_1001E68AC();
        v56 = *(v70 + 56);
        sub_10020A1EC(v55, v56);

        (*(v62 + 8))(v55, v63);
        return sub_10003991C(v23);
      }
    }

    return sub_10003991C(v23);
  }

  v23 = v69;
  return sub_10003991C(v23);
}

uint64_t sub_1001FC9F8(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = *(v2 + 24);
  v12 = v4[2];
  v25 = qword_100310708;
  v26 = v12;
  (v12)(&v24 - v9, v11 + qword_100310708, v3, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v2;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Attempting to delete any stale persisted records.", v15, 2u);
    v2 = v24;
  }

  v16 = v4[1];
  v17 = v16(v10, v3);
  if (*(v11 + 88))
  {
    v18 = v28;
    v26(v28, v11 + v25, v3);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No staleness interval configured for deletions, so no stale persisted records will be deleted.", v21, 2u);
    }

    return v16(v18, v3);
  }

  else
  {
    v23 = *(v11 + 80);
    *(&v24 - 4) = __chkstk_darwin(v17);
    *(&v24 - 3) = v27;
    *(&v24 - 2) = v2;
    return sub_1001F7C68(sub_100039E30, (&v24 - 6));
  }
}

uint64_t sub_1001FCCBC(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v94 = a3;
  v95 = type metadata accessor for Logger();
  v100 = *(v95 - 8);
  v8 = *(v100 + 8);
  __chkstk_darwin(v95);
  v90 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for UUID();
  *&v91 = *(v84 - 8);
  v10 = *(v91 + 64);
  __chkstk_darwin(v84);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  v16 = sub_100099DF4(&unk_1002E27D0, &qword_10024A3A8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v80 - v21;
  v23 = a1[3];
  v24 = a1[4];
  sub_10000C4FC(a1, v23);
  (*(v24 + 96))(v105, a2, v23, v24, a4);
  v93 = v4;
  if (v4)
  {
    v25 = a1;
  }

  else
  {
    v97 = v22;
    v98 = v19;
    v88 = v12;
    v89 = a1;
    v26 = v106;
    v27 = v107;
    v28 = sub_10000C4FC(v105, v106);
    v29 = *(*(v26 - 8) + 64);
    v30 = __chkstk_darwin(v28);
    (*(v32 + 16))(&v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
    v33 = *(v27 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_100007914(v102);
    dispatch thunk of Sequence.makeIterator()();
    v96 = (v91 + 32);
    v99 = (v91 + 8);
    v87 = (v100 + 16);
    v92 = enum case for CKSyncEngine.PendingRecordZoneChange.deleteRecord(_:);
    v86 = (v91 + 16);
    v85 = (v100 + 8);
    *&v34 = 136315650;
    v80 = v34;
    v91 = xmmword_10022E400;
    v35 = v95;
    v36 = v84;
    v37 = v15;
    v100 = v15;
    while (1)
    {
      sub_100008494(v102, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      v38 = v97;
      sub_100012D44();
      v39 = sub_100099DF4(&qword_1002E1230, &qword_1002479B0);
      if (sub_100004DFC(v38, 1, v39) == 1)
      {
        break;
      }

      v40 = (v38 + *(v39 + 48));
      v42 = *v40;
      v41 = v40[1];
      v44 = v40[2];
      v43 = v40[3];
      (*v96)(v37, v38, v36);
      if (v41)
      {

        v45 = v94;
        v46 = *(v94 + 16);
        CKSyncEngine.state.getter();
        sub_100099DF4(&qword_1002E1200, &qword_100247438);
        v47 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
        v48 = *(v47 - 8);
        v49 = *(v48 + 72);
        v50 = v36;
        v51 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = v91;
        v53 = *(*(v45 + 24) + 56);
        sub_1001FE8E4();
        v54 = v53;
        v55._countAndFlagsBits = UUID.uuidString.getter();
        *(v52 + v51) = CKRecordID.init(recordName:zoneID:)(v55, v54);
        v56 = v52 + v51;
        v36 = v50;
        v37 = v100;
        (*(v48 + 104))(v56, v92, v47);
        v35 = v95;
        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v52);

        (*v99)(v37, v36);
      }

      else
      {
        v57 = v89[3];
        v58 = v89[4];
        sub_10000C4FC(v89, v57);
        v59 = v93;
        (*(v58 + 112))(v37, v57, v58);
        if (v59)
        {
          (*v87)(v90, *(v94 + 24) + qword_100310708, v35);
          v60 = v88;
          (*v86)(v88, v37, v36);

          swift_errorRetain();
          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();

          LODWORD(v93) = v62;
          if (os_log_type_enabled(v61, v62))
          {
            v63 = v60;
            v64 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v101 = v84;
            *v64 = v80;
            sub_1000396D0(&qword_1002E27E0, &type metadata accessor for UUID);
            v82 = v61;
            v65 = dispatch thunk of CustomStringConvertible.description.getter();
            v67 = v66;
            v81 = v42;
            v68 = *v99;
            v69 = v63;
            v37 = v100;
            (*v99)(v69, v36);
            v70 = sub_100009E5C(v65, v67, &v101);

            *(v64 + 4) = v70;
            *(v64 + 12) = 2080;
            v71 = sub_1001ECC0C();
            v73 = v72;

            v74 = sub_100009E5C(v71, v73, &v101);

            *(v64 + 14) = v74;
            *(v64 + 22) = 2112;
            swift_errorRetain();
            v75 = _swift_stdlib_bridgeErrorToNSError();
            *(v64 + 24) = v75;
            v76 = v83;
            *v83 = v75;
            v77 = v82;
            _os_log_impl(&_mh_execute_header, v82, v93, "Failed to delete stale persisted record with %s and identifier %s: %@", v64, 0x20u);
            sub_100004E24(v76, &qword_1002E2700, &unk_1002474D0);

            swift_arrayDestroy();

            v35 = v95;
            (*v85)(v90, v95);
            v68(v37, v36);
          }

          else
          {

            v78 = *v99;
            (*v99)(v60, v36);
            v35 = v95;
            (*v85)(v90, v95);
            v78(v37, v36);
          }

          v93 = 0;
        }

        else
        {
          v93 = 0;
          (*v99)(v37, v36);
        }
      }
    }

    sub_10003991C(v102);
    sub_10003991C(v105);
    v25 = v89;
  }

  return sub_10003991C(v25);
}

uint64_t sub_1001FD69C(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)(v3);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = *(v2 + 24);
  v11 = v4[2];
  v25 = qword_100310708;
  v26 = v11;
  v11(&v24 - v8, v10 + qword_100310708, v3);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v2;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to delete any stale persisted history items.", v14, 2u);
  }

  v15 = v4[1];
  v16 = v15(v9, v3);
  if (*(v10 + 104))
  {
    v17 = v28;
    v26(v28, v10 + v25, v3);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No staleness interval configured for deletions, so no stale persisted history items will be deleted.", v20, 2u);
    }

    return v15(v17, v3);
  }

  else
  {
    v22 = *(v10 + 96);
    v23 = __chkstk_darwin(v16);
    *(&v24 - 2) = v27;
    *(&v24 - 1) = v23;
    return sub_1001F7C68(sub_100039E10, (&v24 - 4));
  }
}

uint64_t sub_1001FD960(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  sub_10000C4FC(a1, v7);
  static Date.- infix(_:_:)();
  (*(v8 + 152))(v6, v7, v8);
  (*(v3 + 8))(v6, v2);
  return sub_10003991C(a1);
}

uint64_t sub_1001FDAA4(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = os_transaction_create();
  v11 = type metadata accessor for TaskPriority();
  sub_100002728(v9, 1, 1, v11);
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v1;
  (*(v4 + 32))(&v13[v12], &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *&v13[(v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v10;

  swift_unknownObjectRetain();
  sub_1001FDDEC(0, 0, v9, &unk_10024A398, v13);
  swift_unknownObjectRelease();

  return sub_100004E24(v9, &qword_1002DB950, &qword_100232E50);
}

uint64_t sub_1001FDCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  sub_100099DF4(&qword_1002E2720, &unk_10024A310);
  sub_1000326A8(&qword_1002E2728, &qword_1002E2720, &unk_10024A310);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v10;
  v5[9] = v9;

  return _swift_task_switch(sub_100038FD0, v10, v9);
}

uint64_t sub_1001FDDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v25 - v10;
  sub_10003D1E4();
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100004DFC(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100004E24(v11, &qword_1002DB950, &qword_100232E50);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001FE090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100099DF4(&qword_1002E2768, &unk_10024A340);
  sub_1000326A8(&unk_1002E2770, &qword_1002E2768, &unk_10024A340);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_1001FE170(a2, a3);
}

uint64_t sub_1001FE170(uint64_t a1, uint64_t a2)
{
  os_transaction_create();
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  sub_100008494(v2 + 16, v5);
  (*(v6 + 32))(a1, a2, &type metadata for ()[8], v5, v6);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1001FE244@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t **a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, *(a2 + 24) + qword_100310708, v8, v11);
  v14 = sub_1001F2CC8(a1, v13, a3);
  LOBYTE(a2) = v15;
  (*(v9 + 8))(v13, v8);
  v16 = *(sub_100099DF4(&unk_1002E2780, &unk_10024A350) + 48);
  *a4 = v14;
  if (a2)
  {
    sub_1001E68AC();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for UUID();
  return sub_100002728(a4 + v16, v17, 1, v18);
}

uint64_t sub_1001FE3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v10 = a3;
  sub_10003A1D4(&v10, &v9);

  if (!v3)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1001FE468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_100039834(&v8);
}

uint64_t sub_1001FE4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_100039834(&v8);
}

uint64_t sub_1001FE590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_100039834(&v8);
}

uint64_t sub_1001FE624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v8 = a3;
  sub_10003A40C(&v8);
}

unint64_t sub_1001FE6B8()
{
  result = qword_1002E2710;
  if (!qword_1002E2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2710);
  }

  return result;
}

uint64_t (*sub_1001FE718(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *)
{
  v6 = sub_1001FE70C(a3);
  sub_1000397D4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v8;
  return sub_1000397F8;
}

void *sub_1001FE7A4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  result = a1(&v6);
  if (!v2)
  {
    v5 = v7;
    *a2 = v6;
    *(a2 + 8) = v5;
  }

  return result;
}

void *sub_1001FE7F0@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(&v7, *a1);
  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 8) = v6;
  }

  return result;
}

unint64_t sub_1001FE8E4()
{
  result = qword_1002E27F0;
  if (!qword_1002E27F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002E27F0);
  }

  return result;
}

unint64_t sub_1001FE928()
{
  result = qword_1002E27F8;
  if (!qword_1002E27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E27F8);
  }

  return result;
}

uint64_t sub_1001FE9B4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1001FE9C0(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

unint64_t sub_1001FE9CC()
{
  result = qword_1002E2820;
  if (!qword_1002E2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2820);
  }

  return result;
}

unint64_t sub_1001FEA20()
{
  result = qword_1002E2830;
  if (!qword_1002E2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2830);
  }

  return result;
}

unint64_t sub_1001FEA74()
{
  result = qword_1002E2838;
  if (!qword_1002E2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2838);
  }

  return result;
}

void sub_1001FEB10()
{
  sub_1001FEB94();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001FEB94()
{
  if (!qword_1002E28B0)
  {
    type metadata accessor for PIAccountKeypair();
    type metadata accessor for PIDeviceKeypair(255);
    _s20GlobalSyncStateModelCMa_0();
    _s22PrivateIdentifierModelCMa_0();
    _s29PrivateIdentifierHistoryModelCMa();
    sub_1000396D0(&qword_1002E28B8, type metadata accessor for PIAccountKeypair);
    sub_1000396D0(&qword_1002E28C0, type metadata accessor for PIDeviceKeypair);
    sub_1000396D0(&qword_1002E28C8, _s20GlobalSyncStateModelCMa_0);
    sub_1000396D0(&qword_1002E28D0, _s20GlobalSyncStateModelCMa_0);
    sub_1000396D0(&qword_1002E28D8, _s22PrivateIdentifierModelCMa_0);
    sub_1000396D0(&qword_1002E28E0, _s22PrivateIdentifierModelCMa_0);
    sub_1000396D0(&unk_1002E28E8, _s29PrivateIdentifierHistoryModelCMa);
    v0 = type metadata accessor for SyncEngine();
    if (!v1)
    {
      atomic_store(v0, &qword_1002E28B0);
    }
  }
}

NSObject *sub_1001FEDEC()
{
  v75 = type metadata accessor for Logger();
  v73 = *(v75 - 8);
  v1 = *(v73 + 64);
  __chkstk_darwin(v75);
  v74 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  __chkstk_darwin(v7);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ModelConfiguration.GroupContainer();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100099DF4(&qword_1002E2920, &qword_10024A498);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v57 - v23;
  v25 = type metadata accessor for ModelConfiguration();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100099DF4(&qword_1002E2928, &qword_10024A4A0);
  v31 = *(v30 + 72);
  if (*(v0 + v31))
  {
    v32 = *(v0 + v31);
LABEL_3:

    return v32;
  }

  v59 = v20;
  v60 = v12;
  v61 = v30;
  v62 = v16;
  v58 = v31;
  v65 = v29;
  v66 = v26;
  v64 = v25;
  type metadata accessor for Schema();
  sub_1001DABAC();
  Schema.__allocating_init(versionedSchema:)();
  sub_10003D178(v0, v24, &qword_1002E2920, &qword_10024A498);
  v33 = sub_100099DF4(qword_1002E12D8, &unk_100247550);
  v34 = sub_100004DFC(v24, 1, v33);
  v63 = v0;
  if (v34 == 1)
  {

    static ModelConfiguration.GroupContainer.none.getter();
    static ModelConfiguration.CloudKitDatabase.none.getter();
    v35 = v65;
    ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)();
  }

  else
  {
    v36 = v71;
    v37 = v60;
    v38 = v24;
    v39 = v72;
    (*(v71 + 32))(v60, v38, v72);
    v76 = 0xD000000000000012;
    v77 = 0x8000000100277C40;
    v40 = v69;
    v41 = v70;
    v42 = v67;
    (*(v70 + 104))(v67, enum case for URL.DirectoryHint.notDirectory(_:), v69);
    sub_1000BBBB0();
    URL.append<A>(path:directoryHint:)();
    (*(v41 + 8))(v42, v40);
    v43._countAndFlagsBits = 0x6574696C7173;
    v43._object = 0xE600000000000000;
    URL.appendPathExtension(_:)(v43);
    (*(v36 + 16))(v68, v37, v39);

    static ModelConfiguration.CloudKitDatabase.none.getter();
    v35 = v65;
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    (*(v36 + 8))(v37, v39);
  }

  v44 = v73;
  v45 = v66;
  type metadata accessor for ModelContainer();
  sub_1001DAC00();
  sub_100099DF4(qword_1002E1440, qword_100247608);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10022E400;
  v49 = v64;
  (*(v45 + 16))(v48 + v47, v35, v64);

  v50 = v78;
  v51 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (!v50)
  {
    v32 = v51;
    (*(v45 + 8))(v35, v49);

    *(v63 + v58) = v32;

    goto LABEL_3;
  }

  (*(v44 + 16))(v74, v63 + *(v61 + 68), v75);
  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    swift_errorRetain();
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 4) = v55;
    *v54 = v55;
    _os_log_impl(&_mh_execute_header, v32, v52, "Failed to create model container: %@", v53, 0xCu);
    sub_100004E24(v54, &qword_1002E2700, &unk_1002474D0);
    v35 = v65;
  }

  (*(v44 + 8))(v74, v75);
  swift_willThrow();

  (*(v66 + 8))(v35, v49);
  return v32;
}

uint64_t sub_1001FF598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a2;
  v50 = a3;
  v48 = a4;
  v6 = type metadata accessor for Logger();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100099DF4(&qword_1002E1410, &qword_1002475E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v39 - v12;
  v14 = sub_100099DF4(&qword_1002E1418, &unk_1002475E8);
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = sub_100099DF4(&qword_1002E2958, &qword_10024A4B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  v51 = a1;
  result = sub_1001FEDEC();
  if (!v4)
  {
    v41 = v6;
    v42 = v9;
    v43 = v13;
    v44 = v17;
    v40 = v21;
    v45 = v14;
    v26 = type metadata accessor for ModelContext();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = ModelContext.init(_:)();
    v30 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
    v31 = sub_100002728(v24, 1, 1, v30);
    __chkstk_darwin(v31);
    v33 = v49;
    v32 = v50;
    *(&v39 - 6) = v24;
    *(&v39 - 5) = v33;
    *(&v39 - 4) = v32;
    *(&v39 - 3) = v29;
    *(&v39 - 2) = v51;
    dispatch thunk of ModelContext.transaction(block:)();
    v34 = v48;
    v36 = v43;
    v35 = v44;
    v37 = sub_100099DF4(&qword_1002E1420, &unk_1002475F8);
    sub_100002728(v36, 1, 1, v37);
    type metadata accessor for DefaultHistoryTransaction();
    sub_10003AAD4(&qword_1002E1428, &type metadata accessor for DefaultHistoryTransaction);
    HistoryDescriptor.init(predicate:)();
    dispatch thunk of ModelContext.deleteHistory<A>(_:)();
    v38 = v40;
    sub_10003D178(v24, v40, &qword_1002E2958, &qword_10024A4B0);
    result = sub_100004DFC(v38, 1, v30);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v47 + 8))(v35, v45);

      sub_100012CF4(v38, v34, &qword_1002E1AB8, &qword_100247AD0);
      return sub_100004E24(v24, &qword_1002E2958, &qword_10024A4B0);
    }
  }

  return result;
}

uint64_t sub_1001FFBD4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v8 = sub_100099DF4(&qword_1002E2958, &qword_10024A4B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22[-1] - v10;
  v12 = *(sub_100099DF4(&qword_1002E2928, &qword_10024A4A0) + 68);
  v13 = sub_100099DF4(&qword_1002E2968, &unk_10024A4C0);
  v22[3] = v13;
  v22[4] = sub_1000326A8(&qword_1002E2970, &qword_1002E2968, &unk_10024A4C0);
  v14 = sub_100007914(v22);
  v15 = *(v13 + 68);
  v16 = type metadata accessor for Logger();
  (*(*(v16 - 8) + 16))(v14 + v15, a5 + v12, v16);
  *v14 = a4;

  v17 = v22[6];
  a2(v22);
  if (v17)
  {
    sub_100099DF4(&qword_1002E2960, &qword_10024A4B8);
    sub_1000326A8(&qword_1002E2978, &qword_1002E2960, &qword_10024A4B8);
    swift_allocError();
    *v18 = v17;
    return swift_willThrow();
  }

  else
  {
    v20 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
    sub_100002728(v11, 0, 1, v20);
    return sub_1002012E0(v11, v21);
  }
}

uint64_t static XPCServer.createListener(machServiceName:requiredEntitlement:persistenceAccessQueue:xpcServerLogger:persistenceDirectoryURL:persistenceLogger:cloudKitContainerEnvironment:apsMachServiceName:syncEngineLogger:shouldCreateSyncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v96 = a1;
  v98 = a8;
  v87 = a5;
  v88 = a6;
  v93 = a3;
  v94 = a4;
  v95 = a2;
  v90 = a14;
  v91 = a13;
  v85 = a10;
  v86 = a9;
  v84 = a11;
  v82 = a12;
  v14 = type metadata accessor for XPCListener.InitializationOptions();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v92 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  sub_1000038DC();
  v19 = v18;
  v101 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  v89 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v83 = &v75 - v24;
  __chkstk_darwin(v25);
  v27 = &v75 - v26;
  v79 = &v75 - v26;
  __chkstk_darwin(v28);
  v30 = &v75 - v29;
  v78 = &v75 - v29;
  v77 = type metadata accessor for URL();
  sub_1000038DC();
  v32 = v31;
  v34 = *(v33 + 64);
  v36 = __chkstk_darwin(v35);
  v80 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v36);
  v37 = *(v19 + 16);
  v99 = v19 + 16;
  v100 = v37;
  v97 = v17;
  v37(v30, v98, v17);
  v37(v27, v82, v17);
  v38 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v39 = *(v19 + 80);
  v40 = (v34 + v39 + v38) & ~v39;
  v81 = v39 | 7;
  v82 = v21 + 7;
  v41 = (v21 + 7 + v40) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v32 + 32))(v43 + v38, v80, v77);
  v45 = v101 + 32;
  v44 = *(v101 + 32);
  v46 = v97;
  v44(v43 + v40, v78, v97);
  v80 = v44;
  v101 = v45;
  v98 = v43;
  v47 = (v43 + v41);
  v48 = v84;
  *v47 = v85;
  v47[1] = v48;
  v49 = v87;
  *(v43 + v76) = v86;
  *(v43 + v42) = v49;
  v44(v43 + ((v39 + v42 + 8) & ~v39), v79, v46);
  v50 = v83;
  v51 = v88;
  v100(v83, v88, v46);
  v52 = type metadata accessor for XPCServer.SyncEngineOwner(0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = v49;

  v56 = v90;

  v57 = v98;

  sub_1001F3D1C(v55, v50, v91, v56, sub_10003A80C, v57);
  v59 = v58;
  v60 = v89;
  v61 = v97;
  v100(v89, v51, v97);
  v62 = (v39 + 16) & ~v39;
  v63 = (v82 + v62) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (v80)(v65 + v62, v60, v61);
  v66 = (v65 + v63);
  v67 = v94;
  *v66 = v93;
  v66[1] = v67;
  *(v65 + v64) = v59;
  *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = v55;
  v68 = v55;

  static XPCListener.InitializationOptions.none.getter();
  v69 = type metadata accessor for XPCListener();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = v68;
  v73 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();

  return v73;
}

uint64_t sub_100200354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v27 = a6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100099DF4(&qword_1002E2928, &qword_10024A4A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v26 - v20;
  sub_100200574(a1, a2, &v26 - v20);
  sub_100003AE0(0, &qword_1002E2930, CKContainer_ptr);
  sub_100003AE0(0, &qword_1002E2938, CKContainerID_ptr);
  v22 = sub_10020084C(0xD00000000000002FLL, 0x8000000100277C10, a5);
  v23 = sub_1002008C8();
  v24 = sub_10020094C(v22, v23);
  (*(v14 + 16))(v17, a7, v13);
  sub_1002009A8(a3, a4, v28);
  sub_100099DF4(&qword_1002E2720, &unk_10024A310);
  swift_allocObject();
  return sub_100200A94(v24, v21, v27, v17, v28);
}

uint64_t sub_100200574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100099DF4(&qword_1002E2920, &qword_10024A498);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v18 - v13;
  v15 = *(type metadata accessor for URL() - 8);
  (*(v15 + 16))(v14, a1);
  v16 = *(sub_100099DF4(qword_1002E12D8, &unk_100247550) - 8);
  (*(v16 + 56))(v14, 0, 1);
  (*(v7 + 16))(v10, a2, v6);
  _s20GlobalSyncStateModelCMa_0();
  _s22PrivateIdentifierModelCMa_0();
  _s29PrivateIdentifierHistoryModelCMa();
  sub_10003AAD4(&qword_1002E28D0, _s20GlobalSyncStateModelCMa_0);
  sub_10003AAD4(&qword_1002E28E0, _s22PrivateIdentifierModelCMa_0);
  sub_10003AAD4(&unk_1002E28E8, _s29PrivateIdentifierHistoryModelCMa);
  return sub_1001D2364(v14, v10, 0, a3);
}

id sub_10020084C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithContainerIdentifier:v5 environment:a3];

  return v6;
}

id sub_1002008C8()
{
  v0 = [objc_allocWithZone(CKContainerOptions) init];
  [v0 setUseZoneWidePCS:1];
  v1 = String._bridgeToObjectiveC()();
  [v0 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v1];

  return v0;
}

id sub_10020094C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainerID:a1 options:a2];

  return v4;
}

uint64_t sub_1002009A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100003AE0(0, &qword_1002E2980, CKRecordZoneID_ptr);
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._object = 0x8000000100277C40;
  v8._countAndFlagsBits = 0xD000000000000012;
  v9.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v8, v6).super.isa;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = 0x417E133800000000;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0x417E133800000000;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0x4143C68000000000;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
}

uint64_t sub_100200A94(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v66 = a3;
  v70 = a1;
  v8 = type metadata accessor for CKSyncEngine.Configuration();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  __chkstk_darwin(v8);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v62 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v64 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100099DF4(&qword_1002E2928, &qword_10024A4A0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v62 - v19;
  v21 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v65 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  __chkstk_darwin(v27);
  v29 = &v62 - v28;
  v30 = objc_autoreleasePoolPush();
  sub_1001FF598(a2, sub_1002010D0, 0, v26);
  v74 = v13;
  v67 = v29;
  objc_autoreleasePoolPop(v30);
  sub_100012CF4(v26, v29, &qword_1002E1AB8, &qword_100247AD0);
  sub_100012CF4(a2, v20, &qword_1002E2928, &qword_10024A4A0);
  v31 = *(a5 + 24);
  v32 = v64;
  (*(v14 + 16))(v64, a4, v13);
  v33 = *(a5 + 48);
  v75 = *(a5 + 32);
  v76[0] = v33;
  *(v76 + 9) = *(a5 + 57);
  v34 = v14;
  v35 = *(a5 + 80);
  v36 = *(a5 + 88);
  v63 = a4;
  v38 = *(a5 + 96);
  v37 = *(a5 + 104);
  v39 = sub_100099DF4(&qword_1002E2768, &unk_10024A340);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v20;
  v43 = v66;
  v44 = sub_100201160(v42, v31, v66, v32, &v75, v35, v36, v38, v37);
  v45 = v73;
  *(v73 + 24) = v44;
  v46 = v31;
  v66 = v43;
  sub_10003AAA0(v35);
  sub_10003AAA0(v38);
  v47 = v70;
  v48 = [v70 privateCloudDatabase];
  v49 = v67;
  sub_10003D178(v67, v65, &qword_1002E1AB8, &qword_100247AD0);
  v50 = *(v45 + 24);
  sub_1000326A8(&qword_1002E2940, &qword_1002E2768, &unk_10024A340);

  v51 = v69;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  v52 = *a5;
  v53 = *(a5 + 8);

  CKSyncEngine.Configuration.apsMachServiceName.setter();
  v54 = *(a5 + 16);
  CKSyncEngine.Configuration.automaticallySync.setter();
  v56 = v71;
  v55 = v72;
  (*(v71 + 16))(v68, v51, v72);
  v57 = type metadata accessor for CKSyncEngine();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  v60 = CKSyncEngine.init(_:)();

  sub_100004E24(a5, &qword_1002E2948, &qword_10024A4A8);
  (*(v34 + 8))(v63, v74);
  (*(v56 + 8))(v51, v55);
  sub_100004E24(v49, &qword_1002E1AB8, &qword_100247AD0);
  *(v45 + 16) = v60;
  return v45;
}

uint64_t sub_1002010D0(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000C4FC(a1, v3);
  (*(v4 + 56))(v3, v4);
  if (!v1)
  {
    sub_1001E27AC();
  }

  return sub_100004118(a1);
}

uint64_t sub_100201160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = sub_100099DF4(&qword_1002E2928, &qword_10024A4A0);
  v27 = sub_1000326A8(&qword_1002E2950, &qword_1002E2928, &qword_10024A4A0);
  v16 = sub_100007914(&v25);
  sub_100012CF4(a1, v16, &qword_1002E2928, &qword_10024A4A0);
  swift_beginAccess();
  sub_10000601C(&v25, v9 + 16);
  *(v9 + 56) = a2;
  v17 = a5[1];
  *(v9 + 64) = *a5;
  *(v9 + 80) = v17;
  *(v9 + 89) = *(a5 + 25);
  *(v9 + 112) = a3;
  v18 = qword_100310708;
  v19 = type metadata accessor for Logger();
  (*(*(v19 - 8) + 32))(v9 + v18, a4, v19);
  v20 = (v9 + qword_100310710);
  *v20 = a6;
  v20[1] = a7;
  v21 = (v9 + qword_100310718);
  *v21 = a8;
  v21[1] = a9;
  return v9;
}

uint64_t sub_1002012E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E2958, &qword_10024A4B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100201350(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(a2 + 40))(a1, a2, v7);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  return v11;
}

uint64_t sub_10020148C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v54 = a1;
  v55 = a2;
  sub_1000038DC();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_1000030E4();
  v56 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1000038DC();
  v58 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  v24 = &v43 - v23;
  v25 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v26);
  sub_1000030E4();
  v52 = v27;
  swift_getAssociatedTypeWitness();
  sub_1000038DC();
  v46 = v29;
  v47 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  v33 = &v43 - v32;
  v34 = dispatch thunk of Collection.count.getter();
  if (!v34)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v57 = v34;
  v61 = ContiguousArray.init()();
  v48 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v57);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v43 = v12;
    v44 = a5;
    v36 = 0;
    v49 = (v58 + 16);
    v50 = v58 + 8;
    v51 = v8;
    while (!__OFADD__(v36, 1))
    {
      v58 = v36 + 1;
      v37 = dispatch thunk of Collection.subscript.read();
      (*v49)(v24);
      v37(v60, 0);
      v38 = v59;
      v54(v24, v56);
      if (v38)
      {
        v41 = sub_10003AB84();
        v42(v41);
        (*(v46 + 8))(v33, v47);

        return (*(v43 + 32))(v45, v56, v44);
      }

      v59 = 0;
      v39 = sub_10003AB84();
      v40(v39);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v36;
      if (v58 == v57)
      {
        (*(v46 + 8))(v33, v47);
        return v61;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

CKRecordID sub_100201860(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100003AE0(0, &qword_1002E27F0, CKRecordID_ptr);
  v6 = (*(a3 + 32))(a2, a3);
  v8 = v7;
  v9 = a1;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  return CKRecordID.init(recordName:zoneID:)(v10, v9);
}

Class sub_1002018F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6.super.isa = sub_100201944(a1, a2, a3).super.isa;
  isa = v6.super.isa;
  if (!v3)
  {
    sub_100201AB8(v6.super.isa, a2, a3);
  }

  return isa;
}

CKRecord sub_100201944(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a3 + 40))(a2, a3);
  if (v8 >> 60 == 15)
  {
    return sub_100201F70(a1, a2, a3);
  }

  v10 = v7;
  v11 = v8;
  v12 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_10000FF98(v10, v11);
  v13 = sub_100202470(v10, v11);
  if (!v3)
  {
    v14 = v13;
    [v13 setRequiresSecureCoding:1];
    v15 = [objc_allocWithZone(CKRecord) initWithCoder:v14];
    if (v15)
    {
      a1 = v15;

      sub_10009A7A0(v10, v11);
      return a1;
    }

    type metadata accessor for MalformedLocalRecordError();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  sub_10009A7A0(v10, v11);
  return a1;
}

uint64_t sub_100201AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v29 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v6 = *(v30 + 64);
  v7 = __chkstk_darwin(AssociatedTypeWitness);
  v9 = &v23 - v8;
  (*(a3 + 24))(a2, a3, v7);
  v10 = swift_getAssociatedTypeWitness();
  sub_10009A468(&qword_1002E2988, &unk_10024A760);
  swift_getFunctionTypeMetadata1();
  swift_getAssociatedConformanceWitness();
  v11 = Dictionary.keys.getter();

  v37 = v11;
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  v28 = Set.init<A>(_:)();
  swift_checkMetadataState();
  dispatch thunk of static CaseIterable.allCases.getter();
  v35 = a2;
  v36 = a3;
  KeyPath = swift_getKeyPath();
  v32 = a2;
  v33 = a3;
  v25 = a3;
  v34 = KeyPath;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_10020148C(sub_10003AB38, v31, AssociatedTypeWitness, v10, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v13);
  v23 = 0;

  v15 = *(v30 + 8);
  v30 += 8;
  v15(v9, AssociatedTypeWitness);
  v37 = v14;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Set.init<A>(_:)();
  v16 = static Set.== infix(_:_:)();

  if (v16)
  {
    v18 = dispatch thunk of static CaseIterable.allCases.getter();
    __chkstk_darwin(v18);
    v19 = v25;
    v20 = v26;
    *(&v23 - 4) = a2;
    *(&v23 - 3) = v19;
    v21 = v27;
    *(&v23 - 2) = v20;
    *(&v23 - 1) = v21;
    v22 = *(AssociatedConformanceWitness + 8);
    Sequence.forEach(_:)();
    return (v15)(v9, AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class sub_100201F2C(void *a1, uint64_t a2, uint64_t a3)
{
  isa = sub_100201F70(a1, a2, a3).super.isa;
  sub_100201AB8(isa, a2, a3);
  return isa;
}

CKRecord sub_100201F70(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100003AE0(0, &qword_1002E1208, CKRecord_ptr);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v10 = v9;
  isa = sub_100201860(a1, a2, a3).super.isa;
  v12._countAndFlagsBits = v8;
  v12._object = v10;
  return CKRecord.init(recordType:recordID:)(v12, isa);
}

uint64_t sub_100202064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 40);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

uint64_t sub_100202158(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v18 = a3;
  v21[6] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v9 = *(v20 + 64);
  v10 = __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v17 - v11;
  (*(a5 + 24))(a4, a5, v10);
  v13 = *(AssociatedConformanceWitness + 40);
  v14 = swift_checkMetadataState();
  v13(v14, AssociatedConformanceWitness);
  sub_10009A468(&qword_1002E2988, &unk_10024A760);
  swift_getFunctionTypeMetadata1();
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();

  result = (*(v20 + 8))(v12, AssociatedTypeWitness);
  v16 = v21[0];
  if (v21[0])
  {
    if ((*(AssociatedConformanceWitness + 48))(v14, AssociatedConformanceWitness))
    {
      [v19 encryptedValues];
    }

    else
    {
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    sub_100201350(v14, AssociatedConformanceWitness);
    v16(v21, v18);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_10003D150(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100202470(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = 0;
  v7 = [v3 initForReadingFromData:isa error:&v11];

  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10000D170(a1, a2);
  return v7;
}

unint64_t sub_100202554()
{
  result = qword_1002E2990;
  if (!qword_1002E2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2990);
  }

  return result;
}

Swift::Int sub_1002025A8(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)((a1 & 1u) + 3);
  return Hasher._finalize()();
}

Swift::Int sub_100202600(char a1)
{
  Hasher.init(_seed:)();
  sub_1002029B8(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100202674(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_10003ACA4();
    sub_10003AC6C();
  }

  else
  {
    sub_10003AC88();
  }

  String.hash(into:)();
}

uint64_t sub_100202714()
{
  String.hash(into:)();
}

Swift::Int sub_100202820(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  sub_1002029B8(a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100202880(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)((a2 & 1u) + 3);
  return Hasher._finalize()();
}

Swift::Int sub_1002028D8(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    sub_10003ACA4();
    sub_10003AC6C();
  }

  else
  {
    sub_10003AC88();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10020296C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCD18, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002029B8(char a1)
{
  result = 0x63617073656D616ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x4B746E756F636361;
      break;
    case 3:
      result = 0x6E6F697461746F72;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_100202AB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10020296C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100202AE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002029B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100202B48()
{
  result = qword_1002E29B8;
  if (!qword_1002E29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E29B8);
  }

  return result;
}

unint64_t sub_100202BA0()
{
  result = qword_1002E29C0;
  if (!qword_1002E29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E29C0);
  }

  return result;
}

unint64_t sub_100202BF4(uint64_t a1)
{
  result = sub_100202C1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100202C1C()
{
  result = qword_1002E2A08;
  if (!qword_1002E2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2A08);
  }

  return result;
}

unint64_t sub_100202C74()
{
  result = qword_1002E2A10;
  if (!qword_1002E2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2A10);
  }

  return result;
}

unint64_t sub_100202CCC()
{
  result = qword_1002E2A18;
  if (!qword_1002E2A18)
  {
    sub_10009A468(&qword_1002E2A20, &qword_10024A678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2A18);
  }

  return result;
}

id sub_100202D40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - v7;
  v9 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v10 = type metadata accessor for UUID();
  if (sub_100004DFC(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a2, v8, v10);
  }

  sub_100202EAC(v8);
  sub_100202F14();
  swift_allocError();
  *v11 = a1;
  swift_willThrow();
  return a1;
}

uint64_t sub_100202EAC(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100202F14()
{
  result = qword_1002E2A28;
  if (!qword_1002E2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2A28);
  }

  return result;
}

BOOL sub_100202F68(void *a1)
{
  v2 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100202D40(a1, &v12[-v7]);
  v9 = type metadata accessor for UUID();
  sub_100002728(v8, 0, 1, v9);
  sub_100203080(v8, v5);
  v10 = sub_100004DFC(v5, 1, v9);
  if (v10 != 1)
  {
    sub_100202EAC(v5);
  }

  return v10 != 1;
}

uint64_t sub_100203080(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1002030F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1002031C8(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100203264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10020335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23 = a2;
  v21 = a1;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22[-1] - v11;
  sub_1001512EC(a3, v22);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  if (swift_dynamicCast())
  {
    sub_100002728(v12, 0, 1, a4);
    return (*(*(a4 - 8) + 32))(a5, v12, a4);
  }

  else
  {
    sub_100002728(v12, 1, 1, a4);
    (*(v9 + 8))(v12, v8);
    type metadata accessor for MalformedCKRecordError();
    swift_getWitnessTable();
    swift_allocError();
    v15 = v14;
    sub_10000C4FC(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v17 = a3[4];
    v22[0] = DynamicType;
    v22[1] = v17;
    v18 = v23;

    sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
    v19 = String.init<A>(describing:)();
    *v15 = v21;
    *(v15 + 8) = v18;
    *(v15 + 16) = v19;
    *(v15 + 24) = v20;
    *(v15 + 48) = 2;
    return swift_willThrow();
  }
}

uint64_t *(*sub_1002035C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;

  return sub_10003AD20;
}

uint64_t sub_100203648(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  sub_100204BF8(a4, &v13);
  if (v14)
  {
    sub_10000601C(&v13, v15);
    a1[3] = type metadata accessor for UUID();
    v10 = sub_100007914(a1);
    sub_1002098AC(a2, a3, v15, v10);
    sub_100004118(v15);
    if (v4)
    {
      sub_1001513E8(a1);
    }

    else
    {
    }
  }

  else
  {
    sub_100204C68(&v13);
    sub_100099DF4(&qword_1002E2A40, &qword_10024A7C8);
    sub_100204CE8();
    swift_allocError();
    *v11 = a2;
    *(v11 + 8) = a3;
    *(v11 + 48) = 1;
    swift_willThrow();
  }

  return KeyPath;
}

uint64_t *sub_100203774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t *))
{
  v12 = *a5;
  sub_100204BF8(a4, &v16);
  if (v17)
  {
    sub_10000601C(&v16, v18);
    a1[3] = *(v12 + class metadata base offset for KeyPath + 8);
    sub_100007914(a1);
    a6(a2, a3, v18);
    sub_100004118(v18);
    if (v6)
    {
      sub_1001513E8(a1);
    }

    else
    {
    }
  }

  else
  {
    sub_100204C68(&v16);
    v13 = *(v12 + class metadata base offset for KeyPath);
    type metadata accessor for MalformedCKRecordError();
    swift_getWitnessTable();
    swift_allocError();
    *v14 = a2;
    *(v14 + 8) = a3;
    *(v14 + 48) = 1;
    swift_willThrow();
  }

  return a5;
}

uint64_t sub_100203908()
{
  v0 = CKRecord.recordType.getter();
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (v0 == (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness) && v2 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

void sub_1002039F8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47[1] = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v54 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v55 = v47 - v12;
  if (((*(a3 + 48))(a1, a2, a3, v11) & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v47[0] = v4;
  v53 = a1;
  (*(a3 + 24))(a2, a3);
  v13 = swift_getAssociatedTypeWitness();
  v51 = v9;
  v14 = v13;
  type metadata accessor for InitializableFromCKRecordPropertyValueProvider();
  swift_getAssociatedConformanceWitness();
  v15 = Dictionary.keys.getter();

  v58 = v15;
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  v52 = sub_10003AE84();
  swift_checkMetadataState();
  v16 = v55;
  v50 = v5;
  v17 = dispatch thunk of static CaseIterable.allCases.getter();
  __chkstk_darwin(v17);
  v47[-2] = a2;
  v47[-1] = a3;
  KeyPath = swift_getKeyPath();
  v49 = v47;
  __chkstk_darwin(KeyPath);
  v48 = a2;
  v47[-4] = a2;
  v47[-3] = a3;
  v57 = a3;
  v47[-2] = v19;
  v20 = v51;
  v21 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = v50;
  v25 = sub_10020148C(sub_10003AD5C, &v47[-6], v21, v14, &type metadata for Never, AssociatedConformanceWitness, &protocol witness table for Never, v24);
  v50 = v23;

  v26 = *(v20 + 8);
  v26(v16, v21);
  v58 = v25;
  type metadata accessor for Array();
  sub_10003AE40();
  swift_getWitnessTable();
  sub_10003AE84();
  v27 = static Set.== infix(_:_:)();

  if ((v27 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v52 = v26;
  v28 = v55;
  v29 = dispatch thunk of static CaseIterable.allCases.getter();
  __chkstk_darwin(v29);
  v30 = AssociatedConformanceWitness;
  v31 = v48;
  v32 = v57;
  v47[-4] = v48;
  v47[-3] = v32;
  v47[-2] = v53;
  v33 = type metadata accessor for PartialKeyPath();
  v34 = sub_10009A468(&qword_1002DBBC8, &qword_100238210);
  v54 = v33;
  v51 = v34;
  swift_getTupleTypeMetadata2();
  sub_10009A468(&qword_1002DB2F0, &qword_10023F010);
  type metadata accessor for Result();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = AssociatedTypeWitness;
  v38 = sub_10020148C(sub_10003AD88, &v47[-6], AssociatedTypeWitness, TupleTypeMetadata2, &type metadata for Never, v30, &protocol witness table for Never, v37);
  v39 = v52(v28, v36);
  v40 = v38;
  v58 = v38;
  __chkstk_darwin(v39);
  v47[-2] = v31;
  v47[-1] = v32;
  type metadata accessor for Array();
  sub_100099DF4(&qword_1002E1D20, &qword_100248030);
  sub_10003AE40();
  swift_getWitnessTable();
  sub_10003AE58();
  v41 = sub_10020B60C();
  if (v41[2])
  {

    type metadata accessor for MalformedCKRecordError();
    swift_getWitnessTable();
    swift_allocError();
    *v42 = v41;
    *(v42 + 48) = 0;
    swift_willThrow();
  }

  else
  {

    v58 = v40;
    __chkstk_darwin(v43);
    v44 = v57;
    v47[-2] = v31;
    v47[-1] = v44;
    swift_getTupleTypeMetadata2();
    v45 = sub_10003AE58();

    v58 = v45;
    type metadata accessor for Array();
    sub_10003AE40();
    swift_getWitnessTable();
    v46 = Dictionary.init<A>(uniqueKeysWithValues:)();
    (*(v57 + 40))(v53, v46, v31);
  }
}

uint64_t sub_100204170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 40);
  v7 = swift_checkMetadataState();
  return v6(v7, AssociatedConformanceWitness);
}

uint64_t sub_100204264@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a2;
  v31[6] = a1;
  v27 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v9 = *(v30 + 64);
  v10 = __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v25 - v11;
  v29 = (*(a4 + 24))(a3, a4, v10);
  v13 = *(AssociatedConformanceWitness + 40);
  v14 = swift_checkMetadataState();
  v13(v14, AssociatedConformanceWitness);
  v25 = a4;
  v26 = a3;
  type metadata accessor for InitializableFromCKRecordPropertyValueProvider();
  swift_getAssociatedConformanceWitness();
  Dictionary.subscript.getter();

  result = (*(v30 + 8))(v12, AssociatedTypeWitness);
  v16 = v31[0];
  if (v31[0])
  {
    v17 = v31[1];
    if ((*(AssociatedConformanceWitness + 48))(v14, AssociatedConformanceWitness))
    {
      [v28 encryptedValues];
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v18 = sub_100201350(v14, AssociatedConformanceWitness);
    v20 = v19;
    swift_getObjectType();
    v21 = CKRecordKeyValueSetting.subscript.getter();
    v22 = v27;
    *v27 = v18;
    v22[1] = v20;
    __chkstk_darwin(v21);
    v23 = v25;
    *(&v25 - 8) = v26;
    *(&v25 - 7) = v23;
    *(&v25 - 6) = v16;
    *(&v25 - 5) = v17;
    *(&v25 - 4) = v18;
    *(&v25 - 3) = v20;
    *(&v25 - 2) = v31;
    type metadata accessor for PartialKeyPath();

    sub_10009A468(&qword_1002DBBC8, &qword_100238210);
    swift_getTupleTypeMetadata2();
    v24 = sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_100204634(sub_10003ADE4, v24, (v22 + 2));

    swift_unknownObjectRelease();
    sub_10003D150(v16);
    return sub_100204C68(v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100204634@<X0>(void (*a1)(_BYTE *, double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v15[-v12];
  a1(v7, v11);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v13, v8);
}

uint64_t sub_1002047E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for PartialKeyPath();
  sub_10009A468(&qword_1002DBBC8, &qword_100238210);
  swift_getTupleTypeMetadata2();
  sub_10009A468(&qword_1002DB2F0, &qword_10023F010);
  v4 = type metadata accessor for Result();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 16);
  v6(v10, a1, TupleTypeMetadata2);

  if (v12)
  {
    v7 = v11[0];
    v6(v10, a1, TupleTypeMetadata2);
    v8 = v10[1];
    *a2 = v10[0];
    a2[1] = v8;
    a2[2] = v7;
    return (*(*(v4 - 8) + 8))(v11, v4);
  }

  else
  {
    result = (*(*(v4 - 8) + 8))(v11, v4);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

_OWORD *sub_1002049A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PartialKeyPath();
  sub_10009A468(&qword_1002DBBC8, &qword_100238210);
  swift_getTupleTypeMetadata2();
  sub_10009A468(&qword_1002DB2F0, &qword_10023F010);
  v4 = type metadata accessor for Result();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 16))(&v8, a1, TupleTypeMetadata2);

  if (v11 == 1)
  {
    result = (*(*(v4 - 8) + 8))(&v9, v4);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v7 = v9;
    sub_1001514B8(&v10, v12);
    *a2 = v7;
    return sub_1001514B8(v12, (a2 + 8));
  }

  return result;
}

uint64_t sub_100204B24(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v5 = (*(a2 + 32))(a1, a2);
  [v5 encodeSystemFieldsWithCoder:v4];

  v6 = [v4 encodedData];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t sub_100204BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E2A30, &qword_10024A758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100204C68(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002E2A30, &qword_10024A758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100204CE8()
{
  result = qword_1002E2A48[0];
  if (!qword_1002E2A48[0])
  {
    sub_10009A468(&qword_1002E2A40, &qword_10024A7C8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002E2A48);
  }

  return result;
}

uint64_t sub_100204D4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100204D88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100204DC8(uint64_t result, int a2, int a3)
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

unint64_t sub_100204E08()
{
  result = qword_1002E2AD0;
  if (!qword_1002E2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2AD0);
  }

  return result;
}

uint64_t sub_100204E5C()
{
  v1 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [*(v0 + *(type metadata accessor for SyncDownSynchronizationRecord() + 20)) encodeSystemFieldsWithCoder:v1];
  v2 = [v1 encodedData];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100204EF8()
{
  sub_100099DF4(&qword_1002E2B08, &qword_10024A868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  _s20GlobalSyncStateModelCMa_0();
  sub_10003AF38(&qword_1002E28C8);
  sub_10003AF38(&qword_1002E28D0);
  KeyPath = swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10003AF7C;
  *(v2 + 24) = KeyPath;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10003AFBC;
  *(v3 + 24) = v2;
  *(inited + 32) = sub_10003B000;
  *(inited + 40) = v3;
  sub_100099DF4(&qword_1002E2B10, &qword_10024A8D0);
  sub_1002052F4();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100205054(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 8);
  v8 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  sub_100205348(a1, &v14 - v10);
  v12 = *a2;
  return (*(v7 + 48))(v11, v6, v7);
}

uint64_t sub_100205188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  sub_100205294(a1, a2, a3);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  sub_100002728(v9, 0, 1, v10);
  return (*(a3 + 48))(v9, a2, a3);
}

uint64_t sub_100205294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100204E5C();
  v5 = *(a3 + 72);

  return v5(v4);
}

unint64_t sub_1002052F4()
{
  result = qword_1002E2B18;
  if (!qword_1002E2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2B18);
  }

  return result;
}

uint64_t sub_100205348(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002053BC()
{
  result = qword_1002E2B20;
  if (!qword_1002E2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2B20);
  }

  return result;
}

uint64_t sub_100205410()
{
  sub_100099DF4(&qword_1002E2B58, &qword_10024A8F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002381F0;
  _s22PrivateIdentifierModelCMa_0();
  sub_1000329DC(&qword_1002E28D8);
  sub_1000329DC(&qword_1002E28E0);
  KeyPath = swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10003B258;
  *(v2 + 24) = KeyPath;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10003B094;
  *(v3 + 24) = v2;
  *(inited + 32) = 1;
  *(inited + 40) = sub_10003B0AC;
  *(inited + 48) = v3;
  v4 = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10003B0DC;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10003B26C;
  *(v6 + 24) = v5;
  *(inited + 56) = 0;
  *(inited + 64) = sub_10003B244;
  *(inited + 72) = v6;
  v7 = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10003B104;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10003B10C;
  *(v9 + 24) = v8;
  *(inited + 80) = 2;
  *(inited + 88) = sub_10003B248;
  *(inited + 96) = v9;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10003B178;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10003B180;
  *(v12 + 24) = v11;
  *(inited + 104) = 3;
  *(inited + 112) = sub_10003B24C;
  *(inited + 120) = v12;
  *(inited + 128) = 4;
  *(inited + 136) = sub_1002060CC;
  *(inited + 144) = 0;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10003B210;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10003B218;
  *(v15 + 24) = v14;
  *(inited + 152) = 5;
  *(inited + 160) = sub_10003B250;
  *(inited + 168) = v15;
  sub_100099DF4(&qword_1002E2B60, qword_10024AA40);
  sub_100202B48();
  return Dictionary.init(dictionaryLiteral:)();
}

double sub_1002057D8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 24);
  v11 = *a1;
  v6 = *(*(a2 + a3 - 8) + 16);
  dispatch thunk of Identifiable.id.getter();
  result = *&v8;
  *a4 = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  return result;
}

uint64_t sub_100205838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  result = (*(*(a2 + a3 - 8) + 24))(*(a2 + a3 - 24));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t sub_100205884(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v9 = *(v5 + 32);
  sub_1001D035C(*a1, v6);
  return v9(v7, v6, v4, v5);
}

uint64_t sub_1002058FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  result = (*(*(a2 + a3 - 8) + 72))(*(a2 + a3 - 24));
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1002059A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = PIScheduledRotationConfiguration.rotationInterval.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002059D4()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_100205A24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1001E6DFC();
  result = sub_1001E6E08();
  a1[3] = &type metadata for Int64;
  a1[4] = &protocol witness table for Int64;
  *a1 = v2;
  return result;
}

uint64_t sub_100205A74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1, v10);
  v14 = *a2;
  return (*(v7 + 176))(v12, v6, v7);
}

uint64_t sub_100205B6C()
{

  swift_getAtKeyPath();
}

uint64_t sub_100205BC4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = type metadata accessor for Date();
  a3[4] = &protocol witness table for Date;
  sub_100007914(a3);
  return a2(a1);
}

uint64_t sub_100205C24()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E68AC();
  v5 = UUID.uuidString.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100205D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = type metadata accessor for SyncDownIdentifierRecord();
  v19 = PIPersonalizedPrivateIdentifierMapping.id.getter();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = *(a10 + 16);
  v46 = a6;
  dispatch thunk of Identifiable.id.getter();
  LOBYTE(v23) = sub_1001EC54C(v19, v21, v23, v25, v50, v51, v52, v53);

  if (v23)
  {
    v41 = v18[13];
    v28 = (a1 + v18[14]);
    v29 = *v28;
    v30 = *(v28 + 8);
    sub_1001CCE80();
    v42 = v31;
    v33 = v32;
    v40 = *(a1 + v18[15]);
    sub_10003B270();
    WitnessTable = swift_getWitnessTable();
    v35 = sub_100204B24(v18, WitnessTable);
    v37 = v36;
    sub_1001CE75C(a1 + v41, v42, v33 & 1, v40, v35, v36, a1 + v18[12], a1 + v18[16], a2, a3, a4, a5, v46, a7, a8, a9, a10, a11, a12, a13, a14, a15, v40, v41, v42, v15, a12, a11, a2, a10, a8, a7, v46, a5);
    v39 = v38;
    sub_10000D170(v35, v37);
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100205F20()
{
  v3 = sub_10003B288();
  PIPersonalizedPrivateIdentifierMapping.id.getter();
  v4 = sub_10003B2BC();
  v12 = sub_10003B2F0(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, v22, v23, v24, v25, v26, v27);

  if (v12)
  {
    v14 = *(v2 + *(v3 + 60));
    sub_10003B270();
    WitnessTable = swift_getWitnessTable();
    v16 = sub_100204B24(v3, WitnessTable);
    v18 = v17;
    sub_1001CE61C(v14, v16, v17, v2 + *(v3 + 48), v21, v1, v0);
    return sub_10000D170(v16, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100206004()
{
  v2 = sub_10003B288();
  PIPersonalizedPrivateIdentifierMapping.id.getter();
  v3 = sub_10003B2BC();
  v11 = sub_10003B2F0(v3, v4, v5, v6, v7, v8, v9, v10, v20, v22, v24, v26, v28, v30, v32, v34);

  if (v11)
  {
    sub_10003B270();
    WitnessTable = swift_getWitnessTable();
    v14 = sub_100204B24(v2, WitnessTable);
    v16 = v15;
    sub_1001CE4E8(v14, v15, v23, v1, v0, v17, v18, v19, v21, v23, v25, v27, v29, v31, v33, v35, v36, v37, v38, v39);
    return sub_10000D170(v14, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1002060D4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_10003B4E8();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  return sub_10003B384;
}

uint64_t sub_100206130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v18 = type metadata accessor for SyncDownIdentifierRecord();
  v19 = v18[12];
  v20 = type metadata accessor for UUID();
  sub_10000307C(v20);
  (*(v21 + 32))(&a9[v19], a5);
  (*(*(a13 - 8) + 32))(&a9[v18[13]], a6, a13);
  v22 = &a9[v18[14]];
  *v22 = a7;
  v22[8] = a8 & 1;
  *&a9[v18[15]] = a10;
  v23 = v18[16];
  v24 = type metadata accessor for Date();
  sub_10000307C(v24);
  result = (*(v25 + 32))(&a9[v23], a11);
  *&a9[v18[17]] = a12;
  return result;
}

uint64_t sub_10020628C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v60 = a4;
  v61 = a5;
  v64 = a2;
  v58 = a6;
  v57 = type metadata accessor for Date();
  v9 = sub_10000307C(v57);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a3;
  v14 = *(*(a3 - 8) + 64);
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v62 = *(v18 - 8);
  v19 = *(v62 + 64);
  __chkstk_darwin(v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v44 - v24;
  v26 = [a1 recordID];
  sub_100202D40(v26, v25);

  if (v6)
  {
  }

  v53 = v25;
  v54 = v18;
  v50 = 0;
  v51 = a1;
  v55 = v21;
  v56 = v17;
  v52 = v13;
  __chkstk_darwin(v27);
  v29 = v59;
  swift_getKeyPath();
  sub_10003B468();
  *&v85 = v30;
  type metadata accessor for SyncDownIdentifierRecord();
  v31 = type metadata accessor for PartialKeyPath();
  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  v63 = v31;
  Dictionary.subscript.getter();

  if (!v84)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1001514B8(&v83, &v85);
  v32 = sub_10003B4D0();
  v48 = v82;
  v49 = v81;
  __chkstk_darwin(v32);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v80 = v33;
  Dictionary.subscript.getter();

  if (!v79)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001514B8(&v78, &v80);
  sub_10003B4D0();
  v46 = v77;
  v47 = v76;
  v34 = (*(v62 + 16))(v55, v53, v54);
  __chkstk_darwin(v34);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v75[0] = v35;
  Dictionary.subscript.getter();

  sub_100099DF4(&qword_1002DFF40, &qword_10024AB00);
  v36 = swift_dynamicCast();
  __chkstk_darwin(v36);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v75[0] = v37;
  Dictionary.subscript.getter();

  v38 = v52;
  if (!v74)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1001514B8(&v73, v75);
  v39 = sub_10003B4D0();
  v40 = v71;
  v45 = v72;
  __chkstk_darwin(v39);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v70 = v41;
  Dictionary.subscript.getter();

  if (!v69)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1001514B8(&v68, &v70);
  v42 = sub_10003B4D0();
  v44 = v86;
  __chkstk_darwin(v42);
  sub_10003B430();
  swift_getKeyPath();
  sub_10003B468();
  *&v67 = v43;
  Dictionary.subscript.getter();

  if (v66)
  {
    (*(v62 + 8))(v53, v54);

    sub_1001514B8(&v65, &v67);
    swift_dynamicCast();
    return sub_100206130(v49, v48, v47, v46, v55, v56, v40, v45, v58, v44, v38, v51, v29);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100206870()
{
  v0 = type metadata accessor for SyncDownIdentifierRecord();
  WitnessTable = swift_getWitnessTable();
  v24 = v0;
  type metadata accessor for InitializableFromCKRecordPropertyValueProvider();
  swift_getTupleTypeMetadata2();
  type metadata accessor for _ContiguousArrayStorage();
  swift_initStackObject();
  static Array._adoptStorage(_:count:)();
  v3 = v2;
  *v2 = 0;
  KeyPath = swift_getKeyPath();
  sub_1002060D4(v0, &type metadata for String, WitnessTable);
  v6 = v5;
  v7 = sub_1002035C0(KeyPath, sub_10003B384, v5, WitnessTable);
  v9 = v8;

  *(v3 + 1) = v7;
  *(v3 + 2) = v9;
  v3[24] = 1;
  v10 = swift_getKeyPath();
  v11 = sub_1002035C0(v10, sub_10003B384, v6, WitnessTable);
  v13 = v12;

  *(v3 + 4) = v11;
  *(v3 + 5) = v13;
  v3[48] = 2;
  swift_getKeyPath();
  v14 = sub_10003B4E8();
  sub_10003B474(v14);
  sub_10003B448();
  sub_10003B490();

  *(v3 + 7) = v11;
  *(v3 + 8) = v13;
  v3[72] = 3;
  swift_getKeyPath();
  v15 = sub_10003B4E8();
  sub_10003B474(v15);
  sub_10003B448();
  sub_10003B490();

  *(v3 + 10) = v11;
  *(v3 + 11) = v13;
  v3[96] = 4;
  swift_getKeyPath();
  v16 = sub_10003B4E8();
  sub_10003B474(v16);
  sub_10003B448();
  sub_10003B490();

  *(v3 + 13) = v11;
  *(v3 + 14) = v13;
  v3[120] = 5;
  v17 = swift_getKeyPath();
  v18 = type metadata accessor for Date();
  sub_1002060D4(v24, v18, WitnessTable);
  v20 = sub_1002035C0(v17, sub_10003B384, v19, WitnessTable);
  v22 = v21;

  *(v3 + 16) = v20;
  *(v3 + 17) = v22;
  type metadata accessor for Array();
  sub_100202B48();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_100206BB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1001512EC(a3, v20);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  if (swift_dynamicCast())
  {
    return (*(a6 + 16))(v18, v19, a4, a6);
  }

  type metadata accessor for SyncDownIdentifierRecord();
  swift_getWitnessTable();
  type metadata accessor for MalformedCKRecordError();
  swift_getWitnessTable();
  swift_allocError();
  v13 = v12;
  sub_10000C4FC(a3, a3[3]);
  DynamicType = swift_getDynamicType();
  v15 = a3[4];
  v20[0] = DynamicType;
  v20[1] = v15;

  sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
  v16 = String.init<A>(describing:)();
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = v16;
  *(v13 + 24) = v17;
  *(v13 + 48) = 2;
  return swift_willThrow();
}

uint64_t sub_100206D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1001512EC(a3, v16);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  result = swift_dynamicCast();
  if (result)
  {
    *a4 = v15;
    *(a4 + 8) = v15 < 6;
  }

  else
  {
    type metadata accessor for SyncDownIdentifierRecord();
    swift_getWitnessTable();
    type metadata accessor for MalformedCKRecordError();
    swift_getWitnessTable();
    swift_allocError();
    v10 = v9;
    sub_10000C4FC(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v12 = a3[4];
    v16[0] = DynamicType;
    v16[1] = v12;

    sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
    v13 = String.init<A>(describing:)();
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = v13;
    *(v10 + 24) = v14;
    *(v10 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100206F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_1001512EC(a3, v16);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  result = swift_dynamicCast();
  if (result)
  {
    *a4 = v15;
  }

  else
  {
    type metadata accessor for SyncDownIdentifierRecord();
    swift_getWitnessTable();
    type metadata accessor for MalformedCKRecordError();
    swift_getWitnessTable();
    swift_allocError();
    v10 = v9;
    sub_10000C4FC(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v12 = a3[4];
    v16[0] = DynamicType;
    v16[1] = v12;

    sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
    v13 = String.init<A>(describing:)();
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = v13;
    *(v10 + 24) = v14;
    *(v10 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10020709C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_100206870();
}

uint64_t sub_1002070DC(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(142);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v25._countAndFlagsBits = _typeName(_:qualified:)();
  sub_10003B4AC(v25);

  sub_10003B484();
  String.append(_:)(v5);
  String.append(_:)(*v1);
  v6._countAndFlagsBits = 0x7073656D616E202CLL;
  v6._object = 0xEC0000003D656361;
  String.append(_:)(v6);
  String.append(_:)(v1[1]);
  v7._countAndFlagsBits = 0x3D64697575202CLL;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8 = *(a1 + 48);
  type metadata accessor for UUID();
  sub_10003B3A0(&qword_1002E27E0, &type metadata accessor for UUID);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_10003B4AC(v26);

  sub_10003B484();
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v10 = *(a1 + 52);
  v11 = *(a1 + 16);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10003B484();
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v27._countAndFlagsBits = PIKeypairsRotationReason.description.getter(*(&v2->_countAndFlagsBits + *(a1 + 56)), *(&v2->_object + *(a1 + 56)));
  sub_10003B4AC(v27);

  sub_10003B484();
  String.append(_:)(v13);
  v24 = *(&v2->_countAndFlagsBits + *(a1 + 60));
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_10003B4AC(v28);

  sub_10003B484();
  String.append(_:)(v14);
  v15 = *(a1 + 64);
  type metadata accessor for Date();
  sub_10003B3A0(&qword_1002DBC58, &type metadata accessor for Date);
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  sub_10003B4AC(v29);

  v16._countAndFlagsBits = 0x6F6365526B63202CLL;
  v16._object = 0xEB000000003D6472;
  String.append(_:)(v16);
  v17 = [*(&v2->_countAndFlagsBits + *(a1 + 68)) description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 0;
}

unint64_t sub_1002073FC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v6 <= 0x3F)
      {
        result = sub_100207B24();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002074DC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v32 = *(a3 + 16);
  v33 = v5;
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v10;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v6 + 80);
  v17 = *(v6 + 64);
  v18 = *(v8 + 80);
  v19 = *(v12 + 80);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v8 + 64) + 23;
  v21 = v19 + 8;
  if (v15 >= a2)
  {
LABEL_31:
    if ((v14 & 0x80000000) != 0)
    {
      v31 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16;
      if (v7 == v15)
      {
        v13 = v7;
        v11 = v33;
      }

      else
      {
        v31 = (v31 + v17 + v18) & ~v18;
        if (v9 == v15)
        {
          v13 = v9;
          v11 = v32;
        }

        else
        {
          v31 = (v21 + ((v20 + v31) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
        }
      }

      return sub_100004DFC(v31, v13, v11);
    }

    else
    {
      v30 = *(a1 + 1);
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      return (v30 + 1);
    }
  }

  else
  {
    v22 = ((*(*(v11 - 8) + 64) + ((v21 + ((v20 + ((v17 + ((v16 + 32) & ~v16) + v18) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    result = v22 & 0xFFFFFFF8;
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a2 - v15 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    switch(v26)
    {
      case 1:
        v27 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      case 2:
        v27 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v27 = *(a1 + v22);
        if (!v27)
        {
          goto LABEL_31;
        }

LABEL_28:
        v28 = v27 - 1;
        if ((v22 & 0xFFFFFFF8) != 0)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        result = v15 + (v29 | v28) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1002077D8(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v31 = *(a4 + 16);
  v32 = v6;
  v9 = *(v31 - 8);
  v10 = *(v9 + 84);
  if (v8 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v11 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = *(v7 + 64);
  v19 = *(v9 + 80);
  v20 = *(v9 + 64) + 23;
  v21 = *(v13 + 80);
  v22 = v21 + 8;
  v23 = ((*(*(v12 - 8) + 64) + ((v21 + 8 + ((v20 + ((v18 + ((v17 + 32) & ~v17) + v19) & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v26 = 0;
  }

  else
  {
    if (((*(*(v12 - 8) + 64) + ((v21 + 8 + ((v20 + ((v18 + ((v17 + 32) & ~v17) + v19) & ~v19)) & 0xFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v24 = a3 - v16 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }
  }

  if (a2 <= v16)
  {
    v29 = ~v21;
    switch(v26)
    {
      case 1:
        *(a1 + v23) = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        *(a1 + v23) = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 3:
LABEL_53:
        __break(1u);
        break;
      case 4:
        *(a1 + v23) = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (a2)
        {
LABEL_38:
          if ((v15 & 0x80000000) != 0)
          {
            v30 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v17 + 16) & ~v17;
            if (v8 == v16)
            {
              v14 = v8;
              v12 = v32;
            }

            else
            {
              v30 = (v30 + v18 + v19) & ~v19;
              if (v10 == v16)
              {
                v14 = v10;
                v12 = v31;
              }

              else
              {
                v30 = (v22 + ((v20 + v30) & 0xFFFFFFFFFFFFFFF8)) & v29;
              }
            }

            sub_100002728(v30, a2, v14, v12);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = a2 - 1;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v12 - 8) + 64) + ((v21 + 8 + ((v20 + ((v18 + ((v17 + 32) & ~v17) + v19) & ~v19)) & 0xFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v27 = a2 - v16;
    }

    else
    {
      v27 = 1;
    }

    if (((*(*(v12 - 8) + 64) + ((v21 + 8 + ((v20 + ((v18 + ((v17 + 32) & ~v17) + v19) & ~v19)) & 0xFFFFFFF8)) & ~v21) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v28 = ~v16 + a2;
      bzero(a1, v23);
      *a1 = v28;
    }

    switch(v26)
    {
      case 1:
        *(a1 + v23) = v27;
        break;
      case 2:
        *(a1 + v23) = v27;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v23) = v27;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_100207B24()
{
  result = qword_1002E1208;
  if (!qword_1002E1208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002E1208);
  }

  return result;
}

uint64_t sub_100207B68(NSObject *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v262 = a6;
  v263 = a7;
  v251 = a5;
  v250 = a4;
  v249 = a3;
  v14 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v16);
  sub_100008280(&v231[-v17]);
  v237 = type metadata accessor for UUID();
  v18 = sub_100003724(v237);
  v235 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_100008280(&v231[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v244 = type metadata accessor for Date();
  v23 = sub_100003724(v244);
  v246 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v27);
  sub_100008280(&v231[-v28]);
  v253 = a11;
  v254 = a8;
  v252 = a10;
  v29 = type metadata accessor for SyncDownIdentifierRecord();
  v30 = sub_100003724(v29);
  v260 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_1000037D4();
  v248 = v34;
  __chkstk_darwin(v35);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v36);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v37);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v38);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v39);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_100002DD0();
  v255 = v41;
  __chkstk_darwin(v42);
  v44 = &v231[-v43];
  v45 = a1;
  v46 = PIPersonalizedPrivateIdentifierMapping.id.getter();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v261 = a2;
  v264 = a2;
  v259 = a9;
  v53 = *(a9 + 16);
  dispatch thunk of Identifiable.id.getter();
  v54 = sub_1001EC54C(v46, v48, v50, v52, v265[0], v265[1], v265[2], v265[3]);

  if ((v54 & 1) == 0)
  {
    __break(1u);
LABEL_67:
    v265[0] = v54;
    goto LABEL_69;
  }

  v55 = v260;
  v57 = (v260 + 16);
  v56 = *(v260 + 16);
  v258 = v45;
  v56(v44, v45, v29);
  swift_unknownObjectRetain_n();
  v58 = v262;
  v59 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_10003B684();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v29;
  v63 = v55;
  v256 = v56;
  v257 = v57;
  if (v61)
  {
    v64 = v62;
    v65 = sub_1000328AC();
    v233 = sub_10003B648();
    v265[0] = v233;
    *v65 = 136315394;
    v66 = v255;
    v56(v255, v44, v64);
    v67 = *(v63 + 8);
    v67(v44, v64);
    v232 = v58;
    sub_1002070DC(v64);
    sub_10003B5CC();
    v67(v66, v64);
    v68 = v261;
    sub_10003B57C();
    sub_10003B614();
    *(v65 + 4) = &unk_100247000;
    *(v65 + 12) = 2080;
    v264 = v68;
    v69 = v259;
    v70 = *(v259 + 8);
    v71 = v263;
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10003B5CC();
    swift_unknownObjectRelease_n();
    sub_10003B57C();
    sub_10003B614();
    *(v65 + 14) = &unk_100247000;
    _os_log_impl(&_mh_execute_header, v59, v232, "Comparing %s with %s", v65, 0x16u);
    swift_arrayDestroy();
    sub_1000327B4();
    v62 = v64;
    v72 = v67;
    sub_1000327B4();
  }

  else
  {
    v73 = v261;
    swift_unknownObjectRelease();
    v72 = *(v55 + 8);
    v74 = sub_10003B660();
    v72(v74);
    swift_unknownObjectRelease();

    v69 = v259;
    v71 = v263;
    v68 = v73;
  }

  v75 = v258;
  v76 = *(&v258->isa + v62[15]);
  v77 = v69 + 120;
  v78 = *(v69 + 120);
  v79 = sub_10003B604();
  if (v76 != (v78)(v79))
  {
    v95 = sub_10003B604();
    if ((v78)(v95) < v76)
    {
      v96 = v247;
      sub_10003B5BC();
      v97();
      swift_unknownObjectRetain();
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = v72;
        v101 = sub_1000328AC();
        v262 = swift_slowAlloc();
        v265[0] = v262;
        *v101 = 134218242;
        v102 = *(v96 + v62[15]);
        sub_10003B598();
        v103 = sub_10003B678();
        v100(v103);
        sub_10003B5F4();
        v104 = sub_10003B66C();
        v78(v104, v259);
        PIGenerationCounter.description.getter();
        sub_10003B5CC();
        swift_unknownObjectRelease();
        sub_10003B57C();
        sub_10003B614();
        *(v101 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v98, v99, "syncDownIdentifierRecord wins because its generation counter %llu is greater than the generation counter of persistedIdentifierRecord (%s", v101, 0x16u);
        sub_100004118(v262);
        sub_1000327B4();
        sub_1000327B4();
      }

      else
      {
        sub_10003B598();
        v137 = sub_10003B678();
        v72(v137);
        swift_unknownObjectRelease();
      }

      return 1;
    }

    v125 = v72;
    v126 = v248;
    sub_10003B5BC();
    v127();
    swift_unknownObjectRetain();
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.info.getter();
    if (sub_10003B62C(v129))
    {
      v261 = v62;
      v130 = v69;
      v131 = sub_1000328AC();
      v132 = swift_slowAlloc();
      v262 = v125;
      v133 = v132;
      v265[0] = v132;
      *v131 = 136315394;
      v134 = sub_10003B66C();
      v78(v134, v130);
      PIGenerationCounter.description.getter();
      sub_10003B5CC();
      swift_unknownObjectRelease();
      sub_10003B57C();
      sub_10003B614();
      *(v131 + 4) = v77;
      *(v131 + 12) = 2048;
      v135 = *(v126 + *(v261 + 60));
      sub_10003B598();
      v136(v126);
      *(v131 + 14) = v135;
      _os_log_impl(&_mh_execute_header, v128, v76, "persistedIdentifierRecord wins because its generation counter %s is greater than the generation counter of syncDownIdentifierRecord (%llu", v131, 0x16u);
      sub_100004118(v133);
      v92 = -1;
      sub_1000327B4();
      sub_1000327B4();

      return v92;
    }

    sub_10003B598();
    (v125)(v126, v62);
LABEL_36:
    swift_unknownObjectRelease();

    return -1;
  }

  v80 = v75 + v62[14];
  v81 = *v80;
  v82 = v80[8];
  v83 = *(v69 + 72);
  v84 = sub_10003B604();
  v86 = v85(v84) == 3;
  v88 = v87 & v86;
  if (v82 == 1 && v81 == 3)
  {
    if ((v88 & 1) == 0)
    {
      v138 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_10003B684();
      if (os_log_type_enabled(v138, v139))
      {
        *swift_slowAlloc() = 0;
        sub_10003B6B0(&_mh_execute_header, v140, v141, "syncDownIdentifierRecord wins because is a user initiated rotation and persistedIdentifierRecord is not");
        sub_1000327B4();
      }

      return 1;
    }
  }

  else if (v88)
  {
    v90 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_10003B684();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = -1;
      *swift_slowAlloc() = 0;
      sub_10003B6B0(&_mh_execute_header, v93, v94, "persistedIdentifierRecord wins because is a user initiated rotation and syncDownIdentifierRecord is not");
LABEL_57:
      sub_1000327B4();

      return v92;
    }

    return -1;
  }

  v105 = sub_1001D0040(v249, v250 & 1, v251, v71, v69);
  v106 = sub_10003B560();
  v111 = sub_100208FF4(v106, v107, v108, v109, v110);
  v54 = v111;
  if (v105)
  {
    if (v111 || (v112 = sub_10003B560(), sub_100209130(v112, v113, v114, v115, v116)))
    {
      v117 = v246;
      v118 = v244;
      (*(v246 + 16))(v245, v251, v244);
      swift_unknownObjectRetain();
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = 7104878;
        v122 = swift_slowAlloc();
        v265[0] = swift_slowAlloc();
        *v122 = 136315650;
        if (v250)
        {
          v123 = 0xE300000000000000;
          v124 = 7104878;
        }

        else
        {
          v124 = Double.description.getter();
          v123 = v187;
        }

        v188 = sub_100009E5C(v124, v123, v265);

        *(v122 + 4) = v188;
        *(v122 + 12) = 2080;
        v189 = v243;
        (*(v259 + 264))(v263);
        v190 = v189;
        v191 = v240;
        sub_1000A9914(v190, v240);
        if (sub_100004DFC(v191, 1, v118) == 1)
        {
          v192 = 0xE300000000000000;
          v193 = v246;
        }

        else
        {
          v193 = v246;
          v194 = v242;
          (*(v246 + 32))(v242, v191, v118);
          v121 = Date.description.getter();
          v192 = v195;
          (*(v193 + 8))(v194, v118);
        }

        sub_1000ACD3C(v243);
        v196 = sub_100009E5C(v121, v192, v265);

        *(v122 + 14) = v196;
        *(v122 + 22) = 2080;
        sub_10003B548();
        sub_10003B500(v197, v198);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B5CC();
        v199 = *(v193 + 8);
        v200 = sub_10003B678();
        v201(v200);
        sub_10003B57C();
        sub_10003B614();
        *(v122 + 24) = v192;
        _os_log_impl(&_mh_execute_header, v119, v120, "syncDownIdentifierRecord wins because persistedIdentifierRecord is considered stale: stalenessInterval=%s, persistedIdentifierRecord.lastAccessDate=%s, now=%s", v122, 0x20u);
        swift_arrayDestroy();
        sub_1000327B4();
        sub_1000327B4();
      }

      else
      {

        v152 = *(v117 + 8);
        v153 = sub_10003B660();
        v154(v153);
      }

      return 1;
    }

    v149 = v75;
    v150 = v68;
    v151 = v262;
LABEL_53:
    sub_100209308(v149, v150, v151, v71, v254, v69, v252, v253);
    return 0;
  }

  type metadata accessor for ComparisonResult(0);
  if (v54 == -1)
  {
    v155 = v241;
    sub_10003B5BC();
    v156();
    swift_unknownObjectRetain();
    v128 = Logger.logObject.getter();
    v157 = static os_log_type_t.info.getter();
    if (sub_10003B62C(v157))
    {
      v158 = v69;
      v92 = -1;
      v159 = sub_1000328AC();
      v262 = v72;
      v160 = v159;
      v261 = sub_10003B648();
      v265[0] = v261;
      *v160 = 136315394;
      v161 = *(v158 + 168);
      v162 = v242;
      v258 = v128;
      v163 = sub_10003B66C();
      v164(v163, v158);
      sub_10003B548();
      v259 = sub_10003B500(v165, v166);
      v167 = v244;
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10003B690();
      v168 = v246;
      v257 = *(v246 + 8);
      v257(v162, v167);
      sub_10003B5D8();
      sub_10003B6F0();
      sub_10003B5F4();
      v169 = v241;
      (*(v168 + 16))(v162, v241 + v62[16], v167);
      sub_10003B598();
      (v262)(v169, v62);
      dispatch thunk of CustomStringConvertible.description.getter();
      sub_10003B5CC();
      v257(v162, v167);
      sub_10003B57C();
      sub_10003B614();
      *(v160 + 14) = v158;
      v170 = "persistedIdentifierRecord wins because its synchronizedLastRotationDate %s is earlier than syncDownIdentifierRecord.lastRotationDate (%s)";
LABEL_56:
      v90 = v258;
      _os_log_impl(&_mh_execute_header, v258, v263, v170, v160, 0x16u);
      swift_arrayDestroy();
      sub_1000327B4();
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v142 = v262;
  if (v54)
  {
    if (v54 == 1)
    {
      v171 = v239;
      v256(v239, v75, v62);
      swift_unknownObjectRetain_n();
      v172 = Logger.logObject.getter();
      v173 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = sub_1000328AC();
        LODWORD(v261) = v173;
        v175 = v62;
        v176 = v174;
        v262 = sub_10003B648();
        v265[0] = v262;
        *v176 = 136315394;
        v177 = v62[16];
        v178 = v246;
        v179 = v72;
        v180 = v242;
        v181 = v244;
        (*(v246 + 16))(v242, v171 + v177, v244);
        sub_10003B598();
        v179(v171, v175);
        sub_10003B548();
        v184 = sub_10003B500(v182, v183);
        v185 = dispatch thunk of CustomStringConvertible.description.getter();
        v186 = *(v178 + 8);
        v186(v180, v181);
        sub_10003B5D8();
        sub_10003B6F0();
        *(v176 + 4) = v185;
        *(v176 + 12) = 2080;
        (*(v259 + 168))(v263);
        swift_unknownObjectRelease();
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B5CC();
        swift_unknownObjectRelease();
        v186(v180, v181);
        sub_10003B57C();
        sub_10003B614();
        *(v176 + 14) = v184;
        _os_log_impl(&_mh_execute_header, v172, v261, "syncDownIdentifierRecord wins because its lastRotationDate %s is earlier than persistedIdentifierRecord.synchronizedLastRotationDate (%s)", v176, 0x16u);
        sub_10003B6D0();
        sub_1000327B4();
        sub_1000327B4();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_10003B598();
        v202 = sub_10003B678();
        v72(v202);
        swift_unknownObjectRelease();
      }

      return 1;
    }

    goto LABEL_67;
  }

  v143 = sub_10003B560();
  v148 = sub_100209130(v143, v144, v145, v146, v147);
  switch(v148)
  {
    case -1:
      v155 = v238;
      sub_10003B5BC();
      v203();
      swift_unknownObjectRetain();
      v128 = Logger.logObject.getter();
      v204 = static os_log_type_t.info.getter();
      if (sub_10003B62C(v204))
      {
        v205 = v69;
        v92 = -1;
        v206 = sub_1000328AC();
        v262 = v72;
        v160 = v206;
        v261 = sub_10003B648();
        v265[0] = v261;
        *v160 = 136315394;
        v207 = *(v205 + 144);
        v208 = v236;
        v258 = v128;
        v209 = sub_10003B66C();
        v210(v209, v205);
        sub_10003B5A4();
        v259 = sub_10003B500(v211, v212);
        v213 = v237;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B690();
        v214 = v235;
        v257 = *(v235 + 8);
        v257(v208, v213);
        sub_10003B5D8();
        sub_10003B6F0();
        sub_10003B5F4();
        v215 = v238;
        (*(v214 + 16))(v208, v238 + v62[12], v213);
        sub_10003B598();
        (v262)(v215, v62);
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B5CC();
        v257(v208, v213);
        sub_10003B57C();
        sub_10003B614();
        *(v160 + 14) = v205;
        v170 = "persistedIdentifierRecord wins because its uuid %s is less than syncDownIdentifierRecord.uuid (%s)";
        goto LABEL_56;
      }

LABEL_58:
      sub_10003B598();
      (v72)(v155, v62);
      goto LABEL_36;
    case 0:
      v149 = v75;
      v150 = v68;
      v151 = v142;
      goto LABEL_53;
    case 1:
      v216 = v72;
      v217 = v234;
      v256(v234, v75, v62);
      swift_unknownObjectRetain_n();
      v218 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_10003B684();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = sub_1000328AC();
        v221 = sub_10003B648();
        LODWORD(v261) = v142;
        v262 = v221;
        v265[0] = v221;
        *v220 = 136315394;
        v222 = v235;
        (*(v235 + 16))(v236, v217 + v62[12], v237);
        sub_10003B598();
        v216(v217, v62);
        sub_10003B5A4();
        v225 = sub_10003B500(v223, v224);
        v226 = dispatch thunk of CustomStringConvertible.description.getter();
        v227 = *(v222 + 8);
        v228 = sub_10003B660();
        v227(v228);
        sub_10003B5D8();
        sub_10003B6F0();
        *(v220 + 4) = v226;
        *(v220 + 12) = 2080;
        (*(v259 + 144))(v263);
        swift_unknownObjectRelease();
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10003B5CC();
        swift_unknownObjectRelease();
        v229 = sub_10003B660();
        v227(v229);
        sub_10003B57C();
        sub_10003B614();
        *(v220 + 14) = v225;
        _os_log_impl(&_mh_execute_header, v218, v261, "syncDownIdentifierRecord wins because its uuid %s is less than persistedIdentifierRecord.uuid (%s)", v220, 0x16u);
        sub_10003B6D0();
        sub_1000327B4();
        sub_1000327B4();
      }

      else
      {
        swift_unknownObjectRelease();
        sub_10003B598();
        (v72)(v217, v62);
        swift_unknownObjectRelease();
      }

      return 1;
  }

  v265[0] = v148;
LABEL_69:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100208FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SyncDownIdentifierRecord() + 64);
  (*(a5 + 168))(a3, a5);
  v13 = Date.compare(_:)();
  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t sub_100209130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for SyncDownIdentifierRecord() + 48);
  v14 = *(a5 + 144);
  v18[0] = a3;
  v14(a3, a5);
  v18[1] = a1;
  LOBYTE(a1) = static UUID.== infix(_:_:)();
  v15 = *(v9 + 8);
  v15(v12, v8);
  result = 0;
  if ((a1 & 1) == 0)
  {
    v14(v18[0], a5);
    sub_10003B500(&qword_1002E1958, &type metadata accessor for UUID);
    v17 = dispatch thunk of static Comparable.> infix(_:_:)();
    v15(v12, v8);
    if (v17)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void sub_100209308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "syncDownIdentifierRecord and persistedIdentifierRecord are considered equal", v15, 2u);
  }

  v16 = type metadata accessor for SyncDownIdentifierRecord();
  v17 = *(v16 + 52);
  v18 = (*(a8 + 24))(a5, a8);
  v20 = v19;
  v22 = (*(a6 + 24))(a4, a6);
  v23 = v21;
  if (v20 >> 60 == 15)
  {
    if (v21 >> 60 == 15)
    {
      sub_10009A7A0(v18, v20);
      goto LABEL_11;
    }
  }

  else if (v21 >> 60 != 15)
  {
    sub_10000FF98(v18, v20);
    sub_1001D035C(v22, v23);
    v33 = static Data.== infix(_:_:)();
    sub_10009A7A0(v22, v23);
    sub_10000D170(v18, v20);
    sub_10009A7A0(v22, v23);
    sub_10009A7A0(v18, v20);
    if (v33)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_10009A7A0(v18, v20);
  sub_10009A7A0(v22, v23);
LABEL_8:
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "syncDownIdentifierRecord and persistedIdentifierRecord are considered equal, but have different account keypairs!", v26, 2u);
  }

LABEL_11:
  v27 = a1 + *(v16 + 56);
  v28 = *v27;
  v29 = *(v27 + 8);
  (*(a6 + 72))(a4, a6);
  sub_1001CCE80();
  if (!sub_1001C3048(v28, v29, v30))
  {
    oslog = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v31, "syncDownIdentifierRecord and persistedIdentifierRecord are considered equal, but have different rotation reasons!", v32, 2u);
    }
  }
}

uint64_t sub_100209668(void *a1)
{
  if (CKRecord.recordType.getter() == 0x6E6F7268636E7953 && v2 == 0xEF6E6F6974617A69)
  {
  }

  else
  {
    v4 = sub_10003B85C();

    result = 0;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  v6 = [a1 recordID];
  v7 = [v6 recordName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v8 == 0x6E6F7268636E7953 && v10 == 0xEF6E6F6974617A69)
  {

    return 1;
  }

  else
  {
    v12 = sub_10003B85C();

    return v12 & 1;
  }
}

uint64_t sub_100209770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (*(a2 + 16) && (v7 = sub_1001CC2C8(KeyPath), (v8 & 1) != 0))
  {
    sub_100009F20(*(a2 + 56) + 32 * v7, v10);

    sub_1001514B8(v10, &v11);
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    type metadata accessor for UUID();
    swift_dynamicCast();
    result = type metadata accessor for SyncDownSynchronizationRecord();
    *(a3 + *(result + 20)) = a1;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_10020984C()
{
  sub_100099DF4(&qword_1002E2C58, &unk_10024AC20);
  sub_1002052F4();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1002098AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_1001512EC(a3, v24);
  sub_100099DF4(&qword_1002E2988, &unk_10024A760);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100099DF4(&qword_1002E2A40, &qword_10024A7C8);
    sub_100204CE8();
    sub_10003B87C();
    v17 = v16;
    sub_10000C4FC(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v19 = a3[4];
    v24[0] = DynamicType;
    v24[1] = v19;

    sub_100099DF4(&qword_1002E2A38, &unk_10024AB70);
    v20 = String.init<A>(describing:)();
    *v17 = a1;
    *(v17 + 8) = a2;
    *(v17 + 16) = v20;
    *(v17 + 24) = v21;
    *(v17 + 48) = 2;
    return swift_willThrow();
  }

  v13 = v23[1];
  v12 = v23[2];
  UUID.init(uuidString:)();
  v14 = type metadata accessor for UUID();
  if (sub_100004DFC(v11, 1, v14) == 1)
  {
    sub_100202EAC(v11);
    sub_100099DF4(&qword_1002E2A40, &qword_10024A7C8);
    sub_100204CE8();
    sub_10003B87C();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 40) = &type metadata for String;
    *(v15 + 16) = v13;
    *(v15 + 24) = v12;
    *(v15 + 48) = 3;

    return swift_willThrow();
  }

  return (*(*(v14 - 8) + 32))(a4, v11, v14);
}

unint64_t sub_100209B24()
{
  _StringGuts.grow(_:)(25);

  type metadata accessor for UUID();
  sub_100209C98();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6F6365526B63202CLL;
  v2._object = 0xEB000000003D6472;
  String.append(_:)(v2);
  v3 = [*(v0 + *(type metadata accessor for SyncDownSynchronizationRecord() + 20)) description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD000000000000024;
}

uint64_t type metadata accessor for SyncDownSynchronizationRecord()
{
  result = qword_1002E2CB8;
  if (!qword_1002E2CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100209C98()
{
  result = qword_1002E27E0;
  if (!qword_1002E27E0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E27E0);
  }

  return result;
}

unint64_t sub_100209D18()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_100207B24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100209DE4()
{
  v0 = sub_100209E28();
  v1 = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();

  return v1;
}

uint64_t sub_100209E34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_100209E5C()
{
  sub_100209E34();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100209EAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100209EF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100209F30(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100209FAC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[4] = a2;
  return sub_100217C68(sub_10003B89C, v3, &type metadata for ()[8]);
}

uint64_t sub_10020A02C(uint64_t *a1)
{
  v2 = type metadata accessor for CKSyncEngine.Event.AccountChange.ChangeType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  CKSyncEngine.Event.AccountChange.changeType.getter();
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v8 = v7;
    if (v7 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:))
    {
      (*(v3 + 8))(v6, v2);
      sub_100209FF8(a1);
      return sub_100004118(a1);
    }

    v9 = enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:);
    (*(v3 + 8))(v6, v2);
    if (v8 != v9)
    {
      return sub_100004118(a1);
    }

    sub_100209FF8(a1);
  }

  sub_10020A60C(a1);
  return sub_100004118(a1);
}

uint64_t sub_10020A1EC(uint64_t a1, void *a2)
{
  sub_100099DF4(&qword_1002E1200, &qword_100247438);
  v3 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10022E400;
  sub_1001FE8E4();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = a2;
  v14._countAndFlagsBits = v10;
  v14._object = v12;
  *(v9 + v8) = CKRecordID.init(recordName:zoneID:)(v14, v13);
  (*(v5 + 104))(v9 + v8, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v3);
  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v9);
}

uint64_t sub_10020A334(void *a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = StaticString.description.getter();
    v8 = sub_100009E5C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Attempting to reset all local sync state", v4, 0xCu);
    sub_100004118(v5);
    sub_100031B34();

    sub_100031B34();
  }

  v9 = a1[3];
  v10 = a1[4];
  sub_10000C4FC(a1, v9);
  return sub_1001DD1E8(v9, v10);
}

uint64_t sub_10020A60C(void *a1)
{
  v3 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    sub_10003B91C(&_mh_execute_header, v7, v8, "Attempting to schedule sending all sync-eligible persisted records to the cloud");
    sub_100031B34();
  }

  v9 = a1[3];
  v10 = a1[4];
  sub_10000C4FC(a1, v9);
  (*(v10 + 88))(v22, v9, v10);
  if (v2)
  {
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to schedule sending all sync-eligible persisted records to the cloud: %@", v13, 0xCu);
      sub_1001A7228(v14);
      sub_100031B34();

      sub_100031B34();
    }

    return swift_willThrow();
  }

  else
  {
    v17 = v23;
    v18 = v24;
    sub_10000C4FC(v22, v23);
    v19 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v21 = sub_10020148C(sub_10003B8BC, v3, v17, v19, &type metadata for Never, v18, &protocol witness table for Never, v20);
    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v21);

    return sub_100004118(v22);
  }
}

uint64_t sub_10020A84C@<X0>(uint64_t *a1@<X1>, CKRecordID *a2@<X8>)
{
  v4 = *a1;
  swift_getWitnessTable();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1[7];
  sub_1001FE8E4();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v9 = v5;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  a2->super.isa = CKRecordID.init(recordName:zoneID:)(v10, v9).super.isa;
  v11 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
  v12 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t sub_10020A9E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v6 = a4;
  return sub_100217C68(sub_10003B8DC, v5, &type metadata for ()[8]);
}

uint64_t sub_10020AAFC(void *a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    *swift_slowAlloc() = 0;
    sub_10003B91C(&_mh_execute_header, v6, v7, "Handling identity loss by marking the CKRecordZone for deletion and re-sending all local sync-eligible persisted records");
    sub_100031B34();
  }

  sub_100099DF4(&qword_1002E2DF0, &qword_10024AD78);
  v8 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
  sub_100003724(v8);
  v10 = v9;
  v12 = *(v11 + 72);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10022E400;
  v15 = *(v2 + 56);
  *(v14 + v13) = v15;
  (*(v10 + 104))(v14 + v13, enum case for CKSyncEngine.PendingDatabaseChange.deleteZone(_:), v8);
  v16 = v15;
  CKSyncEngine.State.add(pendingDatabaseChanges:)(v14);

  return sub_10020A990(a1);
}

uint64_t sub_10020AD60(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002052F4();
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v10 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return v10;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      do
      {
LABEL_8:
        v7 &= v7 - 1;
        result = sub_100210EA8();
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10020AE38(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002052F4();
  v3 = Set.init(minimumCapacity:)();
  v7 = v3;
  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      sub_100210EA8();
      --v4;
    }

    while (v4);

    return v7;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

Swift::Int sub_10020AEC0(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_12:
    v7 &= v7 - 1;
    v10 = *(a2 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_10020AFD4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v3;
  if (sub_100209668(a1))
  {
    v2 = sub_100099DF4(&qword_1002E2C58, &unk_10024AC20);
    sub_1002052F4();
    sub_10003C0F4();
    v11 = Dictionary.init(dictionaryLiteral:)();
    v4 = sub_10020AD60(v11);
    v6 = _swiftEmptyArrayStorage;
    v84 = _swiftEmptyArrayStorage;
    sub_1001CC60C(0, 1, 0);
    v12 = _swiftEmptyArrayStorage;
    v13 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    v5 = v13 + 1;
    if (v13 < v10 >> 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v72 = sub_10003C0E8(v10);
  sub_1001CC60C(v72, v5, 1);
  v12 = v84;
LABEL_3:
  v12[2] = v5;
  v14 = sub_10020AE38(v12);
  v15 = sub_10020AEC0(v4, v14);

  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    v73 = sub_10003C0E8(v16);
    sub_1001CC5EC(v73, v15, 1);
    v6 = *&v78[0];
    goto LABEL_10;
  }

  *&v78[0] = v6;
  sub_1001CC5EC(0, 1, 0);
  sub_10003C0F4();
  v17 = Dictionary.init(dictionaryLiteral:)();
  if (!*(v17 + 16) || (v18 = sub_1001CC3E4(), (v19 & 1) == 0))
  {

    __break(1u);
    return;
  }

  v20 = *(v17 + 56) + 16 * v18;
  v22 = *v20;
  v21 = *(v20 + 8);

  [a1 encryptedValues];
  v76 = a2;
  v89 = a1;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v23 = v22(v85, 1684632949, 0xE400000000000000, &v80);
  if (v3)
  {
    LOBYTE(a2) = 1;
    LOBYTE(v84) = 1;
  }

  else
  {
    v7 = v23;
    LOBYTE(a2) = 0;
    v86 = 0;
    v87 = v85[0];
    v88 = v85[1];
  }

  swift_unknownObjectRelease();
  sub_10003CD48(&v80, &qword_1002E2A30, &qword_10024A758);
  v2 = v6[2];
  v16 = v6[3];
  v15 = v2 + 1;
  if (v2 >= v16 >> 1)
  {
    goto LABEL_34;
  }

LABEL_10:
  v24 = v6 + 4;
  v74 = v2;
  v25 = &v6[8 * v2 + 4];
  v26 = v88;
  *(v25 + 24) = v87;
  v6[2] = v15;
  v27 = _swiftEmptyArrayStorage;
  v28 = &qword_1002E1218;
  *v25 = 1684632949;
  *(v25 + 8) = 0xE400000000000000;
  *(v25 + 16) = v7;
  *(v25 + 40) = v26;
  *(v25 + 56) = a2;
  v75 = v24;
  do
  {
    sub_10003C0F4();
    sub_100012C2C(v29, v30, v31, v32);
    sub_10003C0F4();
    sub_100012C2C(v33, v34, v35, v36);

    if (v83)
    {
      v37 = v28;
      v38 = v81;
      sub_10003C0A4();
      v39 = v80;
      sub_10003CD48(&v81, &qword_1002E2E48, &qword_10024ADC0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = v27[2];
        v44 = sub_10000657C();
        sub_1001DEF84(v44, v45, v46, v27);
        v27 = v47;
      }

      v41 = v27[2];
      v40 = v27[3];
      if (v41 >= v40 >> 1)
      {
        v48 = sub_10003C0E8(v40);
        sub_1001DEF84(v48, v41 + 1, 1, v27);
        v27 = v49;
      }

      v27[2] = v41 + 1;
      v42 = &v27[3 * v41];
      *(v42 + 2) = v39;
      v42[6] = v38;
      v28 = v37;
    }

    else
    {
      sub_10003CD48(&v84, v28, &qword_100247448);
      sub_10003CD48(&v81, &qword_1002E2E48, &qword_10024ADC0);
    }

    v24 += 8;
    --v15;
  }

  while (v15);
  sub_10003C08C();
  v53 = sub_10003BC64(v27, v50, v51, v52);
  if (v53[2])
  {

    sub_100099DF4(&qword_1002E2A40, &qword_10024A7C8);
    sub_1000326A8(qword_1002E2A48, &qword_1002E2A40, &qword_10024A7C8);
    swift_allocError();
    *v54 = v53;
    *(v54 + 48) = 0;
    swift_willThrow();
  }

  else
  {

    v55 = _swiftEmptyArrayStorage;
    v56 = v75;
    v57 = v74 + 1;
    do
    {
      sub_100012C2C(v56, &v84, &qword_1002E1218, &qword_100247448);
      sub_10003C0A4();

      if (v83 == 1)
      {
        sub_10003CD48(&v81, &qword_1002E2E48, &qword_10024ADC0);
      }

      else
      {
        v58 = v81;
        sub_1001514B8((&v81 + 8), v77);
        *&v78[0] = v58;
        sub_1001514B8(v77, (v78 + 8));
        v80 = v78[0];
        v81 = v78[1];
        v82 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = v55[2];
          v65 = sub_10000657C();
          sub_1001DEE88(v65, v66, v67, v55);
          v55 = v68;
        }

        v60 = v55[2];
        v59 = v55[3];
        if (v60 >= v59 >> 1)
        {
          v69 = sub_10003C0E8(v59);
          sub_1001DEE88(v69, v60 + 1, 1, v55);
          v55 = v70;
        }

        v55[2] = v60 + 1;
        v61 = &v55[5 * v60];
        v62 = v80;
        v63 = v81;
        v61[8] = v82;
        *(v61 + 2) = v62;
        *(v61 + 3) = v63;
      }

      v56 += 64;
      --v57;
    }

    while (v57);

    v71 = sub_10003BC64(v55, &qword_1002E2E50, &qword_10024ADC8, sub_100211F88);
    sub_100209770(v89, v71, v76);
  }
}

uint64_t sub_10020B684(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000037D4();
  v38 = v9;
  __chkstk_darwin(v10);
  v12 = &v35[-v11];
  __chkstk_darwin(v13);
  v39 = &v35[-v14];
  v15 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
  v16 = 0;
  v17 = *(v15 + 16);
  v41 = v6 + 8;
  while (1)
  {
    if (v17 == v16)
    {
    }

    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_13:

      v33 = sub_10003C114();
      result = v34(v33);
      __break(1u);
      return result;
    }

    v18 = *(v6 + 16);
    v18(v12, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v3);
    v19 = sub_10020BA08(v12, v42);
    if (v2)
    {
      goto LABEL_13;
    }

    if (v19)
    {
      break;
    }

    v20 = sub_10003C114();
    v21(v20);
    ++v16;
  }

  v23 = v39;
  (*(v6 + 32))(v39, v12, v3);
  v18(v38, v23, v3);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v26 = 136315138;
    sub_10003C044(&qword_1002E2DF8, &type metadata accessor for CKDatabase.DatabaseChange.Deletion);
    v36 = v25;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = sub_10003C0D4();
    v12(v30);
    v31 = sub_100009E5C(v27, v29, &v43);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v36, "Fetched deletion of CKRecordZone %s, resetting local sync state and re-adding all sync-eligible persisted records", v26, 0xCu);
    sub_100004118(v37);
    sub_1000327B4();
    sub_1000327B4();
  }

  else
  {

    v32 = sub_10003C0D4();
    v12(v32);
  }

  sub_10020A9E0(v40, "Handling CKRecordZone deletion", 30, 2);
  return (v12)(v23, v3);
}

uint64_t sub_10020BA08(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_getWitnessTable();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003AE0(0, &qword_1002E2E00, NSObject_ptr);
  v4 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
  v5 = a2[7];
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_10020BB08(uint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  v5[4] = a2;
  v3 = sub_100099DF4(&qword_1002E2E08, &qword_10024AD88);
  result = sub_100217C68(sub_10003BD18, v5, v3);
  if (!v2 && v6 == 1)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10020BB98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v88 = a4;
  v84 = a5;
  v8 = type metadata accessor for Date();
  v82 = *(v8 - 8);
  v83 = v8;
  v9 = *(v82 + 64);
  __chkstk_darwin(v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v79 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v76 - v17;
  __chkstk_darwin(v18);
  v20 = &v76 - v19;
  v21 = *(CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter() + 16);

  v87 = v11;
  v89 = v12;
  v80 = a3;
  v85 = a2;
  if (v21)
  {
    (*(v13 + 16))(v20, a2, v12);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v90 = v25;
      *v24 = 136315138;
      CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
      type metadata accessor for CKDatabase.RecordZoneChange.Modification();
      v26 = Array.description.getter();
      v77 = a1;
      v27 = v26;
      v29 = v28;

      (*(v13 + 8))(v20, v89);
      v30 = v27;
      a1 = v77;
      v31 = sub_100009E5C(v30, v29, &v90);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Fetched CKRecord modifications: %s", v24, 0xCu);
      sub_100004118(v25);
    }

    else
    {

      (*(v13 + 8))(v20, v12);
    }

    v11 = v87;
    a3 = v80;
    a2 = v85;
  }

  v86 = v13;
  static Date.now.getter();
  v32 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
  __chkstk_darwin(v32);
  *(&v76 - 4) = a3;
  *(&v76 - 3) = a1;
  v33 = v88;
  *(&v76 - 2) = v11;
  *(&v76 - 1) = v33;
  v34 = v81;
  v35 = sub_10003BAD0(sub_10003BD38, (&v76 - 6), v32, &type metadata accessor for CKDatabase.RecordZoneChange.Modification, sub_1001DEE64);
  v36 = v34;

  v81 = sub_10003BC64(v35, &qword_1002E2E28, &qword_10024ADA0, sub_100211B64);
  v37 = a2;
  v38 = *(CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter() + 16);

  v39 = a3;
  if (v38)
  {
    v77 = v34;
    v40 = v86;
    v41 = v78;
    v42 = v89;
    (*(v86 + 16))(v78, v37, v89);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v90 = v46;
      *v45 = 136315138;
      CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
      type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
      v47 = Array.description.getter();
      v48 = a1;
      v50 = v49;

      (*(v86 + 8))(v41, v89);
      v51 = sub_100009E5C(v47, v50, &v90);
      a1 = v48;

      *(v45 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "Fetched CKRecord deletions: %s", v45, 0xCu);
      sub_100004118(v46);
      v39 = v80;
    }

    else
    {

      (*(v40 + 8))(v41, v42);
    }

    v11 = v87;
    v37 = v85;
    v36 = v77;
  }

  v52 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
  __chkstk_darwin(v52);
  *(&v76 - 4) = v39;
  *(&v76 - 3) = a1;
  *(&v76 - 2) = v88;
  *(&v76 - 1) = v11;
  v53 = v36;
  v54 = sub_10003BAD0(sub_10003BD58, (&v76 - 6), v52, &type metadata accessor for CKDatabase.RecordZoneChange.Deletion, sub_1001DEE40);

  v55 = sub_10003BC64(v54, &qword_1002E2E18, &qword_10024AD90, sub_100211864);
  v56 = *(CKSyncEngine.Event.FetchedRecordZoneChanges.zoneAttributesModifications.getter() + 16);

  if (v56)
  {
    v88 = v55;
    v57 = v86;
    v58 = v79;
    v59 = v89;
    (*(v86 + 16))(v79, v37, v89);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v90 = v80;
      *v62 = 136315138;
      CKSyncEngine.Event.FetchedRecordZoneChanges.zoneAttributesModifications.getter();
      type metadata accessor for CKDatabase.RecordZoneChange.ZoneAttributesModification();
      v63 = a1;
      v64 = Array.description.getter();
      v85 = v53;
      v66 = v65;

      (*(v57 + 8))(v58, v89);
      v67 = v64;
      a1 = v63;
      v68 = sub_100009E5C(v67, v66, &v90);

      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v60, v61, "Fetched CKRecordZone attribute modifications: %s", v62, 0xCu);
      sub_100004118(v80);
    }

    else
    {

      (*(v57 + 8))(v58, v59);
    }

    v11 = v87;
    v55 = v88;
  }

  v69 = v81;
  if (v81[2] || v55[2])
  {
    sub_1002108F4();
    v70 = swift_allocError();
    *v71 = v69;
    *(v71 + 8) = v55;
    *(v71 + 24) = 0;
    *(v71 + 32) = 0;
    *(v71 + 16) = 0;
    v72 = 1;
    *(v71 + 40) = 0;
  }

  else
  {

    v70 = 0;
    v72 = 0;
  }

  v73 = v83;
  v74 = v84;
  *v84 = v70;
  *(v74 + 8) = v72;
  (*(v82 + 8))(v11, v73);
  return sub_100004118(a1);
}

void sub_10020C418(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, _OWORD *a6@<X8>)
{
  v13 = *a2;
  v14 = *(*a2 + 6);
  v18[0] = *(*a2 + 5);
  v18[1] = v14;
  v15 = *(v13 + 8);
  v18[2] = *(v13 + 7);
  v18[3] = v15;
  v16 = *(v13 + 10);
  v18[4] = *(v13 + 9);
  v18[5] = v16;
  v18[6] = *(v13 + 11);
  _s18SyncEngineDelegateCMa();
  swift_getWitnessTable();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = objc_autoreleasePoolPush();
  sub_10020C574(a1, a2, a3, a4, a5, v18);
  objc_autoreleasePoolPop(v17);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *a6 = v18[0];
  }
}

void sub_10020C574(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t *a6@<X8>)
{
  v301 = a5;
  *&v312 = a4;
  *&v316 = a3;
  v321 = a6;
  v309 = *a2;
  v8 = v309;
  v324 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v322 = *(v324 - 8);
  v9 = *(v322 + 64);
  __chkstk_darwin(v324);
  *&v313 = &v287 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v319 = &v287 - v12;
  __chkstk_darwin(v13);
  v320 = &v287 - v14;
  __chkstk_darwin(v15);
  v17 = &v287 - v16;
  v18 = type metadata accessor for SyncDownSynchronizationRecord();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  *&v311 = &v287 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  *&v315 = &v287 - v22;
  __chkstk_darwin(v23);
  *&v314 = &v287 - v24;
  v304 = type metadata accessor for UUID();
  *&v303 = *(v304 - 1);
  v25 = *(v303 + 64);
  __chkstk_darwin(v304);
  v302 = &v287 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v8[15];
  v28 = v8[16];
  v308 = v8[10];
  v307 = v27;
  v306 = v28;
  v29 = type metadata accessor for SyncDownIdentifierRecord();
  v318 = *(v29 - 8);
  v30 = *(v318 + 64);
  __chkstk_darwin(v29);
  v305 = (&v287 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v300 = &v287 - v33;
  __chkstk_darwin(v34);
  v310 = &v287 - v35;
  __chkstk_darwin(v36);
  v38 = &v287 - v37;
  __chkstk_darwin(v39);
  v41 = &v287 - v40;
  __chkstk_darwin(v42);
  v317 = (&v287 - v43);
  v44 = CKDatabase.RecordZoneChange.Modification.record.getter();
  WitnessTable = swift_getWitnessTable();
  *&v323 = v29;
  LOBYTE(v8) = sub_100203908();

  v326 = a1;
  if ((v8 & 1) == 0)
  {
    v66 = CKDatabase.RecordZoneChange.Modification.record.getter();
    v67 = sub_100209668(v66);

    if (v67)
    {
      v325 = a2;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v324;
      v72 = v322;
      v73 = v327;
      if (v70)
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Fetched synchronization CKRecord", v74, 2u);
      }

      v75 = v326;
      v76 = CKDatabase.RecordZoneChange.Modification.record.getter();
      v77 = v315;
      sub_10020AFD4(v76, v315);
      v327 = v73;
      if (v73)
      {
        v55 = v72;
        v78 = v313;
        (*(v72 + 16))(v313, v75, v71);
        swift_errorRetain();
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *v81 = 138412546;
          v83 = CKDatabase.RecordZoneChange.Modification.record.getter();
          (*(v72 + 8))(v78, v71);
          *(v81 + 4) = v83;
          *v82 = v83;
          *(v81 + 12) = 2112;
          swift_errorRetain();
          v84 = _swift_stdlib_bridgeErrorToNSError();
          *(v81 + 14) = v84;
          v82[1] = v84;
          _os_log_impl(&_mh_execute_header, v79, v80, "Failed to create SyncDownSynchronizationRecord instance from CKRecord %@: %@", v81, 0x16u);
          sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
          swift_arrayDestroy();
          v55 = v72;

          v75 = v326;
        }

        else
        {

          (*(v72 + 8))(v78, v71);
        }

        swift_willThrow();
        v106 = v320;
        goto LABEL_53;
      }

      v107 = v77;
      v108 = v314;
      sub_100211E64(v107, v314);
      v109 = v108;
      v110 = v311;
      sub_100211EC8(v109, v311);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = v110;
        v114 = v71;
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v333 = v116;
        *v115 = 136315138;
        v117 = sub_100209B24();
        v119 = v118;
        sub_100211F2C(v113);
        v120 = sub_100009E5C(v117, v119, &v333);

        *(v115 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v111, v112, "syncDownSynchronizationRecord=%s", v115, 0xCu);
        sub_100004118(v116);

        v71 = v114;
        v55 = v322;

        v121 = v316;
      }

      else
      {

        sub_100211F2C(v110);
        v121 = v316;
        v55 = v72;
      }

      v147 = v121[3];
      v148 = v121[4];
      sub_10000C4FC(v121, v147);
      v149 = v327;
      (*(v148 + 56))(v147, v148);
      if (v149)
      {
        sub_100211F2C(v314);
        v327 = v149;
        v106 = v320;
        goto LABEL_52;
      }

      v150 = v314;
      sub_100205188(v314, v309[12], v309[20]);
      swift_unknownObjectRelease();
      sub_100211F2C(v150);
    }

    else
    {
      v85 = v322;
      v86 = v324;
      (*(v322 + 16))(v17, a1, v324);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v89 = 138412290;
        v91 = CKDatabase.RecordZoneChange.Modification.record.getter();
        (*(v85 + 8))(v17, v86);
        *(v89 + 4) = v91;
        *v90 = v91;
        _os_log_impl(&_mh_execute_header, v87, v88, "fetched modification of an unknown CKRecord %@, ignoring", v89, 0xCu);
        sub_10003CD48(v90, &qword_1002E2700, &unk_1002474D0);
      }

      else
      {

        (*(v85 + 8))(v17, v86);
      }
    }

LABEL_34:
    v151 = v321;
LABEL_35:
    *v151 = 0;
    v151[1] = 0;
    return;
  }

  v46 = qword_100310708;
  v325 = a2;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Fetched identifier CKRecord", v49, 2u);
  }

  v50 = v326;
  v51 = CKDatabase.RecordZoneChange.Modification.record.getter();
  v52 = v323;
  v53 = v327;
  sub_1002039F8(v51, v323, WitnessTable, v41);
  v327 = v53;
  v54 = v319;
  if (v53)
  {
    v55 = v322;
    v56 = v324;
    (*(v322 + 16))(v319, v50, v324);
    swift_errorRetain();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v55;
      v61 = swift_slowAlloc();
      *v59 = 138412546;
      v62 = CKDatabase.RecordZoneChange.Modification.record.getter();
      v63 = v54;
      v64 = v56;
      (*(v60 + 8))(v63, v56);
      *(v59 + 4) = v62;
      *v61 = v62;
      *(v59 + 12) = 2112;
      swift_errorRetain();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 14) = v65;
      v61[1] = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "Failed to create SyncDownIdentifierRecord instance from CKRecord %@: %@", v59, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
      v55 = v60;
    }

    else
    {

      v105 = v54;
      v64 = v56;
      (*(v55 + 8))(v105, v56);
    }

    v106 = v320;
    swift_willThrow();
    v75 = v326;
    v71 = v64;
    goto LABEL_53;
  }

  v92 = v318;
  v93 = v317;
  (*(v318 + 32))(v317, v41, v52);
  v94 = *(v92 + 16);
  v94(v38, v93, v52);
  *&v315 = v46;
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.info.getter();
  v97 = os_log_type_enabled(v95, v96);
  *&v314 = v92 + 16;
  *&v313 = v94;
  if (v97)
  {
    v98 = swift_slowAlloc();
    *&v311 = swift_slowAlloc();
    v333 = v311;
    *v98 = 136315138;
    v99 = v310;
    v94(v310, v38, v323);
    v100 = *(v92 + 8);
    (v100)(v38, v323);
    v101 = sub_1002070DC(v323);
    v103 = v102;
    v319 = v100;
    (v100)(v99, v323);
    v93 = v317;
    v104 = sub_100009E5C(v101, v103, &v333);

    *(v98 + 4) = v104;
    _os_log_impl(&_mh_execute_header, v95, v96, "syncDownIdentifierRecord=%s", v98, 0xCu);
    sub_100004118(v311);

    v52 = v323;
  }

  else
  {
    v319 = *(v92 + 8);
    (v319)(v38, v52);
  }

  v122 = PIPersonalizedPrivateIdentifierMapping.id.getter();
  v123 = v93;
  v125 = v124;
  v127 = v126;
  v129 = v128;
  v130 = *(v316 + 24);
  v131 = *(v316 + 32);
  sub_10000C4FC(v316, v130);
  v132 = v327;
  v133 = (*(v131 + 64))(v122, v125, v127, v129, v130, v131);
  v75 = v326;
  v327 = v132;
  if (!v132)
  {
    v134 = v133;
    v297 = v122;
    v298 = v127;
    v310 = v129;
    *&v311 = v125;
    if (v133)
    {
      swift_unknownObjectRetain();
      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v305 = swift_slowAlloc();
        v333 = v305;
        *v137 = 136315138;
        v328 = v134;
        v138 = v309;
        v139 = v309[13];
        v293 = v309[22];
        v140 = *(v293 + 8);
        v141 = dispatch thunk of CustomStringConvertible.description.getter();
        v143 = v142;
        swift_unknownObjectRelease();
        v144 = sub_100009E5C(v141, v143, &v333);

        *(v137 + 4) = v144;
        v145 = v134;
        _os_log_impl(&_mh_execute_header, v135, v136, "Found existing identifier record for fetched CKRecord: %s", v137, 0xCu);
        sub_100004118(v305);

        v146 = v293;
      }

      else
      {
        swift_unknownObjectRelease();

        v145 = v134;
        v138 = v309;
        v139 = v309[13];
        v146 = v309[22];
      }

      v175 = v308;
      v176 = v138[11];
      v305 = v138[14];
      v177 = v138[17];
      v296 = v138[18];
      v295 = v138[23];
      v178 = v306;
      v179 = v307;
      v299 = v145;
      v180 = sub_1001CFDE8(1, 1, (v325 + v315), v312, v308, v176, v139, v308, v176, v305, v146, v307, v306, v177, v296, v295);
      v309 = v139;
      v294 = &v287;
      v333 = v180;
      __chkstk_darwin(v180);
      *(&v287 - 16) = v175;
      *(&v287 - 15) = v176;
      v292 = v176;
      v182 = v181;
      *(&v287 - 14) = v138[12];
      *(&v287 - 13) = v183;
      *(&v287 - 12) = v305;
      *(&v287 - 11) = v179;
      v184 = v295;
      *(&v287 - 10) = v178;
      *(&v287 - 9) = v177;
      v291 = v177;
      v281 = v296;
      v185 = v146;
      v282 = *(v138 + 19);
      v186 = v138[21];
      v283 = v186;
      v284 = v146;
      v285 = v184;
      v286 = v316;
      type metadata accessor for Array();

      swift_getWitnessTable();
      v187 = v327;
      Sequence.forEach(_:)();
      if (v187)
      {
        swift_unknownObjectRelease();

        (v319)(v317, v323);
        v327 = v187;
        v75 = v326;
        v106 = v320;
        v71 = v324;
LABEL_41:
        v55 = v322;
        goto LABEL_53;
      }

      v290 = v186;
      v327 = 0;

      v188 = v317;
      v189 = sub_100207B68(v317, v299, v325[8], *(v325 + 72), v312, (v325 + v315), v309, v308, v146, v307, v306);
      type metadata accessor for ComparisonResult(0);
      if (v189 != -1 && v189 != 1)
      {
        v268 = v323;
        if (!v189)
        {

          v269 = Logger.logObject.getter();
          v270 = static os_log_type_t.info.getter();
          v271 = os_log_type_enabled(v269, v270);
          v272 = v317;
          if (v271)
          {
            v273 = swift_slowAlloc();
            *v273 = 0;
            _os_log_impl(&_mh_execute_header, v269, v270, "Cloud version of fetched identifier record is equivalent to the local version of the record, adopting CKRecord system fields locally and not performing conflict resolution", v273, 2u);
          }

          sub_100206004();
          swift_unknownObjectRelease();
          (v319)(v272, v268);
          goto LABEL_34;
        }

LABEL_80:
        v333 = v189;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      v294 = v189;
      v289 = v182;
      v191 = v300;
      v192 = v188;
      v193 = v323;
      (v313)(v300, v192, v323);

      swift_unknownObjectRetain_n();
      v194 = Logger.logObject.getter();
      v195 = static os_log_type_t.default.getter();

      v196 = os_log_type_enabled(v194, v195);
      v293 = v185;
      if (v196)
      {
        v197 = swift_slowAlloc();
        *&v314 = v197;
        *&v313 = swift_slowAlloc();
        v333 = v313;
        *v197 = 136315650;
        v198 = *(v193 + 48);
        v288 = v194;
        v199 = v303;
        v200 = v302;
        v201 = v304;
        (*(v303 + 16))(v302, &v191[v198], v304);
        (v319)(v191, v193);
        v287 = sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID);
        LODWORD(v300) = v195;
        v202 = dispatch thunk of CustomStringConvertible.description.getter();
        v204 = v203;
        v205 = *(v199 + 8);
        v205(v200, v201);
        v206 = sub_100009E5C(v202, v204, &v333);

        v207 = v314;
        *(v314 + 4) = v206;
        *(v207 + 12) = 2080;
        v208 = v299;
        (*(v185 + 144))(v309, v185);
        swift_unknownObjectRelease();
        v209 = dispatch thunk of CustomStringConvertible.description.getter();
        v211 = v210;
        swift_unknownObjectRelease();
        v205(v200, v201);
        v212 = sub_100009E5C(v209, v211, &v333);

        v213 = v314;
        *(v314 + 14) = v212;
        *(v213 + 22) = 2080;

        v214 = sub_1001ECC0C();
        v216 = v215;

        v217 = sub_100009E5C(v214, v216, &v333);

        *(v213 + 24) = v217;
        v218 = v288;
        _os_log_impl(&_mh_execute_header, v288, v300, "Conflict between cloud record and local record: cloud uuid=%s, local uuid=%s, persistedRecordID=%s", v213, 0x20u);
        swift_arrayDestroy();

        v189 = v301;
        v219 = v208;
      }

      else
      {
        v243 = v299;
        swift_unknownObjectRelease();
        (v319)(v191, v193);
        swift_unknownObjectRelease();

        v189 = v301;
        v219 = v243;
      }

      v244 = v292;
      v245 = sub_100099DF4(&qword_1002E1200, &qword_100247438);
      v246 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v247 = *(v246 - 8);
      v248 = (*(v247 + 80) + 32) & ~*(v247 + 80);
      *&v313 = *(v247 + 72);
      *&v314 = v245;
      v249 = swift_allocObject();
      v303 = xmmword_10022E400;
      *(v249 + 16) = xmmword_10022E400;
      v333 = v219;
      v304 = v325[7];
      *(v249 + v248) = sub_100201860(v304, v309, v290);
      v250 = *(v247 + 104);
      LODWORD(v302) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
      v300 = v250;
      (v250)(v249 + v248);
      CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v249);

      if (v294 == -1)
      {

        v274 = Logger.logObject.getter();
        v275 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v274, v275))
        {
          v276 = swift_slowAlloc();
          *v276 = 0;
          _os_log_impl(&_mh_execute_header, v274, v275, "Local record wins, adopting cloud uuid, generation counter and CKRecord system fields locally and scheduling local record for sending to the cloud", v276, 2u);
        }

        v277 = v317;
        v278 = v309;
        v279 = v299;
        sub_100205F20();
        v280 = swift_allocObject();
        *(v280 + 16) = v303;
        v333 = v279;
        *(v280 + v248) = sub_100201860(v304, v278, v290);
        (v300)(v280 + v248, v302, v246);
        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v280);
        swift_unknownObjectRelease();

        (v319)(v277, v323);
      }

      else
      {
        if (v294 != 1)
        {
          __break(1u);
          goto LABEL_80;
        }

        v251 = Logger.logObject.getter();
        v252 = static os_log_type_t.default.getter();
        v253 = os_log_type_enabled(v251, v252);
        v71 = v324;
        v254 = v323;
        v255 = v308;
        v256 = v309;
        if (v253)
        {
          v257 = swift_slowAlloc();
          *v257 = 0;
          _os_log_impl(&_mh_execute_header, v251, v252, "Cloud record wins, adopting entire cloud record state locally", v257, 2u);
        }

        v258 = v317;
        v259 = sub_100205D2C(v317, v325 + v315, v312, v244, v305, v256, v255, v244, v305, v293, v307, v306, v291, v296, v295);
        if (v259)
        {
          v260 = v259;
          v261 = *(v316 + 24);
          v262 = *(v316 + 32);
          sub_10000C4FC(v316, v261);
          v263 = v327;
          (*(v262 + 144))(v260, v329, v261, v262);
          if (v263)
          {
            LOBYTE(v333) = v330;
            sub_100099DF4(&qword_1002E2798, &qword_10024A360);
            sub_1000326A8(&qword_1002E27A0, &qword_1002E2798, &qword_10024A360);
            v316 = v329[0];
            v313 = v329[1];
            v315 = v329[2];
            v312 = v329[3];
            v314 = v329[4];
            v311 = v329[5];
            v327 = swift_allocError();
            v264 = v313;
            *v265 = v316;
            *(v265 + 16) = v264;
            v266 = v312;
            *(v265 + 32) = v315;
            *(v265 + 48) = v266;
            v267 = v311;
            *(v265 + 64) = v314;
            *(v265 + 80) = v267;
            *(v265 + 96) = v333;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            (v319)(v317, v254);
            v75 = v326;
            v106 = v320;
            goto LABEL_41;
          }

          (v319)(v317, v254);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_34;
        }

        (v319)(v258, v254);
        swift_unknownObjectRelease();
      }

      v151 = v321;
      goto LABEL_35;
    }

    v152 = v305;
    (v313)(v305, v317, v52);
    v153 = v311;

    v154 = v310;

    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.info.getter();

    v157 = os_log_type_enabled(v155, v156);
    v71 = v324;
    if (v157)
    {
      v158 = swift_slowAlloc();
      *&v314 = swift_slowAlloc();
      v333 = v314;
      *v158 = 136315394;
      v159 = *(v323 + 48);
      LODWORD(v313) = v156;
      v160 = v303;
      v161 = *(v303 + 16);
      v301 = v155;
      v162 = v302;
      v163 = v304;
      v161(v302, v152 + v159, v304);
      (v319)(v152, v323);
      sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID);
      v164 = dispatch thunk of CustomStringConvertible.description.getter();
      v166 = v165;
      (*(v160 + 8))(v162, v163);
      v167 = sub_100009E5C(v164, v166, &v333);

      *(v158 + 4) = v167;
      *(v158 + 12) = 2080;

      v168 = v297;
      v169 = sub_1001ECC0C();
      v171 = v170;

      v172 = sub_100009E5C(v169, v171, &v333);

      *(v158 + 14) = v172;
      v173 = v301;
      _os_log_impl(&_mh_execute_header, v301, v313, "No existing record for fetched CKRecord: cloud uuid=%s, record id=%s", v158, 0x16u);
      swift_arrayDestroy();

      v52 = v323;

      v174 = v316;
    }

    else
    {
      (v319)(v152, v52);

      v174 = v316;
      v168 = v297;
    }

    v220 = v174[3];
    v221 = v174[4];
    sub_10000C4FC(v174, v220);
    v222 = v327;
    (*(v221 + 72))(v168, v153, v298, v154, v312, v331, v220, v221);
    if (!v222)
    {

      v238 = v315;
      v239 = Logger.logObject.getter();
      v240 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v239, v240))
      {
        v241 = swift_slowAlloc();
        *v241 = 0;
        _os_log_impl(&_mh_execute_header, v239, v240, "Adopting entire cloud record state locally", v241, 2u);
        v238 = v315;
      }

      v242 = v317;
      sub_100205D2C(v317, v325 + v238, v312, v309[11], v309[14], v309[13], v308, v309[11], v309[14], v309[22], v307, v306, v309[17], v309[18], v309[23]);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (v319)(v242, v52);
      v151 = v321;
      goto LABEL_35;
    }

    LOBYTE(v333) = v332;
    v323 = v331[0];
    v315 = v331[1];
    v316 = v331[2];
    v314 = v331[3];

    sub_100099DF4(&qword_1002E1A70, &qword_100247AA8);
    sub_1000326A8(&qword_1002E2810, &qword_1002E1A70, &qword_100247AA8);
    v327 = swift_allocError();
    v223 = v315;
    *v224 = v323;
    *(v224 + 16) = v223;
    v225 = v314;
    *(v224 + 32) = v316;
    *(v224 + 48) = v225;
    *(v224 + 64) = v333;
    (v319)(v317, v52);
    v106 = v320;
    v55 = v322;
LABEL_52:
    v75 = v326;
    goto LABEL_53;
  }

  (v319)(v123, v52);

  v106 = v320;
  v55 = v322;
  v71 = v324;
LABEL_53:
  (*(v55 + 16))(v106, v75, v71);
  swift_errorRetain();
  swift_errorRetain();
  v226 = Logger.logObject.getter();
  v227 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v226, v227))
  {
    v228 = v106;
    v229 = swift_slowAlloc();
    v230 = swift_slowAlloc();
    *v229 = 138412546;
    v231 = CKDatabase.RecordZoneChange.Modification.record.getter();
    v232 = [v231 recordID];

    v233 = v327;
    (*(v55 + 8))(v228, v324);
    *(v229 + 4) = v232;
    *v230 = v232;
    *(v229 + 12) = 2112;
    swift_errorRetain();
    v327 = v233;
    v234 = _swift_stdlib_bridgeErrorToNSError();
    *(v229 + 14) = v234;
    v230[1] = v234;
    _os_log_impl(&_mh_execute_header, v226, v227, "Caught error while processing fetched record with CKRecordID %@: %@", v229, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
  }

  else
  {

    (*(v55 + 8))(v106, v71);
  }

  v235 = CKDatabase.RecordZoneChange.Modification.record.getter();
  v236 = v327;

  v237 = v321;
  *v321 = v235;
  v237[1] = v236;
}

__n128 sub_10020ED30(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2[3];
  v5 = a2[4];
  sub_10000C4FC(a2, v4);
  (*(v5 + 144))(v3, v14, v4, v5);
  if (v2)
  {
    v16 = v15;
    sub_100099DF4(&qword_1002E2798, &qword_10024A360);
    sub_1000326A8(&qword_1002E27A0, &qword_1002E2798, &qword_10024A360);
    v12 = v14[2];
    v13 = v14[0];
    v9 = v14[3];
    v10 = v14[1];
    v11 = v14[4];
    v8 = v14[5];
    swift_allocError();
    *v7 = v13;
    *(v7 + 16) = v10;
    *(v7 + 32) = v12;
    *(v7 + 48) = v9;
    result = v11;
    *(v7 + 64) = v11;
    *(v7 + 80) = v8;
    *(v7 + 96) = v16;
  }

  return result;
}

void sub_10020EE6C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v13 = *a2;
  v14 = *(*a2 + 96);
  v18[0] = *(*a2 + 80);
  v18[1] = v14;
  v15 = v13[8];
  v18[2] = v13[7];
  v18[3] = v15;
  v16 = v13[10];
  v18[4] = v13[9];
  v18[5] = v16;
  v18[6] = v13[11];
  _s18SyncEngineDelegateCMa();
  swift_getWitnessTable();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = objc_autoreleasePoolPush();
  sub_10020EFC8(a1, a2, a3, a4, a5, v18);
  objc_autoreleasePoolPop(v17);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *a6 = v18[0];
  }
}

void sub_10020EFC8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v159 = a5;
  v164 = a4;
  v171 = a3;
  v172 = a6;
  v173 = a2;
  v166 = *a2;
  v8 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v9 = *(v8 - 8);
  v169 = v8;
  v170 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v168 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v150 - v13;
  __chkstk_darwin(v15);
  v17 = &v150 - v16;
  __chkstk_darwin(v18);
  v20 = &v150 - v19;
  __chkstk_darwin(v21);
  v160 = &v150 - v22;
  v167 = type metadata accessor for UUID();
  v163 = *(v167 - 8);
  v23 = *(v163 + 64);
  __chkstk_darwin(v167);
  v161 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v158 = &v150 - v26;
  __chkstk_darwin(v27);
  v162 = &v150 - v28;
  __chkstk_darwin(v29);
  v165 = &v150 - v30;
  v31 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v150 - v33;
  v174 = a1;
  v35 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
  v37 = v36;
  if (v35 != 0x6E6F7268636E7953 || v36 != 0xEF6E6F6974617A69)
  {
    v39 = v35;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v39 == 0xD000000000000018 && 0x8000000100277C60 == v37)
      {
      }

      else
      {
        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v62 & 1) == 0)
        {
          v63 = v169;
          v64 = *(v170 + 16);
          v65 = v174;
          v64(v17, v174, v169);
          v64(v14, v65, v63);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v66, v67))
          {

            v92 = v169;
            v93 = *(v170 + 8);
            v93(v14, v169);
            v93(v17, v92);
            goto LABEL_33;
          }

          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          v175 = v174;
          *v68 = 138412546;
          LODWORD(v173) = v67;
          v70 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
          v171 = v66;
          v71 = v169;
          v72 = *(v170 + 8);
          v72(v17, v169);
          *(v68 + 4) = v70;
          *v69 = v70;
          *(v68 + 12) = 2080;
          v73 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
          v75 = v74;
          v72(v14, v71);
          v76 = sub_100009E5C(v73, v75, &v175);

          *(v68 + 14) = v76;
          v77 = v171;
          _os_log_impl(&_mh_execute_header, v171, v173, "Fetched deletion of an unknown CKRecord with ID %@ and type %s, ignoring", v68, 0x16u);
          sub_10003CD48(v69, &qword_1002E2700, &unk_1002474D0);

          sub_100004118(v174);

          goto LABEL_31;
        }
      }

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "Fetched deletion of identifier CKRecord", v80, 2u);
      }

      v81 = CKSyncEngine.State.pendingRecordZoneChanges.getter();
      __chkstk_darwin(v81);
      *(&v150 - 2) = v174;
      v82 = sub_1002103E4(sub_10003BFDC, (&v150 - 4), v81);

      v47 = v170;
      v83 = v165;
      if (v82)
      {
        v84 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
        sub_100202D40(v84, v83);
        v45 = v6;
        if (v6)
        {

          v46 = v174;
          v49 = v168;
          v48 = v169;
          goto LABEL_10;
        }

        isa = v171[3].isa;
        v89 = v171[4].isa;
        sub_10000C4FC(v171, isa);
        v90 = (*(v89 + 13))(v83, isa, v89);
        v91 = 0;
        if (!v90)
        {
          v112 = v169;
          (*(v47 + 16))(v20, v174, v169);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            *v115 = 138412290;
            v117 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
            (*(v47 + 8))(v20, v112);
            *(v115 + 4) = v117;
            *v116 = v117;
            _os_log_impl(&_mh_execute_header, v113, v114, "Fetched deletion of an identifier record with CKRecordID %@, but there is already no persisted record for this uuid", v115, 0xCu);
            sub_10003CD48(v116, &qword_1002E2700, &unk_1002474D0);
          }

          else
          {

            (*(v47 + 8))(v20, v112);
          }

          (*(v163 + 8))(v165, v167);
          goto LABEL_33;
        }

        v156 = v90;
        v94 = v160;
        v95 = v169;
        (*(v47 + 16))(v160, v174, v169);
        v96 = v162;
        v97 = v163;
        v98 = v83;
        v99 = v47;
        v100 = v167;
        v154 = *(v163 + 16);
        v155 = v163 + 16;
        v154(v162, v98, v167);
        v101 = Logger.logObject.getter();
        v153 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v101, v153))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v157 = 0;
          v104 = v103;
          v152 = swift_slowAlloc();
          v175 = v152;
          *v102 = 138412546;
          v151 = v101;
          v105 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
          (*(v99 + 8))(v94, v95);
          *(v102 + 4) = v105;
          *v104 = v105;
          *(v102 + 12) = 2080;
          sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID);
          v106 = v162;
          v107 = dispatch thunk of CustomStringConvertible.description.getter();
          v109 = v108;
          v162 = *(v97 + 8);
          (v162)(v106, v100);
          v110 = sub_100009E5C(v107, v109, &v175);

          *(v102 + 14) = v110;
          v111 = v151;
          _os_log_impl(&_mh_execute_header, v151, v153, "Found existing persisted record for fetched deletion of identifier CKRecord with CKRecordID %@: uuid=%s", v102, 0x16u);
          sub_10003CD48(v104, &qword_1002E2700, &unk_1002474D0);
          v91 = v157;

          sub_100004118(v152);
        }

        else
        {

          v162 = *(v97 + 8);
          (v162)(v96, v100);
          (*(v99 + 8))(v94, v95);
        }

        v118 = v165;
        v119 = v161;
        if ((v173[11] & 1) != 0 || (sub_1001D0040(v173[10], 0, v159, v166[13], v166[22]) & 1) == 0)
        {
          v131 = v167;
          v154(v119, v118, v167);
          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v175 = v173;
            *v134 = 136315138;
            sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID);
            v135 = dispatch thunk of CustomStringConvertible.description.getter();
            v136 = v119;
            v138 = v137;
            v139 = v162;
            (v162)(v136, v131);
            v140 = sub_100009E5C(v135, v138, &v175);

            *(v134 + 4) = v140;
            _os_log_impl(&_mh_execute_header, v132, v133, "Not deleting local identifier record with uuid %s because it was accessed recently enough, scheduling record to be sent to the cloud", v134, 0xCu);
            sub_100004118(v173);
          }

          else
          {

            v139 = v162;
            (v162)(v119, v131);
          }

          v141 = v131;
          sub_100099DF4(&qword_1002E1200, &qword_100247438);
          v142 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
          v143 = *(v142 - 8);
          v144 = *(v143 + 72);
          v145 = (*(v143 + 80) + 32) & ~*(v143 + 80);
          v146 = swift_allocObject();
          *(v146 + 16) = xmmword_10022E400;
          *(v146 + v145) = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
          (*(v143 + 104))(v146 + v145, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v142);
          CKSyncEngine.State.add(pendingRecordZoneChanges:)(v146);

          swift_unknownObjectRelease();
          v139(v165, v141);
          goto LABEL_33;
        }

        v120 = v158;
        v121 = v167;
        v154(v158, v118, v167);
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v175 = v125;
          *v124 = 136315138;
          sub_10003C044(&qword_1002E27E0, &type metadata accessor for UUID);
          v126 = dispatch thunk of CustomStringConvertible.description.getter();
          v127 = v120;
          v129 = v128;
          (v162)(v127, v121);
          v130 = sub_100009E5C(v126, v129, &v175);

          *(v124 + 4) = v130;
          _os_log_impl(&_mh_execute_header, v122, v123, "Deleting local identifier record with uuid %s because it has not been accessed recently enough", v124, 0xCu);
          sub_100004118(v125);
        }

        else
        {

          (v162)(v120, v121);
        }

        v48 = v169;
        v47 = v170;
        v147 = v171[3].isa;
        v148 = v171[4].isa;
        sub_10000C4FC(v171, v147);
        v149 = v165;
        (*(v148 + 14))(v165, v147, v148);
        if (v91)
        {
          (v162)(v149, v121);
          swift_unknownObjectRelease();
          v45 = v91;
          v46 = v174;
          v49 = v168;
          goto LABEL_10;
        }

        (v162)(v149, v121);
        goto LABEL_13;
      }

      v77 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v77, v85))
      {
LABEL_32:

        goto LABEL_33;
      }

      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v77, v85, "Fetched deletion of identifier CKRecord, but it's currently pending send. Skipping deletion.", v86, 2u);
LABEL_31:

      goto LABEL_32;
    }
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Fetched deletion of a singleton synchronization CKRecord, deleting its UUID and CKRecord system fields", v42, 2u);
  }

  v43 = v171[3].isa;
  v44 = v171[4].isa;
  sub_10000C4FC(v171, v43);
  (*(v44 + 7))(v43, v44);
  if (!v6)
  {
    v57 = v166[20];
    v58 = v166[12];
    (*(v57 + 72))(0, 0xF000000000000000, v58, v57);
    sub_100002728(v34, 1, 1, v167);
    (*(v57 + 48))(v34, v58, v57);
LABEL_13:
    swift_unknownObjectRelease();
LABEL_33:
    v87 = v172;
    *v172 = 0;
    v87[1] = 0;
    return;
  }

  v45 = v6;
  v46 = v174;
  v48 = v169;
  v47 = v170;
  v49 = v168;
LABEL_10:
  (*(v47 + 16))(v49, v46, v48);
  swift_errorRetain();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v157 = 0;
    v54 = v53;
    *v52 = 138412546;
    v55 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    (*(v47 + 8))(v49, v48);
    *(v52 + 4) = v55;
    *v54 = v55;
    *(v52 + 12) = 2112;
    swift_errorRetain();
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 14) = v56;
    v54[1] = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "Caught error while processing fetched record deletion for CKRecordID %@: %@", v52, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
  }

  else
  {

    (*(v47 + 8))(v49, v48);
  }

  v59 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
  v60 = v172;
  *v172 = v59;
  v60[1] = v45;
}

uint64_t sub_10021025C(uint64_t a1)
{
  v2 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7, a1, v2, v5);
  if ((*(v3 + 88))(v7, v2) == enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:))
  {
    (*(v3 + 96))(v7, v2);
    v8 = *v7;
    sub_100003AE0(0, &qword_1002E2E00, NSObject_ptr);
    v9 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
    v10 = static NSObject.== infix(_:_:)();
  }

  else
  {
    (*(v3 + 8))(v7, v2);
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_1002103E4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for CKSyncEngine.PendingRecordZoneChange() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_1002104B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v50 = a2;
  RecordZoneChanges = type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges();
  v7 = sub_100003724(RecordZoneChanges);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_1000037D4();
  v55 = v12;
  v14 = __chkstk_darwin(v13);
  v15 = qword_100310708;
  v16 = *(v9 + 16);
  v56 = a1;
  v51 = v16;
  (v16)(&v49 - v17, a1, RecordZoneChanges, v14);
  v52 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  v20 = os_log_type_enabled(v18, v19);
  v53 = v9;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v54 = v4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v49 = v3;
    v24 = v23;
    *v22 = 138412290;
    RecordZone = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
    v26 = sub_10003C0C0();
    v27(v26);
    *(v22 + 4) = RecordZone;
    *v24 = RecordZone;
    _os_log_impl(&_mh_execute_header, v18, v19, "Successfully fetched changes for CKRecordZone with identifier %@", v22, 0xCu);
    sub_10003CD48(v24, &qword_1002E2700, &unk_1002474D0);
    sub_1000327B4();
    v4 = v54;
    sub_1000327B4();
  }

  else
  {

    v28 = sub_10003C0C0();
    v29(v28);
  }

  v30 = v56;
  v31 = CKSyncEngine.Event.DidFetchRecordZoneChanges.error.getter();
  if (v31)
  {
    v32 = v31;
    v51(v55, v30, RecordZoneChanges);
    v33 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v4;
      v38 = v37;
      *v36 = 138412546;
      v39 = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
      v40 = sub_10003C100();
      v41(v40);
      *(v36 + 4) = v39;
      *v38 = v39;
      *(v36 + 12) = 2112;
      v42 = v33;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v43;
      v38[1] = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to fetch changes for CKRecordZone with identifier %@: %@", v36, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
      v4 = v54;
      sub_1000327B4();
      sub_1000327B4();
    }

    else
    {

      v44 = sub_10003C100();
      v45(v44);
    }

    sub_100003AE0(0, &qword_1002E2E00, NSObject_ptr);
    v46 = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
    v47 = *(v4 + 56);
    v48 = static NSObject.== infix(_:_:)();

    if (v48)
    {
      v58 = v33;
      type metadata accessor for CKError(0);
      sub_10003C044(&qword_1002E0328, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v57 == 112)
      {
        sub_10020AA78(v50);
      }

      else if (v57 == 28)
      {
        sub_10020A9E0(v50, "Handling .userDeletedZone error after fetching zone changes", 59, 2);
      }
    }
  }
}

unint64_t sub_1002108F4()
{
  result = qword_1002E2E10;
  if (!qword_1002E2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E2E10);
  }

  return result;
}

uint64_t sub_100210948(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100099DF4(&qword_1002E2E38, &qword_10024ADB0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1000EA578(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];

      swift_errorRetain();
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100210BEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100099DF4(&qword_1002E2E50, &qword_10024ADC8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v33 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      sub_1000EA578(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 56);
    v21 = *(*(v5 + 48) + 8 * v19);
    v36 = v21;
    v22 = (v20 + 32 * v19);
    if (v34)
    {
      sub_1001514B8(v22, v35);
    }

    else
    {
      sub_100009F20(v22, v35);
    }

    v23 = *(v8 + 40);
    sub_100099DF4(&qword_1002E11F8, &qword_100247430);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v8 + 48) + 8 * v27) = v21;
    result = sub_1001514B8(v35, (*(v8 + 56) + 32 * v27));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

BOOL sub_100210EA8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v4 = (1 << v3) & *(v1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v4)
  {
    v5 = *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v0;
    sub_100211180(v3, isUniquelyReferenced_nonNull_native);
    *v0 = v8;
  }

  return v4 == 0;
}

uint64_t sub_100210F64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100099DF4(&qword_1002E2E60, &qword_10024ADD8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    if (!v11)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      v15 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        while (++v18 != v21 || (v20 & 1) == 0)
        {
          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = *(v13 + 8 * v18);
          if (v23 != -1)
          {
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
            goto LABEL_21;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
      v11 &= v11 - 1;
      *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      ++*(v6 + 16);
    }

    while (v11);
    while (1)
    {
LABEL_8:
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = v8[v14];
      ++v7;
      if (v11)
      {
        v7 = v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      sub_1000EA578(0, (v24 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v24;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100211180(Swift::Int result, char a2)
{
  v3 = result;
  v4 = *(*v2 + 16);
  v5 = *(*v2 + 24);
  if (v5 <= v4 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_100210F64(v4 + 1);
      goto LABEL_8;
    }

    if (v5 <= v4)
    {
      sub_1002113A0(v4 + 1);
LABEL_8:
      v6 = *v2;
      v7 = *(*v2 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v3 = result & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v3))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    result = sub_100211294();
  }

LABEL_9:
  v8 = *v2;
  *(*v2 + 8 * (v3 >> 6) + 56) |= 1 << v3;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    *(v8 + 16) = v11;
    return result;
  }

  __break(1u);
LABEL_12:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100211294()
{
  v1 = v0;
  sub_100099DF4(&qword_1002E2E60, &qword_10024ADD8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        do
        {
LABEL_15:
          v11 &= v11 - 1;
        }

        while (v11);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1002113A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100099DF4(&qword_1002E2E60, &qword_10024ADD8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    if (!v10)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      v14 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v15) >> 6;
        while (++v17 != v20 || (v19 & 1) == 0)
        {
          v21 = v17 == v20;
          if (v17 == v20)
          {
            v17 = 0;
          }

          v19 |= v21;
          v22 = *(v12 + 8 * v17);
          if (v22 != -1)
          {
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
            goto LABEL_21;
          }
        }

        goto LABEL_25;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
      v10 &= v10 - 1;
      *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      ++*(v6 + 16);
    }

    while (v10);
LABEL_8:
    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_23;
      }

      v10 = *(v3 + 56 + 8 * v13);
      ++v7;
      if (v10)
      {
        v7 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_100211580(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    swift_errorRetain();
    v11 = sub_10014EB30(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002E2E40, &qword_10024ADB8);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_100210948(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_10014EB30(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x8000000100272E40;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100211864(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_100003AE0(0, &qword_1002E27F0, CKRecordID_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    swift_errorRetain();
    v11 = sub_1001CC344(v9);
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002E2E20, &qword_10024AD98);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + 8 * v11) = v9;
    *(v19[7] + 8 * v11) = v7;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_10003BD78(v14, a2 & 1, &qword_1002E2E18, &qword_10024AD90);
  v16 = *a3;
  v17 = sub_1001CC344(v9);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x8000000100272E40;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  sub_100003AE0(0, &qword_1002E27F0, CKRecordID_ptr);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100211B64(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_100003AE0(0, &qword_1002E1208, CKRecord_ptr);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    swift_errorRetain();
    v11 = sub_1001CC394(v9);
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002E2E30, &qword_10024ADA8);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + 8 * v11) = v9;
    *(v19[7] + 8 * v11) = v7;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_10003BD78(v14, a2 & 1, &qword_1002E2E28, &qword_10024ADA0);
  v16 = *a3;
  v17 = sub_1001CC394(v9);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x8000000100272E40;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  sub_100003AE0(0, &qword_1002E1208, CKRecord_ptr);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100211E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncDownSynchronizationRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100211EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncDownSynchronizationRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100211F2C(uint64_t a1)
{
  v2 = type metadata accessor for SyncDownSynchronizationRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100211F88(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
  }

  v6 = 0;
  for (i = a1 + 32; ; i += 40)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_100099DF4(&qword_1002E11F8, &qword_100247430);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    sub_100012C2C(i, &v28, &qword_1002E1D30, &qword_100248040);
    v8 = v28;
    v30 = v28;
    sub_1001514B8(&v29, v27);
    v9 = *a3;
    v11 = sub_1001CC2C8(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002E2E58, &qword_10024ADD0);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + 8 * v11) = v8;
    sub_1001514B8(v27, (v19[7] + 32 * v11));
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v6;
    v19[2] = v22;
    a2 = 1;
    if (v26 == v6)
    {
    }
  }

  sub_100210BEC(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_1001CC2C8(v8);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100004118(v27);
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x8000000100272E40;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  sub_100099DF4(&qword_1002E11F8, &qword_100247430);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002122AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v59 = a1;
  v53 = a2;
  v54 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v3 = sub_100003724(v54);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_1000037D4();
  v56 = v8;
  __chkstk_darwin(v9);
  v11 = v50 - v10;
  v12 = type metadata accessor for CKSyncEngine.SendChangesOptions.Scope();
  v13 = sub_100003724(v12);
  v57 = v14;
  v58 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_1000037D4();
  v62 = v17;
  __chkstk_darwin(v18);
  v20 = v50 - v19;
  v21 = type metadata accessor for CKSyncEngine.SendChangesOptions();
  v22 = sub_100003724(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  v28 = v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v2;
  v50[1] = qword_100310708;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Forming nextRecordZoneChangeBatch", v31, 2u);
  }

  CKSyncEngine.state.getter();
  v32 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  CKSyncEngine.SendChangesContext.options.getter();
  CKSyncEngine.SendChangesOptions.scope.getter();
  (*(v24 + 8))(v28, v21);
  result = (*(v57 + 32))(v62, v20, v58);
  v34 = 0;
  v35 = *(v32 + 16);
  v61 = v5 + 16;
  v55 = (v5 + 32);
  v60 = _swiftEmptyArrayStorage;
  v36 = v54;
  while (1)
  {
    if (v35 == v34)
    {
      (*(v57 + 8))(v62, v58);

      __chkstk_darwin(v46);
      v47 = v59;
      v48 = v52;
      v50[-4] = v60;
      v50[-3] = v48;
      v50[-2] = v47;
      v49 = sub_100099DF4(&qword_1002E2E68, &unk_10024ADE0);
      sub_100217C68(sub_10003C128, &v50[-6], v49);
    }

    if (v34 >= *(v32 + 16))
    {
      break;
    }

    v37 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v38 = *(v5 + 72);
    (*(v5 + 16))(v11, v32 + v37 + v38 * v34, v36);
    v39 = v36;
    if (CKSyncEngine.SendChangesOptions.Scope.contains(_:)())
    {
      v51 = *v55;
      v51(v56, v11, v36);
      v40 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v40;
      v63 = v40;
      if (isUniquelyReferenced_nonNull_native)
      {
        v36 = v39;
      }

      else
      {
        sub_1001CC62C(0, v40[2] + 1, 1);
        v36 = v54;
        v42 = v63;
      }

      v44 = v42[2];
      v43 = v42[3];
      v45 = (v44 + 1);
      if (v44 >= v43 >> 1)
      {
        v60 = (v44 + 1);
        sub_1001CC62C(v43 > 1, v44 + 1, 1);
        v45 = v60;
        v36 = v54;
        v42 = v63;
      }

      ++v34;
      v42[2] = v45;
      v60 = v42;
      result = (v51)(v42 + v37 + v44 * v38, v56, v36);
    }

    else
    {
      result = (*(v5 + 8))(v11, v36);
      ++v34;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100212894@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v54 = a4;
  v8 = *a2;
  v9 = sub_100099DF4(&qword_1002E2E68, &unk_10024ADE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v47 - v11;
  v13 = type metadata accessor for CKSyncEngine.RecordZoneChangeBatch();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  __chkstk_darwin(v13);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a2;
  v57 = a1;
  v58 = a3;

  CKSyncEngine.RecordZoneChangeBatch.init(pendingChanges:synchronousRecordProvider:)();
  if (sub_100004DFC(v12, 1, v13) == 1)
  {
    sub_10003CD48(v12, &qword_1002E2E68, &unk_10024ADE0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "RecordZoneChangeBatch initializer returned nil. Returning nil from nextRecordZoneChangeBatch().", v19, 2u);
    }

    v20 = 1;
    v21 = v54;
  }

  else
  {
    v52 = v8;
    v53 = a2;
    v22 = a1;
    v24 = v55 + 32;
    v23 = *(v55 + 32);
    v23(v16, v12, v13);
    v25 = v22[3];
    v26 = v22[4];
    sub_10000C4FC(v22, v25);
    v27 = (*(v26 + 56))(v25, v26);
    if (v4)
    {
      (*(v55 + 8))(v16, v13);
      return sub_100004118(v22);
    }

    v29 = v27;
    v50 = v22;
    v51 = v23;
    v48 = v13;
    v49 = v16;
    v55 = v24;
    v30 = v52[12];
    v31 = v52[20];
    sub_1001D08D0();
    v32 = qword_100310708;
    swift_unknownObjectRetain();
    v47[1] = v32;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59[0] = v36;
      *v35 = 136315138;
      v59[5] = v29;
      v37 = *(v31 + 8);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      swift_unknownObjectRelease();
      v41 = sub_100009E5C(v38, v40, v59);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Adding to the batch updated synchronization state: %s", v35, 0xCu);
      sub_100004118(v36);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v13 = v48;
    v59[0] = v29;
    v42 = sub_1002018F0(v53[7], v30, v52[19]);
    v43 = v49;
    v44 = CKSyncEngine.RecordZoneChangeBatch.recordsToSave.modify();
    v46 = v45;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100213B90(*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v44(v59, 0);
    CKSyncEngine.RecordZoneChangeBatch.atomicByZone.setter();
    swift_unknownObjectRelease();

    v21 = v54;
    v51(v54, v43, v13);
    v20 = 0;
    a1 = v50;
  }

  sub_100002728(v21, v20, 1, v13);
  return sub_100004118(a1);
}

uint64_t sub_100212EA4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(*a2 + 96);
  v14[0] = *(*a2 + 80);
  v14[1] = v9;
  v10 = v8[8];
  v14[2] = v8[7];
  v14[3] = v10;
  v11 = v8[10];
  v14[4] = v8[9];
  v14[5] = v11;
  v14[6] = v8[11];
  _s18SyncEngineDelegateCMa();
  swift_getWitnessTable();
  Actor.preconditionIsolated(_:file:line:)();
  v12 = objc_autoreleasePoolPush();
  sub_100212FC0(a1, a2, a3, a4, v14);
  objc_autoreleasePoolPop(v12);
  return *&v14[0];
}

void sub_100212FC0(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, Class *a5@<X8>)
{
  v117 = a2;
  v9 = *a2;
  v113 = a4;
  v114 = v9;
  v10 = type metadata accessor for UUID();
  v115 = *(v10 - 8);
  v11 = *(v115 + 64);
  __chkstk_darwin(v10);
  v13 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v104 - v15;
  __chkstk_darwin(v17);
  v19 = v104 - v18;
  __chkstk_darwin(v20);
  v22 = v104 - v21;
  v116 = a1;
  sub_100202D40(a1, v104 - v21);
  if (v5)
  {
    v23 = a5;
    v27 = v116;
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      *(v30 + 4) = v27;
      *v31 = v27;
      *(v30 + 12) = 2112;
      v32 = v27;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v33;
      v31[1] = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to return existing record for recordID %@ when composing record zone change batch: %@. Returning nil CKRecord.", v30, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
    }

    else
    {
    }

LABEL_7:
    v34 = 0;
    goto LABEL_8;
  }

  v109 = v13;
  v110 = v19;
  v111 = a5;
  v112 = v10;
  v25 = a3[3];
  v24 = a3[4];
  sub_10000C4FC(a3, v25);
  v26 = (*(v24 + 104))(v22, v25, v24);
  v35 = v26;
  v108 = 0;
  v36 = v112;
  v37 = v115;
  if (!v26)
  {
    v57 = v110;
    (*(v115 + 16))(v110, v22, v112);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.fault.getter();
    v60 = os_log_type_enabled(v58, v59);
    v107 = v22;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = v37;
      v63 = swift_slowAlloc();
      v119 = v63;
      *v61 = 136315138;
      sub_100209C98();
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v36;
      v67 = v66;
      v117 = *(v62 + 8);
      (v117)(v57, v65);
      v68 = sub_100009E5C(v64, v67, &v119);

      *(v61 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unable to find existing record for UUID %s when composing record zone change batch.", v61, 0xCu);
      sub_100004118(v63);
    }

    else
    {

      v117 = *(v37 + 8);
      (v117)(v57, v36);
    }

    v23 = v111;
    CKSyncEngine.state.getter();
    sub_100099DF4(&qword_1002E1200, &qword_100247438);
    v90 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v91 = *(v90 - 8);
    v92 = *(v91 + 72);
    v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_10022E400;
    v95 = v116;
    *(v94 + v93) = v116;
    (*(v91 + 104))(v94 + v93, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v90);
    v96 = v95;
    CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v94);

    (v117)(v107, v112);
    goto LABEL_7;
  }

  v38 = qword_100310708;
  v39 = *(v115 + 16);
  v40 = v16;
  v104[1] = v115 + 16;
  v105 = v39;
  v39(v16, v22, v112);
  swift_unknownObjectRetain_n();
  v41 = v37;
  v42 = v117;
  v106 = v38;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v104[0] = swift_slowAlloc();
    v119 = v104[0];
    *v45 = 136315394;
    sub_100209C98();
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v110 = *(v41 + 8);
    v110(v40, v112);
    v49 = sub_100009E5C(v46, v48, &v119);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v118 = v35;
    v50 = v114[13];
    v51 = v114[22];
    v52 = *(v51 + 8);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    swift_unknownObjectRelease_n();
    v56 = sub_100009E5C(v53, v55, &v119);
    v36 = v112;

    *(v45 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v43, v44, "Adding to the batch existing record for uuid %s: %s", v45, 0x16u);
    swift_arrayDestroy();

    v42 = v117;
  }

  else
  {

    swift_unknownObjectRelease_n();
    v110 = *(v41 + 8);
    v110(v40, v36);
    v50 = v114[13];
    v51 = v114[22];
  }

  if (sub_1001D08CC(v50, v51))
  {
    v119 = v35;
    v69 = v42[7];
    v70 = v114[21];
    v117 = v50;
    v71 = v108;
    v72 = sub_1002018F0(v69, v50, v70);
    if (v71)
    {
      swift_errorRetain();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138412290;
        swift_errorRetain();
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v75 + 4) = v77;
        *v76 = v77;
        _os_log_impl(&_mh_execute_header, v73, v74, "Unable to decode identifier mapping CKRecord from persisted CKRecord system fields data: %@. Returning populated CKRecord without system fields instead.", v75, 0xCu);
        sub_10003CD48(v76, &qword_1002E2700, &unk_1002474D0);

        v36 = v112;
      }

      v119 = v35;
      v34 = sub_100201F2C(v69, v117, v70);

      v110(v22, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v72;
      v110(v22, v36);
      swift_unknownObjectRelease();
    }

    v23 = v111;
  }

  else
  {
    v117 = v35;
    v78 = v109;
    v105(v109, v22, v36);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.fault.getter();
    v81 = os_log_type_enabled(v79, v80);
    v107 = v22;
    if (v81)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v119 = v83;
      *v82 = 136315138;
      sub_100209C98();
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v36;
      v87 = v86;
      v88 = v110;
      v110(v78, v85);
      v89 = sub_100009E5C(v84, v87, &v119);

      *(v82 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v79, v80, "Existing record for UUID %s is not eligible for cloud sync when composing record zone change batch.", v82, 0xCu);
      sub_100004118(v83);
    }

    else
    {

      v88 = v110;
      v110(v78, v36);
    }

    v23 = v111;
    CKSyncEngine.state.getter();
    sub_100099DF4(&qword_1002E1200, &qword_100247438);
    v97 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v98 = *(v97 - 8);
    v99 = *(v98 + 72);
    v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_10022E400;
    v102 = v116;
    *(v101 + v100) = v116;
    (*(v98 + 104))(v101 + v100, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v97);
    v103 = v102;
    CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v101);
    swift_unknownObjectRelease();

    v88(v107, v112);
    v34 = 0;
  }

LABEL_8:
  *v23 = v34;
}

uint64_t sub_100213B90(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

void sub_100213BBC(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v4 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v57 - v13;
  v14 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  v15 = sub_100003724(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  v65 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v57 - v22;
  v66 = a1;
  v24 = *(CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter() + 16);

  if (v24)
  {
    (*(v17 + 16))(v23, v66, v14);
    v25 = Logger.logObject.getter();
    LODWORD(v61) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v61))
    {
      v26 = swift_slowAlloc();
      v58 = v26;
      v60 = swift_slowAlloc();
      v69 = v60;
      *v26 = 136315138;
      v59 = v25;
      CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter();
      sub_100003AE0(0, &qword_1002E2980, CKRecordZoneID_ptr);
      v62 = v14;
      type metadata accessor for CKError(0);
      v27 = v17;
      sub_100217A80();
      v28 = Dictionary.description.getter();
      v30 = v29;

      (*(v27 + 8))(v23, v62);
      v31 = v28;
      v17 = v27;
      v32 = sub_100009E5C(v31, v30, &v69);
      v14 = v62;

      v34 = v58;
      v33 = v59;
      *(v58 + 1) = v32;
      _os_log_impl(&_mh_execute_header, v33, v61, "Failed to send zone deletes: %s", v34, 0xCu);
      sub_100004118(v60);
      sub_1000327B4();
      sub_1000327B4();
    }

    else
    {

      (*(v17 + 8))(v23, v14);
    }
  }

  v35 = *(CKSyncEngine.Event.SentDatabaseChanges.failedZoneSaves.getter() + 16);

  if (v35)
  {
    v36 = v65;
    (*(v17 + 16))(v65, v66, v14);
    v37 = Logger.logObject.getter();
    LODWORD(v62) = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v62))
    {
      v38 = swift_slowAlloc();
      v59 = v38;
      v61 = swift_slowAlloc();
      v69 = v61;
      LODWORD(v38->isa) = 136315138;
      v60 = v37;
      CKSyncEngine.Event.SentDatabaseChanges.failedZoneSaves.getter();
      v58 = Array.description.getter();
      v40 = v39;

      (*(v17 + 8))(v36, v14);
      v41 = sub_100009E5C(v58, v40, &v69);

      v42 = v59;
      v43 = v60;
      *(&v59->isa + 4) = v41;
      _os_log_impl(&_mh_execute_header, v43, v62, "Failed to send zone saves: %s", v42, 0xCu);
      sub_100004118(v61);
      sub_1000327B4();
      sub_1000327B4();
    }

    else
    {

      (*(v17 + 8))(v36, v14);
    }

    v44 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneSaves.getter();
    v45 = 0;
    v46 = *(v44 + 16);
    v47 = (v7 + 8);
    while (1)
    {
      if (v46 == v45)
      {

        return;
      }

      if (v45 >= *(v44 + 16))
      {
        __break(1u);
LABEL_21:

        v54 = *v47;
        v55 = sub_10003C21C();
        v56(v55);
        __break(1u);
        return;
      }

      (*(v7 + 16))(v11, v44 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v45, v4);
      v48 = sub_100214204(v11, v67);
      if (v2)
      {
        goto LABEL_21;
      }

      if (v48)
      {
        break;
      }

      v49 = *v47;
      v50 = sub_10003C21C();
      v51(v50);
      ++v45;
    }

    v52 = v64;
    (*(v7 + 32))(v64, v11, v4);
    v53 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.error.getter();
    v69 = v53;
    type metadata accessor for CKError(0);
    sub_10003C1D4(&qword_1002E0328, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    if (v68 == 112)
    {

      sub_10020AA78(v63);
      (*v47)(v52, v4);
    }

    else
    {
      (*v47)(v52, v4);
    }
  }
}

uint64_t sub_100214204(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_getWitnessTable();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003AE0(0, &qword_1002E2E00, NSObject_ptr);
  v4 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.zone.getter();
  v5 = [v4 zoneID];

  v6 = a2[7];
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

uint64_t sub_100214324(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for Date();
  v7 = sub_100003724(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Date.init()();
  v17 = a1;
  v18 = v2;
  v19 = v13;
  v20 = a2;
  v14 = sub_100099DF4(&qword_1002E2E08, &qword_10024AD88);
  sub_100217C68(sub_10003C154, v16, v14);
  if (!v3 && v21 == 1)
  {
    swift_willThrow();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_100214460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int64_t a5@<X8>)
{
  v10 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
  v76 = a2;
  v77 = a1;
  v78 = a3;
  sub_10020ACA0(sub_10003C174, v75, v10);
  v12 = v11;

  v60 = sub_10020B634(v12);
  v13 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  v73 = a2;
  v74 = a1;
  sub_10020ACE0(sub_10003C194, v72, v13);
  v15 = v14;

  v59 = sub_10020B65C(v15);
  v80 = 0;
  v79 = 0;
  v16 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  v63 = a2;
  v64 = a1;
  v66 = a2;
  v67 = &v80 + 1;
  v68 = a4;
  v69 = &v80;
  v70 = &v79;
  v71 = a1;
  v17 = sub_10020AD20(sub_10003C1B0, v65, v16);

  v58 = sub_10020B634(v17);
  v18 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  v19 = v18;
  v20 = v18 + 64;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v62 = _swiftEmptyArrayStorage;
  while (v23)
  {
LABEL_9:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = (v25 << 9) | (8 * v27);
    v29 = *(*(v19 + 56) + v28);
    v30 = *(*(v19 + 48) + v28);
    v31 = v29;
    v32 = sub_1002172B0(v30, v31, v63, &v80 + 1, v64, &v80, &v79);
    v34 = v33;

    if (v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DEE40(0, v62[2] + 1, 1, v62);
        v62 = v38;
      }

      v36 = v62[2];
      v35 = v62[3];
      if (v36 >= v35 >> 1)
      {
        sub_1001DEE40(v35 > 1, v36 + 1, 1, v62);
        v62 = v39;
      }

      v62[2] = v36 + 1;
      v37 = &v62[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v26 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  v40 = sub_10020B65C(v62);
  if ((v79 & 1) == 0)
  {
    v41 = v5;
    v42 = v58;
    if (v80 == 1)
    {
      CKSyncEngine.state.getter();
      sub_10020A990(v64);
      if (v5)
      {
        goto LABEL_20;
      }
    }

    if (HIBYTE(v80) == 1)
    {
      CKSyncEngine.state.getter();
      sub_100099DF4(&qword_1002E2DF0, &qword_10024AD78);
      v49 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
      v50 = *(v49 - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_10022E400;
      *(v53 + v52) = [objc_allocWithZone(CKRecordZone) initWithZoneID:*(v63 + 56)];
      (*(v50 + 104))(v53 + v52, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v49);
      CKSyncEngine.State.add(pendingDatabaseChanges:)(v53);
    }

    goto LABEL_26;
  }

  CKSyncEngine.state.getter();
  sub_10020AAFC(v64);
  v41 = v5;
  v42 = v58;
  if (!v5)
  {

LABEL_26:
    v43 = 0;
    goto LABEL_27;
  }

LABEL_20:
  v43 = v41;

  swift_errorRetain();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    swift_errorRetain();
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 4) = v48;
    *v47 = v48;
    _os_log_impl(&_mh_execute_header, v44, v45, "Caught error while attempting to repopulate the zone: %@", v46, 0xCu);
    sub_10003CD48(v47, &qword_1002E2700, &unk_1002474D0);
  }

  swift_errorRetain();
LABEL_27:
  v24 = a5;
  if (v60[2] || v59[2] || v42[2] || v40[2] || v43)
  {

    sub_1002108F4();
    v54 = swift_allocError();
    *v55 = v60;
    *(v55 + 8) = v59;
    *(v55 + 16) = v42;
    *(v55 + 24) = v40;
    *(v55 + 32) = v43;
    v56 = 1;
    *(v55 + 40) = 1;
    goto LABEL_33;
  }

LABEL_35:

  v54 = 0;
  v56 = 0;
LABEL_33:
  *v24 = v54;
  *(v24 + 8) = v56;
  return sub_100004118(v64);
}

void sub_100214A7C(uint64_t **a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = *a2;
  v11 = *a1;
  v12 = *(*a2 + 96);
  v16[0] = *(*a2 + 80);
  v16[1] = v12;
  v13 = v10[8];
  v16[2] = v10[7];
  v16[3] = v13;
  v14 = v10[10];
  v16[4] = v10[9];
  v16[5] = v14;
  v16[6] = v10[11];
  _s18SyncEngineDelegateCMa();
  swift_getWitnessTable();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = objc_autoreleasePoolPush();
  sub_100214BC8(v11, a2, a3, a4, v16);
  objc_autoreleasePoolPop(v15);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a5 = v16[0];
  }
}

void sub_100214BC8(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v169 = a4;
  v177 = a5;
  v173 = *a2;
  v8 = v173;
  v174 = a3;
  v9 = type metadata accessor for SyncDownSynchronizationRecord();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v175 = (&v153 - v14);
  v172 = type metadata accessor for UUID();
  v170 = *(v172 - 8);
  isa = v170[8].isa;
  __chkstk_darwin(v172);
  v171 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v8[10];
  v18 = v8[15];
  v178 = a2;
  v19 = v8[16];
  v167 = v18;
  v168 = v17;
  v166 = v19;
  v20 = type metadata accessor for SyncDownIdentifierRecord();
  v176 = *(v20 - 8);
  v21 = v176[8];
  __chkstk_darwin(v20);
  v165 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v153 - v24;
  __chkstk_darwin(v26);
  v28 = &v153 - v27;
  __chkstk_darwin(v29);
  v31 = &v153 - v30;
  WitnessTable = swift_getWitnessTable();
  if (sub_100203908())
  {
    v175 = a1;
    v33 = a1;
    sub_1002039F8(v33, v20, WitnessTable, v31);
    v34 = v5;
    if (v5)
    {
      goto LABEL_16;
    }

    v164 = 0;
    v42 = PIPersonalizedPrivateIdentifierMapping.id.getter();
    v161 = v43;
    v162 = v42;
    v45 = v44;
    v47 = v46;
    v48 = qword_100310708;
    v50 = v176 + 2;
    v49 = v176[2];
    v160 = v31;
    v158 = v49;
    (v49)(v28, v31, v20);

    v51 = v33;
    v52 = v45;
    v156 = v48;
    v53 = v51;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    v159 = v47;

    v157 = v55;
    v56 = os_log_type_enabled(v54, v55);
    v155 = v50;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v163 = v52;
      v58 = v57;
      v59 = swift_slowAlloc();
      v154 = v59;
      v180 = swift_slowAlloc();
      *v58 = 138412802;
      v60 = [v53 recordID];
      *(v58 + 4) = v60;
      *v59 = v60;
      *(v58 + 12) = 2080;
      (v158)(v25, v28, v20);
      v61 = v176[1];
      (v61)(v28, v20);
      v62 = v54;
      v63 = sub_1002070DC(v20);
      v65 = v64;
      v66 = v25;
      v67 = v61;
      (v61)(v66, v20);
      v68 = sub_100009E5C(v63, v65, &v180);

      *(v58 + 14) = v68;
      *(v58 + 22) = 2080;

      v69 = v159;

      v70 = sub_1001ECC0C();
      v72 = v71;

      v73 = sub_100009E5C(v70, v72, &v180);

      *(v58 + 24) = v73;
      _os_log_impl(&_mh_execute_header, v62, v157, "Handling successfully saved sent identifier record: CKRecordID=%@, syncDownIdentifierRecord=%s, persistedRecordID=%s", v58, 0x20u);
      sub_10003CD48(v154, &qword_1002E2700, &unk_1002474D0);

      swift_arrayDestroy();

      v52 = v163;
    }

    else
    {
      v67 = v176[1];
      (v67)(v28, v20);

      v69 = v159;
    }

    v77 = v174[3];
    v78 = v174[4];
    sub_10000C4FC(v174, v77);
    v79 = v164;
    v80 = (*(v78 + 64))(v162, v52, v161, v69, v77, v78);
    v34 = v79;
    if (v79)
    {
      (v67)(v160, v20);

LABEL_16:
      a1 = v175;
      goto LABEL_17;
    }

    v90 = v80;

    if (v90)
    {
      v175 = v67;
      v153 = v20;
      v164 = 0;
      swift_unknownObjectRetain();
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v180 = v94;
        *v93 = 136315138;
        v179 = v90;
        v95 = v173[13];
        v96 = v173[22];
        v97 = *(v96 + 8);
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v99;
        swift_unknownObjectRelease();
        v101 = sub_100009E5C(v98, v100, &v180);

        *(v93 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v91, v92, "Found existing persisted record for syncDownIdentifierRecord: %s", v93, 0xCu);
        sub_100004118(v94);

        v102 = v95;
        v103 = v96;
      }

      else
      {
        swift_unknownObjectRelease();

        v103 = v173[22];
        v102 = v173[13];
      }

      v126 = v160;
      v127 = v153;
      v128 = *(v153 + 48);
      v129 = *(v103 + 144);
      v130 = v171;
      v173 = (v103 + 144);
      v163 = v129;
      v129(v102, v103);
      sub_10003C1D4(&qword_1002E1918, &type metadata accessor for UUID);
      v131 = v172;
      v132 = dispatch thunk of static Equatable.== infix(_:_:)();
      v174 = v170[1].isa;
      (v174)(v130, v131);
      if ((v132 & 1) == 0)
      {
        v161 = v102;
        v162 = v103;
        v133 = v165;
        (v158)(v165, v126, v127);
        swift_unknownObjectRetain_n();
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v180 = v178;
          *v136 = 136315394;
          v137 = v170[2].isa;
          v138 = &v133[*(v127 + 48)];
          v170 = v134;
          v139 = v133;
          v140 = v171;
          LODWORD(v159) = v135;
          v141 = v172;
          (v137)(v171, v138, v172);
          (v175)(v139, v127);
          sub_10003C1D4(&qword_1002E27E0, &type metadata accessor for UUID);
          v142 = dispatch thunk of CustomStringConvertible.description.getter();
          v144 = v143;
          (v174)(v140, v141);
          v145 = sub_100009E5C(v142, v144, &v180);

          v158 = v136;
          *(v136 + 4) = v145;
          *(v136 + 12) = 2080;
          v163(v161, v162);
          swift_unknownObjectRelease();
          v146 = dispatch thunk of CustomStringConvertible.description.getter();
          v148 = v147;
          swift_unknownObjectRelease();
          (v174)(v140, v141);
          v149 = sub_100009E5C(v146, v148, &v180);

          v150 = v158;
          *(v158 + 14) = v149;
          v151 = v170;
          _os_log_impl(&_mh_execute_header, v170, v159, "Detected uuid change after successfully sending CKRecord, uuid in synced down CKRecord is %s, uuid in existing persisted record is %s", v150, 0x16u);
          swift_arrayDestroy();

          v127 = v153;
        }

        else
        {
          swift_unknownObjectRelease();
          (v175)(v133, v127);
          swift_unknownObjectRelease();
        }

        v126 = v160;
      }

      sub_100206004();
      swift_unknownObjectRelease();
      (v175)(v126, v127);
    }

    else
    {
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v123, v124, "Failed to find existing persisted record for syncDownIdentifierRecord while handling sent record zone changes", v125, 2u);
      }

      (v67)(v160, v20);
    }

LABEL_37:
    v152 = v177;
    *v177 = 0;
    v152[1] = 0;
    return;
  }

  if ((sub_100209668(a1) & 1) == 0)
  {
    v36 = a1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&_mh_execute_header, v37, v38, "Encountered unexpected saved CKRecord %@ while handling sent record zone changes.", v39, 0xCu);
      sub_10003CD48(v40, &qword_1002E2700, &unk_1002474D0);
    }

    goto LABEL_37;
  }

  v35 = a1;
  sub_10020AFD4(v35, v175);
  if (!v5)
  {
    v74 = v174[3];
    v75 = v174[4];
    sub_10000C4FC(v174, v74);
    v76 = (*(v75 + 56))(v74, v75);
    v164 = 0;
    v104 = v76;
    v105 = v175;
    sub_100211EC8(v175, v12);
    swift_unknownObjectRetain_n();
    v106 = v35;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v178 = v110;
      v180 = swift_slowAlloc();
      *v109 = 138412802;
      v111 = [v106 recordID];
      *(v109 + 4) = v111;
      *v110 = v111;
      *(v109 + 12) = 2080;
      v112 = sub_100209B24();
      v114 = v113;
      sub_100211F2C(v12);
      v115 = sub_100009E5C(v112, v114, &v180);

      *(v109 + 14) = v115;
      *(v109 + 22) = 2080;
      v179 = v104;
      v116 = v173[12];
      v117 = v173[20];
      v118 = *(v117 + 8);
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v120;
      swift_unknownObjectRelease_n();
      v122 = sub_100009E5C(v119, v121, &v180);
      v105 = v175;

      *(v109 + 24) = v122;
      _os_log_impl(&_mh_execute_header, v107, v108, "Handling successfully saved sent synchronization CKRecord: CKRecordID=%@, syncDownSynchronizationRecord=%s, syncState=%s", v109, 0x20u);
      sub_10003CD48(v178, &qword_1002E2700, &unk_1002474D0);

      swift_arrayDestroy();
    }

    else
    {

      swift_unknownObjectRelease_n();
      sub_100211F2C(v12);
      v116 = v173[12];
      v117 = v173[20];
    }

    sub_100205294(v105, v116, v117);
    swift_unknownObjectRelease();
    sub_100211F2C(v105);
    goto LABEL_37;
  }

  v34 = v5;
LABEL_17:
  v81 = a1;
  swift_errorRetain();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v84 = 138412546;
    *(v84 + 4) = v81;
    *v85 = v81;
    *(v84 + 12) = 2112;
    v86 = v81;
    swift_errorRetain();
    v87 = _swift_stdlib_bridgeErrorToNSError();
    *(v84 + 14) = v87;
    v85[1] = v87;
    _os_log_impl(&_mh_execute_header, v82, v83, "Caught error while handling successfully saved sent CKRecord %@: %@", v84, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
  }

  v88 = v177;
  *v177 = v81;
  v88[1] = v34;
  v89 = v81;
}

void sub_100215CC4(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *a2;
  v9 = *a1;
  v10 = *(*a2 + 96);
  v14[0] = *(*a2 + 80);
  v14[1] = v10;
  v11 = v8[8];
  v14[2] = v8[7];
  v14[3] = v11;
  v12 = v8[10];
  v14[4] = v8[9];
  v14[5] = v12;
  v14[6] = v8[11];
  _s18SyncEngineDelegateCMa();
  swift_getWitnessTable();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = objc_autoreleasePoolPush();
  sub_100215E08(a2, v9, a3, v14);
  objc_autoreleasePoolPop(v13);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a4 = v14[0];
  }
}

void sub_100215E08(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v40 = a4;
  v7 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v12;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = a3;
    v21 = a1;
    v22 = v20;
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v20 = v15;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Handling successfully deleted CKRecord with CKRecordID=%@", v19, 0xCu);
    sub_10003CD48(v22, &qword_1002E2700, &unk_1002474D0);
    a1 = v21;
    a3 = v37;

    v12 = v36;
  }

  v24 = v39;
  sub_100202D40(v15, v10);
  if (v24)
  {

    sub_100002728(v10, 1, 1, v11);
    sub_10003CD48(v10, &qword_1002E12C8, &qword_100248D50);
    v25 = v15;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unexpected deletion of unknown record ID %@ while handling sent record zone changes.", v28, 0xCu);
      sub_10003CD48(v29, &qword_1002E2700, &unk_1002474D0);
    }
  }

  else
  {
    v39 = a1;
    sub_100002728(v10, 0, 1, v11);
    v32 = v38;
    (*(v12 + 32))(v38, v10, v11);
    v33 = v12;
    v34 = a3[3];
    v35 = a3[4];
    sub_10000C4FC(a3, v34);
    (*(v35 + 112))(v32, v34, v35);
    (*(v33 + 8))(v32, v11);
  }

  v31 = v40;
  *v40 = 0;
  v31[1] = 0;
}

void sub_100216314(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, void *a7@<X6>, _OWORD *a8@<X8>)
{
  v22 = a8;
  v15 = *a2;
  v16 = *(*a2 + 96);
  v21[0] = *(*a2 + 80);
  v21[1] = v16;
  v17 = v15[8];
  v21[2] = v15[7];
  v21[3] = v17;
  v18 = v15[10];
  v21[4] = v15[9];
  v21[5] = v18;
  v21[6] = v15[11];
  _s18SyncEngineDelegateCMa();
  swift_getWitnessTable();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = objc_autoreleasePoolPush();
  sub_100216484(a2, a1, a3, a4, a5, a6, a7, v21);
  objc_autoreleasePoolPop(v19);
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *v22 = v21[0];
  }
}

void sub_100216484(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v125 = a7;
  v134 = a6;
  v135 = a5;
  v133 = a4;
  v136 = a3;
  v137 = a8;
  v122 = *a1;
  v10 = type metadata accessor for UUID();
  v123 = *(v10 - 8);
  v124 = v10;
  v11 = *(v123 + 64);
  __chkstk_darwin(v10);
  v121 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v118 - v14;
  v15 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v16 = *(v15 - 8);
  v17 = v16[8];
  __chkstk_darwin(v15);
  v132 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v118 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v118 - v24;
  v26 = qword_100310708;
  v27 = v16[2];
  v27(&v118 - v24, a2, v15, v23);
  v138 = a2;
  v127 = v27;
  v128 = v16 + 2;
  (v27)(v21, a2, v15);
  v130 = v26;
  v131 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v129 = v16;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *v31 = 138412546;
    v32 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v33 = [v32 recordID];

    v119 = v28;
    v34 = v29;
    v35 = v16[1];
    v35(v25, v15);
    *(v31 + 4) = v33;
    v36 = v120;
    *v120 = v33;
    v37 = v35;
    *(v31 + 12) = 2112;
    CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    v35(v21, v15);
    v39 = v138;
    *(v31 + 14) = v38;
    v36[1] = v38;
    v40 = v119;
    _os_log_impl(&_mh_execute_header, v119, v34, "Received error for failed save of CKRecord with CKRecordID=%@: %@", v31, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
    v41 = v139;

    v42 = v15;
  }

  else
  {

    v37 = v16[1];
    v37(v21, v15);
    v37(v25, v15);
    v42 = v15;
    v39 = v138;
    v41 = v139;
  }

  v43 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
  v143 = v43;
  type metadata accessor for CKError(0);
  sub_10003C1D4(&qword_1002E0328, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();

  v44 = v142;
  switch(v142)
  {
    case 112:
      v47 = v134;
      goto LABEL_11;
    case 28:
      v47 = v135;
      *v136 = 1;
LABEL_11:
      *v47 = 1;
      goto LABEL_15;
    case 26:
      *v136 = 1;
      v45 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      v46 = [v45 recordID];

      LOBYTE(v45) = sub_100202F68(v46);
      if (v45)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
  }

  v48 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
  v141 = v48;
  _BridgedStoredNSError.code.getter();

  if (sub_100141154(v140, &off_1002BCE50))
  {
    v49 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v50 = [v49 recordID];

    LOBYTE(v49) = sub_100202F68(v50);
    if (v49)
    {
LABEL_14:
      CKSyncEngine.state.getter();
      sub_100099DF4(&qword_1002E1200, &qword_100247438);
      v51 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
      v52 = *(v51 - 8);
      v53 = *(v52 + 72);
      v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_10022E400;
      v56 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      v57 = [v56 recordID];

      *(v55 + v54) = v57;
      (*(v52 + 104))(v55 + v54, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v51);
      CKSyncEngine.State.add(pendingRecordZoneChanges:)(v55);
    }

LABEL_15:
    v58 = v137;
    *v137 = 0;
    v58[1] = 0;
    return;
  }

  v59 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
  v60 = v59;
  if (v44 != 11)
  {
    goto LABEL_20;
  }

  v61 = [v59 recordID];

  v62 = sub_100202F68(v61);
  v63 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
  v64 = [v63 recordID];

  if (!v62)
  {
    v69 = v42;
    v70 = [v64 recordName];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    if (v71 == 0x6E6F7268636E7953 && v73 == 0xEF6E6F6974617A69)
    {

      v42 = v69;
      v80 = v132;
    }

    else
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v42 = v69;
      v80 = v132;
      if ((v75 & 1) == 0)
      {
        v60 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
LABEL_20:
        v67 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
        v68 = v137;
        *v137 = v60;
        v68[1] = v67;
        return;
      }
    }

    v76 = v125[3];
    v77 = v125[4];
    sub_10000C4FC(v125, v76);
    (*(v77 + 56))(v76, v77);
    if (!v41)
    {
      (*(v122[20] + 72))(0, 0xF000000000000000, v122[12]);
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    v66 = v41;
    goto LABEL_31;
  }

  v65 = v126;
  sub_100202D40(v64, v126);
  v66 = v41;
  if (v41)
  {

    v80 = v132;
LABEL_31:
    v127(v80, v39, v42);
    swift_errorRetain();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v136 = v37;
      v84 = v80;
      v85 = v83;
      v86 = swift_slowAlloc();
      v135 = v42;
      v87 = v86;
      *v85 = 138412546;
      v139 = v81;
      v88 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      v89 = [v88 recordID];

      v136(v84, v135);
      *(v85 + 4) = v89;
      *v87 = v89;
      *(v85 + 12) = 2112;
      swift_errorRetain();
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 14) = v90;
      v87[1] = v90;
      v91 = v139;
      _os_log_impl(&_mh_execute_header, v139, v82, "Caught error while handling unknownItem error for CKRecord with CKRecordID=%@: %@", v85, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
    }

    else
    {

      v37(v80, v42);
    }

    v92 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v93 = v137;
    *v137 = v92;
    v93[1] = v66;
    return;
  }

  v78 = v125[3];
  v79 = v125[4];
  sub_10000C4FC(v125, v78);
  if ((*(v79 + 104))(v65, v78, v79))
  {
    (*(v122[22] + 368))(0, 0xF000000000000000, v122[13]);
    CKSyncEngine.state.getter();
    sub_100099DF4(&qword_1002E1200, &qword_100247438);
    v94 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v95 = *(v94 - 8);
    v96 = *(v95 + 72);
    v97 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_10022E400;
    v99 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
    v100 = [v99 recordID];

    *(v98 + v97) = v100;
    (*(v95 + 104))(v98 + v97, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v94);
    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v98);

    swift_unknownObjectRelease();
    (*(v123 + 8))(v126, v124);
    goto LABEL_15;
  }

  v139 = 0;
  v102 = v123;
  v101 = v124;
  v103 = v121;
  v104 = v126;
  (*(v123 + 16))(v121, v126, v124);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v141 = v108;
    *v107 = 136315138;
    sub_10003C1D4(&qword_1002E27E0, &type metadata accessor for UUID);
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v110 = v103;
    v112 = v111;
    v113 = *(v102 + 8);
    v113(v110, v124);
    v114 = sub_100009E5C(v109, v112, &v141);

    *(v107 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v105, v106, "Unable to find existing record for UUID %s when handling .unknownItem error.", v107, 0xCu);
    sub_100004118(v108);
    v104 = v126;

    v101 = v124;
  }

  else
  {

    v113 = *(v102 + 8);
    v113(v103, v101);
  }

  v115 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
  v116 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
  v113(v104, v101);
  v117 = v137;
  *v137 = v115;
  v117[1] = v116;
}

uint64_t sub_1002172B0(void *a1, void *a2, uint64_t a3, _BYTE *a4, void *a5, _BYTE *a6, _BYTE *a7)
{
  v13 = *a3;
  v14 = *(*a3 + 96);
  v19[0] = *(*a3 + 80);
  v19[1] = v14;
  v15 = v13[8];
  v19[2] = v13[7];
  v19[3] = v15;
  v16 = v13[10];
  v19[4] = v13[9];
  v19[5] = v16;
  v19[6] = v13[11];
  _s18SyncEngineDelegateCMa();
  swift_getWitnessTable();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = objc_autoreleasePoolPush();
  sub_1002173F8(a1, a2, a4, a5, a6, a7, v19);
  objc_autoreleasePoolPop(v17);
  return *&v19[0];
}

id sub_1002173F8@<X0>(void *a1@<X1>, void *a2@<X2>, _BYTE *a3@<X3>, void *a4@<X4>, _BYTE *a5@<X5>, _BYTE *a6@<X6>, void *a7@<X8>)
{
  v8 = v7;
  v12 = a1;
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v34 = a4;
    v16 = swift_slowAlloc();
    v17 = a7;
    v18 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v18 = v12;
    *(v16 + 12) = 2112;
    v19 = v12;
    v20 = v13;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    v18[1] = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received error for failed deletion of CKRecord with CKRecordID=%@: %@", v16, 0x16u);
    sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
    swift_arrayDestroy();
    a7 = v17;
    v8 = v7;

    a4 = v34;
  }

  type metadata accessor for CKError(0);
  sub_10003C1D4(&qword_1002E0328, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  if (v38 != 11)
  {
    switch(v38)
    {
      case 112:
        v22 = a6;
        break;
      case 28:
        v22 = a5;
        *a3 = 1;
        break;
      case 26:
        v22 = a3;
        break;
      default:
LABEL_19:
        *a7 = v12;
        a7[1] = v13;
        v33 = v12;
        return v13;
    }

    *v22 = 1;
  }

  result = sub_1002177A4(v12, v13, a4);
  if (v8)
  {
    v12 = v12;
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a7;
      v29 = swift_slowAlloc();
      *v27 = 138412546;
      *(v27 + 4) = v12;
      *v29 = v12;
      *(v27 + 12) = 2112;
      v30 = v12;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      v29[1] = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Caught error while handling failed record deletion for CKRecordID=%@: %@", v27, 0x16u);
      sub_100099DF4(&qword_1002E2700, &unk_1002474D0);
      swift_arrayDestroy();
      a7 = v28;
    }

    else
    {
    }

    goto LABEL_19;
  }

  if (result)
  {
    v32 = v24;
  }

  else
  {
    v32 = 0;
  }

  *a7 = result;
  a7[1] = v32;
  return result;
}

id sub_1002177A4(void *a1, void *a2, void *a3)
{
  v7 = sub_100099DF4(&qword_1002E12C8, &qword_100248D50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v33 - v9;
  v11 = type metadata accessor for UUID();
  v12 = sub_100003724(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100202D40(a1, v10);
  if (v3)
  {

    sub_100002728(v10, 1, 1, v11);
    sub_10003CD48(v10, &qword_1002E12C8, &qword_100248D50);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unexpected failed deletion of unknown record ID %@ while handling failed record deletions.", v22, 0xCu);
      sub_10003CD48(v23, &qword_1002E2700, &unk_1002474D0);
      sub_1000327B4();
      sub_1000327B4();
    }

    v25 = v19;
    v26 = a2;
  }

  else
  {
    sub_100002728(v10, 0, 1, v11);
    (*(v14 + 32))(v18, v10, v11);
    v27 = a3[3];
    v28 = a3[4];
    sub_10000C4FC(a3, v27);
    (*(v28 + 112))(v18, v27, v28);
    v29 = *(v14 + 8);
    v30 = sub_10003C21C();
    v31(v30);
    return 0;
  }

  return v19;
}

unint64_t sub_100217A80()
{
  result = qword_1002E2E70[0];
  if (!qword_1002E2E70[0])
  {
    sub_100003AE0(255, &qword_1002E2980, CKRecordZoneID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002E2E70);
  }

  return result;
}

uint64_t sub_100217AE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100217B24(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100217B38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100217B58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_100217BA8()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100217C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_transaction_create();
  swift_beginAccess();
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  sub_100008494(v3 + 16, v7);
  (*(v8 + 32))(a1, a2, a3, v7, v8);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_100217D64()
{
  sub_100004118((v0 + 16));

  v1 = qword_100310708;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_100310710 + 8);
  sub_10003D150(*(v0 + qword_100310710));
  v4 = *(v0 + qword_100310718 + 8);
  sub_10003D150(*(v0 + qword_100310718));
  return v0;
}

uint64_t sub_100217E04()
{
  sub_100217D64();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100217E78()
{
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v2 = sub_100003724(Changes);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100099DF4(&qword_1002E1960, &qword_100247FD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100247D00;
  v10 = *(v0 + 56);
  *(v9 + 32) = v10;
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for CKSyncEngine.FetchChangesOptions.Scope.zoneIDs(_:), Changes);
  v11 = v10;
  CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
  sub_100099DF4(&qword_1002E2F78, &qword_10024AFF0);
  v12 = (sub_100099DF4(&qword_1002E2F80, &qword_10024AFF8) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10022E400;
  v16 = v12[14];
  *(v15 + v14) = v11;
  CKSyncEngine.FetchChangesOptions.ZoneConfiguration.init(shouldFetchAssetContents:resultsLimit:)();
  sub_10021A728();
  type metadata accessor for CKSyncEngine.FetchChangesOptions.ZoneConfiguration();
  sub_10003C580(qword_1002E2E70, sub_10021A728);
  Dictionary.init(dictionaryLiteral:)();
  return CKSyncEngine.FetchChangesOptions.zoneConfigurations.setter();
}

uint64_t sub_1002180B0(uint64_t a1, uint64_t a2)
{
  v374 = *v2;
  v348 = type metadata accessor for CKSyncEngine.Event.DidSendChanges();
  v5 = sub_100003724(v348);
  v347 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v9);
  sub_10000D478();
  sub_100008280(v10);
  v362 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v11 = sub_100003724(v362);
  v361 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v15);
  sub_10000D478();
  sub_100008280(v16);
  v365 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  v17 = sub_100003724(v365);
  v364 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v21);
  sub_10000D478();
  sub_100008280(v22);
  v350 = type metadata accessor for CKSyncEngine.Event.WillSendChanges();
  v23 = sub_100003724(v350);
  v349 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v27);
  sub_10000D478();
  sub_100008280(v28);
  Changes = type metadata accessor for CKSyncEngine.Event.DidFetchChanges();
  v29 = sub_100003724(Changes);
  v351 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_10000D478();
  sub_100008280(v34);
  RecordZoneChanges = type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges();
  v35 = sub_100003724(RecordZoneChanges);
  v356 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v35);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v39);
  sub_10000D478();
  sub_100008280(v40);
  v41 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v42 = sub_100003724(v41);
  v368 = v43;
  v369 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v46);
  sub_10000D478();
  v367 = v47;
  v354 = type metadata accessor for CKSyncEngine.Event.WillFetchRecordZoneChanges();
  v48 = sub_100003724(v354);
  v353 = v49;
  v51 = *(v50 + 64);
  __chkstk_darwin(v48);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v52);
  sub_10000D478();
  sub_100008280(v53);
  v375 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v54 = sub_100003724(v375);
  v372 = v55;
  v57 = *(v56 + 64);
  __chkstk_darwin(v54);
  sub_1000037D4();
  v366 = v58;
  __chkstk_darwin(v59);
  sub_10000D478();
  v371 = v60;
  v359 = type metadata accessor for CKSyncEngine.Event.WillFetchChanges();
  v61 = sub_100003724(v359);
  v358 = v62;
  v64 = *(v63 + 64);
  __chkstk_darwin(v61);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v65);
  sub_10000D478();
  sub_100008280(v66);
  v370 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v67 = sub_100003724(v370);
  v373 = v68;
  v70 = *(v69 + 64);
  __chkstk_darwin(v67);
  v72 = v345 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v75 = (v345 - v74);
  v76 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v77 = sub_100003724(v76);
  v377 = v78;
  v80 = *(v79 + 64);
  __chkstk_darwin(v77);
  v82 = v345 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v85 = v345 - v84;
  v86 = type metadata accessor for CKSyncEngine.Event();
  v381 = sub_100003724(v86);
  v382 = v87;
  v89 = *(v88 + 64);
  __chkstk_darwin(v381);
  sub_1000037D4();
  v376[2] = v90;
  __chkstk_darwin(v91);
  sub_10000690C();
  __chkstk_darwin(v92);
  sub_10000690C();
  __chkstk_darwin(v93);
  sub_10000690C();
  __chkstk_darwin(v94);
  v96 = v345 - v95;
  __chkstk_darwin(v97);
  sub_10000D478();
  v379 = v98;
  v380 = v2;
  v99 = *&v2[qword_100310710];
  if (v99)
  {
    v100 = *&v2[qword_100310710 + 8];
    v99(a1, a2);
  }

  v101 = a2;
  v102 = v382;
  v103 = *(v382 + 16);
  v104 = v379;
  v378 = a1;
  v105 = a1;
  v106 = v381;
  v376[0] = v103;
  v376[1] = v382 + 16;
  v103(v379, v105, v381);
  v107 = (*(v102 + 88))(v104, v106);
  if (v107 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v375 = v101;
    (*(v102 + 96))(v104, v106);
    v108 = v377;
    (*(v377 + 32))(v85, v104, v76);
    sub_10003C768();
    v109(v82, v85, v76);
    v110 = sub_10003C7E8();
    v111 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = sub_10003A604();
      v113 = swift_slowAlloc();
      v383 = v113;
      *v112 = 136315138;
      sub_10003C580(qword_1002E2FE8, &type metadata accessor for CKSyncEngine.Event.StateUpdate);
      v114 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v115;
      v117 = *(v377 + 8);
      v117(v82, v76);
      v118 = sub_100009E5C(v114, v116, &v383);
      v96 = v380;

      *(v112 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v110, v111, "State update: %s", v112, 0xCu);
      sub_100004118(v113);
      sub_1000327B4();
      sub_1000327B4();
    }

    else
    {

      v117 = *(v108 + 8);
      v119 = (v117)(v82, v76);
    }

    __chkstk_darwin(v119);
    v132 = v374;
    v133 = v374[6];
    *&v345[-16] = v374[5];
    *&v345[-14] = v133;
    v134 = v132[8];
    *&v345[-12] = v132[7];
    *&v345[-10] = v134;
    v135 = v132[10];
    *&v345[-8] = v132[9];
    *&v345[-6] = v135;
    *&v345[-4] = v132[11];
    v345[-2] = v85;
    sub_100217C68(sub_10003C538, &v345[-18], &type metadata for ()[8]);
    result = (v117)(v85, v76);
    v120 = v375;
    goto LABEL_50;
  }

  v120 = v101;
  if (v107 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v121 = v379;
    (*(v382 + 96))(v379, v381);
    v122 = v373;
    v123 = v370;
    (*(v373 + 32))(v75, v121, v370);
    (*(v122 + 16))(v72, v75, v123);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v124, v125))
    {
      sub_10003A604();
      v379 = sub_10003C6D8();
      v383 = v379;
      *v82 = 136315138;
      sub_10003C580(&qword_1002E2FE0, &type metadata accessor for CKSyncEngine.Event.AccountChange);
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v127 = v120;
      v129 = v128;
      v130 = sub_10003C880();
      (v122)(v130);
      v131 = sub_100009E5C(v126, v129, &v383);
      v120 = v127;

      *(v82 + 4) = v131;
      _os_log_impl(&_mh_execute_header, v124, v125, "Account change: %s", v82, 0xCu);
      sub_10003C668();
      sub_10003C6F4();
    }

    else
    {

      v150 = sub_10003C880();
      (v122)(v150);
    }

    v151 = sub_10003C840();
    sub_100209FAC(v75, v151);
    v165 = sub_10003C86C();
    (v122)(v165);

    goto LABEL_19;
  }

  v136 = v381;
  if (v107 != enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v138 = v382;
    if (v107 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
    {
      v152 = sub_10003C6B0();
      v153(v152);
      v154 = v367;
      v138 = v368;
      v155 = sub_10003C858();
      v140 = v369;
      v156(v155);
      sub_10003C768();
      v157 = sub_10003C6C4();
      v158(v157);
      v159 = sub_10003C7E8();
      v160 = static os_log_type_t.info.getter();
      if (sub_10003C710(v160))
      {
        sub_10003A604();
        v161 = sub_10003C6D8();
        sub_10003C7BC(v161);
        *v82 = 136315138;
        sub_10003C580(&qword_1002E2FC0, &type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v162 = sub_10003C5E0();
        (v138)(v162, v369);
        sub_10003C72C();
        sub_10000878C();

        *(v82 + 4) = v154;
        sub_10003C610(&_mh_execute_header, v163, v164, "Fetched record zone changes: %s");
        sub_10003C790();
        v140 = v369;
        sub_1000327B4();
        sub_10003C6F4();
      }

      else
      {

        v182 = sub_10003C630();
        (v138)(v182);
      }

      sub_10003C840();
      v167 = v367;
      v183 = sub_10003C69C();
      sub_10020BB08(v183, v184);
      if (v82)
      {
        v375 = v120;
        goto LABEL_38;
      }

      goto LABEL_49;
    }

    if (v107 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
    {
      v170 = sub_10003C6B0();
      v171(v170);
      sub_10003C644(&v386);
      v172 = sub_10003C800();
      v140 = v365;
      v173(v172);
      sub_10003C768();
      v174 = sub_10003C6C4();
      v175(v174);
      v176 = sub_10003C7E8();
      v177 = static os_log_type_t.info.getter();
      if (sub_10003C710(v177))
      {
        sub_10003A604();
        v178 = sub_10003C6D8();
        sub_10003C7BC(v178);
        *v82 = 136315138;
        sub_10003C580(&qword_1002E2FA0, &type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v179 = sub_10003C5E0();
        (v138)(v179, v365);
        sub_10003C72C();
        sub_10000878C();

        *(v82 + 4) = v101;
        sub_10003C610(&_mh_execute_header, v180, v181, "Sent database changes: %s");
        sub_10003C790();
        v140 = v365;
        sub_1000327B4();
        sub_10003C6F4();
      }

      else
      {

        v197 = sub_10003C630();
        (v138)(v197);
      }

      sub_10003C840();
      v167 = v363;
      v198 = sub_10003C69C();
      sub_100213BBC(v198, v199);
      if (v82)
      {
        v375 = v101;
        v200 = &v386;
LABEL_37:
        v201 = *(v200 - 32);
        goto LABEL_38;
      }

      v234 = &v386;
      goto LABEL_48;
    }

    if (v107 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
    {
      v185 = sub_10003C6B0();
      v186(v185);
      sub_10003C644(&v385);
      v187 = sub_10003C800();
      v188(v187);
      sub_10003C768();
      v189 = sub_10003C6C4();
      v190(v189);
      v191 = sub_10003C7E8();
      v192 = static os_log_type_t.info.getter();
      if (sub_10003C710(v192))
      {
        sub_10003A604();
        v193 = sub_10003C6D8();
        sub_10003C7BC(v193);
        *v82 = 136315138;
        sub_10003C580(&qword_1002E2F98, &type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v194 = sub_10003C5E0();
        (v138)(v194, v362);
        sub_10003C72C();
        sub_10000878C();

        *(v82 + 4) = v101;
        sub_10003C610(&_mh_execute_header, v195, v196, "Sent record zone changes: %s");
        sub_10003C790();
        sub_1000327B4();
        sub_10003C6F4();
      }

      else
      {

        v238 = sub_10003C630();
        (v138)(v238);
      }

      sub_100214324(v360, v101);
      v249 = sub_10003C810();
      result = (v138)(v249);
      goto LABEL_50;
    }

    if (v107 == enum case for CKSyncEngine.Event.willFetchChanges(_:))
    {
      v222 = sub_10003C758();
      v223(v222);
      sub_10003C644(&v383);
      sub_10003C748();
      sub_10003C834();
      v224();
      sub_10003C768();
      v225 = sub_10003C654();
      v226(v225);
      v227 = sub_10003C7E8();
      v228 = static os_log_type_t.info.getter();
      if (sub_10003C710(v228))
      {
        sub_10003A604();
        v229 = sub_10003C6D8();
        sub_10003C828(v229);
        *v82 = 136315138;
        sub_10003C580(&qword_1002E2FD8, &type metadata accessor for CKSyncEngine.Event.WillFetchChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v230 = sub_10003C5F8();
        v75(v230);
        sub_10003C72C();
        sub_10000878C();

        *(v82 + 4) = v101;
        sub_10003C610(&_mh_execute_header, v231, v232, "Will fetch changes: %s");
        sub_10003C668();
        sub_10003C6F4();

        v233 = &v384;
LABEL_58:
        result = (v75)(*(v233 - 32), v136);
        goto LABEL_50;
      }
    }

    else if (v107 == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
    {
      v239 = sub_10003C758();
      v240(v239);
      sub_10003C644(&v377);
      sub_10003C748();
      sub_10003C834();
      v241();
      sub_10003C768();
      v242 = sub_10003C654();
      v243(v242);
      v227 = sub_10003C7E8();
      v244 = static os_log_type_t.info.getter();
      if (sub_10003C710(v244))
      {
        sub_10003A604();
        v245 = sub_10003C6D8();
        sub_10003C828(v245);
        *v82 = 136315138;
        sub_10003C580(&qword_1002E2FC8, &type metadata accessor for CKSyncEngine.Event.WillFetchRecordZoneChanges);
        sub_10003C774();
        dispatch thunk of CustomStringConvertible.description.getter();
        v246 = sub_10003C5F8();
        v75(v246);
        sub_10003C72C();
        sub_10000878C();

        *(v82 + 4) = v101;
        sub_10003C610(&_mh_execute_header, v247, v248, "Will fetch record zone changes: %s");
        sub_10003C668();
        sub_10003C6F4();

        v233 = &v382;
        goto LABEL_58;
      }
    }

    else
    {
      if (v107 == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
      {
        v250 = sub_10003C6B0();
        v251(v250);
        sub_10003C644(&v380);
        v252 = sub_10003C800();
        v140 = RecordZoneChanges;
        v253(v252);
        sub_10003C768();
        v254 = sub_10003C6C4();
        v255(v254);
        v256 = sub_10003C7E8();
        v257 = static os_log_type_t.info.getter();
        if (sub_10003C710(v257))
        {
          sub_10003A604();
          v258 = sub_10003C6D8();
          sub_10003C7BC(v258);
          *v82 = 136315138;
          sub_10003C580(&qword_1002E2FB8, &type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges);
          sub_10003C774();
          dispatch thunk of CustomStringConvertible.description.getter();
          v259 = sub_10003C5E0();
          (v138)(v259, RecordZoneChanges);
          sub_10003C72C();
          sub_10000878C();

          *(v82 + 4) = v101;
          sub_10003C610(&_mh_execute_header, v260, v261, "Did fetch record zone changes: %s");
          sub_10003C790();
          v140 = RecordZoneChanges;
          sub_1000327B4();
          sub_10003C6F4();
        }

        else
        {

          v272 = sub_10003C630();
          (v138)(v272);
        }

        sub_10003C840();
        v167 = v355;
        v273 = sub_10003C69C();
        sub_1002104B8(v273, v274);
        if (v82)
        {
          v375 = v101;
          v200 = &v380;
          goto LABEL_37;
        }

        v234 = &v380;
LABEL_48:
        v235 = *(v234 - 32);
LABEL_49:
        (v138)(v167, v140);

        goto LABEL_50;
      }

      if (v107 == enum case for CKSyncEngine.Event.didFetchChanges(_:))
      {
        v262 = sub_10003C758();
        v263(v262);
        sub_10003C644(&v374);
        sub_10003C748();
        sub_10003C834();
        v264();
        sub_10003C768();
        v265 = sub_10003C654();
        v266(v265);
        v227 = sub_10003C7E8();
        v267 = static os_log_type_t.info.getter();
        if (sub_10003C710(v267))
        {
          sub_10003A604();
          v268 = sub_10003C6D8();
          sub_10003C828(v268);
          *v82 = 136315138;
          sub_10003C580(&qword_1002E2FB0, &type metadata accessor for CKSyncEngine.Event.DidFetchChanges);
          sub_10003C774();
          dispatch thunk of CustomStringConvertible.description.getter();
          v269 = sub_10003C5F8();
          v75(v269);
          sub_10003C72C();
          sub_10000878C();

          *(v82 + 4) = v101;
          sub_10003C610(&_mh_execute_header, v270, v271, "Did fetch changes: %s");
          sub_10003C668();
          sub_10003C6F4();

          v233 = v376;
          goto LABEL_58;
        }
      }

      else if (v107 == enum case for CKSyncEngine.Event.willSendChanges(_:))
      {
        v275 = sub_10003C758();
        v276(v275);
        sub_10003C644(&v370);
        sub_10003C748();
        sub_10003C834();
        v277();
        sub_10003C768();
        v278 = sub_10003C654();
        v279(v278);
        v227 = sub_10003C7E8();
        v280 = static os_log_type_t.info.getter();
        if (sub_10003C710(v280))
        {
          sub_10003A604();
          v281 = sub_10003C6D8();
          sub_10003C828(v281);
          *v82 = 136315138;
          sub_10003C580(&qword_1002E2FA8, &type metadata accessor for CKSyncEngine.Event.WillSendChanges);
          sub_10003C774();
          dispatch thunk of CustomStringConvertible.description.getter();
          v282 = sub_10003C5F8();
          v75(v282);
          sub_10003C72C();
          sub_10000878C();

          *(v82 + 4) = v101;
          sub_10003C610(&_mh_execute_header, v283, v284, "Will send changes: %s");
          sub_10003C668();
          sub_10003C6F4();

          v233 = &v372;
          goto LABEL_58;
        }
      }

      else
      {
        if (v107 != enum case for CKSyncEngine.Event.didSendChanges(_:))
        {
          if (v107 == enum case for CKSyncEngine.Event.willFetchAsset(_:))
          {
            sub_10003C780();
            v296();
            v297 = Logger.logObject.getter();
            v298 = static os_log_type_t.error.getter();
            if (sub_10003C710(v298))
            {
              sub_10003A604();
              v377 = sub_10003C6D8();
              v383 = v377;
              *v82 = 136315138;
              sub_10003C5C8();
              sub_10003C580(v299, v300);
              v301 = dispatch thunk of CustomStringConvertible.description.getter();
              v302 = sub_10003C7C8();
              (v138)(v302);
              sub_10003C72C();
              sub_10000878C();

              *(v82 + 4) = v301;
              sub_10003C610(&_mh_execute_header, v303, v304, "Unexpected .willFetchAsset event: %s");
              sub_10003C668();
              sub_10003C6F4();
            }

            else
            {

              v317 = sub_10003C7C8();
              (v138)(v317);
            }

            v318 = v379;
            v319 = v75;
          }

          else
          {
            if (v107 != enum case for CKSyncEngine.Event.fetchedAsset(_:))
            {
              v375 = v101;
              if (v107 == enum case for CKSyncEngine.Event.didFetchAsset(_:))
              {
                sub_10003C780();
                v320();
                v321 = Logger.logObject.getter();
                v322 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v321, v322))
                {
                  v323 = sub_10003A604();
                  v324 = swift_slowAlloc();
                  v383 = v324;
                  *v323 = 136315138;
                  sub_10003C5C8();
                  sub_10003C580(v325, v326);
                  v327 = v345[0];
                  v328 = v381;
                  v329 = dispatch thunk of CustomStringConvertible.description.getter();
                  v331 = v330;
                  v332 = *(v382 + 8);
                  v332(v327, v328);
                  v333 = sub_100009E5C(v329, v331, &v383);

                  *(v323 + 4) = v333;
                  _os_log_impl(&_mh_execute_header, v321, v322, "Unexpected .didFetchAsset event: %s", v323, 0xCu);
                  sub_100004118(v324);
                  sub_1000327B4();
                  sub_1000327B4();
                }

                else
                {

                  v332 = *(v382 + 8);
                  v332(v345[0], v381);
                }

                result = (v332)(v379, v381);
              }

              else
              {
                sub_10003C780();
                v334();
                v335 = Logger.logObject.getter();
                v336 = static os_log_type_t.error.getter();
                if (sub_10003C710(v336))
                {
                  sub_10003A604();
                  v337 = sub_10003C6D8();
                  sub_10003C7BC(v337);
                  *v82 = 136315138;
                  sub_10003C5C8();
                  sub_10003C580(v338, v339);
                  v340 = v346;
                  v341 = v381;
                  v342 = dispatch thunk of CustomStringConvertible.description.getter();
                  sub_10003C7AC(v382);
                  (v138)(v340, v341);
                  sub_10003C72C();
                  sub_10000878C();

                  *(v82 + 4) = v342;
                  sub_10003C610(&_mh_execute_header, v343, v344, "Unknown CKSyncEngine.Event: %s");
                  sub_10003C790();
                  sub_1000327B4();
                  sub_10003C6F4();
                }

                else
                {

                  sub_10003C7AC(v382);
                  (v138)(v346);
                }

                result = (v138)(v379, v381);
              }

              v120 = v375;
              goto LABEL_19;
            }

            v305 = qword_100310708;
            v306 = v345[1];
            sub_10003C780();
            v307();
            v308 = &v380[v305];
            v309 = Logger.logObject.getter();
            v310 = static os_log_type_t.error.getter();
            if (sub_10003C710(v310))
            {
              sub_10003A604();
              v311 = sub_10003C6D8();
              sub_10003C7BC(v311);
              *v82 = 136315138;
              sub_10003C5C8();
              sub_10003C580(v312, v313);
              sub_10003C774();
              dispatch thunk of CustomStringConvertible.description.getter();
              v314 = sub_10003C5E0();
              (v138)(v314, v136);
              sub_10003C72C();
              sub_10000878C();

              *(v82 + 4) = v308;
              sub_10003C610(&_mh_execute_header, v315, v316, "Unexpected .fetchedAsset event: %s");
              sub_10003C790();
              sub_1000327B4();
              sub_10003C6F4();
            }

            else
            {

              sub_10003C7AC(v138);
              (v138)(v306, v136);
            }

            v318 = v379;
            v319 = v136;
          }

          result = (v138)(v318, v319);
LABEL_19:
          v96 = v380;
          goto LABEL_50;
        }

        v285 = sub_10003C758();
        v286(v285);
        sub_10003C644(&v366);
        sub_10003C748();
        sub_10003C834();
        v287();
        sub_10003C768();
        v288 = sub_10003C654();
        v289(v288);
        v227 = sub_10003C7E8();
        v290 = static os_log_type_t.info.getter();
        if (sub_10003C710(v290))
        {
          sub_10003A604();
          v291 = sub_10003C6D8();
          sub_10003C828(v291);
          *v82 = 136315138;
          sub_10003C580(&qword_1002E2F90, &type metadata accessor for CKSyncEngine.Event.DidSendChanges);
          sub_10003C774();
          dispatch thunk of CustomStringConvertible.description.getter();
          v292 = sub_10003C5F8();
          v75(v292);
          sub_10003C72C();
          sub_10000878C();

          *(v82 + 4) = v101;
          sub_10003C610(&_mh_execute_header, v293, v294, "Did send changes: %s");
          sub_10003C668();
          sub_10003C6F4();

          v233 = &v368;
          goto LABEL_58;
        }
      }
    }

    v295 = *(v138 + 8);
    v295(v76, v136);
    result = (v295)(v82, v136);
LABEL_50:
    v236 = *&v96[qword_100310718];
    if (v236)
    {
      v237 = *&v96[qword_100310718 + 8];
      return v236(v378, v120, 0);
    }

    return result;
  }

  (*(v382 + 96))(v379, v381);
  v137 = v371;
  v138 = v372;
  v139 = sub_10003C858();
  v140 = v375;
  v141(v139);
  sub_10003C768();
  v76 = v366;
  v142(v366, v137, v140);
  v143 = sub_10003C7E8();
  v144 = static os_log_type_t.info.getter();
  if (sub_10003C710(v144))
  {
    sub_10003A604();
    v145 = sub_10003C6D8();
    sub_10003C7BC(v145);
    *v82 = 136315138;
    sub_10003C580(&qword_1002E2FD0, &type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges);
    sub_10003C774();
    dispatch thunk of CustomStringConvertible.description.getter();
    v146 = sub_10003C5E0();
    (v138)(v146, v375);
    sub_10003C72C();
    sub_10000878C();

    *(v82 + 4) = v137;
    sub_10003C610(&_mh_execute_header, v147, v148, "Fetched database changes: %s");
    sub_10003C790();
    v140 = v375;
    sub_1000327B4();
    sub_10003C6F4();
  }

  else
  {

    v166 = sub_10003C630();
    (v138)(v166);
  }

  sub_10003C840();
  v167 = v371;
  v168 = sub_10003C69C();
  sub_10020B684(v168, v169);
  if (!v82)
  {
    goto LABEL_49;
  }

  v375 = v120;
LABEL_38:
  (v138)(v167, v140);

  v202 = v378;
  (v376[0])(v76, v378, v136);
  swift_errorRetain();
  v203 = Logger.logObject.getter();
  v204 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v203, v204))
  {
    v205 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v207 = v76;
    v208 = swift_slowAlloc();
    v383 = v208;
    *v205 = 136315394;
    sub_10003C5C8();
    sub_10003C580(v209, v210);
    v211 = v96;
    v212 = dispatch thunk of CustomStringConvertible.description.getter();
    v213 = v136;
    v215 = v214;
    (*(v382 + 8))(v207, v213);
    v216 = v212;
    v96 = v211;
    v217 = sub_100009E5C(v216, v215, &v383);

    *(v205 + 4) = v217;
    *(v205 + 12) = 2112;
    swift_errorRetain();
    v218 = _swift_stdlib_bridgeErrorToNSError();
    *(v205 + 14) = v218;
    *v206 = v218;
    _os_log_impl(&_mh_execute_header, v203, v204, "Caught error while handling %s: %@", v205, 0x16u);
    sub_1001A7228(v206);
    v202 = v378;
    sub_1000327B4();
    sub_100004118(v208);
    sub_1000327B4();
    sub_1000327B4();
  }

  else
  {

    (*(v382 + 8))(v76, v136);
  }

  v219 = v375;
  v220 = *&v96[qword_100310718];
  if (v220)
  {
    v221 = *&v96[qword_100310718 + 8];
    swift_errorRetain();
    v220(v202, v219, v82);
  }
}

uint64_t sub_10021A1DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = sub_100099DF4(&qword_1002E1AB8, &qword_100247AD0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v24 - v18;
  v20 = a1[3];
  v21 = a1[4];
  sub_10000C4FC(a1, v20);
  (*(v21 + 56))(v20, v21);
  if (!v13)
  {
    CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
    v22 = type metadata accessor for CKSyncEngine.State.Serialization();
    sub_100002728(v19, 0, 1, v22);
    (*(a13 + 24))(v19, a5, a13);
    swift_unknownObjectRelease();
  }

  return sub_100004118(a1);
}

uint64_t sub_10021A318(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  swift_getWitnessTable();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003C228, v6, v5);
}

uint64_t sub_10021A3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  swift_getWitnessTable();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003C288, v7, v6);
}

uint64_t sub_10021A498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  swift_getWitnessTable();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003C2E8, v7, v6);
}

uint64_t sub_10021A558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = async function pointer to CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10003C348;

  return CKSyncEngineDelegate.shouldFetchChanges(zoneID:syncEngine:)(a1, a2, v9, a4);
}

uint64_t sub_10021A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = async function pointer to CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10003C440;

  return CKSyncEngineDelegate.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)(a1, a2, a3, v11, a5);
}

unint64_t sub_10021A728()
{
  result = qword_1002E2980;
  if (!qword_1002E2980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002E2980);
  }

  return result;
}

uint64_t sub_10021A778(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021A7B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

_BYTE *sub_10021A82C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_10021A8E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10021A928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021A964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_10021A9B4(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_10021AA24()
{
  result = qword_1002E30F0;
  if (!qword_1002E30F0)
  {
    sub_10009A468(&qword_1002E30F8, &qword_10024B370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E30F0);
  }

  return result;
}

BOOL sub_10021AA88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002BCE80, v2);

  return v3 != 0;
}

BOOL sub_10021AADC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021AA88(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10021AB38()
{
  result = qword_1002E3100;
  if (!qword_1002E3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E3100);
  }

  return result;
}

unint64_t sub_10021AB94()
{
  result = qword_1002E3128;
  if (!qword_1002E3128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E3128);
  }

  return result;
}

unint64_t sub_10021ABE8(uint64_t a1)
{
  result = sub_10021AC10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10021AC10()
{
  result = qword_1002E3170;
  if (!qword_1002E3170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E3170);
  }

  return result;
}

unint64_t sub_10021AC68()
{
  result = qword_1002E3178;
  if (!qword_1002E3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002E3178);
  }

  return result;
}

_BYTE *sub_10021ACBC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_10021AD70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10021AE08(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10021AEEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021AF2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_10021AF98(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  if (*(a1 + 48))
  {
    v7 = a1[2];
    v8 = a1[3];
    if (*(a1 + 48) == 1)
    {
      if (*(a2 + 48) != 1)
      {
        return 0;
      }

      v9 = a2[2];
      v10 = a2[3];
      v11 = v4 == v6 && v5 == a2[1];
      if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        if (!v10)
        {
          return 0;
        }

        v12 = v7 == v9 && v8 == v10;
        return v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }

      if (!v10)
      {
        return 1;
      }
    }

    else if (*(a2 + 48) == 2)
    {
      v16 = a1[4];
      v15 = a1[5];
      v17 = a2[1];
      v18 = a2[2];
      v19 = a2[3];
      v20 = a2[4];
      v21 = a2[5];
      if (v5)
      {
        if (!v17)
        {
          return 0;
        }

        v22 = v4 == v6 && v5 == v17;
        if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v17)
      {
        return 0;
      }

      v23 = v7 == v18 && v8 == v19;
      if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      return v16 == v20 && v15 == v21;
    }

    return 0;
  }

  if (*(a2 + 48))
  {
    return 0;
  }

  if (v4 == v6 && v5 == a2[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10021B19C()
{
  dlerror();
  abort_report_np();
  return sub_10021B1C0();
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

uint64_t UnkeyedDecodingContainer.decode(_:)()
{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

uint64_t SingleValueDecodingContainer.decode(_:)()
{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainerProtocol.decode(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}