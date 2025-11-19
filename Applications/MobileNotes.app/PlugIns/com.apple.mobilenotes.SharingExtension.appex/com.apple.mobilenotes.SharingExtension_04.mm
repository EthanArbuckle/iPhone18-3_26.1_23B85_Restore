uint64_t sub_100077448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ICArchiveModel();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  if (v5[13])
  {
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_53;
  }

  v100 = a1;
  v101 = a3;
  v98 = v17;
  v95 = v14;
  v99 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v11;
  v97 = v10;
  *(v5 + 104) = 1;
  *&v108 = a2;
  v19 = v5[2];
  v104 = v4;
  v21 = *(v9 + 80);
  v20 = *(v9 + 88);
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v22[4] = v19;
  v23 = swift_unknownObjectRetain();
  v102 = a2;
  ObjectType = &v87;
  __chkstk_darwin(v23);
  v113 = v5;
  *(&v87 - 4) = v21;
  *(&v87 - 3) = v20;
  *(&v87 - 2) = sub_100088B34;
  *(&v87 - 1) = v22;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1000B50E0();
  v24 = sub_1000B5810();
  v25 = sub_100030480(&qword_100106E30, &unk_1000CAB60);
  v26 = sub_100030480(&qword_100106EB8, &qword_1000CAD80);
  WitnessTable = swift_getWitnessTable();
  v28 = v104;
  v29 = sub_100072158(sub_100088A60, (&v87 - 6), v24, v25, v26, WitnessTable, &protocol self-conformance witness table for Error, &v105);
  if (v28)
  {

    v31 = v113;
    goto LABEL_56;
  }

  v88 = 0;
  v90 = v26;
  v91 = v19;
  v92 = v20;
  v93 = v21;
  v94 = v24;
  v104 = v29;

  v32 = *(v104 + 16);
  ObjectType = v25;
  v89 = WitnessTable;
  if (v32)
  {
    v33 = v104 + 32;
    v34 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100030C74(v33, &v111, &qword_100106E30, &unk_1000CAB60);
      v108 = v111;
      v109 = v112;
      if (*(&v112 + 1))
      {
        sub_100030480(&qword_100106CD8, &unk_1000CCE30);
        if (swift_dynamicCast())
        {
          if (*(&v106 + 1))
          {
            sub_10004589C(&v105, &v108);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_100033B3C(0, v34[2] + 1, 1, v34);
            }

            v36 = v34[2];
            v35 = v34[3];
            if (v36 >= v35 >> 1)
            {
              v34 = sub_100033B3C((v35 > 1), v36 + 1, 1, v34);
            }

            v34[2] = v36 + 1;
            sub_10004589C(&v108, &v34[5 * v36 + 4]);
            goto LABEL_8;
          }
        }

        else
        {
          v107 = 0;
          v105 = 0u;
          v106 = 0u;
        }
      }

      else
      {
        sub_100036320(&v108, &qword_100106E30, &unk_1000CAB60);
        v105 = 0u;
        v106 = 0u;
        v107 = 0;
      }

      sub_100036320(&v105, &qword_100108028, &qword_1000CCE28);
LABEL_8:
      v33 += 32;
      if (!--v32)
      {

        goto LABEL_20;
      }
    }
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_20:
  *&v105 = _swiftEmptyArrayStorage;
  v37 = v34[2];
  v38 = v94;
  if (v37)
  {
    v39 = (v34 + 4);
    do
    {
      sub_100088704(v39, &v108);
      v40 = *(&v109 + 1);
      v41 = v110;
      sub_1000458B4(&v108, *(&v109 + 1));
      v42 = (*(v41 + 24))(v40, v41);
      sub_100035DA8(&v108);
      sub_100063534(v42);
      v39 += 40;
      --v37;
    }

    while (v37);
  }

  v104 = v105;
  v44 = v102;
  *&v108 = v102;
  __chkstk_darwin(v43);
  v45 = v93;
  v46 = v92;
  *(&v87 - 2) = v93;
  *(&v87 - 1) = v46;

  swift_getWitnessTable();
  v47 = v88;
  *&v108 = sub_1000B5C40();
  v48 = swift_allocObject();
  v48[2] = v45;
  v48[3] = v46;
  v48[4] = v91;
  v49 = swift_unknownObjectRetain();
  __chkstk_darwin(v49);
  *(&v87 - 4) = v45;
  *(&v87 - 3) = v46;
  *(&v87 - 2) = sub_10008917C;
  *(&v87 - 1) = v48;
  ObjectType = sub_100072158(sub_100089148, (&v87 - 6), v38, ObjectType, v90, v89, &protocol self-conformance witness table for Error, &v105);
  if (v47)
  {

    v31 = v113;
    goto LABEL_56;
  }

  v93 = 0;

  v50 = ObjectType[2];
  if (!v50)
  {

    v52 = _swiftEmptyArrayStorage;
    v55 = v44;
    v56 = _swiftEmptyArrayStorage[2];
    if (v56)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  v51 = (ObjectType + 4);
  v52 = _swiftEmptyArrayStorage;
  do
  {
    sub_100030C74(v51, &v111, &qword_100106E30, &unk_1000CAB60);
    v108 = v111;
    v109 = v112;
    if (!*(&v112 + 1))
    {
      sub_100036320(&v108, &qword_100106E30, &unk_1000CAB60);
      v105 = 0u;
      v106 = 0u;
      v107 = 0;
LABEL_28:
      sub_100036320(&v105, &qword_100108028, &qword_1000CCE28);
      goto LABEL_29;
    }

    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
      goto LABEL_28;
    }

    if (!*(&v106 + 1))
    {
      goto LABEL_28;
    }

    sub_10004589C(&v105, &v108);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_100033B3C(0, v52[2] + 1, 1, v52);
    }

    v54 = v52[2];
    v53 = v52[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_100033B3C((v53 > 1), v54 + 1, 1, v52);
    }

    v52[2] = v54 + 1;
    sub_10004589C(&v108, &v52[5 * v54 + 4]);
LABEL_29:
    v51 += 32;
    --v50;
  }

  while (v50);

  v55 = v102;
  v56 = v52[2];
  if (!v56)
  {
LABEL_46:

    v57 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

LABEL_40:
  *&v105 = _swiftEmptyArrayStorage;
  sub_1000432C4(0, v56, 0);
  v57 = v105;
  v58 = (v52 + 4);
  do
  {
    sub_100088704(v58, &v108);
    v59 = *(&v109 + 1);
    v60 = v110;
    sub_1000458B4(&v108, *(&v109 + 1));
    v61 = (*(v60 + 8))(v59, v60);
    v63 = v62;
    sub_100035DA8(&v108);
    *&v105 = v57;
    v65 = v57[2];
    v64 = v57[3];
    if (v65 >= v64 >> 1)
    {
      sub_1000432C4((v64 > 1), v65 + 1, 1);
      v57 = v105;
    }

    v57[2] = v65 + 1;
    v66 = &v57[2 * v65];
    v66[4] = v61;
    v66[5] = v63;
    v58 += 40;
    --v56;
  }

  while (v56);

  v55 = v102;
LABEL_47:
  v31 = v113;
  v68 = v100;
  v67 = v101;
  v69 = v104;
  if (v113[3])
  {

    goto LABEL_49;
  }

  v71 = v113[5];
  v72 = v113[6];
  v73 = v113[7];
  v74 = v113[8];
  v75 = v113[9];
  ObjectType = v113[4];
  sub_100088874(ObjectType, v71);
  v92 = sub_100087CEC(v69);

  if (!v57[2])
  {

    v57 = 0;
  }

  v76 = v98;
  v77 = v98[6];
  v10 = v99;
  sub_1000B4E90();
  v78 = sub_1000B4EA0();
  (*(*(v78 - 8) + 56))(v10 + v77, 0, 1, v78);
  *v10 = 0;
  *(v10 + 8) = 1;
  v79 = (v10 + v76[7]);
  *v79 = ObjectType;
  v79[1] = v71;
  v79[2] = v72;
  v79[3] = v73;
  v79[4] = v74;
  v79[5] = v75;
  *(v10 + v76[8]) = v92;
  *(v10 + v76[9]) = v57;
  if (qword_100106A00 != -1)
  {
    goto LABEL_58;
  }

LABEL_53:
  sub_1000886A4(&qword_100108040, type metadata accessor for ICArchiveModel);
  v80 = v93;
  v81 = sub_1000B4AF0();
  v31 = v113;
  v68 = v100;
  v67 = v101;
  if (v80)
  {
    result = sub_100089014(v10, type metadata accessor for ICArchiveModel);
  }

  else
  {
    v83 = v81;
    v84 = v82;
    v85 = v113[11];
    v104 = v113[12];
    ObjectType = swift_getObjectType();
    v86 = v95;
    sub_1000B4D10();
    sub_1000B4F70();
    v93 = 0;
    sub_1000449D4(v83, v84);
    (*(v96 + 8))(v86, v97);
    v70 = sub_100089014(v99, type metadata accessor for ICArchiveModel);
    v55 = v102;
LABEL_49:
    *&v108 = v55;
    __chkstk_darwin(v70);
    *(&v87 - 4) = v31;
    *(&v87 - 3) = v68;
    *(&v87 - 2) = v67;
    swift_getWitnessTable();
    result = sub_1000B5750();
  }

LABEL_56:
  *(v31 + 104) = 0;
  return result;
}

uint64_t sub_10007816C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = sub_1000B50A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  sub_1000B50E0();
  sub_1000B5080();
  (*(v1 + 104))(v5, enum case for ICObjectReferences.Types.folder<A>(_:), v0);
  v8 = sub_1000B5090();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_100078328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v40 = a2;
  v4 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v37 = &v36 - v7;
  v8 = sub_1000B5480();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  if (qword_100106A78 != -1)
  {
    swift_once();
  }

  v16 = sub_1000B54B0();
  sub_100036380(v16, qword_100107F40);
  v39 = a1;
  sub_1000B5040();
  v17 = v43;
  v18 = [v43 description];
  v42 = v15;
  if (v18)
  {
  }

  else
  {
    sub_1000B5620();
    sub_1000B55F0();

    v15 = v42;
  }

  sub_1000B54A0();
  sub_1000B5460();
  v19 = sub_1000B54A0();
  v20 = sub_1000B59E0();
  if (sub_1000B5AB0())
  {
    v21 = v9;
    v22 = v8;
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v24, "Export Object", "", v23, 2u);
    v8 = v22;
    v9 = v21;
    v15 = v42;
  }

  (*(v9 + 16))(v13, v15, v8);
  v25 = sub_1000B54F0();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1000B54E0();
  v29 = v37;
  v30 = v39;
  (*(v5 + 16))(v37, v39, v4);
  v31 = (*(v5 + 88))(v29, v4);
  if (v31 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v5 + 8))(v29, v4);
    v32 = objc_autoreleasePoolPush();
    v33 = "Account to be exported does not exist anymore — skipping";
    v34 = sub_100079868;
LABEL_16:
    sub_10007CAF8(v38, v30, v40, v41, v34, v33);
    objc_autoreleasePoolPop(v32);
    sub_1000795D8(v28, "Export Object");

    return (*(v9 + 8))(v42, v8);
  }

  if (v31 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v5 + 8))(v29, v4);
    v32 = objc_autoreleasePoolPush();
    v33 = "Folder to be exported does not exist anymore — skipping";
    v34 = sub_10007A52C;
    goto LABEL_16;
  }

  if (v31 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v5 + 8))(v29, v4);
    v32 = objc_autoreleasePoolPush();
    v33 = "Note to be exported does not exist anymore — skipping";
    v34 = sub_10007AF38;
    goto LABEL_16;
  }

  if (v31 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v5 + 8))(v29, v4);
    v32 = objc_autoreleasePoolPush();
    v33 = "Object to be exported does not exist anymore — skipping";
    v34 = sub_10007CD68;
    goto LABEL_16;
  }

  result = sub_1000B5F10();
  __break(1u);
  return result;
}

uint64_t sub_100078824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v50 = a1;
  v4 = *(*v3 + 88);
  v5 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1000B50E0();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v7);
  v42 = &v42 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v42 - v13;
  v15 = sub_1000B5480();
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  if (qword_100106A78 != -1)
  {
    swift_once();
  }

  v22 = sub_1000B54B0();
  sub_100036380(v22, qword_100107F40);
  v49 = v7;
  sub_1000B5040();
  swift_getAssociatedConformanceWitness();
  sub_1000B5EE0();
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_1000B55F0();

  sub_1000B54A0();
  sub_1000B5460();
  v23 = sub_1000B54A0();
  v24 = sub_1000B59E0();
  if (sub_1000B5AB0())
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, v24, v26, "Export Object", "", v25, 2u);
  }

  v28 = v47;
  v27 = v48;
  (*(v47 + 16))(v19, v21, v48);
  v29 = sub_1000B54F0();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_1000B54E0();
  v34 = v42;
  v33 = v43;
  v36 = v49;
  v35 = v50;
  (*(v43 + 16))(v42, v50, v49);
  v37 = (*(v33 + 88))(v34, v36);
  if (v37 == enum case for ICObjectReferences.account<A>(_:))
  {
    (*(v33 + 8))(v34, v36);
    v38 = objc_autoreleasePoolPush();
    v39 = "Account to be exported does not exist anymore — skipping";
    v40 = sub_100079D94;
LABEL_13:
    sub_10007A27C(v44, v35, v45, v46, &v51, v40, v39);
    objc_autoreleasePoolPop(v38);
    sub_1000795D8(v32, "Export Object");

    return (*(v28 + 8))(v21, v27);
  }

  if (v37 == enum case for ICObjectReferences.folder<A>(_:))
  {
    (*(v33 + 8))(v34, v49);
    v38 = objc_autoreleasePoolPush();
    v39 = "Folder to be exported does not exist anymore — skipping";
    v40 = sub_10007AA54;
    goto LABEL_13;
  }

  if (v37 == enum case for ICObjectReferences.note<A>(_:))
  {
    (*(v33 + 8))(v34, v49);
    v38 = objc_autoreleasePoolPush();
    v39 = "Note to be exported does not exist anymore — skipping";
    v40 = sub_10007BDDC;
    goto LABEL_13;
  }

  if (v37 == enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v33 + 8))(v34, v49);
    v38 = objc_autoreleasePoolPush();
    v39 = "Object to be exported does not exist anymore — skipping";
    v40 = sub_10007EF00;
    goto LABEL_13;
  }

  result = sub_1000B5F10();
  __break(1u);
  return result;
}

uint64_t sub_100078DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v88 = a3;
  v71 = a6;
  v10 = sub_1000B4DB0();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v77 = &v70 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v70 - v20;
  __chkstk_darwin(v19);
  v24 = &v70 - v23;
  v84 = a5;
  v85 = a1;
  v78 = a4;
  v86 = a2;
  if (a5)
  {
    v72 = v22;
    v25 = sub_1000B55F0();
    v26 = [v25 ic_sanitizedFilenameString];

    sub_1000B5620();
    sub_1000B4D10();

    v27 = sub_1000B55F0();
    v28 = [v27 ic_sanitizedFilenameString];

    sub_1000B5620();
    sub_1000B4D20();

    v29 = v72;
    v30 = *(v72 + 8);
    v30(v21, v10);
    v31 = *(v83 + 88);
    v32 = *(v83 + 96);
    swift_getObjectType();
    v82 = v31;
    v83 = v32;
    v33 = v87;
    sub_1000B4F90();
    v34 = v33;
    if (!v33)
    {
      return (*(v29 + 32))(v71, v24, v10);
    }

    v30(v24, v10);
  }

  else
  {
    v81 = v10;
    v29 = v22;
    v35 = sub_1000B55F0();
    v36 = [v35 ic_sanitizedFilenameString];

    sub_1000B5620();
    sub_1000B4D10();

    v37 = *(v83 + 88);
    v38 = *(v83 + 96);
    swift_getObjectType();
    v82 = v37;
    v83 = v38;
    v39 = v87;
    sub_1000B4F90();
    v34 = v39;
    if (!v39)
    {
      return (*(v29 + 32))(v71, v18, v81);
    }

    v30 = *(v29 + 8);
    v10 = v81;
    v30(v18, v81);
  }

  v93 = v34;
  swift_errorRetain();
  v40 = sub_100030480(&qword_100106EB8, &qword_1000CAD80);
  v79 = sub_1000362AC(0, &qword_100106F08, NSError_ptr);
  v80 = v40;
  if (!swift_dynamicCast())
  {
  }

  v41 = v92;
  if ([v92 code] != 516)
  {
  }

  v87 = 0;
  v70 = v21;
  v81 = v10;

  v75 = v41;
  v76 = ICAttachmentNameMaxLength;
  v72 = v29;
  v74 = v29 + 8;
  for (i = 2; ; ++i)
  {
    v89 = i;
    v90 = 32;
    v91 = 0xE100000000000000;
    v94._countAndFlagsBits = sub_1000B5EE0();
    sub_1000B56E0(v94);

    v43 = v90;
    v44 = v91;
    v45 = sub_1000B55F0();
    v46 = [v45 ic_sanitizedFilenameString];

    v47 = sub_1000B5620();
    v49 = v48;

    v50 = sub_1000B56B0();
    v52 = __OFSUB__(v76, v50);
    result = v76 - v50;
    if (v52)
    {
      break;
    }

    sub_1000888C8(result, v47, v49, v51);

    v54 = sub_1000B5680();
    v56 = v55;

    if (v84)
    {
      v90 = v54;
      v91 = v56;

      v95._countAndFlagsBits = v43;
      v95._object = v44;
      sub_1000B56E0(v95);

      v57 = v70;
      sub_1000B4D10();

      v58 = sub_1000B55F0();
      v59 = [v58 ic_sanitizedFilenameString];

      sub_1000B5620();
      v60 = v77;
      sub_1000B4D20();

      v61 = v81;
      v30(v57, v81);
      swift_getObjectType();
      v62 = v87;
      sub_1000B4F90();
      v63 = v62;
      if (!v62)
      {

        (*(v72 + 32))(v71, v60, v61);
      }

      v30(v60, v61);
    }

    else
    {
      v90 = v54;
      v91 = v56;

      v96._countAndFlagsBits = v43;
      v96._object = v44;
      sub_1000B56E0(v96);

      v64 = v73;
      sub_1000B4D10();

      swift_getObjectType();
      v65 = v87;
      sub_1000B4F90();
      v63 = v65;
      if (!v65)
      {
        v69 = v81;

        (*(v72 + 32))(v71, v64, v69);
      }

      v30(v64, v81);
    }

    v66 = v75;
    v90 = v63;
    swift_errorRetain();
    if (!swift_dynamicCast() || (v67 = v89, v68 = [v89 code], v67, v68 != 516))
    {
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v87 = 0;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000795D8(uint64_t a1, const char *a2)
{
  v20 = a2;
  v2 = sub_1000B54C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000B5480();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100106A78 != -1)
  {
    swift_once();
  }

  v12 = sub_1000B54B0();
  sub_100036380(v12, qword_100107F40);
  v13 = sub_1000B54A0();
  sub_1000B54D0();
  v14 = sub_1000B59D0();
  if (sub_1000B5AB0())
  {

    sub_1000B5500();

    if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1000B5470();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, v20, v15, v16, 2u);
  }

  return (*(v8 + 8))(v11, v7);
}

void sub_100079868(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v58 = a3;
  v56 = a2;
  v7 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = sub_1000B4DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  sub_1000B58F0();
  if (!v4)
  {
    v57 = a4;
    v50 = v16;
    v51 = v7;
    v52 = v12;
    v53 = v10;
    v59 = v18;
    v54 = 0;
    v19 = a1[3];
    v20 = a1[4];
    sub_1000458B4(a1, v19);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = a1;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v25 = [objc_opt_self() mainBundle];
      v26 = sub_1000B55F0();
      v27 = [v25 localizedStringForKey:v26 value:0 table:0];

      v28 = sub_1000B5620();
      v24 = v29;

      v21 = v28;
    }

    v31 = v53;
    v30 = v54;
    v32 = v62;
    if (*(v62 + 24))
    {
      v33 = 0;
    }

    else
    {
      v33 = 0x746E756F636361;
    }

    if (*(v62 + 24))
    {
      v34 = 0;
    }

    else
    {
      v34 = 0xE700000000000000;
    }

    sub_100078DF8(v21, v24, v58, v33, v34, v59);
    if (v30)
    {
    }

    else
    {

      if (*(v32 + 25) != 1)
      {
        v42 = *(v32 + 96);
        v54 = *(v32 + 88);
        v58 = v42;
        v43 = v50;
        sub_1000B4D10();
        v44 = v23[3];
        v45 = v23[4];
        sub_1000458B4(v23, v44);
        v46 = *(v32 + 40);
        v60[0] = *(v32 + 24);
        v60[1] = v46;
        v61[0] = *(v32 + 56);
        *(v61 + 13) = *(v32 + 69);
        v47 = (*(v45 + 96))(v60, v44, v45);
        v49 = v48;
        swift_getObjectType();
        sub_1000B4F70();
        (*(v52 + 8))(v43, v11);
        sub_1000449D4(v47, v49);
      }

      v54 = v11;
      v35 = *(v56 + 16);
      v36 = v51;
      if (v35)
      {
        v37 = v55 + 16;
        v58 = *(v55 + 16);
        v38 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v56 = *(v55 + 72);
        v39 = (v55 + 8);
        do
        {
          v40 = v37;
          v58(v31, v38, v36);
          v41 = objc_autoreleasePoolPush();
          sub_100078328(v31, v59, v57);
          objc_autoreleasePoolPop(v41);
          (*v39)(v31, v36);
          v38 += v56;
          --v35;
          v37 = v40;
        }

        while (v35);
      }

      (*(v52 + 8))(v59, v54);
    }
  }
}

