uint64_t sub_100638A58(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEEBF8);
  __chkstk_darwin(v4 - 8);
  v5 = sub_10079A6D4();
  __chkstk_darwin(v5 - 8);
  sub_1001F1160(&qword_100AE0A70);
  sub_10079A984();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10080B690;
  sub_10079A964();
  sub_10079A974();
  sub_10079A944();
  sub_10079A954();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_1002F6D6C(v6, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t sub_100638C20(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AD6730);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_10079A5B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_10079A5C4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100007840(v5, &qword_100AD6730);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    v13 = (*(v7 + 88))(v9, v6);
    if (v13 == enum case for Book.Content.ebook(_:))
    {
      (*(v7 + 96))(v9, v6);
      (*(v7 + 8))(v12, v6);
      return 0x6B6F6F6265;
    }

    else if (v13 == enum case for Book.Content.audiobook(_:))
    {
      (*(v7 + 96))(v9, v6);
      (*(v7 + 8))(v12, v6);
      return 0x6F6F626F69647561;
    }

    else
    {
      v15 = *(v7 + 8);
      v15(v12, v6);
      v15(v9, v6);
      return 0;
    }
  }

  return a2;
}

id sub_100638F88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookRecommendationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100639060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100009A34;

  return sub_10063177C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t type metadata accessor for CollectionRecommendationsConfiguration()
{
  result = qword_100AEECD8;
  if (!qword_100AEECD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100639198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionRecommendationsConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006391FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D7461657274 && a2 == 0xEB00000000444974;
  if (v4 || (sub_1007A3AB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965726F7473 && a2 == 0xE700000000000000 || (sub_1007A3AB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1007A3AB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001008E25D0 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001008E25F0 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF6465776F6C6C41 || (sub_1007A3AB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001008E2610 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001008E2650 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1007A3AB4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1006394B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100AEEDB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10000E3E8(a1, a1[3]);
  sub_10063C4B4();
  sub_1007A3CB4();
  if (v2)
  {
    return sub_1000074E0(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_1007A3974();
  v11 = v10;
  v12 = v9;
  LOBYTE(v33[0]) = 1;
  v13 = sub_1007A39A4();
  *(&v28 + 1) = v14;
  *&v28 = v13;
  LOBYTE(v29) = 2;
  sub_10063C508();
  sub_1007A39D4();
  v41 = LOBYTE(v33[0]);
  LOBYTE(v33[0]) = 3;
  v27 = sub_1007A39B4();
  LOBYTE(v33[0]) = 4;
  v26 = sub_1007A39B4();
  LOBYTE(v33[0]) = 5;
  v25 = sub_1007A39B4();
  sub_1001F1160(&unk_100AD61F0);
  LOBYTE(v29) = 6;
  sub_10063C63C(&qword_100AEED88);
  sub_1007A39D4();
  v24 = v33[0];
  v42 = 7;
  v15 = sub_1007A39C4();
  v23 = v27 & 1;
  v16 = v26 & 1;
  v26 = v25 & 1;
  v27 = v16;
  v17 = v15;
  (*(v6 + 8))(v8, v5);
  *&v29 = v12;
  *(&v29 + 1) = v11;
  v18 = v28;
  v30 = v28;
  v19 = v41;
  LOBYTE(v31) = v41;
  BYTE1(v31) = v23;
  BYTE2(v31) = v27;
  BYTE3(v31) = v26;
  *(&v31 + 1) = v24;
  v32 = v17;
  sub_10063C55C(&v29, v33);
  sub_1000074E0(a1);
  v33[0] = v12;
  v33[1] = v11;
  v34 = v18;
  v35 = v19;
  v36 = v23;
  v37 = v27;
  v38 = v26;
  v39 = v24;
  v40 = v17;
  result = sub_10063A2C8(v33);
  v21 = v30;
  *a2 = v29;
  *(a2 + 16) = v21;
  *(a2 + 32) = v31;
  *(a2 + 48) = v32;
  return result;
}

uint64_t sub_100639914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D7461657274 && a2 == 0xEB00000000444974;
  if (v4 || (sub_1007A3AB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965726F7473 && a2 == 0xE700000000000000 || (sub_1007A3AB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001008E25D0 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001008E25F0 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF6465776F6C6C41 || (sub_1007A3AB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001008E2610 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736B6F6F426E696DLL && a2 == 0xE800000000000000 || (sub_1007A3AB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B6F6F4278616DLL && a2 == 0xE800000000000000 || (sub_1007A3AB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001008E2630 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEF73657079546E6FLL || (sub_1007A3AB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001008E2650 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001008E2670 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001008E2690 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001008E26B0 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001008E26E0 == a2 || (sub_1007A3AB4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xEF646F6874654D65)
  {

    return 15;
  }

  else
  {
    v6 = sub_1007A3AB4();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

id sub_100639E1C()
{
  v0 = objc_opt_self();
  isa = sub_1007A2024().super.isa;
  v15 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v15];

  v3 = v15;
  if (v2)
  {
    v4 = sub_1007969D4();
    v6 = v5;

    sub_100796464();
    swift_allocObject();
    sub_100796454();
    sub_10063BDC4();
    sub_100796444();

    sub_10000ADCC(v4, v6);
    return v15;
  }

  else
  {
    v7 = v3;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1990 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AEEA88);
    swift_errorRetain();
    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to convert provided configuration dictionary to JSON: %@", v11, 0xCu);
      sub_100007840(v12, &unk_100AD9480);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_10063A218(uint64_t a1)
{
  v2 = type metadata accessor for CollectionRecommendationsConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10063A274()
{
  result = qword_100AEEB70;
  if (!qword_100AEEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEB70);
  }

  return result;
}

uint64_t sub_10063A2F8(uint64_t a1)
{
  v4 = *(sub_10079A514() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_1006335EC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10063A448(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_1001F1160(&qword_100AE3180);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v38 - v7;
  v8 = sub_10079A734();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079A144();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10079A4E4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  v21 = sub_10079A4F4();
  if (*(v21 + 16) && (v22 = sub_1002ECD5C(a2), (v23 & 1) != 0))
  {
    (*(v15 + 16))(v17, *(v21 + 56) + *(v15 + 72) * v22, v14);

    (*(v15 + 32))(v20, v17, v14);
    v24 = sub_10079A4C4();
    v25 = enum case for ClusteringOptions.MediaType.mixed(_:);
    v38 = *(v11 + 104);
    v38(v13, enum case for ClusteringOptions.MediaType.mixed(_:), v10);
    v26 = sub_1003685A0(v13, v24);

    v27 = *(v11 + 8);
    v27(v13, v10);
    if (v26)
    {
      v38(v13, v25, v10);
      v28 = sub_10079A134();
      v27(v13, v10);
      (*(v15 + 8))(v20, v14);
      return v28;
    }

    v34 = v40;
    sub_100401E98(v41, v40);
    v36 = v42;
    v35 = v43;
    if ((*(v42 + 48))(v34, 1, v43) == 1)
    {
      (*(v15 + 8))(v20, v14);
      v32 = v34;
      goto LABEL_7;
    }

    v37 = v39;
    (*(v36 + 32))(v39, v34, v35);
    v33 = sub_10079A724();
    (*(v36 + 8))(v37, v35);
    (*(v15 + 8))(v20, v14);
  }

  else
  {

    sub_100401E98(v41, v5);
    v31 = v42;
    v30 = v43;
    if ((*(v42 + 48))(v5, 1, v43) == 1)
    {
      v32 = v5;
LABEL_7:
      sub_100007840(v32, &qword_100AE3180);
      return 0;
    }

    v33 = sub_10079A724();
    (*(v31 + 8))(v5, v30);
  }

  return v33;
}

uint64_t sub_10063A938(uint64_t a1, uint64_t a2)
{
  v60 = 0;
  v4 = sub_1001F1160(&qword_100AD6738);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - v5;
  v65 = sub_10079A774();
  v61 = *(v65 - 8);
  __chkstk_darwin(v65);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v56 - v9;
  v10 = sub_10079A7A4();
  v62 = *(v10 - 8);
  v63 = v10;
  __chkstk_darwin(v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100799AE4();
  v59 = sub_100638C20(v12, a2);
  v14 = v13;
  v16 = v15;
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *&v68 = sub_10079A5F4();
  *(inited + 48) = sub_1007A3A74();
  *(inited + 56) = v18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x73656372756F73;
  *(inited + 88) = 0xE700000000000000;
  v19 = sub_10079A5D4();
  v20 = sub_1001F1160(&qword_100AEEC00);
  *(inited + 96) = v19;
  *(inited + 120) = v20;
  *(inited + 128) = 0x65726F6373;
  *(inited + 136) = 0xE500000000000000;
  sub_100799AF4();
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = v21;
  v22 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  v58 = a1;
  if (v16)
  {
    *&v68 = v16;
    sub_1001F1160(&qword_100AEEC10);
    sub_10063BAA8();
    v23 = v60;
    v24 = sub_100796474();
    v26 = v65;
    if (v23)
    {

      v23 = 0;
      v27 = v61;
    }

    else
    {
      v28 = v24;
      v29 = v25;

      v30 = objc_opt_self();
      isa = sub_1007969C4().super.isa;
      *&v68 = 0;
      v32 = [v30 JSONObjectWithData:isa options:0 error:&v68];

      if (v32)
      {
        v60 = v29;
        v33 = v68;
        sub_1007A3504();
        swift_unknownObjectRelease();
        v34 = sub_1001F1160(&qword_100AD6710);
        v35 = swift_dynamicCast();
        v27 = v61;
        if (v35)
        {
          v69 = v34;
          *&v68 = *&v67[0];
          sub_1000076D4(&v68, v67);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v22;
          sub_1002F4B78(v67, 0x746E65746E6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          sub_10000ADCC(v28, v60);
          v22 = v66;
        }

        else
        {
          sub_10000ADCC(v28, v60);
        }

        v26 = v65;
      }

      else
      {
        v37 = v68;
        sub_1007967D4();

        swift_willThrow();
        sub_10000ADCC(v28, v29);

        v23 = 0;
        v26 = v65;
        v27 = v61;
      }
    }
  }

  else
  {
    v26 = v65;
    v23 = v60;
    v27 = v61;
  }

  v38 = v64;
  if (v14)
  {
    v69 = &type metadata for String;
    *&v68 = v59;
    *(&v68 + 1) = v14;
    sub_1000076D4(&v68, v67);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v22;
    sub_1002F4B78(v67, 1684957547, 0xE400000000000000, v39);
    v22 = v66;
  }

  sub_10079A794();
  if ((*(v27 + 48))(v6, 1, v26) == 1)
  {
    (*(v62 + 8))(v12, v63);
    sub_100007840(v6, &qword_100AD6738);
    return v22;
  }

  v65 = v22;
  v40 = v57;
  sub_10073B24C(v57);
  v41 = *(v27 + 8);
  v41(v6, v26);
  (*(v27 + 32))(v38, v40, v26);
  sub_10063C7C4(&qword_100AEEC08, &type metadata accessor for Book.Rationale);
  v42 = sub_100796474();
  if (v23)
  {

    v41(v38, v26);
LABEL_17:
    (*(v62 + 8))(v12, v63);
    return v65;
  }

  v45 = v42;
  v46 = v43;
  v47 = v41;
  v48 = objc_opt_self();
  v49 = sub_1007969C4().super.isa;
  *&v68 = 0;
  v50 = [v48 JSONObjectWithData:v49 options:0 error:&v68];

  if (!v50)
  {
    v55 = v68;
    sub_1007967D4();

    swift_willThrow();
    sub_10000ADCC(v45, v46);

    v41(v64, v26);
    goto LABEL_17;
  }

  v51 = v68;
  sub_1007A3504();
  swift_unknownObjectRelease();
  v52 = sub_1001F1160(&qword_100AD6710);
  v53 = swift_dynamicCast();
  v22 = v65;
  if (v53)
  {
    v69 = v52;
    *&v68 = *&v67[0];
    sub_1000076D4(&v68, v67);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v22;
    sub_1002F4B78(v67, 0x6C616E6F69746172, 0xE900000000000065, v54);
    sub_10000ADCC(v45, v46);
    v47(v64, v26);
    (*(v62 + 8))(v12, v63);
    return v66;
  }

  else
  {
    sub_10000ADCC(v45, v46);
    v47(v64, v26);
    (*(v62 + 8))(v12, v63);
  }

  return v22;
}

unint64_t sub_10063B1A8(uint64_t a1)
{
  v42 = a1;
  v1 = sub_1001F1160(&qword_100AEEC28);
  __chkstk_darwin(v1 - 8);
  v45 = &v39 - v2;
  v3 = sub_10079A8F4();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  __chkstk_darwin(v3);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10079A734();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10079A924();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100799C04();
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10081E180;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x736569726573;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 25705;
  *(inited + 88) = 0xE200000000000000;
  *&v51 = sub_10079A884();
  *(inited + 96) = sub_1007A3A74();
  *(inited + 104) = v16;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x65726F6373;
  *(inited + 136) = 0xE500000000000000;
  sub_100799BF4();
  *(inited + 144) = v17;
  *(inited + 168) = &type metadata for Double;
  *(inited + 176) = 1684957547;
  *(inited + 184) = 0xE400000000000000;
  v18 = v43;
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  v19 = v14;
  sub_10079A904();
  sub_1007A3894();
  v20 = v8;
  v22 = v44;
  v21 = v45;
  (*(v9 + 8))(v11, v20);
  v23 = *(&v51 + 1);
  *(inited + 192) = v51;
  *(inited + 200) = v23;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x656372756F73;
  *(inited + 264) = &type metadata for String;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = 7365743;
  *(inited + 248) = 0xE300000000000000;
  v24 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  sub_10079A914();
  if ((*(v22 + 48))(v21, 1, v18) == 1)
  {
    (*(v47 + 8))(v19, v48);
    sub_100007840(v21, &qword_100AEEC28);
  }

  else
  {
    v40 = v19;
    v25 = v48;
    v26 = v41;
    sub_10073B8A4(v41);
    v27 = *(v22 + 8);
    v27(v21, v18);
    (*(v22 + 32))(v46, v26, v18);
    sub_10063C7C4(&qword_100AEEC30, &type metadata accessor for Series.Rationale);
    v29 = sub_100796474();
    v31 = v30;
    v32 = objc_opt_self();
    isa = sub_1007969C4().super.isa;
    *&v51 = 0;
    v34 = [v32 JSONObjectWithData:isa options:0 error:&v51];

    if (v34)
    {
      v35 = v51;
      sub_1007A3504();
      swift_unknownObjectRelease();
      v36 = sub_1001F1160(&qword_100AD6710);
      if (swift_dynamicCast())
      {
        v52 = v36;
        *&v51 = *&v50[0];
        sub_1000076D4(&v51, v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v24;
        sub_1002F4B78(v50, 0x6C616E6F69746172, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
        sub_10000ADCC(v29, v31);
        v27(v46, v18);
        (*(v47 + 8))(v40, v25);
        return v49;
      }

      else
      {
        sub_10000ADCC(v29, v31);
        v27(v46, v18);
        (*(v47 + 8))(v40, v25);
      }
    }

    else
    {
      v38 = v51;
      sub_1007967D4();

      swift_willThrow();
      sub_10000ADCC(v29, v31);

      v27(v46, v18);
      (*(v47 + 8))(v40, v48);
    }
  }

  return v24;
}

unint64_t sub_10063B8AC()
{
  result = qword_100AEEBC0;
  if (!qword_100AEEBC0)
  {
    sub_1001F1234(&qword_100AEEBB8);
    sub_10063B938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEBC0);
  }

  return result;
}

unint64_t sub_10063B938()
{
  result = qword_100AEEBC8;
  if (!qword_100AEEBC8)
  {
    sub_1001F1234(&qword_100AEEBD0);
    sub_10063C7C4(&qword_100AEEBD8, &type metadata accessor for Methodology);
    sub_10063B9F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEBC8);
  }

  return result;
}

unint64_t sub_10063B9F4()
{
  result = qword_100AEEBE0;
  if (!qword_100AEEBE0)
  {
    sub_1001F1234(&qword_100AEEBE8);
    sub_10063C7C4(&qword_100AEEBF0, &type metadata accessor for SeedBook);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEBE0);
  }

  return result;
}

unint64_t sub_10063BAA8()
{
  result = qword_100AEEC18;
  if (!qword_100AEEC18)
  {
    sub_1001F1234(&qword_100AEEC10);
    sub_10063C7C4(&qword_100AEEC20, &type metadata accessor for JSON);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEC18);
  }

  return result;
}

uint64_t sub_10063BB64(uint64_t a1)
{
  v4 = *(sub_100799AC4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_100632364(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10063BC94(uint64_t a1)
{
  v4 = *(sub_100799AC4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002812C;

  return sub_100632364(a1, v6, v7, v8, v1 + v5, v9);
}

unint64_t sub_10063BDC4()
{
  result = qword_100AEEC48;
  if (!qword_100AEEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEC48);
  }

  return result;
}

uint64_t sub_10063BE18(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_10063BF10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10063BF58(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_10063BFDC()
{
  sub_10063C1E8(319, &qword_100AEECE8, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10063C1E8(319, &qword_100AE8688, &type metadata for String, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10063C1E8(319, &qword_100AED320, &type metadata for Int, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10063C238(319, &qword_100AEECF0, &unk_100AF23A0);
        if (v3 <= 0x3F)
        {
          sub_10063C238(319, &qword_100AEECF8, &unk_100AD61F0);
          if (v4 <= 0x3F)
          {
            sub_10063C238(319, &qword_100AEED00, &qword_100AEEB30);
            if (v5 <= 0x3F)
            {
              sub_10063C238(319, &qword_100AEED08, &qword_100AEEB40);
              if (v6 <= 0x3F)
              {
                sub_10063C28C();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10063C1E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10063C238(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1001F1234(a3);
    v4 = sub_1007A3454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10063C28C()
{
  if (!qword_100AEED10)
  {
    sub_10079A0B4();
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEED10);
    }
  }
}

unint64_t sub_10063C2E4()
{
  result = qword_100AEED80;
  if (!qword_100AEED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEED80);
  }

  return result;
}

uint64_t sub_10063C338(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(&unk_100AF23A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10063C3A4()
{
  result = qword_100AEEDA0;
  if (!qword_100AEEDA0)
  {
    sub_1001F1234(&qword_100AEEB40);
    sub_10063C63C(&qword_100AEED88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEDA0);
  }

  return result;
}

uint64_t sub_10063C450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionRecommendationsConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10063C4B4()
{
  result = qword_100AEEDB8;
  if (!qword_100AEEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEDB8);
  }

  return result;
}

unint64_t sub_10063C508()
{
  result = qword_100AEEDC0;
  if (!qword_100AEEDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEDC0);
  }

  return result;
}

unint64_t sub_10063C594()
{
  result = qword_100AEEDD0;
  if (!qword_100AEEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEDD0);
  }

  return result;
}

unint64_t sub_10063C5E8()
{
  result = qword_100AEEDE8;
  if (!qword_100AEEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEDE8);
  }

  return result;
}

uint64_t sub_10063C63C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(&unk_100AD61F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10063C6A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(&qword_100AEEB30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10063C718()
{
  result = qword_100AEEE10;
  if (!qword_100AEEE10)
  {
    sub_1001F1234(&qword_100AEEB40);
    sub_10063C63C(&qword_100AEEDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE10);
  }

  return result;
}

uint64_t sub_10063C7C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10063C850()
{
  result = qword_100AEEE20;
  if (!qword_100AEEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE20);
  }

  return result;
}

unint64_t sub_10063C8A8()
{
  result = qword_100AEEE28;
  if (!qword_100AEEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE28);
  }

  return result;
}

unint64_t sub_10063C900()
{
  result = qword_100AEEE30;
  if (!qword_100AEEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE30);
  }

  return result;
}

unint64_t sub_10063C958()
{
  result = qword_100AEEE38;
  if (!qword_100AEEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE38);
  }

  return result;
}

unint64_t sub_10063C9B0()
{
  result = qword_100AEEE40;
  if (!qword_100AEEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE40);
  }

  return result;
}

unint64_t sub_10063CA08()
{
  result = qword_100AEEE48;
  if (!qword_100AEEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE48);
  }

  return result;
}

unint64_t sub_10063CA60()
{
  result = qword_100AEEE50;
  if (!qword_100AEEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE50);
  }

  return result;
}

unint64_t sub_10063CAB8()
{
  result = qword_100AEEE58;
  if (!qword_100AEEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE58);
  }

  return result;
}

unint64_t sub_10063CB10()
{
  result = qword_100AEEE60;
  if (!qword_100AEEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE60);
  }

  return result;
}

unint64_t sub_10063CB68()
{
  result = qword_100AEEE68;
  if (!qword_100AEEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE68);
  }

  return result;
}

unint64_t sub_10063CBBC()
{
  result = qword_100AEEE70;
  if (!qword_100AEEE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE70);
  }

  return result;
}

void UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1003323D0;
  v5[3] = &unk_100A28228;
  v4 = _Block_copy(v5);

  [v3 addAnimations:v4];
  _Block_release(v4);
}

uint64_t UIViewPropertyAnimator.UpdateReason.init(rawValue:)(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10063CCFC()
{
  result = qword_100AEEE78;
  if (!qword_100AEEE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEE78);
  }

  return result;
}

id sub_10063CDD8(void *a1, void *a2)
{
  v25 = a2;
  v3 = sub_1001F1160(&qword_100AEEE80);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_10079F8A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10079EF54();
  v10 = *(v26 - 8);
  __chkstk_darwin(v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v14 = result;
    sub_1007A1024();
    v15 = objc_allocWithZone(type metadata accessor for LightLevelControllerWrapper());
    v16 = sub_100027D40(v14);
    sub_10063D190();
    sub_1007A0FC4();

    sub_1007A1014();
    sub_1007A0F84();
    swift_getObjectType();
    sub_1007A0EA4();
    swift_unknownObjectRelease();
    sub_1007A0FB4();
    (*(v7 + 104))(v9, enum case for BookFontTable.default(_:), v6);
    v17 = sub_10079EF14();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_10079EF34();
    if (a1)
    {
      v18 = sub_10079EE14();
      [a1 setBackgroundColor:v18];
    }

    if ((sub_10079EE44() & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_10079EF04();
    v19 = sub_10079EF74();
    v21 = v20;
    if (v19 == sub_10079EF74() && v21 == v22)
    {
    }

    else
    {
      v23 = sub_1007A3AB4();

      if ((v23 & 1) == 0)
      {
LABEL_10:

        return (*(v10 + 8))(v12, v26);
      }
    }

    v24 = [objc_opt_self() whiteColor];
    [v25 setColor:v24];

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_10063D190()
{
  result = qword_100AE89F0;
  if (!qword_100AE89F0)
  {
    type metadata accessor for LightLevelControllerWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE89F0);
  }

  return result;
}

uint64_t sub_10063D1E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1001F1160(&unk_100AD5AC0);
  v9 = __chkstk_darwin(v8 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v31 - v14;
  __chkstk_darwin(v13);
  v18 = &v31 - v17;
  if (a2)
  {
    v31 = v16;
    v36 = a4;
    v19 = sub_1007969B4();
    v20 = *(v19 - 8);
    v21 = *(v20 + 56);
    v22 = 1;
    v33 = v20 + 56;
    v34 = v21;
    v21(v18, 1, 1, v19);
    v23 = objc_opt_self();
    v32 = a1;
    v35 = a2;
    v24 = sub_1007A2214();
    v25 = [v23 storeURLForBookStoreId:v24 isAudiobook:a3 & 1];

    if (v25)
    {
      sub_100796974();

      v22 = 0;
    }

    sub_100008F68(v18);
    v34(v15, v22, 1, v19);
    sub_100008EF8(v15, v18);
    sub_10000847C(v18, v12);
    v26 = (*(v20 + 48))(v12, 1, v19);
    sub_100008F68(v12);
    if (v26 == 1)
    {
      v27 = v31;
      sub_10063DAE8(v32, v35, a3 & 1, v31);
      sub_100008F68(v18);
      sub_100008EF8(v27, v18);
    }

    return sub_100008EF8(v18, v36);
  }

  else
  {
    v29 = sub_1007969B4();
    v30 = *(*(v29 - 8) + 56);

    return v30(a4, 1, 1, v29);
  }
}

uint64_t sub_10063D4E8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1007A37B4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10063DF20(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10063D7E8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1007A37B4();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_10063E4AC(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10063DAE8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_72;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v32 = result;
    v33 = a2;
    v34 = a3;

    v10 = sub_10063DF20(v32, v33, 10);
    v36 = v35;

    a3 = v34;
    result = v32;
    a2 = v33;
    if (v36)
    {
      goto LABEL_72;
    }

    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v43 = result;
    v44 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v5)
      {
        v6 = v5 - 1;
        if (v5 != 1)
        {
          v10 = 0;
          v20 = &v43 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              break;
            }

            v10 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_77:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v5)
      {
        v10 = 0;
        v25 = &v43;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          v25 = (v25 + 1);
          if (!--v5)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      v6 = v5 - 1;
      if (v5 != 1)
      {
        v10 = 0;
        v14 = &v43 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_75;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v38 = result;
    v39 = a2;
    v40 = a3;
    v41 = sub_1007A37B4();
    a3 = v40;
    v8 = v41;
    result = v38;
    v6 = v42;
    a2 = v39;
  }

  v9 = *v8;
  if (v9 == 43)
  {
    if (v6 >= 1)
    {
      if (--v6)
      {
        v10 = 0;
        if (v8)
        {
          v17 = v8 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            v19 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              goto LABEL_61;
            }

            ++v17;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_61;
    }

    goto LABEL_76;
  }

  if (v9 == 45)
  {
    if (v6 >= 1)
    {
      if (--v6)
      {
        v10 = 0;
        if (v8)
        {
          v11 = v8 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v6) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v6)
  {
    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v23 = *v8 - 48;
        if (v23 > 9)
        {
          goto LABEL_61;
        }

        v24 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          goto LABEL_61;
        }

        v10 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          goto LABEL_61;
        }

        ++v8;
        if (!--v6)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  v10 = 0;
  LOBYTE(v6) = 1;
LABEL_62:
  v45 = v6;
  if (v6)
  {
LABEL_72:
    v37 = sub_1007969B4();
    return (*(*(v37 - 8) + 56))(a4, 1, 1, v37);
  }

LABEL_63:
  if (v10 < 1)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    v28 = 0x6F6F626F69647561;
  }

  else
  {
    v28 = 1802465122;
  }

  if (a3)
  {
    v29 = 0xE90000000000006BLL;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  v30 = result;
  v31 = a2;
  sub_1007A3744(31);

  v43 = 0xD000000000000018;
  v44 = 0x80000001008E27A0;
  v46._countAndFlagsBits = v28;
  v46._object = v29;
  sub_1007A23D4(v46);

  v47._countAndFlagsBits = 6580527;
  v47._object = 0xE300000000000000;
  sub_1007A23D4(v47);
  v48._countAndFlagsBits = v30;
  v48._object = v31;
  sub_1007A23D4(v48);
  sub_1007969A4();
}

unsigned __int8 *sub_10063DF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1007A24A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10063EA30();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1007A37B4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10063E4AC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1007A24A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10063EA30();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1007A37B4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10063EA30()
{
  v0 = sub_1007A24B4();
  v4 = sub_10063EAB0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10063EAB0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1007A3464();
    if (!v9 || (v10 = v9, v11 = sub_1000071C0(v9, 0), v12 = sub_10063EC08(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1007A2374();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1007A2374();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1007A37B4();
LABEL_4:

  return sub_1007A2374();
}

unint64_t sub_10063EC08(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10063EE28(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1007A2454();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1007A37B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10063EE28(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1007A2434();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10063EE28(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1007A2464();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1007A2444();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10063EEA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v13 = sub_1007969B4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_11;
  }

  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
LABEL_11:
    v18 = _swiftEmptyArrayStorage;
    if (!a4)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v47 = a3;
  v48 = a5;

  v18 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    v18 = sub_10000B3D8((v19 > 1), v20 + 1, 1, v18);
    v19 = *(v18 + 3);
    v21 = v19 >> 1;
  }

  *(v18 + 2) = v22;
  v23 = &v18[16 * v20];
  *(v23 + 4) = a1;
  *(v23 + 5) = a2;
  if (v21 < (v20 + 2))
  {
    v18 = sub_10000B3D8((v19 > 1), v20 + 2, 1, v18);
  }

  *(v18 + 2) = v20 + 2;
  v24 = &v18[16 * v22];
  *(v24 + 4) = 10;
  *(v24 + 5) = 0xE100000000000000;
  a3 = v47;
  a5 = v48;
  if (a4)
  {
LABEL_12:
    v25 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v25 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10000B3D8(0, *(v18 + 2) + 1, 1, v18);
      }

      v28 = *(v18 + 2);
      v27 = *(v18 + 3);
      v29 = v27 >> 1;
      v30 = v28 + 1;
      if (v27 >> 1 <= v28)
      {
        v18 = sub_10000B3D8((v27 > 1), v28 + 1, 1, v18);
        v27 = *(v18 + 3);
        v29 = v27 >> 1;
      }

      *(v18 + 2) = v30;
      v31 = &v18[16 * v28];
      *(v31 + 4) = v26;
      *(v31 + 5) = a4;
      if (v29 < (v28 + 2))
      {
        v18 = sub_10000B3D8((v27 > 1), v28 + 2, 1, v18);
      }

      *(v18 + 2) = v28 + 2;
      v32 = &v18[16 * v30];
      *(v32 + 4) = 10;
      *(v32 + 5) = 0xE100000000000000;
    }
  }

LABEL_22:
  sub_10000847C(a5, v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    v34 = sub_100796914();
    v36 = v35;
    v37 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v37 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v38 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10000B3D8(0, *(v18 + 2) + 1, 1, v18);
      }

      v40 = *(v18 + 2);
      v39 = *(v18 + 3);
      v41 = v39 >> 1;
      v42 = v40 + 1;
      if (v39 >> 1 <= v40)
      {
        v18 = sub_10000B3D8((v39 > 1), v40 + 1, 1, v18);
        v39 = *(v18 + 3);
        v41 = v39 >> 1;
      }

      *(v18 + 2) = v42;
      v43 = &v18[16 * v40];
      *(v43 + 4) = v38;
      *(v43 + 5) = v36;
      if (v41 < (v40 + 2))
      {
        v18 = sub_10000B3D8((v39 > 1), v40 + 2, 1, v18);
      }

      (*(v14 + 8))(v16, v13);
      *(v18 + 2) = v40 + 2;
      v44 = &v18[16 * v42];
      *(v44 + 4) = 10;
      *(v44 + 5) = 0xE100000000000000;
      if (*(v18 + 2))
      {
        goto LABEL_24;
      }
    }

    else
    {
      (*(v14 + 8))(v16, v13);

      if (*(v18 + 2))
      {
        goto LABEL_24;
      }
    }

LABEL_35:

    return 0;
  }

  sub_100008F68(v12);
  if (!*(v18 + 2))
  {
    goto LABEL_35;
  }

LABEL_24:
  v49 = v18;
  sub_1001F1160(&unk_100AD61F0);
  sub_10000B4E4();
  v33 = sub_1007A20B4();

  return v33;
}

uint64_t sub_10063F360(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_1001F1160(&qword_100AE3178);
  v2[21] = swift_task_alloc();
  sub_10079A854();
  v2[22] = swift_task_alloc();
  v3 = sub_100799BB4();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  sub_1001F1160(&qword_100AE3180);
  v2[26] = swift_task_alloc();
  v4 = sub_10079A734();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v5 = sub_1007A2744();
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10063F580, 0, 0);
}

uint64_t sub_10063F580()
{
  sub_1007A2704();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_10063F638;
  v2 = *(v0 + 264);

  return sub_100367E98(v2);
}

uint64_t sub_10063F638(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v4[35] = v1;

  v6 = (v5 + 8);
  v7 = v4[33];
  v8 = v4[31];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_10063FD20;
  }

  else
  {
    v4[36] = a1;
    (*v6)(v7, v8);
    v9 = sub_10063F7C4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10063F7C4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10063F8E8;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AEEF28);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003807B4;
  v0[13] = &unk_100A282E0;
  v0[14] = v2;
  [ObjCClassFromMetadata getODPTopGenre:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10063F8E8()
{

  return _swift_task_switch(sub_10063F9C8, 0, 0);
}

uint64_t sub_10063F9C8()
{
  v1 = v0[18];
  if (v1)
  {
    sub_1007A27A4();
    if ((~v2 & 0x7FF0000000000000) == 0 && (v2 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 0;
LABEL_11:
      sub_10063FE78();
      swift_allocError();
      *v10 = v9;
      swift_willThrow();

      v11 = v0[1];

      return v11();
    }

    result = [v1 longLongValue];
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[26];
    sub_100799FA4();
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_10063FECC(v0[26]);
      v9 = 1;
      goto LABEL_11;
    }

    v13 = v0[29];
    v12 = v0[30];
    v14 = v0[27];
    v15 = v0[28];
    v16 = v0[24];
    v21 = v0[25];
    v22 = v0[23];
    v17 = v0[21];
    (*(v15 + 32))(v12, v0[26], v14);
    (*(v15 + 16))(v13, v12, v14);
    v18 = sub_10079A834();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    sub_10079A814();
    sub_100799B84();
    sub_1001F1160(&unk_100AE0AB0);
    v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v8 = swift_allocObject();
    *(v8 + 1) = xmmword_10080B690;
    (*(v16 + 32))(v8 + v19, v21, v22);

    (*(v15 + 8))(v12, v14);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v20 = v0[1];

  return v20(v8);
}

uint64_t sub_10063FD20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10063FDD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return sub_10063F360(a1);
}

unint64_t sub_10063FE78()
{
  result = qword_100AEEF30;
  if (!qword_100AEEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEF30);
  }

  return result;
}

uint64_t sub_10063FECC(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE3180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10063FF48()
{
  result = qword_100AEEF38;
  if (!qword_100AEEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEEF38);
  }

  return result;
}

id sub_10063FF9C()
{
  v0 = sub_10079B2F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079B394();
  sub_1001F1160(qword_100AEFD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = NSForegroundColorAttributeName;
  v5 = NSForegroundColorAttributeName;
  sub_10079B314();
  v6 = sub_10079B2D4();
  (*(v1 + 8))(v3, v0);
  *(inited + 64) = sub_100640918();
  *(inited + 40) = v6;
  sub_1001ED420(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100ADA6C0);
  v7 = objc_allocWithZone(NSAttributedString);
  v8 = sub_1007A2214();

  type metadata accessor for Key(0);
  sub_100640A74(&qword_100AEDDB0, type metadata accessor for Key);
  isa = sub_1007A2024().super.isa;

  v10 = [v7 initWithString:v8 attributes:isa];

  return v10;
}

uint64_t sub_1006401C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10079B3D4();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SidebarTextFieldContentConfiguration();
  __chkstk_darwin(v33);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&unk_100AEEF40);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_10079B264();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009864(a1, v35);
  sub_1001F1160(&qword_100AE2290);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (!v17)
  {
    v18(v12, 1, 1, v13);
    sub_100007840(v12, &unk_100AEEF40);
    return sub_100538268(v2, a2);
  }

  v18(v12, 0, 1, v13);
  (*(v14 + 32))(v16, v12, v13);
  sub_100538268(v2, v9);
  v36 = v13;
  v37 = &protocol witness table for UICellConfigurationState;
  v19 = sub_1002256EC(v35);
  (*(v14 + 16))(v19, v16, v13);
  sub_10079B3C4();
  sub_1000074E0(v35);
  v20 = objc_opt_self();
  v21 = sub_10079B224();
  v22 = [v20 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v21];

  v23 = sub_10079B304();
  sub_10079B2C4();
  v23(v35, 0);
  v24 = v32;
  (*(v32 + 24))(v9, v7, v5);
  v31 = v5;
  if (qword_100AD1AF8 != -1)
  {
    swift_once();
  }

  sub_10079B1F4();
  if (!v36)
  {
    sub_100007840(v35, &unk_100AEEF50);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v25 = 0;
    goto LABEL_10;
  }

  v25 = v34;
LABEL_10:
  v27 = v33;
  v9[*(v33 + 24)] = v25;
  v28 = sub_10079B224();
  v29 = [v28 userInterfaceStyle];

  (*(v24 + 8))(v7, v31);
  (*(v14 + 8))(v16, v13);
  *&v9[*(v27 + 28)] = v29;
  sub_100538268(v9, a2);
  return sub_1005381B4(v9);
}

uint64_t type metadata accessor for SidebarTextFieldContentConfiguration()
{
  result = qword_100AEEFC0;
  if (!qword_100AEEFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1006406C0(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100538268(v1, v3);
  v4 = objc_allocWithZone(type metadata accessor for SidebarTextFieldContentView());
  v5 = sub_100536B0C(v3);
  sub_100640A74(&qword_100AEF008, type metadata accessor for SidebarTextFieldContentView);
  return v5;
}

Swift::Int sub_100640784()
{
  sub_1007A3C04();
  sub_10079B3D4();
  sub_100640A74(&unk_100AEF010, &type metadata accessor for UIListContentConfiguration);
  sub_1007A2084();
  return sub_1007A3C44();
}

uint64_t sub_10064080C()
{
  sub_10079B3D4();
  sub_100640A74(&unk_100AEF010, &type metadata accessor for UIListContentConfiguration);

  return sub_1007A2084();
}

Swift::Int sub_100640890()
{
  sub_1007A3C04();
  sub_10079B3D4();
  sub_100640A74(&unk_100AEF010, &type metadata accessor for UIListContentConfiguration);
  sub_1007A2084();
  return sub_1007A3C44();
}

unint64_t sub_100640918()
{
  result = qword_100AEEF60;
  if (!qword_100AEEF60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AEEF60);
  }

  return result;
}

void sub_10064098C()
{
  sub_10079B3D4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIUserInterfaceStyle(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100640A74(unint64_t *a1, void (*a2)(uint64_t))
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

id UIColor.mix(withColor:factor:)(void *a1, double a2)
{
  v4 = fmin(a2, 1.0);
  if (a2 < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v13 = 0.0;
  v14 = 0.0;
  v11 = 1.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 1.0;
  v8 = 0.0;
  [v2 getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
  [a1 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
  return [objc_allocWithZone(UIColor) initWithRed:(1.0 - v5) * v14 + v5 * v10 green:(1.0 - v5) * v13 + v5 * v9 blue:(1.0 - v5) * v12 + v5 * v8 alpha:(1.0 - v5) * v11 + v5 * v7];
}

id static UIColor.toolbarTitleColor.getter()
{
  v0 = sub_1007A2214();
  v1 = objc_opt_self();
  v2 = [v1 colorNamed:v0];

  if (v2)
  {
    return v2;
  }

  v4 = [v1 labelColor];

  return v4;
}

uint64_t WidgetBookInfo.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t WidgetBookInfo.progress.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t WidgetBookInfo.assetID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WidgetBookInfo.assetID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void *WidgetBookInfo.cloudAssetType.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t WidgetBookInfo.coverURL.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t WidgetBookInfo.coverURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_100640F54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100640F9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for BookReaderChromeState()
{
  result = qword_100AEF078;
  if (!qword_100AEF078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100641078()
{
  result = sub_10079F4E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100641140()
{
  result = qword_100AEF0D8;
  if (!qword_100AEF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF0D8);
  }

  return result;
}

uint64_t sub_100641198(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    goto LABEL_9;
  }

  v5 = type metadata accessor for BookReaderChromeState();
  if ((sub_10079F4D4() & 1) == 0 || a1[v5[7]] != a2[v5[7]] || a1[v5[8]] != a2[v5[8]] || a1[v5[9]] != a2[v5[9]] || a1[v5[10]] != a2[v5[10]])
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = v5[11];
  v8 = &a1[v7];
  v9 = a1[v7];
  v10 = &a2[v7];
  if (v9 != *v10 || ((v8[1] ^ v10[1]) & 1) != 0)
  {
    return v6 & 1;
  }

  if (a1[v5[12]] == a2[v5[12]] && a1[v5[13]] == a2[v5[13]] && a1[v5[14]] == a2[v5[14]])
  {
    v6 = a1[v5[15]] ^ a2[v5[15]] ^ 1;
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1006412EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

void sub_100641374(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t ReadingActivityService.willMarkAsset(_:finished:finishedDate:)()
{
  if (*(v0 + OBJC_IVAR___BKReadingActivityService_achievementsController))
  {

    sub_10079EAD4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingActivityService.enableCloudSync.getter()
{
  v1 = OBJC_IVAR___BKReadingActivityService_enableCloudSync;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ReadingActivityService.enableCloudSync.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___BKReadingActivityService_enableCloudSync;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = *(v1 + OBJC_IVAR___BKReadingActivityService_cloudSyncStateHandler);
    if (v7)
    {

      v7(a1 & 1);
      return sub_100007020(v7);
    }
  }

  return result;
}

void (*ReadingActivityService.enableCloudSync.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___BKReadingActivityService_enableCloudSync;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_10064189C;
}

void sub_10064189C(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = *(*(v1 + 24) + OBJC_IVAR___BKReadingActivityService_cloudSyncStateHandler);
    if (v6)
    {
      v7 = v1;

      v6(v4);
      sub_100007020(v6);
      v1 = v7;
    }
  }

  free(v1);
}

uint64_t ReadingActivityService.setupService(libraryManager:goalsModule:booksFinishedModule:historyModule:achievementsController:sessionEventProvider:cloudSyncStateHandler:notificationSuppressingEventHandler:analyticsSessionHosting:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void (*a12)(void), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = a11[3];
  v21 = a11[4];
  v23 = sub_10000E3E8(a11, v22);
  return sub_10064BDCC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v23, a12, a13, a14, a15, a16, v16, v22, v21);
}

uint64_t sub_100641A48(uint64_t a1, void *a2)
{
  sub_100007840(a1, &qword_100AEF348);
  sub_10000E3E8(a2, a2[3]);
  sub_10079E9D4();
  sub_100798954();
}

uint64_t sub_100641AD0(uint64_t a1, void *a2)
{
  sub_100007840(a1, &unk_100AD20D0);
  sub_10000E3E8(a2, a2[3]);
  sub_10079EA54();
  sub_100798954();

  v4 = sub_100798774();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_100641B98()
{
  v0 = sub_1001F1160(&qword_100AEF378);
  __chkstk_darwin(v0);
  v2 = &v31 - v1;
  v3 = sub_1001F1160(&qword_100AEF380);
  __chkstk_darwin(v3 - 8);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v32 = &v31 - v6;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_100798694();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100798644();
  v38 = *(v17 - 8);
  v39 = v17;
  __chkstk_darwin(v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AEF388);
  sub_100798944();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_100798634();
    sub_1006421B0();

    (*(v14 + 8))(v16, v13);
  }

  v37 = v19;
  sub_100798634();
  v34 = *(v14 + 56);
  v35 = v14 + 56;
  v34(v12, 0, 1, v13);
  v33 = sub_10079E884();
  sub_10079E874();
  sub_10079E814();

  v22 = *(v0 + 48);
  sub_1000077D8(v12, v2, &qword_100AEF380);
  sub_1000077D8(v9, &v2[v22], &qword_100AEF380);
  v23 = *(v14 + 48);
  if (v23(v2, 1, v13) != 1)
  {
    v31 = v9;
    v25 = v32;
    sub_1000077D8(v2, v32, &qword_100AEF380);
    if (v23(&v2[v22], 1, v13) != 1)
    {
      (*(v14 + 32))(v16, &v2[v22], v13);
      sub_10064EC00(&unk_100AEF390, &type metadata accessor for ReadingGoals.State);
      v28 = v25;
      v29 = sub_1007A2124();
      v30 = *(v14 + 8);
      v30(v16, v13);
      sub_100007840(v31, &qword_100AEF380);
      sub_100007840(v12, &qword_100AEF380);
      v30(v28, v13);
      sub_100007840(v2, &qword_100AEF380);
      v24 = v37;
      if (v29)
      {
        return (*(v38 + 8))(v24, v39);
      }

      goto LABEL_9;
    }

    sub_100007840(v31, &qword_100AEF380);
    sub_100007840(v12, &qword_100AEF380);
    (*(v14 + 8))(v25, v13);
LABEL_8:
    sub_100007840(v2, &qword_100AEF378);
    v24 = v37;
LABEL_9:
    sub_10079E874();
    v26 = v36;
    sub_100798634();
    v34(v26, 0, 1, v13);
    sub_10079E824();

    sub_10079E874();
    sub_10079E864();

    return (*(v38 + 8))(v24, v39);
  }

  sub_100007840(v9, &qword_100AEF380);
  sub_100007840(v12, &qword_100AEF380);
  if (v23(&v2[v22], 1, v13) != 1)
  {
    goto LABEL_8;
  }

  sub_100007840(v2, &qword_100AEF380);
  v24 = v37;
  return (*(v38 + 8))(v24, v39);
}

void sub_1006421B0()
{
  v1 = sub_100644834();
  sub_1007A29D4();
  sub_10001389C();
  v2 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10080EFF0;
  sub_100798B64();
  v4 = sub_10000E4C4();
  v5 = 0x6C616974696E69;
  if (v8 == 2)
  {
    v5 = 0x64657461647075;
  }

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = 0xE700000000000000;
  *(v3 + 96) = sub_1001F1160(&qword_100AEEB30);
  *(v3 + 104) = sub_10064EC48();
  *(v3 + 72) = v1;
  sub_10079AB44();

  v6 = *(v0 + OBJC_IVAR___BKReadingActivityService_booksFinishedGoal);
  sub_100798674();
  isa = sub_1007A2884().super.super.isa;
  [v6 updateValue:isa];
}

uint64_t sub_100642330(uint64_t a1, char *a2)
{
  v41 = a2;
  v42 = sub_1001F1160(&qword_100AEF340);
  __chkstk_darwin(v42);
  v3 = &v35 - v2;
  v4 = sub_1001F1160(&qword_100AEF348);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v43 = &v35 - v8;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = sub_10079E704();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v40 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  sub_1001F1160(&qword_100AEF350);
  sub_100798944();
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    return sub_100007840(v14, &qword_100AEF348);
  }

  v23 = *(v16 + 32);
  v37 = v16 + 32;
  v38 = v6;
  v36 = v23;
  v23(v20, v14, v15);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_100642954();
  }

  v26 = *(v16 + 16);
  v41 = v20;
  v26(v11, v20, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  v39 = sub_10079E884();
  sub_10079E874();
  sub_10079E804();

  v27 = v43;
  sub_10079EB44();

  v28 = *(v42 + 48);
  sub_1000077D8(v11, v3, &qword_100AEF348);
  sub_1000077D8(v27, &v3[v28], &qword_100AEF348);
  if (v21(v3, 1, v15) != 1)
  {
    v30 = v38;
    sub_1000077D8(v3, v38, &qword_100AEF348);
    if (v21(&v3[v28], 1, v15) != 1)
    {
      v32 = v40;
      v36(v40, &v3[v28], v15);
      sub_10064EC00(&qword_100AEF358, &type metadata accessor for BooksFinished.State);
      v33 = sub_1007A2124();
      v34 = *(v16 + 8);
      v34(v32, v15);
      sub_100007840(v43, &qword_100AEF348);
      sub_100007840(v11, &qword_100AEF348);
      v34(v30, v15);
      sub_100007840(v3, &qword_100AEF348);
      v29 = v41;
      if (v33)
      {
        return (*(v16 + 8))(v29, v15);
      }

      goto LABEL_11;
    }

    sub_100007840(v43, &qword_100AEF348);
    sub_100007840(v11, &qword_100AEF348);
    (*(v16 + 8))(v30, v15);
LABEL_10:
    sub_100007840(v3, &qword_100AEF340);
    v29 = v41;
LABEL_11:
    sub_10079E874();
    sub_10079E804();

    __chkstk_darwin(v31);
    *(&v35 - 2) = v29;
    sub_10079EB54();

    sub_10079E874();
    sub_10079E864();

    return (*(v16 + 8))(v29, v15);
  }

  sub_100007840(v27, &qword_100AEF348);
  sub_100007840(v11, &qword_100AEF348);
  if (v21(&v3[v28], 1, v15) != 1)
  {
    goto LABEL_10;
  }

  sub_100007840(v3, &qword_100AEF348);
  v29 = v41;
  return (*(v16 + 8))(v29, v15);
}

void sub_100642954()
{
  v1 = sub_10079E734();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v40 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v37 - v5;
  __chkstk_darwin(v7);
  v9 = v37 - v8;
  v39 = sub_1007A29D4();
  sub_10001389C();
  v38 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100812CF0;
  v41 = v0;
  sub_100798B64();
  v11 = v42;
  v12 = sub_10000E4C4();
  v13 = 0x6C616974696E69;
  if (v11 == 2)
  {
    v13 = 0x64657461647075;
  }

  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v12;
  *(v10 + 32) = v13;
  *(v10 + 40) = 0xE700000000000000;
  v14 = sub_10079E6C4();
  *(v10 + 96) = &type metadata for Int;
  *(v10 + 104) = &protocol witness table for Int;
  *(v10 + 72) = v14;
  sub_10079E6D4();
  v15 = sub_10079E724();
  v16 = v1;
  v17 = v1;
  v18 = v2 + 8;
  v19 = *(v2 + 8);
  v19(v9, v17);
  if (v15)
  {
    v15 = *(v15 + 16);
  }

  *(v10 + 136) = &type metadata for Int;
  *(v10 + 144) = &protocol witness table for Int;
  *(v10 + 112) = v15;
  v20 = v38;
  sub_10079AB44();

  v21 = v41;
  v22 = *(v41 + OBJC_IVAR___BKReadingActivityService_finishedAssetYear);
  sub_10079E6D4();
  sub_10079E714();
  v37[1] = v18;
  v19(v6, v16);
  isa = sub_1007A2884().super.super.isa;
  [v22 updateValue:isa];

  v24 = *(v21 + OBJC_IVAR___BKReadingActivityService_finishedAssetAllTimeCount);
  sub_10079E6C4();
  v25 = sub_1007A2884().super.super.isa;
  [v24 updateValue:v25];

  v26 = *(v21 + OBJC_IVAR___BKReadingActivityService_finishedAssetsData);
  sub_100644D60();
  v27 = sub_1007A2024().super.isa;

  [v26 updateValue:v27];

  v28 = *(v21 + OBJC_IVAR___BKReadingActivityService_finishedAssets);
  v29 = v40;
  sub_10079E6D4();
  v30 = sub_10079E724();
  v19(v29, v16);
  if (!v30)
  {
    v30 = _swiftEmptyArrayStorage;
  }

  sub_1003BC63C(v30);

  sub_1001F1160(&unk_100AEF1B0);
  v31 = sub_1007A25D4().super.isa;

  [v28 updateArray:v31];

  v32 = *(v21 + OBJC_IVAR___BKReadingActivityService_finishedAssetCountByYear);
  sub_1001F1160(&unk_100AEF360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  sub_10079E6D4();
  v34 = sub_10079E714();
  v19(v6, v16);
  v42 = v34;
  *(inited + 32) = sub_1007A3A74();
  *(inited + 40) = v35;
  *(inited + 48) = sub_10079E6C4();
  sub_1001EE2FC(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &qword_100AE1270);
  v36 = sub_1007A2024().super.isa;

  [v32 updateValue:v36];
}

uint64_t sub_100642E5C()
{
  v0 = sub_1001F1160(&qword_100AEF308);
  __chkstk_darwin(v0);
  v2 = &v30 - v1;
  v3 = sub_1001F1160(&unk_100AD20D0);
  __chkstk_darwin(v3 - 8);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_100798774();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  sub_1001F1160(&qword_100AEF310);
  sub_100798944();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_1006433F8(v16);
  }

  v19 = *(v12 + 16);
  v34 = v16;
  v19(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v32 = sub_10079E884();
  sub_10079E874();
  sub_10079E834();

  sub_10079EB44();

  v20 = *(v0 + 48);
  sub_1000077D8(v10, v2, &unk_100AD20D0);
  sub_1000077D8(v7, &v2[v20], &unk_100AD20D0);
  v21 = *(v12 + 48);
  if (v21(v2, 1, v11) != 1)
  {
    v24 = v33;
    sub_1000077D8(v2, v33, &unk_100AD20D0);
    if (v21(&v2[v20], 1, v11) != 1)
    {
      v27 = v31;
      (*(v12 + 32))(v31, &v2[v20], v11);
      sub_10064EC00(&qword_100AEF318, &type metadata accessor for ReadingHistory.State);
      v28 = sub_1007A2124();
      v29 = *(v12 + 8);
      v29(v27, v11);
      sub_100007840(v7, &unk_100AD20D0);
      sub_100007840(v10, &unk_100AD20D0);
      v29(v33, v11);
      sub_100007840(v2, &unk_100AD20D0);
      v23 = v34;
      if (v28)
      {
        return (*(v12 + 8))(v23, v11);
      }

      goto LABEL_9;
    }

    sub_100007840(v7, &unk_100AD20D0);
    sub_100007840(v10, &unk_100AD20D0);
    (*(v12 + 8))(v24, v11);
    v23 = v34;
LABEL_8:
    sub_100007840(v2, &qword_100AEF308);
LABEL_9:
    sub_10079E874();
    sub_10079E834();

    __chkstk_darwin(v25);
    *(&v30 - 2) = v23;
    sub_10079EB54();

    sub_10079E874();
    sub_10079E864();

    return (*(v12 + 8))(v23, v11);
  }

  sub_100007840(v7, &unk_100AD20D0);
  sub_100007840(v10, &unk_100AD20D0);
  v22 = v21(&v2[v20], 1, v11);
  v23 = v34;
  if (v22 != 1)
  {
    goto LABEL_8;
  }

  sub_100007840(v2, &unk_100AD20D0);
  return (*(v12 + 8))(v23, v11);
}

uint64_t sub_1006433F8(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD20D0);
  __chkstk_darwin(v2 - 8);
  v85 = v78 - v3;
  v81 = sub_100796BB4();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AEF228);
  __chkstk_darwin(v5 - 8);
  v83 = v78 - v6;
  v86 = sub_100798724();
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = v78 - v9;
  v10 = sub_1007A22A4();
  __chkstk_darwin(v10 - 8);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007987D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  v17 = sub_100798734();
  v18 = *(v17 + 16);
  if (v18)
  {
    v78[1] = v12;
    v92 = _swiftEmptyArrayStorage;
    sub_1003BD580(0, v18, 0);
    v19 = v92;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v91 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v78[0] = v17;
    v23 = v17 + v22;
    v90 = *(v20 + 56);
    v24 = (v20 - 8);
    do
    {
      v25 = v20;
      v91(v16, v23, v13);
      v26 = sub_100644F4C();
      (*v24)(v16, v13);
      v92 = v19;
      v28 = v19[2];
      v27 = v19[3];
      v29 = v19;
      if (v28 >= v27 >> 1)
      {
        sub_1003BD580((v27 > 1), v28 + 1, 1);
        v29 = v92;
      }

      v29[2] = v28 + 1;
      v29[v28 + 4] = v26;
      v23 += v90;
      --v18;
      v19 = v29;
      v20 = v25;
    }

    while (v18);
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  sub_100796494();
  swift_allocObject();
  sub_100796484();
  v92 = v19;
  sub_1001F1160(&qword_100AEF320);
  sub_10064EAC0();
  v30 = sub_100796474();
  v91 = v19;
  v31 = v30;
  v33 = v32;

  sub_1007A2294();
  v90 = sub_1007A2274();
  v35 = v34;
  sub_10000ADCC(v31, v33);
  sub_1007A29D4();
  sub_10001389C();
  v36 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100812CF0;
  v38 = v87;
  sub_100798B64();
  LODWORD(v33) = v92;
  v39 = sub_10000E4C4();
  v40 = v39;
  v41 = 0x6C616974696E69;
  if (v33 == 2)
  {
    v41 = 0x64657461647075;
  }

  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = v39;
  *(v37 + 32) = v41;
  *(v37 + 40) = 0xE700000000000000;
  v42 = v82;
  sub_100798764();
  v43 = sub_100798704();
  v44 = v42;
  v45 = *(v89 + 8);
  v89 += 8;
  v45(v44, v86);
  *(v37 + 96) = &type metadata for Int;
  *(v37 + 104) = &protocol witness table for Int;
  *(v37 + 72) = v43;
  *(v37 + 136) = &type metadata for String;
  *(v37 + 144) = v40;
  v46 = 0x29726F72726528;
  if (v35)
  {
    v46 = v90;
    v47 = v35;
  }

  else
  {
    v47 = 0xE700000000000000;
  }

  *(v37 + 112) = v46;
  *(v37 + 120) = v47;
  sub_10079AB44();

  v48 = *(v38 + OBJC_IVAR___BKReadingActivityService_allTimeRecordStreakData);
  v49 = v83;
  sub_100798754();
  v50 = sub_1007987A4();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_100007840(v49, &qword_100AEF228);
    v52 = 0;
  }

  else
  {
    sub_1001F1160(&unk_100ADE550);
    v53 = v49;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080EFF0;
    *(inited + 32) = 0x65746144646E65;
    *(inited + 40) = 0xE700000000000000;
    v55 = v79;
    sub_100798794();
    sub_100796B44();
    v57 = v56;
    (*(v80 + 8))(v55, v81);
    *(inited + 48) = v57;
    *(inited + 72) = &type metadata for Double;
    *(inited + 80) = 0x6874676E656CLL;
    *(inited + 88) = 0xE600000000000000;
    v58 = sub_100798784();
    *(inited + 120) = &type metadata for Int;
    *(inited + 96) = v58;
    v59 = sub_100019158(inited);
    swift_setDeallocating();
    sub_1001F1160(&unk_100ADD560);
    swift_arrayDestroy();
    (*(v51 + 8))(v53, v50);
    v92 = v59;
    sub_1001F1160(&qword_100AD6710);
    v52 = sub_1007A3AA4();
    sub_100007840(&v92, &qword_100AD6710);
  }

  v60 = v85;
  [v48 updateValue:{v52, v78[0]}];
  swift_unknownObjectRelease();
  v61 = v87;
  v62 = *(v87 + OBJC_IVAR___BKReadingActivityService_readingTimeToday);
  v63 = v84;
  v64 = v88;
  sub_100798764();
  sub_100798704();
  v65 = v86;
  v45(v63, v86);
  isa = sub_1007A2884().super.super.isa;
  [v62 updateValue:isa];

  v67 = *(v61 + OBJC_IVAR___BKReadingActivityService_readingIndicatorTimeToday);
  sub_100798764();
  sub_100798704();
  v45(v63, v65);
  v68 = sub_1007A2884().super.super.isa;
  [v67 updateValue:v68];

  v69 = *(v61 + OBJC_IVAR___BKReadingActivityService_readingHistory);
  sub_1003BC180(v91);

  sub_1001F1160(&unk_100AEF1B0);
  v70 = sub_1007A25D4().super.isa;

  [v69 updateArray:v70];

  v71 = *(v61 + OBJC_IVAR___BKReadingActivityService_dailyGoal);
  sub_100798764();
  sub_100798714();
  v45(v63, v65);
  v72 = sub_1007A2884().super.super.isa;
  [v71 updateValue:v72];

  v73 = *(v61 + OBJC_IVAR___BKReadingActivityService_isDailyGoalCompleted);
  sub_100798764();
  sub_1007986F4();
  v45(v63, v65);
  v74 = sub_1007A2684().super.super.isa;
  [v73 updateValue:v74];

  v75 = sub_100798774();
  v76 = *(v75 - 8);
  (*(v76 + 16))(v60, v64, v75);
  (*(v76 + 56))(v60, 0, 1, v75);
  sub_10079B8F4();
  return sub_100007840(v60, &unk_100AD20D0);
}

uint64_t sub_100643F24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_100007840(a1, a3);
  v8 = a5(0);
  v11 = *(v8 - 8);
  (*(v11 + 16))(a1, a2, v8);
  v9 = *(v11 + 56);

  return v9(a1, 0, 1, v8);
}

void sub_100643FF0(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001F1160(&qword_100AEF300);
    sub_100796884();
    if (LOBYTE(v7[0]) == 2 || (v7[0] & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_1007A2994();
    sub_10001389C();
    v4 = sub_1007A33C4();
    sub_10079AB44();

    v5 = &v3[OBJC_IVAR___BKReadingActivityService_historyModule];
    swift_beginAccess();
    if (*(v5 + 3))
    {
      sub_100009864((v5 + 40), v7);
      sub_10000E3E8(v7, v8);
      sub_10079EAA4();
      sub_1000074E0(v7);
      v6 = &v3[OBJC_IVAR___BKReadingActivityService_goalsModule];
      swift_beginAccess();
      if (*(v6 + 3))
      {
        sub_100009864((v6 + 40), v7);
        sub_10000E3E8(v7, v8);
        sub_100798BC4();
        sub_1000074E0(v7);
        [v1 setBKReadingGoalsShouldClearDataKey:0];
LABEL_7:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall ReadingActivityService.clearData()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR___BKReadingActivityService_historyModule;
  swift_beginAccess();
  if (*(v2 + 24))
  {
    sub_100009864(v2 + 40, v4);
    sub_10000E3E8(v4, v5);
    sub_10079EAA4();
    sub_1000074E0(v4);
    v3 = v1 + OBJC_IVAR___BKReadingActivityService_goalsModule;
    swift_beginAccess();
    if (*(v3 + 24))
    {
      sub_100009864(v3 + 40, v4);
      sub_10000E3E8(v4, v5);
      sub_100798BC4();
      sub_1000074E0(v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100644294()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_10064CA88();
}

void sub_100644320(char *a1)
{
  v3 = *(v1 + OBJC_IVAR___BKReadingActivityService_engagementManager);
  *(v1 + OBJC_IVAR___BKReadingActivityService_engagementManager) = a1;

  v4 = *(v1 + OBJC_IVAR___BKReadingActivityService_readingActivityDonor);
  if (v4)
  {
    v5 = *&a1[OBJC_IVAR___BKEngagementManager_manager];
    v6 = a1;
    v7 = v5;
    v8 = v4;
    sub_100799A04();

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = objc_opt_self();

    v11 = sub_1007A2214();
    v12 = swift_allocObject();
    *(v12 + 16) = 0xD00000000000002CLL;
    *(v12 + 24) = 0x80000001008E2890;
    *(v12 + 32) = sub_10064EA5C;
    *(v12 + 40) = v9;
    *(v12 + 48) = 0;
    aBlock[4] = sub_10064EF18;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006412EC;
    aBlock[3] = &unk_100A28930;
    v13 = _Block_copy(aBlock);

    [v10 fetchMetadataBoolForKey:v11 completion:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_100644574(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___BKReadingActivityService_readingActivityDonor);
    if (v4)
    {
      v4[OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApproved] = a1 & 1;
      [v4 propertyDidChange:v4 propertyConfiguration:*&v4[OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApprovedConfig]];
    }

    else
    {
      __break(1u);
    }
  }
}

void ReadingActivityService.fetchReadingGoalsCoachingEnabled(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1007A2214();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD00000000000002CLL;
  *(v6 + 24) = 0x80000001008E2890;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  v8[4] = sub_10064C934;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1006412EC;
  v8[3] = &unk_100A28578;
  v7 = _Block_copy(v8);

  [v4 fetchMetadataBoolForKey:v5 completion:v7];
  _Block_release(v7);
}

void sub_10064473C()
{
  v1 = *(v0 + OBJC_IVAR___BKReadingActivityService_engagementManager);
  if (!v1)
  {
    return;
  }

  v6 = v1;
  sub_10079E6A4();
  if (sub_10079E684())
  {
    v2 = v6;
LABEL_7:
    v5 = *&v2[OBJC_IVAR___BKEngagementManager_eventController];
    sub_10079E994();

    v4 = v6;
    goto LABEL_8;
  }

  sub_10079E6A4();
  v3 = sub_10079E684();
  v4 = v6;
  if (v3)
  {
    v2 = v6;
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t sub_100644834()
{
  v1 = sub_1007A3C84();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100798694();
  *(&v52 + 1) = v5;
  v6 = sub_1002256EC(&v51);
  (*(*(v5 - 8) + 16))(v6, v0, v5);
  sub_1007A3C54();
  sub_1007A3C74();
  (*(v2 + 8))(v4, v1);
  sub_1007A3884();

  sub_1007A3934();
  v52 = v49;
  v53 = v50;
  v51 = v48;
  if (!*(&v50 + 1))
  {
    v7 = _swiftEmptyDictionarySingleton;
LABEL_34:

    return v7;
  }

  v7 = _swiftEmptyDictionarySingleton;
  v8 = &type metadata for Double;
  while (1)
  {
    v9 = *(&v51 + 1);
    if (!*(&v51 + 1))
    {
      sub_1000074E0(&v52);
      goto LABEL_5;
    }

    v10 = v51;
    sub_1000076D4(&v52, &v48);
    sub_100007484(&v48, v47);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_100007484(&v48, v47);
    if (swift_dynamicCast())
    {
      v22 = v46;
      if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_36;
      }

      if (v46 <= -9.22337204e18)
      {
        goto LABEL_38;
      }

      if (v46 >= 9.22337204e18)
      {
        goto LABEL_39;
      }

      v23 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47[0] = v7;
      v25 = v10;
      v26 = sub_10000E53C(v10, v9);
      v28 = v7[2];
      v29 = (v27 & 1) == 0;
      v18 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v18)
      {
        goto LABEL_40;
      }

      v31 = v27;
      if (v7[3] >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = v26;
          sub_1002F15B4();
          v26 = v43;
        }
      }

      else
      {
        sub_1003D4D6C(v30, isUniquelyReferenced_nonNull_native);
        v26 = sub_10000E53C(v10, v9);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_42;
        }
      }

      v8 = v23;
      v34 = v22;
      if (v31)
      {
        v35 = v26;

        v7 = v47[0];
        *(*(v47[0] + 56) + 8 * v35) = v34;
        sub_1000074E0(&v48);
      }

      else
      {
        v7 = v47[0];
        *(v47[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v36 = (v7[6] + 16 * v26);
        *v36 = v25;
        v36[1] = v9;
        *(v7[7] + 8 * v26) = v34;
        sub_1000074E0(&v48);
        v37 = v7[2];
        v18 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v18)
        {
          goto LABEL_41;
        }

        v7[2] = v38;
      }
    }

    else
    {
      sub_1000074E0(&v48);
    }

LABEL_5:
    sub_1007A3934();
    v52 = v49;
    v53 = v50;
    v51 = v48;
    if (!*(&v50 + 1))
    {
      goto LABEL_34;
    }
  }

  v11 = v8;
  v12 = v46;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v7;
  v14 = sub_10000E53C(v10, v9);
  v16 = v7[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (!v18)
  {
    v20 = v15;
    if (v7[3] >= v19)
    {
      if ((v13 & 1) == 0)
      {
        v39 = v14;
        sub_1002F15B4();
        v14 = v39;
        v8 = v11;
        if (v20)
        {
LABEL_23:
          v33 = v14;

          v7 = v47[0];
          *(*(v47[0] + 56) + 8 * v33) = v12;
          sub_1000074E0(&v48);
          goto LABEL_5;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_1003D4D6C(v19, v13);
      v14 = sub_10000E53C(v10, v9);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_42;
      }
    }

    v8 = v11;
    if (v20)
    {
      goto LABEL_23;
    }

LABEL_31:
    v7 = v47[0];
    *(v47[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v40 = (v7[6] + 16 * v14);
    *v40 = v10;
    v40[1] = v9;
    *(v7[7] + 8 * v14) = v12;
    sub_1000074E0(&v48);
    v41 = v7[2];
    v18 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v18)
    {
      goto LABEL_37;
    }

    v7[2] = v42;
    goto LABEL_5;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

unint64_t sub_100644D60()
{
  v0 = sub_10079E734();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 0x737465737361;
  *(inited + 40) = 0xE600000000000000;
  sub_10079E6D4();
  v5 = sub_10079E724();
  (*(v1 + 8))(v3, v0);
  v6 = sub_1001F1160(&qword_100AEF370);
  v7 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = v5;
  }

  *(inited + 48) = v7;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001008E3630;
  *(inited + 96) = sub_10079E6E4();
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x80000001008E3650;
  v8 = sub_10079E6F4();
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v8;
  v9 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  return v9;
}

unint64_t sub_100644F4C()
{
  v0 = sub_100798724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  sub_1001F1160(qword_100AEA1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100815060;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = sub_1007987C4();
  *(inited + 56) = v8;
  *(inited + 64) = 0x64616552656D6974;
  *(inited + 72) = 0xEF73646E6F636553;
  sub_1007987B4();
  v9 = sub_100798704();
  v10 = *(v1 + 8);
  v10(v6, v0);
  v19 = v9;
  *(inited + 80) = sub_1007A3A74();
  *(inited + 88) = v11;
  *(inited + 96) = 0xD000000000000012;
  *(inited + 104) = 0x80000001008E35C0;
  sub_1007987B4();
  v12 = sub_100798714();
  v10(v6, v0);
  v19 = v12;
  *(inited + 112) = sub_1007A3A74();
  *(inited + 120) = v13;
  *(inited + 128) = 0x6B61657274537369;
  *(inited + 136) = 0xEB00000000796144;
  sub_1007987B4();
  v14 = sub_1007986F4();
  v10(v3, v0);
  v15 = 1702195828;
  if ((v14 & 1) == 0)
  {
    v15 = 0x65736C6166;
  }

  v16 = 0xE500000000000000;
  if (v14)
  {
    v16 = 0xE400000000000000;
  }

  *(inited + 144) = v15;
  *(inited + 152) = v16;
  v17 = sub_1001ED994(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AE0920);
  swift_arrayDestroy();
  return v17;
}

uint64_t ReadingActivityService.currentStreak.getter()
{
  v1 = sub_100798774();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100798954();
  result = 0;
  if (v14[8] == 2)
  {
    v6 = (v0 + OBJC_IVAR___BKReadingActivityService_historyModule);
    result = swift_beginAccess();
    v7 = v6[3];
    if (v7)
    {
      v8 = sub_10000E3E8(v6, v6[3]);
      v9 = *(v7 - 8);
      v10 = __chkstk_darwin(v8);
      v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v9 + 16))(v12, v10);
      sub_10079EA54();
      (*(v9 + 8))(v12, v7);
      sub_100798954();

      v13 = sub_100798744();
      (*(v2 + 8))(v4, v1);
      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ReadingActivityService.allTimeRecordStreak.getter()
{
  v1 = sub_100798774();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1001F1160(&qword_100AEF228);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  sub_100798954();
  result = 0;
  if (v19[8] == 2)
  {
    v9 = (v0 + OBJC_IVAR___BKReadingActivityService_historyModule);
    result = swift_beginAccess();
    v10 = v9[3];
    if (v10)
    {
      v11 = sub_10000E3E8(v9, v9[3]);
      v12 = *(v10 - 8);
      v13 = __chkstk_darwin(v11);
      v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v12 + 16))(v15, v13);
      sub_10079EA54();
      (*(v12 + 8))(v15, v10);
      sub_100798954();

      sub_100798754();
      (*(v2 + 8))(v4, v1);
      v16 = sub_1007987A4();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v7, 1, v16) == 1)
      {
        sub_100007840(v7, &qword_100AEF228);
        return 0;
      }

      else
      {
        v18 = sub_100798784();
        (*(v17 + 8))(v7, v16);
        return v18;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ReadingActivityService.timeReadToday.getter()
{
  v1 = sub_100798724();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100798774();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100798954();
  result = 0;
  if (v19 == 2)
  {
    v10 = (v0 + OBJC_IVAR___BKReadingActivityService_historyModule);
    result = swift_beginAccess();
    v11 = v10[3];
    if (v11)
    {
      v12 = sub_10000E3E8(v10, v10[3]);
      v18 = &v18;
      v13 = *(v11 - 8);
      v14 = __chkstk_darwin(v12);
      v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16, v14);
      sub_10079EA54();
      (*(v13 + 8))(v16, v11);
      sub_100798954();

      sub_100798764();
      (*(v6 + 8))(v8, v5);
      v17 = sub_100798704();
      (*(v2 + 8))(v4, v1);
      return v17;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ReadingActivityService.todayIsStreakDay.getter()
{
  v1 = sub_100798724();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100798774();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100798954();
  if (v19 != 2)
  {
    v17 = 0;
    return v17 & 1;
  }

  v9 = (v0 + OBJC_IVAR___BKReadingActivityService_historyModule);
  result = swift_beginAccess();
  v11 = v9[3];
  if (v11)
  {
    v12 = sub_10000E3E8(v9, v9[3]);
    v18 = &v18;
    v13 = *(v11 - 8);
    v14 = __chkstk_darwin(v12);
    v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    sub_10079EA54();
    (*(v13 + 8))(v16, v11);
    sub_100798954();

    sub_100798764();
    (*(v6 + 8))(v8, v5);
    v17 = sub_1007986F4();
    (*(v2 + 8))(v4, v1);
    return v17 & 1;
  }

  __break(1u);
  return result;
}

Swift::Double __swiftcall ReadingActivityService.readingTimeTodayIncludingUnflushed()()
{
  v1 = sub_100796BB4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100798954();
  result = 0.0;
  if (LOBYTE(v10[0]) == 2)
  {
    v6 = ReadingActivityService.timeReadToday.getter();
    v7 = v0 + OBJC_IVAR___BKReadingActivityService_historyModule;
    swift_beginAccess();
    if (*(v7 + 24))
    {
      sub_100009864(v7, v10);
      sub_10000E3E8(v10, v10[3]);
      sub_100796BA4();
      sub_10079EA44();
      v9 = v8;
      (*(v2 + 8))(v4, v1);
      sub_1000074E0(v10);
      return v9 + v6;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void ReadingActivityService.readingGoalsEnabled.setter()
{
  v0 = [objc_opt_self() books];
  v1 = [v0 userDefaults];

  isa = sub_1007A2684().super.super.isa;
  v3 = sub_1007A2214();
  [v1 setValue:isa forKey:v3];
}

void sub_100646148()
{
  v0 = [objc_opt_self() books];
  v3 = [v0 userDefaults];

  isa = sub_1007A2684().super.super.isa;
  v2 = sub_1007A2214();
  [v3 setValue:isa forKey:v2];
}

void (*ReadingActivityService.fetchReadingGoalsNotificationEnabled.getter())(void *a1)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10064DC34;
}

void sub_1006462D0(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = sub_1007A2214();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD000000000000029;
  *(v6 + 24) = 0x80000001008E28E0;
  *(v6 + 32) = sub_10064ED7C;
  *(v6 + 40) = v2;
  *(v6 + 48) = 1;
  v8[4] = sub_10064EF18;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1006412EC;
  v8[3] = &unk_100A28CF0;
  v7 = _Block_copy(v8);

  [v3 fetchMetadataBoolForKey:v5 completion:v7];
  _Block_release(v7);
}

void ReadingActivityService.fetchReadingGoalsNotificationEnabled(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1007A2214();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD000000000000029;
  *(v6 + 24) = 0x80000001008E28E0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 1;
  v8[4] = sub_10064EF18;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1006412EC;
  v8[3] = &unk_100A285F0;
  v7 = _Block_copy(v8);

  [v4 fetchMetadataBoolForKey:v5 completion:v7];
  _Block_release(v7);
}

void ReadingActivityService.fetchValue(_:defaultValue:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  v11 = sub_1007A2214();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a3;
  v14[4] = sub_10064EF18;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1006412EC;
  v14[3] = &unk_100A28640;
  v13 = _Block_copy(v14);

  [v10 fetchMetadataBoolForKey:v11 completion:v13];
  _Block_release(v13);
}

void (*ReadingActivityService.updateReadingGoalsNotificationEnabled.getter())(char a1, void *a2)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10064DC3C;
}

void sub_100646730(char a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = objc_opt_self();
  v6 = a2;
  v7 = sub_1007A2214();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10064ED04;
  *(v8 + 24) = v4;
  *(v8 + 32) = 0xD000000000000029;
  *(v8 + 40) = 0x80000001008E28E0;
  *(v8 + 48) = a1;
  v10[4] = sub_10064EF68;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100641374;
  v10[3] = &unk_100A28C78;
  v9 = _Block_copy(v10);

  [v5 updateMetadataBool:a1 & 1 forKey:v7 completion:v9];
  _Block_release(v9);
}

void ReadingActivityService.updateReadingGoalsNotificationEnabled(_:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = sub_1007A2214();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = 0xD000000000000029;
  *(v8 + 40) = 0x80000001008E28E0;
  *(v8 + 48) = a1;
  v10[4] = sub_10064DC44;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100641374;
  v10[3] = &unk_100A286B8;
  v9 = _Block_copy(v10);
  sub_1000260E8(a2);

  [v6 updateMetadataBool:a1 & 1 forKey:v7 completion:v9];
  _Block_release(v9);
}

id sub_100646A10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v12[4] = a4;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100201C54;
  v12[3] = a5;
  v9 = _Block_copy(v12);
  v10 = a1;

  return v9;
}

void (*ReadingActivityService.fetchReadingGoalsCoachingEnabled.getter())(void *a1)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10064DC48;
}

void sub_100646B2C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = sub_1007A2214();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD00000000000002CLL;
  *(v6 + 24) = 0x80000001008E2890;
  *(v6 + 32) = sub_10064ECE4;
  *(v6 + 40) = v2;
  *(v6 + 48) = 0;
  v8[4] = sub_10064EF18;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1006412EC;
  v8[3] = &unk_100A28C00;
  v7 = _Block_copy(v8);

  [v3 fetchMetadataBoolForKey:v5 completion:v7];
  _Block_release(v7);
}

id sub_100646CBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v12[4] = a4;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10068A5C4;
  v12[3] = a5;
  v9 = _Block_copy(v12);
  v10 = a1;

  return v9;
}

uint64_t (*ReadingActivityService.updateReadingGoalsCoachingEnabled.getter())(char a1, void *a2)
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  return sub_10064DC50;
}

uint64_t sub_100646DD8(char a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = a2;
  ReadingActivityService.updateReadingGoalsCoachingEnabled(_:completion:)(a1, sub_10064ECC4, v4);
}

uint64_t sub_100646E5C(char a1, objc_class *a2, void *a3)
{
  v6 = [objc_opt_self() sharedInstance];
  sub_1001F1160(&qword_100AD7FB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080B690;
  *(v7 + 56) = &type metadata for Bool;
  *(v7 + 32) = a1;
  v13._countAndFlagsBits = 0x80000001008E37C0;
  v8.super.isa = a2;
  v12.value._rawValue = v7;
  v12.is_nil = 110;
  v13._object = a3;
  sub_1007A32F4(v8, v12, v13, v9);
}

void ReadingActivityService.updateReadingGoalsCoachingEnabled(_:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = objc_opt_self();

  sub_1000260E8(a2);
  v9 = sub_1007A2214();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10064DC58;
  *(v10 + 24) = v7;
  *(v10 + 32) = 0xD00000000000002CLL;
  *(v10 + 40) = 0x80000001008E2890;
  *(v10 + 48) = a1;
  v12[4] = sub_10064EF68;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100641374;
  v12[3] = &unk_100A287A8;
  v11 = _Block_copy(v12);

  [v8 updateMetadataBool:a1 & 1 forKey:v9 completion:v11];
  _Block_release(v11);
}

void sub_100647100(char a1, uint64_t a2, char a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = *(Strong + OBJC_IVAR___BKReadingActivityService_readingActivityDonor);
      if (!v9)
      {
        __break(1u);
        return;
      }

      v9[OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApproved] = a3 & 1;
      [v9 propertyDidChange:v9 propertyConfiguration:*&v9[OBJC_IVAR____TtC5Books20ReadingActivityDonor_coachingPermissionApprovedConfig]];
    }

    if (a4)
    {

      a4(a1 & 1);
      sub_100007020(a4);
    }
  }
}

uint64_t sub_1006471D8(uint64_t result, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {
    if (result)
    {
      sub_1000260E8(a2);
      swift_errorRetain();
      sub_1007A29B4();
      sub_10001389C();
      v10 = sub_1007A33C4();
      sub_1001F1160(&unk_100AD5090);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100812CF0;
      *(v11 + 56) = &type metadata for String;
      v12 = sub_10000E4C4();
      *(v11 + 64) = v12;
      *(v11 + 32) = a4;
      *(v11 + 40) = a5;
      *(v11 + 96) = &type metadata for Bool;
      *(v11 + 104) = &protocol witness table for Bool;
      *(v11 + 72) = a6 & 1;
      swift_getErrorValue();

      v13 = sub_1007A3B84();
      *(v11 + 136) = &type metadata for String;
      *(v11 + 144) = v12;
      *(v11 + 112) = v13;
      *(v11 + 120) = v14;
      sub_10079AB44();

      a2(0);
      sub_100007020(a2);
    }

    else
    {

      a2(1);

      return sub_100007020(a2);
    }
  }

  return result;
}

uint64_t sub_1006473B8(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, char a8)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1007A29B4();
    sub_10001389C();
    v10 = sub_1007A33C4();
    sub_1001F1160(&unk_100AD5090);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10080EFF0;
    *(v11 + 56) = &type metadata for String;
    v12 = sub_10000E4C4();
    *(v11 + 64) = v12;
    *(v11 + 32) = a4;
    *(v11 + 40) = a5;
    swift_getErrorValue();

    v13 = sub_1007A3B84();
    *(v11 + 96) = &type metadata for String;
    *(v11 + 104) = v12;
    *(v11 + 72) = v13;
    *(v11 + 80) = v14;
    sub_10079AB44();

    a6(a8 & 1);
  }

  else
  {
    if (a2)
    {
      v16 = a1 & 1;
    }

    else
    {
      v16 = a8 & 1;
    }

    return a6(v16);
  }
}

void sub_100647530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3)
    {
      swift_errorRetain();
      sub_1007A29B4();
      sub_10001389C();
      v6 = sub_1007A33C4();
      sub_1001F1160(&unk_100AD5090);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_10080B690;
      swift_getErrorValue();
      v8 = sub_1007A3B84();
      v10 = v9;
      *(v7 + 56) = &type metadata for String;
      *(v7 + 64) = sub_10000E4C4();
      *(v7 + 32) = v8;
      *(v7 + 40) = v10;
      sub_10079AB44();

      v11 = *&v5[OBJC_IVAR___BKReadingActivityService_didSeeWelcomeExperience];
      isa = sub_1007A2684().super.super.isa;
      [v11 updateValue:isa];
    }

    else
    {
      v13 = *(Strong + OBJC_IVAR___BKReadingActivityService_didSeeWelcomeExperience);
      v14 = sub_1007A2684().super.super.isa;
      [v13 updateValue:v14];
    }
  }
}

void sub_100647748()
{
  if ([*(v0 + OBJC_IVAR___BKReadingActivityService_didSeeWelcomeExperience) getValue])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = v10;
  v6 = v11;
  if (*(&v11 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && (v9 & 1) == 0)
    {
      v1 = objc_opt_self();

      v2 = sub_1007A2214();

      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = sub_10064ECAC;
      v8 = v3;
      *&v5 = _NSConcreteStackBlock;
      *(&v5 + 1) = 1107296256;
      *&v6 = sub_1006412EC;
      *(&v6 + 1) = &unk_100A28980;
      v4 = _Block_copy(&v5);

      [v1 fetchMetadataBoolForKey:v2 completion:v4];
      _Block_release(v4);
    }
  }

  else
  {
    sub_100007840(&v5, &unk_100AD5B40);
  }
}

uint64_t ReadingActivityService.state(for:)(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v3[46] = sub_1001F1160(&unk_100AEF230);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v4 = sub_100796D84();
  v3[49] = v4;
  v3[50] = *(v4 - 8);
  v3[51] = swift_task_alloc();
  v5 = sub_100796DA4();
  v3[52] = v5;
  v3[53] = *(v5 - 8);
  v3[54] = swift_task_alloc();
  sub_1001F1160(&unk_100ADB5C0);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v6 = sub_100796BB4();
  v3[58] = v6;
  v3[59] = *(v6 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_100647C18, 0, 0);
}

uint64_t sub_100647C18()
{
  v1 = v0[45] + OBJC_IVAR___BKReadingActivityService_booksFinishedModule;
  v2 = swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_100009864(v1 + 80, (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    sub_10000E3E8(v0 + 2, v5);
    v7 = swift_task_alloc();
    v0[63] = v7;
    *v7 = v0;
    v7[1] = sub_100647D10;
    v2 = v0[44];
    v3 = v5;
    v4 = v6;
  }

  else
  {
    __break(1u);
  }

  return dispatch thunk of BooksFinishedDataSource.fetchFinishedAssets(in:)(v2, v3, v4);
}

uint64_t sub_100647D10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v4 = sub_1006486B0;
  }

  else
  {
    v4 = sub_100647E28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100647E28()
{
  v67 = v0;
  v1 = *(v0 + 520);
  v66 = *(v0 + 512);

  sub_10064A364(&v66);
  if (v1)
  {
  }

  v3 = v66;
  result = sub_1000074E0(v0 + 16);
  v4 = v3[2];
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = (v3 + 4);
    do
    {
      sub_100009864(v6, v0 + 56);
      sub_1007991E4();
      sub_1000074E0(v0 + 56);
      if (*(v0 + 160))
      {
        sub_1000077C0((v0 + 136), v0 + 96);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10066ABE4(0, v5[2] + 1, 1, v5);
        }

        v8 = v5[2];
        v7 = v5[3];
        if (v8 >= v7 >> 1)
        {
          v5 = sub_10066ABE4((v7 > 1), v8 + 1, 1, v5);
        }

        v5[2] = v8 + 1;
        result = sub_1000077C0((v0 + 96), &v5[5 * v8 + 4]);
      }

      else
      {
        result = sub_100007840(v0 + 136, &qword_100AEF240);
      }

      v6 += 40;
      --v4;
    }

    while (v4);
  }

  v9 = v5[2];
  if (v9)
  {
    v10 = 0;
    v11 = (v5 + 4);
    v12 = _swiftEmptyArrayStorage;
    while (v10 < v5[2])
    {
      sub_100009864(v11, v0 + 176);
      sub_10000E3E8((v0 + 176), *(v0 + 200));
      v13 = sub_100799524();
      if (v13 != 2 && (v13 & 1) != 0)
      {
        result = sub_1000074E0(v0 + 176);
      }

      else
      {
        sub_1000077C0((v0 + 176), v0 + 216);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003BD600(0, v12[2] + 1, 1);
          v12 = v66;
        }

        v16 = v12[2];
        v15 = v12[3];
        if (v16 >= v15 >> 1)
        {
          sub_1003BD600((v15 > 1), v16 + 1, 1);
          v12 = v66;
        }

        v12[2] = v16 + 1;
        result = sub_1000077C0((v0 + 216), &v12[5 * v16 + 4]);
      }

      ++v10;
      v11 += 40;
      if (v9 == v10)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_27:
  v17 = *(v0 + 464);
  v18 = *(v0 + 472);
  v19 = *(v0 + 456);
  sub_100796D04();
  sub_100796A24();
  v20 = *(v18 + 48);
  if (v20(v19, 1, v17) == 1)
  {
    v21 = *(v0 + 456);

    sub_100007840(v21, &unk_100ADB5C0);
    sub_10064DC68();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
LABEL_34:

    v41 = *(v0 + 8);
    goto LABEL_37;
  }

  v64 = v20;
  v23 = *(v0 + 488);
  v24 = *(v0 + 472);
  v61 = *(v0 + 464);
  v26 = *(v0 + 424);
  v25 = *(v0 + 432);
  v27 = *(v0 + 408);
  v29 = *(v0 + 392);
  v28 = *(v0 + 400);
  v62 = *(v0 + 352);
  v63 = *(v0 + 416);
  v57 = *(v24 + 32);
  (v57)(*(v0 + 496), *(v0 + 456));
  sub_100796D64();
  (*(v28 + 104))(v27, enum case for Calendar.Component.year(_:), v29);
  sub_100796B74();
  v60 = sub_100796D94();
  v59 = *(v24 + 8);
  v59(v23, v61);
  (*(v28 + 8))(v27, v29);
  (*(v26 + 8))(v25, v63);
  if (v60 == v62)
  {
    v30 = *(v0 + 464);
    v31 = *(v0 + 472);
    v32 = *(v0 + 448);
    sub_100796B74();
    (*(v31 + 56))(v32, 0, 1, v30);
  }

  else
  {
    sub_100796D04();
    sub_100796A24();
  }

  v33 = *(v0 + 464);
  v34 = *(v0 + 440);
  sub_1000077D8(*(v0 + 448), v34, &unk_100ADB5C0);
  v35 = v64(v34, 1, v33);
  v36 = *(v0 + 496);
  if (v35 == 1)
  {
    v37 = *(v0 + 464);
    v38 = *(v0 + 440);
    v39 = *(v0 + 448);

    sub_100007840(v38, &unk_100ADB5C0);
    sub_10064DC68();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
    sub_100007840(v39, &unk_100ADB5C0);
    v59(v36, v37);
    goto LABEL_34;
  }

  v43 = *(v0 + 472);
  v42 = *(v0 + 480);
  v44 = *(v0 + 464);
  v45 = *(v0 + 384);
  v46 = *(v0 + 360);
  v47 = *(v0 + 368);
  v57(v42, *(v0 + 440), v44);
  v65 = v47;
  v48 = *(v47 + 48);
  v49 = *(v43 + 16);
  v49(v45, v36, v44);
  v49(v45 + v48, v42, v44);
  v50 = v46 + OBJC_IVAR___BKReadingActivityService_historyModule;
  result = swift_beginAccess();
  if (!*(v50 + 24))
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v58 = *(v0 + 496);
  v51 = *(v0 + 464);
  v55 = *(v0 + 480);
  v56 = *(v0 + 448);
  v52 = *(v0 + 376);
  v53 = *(v0 + 384);
  sub_100009864(v50 + 80, v0 + 256);

  sub_10000E3E8((v0 + 256), *(v0 + 280));
  sub_1000077D8(v53, v52, &unk_100AEF230);
  v54 = *(v65 + 48);
  sub_1007985B4();
  v59(v52 + v54, v51);
  v59(v52, v51);
  sub_1000074E0(v0 + 256);
  sub_1007977B4();
  sub_100007840(v53, &unk_100AEF230);
  v59(v55, v51);
  sub_100007840(v56, &unk_100ADB5C0);
  v59(v58, v51);

  v41 = *(v0 + 8);
LABEL_37:

  return v41();
}

uint64_t sub_1006486B0()
{
  sub_1000074E0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006487A0(void *a1, void *a2)
{
  v20 = a1;
  v3 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v3 - 8);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_100796BB4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  sub_10000E3E8(a2, a2[3]);
  sub_100799054();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_100796B74();
    if (v15(v7, 1, v8) != 1)
    {
      sub_100007840(v7, &unk_100ADB5C0);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  sub_10000E3E8(v20, v20[3]);
  v16 = v21;
  sub_100799054();
  if (v15(v16, 1, v8) == 1)
  {
    sub_100796B74();
    if (v15(v16, 1, v8) != 1)
    {
      sub_100007840(v16, &unk_100ADB5C0);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v16, v8);
  }

  v17 = sub_100796B04();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  return v17 & 1;
}

uint64_t sub_100648D84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002812C;

  return ReadingActivityService.state(for:)(a1, a2);
}

Swift::Void __swiftcall ReadingActivityService.changeBooksPerYearGoal(_:_:)(Swift::Int a1, Swift::Bool a2)
{
  v3 = v2;
  sub_1007A2994();
  sub_10001389C();
  v6 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080B690;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  sub_10079AB44();

  if (a2)
  {
    v8 = *(v3 + OBJC_IVAR___BKReadingActivityService_booksFinishedGoal);
    isa = sub_1007A2884().super.super.isa;
    [v8 updateValue:isa];
  }

  else
  {
    v9 = v3 + OBJC_IVAR___BKReadingActivityService_goalsModule;
    swift_beginAccess();
    if (*(v9 + 24))
    {
      sub_100009864(v9 + 40, v11);
      sub_10000E3E8(v11, v11[3]);
      sub_100798BE4();
      sub_1000074E0(v11);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall ReadingActivityService.changeDailyGoal(_:_:)(Swift::Double a1, Swift::Bool a2)
{
  v3 = v2;
  v27 = sub_100798724();
  v6 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100798774();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007A2994();
  sub_10001389C();
  v13 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10080B690;
  *(v14 + 56) = &type metadata for Double;
  *(v14 + 64) = &protocol witness table for Double;
  *(v14 + 32) = a1;
  sub_10079AB44();

  if (a2)
  {
    v15 = *(v3 + OBJC_IVAR___BKReadingActivityService_dailyGoal);
    isa = sub_1007A27B4().super.super.isa;
    [v15 updateValue:isa];

    v26 = *(v3 + OBJC_IVAR___BKReadingActivityService_isDailyGoalCompleted);
    v17 = (v3 + OBJC_IVAR___BKReadingActivityService_historyModule);
    swift_beginAccess();
    v18 = v17[3];
    if (v18)
    {
      v19 = sub_10000E3E8(v17, v17[3]);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      sub_10079EA54();
      (*(v20 + 8))(v23, v18);
      sub_100798954();

      sub_100798764();
      (*(v10 + 8))(v12, v9);
      sub_1007986F4();
      (*(v6 + 8))(v8, v27);
      v24 = sub_1007A2684().super.super.isa;
      [v26 updateValue:v24];

      return;
    }

    __break(1u);
  }

  else
  {
    v25 = v3 + OBJC_IVAR___BKReadingActivityService_goalsModule;
    swift_beginAccess();
    if (*(v25 + 24))
    {
      sub_100009864(v25 + 40, v28);
      sub_10000E3E8(v28, v28[3]);
      sub_100798BD4();
      sub_1000074E0(v28);
      return;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall ReadingActivityService.setCurrentBooksFinishedState(to:)(Swift::Int to)
{
  v2 = v1 + OBJC_IVAR___BKReadingActivityService_booksFinishedModule;
  swift_beginAccess();
  if (*(v2 + 24))
  {
    sub_100009864(v2 + 40, v3);
    sub_10000E3E8(v3, v3[3]);
    sub_10079E9E4();
    sub_1000074E0(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ReadingActivityService.setReadingHistory(beginning:ending:)()
{
  v1 = v0 + OBJC_IVAR___BKReadingActivityService_historyModule;
  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_100009864(v1 + 40, v3);
    sub_10000E3E8(v3, v3[3]);
    sub_10079EA64();
    return sub_1000074E0(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingActivityService.setReadingHistoryForWeek(ending:)()
{
  v1 = v0 + OBJC_IVAR___BKReadingActivityService_historyModule;
  result = swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_100009864(v1 + 40, v3);
    sub_10000E3E8(v3, v3[3]);
    sub_10079EA74();
    return sub_1000074E0(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100649A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_1007A29D4();
  sub_10001389C();
  v6 = sub_1007A33C4();
  sub_10079AB44();

  v7 = *(v5 + OBJC_IVAR___BKReadingActivityService_notificationSuppressingEventHandler);
  if (v7)
  {

    v7(a3);

    sub_100007020(v7);
  }
}

void sub_100649B7C(uint64_t a1, uint64_t a2)
{
  v3 = qword_100AEF0E0;
  v4 = off_100AEF0E8;
  v5 = objc_opt_self();

  v6 = sub_1007A2214();
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v11[4] = sub_10064ECBC;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100641374;
  v11[3] = &unk_100A28B60;
  v8 = _Block_copy(v11);

  [v5 updateMetadataBool:1 forKey:v6 completion:v8];
  _Block_release(v8);

  v9 = *(a2 + OBJC_IVAR___BKReadingActivityService_didSeeWelcomeExperience);
  isa = sub_1007A2684().super.super.isa;
  [v9 updateValue:isa];
}

uint64_t sub_100649CC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_errorRetain();
    sub_1007A29B4();
    sub_10001389C();
    v5 = sub_1007A33C4();
    sub_1001F1160(&unk_100AD5090);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10080EFF0;
    *(v6 + 56) = &type metadata for String;
    v7 = sub_10000E4C4();
    *(v6 + 64) = v7;
    *(v6 + 32) = a2;
    *(v6 + 40) = a3;
    swift_getErrorValue();

    v8 = sub_1007A3B84();
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v7;
    *(v6 + 72) = v8;
    *(v6 + 80) = v9;
    sub_10079AB44();
  }

  return result;
}

void ReadingActivityService.dynamicProgressChanged(_:)(void *a1)
{
  v3 = [a1 progress];
  v4 = [v3 integerValue];

  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * v4 + 0x888888888888888, 2) <= 0x444444444444444uLL)
  {
    v5 = *(v1 + OBJC_IVAR___BKReadingActivityService_readingIndicatorTimeToday);
    v6 = [a1 progress];
    [v6 integerValue];

    isa = sub_1007A2884().super.super.isa;
    [v5 updateValue:isa];
  }
}

void sub_10064A364(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1007859C8(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_10064A3D0(v4);
  *a1 = v2;
}

void sub_10064A3D0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1007A3A64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001F1160(&qword_100AEF3D0);
        v5 = sub_1007A2634();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10064A8E4(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10064A4D8(0, v2, 1, a1);
  }
}

void sub_10064A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v42 = &v33[-v12];
  v13 = sub_100796BB4();
  __chkstk_darwin(v13);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v48 = &v33[-v18];
  v34 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v44 = (v17 + 48);
    v39 = (v17 + 8);
    v40 = (v17 + 32);
    v38 = v19;
    v20 = v19 + 40 * a3;
    v21 = a1 - a3;
    v41 = v15;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v35 = v21;
    v22 = v20;
    while (1)
    {
      sub_100009864(v22, &v46);
      sub_100009864(v22 - 40, v45);
      sub_10000E3E8(v45, v45[3]);
      v23 = v42;
      sub_100799054();
      v24 = *v44;
      if ((*v44)(v23, 1, v13) == 1)
      {
        sub_100796B74();
        if (v24(v23, 1, v13) != 1)
        {
          sub_100007840(v23, &unk_100ADB5C0);
        }
      }

      else
      {
        (*v40)(v48, v23, v13);
      }

      sub_10000E3E8(&v46, v47);
      sub_100799054();
      v25 = v24(v10, 1, v13);
      v43 = v21;
      if (v25 == 1)
      {
        v26 = v41;
        sub_100796B74();
        if (v24(v10, 1, v13) != 1)
        {
          sub_100007840(v10, &unk_100ADB5C0);
        }
      }

      else
      {
        v26 = v41;
        (*v40)(v41, v10, v13);
      }

      v27 = v48;
      v28 = sub_100796B04();
      v29 = *v39;
      (*v39)(v26, v13);
      v29(v27, v13);
      sub_1000074E0(v45);
      sub_1000074E0(&v46);
      v30 = v43;
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + 40;
        v21 = v35 - 1;
        if (v37 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      sub_1000077C0(v22, &v46);
      v31 = *(v22 - 24);
      *v22 = *(v22 - 40);
      *(v22 + 16) = v31;
      *(v22 + 32) = *(v22 - 8);
      sub_1000077C0(&v46, v22 - 40);
      v22 -= 40;
      v32 = __CFADD__(v30, 1);
      v21 = v30 + 1;
      if (v32)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10064A8E4(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v117 = a1;
  v8 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v131 = &v112 - v12;
  __chkstk_darwin(v13);
  v123 = &v112 - v14;
  __chkstk_darwin(v15);
  v122 = &v112 - v16;
  v17 = sub_100796BB4();
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v134 = &v112 - v19;
  __chkstk_darwin(v20);
  v121 = &v112 - v21;
  __chkstk_darwin(v22);
  v124 = a3;
  v125 = &v112 - v25;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_107:
    a3 = *v117;
    if (!*v117)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_109;
    }

    goto LABEL_141;
  }

  v114 = a4;
  v27 = 0;
  v28 = (v23 + 48);
  v133 = (v23 + 32);
  v29 = _swiftEmptyArrayStorage;
  v132 = (v23 + 8);
  v129 = v24;
  v130 = v10;
  v128 = (v23 + 48);
  while (1)
  {
    v30 = v27;
    if (v27 + 1 >= v26)
    {
      v42 = v27 + 1;
    }

    else
    {
      a3 = *v124;
      sub_100009864(*v124 + 40 * (v27 + 1), &v137);
      sub_100009864(a3 + 40 * v30, v135);
      LODWORD(v127) = sub_1006487A0(&v137, v135);
      if (v5)
      {
        sub_1000074E0(v135);
        sub_1000074E0(&v137);
LABEL_119:

        return;
      }

      v126 = v26;
      v116 = 0;
      sub_1000074E0(v135);
      sub_1000074E0(&v137);
      v31 = v30 + 2;
      v115 = v30;
      v120 = 40 * v30;
      v32 = a3 + 40 * v30 + 80;
      do
      {
        if (v126 == v31)
        {
          v42 = v126;
          goto LABEL_20;
        }

        v37 = v29;
        sub_100009864(v32, &v137);
        sub_100009864(v32 - 40, v135);
        sub_10000E3E8(v135, v136);
        v38 = v122;
        sub_100799054();
        v39 = *v28;
        if ((*v28)(v38, 1, v17) == 1)
        {
          sub_100796B74();
          if (v39(v38, 1, v17) != 1)
          {
            sub_100007840(v38, &unk_100ADB5C0);
          }
        }

        else
        {
          (*v133)(v125, v38, v17);
        }

        sub_10000E3E8(&v137, v138);
        v40 = v123;
        sub_100799054();
        if (v39(v40, 1, v17) == 1)
        {
          v33 = v121;
          sub_100796B74();
          v41 = v39(v40, 1, v17);
          v29 = v37;
          if (v41 != 1)
          {
            sub_100007840(v40, &unk_100ADB5C0);
          }
        }

        else
        {
          v33 = v121;
          (*v133)(v121, v40, v17);
          v29 = v37;
        }

        v34 = v125;
        a3 = sub_100796B04();
        v35 = v33;
        v36 = *v132;
        (*v132)(v35, v17);
        v36(v34, v17);
        sub_1000074E0(v135);
        sub_1000074E0(&v137);
        ++v31;
        v32 += 40;
      }

      while (((v127 ^ a3) & 1) == 0);
      v42 = v31 - 1;
LABEL_20:
      v5 = v116;
      v30 = v115;
      if (v127)
      {
        if (v42 < v115)
        {
          goto LABEL_140;
        }

        if (v115 < v42)
        {
          v43 = 40 * v42 - 40;
          v44 = v115;
          v126 = v42;
          v45 = v120;
          do
          {
            if (v44 != --v42)
            {
              v50 = v45;
              v51 = *v124;
              if (!*v124)
              {
                goto LABEL_144;
              }

              v46 = v50;
              a3 = v51 + v50;
              v47 = v51 + v43;
              sub_1000077C0((v51 + v50), &v137);
              v48 = *(v47 + 32);
              v49 = *(v47 + 16);
              *a3 = *v47;
              *(a3 + 16) = v49;
              *(a3 + 32) = v48;
              sub_1000077C0(&v137, v47);
              v45 = v46;
            }

            ++v44;
            v43 -= 40;
            v45 += 40;
          }

          while (v44 < v42);
          v5 = v116;
          v30 = v115;
          v42 = v126;
        }
      }
    }

    v52 = v124[1];
    if (v42 < v52)
    {
      if (__OFSUB__(v42, v30))
      {
        goto LABEL_137;
      }

      if (v42 - v30 < v114)
      {
        break;
      }
    }

LABEL_56:
    if (v42 < v30)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_10066B274(0, *(v29 + 2) + 1, 1, v29);
    }

    a3 = *(v29 + 2);
    v63 = *(v29 + 3);
    v64 = a3 + 1;
    if (a3 >= v63 >> 1)
    {
      v29 = sub_10066B274((v63 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v64;
    v65 = &v29[16 * a3];
    *(v65 + 4) = v30;
    *(v65 + 5) = v42;
    v118 = v42;
    v66 = *v117;
    if (!*v117)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v67 = *(v29 + 4);
          v68 = *(v29 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_76:
          if (v70)
          {
            goto LABEL_125;
          }

          v83 = &v29[16 * v64];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_128;
          }

          v89 = &v29[16 * a3 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_132;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              a3 = v64 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v93 = &v29[16 * v64];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_90:
        if (v88)
        {
          goto LABEL_127;
        }

        v96 = &v29[16 * a3];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_130;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_97:
        v104 = a3 - 1;
        if (a3 - 1 >= v64)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v124)
        {
          goto LABEL_143;
        }

        v105 = *&v29[16 * v104 + 32];
        v106 = *&v29[16 * a3 + 40];
        sub_10064B568((*v124 + 40 * v105), (*v124 + 40 * *&v29[16 * a3 + 32]), *v124 + 40 * v106, v66);
        if (v5)
        {
          goto LABEL_119;
        }

        if (v106 < v105)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_100784A7C(v29);
        }

        if (v104 >= *(v29 + 2))
        {
          goto LABEL_122;
        }

        v107 = &v29[16 * v104];
        *(v107 + 4) = v105;
        *(v107 + 5) = v106;
        v139 = v29;
        sub_1007849F0(a3);
        v29 = v139;
        v64 = *(v139 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v29[16 * v64 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_123;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_124;
      }

      v78 = &v29[16 * v64];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_126;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_129;
      }

      if (v82 >= v74)
      {
        v100 = &v29[16 * a3 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_133;
        }

        if (v69 < v103)
        {
          a3 = v64 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v26 = v124[1];
    v27 = v118;
    if (v118 >= v26)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v30, v114))
  {
    goto LABEL_138;
  }

  if (v30 + v114 < v52)
  {
    v52 = v30 + v114;
  }

  if (v52 < v30)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    v29 = sub_100784A7C(v29);
LABEL_109:
    v139 = v29;
    v108 = *(v29 + 2);
    if (v108 >= 2)
    {
      while (*v124)
      {
        v109 = *&v29[16 * v108];
        v110 = *&v29[16 * v108 + 24];
        sub_10064B568((*v124 + 40 * v109), (*v124 + 40 * *&v29[16 * v108 + 16]), *v124 + 40 * v110, a3);
        if (v5)
        {
          goto LABEL_119;
        }

        if (v110 < v109)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_100784A7C(v29);
        }

        if (v108 - 2 >= *(v29 + 2))
        {
          goto LABEL_135;
        }

        v111 = &v29[16 * v108];
        *v111 = v109;
        *(v111 + 1) = v110;
        v139 = v29;
        sub_1007849F0(v108 - 1);
        v29 = v139;
        v108 = *(v139 + 2);
        if (v108 <= 1)
        {
          goto LABEL_119;
        }
      }

      goto LABEL_145;
    }

    goto LABEL_119;
  }

  v118 = v52;
  if (v42 == v52)
  {
    goto LABEL_56;
  }

  v113 = v29;
  v116 = v5;
  v127 = *v124;
  a3 = v127 + 40 * v42;
  v115 = v30;
  v53 = v30 - v42;
LABEL_41:
  v126 = v42;
  v119 = v53;
  v120 = a3;
  while (1)
  {
    sub_100009864(a3, &v137);
    sub_100009864(a3 - 40, v135);
    sub_10000E3E8(v135, v136);
    v54 = v131;
    sub_100799054();
    v55 = *v28;
    if ((*v28)(v54, 1, v17) == 1)
    {
      sub_100796B74();
      if (v55(v54, 1, v17) != 1)
      {
        sub_100007840(v54, &unk_100ADB5C0);
      }
    }

    else
    {
      (*v133)(v134, v54, v17);
    }

    sub_10000E3E8(&v137, v138);
    v56 = v130;
    sub_100799054();
    if (v55(v56, 1, v17) == 1)
    {
      v57 = v129;
      sub_100796B74();
      if (v55(v56, 1, v17) != 1)
      {
        sub_100007840(v56, &unk_100ADB5C0);
      }
    }

    else
    {
      v57 = v129;
      (*v133)(v129, v56, v17);
    }

    v58 = v134;
    v59 = sub_100796B04();
    v60 = *v132;
    (*v132)(v57, v17);
    v60(v58, v17);
    sub_1000074E0(v135);
    sub_1000074E0(&v137);
    if ((v59 & 1) == 0)
    {
      v28 = v128;
LABEL_40:
      v42 = v126 + 1;
      a3 = v120 + 40;
      v53 = v119 - 1;
      if (v126 + 1 == v118)
      {
        v5 = v116;
        v29 = v113;
        v30 = v115;
        v42 = v118;
        goto LABEL_56;
      }

      goto LABEL_41;
    }

    if (!v127)
    {
      break;
    }

    sub_1000077C0(a3, &v137);
    v61 = *(a3 - 24);
    *a3 = *(a3 - 40);
    *(a3 + 16) = v61;
    *(a3 + 32) = *(a3 - 8);
    sub_1000077C0(&v137, a3 - 40);
    a3 -= 40;
    v62 = __CFADD__(v53++, 1);
    v28 = v128;
    if (v62)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_10064B568(char *a1, char *a2, unint64_t a3, char *a4)
{
  v8 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v8 - 8);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v65 - v11;
  __chkstk_darwin(v12);
  v71 = (&v65 - v13);
  __chkstk_darwin(v14);
  v70 = &v65 - v15;
  v16 = sub_100796BB4();
  __chkstk_darwin(v16);
  v69 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v81 = (&v65 - v19);
  __chkstk_darwin(v20);
  v68 = &v65 - v21;
  __chkstk_darwin(v22);
  v76 = &v65 - v24;
  v25 = (a2 - a1) / 40;
  v26 = (a3 - a2) / 40;
  if (v25 >= v26)
  {
    if (a4 != a2 || &a2[40 * v26] <= a4)
    {
      v44 = v23;
      memmove(a4, a2, 40 * v26);
      v23 = v44;
    }

    v74 = &a4[40 * v26];
    v27 = a4;
    if ((a3 - a2) < 40)
    {
      v43 = a2;
      goto LABEL_52;
    }

    if (a2 <= a1)
    {
      v43 = a2;
      goto LABEL_52;
    }

    v70 = (v23 + 8);
    v71 = (v23 + 32);
    v66 = a1;
    v45 = (v23 + 48);
    v67 = a4;
    v68 = (v23 + 48);
    while (1)
    {
      v75 = a2;
      v46 = (a2 - 40);
      v47 = (v74 - 40);
      a3 -= 40;
      v76 = v46;
      while (1)
      {
        sub_100009864(v47, v79);
        sub_100009864(v46, v77);
        sub_10000E3E8(v77, v78);
        v50 = v72;
        sub_100799054();
        v51 = *v45;
        if ((*v45)(v50, 1, v16) == 1)
        {
          sub_100796B74();
          if (v51(v50, 1, v16) != 1)
          {
            sub_100007840(v50, &unk_100ADB5C0);
          }
        }

        else
        {
          (*v71)(v81, v50, v16);
        }

        sub_10000E3E8(v79, v80);
        v52 = v73;
        sub_100799054();
        if (v51(v52, 1, v16) == 1)
        {
          v53 = v69;
          sub_100796B74();
          v54 = v51(v52, 1, v16);
          v27 = v67;
          if (v54 != 1)
          {
            sub_100007840(v52, &unk_100ADB5C0);
          }
        }

        else
        {
          v53 = v69;
          (*v71)(v69, v52, v16);
          v27 = v67;
        }

        v55 = v81;
        v56 = sub_100796B04();
        v57 = *v70;
        (*v70)(v53, v16);
        v57(v55, v16);
        sub_1000074E0(v77);
        sub_1000074E0(v79);
        if (v56)
        {
          break;
        }

        v46 = v76;
        if (a3 + 40 != v47 + 40)
        {
          v58 = *v47;
          v59 = *(v47 + 16);
          *(a3 + 32) = *(v47 + 32);
          *a3 = v58;
          *(a3 + 16) = v59;
        }

        v48 = v47 - 40;
        a3 -= 40;
        v49 = v47 > v27;
        v47 -= 40;
        v45 = v68;
        if (!v49)
        {
          v74 = (v48 + 40);
          v43 = v75;
          goto LABEL_52;
        }
      }

      v43 = v76;
      v60 = v66;
      if ((a3 + 40) != v75)
      {
        v61 = *v76;
        v62 = *(v76 + 1);
        *(a3 + 32) = *(v76 + 4);
        *a3 = v61;
        *(a3 + 16) = v62;
      }

      v74 = (v47 + 40);
      v45 = v68;
      if (v47 + 40 > v27)
      {
        a2 = v43;
        if (v43 > v60)
        {
          continue;
        }
      }

      v74 = (v47 + 40);
      goto LABEL_52;
    }
  }

  v27 = a4;
  if (a4 != a1 || &a1[40 * v25] <= a4)
  {
    v28 = v23;
    memmove(a4, a1, 40 * v25);
    v23 = v28;
  }

  v74 = &a4[40 * v25];
  if (a2 - a1 < 40 || a2 >= a3)
  {
    v43 = a1;
    goto LABEL_52;
  }

  v29 = a2;
  v30 = (v23 + 48);
  v81 = (v23 + 32);
  v73 = (v23 + 8);
  do
  {
    v75 = v29;
    sub_100009864(v29, v79);
    sub_100009864(v27, v77);
    sub_10000E3E8(v77, v78);
    v31 = v70;
    sub_100799054();
    v32 = *v30;
    if ((*v30)(v31, 1, v16) == 1)
    {
      sub_100796B74();
      if (v32(v31, 1, v16) != 1)
      {
        sub_100007840(v31, &unk_100ADB5C0);
      }
    }

    else
    {
      (*v81)(v76, v31, v16);
    }

    sub_10000E3E8(v79, v80);
    v33 = v71;
    sub_100799054();
    if (v32(v33, 1, v16) == 1)
    {
      v34 = v68;
      sub_100796B74();
      if (v32(v33, 1, v16) != 1)
      {
        sub_100007840(v33, &unk_100ADB5C0);
      }
    }

    else
    {
      v34 = v68;
      (*v81)(v68, v33, v16);
    }

    v35 = v76;
    v36 = sub_100796B04();
    v37 = v34;
    v38 = *v73;
    (*v73)(v37, v16);
    v38(v35, v16);
    sub_1000074E0(v77);
    sub_1000074E0(v79);
    if (v36)
    {
      v39 = v75;
      v29 = (v75 + 40);
      if (a1 == v75)
      {
        goto LABEL_21;
      }

LABEL_20:
      v41 = *v39;
      v42 = *(v39 + 1);
      *(a1 + 4) = *(v39 + 4);
      *a1 = v41;
      *(a1 + 1) = v42;
      goto LABEL_21;
    }

    v39 = v27;
    v40 = a1 == v27;
    v27 += 40;
    v29 = v75;
    if (!v40)
    {
      goto LABEL_20;
    }

LABEL_21:
    a1 += 40;
  }

  while (v27 < v74 && v29 < a3);
  v43 = a1;
LABEL_52:
  v63 = (v74 - v27) / 40;
  if (v43 != v27 || v43 >= &v27[40 * v63])
  {
    memmove(v43, v27, 40 * v63);
  }

  return 1;
}

uint64_t sub_10064BDCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19)
{
  v77 = a8;
  v68 = a7;
  v65 = a5;
  v66 = a6;
  v70 = a1;
  v72 = a18;
  v75 = a19;
  v74 = a16;
  v69 = a14;
  v79 = a13;
  v71 = a10;
  v67 = a9;
  v76 = a12;
  v22 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v22 - 8);
  v64 = &v64 - v23;
  v24 = sub_1001F1160(&qword_100AEF380);
  __chkstk_darwin(v24 - 8);
  v26 = &v64 - v25;
  v28 = __chkstk_darwin(v27);
  v73 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v30;
  (*(v30 + 16))(v28);
  sub_100009864(a2, v98);
  sub_100009864(a3, &v100);
  sub_100009864(a4, v95);
  sub_100009864(v65, &v96);
  sub_100009864(v66, &v97);
  sub_100009864(v68, v92);
  sub_100009864(v77, &v93);
  sub_100009864(v67, &v94);
  v77 = *&a17[OBJC_IVAR___BKReadingActivityService__setupState];
  sub_100798B74();
  v31 = &a17[OBJC_IVAR___BKReadingActivityService_cloudSyncStateHandler];
  v32 = *&a17[OBJC_IVAR___BKReadingActivityService_cloudSyncStateHandler];
  v33 = v79;
  *v31 = a12;
  *(v31 + 1) = v33;
  sub_100007020(v32);
  v34 = &a17[OBJC_IVAR___BKReadingActivityService_notificationSuppressingEventHandler];
  v35 = *&a17[OBJC_IVAR___BKReadingActivityService_notificationSuppressingEventHandler];
  *v34 = v69;
  *(v34 + 1) = a15;

  sub_100007020(v35);
  v36 = *&a17[OBJC_IVAR___BKReadingActivityService_libraryManager];
  v37 = v70;
  *&a17[OBJC_IVAR___BKReadingActivityService_libraryManager] = v70;

  sub_1000077D8(v98, v87, &qword_100AEF3D8);
  v38 = OBJC_IVAR___BKReadingActivityService_goalsModule;
  swift_beginAccess();
  v39 = v37;
  sub_1002391EC(v87, &a17[v38], &qword_100AEF3B0);
  swift_endAccess();
  sub_1000077D8(v92, v87, &qword_100AEF3E0);
  v40 = OBJC_IVAR___BKReadingActivityService_historyModule;
  swift_beginAccess();
  sub_1002391EC(v87, &a17[v40], &qword_100AEF3C0);
  swift_endAccess();
  sub_1000077D8(v95, v87, &qword_100AEF3E8);
  v41 = OBJC_IVAR___BKReadingActivityService_booksFinishedModule;
  swift_beginAccess();
  sub_1002391EC(v87, &a17[v41], &qword_100AEF3B8);
  swift_endAccess();
  *&a17[OBJC_IVAR___BKReadingActivityService_achievementsController] = v71;

  sub_10079E884();

  sub_10079E874();
  sub_10000E3E8(v98, v99);
  sub_100798B44();
  v42 = sub_100798694();
  (*(*(v42 - 8) + 56))(v26, 0, 1, v42);
  sub_10079E824();

  sub_10079E874();
  sub_10079E804();

  v81 = v95;
  v43 = v72;
  sub_10079EB54();

  sub_10079E874();
  sub_10079E834();

  v80 = v92;
  v44 = v73;
  sub_10079EB54();

  sub_10079E874();
  swift_unknownObjectRetain();
  sub_10079E854();

  sub_10079E874();
  sub_10079E864();

  (*(v75 + 8))(a17, v43);
  sub_10000E3E8(v98, v99);
  sub_100798B34();
  sub_10000E3E8(v87, v88);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100798BF4();

  sub_1000074E0(v87);
  sub_10000E3E8(v95, v95[3]);
  sub_10079E9D4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100798934();

  sub_10000E3E8(v92, v92[3]);
  sub_10079EA54();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100798934();

  v45 = [objc_opt_self() standardUserDefaults];
  v87[0] = v45;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = sub_100796894();

  v47 = *&a17[OBJC_IVAR___BKReadingActivityService_clearDataObservation];
  *&a17[OBJC_IVAR___BKReadingActivityService_clearDataObservation] = v46;

  v48 = objc_opt_self();

  v49 = sub_1007A2214();

  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = sub_10064EF1C;
  v90[0] = v50;
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 1107296256;
  v87[2] = sub_1006412EC;
  v88 = &unk_100A28D18;
  v51 = _Block_copy(v87);

  [v48 fetchMetadataBoolForKey:v49 completion:v51];
  _Block_release(v51);

  v52 = OBJC_IVAR___BKReadingActivityService_enableCloudSync;
  swift_beginAccess();
  v76(a17[v52]);
  sub_1000077D8(v98, v85, &qword_100AEF3D8);
  sub_1000077D8(v92, v87, &qword_100AEF3E0);
  sub_1000077D8(v95, v82, &qword_100AEF3E8);
  v53 = sub_10075FD24(v85, v87, v82);
  sub_1000074E0(&v84);
  sub_1000074E0(&v83);
  sub_1000074E0(&v91);
  sub_1000074E0(v90);
  sub_1000074E0(&v86);
  v54 = *&a17[OBJC_IVAR___BKReadingActivityService_readingActivityDonor];
  *&a17[OBJC_IVAR___BKReadingActivityService_readingActivityDonor] = v53;

  v55 = [objc_opt_self() books];
  v56 = [v55 userDefaults];

  v57 = [objc_opt_self() dataHasBeenMovedUserDefaultsKey];
  if (!v57)
  {
    sub_1007A2254();
    v57 = sub_1007A2214();
  }

  v58 = [v56 BOOLForKey:v57];

  if ((v58 & 1) == 0)
  {
    v59 = sub_1007A2744();
    v60 = v64;
    (*(*(v59 - 8) + 56))(v64, 1, 1, v59);
    v61 = swift_allocObject();
    v61[2] = 0;
    v61[3] = 0;
    v61[4] = a17;
    v62 = a17;
    sub_1003457A0(0, 0, v60, &unk_1008381F0, v61);
  }

  sub_100798B74();
  sub_100007840(v92, &qword_100AEF3E0);
  sub_100007840(v95, &qword_100AEF3E8);
  sub_100007840(v98, &qword_100AEF3D8);
  return (*(v78 + 8))(v44, v43);
}

unint64_t sub_10064C940()
{
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  sub_1007A2254();
  sub_1007A36B4();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_1007A2254();
  sub_1007A36B4();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  sub_1007A2254();
  sub_1007A36B4();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = 1;
  v1 = sub_100013740(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AD1E50);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_10064CA88()
{
  v1 = sub_1007A2C94();
  v0[26] = v1;
  v0[27] = *(v1 - 8);
  v0[28] = swift_task_alloc();
  v2 = sub_1007969B4();
  v0[29] = v2;
  v0[30] = *(v2 - 8);
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();

  return _swift_task_switch(sub_10064CBC4, 0, 0);
}

uint64_t sub_10064CBC4()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = sub_1007A2214();
  v4 = [v2 dictionaryForKey:v3];

  if (v4)
  {
    v5 = sub_1007A2044();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v1 standardUserDefaults];
  v7 = sub_1007A2214();
  v8 = [v6 dictionaryForKey:v7];

  if (v8)
  {
    v9 = sub_1007A2044();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_self();
  v0[35] = v10;
  v11 = [v10 books];
  v12 = [v11 userDefaults];

  v13 = objc_opt_self();
  v0[36] = v13;
  v14 = [v13 booksFinishedUserDefaultsKey];
  if (v14)
  {
    if (v5)
    {
LABEL_9:
      v15.super.isa = sub_1007A2024().super.isa;
      goto LABEL_12;
    }
  }

  else
  {
    sub_1007A2254();
    v14 = sub_1007A2214();

    if (v5)
    {
      goto LABEL_9;
    }
  }

  v15.super.isa = 0;
LABEL_12:
  [v12 setValue:v15.super.isa forKey:v14];

  swift_unknownObjectRelease();

  v16 = [v10 books];
  v17 = [v16 userDefaults];

  v18 = [v13 streakDayUserDefaultsKey];
  if (v18)
  {
    if (v9)
    {
LABEL_14:
      v19.super.isa = sub_1007A2024().super.isa;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1007A2254();
    v18 = sub_1007A2214();

    if (v9)
    {
      goto LABEL_14;
    }
  }

  v19.super.isa = 0;
LABEL_17:
  [v17 setValue:v19.super.isa forKey:v18];

  swift_unknownObjectRelease();

  v20 = [objc_opt_self() defaultManager];
  v0[37] = v20;
  v21 = [v20 URLsForDirectory:9 inDomains:1];
  v22 = sub_1007A25E4();

  if (*(v22 + 16))
  {
    v24 = v0[33];
    v23 = v0[34];
    v25 = v0[32];
    v26 = v0[29];
    v27 = v0[30];
    (*(v27 + 16))(v25, v22 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v26);

    sub_100796964();
    v28 = *(v27 + 8);
    v0[38] = v28;
    v0[39] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29 = v25;
    v30 = v28;
    v28(v29, v26);
    (*(v27 + 32))(v23, v24, v26);
    sub_100796984();
    v31 = sub_1007A2214();

    v32 = [v20 fileExistsAtPath:v31];

    if (v32)
    {
      v58 = v30;
      v33 = [v13 readingHistoryFileURL];
      sub_100796974();

      sub_1007A29D4();
      v0[40] = sub_10001389C();
      v34 = sub_1007A33C4();
      v0[41] = sub_1001F1160(&unk_100AD5090);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_10080B690;
      v36 = sub_100796984();
      v38 = v37;
      *(v35 + 56) = &type metadata for String;
      v39 = sub_10000E4C4();
      v0[42] = v39;
      *(v35 + 64) = v39;
      *(v35 + 32) = v36;
      *(v35 + 40) = v38;
      sub_10079AB44();

      sub_1001F1160(&unk_100AEF2F0);
      v40 = sub_100798A24();
      v41 = [v40 persistentStoreCoordinator];

      sub_10064C940();
      sub_1007A2C84();
      sub_1007A2FE4();
      v51 = v0[31];
      v53 = v0[28];
      v52 = v0[29];
      v55 = v0[26];
      v54 = v0[27];

      (*(v54 + 8))(v53, v55);
      v58(v51, v52);
      v56 = [objc_allocWithZone(BDSReadingDataMigrationManagerClient) init];
      v0[43] = v56;
      v0[2] = v0;
      v0[7] = v0 + 45;
      v0[3] = sub_10064D598;
      v57 = swift_continuation_init();
      v0[17] = sub_1001F1160(&unk_100AE6E70);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1005EB504;
      v0[13] = &unk_100A28958;
      v0[14] = v57;
      [v56 mergeMovedReadingHistoryDataWithCompletionHandler:?];

      return _swift_continuation_await(v0 + 2);
    }

    v30(v0[34], v0[29]);
  }

  else
  {
  }

  v43 = v0[35];
  v42 = v0[36];
  sub_1007A29D4();
  sub_10001389C();
  v44 = sub_1007A33C4();
  sub_10079AB44();

  v45 = [v43 books];
  v46 = [v45 userDefaults];

  v47 = [v42 dataHasBeenMovedUserDefaultsKey];
  if (!v47)
  {
    sub_1007A2254();
    v47 = sub_1007A2214();
  }

  v48 = v0[37];
  [v46 setBool:1 forKey:v47];

  v49 = v0[1];

  return v49();
}

uint64_t sub_10064D598()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_10064D8B4;
  }

  else
  {
    v2 = sub_10064D6A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10064D6A8()
{
  v1 = *(v0 + 344);
  if (*(v0 + 360))
  {
    (*(v0 + 304))(*(v0 + 272), *(v0 + 232));
  }

  else
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 272);
    v4 = *(v0 + 232);
    sub_1007A29B4();
    v5 = sub_1007A33C4();
    sub_10079AB44();

    v2(v3, v4);
  }

  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  sub_1007A29D4();
  sub_10001389C();
  v8 = sub_1007A33C4();
  sub_10079AB44();

  v9 = [v7 books];
  v10 = [v9 userDefaults];

  v11 = [v6 dataHasBeenMovedUserDefaultsKey];
  if (!v11)
  {
    sub_1007A2254();
    v11 = sub_1007A2214();
  }

  v12 = *(v0 + 296);
  [v10 setBool:1 forKey:v11];

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10064D8B4()
{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[34];
  v5 = v0[29];
  swift_willThrow();

  sub_1007A29B4();
  v6 = sub_1007A33C4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080B690;
  swift_getErrorValue();
  v8 = sub_1007A3B84();
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = v2;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_10079AB44();

  v3(v4, v5);
  v11 = v0[35];
  v10 = v0[36];
  sub_1007A29D4();
  sub_10001389C();
  v12 = sub_1007A33C4();
  sub_10079AB44();

  v13 = [v11 books];
  v14 = [v13 userDefaults];

  v15 = [v10 dataHasBeenMovedUserDefaultsKey];
  if (!v15)
  {
    sub_1007A2254();
    v15 = sub_1007A2214();
  }

  v16 = v0[37];
  [v14 setBool:1 forKey:v15];

  v17 = v0[1];

  return v17();
}

id _s5Books22ReadingActivityServiceC19readingGoalsEnabledSbvg_0()
{
  v0 = [objc_opt_self() books];
  v1 = [v0 userDefaults];

  v2 = sub_1007A2214();
  v3 = [v1 BOOLForKey:v2];

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 valueForKey:BRCBooksDefaultsKeyReadingGoalsFeatureEnabled fromNamespace:BRCBooksDefaultsNamespace];

  if (v5)
  {
    v6 = [v5 BOOLValue];

    return (v6 & v3);
  }

  return v3;
}

unint64_t sub_10064DC68()
{
  result = qword_100AEF248;
  if (!qword_100AEF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF248);
  }

  return result;
}

void sub_10064DCBC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  if ((a4 & 2) != 0)
  {
    v8 = *&v4[OBJC_IVAR___BKReadingActivityService_engagementManager];
    if (v8)
    {
      v9 = v8;
      sub_1003460C8([a3 contentType] | 0x10000, 1u);
    }
  }

  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 currentAudiobook];

  if (v11)
  {
    v12 = v5;
    v13 = a2;
    v14 = [a3 assetID];
    v15 = sub_1007A2254();
    v17 = v16;

    v18 = [v11 assetID];
    v19 = sub_1007A2254();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {

      v5 = v12;
    }

    else
    {
      v23 = sub_1007A3AB4();

      v5 = v12;
      if ((v23 & 1) == 0)
      {
LABEL_14:
        swift_unknownObjectRelease();
        a2 = v13;
        goto LABEL_15;
      }
    }

    v24 = *&v5[OBJC_IVAR___BKReadingActivityService_engagementManager];
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR___BKEngagementManager_eventController);
      sub_1001F1160(&unk_100ADE550);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = 1196651369;
      *(inited + 40) = 0xE400000000000000;
      v27 = v25;
      *(inited + 48) = [v11 isSG];
      *(inited + 72) = &type metadata for Bool;
      *(inited + 80) = 0x746E657665;
      *(inited + 120) = &type metadata for String;
      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = 0x7472617473;
      *(inited + 104) = 0xE500000000000000;
      sub_100019158(inited);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
      sub_10079E994();

      v5 = v12;
    }

    goto LABEL_14;
  }

LABEL_15:
  sub_1007A29D4();
  sub_10001389C();
  v28 = sub_1007A33C4();
  sub_1001F1160(&unk_100AD5090);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10080B690;
  v30 = _s5Books22ReadingActivityServiceC19readingGoalsEnabledSbvg_0();
  *(v29 + 56) = &type metadata for Bool;
  *(v29 + 64) = &protocol witness table for Bool;
  *(v29 + 32) = v30 & 1;
  sub_10079AB44();

  if ((_s5Books22ReadingActivityServiceC19readingGoalsEnabledSbvg_0() & 1) == 0)
  {
    return;
  }

  if ([a3 contentType] == 3)
  {
    v31 = [objc_opt_self() standardUserDefaults];
    v32 = sub_1007A2214();
    v33 = [v31 BOOLForKey:v32];

    if (!v33)
    {
      return;
    }
  }

  v34 = 0.0;
  if (!a2)
  {
    v35 = [objc_opt_self() sharedInstance];
    v36 = [v35 timeThresholdForOpenEvent];

    [v36 doubleValue];
    v34 = v37;
  }

  v38 = &v5[OBJC_IVAR___BKReadingActivityService_historyModule];
  swift_beginAccess();
  if (!*(v38 + 3))
  {
    __break(1u);
    goto LABEL_46;
  }

  sub_100009864((v38 + 40), &aBlock);
  sub_10000E3E8(&aBlock, *(&v57 + 1));
  sub_10079EA94();
  sub_1000074E0(&aBlock);
  if (!*&v5[OBJC_IVAR___BKReadingActivityService_achievementsController])
  {
LABEL_46:
    __break(1u);
    return;
  }

  sub_10079EAE4();

  if ([*&v5[OBJC_IVAR___BKReadingActivityService_didSeeWelcomeExperience] getValue])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  aBlock = v61;
  v57 = v62;
  if (*(&v62 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && (v60 & 1) == 0)
    {
      v40 = ReadingActivityService.timeReadToday.getter();
      v39 = 60.0 - v34;
      if (v39 - v40 < 0.0)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = v39 - v40;
      }

      v42 = swift_allocObject();
      *(v42 + 16) = v5;
      v58 = sub_10064ECB4;
      v59 = v42;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v57 = sub_100201C54;
      *(&v57 + 1) = &unk_100A28B10;
      v43 = _Block_copy(&aBlock);
      v44 = objc_opt_self();
      v45 = v5;
      v46 = [v44 timerWithTimeInterval:0 repeats:v43 block:v41];
      _Block_release(v43);

      v47 = [objc_opt_self() mainRunLoop];
      [v47 addTimer:v46 forMode:NSRunLoopCommonModes];

      v48 = OBJC_IVAR___BKReadingActivityService_welcomeTimers;
      swift_beginAccess();
      if (!*&v45[v48])
      {
        *&v45[v48] = _swiftEmptyArrayStorage;
      }

      swift_beginAccess();
      v49 = v46;
      sub_1007A25C4();
      if (*((*&v45[v48] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v45[v48] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      swift_endAccess();
    }
  }

  else
  {
    sub_100007840(&aBlock, &unk_100AD5B40);
  }

  v50 = [objc_opt_self() manager];
  v51 = [v50 dynamicRegistry];

  sub_10079E7B4();
  sub_10079E7A4();
  v52 = sub_1007A2214();
  v53 = [v51 progressProviderForKind:v52];

  if (v53)
  {
    swift_unknownObjectRetain();
    v54 = sub_1007A2214();

    v55 = [v53 dynamicProgressForKind:v54 instance:0 parameters:0];
    swift_unknownObjectRelease();

    if (v55)
    {
      [swift_unknownObjectRetain() registerProgressObserver:v5];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {

    v55 = 0;
  }

  *&v5[OBJC_IVAR___BKReadingActivityService_readingTimeTodayDynamicProgress] = v55;
  swift_unknownObjectRelease();
}

void sub_10064E574(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 currentAudiobook];

  if (v6)
  {
    v7 = [a2 assetID];
    v8 = sub_1007A2254();
    v10 = v9;

    v11 = [v6 assetID];
    v12 = sub_1007A2254();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
    }

    else
    {
      v16 = sub_1007A3AB4();

      if ((v16 & 1) == 0)
      {
LABEL_11:
        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    v17 = *(v4 + OBJC_IVAR___BKReadingActivityService_engagementManager);
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR___BKEngagementManager_eventController);
      sub_1001F1160(&unk_100ADE550);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080EFF0;
      *(inited + 32) = 1196651369;
      *(inited + 40) = 0xE400000000000000;
      v20 = v18;
      *(inited + 48) = [v6 isSG];
      *(inited + 72) = &type metadata for Bool;
      *(inited + 80) = 0x746E657665;
      *(inited + 120) = &type metadata for String;
      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = 0x65736F6C63;
      *(inited + 104) = 0xE500000000000000;
      sub_100019158(inited);
      swift_setDeallocating();
      sub_1001F1160(&unk_100ADD560);
      swift_arrayDestroy();
      sub_10079E994();
    }

    goto LABEL_11;
  }

LABEL_12:
  v21 = OBJC_IVAR___BKReadingActivityService_welcomeTimers;
  swift_beginAccess();
  v22 = *(v4 + v21);
  if (v22)
  {
    if (v22 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
    {

      if (!i)
      {
        break;
      }

      v24 = 0;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v25 = sub_1007A3784();
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v25 = *(v22 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        [v25 invalidate];

        ++v24;
        if (v27 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_24:
  }

  v28 = v4 + OBJC_IVAR___BKReadingActivityService_historyModule;
  swift_beginAccess();
  if (!*(v28 + 24))
  {
    __break(1u);
    goto LABEL_37;
  }

  sub_100009864(v28 + 40, v34);
  sub_10000E3E8(v34, v34[3]);
  sub_10079EA84();
  sub_1000074E0(v34);
  if (!*(v4 + OBJC_IVAR___BKReadingActivityService_achievementsController))
  {
LABEL_37:
    __break(1u);
    return;
  }

  sub_10079EAC4();

  v29 = *(v4 + OBJC_IVAR___BKReadingActivityService_readingTimeTodayDynamicProgress);
  if (v29)
  {
    [v29 unregisterProgressObserver:v4];
  }

  if ((a3 & 2) != 0)
  {
    v30 = *(v4 + OBJC_IVAR___BKReadingActivityService_engagementManager);
    if (v30)
    {
      v31 = v30;
      sub_1003460C8([a2 contentType], 1u);
    }
  }
}

unint64_t sub_10064E990()
{
  result = qword_100AEF250;
  if (!qword_100AEF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF250);
  }

  return result;
}

unint64_t sub_10064EA08()
{
  result = qword_100AEF2E0;
  if (!qword_100AEF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF2E0);
  }

  return result;
}

unint64_t sub_10064EAC0()
{
  result = qword_100AEF328;
  if (!qword_100AEF328)
  {
    sub_1001F1234(&qword_100AEF320);
    sub_10064EB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF328);
  }

  return result;
}

unint64_t sub_10064EB44()
{
  result = qword_100AEF330;
  if (!qword_100AEF330)
  {
    sub_1001F1234(&unk_100AE0B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF330);
  }

  return result;
}

uint64_t sub_10064EC00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10064EC48()
{
  result = qword_100AEF3A0;
  if (!qword_100AEF3A0)
  {
    sub_1001F1234(&qword_100AEEB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF3A0);
  }

  return result;
}

uint64_t sub_10064ED24()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10064ED9C()
{

  return swift_deallocObject();
}

uint64_t sub_10064EE28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100644294();
}

uint64_t sub_10064EF74(uint64_t a1)
{
  v2 = sub_100796CF4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v20 - v7;
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  if (a1 <= 3)
  {
    if (a1 > 1 || !a1 || a1 == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (a1 <= 6)
    {
      goto LABEL_13;
    }

    if (a1 == 7)
    {
      sub_1007A2154();
      sub_100796C94();
      (*(v10 + 16))(v13, v15, v9);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v3 + 16))(v6, v8, v2);
LABEL_14:
      v18 = sub_1007A22D4();
      (*(v3 + 8))(v8, v2);
      (*(v10 + 8))(v15, v9);
      return v18;
    }

    if (a1 == 8)
    {
LABEL_13:
      sub_1007A2154();
      sub_100796C94();
      (*(v10 + 16))(v13, v15, v9);
      type metadata accessor for BundleFinder();
      v17 = swift_getObjCClassFromMetadata();
      [objc_opt_self() bundleForClass:v17];
      (*(v3 + 16))(v6, v8, v2);
      goto LABEL_14;
    }
  }

  v20[3] = a1;
  result = sub_1007A3AF4();
  __break(1u);
  return result;
}

unint64_t sub_10064F824@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10064FA04(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}