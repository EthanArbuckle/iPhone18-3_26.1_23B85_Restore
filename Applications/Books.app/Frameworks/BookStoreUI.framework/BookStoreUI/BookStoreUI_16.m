uint64_t sub_21D490@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v46 = sub_6620C(&qword_3C7330);
  v42 = *(v46 - 8);
  __chkstk_darwin(v46);
  v2 = &v39 - v1;
  v3 = sub_6620C(&qword_3C7338);
  __chkstk_darwin(v3);
  v43 = &v39 - v4;
  v44 = sub_6620C(&qword_3C7340);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v39 - v5;
  v6 = sub_2C1318();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Page();
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageView();
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  LODWORD(v14) = v16[*(v14 + 64)];
  sub_226368(v16, type metadata accessor for Page);
  if (v14 == 1 && (sub_2C1338(), sub_2C1308(), sub_2285DC(&qword_3C1B80, &type metadata accessor for ListItemViewModel.PerfHacks), v17 = sub_2C6138(), v18 = *(v7 + 8), v18(v9, v6), v18(v12, v6), (v17 & 1) == 0))
  {
    v29 = v40;
    sub_21DAB4(v40);
    v30 = v41;
    v31 = v44;
    (*(v41 + 16))(v43, v29, v44);
    swift_storeEnumTagMultiPayload();
    v32 = sub_718D4(&qword_3C7298);
    v33 = sub_2C4E28();
    v34 = sub_2265C0();
    v47 = v32;
    v48 = v33;
    v49 = v34;
    swift_getOpaqueTypeConformance2();
    v35 = sub_718D4(&qword_3C72B8);
    v36 = sub_718D4(&qword_3C72C0);
    v37 = sub_2266A4();
    v47 = v36;
    v48 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v47 = v35;
    v48 = &type metadata for Bool;
    v49 = OpaqueTypeConformance2;
    v50 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    return (*(v30 + 8))(v29, v31);
  }

  else
  {
    sub_21E518(v2);
    v19 = v42;
    v20 = v46;
    (*(v42 + 16))(v43, v2, v46);
    swift_storeEnumTagMultiPayload();
    v21 = sub_718D4(&qword_3C7298);
    v22 = sub_2C4E28();
    v23 = sub_2265C0();
    v47 = v21;
    v48 = v22;
    v49 = v23;
    swift_getOpaqueTypeConformance2();
    v24 = sub_718D4(&qword_3C72B8);
    v25 = sub_718D4(&qword_3C72C0);
    v26 = sub_2266A4();
    v47 = v25;
    v48 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v47 = v24;
    v48 = &type metadata for Bool;
    v49 = v27;
    v50 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_2C33C8();
    return (*(v19 + 8))(v2, v20);
  }
}

uint64_t sub_21DAB4@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_2C1FA8();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v69 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2C5258();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2C28A8();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_6620C(&qword_3C7348);
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v7 = &v49 - v6;
  v55 = sub_6620C(&qword_3C7350);
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = &v49 - v8;
  v60 = sub_6620C(&qword_3C7358);
  __chkstk_darwin(v60);
  v10 = &v49 - v9;
  v11 = sub_6620C(&qword_3C7360);
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v61 = &v49 - v12;
  v67 = sub_6620C(&qword_3C7298);
  __chkstk_darwin(v67);
  v65 = &v49 - v13;
  v14 = type metadata accessor for Page();
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Shelf();
  v18 = *(v59 - 8);
  __chkstk_darwin(v59);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = (&v49 - v22);
  v57 = type metadata accessor for PageView();
  sub_6620C(&qword_3C0C50);
  v24 = v1;
  sub_2C44C8();
  v25 = *&v17[*(v15 + 68)];

  sub_226368(v17, type metadata accessor for Page);
  if (*(v25 + 16))
  {
    sub_226300(v25 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v20, type metadata accessor for Shelf);

    v26 = sub_227474(v20, v23, type metadata accessor for Shelf);
    __chkstk_darwin(v26);
    v49 = v24;
    *(&v49 - 2) = v24;
    sub_6620C(&qword_3C7368);
    sub_2274E4();
    sub_2C3948();
    v27 = v53;
    sub_2C2898();
    v28 = sub_72B74(&qword_3C7390, &qword_3C7348);
    v29 = v50;
    v30 = v54;
    v31 = v58;
    sub_2C4158();
    (*(v56 + 8))(v27, v31);
    (*(v51 + 8))(v7, v30);
    v75[0] = v30;
    v75[1] = v31;
    v75[2] = v28;
    v75[3] = &protocol witness table for PlainListStyle;
    swift_getOpaqueTypeConformance2();
    v32 = v55;
    sub_2C4018();
    (*(v52 + 8))(v29, v32);
    v33 = v60;
    v34 = &v10[*(v60 + 36)];
    *v34 = 0xD000000000000019;
    *(v34 + 1) = 0x80000000003072C0;
    v35 = v64;
    sub_2C5248();
    v36 = v59;
    v37 = sub_227650();
    v38 = v61;
    sub_2C3A98();
    (*(v66 + 8))(v35, v68);
    sub_69198(v10, &qword_3C7358);
    v39 = v23[1];
    v73 = *v23;
    v74 = v39;

    sub_2C61A8();
    v40 = v69;
    sub_2C1BF8();
    v73 = v33;
    v74 = v37;
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder);
    v41 = v65;
    v42 = v63;
    v43 = v71;
    sub_2C3BD8();
    (*(v70 + 8))(v40, v43);
    sub_69198(v75, &qword_3BE008);
    (*(v62 + 8))(v38, v42);
    v44 = *(v36 + 40);
    v45 = sub_6620C(&qword_3C72B0);
    sub_68D34(v23 + v44, v41 + *(v45 + 52));
    KeyPath = swift_getKeyPath();
    v47 = v41 + *(v67 + 36);
    *v47 = KeyPath;
    *(v47 + 8) = 1;
    __chkstk_darwin(KeyPath);
    *(&v49 - 2) = v23;
    sub_2C4DB8();
    if (LOBYTE(v75[0]) == 1)
    {
    }

    else
    {
      sub_2C4E58();
      sub_2C4DC8();
    }

    sub_2C4E28();
    sub_2265C0();
    sub_2C3AD8();

    sub_69198(v41, &qword_3C7298);
    return sub_226368(v23, type metadata accessor for Shelf);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_21E518@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = type metadata accessor for PageView();
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  __chkstk_darwin(v2);
  v73 = v5;
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Page() - 8;
  v57 = v7;
  __chkstk_darwin(v7);
  v67 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v60 = sub_6620C(&qword_3C72D8);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v53 - v12;
  v66 = sub_6620C(&qword_3C72C0);
  __chkstk_darwin(v66);
  v59 = &v53 - v13;
  v14 = sub_6620C(&qword_3C72B8);
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v62 = &v53 - v15;
  v56 = v3[12];
  v72 = sub_6620C(&qword_3C0C50);
  v55 = v1;
  sub_2C44C8();
  v16 = *&v11[*(v7 + 68)];

  v71 = type metadata accessor for Page;
  sub_226368(v11, type metadata accessor for Page);
  *&v78 = v16;
  v65 = type metadata accessor for PageView;
  sub_226300(v1, v6, type metadata accessor for PageView);
  v17 = *(v4 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = swift_allocObject();
  v54 = type metadata accessor for PageView;
  sub_227474(v6, v19 + v18, type metadata accessor for PageView);
  v64 = sub_2BFEA8();
  v63 = sub_6620C(&qword_3C3B78);
  v53 = sub_6620C(&qword_3C73C8);
  sub_72B74(&qword_3C73B8, &qword_3C3B78);
  v20 = sub_718D4(&qword_3C73D0);
  v21 = sub_72B74(&qword_3C73D8, &qword_3C73D0);
  v74 = v20;
  v75 = v21;
  swift_getOpaqueTypeConformance2();
  sub_2285DC(&qword_3C6798, type metadata accessor for Shelf);
  v22 = v58;
  sub_2BFF98();
  v23 = v55;
  sub_226300(v55, v6, v65);
  v65 = v17;
  v24 = swift_allocObject();
  v63 = v18;
  v64 = v6;
  sub_227474(v6, v24 + v18, v54);
  v25 = v59;
  v26 = v60;
  sub_2BFF88();

  (*(v61 + 8))(v22, v26);
  sub_2C44C8();
  LOBYTE(v16) = v11[*(v57 + 60)];
  sub_226368(v11, v71);
  v27 = v23 + v3[17];
  v28 = v23;
  v29 = *v27;
  v30 = *(v27 + 8);
  LOBYTE(v78) = v29;
  *(&v78 + 1) = v30;
  sub_6620C(&qword_3BFC48);
  sub_2C4398();
  v31 = v74;
  v32 = v75;
  LOBYTE(v23) = v76;
  v33 = v28 + v3[16];
  v34 = *(v33 + 16);
  v78 = *v33;
  v79 = v34;
  sub_6620C(&qword_3C7128);
  sub_2C4398();
  v36 = v74;
  v35 = v75;
  v37 = v76;
  v38 = v77;
  LOBYTE(v78) = 0;
  sub_2C4368();
  v39 = v74;
  v40 = v75;
  v41 = v66;
  v42 = v25 + *(v66 + 36);
  *v42 = v16;
  *(v42 + 8) = v31;
  *(v42 + 16) = v32;
  v43 = v62;
  *(v42 + 24) = v23;
  v44 = v41;
  *(v42 + 32) = v36;
  *(v42 + 40) = v35;
  *(v42 + 48) = v37;
  *(v42 + 56) = v38;
  *(v42 + 64) = v39;
  *(v42 + 72) = v40;
  v45 = sub_2266A4();
  sub_2C4018();
  sub_69198(v25, &qword_3C72C0);
  v46 = v67;
  sub_2C44C8();
  Page.intentToLoadMore.getter(&v74);
  sub_226368(v46, v71);
  v47 = v77;
  if (v77)
  {
    sub_68CD0(&v74);
  }

  LOBYTE(v78) = v47 != 0;
  v48 = v64;
  sub_226300(v28, v64, type metadata accessor for PageView);
  v49 = v63;
  v50 = swift_allocObject();
  sub_227474(v48, v50 + v49, type metadata accessor for PageView);
  v74 = v44;
  v75 = v45;
  swift_getOpaqueTypeConformance2();
  v51 = v69;
  sub_2C4108();

  return (*(v68 + 8))(v43, v51);
}

uint64_t sub_21ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Page();
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  type metadata accessor for PageView();
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v8 = sub_2BB374();
  v10 = v9;
  sub_226368(v6, type metadata accessor for Page);
  v11 = sub_6620C(&qword_3C7250);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = sub_6620C(&qword_3C7268);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v8;
  v13[2] = v10;
  return result;
}

double sub_21EE90@<D0>(_OWORD *a1@<X8>)
{
  sub_227310();
  sub_2C3108();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21EEE0()
{
  sub_227310();

  return sub_2C3118();
}

uint64_t sub_21EF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v57 = a2;
  v4 = type metadata accessor for Shelf();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v52 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for Page();
  __chkstk_darwin(v56);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2C10A8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  __chkstk_darwin(v20);
  v22 = (&v50 - v21);
  __chkstk_darwin(v23);
  v25 = &v50 - v24;
  sub_226300(a1, v12, type metadata accessor for HostProxy.Event);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    return sub_226368(v12, type metadata accessor for HostProxy.Event);
  }

  (*(v14 + 32))(v25, v12, v13);
  v26 = *(v14 + 16);
  v55 = v25;
  v26(v22);
  if ((*(v14 + 88))(v22, v13) == enum case for PageScrollAction.Location.shelf(_:))
  {
    (*(v14 + 96))(v22, v13);
    v27 = *v22;
    type metadata accessor for PageView();
    sub_6620C(&qword_3C0C50);
    sub_2C44C8();
    v28 = v56;
    v29 = *&v9[*(v56 + 60)];

    sub_226368(v9, type metadata accessor for Page);
    v30 = *(v29 + 16);

    if ((v27 & 0x8000000000000000) != 0)
    {
      return (*(v14 + 8))(v55, v13);
    }

    else
    {
      v31 = v27 < v30;
      v32 = v55;
      if (!v31)
      {
        return (*(v14 + 8))(v32, v13);
      }

      v33 = v54;
      sub_2C44C8();
      v34 = *(v33 + *(v28 + 60));

      result = sub_226368(v33, type metadata accessor for Page);
      if (v27 < *(v34 + 16))
      {
        v36 = v34 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v27;
        v37 = v52;
        sub_226300(v36, v52, type metadata accessor for Shelf);

        v38 = *v37;
        v39 = v37[1];

        sub_226368(v37, type metadata accessor for Shelf);
        v58[0] = v38;
        v58[1] = v39;
        sub_2C47C8();
        sub_2C2A28();

        return (*(v14 + 8))(v32, v13);
      }

      __break(1u);
    }
  }

  else
  {
    if (qword_3BB808 != -1)
    {
      swift_once();
    }

    v40 = sub_2C00B8();
    sub_57AD8(v40, qword_3C30C8);
    v41 = v55;
    (v26)(v19, v55, v13);
    v42 = sub_2C0098();
    v43 = sub_2C5DC8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58[0] = v57;
      *v44 = 136315138;
      (v26)(v16, v19, v13);
      v56 = sub_2C5918();
      v46 = v45;
      v47 = *(v14 + 8);
      v47(v19, v13);
      v48 = sub_5CCF4(v56, v46, v58);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "Unknown scroll location: %s", v44, 0xCu);
      sub_68CD0(v57);

      v49 = v55;
    }

    else
    {

      v47 = *(v14 + 8);
      v47(v19, v13);
      v49 = v41;
    }

    v47(v49, v13);
    return (v47)(v22, v13);
  }

  return result;
}

uint64_t sub_21F5D8(uint64_t a1)
{
  v2 = sub_2C1448();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3C7320);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_6620C(&qword_3C0C18);
  __chkstk_darwin(v9 - 8);
  v26 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v27 = *(a1 + *(type metadata accessor for PageView() + 64));
  sub_29B3C4(v16);
  (*(v3 + 104))(v13, enum case for IntentDispatchState.loading(_:), v2);
  (*(v3 + 56))(v13, 0, 1, v2);
  v17 = *(v6 + 56);
  sub_6932C(v16, v8, &qword_3C0C18);
  sub_6932C(v13, &v8[v17], &qword_3C0C18);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_6932C(v8, v26, &qword_3C0C18);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      v20 = v25;
      (*(v3 + 32))(v25, &v8[v17], v2);
      sub_2285DC(&qword_3C7318, &type metadata accessor for IntentDispatchState);
      v21 = v26;
      v19 = sub_2C5878();
      v22 = *(v3 + 8);
      v22(v20, v2);
      sub_69198(v13, &qword_3C0C18);
      sub_69198(v16, &qword_3C0C18);
      v22(v21, v2);
      sub_69198(v8, &qword_3C0C18);
      return sub_1C2D94(v19 & 1);
    }

    sub_69198(v13, &qword_3C0C18);
    sub_69198(v16, &qword_3C0C18);
    (*(v3 + 8))(v26, v2);
    goto LABEL_6;
  }

  sub_69198(v13, &qword_3C0C18);
  sub_69198(v16, &qword_3C0C18);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_6:
    sub_69198(v8, &qword_3C7320);
    v19 = 0;
    return sub_1C2D94(v19 & 1);
  }

  sub_69198(v8, &qword_3C0C18);
  v19 = 1;
  return sub_1C2D94(v19 & 1);
}

void sub_21FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v4 = sub_2C1448();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3C7320);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = sub_6620C(&qword_3C0C18);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v24 - v17;
  (*(v5 + 104))(&v24 - v17, enum case for IntentDispatchState.loading(_:), v4, v16);
  (*(v5 + 56))(v18, 0, 1, v4);
  v19 = *(v9 + 56);
  sub_6932C(a2, v11, &qword_3C0C18);
  sub_6932C(v18, &v11[v19], &qword_3C0C18);
  v20 = *(v5 + 48);
  if (v20(v11, 1, v4) == 1)
  {
    sub_69198(v18, &qword_3C0C18);
    if (v20(&v11[v19], 1, v4) == 1)
    {
      sub_69198(v11, &qword_3C0C18);
      return;
    }

    goto LABEL_6;
  }

  sub_6932C(v11, v14, &qword_3C0C18);
  if (v20(&v11[v19], 1, v4) == 1)
  {
    sub_69198(v18, &qword_3C0C18);
    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_69198(v11, &qword_3C7320);
LABEL_7:
    v21 = type metadata accessor for PageView();
    sub_1C2A4C(*(v25 + *(v21 + 68)));
    return;
  }

  (*(v5 + 32))(v7, &v11[v19], v4);
  sub_2285DC(&qword_3C7318, &type metadata accessor for IntentDispatchState);
  v22 = sub_2C5878();
  v23 = *(v5 + 8);
  v23(v7, v4);
  sub_69198(v18, &qword_3C0C18);
  v23(v14, v4);
  sub_69198(v11, &qword_3C0C18);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_21FE30()
{
  v33 = type metadata accessor for Page();
  __chkstk_darwin(v33);
  v31 = v27 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v3 = v27 - v2;
  v4 = sub_2C0D48();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = type metadata accessor for PageView();
  v12 = *(v11 + 36);
  sub_29A87C(v10);
  v32 = sub_2C0CD8();
  v13 = *(v5 + 8);
  v13(v10, v4);
  v14 = *(v11 + 40);
  v29 = sub_6620C(&qword_3C0C50);
  v30 = v14;
  sub_2C44C8();
  v15 = *&v3[*(v33 + 96) + 8];

  sub_226368(v3, type metadata accessor for Page);
  v27[2] = v12;
  v28 = v13;
  v27[1] = v5 + 8;
  if (v15)
  {
    sub_29A87C(v7);
    v16 = sub_2C0D58();

    v13(v7, v4);
    v17 = v4;
    if (v16)
    {

      v32 = v16;
    }
  }

  else
  {
    v17 = v4;
  }

  v18 = v31;
  sub_2C44C8();
  v19 = (v18 + *(v33 + 100));
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v24 = v19[4];
  sub_1825C8(*v19, v21);
  sub_226368(v18, type metadata accessor for Page);
  if (!v21)
  {
    return v32;
  }

  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  sub_29A87C(v10);
  v25 = sub_147DBC();
  v28(v10, v17);
  sub_18260C(v20, v21);
  if (!v25)
  {
    return v32;
  }

  return v25;
}

uint64_t sub_220174@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v2 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v2 - 8);
  v61 = &v61 - v3;
  v4 = sub_6620C(&qword_3C1598);
  __chkstk_darwin(v4 - 8);
  v6 = &v61 - v5;
  v7 = type metadata accessor for Page();
  __chkstk_darwin(v7);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  __chkstk_darwin(v12);
  v65 = &v61 - v13;
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  v20 = sub_2C15F8();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v63 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PageView();
  v24 = *(v23 + 40);
  v25 = sub_6620C(&qword_3C0C50);
  v68 = v1;
  v69 = v24;
  v64 = v25;
  sub_2C44C8();
  v67 = v7;
  sub_6932C(&v19[*(v7 + 40)], v6, &qword_3C1598);
  sub_226368(v19, type metadata accessor for Page);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {
    v63 = v16;
    v27 = v65;
    v26 = v66;
    sub_69198(v6, &qword_3C1598);
    sub_2C44C8();
    v28 = v61;
    sub_6932C(&v11[*(v67 + 20)], v61, &qword_3BEF80);
    sub_226368(v11, type metadata accessor for Page);
    v29 = sub_2BFDD8();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v28, 1, v29) == 1)
    {
      v32 = v26;
      sub_2BFDC8();
      if (v31(v28, 1, v29) != 1)
      {
        sub_69198(v28, &qword_3BEF80);
      }
    }

    else
    {
      v32 = v26;
      (*(v30 + 32))(v26, v28, v29);
    }

    v50 = sub_6620C(&qword_3C7230);
    v51 = v50[16];
    v64 = v50[12];
    v65 = v51;
    v66 = v50[20];
    v52 = v63;
    sub_2C44C8();
    v53 = v67;
    v54 = *(v52 + *(v67 + 44));

    sub_226368(v52, type metadata accessor for Page);
    *(v32 + v64) = v54;
    sub_2C44C8();
    v55 = *(v27 + *(v53 + 48));

    sub_226368(v27, type metadata accessor for Page);
    *&v65[v32] = v55;
    v56 = v62;
    sub_2C44C8();
    v57 = *(v53 + 28);
    v58 = sub_2C1A28();
    (*(*(v58 - 8) + 16))(v66 + v32, v56 + v57, v58);
    sub_226368(v56, type metadata accessor for Page);
    v59 = enum case for NavigationStyle.plain(_:);
    v60 = sub_2C0F68();
    return (*(*(v60 - 8) + 104))(v32, v59, v60);
  }

  else
  {
    v33 = v63;
    (*(v21 + 32))(v63, v6, v20);
    v34 = sub_6620C(&qword_3C7238);
    v35 = v34[12];
    v36 = v34[20];
    v61 = v34[16];
    v62 = v36;
    v37 = (v68 + *(v23 + 48));
    v38 = *v37;
    v39 = v37[1];
    v73 = v38;
    v74 = v39;
    sub_6620C(&qword_3C7240);
    sub_2C4398();
    v40 = v71;
    v41 = v72;
    v42 = v66;
    *v66 = v70;
    *(v42 + 1) = v40;
    *(v42 + 2) = v41;
    (*(v21 + 16))(&v42[v35], v33, v20);
    sub_2C44C8();
    v43 = v67;
    v44 = *&v16[*(v67 + 44)];

    sub_226368(v16, type metadata accessor for Page);
    *&v42[v61] = v44;
    v45 = v65;
    sub_2C44C8();
    (*(v21 + 8))(v63, v20);
    v46 = *(v45 + *(v43 + 48));

    sub_226368(v45, type metadata accessor for Page);
    *&v62[v42] = v46;
    v47 = enum case for NavigationStyle.uber(_:);
    v48 = sub_2C0F68();
    return (*(*(v48 - 8) + 104))(v42, v47, v48);
  }
}

uint64_t sub_220890@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v1 = type metadata accessor for Page();
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AssetActionImplementation();
  __chkstk_darwin(v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD1B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  type metadata accessor for PageView();
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v15 = *(v2 + 76);
  v16 = sub_2BEF78();
  (*(*(v16 - 8) + 16))(v7, &v4[v15], v16);
  sub_226368(v4, type metadata accessor for Page);
  v22[0] = sub_2C4E28();
  sub_2C4F38();
  v17 = *(v9 + 16);
  v17(v14, v11, v8);
  sub_2285DC(&unk_3BFEA0, type metadata accessor for AssetActionImplementation);
  sub_2C4EF8();
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_226368(v7, type metadata accessor for AssetActionImplementation);
  sub_6620C(&qword_3BD520);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v17((v20 + v19), v14, v8);
  sub_2C4F38();
  v17(v11, (v20 + v19), v8);
  swift_setDeallocating();
  v18((v20 + v19), v8);
  swift_deallocClassInstance();
  sub_2C4EE8();
  v18(v11, v8);
  return (v18)(v14, v8);
}