void sub_100079D94(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v4;
  v55 = a2;
  v56 = a3;
  v9 = *v6;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  sub_1000B58F0();
  if (!v5)
  {
    v49 = v15;
    v50 = a4;
    v53 = 0;
    v54 = v17;
    v51 = v11;
    v52 = v10;
    v18 = a1[3];
    v19 = a1[4];
    sub_1000458B4(a1, v18);
    v20 = (*(v19 + 16))(v18, v19);
    v22 = a1;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v24 = [objc_opt_self() mainBundle];
      v25 = sub_1000B55F0();
      v26 = [v24 localizedStringForKey:v25 value:0 table:0];

      v27 = sub_1000B5620();
      v23 = v28;

      v20 = v27;
    }

    v29 = v6;
    if (*(v6 + 24))
    {
      v30 = 0;
    }

    else
    {
      v30 = 0x746E756F636361;
    }

    if (*(v6 + 24))
    {
      v31 = 0;
    }

    else
    {
      v31 = 0xE700000000000000;
    }

    v32 = v53;
    v33 = v54;
    sub_100078DF8(v20, v23, v56, v30, v31, v54);
    if (v32)
    {
    }

    else
    {
      v34 = v9;

      if (*(v6 + 25) == 1)
      {
        v36 = v50;
        v37 = v55;
      }

      else
      {
        v41 = v6[11];
        v56 = v29[12];
        v42 = v49;
        sub_1000B4D10();
        v43 = v22[3];
        v44 = v22[4];
        sub_1000458B4(v22, v43);
        v45 = *(v29 + 5);
        v57[0] = *(v29 + 3);
        v57[1] = v45;
        v58[0] = *(v29 + 7);
        *(v58 + 13) = *(v29 + 69);
        v46 = (*(v44 + 96))(v57, v43, v44);
        v48 = v47;
        swift_getObjectType();
        sub_1000B4F70();
        v36 = v50;
        v34 = v9;
        v37 = v55;
        (*(v51 + 8))(v42, v52);
        v35 = sub_1000449D4(v46, v48);
        v33 = v54;
      }

      v59 = v37;
      __chkstk_darwin(v35);
      *(&v49 - 4) = v29;
      *(&v49 - 3) = v33;
      *(&v49 - 2) = v36;
      v40 = v34 + 80;
      v39 = *(v34 + 80);
      v38 = *(v40 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1000B50E0();
      sub_1000B5810();
      swift_getWitnessTable();
      sub_1000B5750();
      (*(v51 + 8))(v33, v52);
    }
  }
}

void sub_10007A27C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t), const char *a7)
{
  v26 = a5;
  v12 = a1[2];
  v13 = *(*a1 + 80);
  v14 = *(*a1 + 88);
  sub_1000B5030();
  if (v7)
  {
    *v26 = v7;
    return;
  }

  if (v21)
  {
    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    if (swift_dynamicCast())
    {
      if (*(&v23 + 1))
      {
        sub_10004589C(&v22, v25);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        sub_1000B50E0();
        v15 = sub_1000B50C0();
        a6(v25, v15, a3, a4);
        sub_100035DA8(v25);

        return;
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }
  }

  else
  {
    sub_100036320(v20, &qword_100106E30, &unk_1000CAB60);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
  }

  sub_100036320(&v22, &qword_100108028, &qword_1000CCE28);
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v16 = sub_1000B5530();
  sub_100036380(v16, qword_100107F28);
  v17 = sub_1000B5520();
  v18 = sub_1000B5930();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, a7, v19, 2u);
  }
}

void sub_10007A52C(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v58 = a3;
  v56 = a2;
  v7 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = sub_1000B4DB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  sub_1000B58F0();
  if (!v4)
  {
    v57 = a4;
    v50 = v16;
    v51 = v7;
    v52 = v12;
    v53 = v10;
    v59 = v18;
    v54 = 0;
    v19 = a1[3];
    v20 = a1[4];
    sub_1000458B4(a1, v19);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = a1;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v25 = [objc_opt_self() mainBundle];
      v26 = sub_1000B55F0();
      v27 = [v25 localizedStringForKey:v26 value:0 table:0];

      v28 = sub_1000B5620();
      v24 = v29;

      v21 = v28;
    }

    v31 = v53;
    v30 = v54;
    v32 = v62;
    if (*(v62 + 24))
    {
      v33 = 0;
    }

    else
    {
      v33 = 0x7265646C6F66;
    }

    if (*(v62 + 24))
    {
      v34 = 0;
    }

    else
    {
      v34 = 0xE600000000000000;
    }

    sub_100078DF8(v21, v24, v58, v33, v34, v59);
    if (v30)
    {
    }

    else
    {

      if (*(v32 + 25) != 1)
      {
        v42 = *(v32 + 96);
        v54 = *(v32 + 88);
        v58 = v42;
        v43 = v50;
        sub_1000B4D10();
        v44 = v23[3];
        v45 = v23[4];
        sub_1000458B4(v23, v44);
        v46 = *(v32 + 40);
        v60[0] = *(v32 + 24);
        v60[1] = v46;
        v61[0] = *(v32 + 56);
        *(v61 + 13) = *(v32 + 69);
        v47 = (*(v45 + 96))(v60, v44, v45);
        v49 = v48;
        swift_getObjectType();
        sub_1000B4F70();
        (*(v52 + 8))(v43, v11);
        sub_1000449D4(v47, v49);
      }

      v54 = v11;
      v35 = *(v56 + 16);
      v36 = v51;
      if (v35)
      {
        v37 = v55 + 16;
        v58 = *(v55 + 16);
        v38 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v56 = *(v55 + 72);
        v39 = (v55 + 8);
        do
        {
          v40 = v37;
          v58(v31, v38, v36);
          v41 = objc_autoreleasePoolPush();
          sub_100078328(v31, v59, v57);
          objc_autoreleasePoolPop(v41);
          (*v39)(v31, v36);
          v38 += v56;
          --v35;
          v37 = v40;
        }

        while (v35);
      }

      (*(v52 + 8))(v59, v54);
    }
  }
}

void sub_10007AA54(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = v4;
  v55 = a2;
  v56 = a3;
  v9 = *v6;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  sub_1000B58F0();
  if (!v5)
  {
    v49 = v15;
    v50 = a4;
    v53 = 0;
    v54 = v17;
    v51 = v11;
    v52 = v10;
    v18 = a1[3];
    v19 = a1[4];
    sub_1000458B4(a1, v18);
    v20 = (*(v19 + 16))(v18, v19);
    v22 = a1;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v24 = [objc_opt_self() mainBundle];
      v25 = sub_1000B55F0();
      v26 = [v24 localizedStringForKey:v25 value:0 table:0];

      v27 = sub_1000B5620();
      v23 = v28;

      v20 = v27;
    }

    v29 = v6;
    if (*(v6 + 24))
    {
      v30 = 0;
    }

    else
    {
      v30 = 0x7265646C6F66;
    }

    if (*(v6 + 24))
    {
      v31 = 0;
    }

    else
    {
      v31 = 0xE600000000000000;
    }

    v32 = v53;
    v33 = v54;
    sub_100078DF8(v20, v23, v56, v30, v31, v54);
    if (v32)
    {
    }

    else
    {
      v34 = v9;

      if (*(v6 + 25) == 1)
      {
        v36 = v50;
        v37 = v55;
      }

      else
      {
        v41 = v6[11];
        v56 = v29[12];
        v42 = v49;
        sub_1000B4D10();
        v43 = v22[3];
        v44 = v22[4];
        sub_1000458B4(v22, v43);
        v45 = *(v29 + 5);
        v57[0] = *(v29 + 3);
        v57[1] = v45;
        v58[0] = *(v29 + 7);
        *(v58 + 13) = *(v29 + 69);
        v46 = (*(v44 + 96))(v57, v43, v44);
        v48 = v47;
        swift_getObjectType();
        sub_1000B4F70();
        v36 = v50;
        v34 = v9;
        v37 = v55;
        (*(v51 + 8))(v42, v52);
        v35 = sub_1000449D4(v46, v48);
        v33 = v54;
      }

      v59 = v37;
      __chkstk_darwin(v35);
      *(&v49 - 4) = v29;
      *(&v49 - 3) = v33;
      *(&v49 - 2) = v36;
      v40 = v34 + 80;
      v39 = *(v34 + 80);
      v38 = *(v40 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1000B50E0();
      sub_1000B5810();
      swift_getWitnessTable();
      sub_1000B5750();
      (*(v51 + 8))(v33, v52);
    }
  }
}

void sub_10007AF38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v137 = a3;
  v138 = a2;
  v140 = a1;
  v135 = type metadata accessor for NoteMetadata(0);
  v5 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v136 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1000B4DB0();
  v139 = *(v142 - 8);
  v7 = *(v139 + 64);
  v8 = __chkstk_darwin(v142);
  v134 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v125 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v125 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v125 - v17;
  __chkstk_darwin(v16);
  v20 = &v125 - v19;
  v21 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v125 - v27;
  v29 = v147;
  sub_1000B58F0();
  if (v29)
  {
    return;
  }

  v125 = v15;
  v129 = v18;
  v133 = v20;
  v126 = v12;
  v127 = v22;
  v128 = v26;
  v147 = v21;
  v141 = 0;
  v31 = v143;
  v132 = *(v143 + 25);
  v32 = v142;
  v33 = v140;
  if (v132 == 1)
  {
    sub_100088704(v140, v148);
    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    sub_1000362AC(0, &qword_100106D78, ICNote_ptr);
    v30 = swift_dynamicCast();
    if (v30)
    {
      v34 = v151;
      v35 = [v151 isPasswordProtectedAndLocked];

      if (v35)
      {
        return;
      }
    }
  }

  v36 = v31;
  v130 = a4;
  __chkstk_darwin(v30);
  v37 = &v125;
  *(&v125 - 2) = sub_1000B51C0();
  *(&v125 - 1) = sub_1000886A4(&qword_100108018, &type metadata accessor for ICModernObjectProvider);
  swift_getKeyPath();
  v38 = v138;
  v39 = *(v138 + 16);
  v131 = v39;
  if (v39)
  {
    v148[0] = _swiftEmptyArrayStorage;
    sub_100043324(0, v39, 0);
    v40 = v148[0];
    v41 = *(v127 + 16);
    v37 = (v38 + ((*(v127 + 80) + 32) & ~*(v127 + 80)));
    v144 = *(v127 + 72);
    v145 = v41;
    isa = (v127 + 16);
    v42 = (v127 + 8);
    do
    {
      v43 = v147;
      v145(v28, v37, v147);
      swift_getAtKeyPath();
      v44 = v151;
      (*v42)(v28, v43);
      v148[0] = v40;
      v46 = v40[2];
      v45 = v40[3];
      if (v46 >= v45 >> 1)
      {
        sub_100043324((v45 > 1), v46 + 1, 1);
        v40 = v148[0];
      }

      v40[2] = v46 + 1;
      v40[v46 + 4] = v44;
      v37 = (v37 + v144);
      --v39;
    }

    while (v39);

    v32 = v142;
    v49 = v143;
    v50 = v139;
    v33 = v140;
    v51 = v40[2];
    if (v51)
    {
LABEL_11:
      v52 = 0;
      v53 = v40 + 4;
      while (1)
      {
        v54 = *v53++;
        v55 = __OFADD__(v52, v54);
        v52 += v54;
        if (v55)
        {
          break;
        }

        if (!--v51)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
    v50 = v139;
    v49 = v36;
    v51 = _swiftEmptyArrayStorage[2];
    if (v51)
    {
      goto LABEL_11;
    }
  }

  v52 = 0;
LABEL_17:

  if (__OFADD__(v52, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  v56.super.isa = sub_1000B58E0(v52 + 1, 1).super.isa;
  if (v132 == 1)
  {
    if (*(v49 + 24))
    {
      v57 = v33[3];
      v58 = v33[4];
      sub_1000458B4(v33, v57);
      v59 = (*(v58 + 8))(v57, v58);
      v60 = v125;
      v61 = v141;
      sub_100078DF8(v59, v62, v137, 0, 0xE000000000000000, v125);
      v141 = v61;
      if (v61)
      {

LABEL_33:

        return;
      }

      isa = v56.super.isa;

      v76 = v133;
      (*(v50 + 32))(v133, v60, v32);
      v70 = 0xE400000000000000;
      v68 = 1702129518;
      goto LABEL_36;
    }

    v70 = 0xE400000000000000;
    v68 = 1702129518;
    v78 = v141;
    v79 = v137;
    v76 = v133;
    v77 = v129;
    goto LABEL_32;
  }

  v63 = v33[3];
  v64 = v33[4];
  sub_1000458B4(v33, v63);
  (*(v64 + 16))(v63, v64);
  if (v65)
  {
    v66 = sub_1000B55F0();

    v67 = [v66 ic_sanitizedFilenameString];

    v68 = sub_1000B5620();
    v70 = v69;

    v71 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v71 = v68 & 0xFFFFFFFFFFFFLL;
    }

    if (v71)
    {
      goto LABEL_28;
    }
  }

  v72 = [objc_opt_self() mainBundle];
  v73 = sub_1000B55F0();
  v74 = [v72 localizedStringForKey:v73 value:0 table:0];

  v68 = sub_1000B5620();
  v70 = v75;

LABEL_28:
  v76 = v133;
  v77 = v129;
  if (*(v49 + 24))
  {
    isa = v56.super.isa;
    (*(v50 + 16))(v133, v137, v32);
LABEL_36:
    v148[0] = v68;
    v148[1] = v70;
    v152._countAndFlagsBits = 6581550;
    v152._object = 0xE300000000000000;
    sub_1000B56E0(v152);
    goto LABEL_37;
  }

  v78 = v141;
  v79 = v137;
LABEL_32:
  sub_100078DF8(v68, v70, v79, 1702129518, 0xE400000000000000, v77);
  v141 = v78;
  if (v78)
  {
    goto LABEL_33;
  }

  isa = v56.super.isa;

  (*(v50 + 32))(v76, v77, v32);
LABEL_37:
  v80 = v126;
  sub_1000B4D10();

  v82 = *(v49 + 88);
  v81 = *(v49 + 96);
  v83 = v33[3];
  v84 = v33[4];
  sub_1000458B4(v33, v83);
  v85 = *(v49 + 40);
  v149[0] = *(v49 + 24);
  v149[1] = v85;
  *v150 = *(v49 + 56);
  *&v150[13] = *(v49 + 69);
  v86 = v141;
  v87 = (*(v84 + 96))(v149, v83, v84);
  if (v86)
  {
    v89 = *(v139 + 8);
    v90 = v142;
    v89(v80, v142);

    v89(v76, v90);
    return;
  }

  v91 = v87;
  v92 = v88;
  ObjectType = swift_getObjectType();
  sub_1000B4F70();
  v141 = 0;
  sub_1000449D4(v91, v92);
  v94 = v142;
  if (v132 != 1)
  {
    v28 = v128;
    goto LABEL_44;
  }

  v145 = ObjectType;
  sub_100088704(v33, v148);
  sub_100030480(&qword_100106CD8, &unk_1000CCE30);
  sub_1000362AC(0, &qword_100106D78, ICNote_ptr);
  v95 = swift_dynamicCast();
  v28 = v128;
  if (!v95)
  {
    goto LABEL_44;
  }

  v33 = v151;
  v96 = v136;
  sub_1000AAF5C(v33, v136);
  sub_1000886A4(&qword_100106FA0, type metadata accessor for NoteMetadata);
  v97 = v141;
  v47 = sub_1000B5390();
  v37 = v97;
  if (v97)
  {

    sub_100089014(v96, type metadata accessor for NoteMetadata);
    v98 = *(v139 + 8);
    v98(v126, v94);
    v98(v133, v94);
    return;
  }

LABEL_55:
  v120 = v47;
  v121 = v48;
  v122 = v134;
  sub_1000B4D10();
  v144 = v121;
  sub_1000B4F70();
  v141 = v37;
  if (v37)
  {

    sub_1000449D4(v120, v144);
    v123 = *(v139 + 8);
    v124 = v142;
    v123(v122, v142);
    sub_100089014(v136, type metadata accessor for NoteMetadata);
    v123(v126, v124);
    v123(v133, v124);
    return;
  }

  sub_1000449D4(v120, v144);

  (*(v139 + 8))(v122, v142);
  sub_100089014(v136, type metadata accessor for NoteMetadata);
LABEL_44:
  v99 = v149[0];
  v100 = isa;
  v101 = [(objc_class *)isa completedUnitCount];
  v102 = v147;
  v103 = v138;
  if (__OFADD__(v101, 1))
  {
LABEL_59:
    __break(1u);
    return;
  }

  [(objc_class *)v100 setCompletedUnitCount:v101 + 1];
  v104 = v100;
  if (v131)
  {
    v105 = v127 + 16;
    v106 = *(v127 + 16);
    v107 = v103 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
    v108 = *(v127 + 72);
    v109 = (v127 + 8);
    do
    {
      v111 = v105;
      v106(v28, v107, v102);
      v112 = objc_autoreleasePoolPush();
      v113 = v28;
      v114 = v112;
      if (v99)
      {
        v110 = v141;
        sub_100081320(v113, v133, v104);
        if (v110)
        {
LABEL_51:
          v115 = v147;
          objc_autoreleasePoolPop(v114);

          (*v109)(v128, v115);
          v116 = *(v139 + 8);
          v117 = v142;
          v116(v126, v142);
          v116(v133, v117);
          return;
        }
      }

      else
      {
        v110 = v141;
        sub_100078328(v113, v133, v104);
        if (v110)
        {
          goto LABEL_51;
        }
      }

      v141 = v110;
      v102 = v147;
      objc_autoreleasePoolPop(v114);
      v28 = v128;
      (*v109)(v128, v102);
      v107 += v108;
      --v131;
      v105 = v111;
    }

    while (v131);
  }

  sub_100082738([v130 completedUnitCount]);

  v118 = *(v139 + 8);
  v119 = v142;
  v118(v126, v142);
  v118(v133, v119);
}

void sub_10007BDDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v129 = a3;
  v130 = a2;
  isa = *v5;
  v132 = a1;
  v128 = type metadata accessor for NoteMetadata(0);
  v7 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v9 = &v117[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000B4DB0();
  v133 = *(v10 - 8);
  v11 = *(v133 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v117[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v117[-v16];
  v18 = __chkstk_darwin(v15);
  v20 = &v117[-v19];
  v21 = __chkstk_darwin(v18);
  v23 = &v117[-v22];
  __chkstk_darwin(v21);
  v25 = &v117[-v24];
  v26 = v134;
  sub_1000B58F0();
  if (!v26)
  {
    v121 = v23;
    v123 = v20;
    v119 = v14;
    v120 = v9;
    v126 = a4;
    v125 = v25;
    v134 = 0;
    v127 = v5;
    v28 = *(v5 + 25);
    v29 = isa;
    v30 = v132;
    v31 = v17;
    if (v28 != 1 || (sub_100088704(v132, v135), sub_100030480(&qword_100106CD8, &unk_1000CCE30), sub_1000362AC(0, &qword_100106D78, ICNote_ptr), v27 = swift_dynamicCast(), (v27 & 1) == 0) || (v32 = v138, v33 = [v138 isPasswordProtectedAndLocked], v32, (v33 & 1) == 0))
    {
      v34 = v30;
      v122 = v31;
      v124 = v10;
      v135[0] = v130;
      __chkstk_darwin(v27);
      v35 = *(v29 + 10);
      v36 = *(v29 + 11);
      *&v117[-16] = v35;
      *&v117[-8] = v36;
      KeyPath = swift_getKeyPath();
      v38 = __chkstk_darwin(KeyPath);
      v39 = &v117[-48];
      *&v117[-32] = v35;
      *&v117[-24] = v36;
      *&v117[-16] = v38;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1000B50E0();
      v40 = sub_1000B5810();
      WitnessTable = swift_getWitnessTable();
      v42 = v134;
      v44 = sub_100072158(sub_1000889F4, &v117[-48], v40, &type metadata for Int, &type metadata for Never, WitnessTable, &protocol witness table for Never, v43);
      v134 = v42;

      v46 = v44;
      v47 = *(v44 + 16);
      if (v47)
      {
        v48 = 0;
        v49 = (v44 + 32);
        v50 = v127;
        while (1)
        {
          v51 = *v49++;
          v52 = __OFADD__(v48, v51);
          v48 = (v48 + v51);
          if (v52)
          {
            break;
          }

          if (!--v47)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v48 = 0;
      v50 = v127;
LABEL_11:

      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v53 = 1702129518;
      isa = sub_1000B58E0(v48 + 1, 1).super.isa;
      v118 = v28;
      if (v28 == 1)
      {
        if (v50[24] == 1)
        {
          v54 = v34[3];
          v55 = v34[4];
          sub_1000458B4(v34, v54);
          v56 = (*(v55 + 8))(v54, v55);
          v57 = v121;
          v58 = v134;
          sub_100078DF8(v56, v59, v129, 0, 0xE000000000000000, v121);
          v134 = v58;
          if (v58)
          {

LABEL_27:

            return;
          }

          v123 = v40;
          v77 = v34;

          v79 = v57;
          v74 = v125;
          (*(v133 + 32))(v125, v79, v124);
          v67 = 0xE400000000000000;
          goto LABEL_30;
        }

        v67 = 0xE400000000000000;
        v65 = 1702129518;
        v73 = v133;
        v78 = v134;
        v74 = v125;
        v75 = v129;
        v76 = v123;
        goto LABEL_26;
      }

      v60 = v34[3];
      v61 = v34[4];
      sub_1000458B4(v34, v60);
      (*(v61 + 16))(v60, v61);
      if (v62)
      {
        v63 = sub_1000B55F0();

        v64 = [v63 ic_sanitizedFilenameString];

        v65 = sub_1000B5620();
        v67 = v66;

        v68 = HIBYTE(v67) & 0xF;
        if ((v67 & 0x2000000000000000) == 0)
        {
          v68 = v65 & 0xFFFFFFFFFFFFLL;
        }

        if (v68)
        {
          goto LABEL_22;
        }
      }

      v69 = [objc_opt_self() mainBundle];
      v70 = sub_1000B55F0();
      v71 = [v69 localizedStringForKey:v70 value:0 table:0];

      v65 = sub_1000B5620();
      v67 = v72;

LABEL_22:
      v73 = v133;
      v74 = v125;
      v75 = v129;
      v76 = v123;
      if (v50[24])
      {
        v123 = v40;
        v77 = v34;
        (*(v133 + 16))(v125, v129, v124);
        v53 = v65;
LABEL_30:
        v135[0] = v53;
        v135[1] = v67;
        v139._countAndFlagsBits = 6581550;
        v139._object = 0xE300000000000000;
        sub_1000B56E0(v139);
        goto LABEL_31;
      }

      v78 = v134;
LABEL_26:
      sub_100078DF8(v65, v67, v75, 1702129518, 0xE400000000000000, v76);
      v134 = v78;
      if (v78)
      {
        goto LABEL_27;
      }

      v123 = v40;
      v77 = v34;
      (*(v73 + 32))(v74, v76, v124);

LABEL_31:
      v80 = v122;
      sub_1000B4D10();

      v81 = v127;
      v82 = *(v127 + 88);
      v132 = *(v127 + 96);
      v83 = v74;
      v84 = v77;
      v85 = v77[3];
      v86 = v77[4];
      sub_1000458B4(v77, v85);
      v87 = *(v81 + 40);
      v136[0] = *(v81 + 24);
      v136[1] = v87;
      v137[0] = *(v81 + 56);
      *(v137 + 13) = *(v81 + 69);
      v88 = v134;
      v89 = (*(v86 + 96))(v136, v85, v86);
      if (v88)
      {
        v91 = *(v133 + 8);
        v92 = v124;
        v91(v80, v124);

        v91(v83, v92);
        return;
      }

      v93 = v89;
      v94 = v90;
      v95 = v84;
      ObjectType = swift_getObjectType();
      sub_1000B4F70();
      v134 = 0;
      v28 = v82;
      sub_1000449D4(v93, v94);
      v97 = v133;
      if (v118 != 1)
      {
        v102 = v126;
        v48 = isa;
        goto LABEL_43;
      }

      v129 = ObjectType;
      sub_100088704(v95, v135);
      sub_100030480(&qword_100106CD8, &unk_1000CCE30);
      sub_1000362AC(0, &qword_100106D78, ICNote_ptr);
      v98 = swift_dynamicCast();
      v48 = isa;
      if ((v98 & 1) == 0)
      {
LABEL_42:
        v102 = v126;
LABEL_43:
        v107 = [(objc_class *)v48 completedUnitCount];
        v108 = v48;
        v109 = v130;
        if (!__OFADD__(v107, 1))
        {
          v110 = [(objc_class *)v108 setCompletedUnitCount:v107 + 1];
          v135[0] = v109;
          __chkstk_darwin(v110);
          v111 = v125;
          *&v117[-32] = v127;
          *&v117[-24] = v111;
          *&v117[-16] = v108;
          swift_getWitnessTable();
          v112 = v134;
          sub_1000B5750();
          v134 = v112;
          if (v112)
          {
            v113 = *(v97 + 8);
            v114 = v124;
            v113(v122, v124);

            v113(v111, v114);
          }

          else
          {
            sub_100082850([v102 completedUnitCount]);

            v115 = *(v97 + 8);
            v116 = v124;
            v115(v122, v124);
            v115(v111, v116);
          }

          return;
        }

LABEL_49:
        __break(1u);
        return;
      }

      v50 = v138;
      v34 = v120;
      sub_1000AAF5C(v50, v120);
      sub_1000886A4(&qword_100106FA0, type metadata accessor for NoteMetadata);
      v99 = v134;
      v46 = sub_1000B5390();
      v39 = v99;
      if (v99)
      {

        sub_100089014(v34, type metadata accessor for NoteMetadata);
        v100 = *(v133 + 8);
        v101 = v124;
        v100(v122, v124);
        v100(v125, v101);
        return;
      }

LABEL_39:
      v103 = v46;
      v104 = v45;
      v134 = v28;
      sub_1000B4D10();
      sub_1000B4F70();
      v134 = v39;
      if (v39)
      {
        sub_1000449D4(v103, v104);

        v105 = *(v133 + 8);
        v106 = v124;
        v105(v119, v124);
        sub_100089014(v34, type metadata accessor for NoteMetadata);
        v105(v122, v106);
        v105(v125, v106);
        return;
      }

      sub_1000449D4(v103, v104);

      v97 = v133;
      (*(v133 + 8))(v119, v124);
      sub_100089014(v34, type metadata accessor for NoteMetadata);
      goto LABEL_42;
    }
  }
}

void sub_10007CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), const char *a6)
{
  v11 = *(a1 + 16);
  sub_1000B51C0();
  sub_1000886A4(&qword_100108018, &type metadata accessor for ICModernObjectProvider);
  sub_1000B5030();
  if (!v6)
  {
    if (v17[3])
    {
      sub_100030480(&qword_100106CD8, &unk_1000CCE30);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_10004589C(&v18, v21);
          sub_100030480(&qword_100106D00, &qword_1000CAA70);
          v12 = sub_1000B50C0();
          a5(v21, v12, a3, a4);
          sub_100035DA8(v21);

          return;
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }
    }

    else
    {
      sub_100036320(v17, &qword_100106E30, &unk_1000CAB60);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_100036320(&v18, &qword_100108028, &qword_1000CCE28);
    if (qword_100106A70 != -1)
    {
      swift_once();
    }

    v13 = sub_1000B5530();
    sub_100036380(v13, qword_100107F28);
    v14 = sub_1000B5520();
    v15 = sub_1000B5930();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, a6, v16, 2u);
    }
  }
}

void sub_10007CD68(void *a1, uint64_t a2, void *a3, void *a4)
{
  v336 = a3;
  v328 = a2;
  v334 = a1;
  v5 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v318 = &v308 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v322 = &v308 - v9;
  v329 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v325 = *(v329 - 8);
  v10 = *(v325 + 64);
  v11 = __chkstk_darwin(v329);
  v320 = &v308 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v330 = &v308 - v13;
  v321 = sub_1000B5650();
  v323 = *(v321 - 8);
  v14 = v323[8];
  __chkstk_darwin(v321);
  v319 = &v308 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000B4DB0();
  v17 = *(v16 - 8);
  v331 = v16;
  v332 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v315 = &v308 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v324 = (&v308 - v22);
  v23 = __chkstk_darwin(v21);
  v326 = &v308 - v24;
  v25 = __chkstk_darwin(v23);
  *&v316 = &v308 - v26;
  v27 = __chkstk_darwin(v25);
  v317 = &v308 - v28;
  v29 = __chkstk_darwin(v27);
  v327 = &v308 - v30;
  v31 = __chkstk_darwin(v29);
  v333 = &v308 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v308 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v308 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v308 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v308 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v308 - v46;
  v48 = __chkstk_darwin(v45);
  v50 = &v308 - v49;
  __chkstk_darwin(v48);
  v52 = &v308 - v51;
  v53 = v343;
  sub_1000B58F0();
  if (v53)
  {
    return;
  }

  v313 = v44;
  v314 = v41;
  v309 = v35;
  v310 = v38;
  v311 = v47;
  v312 = v50;
  v343 = 0;
  v335 = a4;
  if (*(v337 + 24) == 1)
  {
    v54 = *(v337 + 25);
    v55 = v334;
    v56 = v52;
    if (v54 == 2)
    {
      sub_100088704(v334, v340);
      sub_100030480(&qword_100106CD8, &unk_1000CCE30);
      sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
      if (swift_dynamicCast())
      {
        v57 = v338;
        v58 = [v338 isTable];

        if (v58)
        {
          return;
        }
      }
    }

    sub_100088704(v55, v340);
    v59 = sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    v60 = sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v61 = v338;
      v62 = [v338 parentAttachment];

      if (v62)
      {

        return;
      }
    }

    v324 = v60;
    v70 = *(v55 + 24);
    v69 = *(v55 + 32);
    sub_1000458B4(v55, v70);
    v327 = (*(v69 + 88))(v70, v69);
    v72 = v71;
    v73 = *(v55 + 24);
    v74 = *(v55 + 32);
    sub_1000458B4(v55, v73);
    v75 = (*(v74 + 80))(v73, v74);
    LODWORD(v333) = v54;
    v326 = v59;
    if (v76 >> 60 != 15)
    {
      if (v72)
      {
        v77 = *(v337 + 88);
        v322 = *(v337 + 96);
        v78 = v75;
        v79 = v76;
        swift_getObjectType();

        sub_1000B4D10();
        v327 = v72;

        v80 = v343;
        sub_1000B4F70();
        if (v80)
        {
          v322 = v79;
          v343 = v78;
          (*(v332 + 8))(v56, v331);
          if (qword_100106A70 != -1)
          {
            goto LABEL_149;
          }

          while (1)
          {
            v81 = sub_1000B5530();
            sub_100036380(v81, qword_100107F28);
            swift_errorRetain();
            v82 = sub_1000B5520();
            v83 = sub_1000B5920();

            v84 = os_log_type_enabled(v82, v83);
            v72 = v327;
            if (v84)
            {
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v340[0] = v86;
              *v85 = 136315138;
              swift_getErrorValue();
              v87 = sub_1000B5F60();
              v89 = sub_100062B20(v87, v88, v340);

              *(v85 + 4) = v89;
              v55 = v334;
              _os_log_impl(&_mh_execute_header, v82, v83, "Cannot export attachment fallback PDF file — skipping {error: %s}", v85, 0xCu);
              sub_100035DA8(v86);
              v72 = v327;

              sub_10004D334(v343, v322);
            }

            else
            {
              sub_10004D334(v343, v322);
            }

            v125 = 0;
            v123 = v335;
            v124 = v329;
LABEL_56:
            v118 = v330;
LABEL_57:
            if (v333 != 1)
            {
              goto LABEL_67;
            }

            sub_100088704(v55, v340);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_67;
            }

            v185 = v338;
            if (([v338 isAudio] & 1) == 0)
            {

LABEL_67:

              goto LABEL_68;
            }

            v343 = v125;
            v186 = [v185 attachmentModel];
            objc_opt_self();
            v187 = swift_dynamicCastObjCClass();
            v188 = v185;
            if (v187)
            {
              break;
            }

LABEL_119:
            v125 = v343;
LABEL_68:
            v343 = v125;
            v204 = [v123 completedUnitCount];
            if (!__OFADD__(v204, 1))
            {
              [v123 setCompletedUnitCount:v204 + 1];
              v205 = *(v328 + 16);
              if (v205)
              {
                v206 = v325 + 16;
                v334 = *(v325 + 16);
                v207 = v328 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
                v333 = *(v325 + 72);
                v208 = (v325 + 8);
                while (1)
                {
                  v209 = v206;
                  (v334)(v118, v207, v124);
                  v210 = v124;
                  v211 = objc_autoreleasePoolPush();
                  v212 = v343;
                  sub_100078328(v118, v336, v123);
                  v343 = v212;
                  if (v212)
                  {
                    break;
                  }

                  objc_autoreleasePoolPop(v211);
                  (*v208)(v118, v210);
                  v207 += v333;
                  --v205;
                  v123 = v335;
                  v124 = v210;
                  v206 = v209;
                  if (!v205)
                  {
                    return;
                  }
                }

                objc_autoreleasePoolPop(v211);
                (*v208)(v118, v210);
              }

              return;
            }

LABEL_148:
            __break(1u);
LABEL_149:
            swift_once();
          }

          v189 = v187;
          v326 = v188;
          v327 = v72;
          v333 = v186;
          v190 = *(v55 + 24);
          v191 = *(v55 + 32);
          sub_1000458B4(v55, v190);
          v192 = (*(v191 + 8))(v190, v191);
          v340[0] = 0x7263736E6172745FLL;
          v340[1] = 0xEF7478742E747069;
          v338 = v192;
          v339 = v193;
          v338 = sub_1000B5720();
          v339 = v194;
          sub_1000B56D0();
          v195 = v336;
          sub_1000B4D10();

          v196 = [v189 audioDocument];
          if (!v196)
          {
            goto LABEL_154;
          }

          v197 = v196;
          v198 = [v196 transcriptAsPlainText];

          sub_1000B5620();
          v199 = v319;
          sub_1000B5640();
          v200 = sub_1000B5630();
          v165 = v201;
          v195 = v323 + 1;
          v324 = v323[1];
          v168 = v324(v199, v321);
          v323 = v195;
          if (v165 >> 60 == 15)
          {
LABEL_100:
            v239 = *(v334 + 24);
            v240 = *(v334 + 32);
            sub_1000458B4(v334, v239);
            v241 = (*(v240 + 8))(v239, v240);
            strcpy(v340, "_summary.txt");
            BYTE5(v340[1]) = 0;
            HIWORD(v340[1]) = -5120;
            v338 = v241;
            v339 = v242;
            v338 = sub_1000B5720();
            v339 = v243;
            sub_1000B56D0();
            v195 = v336;
            sub_1000B4D10();

            v244 = [v189 audioDocument];
            if (!v244)
            {
              goto LABEL_155;
            }

            v245 = v244;

            v246 = [v245 recordingSummaryAsPlainText];

            sub_1000B5620();
            sub_1000B5640();
            v195 = v199;
            v247 = sub_1000B5630();
            v249 = v248;

            v324(v195, v321);
            v55 = v312;
            if (v249 >> 60 == 15)
            {

              v250 = v311;
LABEL_118:
              v262 = v331;
              v263 = *(v332 + 8);
              v263(v250, v331);
              v263(v55, v262);
              v123 = v335;
              goto LABEL_119;
            }

            v251 = v249 >> 62;
            v252 = v311;
            v253 = v333;
            if ((v249 >> 62) > 1)
            {
              if (v251 != 2)
              {
                goto LABEL_115;
              }

              v256 = *(v247 + 16);
              v255 = *(v247 + 24);
              v221 = __OFSUB__(v255, v256);
              v254 = v255 - v256;
              if (!v221)
              {
LABEL_112:
                if (v254 >= 1)
                {
                  v257 = *(v337 + 88);
                  v258 = *(v337 + 96);
                  swift_getObjectType();
                  v259 = v343;
                  sub_1000B4F70();
                  v343 = v259;
                  if (v259)
                  {

                    sub_10004D334(v247, v249);
                    v260 = v331;
                    v261 = *(v332 + 8);
                    v261(v252, v331);
                    v261(v55, v260);
                    return;
                  }

                  goto LABEL_117;
                }

LABEL_115:

LABEL_117:
                sub_10004D334(v247, v249);
                v250 = v252;
                goto LABEL_118;
              }

              __break(1u);
            }

            else if (!v251)
            {
              v254 = BYTE6(v249);
              goto LABEL_112;
            }

            LODWORD(v254) = HIDWORD(v247) - v247;
            if (__OFSUB__(HIDWORD(v247), v247))
            {
              goto LABEL_153;
            }

            v254 = v254;
            goto LABEL_112;
          }

          v202 = v165 >> 62;
          if ((v165 >> 62) > 1)
          {
            if (v202 != 2)
            {
LABEL_99:
              sub_10004D334(v200, v165);
              goto LABEL_100;
            }

            v220 = *(v200 + 16);
            v219 = *(v200 + 24);
            v221 = __OFSUB__(v219, v220);
            v203 = v219 - v220;
            if (v221)
            {
              __break(1u);
              goto LABEL_85;
            }
          }

          else if (v202)
          {
            LODWORD(v203) = HIDWORD(v200) - v200;
            if (__OFSUB__(HIDWORD(v200), v200))
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
              goto LABEL_156;
            }

            v203 = v203;
          }

          else
          {
            v203 = BYTE6(v165);
          }

          if (v203 >= 1)
          {
            v235 = *(v337 + 88);
            v236 = *(v337 + 96);
            swift_getObjectType();
            v237 = v312;
            v238 = v343;
            sub_1000B4F70();
            v343 = v238;
            if (v238)
            {
              (*(v332 + 8))(v237, v331);

              sub_10004D334(v200, v165);

              return;
            }

            v124 = v329;
            v118 = v330;
            v199 = v319;
          }

          goto LABEL_99;
        }

        (*(v332 + 8))(v56, v331);
        v143 = v78;
        v144 = v79;
        goto LABEL_44;
      }

      sub_10004D334(v75, v76);
    }

    v106 = *(v55 + 24);
    v107 = *(v55 + 32);
    sub_1000458B4(v55, v106);
    v108 = (*(v107 + 72))(v106, v107);
    if (v109 >> 60 == 15)
    {
      if (v72)
      {
        v110 = *(v55 + 24);
        v111 = *(v55 + 32);
        sub_1000458B4(v55, v110);
        v112 = *(v111 + 48);

        v113 = v322;
        v112(v110, v111);
        v115 = v331;
        v114 = v332;
        v116 = (*(v332 + 48))(v113, 1, v331);
        v117 = v337;
        v118 = v330;
        if (v116 == 1)
        {
          sub_100036320(v113, &qword_100106F88, &qword_1000CAE20);
          v119 = *(v55 + 24);
          v120 = *(v55 + 32);
          sub_1000458B4(v55, v119);
          v121 = (*(v120 + 56))(v119, v120);
          if (v122 >> 60 == 15)
          {

            v123 = v335;
            v124 = v329;
            v125 = v343;
            goto LABEL_57;
          }

          v170 = v121;
          v171 = v122;
          v172 = v117;
          v173 = *(v117 + 88);
          v322 = *(v172 + 96);
          swift_getObjectType();
          v174 = v309;
          sub_1000B4D10();

          v175 = v343;
          sub_1000B4F70();
          v125 = v175;
          if (!v175)
          {
            (*(v332 + 8))(v174, v331);
            sub_10004D334(v170, v171);
            v55 = v334;
            v123 = v335;
            v124 = v329;
            goto LABEL_57;
          }

          (*(v332 + 8))(v174, v331);
          sub_10004D334(v170, v171);
          v55 = v334;
        }

        else
        {
          (*(v114 + 32))(v314, v113, v115);
          v145 = *(v117 + 96);
          v320 = *(v117 + 88);
          v322 = v145;
          swift_getObjectType();
          v146 = v310;
          sub_1000B4D10();

          v147 = v343;
          sub_1000B4FE0();
          v125 = v147;
          if (!v147)
          {
            v213 = *(v332 + 8);
            v213(v146, v115);
            v213(v314, v115);
            v123 = v335;
            v124 = v329;
            goto LABEL_57;
          }

          v148 = *(v332 + 8);
          v148(v146, v115);
          v148(v314, v115);
        }

        v343 = 0;
        if (qword_100106A70 != -1)
        {
          swift_once();
        }

        v176 = sub_1000B5530();
        sub_100036380(v176, qword_100107F28);
        swift_errorRetain();
        v177 = sub_1000B5520();
        v178 = sub_1000B5920();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          v180 = v72;
          v181 = swift_slowAlloc();
          v340[0] = v181;
          *v179 = 136315138;
          swift_getErrorValue();
          v182 = sub_1000B5F60();
          v184 = sub_100062B20(v182, v183, v340);

          *(v179 + 4) = v184;
          v55 = v334;
          _os_log_impl(&_mh_execute_header, v177, v178, "Cannot export attachment media file — skipping {error: %s}", v179, 0xCu);
          sub_100035DA8(v181);
          v72 = v180;
        }

        else
        {
        }
      }
    }

    else
    {
      if (v72)
      {
        v126 = *(v337 + 88);
        v322 = *(v337 + 96);
        v127 = v109;
        v128 = v108;
        swift_getObjectType();

        v129 = v313;
        sub_1000B4D10();
        v327 = v72;
        v130 = v129;
        v131 = v128;
        v132 = v127;

        v133 = v343;
        sub_1000B4F70();
        if (v133)
        {
          (*(v332 + 8))(v130, v331);
          if (qword_100106A70 != -1)
          {
            swift_once();
          }

          v134 = sub_1000B5530();
          sub_100036380(v134, qword_100107F28);
          swift_errorRetain();
          v135 = sub_1000B5520();
          v136 = sub_1000B5920();

          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v340[0] = v138;
            *v137 = 136315138;
            swift_getErrorValue();
            v343 = v135;
            v139 = sub_1000B5F60();
            v141 = sub_100062B20(v139, v140, v340);

            *(v137 + 4) = v141;
            v55 = v334;
            v142 = v343;
            _os_log_impl(&_mh_execute_header, v343, v136, "Cannot export attachment fallback image file — skipping {error: %s}", v137, 0xCu);
            sub_100035DA8(v138);

            sub_10004D334(v131, v132);
          }

          else
          {
            sub_10004D334(v131, v132);
          }

          v125 = 0;
          v123 = v335;
          v124 = v329;
          goto LABEL_47;
        }

        (*(v332 + 8))(v130, v331);
        v143 = v131;
        v144 = v127;
LABEL_44:
        sub_10004D334(v143, v144);
        v123 = v335;
        v124 = v329;
        v125 = 0;
LABEL_47:
        v118 = v330;
        v72 = v327;
        goto LABEL_57;
      }

      sub_10004D334(v108, v109);
    }

    v123 = v335;
    v124 = v329;
    v125 = v343;
    goto LABEL_56;
  }

  v63 = v334;
  v64 = *(v334 + 24);
  v65 = *(v334 + 32);
  sub_1000458B4(v334, v64);
  v66 = (*(v65 + 16))(v64, v65);
  if (v67)
  {
    v68 = v67;
  }

  else
  {
    v90 = [objc_opt_self() mainBundle];
    v91 = sub_1000B55F0();
    v92 = [v90 localizedStringForKey:v91 value:0 table:0];

    v93 = sub_1000B5620();
    v68 = v94;

    v66 = v93;
  }

  v95 = v337;
  v96 = v343;
  sub_100078DF8(v66, v68, v336, 0x656D686361747461, 0xEA0000000000746ELL, v333);
  if (v96)
  {
  }

  else
  {
    v323 = v68;
    sub_1000B4D10();
    v97 = *(v95 + 96);
    v336 = *(v95 + 88);
    v330 = v97;
    v98 = v63[3];
    v99 = v63[4];
    sub_1000458B4(v63, v98);
    v100 = *(v95 + 40);
    v341[0] = *(v95 + 24);
    v341[1] = v100;
    v342[0] = *(v95 + 56);
    *(v342 + 13) = *(v95 + 69);
    v101 = 0;
    v102 = (*(v99 + 96))(v341, v98, v99);
    v104 = v103;
    ObjectType = swift_getObjectType();
    sub_1000B4F70();
    v322 = ObjectType;
    sub_1000449D4(v102, v104);
    v149 = sub_1000362AC(0, &qword_100108060, ICArchive_ptr);
    v150 = v334;
    v151 = *(v334 + 24);
    v152 = *(v334 + 32);
    v153 = sub_1000458B4(v334, v151);
    sub_10002FCDC(v153, v149, v151, v152);
    if (!v154)
    {
      v165 = v326;
      goto LABEL_121;
    }

    v343 = 0;
    v155 = sub_1000B55F0();

    v156 = [v155 ic_sanitizedFilenameString];

    sub_1000B5620();
    v157 = v150[3];
    v158 = v150[4];
    sub_1000458B4(v150, v157);
    v159 = v318;
    v160 = v157;
    v161 = v332;
    (*(v158 + 48))(v160, v158);
    v162 = v159;
    v163 = v331;
    v164 = (*(v161 + 48))(v159, 1, v331);
    v165 = v326;
    if (v164 == 1)
    {
      sub_100036320(v162, &qword_100106F88, &qword_1000CAE20);
      v166 = v150[3];
      v167 = v150[4];
      sub_1000458B4(v150, v166);
      v168 = (*(v167 + 56))(v166, v167);
      if (v169 >> 60 == 15)
      {

        v101 = v343;
        goto LABEL_121;
      }

LABEL_85:
      v222 = v168;
      v223 = v169;
      v224 = v315;
      sub_1000B4D10();

      v225 = v343;
      sub_1000B4F70();
      if (!v225)
      {
        (*(v332 + 8))(v224, v331);
        sub_10004D334(v222, v223);
        v101 = 0;
        goto LABEL_121;
      }

      (*(v332 + 8))(v224, v331);
      sub_10004D334(v222, v223);
    }

    else
    {
      v214 = v317;
      (*(v161 + 32))(v317, v162, v163);
      v215 = v316;
      sub_1000B4D10();

      v216 = v343;
      sub_1000B4FE0();
      v217 = v161;
      v101 = v216;
      if (!v216)
      {
        v234 = *(v217 + 8);
        v234(v215, v163);
        v234(v214, v163);
        goto LABEL_121;
      }

      v218 = *(v217 + 8);
      v218(v215, v163);
      v218(v214, v163);
    }

    v343 = 0;
    if (qword_100106A70 != -1)
    {
      goto LABEL_151;
    }

    while (1)
    {
      v226 = sub_1000B5530();
      sub_100036380(v226, qword_100107F28);
      swift_errorRetain();
      v227 = sub_1000B5520();
      v228 = sub_1000B5920();

      if (os_log_type_enabled(v227, v228))
      {
        v229 = swift_slowAlloc();
        v230 = swift_slowAlloc();
        v340[0] = v230;
        *v229 = 136315138;
        swift_getErrorValue();
        v231 = sub_1000B5F60();
        v233 = sub_100062B20(v231, v232, v340);

        *(v229 + 4) = v233;
        _os_log_impl(&_mh_execute_header, v227, v228, "Cannot export attachment media file — skipping {error: %s}", v229, 0xCu);
        sub_100035DA8(v230);
      }

      else
      {
      }

      v101 = v343;
LABEL_121:
      v195 = objc_autoreleasePoolPush();
      v264 = v334;
      v265 = v337;
      sub_100082E7C(v334, v337);
      if (v101)
      {
        break;
      }

      objc_autoreleasePoolPop(v195);
      v266 = objc_autoreleasePoolPush();
      sub_1000831AC(v264, v265);
      v343 = 0;
      v267 = v264;

      objc_autoreleasePoolPop(v266);
      v268 = v264[3];
      v269 = v264[4];
      sub_1000458B4(v267, v268);
      v270 = (*(v269 + 64))(v268, v269);
      v272 = 0;
      v274 = v270 + 56;
      v273 = *(v270 + 56);
      v334 = v270;
      v275 = 1 << *(v270 + 32);
      v276 = -1;
      if (v275 < 64)
      {
        v276 = ~(-1 << v275);
      }

      v277 = v276 & v273;
      v278 = (v275 + 63) >> 6;
      v279 = v331;
      v280 = v332;
      v318 = (v332 + 16);
      v323 = (v332 + 8);
      *&v271 = 136315138;
      v316 = v271;
      v281 = v335;
      v282 = v324;
      v321 = v270 + 56;
      v319 = v278;
      while (v277)
      {
        v55 = v272;
LABEL_132:
        v284 = __clz(__rbit64(v277));
        v277 &= v277 - 1;
        (*(v280 + 16))(v165, *(v334 + 48) + *(v280 + 72) * (v284 | (v55 << 6)), v279);
        sub_1000B4CE0();
        sub_1000B4D10();
        v165 = v326;

        v285 = v343;
        sub_1000B4FE0();
        v343 = v285;
        if (v285)
        {
          v286 = *v323;
          (*v323)(v282, v279);
          v286(v165, v279);
          if (qword_100106A70 != -1)
          {
            swift_once();
          }

          v287 = sub_1000B5530();
          sub_100036380(v287, qword_100107F28);
          swift_errorRetain();
          v288 = sub_1000B5520();
          v289 = sub_1000B5920();

          if (os_log_type_enabled(v288, v289))
          {
            v290 = swift_slowAlloc();
            v291 = swift_slowAlloc();
            v340[0] = v291;
            *v290 = v316;
            swift_getErrorValue();
            LODWORD(v317) = v289;
            v292 = sub_1000B5F60();
            v294 = sub_100062B20(v292, v293, v340);

            *(v290 + 4) = v294;
            v295 = v332;
            _os_log_impl(&_mh_execute_header, v288, v317, "Cannot export attachment asset file — skipping {error: %s}", v290, 0xCu);
            sub_100035DA8(v291);

            v165 = v326;

            v280 = v295;

            v343 = 0;
            v272 = v55;
            v281 = v335;
            v279 = v331;
            v282 = v324;
          }

          else
          {

            v343 = 0;
            v272 = v55;
            v281 = v335;
            v279 = v331;
            v280 = v332;
            v282 = v324;
            v165 = v326;
          }
        }

        else
        {
          v283 = *v323;
          (*v323)(v282, v279);
          v283(v165, v279);
          v272 = v55;
          v281 = v335;
        }

        v274 = v321;
        v278 = v319;
      }

      while (1)
      {
        v55 = v272 + 1;
        if (__OFADD__(v272, 1))
        {
          __break(1u);
          goto LABEL_148;
        }

        if (v55 >= v278)
        {
          break;
        }

        v277 = *(v274 + 8 * v55);
        ++v272;
        if (v277)
        {
          goto LABEL_132;
        }
      }

      v296 = [v281 completedUnitCount];
      if (!__OFADD__(v296, 1))
      {
        [v281 setCompletedUnitCount:v296 + 1];
        v297 = v329;
        v298 = *(v328 + 16);
        v299 = v320;
        if (v298)
        {
          v300 = v325 + 16;
          v336 = *(v325 + 16);
          v301 = v328 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
          v334 = *(v325 + 72);
          v302 = (v325 + 8);
          while (1)
          {
            v303 = v300;
            (v336)(v299, v301, v297);
            v304 = objc_autoreleasePoolPush();
            v305 = v343;
            sub_100078328(v299, v333, v281);
            v343 = v305;
            if (v305)
            {
              break;
            }

            objc_autoreleasePoolPop(v304);
            (*v302)(v299, v297);
            v281 = v335;
            v301 += v334;
            --v298;
            v300 = v303;
            if (!v298)
            {
              goto LABEL_145;
            }
          }

          objc_autoreleasePoolPop(v304);
          (*v302)(v299, v297);
        }

LABEL_145:
        v306 = *v323;
        v307 = v331;
        (*v323)(v327, v331);
        v306(v333, v307);
        return;
      }

      __break(1u);
LABEL_151:
      swift_once();
    }

LABEL_156:
    objc_autoreleasePoolPop(v195);
    __break(1u);
  }
}