uint64_t sub_220C24(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v57 = a1;
  v2 = sub_6620C(&qword_3BD858);
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v48 = &v45 - v3;
  v47 = sub_6620C(&qword_3BD1B0);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v45 - v4;
  v5 = sub_6620C(&qword_3C7228);
  __chkstk_darwin(v5 - 8);
  v7 = (&v45 - v6);
  v8 = sub_2C1CB8();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Shelf();
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Page();
  __chkstk_darwin(v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = sub_2C1FD8();
  v54 = *(v20 - 8);
  v55 = v20;
  __chkstk_darwin(v20);
  v51 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HostProxy.Event(0);
  __chkstk_darwin(v22);
  v24 = (&v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226300(v57, v24, type metadata accessor for HostProxy.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v41 = type metadata accessor for PageView();
    sub_6620C(&qword_3C0C50);
    v42 = v56;
    sub_2C44C8();
    Page.intentToLoadMore.getter(&v58);
    result = sub_226368(v16, type metadata accessor for Page);
    if (v59)
    {
      sub_68D1C(&v58, v60);
      sub_1C0C88(v60, *(v42 + *(v41 + 68)));
      return sub_68CD0(v60);
    }

    return result;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return sub_226368(v24, type metadata accessor for HostProxy.Event);
  }

  v26 = *v24;
  v57 = type metadata accessor for PageView();
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v27 = *&v19[*(v14 + 60)];

  result = sub_226368(v19, type metadata accessor for Page);
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v26 >= *(v27 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  sub_226300(v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v26, v13, type metadata accessor for Shelf);

  v29 = *(v11 + 60);
  v30 = v53;
  (*(v53 + 16))(v10, &v13[v29], v8);
  sub_226368(v13, type metadata accessor for Shelf);
  sub_2C1C88();
  (*(v30 + 8))(v10, v8);
  sub_6620C(&qword_3BC278);
  v31 = v55;
  v32 = swift_dynamicCast();
  v33 = v54;
  v34 = *(v54 + 56);
  if (v32)
  {
    v34(v7, 0, 1, v31);
    v35 = v51;
    (*(v33 + 32))();
    sub_2C1FC8();
    if (v59)
    {
      sub_68D1C(&v58, v60);
      v36 = v45;
      v37 = v47;
      sub_2C4DB8();
      v39 = v48;
      v38 = v49;
      v40 = v50;
      (*(v49 + 104))(v48, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);
      sub_2C4F28();

      (*(v38 + 8))(v39, v40);
      (*(v46 + 8))(v36, v37);
      sub_68CD0(v60);
      return (*(v33 + 8))(v35, v31);
    }

    (*(v33 + 8))(v35, v31);
    v43 = &unk_3BDC90;
    v44 = &v58;
  }

  else
  {
    v34(v7, 1, 1, v31);
    v43 = &qword_3C7228;
    v44 = v7;
  }

  return sub_69198(v44, v43);
}

uint64_t sub_2213C8(uint64_t a1)
{
  v12 = a1;
  v1 = sub_6620C(&qword_3BD858);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-1] - v3;
  v5 = sub_6620C(&qword_3BD1B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - v7;
  type metadata accessor for PageView();
  sub_2C4DB8();
  v9 = sub_6620C(&qword_3BD478);
  v13[3] = v9;
  v13[4] = sub_72B74(&qword_3BD480, &qword_3BD478);
  v10 = sub_720C8(v13);
  (*(*(v9 - 8) + 16))(v10, v12, v9);
  (*(v2 + 104))(v4, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v1);
  sub_2C4F28();

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return sub_68CD0(v13);
}

uint64_t sub_221638()
{
  v0 = sub_6620C(&qword_3BDCF8);
  __chkstk_darwin(v0 - 8);
  v2 = &v19[-v1 - 8];
  v3 = sub_6620C(&qword_3BCE00);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-v4 - 8];
  v6 = type metadata accessor for ContextActionMenuView(0);
  __chkstk_darwin(v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for ListItemComponentModel();
  sub_2C1328();
  v21[0] = xmmword_2ECB90;
  memset(&v21[1], 0, 32);
  *v8 = swift_getKeyPath();
  v8[40] = 0;
  sub_691F8(v22, v20);
  sub_C04C8(v21, v19);
  sub_CC804(v20, v19, &v8[v6[5]]);
  sub_72084(v22, v22[3]);
  v9 = sub_2BF3B8();
  v11 = v10;
  sub_C12F8(v21);
  v12 = &v8[v6[6]];
  *v12 = v9;
  v12[1] = v11;
  v8[v6[7]] = 0;
  sub_68CD0(v22);
  sub_2C12F8();
  v13 = sub_2C2338();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v2, 1, v13) == 1)
  {
    sub_69198(v2, &qword_3BDCF8);
    v15 = 1;
  }

  else
  {
    sub_2C2308();
    (*(v14 + 8))(v2, v13);
    v15 = 0;
  }

  v16 = sub_2BE5C8();
  (*(*(v16 - 8) + 56))(v5, v15, 1, v16);
  sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
  sub_2C3BB8();
  sub_69198(v5, &qword_3BCE00);
  return sub_226368(v8, type metadata accessor for ContextActionMenuView);
}

uint64_t sub_221994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_2BE7E8();
  __chkstk_darwin(v3 - 8);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v47 - v6;
  v7 = sub_6620C(&qword_3BDCF8);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_6620C(&qword_3BCE00);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for ContextActionMenuView(0);
  __chkstk_darwin(v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_6620C(&qword_3C71C8);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v47 - v16;
  v48 = sub_6620C(&qword_3C7200);
  __chkstk_darwin(v48);
  v18 = &v47 - v17;
  v50 = sub_6620C(&qword_3C71F0);
  __chkstk_darwin(v50);
  v53 = &v47 - v19;
  v20 = type metadata accessor for RecommendationItemComponentModel();
  sub_2C1328();
  v57[0] = xmmword_2ECB90;
  memset(&v57[1], 0, 32);
  *v15 = swift_getKeyPath();
  v15[40] = 0;
  sub_691F8(v60, v59);
  sub_C04C8(v57, v58);
  sub_CC804(v59, v58, &v15[v13[5]]);
  sub_72084(v60, v60[3]);
  v21 = sub_2BF3B8();
  v23 = v22;
  sub_C12F8(v57);
  v24 = &v15[v13[6]];
  *v24 = v21;
  v24[1] = v23;
  v15[v13[7]] = 0;
  sub_68CD0(v60);
  v54 = a1;
  sub_2C12F8();
  v25 = sub_2C2338();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v9, 1, v25) == 1)
  {
    sub_69198(v9, &qword_3BDCF8);
    v27 = 1;
  }

  else
  {
    sub_2C2308();
    (*(v26 + 8))(v9, v25);
    v27 = 0;
  }

  v28 = sub_2BE5C8();
  (*(*(v28 - 8) + 56))(v12, v27, 1, v28);
  sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
  v29 = v49;
  sub_2C3BB8();
  sub_69198(v12, &qword_3BCE00);
  sub_226368(v15, type metadata accessor for ContextActionMenuView);
  KeyPath = swift_getKeyPath();
  v31 = *(v20 + 32);
  v32 = v54;
  sub_6932C(v54 + v31, v57, &qword_3C0850);
  v33 = *(&v57[0] + 1) != 0;
  sub_69198(v57, &qword_3C0850);
  (*(v51 + 32))(v18, v29, v52);
  v34 = &v18[*(v48 + 36)];
  *v34 = KeyPath;
  v34[8] = v33;
  v35 = swift_getKeyPath();
  sub_6932C(v32 + v31, v57, &qword_3C0850);
  LOBYTE(KeyPath) = *(&v57[0] + 1) != 0;
  sub_69198(v57, &qword_3C0850);
  v36 = v53;
  sub_69130(v18, v53, &qword_3C7200);
  v37 = v36 + *(v50 + 36);
  *v37 = v35;
  *(v37 + 8) = KeyPath;
  v38 = swift_getKeyPath();
  sub_6932C(v32 + v31, v57, &qword_3C0850);
  if (*(&v57[0] + 1))
  {
    v39 = v47;
    sub_F03F4(v47);
    sub_F3EA0(v57);
    v40 = v55;
    sub_227474(v39, v55, &type metadata accessor for ContextAssetInfoAnalytics);
  }

  else
  {
    sub_69198(v57, &qword_3C0850);
    v41 = sub_2BEC68();
    v40 = v55;
    (*(*(v41 - 8) + 56))(v55, 1, 1, v41);
  }

  v42 = sub_6620C(&qword_3C71D8);
  v43 = v56;
  v44 = (v56 + *(v42 + 36));
  v45 = sub_6620C(&qword_3C7210);
  sub_227474(v40, v44 + *(v45 + 28), &type metadata accessor for ContextAssetInfoAnalytics);
  *v44 = v38;
  return sub_69130(v36, v43, &qword_3C71F0);
}

uint64_t sub_222144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v2 = sub_6620C(&qword_3BDCF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_6620C(&qword_3BCE00);
  __chkstk_darwin(v5 - 8);
  v29 = &v28 - v6;
  v7 = sub_2C1348();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for ContextActionMenuView(0);
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChartSwooshItemComponentModel();
  sub_2C1628();
  sub_2C1328();
  v17 = *(v8 + 8);
  v17(v13, v7);
  v33[0] = xmmword_2ECB90;
  memset(&v33[1], 0, 32);
  *v16 = swift_getKeyPath();
  v16[40] = 0;
  sub_691F8(v34, v32);
  sub_C04C8(v33, v31);
  sub_CC804(v32, v31, &v16[v14[5]]);
  sub_72084(v34, v34[3]);
  v18 = sub_2BF3B8();
  v20 = v19;
  sub_C12F8(v33);
  v21 = &v16[v14[6]];
  *v21 = v18;
  v21[1] = v20;
  v16[v14[7]] = 0;
  sub_68CD0(v34);
  sub_2C1628();
  sub_2C12F8();
  v17(v10, v7);
  v22 = sub_2C2338();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v4, 1, v22) == 1)
  {
    sub_69198(v4, &qword_3BDCF8);
    v24 = 1;
    v25 = v29;
  }

  else
  {
    v25 = v29;
    sub_2C2308();
    (*(v23 + 8))(v4, v22);
    v24 = 0;
  }

  v26 = sub_2BE5C8();
  (*(*(v26 - 8) + 56))(v25, v24, 1, v26);
  sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
  sub_2C3BB8();
  sub_69198(v25, &qword_3BCE00);
  return sub_226368(v16, type metadata accessor for ContextActionMenuView);
}

uint64_t sub_2225AC(uint64_t a1)
{
  v2 = type metadata accessor for PageView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_6620C(&qword_3C73B0);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for Page();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v10 = *&v9[*(v7 + 68)];

  sub_226368(v9, type metadata accessor for Page);
  v15[1] = v10;
  sub_6620C(&qword_3C3B78);
  sub_72B74(&qword_3C73B8, &qword_3C3B78);
  sub_2BFF38();
  swift_getKeyPath();
  sub_226300(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_227474(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PageView);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_227834;
  *(v13 + 24) = v12;
  sub_6620C(&qword_3C7380);
  sub_72B74(&qword_3C73C0, &qword_3C73B0);
  sub_227568();
  return sub_2C4558();
}

double sub_2228EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2BE9B8();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for PageView();
  sub_6620C(&qword_3C0C50);
  sub_2C44F8();
  v5 = type metadata accessor for ListShelfView();
  v6 = a2 + v5[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a2 + v5[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v5[8];
  *(a2 + v8) = swift_getKeyPath();
  sub_6620C(&qword_3BDD08);
  swift_storeEnumTagMultiPayload();
  v9 = a2 + v5[9];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  sub_2BE998();
  sub_2BE818();
  v10 = a2 + v5[11];
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  *(a2 + v5[5]) = a1;
  v11 = a2 + *(sub_6620C(&qword_3C7380) + 36);
  *(v11 + 32) = 0;
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  return result;
}

uint64_t sub_222A94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_6620C(&qword_3C1930);
  __chkstk_darwin(v2 - 8);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v44 - v5;
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v12 = sub_6620C(&qword_3BD1B0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  v24 = Shelf.cardSetData.getter();
  if (v24)
  {
    v25 = v24;
    v47 = v23;
    v48 = a1;
    v49 = sub_2C4E28();
    sub_2C4F38();
    v53 = v25;
    v44 = *(v13 + 16);
    v44(v20, v17, v12);
    sub_9EA8C();
    sub_2C4EF8();
    v26 = v17;
    v27 = *(v13 + 8);
    v27(v26, v12);

    sub_6620C(&qword_3BD520);
    v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v29 = swift_allocObject();
    v46 = v20;
    v30 = v20;
    v31 = v44;
    v44((v29 + v28), v30, v12);
    v32 = v51;
    sub_2C4F38();
    v31(v26, v29 + v28, v12);
    swift_setDeallocating();
    v27((v29 + v28), v12);
    swift_deallocClassInstance();
    sub_2C4EE8();
    v45 = v26;
    v27(v26, v12);
    v33 = v52;
    v31(v52, v32, v12);
    (*(v13 + 56))(v33, 0, 1, v12);
    v34 = v50;
    sub_6932C(v33, v50, &qword_3C1930);
    v35 = *(v13 + 48);
    if (v35(v34, 1, v12) != 1)
    {
      sub_69198(v52, &qword_3C1930);
      v27(v51, v12);
      v27(v46, v12);
      v23 = v47;
      (*(v13 + 32))(v47, v34, v12);
      v17 = v45;
      goto LABEL_11;
    }

    v23 = v47;
    sub_2C4F38();
    sub_69198(v52, &qword_3C1930);
    v27(v51, v12);
    v27(v46, v12);
    v36 = v35(v34, 1, v12);
    v17 = v45;
    if (v36 != 1)
    {
      v37 = v34;
LABEL_8:
      sub_69198(v37, &qword_3C1930);
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_6932C(v11, v8, &qword_3C1930);
    v38 = *(v13 + 48);
    if (v38(v8, 1, v12) != 1)
    {
      sub_69198(v11, &qword_3C1930);
      (*(v13 + 32))(v23, v8, v12);
      goto LABEL_11;
    }

    sub_2C4E28();
    sub_2C4F38();
    sub_69198(v11, &qword_3C1930);
    if (v38(v8, 1, v12) != 1)
    {
      v37 = v8;
      goto LABEL_8;
    }
  }

LABEL_11:
  sub_6620C(&qword_3BD520);
  v39 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v40 = swift_allocObject();
  v41 = *(v13 + 16);
  v41(v40 + v39, v23, v12);
  sub_2C4E28();
  sub_2C4F38();
  v41(v17, (v40 + v39), v12);
  swift_setDeallocating();
  v42 = *(v13 + 8);
  v42(v40 + v39, v12);
  swift_deallocClassInstance();
  sub_2C4EE8();
  v42(v17, v12);
  return (v42)(v23, v12);
}

uint64_t sub_223154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = sub_2C2548();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Page();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_6620C(&qword_3C73D0);
  __chkstk_darwin(v18);
  v11 = &v17 - v10;
  sub_6620C(&qword_3C73E8);
  sub_2BFE78();
  v12 = v22;
  *v11 = sub_2C3328();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v13 = &v11[*(sub_6620C(&qword_3C73F0) + 44)];
  v19 = a1;
  sub_223450(a1, v12, v13);
  type metadata accessor for Shelf();
  type metadata accessor for PageView();
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v14 = *&v9[*(v7 + 68)];

  sub_226368(v9, type metadata accessor for Page);
  sub_29B324(v5);
  v15 = _s7BooksUI24ShelfBackgroundViewModelV09BookStoreB0E21allowDefaultGradients2in11colorSchemeSaySbGSayAD0C0VG_05SwiftB005ColorN0OtFZ_0(v14, v5);

  result = (*(v3 + 8))(v5, v21);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(v15 + 16))
  {

    sub_72B74(&qword_3C73D8, &qword_3C73D0);
    sub_2C3C48();
    return sub_69198(v11, &qword_3C73D0);
  }

  __break(1u);
  return result;
}

uint64_t sub_223450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Shelf();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226300(a1, v15, type metadata accessor for Shelf);
  sub_21A280(a2);
  v17 = v16;
  sub_6932C(a1 + *(v13 + 88), v8, &qword_3BDE70);
  v18 = sub_2BEA28();
  result = (*(*(v18 - 8) + 48))(v8, 1, v18);
  if (result)
  {
    goto LABEL_5;
  }

  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v17 <= 0x7FFFFFFF)
  {
    sub_2BE9D8();
LABEL_5:
    sub_1E7F5C(v8, v11);
    return sub_113C90(v15, v11, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_22362C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Page();
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BFEF8();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for PageView();
  v12 = (a2 + v11[14]);
  v13 = *(v12 + 2);
  v25 = *v12;
  v26 = v13;
  *&v23 = v8;
  *(&v23 + 1) = v10;
  sub_6620C(&qword_3C7128);
  sub_2C4388();
  sub_223814(a1);
  sub_2BFED8();
  v15 = v14;
  sub_2BFEE8();
  v17 = v15 - v16;
  sub_2BFEF8();
  if (v17 + -700.0 <= v18)
  {
    sub_6620C(&qword_3C0C50);
    sub_2C44C8();
    Page.intentToLoadMore.getter(&v23);
    sub_226368(v6, type metadata accessor for Page);
    if (v24)
    {
      sub_68D1C(&v23, &v25);
      sub_1C0C88(&v25, *(a2 + v11[17]));
      return sub_68CD0(&v25);
    }

    else
    {
      v21 = *(a2 + v11[16]);
      result = swift_beginAccess();
      *(v21 + 16) = 1;
    }
  }

  else
  {
    v19 = *(a2 + v11[16]);
    result = swift_beginAccess();
    *(v19 + 16) = 0;
  }

  return result;
}

uint64_t sub_223814(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_6620C(&qword_3C0C68);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_2C1EC8();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C30F8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Page();
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PageView();
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v18 = v16[*(v14 + 44)];
  sub_226368(v16, type metadata accessor for Page);
  v19 = 1.0;
  if (v18 != 1)
  {
    goto LABEL_11;
  }

  v20 = v2 + *(v17 + 28);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_2BFEF8();
    v26 = v25;
    sub_2BFF08();
    if (v26 <= v27)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 1.0;
    }

    goto LABEL_11;
  }

  sub_2C5DD8();
  v24 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();
  sub_71AF4(v21, 0);
  (*(v10 + 8))(v12, v9);
  if (v43)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_6620C(&qword_3C6FC0);
  sub_2C4378();
  v23 = v38;
  v22 = v39;
  if ((*(v38 + 48))(v5, 1, v39) == 1)
  {
    sub_69198(v5, &qword_3C0C68);
    v19 = 0.0;
  }

  else
  {
    (*(v23 + 32))(v8, v5, v22);
    sub_2C1EA8();
    v29 = v28;
    sub_2C1EB8();
    v31 = v30;
    sub_2BFEF8();
    v41 = (v32 - v29) / (v31 - v29);
    v43 = xmmword_2F5DD0;
    sub_228230();
    sub_2C5858();
    (*(v23 + 8))(v8, v22);
    v19 = v42;
  }

LABEL_11:
  v33 = (v2 + *(v17 + 48));
  v34 = *v33;
  v35 = v33[1];
  *&v43 = *v33;
  *(&v43 + 1) = v35;
  sub_6620C(&qword_3C7240);
  result = sub_2C4378();
  if (v42 != v19)
  {
    v42 = v19;
    *&v43 = v34;
    *(&v43 + 1) = v35;
    return sub_2C4388();
  }

  return result;
}

uint64_t sub_223C74(uint64_t a1)
{
  v2 = type metadata accessor for Page();
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageView();
  v6 = *(a1 + *(v5 + 64));
  result = swift_beginAccess();
  if (*(v6 + 16) == 1)
  {
    sub_6620C(&qword_3C0C50);
    sub_2C44C8();
    Page.intentToLoadMore.getter(&v9);
    result = sub_226368(v4, type metadata accessor for Page);
    if (v10)
    {
      sub_68D1C(&v9, v11);
      sub_1C0C88(v11, *(a1 + *(v5 + 68)));
      return sub_68CD0(v11);
    }
  }

  return result;
}