void sub_10007EF00(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v290 = a3;
  v291 = a1;
  v292 = v5;
  v285 = *v5;
  v286 = a2;
  v279 = sub_1000B5650();
  v281 = *(v279 - 8);
  v7 = v281[8];
  __chkstk_darwin(v279);
  v278 = &v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v277 = &v265 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v280 = &v265 - v13;
  v14 = sub_1000B4DB0();
  v287 = *(v14 - 8);
  v288 = v14;
  v15 = *(v287 + 64);
  v16 = __chkstk_darwin(v14);
  v282 = (&v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v283 = &v265 - v19;
  v20 = __chkstk_darwin(v18);
  v274 = &v265 - v21;
  v22 = __chkstk_darwin(v20);
  *&v275 = &v265 - v23;
  v24 = __chkstk_darwin(v22);
  v276 = &v265 - v25;
  v26 = __chkstk_darwin(v24);
  v284 = (&v265 - v27);
  v28 = __chkstk_darwin(v26);
  v289 = &v265 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v265 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v265 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v265 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v265 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v265 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = &v265 - v46;
  __chkstk_darwin(v45);
  v49 = &v265 - v48;
  v50 = v298;
  sub_1000B58F0();
  if (v50)
  {
    return;
  }

  v271 = v47;
  v272 = v49;
  v267 = v41;
  v268 = v44;
  v266 = v38;
  v269 = v32;
  v270 = v35;
  v273 = a4;
  v298 = 0;
  v51 = v292;
  if (*(v292 + 24) != 1)
  {
    v59 = v291;
    v60 = v291[3];
    v61 = v291[4];
    sub_1000458B4(v291, v60);
    v62 = (*(v61 + 16))(v60, v61);
    if (v63)
    {
      v64 = v63;
    }

    else
    {
      v88 = [objc_opt_self() mainBundle];
      v89 = sub_1000B55F0();
      v90 = [v88 localizedStringForKey:v89 value:0 table:0];

      v91 = sub_1000B5620();
      v64 = v92;

      v62 = v91;
    }

    v93 = v298;
    sub_100078DF8(v62, v64, v290, 0x656D686361747461, 0xEA0000000000746ELL, v289);
    if (v93)
    {

      return;
    }

    v280 = v64;
    sub_1000B4D10();
    v94 = v51[12];
    v290 = v51[11];
    v281 = v94;
    v95 = v59[3];
    v96 = v59[4];
    sub_1000458B4(v59, v95);
    v97 = *(v51 + 5);
    v296[0] = *(v51 + 3);
    v296[1] = v97;
    v297[0] = *(v51 + 7);
    *(v297 + 13) = *(v51 + 69);
    v98 = (*(v96 + 96))(v296, v95, v96);
    v100 = v99;
    ObjectType = swift_getObjectType();
    sub_1000B4F70();
    v298 = 0;
    v279 = ObjectType;
    sub_1000449D4(v98, v100);
    v135 = sub_1000362AC(0, &qword_100108060, ICArchive_ptr);
    v35 = v59;
    v136 = v59[3];
    v137 = v59[4];
    v138 = sub_1000458B4(v59, v136);
    sub_10002FCDC(v138, v135, v136, v137);
    v139 = v288;
    if (!v140)
    {
      goto LABEL_113;
    }

    v141 = sub_1000B55F0();

    v142 = [v141 ic_sanitizedFilenameString];

    sub_1000B5620();
    v143 = *(v35 + 24);
    v144 = *(v35 + 32);
    sub_1000458B4(v35, v143);
    v145 = v277;
    (*(v144 + 48))(v143, v144);
    v146 = v287;
    if ((*(v287 + 48))(v145, 1, v139) != 1)
    {
      v187 = v276;
      (*(v146 + 32))(v276, v145, v139);
      v188 = v275;
      sub_1000B4D10();
      v189 = v187;

      v190 = v298;
      sub_1000B4FE0();
      v298 = v190;
      v73 = v292;
      if (!v190)
      {
        v209 = *(v146 + 8);
        v210 = v188;
        v211 = v288;
        v209(v210, v288);
        v209(v189, v211);
        goto LABEL_114;
      }

      v191 = *(v146 + 8);
      v192 = v188;
      v193 = v288;
      v191(v192, v288);
      v191(v189, v193);
LABEL_80:
      v298 = 0;
      if (qword_100106A70 != -1)
      {
        goto LABEL_130;
      }

      while (1)
      {
        v201 = sub_1000B5530();
        sub_100036380(v201, qword_100107F28);
        swift_errorRetain();
        v202 = sub_1000B5520();
        v203 = sub_1000B5920();

        if (os_log_type_enabled(v202, v203))
        {
          v204 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          v295[0] = v205;
          *v204 = 136315138;
          swift_getErrorValue();
          v206 = sub_1000B5F60();
          v208 = sub_100062B20(v206, v207, v295);

          *(v204 + 4) = v208;
          _os_log_impl(&_mh_execute_header, v202, v203, "Cannot export attachment media file — skipping {error: %s}", v204, 0xCu);
          sub_100035DA8(v205);
          v35 = v291;

          v73 = v292;
        }

        else
        {
        }

LABEL_114:
        v173 = objc_autoreleasePoolPush();
        v240 = v298;
        sub_100082E7C(v35, v73);
        if (v240)
        {
          goto LABEL_135;
        }

        objc_autoreleasePoolPop(v173);
        v241 = objc_autoreleasePoolPush();
        sub_1000831AC(v35, v73);

        objc_autoreleasePoolPop(v241);
        v242 = *(v35 + 24);
        v243 = *(v35 + 32);
        sub_1000458B4(v35, v242);
        v244 = (*(v243 + 64))(v242, v243);
        v246 = 0;
        v248 = (v244 + 56);
        v247 = *(v244 + 56);
        v298 = v244;
        v249 = 1 << *(v244 + 32);
        v250 = -1;
        if (v249 < 64)
        {
          v250 = ~(-1 << v249);
        }

        v70 = v250 & v247;
        v251 = (v249 + 63) >> 6;
        v252 = v287;
        v277 = (v287 + 16);
        v291 = (v287 + 8);
        *&v245 = 136315138;
        v275 = v245;
        v68 = v282;
        v280 = (v244 + 56);
        v278 = v251;
        while (v70)
        {
          v35 = v246;
LABEL_123:
          v254 = __clz(__rbit64(v70));
          v70 &= v70 - 1;
          v255 = v283;
          v256 = v288;
          (*(v252 + 16))(v283, *(v298 + 48) + *(v252 + 72) * (v254 | (v35 << 6)), v288);
          sub_1000B4CE0();
          sub_1000B4D10();

          sub_1000B4FE0();
          v253 = *v291;
          (*v291)(v255, v256);
          v253(v68, v256);
          v246 = v35;
          v73 = v292;
          v252 = v287;
          v248 = v280;
          v251 = v278;
        }

        while (1)
        {
          v35 = v246 + 1;
          if (__OFADD__(v246, 1))
          {
            __break(1u);
            goto LABEL_127;
          }

          if (v35 >= v251)
          {
            break;
          }

          v70 = *&v248[8 * v35];
          ++v246;
          if (v70)
          {
            goto LABEL_123;
          }
        }

        v257 = v273;
        v258 = [v273 completedUnitCount];
        if (!__OFADD__(v258, 1))
        {
          v259 = [v257 setCompletedUnitCount:v258 + 1];
          v295[0] = v286;
          __chkstk_darwin(v259);
          v260 = v289;
          *(&v265 - 4) = v73;
          *(&v265 - 3) = v260;
          *(&v265 - 2) = v257;
          v262 = *(v285 + 80);
          v261 = *(v285 + 88);
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          sub_1000B50E0();
          sub_1000B5810();
          swift_getWitnessTable();
          sub_1000B5750();
          v263 = *v291;
          v264 = v288;
          (*v291)(v284, v288);
          v263(v260, v264);
          return;
        }

        __break(1u);
LABEL_130:
        swift_once();
      }
    }

    sub_100036320(v145, &qword_100106F88, &qword_1000CAE20);
    v147 = *(v35 + 24);
    v148 = *(v35 + 32);
    sub_1000458B4(v35, v147);
    v149 = (*(v148 + 56))(v147, v148);
    if (v150 >> 60 == 15)
    {

      goto LABEL_113;
    }

LABEL_78:
    v197 = v149;
    v198 = v150;
    v199 = v274;
    sub_1000B4D10();

    v200 = v298;
    sub_1000B4F70();
    v298 = v200;
    if (v200)
    {
      (*(v287 + 8))(v199, v139);
      sub_10004D334(v197, v198);
      v73 = v292;
      goto LABEL_80;
    }

    (*(v287 + 8))(v199, v139);
    sub_10004D334(v197, v198);
LABEL_113:
    v73 = v292;
    goto LABEL_114;
  }

  LODWORD(v289) = *(v292 + 25);
  v52 = v291;
  if (v289 == 2)
  {
    sub_100088704(v291, v295);
    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
    if (swift_dynamicCast())
    {
      v53 = v293;
      v54 = [v293 isTable];

      if (v54)
      {
        return;
      }
    }
  }

  sub_100088704(v52, v295);
  v55 = sub_100030480(&qword_100106CD8, &unk_1000CCE30);
  v56 = sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
  if (swift_dynamicCast())
  {
    v57 = v293;
    v58 = [v293 parentAttachment];

    if (v58)
    {

      return;
    }
  }

  v282 = v56;
  v65 = v52[3];
  v66 = v52[4];
  sub_1000458B4(v52, v65);
  v284 = (*(v66 + 88))(v65, v66);
  v68 = v67;
  v69 = v52[3];
  v70 = v52[4];
  sub_1000458B4(v52, v69);
  v71 = (*(v70 + 80))(v69, v70);
  v283 = v55;
  if (v72 >> 60 == 15)
  {
LABEL_23:
    v102 = v52[3];
    v103 = v52[4];
    sub_1000458B4(v52, v102);
    v104 = (*(v103 + 72))(v102, v103);
    if (v105 >> 60 != 15)
    {
      v116 = v104;
      v117 = v105;
      if (v68)
      {
        v118 = v292[11];
        v119 = v292[12];
        v70 = swift_getObjectType();

        v35 = v271;
        sub_1000B4D10();

        v120 = v298;
        sub_1000B4F70();
        v298 = v120;
        v87 = v286;
        if (!v120)
        {
          (*(v287 + 8))(v35, v288);
          sub_10004D334(v116, v117);
          goto LABEL_46;
        }

        (*(v287 + 8))(v35, v288);
        if (qword_100106A70 != -1)
        {
          swift_once();
        }

        v121 = sub_1000B5530();
        sub_100036380(v121, qword_100107F28);
        v70 = v298;
        swift_errorRetain();
        v122 = sub_1000B5520();
        v123 = sub_1000B5920();

        if (os_log_type_enabled(v122, v123))
        {
          v70 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v295[0] = v35;
          *v70 = 136315138;
          swift_getErrorValue();
          v284 = v122;
          v124 = sub_1000B5F60();
          v126 = v68;
          v127 = sub_100062B20(v124, v125, v295);

          *(v70 + 4) = v127;
          v68 = v126;
          v128 = v284;
          _os_log_impl(&_mh_execute_header, v284, v123, "Cannot export attachment fallback image file — skipping {error: %s}", v70, 0xCu);
          sub_100035DA8(v35);
          v87 = v286;

          sub_10004D334(v116, v117);
        }

        else
        {
          sub_10004D334(v116, v117);
        }

        goto LABEL_45;
      }

      sub_10004D334(v104, v105);
      goto LABEL_55;
    }

    if (v68)
    {
      v106 = v52[3];
      v107 = v52[4];
      sub_1000458B4(v52, v106);
      v108 = *(v107 + 48);

      v109 = v280;
      v108(v106, v107);
      v110 = v287;
      v70 = v288;
      if ((*(v287 + 48))(v109, 1, v288) == 1)
      {
        sub_100036320(v109, &qword_100106F88, &qword_1000CAE20);
        v111 = v52[3];
        v112 = v52[4];
        sub_1000458B4(v52, v111);
        v113 = (*(v112 + 56))(v111, v112);
        v73 = v292;
        if (v114 >> 60 == 15)
        {

          v115 = v273;
LABEL_56:
          v134 = v285;
          v87 = v286;
          goto LABEL_57;
        }

        v151 = v113;
        v152 = v114;
        v153 = v292[11];
        v35 = v292[12];
        swift_getObjectType();
        v70 = v266;
        sub_1000B4D10();
        v284 = v68;

        v154 = v298;
        sub_1000B4F70();
        v298 = v154;
        v87 = v286;
        if (!v154)
        {
          (*(v287 + 8))(v70, v288);
          sub_10004D334(v151, v152);
          v115 = v273;
          v73 = v292;
          v68 = v284;
          v134 = v285;
          goto LABEL_57;
        }

        (*(v287 + 8))(v70, v288);
        sub_10004D334(v151, v152);
        v68 = v284;
      }

      else
      {
        v129 = v268;
        (*(v110 + 32))(v268, v109, v70);
        v130 = v292[11];
        v35 = v110;
        v280 = v292[12];
        swift_getObjectType();
        v131 = v267;
        sub_1000B4D10();

        v132 = v298;
        sub_1000B4FE0();
        v298 = v132;
        if (!v132)
        {
          v162 = *(v110 + 8);
          v162(v131, v70);
          v162(v129, v70);
          goto LABEL_55;
        }

        v133 = *(v110 + 8);
        v133(v131, v70);
        v133(v129, v70);
      }

      v298 = 0;
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v155 = sub_1000B5530();
      sub_100036380(v155, qword_100107F28);
      swift_errorRetain();
      v156 = sub_1000B5520();
      v157 = sub_1000B5920();

      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v295[0] = v70;
        *v158 = 136315138;
        swift_getErrorValue();
        v159 = sub_1000B5F60();
        v35 = v68;
        v161 = sub_100062B20(v159, v160, v295);

        *(v158 + 4) = v161;
        v68 = v35;
        _os_log_impl(&_mh_execute_header, v156, v157, "Cannot export attachment media file — skipping {error: %s}", v158, 0xCu);
        sub_100035DA8(v70);
      }

      else
      {
      }
    }

LABEL_55:
    v115 = v273;
    v73 = v292;
    goto LABEL_56;
  }

  v35 = v71;
  v73 = v72;
  if (!v68)
  {
    sub_10004D334(v71, v72);
    goto LABEL_23;
  }

  v74 = v292[11];
  v75 = v292[12];
  v70 = swift_getObjectType();

  v76 = v272;
  sub_1000B4D10();

  v77 = v298;
  sub_1000B4F70();
  v298 = v77;
  if (!v77)
  {
    (*(v287 + 8))(v76, v288);
    sub_10004D334(v35, v73);
    goto LABEL_55;
  }

  (*(v287 + 8))(v76, v288);
  v70 = v286;
  if (qword_100106A70 != -1)
  {
    goto LABEL_128;
  }

  while (1)
  {
    v78 = sub_1000B5530();
    sub_100036380(v78, qword_100107F28);
    swift_errorRetain();
    v79 = sub_1000B5520();
    v80 = sub_1000B5920();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v284 = v68;
      v83 = v82;
      v295[0] = v82;
      *v81 = 136315138;
      swift_getErrorValue();
      v84 = sub_1000B5F60();
      v70 = v35;
      v35 = sub_100062B20(v84, v85, v295);

      *(v81 + 4) = v35;
      v86 = v286;
      _os_log_impl(&_mh_execute_header, v79, v80, "Cannot export attachment fallback PDF file — skipping {error: %s}", v81, 0xCu);
      sub_100035DA8(v83);
      v68 = v284;

      sub_10004D334(v70, v73);

      v87 = v86;
LABEL_45:
      v298 = 0;
LABEL_46:
      v115 = v273;
      v73 = v292;
      v134 = v285;
    }

    else
    {
      sub_10004D334(v35, v73);

      v298 = 0;
      v115 = v273;
      v73 = v292;
      v134 = v285;
      v87 = v70;
    }

LABEL_57:
    if (v289 != 1 || (sub_100088704(v291, v295), (swift_dynamicCast() & 1) == 0))
    {

      v68 = v290;
      goto LABEL_67;
    }

    v35 = v87;
    v284 = v68;
    v163 = v293;
    v164 = [v293 isAudio];
    v68 = v290;
    if (!v164)
    {

      v87 = v35;
      goto LABEL_67;
    }

    v165 = [v163 attachmentModel];
    objc_opt_self();
    v166 = swift_dynamicCastObjCClass();
    if (v166)
    {
      break;
    }

    v115 = v273;
LABEL_110:
    v134 = v285;
    v87 = v35;
LABEL_67:
    v182 = [v115 completedUnitCount];
    if (!__OFADD__(v182, 1))
    {
      v183 = [v115 setCompletedUnitCount:v182 + 1];
      v295[0] = v87;
      __chkstk_darwin(v183);
      *(&v265 - 4) = v73;
      *(&v265 - 3) = v68;
      *(&v265 - 2) = v115;
      v186 = v134 + 80;
      v185 = *(v134 + 80);
      v184 = *(v186 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1000B50E0();
      sub_1000B5810();
      swift_getWitnessTable();
      sub_1000B5750();
      return;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    swift_once();
  }

  v167 = v166;
  v289 = v165;
  v168 = v291[3];
  v169 = v291[4];
  sub_1000458B4(v291, v168);
  v170 = (*(v169 + 8))(v168, v169);
  v295[0] = 0x7263736E6172745FLL;
  v295[1] = 0xEF7478742E747069;
  v293 = v170;
  v294 = v171;
  v293 = sub_1000B5720();
  v294 = v172;
  sub_1000B56D0();
  v173 = v68;
  sub_1000B4D10();

  v174 = [v167 audioDocument];
  if (!v174)
  {
    goto LABEL_133;
  }

  v175 = v174;
  v176 = [v174 transcriptAsPlainText];

  sub_1000B5620();
  v177 = v278;
  sub_1000B5640();
  v139 = sub_1000B5630();
  v179 = v178;
  v173 = v281 + 1;
  v283 = v281[1];
  v149 = (v283)(v177, v279);
  v281 = v173;
  if (v179 >> 60 == 15)
  {
LABEL_92:
    v216 = v291[3];
    v217 = v291[4];
    sub_1000458B4(v291, v216);
    v218 = (*(v217 + 8))(v216, v217);
    strcpy(v295, "_summary.txt");
    BYTE5(v295[1]) = 0;
    HIWORD(v295[1]) = -5120;
    v293 = v218;
    v294 = v219;
    v293 = sub_1000B5720();
    v294 = v220;
    sub_1000B56D0();
    v68 = v290;
    v173 = v290;
    sub_1000B4D10();

    v221 = [v167 audioDocument];
    if (!v221)
    {
      goto LABEL_134;
    }

    v222 = v221;

    v223 = [v222 recordingSummaryAsPlainText];

    v173 = sub_1000B5620();
    v224 = v278;
    sub_1000B5640();
    v225 = sub_1000B5630();
    v227 = v226;

    (v283)(v224, v279);
    if (v227 >> 60 == 15)
    {

LABEL_95:
      v228 = v288;
      v70 = v270;
LABEL_109:
      v239 = *(v287 + 8);
      v239(v269, v228);
      v239(v70, v228);
      v115 = v273;
      v73 = v292;
      goto LABEL_110;
    }

    v229 = v227 >> 62;
    v70 = v270;
    if ((v227 >> 62) > 1)
    {
      v228 = v288;
      if (v229 != 2)
      {
        goto LABEL_108;
      }

      v232 = *(v225 + 16);
      v231 = *(v225 + 24);
      v196 = __OFSUB__(v231, v232);
      v230 = v231 - v232;
      if (!v196)
      {
LABEL_105:
        if (v230 > 0)
        {
          v233 = v292[11];
          v234 = v292[12];
          swift_getObjectType();
          v235 = v269;
          v236 = v298;
          sub_1000B4F70();
          v298 = v236;
          if (v236)
          {

            sub_10004D334(v225, v227);
            v237 = v288;
            v238 = *(v287 + 8);
            v238(v235, v288);
            v238(v270, v237);
            return;
          }

          sub_10004D334(v225, v227);
          goto LABEL_95;
        }

LABEL_108:

        sub_10004D334(v225, v227);
        goto LABEL_109;
      }

      __break(1u);
    }

    else
    {
      v228 = v288;
      if (!v229)
      {
        v230 = BYTE6(v227);
        goto LABEL_105;
      }
    }

    LODWORD(v230) = HIDWORD(v225) - v225;
    if (__OFSUB__(HIDWORD(v225), v225))
    {
      goto LABEL_132;
    }

    v230 = v230;
    goto LABEL_105;
  }

  v180 = v179 >> 62;
  if ((v179 >> 62) > 1)
  {
    if (v180 != 2)
    {
LABEL_91:
      sub_10004D334(v139, v179);
      goto LABEL_92;
    }

    v195 = *(v139 + 16);
    v194 = *(v139 + 24);
    v196 = __OFSUB__(v194, v195);
    v181 = v194 - v195;
    if (!v196)
    {
LABEL_87:
      if (v181 >= 1)
      {
        v212 = v292[11];
        v213 = v292[12];
        swift_getObjectType();
        v214 = v270;
        v215 = v298;
        sub_1000B4F70();
        v298 = v215;
        if (v215)
        {
          (*(v287 + 8))(v214, v288);

          sub_10004D334(v139, v179);

          return;
        }

        v35 = v286;
      }

      goto LABEL_91;
    }

    __break(1u);
    goto LABEL_78;
  }

  if (!v180)
  {
    v181 = BYTE6(v179);
    goto LABEL_87;
  }

  LODWORD(v181) = HIDWORD(v139) - v139;
  if (!__OFSUB__(HIDWORD(v139), v139))
  {
    v181 = v181;
    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  objc_autoreleasePoolPop(v173);
  __break(1u);
}

uint64_t sub_10008103C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1000B50E0();
  result = sub_1000B5070();
  *a3 = result;
  return result;
}

void sub_1000810D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_10008115C(a2, a1, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_10008115C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = a5;
  v10 = sub_1000B4DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v18 = *(v11 + 16);
  if (*(a1 + 24) != 1)
  {
    v18(v15, a3, v10);
    sub_100078824(a2, v15, a4);
    v19 = v5;
    if (!v5)
    {
      return (*(v11 + 8))(v15, v10);
    }

    v17 = v15;
LABEL_6:
    result = (*(v11 + 8))(v17, v10);
    *v22 = v19;
    return result;
  }

  v18(&v21 - v16, a3, v10);
  sub_100081C00(a2, v17, a4);
  v19 = v5;
  if (v5)
  {
    goto LABEL_6;
  }

  v15 = v17;
  return (*(v11 + 8))(v15, v10);
}

void sub_100081320(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v60 = a3;
  v71 = a1;
  v72 = sub_1000B4C40();
  *&v67 = *(v72 - 8);
  v4 = *(v67 + 64);
  __chkstk_darwin(v72);
  v74 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v57 - v10;
  v11 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v57 - v14;
  v16 = sub_1000B4DB0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v58 = &v57 - v23;
  v24 = __chkstk_darwin(v22);
  v59 = &v57 - v25;
  __chkstk_darwin(v24);
  v27 = &v57 - v26;
  v28 = *(v17 + 16);
  v68 = a2;
  v73 = v28;
  v28(&v57 - v26, a2, v16);
  (*(v12 + 16))(v15, v71, v11);
  if ((*(v12 + 88))(v15, v11) == enum case for ICObjectReferences.attachment<A>(_:))
  {
    v57 = v27;
    (*(v12 + 8))(v15, v11);
    v29 = [objc_opt_self() defaultManager];
    v30 = v70;
    v31 = sub_1000B5900();
    if (v30)
    {
      (*(v17 + 8))(v57, v16);
    }

    else
    {
      v32 = v31;

      v33 = v32;
      v66 = *(v32 + 16);
      v69 = v17;
      if (v66)
      {
        v34 = 0;
        v70 = NSURLIsDirectoryKey;
        v68 = v32 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
        v64 = (v67 + 8);
        v65 = (v17 + 8);
        v67 = xmmword_1000CAB50;
        while (v34 < *(v33 + 16))
        {
          v35 = v33;
          v36 = v16;
          v73(v21, v68 + *(v69 + 72) * v34, v16);
          sub_100030480(&qword_100106F80, &qword_1000CAE18);
          inited = swift_initStackObject();
          *(inited + 16) = v67;
          v38 = v70;
          *(inited + 32) = v70;
          v39 = v38;
          sub_100087A60(inited);
          swift_setDeallocating();
          sub_100089014(inited + 32, type metadata accessor for URLResourceKey);
          v40 = v74;
          sub_1000B4CC0();

          v41 = sub_1000B4C20();
          (*v64)(v40, v72);
          if (v41 != 2 && (v41 & 1) != 0)
          {

            v42 = v69;
            v43 = v63;
            v16 = v36;
            (*(v69 + 32))(v63, v21, v36);
            v44 = 0;
            goto LABEL_13;
          }

          ++v34;
          v16 = v36;
          (*v65)(v21, v36);
          v33 = v35;
          if (v66 == v34)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_12:

        v44 = 1;
        v42 = v69;
        v43 = v63;
LABEL_13:
        (*(v42 + 56))(v43, v44, 1, v16);
        v45 = v61;
        sub_100030C74(v43, v61, &qword_100106F88, &qword_1000CAE20);
        v46 = (*(v42 + 48))(v45, 1, v16);
        v47 = v62;
        v48 = v71;
        if (v46 == 1)
        {
          sub_100036320(v45, &qword_100106F88, &qword_1000CAE20);
          v75 = 0;
          v49 = v57;
          if (*(v47 + 24) & 1) != 0 && *(v47 + 25) == 2 && (v50 = objc_autoreleasePoolPush(), sub_100082998(v47, v48, &v75), objc_autoreleasePoolPop(v50), (v75))
          {
            sub_100036320(v43, &qword_100106F88, &qword_1000CAE20);
            (*(v42 + 8))(v49, v16);
          }

          else
          {
            if (*(v47 + 25) == 1)
            {
              v54 = 0x656D686361747461;
            }

            else
            {
              v54 = 0x656D686361747441;
            }

            v55 = v58;
            sub_100078DF8(v54, 0xEB0000000073746ELL, v49, 0, 0, v58);

            sub_100078328(v48, v55, v60);
            v56 = *(v42 + 8);
            v56(v55, v16);
            sub_100036320(v43, &qword_100106F88, &qword_1000CAE20);
            v56(v49, v16);
          }
        }

        else
        {
          v51 = v59;
          (*(v42 + 32))(v59, v45, v16);
          sub_100078328(v48, v51, v60);
          v52 = v57;
          v53 = *(v42 + 8);
          v53(v51, v16);
          sub_100036320(v43, &qword_100106F88, &qword_1000CAE20);
          v53(v52, v16);
        }
      }
    }
  }

  else
  {
    (*(v17 + 8))(v27, v16);
    (*(v12 + 8))(v15, v11);
  }
}

void sub_100081C00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v70 = a3;
  v80 = a2;
  v78 = a1;
  v4 = *v3;
  v79 = sub_1000B4C40();
  v71 = *(v79 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v79);
  v84 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030480(&qword_100106F88, &qword_1000CAE20);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v72 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v67 - v11;
  strcpy(v86, "identifier title hasMedia children ");
  v12 = *(v4 + 88);
  v73 = v3;
  v13 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87[0] = AssociatedTypeWitness;
  v87[1] = sub_10003052C(&qword_100108048, &unk_1000CCE80);
  v87[2] = &type metadata for Bool;
  swift_getAssociatedConformanceWitness();
  sub_1000B50E0();
  v87[3] = sub_1000B5810();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v75 = *(TupleTypeMetadata - 8);
  v15 = *(v75 + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v17 = &v67 - v16;
  v18 = sub_1000B50E0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v67 - v21);
  v23 = sub_1000B4DB0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v68 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v69 = &v67 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v67 - v31;
  __chkstk_darwin(v30);
  v34 = &v67 - v33;
  v82 = *(v24 + 16);
  v83 = v24 + 16;
  v82(&v67 - v33, v80, v23);
  (*(v19 + 16))(v22, v78, v18);
  if ((*(v19 + 88))(v22, v18) != enum case for ICObjectReferences.attachment<A>(_:))
  {
    (*(v24 + 8))(v34, v23);
    (*(v19 + 8))(v22, v18);
    return;
  }

  v67 = v34;
  v85 = v24;
  v81 = v23;
  (*(v19 + 96))(v22, v18);
  v35 = *v22;
  v36 = swift_projectBox();
  v37 = TupleTypeMetadata;
  (*(v75 + 16))(v17, v36, TupleTypeMetadata);
  v38 = *&v17[*(v37 + 48) + 8];

  v39 = *&v17[*(v37 + 80)];

  (*(*(AssociatedTypeWitness - 8) + 8))(v17, AssociatedTypeWitness);

  v40 = [objc_opt_self() defaultManager];
  v41 = v77;
  v42 = sub_1000B5900();
  if (v41)
  {
    (*(v85 + 8))(v67, v81);

    return;
  }

  v43 = v42;

  v44 = v81;
  TupleTypeMetadata = *(v43 + 16);
  if (TupleTypeMetadata)
  {
    v45 = 0;
    v80 = v43 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v46 = (v71 + 8);
    v75 = v85 + 8;
    v77 = xmmword_1000CAB50;
    while (v45 < *(v43 + 16))
    {
      v82(v32, v80 + *(v85 + 72) * v45, v44);
      sub_100030480(&qword_100106F80, &qword_1000CAE18);
      inited = swift_initStackObject();
      *(inited + 16) = v77;
      *(inited + 32) = NSURLIsDirectoryKey;
      v48 = NSURLIsDirectoryKey;
      sub_100087A60(inited);
      swift_setDeallocating();
      sub_100089014(inited + 32, type metadata accessor for URLResourceKey);
      v49 = v84;
      sub_1000B4CC0();

      v50 = sub_1000B4C20();
      (*v46)(v49, v79);
      if (v50 != 2 && (v50 & 1) != 0)
      {

        v51 = v85;
        v44 = v81;
        (*(v85 + 32))(v74, v32, v81);
        v52 = 0;
        goto LABEL_13;
      }

      ++v45;
      v44 = v81;
      (*v75)(v32, v81);
      if (TupleTypeMetadata == v45)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v52 = 1;
    v51 = v85;
LABEL_13:
    v53 = v74;
    (*(v51 + 56))(v74, v52, 1, v44);
    v54 = v53;
    v55 = v72;
    sub_100030C74(v54, v72, &qword_100106F88, &qword_1000CAE20);
    v56 = (*(v51 + 48))(v55, 1, v44);
    v57 = v73;
    v58 = v78;
    v59 = v67;
    if (v56 == 1)
    {
      sub_100036320(v55, &qword_100106F88, &qword_1000CAE20);
      v88 = 0;
      if (*(v57 + 24) == 1 && *(v57 + 25) == 2)
      {
        v60 = objc_autoreleasePoolPush();
        sub_100082C18(v57, v58, &v88, v87);
        objc_autoreleasePoolPop(v60);
        if (v88)
        {
          sub_100036320(v74, &qword_100106F88, &qword_1000CAE20);
          (*(v51 + 8))(v59, v44);
          return;
        }
      }

      if (*(v57 + 25) == 1)
      {
        v64 = 0x656D686361747461;
      }

      else
      {
        v64 = 0x656D686361747441;
      }

      v65 = v68;
      sub_100078DF8(v64, 0xEB0000000073746ELL, v59, 0, 0, v68);

      sub_100078824(v58, v65, v70);
      v66 = v74;
      v62 = *(v51 + 8);
      v62(v65, v44);
      v63 = v66;
    }

    else
    {
      v61 = v69;
      (*(v51 + 32))(v69, v55, v44);
      sub_100078824(v58, v61, v70);
      v62 = *(v51 + 8);
      v62(v61, v44);
      v63 = v74;
    }

    sub_100036320(v63, &qword_100106F88, &qword_1000CAE20);
    v62(v59, v44);
  }
}

void sub_100082738(char a1)
{
  v2 = v1;
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    v3 = *(v1 + 16);
    if (qword_100106A70 != -1)
    {
      swift_once();
    }

    v4 = sub_1000B5530();
    sub_100036380(v4, qword_100107F28);
    v5 = sub_1000B5520();
    v6 = sub_1000B5910();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Resetting context…", v7, 2u);
    }

    v8 = sub_1000B51B0();
    [v8 reset];

    *(v2 + 120) = 0;
  }
}

void sub_100082850(char a1)
{
  if ((*(v1 + 120) & 1) != 0 || (a1 & 0x1F) == 0)
  {
    v2 = *(v1 + 16);
    sub_1000B51C0();
    if (swift_dynamicCastClass())
    {
      v3 = v1;
      v4 = qword_100106A70;
      swift_unknownObjectRetain();
      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_1000B5530();
      sub_100036380(v5, qword_100107F28);
      v6 = sub_1000B5520();
      v7 = sub_1000B5910();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Resetting context…", v8, 2u);
      }

      v9 = sub_1000B51B0();
      [v9 reset];
      swift_unknownObjectRelease();

      v1 = v3;
    }

    *(v1 + 120) = 0;
  }
}

void sub_100082998(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 16);
  sub_1000B51C0();
  sub_1000886A4(&qword_100108018, &type metadata accessor for ICModernObjectProvider);
  sub_1000B5030();
  if (!v3)
  {
    if (v11[3])
    {
      sub_100030480(&qword_100106CD8, &unk_1000CCE30);
      if (swift_dynamicCast())
      {
        if (*(&v13 + 1))
        {
          sub_10004589C(&v12, v15);
          sub_100088704(v15, &v12);
          sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
          if (swift_dynamicCast())
          {
            v6 = [v11[0] isTable];

            sub_100035DA8(v15);
            if (v6)
            {
              *a3 = 1;
            }
          }

          else
          {
            sub_100035DA8(v15);
          }

          return;
        }
      }

      else
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
      }
    }

    else
    {
      sub_100036320(v11, &qword_100106E30, &unk_1000CAB60);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    sub_100036320(&v12, &qword_100108028, &qword_1000CCE28);
    if (qword_100106A70 != -1)
    {
      swift_once();
    }

    v7 = sub_1000B5530();
    sub_100036380(v7, qword_100107F28);
    v8 = sub_1000B5520();
    v9 = sub_1000B5930();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Object to be exported does not exist anymore — skipping", v10, 2u);
    }
  }
}