uint64_t sub_223DA8@<X0>(_BYTE *a1@<X1>, char *a2@<X8>)
{
  if (*a1)
  {
    sub_2C28C8();
    v4 = v3;
    result = sub_2C28B8();
    v7 = v4 + v6 > 0.0;
  }

  else
  {
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_223E00(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_2C48B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C48D8();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2C48F8();
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  v20 = *a2;
  if (v20 == 2)
  {
    v35 = *(a3 + 8);
    v36 = *(a3 + 24);
    LOBYTE(aBlock[0]) = 0;
  }

  else
  {
    v32 = v17;
    v33 = v6;
    if ((v20 & 1) == 0)
    {
      v21 = v16;
      v35 = *(a3 + 64);
      sub_6620C(&qword_3C7418);
      sub_2C4378();
      if ((sub_2C25B8() & 1) == 0)
      {
        sub_183EBC();
        v30 = sub_2C5E88();
        sub_2C48E8();
        sub_2C4918();
        v23 = *(v32 + 1);
        v31 = v21;
        v32 = v23;
        v23(v14, v21);
        v24 = swift_allocObject();
        v25 = *(a3 + 48);
        v24[3] = *(a3 + 32);
        v24[4] = v25;
        v24[5] = *(a3 + 64);
        v26 = *(a3 + 16);
        v24[1] = *a3;
        v24[2] = v26;
        aBlock[4] = sub_2285BC;
        aBlock[5] = v24;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_750DC;
        aBlock[3] = &unk_392BE8;
        v29 = _Block_copy(aBlock);
        sub_228470(a3, &v35);

        sub_2C48C8();
        *&v35 = _swiftEmptyArrayStorage;
        sub_2285DC(&qword_3C2BC0, &type metadata accessor for DispatchWorkItemFlags);
        sub_6620C(&qword_3C2BC8);
        sub_72B74(&qword_3C2BD0, &qword_3C2BC8);
        sub_2C6158();
        v27 = v29;
        v28 = v30;
        sub_2C5E68();
        _Block_release(v27);

        (*(v33 + 8))(v8, v5);
        (*(v34 + 8))(v11, v9);
        return v32(v19, v31);
      }
    }

    v35 = *(a3 + 8);
    v36 = *(a3 + 24);
    LOBYTE(aBlock[0]) = v20 & 1;
  }

  sub_6620C(&qword_3C27A8);
  return sub_2C44D8();
}

uint64_t sub_2242AC()
{
  sub_6620C(&qword_3C7420);
  sub_2C44C8();
  sub_6620C(&qword_3C27A8);
  return sub_2C44D8();
}

uint64_t sub_224340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a1;
  v23[1] = a2;
  v3 = sub_6620C(&qword_3C73F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - v5;
  v7 = v2[3];
  v27 = v2[2];
  v28 = v7;
  v29 = v2[4];
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v9 = sub_6620C(&qword_3C08B0);
  v10 = swift_allocObject();
  v11 = v2[3];
  v10[3] = v2[2];
  v10[4] = v11;
  v10[5] = v2[4];
  v12 = v2[1];
  v10[1] = *v2;
  v10[2] = v12;
  v13 = swift_allocObject();
  v14 = v2[3];
  v13[3] = v2[2];
  v13[4] = v14;
  v13[5] = v2[4];
  v15 = v2[1];
  v13[1] = *v2;
  v13[2] = v15;
  sub_228470(&v25, v24);
  sub_228470(&v25, v24);
  v16 = sub_6620C(&qword_3C7400);
  v17 = sub_72B74(&qword_3C7408, &qword_3C7400);
  v22 = sub_2284A8(&qword_3C7410, &qword_3C08B0);
  sub_2C4008();

  v18 = swift_allocObject();
  v19 = v28;
  v18[3] = v27;
  v18[4] = v19;
  v18[5] = v29;
  v20 = v26;
  v18[1] = v25;
  v18[2] = v20;
  sub_228470(&v25, v24);
  v24[0] = v16;
  v24[1] = v9;
  v24[2] = v17;
  v24[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_2C3F98();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22464C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, _BYTE *a6@<X8>)
{
  v25 = a3;
  v26 = a5;
  v23 = a2;
  v24 = a4;
  v8 = sub_6620C(&qword_3C3AB0);
  __chkstk_darwin(v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v22 - v12);
  v14 = sub_2C2548();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for ColorScheme.dark(_:), v14, v16);
  v19 = sub_2C2538();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    sub_6932C(a1, v13, &qword_3C3AB0);
    v20 = v25 | (*v13 != v23);
  }

  else
  {
    sub_6932C(a1, v10, &qword_3C3AB0);
    v20 = v26 | (*v10 != v24);
    v13 = v10;
  }

  result = sub_226368(v13 + *(v8 + 48), type metadata accessor for Shelf);
  *a6 = v20 & 1;
  return result;
}

uint64_t sub_224874()
{
  v0 = sub_2C2978();
  sub_68DE4(v0, qword_3E88F0);
  v1 = sub_57AD8(v0, qword_3E88F0);
  sub_2C61A8();
  return (*(*(v0 - 8) + 104))(v1, enum case for CoordinateSpace.named(_:), v0);
}

uint64_t _s7BooksUI24ShelfBackgroundViewModelV09BookStoreB0E21allowDefaultGradients2in11colorSchemeSaySbGSayAD0C0VG_05SwiftB005ColorN0OtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = v9 == 0;
  if (v9)
  {
    v19[0] = a2;
    v11 = 0;
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    while (1)
    {
      sub_226300(v12, v8, type metadata accessor for Shelf);
      v14 = sub_2C1B48();
      v6 = sub_226368(v8, type metadata accessor for Shelf);
      if ((v14 & 1) == 0)
      {
        break;
      }

      ++v11;
      v12 += v13;
      v10 = v9 == v11;
      if (v9 == v11)
      {
        v11 = 0;
        a2 = v19[0];
        goto LABEL_8;
      }
    }

    a2 = v19[0];
  }

  else
  {
    v11 = 0;
  }

  do
  {
LABEL_8:
    v15 = v9;
    if (!v9)
    {
      break;
    }

    --v9;
    sub_226300(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v15 - 1), v8, type metadata accessor for Shelf);
    v16 = sub_2C1B48();
    v6 = sub_226368(v8, type metadata accessor for Shelf);
  }

  while ((v16 & 1) != 0);
  __chkstk_darwin(v6);
  v19[-6] = a2;
  v19[-5] = v11;
  LOBYTE(v19[-4]) = v10;
  v19[-3] = v9;
  LOBYTE(v19[-2]) = v17;
  return sub_286F7C(sub_228284, &v19[-8], a1);
}

uint64_t sub_224B8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3C5E98);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_13:
    v15 = *(v8 + 48);

    return v15(a1 + v9, a2, v7);
  }

  v10 = sub_6620C(&qword_3C6FB8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_13;
  }

  v11 = sub_6620C(&qword_3BC7C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_13;
  }

  v12 = sub_6620C(&qword_3C0C50);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_13;
  }

  v13 = sub_6620C(&qword_3C0C70);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[11];
    goto LABEL_13;
  }

  v14 = sub_6620C(&qword_3C6FC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[13];
    goto LABEL_13;
  }

  v17 = *(a1 + a3[16]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_224E10(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3C5E98);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_6620C(&qword_3C6FB8);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      v13 = sub_6620C(&qword_3BC7C0);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[9];
      }

      else
      {
        v14 = sub_6620C(&qword_3C0C50);
        if (*(*(v14 - 8) + 84) == a3)
        {
          v9 = v14;
          v10 = *(v14 - 8);
          v11 = a4[10];
        }

        else
        {
          v15 = sub_6620C(&qword_3C0C70);
          if (*(*(v15 - 8) + 84) == a3)
          {
            v9 = v15;
            v10 = *(v15 - 8);
            v11 = a4[11];
          }

          else
          {
            result = sub_6620C(&qword_3C6FC0);
            if (*(*(result - 8) + 84) != a3)
            {
              *(a1 + a4[16]) = (a2 - 1);
              return result;
            }

            v9 = result;
            v10 = *(result - 8);
            v11 = a4[13];
          }
        }
      }
    }
  }

  v17 = *(v10 + 56);

  return v17(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for PageView()
{
  result = qword_3C7020;
  if (!qword_3C7020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250C8()
{
  sub_2254E0(319, &unk_3C0BB8, type metadata accessor for HostProxy, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_2254E0(319, &unk_3C5F08, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_22547C(319, &qword_3C7030, &qword_3C0C18, &unk_2EA808, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_225544(319, &qword_3C7038, &type metadata for HostingViewBarType, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_22547C(319, &qword_3BDD98, &qword_3BDDA0, &unk_2E5200, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_2254E0(319, &qword_3BC850, &type metadata accessor for ColorConstants, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_2254E0(319, &qword_3C1F68, type metadata accessor for Page, &type metadata accessor for Binding);
              if (v6 <= 0x3F)
              {
                sub_2254E0(319, &unk_3C5278, type metadata accessor for PageAlert, &type metadata accessor for Binding);
                if (v7 <= 0x3F)
                {
                  sub_225544(319, &qword_3C7040, &type metadata for CGFloat, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_22547C(319, &qword_3C7048, &qword_3C0C68, &unk_2EAD50, &type metadata accessor for State);
                    if (v9 <= 0x3F)
                    {
                      sub_2254E0(319, &unk_3C7050, type metadata accessor for CGPoint, &type metadata accessor for State);
                      if (v10 <= 0x3F)
                      {
                        sub_225544(319, &qword_3BFBE8, &type metadata for Bool, &type metadata accessor for State);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for PaginationController();
                          if (v12 <= 0x3F)
                          {
                            sub_2C4E28();
                            if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_22547C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2254E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_225544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2255B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CA24(a1, v6, a2);
}

unint64_t sub_22566C()
{
  result = qword_3C7130;
  if (!qword_3C7130)
  {
    sub_718D4(&qword_3C70B8);
    sub_225724();
    sub_72B74(&qword_3C7180, &qword_3C7188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7130);
  }

  return result;
}

unint64_t sub_225724()
{
  result = qword_3C7138;
  if (!qword_3C7138)
  {
    sub_718D4(&qword_3C7120);
    sub_2257DC();
    sub_72B74(&qword_3BDFD0, &qword_3BDFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7138);
  }

  return result;
}

unint64_t sub_2257DC()
{
  result = qword_3C7140;
  if (!qword_3C7140)
  {
    sub_718D4(&qword_3C7148);
    sub_225894();
    sub_72B74(&qword_3C1B30, &qword_3C1B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7140);
  }

  return result;
}

unint64_t sub_225894()
{
  result = qword_3C7150;
  if (!qword_3C7150)
  {
    sub_718D4(&qword_3C7158);
    sub_72B74(&qword_3C7160, &qword_3C7168);
    sub_72B74(&qword_3C7170, &qword_3C7178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7150);
  }

  return result;
}

unint64_t sub_225990()
{
  result = qword_3C71A0;
  if (!qword_3C71A0)
  {
    sub_718D4(&qword_3C70C8);
    sub_225A4C();
    sub_2285DC(&qword_3C3400, type metadata accessor for PageViewEventViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71A0);
  }

  return result;
}

unint64_t sub_225A4C()
{
  result = qword_3C71A8;
  if (!qword_3C71A8)
  {
    sub_718D4(&qword_3C7198);
    sub_718D4(&qword_3C70C0);
    type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor();
    sub_718D4(&qword_3C70B8);
    sub_22566C();
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3C7190, type metadata accessor for HideSmallNavigationTitleIfNeededAdaptor);
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3C52C8, type metadata accessor for PageAlertViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71A8);
  }

  return result;
}

unint64_t sub_225C28()
{
  result = qword_3C71E0;
  if (!qword_3C71E0)
  {
    sub_718D4(&qword_3C71D8);
    sub_225CE0();
    sub_72B74(&qword_3C7208, &qword_3C7210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71E0);
  }

  return result;
}

unint64_t sub_225CE0()
{
  result = qword_3C71E8;
  if (!qword_3C71E8)
  {
    sub_718D4(&qword_3C71F0);
    sub_225D98();
    sub_72B74(&qword_3C1B30, &qword_3C1B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71E8);
  }

  return result;
}

unint64_t sub_225D98()
{
  result = qword_3C71F8;
  if (!qword_3C71F8)
  {
    sub_718D4(&qword_3C7200);
    type metadata accessor for ContextActionMenuView(255);
    sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1B30, &qword_3C1B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C71F8);
  }

  return result;
}

unint64_t sub_225EB0()
{
  result = qword_3C7218;
  if (!qword_3C7218)
  {
    sub_718D4(&qword_3C7108);
    sub_225F6C();
    sub_2285DC(&qword_3BE8E0, type metadata accessor for PageLifeCycleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7218);
  }

  return result;
}

unint64_t sub_225F6C()
{
  result = qword_3C7220;
  if (!qword_3C7220)
  {
    sub_718D4(&qword_3C7100);
    sub_718D4(&qword_3C70F0);
    sub_718D4(&qword_3C71C8);
    type metadata accessor for ChartSwooshItemComponentModel();
    sub_718D4(&qword_3C70E8);
    sub_718D4(&qword_3C71D8);
    type metadata accessor for RecommendationItemComponentModel();
    sub_718D4(&qword_3C70E0);
    type metadata accessor for ListItemComponentModel();
    sub_72B74(&qword_3C71D0, &qword_3C70E0);
    type metadata accessor for ContextActionMenuView(255);
    sub_2285DC(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3BD3F8, type metadata accessor for ListItemComponentModel);
    swift_getOpaqueTypeConformance2();
    sub_225C28();
    sub_2285DC(&qword_3BD408, type metadata accessor for RecommendationItemComponentModel);
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3BD3A0, type metadata accessor for ChartSwooshItemComponentModel);
    swift_getOpaqueTypeConformance2();
    sub_2285DC(&qword_3BCA50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7220);
  }

  return result;
}

uint64_t sub_2262A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2D98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_226300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2263D0()
{
  result = qword_3C7280;
  if (!qword_3C7280)
  {
    sub_718D4(&qword_3C7248);
    sub_226454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7280);
  }

  return result;
}

unint64_t sub_226454()
{
  result = qword_3C7288;
  if (!qword_3C7288)
  {
    sub_718D4(&qword_3C7290);
    sub_718D4(&qword_3C7298);
    sub_2C4E28();
    sub_2265C0();
    swift_getOpaqueTypeConformance2();
    sub_718D4(&qword_3C72B8);
    sub_718D4(&qword_3C72C0);
    sub_2266A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7288);
  }

  return result;
}

unint64_t sub_2265C0()
{
  result = qword_3C72A0;
  if (!qword_3C72A0)
  {
    sub_718D4(&qword_3C7298);
    sub_72B74(&qword_3C72A8, &qword_3C72B0);
    sub_72B74(&qword_3C1B30, &qword_3C1B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C72A0);
  }

  return result;
}

unint64_t sub_2266A4()
{
  result = qword_3C72C8;
  if (!qword_3C72C8)
  {
    sub_718D4(&qword_3C72C0);
    sub_72B74(&qword_3C72D0, &qword_3C72D8);
    sub_22675C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C72C8);
  }

  return result;
}

unint64_t sub_22675C()
{
  result = qword_3C72E0;
  if (!qword_3C72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C72E0);
  }

  return result;
}

unint64_t sub_2267B0()
{
  result = qword_3C72E8;
  if (!qword_3C72E8)
  {
    sub_718D4(&qword_3C7268);
    sub_718D4(&qword_3C7270);
    sub_718D4(&qword_3C7278);
    sub_718D4(&qword_3C7248);
    sub_2263D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C72F0, &qword_3C72F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C72E8);
  }

  return result;
}

uint64_t sub_226908()
{
  v1 = type metadata accessor for PageView();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v44 = sub_2C2A38();
  v2 = *(v44 - 8);
  v39 = *(v2 + 80);
  v43 = *(v2 + 64);
  v45 = v0;
  v41 = (v42 + 16) & ~v42;
  v3 = v0 + v41;

  v4 = v1[5];
  sub_6620C(&qword_3C0C78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2C2548();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_6620C(&qword_3C0C80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2C1448();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  sub_71AF4(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  sub_9E94C(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  v9 = v1[9];
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C0D48();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[10];

  v12 = v11 + *(sub_6620C(&qword_3C0C50) + 32);

  v13 = type metadata accessor for Page();
  v14 = v13[5];
  v15 = sub_2BFDD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v12 + v14, 1, v15))
  {
    (*(v16 + 8))(v12 + v14, v15);
  }

  v18 = v13[6];
  if (!v17(v12 + v18, 1, v15))
  {
    (*(v16 + 8))(v12 + v18, v15);
  }

  v19 = v13[7];
  v20 = sub_2C1A28();
  (*(*(v20 - 8) + 8))(v12 + v19, v20);
  v21 = v13[8];
  v22 = sub_2C1A68();
  (*(*(v22 - 8) + 8))(v12 + v21, v22);
  v23 = v13[10];
  v24 = sub_2C15F8();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v12 + v23, 1, v24))
  {
    (*(v25 + 8))(v12 + v23, v24);
  }

  v26 = v13[17];
  v27 = sub_2BEF78();
  (*(*(v27 - 8) + 8))(v12 + v26, v27);

  v28 = v13[19];
  v29 = sub_2C4BB8();
  (*(*(v29 - 8) + 8))(v12 + v28, v29);

  if (*(v12 + v13[25] + 8))
  {
  }

  v30 = v3 + v1[11];

  v31 = *(sub_6620C(&qword_3C0C70) + 32);
  v32 = sub_2C0368();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v30 + v31, 1, v32))
  {
    (*(v33 + 8))(v30 + v31, v32);
  }

  v34 = v3 + v1[13];
  v35 = sub_2C1EC8();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v34, 1, v35))
  {
    (*(v36 + 8))(v34, v35);
  }

  v37 = (v41 + v40 + v39) & ~v39;
  sub_6620C(&qword_3C6FC0);

  (*(v2 + 8))(v45 + v37, v44);

  return _swift_deallocObject(v45, v37 + v43, v42 | v39 | 7);
}

uint64_t sub_22709C(uint64_t a1)
{
  v3 = *(type metadata accessor for PageView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2C2A38() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21EF40(a1, v1 + v4, v7);
}

void sub_227188(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PageView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21FA40(a1, a2, v6);
}

unint64_t sub_227208()
{
  result = qword_3C7310;
  if (!qword_3C7310)
  {
    sub_718D4(&qword_3C0C18);
    sub_2285DC(&qword_3C7318, &type metadata accessor for IntentDispatchState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7310);
  }

  return result;
}

double sub_2272BC@<D0>(_OWORD *a1@<X8>)
{
  sub_227310();
  sub_2C3108();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_227310()
{
  result = qword_3C7328;
  if (!qword_3C7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7328);
  }

  return result;
}

uint64_t sub_2273C0()
{
  v1 = sub_2C2A38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_227474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2274E4()
{
  result = qword_3C7370;
  if (!qword_3C7370)
  {
    sub_718D4(&qword_3C7368);
    sub_227568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7370);
  }

  return result;
}

unint64_t sub_227568()
{
  result = qword_3C7378;
  if (!qword_3C7378)
  {
    sub_718D4(&qword_3C7380);
    sub_2285DC(&qword_3C7388, type metadata accessor for ListShelfView);
    sub_72B74(&qword_3C1BE0, &qword_3C1BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7378);
  }

  return result;
}

unint64_t sub_227650()
{
  result = qword_3C7398;
  if (!qword_3C7398)
  {
    sub_718D4(&qword_3C7358);
    sub_718D4(&qword_3C7350);
    sub_718D4(&qword_3C7348);
    sub_2C28A8();
    sub_72B74(&qword_3C7390, &qword_3C7348);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C73A0, &qword_3C73A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7398);
  }

  return result;
}

uint64_t sub_2277D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2E18();
  *a1 = result & 1;
  return result;
}

double sub_227834@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PageView();

  return sub_2228EC(a1, a2);
}

uint64_t sub_2278BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2278F4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_6620C(&qword_3C3AB0);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_22796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PageView();

  return sub_223154(a1, a2);
}

uint64_t sub_227A20(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_227AA8()
{
  v1 = type metadata accessor for PageView();
  v2 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v39 = (v2 + 16) & ~v2;
  v40 = v0;
  v3 = v0 + v39;

  v4 = v1[5];
  sub_6620C(&qword_3C0C78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2C2548();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  sub_6620C(&qword_3C0C80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2C1448();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  sub_71AF4(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  sub_9E94C(*(v3 + v1[8]), *(v3 + v1[8] + 8));
  v9 = v1[9];
  sub_6620C(&unk_3C8530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2C0D48();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[10];

  v12 = v11 + *(sub_6620C(&qword_3C0C50) + 32);

  v13 = type metadata accessor for Page();
  v14 = v13[5];
  v15 = sub_2BFDD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v12 + v14, 1, v15))
  {
    (*(v16 + 8))(v12 + v14, v15);
  }

  v18 = v13[6];
  if (!v17(v12 + v18, 1, v15))
  {
    (*(v16 + 8))(v12 + v18, v15);
  }

  v19 = v13[7];
  v20 = sub_2C1A28();
  (*(*(v20 - 8) + 8))(v12 + v19, v20);
  v21 = v13[8];
  v22 = sub_2C1A68();
  (*(*(v22 - 8) + 8))(v12 + v21, v22);
  v23 = v13[10];
  v24 = sub_2C15F8();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v12 + v23, 1, v24))
  {
    (*(v25 + 8))(v12 + v23, v24);
  }

  v26 = v13[17];
  v27 = sub_2BEF78();
  (*(*(v27 - 8) + 8))(v12 + v26, v27);

  v28 = v13[19];
  v29 = sub_2C4BB8();
  (*(*(v29 - 8) + 8))(v12 + v28, v29);

  if (*(v12 + v13[25] + 8))
  {
  }

  v30 = v3 + v1[11];

  v31 = *(sub_6620C(&qword_3C0C70) + 32);
  v32 = sub_2C0368();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v30 + v31, 1, v32))
  {
    (*(v33 + 8))(v30 + v31, v32);
  }

  v34 = v3 + v1[13];
  v35 = sub_2C1EC8();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v34, 1, v35))
  {
    (*(v36 + 8))(v34, v35);
  }

  sub_6620C(&qword_3C6FC0);

  return _swift_deallocObject(v40, v39 + v38, v2 | 7);
}

uint64_t sub_2281BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PageView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_228230()
{
  result = qword_3C73E0;
  if (!qword_3C73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C73E0);
  }

  return result;
}

uint64_t sub_2282B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2282F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22835C()
{
  sub_718D4(&qword_3C7118);
  sub_718D4(&qword_3C7110);
  sub_718D4(&qword_3C7108);
  sub_225EB0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2284A8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228564()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_2285C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2285DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228624()
{
  sub_718D4(&qword_3C73F8);
  sub_718D4(&qword_3C7400);
  sub_718D4(&qword_3C08B0);
  sub_72B74(&qword_3C7408, &qword_3C7400);
  sub_2284A8(&qword_3C7410, &qword_3C08B0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static NavigationBarStyle.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = (a1 == a3) & ~a4;
  if (a2)
  {
    v4 = a4;
  }

  return v4 & 1;
}

uint64_t sub_2287A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationBarStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationBarStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22881C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228838(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_2288C8()
{
  result = qword_3C8640;
  if (!qword_3C8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8640);
  }

  return result;
}

uint64_t sub_22891C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v34 = sub_6620C(&qword_3C7430);
  __chkstk_darwin(v34);
  v33 = &v28 - v3;
  v4 = sub_2BE9B8();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C2940);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_6620C(&unk_3C29B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_2C0FE8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2C0EB8();
  v16 = *(v29 - 8);
  __chkstk_darwin(v29);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BrickComponentModel();
  (*(v13 + 16))(v15, a1 + *(v19 + 32), v12);
  sub_2C0EA8();
  sub_6620C(&qword_3BC020);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2E3F30;
  sub_228FD8(a1 + *(v19 + 28), v8);
  sub_229048(v8, v11);
  v21 = sub_2BF038();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    sub_2290B8(v11);
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
  }

  else
  {
    *(v20 + 56) = v21;
    *(v20 + 64) = sub_2292BC(&qword_3C7450, &type metadata accessor for BrickData);
    *(v20 + 72) = sub_2292BC(&qword_3C7458, &type metadata accessor for BrickData);
    v23 = sub_720C8((v20 + 32));
    (*(v22 + 32))(v23, v11, v21);
  }

  sub_2BEC88();
  sub_2292BC(&qword_3BD390, type metadata accessor for BrickComponentModel);
  v24 = v30;
  sub_2C4CE8();
  sub_2292BC(&qword_3C7438, &type metadata accessor for BrickLockupView);
  sub_2292BC(&qword_3C7440, &type metadata accessor for BrickExposureEvent);
  v25 = v33;
  v26 = v29;
  sub_2C3D98();
  sub_229120();
  sub_2C3D88();

  sub_229254(v25);
  (*(v31 + 8))(v24, v32);
  return (*(v16 + 8))(v18, v26);
}

uint64_t sub_228E90()
{
  sub_2288C8();

  return sub_2BFD18();
}

unint64_t sub_228ED8()
{
  result = qword_3C7428;
  if (!qword_3C7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7428);
  }

  return result;
}