void sub_100082C18(void *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v7 = a1[2];
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  sub_1000B5030();
  if (v4)
  {
    *a4 = v4;
    return;
  }

  if (v15[3])
  {
    sub_100030480(&qword_100106CD8, &unk_1000CCE30);
    if (swift_dynamicCast())
    {
      if (*(&v17 + 1))
      {
        sub_10004589C(&v16, v19);
        sub_100088704(v19, &v16);
        sub_1000362AC(0, &qword_100108050, ICAttachment_ptr);
        if (swift_dynamicCast())
        {
          v10 = [v15[0] isTable];

          sub_100035DA8(v19);
          if (v10)
          {
            *a3 = 1;
          }
        }

        else
        {
          sub_100035DA8(v19);
        }

        return;
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    sub_100036320(v15, &qword_100106E30, &unk_1000CAB60);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  sub_100036320(&v16, &qword_100108028, &qword_1000CCE28);
  if (qword_100106A70 != -1)
  {
    swift_once();
  }

  v11 = sub_1000B5530();
  sub_100036380(v11, qword_100107F28);
  v12 = sub_1000B5520();
  v13 = sub_1000B5930();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Object to be exported does not exist anymore — skipping", v14, 2u);
  }
}

void sub_100082E7C(void *a1, uint64_t a2)
{
  v5 = sub_1000B4DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_1000458B4(a1, v10);
  v12 = (*(v11 + 72))(v10, v11);
  if (v13 >> 60 != 15)
  {
    v14 = *(a2 + 88);
    v26 = *(a2 + 96);
    v15 = v12;
    v16 = v13;
    swift_getObjectType();
    sub_1000B4D10();
    sub_1000B4F70();
    if (v2)
    {
      v26 = v16;
      (*(v6 + 8))(v9, v5);
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v17 = sub_1000B5530();
      sub_100036380(v17, qword_100107F28);
      swift_errorRetain();
      v18 = sub_1000B5520();
      v19 = sub_1000B5920();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        swift_getErrorValue();
        v22 = sub_1000B5F60();
        v24 = sub_100062B20(v22, v23, &v27);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Cannot export attachment preview image file — skipping {error: %s}", v20, 0xCu);
        sub_100035DA8(v21);

        sub_10004D334(v15, v26);
      }

      else
      {
        sub_10004D334(v15, v26);
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      sub_10004D334(v15, v16);
    }
  }
}

void sub_1000831AC(void *a1, uint64_t a2)
{
  v5 = sub_1000B4DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  sub_1000458B4(a1, v10);
  v12 = (*(v11 + 80))(v10, v11);
  if (v13 >> 60 != 15)
  {
    v14 = *(a2 + 88);
    v26 = *(a2 + 96);
    v15 = v12;
    v16 = v13;
    swift_getObjectType();
    sub_1000B4D10();
    sub_1000B4F70();
    if (v2)
    {
      v26 = v16;
      (*(v6 + 8))(v9, v5);
      if (qword_100106A70 != -1)
      {
        swift_once();
      }

      v17 = sub_1000B5530();
      sub_100036380(v17, qword_100107F28);
      swift_errorRetain();
      v18 = sub_1000B5520();
      v19 = sub_1000B5920();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        swift_getErrorValue();
        v22 = sub_1000B5F60();
        v24 = sub_100062B20(v22, v23, &v27);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Cannot export attachment fallback PDF file — skipping {error: %s}", v20, 0xCu);
        sub_100035DA8(v21);

        sub_10004D334(v15, v26);
      }

      else
      {
        sub_10004D334(v15, v26);
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      sub_10004D334(v15, v16);
    }
  }
}

void sub_1000834DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  sub_100078824(a1, a3, a4);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_10008354C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 120) = 1;
  }

  return result;
}