uint64_t sub_228FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C2940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229048(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3C29B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2290B8(uint64_t a1)
{
  v2 = sub_6620C(&unk_3C29B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_229120()
{
  result = qword_3C7448;
  if (!qword_3C7448)
  {
    sub_718D4(&qword_3C7430);
    sub_2C0EB8();
    sub_2BEC88();
    sub_2292BC(&qword_3C7438, &type metadata accessor for BrickLockupView);
    sub_2292BC(&qword_3C7440, &type metadata accessor for BrickExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7448);
  }

  return result;
}

uint64_t sub_229254(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C7430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2292BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229304()
{
  sub_718D4(&qword_3C7430);
  sub_229120();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_229368@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2C28();
  *a1 = result;
  return result;
}

uint64_t sub_229428(uint64_t a1)
{
  v2 = sub_2BF0B8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_2C2EE8();
}

uint64_t sub_2294F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2BD8();
  *a1 = result;
  return result;
}

uint64_t ListShelfView.init(page:shelfIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2BE9B8();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ListShelfView();
  v8 = a3 + v7[6];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a3 + v7[7];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = v7[8];
  *(a3 + v10) = swift_getKeyPath();
  sub_6620C(&qword_3BDD08);
  swift_storeEnumTagMultiPayload();
  v11 = a3 + v7[9];
  *v11 = swift_getKeyPath();
  *(v11 + 40) = 0;
  sub_2BE998();
  sub_2BE818();
  v12 = a3 + v7[11];
  *v12 = swift_getKeyPath();
  *(v12 + 40) = 0;
  result = sub_69130(a1, a3, &qword_3C0C50);
  *(a3 + v7[5]) = a2;
  return result;
}

uint64_t type metadata accessor for ListShelfView()
{
  result = qword_3C7500;
  if (!qword_3C7500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2BD8();
  *a1 = result;
  return result;
}

uint64_t sub_22975C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Page();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Shelf();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v11 = *&v6[*(v4 + 68)];

  sub_230E1C(v6, type metadata accessor for Page);
  result = type metadata accessor for ListShelfView();
  v13 = *(v1 + *(result + 20));
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 >= *(v11 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_22FFF8(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v10, type metadata accessor for Shelf);

  sub_6932C(&v10[*(v7 + 80)], a1, &qword_3BDE70);
  v14 = sub_2BEA28();
  result = (*(*(v14 - 8) + 48))(a1, 1, v14);
  if (result)
  {
    return sub_230E1C(v10, type metadata accessor for Shelf);
  }

  if (!(v13 >> 31))
  {
    sub_2BE9D8();
    return sub_230E1C(v10, type metadata accessor for Shelf);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_229998()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ListShelfView() + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void *sub_229AE8()
{
  v1 = sub_2C30F8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ListShelfView() + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2C5DD8();
    v8 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_229C48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BDD08);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ListShelfView();
  sub_6932C(v1 + *(v10 + 32), v9, &qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2BF0B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2C5DD8();
    v13 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_229E50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListShelfView();
  result = sub_6932C(v1 + *(v7 + 36), v11, &qword_3C1C88);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_2C5DD8();
    v10 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_229FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C30F8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListShelfView();
  sub_6932C(v1 + *(v7 + 44), v10, &qword_3BDFE0);
  if (v11 == 1)
  {
    return sub_68D1C(v10, a1);
  }

  sub_2C5DD8();
  v9 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ListShelfView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_2BE9B8();
  v79 = *(v3 - 8);
  v80 = v3;
  __chkstk_darwin(v3);
  v78 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v5 - 8);
  v76 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v64 - v8;
  v9 = sub_6620C(&qword_3C1730);
  __chkstk_darwin(v9 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v64 - v13;
  v83 = sub_6620C(&qword_3C7460);
  v65 = *(v83 - 8);
  __chkstk_darwin(v83);
  v16 = &v64 - v15;
  v85 = sub_6620C(&qword_3C7468);
  v66 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v64 - v17;
  v18 = sub_6620C(&qword_3C7470);
  v74 = *(v18 - 8);
  v75 = v18;
  __chkstk_darwin(v18);
  v86 = &v64 - v19;
  v20 = sub_6620C(&qword_3C7478);
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin(v20);
  v71 = &v64 - v21;
  v70 = sub_6620C(&qword_3C7480);
  __chkstk_darwin(v70);
  v69 = &v64 - v22;
  v68 = sub_6620C(&qword_3C7488);
  __chkstk_darwin(v68);
  v67 = &v64 - v23;
  v24 = type metadata accessor for Page();
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Shelf();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v32 = *&v27[*(v25 + 68)];

  sub_230E1C(v27, type metadata accessor for Page);
  result = type metadata accessor for ListShelfView();
  v34 = *(result + 20);
  v84 = v2;
  v35 = *(v2 + v34);
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v35 >= *(v32 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_22FFF8(v32 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v35, v31, type metadata accessor for Shelf);

  __chkstk_darwin(v36);
  v37 = v84;
  *(&v64 - 2) = v31;
  *(&v64 - 1) = v37;
  sub_6620C(&qword_3C7490);
  sub_72B74(&qword_3C7498, &qword_3C7490);
  sub_2C45A8();
  sub_2C26A8();
  v38 = sub_22EB28();
  v39 = v83;
  sub_2C3FC8();
  (*(v65 + 8))(v16, v39);
  sub_6932C(v31 + *(v28 + 36), v11, &qword_3C1730);
  v40 = sub_2C22F8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  if (v42(v11, 1, v40) == 1)
  {
    sub_2C22B8();
    v43 = v42(v11, 1, v40);
    v44 = v77;
    if (v43 != 1)
    {
      sub_69198(v11, &qword_3C1730);
    }
  }

  else
  {
    (*(v41 + 32))(v14, v11, v40);
    v44 = v77;
  }

  (*(v41 + 56))(v14, 0, 1, v40);
  v87 = v83;
  v88 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v85;
  v47 = v82;
  sub_2C3C08();
  sub_69198(v14, &qword_3C1730);
  (*(v66 + 8))(v47, v46);
  sub_22975C(v44);
  v49 = *v31;
  v48 = v31[1];
  swift_bridgeObjectRetain_n();
  v50 = v78;
  sub_2BE9A8();
  sub_6620C(&qword_3BC020);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_2E3F30;
  v52 = v76;
  sub_6932C(v44, v76, &qword_3BDE70);
  v53 = sub_2BEA28();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {
    sub_69198(v52, &qword_3BDE70);
    *(v51 + 32) = 0u;
    *(v51 + 48) = 0u;
    *(v51 + 64) = 0u;
  }

  else
  {
    *(v51 + 56) = v53;
    v84 = OpaqueTypeConformance2;
    *(v51 + 64) = sub_230064(&unk_3C0030, &type metadata accessor for SectionData);
    *(v51 + 72) = sub_230064(&unk_3C43F0, &type metadata accessor for SectionData);
    v55 = sub_720C8((v51 + 32));
    OpaqueTypeConformance2 = v84;
    (*(v54 + 32))(v55, v52, v53);
  }

  v87 = v85;
  v88 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v56 = v71;
  v57 = v75;
  v58 = v86;
  sub_2C3D88();

  (*(v79 + 8))(v50, v80);
  sub_69198(v44, &qword_3BDE70);
  (*(v74 + 8))(v58, v57);
  KeyPath = swift_getKeyPath();
  v60 = v69;
  (*(v72 + 32))(v69, v56, v73);
  v61 = (v60 + *(v70 + 36));
  *v61 = KeyPath;
  v61[1] = v49;
  v61[2] = v48;
  v62 = v67;
  sub_69130(v60, v67, &qword_3C7480);
  v63 = (v62 + *(v68 + 52));
  *v63 = v49;
  v63[1] = v48;
  sub_69130(v62, v81, &qword_3C7488);

  return sub_230E1C(v31, type metadata accessor for Shelf);
}

uint64_t sub_22AC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v161 = a3;
  v5 = type metadata accessor for ListShelfView();
  v143 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v144 = v6;
  v145 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_6620C(&qword_3C1BF0);
  __chkstk_darwin(v146);
  v167 = &v126 - v7;
  v165 = sub_6620C(&qword_3C7558);
  v148 = *(v165 - 8);
  __chkstk_darwin(v165);
  v147 = &v126 - v8;
  v163 = sub_6620C(&qword_3C7560);
  __chkstk_darwin(v163);
  v164 = &v126 - v9;
  v10 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v10 - 8);
  v134 = &v126 - v11;
  v12 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v12 - 8);
  v133 = &v126 - v13;
  v135 = sub_2C5258();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v129 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_6620C(&qword_3C8300);
  v130 = *(v171 - 8);
  __chkstk_darwin(v171);
  v128 = &v126 - v15;
  v162 = sub_6620C(&qword_3C19D8);
  v136 = *(v162 - 8);
  __chkstk_darwin(v162);
  v131 = &v126 - v16;
  v17 = sub_6620C(&qword_3C1A00);
  __chkstk_darwin(v17 - 8);
  v154 = &v126 - v18;
  v19 = type metadata accessor for ContentUnavailableComponentModel();
  v137 = *(v19 - 8);
  v138 = v19;
  __chkstk_darwin(v19);
  v127 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v139 = &v126 - v22;
  v23 = sub_6620C(&qword_3C7568);
  __chkstk_darwin(v23 - 8);
  v160 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v174 = &v126 - v26;
  v169 = sub_6620C(&qword_3C1738);
  v27 = *(v169 - 8);
  __chkstk_darwin(v169);
  v168 = &v126 - v28;
  v29 = sub_6620C(&qword_3C7570);
  v158 = *(v29 - 8);
  v159 = v29;
  __chkstk_darwin(v29);
  v157 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v170 = &v126 - v32;
  __chkstk_darwin(v33);
  v156 = &v126 - v34;
  __chkstk_darwin(v35);
  v173 = &v126 - v36;
  v37 = sub_2BF0B8();
  v151 = *(v37 - 8);
  v152 = v37;
  __chkstk_darwin(v37);
  v39 = &v126 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Shelf();
  v140 = *(v40 - 8);
  __chkstk_darwin(v40);
  v142 = &v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v126 - v43;
  v141 = v45;
  __chkstk_darwin(v46);
  v150 = &v126 - v47;
  v48 = sub_229AE8();
  KeyPath = v39;
  sub_229C48(v39);
  sub_229E50(v196);
  v49 = sub_22C0F4();
  v149 = v44;
  sub_22FFF8(a1, v44, type metadata accessor for Shelf);
  v153 = v40;
  v50 = *(v40 + 68);
  v155 = a1;
  v51 = *(a1 + v50);
  v52 = *(v51 + 16);
  v166 = a2;
  if (!v52)
  {

    v56 = _swiftEmptyArrayStorage;
    v75 = v171;
LABEL_13:
    v76 = v153;
    v77 = *(v153 + 68);
    v78 = v149;

    *(v78 + v77) = v56;
    v79 = v150;
    sub_22FF90(v78, v150, type metadata accessor for Shelf);
    sub_69198(v196, &unk_3BDDB8);
    (*(v151 + 8))(KeyPath, v152);
    v80 = *(v79 + *(v76 + 68));

    sub_230E1C(v79, type metadata accessor for Shelf);
    v81 = v168;
    sub_22C3F0(v168);
    sub_2C26A8();
    v82 = sub_72B74(&unk_3C8340, &qword_3C8300);
    v188 = v75;
    *&v189 = v82;
    v177 = v82;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = v169;
    sub_2C3F58();
    v85 = *(v27 + 8);
    v85(v81, v84);
    v86 = *(v80 + 16);
    v88 = v154;
    v87 = v155;
    v172 = v27 + 8;
    v178 = v85;
    v179 = OpaqueTypeConformance2;
    if (!v86)
    {
      sub_6932C(v155 + *(v76 + 64), v154, &qword_3C1A00);
      v89 = v138;
      if ((*(v137 + 48))(v88, 1, v138) != 1)
      {

        v112 = v89;
        v113 = v139;
        sub_22FF90(v88, v139, type metadata accessor for ContentUnavailableComponentModel);
        v190 = v89;
        v191 = sub_230064(&qword_3BD3A8, type metadata accessor for ContentUnavailableComponentModel);
        v114 = sub_720C8(&v188);
        sub_22FFF8(v113, v114, type metadata accessor for ContentUnavailableComponentModel);
        sub_9F8B8();
        v115 = v128;
        sub_2BFCA8();
        v116 = v113;
        v117 = v127;
        sub_22FFF8(v116, v127, type metadata accessor for ContentUnavailableComponentModel);
        v118 = v129;
        sub_2C5238();
        v119 = v134;
        sub_6932C(v117 + *(v112 + 44), v134, &qword_3BF898);
        v120 = v133;
        sub_69130(v119, v133, &qword_3BDF58);
        v121 = v131;
        v122 = v171;
        v123 = v177;
        sub_2C3A98();
        sub_69198(v120, &qword_3BDF58);
        (*(v132 + 8))(v118, v135);
        sub_230E1C(v117, type metadata accessor for ContentUnavailableComponentModel);
        (*(v130 + 8))(v115, v122);
        v124 = v136;
        v125 = v162;
        (*(v136 + 16))(v164, v121, v162);
        swift_storeEnumTagMultiPayload();
        v188 = v122;
        *&v189 = v123;
        swift_getOpaqueTypeConformance2();
        sub_22FE70();
        sub_2C33C8();
        (*(v124 + 8))(v121, v125);
        sub_230E1C(v139, type metadata accessor for ContentUnavailableComponentModel);
        goto LABEL_17;
      }

      sub_69198(v88, &qword_3C1A00);
    }

    v188 = v80;
    v175 = v80;

    sub_6620C(&qword_3C1938);
    sub_72B74(&qword_3C1BF8, &qword_3C1938);
    sub_2BFF38();
    KeyPath = swift_getKeyPath();
    v90 = v145;
    sub_22FFF8(v166, v145, type metadata accessor for ListShelfView);
    v91 = v142;
    sub_22FFF8(v87, v142, type metadata accessor for Shelf);
    v92 = (*(v143 + 80) + 16) & ~*(v143 + 80);
    v93 = (v144 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (*(v140 + 80) + v93 + 8) & ~*(v140 + 80);
    v95 = swift_allocObject();
    sub_22FF90(v90, v95 + v92, type metadata accessor for ListShelfView);
    *(v95 + v93) = v175;
    sub_22FF90(v91, v95 + v94, type metadata accessor for Shelf);
    v96 = swift_allocObject();
    *(v96 + 16) = sub_22FD3C;
    *(v96 + 24) = v95;
    sub_6620C(&qword_3C7578);
    sub_72B74(&qword_3C1C00, &qword_3C1BF0);
    sub_72B74(&qword_3C7580, &qword_3C7578);
    v97 = v147;
    sub_2C4558();
    v98 = v148;
    v99 = v165;
    (*(v148 + 16))(v164, v97, v165);
    swift_storeEnumTagMultiPayload();
    v188 = v171;
    *&v189 = v177;
    swift_getOpaqueTypeConformance2();
    sub_22FE70();
    sub_2C33C8();
    (*(v98 + 8))(v97, v99);
LABEL_17:
    v100 = v168;
    sub_22DF90(v168);
    sub_2C26A8();
    v101 = v156;
    v102 = v169;
    sub_2C3F58();
    v178(v100, v102);
    v104 = v158;
    v103 = v159;
    v105 = *(v158 + 16);
    v106 = v170;
    v105(v170, v173, v159);
    v107 = v160;
    sub_22FF20(v174, v160);
    v108 = v157;
    v105(v157, v101, v103);
    v109 = v161;
    v105(v161, v106, v103);
    v110 = sub_6620C(&qword_3C7590);
    sub_22FF20(v107, &v109[*(v110 + 48)]);
    v105(&v109[*(v110 + 64)], v108, v103);
    v111 = *(v104 + 8);
    v111(v101, v103);
    sub_69198(v174, &qword_3C7568);
    v111(v173, v103);
    v111(v108, v103);
    sub_69198(v107, &qword_3C7568);
    return (v111)(v170, v103);
  }

  v175 = v49;
  v179 = v48;
  v172 = v27;
  v195 = _swiftEmptyArrayStorage;
  result = sub_64698(0, v52, 0);
  v54 = 0;
  v55 = v51 + 32;
  v56 = v195;
  v57 = *(v51 + 16);
  v177 = v52;
  v178 = v57;
  v58 = v51;
  while (1)
  {
    v59 = v179;
    if (v178 == v54)
    {
      break;
    }

    if (v54 >= *(v51 + 16))
    {
      goto LABEL_20;
    }

    sub_691F8(v55, &v189);
    v186 = v54;
    sub_68D1C(&v189, v187);
    sub_691F8(v187, &v192);
    sub_6620C(&qword_3BC278);
    sub_6620C(&qword_3BC1D8);
    if (swift_dynamicCast())
    {
      sub_68D1C(&v180, v183);
      v194 = 0;
      v192 = 0u;
      v193 = 0u;
      v60 = v184;
      v61 = v185;
      sub_8C564(v183, v184);
      sub_25707C(v54, v59, &v192, KeyPath, v196, v175, v60, v61, &v180);
      sub_69198(&v192, &qword_3BE008);
      v62 = *(&v181 + 1);
      v63 = v182;
      v64 = sub_72084(&v180, *(&v181 + 1));
      *(&v193 + 1) = v62;
      v194 = *(v63 + 8);
      v65 = sub_720C8(&v192);
      (*(*(v62 - 8) + 16))(v65, v64, v62);
      sub_68CD0(&v180);
      sub_68CD0(v183);
    }

    else
    {
      v182 = 0;
      v180 = 0u;
      v181 = 0u;
      sub_69198(&v180, &qword_3C1C78);
      sub_691F8(v187, &v192);
    }

    sub_69198(&v186, &qword_3C1C80);
    v195 = v56;
    v67 = v56[2];
    v66 = v56[3];
    if (v67 >= v66 >> 1)
    {
      sub_64698((v66 > 1), v67 + 1, 1);
    }

    ++v54;
    v68 = *(&v193 + 1);
    v69 = v194;
    v70 = sub_8C564(&v192, *(&v193 + 1));
    v71 = __chkstk_darwin(v70);
    v73 = &v126 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v74 + 16))(v73, v71);
    sub_24EE68(v67, v73, &v195, v68, v69);
    result = sub_68CD0(&v192);
    v56 = v195;
    v55 += 40;
    v51 = v58;
    if (v177 == v54)
    {

      v75 = v171;
      v27 = v172;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_22C0F4()
{
  v0 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_2BEA28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  type metadata accessor for ListShelfView();
  v10 = sub_2BE7F8();
  sub_22975C(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_69198(v2, &qword_3BDE70);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    v11 = *(v4 + 16);
    v11(v6, v9, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_5BCAC(0, v10[2] + 1, 1, v10);
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_5BCAC((v12 > 1), v13 + 1, 1, v10);
    }

    v14 = *(v4 + 8);
    v14(v9, v3);
    v18 = v3;
    v19 = sub_230064(&unk_3C0030, &type metadata accessor for SectionData);
    v20 = sub_230064(&unk_3C43F0, &type metadata accessor for SectionData);
    v15 = sub_720C8(&v17);
    v11(v15, v6, v3);
    v10[2] = v13 + 1;
    sub_9FB74(&v17, &v10[6 * v13 + 4]);
    v14(v6, v3);
  }

  return v10;
}

uint64_t sub_22C3F0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = sub_2C0E48();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6620C(&qword_3C8300);
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = sub_2C1D08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Page();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Shelf();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v18 = *&v13[*(v11 + 68)];

  sub_230E1C(v13, type metadata accessor for Page);
  result = type metadata accessor for ListShelfView();
  v20 = *(v1 + *(result + 20));
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v20 >= *(v18 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22FFF8(v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v20, v17, type metadata accessor for Shelf);

  (*(v7 + 16))(v9, &v17[*(v14 + 56)], v6);
  sub_230E1C(v17, type metadata accessor for Shelf);
  sub_2C1CD8();
  (*(v7 + 8))(v9, v6);
  sub_691F8(v33, v32);
  sub_9F8B8();
  sub_2BFCA8();
  sub_691F8(v33, v32);
  sub_6620C(&qword_3BC278);
  sub_6620C(&qword_3C1C68);
  if (swift_dynamicCast())
  {
    sub_68CD0(v31);
  }

  v22 = v27;
  v21 = v28;
  v23 = v30;
  (*(v28 + 104))(v27, enum case for PageMarginType.padding(_:), v30);
  sub_72B74(&unk_3C8340, &qword_3C8300);
  v24 = v26;
  sub_2C3C28();
  (*(v21 + 8))(v22, v23);
  (*(v25 + 8))(v5, v24);
  return sub_68CD0(v33);
}

uint64_t sub_22C8D4@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  type metadata accessor for HostProxy(0);
  sub_230064(&qword_3BCB70, type metadata accessor for HostProxy);
  v2 = sub_2C2568();
  v4 = v3;

  v6 = sub_25AF0C(v5, 0, v2, v4 & 1, &_swiftEmptyDictionarySingleton);

  *a1 = v6;
  return result;
}

uint64_t sub_22C9B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v109 = a5;
  v97 = a4;
  v119 = a3;
  v113 = a6;
  v112 = sub_2C5118();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Page();
  __chkstk_darwin(v9 - 8);
  v108 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v11 - 8);
  v100 = &v81 - v12;
  v101 = sub_2C5258();
  v95 = *(v101 - 8);
  __chkstk_darwin(v101);
  v94 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ListShelfView();
  v93 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v92 = v15;
  v117 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2BE9B8();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&qword_3C1A60);
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  v20 = sub_6620C(&qword_3C1BC8);
  v82 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  v84 = sub_6620C(&qword_3C1BC0);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v24 = &v81 - v23;
  v86 = sub_6620C(&qword_3C1BB8);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v81 - v25;
  v91 = sub_6620C(&qword_3C1C08);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v114 = &v81 - v26;
  v116 = sub_6620C(&qword_3C75A0);
  __chkstk_darwin(v116);
  v118 = &v81 - v27;
  v107 = sub_6620C(&qword_3C75A8);
  v102 = *(v107 - 8);
  __chkstk_darwin(v107);
  v96 = &v81 - v28;
  v106 = sub_6620C(&qword_3C75B0);
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = &v81 - v29;
  v105 = sub_6620C(&qword_3C75B8);
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v81 - v30;
  sub_691F8(a2, &v124);
  sub_9F8B8();
  sub_2BFCA8();
  KeyPath = swift_getKeyPath();
  v32 = &v19[*(v17 + 36)];
  *v32 = KeyPath;
  v32[1] = a1;
  v33 = a1;
  v115 = a2;
  sub_691F8(a2, v120);
  sub_6620C(&qword_3BC278);
  sub_6620C(&qword_3C1C18);
  if (swift_dynamicCast())
  {
    v34 = *(&v122 + 1);
    v35 = v123;
    v36 = sub_72084(&v121, *(&v122 + 1));
    *(&v125 + 1) = v34;
    v126 = *(v35 + 8);
    v37 = sub_720C8(&v124);
    (*(*(v34 - 8) + 16))(v37, v36, v34);
    sub_68CD0(&v121);
  }

  else
  {
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    sub_69198(&v121, &qword_3C1C20);
    v124 = 0u;
    v125 = 0u;
    v126 = 0;
  }

  v38 = v119;
  sub_229FCC(&v121);
  v39 = sub_1239F0();
  sub_2C3CE8();
  sub_68CD0(&v121);
  sub_69198(v19, &qword_3C1A60);
  sub_69198(&v124, &qword_3BDFA0);
  *&v124 = v17;
  *(&v124 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2C3D08();
  (*(v82 + 8))(v22, v20);
  *&v124 = v20;
  *(&v124 + 1) = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v81;
  v43 = v84;
  sub_2C3D78();
  (*(v83 + 8))(v24, v43);
  v44 = v115;
  sub_72084(v115, v115[3]);
  sub_2C4CF8();
  sub_72084(v44, v44[3]);
  v45 = v87;
  sub_2C4CE8();
  *&v124 = v43;
  *(&v124 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  v46 = v86;
  sub_2C3D88();

  (*(v88 + 8))(v45, v89);
  (*(v85 + 8))(v42, v46);
  v89 = sub_2C46A8();
  v88 = v47;
  v48 = v117;
  v49 = &v118[*(v116 + 36)];
  sub_22FFF8(v38, v117, type metadata accessor for ListShelfView);
  v50 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v92 += v50;
  v51 = (v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v93 = v50;
  sub_22FF90(v48, v52 + v50, type metadata accessor for ListShelfView);
  *(v52 + v51) = v33;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v97;

  v53 = v94;
  sub_2C5238();
  *&v124 = sub_22DC2C;
  *(&v124 + 1) = 0;
  *&v125 = sub_2305E0;
  *(&v125 + 1) = v52;
  sub_72084(v44, v44[3]);
  v54 = v100;
  sub_2C57B8();
  sub_6620C(&qword_3C75C0);
  sub_230688();
  sub_2C3A98();
  sub_69198(v54, &qword_3BDF58);
  (*(v95 + 8))(v53, v101);

  v55 = &v49[*(sub_6620C(&qword_3C75E0) + 36)];
  v56 = v88;
  *v55 = v89;
  v55[1] = v56;
  (*(v90 + 32))(v118, v114, v91);
  sub_6620C(&qword_3C0C50);
  v57 = v108;
  sub_2C44C8();
  Page.intentToLoadMore.getter(&v124);
  sub_230E1C(v57, type metadata accessor for Page);
  v58 = *(&v125 + 1);
  if (*(&v125 + 1))
  {
    sub_68CD0(&v124);
  }

  LOBYTE(v124) = v58 != 0;
  v59 = v117;
  sub_22FFF8(v119, v117, type metadata accessor for ListShelfView);
  v60 = swift_allocObject();
  sub_22FF90(v59, v60 + v93, type metadata accessor for ListShelfView);
  v61 = sub_230C58();
  v62 = v96;
  v63 = v116;
  v64 = v118;
  sub_2C4108();

  sub_69198(v64, &qword_3C75A0);
  v65 = v115;
  sub_72084(v115, v115[3]);
  swift_getDynamicType();
  sub_2C67E8();
  sub_72084(v65, v65[3]);
  sub_2C4CB8();
  v66 = sub_2C6178();
  v68 = v67;
  sub_68D90(&v124);
  *(&v125 + 1) = &type metadata for String;
  *&v124 = v66;
  *(&v124 + 1) = v68;
  v70 = *v109;
  v69 = v109[1];
  *(&v122 + 1) = &type metadata for String;
  *&v121 = v70;
  *(&v121 + 1) = v69;

  v71 = v110;
  sub_2C5108();

  sub_69198(&v121, qword_3C0250);
  sub_69198(&v124, qword_3C0250);
  *&v124 = v63;
  *(&v124 + 1) = &type metadata for Bool;
  *&v125 = v61;
  *(&v125 + 1) = &protocol witness table for Bool;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v99;
  v74 = v107;
  sub_2C3B08();
  (*(v111 + 8))(v71, v112);
  (*(v102 + 8))(v62, v74);
  *&v124 = v74;
  *(&v124 + 1) = v72;
  swift_getOpaqueTypeConformance2();
  v75 = v98;
  v76 = v106;
  sub_2C3C78();
  (*(v104 + 8))(v73, v76);
  v77 = sub_2C3328();
  v78 = v113;
  *v113 = v77;
  v78[1] = 0;
  *(v78 + 16) = 1;
  v79 = sub_6620C(&qword_3C75F8);
  return (*(v103 + 32))(v78 + *(v79 + 44), v75, v105);
}

uint64_t sub_22DA78@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for HostProxy(0);
  sub_230064(&qword_3BCB70, type metadata accessor for HostProxy);
  v3 = sub_2C2568();
  v5 = v4;
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();

  v9 = sub_25AF0C(KeyPath, 0, v3, v5 & 1, &_swiftEmptyDictionarySingleton);

  v10 = sub_25AC84(v6, 0, v7, 0, v9);

  v11 = sub_25B190(v8, 0, v10);

  *a1 = v11;
  return result;
}

uint64_t sub_22DC2C@<X0>(void *a1@<X8>)
{
  if (qword_3BB918 != -1)
  {
    swift_once();
  }

  v2 = sub_2C2978();
  sub_57AD8(v2, qword_3E88F0);
  result = sub_2C2738();
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

uint64_t sub_22DCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Page();
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229998();
  type metadata accessor for PaginationController();
  sub_2C4DB8();

  v9 = v14[0];
  if (*(a4 + 16) - 5 <= a3 && (sub_6620C(&qword_3C0C50), sub_2C44C8(), Page.intentToLoadMore.getter(&v12), sub_230E1C(v8, type metadata accessor for Page), v13))
  {
    sub_68D1C(&v12, v14);
    v10 = sub_229998();
    sub_1C0C88(v14, v10);

    return sub_68CD0(v14);
  }

  else
  {
    swift_beginAccess();
    *(v9 + 16) = 1;
  }
}

uint64_t sub_22DE18()
{
  v0 = type metadata accessor for Page();
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229998();
  type metadata accessor for PaginationController();
  sub_2C4DB8();

  v3 = v9[0];
  swift_beginAccess();
  if (*(v3 + 16) != 1)
  {
  }

  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  Page.intentToLoadMore.getter(&v7);
  sub_230E1C(v2, type metadata accessor for Page);
  if (v8)
  {
    sub_68D1C(&v7, v9);
    v4 = sub_229998();
    sub_1C0C88(v9, v4);

    return sub_68CD0(v9);
  }

  else
  {

    if (v8)
    {
      return sub_68CD0(&v7);
    }
  }

  return result;
}

uint64_t sub_22DF90@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v30 = sub_2C0E48();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6620C(&qword_3C8300);
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = sub_2C1CB8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Page();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Shelf();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3C0C50);
  sub_2C44C8();
  v18 = *&v13[*(v11 + 68)];

  sub_230E1C(v13, type metadata accessor for Page);
  result = type metadata accessor for ListShelfView();
  v20 = *(v1 + *(result + 20));
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v20 >= *(v18 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22FFF8(v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v20, v17, type metadata accessor for Shelf);

  (*(v7 + 16))(v9, &v17[*(v14 + 60)], v6);
  sub_230E1C(v17, type metadata accessor for Shelf);
  sub_2C1C88();
  (*(v7 + 8))(v9, v6);
  sub_691F8(v33, v32);
  sub_9F8B8();
  sub_2BFCA8();
  sub_691F8(v33, v32);
  sub_6620C(&qword_3BC278);
  sub_6620C(&qword_3C1C68);
  if (swift_dynamicCast())
  {
    sub_68CD0(v31);
  }

  v22 = v27;
  v21 = v28;
  v23 = v30;
  (*(v28 + 104))(v27, enum case for PageMarginType.padding(_:), v30);
  sub_72B74(&unk_3C8340, &qword_3C8300);
  v24 = v26;
  sub_2C3C28();
  (*(v21 + 8))(v22, v23);
  (*(v25 + 8))(v5, v24);
  return sub_68CD0(v33);
}

uint64_t sub_22E474@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v24 = sub_2C1D28();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SeriesRoomListHeaderComponent();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_2C0DD8();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C1E88();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1E78();
  sub_2C0DC8();
  *v7 = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  v15 = v7 + *(v5 + 28);
  *v15 = swift_getKeyPath();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_2C1D18();
  v16 = sub_25E314(v14, &_swiftEmptyDictionarySingleton);
  v17 = sub_25D084(v10, v16);

  v18 = sub_25E1A8(v17);

  v19 = sub_25DD50(v7, v18);

  v20 = sub_25DB10(v3, v19);

  (*(v1 + 8))(v3, v24);
  sub_230E1C(v7, type metadata accessor for SeriesRoomListHeaderComponent);
  (*(v8 + 8))(v10, v23);
  result = (*(v12 + 8))(v14, v11);
  *v25 = v20;
  return result;
}

uint64_t sub_22E7B0@<X0>(uint64_t *a1@<X8>)
{
  v17 = a1;
  v16 = sub_2C1E48();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C0DD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C1E68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C1E58();
  sub_2C0DC8();
  sub_2C1E38();
  v12 = sub_25E794(v11, &_swiftEmptyDictionarySingleton);
  v13 = sub_25D084(v7, v12);

  v14 = sub_25E554(v3, v13);

  (*(v1 + 8))(v3, v16);
  (*(v5 + 8))(v7, v4);
  result = (*(v9 + 8))(v11, v8);
  *v17 = v14;
  return result;
}

unint64_t sub_22EB28()
{
  result = qword_3C74A0;
  if (!qword_3C74A0)
  {
    sub_718D4(&qword_3C7460);
    sub_72B74(&qword_3C7498, &qword_3C7490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C74A0);
  }

  return result;
}

uint64_t sub_22EC1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3C0C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_6620C(&qword_3BDD10);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[8];
    goto LABEL_3;
  }

  v15 = sub_2BE808();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_22EDB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_6620C(&qword_3C0C50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
    return result;
  }

  v13 = sub_6620C(&qword_3BDD10);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_2BE808();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_22EF44()
{
  sub_22F120(319, &qword_3C1F68, type metadata accessor for Page, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_22F120(319, &qword_3BDD88, &type metadata accessor for BaseObjectGraph, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_CEAF8(319, &qword_3BDD98, &qword_3BDDA0);
      if (v2 <= 0x3F)
      {
        sub_22F120(319, &qword_3BDDA8, &type metadata accessor for DataStack, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_CEAF8(319, &qword_3BDDB0, &unk_3BDDB8);
          if (v4 <= 0x3F)
          {
            sub_2BE808();
            if (v5 <= 0x3F)
            {
              sub_CEAF8(319, &qword_3BDD90, &qword_3BD200);
              if (v6 <= 0x3F)
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

void sub_22F120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_22F1C8@<X0>(void *a1@<X8>)
{
  type metadata accessor for PageHeightValue();
  sub_230064(&qword_3C7598, type metadata accessor for PageHeightValue);
  result = sub_2C3128();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_2BE6F8();

    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_22F300()
{
  v69 = type metadata accessor for ListShelfView();
  v72 = *(*(v69 - 1) + 80);
  v1 = (v72 + 16) & ~v72;
  v67 = *(*(v69 - 1) + 64);
  v2 = type metadata accessor for Shelf();
  v74 = *(*(v2 - 1) + 80);
  v71 = *(*(v2 - 1) + 64);
  v73 = v0;
  v3 = v0 + v1;

  v4 = v0 + v1 + *(sub_6620C(&qword_3C0C50) + 32);

  v5 = type metadata accessor for Page();
  v6 = v5[5];
  v7 = sub_2BFDD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v66 = v8;
  v10 = v67 + v1;
  v11 = v5[6];
  v65 = v9;
  if (!v9(v4 + v11, 1, v7))
  {
    (*(v66 + 8))(v4 + v11, v7);
  }

  v68 = v7;
  v12 = v10 + 7;
  v13 = v5[7];
  v14 = sub_2C1A28();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v5[8];
  v16 = sub_2C1A68();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);
  v17 = v5[10];
  v18 = sub_2C15F8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v4 + v17, 1, v18))
  {
    (*(v19 + 8))(v4 + v17, v18);
  }

  v20 = v12 & 0xFFFFFFFFFFFFFFF8;

  v21 = v5[17];
  v22 = sub_2BEF78();
  (*(*(v22 - 8) + 8))(v4 + v21, v22);

  v23 = v5[19];
  v24 = sub_2C4BB8();
  (*(*(v24 - 8) + 8))(v4 + v23, v24);

  if (*(v4 + v5[25] + 8))
  {
  }

  sub_9E94C(*(v3 + v69[7]), *(v3 + v69[7] + 8));
  v25 = v69[8];
  sub_6620C(&qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_2BF0B8();
    (*(*(v26 - 8) + 8))(v3 + v25, v26);
  }

  else
  {
  }

  v27 = v3 + v69[9];
  if (*(v27 + 40))
  {
    if (*(v27 + 24))
    {
      sub_68CD0(v27);
    }
  }

  else
  {
  }

  v28 = (v20 + v74 + 8) & ~v74;
  v29 = v69[10];
  v30 = sub_2BE808();
  (*(*(v30 - 8) + 8))(v3 + v29, v30);
  v31 = v3 + v69[11];
  if (*(v31 + 40))
  {
    sub_68CD0(v31);
  }

  else
  {
  }

  v32 = v73 + v28;

  v33 = v2[6];
  v34 = sub_2C0AF8();
  (*(*(v34 - 8) + 8))(v73 + v28 + v33, v34);
  v35 = v2[8];
  v36 = sub_2C5018();
  v37 = *(v36 - 8);
  v70 = *(v37 + 48);
  if (!v70(v73 + v28 + v35, 1, v36))
  {
    (*(v37 + 8))(v32 + v35, v36);
  }

  v38 = v2[9];
  v39 = sub_2C22F8();
  v40 = *(v39 - 8);
  if (!(*(v40 + 48))(v32 + v38, 1, v39))
  {
    (*(v40 + 8))(v32 + v38, v39);
  }

  sub_68CD0(v32 + v2[10]);
  v41 = v2[12];
  v42 = sub_2BFE68();
  v43 = *(v42 - 8);
  if (!(*(v43 + 48))(v32 + v41, 1, v42))
  {
    (*(v43 + 8))(v32 + v41, v42);
  }

  v44 = v2[13];
  v45 = sub_2C1B98();
  (*(*(v45 - 8) + 8))(v32 + v44, v45);
  v46 = v2[14];
  v47 = sub_2C1D08();
  (*(*(v47 - 8) + 8))(v32 + v46, v47);
  v48 = v2[15];
  v49 = sub_2C1CB8();
  (*(*(v49 - 8) + 8))(v32 + v48, v49);
  v50 = v32 + v2[16];
  v51 = type metadata accessor for ContentUnavailableComponentModel();
  if (!(*(*(v51 - 1) + 48))(v50, 1, v51))
  {

    v52 = *(v66 + 8);
    v52(v50 + v51[5], v68);
    v53 = v51[6];
    if (!v65(v50 + v53, 1, v68))
    {
      v52(v50 + v53, v68);
    }

    v54 = v51[9];
    v55 = sub_2C1DC8();
    (*(*(v55 - 8) + 8))(v50 + v54, v55);
    sub_68CD0(v50 + v51[10]);
    v56 = v51[11];
    if (!v70(v50 + v56, 1, v36))
    {
      (*(v37 + 8))(v50 + v56, v36);
    }
  }

  v57 = v2[18];
  v58 = sub_2C0E58();
  v59 = *(v58 - 8);
  if (!(*(v59 + 48))(v32 + v57, 1, v58))
  {
    (*(v59 + 8))(v32 + v57, v58);
  }

  v60 = v32 + v2[19];
  if (*(v60 + 24))
  {
    sub_68CD0(v60);
  }

  v61 = v2[20];
  v62 = sub_2BEA28();
  v63 = *(v62 - 8);
  if (!(*(v63 + 48))(v32 + v61, 1, v62))
  {
    (*(v63 + 8))(v32 + v61, v62);
  }

  return _swift_deallocObject(v73, v28 + v71, v72 | v74 | 7);
}

uint64_t sub_22FD3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(type metadata accessor for ListShelfView() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Shelf() - 8);
  v11 = *(v3 + v9);
  v12 = (v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)));

  return sub_22C9B4(a1, a2, v3 + v8, v11, v12, a3);
}

uint64_t sub_22FE38()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_22FE70()
{
  result = qword_3C7588;
  if (!qword_3C7588)
  {
    sub_718D4(&qword_3C7558);
    sub_72B74(&qword_3C7580, &qword_3C7578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7588);
  }

  return result;
}

uint64_t sub_22FF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C7568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FF90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2300B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2C2C28();
  *a1 = result;
  return result;
}

uint64_t sub_230108()
{
  v1 = type metadata accessor for ListShelfView();
  v2 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v30 = (v2 + 16) & ~v2;
  v31 = v0;
  v3 = v0 + v30;

  v4 = v0 + v30 + *(sub_6620C(&qword_3C0C50) + 32);

  v5 = type metadata accessor for Page();
  v6 = v5[5];
  v7 = sub_2BFDD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[6];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v5[7];
  v12 = sub_2C1A28();
  (*(*(v12 - 8) + 8))(v4 + v11, v12);
  v13 = v5[8];
  v14 = sub_2C1A68();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v5[10];
  v16 = sub_2C15F8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v4 + v15, 1, v16))
  {
    (*(v17 + 8))(v4 + v15, v16);
  }

  v18 = v5[17];
  v19 = sub_2BEF78();
  (*(*(v19 - 8) + 8))(v4 + v18, v19);

  v20 = v5[19];
  v21 = sub_2C4BB8();
  (*(*(v21 - 8) + 8))(v4 + v20, v21);

  if (*(v4 + v5[25] + 8))
  {
  }

  sub_9E94C(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v22 = v1[8];
  sub_6620C(&qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_2BF0B8();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  else
  {
  }

  v24 = v3 + v1[9];
  if (*(v24 + 40))
  {
    if (*(v24 + 24))
    {
      sub_68CD0(v24);
    }
  }

  else
  {
  }

  v25 = v1[10];
  v26 = sub_2BE808();
  (*(*(v26 - 8) + 8))(v3 + v25, v26);
  v27 = v3 + v1[11];
  if (*(v27 + 40))
  {
    sub_68CD0(v27);
  }

  else
  {
  }

  return _swift_deallocObject(v31, ((((v29 + v30 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2305E0(uint64_t a1)
{
  v3 = *(type metadata accessor for ListShelfView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22DCA0(a1, v1 + v4, v6, v7);
}

unint64_t sub_230688()
{
  result = qword_3C75C8;
  if (!qword_3C75C8)
  {
    sub_718D4(&qword_3C75C0);
    sub_72B74(&qword_3C75D0, &qword_3C75D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C75C8);
  }

  return result;
}

uint64_t sub_230740()
{
  v1 = type metadata accessor for ListShelfView();
  v2 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v30 = (v2 + 16) & ~v2;
  v31 = v0;
  v3 = v0 + v30;

  v4 = v0 + v30 + *(sub_6620C(&qword_3C0C50) + 32);

  v5 = type metadata accessor for Page();
  v6 = v5[5];
  v7 = sub_2BFDD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v10 = v5[6];
  if (!v9(v4 + v10, 1, v7))
  {
    (*(v8 + 8))(v4 + v10, v7);
  }

  v11 = v5[7];
  v12 = sub_2C1A28();
  (*(*(v12 - 8) + 8))(v4 + v11, v12);
  v13 = v5[8];
  v14 = sub_2C1A68();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v5[10];
  v16 = sub_2C15F8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v4 + v15, 1, v16))
  {
    (*(v17 + 8))(v4 + v15, v16);
  }

  v18 = v5[17];
  v19 = sub_2BEF78();
  (*(*(v19 - 8) + 8))(v4 + v18, v19);

  v20 = v5[19];
  v21 = sub_2C4BB8();
  (*(*(v21 - 8) + 8))(v4 + v20, v21);

  if (*(v4 + v5[25] + 8))
  {
  }

  sub_9E94C(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v22 = v1[8];
  sub_6620C(&qword_3BDD08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_2BF0B8();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  else
  {
  }

  v24 = v3 + v1[9];
  if (*(v24 + 40))
  {
    if (*(v24 + 24))
    {
      sub_68CD0(v24);
    }
  }

  else
  {
  }

  v25 = v1[10];
  v26 = sub_2BE808();
  (*(*(v26 - 8) + 8))(v3 + v25, v26);
  v27 = v3 + v1[11];
  if (*(v27 + 40))
  {
    sub_68CD0(v27);
  }

  else
  {
  }

  return _swift_deallocObject(v31, v30 + v29, v2 | 7);
}

uint64_t sub_230BF8()
{
  type metadata accessor for ListShelfView();

  return sub_22DE18();
}

unint64_t sub_230C58()
{
  result = qword_3C75E8;
  if (!qword_3C75E8)
  {
    sub_718D4(&qword_3C75A0);
    sub_718D4(&qword_3C1BB8);
    sub_718D4(&qword_3C1BC0);
    sub_718D4(&qword_3C1BC8);
    sub_718D4(&qword_3C1A60);
    sub_1239F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C75F0, &qword_3C75E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C75E8);
  }

  return result;
}

uint64_t sub_230E1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_230EDC()
{
  result = qword_3C8580;
  if (!qword_3C8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8580);
  }

  return result;
}

uint64_t sub_230F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v11 = sub_2C30F8();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C2A88();
  v28 = *(v14 - 8);
  v29 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&qword_3C7620);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_2312EC(a1, a4, a5 & 1, &v26 - v19);
  if ((a3 & 1) == 0)
  {

    sub_2C5DD8();
    v22 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(a2, 0);
    (*(v26 + 8))(v13, v27);
    if (v31 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2C2A78();
    v21 = v29;
    goto LABEL_6;
  }

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v31 = _swiftEmptyArrayStorage;
  sub_232644(&qword_3C6CC0, &type metadata accessor for RedactionReasons);
  sub_6620C(&qword_3C6CC8);
  sub_72B74(&qword_3C6CD0, &qword_3C6CC8);
  v21 = v29;
  sub_2C6158();
LABEL_6:
  v23 = sub_718D4(&qword_3C7628);
  v24 = sub_233270();
  v31 = v23;
  v32 = v24;
  swift_getOpaqueTypeConformance2();
  sub_2C4118();
  (*(v28 + 8))(v16, v21);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_2312EC@<X0>(uint64_t a1@<X0>, void *a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v81 = a3;
  v84 = a2;
  v91 = a4;
  v88 = sub_6620C(&qword_3C7628);
  __chkstk_darwin(v88);
  v89 = &v64 - v5;
  v90 = sub_2BE9B8();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&qword_3BF3C8);
  __chkstk_darwin(v7 - 8);
  v85 = &v64 - v8;
  v66 = sub_2C30F8();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2C1FA8();
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2C0E48();
  v75 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2C1348();
  v12 = *(v68 - 8);
  __chkstk_darwin(v68);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2C07B8();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_6620C(&qword_3C25E0);
  __chkstk_darwin(v67);
  v20 = &v64 - v19;
  v71 = sub_6620C(&qword_3C7658);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v22 = &v64 - v21;
  v69 = sub_6620C(&qword_3C7648);
  __chkstk_darwin(v69);
  v24 = &v64 - v23;
  v93 = sub_6620C(&qword_3C7640);
  v77 = *(v93 - 8);
  __chkstk_darwin(v93);
  v74 = &v64 - v25;
  v83 = sub_6620C(&qword_3C7638);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v92 = &v64 - v26;
  v27 = type metadata accessor for ListItemComponentModel();
  v72 = *(v27 + 20);
  (*(v12 + 16))(v14, a1 + v72, v68);
  sub_2C07C8();
  sub_2C46B8();
  sub_2C2AD8();
  (*(v16 + 32))(v20, v18, v15);
  v28 = v76;
  v29 = &v20[*(v67 + 36)];
  v30 = v104;
  v31 = v105;
  *(v29 + 4) = v103;
  *(v29 + 5) = v30;
  *(v29 + 6) = v31;
  v32 = v100;
  *v29 = v99;
  *(v29 + 1) = v32;
  v33 = v102;
  *(v29 + 2) = v101;
  *(v29 + 3) = v33;
  v34 = v75;
  v35 = v73;
  v36 = v80;
  (*(v75 + 104))(v73, enum case for PageMarginType.padding(_:), v80);
  sub_146608();
  sub_2C3C28();
  (*(v34 + 8))(v35, v36);
  sub_69198(v20, &qword_3C25E0);
  (*(v70 + 32))(v24, v22, v71);
  v37 = v69;
  v24[*(v69 + 36)] = 0;
  sub_6620C(&qword_3C7660);
  sub_2C0048();
  *(swift_allocObject() + 16) = xmmword_2F1A80;
  sub_2BFFF8();
  sub_2C0008();
  sub_2C0038();
  sub_2C0018();
  sub_2BFFD8();
  sub_2BFFE8();
  v80 = v27;
  v97 = v27;
  v98 = sub_232644(&qword_3C7668, type metadata accessor for ListItemComponentModel);
  v38 = sub_720C8(v96);
  sub_232E88(a1, v38, type metadata accessor for ListItemComponentModel);
  v39 = sub_233448();
  v40 = v74;
  sub_2C4098();

  sub_69198(v24, &qword_3C7648);
  sub_68CD0(v96);
  v41 = a1;
  v94 = sub_2C12E8();
  v95 = v42;
  sub_2C61A8();
  v43 = v78;
  sub_2C1BF8();
  v94 = v37;
  v95 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = sub_232644(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder);
  v46 = v93;
  sub_2C3BD8();
  v47 = v28;
  (*(v79 + 8))(v43, v28);
  sub_69198(v96, &qword_3BE008);
  (*(v77 + 8))(v40, v46);
  sub_6620C(&qword_3BC020);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2E4110;
  if (v81)
  {
    v49 = v84;
    v50 = v84;
  }

  else
  {
    v51 = v84;

    sub_2C5DD8();
    v52 = sub_2C3718();
    sub_2C0058();

    v53 = v64;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v51, 0);
    (*(v65 + 8))(v53, v66);
    v49 = v96[0];
  }

  v54 = v85;
  if (v49)
  {
    sub_2C1328();
    *(v48 + 56) = sub_2BE968();
    *(v48 + 64) = sub_232644(&qword_3BF460, &type metadata accessor for ContentData);
    *(v48 + 72) = sub_232644(&unk_3C4420, &type metadata accessor for ContentData);
    sub_720C8((v48 + 32));
    v55 = v49;
    sub_2BE928();
  }

  else
  {
    *(v48 + 48) = 0u;
    *(v48 + 64) = 0u;
    *(v48 + 32) = 0u;
  }

  *(v48 + 104) = sub_2BECC8();
  *(v48 + 112) = sub_232644(&qword_3BF440, &type metadata accessor for ContentExposureData);
  *(v48 + 120) = sub_232644(&qword_3BF448, &type metadata accessor for ContentExposureData);
  sub_720C8((v48 + 80));
  sub_2BEC98();
  sub_23353C(v41 + *(v80 + 32), v54);
  v56 = sub_2BEE38();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v54, 1, v56) == 1)
  {
    sub_69198(v54, &qword_3BF3C8);
    *(v48 + 128) = 0u;
    *(v48 + 144) = 0u;
    *(v48 + 160) = 0u;
  }

  else
  {
    *(v48 + 152) = v56;
    *(v48 + 160) = sub_232644(&qword_3BF450, &type metadata accessor for OnDevicePersonalizationPropertyData);
    *(v48 + 168) = sub_232644(&qword_3BF458, &type metadata accessor for OnDevicePersonalizationPropertyData);
    v58 = sub_720C8((v48 + 128));
    (*(v57 + 32))(v58, v54, v56);
  }

  sub_2BED18();
  sub_2C12E8();
  v59 = v86;
  sub_2BE9A8();
  v96[0] = v93;
  v96[1] = v47;
  v96[2] = OpaqueTypeConformance2;
  v97 = v45;
  swift_getOpaqueTypeConformance2();
  sub_232644(&qword_3BF428, &type metadata accessor for ContentExposureEvent);
  v60 = v89;
  v61 = v83;
  v62 = v92;
  sub_2C3D98();
  sub_233270();
  sub_2C3D88();

  sub_69198(v60, &qword_3C7628);
  (*(v87 + 8))(v59, v90);
  return (*(v82 + 8))(v62, v61);
}

uint64_t sub_2322B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_691F8(a1, v13);
  v12[0] = xmmword_2ECB90;
  v3 = type metadata accessor for ContextActionMenuView(0);
  memset(&v12[1], 0, 32);
  a2[3] = v3;
  a2[4] = sub_232644(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
  v4 = sub_720C8(a2);
  *v4 = swift_getKeyPath();
  *(v4 + 40) = 0;
  sub_691F8(v13, v11);
  sub_C04C8(v12, v10);
  sub_CC804(v11, v10, v4 + v3[5]);
  sub_72084(v13, v13[3]);
  v5 = sub_2BF3B8();
  v7 = v6;
  sub_C12F8(v12);
  v8 = (v4 + v3[6]);
  *v8 = v5;
  v8[1] = v7;
  *(v4 + v3[7]) = 0;
  return sub_68CD0(v13);
}

uint64_t sub_232400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_232E88(a1, a2, type metadata accessor for ListItemComponentModel);
  v3 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  v4 = (a2 + *(v3 + 20));
  sub_2C1498();
  sub_232644(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
  *v4 = sub_2C2B48();
  v4[1] = v5;
  v6 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_2324C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_146B38(*v0, *(v0 + 8));
  sub_C9C28(v2, v3);
  sub_230EDC();
  return sub_2BFD18();
}

unint64_t sub_232544()
{
  result = qword_3C7600;
  if (!qword_3C7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7600);
  }

  return result;
}

uint64_t sub_232644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2326C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v37 = a2;
  v2 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  v36 = *(v2 - 8);
  v35 = *(v36 + 64);
  __chkstk_darwin(v2 - 8);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ListItemComponent.ListItemButtonStyle(0);
  __chkstk_darwin(v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2C3708();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BF880);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v33 = sub_6620C(&qword_3C7610);
  v15 = *(v33 - 8);
  v16 = __chkstk_darwin(v33);
  v18 = &v30 - v17;
  (*(v8 + 16))(v10, v31, v7, v16);
  sub_2C43D8();
  v19 = v32;
  sub_232E88(v32, v6 + v4[5], type metadata accessor for ListItemComponentModel);
  *v6 = swift_getKeyPath();
  sub_6620C(&unk_3C8530);
  swift_storeEnumTagMultiPayload();
  v20 = v6 + v4[6];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v6 + v4[7];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = sub_72B74(&qword_3BF888, &qword_3BF880);
  v23 = sub_232644(&qword_3C7618, type metadata accessor for ListItemComponent.ListItemButtonStyle);
  sub_2C3E48();
  sub_232E2C(v6);
  (*(v12 + 8))(v14, v11);
  v24 = v19;
  v25 = v34;
  sub_232E88(v24, v34, type metadata accessor for ListItemComponent._ButtonStyle);
  v26 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v27 = swift_allocObject();
  sub_2331AC(v25, v27 + v26);
  v38 = v11;
  v39 = v4;
  v40 = v22;
  v41 = v23;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_2C4088();

  return (*(v15 + 8))(v18, v28);
}

id sub_232B88(uint64_t a1)
{
  v2 = sub_2C30F8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  v7 = a1 + *(v6 + 24);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if (v8)
    {
      return [objc_allocWithZone(NSItemProvider) init];
    }
  }

  else
  {

    sub_2C5DD8();
    v9 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v8, 0);
    (*(v3 + 8))(v5, v2);
    if (LOBYTE(v15[0]) == 1)
    {
      return [objc_allocWithZone(NSItemProvider) init];
    }
  }

  type metadata accessor for ListItemComponentModel();
  sub_2C1328();
  sub_72084(v15, v15[3]);
  if (sub_2BF908())
  {
    v10 = *(a1 + *(v6 + 20));
    if (!v10)
    {
      sub_2C1498();
      sub_232644(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
      result = sub_2C2B38();
      __break(1u);
      return result;
    }

    v11 = v10;
    v12 = sub_2C1488();

    sub_68CD0(v15);
    if ((v12 & 1) == 0)
    {
      return [objc_allocWithZone(NSItemProvider) init];
    }
  }

  else
  {
    sub_68CD0(v15);
  }

  return ListItemComponentModel.dragProvider.getter();
}

uint64_t sub_232E2C(uint64_t a1)
{
  v2 = type metadata accessor for ListItemComponent.ListItemButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_232EF0()
{
  v1 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_2C5018();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = type metadata accessor for ListItemComponentModel();
  v9 = v8[5];
  v10 = sub_2C1348();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v5 + v8[6];
  if (*(v11 + 24))
  {
    sub_68CD0(v11);
  }

  v12 = v8[7];
  v13 = sub_2C5658();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = v8[8];
  v16 = sub_2BEE38();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  sub_71AF4(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_2331AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemComponent._ButtonStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_233210()
{
  v1 = *(type metadata accessor for ListItemComponent._ButtonStyle(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_232B88(v2);
}

unint64_t sub_233270()
{
  result = qword_3C7630;
  if (!qword_3C7630)
  {
    sub_718D4(&qword_3C7628);
    sub_718D4(&qword_3C7638);
    sub_2BED18();
    sub_718D4(&qword_3C7640);
    sub_2C1FA8();
    sub_718D4(&qword_3C7648);
    sub_233448();
    swift_getOpaqueTypeConformance2();
    sub_232644(&qword_3BF420, &type metadata accessor for GenericGeometryReferenceBuilder);
    swift_getOpaqueTypeConformance2();
    sub_232644(&qword_3BF428, &type metadata accessor for ContentExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7630);
  }

  return result;
}

unint64_t sub_233448()
{
  result = qword_3C7650;
  if (!qword_3C7650)
  {
    sub_718D4(&qword_3C7648);
    sub_718D4(&qword_3C25E0);
    sub_146608();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C25F0, &qword_3C25F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7650);
  }

  return result;
}

uint64_t sub_23353C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BF3C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2335C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for ListItemComponentModel();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2336F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_6620C(&qword_3BC7C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ListItemComponentModel();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_23380C()
{
  sub_AF178();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ListItemComponentModel();
    if (v1 <= 0x3F)
    {
      sub_1F012C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2338BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ListItemComponentModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_233998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ListItemComponentModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_233A50()
{
  type metadata accessor for ListItemComponentModel();
  if (v0 <= 0x3F)
  {
    sub_CEA1C();
    if (v1 <= 0x3F)
    {
      sub_1F012C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_233AEC()
{
  sub_718D4(&qword_3C7610);
  sub_718D4(&qword_3BF880);
  type metadata accessor for ListItemComponent.ListItemButtonStyle(255);
  sub_72B74(&qword_3BF888, &qword_3BF880);
  sub_232644(&qword_3C7618, type metadata accessor for ListItemComponent.ListItemButtonStyle);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_233C10()
{
  sub_718D4(&qword_3C7620);
  sub_718D4(&qword_3C7628);
  sub_233270();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_233CCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = sub_2C33E8();
  v63 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C0D48();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2C30F8();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2C3608();
  v9 = *(v61 - 8);
  __chkstk_darwin(v61);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C77A0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = sub_6620C(&qword_3C77A8);
  v64 = *(v15 - 8);
  v65 = v15;
  __chkstk_darwin(v15);
  v62 = &v53 - v16;
  v60 = sub_6620C(&qword_3C77B0);
  __chkstk_darwin(v60);
  v67 = &v53 - v17;
  sub_2C3618();
  if (sub_2C3628())
  {
    v18 = [objc_opt_self() systemGray4Color];
    v19 = sub_2C4288();
    goto LABEL_8;
  }

  v20 = v1 + *(type metadata accessor for ListItemComponent.ListItemButtonStyle(0) + 28);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
LABEL_5:
      v19 = sub_2C4208();
      goto LABEL_8;
    }
  }

  else
  {

    sub_2C5DD8();
    v54 = v5;
    v22 = sub_2C3718();
    v53 = v6;
    v23 = v22;
    v24 = v57;
    sub_2C0058();

    v25 = v58;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v21, 0);
    v26 = v25;
    v27 = v24;
    v6 = v53;
    v5 = v54;
    (*(v59 + 8))(v26, v27);
    if (v69 != 1)
    {
      goto LABEL_5;
    }
  }

  v28 = v55;
  sub_29A87C(v55);
  v19 = sub_2C0CD8();
  (*(v56 + 8))(v28, v6);
LABEL_8:
  v29 = sub_2C3758();
  (*(v9 + 32))(v14, v11, v61);
  v30 = &v14[*(v12 + 36)];
  *v30 = v19;
  v30[8] = v29;
  sub_2C2B18();
  sub_2344EC();
  sub_232644(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect);
  v31 = v5;
  v32 = v62;
  sub_2C3E88();
  (*(v63 + 8))(v31, v3);
  sub_69198(v14, &qword_3C77A0);
  v33 = type metadata accessor for ListItemComponent.ListItemButtonStyle(0);
  v34 = v2 + *(v33 + 20);
  v35 = *(type metadata accessor for ListItemComponentModel() + 20);
  v36 = v67;
  v37 = v67 + *(v60 + 36);
  v38 = type metadata accessor for SwipeActionsViewModifier(0);
  v39 = v2;
  v40 = *(v38 + 40);
  v41 = sub_2C1348();
  (*(*(v41 - 8) + 16))(v37 + v40, v34 + v35, v41);
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  *(v37 + 16) = swift_getKeyPath();
  *(v37 + 24) = 0;
  *(v37 + 32) = swift_getKeyPath();
  *(v37 + 40) = 0;
  sub_2C1498();
  sub_232644(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
  *(v37 + 48) = sub_2C2B48();
  *(v37 + 56) = v42;
  *(v37 + 64) = swift_getKeyPath();
  *(v37 + 72) = 0;
  v43 = *(v38 + 36);
  *(v37 + v43) = swift_getKeyPath();
  sub_6620C(&qword_3BF850);
  swift_storeEnumTagMultiPayload();
  (*(v64 + 32))(v36, v32, v65);
  v44 = v39 + *(v33 + 24);
  v45 = *v44;
  if (*(v44 + 8) != 1)
  {

    sub_2C5DD8();
    v46 = sub_2C3718();
    sub_2C0058();

    v47 = v58;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v45, 0);
    (*(v59 + 8))(v47, v57);
    LOBYTE(v45) = v68;
  }

  KeyPath = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v45 & 1;
  v50 = v66;
  sub_234604(v67, v66);
  result = sub_6620C(&qword_3C77C0);
  v52 = (v50 + *(result + 36));
  *v52 = KeyPath;
  v52[1] = sub_D0E3C;
  v52[2] = v49;
  return result;
}

unint64_t sub_2344EC()
{
  result = qword_3C77B8;
  if (!qword_3C77B8)
  {
    sub_718D4(&qword_3C77A0);
    sub_232644(&qword_3BF958, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_72B74(&qword_3C7170, &qword_3C7178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C77B8);
  }

  return result;
}

uint64_t sub_234604(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C77B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_234678()
{
  result = qword_3C77C8;
  if (!qword_3C77C8)
  {
    sub_718D4(&qword_3C77C0);
    sub_234730();
    sub_72B74(&qword_3BF8F8, &qword_3BF900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C77C8);
  }

  return result;
}

unint64_t sub_234730()
{
  result = qword_3C77D0;
  if (!qword_3C77D0)
  {
    sub_718D4(&qword_3C77B0);
    sub_718D4(&qword_3C77A0);
    sub_2C33E8();
    sub_2344EC();
    sub_232644(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_232644(&qword_3C77D8, type metadata accessor for SwipeActionsViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C77D0);
  }

  return result;
}

uint64_t sub_234878(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E65746E69;
  }

  else
  {
    v3 = 0x65526E4972616579;
  }

  if (v2)
  {
    v4 = 0xEC00000077656976;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E65746E69;
  }

  else
  {
    v5 = 0x65526E4972616579;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEC00000077656976;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2C65B8();
  }

  return v8 & 1;
}

Swift::Int sub_234924()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_2349AC()
{
  sub_2C5958();
}

Swift::Int sub_234A20()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_234AA4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_389D88;
  v8._object = v3;
  v5 = sub_2C63E8(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_234B04(uint64_t *a1@<X8>)
{
  v2 = 0x65526E4972616579;
  if (*v1)
  {
    v2 = 0x746E65746E69;
  }

  v3 = 0xEC00000077656976;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_234B48()
{
  if (*v0)
  {
    return 0x746E65746E69;
  }

  else
  {
    return 0x65526E4972616579;
  }
}

uint64_t sub_234B88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_389D88;
  v9._object = a2;
  v6 = sub_2C63E8(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_234BEC(uint64_t a1)
{
  v2 = sub_235248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_234C28(uint64_t a1)
{
  v2 = sub_235248();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_234C64()
{
  sub_2C6738();
  sub_2C5958();
  return sub_2C6778();
}

Swift::Int sub_234CB8()
{
  sub_2C6738();
  sub_2C5958();
  return sub_2C6778();
}

uint64_t sub_234CFC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_389DD8;
  v7._object = v3;
  v5 = sub_2C63E8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_234D60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_38A220;
  v8._object = a2;
  v6 = sub_2C63E8(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_234DB8(uint64_t a1)
{
  v2 = sub_235300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_234DF4(uint64_t a1)
{
  v2 = sub_235300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.YearInReviewDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_6620C(&qword_3C77E0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_6620C(&qword_3C77E8);
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_6620C(&qword_3C77F0);
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  sub_72084(a1, a1[3]);
  sub_235248();
  v14 = v37;
  sub_2C67A8();
  if (v14)
  {
    v24 = a1;
  }

  else
  {
    v29 = v7;
    v30 = v8;
    v37 = a1;
    v16 = v32;
    v15 = v33;
    v18 = v34;
    v17 = v35;
    v41 = 0;
    v19 = v13;
    if (sub_2C64D8())
    {
      v41 = 0;
      sub_235300();
      v20 = v10;
      sub_2C63F8();
      v21 = v15;
      v28 = v19;
      v32 = v11;
      sub_23529C();
      v23 = v29;
      v22 = v30;
      sub_2C64A8();
      sub_2C13A8();
      (*(v21 + 8))(v23, v18);
      (*(v31 + 8))(v20, v22);
      v11 = v32;
    }

    else
    {
      v41 = 1;
      sub_23529C();
      sub_2C64A8();
      v28 = v13;
      sub_2C13A8();
      (*(v15 + 8))(v16, v18);
    }

    (*(v36 + 8))(v28, v11);
    v26 = v39;
    *v17 = v38;
    *(v17 + 16) = v26;
    *(v17 + 32) = v40;
    v24 = v37;
  }

  return sub_68CD0(v24);
}

unint64_t sub_235248()
{
  result = qword_3C77F8;
  if (!qword_3C77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C77F8);
  }

  return result;
}

unint64_t sub_23529C()
{
  result = qword_3C7800;
  if (!qword_3C7800)
  {
    sub_718D4(&qword_3C77E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7800);
  }

  return result;
}

unint64_t sub_235300()
{
  result = qword_3C7808;
  if (!qword_3C7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7808);
  }

  return result;
}

unint64_t sub_235358()
{
  result = qword_3C7810;
  if (!qword_3C7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7810);
  }

  return result;
}

unint64_t sub_2353F8()
{
  result = qword_3C7818;
  if (!qword_3C7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7818);
  }

  return result;
}

unint64_t sub_235450()
{
  result = qword_3C7820;
  if (!qword_3C7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7820);
  }

  return result;
}

unint64_t sub_2354A8()
{
  result = qword_3C7828;
  if (!qword_3C7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7828);
  }

  return result;
}

unint64_t sub_235500()
{
  result = qword_3C7830;
  if (!qword_3C7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7830);
  }

  return result;
}

unint64_t sub_235558()
{
  result = qword_3C7838;
  if (!qword_3C7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C7838);
  }

  return result;
}

unint64_t sub_2355B0()
{
  result = qword_3C7840[0];
  if (!qword_3C7840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3C7840);
  }

  return result;
}

uint64_t StoreCatalog.resources.getter()
{
  ContentInfoBuildOptions.rawValue.getter();
}

uint64_t sub_23562C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StoreCatalog();
  *a1 = ContentInfoBuildOptions.rawValue.getter();
}

uint64_t sub_2356B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_235708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t StoreCatalog.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  type metadata accessor for StoreCatalog.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_2C64E8();
  v10 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_72084(a1, a1[3]);
  sub_2C67A8();
  if (!v2)
  {
    v8 = v10;
    v7 = v11;
    sub_2C19C8();
    swift_getWitnessTable();
    sub_2C64A8();
    (*(v8 + 8))(v6, v4);
    *v7 = v12;
  }

  return sub_68CD0(a1);
}

unint64_t sub_235970@<X0>(void *a1@<X8>)
{
  result = static StoreCatalogIntent.kind.getter();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

unint64_t StoreCatalogIntent.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18[0] = a1;
  v4 = sub_2BF4E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_6620C(&unk_3C43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 0x7344496D616461;
  *(inited + 40) = 0xE700000000000000;
  v10 = sub_6620C(&qword_3BCA70);
  *(inited + 48) = v8;
  *(inited + 72) = v10;
  *(inited + 80) = 0x7079547465737361;
  *(inited + 88) = 0xE900000000000065;

  sub_2BFB18();
  v11 = sub_2BF4D8();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v11;
  *(inited + 104) = v13;
  v14 = sub_67AC8(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC220);
  swift_arrayDestroy();
  v18[19] = v14;
  sub_6620C(&qword_3BD860);
  v15 = sub_2C6658();
  v16 = [objc_opt_self() valueWithObject:v15 inContext:v18[0]];
  swift_unknownObjectRelease();
  a2[3] = sub_6620C(&qword_3C13F8);
  result = sub_111BE4();
  a2[4] = result;
  *a2 = v16;
  return result;
}

uint64_t sub_235C48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_235C9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AssetActionImplementation.init(pageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2BEF78();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t AssetActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_2C0638();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for AssetActionImplementation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_2361F8(v3, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = (v13 + *(v9 + 80) + v14) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_2363C8(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  (*(v9 + 32))(v16 + v15, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  sub_6620C(&qword_3BDAB8);

  v17 = sub_2C5738();
  v18 = sub_2C5C58();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2F7410;
  v19[5] = v16;
  v19[6] = v17;

  sub_1CDB58(0, 0, v7, &unk_2E4D80, v19);

  return v17;
}

uint64_t type metadata accessor for AssetActionImplementation()
{
  result = qword_3C7A20;
  if (!qword_3C7A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_2C5C18();
  v4[3] = sub_2C5C08();
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_DD4E8;

  return sub_2365A0(a1, a3, a4);
}

uint64_t sub_2361F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetActionImplementation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23625C()
{
  v1 = *(type metadata accessor for AssetActionImplementation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2C0638();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = sub_2BEF78();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_2363C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetActionImplementation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23642C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AssetActionImplementation() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2C0638() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_88BE0;

  return sub_236120(a1, v1 + v6, v1 + v9, v10);
}

uint64_t sub_2365A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_2BE588();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v4[11] = *(v6 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_2BE3B8();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v4[16] = *(v8 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v9 = sub_2C0638();
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v4[21] = *(v10 + 64);
  v4[22] = swift_task_alloc();
  v11 = *(type metadata accessor for AssetActionImplementation() - 8);
  v4[23] = v11;
  v4[24] = *(v11 + 64);
  v4[25] = swift_task_alloc();
  sub_6620C(&unk_3BDBB0);
  v4[26] = swift_task_alloc();
  v12 = sub_2C0608();
  v4[27] = v12;
  v4[28] = *(v12 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = sub_2C5C18();
  v4[31] = sub_2C5C08();
  v14 = sub_2C5BB8();
  v4[32] = v14;
  v4[33] = v13;

  return _swift_task_switch(sub_236878, v14, v13);
}

uint64_t sub_236878()
{
  v0[34] = sub_2C0628();
  v0[35] = v1;
  v2 = sub_6620C(&qword_3C7A58);
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_236940;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_236940()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_238694;
  }

  else
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_236A5C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_236A5C()
{
  v0[38] = v0[2];
  v1 = sub_2C1498();
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_236B14;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v1, v1);
}

uint64_t sub_236B14()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_238760;
  }

  else
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_236C30;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_236C30()
{
  v244 = v0;
  v1 = v0[3];
  v0[41] = v1;
  if ((sub_2C05B8() & 1) != 0 && (sub_2C1488() & 1) == 0)
  {

    if (qword_3BB758 != -1)
    {
      swift_once();
    }

    v22 = sub_2C00B8();
    sub_57AD8(v22, qword_3C2EB8);

    v23 = sub_2C0098();
    v24 = sub_2C5DE8();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[35];
    if (v25)
    {
      v27 = v0[34];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v243 = v29;
      *v28 = 136315138;
      v30 = sub_5CCF4(v27, v26, &v243);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_0, v23, v24, "Skipping the action for assetID: %s because the book is an explicit book and the restriction is set to CLEAN.", v28, 0xCu);
      sub_68CD0(v29);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v48 = v0[5];
    v49 = enum case for ActionOutcome.performed(_:);
    v44 = sub_2C4C08();
    v45 = *(*(v44 - 8) + 104);
    v46 = v48;
    v47 = v49;
    goto LABEL_21;
  }

  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  sub_2C0618();
  v5 = (*(v2 + 88))(v3, v4);
  if (v5 == enum case for AssetAction.Kind.addTo(_:))
  {
    v6 = v0[38];
    v224 = v0[34];
    v232 = v0[35];
    v7 = v0[28];
    v8 = v0[29];
    v9 = v0[26];
    v10 = v0[27];
    v11 = v0[7];
    v236 = v0[5];

    (*(v7 + 96))(v8, v10);
    v12 = *v8;
    v13 = v8[1];
    v14 = v1;
    v15 = *(v8 + 16);
    LOBYTE(v8) = *(v8 + 17);
    v16 = sub_2C5C58();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);

    swift_unknownObjectRetain();
    v17 = sub_2C5C08();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = &protocol witness table for MainActor;
    *(v18 + 32) = v11;
    *(v18 + 40) = v224;
    *(v18 + 48) = v232;
    *(v18 + 56) = v12;
    *(v18 + 64) = v13;
    *(v18 + 72) = v6;
    *(v18 + 80) = v15;
    *(v18 + 81) = v8;
    sub_249B98(0, 0, v9, &unk_2F7580, v18);

LABEL_17:
    swift_unknownObjectRelease();

    v43 = enum case for ActionOutcome.performed(_:);
    v44 = sub_2C4C08();
    v45 = *(*(v44 - 8) + 104);
    v46 = v236;
LABEL_18:
    v47 = v43;
LABEL_21:
    v45(v46, v47, v44);
LABEL_22:

    v50 = v0[1];

    return v50();
  }

  if (v5 != enum case for AssetAction.Kind.buy(_:))
  {
    if (v5 == enum case for AssetAction.Kind.cancelDownload(_:))
    {
      v31 = v0[38];
      v33 = v0[34];
      v32 = v0[35];
      v34 = v1;
      v36 = v0[28];
      v35 = v0[29];
      v37 = v0[26];
      v38 = v0[27];
      v236 = v0[5];

      (*(v36 + 8))(v35, v38);
      v39 = sub_2C5C58();
      (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
      swift_unknownObjectRetain();
      v40 = sub_2C5C08();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = &protocol witness table for MainActor;
      *(v41 + 32) = v31;
      *(v41 + 40) = v33;
      *(v41 + 48) = v32;
      v42 = &unk_2F7500;
LABEL_15:
      sub_249B98(0, 0, v37, v42, v41);
LABEL_16:

      goto LABEL_17;
    }

    if (v5 == enum case for AssetAction.Kind.download(_:))
    {
      v51 = v0[38];
      v225 = v0[35];
      v218 = v0[34];
      v52 = v0[28];
      v53 = v0[29];
      v237 = v1;
      v54 = v0[26];
      v55 = v0[27];
      v56 = v0[25];
      v195 = v0[24];
      v191 = v56;
      v193 = v0[23];
      v57 = v0[8];
      v189 = v0[7];
      v233 = v0[5];

      (*(v52 + 96))(v53, v55);
      v206 = v53[1];
      v211 = *v53;
      v214 = *(v53 + 16);
      v58 = v53[3];
      v59 = sub_2C5C58();
      (*(*(v59 - 8) + 56))(v54, 1, 1, v59);
      sub_2361F8(v57, v56);
      v203 = v58;

      v60 = v51;
      swift_unknownObjectRetain();
      v61 = sub_2C5C08();
      v62 = (*(v193 + 80) + 40) & ~*(v193 + 80);
      v63 = (v195 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      v66[2] = v61;
      v66[3] = &protocol witness table for MainActor;
      v66[4] = v58;
      sub_2363C8(v191, v66 + v62);
      *(v66 + v63) = v189;
      v67 = (v66 + v64);
      *v67 = v211;
      v67[1] = v206;
      *(v66 + v65) = v60;
      v68 = v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v68 = v218;
      *(v68 + 1) = v225;
      v68[16] = v214;
      sub_1C0888(0, 0, v54, &unk_2F7510, v66);

      swift_unknownObjectRelease();
      v69 = v203;
    }

    else
    {
      if (v5 == enum case for AssetAction.Kind.preview(_:))
      {
        v70 = v0[38];
        v238 = v1;
        v71 = v0[34];
        v72 = v0[35];
        v73 = v0[28];
        v74 = v0[29];
        v75 = v0[26];
        v76 = v0[27];
        v77 = v0[7];
        v233 = v0[5];

        (*(v73 + 96))(v74, v76);
        v78 = *v74;
        v79 = sub_2C5C58();
        (*(*(v79 - 8) + 56))(v75, 1, 1, v79);

        swift_unknownObjectRetain();
        v80 = v78;
        v81 = sub_2C5C08();
        v82 = swift_allocObject();
        v82[2] = v81;
        v82[3] = &protocol witness table for MainActor;
        v82[4] = v77;
        v82[5] = v70;
        v82[6] = v71;
        v82[7] = v72;
        v82[8] = v80;
        sub_249B98(0, 0, v75, &unk_2F7520, v82);

        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      if (v5 == enum case for AssetAction.Kind.removeFrom(_:))
      {
        v83 = v0[38];
        v226 = v0[34];
        v234 = v0[35];
        v84 = v0[28];
        v85 = v0[29];
        v37 = v0[26];
        v86 = v0[27];
        v87 = v0[7];
        v236 = v0[5];

        (*(v84 + 96))(v85, v86);
        v88 = *v85;
        v89 = v85[1];
        v34 = v1;
        v90 = *(v85 + 16);
        LOBYTE(v85) = *(v85 + 17);
        v91 = sub_2C5C58();
        (*(*(v91 - 8) + 56))(v37, 1, 1, v91);

        swift_unknownObjectRetain();
        v92 = sub_2C5C08();
        v41 = swift_allocObject();
        *(v41 + 16) = v92;
        *(v41 + 24) = &protocol witness table for MainActor;
        *(v41 + 32) = v87;
        *(v41 + 40) = v226;
        *(v41 + 48) = v234;
        *(v41 + 56) = v88;
        *(v41 + 64) = v89;
        *(v41 + 72) = v83;
        *(v41 + 80) = v90;
        *(v41 + 81) = v85;
        v42 = &unk_2F7570;
        goto LABEL_15;
      }

      if (v5 == enum case for AssetAction.Kind.sample(_:))
      {
        v204 = v0[34];
        v207 = v0[35];
        v188 = v0[38];
        v93 = v0[28];
        v94 = v0[29];
        v239 = v1;
        v95 = v0[26];
        v96 = v0[27];
        v190 = v95;
        v97 = v0[21];
        v215 = v0[22];
        v98 = v0[20];
        v99 = v0[18];
        v227 = v0[19];
        v235 = v0[17];
        v100 = v0[15];
        v101 = v0[14];
        v219 = v0[7];
        v186 = v0[6];
        v212 = v0[5];

        (*(v93 + 96))(v94, v96);
        v199 = *(v100 + 32);
        v192 = v99;
        v187 = v101;
        v199(v99, v94, v101);
        v102 = sub_2C5C58();
        (*(*(v102 - 8) + 56))(v95, 1, 1, v102);
        (*(v98 + 16))(v215, v186, v227);
        (*(v100 + 16))(v235, v99, v101);

        swift_unknownObjectRetain();
        v103 = sub_2C5C08();
        v104 = (*(v98 + 80) + 48) & ~*(v98 + 80);
        v105 = (v97 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
        v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
        v107 = (*(v100 + 80) + v106 + 8) & ~*(v100 + 80);
        v108 = swift_allocObject();
        *(v108 + 2) = v103;
        *(v108 + 3) = &protocol witness table for MainActor;
        *(v108 + 4) = v204;
        *(v108 + 5) = v207;
        (*(v98 + 32))(&v108[v104], v215, v227);
        *&v108[v105] = v219;
        *&v108[v106] = v188;
        v199(&v108[v107], v235, v187);
        sub_249B98(0, 0, v190, &unk_2F7530, v108);

        swift_unknownObjectRelease();
        (*(v100 + 8))(v192, v187);
        v43 = enum case for ActionOutcome.performed(_:);
        v44 = sub_2C4C08();
        v45 = *(*(v44 - 8) + 104);
        v46 = v212;
        goto LABEL_18;
      }

      if (v5 != enum case for AssetAction.Kind.update(_:))
      {
        if (v5 == enum case for AssetAction.Kind.opinion(_:))
        {
          v126 = v0[28];
          v127 = v0[29];
          v34 = v1;
          v128 = v0[26];
          v129 = v0[27];
          v130 = v0[7];
          v236 = v0[5];

          (*(v126 + 96))(v127, v129);
          LOBYTE(v126) = *v127;
          v131 = sub_2C5C58();
          (*(*(v131 - 8) + 56))(v128, 1, 1, v131);

          v132 = sub_2C5C08();
          v133 = swift_allocObject();
          *(v133 + 16) = v132;
          *(v133 + 24) = &protocol witness table for MainActor;
          *(v133 + 32) = v130;
          *(v133 + 40) = v126;
          sub_1C0888(0, 0, v128, &unk_2F74F0, v133);
          goto LABEL_16;
        }

        if (v5 == enum case for AssetAction.Kind.setFinishedDate(_:))
        {
          v209 = v0[38];
          v229 = v0[35];
          v134 = v0[28];
          v135 = v0[29];
          v136 = v0[26];
          v137 = v0[27];
          v194 = v136;
          v139 = v0[12];
          v138 = v0[13];
          v140 = v0[10];
          v221 = v0[34];
          v141 = v0[9];
          v241 = v1;
          v142 = v0[7];
          v233 = v0[5];

          (*(v134 + 96))(v135, v137);
          v197 = *(v135 + *(sub_6620C(&qword_3C7A68) + 48));
          v201 = *(v140 + 32);
          v205 = v138;
          v201(v138, v135, v141);
          v143 = sub_2C5C58();
          (*(*(v143 - 8) + 56))(v136, 1, 1, v143);
          (*(v140 + 16))(v139, v138, v141);

          swift_unknownObjectRetain();
          v144 = sub_2C5C08();
          v145 = (*(v140 + 80) + 72) & ~*(v140 + 80);
          v146 = swift_allocObject();
          *(v146 + 16) = v144;
          *(v146 + 24) = &protocol witness table for MainActor;
          *(v146 + 32) = v197;
          *(v146 + 40) = v142;
          *(v146 + 48) = v209;
          *(v146 + 56) = v221;
          *(v146 + 64) = v229;
          v201(v146 + v145, v139, v141);
          v147 = &unk_2F74D0;
        }

        else
        {
          if (v5 != enum case for AssetAction.Kind.setFinishedYear(_:))
          {
            if (v5 != enum case for AssetAction.Kind.open(_:))
            {
              v171 = v0[38];
              v172 = v0[35];
              if (v5 != enum case for AssetAction.Kind.unsetFinishedDate(_:))
              {
                v179 = v0[28];
                v180 = v0[29];
                v181 = v0[27];
                v182 = v0[5];

                swift_unknownObjectRelease();

                v183 = enum case for ActionOutcome.unsupported(_:);
                v184 = sub_2C4C08();
                (*(*(v184 - 8) + 104))(v182, v183, v184);
                (*(v179 + 8))(v180, v181);
                goto LABEL_22;
              }

              v173 = v0[34];
              v174 = v0[26];
              v175 = v0[5];

              v176 = sub_2C5C58();
              (*(*(v176 - 8) + 56))(v174, 1, 1, v176);
              swift_unknownObjectRetain();
              v177 = sub_2C5C08();
              v178 = swift_allocObject();
              v178[2] = v177;
              v178[3] = &protocol witness table for MainActor;
              v178[4] = v171;
              v178[5] = v173;
              v178[6] = v172;
              sub_249B98(0, 0, v174, &unk_2F74A0, v178);

              swift_unknownObjectRelease();

              v43 = enum case for ActionOutcome.performed(_:);
              v44 = sub_2C4C08();
              v45 = *(*(v44 - 8) + 104);
              v46 = v175;
              goto LABEL_18;
            }

            v158 = v0[38];
            v231 = v0[35];
            v159 = v0[26];
            v217 = v159;
            v223 = v0[34];
            v161 = v0[21];
            v160 = v0[22];
            v213 = v160;
            v163 = v0[19];
            v162 = v0[20];
            v242 = v1;
            v165 = v0[6];
            v164 = v0[7];
            v233 = v0[5];

            v166 = sub_2C5C58();
            (*(*(v166 - 8) + 56))(v159, 1, 1, v166);
            (*(v162 + 16))(v160, v165, v163);

            swift_unknownObjectRetain();
            v167 = sub_2C5C08();
            v168 = (*(v162 + 80) + 48) & ~*(v162 + 80);
            v169 = (v161 + v168 + 7) & 0xFFFFFFFFFFFFFFF8;
            v170 = swift_allocObject();
            *(v170 + 2) = v167;
            *(v170 + 3) = &protocol witness table for MainActor;
            *(v170 + 4) = v223;
            *(v170 + 5) = v231;
            (*(v162 + 32))(&v170[v168], v213, v163);
            *&v170[v169] = v164;
            *&v170[(v169 + 15) & 0xFFFFFFFFFFFFFFF8] = v158;
            sub_249B98(0, 0, v217, &unk_2F7540, v170);

            swift_unknownObjectRelease();
            goto LABEL_30;
          }

          v210 = v0[38];
          v230 = v0[35];
          v148 = v0[28];
          v149 = v0[29];
          v150 = v0[26];
          v151 = v0[27];
          v194 = v150;
          v153 = v0[12];
          v152 = v0[13];
          v140 = v0[10];
          v222 = v0[34];
          v141 = v0[9];
          v241 = v1;
          v154 = v0[7];
          v233 = v0[5];

          (*(v148 + 96))(v149, v151);
          v198 = *(v149 + *(sub_6620C(&qword_3C7A60) + 48));
          v202 = *(v140 + 32);
          v205 = v152;
          v202(v152, v149, v141);
          v155 = sub_2C5C58();
          (*(*(v155 - 8) + 56))(v150, 1, 1, v155);
          (*(v140 + 16))(v153, v152, v141);

          swift_unknownObjectRetain();
          v156 = sub_2C5C08();
          v157 = (*(v140 + 80) + 72) & ~*(v140 + 80);
          v146 = swift_allocObject();
          *(v146 + 16) = v156;
          *(v146 + 24) = &protocol witness table for MainActor;
          *(v146 + 32) = v198;
          *(v146 + 40) = v154;
          *(v146 + 48) = v210;
          *(v146 + 56) = v222;
          *(v146 + 64) = v230;
          v202(v146 + v157, v153, v141);
          v147 = &unk_2F74B8;
        }

        sub_249B98(0, 0, v194, v147, v146);

        swift_unknownObjectRelease();
        (*(v140 + 8))(v205, v141);
        goto LABEL_31;
      }

      v109 = v0[38];
      v228 = v0[35];
      v220 = v0[34];
      v110 = v0[28];
      v111 = v0[29];
      v240 = v1;
      v112 = v0[26];
      v113 = v0[27];
      v114 = v0[25];
      v208 = v0[24];
      v196 = v114;
      v200 = v0[23];
      v116 = v0[7];
      v115 = v0[8];
      v233 = v0[5];

      (*(v110 + 96))(v111, v113);
      v117 = *v111;
      v118 = sub_2C5C58();
      (*(*(v118 - 8) + 56))(v112, 1, 1, v118);
      sub_2361F8(v115, v114);
      v216 = v117;

      v119 = v109;
      swift_unknownObjectRetain();
      v120 = sub_2C5C08();
      v121 = (*(v200 + 80) + 40) & ~*(v200 + 80);
      v122 = (v208 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
      v124 = swift_allocObject();
      v124[2] = v120;
      v124[3] = &protocol witness table for MainActor;
      v124[4] = v117;
      sub_2363C8(v196, v124 + v121);
      *(v124 + v122) = v116;
      *(v124 + v123) = v119;
      v125 = (v124 + ((v123 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v125 = v220;
      v125[1] = v228;
      sub_1C0888(0, 0, v112, &unk_2F74E0, v124);

      swift_unknownObjectRelease();
      v69 = v216;
    }

LABEL_30:

LABEL_31:
    v43 = enum case for ActionOutcome.performed(_:);
    v44 = sub_2C4C08();
    v45 = *(*(v44 - 8) + 104);
    v46 = v233;
    goto LABEL_18;
  }

  v19 = v0[29];
  (*(v0[28] + 96))(v19, v0[27]);
  v0[42] = *v19;
  v20 = sub_6620C(&qword_3BFEC8);
  v21 = swift_task_alloc();
  v0[43] = v21;
  *v21 = v0;
  v21[1] = sub_2382B0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 4, v20, v20);
}

uint64_t sub_2382B0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {

    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_238838;
  }

  else
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_2383CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_2383CC()
{

  v1 = [*(v0 + 32) figaroPageContext];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_2C58C8();
    v26 = v3;
    v27 = v2;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v28 = *(v0 + 328);
  v25 = *(v0 + 280);
  v23 = *(v0 + 336);
  v24 = *(v0 + 272);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v29 = *(v0 + 40);
  v10 = sub_2C5C58();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_2361F8(v9, v5);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_2363C8(v5, v15 + v11);
  *(v15 + v12) = v23;
  *(v15 + v13) = v8;
  v16 = (v15 + v14);
  *v16 = v27;
  v16[1] = v26;
  v17 = (v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v24;
  v17[1] = v25;

  v18 = v23;
  sub_23CD34(0, 0, v4, &unk_2F7560, v15);

  swift_unknownObjectRelease();
  sub_69198(v4, &unk_3BDBB0);
  v19 = enum case for ActionOutcome.performed(_:);
  v20 = sub_2C4C08();
  (*(*(v20 - 8) + 104))(v29, v19, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_238694()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238760()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238838()
{
  v1 = *(v0 + 336);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 555) = v15;
  *(v8 + 264) = a8;
  *(v8 + 272) = v14;
  *(v8 + 248) = a6;
  *(v8 + 256) = a7;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v9 = sub_6620C(&qword_3BCB88);
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = sub_2C5C18();
  *(v8 + 312) = sub_2C5C08();
  v10 = sub_2BF028();
  v11 = swift_task_alloc();
  *(v8 + 320) = v11;
  *v11 = v8;
  v11[1] = sub_238A78;

  return BaseObjectGraph.inject<A>(_:)(v8 + 216, v10, v10);
}

uint64_t sub_238A78()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = sub_2C5BB8();
  if (v0)
  {
    v5 = sub_239FE0;
  }

  else
  {
    *(v2 + 336) = v3;
    *(v2 + 344) = v4;
    v5 = sub_238BDC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_238BDC()
{
  v1 = *(v0 + 264);
  v14 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  *(v0 + 352) = v5;
  v6 = type metadata accessor for AssetActionModifyRequest();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BSUIAssetActionModifyRequest_storeID];
  *v8 = v4;
  *(v8 + 1) = v2;
  v9 = &v7[OBJC_IVAR___BSUIAssetActionModifyRequest_collectionID];
  *v9 = v3;
  *(v9 + 1) = v1;
  *&v7[OBJC_IVAR___BSUIAssetActionModifyRequest_tracker] = v5;
  *(v0 + 200) = v7;
  *(v0 + 208) = v6;
  v10 = v5;

  v11 = objc_msgSendSuper2((v0 + 200), "init");
  *(v0 + 360) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_238DAC;
  v12 = swift_continuation_init();
  *(v0 + 136) = sub_6620C(&qword_3C7A70);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A434;
  *(v0 + 104) = &unk_393368;
  *(v0 + 112) = v12;
  [v14 performAddRequest:v11 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_238DAC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);
  if (v2)
  {
    v5 = sub_23A200;
  }

  else
  {
    v5 = sub_238EDC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_238EDC()
{
  v19 = v0;
  v1 = *(v0 + 224);
  *(v0 + 376) = v1;
  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C2EB8);

  v3 = sub_2C0098();
  v4 = sub_2C5DE8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_5CCF4(v6, v5, &v18);
    _os_log_impl(&dword_0, v3, v4, "Add to collection %s completed, success", v7, 0xCu);
    sub_68CD0(v8);
  }

  if (*(v0 + 555) == 1)
  {
    v9 = *(v0 + 352);
    *(v0 + 384) = sub_66278(0, &qword_3C7A78);
    v10 = &v1[OBJC_IVAR___BSUIAssetActionModifyResponse_assetID];
    *(v0 + 392) = *&v1[OBJC_IVAR___BSUIAssetActionModifyResponse_assetID];
    *(v0 + 400) = *(v10 + 1);
    *(v0 + 408) = *&v1[OBJC_IVAR___BSUIAssetActionModifyResponse_assetContentType];
    v11 = &v1[OBJC_IVAR___BSUIAssetActionModifyResponse_collectionTitle];
    *(v0 + 416) = *&v1[OBJC_IVAR___BSUIAssetActionModifyResponse_collectionTitle];
    *(v0 + 424) = *(v11 + 1);

    *(v0 + 432) = sub_6864C(_swiftEmptyArrayStorage);
    v12 = v9;
    *(v0 + 440) = sub_2C5C08();
    v14 = sub_2C5BB8();
    *(v0 + 448) = v14;
    *(v0 + 456) = v13;

    return _swift_task_switch(sub_239194, v14, v13);
  }

  else
  {
    v15 = *(v0 + 360);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_239194()
{
  v1 = v0[50];
  v2 = v0[49];
  v3 = v0[44];
  v4 = v0[29];
  sub_6620C(&qword_3C7A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = sub_2C5CF8();
  v0[58] = sub_68788(inited);
  swift_setDeallocating();
  sub_69198(inited + 32, &qword_3C7A88);
  v6 = swift_task_alloc();
  v0[59] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v0[60] = sub_2C5C08();
  v8 = sub_2C5BB8();
  v0[61] = v8;
  v0[62] = v7;

  return _swift_task_switch(sub_2392C8, v8, v7);
}

uint64_t sub_2392C8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  if (sub_2C58C8() == v2 && v3 == v1)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2C65B8();
  }

  v6 = *(v0 + 556);

  v7 = objc_opt_self();
  sub_66278(0, &qword_3BC790);
  isa = sub_2C57C8().super.isa;

  v9 = sub_2C5888();
  v10 = [v7 _noticeMessageForAddingAssets:isa toCollectionNamed:v9 isAddingToWantToRead:v5 & 1 useNonSpecificDeterminerInMessage:v6];

  if (v10)
  {
    v11 = sub_2C58C8();
    v13 = v12;

    *(v0 + 504) = v11;
    *(v0 + 512) = v13;
    if (v5)
    {
      if (qword_3BB730 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 288);
      v14 = *(v0 + 296);
      v16 = *(v0 + 280);
      v17 = sub_57AD8(v16, qword_3BF980);
      v18 = *(v15 + 16);
      v18(v14, v17, v16);
      sub_2BF448();
      v19 = *(v15 + 8);
      v19(v14, v16);
      if (*(v0 + 553) == 1)
      {
        if (qword_3BB728 != -1)
        {
          swift_once();
        }

        v20 = *(v0 + 296);
        v21 = *(v0 + 280);
        v22 = sub_57AD8(v21, qword_3BF968);
        v18(v20, v22, v21);
        sub_2BF448();
        v19(v20, v21);
        v23 = *(v0 + 554);
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      v23 = 0;
    }

    *(v0 + 557) = v23;
    v26 = swift_task_alloc();
    *(v0 + 520) = v26;
    *v26 = v0;
    v26[1] = sub_239610;

    return sub_2A23F4(v5 & 1);
  }

  else
  {

    v24 = *(v0 + 448);
    v25 = *(v0 + 456);

    return _swift_task_switch(sub_239D8C, v24, v25);
  }
}

uint64_t sub_239610(char a1)
{
  v2 = *v1;
  *(*v1 + 558) = a1;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);

  return _swift_task_switch(sub_239738, v4, v3);
}

uint64_t sub_239738()
{
  if (*(v0 + 557) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 528) = v1;
    *v1 = v0;
    v1[1] = sub_2398E4;
    v2 = *(v0 + 512);
    v3 = *(v0 + 432);
    v4 = *(v0 + 504);
    v5 = 1;
LABEL_5:

    return sub_2A2804(v4, v2, v5, v3);
  }

  if (*(v0 + 558) == 2)
  {
    v6 = swift_task_alloc();
    *(v0 + 544) = v6;
    *v6 = v0;
    v6[1] = sub_239E80;
    v2 = *(v0 + 512);
    v3 = *(v0 + 432);
    v4 = *(v0 + 504);
    v5 = 0;
    goto LABEL_5;
  }

  v8 = *(v0 + 558);
  v9 = swift_task_alloc();
  *(v0 + 536) = v9;
  *v9 = v0;
  v9[1] = sub_239BDC;
  v10 = *(v0 + 472);
  v11 = *(v0 + 432);

  return sub_2A2CE8(v8 & 1, v11, sub_245A28, v10);
}

uint64_t sub_2398E4()
{
  v1 = *v0;

  v2 = *(v1 + 496);
  v3 = *(v1 + 488);

  return _swift_task_switch(sub_239A28, v3, v2);
}

uint64_t sub_239A28()
{
  if (qword_3BB730 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 558);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = sub_57AD8(v4, qword_3BF980);
  (*(v3 + 16))(v2, v5, v4);
  *(v0 + 552) = 1;
  sub_2BF458();
  (*(v3 + 8))(v2, v4);
  if (v1 == 2)
  {

    v6 = *(v0 + 448);
    v7 = *(v0 + 456);

    return _swift_task_switch(sub_239D8C, v6, v7);
  }

  else
  {
    v8 = *(v0 + 558);
    v9 = swift_task_alloc();
    *(v0 + 536) = v9;
    *v9 = v0;
    v9[1] = sub_239BDC;
    v10 = *(v0 + 472);
    v11 = *(v0 + 432);

    return sub_2A2CE8(v8 & 1, v11, sub_245A28, v10);
  }
}

uint64_t sub_239BDC()
{
  v1 = *v0;

  v2 = *(v1 + 496);
  v3 = *(v1 + 488);

  return _swift_task_switch(sub_239D20, v3, v2);
}

uint64_t sub_239D20()
{

  v1 = *(v0 + 448);
  v2 = *(v0 + 456);

  return _swift_task_switch(sub_239D8C, v1, v2);
}

uint64_t sub_239D8C()
{
  v1 = v0[44];

  v2 = v0[42];
  v3 = v0[43];

  return _swift_task_switch(sub_239DF8, v2, v3);
}

uint64_t sub_239DF8()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_239E80()
{
  v1 = *v0;

  v2 = *(v1 + 496);
  v3 = *(v1 + 488);

  return _swift_task_switch(sub_245F84, v3, v2);
}

uint64_t sub_239FE0()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[32];
    v4 = v0[33];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Add to collection %s failed! error=%@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23A200()
{
  v15 = v0;
  v1 = v0[45];
  v2 = v0[44];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v3 = sub_2C00B8();
  sub_57AD8(v3, qword_3C2EB8);

  swift_errorRetain();
  v4 = sub_2C0098();
  v5 = sub_2C5DC8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[32];
    v6 = v0[33];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_5CCF4(v7, v6, &v14);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v4, v5, "Add to collection %s failed! error=%@", v8, 0x16u);
    sub_69198(v9, &qword_3BFEE0);

    sub_68CD0(v10);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_23A434(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_72084((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_6620C(&unk_3BF5A0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_23A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v14;
  *(v8 + 200) = a8;
  *(v8 + 208) = v13;
  *(v8 + 184) = a6;
  *(v8 + 192) = a7;
  *(v8 + 176) = a5;
  *(v8 + 216) = sub_2C5C18();
  *(v8 + 224) = sub_2C5C08();
  v9 = sub_2BF028();
  v10 = swift_task_alloc();
  *(v8 + 232) = v10;
  *v10 = v8;
  v10[1] = sub_23A5FC;

  return BaseObjectGraph.inject<A>(_:)(v8 + 160, v9, v9);
}

uint64_t sub_23A5FC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = sub_2C5BB8();
  if (v0)
  {
    v5 = sub_23AD38;
  }

  else
  {
    *(v2 + 248) = v3;
    *(v2 + 256) = v4;
    v5 = sub_23A760;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_23A760()
{
  super_class = v0[12].super_class;
  receiver = v0[13].receiver;
  v2 = v0[11].super_class;
  v3 = v0[12].receiver;
  v4 = v0[11].receiver;
  v5 = v0[10].receiver;
  v0[16].super_class = v5;
  v6 = type metadata accessor for AssetActionModifyRequest();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BSUIAssetActionModifyRequest_storeID];
  *v8 = v4;
  *(v8 + 1) = v2;
  v9 = &v7[OBJC_IVAR___BSUIAssetActionModifyRequest_collectionID];
  *v9 = v3;
  *(v9 + 1) = super_class;
  *&v7[OBJC_IVAR___BSUIAssetActionModifyRequest_tracker] = v5;
  v0[9].receiver = v7;
  v0[9].super_class = v6;
  v10 = v5;

  v11 = objc_msgSendSuper2(v0 + 9, "init");
  v0[17].receiver = v11;
  v0[1].receiver = v0;
  v0[3].super_class = &v0[10].super_class;
  v0[1].super_class = sub_23A930;
  v12 = swift_continuation_init();
  v0[8].super_class = sub_6620C(&qword_3C7A70);
  v0[5].receiver = _NSConcreteStackBlock;
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_23A434;
  v0[6].super_class = &unk_393390;
  v0[7].receiver = v12;
  [receiver performRemoveRequest:v11 completionHandler:&v0[5]];

  return _swift_continuation_await(&v0[1]);
}

uint64_t sub_23A930()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = sub_23AF50;
  }

  else
  {
    v5 = sub_23AA60;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_23AA60()
{
  v20 = v0;

  v1 = *(v0 + 168);
  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v2 = sub_2C00B8();
  sub_57AD8(v2, qword_3C2EB8);

  v3 = sub_2C0098();
  v4 = sub_2C5DE8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_5CCF4(v6, v5, &v19);
    _os_log_impl(&dword_0, v3, v4, "Remove from collection %s completed, success", v7, 0xCu);
    sub_68CD0(v8);
  }

  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  if (*(v0 + 288) == 1)
  {
    v18 = *(v0 + 289);
    sub_6864C(_swiftEmptyArrayStorage);
    v11 = objc_opt_self();
    sub_6620C(&qword_3BFDD8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2E9480;
    *(v12 + 32) = sub_2C5CF8();
    sub_66278(0, &qword_3BC790);
    isa = sub_2C5B18().super.isa;

    v14 = sub_2C5888();
    v15 = sub_2C57C8().super.isa;

    [v11 presentNoticeForRemovingBooks:isa fromCollectionNamed:v14 options:v15 useNonSpecificDeterminerInMessage:v18];
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23AD38()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Remove from collection %s failed! error=%@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23AF50()
{
  v15 = v0;
  v1 = v0[34];
  v2 = v0[33];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v3 = sub_2C00B8();
  sub_57AD8(v3, qword_3C2EB8);

  swift_errorRetain();
  v4 = sub_2C0098();
  v5 = sub_2C5DC8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[24];
    v6 = v0[25];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_5CCF4(v7, v6, &v14);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v4, v5, "Remove from collection %s failed! error=%@", v8, 0x16u);
    sub_69198(v9, &qword_3BFEE0);

    sub_68CD0(v10);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_23B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v15;
  v8[30] = v16;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[24] = a4;
  v11 = sub_2BF558();
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[34] = v12;
  *v12 = v8;
  v12[1] = sub_23B29C;

  return sub_23C004(a5, a6);
}

uint64_t sub_23B29C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = sub_2BF028();
    v7 = swift_task_alloc();
    *(v2 + 280) = v7;
    *v7 = v3;
    v7[1] = sub_23B430;

    return BaseObjectGraph.inject<A>(_:)(v2 + 184, v6, v6);
  }
}

uint64_t sub_23B430()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_23BE0C;
  }

  else
  {
    v2 = sub_23B544;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23B544()
{
  v44 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[25];
  v5 = v0[23];
  v0[37] = v5;
  (*(v2 + 104))(v1, enum case for BooksFeatureFlag.unifiedProductPage(_:), v3);
  sub_245A30(&qword_3BD678, &type metadata accessor for BooksFeatureFlag);
  sub_1D2FBC();
  v6 = sub_2C5A78();
  (*(v2 + 8))(v1, v3);
  v7 = [v4 buyParams];
  if (v7)
  {
    v8 = v7;
    sub_2C58C8();
  }

  v9 = v0[25];
  v42 = sub_2BF828();
  v10 = [v9 isSG];
  if (v6)
  {
    v11 = v0[25];
    [v11 supportsUnifiedProductPage];
    v12.super.super.isa = sub_2C5BA8().super.super.isa;
    v13 = [v11 editionKind];
    if (v13)
    {
      v14 = v13;
      sub_2C58C8();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v12.super.super.isa = 0;
  }

  v17 = v5;
  v18 = sub_2C5888();

  if (v16)
  {
    v19 = sub_2C5888();
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(BSUIPurchaseParameters) initWithBuyParams:v18 isAudiobook:v42 & 1 hasRacSupport:v10 supportsUnifiedProductPage:v12.super.super.isa editionKind:v19 tracker:v17];
  v0[38] = v20;

  sub_2BEF58();
  if (v21)
  {
    v22 = sub_2C5888();
  }

  else
  {
    v22 = 0;
  }

  v23 = v0[28];
  [v20 setPageId:v22];

  sub_2BEF68();
  v24 = sub_2C5888();

  [v20 setPageType:v24];

  if (v23)
  {
    v25 = sub_2C5888();
  }

  else
  {
    v25 = 0;
  }

  [v20 setPageContext:v25];

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v26 = sub_2C00B8();
  v0[39] = sub_57AD8(v26, qword_3C2EB8);

  v27 = v20;
  v28 = sub_2C0098();
  v29 = sub_2C5DE8();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[29];
    v30 = v0[30];
    v32 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v32 = 136315394;
    *(v32 + 4) = sub_5CCF4(v31, v30, &v43);
    *(v32 + 12) = 2080;
    v33 = [v27 buyParams];
    v34 = sub_2C58C8();
    v36 = v35;

    v37 = sub_5CCF4(v34, v36, &v43);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_0, v28, v29, "%%Purchasing: assetID=%s, buyParams=%s", v32, 0x16u);
    swift_arrayDestroy();
  }

  v38 = objc_opt_self();
  v39 = sub_2C5888();
  v0[40] = v39;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23BAD0;
  v40 = swift_continuation_init();
  v0[17] = sub_6620C(&qword_3C7A90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_23CC44;
  v0[13] = &unk_3933B8;
  v0[14] = v40;
  [v38 purchaseAsset:v39 parameters:v27 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23BAD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_23BE70;
  }

  else
  {
    v2 = sub_23BBE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23BBE0()
{
  v22 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  v4 = v3;

  v5 = sub_2C0098();
  v6 = sub_2C5DE8();

  if (os_log_type_enabled(v5, v6))
  {
    v19 = *(v0 + 296);
    v20 = *(v0 + 304);
    log = v5;
    v7 = v1;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315394;
    *(v0 + 168) = v7;
    *(v0 + 176) = v2;
    sub_6620C(&qword_3BDB00);
    v11 = sub_2C5918();
    v13 = sub_5CCF4(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v4;
    *v9 = v3;
    v14 = v4;
    _os_log_impl(&dword_0, log, v6, "%%Purchase done! downloadID=%s, response=%@", v8, 0x16u);
    sub_69198(v9, &qword_3BFEE0);

    sub_68CD0(v10);
  }

  else
  {
    v15 = *(v0 + 304);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23BE0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BE70()
{
  v1 = v0[40];
  swift_willThrow();

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DE8();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[37];
  v5 = v0[38];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v2, v3, "%%Purchase failed! error=%@", v7, 0xCu);
    sub_69198(v8, &qword_3BFEE0);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23C004(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = sub_2BEB98();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = sub_66278(0, &qword_3BD1C0);
  v5 = swift_task_alloc();
  v2[29] = v5;
  *v5 = v2;
  v5[1] = sub_23C124;

  return BaseObjectGraph.inject<A>(_:)(v2 + 22, v4, v4);
}

uint64_t sub_23C124()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_23C900;
  }

  else
  {
    v2 = sub_23C238;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23C238()
{
  v0[31] = v0[22];
  v1 = sub_2BF028();
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_23C2F0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 23, v1, v1);
}

uint64_t sub_23C2F0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_23C964;
  }

  else
  {
    v2 = sub_23C404;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23C404()
{
  v1 = v0[31];
  v0[34] = v0[23];
  v2 = [v1 currencyCode];
  v0[35] = v2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_23C544;
  v3 = swift_continuation_init();
  v0[17] = sub_6620C(&qword_3C7A98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_244030;
  v0[13] = &unk_3933E0;
  v0[14] = v3;
  [v2 valueWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23C544()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_23C9D0;
  }

  else
  {
    v2 = sub_23C654;
  }

  return _swift_task_switch(v2, 0, 0);
}

unint64_t sub_23C654()
{
  v1 = *(v0 + 160);

  if (v1 >= 2)
  {
    v2 = v1;
    sub_2C58B8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(v0 + 192) version];
  if (v3)
  {
    v4 = v3;
    sub_2C58C8();
  }

  v5 = [*(v0 + 192) priceFormatted];
  if (v5)
  {
    v6 = v5;
    sub_2C58C8();
  }

  v7 = *(v0 + 192);
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  [v7 averageRating];
  sub_2C5CB8();
  result = [v7 ratingCountForAnalytics];
  if (result >> 31)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 248);
    v15 = v2;
    v11 = *(v0 + 216);
    v12 = *(v0 + 224);
    v13 = *(v0 + 208);
    sub_2BEB88();
    sub_245A30(&qword_3C7AA0, &type metadata accessor for ContentStoreData);
    sub_245A30(&qword_3C7AA8, &type metadata accessor for ContentStoreData);
    sub_2BEFE8();

    (*(v11 + 8))(v12, v13);

    v14 = *(v0 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_23C900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C964()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_23C9D0()
{
  v1 = *(v0 + 280);
  swift_willThrow();

  v2 = [*(v0 + 192) version];
  if (v2)
  {
    v3 = v2;
    sub_2C58C8();
  }

  v4 = [*(v0 + 192) priceFormatted];
  if (v4)
  {
    v5 = v4;
    sub_2C58C8();
  }

  v6 = *(v0 + 192);
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  [v6 averageRating];
  sub_2C5CB8();
  result = [v6 ratingCountForAnalytics];
  if (result >> 31)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v0 + 272);
    v13 = *(v0 + 248);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);
    sub_2BEB88();
    sub_245A30(&qword_3C7AA0, &type metadata accessor for ContentStoreData);
    sub_245A30(&qword_3C7AA8, &type metadata accessor for ContentStoreData);
    sub_2BEFE8();

    (*(v10 + 8))(v9, v11);

    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

uint64_t sub_23CC44(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *sub_72084((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_6620C(&unk_3BF5A0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = sub_2C58C8();
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = *(*(v7 + 64) + 40);
    *v13 = v11;
    v13[1] = v12;
    v13[2] = a3;
    v14 = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_23CD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_D4DF4(a3, v22 - v9);
  v11 = sub_2C5C58();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_69198(v10, &unk_3BDBB0);
  }

  else
  {
    sub_2C5C48();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2C5BB8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2C5938() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23CF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = a7;
  v8[32] = a8;
  v8[29] = a5;
  v8[30] = a6;
  v8[28] = a4;
  sub_2C5C18();
  v8[33] = sub_2C5C08();
  v10 = sub_2C5BB8();
  v8[34] = v10;
  v8[35] = v9;

  return _swift_task_switch(sub_23D030, v10, v9);
}

uint64_t sub_23D030()
{
  v1 = v0[29];
  v2 = v0[28];
  sub_6620C(&unk_3C44C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000000307420;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_677B4(inited);
  swift_setDeallocating();
  sub_69198(inited + 32, &qword_3BD8A0);
  v0[26] = v4;
  v5 = sub_2C05A8();
  if (v6)
  {
    sub_1B6334(v5, v6, 0xD000000000000016, 0x8000000000307460);
  }

  v7 = sub_2BF028();
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_23D1AC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 27, v7, v7);
}

uint64_t sub_23D1AC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_23D614;
  }

  else
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_23D2C8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_23D2C8()
{
  v1 = v0[32];
  v2 = v0[27];
  v0[38] = v2;
  v3 = sub_2C5888();
  v0[39] = v3;
  sub_293488(v0[26]);

  isa = sub_2C57C8().super.isa;
  v0[40] = isa;

  v0[2] = v0;
  v0[7] = v0 + 42;
  v0[3] = sub_23D464;
  v5 = swift_continuation_init();
  v0[25] = sub_6620C(&qword_3C7AB0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_23DA5C;
  v0[21] = &unk_393408;
  v0[22] = v5;
  [v1 openAssetID:v3 options:isa tracker:v2 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_23D464()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_23D82C;
  }

  else
  {
    v5 = sub_23D594;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_23D594()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23D614()
{
  v13 = v0;

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3C2EB8);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_5CCF4(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v2, v3, "Failed to open asset %s: %@", v6, 0x16u);
    sub_69198(v7, &qword_3BFEE0);

    sub_68CD0(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23D82C()
{
  v16 = v0;
  v1 = v0[40];
  v3 = v0[38];
  v2 = v0[39];

  swift_willThrow();

  if (qword_3BB758 != -1)
  {
    swift_once();
  }

  v4 = sub_2C00B8();
  sub_57AD8(v4, qword_3C2EB8);

  swift_errorRetain();
  v5 = sub_2C0098();
  v6 = sub_2C5DC8();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[28];
    v7 = v0[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_5CCF4(v8, v7, &v15);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v5, v6, "Failed to open asset %s: %@", v9, 0x16u);
    sub_69198(v10, &qword_3BFEE0);

    sub_68CD0(v11);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_23DA5C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_72084((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_6620C(&unk_3BF5A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_23DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v13;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a4;
  v8[29] = a5;
  sub_2C5C18();
  v8[34] = sub_2C5C08();
  v10 = sub_2C5BB8();
  v8[35] = v10;
  v8[36] = v9;

  return _swift_task_switch(sub_23DBD0, v10, v9);
}

uint64_t sub_23DBD0()
{
  v1 = v0[29];
  v2 = v0[28];
  sub_6620C(&unk_3C44C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000000307420;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v4 = sub_677B4(inited);
  swift_setDeallocating();
  sub_69198(inited + 32, &qword_3BD8A0);
  v0[26] = v4;
  v5 = sub_2C05A8();
  if (v6)
  {
    sub_1B6334(v5, v6, 0xD000000000000016, 0x8000000000307460);
  }

  v7 = sub_2BF028();
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_23DD4C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 27, v7, v7);
}

uint64_t sub_23DD4C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_23E1D0;
  }

  else
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_23DE68;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_23DE68()
{
  v1 = v0[32];
  v2 = v0[27];
  v0[39] = v2;
  v3 = sub_2C5888();
  v0[40] = v3;
  sub_2BE388(v4);
  v6 = v5;
  v0[41] = v5;
  sub_293488(v0[26]);

  isa = sub_2C57C8().super.isa;
  v0[42] = isa;

  v0[2] = v0;
  v0[7] = v0 + 44;
  v0[3] = sub_23E01C;
  v8 = swift_continuation_init();
  v0[25] = sub_6620C(&qword_3C7AB0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_23DA5C;
  v0[21] = &unk_393430;
  v0[22] = v8;
  [v1 sampleAssetID:v3 url:v6 options:isa tracker:v2 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}