void sub_1000836EC()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    swift_getObjectType();
    if (qword_100106A80 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_100112C30;
    v4 = unk_100112C38;
    v6 = xmmword_100112C40;

    v7 = 0;
    v8 = v3;
    v9 = v5;
    v10 = v4;
    v11 = v6;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v13 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v14 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = 0;
    sub_100088B5C(v2, &v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000838B8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a2;
  v35 = sub_100030480(&qword_100108010, &unk_1000CCE10);
  v4 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v6 = &v28 - v5;
  v7 = sub_100030480(&qword_100106D00, &qword_1000CAA70);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v34 = &v28 - v9;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000B5CF0())
  {
    v11 = 0;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1 & 0xC000000000000001;
    v32 = (v30 + 32);
    v33 = (v30 + 48);
    v39 = _swiftEmptyArrayStorage;
    v31 = (v30 + 56);
    while (1)
    {
      if (v38)
      {
        v12 = sub_1000B5C20();
      }

      else
      {
        if (v11 >= *(v37 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = v7;
      v16 = [v12 managedObjectContext];
      if (v16)
      {
        v17 = v16;
        v18 = a1;
        __chkstk_darwin(v16);
        v19 = v36;
        *(&v28 - 2) = v13;
        *(&v28 - 1) = v19;
        v20 = v40;
        sub_1000B5A60();
        v40 = v20;

        v7 = v15;
        if ((*v33)(v6, 1, v15) != 1)
        {
          v21 = *v32;
          (*v32)(v34, v6, v15);
          v22 = v39;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_100033C84(0, v22[2] + 1, 1, v22);
          }

          v24 = v22[2];
          v23 = v22[3];
          v39 = v22;
          if (v24 >= v23 >> 1)
          {
            v39 = sub_100033C84(v23 > 1, v24 + 1, 1, v39);
          }

          v25 = v39;
          v39[2] = v24 + 1;
          v7 = v15;
          v21(&v25[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24], v34, v15);
          a1 = v18;
          goto LABEL_6;
        }
      }

      else
      {

        (*v31)(v6, 1, 1, v7);
      }

      sub_100036320(v6, &qword_100108010, &unk_1000CCE10);
LABEL_6:
      ++v11;
      if (v14 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_23:
  v26 = *(v36 + OBJC_IVAR___ICArchiveExporter_exporter);
  sub_100073024(v39, v29, v28);
}

uint64_t sub_100083FB4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1000B5FB0();
  sub_1000B56A0();
  v9 = sub_1000B5FE0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1000B5F20() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100085B74(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100084104(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v51 = sub_100030480(&qword_100108070, &unk_1000CCE98);
  v4 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v6 = &v46 - v5;
  v52 = _s3TagVMa();
  v62 = *(v52 - 8);
  v7 = *(v62 + 64);
  v8 = __chkstk_darwin(v52);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = &v46 - v11;
  v12 = sub_1000B4EA0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v56 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v46 - v21;
  v47 = v2;
  v64 = *v2;
  v23 = *(v64 + 40);
  sub_1000B5FB0();
  v65 = a2;
  sub_100030C74(a2, v22, &qword_100106E38, &unk_1000CB730);
  v24 = v13 + 48;
  v57 = *(v13 + 48);
  if (v57(v22, 1, v12) == 1)
  {
    sub_1000B5FD0(0);
  }

  else
  {
    (*(v13 + 32))(v16, v22, v12);
    sub_1000B5FD0(1u);
    sub_1000886A4(&qword_100108078, &type metadata accessor for Date);
    sub_1000B55A0();
    (*(v13 + 8))(v16, v12);
  }

  v25 = (v65 + *(v52 + 20));
  v26 = *v25;
  v58 = v25[1];
  v59 = v26;
  sub_1000B56A0();
  v27 = sub_1000B5FE0();
  v28 = -1 << *(v64 + 32);
  v29 = v27 & ~v28;
  v63 = v64 + 56;
  v30 = v57;
  if ((*(v64 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
  {
    v50 = v16;
    v61 = ~v28;
    v49 = (v13 + 32);
    v62 = *(v62 + 72);
    v54 = (v13 + 8);
    v31 = v51;
    v55 = v10;
    v53 = v24;
    do
    {
      v32 = *(v64 + 48);
      v60 = v62 * v29;
      sub_100088FAC(v32 + v62 * v29, v10, _s3TagVMa);
      v33 = *(v31 + 48);
      sub_100030C74(v10, v6, &qword_100106E38, &unk_1000CB730);
      sub_100030C74(v65, &v6[v33], &qword_100106E38, &unk_1000CB730);
      if (v30(v6, 1, v12) == 1)
      {
        if (v30(&v6[v33], 1, v12) != 1)
        {
          goto LABEL_7;
        }

        sub_100036320(v6, &qword_100106E38, &unk_1000CB730);
      }

      else
      {
        v34 = v56;
        sub_100030C74(v6, v56, &qword_100106E38, &unk_1000CB730);
        if (v30(&v6[v33], 1, v12) == 1)
        {
          (*v54)(v34, v12);
          v10 = v55;
          v30 = v57;
LABEL_7:
          sub_100036320(v6, &qword_100108070, &unk_1000CCE98);
          goto LABEL_8;
        }

        v35 = v50;
        (*v49)(v50, &v6[v33], v12);
        sub_1000886A4(&qword_100108080, &type metadata accessor for Date);
        v36 = sub_1000B55E0();
        v37 = *v54;
        (*v54)(v35, v12);
        v37(v34, v12);
        v31 = v51;
        sub_100036320(v6, &qword_100106E38, &unk_1000CB730);
        v10 = v55;
        v30 = v57;
        if ((v36 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v38 = &v10[*(v52 + 20)];
      v39 = *v38 == v59 && *(v38 + 1) == v58;
      if (v39 || (sub_1000B5F20() & 1) != 0)
      {
        sub_100089014(v10, _s3TagVMa);
        sub_100089014(v65, _s3TagVMa);
        sub_100088FAC(*(v64 + 48) + v60, v48, _s3TagVMa);
        return 0;
      }

LABEL_8:
      sub_100089014(v10, _s3TagVMa);
      v29 = (v29 + 1) & v61;
    }

    while (((*(v63 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
  }

  v41 = v47;
  v42 = *v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v65;
  v45 = v46;
  sub_100088FAC(v65, v46, _s3TagVMa);
  v66 = *v41;
  sub_100085CF4(v45, v29, isUniquelyReferenced_nonNull_native);
  *v41 = v66;
  sub_100089074(v44, v48, _s3TagVMa);
  return 1;
}

uint64_t sub_100084878(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_1000B4DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v45 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  v8 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v10 = &v41[-v9];
  v11 = type metadata accessor for MarkdownStyle(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v16 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v41[-v18];
  __chkstk_darwin(v17);
  v46 = &v41[-v20];
  v47 = v2;
  v21 = *v2;
  v22 = *(*v2 + 40);
  sub_1000B5FB0();
  v55 = a2;
  sub_1000997C4();
  v23 = sub_1000B5FE0();
  v24 = v21 + 56;
  v25 = -1 << *(v21 + 32);
  v26 = v23 & ~v25;
  if (((*(v21 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_27:
    v35 = v47;
    v36 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v55;
    v39 = v46;
    sub_100088FAC(v55, v46, type metadata accessor for MarkdownStyle);
    v56 = *v35;
    sub_100086434(v39, v26, isUniquelyReferenced_nonNull_native);
    *v35 = v56;
    sub_100089074(v38, v48, type metadata accessor for MarkdownStyle);
    return 1;
  }

  v51 = v16;
  v52 = ~v25;
  v53 = *(v12 + 72);
  v27 = (v5 + 48);
  v49 = (v5 + 8);
  v50 = v21 + 56;
  v44 = (v5 + 32);
  while (1)
  {
    v28 = v53 * v26;
    sub_100088FAC(*(v21 + 48) + v53 * v26, v19, type metadata accessor for MarkdownStyle);
    v29 = *(v54 + 48);
    sub_100088FAC(v19, v10, type metadata accessor for MarkdownStyle);
    sub_100088FAC(v55, &v10[v29], type metadata accessor for MarkdownStyle);
    v30 = *v27;
    v31 = (*v27)(v10, 6, v4);
    if (v31 > 2)
    {
      if (v31 > 4)
      {
        if (v31 == 5)
        {
          sub_100089014(v19, type metadata accessor for MarkdownStyle);
          if (v30(&v10[v29], 6, v4) == 5)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_100089014(v19, type metadata accessor for MarkdownStyle);
          if (v30(&v10[v29], 6, v4) == 6)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v31 == 3)
      {
        sub_100089014(v19, type metadata accessor for MarkdownStyle);
        if (v30(&v10[v29], 6, v4) == 3)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100089014(v19, type metadata accessor for MarkdownStyle);
        if (v30(&v10[v29], 6, v4) == 4)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    if (v31)
    {
      if (v31 == 1)
      {
        sub_100089014(v19, type metadata accessor for MarkdownStyle);
        if (v30(&v10[v29], 6, v4) == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100089014(v19, type metadata accessor for MarkdownStyle);
        if (v30(&v10[v29], 6, v4) == 2)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    v32 = v51;
    sub_100088FAC(v10, v51, type metadata accessor for MarkdownStyle);
    if (!v30(&v10[v29], 6, v4))
    {
      break;
    }

    sub_100089014(v19, type metadata accessor for MarkdownStyle);
    (*v49)(v32, v4);
    v24 = v50;
LABEL_22:
    sub_100036320(v10, &qword_1001080A0, &qword_1000CCEC0);
LABEL_23:
    v26 = (v26 + 1) & v52;
    if (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v33 = v45;
  (*v44)(v45, &v10[v29], v4);
  v42 = sub_1000B4D40();
  v43 = v21;
  v34 = *v49;
  (*v49)(v33, v4);
  sub_100089014(v19, type metadata accessor for MarkdownStyle);
  v34(v32, v4);
  v21 = v43;
  v24 = v50;
  if ((v42 & 1) == 0)
  {
    sub_100089014(v10, type metadata accessor for MarkdownStyle);
    goto LABEL_23;
  }

LABEL_28:
  sub_100089014(v10, type metadata accessor for MarkdownStyle);
  sub_100089014(v55, type metadata accessor for MarkdownStyle);
  sub_100088FAC(*(v21 + 48) + v28, v48, type metadata accessor for MarkdownStyle);
  return 0;
}

uint64_t sub_100084F20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100030480(&qword_1001080B8, &unk_1000CCED0);
  result = sub_1000B5BE0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1000B5FB0();
      sub_1000B56A0();
      result = sub_1000B5FE0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100085180(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000B4EA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v48 - v10;
  v12 = _s3TagVMa();
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = *(v57 + 64);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v17 = *(*v2 + 24);
  }

  sub_100030480(&qword_100108088, &qword_1000CCEA8);
  result = sub_1000B5BE0();
  v19 = result;
  if (*(v16 + 16))
  {
    v56 = v4;
    v49 = v2;
    v20 = 0;
    v21 = (v16 + 56);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 56);
    v25 = (v22 + 63) >> 6;
    v54 = (v5 + 48);
    v55 = result;
    v50 = (v5 + 8);
    v51 = (v5 + 32);
    v26 = result + 56;
    v52 = v16;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v31 = *(v16 + 48);
      v59 = *(v57 + 72);
      sub_100089074(v31 + v59 * (v28 | (v20 << 6)), v15, _s3TagVMa);
      v32 = v19[5];
      sub_1000B5FB0();
      v33 = v15;
      sub_100030C74(v15, v11, &qword_100106E38, &unk_1000CB730);
      v34 = v56;
      if ((*v54)(v11, 1, v56) == 1)
      {
        sub_1000B5FD0(0);
      }

      else
      {
        v35 = v53;
        (*v51)(v53, v11, v34);
        sub_1000B5FD0(1u);
        sub_1000886A4(&qword_100108078, &type metadata accessor for Date);
        sub_1000B55A0();
        v36 = v35;
        v16 = v52;
        (*v50)(v36, v34);
      }

      v15 = v33;
      v37 = (v33 + *(v58 + 20));
      v38 = *v37;
      v39 = v37[1];
      sub_1000B56A0();
      result = sub_1000B5FE0();
      v19 = v55;
      v40 = -1 << *(v55 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v26 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v26 + 8 * v42);
          if (v46 != -1)
          {
            v27 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v41) & ~*(v26 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      result = sub_100089074(v33, v19[6] + v27 * v59, _s3TagVMa);
      ++v19[2];
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v20 >= v25)
      {
        break;
      }

      v30 = v21[v20];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v24 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    v47 = 1 << *(v16 + 32);
    if (v47 >= 64)
    {
      bzero(v21, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v47;
    }

    v2 = v49;
    *(v16 + 16) = 0;
  }

  *v2 = v19;
  return result;
}

uint64_t sub_100085680(uint64_t a1)
{
  v2 = v1;
  v52 = sub_1000B4DB0();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v52);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MarkdownStyle(0);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v51 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v15 = *(*v2 + 24);
  }

  sub_100030480(&qword_1001080A8, &qword_1000CCEC8);
  result = sub_1000B5BE0();
  v17 = result;
  if (*(v14 + 16))
  {
    v46 = v2;
    v47 = v7;
    v18 = 0;
    v19 = (v14 + 56);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 56);
    v23 = (v20 + 63) >> 6;
    v48 = v14;
    v49 = (v4 + 48);
    v44 = (v4 + 8);
    v45 = (v4 + 32);
    v24 = result + 56;
    while (v22)
    {
      v31 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_19:
      v34 = *(v14 + 48);
      v35 = *(v50 + 72);
      sub_100089074(v34 + v35 * (v31 | (v18 << 6)), v13, type metadata accessor for MarkdownStyle);
      v36 = *(v17 + 40);
      sub_1000B5FB0();
      v37 = v51;
      sub_100088FAC(v13, v51, type metadata accessor for MarkdownStyle);
      v38 = (*v49)(v37, 6, v52);
      if (v38 <= 2)
      {
        if (v38)
        {
          if (v38 == 1)
          {
            sub_1000B5FC0(0);
          }

          else
          {
            sub_1000B5FC0(1uLL);
          }
        }

        else
        {
          v25 = v52;
          (*v45)(v47, v51, v52);
          sub_1000B5FC0(6uLL);
          sub_1000886A4(&unk_100107790, &type metadata accessor for URL);
          v26 = v47;
          sub_1000B55A0();
          (*v44)(v26, v25);
        }
      }

      else if (v38 > 4)
      {
        if (v38 == 5)
        {
          sub_1000B5FC0(4uLL);
        }

        else
        {
          sub_1000B5FC0(5uLL);
        }
      }

      else if (v38 == 3)
      {
        sub_1000B5FC0(2uLL);
      }

      else
      {
        sub_1000B5FC0(3uLL);
      }

      result = sub_1000B5FE0();
      v27 = -1 << *(v17 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v24 + 8 * (v28 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v27) >> 6;
        while (++v29 != v40 || (v39 & 1) == 0)
        {
          v41 = v29 == v40;
          if (v29 == v40)
          {
            v29 = 0;
          }

          v39 |= v41;
          v42 = *(v24 + 8 * v29);
          if (v42 != -1)
          {
            v30 = __clz(__rbit64(~v42)) + (v29 << 6);
            goto LABEL_11;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v28) & ~*(v24 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v24 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      result = sub_100089074(v13, *(v17 + 48) + v30 * v35, type metadata accessor for MarkdownStyle);
      ++*(v17 + 16);
      v14 = v48;
    }

    v32 = v18;
    while (1)
    {
      v18 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v18 >= v23)
      {
        break;
      }

      v33 = v19[v18];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v22 = (v33 - 1) & v33;
        goto LABEL_19;
      }
    }

    v43 = 1 << *(v14 + 32);
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    v2 = v46;
    *(v14 + 16) = 0;
  }

  *v2 = v17;
  return result;
}

Swift::Int sub_100085B74(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100084F20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100086AE8();
      goto LABEL_16;
    }

    sub_100086E78(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1000B5FB0();
  sub_1000B56A0();
  result = sub_1000B5FE0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000B5F20();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000B5F40();
  __break(1u);
  return result;
}

uint64_t sub_100085CF4(uint64_t a1, unint64_t a2, char a3)
{
  v62 = a1;
  v61 = sub_100030480(&qword_100108070, &unk_1000CCE98);
  v6 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v8 = &v45 - v7;
  v52 = _s3TagVMa();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v52);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000B4EA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v45 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v46 = v3;
  v45 = v9;
  if (v24 > v23 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_100085180(v23 + 1);
  }

  else
  {
    if (v24 > v23)
    {
      sub_100086C70(_s3TagVMa, &qword_100108088, &qword_1000CCEA8, _s3TagVMa);
      goto LABEL_27;
    }

    sub_1000870B0(v23 + 1);
  }

  v59 = *v3;
  v25 = *(v59 + 40);
  sub_1000B5FB0();
  sub_100030C74(v62, v22, &qword_100106E38, &unk_1000CB730);
  v57 = *(v14 + 48);
  v58 = v14 + 48;
  if (v57(v22, 1, v13) == 1)
  {
    sub_1000B5FD0(0);
  }

  else
  {
    v26 = v48;
    (*(v14 + 32))(v48, v22, v13);
    sub_1000B5FD0(1u);
    sub_1000886A4(&qword_100108078, &type metadata accessor for Date);
    sub_1000B55A0();
    (*(v14 + 8))(v26, v13);
  }

  v27 = (v62 + *(v52 + 20));
  v28 = *v27;
  v53 = v27[1];
  v54 = v28;
  sub_1000B56A0();
  v29 = sub_1000B5FE0();
  v30 = -1 << *(v59 + 32);
  a2 = v29 & ~v30;
  v56 = v59 + 56;
  if ((*(v59 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v55 = ~v30;
    v47 = (v14 + 32);
    v31 = *(v9 + 72);
    v51 = (v14 + 8);
    v50 = v12;
    v49 = v31;
    do
    {
      sub_100088FAC(*(v59 + 48) + v31 * a2, v12, _s3TagVMa);
      v32 = *(v61 + 48);
      sub_100030C74(v12, v8, &qword_100106E38, &unk_1000CB730);
      sub_100030C74(v62, &v8[v32], &qword_100106E38, &unk_1000CB730);
      v33 = v57;
      if (v57(v8, 1, v13) == 1)
      {
        if (v33(&v8[v32], 1, v13) != 1)
        {
          goto LABEL_14;
        }

        sub_100036320(v8, &qword_100106E38, &unk_1000CB730);
      }

      else
      {
        v34 = v60;
        sub_100030C74(v8, v60, &qword_100106E38, &unk_1000CB730);
        if (v33(&v8[v32], 1, v13) == 1)
        {
          (*v51)(v34, v13);
          v31 = v49;
          v12 = v50;
LABEL_14:
          sub_100036320(v8, &qword_100108070, &unk_1000CCE98);
          goto LABEL_15;
        }

        v35 = v48;
        (*v47)(v48, &v8[v32], v13);
        sub_1000886A4(&qword_100108080, &type metadata accessor for Date);
        v36 = sub_1000B55E0();
        v37 = *v51;
        (*v51)(v35, v13);
        v37(v60, v13);
        sub_100036320(v8, &qword_100106E38, &unk_1000CB730);
        v31 = v49;
        v12 = v50;
        if ((v36 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v38 = &v12[*(v52 + 20)];
      v39 = *v38 == v54 && *(v38 + 1) == v53;
      if (v39 || (sub_1000B5F20() & 1) != 0)
      {
        sub_100089014(v12, _s3TagVMa);
        sub_1000B5F40();
        __break(1u);
        break;
      }

LABEL_15:
      sub_100089014(v12, _s3TagVMa);
      a2 = (a2 + 1) & v55;
    }

    while (((*(v56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v40 = *v46;
  *(*v46 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100089074(v62, *(v40 + 48) + *(v45 + 72) * a2, _s3TagVMa);
  v42 = *(v40 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v44;
  }

  return result;
}

uint64_t sub_100086434(uint64_t a1, unint64_t a2, char a3)
{
  v55 = a1;
  v6 = sub_1000B4DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100030480(&qword_1001080A0, &qword_1000CCEC0);
  v11 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v13 = &v42 - v12;
  v14 = type metadata accessor for MarkdownStyle(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v21 = &v42 - v20;
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  v51 = v15;
  v52 = v3;
  if (v23 <= v22 || (a3 & 1) == 0)
  {
    v49 = v19;
    if (a3)
    {
      v43 = v18;
      sub_100085680(v22 + 1);
    }

    else
    {
      if (v23 > v22)
      {
        sub_100086C70(type metadata accessor for MarkdownStyle, &qword_1001080A8, &qword_1000CCEC8, type metadata accessor for MarkdownStyle);
        goto LABEL_34;
      }

      v43 = v18;
      sub_100087588(v22 + 1);
    }

    v24 = *v3;
    v25 = *(*v3 + 40);
    sub_1000B5FB0();
    sub_1000997C4();
    v26 = sub_1000B5FE0();
    v27 = -1 << *(v24 + 32);
    a2 = v26 & ~v27;
    v50 = v24 + 56;
    if ((*(v24 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = v10;
      v53 = ~v27;
      v28 = *(v15 + 72);
      v29 = (v7 + 48);
      v48 = (v7 + 8);
      v44 = (v7 + 32);
      v45 = v28;
      v30 = v50;
      while (1)
      {
        sub_100088FAC(*(v24 + 48) + v28 * a2, v21, type metadata accessor for MarkdownStyle);
        v31 = *(v54 + 48);
        sub_100088FAC(v21, v13, type metadata accessor for MarkdownStyle);
        sub_100088FAC(v55, &v13[v31], type metadata accessor for MarkdownStyle);
        v32 = *v29;
        v33 = (*v29)(v13, 6, v6);
        if (v33 > 2)
        {
          if (v33 > 4)
          {
            if (v33 == 5)
            {
              sub_100089014(v21, type metadata accessor for MarkdownStyle);
              if (v32(&v13[v31], 6, v6) == 5)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_100089014(v21, type metadata accessor for MarkdownStyle);
              if (v32(&v13[v31], 6, v6) == 6)
              {
                goto LABEL_37;
              }
            }
          }

          else if (v33 == 3)
          {
            sub_100089014(v21, type metadata accessor for MarkdownStyle);
            if (v32(&v13[v31], 6, v6) == 3)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_100089014(v21, type metadata accessor for MarkdownStyle);
            if (v32(&v13[v31], 6, v6) == 4)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_29;
        }

        if (v33)
        {
          break;
        }

        v34 = v49;
        sub_100088FAC(v13, v49, type metadata accessor for MarkdownStyle);
        if (v32(&v13[v31], 6, v6))
        {
          sub_100089014(v21, type metadata accessor for MarkdownStyle);
          (*v48)(v34, v6);
          v30 = v50;
LABEL_29:
          sub_100036320(v13, &qword_1001080A0, &qword_1000CCEC0);
          goto LABEL_30;
        }

        v35 = v46;
        (*v44)(v46, &v13[v31], v6);
        v47 = sub_1000B4D40();
        v36 = *v48;
        (*v48)(v35, v6);
        sub_100089014(v21, type metadata accessor for MarkdownStyle);
        v36(v34, v6);
        v28 = v45;
        v30 = v50;
        if (v47)
        {
          goto LABEL_37;
        }

        sub_100089014(v13, type metadata accessor for MarkdownStyle);
LABEL_30:
        a2 = (a2 + 1) & v53;
        if (((*(v30 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (v33 == 1)
      {
        sub_100089014(v21, type metadata accessor for MarkdownStyle);
        if (v32(&v13[v31], 6, v6) == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_100089014(v21, type metadata accessor for MarkdownStyle);
        if (v32(&v13[v31], 6, v6) == 2)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_34:
  v37 = *v52;
  *(*v52 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100089074(v55, *(v37 + 48) + *(v51 + 72) * a2, type metadata accessor for MarkdownStyle);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_37:
    sub_100089014(v13, type metadata accessor for MarkdownStyle);
    result = sub_1000B5F40();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

void *sub_100086AE8()
{
  v1 = v0;
  sub_100030480(&qword_1001080B8, &unk_1000CCED0);
  v2 = *v0;
  v3 = sub_1000B5BD0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_100086C70(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v30 - v12;
  sub_100030480(a2, a3);
  v14 = *v4;
  v15 = sub_1000B5BD0();
  v16 = v15;
  if (*(v14 + 16))
  {
    v31 = v8;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v10 + 72) * (v26 | (v20 << 6));
        sub_100088FAC(*(v14 + 48) + v29, v13, a4);
        result = sub_100089074(v13, *(v16 + 48) + v29, a4);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v31;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

uint64_t sub_100086E78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100030480(&qword_1001080B8, &unk_1000CCED0);
  result = sub_1000B5BE0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1000B5FB0();

      sub_1000B56A0();
      result = sub_1000B5FE0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1000870B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000B4EA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v47 - v10;
  v12 = _s3TagVMa();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  __chkstk_darwin(v12);
  v58 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v16 = *(*v2 + 24);
  }

  sub_100030480(&qword_100108088, &qword_1000CCEA8);
  result = sub_1000B5BE0();
  v18 = result;
  if (*(v15 + 16))
  {
    v55 = v4;
    v48 = v2;
    v19 = 0;
    v20 = v15 + 56;
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 56);
    v24 = (v21 + 63) >> 6;
    v53 = (v5 + 48);
    v54 = v15;
    v49 = (v5 + 8);
    v50 = (v5 + 32);
    v25 = result + 56;
    v51 = v12;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = *(v15 + 48);
      v57 = *(v56 + 72);
      v31 = v58;
      sub_100088FAC(v30 + v57 * (v27 | (v19 << 6)), v58, _s3TagVMa);
      v32 = *(v18 + 40);
      sub_1000B5FB0();
      sub_100030C74(v31, v11, &qword_100106E38, &unk_1000CB730);
      v33 = v55;
      if ((*v53)(v11, 1, v55) == 1)
      {
        sub_1000B5FD0(0);
      }

      else
      {
        v34 = v11;
        v35 = v52;
        (*v50)(v52, v34, v33);
        sub_1000B5FD0(1u);
        sub_1000886A4(&qword_100108078, &type metadata accessor for Date);
        sub_1000B55A0();
        v36 = v35;
        v11 = v34;
        v12 = v51;
        (*v49)(v36, v33);
      }

      v37 = (v58 + *(v12 + 20));
      v38 = *v37;
      v39 = v37[1];
      sub_1000B56A0();
      result = sub_1000B5FE0();
      v40 = -1 << *(v18 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v15 = v54;
      if (((-1 << v41) & ~*(v25 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v25 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v25 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_100089074(v58, *(v18 + 48) + v26 * v57, _s3TagVMa);
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v2 = v48;
        goto LABEL_31;
      }

      v29 = *(v20 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100087588(uint64_t a1)
{
  v2 = v1;
  v54 = sub_1000B4DB0();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v54);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MarkdownStyle(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v46 - v12;
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  sub_100030480(&qword_1001080A8, &qword_1000CCEC8);
  result = sub_1000B5BE0();
  v16 = result;
  if (*(v13 + 16))
  {
    v49 = v2;
    v17 = 0;
    v18 = v13 + 56;
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v51 = v13;
    v52 = (v4 + 48);
    v47 = (v4 + 8);
    v48 = (v4 + 32);
    v23 = result + 56;
    while (v21)
    {
      v32 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_20:
      v35 = *(v8 + 72);
      v36 = *(v13 + 48) + v35 * (v32 | (v17 << 6));
      v37 = v55;
      sub_100088FAC(v36, v55, type metadata accessor for MarkdownStyle);
      v38 = *(v16 + 40);
      sub_1000B5FB0();
      v39 = v37;
      v40 = v53;
      sub_100088FAC(v39, v53, type metadata accessor for MarkdownStyle);
      v41 = (*v52)(v40, 6, v54);
      if (v41 <= 2)
      {
        if (v41)
        {
          if (v41 == 1)
          {
            sub_1000B5FC0(0);
          }

          else
          {
            sub_1000B5FC0(1uLL);
          }
        }

        else
        {
          v24 = *v48;
          v25 = v54;
          v46 = v8;
          v26 = v50;
          v24();
          sub_1000B5FC0(6uLL);
          sub_1000886A4(&unk_100107790, &type metadata accessor for URL);
          sub_1000B55A0();
          v27 = v26;
          v8 = v46;
          (*v47)(v27, v25);
        }
      }

      else if (v41 > 4)
      {
        if (v41 == 5)
        {
          sub_1000B5FC0(4uLL);
        }

        else
        {
          sub_1000B5FC0(5uLL);
        }
      }

      else if (v41 == 3)
      {
        sub_1000B5FC0(2uLL);
      }

      else
      {
        sub_1000B5FC0(3uLL);
      }

      result = sub_1000B5FE0();
      v28 = -1 << *(v16 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v23 + 8 * (v29 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v28) >> 6;
        while (++v30 != v43 || (v42 & 1) == 0)
        {
          v44 = v30 == v43;
          if (v30 == v43)
          {
            v30 = 0;
          }

          v42 |= v44;
          v45 = *(v23 + 8 * v30);
          if (v45 != -1)
          {
            v31 = __clz(__rbit64(~v45)) + (v30 << 6);
            goto LABEL_12;
          }
        }

        goto LABEL_43;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v23 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_12:
      *(v23 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      result = sub_100089074(v55, *(v16 + 48) + v31 * v35, type metadata accessor for MarkdownStyle);
      ++*(v16 + 16);
      v13 = v51;
    }

    v33 = v17;
    while (1)
    {
      v17 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v2 = v49;
        goto LABEL_41;
      }

      v34 = *(v18 + 8 * v17);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v21 = (v34 - 1) & v34;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {

LABEL_41:
    *v2 = v16;
  }

  return result;
}

void *sub_100087A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100030480(&qword_100108058, &qword_1000CCE90);
    v3 = sub_1000B5BF0();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1000B5620();
      sub_1000B5FB0();
      v29 = v7;
      sub_1000B56A0();
      v9 = sub_1000B5FE0();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1000B5620();
        v20 = v19;
        if (v18 == sub_1000B5620() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1000B5F20();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100087C54(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000B5840();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100083FB4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100087CEC(uint64_t a1)
{
  v2 = _s3TagVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_1000886A4(&qword_100108068, _s3TagVMa);
  result = sub_1000B5840();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_100088FAC(v12, v7, _s3TagVMa);
      sub_100084104(v9, v7);
      sub_100089014(v9, _s3TagVMa);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_100087E7C(uint64_t a1)
{
  v2 = type metadata accessor for MarkdownStyle(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_1000886A4(&qword_1001080B0, type metadata accessor for MarkdownStyle);
  result = sub_1000B5840();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_100088FAC(v12, v7, type metadata accessor for MarkdownStyle);
      sub_100084878(v9, v7);
      sub_100089014(v9, type metadata accessor for MarkdownStyle);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

void *sub_10008800C(uint64_t a1)
{
  v2 = sub_1000B4DB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100030480(&qword_100108098, &qword_1000CCEB8);
    v10 = sub_1000B5BF0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1000886A4(&unk_100107790, &type metadata accessor for URL);
      v18 = sub_1000B5590();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1000886A4(&qword_100107B48, &type metadata accessor for URL);
          v25 = sub_1000B55E0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10008832C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  v5 = a2[1];
  *(v4 + 24) = *a2;
  *(v4 + 104) = 0;
  *(v4 + 112) = 32;
  *(v4 + 120) = 0;
  *(v4 + 16) = a1;
  *(v4 + 40) = v5;
  *(v4 + 56) = a2[2];
  *(v4 + 69) = *(a2 + 45);
  *(v4 + 88) = a3;
  *(v4 + 96) = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_100072B30();
  return v4;
}

uint64_t sub_10008839C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000884B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1000884D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000884F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 61))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_10008855C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000885F4()
{
  v1 = *(v0 + 16);
  v2 = *(*(*(v0 + 24) + OBJC_IVAR___ICArchiveExporter_exporter) + 84);
  v3 = v1;
  return sub_1000B50D0();
}

uint64_t sub_1000886A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100088704(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100088768()
{
  result = qword_100108038;
  if (!qword_100108038)
  {
    sub_1000362AC(255, &qword_100108030, NSManagedObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108038);
  }

  return result;
}

uint64_t sub_1000887D0()
{
  v1 = *v0;
  sub_1000886A4(&qword_100108018, &type metadata accessor for ICModernObjectProvider);
  return sub_1000B5030();
}

uint64_t sub_100088874(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000888C8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_1000B56C0();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_100088964(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

__n128 sub_1000889E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100088A78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10007816C() & 1;
}

uint64_t sub_100088A98(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_100088AD0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_100078824(a1, v2, v3);
}

uint64_t sub_100088AFC()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100088B34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000B5030();
}

id sub_100088B5C(void *a1, _OWORD *a2)
{
  v4 = sub_1000B51C0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  v8 = sub_1000B51A0();
  v9 = [objc_opt_self() defaultManager];
  sub_100030480(&qword_100108090, &qword_1000CCEB0);
  v10 = swift_allocObject();
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0u;
  v11 = a2[1];
  *(v10 + 24) = *a2;
  *(v10 + 104) = 0;
  *(v10 + 112) = 32;
  *(v10 + 120) = 0;
  *(v10 + 16) = v8;
  *(v10 + 40) = v11;
  *(v10 + 56) = a2[2];
  *(v10 + 69) = *(a2 + 45);
  *(v10 + 88) = v9;
  *(v10 + 96) = &protocol witness table for NSFileManager;

  v12 = v9;
  sub_1000729C4();

  v13 = type metadata accessor for ICArchiveExporterObjCBridge();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___ICArchiveExporter_exporter] = v10;
  v17.receiver = v14;
  v17.super_class = v13;

  v15 = objc_msgSendSuper2(&v17, "init");

  return v15;
}

uint64_t sub_100088CB8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100088CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100088D10()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100088D48()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_10008354C();
}

void sub_100088D54()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_100106A80 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_100112C30;
    v4 = unk_100112C38;
    v6 = xmmword_100112C40;

    v7 = 0;
    v8 = v3;
    v9 = v5;
    v10 = v4;
    v11 = v6;
    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v13 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v14 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v15 = 256;
    sub_100088B5C(v2, &v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_100088E84()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0 && (v1 = v0, v2 = [v0 snapshotManagedObjectContext], v1, v2))
  {
    if (qword_100106A80 != -1)
    {
      swift_once();
    }

    v3 = static ICArchiveCreator.default;
    v5 = qword_100112C30;
    v4 = unk_100112C38;
    v6 = xmmword_100112C40;

    IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v8 = 513;
    v9 = v3;
    v10 = v5;
    v11 = v4;
    v12 = v6;
    v13 = IsAlexandriaDemoModeEnabled;
    v14 = 1;
    v15 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
    v16 = 0;
    sub_100088B5C(v2, &v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100088FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100089014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100089074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000890DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_10007629C(a1, a2);
}

__int128 *ICArchiveCreator.default.unsafeMutableAddressor()
{
  if (qword_100106A80 != -1)
  {
    swift_once();
  }

  return &static ICArchiveCreator.default;
}

uint64_t ICArchiveCreator.softwareIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ICArchiveCreator.softwareIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersionName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ICArchiveCreator.softwareVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ICArchiveCreator.softwareVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double sub_100089360()
{
  sub_1000897A8(v1);
  static ICArchiveCreator.default = v1[0];
  *&qword_100112C30 = v1[1];
  result = *&v2;
  xmmword_100112C40 = v2;
  return result;
}

uint64_t static ICArchiveCreator.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100106A80 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *(&xmmword_100112C40 + 1);
  *a1 = static ICArchiveCreator.default;
  *(a1 + 8) = *(&static ICArchiveCreator.default + 8);
  *(a1 + 24) = unk_100112C38;
  *(a1 + 40) = v1;
}

unint64_t sub_100089440()
{
  v1 = 0x6572617774666F73;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1000894AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100089A5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000894E0(uint64_t a1)
{
  v2 = sub_1000896F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008951C(uint64_t a1)
{
  v2 = sub_1000896F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ICArchiveCreator.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_1001080C0, &qword_1000CCEE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000896F8();
  sub_1000B6020();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1000B5E20();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_1000B5E20();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_1000B5E20();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000896F8()
{
  result = qword_1001080C8;
  if (!qword_1001080C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080C8);
  }

  return result;
}

double ICArchiveCreator.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100089B8C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void sub_1000897A8(uint64_t *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v26 = sub_1000B5620();
    v6 = v5;
  }

  else
  {
    v26 = 0;
    v6 = 0;
  }

  v7 = [v2 mainBundle];
  v8 = [v7 infoDictionary];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = sub_1000B5580();

  if (!*(v9 + 16) || (v10 = sub_10006320C(0xD00000000000001ALL, 0x80000001000C6AC0), (v11 & 1) == 0))
  {

LABEL_14:
    v13 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  sub_100030378(*(v9 + 56) + 32 * v10, v29);

  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v27;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v28;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  v15 = [v2 mainBundle];
  v16 = [v15 infoDictionary];

  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = sub_1000B5580();

  if (kCFBundleVersionKey)
  {
    v18 = sub_1000B5620();
    if (*(v17 + 16))
    {
      v20 = sub_10006320C(v18, v19);
      v22 = v21;

      if (v22)
      {
        sub_100030378(*(v17 + 56) + 32 * v20, v29);

        v23 = swift_dynamicCast();
        v24 = v27;
        v25 = v28;
        if (!v23)
        {
          v24 = 0;
          v25 = 0;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_23:
    v24 = 0;
    v25 = 0;
LABEL_24:
    *a1 = v26;
    a1[1] = v6;
    a1[2] = v13;
    a1[3] = v14;
    a1[4] = v24;
    a1[5] = v25;
    return;
  }

  __break(1u);
}

uint64_t sub_100089A5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001000C79C0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000C79E0 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v5 = sub_1000B5F20();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100089B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_100030480(&qword_1001080E8, &qword_1000CD098);
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];

  v9 = [v7 mainBundle];
  v10 = [v9 infoDictionary];

  if (v10)
  {
    v11 = sub_1000B5580();

    if (!*(v11 + 16) || (v12 = sub_10006320C(0xD00000000000001ALL, 0x80000001000C6AC0), (v13 & 1) == 0) || (sub_100030378(*(v11 + 56) + 32 * v12, v38), , (swift_dynamicCast() & 1) != 0))
    {
    }
  }

  v14 = [v7 mainBundle];
  v15 = [v14 infoDictionary];

  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = sub_1000B5580();

  result = kCFBundleVersionKey;
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v18 = sub_1000B5620();
  if (*(v16 + 16))
  {
    v20 = sub_10006320C(v18, v19);
    v22 = v21;

    if (v22)
    {
      sub_100030378(*(v16 + 56) + 32 * v20, v38);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

LABEL_14:
  v23 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_1000896F8();
  v24 = v39;
  sub_1000B6010();
  if (v24)
  {
    return sub_100035DA8(a1);
  }

  v38[0] = 0;
  v25 = sub_1000B5D70();
  v27 = v26;
  v28 = v25;
  v38[0] = 1;
  v29 = sub_1000B5D70();
  v31 = v30;
  v39 = v29;
  v38[0] = 2;
  v32 = sub_1000B5D70();
  v34 = v33;
  (*(v37 + 8))(v6, v3);
  result = sub_100035DA8(a1);
  v35 = v36;
  *v36 = v28;
  v35[1] = v27;
  v35[2] = v39;
  v35[3] = v31;
  v35[4] = v32;
  v35[5] = v34;
  return result;
}

__n128 sub_100089FA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100089FB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_10008A014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10008A098()
{
  result = qword_1001080D0;
  if (!qword_1001080D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080D0);
  }

  return result;
}

unint64_t sub_10008A0F0()
{
  result = qword_1001080D8;
  if (!qword_1001080D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080D8);
  }

  return result;
}

unint64_t sub_10008A148()
{
  result = qword_1001080E0;
  if (!qword_1001080E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080E0);
  }

  return result;
}

Swift::Int ICMarkdownFlavor.hashValue.getter(unsigned __int8 a1)
{
  sub_1000B5FB0();
  sub_1000B5FC0(a1);
  return sub_1000B5FE0();
}

unint64_t sub_10008A220()
{
  result = qword_1001080F0;
  if (!qword_1001080F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001080F0);
  }

  return result;
}

void sub_10008A284(void *a1)
{
  [a1 setIsPasswordProtected:1];
  [a1 setCryptoIterationCount:*v1];
  v3 = v1[1];
  v4 = v1[2];
  isa = sub_1000B4DE0().super.isa;
  [a1 setCryptoSalt:isa];

  v6 = v1[3];
  v7 = v1[4];
  v8 = sub_1000B4DE0().super.isa;
  [a1 setCryptoInitializationVector:v8];

  v9 = v1[5];
  v10 = v1[6];
  v11 = sub_1000B4DE0().super.isa;
  [a1 setCryptoTag:v11];

  v12 = v1[7];
  v13 = v1[8];
  v14 = sub_1000B4DE0().super.isa;
  [a1 setCryptoWrappedKey:v14];

  v15 = v1[9];
  v16 = v1[10];
  v17 = sub_1000B55F0();
  [a1 setPasswordHint:v17];
}

uint64_t sub_10008A39C(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_100108108, &qword_1000CD3E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8 - 8];
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10008B420();
  sub_1000B6020();
  v11 = *v3;
  LOBYTE(v18) = 0;
  sub_1000B5EC0();
  if (!v2)
  {
    v23 = *(v3 + 1);
    v18 = *(v3 + 1);
    v17 = 1;
    sub_10008B4A4(&v23, v16);
    sub_100054748();
    sub_1000B5EB0();
    sub_1000449D4(v18, *(&v18 + 1));
    v22 = *(v3 + 3);
    v18 = *(v3 + 3);
    v17 = 2;
    sub_10008B4A4(&v22, v16);
    sub_1000B5EB0();
    sub_1000449D4(v18, *(&v18 + 1));
    v21 = *(v3 + 5);
    v18 = *(v3 + 5);
    v17 = 3;
    sub_10008B4A4(&v21, v16);
    sub_1000B5EB0();
    sub_1000449D4(v18, *(&v18 + 1));
    v20 = *(v3 + 7);
    v18 = *(v3 + 7);
    v17 = 4;
    sub_10008B4A4(&v20, v16);
    sub_1000B5EB0();
    sub_1000449D4(v18, *(&v18 + 1));
    v13 = v3[9];
    v14 = v3[10];
    LOBYTE(v18) = 5;
    sub_1000B5E70();
    v18 = *(v3 + 11);
    v19 = v18;
    v17 = 6;
    sub_10008B4A4(&v19, v16);
    sub_1000B5EB0();
    sub_1000449D4(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10008A6C0()
{
  v1 = *v0;
  v2 = 0x6F69746172657469;
  v3 = 0x64726F7773736170;
  if (v1 != 5)
  {
    v3 = 1635017060;
  }

  v4 = 6775156;
  if (v1 != 3)
  {
    v4 = 0x4B64657070617277;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1953259891;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008A7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008AB8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008A7D4(uint64_t a1)
{
  v2 = sub_10008B420();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008A810(uint64_t a1)
{
  v2 = sub_10008B420();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10008A84C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008ADF0(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

void sub_10008A8C4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ([a1 isPasswordProtected])
  {
    v35 = a3;
    v34 = [a1 cryptoIterationCount];
    v8 = [a1 cryptoSalt];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1000B4DF0();
      v32 = v11;
      v33 = v10;
    }

    else
    {
      v32 = 0xC000000000000000;
      v33 = 0;
    }

    v12 = [a1 cryptoInitializationVector];
    if (v12)
    {
      v13 = v12;
      v31 = sub_1000B4DF0();
      v15 = v14;
    }

    else
    {
      v31 = 0;
      v15 = 0xC000000000000000;
    }

    v16 = [a1 cryptoTag];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1000B4DF0();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xC000000000000000;
    }

    v21 = [a1 cryptoWrappedKey];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1000B4DF0();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xC000000000000000;
    }

    v26 = [a1 passwordHint];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1000B5620();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    *a4 = v34;
    a4[1] = v33;
    a4[2] = v32;
    a4[3] = v31;
    a4[4] = v15;
    a4[5] = v18;
    a4[6] = v20;
    a4[7] = v23;
    a4[8] = v25;
    a4[9] = v28;
    a4[10] = v30;
    a4[11] = a2;
    a4[12] = v35;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008AA94(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10008AAB0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10008AADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008AB24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008AB8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746172657469 && a2 == 0xEE00746E756F436ELL;
  if (v4 || (sub_1000B5F20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953259891 && a2 == 0xE400000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000C7A00 == a2 || (sub_1000B5F20() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_1000B5F20() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4B64657070617277 && a2 == 0xEA00000000007965 || (sub_1000B5F20() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xEC000000746E6948 || (sub_1000B5F20() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1000B5F20();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_10008ADF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100030480(&qword_1001080F8, &qword_1000CD3D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10008B420();
  sub_1000B6010();
  if (v2)
  {
    return sub_100035DA8(a1);
  }

  LOBYTE(v43) = 0;
  v11 = sub_1000B5E10();
  LOBYTE(v36) = 1;
  sub_1000545EC();
  sub_1000B5E00();
  v34 = v43;
  v35 = v44;
  LOBYTE(v36) = 2;
  sub_1000B5E00();
  v30 = v43;
  v31 = v44;
  LOBYTE(v36) = 3;
  sub_1000B5E00();
  v28 = v43;
  v29 = v44;
  LOBYTE(v36) = 4;
  sub_1000B5E00();
  v32 = v43;
  v33 = v44;
  LOBYTE(v43) = 5;
  v25 = sub_1000B5DC0();
  v27 = v12;
  v58 = 6;
  sub_1000B5E00();
  v26 = 0;
  (*(v6 + 8))(v9, v5);
  v24 = v56;
  v23 = v57;
  *&v36 = v11;
  v13 = v34;
  *(&v36 + 1) = v34;
  v14 = v35;
  *&v37 = v35;
  v15 = v30;
  *(&v37 + 1) = v30;
  v16 = v31;
  *&v38 = v31;
  v17 = v28;
  *(&v38 + 1) = v28;
  v18 = v29;
  *&v39 = v29;
  *(&v39 + 1) = v32;
  *&v40 = v33;
  *(&v40 + 1) = v25;
  *&v41 = v27;
  *(&v41 + 1) = v56;
  v42 = v57;
  sub_10004D408(&v36, &v43);
  sub_100035DA8(a1);
  v43 = v11;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  v47 = v16;
  v48 = v17;
  v49 = v18;
  v50 = v32;
  v51 = v33;
  v52 = v25;
  v53 = v27;
  v54 = v24;
  v55 = v23;
  result = sub_10008B474(&v43);
  v20 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v20;
  *(a2 + 96) = v42;
  v21 = v37;
  *a2 = v36;
  *(a2 + 16) = v21;
  v22 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v22;
  return result;
}

unint64_t sub_10008B420()
{
  result = qword_100108100;
  if (!qword_100108100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108100);
  }

  return result;
}

unint64_t sub_10008B514()
{
  result = qword_100108110;
  if (!qword_100108110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108110);
  }

  return result;
}

unint64_t sub_10008B56C()
{
  result = qword_100108118;
  if (!qword_100108118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108118);
  }

  return result;
}

unint64_t sub_10008B5C4()
{
  result = qword_100108120;
  if (!qword_100108120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108120);
  }

  return result;
}

id sub_10008B618(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a3;
  v78 = a4;
  v79 = a5;
  v83 = a2;
  v6 = _s14AudioRecordingV8FragmentVMa(0);
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v6 - 8);
  v77 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100030480(&qword_100106FD0, &qword_1000CAE50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v75 - v11;
  v13 = sub_1000B4F00();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v86 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v75 - v18;
  v20 = [a1 document];
  sub_1000B4EF0();
  v21 = objc_allocWithZone(ICTTAudioRecording);
  isa = sub_1000B4ED0().super.isa;
  v23 = [v21 initWithDocument:v20 identity:isa];

  v80 = *(v14 + 8);
  v80(v19, v13);
  v76 = a1;
  v24 = [a1 document];
  v25 = [v24 replica];

  v81 = v14 + 8;
  v82 = v13;
  if (v25)
  {
    sub_1000B4EE0();

    v26 = *(v14 + 32);
    v26(v12, v19, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v27 = v86;
    v26(v86, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v28 = v86;
    sub_1000B4EF0();
    v29 = (*(v14 + 48))(v12, 1, v13);
    v27 = v28;
    if (v29 != 1)
    {
      sub_10008E770(v12);
    }
  }

  v30 = v85;
  v31 = v85[1];
  v32 = v87;
  v33 = v79;
  if (v31)
  {
    v34 = v85[2];
    v35 = *v85;
    v36 = sub_10003088C(_swiftEmptyArrayStorage);
    v37 = sub_100090684(v36, v83, v84, v33, v35, v31, v34);
    if (v32)
    {
LABEL_12:
      v80(v27, v82);

      return v23;
    }

    v38 = v37;

    v39 = objc_allocWithZone(ICTTMergeableAttributedString);
    v40 = sub_1000B4ED0().super.isa;
    v41 = [v39 initWithReplicaID:v40];

    [v23 setTopLineSummary:v41];
    v42 = [v23 topLineSummary];
    if (v42)
    {
      v43 = v42;
      v44.super.isa = v38;
      sub_1000B5A70(v44, 0);
    }
  }

  v45 = v30[4];
  if (v45)
  {
    v46 = v30[5];
    v47 = v30[3];
    v48 = sub_10003088C(_swiftEmptyArrayStorage);
    v49 = sub_100090684(v48, v83, v84, v33, v47, v45, v46);
    if (v32)
    {
      goto LABEL_12;
    }

    v50 = v49;

    v51 = objc_allocWithZone(ICTTMergeableAttributedString);
    v52 = sub_1000B4ED0().super.isa;
    v53 = [v51 initWithReplicaID:v52];

    [v23 setSummary:v53];
    v54 = [v23 summary];
    if (v54)
    {
      v55 = v54;
      v56.super.isa = v50;
      sub_1000B5A70(v56, 0);
    }

    if (v30[7])
    {
      v57 = 0;
    }

    else
    {
      v57 = [objc_allocWithZone(NSNumber) initWithInteger:v30[6]];
    }

    [v23 setSummaryVersion:{v57, v75}];
  }

  if (v30[8])
  {
    v58 = v30[8];
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
  }

  v59 = v58[2];
  if (v59)
  {
    v87 = v32;
    v60 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v84 = v58;
    v61 = v58 + v60;
    v62 = *(v75 + 72);

    v64 = v76;
    v63 = v77;
    v65 = v23;
    v66 = v78;
    do
    {
      sub_10008E7D8(v61, v63, _s14AudioRecordingV8FragmentVMa);
      v67 = sub_10008DA70(v64, v66);
      sub_10008E840(v63, _s14AudioRecordingV8FragmentVMa);
      v68 = [v65 fragments];
      [v68 addObject:v67];

      v61 += v62;
      --v59;
    }

    while (v59);

    v30 = v85;
    v23 = v65;
  }

  else
  {
  }

  v69 = *(v30 + 72);
  v70 = v82;
  v71 = v86;
  if (v69 == 2)
  {
    v72 = 0;
  }

  else
  {
    v72 = [objc_allocWithZone(NSNumber) initWithBool:v69 & 1];
  }

  [v23 setCallRecording:{v72, v75}];

  if ((v30[11] & 1) == 0)
  {
    v73 = [objc_allocWithZone(NSNumber) initWithInteger:v30[10]];
    [v23 setCallType:v73];
  }

  v80(v71, v70);
  return v23;
}

uint64_t sub_10008BD34(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_1001082F0, &qword_1000CD6D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10008F7B8();
  sub_1000B6020();
  v19 = *v3;
  v20 = *(v3 + 2);
  v18 = 0;
  sub_10004E3B8();
  sub_1000B5E60();
  if (!v2)
  {
    v19 = *(v3 + 24);
    v20 = *(v3 + 5);
    v18 = 1;
    sub_1000B5E60();
    v11 = *(v3 + 6);
    v12 = *(v3 + 56);
    LOBYTE(v19) = 2;
    sub_1000B5E50();
    *&v19 = *(v3 + 8);
    v18 = 3;
    sub_100030480(&qword_1001082D8, &qword_1000CD6D0);
    sub_10008F80C(&qword_1001082F8, &qword_100108300);
    sub_1000B5E60();
    v13 = *(v3 + 72);
    LOBYTE(v19) = 4;
    sub_1000B5E30();
    v14 = *(v3 + 10);
    v15 = *(v3 + 88);
    LOBYTE(v19) = 5;
    sub_1000B5E50();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10008C008()
{
  v1 = *v0;
  v2 = 0x53656E694C706F74;
  v3 = 0x746E656D67617266;
  v4 = 0x65526C6C61437369;
  if (v1 != 4)
  {
    v4 = 0x657079546C6C6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7972616D6D7573;
  if (v1 != 1)
  {
    v5 = 0x567972616D6D7573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10008C0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008EF08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008C114(uint64_t a1)
{
  v2 = sub_10008F7B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008C150(uint64_t a1)
{
  v2 = sub_10008F7B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10008C18C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10008F124(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

void sub_10008C1F8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s14AudioRecordingV17TranscriptSegmentVMa(0);
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  __chkstk_darwin(v4);
  v7 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v73 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v68 - v12;
  v14 = sub_1000B4F00();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = _s14AudioRecordingV8FragmentVMa(0);
  v19 = *(v69 + 20);
  v20 = sub_1000B4EA0();
  v21 = *(v20 - 8);
  v77 = *(v21 + 56);
  v78 = v20;
  v76 = v21 + 56;
  v77(a2 + v19, 1, 1);
  v22 = [a1 identity];
  sub_1000B4EE0();

  v23 = sub_1000B4EC0();
  v25 = v24;
  (*(v15 + 8))(v18, v14);
  *a2 = v23;
  a2[1] = v25;
  v71 = a2;
  v26 = a1;
  v27 = [a1 createdDate];
  if (v27)
  {
    v28 = v27;
    sub_1000B4E70();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (v77)(v13, v29, 1, v78);
  sub_10004CDC8(v13, v71 + v19);
  v30 = [a1 transcript];
  v31 = [v30 allObjects];

  sub_1000B5190();
  v32 = sub_1000B57A0();

  v33 = v75;
  if (v32 >> 62)
  {
    v34 = sub_1000B5CF0();
    v70 = v26;
    if (v34)
    {
      goto LABEL_6;
    }

LABEL_28:

    v36 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v70 = v26;
  if (!v34)
  {
    goto LABEL_28;
  }

LABEL_6:
  v79 = _swiftEmptyArrayStorage;
  sub_100043490(0, v34 & ~(v34 >> 63), 0);
  if (v34 < 0)
  {
    __break(1u);
    return;
  }

  v35 = 0;
  v72 = v32 & 0xC000000000000001;
  v36 = v79;
  do
  {
    if (v72)
    {
      v37 = sub_1000B5C20();
    }

    else
    {
      v37 = *(v32 + 8 * v35 + 32);
    }

    v38 = v37;
    v39 = *(v33 + 20);
    (v77)(v7 + v39, 1, 1, v78);
    v40 = [v38 text];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1000B5620();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v45 = v73;
    *v7 = v42;
    v7[1] = v44;
    v46 = [v38 timestamp];
    if (v46)
    {
      v47 = v46;
      [v47 doubleValue];
      sub_1000B4E50();

      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    (v77)(v45, v48, 1, v78);
    sub_10004CDC8(v45, v7 + v39);
    v49 = [v38 duration];
    v50 = v49;
    if (v49)
    {
      [v49 doubleValue];
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    v33 = v75;
    v53 = v7 + *(v75 + 24);
    *v53 = v52;
    v53[8] = v50 == 0;
    v54 = [v38 speaker];
    if (v54)
    {
      v55 = v54;
      v56 = sub_1000B5620();
      v58 = v57;
    }

    else
    {

      v56 = 0;
      v58 = 0;
    }

    v59 = (v7 + *(v33 + 28));
    *v59 = v56;
    v59[1] = v58;
    v79 = v36;
    v61 = v36[2];
    v60 = v36[3];
    if (v61 >= v60 >> 1)
    {
      sub_100043490(v60 > 1, v61 + 1, 1);
      v36 = v79;
    }

    ++v35;
    v36[2] = v61 + 1;
    sub_10008E708(v7, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v61, _s14AudioRecordingV17TranscriptSegmentVMa);
  }

  while (v34 != v35);

LABEL_29:
  v63 = v69;
  v62 = v70;
  *(v71 + *(v69 + 24)) = v36;
  v64 = [v62 transcriptVersion];
  v65 = v64;
  if (v64)
  {
    v66 = [v64 integerValue];
  }

  else
  {
    v66 = 0;
  }

  v67 = v71 + *(v63 + 28);
  *v67 = v66;
  v67[8] = v65 == 0;
}

uint64_t sub_10008C840(void *a1)
{
  v3 = v1;
  v5 = sub_100030480(&qword_1001082B0, &qword_1000CD6C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10008EE18();
  sub_1000B6020();
  v11 = *v3;
  v12 = v3[1];
  v22 = 0;
  sub_1000B5E20();
  if (!v2)
  {
    v13 = _s14AudioRecordingV8FragmentVMa(0);
    v14 = v13[5];
    v21 = 1;
    sub_1000B4EA0();
    sub_10008EDD0(&qword_100107228, &type metadata accessor for Date);
    sub_1000B5E60();
    v20 = *(v3 + v13[6]);
    v19[15] = 2;
    sub_100030480(&qword_100108238, &qword_1000CD520);
    sub_10008EE6C(&qword_1001082B8, &qword_1001082C0);
    sub_1000B5E60();
    v15 = v3 + v13[7];
    v16 = *v15;
    v17 = v15[8];
    v19[14] = 3;
    sub_1000B5E50();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10008CAC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100030480(&qword_100106E38, &unk_1000CB730);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v31 - v5;
  v6 = sub_100030480(&qword_100108290, &qword_1000CD6B8);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = _s14AudioRecordingV8FragmentVMa(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 0;
  v14[1] = 0;
  v15 = v11[7];
  v16 = sub_1000B4EA0();
  v17 = *(*(v16 - 8) + 56);
  v34 = v15;
  v17(v14 + v15, 1, 1, v16);
  v18 = v11[8];
  *(v14 + v18) = 0;
  v19 = (v14 + v11[9]);
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a1[4];
  sub_1000458B4(a1, a1[3]);
  sub_10008EE18();
  v36 = v9;
  v21 = v39;
  sub_1000B6010();
  if (v21)
  {
    sub_100035DA8(a1);
  }

  else
  {
    v31 = v19;
    v32 = v18;
    v39 = a1;
    v23 = v35;
    v22 = v36;
    v44 = 0;
    *v14 = sub_1000B5D70();
    v14[1] = v24;
    v43 = 1;
    sub_10008EDD0(&qword_100107288, &type metadata accessor for Date);
    sub_1000B5DB0();
    sub_10004CDC8(v23, v14 + v34);
    sub_100030480(&qword_100108238, &qword_1000CD520);
    v42 = 2;
    sub_10008EE6C(&qword_1001082A0, &qword_1001082A8);
    sub_1000B5DB0();
    v26 = v37;
    *(v14 + v32) = v40;
    v41 = 3;
    v27 = sub_1000B5DA0();
    v29 = v28;
    (*(v26 + 8))(v22, v38);
    v30 = v31;
    *v31 = v27;
    *(v30 + 8) = v29 & 1;
    sub_10008E7D8(v14, v33, _s14AudioRecordingV8FragmentVMa);
    sub_100035DA8(v39);
  }

  return sub_10008E840(v14, _s14AudioRecordingV8FragmentVMa);
}