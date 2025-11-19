uint64_t sub_2776CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C2AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_277760@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v1 = sub_2C2A58();
  v2 = *(v1 - 8);
  v66 = v1;
  v67 = v2;
  __chkstk_darwin(v1);
  v64 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6620C(&qword_3C8EB8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - v6;
  v8 = sub_6620C(&qword_3C8F70);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v60 = sub_6620C(&qword_3C8F78);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v54 - v11;
  v62 = sub_6620C(&qword_3C8F80);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v54 - v12;
  v65 = sub_6620C(&qword_3C8F88) - 8;
  __chkstk_darwin(v65);
  v58 = &v54 - v13;
  sub_2C45C8();
  swift_getKeyPath();
  sub_2C45E8();

  v14 = *(v5 + 8);
  v54 = v5 + 8;
  v55 = v14;
  v14(v7, v4);
  v15 = v74;
  v16 = v75;
  *(v10 + 3) = swift_getKeyPath();
  v10[32] = 0;
  *v10 = v15;
  v10[16] = v16;
  v17 = v8[19];

  sub_27883C(&v10[v17]);
  sub_2780D0(&v10[v8[18]]);
  sub_279364(&v10[v8[20]]);

  v18 = sub_72B74(&qword_3C8F90, &qword_3C8F70);
  v19 = v56;
  sub_2C3D28();
  sub_69198(v10, &qword_3C8F70);
  swift_getKeyPath();
  v57 = v4;
  sub_2C45C8();
  swift_getKeyPath();
  sub_2C45E8();

  v55(v7, v4);
  v71 = v74;
  v72 = v75;
  v69 = v8;
  v70 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v59;
  v22 = v60;
  sub_2C3BA8();
  v23 = v58;

  (*(v61 + 8))(v19, v22);
  v24 = v64;
  sub_2C2A48();
  *&v74 = v22;
  *(&v74 + 1) = &type metadata for Bool;
  *&v75 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27B0B8(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
  v25 = v62;
  v26 = v66;
  sub_2C3E38();
  (*(v67 + 8))(v24, v26);
  (*(v63 + 8))(v21, v25);
  LOBYTE(v22) = sub_2C3748();
  sub_27959C();
  sub_2C24D8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v23 + *(sub_6620C(&qword_3C8F98) + 36);
  *v35 = v22;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  sub_2C45B8();
  v36 = v74;
  swift_getKeyPath();
  *&v74 = v36;
  sub_27B0B8(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  sub_2C46A8();
  sub_2C2708();
  v37 = (v23 + *(v65 + 44));
  v38 = v75;
  *v37 = v74;
  v37[1] = v38;
  v37[2] = v76;
  v39 = sub_2C4708();
  sub_2C45B8();
  v40 = v71;
  swift_getKeyPath();
  *&v71 = v40;
  sub_2BE6F8();

  v41 = OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__assetInfo;
  swift_beginAccess();
  sub_6932C(v40 + v41, &v71, &unk_3C2550);

  v42 = v73;
  if (v73)
  {
    v43 = sub_72084(&v71, v73);
    v44 = *(v42 - 8);
    v45 = __chkstk_darwin(v43);
    v47 = &v54 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v47, v45);
    sub_69198(&v71, &unk_3C2550);
    v48 = sub_2BF3B8();
    v50 = v49;
    (*(v44 + 8))(v47, v42);
  }

  else
  {
    sub_69198(&v71, &unk_3C2550);
    v48 = 0;
    v50 = 0;
  }

  v51 = v68;
  sub_69130(v23, v68, &qword_3C8F88);
  result = sub_6620C(&qword_3C8FA0);
  v53 = (v51 + *(result + 36));
  *v53 = v39;
  v53[1] = v48;
  v53[2] = v50;
  return result;
}

uint64_t sub_2780D0@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_2C5118();
  v48 = *(v1 - 8);
  v49 = v1;
  __chkstk_darwin(v1);
  v47 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2C4BF8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_6620C(&unk_3C43D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_6620C(&qword_3C8FA8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - v9;
  v11 = sub_6620C(&qword_3C8FB0);
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v42 = sub_6620C(&qword_3C8FB8);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v15 = &v39 - v14;
  v16 = sub_6620C(&qword_3C8FC0);
  v45 = *(v16 - 8);
  v46 = v16;
  __chkstk_darwin(v16);
  v40 = &v39 - v17;
  v18 = sub_2C24B8();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_2C4BE8();
  sub_2C55F8();
  *(&v54 + 1) = sub_2C5628();
  v55 = &protocol witness table for Models.FlowBackAction;
  sub_720C8(&v53);
  sub_2C5588();
  sub_2C03E8();
  sub_27B0B8(&qword_3C8FC8, &type metadata accessor for BooksToolbarIconView);
  sub_2BFC28();
  v19 = sub_6620C(&qword_3C62F8);
  v20 = sub_72B74(&qword_3C8FD0, &qword_3C8FA8);
  v21 = sub_72B74(&qword_3C6300, &qword_3C62F8);
  sub_2C4038();
  (*(v8 + 8))(v10, v7);
  v22 = v44;
  v51 = v44;
  *&v53 = v7;
  *(&v53 + 1) = v19;
  *&v54 = v20;
  *(&v54 + 1) = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_27B118();
  sub_2C3E58();
  (*(v41 + 8))(v13, v11);
  v53 = 0u;
  v54 = 0u;
  memset(v52, 0, sizeof(v52));
  v25 = v47;
  sub_2C50B8();
  sub_69198(v52, qword_3C0250);
  sub_69198(&v53, qword_3C0250);
  *&v53 = v11;
  *(&v53 + 1) = &type metadata for CardAuxiliaryNavigationBarView.CloseButtonContextMenu;
  *&v54 = OpaqueTypeConformance2;
  *(&v54 + 1) = v24;
  v26 = v22;
  v27 = v40;
  swift_getOpaqueTypeConformance2();
  v28 = v42;
  sub_2C3B08();
  (*(v48 + 8))(v25, v49);
  (*(v43 + 8))(v15, v28);
  v29 = type metadata accessor for CardAuxiliaryNavigationBarView(0);
  v30 = (v26 + *(v29 + 36));
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v53) = v31;
  *(&v53 + 1) = v32;
  sub_6620C(&qword_3BFC48);
  sub_2C4378();
  if (v52[0])
  {
    v33 = 0;
  }

  else
  {
    v34 = (v26 + *(v29 + 40));
    v35 = *v34;
    v36 = *(v34 + 1);
    LOBYTE(v53) = v35;
    *(&v53 + 1) = v36;
    sub_2C4378();
    v33 = LOBYTE(v52[0]) ^ 1;
  }

  v37 = v50;
  (*(v45 + 32))(v50, v27, v46);
  result = sub_6620C(&qword_3C8FE0);
  *(v37 + *(result + 36)) = v33 & 1;
  return result;
}

uint64_t sub_27883C@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v69 = sub_2C3308();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_6620C(&qword_3BC938);
  __chkstk_darwin(v65);
  v63 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v62 = &v55 - v4;
  v5 = sub_2C29C8();
  v6 = *(v5 - 8);
  v81 = v5;
  v82 = v6;
  __chkstk_darwin(v5);
  v77 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v55 - v9;
  v66 = sub_6620C(&qword_3BC940);
  __chkstk_darwin(v66);
  v64 = &v55 - v10;
  v75 = sub_2C0D48();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2C08E8();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2C0978();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2BFDD8();
  __chkstk_darwin(v17 - 8);
  v80 = sub_6620C(&qword_3C8FE8);
  __chkstk_darwin(v80);
  v79 = &v55 - v18;
  v61 = sub_6620C(&qword_3C8FF0);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v55 - v19;
  v20 = sub_6620C(&qword_3C8FF8);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v58 = &v55 - v22;
  sub_6620C(&qword_3C8EB8);
  sub_2C45B8();
  v23 = v84;
  swift_getKeyPath();
  v83 = v23;
  sub_27B0B8(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  v24 = OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__assetInfo;
  swift_beginAccess();
  sub_6932C(v23 + v24, &v84, &unk_3C2550);

  if (v86)
  {
    v56 = v21;
    v57 = v20;
    sub_693D0(&v84, v87);
    sub_72084(v87, v87[3]);
    sub_2BFA58();
    sub_2BFDC8();

    v25 = v79;
    sub_2BFCC8();
    type metadata accessor for CardAuxiliaryNavigationBarView(0);
    sub_29AD08(v16);
    sub_2C08F8();
    (*(v70 + 8))(v16, v71);
    v26 = sub_2C08D8();
    (*(v72 + 8))(v14, v73);
    KeyPath = swift_getKeyPath();
    v28 = &v25[*(sub_6620C(&qword_3C3E20) + 36)];
    *v28 = KeyPath;
    v28[1] = v26;
    sub_29A87C(v12);
    v29 = sub_2C0CB8();
    (*(v74 + 8))(v12, v75);
    v30 = v81;
    *&v25[*(v80 + 36)] = v29;
    v31 = *(v82 + 104);
    v32 = v76;
    v31(v76, enum case for DynamicTypeSize.xSmall(_:), v30);
    v33 = v77;
    v31(v77, enum case for DynamicTypeSize.xLarge(_:), v30);
    sub_27B0B8(&qword_3BC950, &type metadata accessor for DynamicTypeSize);
    result = sub_2C5868();
    if (result)
    {
      v35 = v63;
      v36 = v62;
      v38 = v81;
      v37 = v82;
      v39 = *(v82 + 32);
      v39(v62, v32, v81);
      v40 = v65;
      v39((v36 + *(v65 + 48)), v33, v38);
      sub_6932C(v36, v35, &qword_3BC938);
      v41 = *(v40 + 48);
      v42 = v64;
      v39(v64, v35, v38);
      v43 = *(v37 + 8);
      v43(v35 + v41, v38);
      sub_69130(v36, v35, &qword_3BC938);
      v44 = *(v40 + 48);
      v45 = v66;
      v39((v42 + *(v66 + 36)), (v35 + v44), v38);
      v43(v35, v38);
      v46 = sub_27F8F8();
      v47 = sub_72B74(&qword_3BC960, &qword_3BC940);
      v48 = v59;
      v49 = v79;
      v50 = v80;
      sub_2C3F48();
      sub_69198(v42, &qword_3BC940);
      sub_69198(v49, &qword_3C8FE8);
      v51 = v67;
      sub_2C32B8();
      *&v84 = v50;
      *(&v84 + 1) = v45;
      v85 = v46;
      v86 = v47;
      swift_getOpaqueTypeConformance2();
      v52 = v58;
      v53 = v61;
      sub_2C3FE8();
      (*(v68 + 8))(v51, v69);
      (*(v60 + 8))(v48, v53);
      v54 = v78;
      sub_69130(v52, v78, &qword_3C8FF8);
      (*(v56 + 56))(v54, 0, 1, v57);
      return sub_68CD0(v87);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_69198(&v84, &unk_3C2550);
    return (*(v21 + 56))(v78, 1, 1, v20);
  }

  return result;
}

uint64_t sub_279364@<X0>(uint64_t a1@<X8>)
{
  sub_6620C(&qword_3C8EB8);
  sub_2C45B8();
  type metadata accessor for CardAuxiliaryNavigationBarView(0);
  sub_6620C(&qword_3BFC48);
  sub_2C4398();
  sub_2C4398();
  type metadata accessor for CardAuxiliaryNavigationBarViewModel();
  sub_27B0B8(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2C45D8();
  v2 = type metadata accessor for CardAuxiliaryNavigationBarView.TrailingItemsView(0);
  v3 = a1 + v2[5];
  *v3 = v11;
  *(v3 + 8) = v12;
  *(v3 + 16) = v13;
  v4 = a1 + v2[6];
  *v4 = v11;
  *(v4 + 8) = v12;
  *(v4 + 16) = v13;
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[8];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + v2[9];
  *v7 = swift_getKeyPath();
  *(v7 + 40) = 0;
  v8 = (a1 + v2[10]);
  sub_2C1498();
  sub_27B0B8(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
  result = sub_2C2B48();
  *v8 = result;
  v8[1] = v10;
  return result;
}

double sub_27959C()
{
  v1 = v0;
  v23 = sub_2C0C68();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C0C98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2C30F8();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1 + *(type metadata accessor for CardAuxiliaryNavigationBarView(0) + 24);
  v13 = *v12;
  if (*(v12 + 8) != 1)
  {

    sub_2C5DD8();
    v20 = v9;
    v15 = sub_2C3718();
    v21 = v1;
    v16 = v15;
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    sub_71AF4(v13, 0);
    (*(v22 + 8))(v11, v20);
    if (v24 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_29AAE0(v8);
    sub_2C0C78();
    (*(v6 + 8))(v8, v5);
    sub_2C0BF8();
    goto LABEL_6;
  }

  if (v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29AAE0(v8);
  sub_2C0C78();
  (*(v6 + 8))(v8, v5);
  sub_2C0C28();
LABEL_6:
  v17 = v14;
  (*(v2 + 8))(v4, v23);
  return v17;
}

uint64_t sub_2798F0@<X0>(uint64_t (**a1)()@<X8>)
{
  sub_6620C(&qword_3C8EB8);
  sub_2C45B8();
  swift_unknownObjectWeakLoadStrong();

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectRelease();
  *a1 = sub_104180;
  a1[1] = v2;
  return result;
}

uint64_t sub_2799A0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CardAuxiliaryNavigationBarViewModel();
  sub_27B0B8(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2C45D8();
  v2 = type metadata accessor for CardAuxiliaryNavigationBarView(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_6620C(&qword_3BD530);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_6620C(&qword_3C0C88);
  swift_storeEnumTagMultiPayload();
  v6 = v2[8];
  *(a1 + v6) = swift_getKeyPath();
  sub_6620C(&unk_3C8530);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v2[9];
  sub_2C4368();
  *v7 = v10;
  *(v7 + 8) = v11;
  v8 = a1 + v2[10];
  result = sub_2C4368();
  *v8 = v10;
  *(v8 + 8) = v11;
  return result;
}

uint64_t sub_279BBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BC7C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_279C8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_6620C(&qword_3BC7C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_279D5C()
{
  type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel();
  if (v0 <= 0x3F)
  {
    sub_27A3C4(319, &qword_3BC850, &type metadata accessor for ColorConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_279E2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3C8EB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_6620C(&qword_3BD588);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_6620C(&qword_3BE400);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = sub_6620C(&qword_3BC7C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_27A01C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3C8EB8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_6620C(&qword_3BD588);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_6620C(&qword_3BE400);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = sub_6620C(&qword_3BC7C0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 8) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_27A1E8()
{
  sub_27A3C4(319, &qword_3C8F28, type metadata accessor for CardAuxiliaryNavigationBarViewModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    sub_27A3C4(319, &qword_3BD600, &type metadata accessor for SizeConstants, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_27FF08(319, &qword_3BC858, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_27A3C4(319, &qword_3BE478, &type metadata accessor for FontConstants, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_27A3C4(319, &qword_3BC850, &type metadata accessor for ColorConstants, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_27FF08(319, &qword_3BFBE8, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_27A3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27A448@<X0>(uint64_t (*a1)(__n128)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v31 = a3;
  v5 = sub_6620C(&qword_3C9140);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v30 = &v29 - v8;
  v9 = sub_6620C(&qword_3C5168);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = a1(v14);
  if (v17)
  {
    v18 = [v17 auxiliaryNavigationBarViewControllerCanCloseAsset];
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  __chkstk_darwin(v19);
  *(&v29 - 32) = v18;
  *(&v29 - 3) = a1;
  *(&v29 - 2) = a2;

  sub_2C43C8();
  if (v18)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    __chkstk_darwin(v20);
    *(&v29 - 2) = a1;
    *(&v29 - 1) = a2;

    sub_2C43C8();
    v21 = v30;
    (*(v10 + 32))(v30, v12, v9);
    v22 = 0;
  }

  else
  {
    v22 = 1;
    v21 = v30;
  }

  (*(v10 + 56))(v21, v22, 1, v9);
  v23 = *(v10 + 16);
  v23(v12, v16, v9);
  v24 = v32;
  sub_6932C(v21, v32, &qword_3C9140);
  v25 = v31;
  v23(v31, v12, v9);
  v26 = sub_6620C(&qword_3C9148);
  sub_6932C(v24, &v25[*(v26 + 48)], &qword_3C9140);
  sub_69198(v21, &qword_3C9140);
  v27 = *(v10 + 8);
  v27(v16, v9);
  sub_69198(v24, &qword_3C9140);
  return (v27)(v12, v9);
}

uint64_t sub_27A858@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  if ((a1 & 1) == 0 && (v4 = a2()) != 0 && (v5 = [v4 stringForReturnToRootBarItem], swift_unknownObjectRelease(), v5))
  {
    v6 = sub_2C58C8();
    v8 = v7;

    v9 = v8;
    result = v6;
  }

  else
  {
    result = sub_1DA078();
  }

  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_27A938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_2C0D48();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C1A88();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_6620C(&qword_3C9028);
  __chkstk_darwin(v42);
  v11 = &v38 - v10;
  v43 = sub_6620C(&qword_3C9030);
  __chkstk_darwin(v43);
  v13 = &v38 - v12;
  v44 = sub_6620C(&qword_3C9038);
  __chkstk_darwin(v44);
  v15 = &v38 - v14;
  v45 = sub_6620C(&qword_3C9040);
  __chkstk_darwin(v45);
  v17 = &v38 - v16;
  v18 = *(a1 + 8);
  if (v18 == 1)
  {
    sub_2C4208();
  }

  else
  {
    type metadata accessor for CardAuxiliaryNavigationBarView.BackgroundViewModifier(0);
    v39 = v7;
    sub_29A87C(v5);
    sub_2C0CD8();
    (*(v40 + 8))(v5, v41);
    sub_2C4248();
    v7 = v39;
  }

  sub_2C47C8();
  sub_2C47D8();
  sub_2C1A78();
  v19 = sub_2C4718();
  (*(v7 + 32))(v11, v9, v6);
  v20 = &v11[*(v42 + 36)];
  *v20 = v19;
  v20[8] = v18;
  v21 = *a1;
  swift_getKeyPath();
  *&v48 = v21;
  sub_27B0B8(&qword_3BFB38, type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel);
  sub_2BE6F8();

  swift_getKeyPath();
  *&v48 = v21;
  sub_2BE6F8();

  v22 = &v13[*(v43 + 36)];
  v23 = *(sub_2C3558() + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = sub_2C31A8();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  sub_2C3438();
  *v22 = v26;
  *(v22 + 1) = v27;
  *(v22 + 2) = v28;
  *(v22 + 3) = v29;
  *&v22[*(sub_6620C(&qword_3C9048) + 36)] = 256;
  sub_69130(v11, v13, &qword_3C9028);
  swift_getKeyPath();
  *&v48 = v21;
  sub_2BE6F8();

  v30 = v21[5];
  sub_69130(v13, v15, &qword_3C9030);
  *&v15[*(v44 + 36)] = v30;
  swift_getKeyPath();
  *&v48 = v21;
  sub_2BE6F8();

  sub_2C46A8();
  sub_2C2708();
  sub_69130(v15, v17, &qword_3C9038);
  v31 = &v17[*(v45 + 36)];
  v32 = v49;
  *v31 = v48;
  *(v31 + 1) = v32;
  *(v31 + 2) = v50;
  swift_getKeyPath();
  v47 = v21;
  sub_2BE6F8();

  v33 = v21[3];
  v34 = v21[4];
  v35 = v46;
  sub_69130(v17, v46, &qword_3C9040);
  result = sub_6620C(&qword_3C9050);
  v37 = (v35 + *(result + 36));
  *v37 = v33;
  v37[1] = v34;
  return result;
}

uint64_t sub_27AFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2C46A8();
  v7 = v6;
  v8 = a2 + *(sub_6620C(&qword_3C9010) + 36);
  sub_27A938(v2, v8);
  v9 = (v8 + *(sub_6620C(&qword_3C9018) + 36));
  *v9 = v5;
  v9[1] = v7;
  v10 = sub_6620C(&qword_3C9020);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_27B0B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27B118()
{
  result = qword_3C8FD8;
  if (!qword_3C8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C8FD8);
  }

  return result;
}

uint64_t sub_27B16C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_27B1A4@<X0>(uint64_t a1@<X8>)
{
  v172 = a1;
  v2 = sub_6620C(&qword_3C34B0);
  __chkstk_darwin(v2 - 8);
  v163 = &v123 - v3;
  v164 = sub_2C4E58();
  v162 = *(v164 - 8);
  __chkstk_darwin(v164);
  v161 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BFEC0);
  __chkstk_darwin(v5 - 8);
  v155 = &v123 - v6;
  v156 = sub_2C21F8();
  v154 = *(v156 - 8);
  __chkstk_darwin(v156);
  v153 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_2C4BB8();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&qword_3C4350);
  __chkstk_darwin(v9 - 8);
  v160 = &v123 - v10;
  v151 = sub_2C42D8();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2BE9E8();
  v138 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2BEA38();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v137 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(&qword_3BDE70);
  __chkstk_darwin(v14 - 8);
  v144 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v146 = &v123 - v17;
  v18 = sub_2BE9B8();
  v19 = *(v18 - 8);
  v177 = v18;
  v178 = v19;
  __chkstk_darwin(v18);
  v145 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  *&v171 = &v123 - v22;
  v127 = sub_2C30F8();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_6620C(&qword_3BF3D8);
  __chkstk_darwin(v24 - 8);
  v129 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v170 = &v123 - v27;
  v167 = sub_2C0C68();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2C0C98();
  v30 = *(v165 - 8);
  __chkstk_darwin(v165);
  v32 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_6620C(&qword_3C9150);
  __chkstk_darwin(v169);
  v34 = &v123 - v33;
  v173 = sub_6620C(&qword_3C9158);
  v128 = *(v173 - 8);
  __chkstk_darwin(v173);
  v168 = &v123 - v35;
  v133 = sub_6620C(&qword_3C9160);
  v130 = *(v133 - 8);
  __chkstk_darwin(v133);
  v174 = &v123 - v36;
  v134 = sub_6620C(&qword_3C9168);
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v123 - v37;
  v143 = sub_6620C(&qword_3C9170);
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v123 - v38;
  v175 = sub_6620C(&qword_3C9178);
  __chkstk_darwin(v175);
  v176 = &v123 - v39;
  v40 = sub_6620C(&qword_3C9180);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v152 = &v123 - v42;
  v148 = sub_6620C(&qword_3C8EB8);
  v43 = v1;
  sub_2C45B8();
  v44 = v181;
  swift_getKeyPath();
  v180 = v44;
  v147 = sub_27B0B8(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  v45 = OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__assetInfo;
  swift_beginAccess();
  sub_6932C(v44 + v45, &v181, &unk_3C2550);

  if (!v182)
  {
    sub_69198(&v181, &unk_3C2550);
    return (*(v41 + 56))(v172, 1, 1, v40);
  }

  v123 = v41;
  v124 = v40;
  sub_693D0(&v181, &v183);
  v46 = type metadata accessor for CardAuxiliaryNavigationBarView.TrailingItemsView(0);
  v47 = v43;
  sub_29AAE0(v32);
  sub_2C0C78();
  (*(v30 + 8))(v32, v165);
  sub_2C0C28();
  v49 = v48;
  (*(v166 + 8))(v29, v167);
  *v34 = sub_2C3178();
  *(v34 + 1) = v49;
  v34[16] = 0;
  v50 = sub_6620C(&qword_3C9188);
  sub_27CD50(&v183, v43, &v34[*(v50 + 44)]);
  sub_72084(&v183, v184);
  sub_2BF3B8();
  sub_29AB08(&v181);
  v51 = sub_72B74(&qword_3C9190, &qword_3C9150);
  v52 = v168;
  v53 = v169;
  v166 = v51;
  sub_2C3CD8();

  sub_68CD0(&v181);
  sub_69198(v34, &qword_3C9150);
  v165 = v46;
  v54 = v43 + *(v46 + 32);
  v55 = *v54;
  v56 = *(v54 + 8);
  v167 = v47;
  if (v56 == 1)
  {
    v57 = v55;
    v58 = v55;
  }

  else
  {

    sub_2C5DD8();
    v60 = sub_2C3718();
    sub_2C0058();

    v61 = v125;
    sub_2C30E8();
    swift_getAtKeyPath();
    sub_9E94C(v55, 0);
    (*(v126 + 8))(v61, v127);
    v58 = v181;
  }

  v62 = v177;
  v63 = v171;
  v64 = v170;
  if (v58)
  {

    sub_691F8(&v183, &v181);
    if (v56)
    {
      v65 = v55;
    }

    else
    {

      sub_2C5DD8();
      v68 = sub_2C3718();
      sub_2C0058();

      v69 = v125;
      sub_2C30E8();
      swift_getAtKeyPath();
      sub_9E94C(v55, 0);
      (*(v126 + 8))(v69, v127);
      v55 = v179;
    }

    if (!v55)
    {
      __break(1u);
      goto LABEL_25;
    }

    v66 = v53;
    sub_2BE928();
    v67 = 0;
  }

  else
  {
    v66 = v53;
    v67 = 1;
  }

  v70 = sub_2BE968();
  v71 = *(v70 - 8);
  (*(v71 + 56))(v64, v67, 1, v70);
  sub_72084(&v183, v184);
  sub_2BF3B8();
  sub_2BE9A8();
  sub_6620C(&qword_3BC020);
  v72 = swift_allocObject();
  v171 = xmmword_2E3F30;
  *(v72 + 16) = xmmword_2E3F30;
  v73 = v129;
  sub_6932C(v64, v129, &qword_3BF3D8);
  if ((*(v71 + 48))(v73, 1, v70) == 1)
  {
    sub_69198(v73, &qword_3BF3D8);
    *(v72 + 32) = 0u;
    *(v72 + 48) = 0u;
    *(v72 + 64) = 0u;
  }

  else
  {
    *(v72 + 56) = v70;
    *(v72 + 64) = sub_27B0B8(&qword_3BF460, &type metadata accessor for ContentData);
    *(v72 + 72) = sub_27B0B8(&unk_3C4420, &type metadata accessor for ContentData);
    v74 = sub_720C8((v72 + 32));
    v62 = v177;
    (*(v71 + 32))(v74, v73, v70);
  }

  *&v181 = v66;
  *(&v181 + 1) = v166;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = v173;
  v77 = v52;
  sub_2C3D88();

  v78 = *(v178 + 8);
  v178 += 8;
  v78(v63, v62);
  sub_69198(v64, &qword_3BF3D8);
  (*(v128 + 8))(v77, v76);
  sub_72084(&v183, v184);
  sub_2BFA58();
  (*(v135 + 104))(v137, enum case for SectionType.unknown(_:), v136);
  (*(v138 + 104))(v139, enum case for SectionData.ComponentContained.unknown(_:), v140);
  v79 = v146;
  sub_2BEA08();
  v80 = sub_2BEA28();
  v81 = *(v80 - 8);
  (*(v81 + 56))(v79, 0, 1, v80);
  sub_72084(&v183, v184);
  sub_2BF3B8();
  v82 = v145;
  sub_2BE9A8();
  v83 = swift_allocObject();
  *(v83 + 16) = v171;
  v84 = v144;
  sub_6932C(v79, v144, &qword_3BDE70);
  if ((*(v81 + 48))(v84, 1, v80) == 1)
  {
    sub_69198(v84, &qword_3BDE70);
    *(v83 + 32) = 0u;
    *(v83 + 48) = 0u;
    *(v83 + 64) = 0u;
  }

  else
  {
    *(v83 + 56) = v80;
    *(v83 + 64) = sub_27B0B8(&unk_3C0030, &type metadata accessor for SectionData);
    *(v83 + 72) = sub_27B0B8(&unk_3C43F0, &type metadata accessor for SectionData);
    v85 = sub_720C8((v83 + 32));
    (*(v81 + 32))(v85, v84, v80);
  }

  *&v181 = v173;
  *(&v181 + 1) = OpaqueTypeConformance2;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v131;
  v88 = v133;
  v89 = v174;
  sub_2C3D88();

  v78(v82, v177);
  sub_69198(v79, &qword_3BDE70);
  (*(v130 + 8))(v89, v88);
  v90 = v150;
  v91 = v149;
  v92 = v151;
  (*(v150 + 104))(v149, enum case for Image.Scale.medium(_:), v151);
  *&v181 = v88;
  *(&v181 + 1) = v86;
  swift_getOpaqueTypeConformance2();
  v93 = v141;
  v94 = v134;
  sub_2C3D48();
  (*(v90 + 8))(v91, v92);
  (*(v132 + 8))(v87, v94);
  sub_72084(&v183, v184);
  if ((sub_2BF908() & 1) == 0)
  {
    v98 = 0;
    goto LABEL_23;
  }

  v95 = *(v167 + *(v165 + 40));
  if (v95)
  {
    v96 = v95;
    v97 = sub_2C1488();

    v98 = v97 ^ 1;
LABEL_23:
    KeyPath = swift_getKeyPath();
    v100 = swift_allocObject();
    *(v100 + 16) = v98 & 1;
    v101 = v176;
    (*(v142 + 32))(v176, v93, v143);
    v102 = &v101[*(v175 + 36)];
    *v102 = KeyPath;
    v102[1] = sub_D0E3C;
    v102[2] = v100;
    sub_72084(&v183, v184);
    sub_2BFA38();
    sub_72084(&v183, v184);
    sub_2BF3B8();
    v103 = v154;
    v104 = v153;
    v105 = v156;
    (*(v154 + 104))(v153, enum case for Metrics.NavigationType.push(_:), v156);
    v106 = sub_2C54D8();
    v107 = v155;
    (*(*(v106 - 8) + 56))(v155, 1, 1, v106);
    v108 = v157;
    sub_2C2108();

    sub_69198(v107, &qword_3BFEC0);
    (*(v103 + 8))(v104, v105);
    sub_2C45B8();
    v109 = v181;
    swift_getKeyPath();
    *&v181 = v109;
    sub_2BE6F8();

    v110 = v160;
    sub_27ED88(v160);

    v111 = v158;
    v112 = v159;
    (*(v158 + 8))(v108, v159);
    (*(v111 + 56))(v110, 0, 1, v112);
    sub_2C45B8();
    v113 = v181;
    swift_getKeyPath();
    *&v181 = v113;
    sub_2BE6F8();

    v114 = v161;
    v115 = v164;
    sub_2C4DB8();

    sub_2C53F8();
    sub_2C53E8();
    v116 = sub_2BFF18();
    v117 = v163;
    (*(*(v116 - 8) + 56))(v163, 1, 1, v116);
    sub_2804D4();
    v118 = v152;
    v119 = v176;
    sub_2C3A78();

    sub_69198(v117, &qword_3C34B0);
    (*(v162 + 8))(v114, v115);
    sub_69198(v110, &qword_3C4350);
    sub_69198(v119, &qword_3C9178);
    v120 = v123;
    v121 = v172;
    v122 = v124;
    (*(v123 + 32))(v172, v118, v124);
    (*(v120 + 56))(v121, 0, 1, v122);
    return sub_68CD0(&v183);
  }

LABEL_25:
  sub_2C1498();
  sub_27B0B8(&qword_3BF720, &type metadata accessor for ProfileRestrictions);
  result = sub_2C2B38();
  __break(1u);
  return result;
}

uint64_t sub_27CD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v116 = a1;
  v143 = a3;
  v142 = sub_2C29E8();
  v139 = *(v142 - 8);
  __chkstk_darwin(v142);
  v138 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CardAuxiliaryNavigationBarView.TrailingItemsView(0);
  v125 = *(v6 - 8);
  v7 = v6 - 8;
  v117 = v6 - 8;
  __chkstk_darwin(v6 - 8);
  v126 = v8;
  v127 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_6620C(&qword_3C91A0);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v106 - v9;
  v136 = sub_6620C(&qword_3C91A8);
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v132 = &v106 - v10;
  v137 = sub_6620C(&qword_3C91B0);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v106 - v11;
  v141 = sub_6620C(&qword_3C91B8);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v152 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v151 = &v106 - v14;
  v146 = sub_2C5118();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_6620C(&qword_3C91C0);
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v106 = &v106 - v16;
  v112 = sub_6620C(&qword_3C91C8);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v106 - v17;
  v124 = sub_6620C(&qword_3C91D0);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v108 = &v106 - v18;
  v19 = sub_6620C(&unk_3C4370);
  __chkstk_darwin(v19 - 8);
  v113 = &v106 - v20;
  v122 = sub_2BE3B8();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v114 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2C0C98();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_6620C(&qword_3C91D8);
  __chkstk_darwin(v23 - 8);
  v150 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v153 = &v106 - v26;
  v27 = sub_6620C(&qword_3C91E0);
  v115 = v27;
  __chkstk_darwin(v27);
  v29 = &v106 - v28;
  v149 = sub_6620C(&qword_3C91E8);
  v128 = *(v149 - 8);
  __chkstk_darwin(v149);
  v148 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v106 - v32;
  sub_691F8(a1, &v157);
  sub_2C1AB8();
  sub_6620C(&qword_3C8EB8);
  sub_2C45B8();
  v34 = v157;
  v35 = a2 + *(v7 + 32);
  v36 = *v35;
  v37 = *(v35 + 8);
  LOBYTE(v35) = *(v35 + 16);
  *&v157 = v36;
  *(&v157 + 1) = v37;
  LOBYTE(v158) = v35;
  sub_6620C(&qword_3C27A8);
  sub_2C44F8();
  v38 = v155;
  v39 = v156;
  v40 = &v29[*(v27 + 36)];
  type metadata accessor for CardAuxiliaryNavigationBarViewModel();
  sub_27B0B8(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  v41 = v34;
  v42 = a2;
  sub_2C45D8();
  BubbleTipViewModifier = type metadata accessor for WantToReadBubbleTipViewModifier(0);
  v44 = &v40[*(BubbleTipViewModifier + 20)];
  *v44 = v38;
  v44[16] = v39;
  v45 = &v40[*(BubbleTipViewModifier + 24)];
  LOBYTE(v155) = 0;
  sub_2C4368();

  v46 = v116;
  v47 = *(&v157 + 1);
  *v45 = v157;
  *(v45 + 1) = v47;
  v154 = v46;
  sub_280714();
  sub_280800();
  v147 = v33;
  sub_2C3E58();
  sub_69198(v29, &qword_3C91E0);
  v48 = v118;
  sub_29AAE0(v118);
  LOBYTE(v7) = sub_2C0C88();
  (*(v119 + 8))(v48, v120);
  if ((v7 & 1) == 0)
  {
    sub_72084(v46, v46[3]);
    v49 = v113;
    sub_2BF968();
    if ((*(v121 + 48))(v49, 1, v122) != 1)
    {
      v53 = v121;
      v54 = v114;
      v55 = v49;
      v56 = v122;
      (*(v121 + 32))(v114, v55, v122);
      sub_6620C(&qword_3BF928);
      v57 = v53;
      v58 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_2E3F30;
      (*(v57 + 16))(v59 + v58, v54, v56);
      *&v157 = v59;
      sub_6620C(&qword_3BF930);
      sub_2C03E8();
      sub_72B74(&qword_3BF940, &qword_3BF930);
      sub_27B0B8(&qword_3C8FC8, &type metadata accessor for BooksToolbarIconView);
      v60 = v106;
      sub_2C4778();
      v61 = sub_6620C(&qword_3C62F8);
      v62 = sub_72B74(&qword_3C9228, &qword_3C91C0);
      v63 = sub_72B74(&qword_3C6300, &qword_3C62F8);
      v64 = v109;
      v65 = v110;
      sub_2C4038();
      (*(v107 + 8))(v60, v65);
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v66 = v144;
      sub_2C50B8();
      sub_69198(&v155, qword_3C0250);
      sub_69198(&v157, qword_3C0250);
      *&v157 = v65;
      *(&v157 + 1) = v61;
      *&v158 = v62;
      *(&v158 + 1) = v63;
      swift_getOpaqueTypeConformance2();
      v67 = v108;
      v68 = v112;
      sub_2C3B08();
      (*(v145 + 8))(v66, v146);
      (*(v111 + 8))(v64, v68);
      (*(v121 + 8))(v114, v122);
      v52 = v123;
      v69 = v124;
      (*(v123 + 32))(v153, v67, v124);
      v51 = v69;
      v50 = 0;
      goto LABEL_6;
    }

    sub_69198(v49, &unk_3C4370);
  }

  v50 = 1;
  v51 = v124;
  v52 = v123;
LABEL_6:
  (*(v52 + 56))(v153, v50, 1, v51);
  sub_72084(v46, v46[3]);
  sub_2BF3B8();
  v70 = v127;
  sub_280F14(v42, v127, type metadata accessor for CardAuxiliaryNavigationBarView.TrailingItemsView);
  v71 = (*(v125 + 80) + 16) & ~*(v125 + 80);
  v72 = swift_allocObject();
  v73 = sub_280F80(v70, v72 + v71, type metadata accessor for CardAuxiliaryNavigationBarView.TrailingItemsView);
  __chkstk_darwin(v73);
  __chkstk_darwin(v74);
  sub_2C03E8();
  type metadata accessor for ContextActionMenuView(0);
  sub_27B0B8(&qword_3C8FC8, &type metadata accessor for BooksToolbarIconView);
  sub_27B0B8(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
  v75 = v129;
  v76 = sub_2C0438();
  __chkstk_darwin(v76);
  v77 = sub_6620C(&qword_3C62F8);
  v78 = sub_72B74(&qword_3C9210, &qword_3C91A0);
  v79 = sub_72B74(&qword_3C6300, &qword_3C62F8);
  v80 = v132;
  v81 = v131;
  sub_2C4038();
  (*(v130 + 8))(v75, v81);
  v82 = v138;
  sub_2C2B08();
  *&v157 = v81;
  *(&v157 + 1) = v77;
  *&v158 = v78;
  *(&v158 + 1) = v79;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = sub_27B0B8(&qword_3C9218, &type metadata accessor for LiftHoverEffect);
  v85 = v134;
  v86 = v136;
  v87 = v142;
  sub_2C3E88();
  (*(v139 + 8))(v82, v87);
  (*(v133 + 8))(v80, v86);
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v88 = v144;
  sub_2C50B8();
  sub_69198(&v155, qword_3C0250);
  sub_69198(&v157, qword_3C0250);
  *&v157 = v86;
  *(&v157 + 1) = v87;
  *&v158 = OpaqueTypeConformance2;
  *(&v158 + 1) = v84;
  swift_getOpaqueTypeConformance2();
  v89 = v151;
  v90 = v137;
  sub_2C3B08();
  (*(v145 + 8))(v88, v146);
  (*(v135 + 8))(v85, v90);
  v91 = v128;
  v92 = *(v128 + 16);
  v93 = v148;
  v94 = v149;
  v92(v148, v147, v149);
  sub_280AB0(v153, v150);
  v95 = v140;
  v96 = *(v140 + 16);
  v97 = v141;
  v96(v152, v89, v141);
  v98 = v143;
  v92(v143, v93, v94);
  v99 = sub_6620C(&qword_3C9220);
  v100 = v150;
  sub_280AB0(v150, &v98[*(v99 + 48)]);
  v101 = v152;
  v96(&v98[*(v99 + 64)], v152, v97);
  v102 = *(v95 + 8);
  v102(v151, v97);
  sub_69198(v153, &qword_3C91D8);
  v103 = *(v91 + 8);
  v104 = v149;
  v103(v147, v149);
  v102(v101, v97);
  sub_69198(v100, &qword_3C91D8);
  return (v103)(v148, v104);
}

uint64_t sub_27E2E8(unsigned int *a1)
{
  v2 = sub_2C06A8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *a1, v3);
  return sub_2C03D8();
}

uint64_t sub_27E3C0@<X0>(unsigned int *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = sub_2BFDD8();
  __chkstk_darwin(v3 - 8);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2BFCB8();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v37 - v8;
  v9 = sub_2C06A8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3C6308);
  v39 = *(v13 - 8);
  v14 = v39;
  v40 = v13;
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v37 - v19;
  v21 = *a1;
  v22 = *(v10 + 104);
  v22(v12, v21, v9, v18);
  v38 = v20;
  sub_2C0698();
  v23 = *(v10 + 8);
  v23(v12, v9);
  (v22)(v12, v21, v9);
  sub_2C0688();
  v23(v12, v9);
  v24 = v46;
  sub_2BFCC8();
  v25 = *(v14 + 16);
  v26 = v20;
  v27 = v40;
  v25(v16, v26, v40);
  v29 = v42;
  v28 = v43;
  v30 = *(v43 + 16);
  v31 = v44;
  v30(v42, v24, v44);
  v32 = v45;
  v25(v45, v16, v27);
  v33 = sub_6620C(&qword_3C6310);
  v30(&v32[*(v33 + 48)], v29, v31);
  v34 = *(v28 + 8);
  v34(v46, v31);
  v35 = *(v39 + 8);
  v35(v38, v27);
  v34(v29, v31);
  return (v35)(v16, v27);
}

uint64_t sub_27E790()
{
  type metadata accessor for CardAuxiliaryNavigationBarView.TrailingItemsView(0);
  sub_6620C(&qword_3C27A8);
  return sub_2C44D8();
}

uint64_t sub_27E804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_691F8(a1, v12);
  v11[0] = xmmword_2E8270;
  memset(&v11[1], 0, 32);
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  sub_691F8(v12, v10);
  sub_C04C8(v11, v9);
  v3 = type metadata accessor for ContextActionMenuView(0);
  sub_CC804(v10, v9, a2 + v3[5]);
  sub_72084(v12, v12[3]);
  v4 = sub_2BF3B8();
  v6 = v5;
  sub_C12F8(v11);
  v7 = (a2 + v3[6]);
  *v7 = v4;
  v7[1] = v6;
  *(a2 + v3[7]) = 0;
  return sub_68CD0(v12);
}

uint64_t sub_27E8EC()
{
  v0 = sub_2C06A8();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for SymbolImage.Kind.ellipsis(_:), v1);
  return sub_2C03D8();
}

uint64_t sub_27E9B4@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v1 = sub_2BFDD8();
  __chkstk_darwin(v1 - 8);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2BFCB8();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v35 - v6;
  v7 = sub_2C06A8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C6308);
  v37 = *(v11 - 8);
  v12 = v37;
  v38 = v11;
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v19 = enum case for SymbolImage.Kind.ellipsis(_:);
  v20 = *(v8 + 104);
  (v20)(v10, enum case for SymbolImage.Kind.ellipsis(_:), v7, v16);
  v36 = v18;
  sub_2C0698();
  v21 = *(v8 + 8);
  v21(v10, v7);
  v20(v10, v19, v7);
  sub_2C0688();
  v21(v10, v7);
  v22 = v44;
  sub_2BFCC8();
  v23 = *(v12 + 16);
  v24 = v18;
  v25 = v38;
  v23(v14, v24, v38);
  v27 = v40;
  v26 = v41;
  v28 = *(v41 + 16);
  v29 = v42;
  v28(v40, v22, v42);
  v30 = v43;
  v23(v43, v14, v25);
  v31 = sub_6620C(&qword_3C6310);
  v28(&v30[*(v31 + 48)], v27, v29);
  v32 = *(v26 + 8);
  v32(v44, v29);
  v33 = *(v37 + 8);
  v33(v36, v25);
  v32(v27, v29);
  return (v33)(v14, v25);
}

uint64_t sub_27ED88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C4BB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6620C(&qword_3BFEC8);
  sub_2C4DB8();
  v8 = [v18[0] figaroPageContext];
  swift_unknownObjectRelease();
  if (!v8)
  {
    return (*(v5 + 16))(a1, v2, v4);
  }

  v9 = sub_2C58C8();
  v11 = v10;

  (*(v5 + 16))(v7, v2, v4);
  v12 = sub_2C4B88();
  if (*v13)
  {
    v14 = sub_2C2238();
    v17[3] = &type metadata for String;
    v17[0] = v9;
    v17[1] = v11;
    sub_1B6088(v17, v14, v15);
  }

  else
  {
  }

  v12(v18, 0);
  return (*(v5 + 32))(a1, v7, v4);
}

uint64_t sub_27EF7C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v54 = a2;
  BubbleTipViewModifier = type metadata accessor for WantToReadBubbleTipViewModifier(0);
  v4 = BubbleTipViewModifier - 8;
  v46 = *(BubbleTipViewModifier - 8);
  __chkstk_darwin(BubbleTipViewModifier);
  v52 = v5;
  v53 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_6620C(&qword_3C92E8);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = v38 - v6;
  v49 = sub_6620C(&qword_3C92F0);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v9 = v38 - v8;
  v10 = sub_6620C(&qword_3C92F8);
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v48 = v38 - v11;
  v12 = v2 + *(v4 + 28);
  v13 = *v12;
  v14 = *(v12 + 8);
  LODWORD(v12) = *(v12 + 16);
  v43 = v14;
  v44 = v13;
  v55 = v2;
  v56 = v13;
  v57 = v14;
  v42 = v12;
  LOBYTE(v58) = v12;
  v41 = sub_6620C(&qword_3C27A8);
  sub_2C44F8();
  v38[1] = v61;
  sub_6620C(&qword_3C8EB8);
  sub_2C45B8();
  v15 = v56;
  swift_getKeyPath();
  v56 = v15;
  sub_27B0B8(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  v16 = sub_6620C(&qword_3C9300);
  v17 = sub_72B74(&qword_3C9308, &qword_3C9300);
  sub_2C3B88();

  v56 = v16;
  v57 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v9;
  v19 = v39;
  sub_2C3B78();
  v20 = v7;
  v21 = v19;
  v22 = v55;
  (*(v40 + 8))(v20, v19);
  v23 = v22;
  sub_2C45B8();
  v24 = v56;
  swift_getKeyPath();
  v56 = v24;
  sub_2BE6F8();

  LOBYTE(v19) = v24[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isParentCardOccluded];

  if ((v19 & 1) != 0 || (sub_2C45B8(), v25 = v56, swift_getKeyPath(), v56 = v25, sub_2BE6F8(), , v26 = *&v25[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__engagementWTRModel], , v25, !v26))
  {
    v27 = 0;
  }

  else
  {

    v27 = 1;
  }

  LOBYTE(v60) = v27;
  v28 = v53;
  sub_280F14(v23, v53, type metadata accessor for WantToReadBubbleTipViewModifier);
  v29 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v30 = swift_allocObject();
  sub_280F80(v28, v30 + v29, type metadata accessor for WantToReadBubbleTipViewModifier);
  v56 = v21;
  v57 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v33 = v48;
  v32 = v49;
  v34 = v45;
  sub_2C40F8();

  (*(v47 + 8))(v34, v32);
  v56 = v44;
  v57 = v43;
  LOBYTE(v58) = v42;
  sub_2C44C8();
  sub_280F14(v55, v28, type metadata accessor for WantToReadBubbleTipViewModifier);
  v35 = swift_allocObject();
  sub_280F80(v28, v35 + v29, type metadata accessor for WantToReadBubbleTipViewModifier);
  v56 = v32;
  v57 = &type metadata for Bool;
  v58 = v31;
  v59 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v36 = v51;
  sub_2C4108();

  return (*(v50 + 8))(v33, v36);
}

uint64_t sub_27F6B8(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for WantToReadBubbleTipViewModifier(0);
    sub_6620C(&qword_3BFC48);
    sub_2C4378();
  }

  type metadata accessor for WantToReadBubbleTipViewModifier(0);
  sub_6620C(&qword_3C27A8);
  return sub_2C44D8();
}

uint64_t sub_27F788()
{
  sub_6620C(&qword_3C8EB8);
  sub_2C45B8();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    type metadata accessor for WantToReadBubbleTipViewModifier(0);
    sub_6620C(&qword_3C27A8);
    sub_2C44C8();
    [Strong setIsBubbleTipPresented:v2];
    swift_unknownObjectRelease();
  }

  type metadata accessor for WantToReadBubbleTipViewModifier(0);
  sub_6620C(&qword_3C27A8);
  result = sub_2C44C8();
  if (v2 == 1)
  {
    sub_6620C(&qword_3BFC48);
    return sub_2C4388();
  }

  return result;
}

unint64_t sub_27F8F8()
{
  result = qword_3C9000;
  if (!qword_3C9000)
  {
    sub_718D4(&qword_3C8FE8);
    sub_27F9B0();
    sub_72B74(&qword_3C6A70, &qword_3C6A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9000);
  }

  return result;
}

unint64_t sub_27F9B0()
{
  result = qword_3C9008;
  if (!qword_3C9008)
  {
    sub_718D4(&qword_3C3E20);
    sub_27B0B8(&qword_3BF950, &type metadata accessor for LocalizedText);
    sub_72B74(&qword_3BCB10, &qword_3BCB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9008);
  }

  return result;
}

uint64_t sub_27FAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C8EB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_6620C(&qword_3BD588);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_27FC38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3C8EB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_6620C(&qword_3BD588);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_27FD78()
{
  sub_27A3C4(319, &qword_3C8F28, type metadata accessor for CardAuxiliaryNavigationBarViewModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    sub_27FF08(319, &unk_3C6120, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_27A3C4(319, &qword_3BD600, &type metadata accessor for SizeConstants, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_CEAF8(319, &qword_3BDD98, &qword_3BDDA0);
        if (v3 <= 0x3F)
        {
          sub_CEAF8(319, &qword_3BDD90, &qword_3BD200);
          if (v4 <= 0x3F)
          {
            sub_CEA1C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_27FF08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_27FF70()
{
  result = qword_3C9100;
  if (!qword_3C9100)
  {
    sub_718D4(&qword_3C8FA0);
    sub_280028();
    sub_72B74(&qword_3C9118, &qword_3C9120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9100);
  }

  return result;
}

unint64_t sub_280028()
{
  result = qword_3C9108;
  if (!qword_3C9108)
  {
    sub_718D4(&qword_3C8F88);
    sub_2800B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9108);
  }

  return result;
}

unint64_t sub_2800B4()
{
  result = qword_3C9110;
  if (!qword_3C9110)
  {
    sub_718D4(&qword_3C8F98);
    sub_718D4(&qword_3C8F80);
    sub_2C2A58();
    sub_718D4(&qword_3C8F78);
    sub_718D4(&qword_3C8F70);
    sub_72B74(&qword_3C8F90, &qword_3C8F70);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27B0B8(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9110);
  }

  return result;
}

unint64_t sub_280290()
{
  result = qword_3C9128;
  if (!qword_3C9128)
  {
    sub_718D4(&qword_3C9010);
    sub_72B74(&qword_3C9130, &qword_3C9020);
    sub_72B74(&qword_3C9138, &qword_3C9018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9128);
  }

  return result;
}

uint64_t sub_2803AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_280408(SEL *a1)
{
  result = (*(v1 + 16))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_280464@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DA078();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_2804D4()
{
  result = qword_3C9198;
  if (!qword_3C9198)
  {
    sub_718D4(&qword_3C9178);
    sub_718D4(&qword_3C9168);
    sub_718D4(&qword_3C9160);
    sub_718D4(&qword_3C9158);
    sub_718D4(&qword_3C9150);
    sub_72B74(&qword_3C9190, &qword_3C9150);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3BF8F8, &qword_3BF900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9198);
  }

  return result;
}

uint64_t sub_2806D4@<X0>(uint64_t a1@<X8>)
{
  sub_691F8(*(v1 + 16), a1);
  result = swift_getKeyPath();
  *(a1 + 40) = result;
  *(a1 + 80) = 0;
  return result;
}

unint64_t sub_280714()
{
  result = qword_3C91F0;
  if (!qword_3C91F0)
  {
    sub_718D4(&qword_3C91E0);
    sub_27B0B8(&qword_3C91F8, &type metadata accessor for WantToReadToolbarButton);
    sub_27B0B8(&qword_3C9200, type metadata accessor for WantToReadBubbleTipViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C91F0);
  }

  return result;
}

unint64_t sub_280800()
{
  result = qword_3C9208;
  if (!qword_3C9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9208);
  }

  return result;
}

uint64_t sub_280854()
{
  v1 = type metadata accessor for CardAuxiliaryNavigationBarView.TrailingItemsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_6620C(&qword_3C8EB8);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[7];
  sub_6620C(&qword_3BD530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2C0C98();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_9E94C(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v9 = v5 + v1[9];
  if (*(v9 + 40))
  {
    sub_68CD0(v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_280A28()
{
  type metadata accessor for CardAuxiliaryNavigationBarView.TrailingItemsView(0);

  return sub_27E790();
}

uint64_t sub_280AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C91D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_280B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C8EB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_280C14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3C8EB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_280CDC()
{
  sub_27A3C4(319, &qword_3C8F28, type metadata accessor for CardAuxiliaryNavigationBarViewModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    sub_27FF08(319, &unk_3C6120, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_27FF08(319, &qword_3BFBE8, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_280E28()
{
  result = qword_3C92D8;
  if (!qword_3C92D8)
  {
    sub_718D4(&qword_3C92E0);
    sub_718D4(&qword_3C9178);
    sub_2804D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C92D8);
  }

  return result;
}

uint64_t sub_280F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_280F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_280FE8(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for WantToReadBubbleTipViewModifier(0);

  return sub_27F6B8(a1, a2);
}

uint64_t sub_281068()
{
  v1 = *(type metadata accessor for WantToReadBubbleTipViewModifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_6620C(&qword_3C8EB8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_281180()
{
  type metadata accessor for WantToReadBubbleTipViewModifier(0);

  return sub_27F788();
}

uint64_t sub_2811E0()
{
  sub_718D4(&qword_3C92F8);
  sub_718D4(&qword_3C92F0);
  sub_718D4(&qword_3C92E8);
  sub_718D4(&qword_3C9300);
  sub_72B74(&qword_3C9308, &qword_3C9300);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for ListItemComponentModel()
{
  result = qword_3C93A0;
  if (!qword_3C93A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListItemComponentModel.id.getter()
{
  type metadata accessor for ListItemComponentModel();
  sub_2C12E8();
  return sub_2C61A8();
}

uint64_t ListItemComponentModel.allowedUTTypes.getter()
{
  sub_6620C(&qword_3C7660);
  sub_2C0048();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2F1A80;
  sub_2BFFF8();
  sub_2C0008();
  sub_2C0038();
  sub_2C0018();
  sub_2BFFD8();
  sub_2BFFE8();
  return v0;
}

id ListItemComponentModel.dragProvider.getter()
{
  v0 = sub_6620C(&unk_3C4370);
  __chkstk_darwin(v0 - 8);
  v2 = v30 - v1;
  v3 = [objc_allocWithZone(BCAssetDragInfo) init];
  type metadata accessor for ListItemComponentModel();
  sub_2C12E8();
  v4 = sub_2C5888();

  [v3 setAssetID:v4];

  sub_2C12D8();
  v5 = sub_2C5888();

  [v3 setAuthor:v5];

  sub_2C12C8();
  v6 = sub_2C5888();

  [v3 setTitle:v6];

  sub_2C1328();
  sub_72084(v33, v34);
  sub_2BF968();
  v7 = sub_2BE3B8();
  v8 = *(v7 - 8);
  v10 = 0;
  if ((*(v8 + 48))(v2, 1, v7) != 1)
  {
    sub_2BE388(v9);
    v10 = v11;
    (*(v8 + 8))(v2, v7);
  }

  sub_68CD0(v33);
  [v3 setStoreURL:v10];

  sub_2C1328();
  sub_72084(v33, v34);
  v12 = sub_2BF3E8();
  if (v12)
  {
    sub_2BFAE8();

    sub_68CD0(v33);
    v12 = sub_2C5888();
  }

  else
  {
    sub_68CD0(v33);
  }

  [v3 setStoreID:v12];

  sub_2C1328();
  sub_72084(v33, v34);
  v13 = sub_2BF938();
  sub_68CD0(v33);
  [v3 setIsSample:v13 & 1];
  sub_2C1328();
  sub_72084(v33, v34);
  v14 = sub_2BF8F8();
  if (!v14)
  {
    goto LABEL_13;
  }

  if (v14 == 1 && (v15 = [v3 storeID]) != 0)
  {

    v16 = [v3 assetID];
    if (!v16)
    {
      goto LABEL_13;
    }

    if ([v3 isSample])
    {
      goto LABEL_13;
    }

    sub_2C1328();
    v17 = v31[4];
    sub_72084(v31, v31[3]);
    v30[1] = v17;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = sub_2C60B8();
    v30[2] = v30;
    v20 = *(v19 - 8);
    __chkstk_darwin(v19);
    v22 = v30 - v21;
    sub_2BF388();
    v23 = *(AssociatedTypeWitness - 8);
    if ((*(v23 + 48))(v22, 1, AssociatedTypeWitness) == 1)
    {
      (*(v20 + 8))(v22, v19);
      sub_68CD0(v31);
LABEL_13:
      v24 = 0;
      goto LABEL_15;
    }

    v32[3] = AssociatedTypeWitness;
    v32[4] = swift_getAssociatedConformanceWitness();
    sub_720C8(v32);
    (*(v23 + 32))();
    v24 = sub_2BF588();
    sub_68CD0(v32);
    sub_68CD0(v31);
  }

  else
  {
    v24 = 1;
  }

LABEL_15:
  sub_68CD0(v33);
  v25 = [objc_allocWithZone(NSItemProvider) init];
  [objc_opt_self() registerRepresentationsFromAssetDragInfo:v3 withProvider:v25 canDragToNewCanvas:v24 & 1];
  result = [v3 assetID];
  if (result)
  {
    v27 = result;
    sub_2C58C8();

    v28 = objc_allocWithZone(sub_2C4888());
    v29 = sub_2C4878();
    [v25 registerObject:v29 visibility:3];

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ListItemComponentModel.listItemViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListItemComponentModel() + 20);
  v4 = sub_2C1348();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListItemComponentModel.init(listItemViewModel:assetInfo:impressionMetrics:onDevicePersonalizationPropertyData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a2;
  v9 = sub_2C4BD8();
  __chkstk_darwin(v9 - 8);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3C0820);
  __chkstk_darwin(v11 - 8);
  v39 = &v34 - v12;
  v13 = sub_2C5018();
  (*(*(v13 - 8) + 56))(a5, 1, 1, v13);
  v14 = type metadata accessor for ListItemComponentModel();
  v15 = a5 + v14[6];
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  v16 = v14[7];
  v38 = v16;
  v36 = sub_2C5658();
  v17 = *(v36 - 8);
  v35 = *(v17 + 56);
  v37 = v17 + 56;
  v35(a5 + v16, 1, 1, v36);
  v18 = v14[8];
  v19 = sub_2BEE38();
  (*(*(v19 - 8) + 56))(a5 + v18, 1, 1, v19);
  v20 = v14[5];
  v21 = sub_2C1348();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v34 = a1;
  v23(a5 + v20, a1, v21);
  sub_2C1288();
  v25 = v43;
  v24 = v44;
  v26 = sub_72084(v42, v43);
  v45[3] = v25;
  v45[4] = *(v24 + 8);
  v27 = sub_720C8(v45);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  sub_A9708(v45, v15, &unk_3BDC90);
  sub_68CD0(v42);
  sub_15734C(a3, a5, &qword_3BDF58);
  sub_15734C(a4, a5 + v18, &qword_3BF3C8);
  sub_6620C(&qword_3C08C8);
  v28 = *(sub_2C5648() - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2E3F30;
  v31 = (v30 + v29);
  *v31 = 0xD00000000000002DLL;
  v31[1] = 0x8000000000304480;
  (*(v28 + 104))();
  sub_2C4BC8();
  v32 = v39;
  sub_2C5638();
  sub_69198(a4, &qword_3BF3C8);
  sub_69198(a3, &qword_3BDF58);
  sub_68CD0(v41);
  (*(v22 + 8))(v34, v21);
  v35(v32, 0, 1, v36);
  return sub_A9708(v32, a5 + v38, &qword_3C0820);
}

uint64_t sub_2824A4(uint64_t a1)
{
  v2 = sub_284538(&qword_3C9408, type metadata accessor for ListItemComponentModel);

  return LibraryAssetStateRequiring.assetIDsToObserveState.getter(a1, v2);
}

Swift::Int sub_28251C()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_2825EC()
{
  sub_2C5958();
}

Swift::Int sub_2826A8()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_282774@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2844EC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_2827A4(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6575676573;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000023;
    v2 = 0x80000000003004E0;
  }

  v4 = 0x80000000003004A0;
  if (*v1)
  {
    v4 = 0x80000000003004C0;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_282830()
{
  v1 = 0x6575676573;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2828B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2844EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2828E0(uint64_t a1)
{
  v2 = sub_283768();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_28291C(uint64_t a1)
{
  v2 = sub_283768();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListItemComponentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_2C4BD8();
  __chkstk_darwin(v3 - 8);
  v78 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3C0820);
  __chkstk_darwin(v5 - 8);
  v76 = &v70 - v6;
  v7 = sub_6620C(&qword_3C9310);
  __chkstk_darwin(v7 - 8);
  v83 = &v70 - v8;
  v9 = sub_6620C(&qword_3BF3C8);
  __chkstk_darwin(v9 - 8);
  v77 = &v70 - v10;
  v11 = sub_6620C(&qword_3C0828);
  __chkstk_darwin(v11 - 8);
  v85 = &v70 - v12;
  v13 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v13 - 8);
  v82 = &v70 - v14;
  v15 = sub_6620C(&qword_3C0830);
  __chkstk_darwin(v15 - 8);
  v86 = &v70 - v16;
  v17 = sub_6620C(&qword_3C0838);
  __chkstk_darwin(v17 - 8);
  v84 = &v70 - v18;
  v90 = sub_2C1638();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_6620C(&qword_3C9318);
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v21 = &v70 - v20;
  v22 = type metadata accessor for ListItemComponentModel();
  __chkstk_darwin(v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2C5018();
  v26 = *(v25 - 8);
  v81 = *(v26 + 56);
  v80 = v26 + 56;
  v81(v24, 1, 1, v25);
  v27 = &v24[v22[6]];
  *(v27 + 4) = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v96 = v27;
  v28 = v22[7];
  v29 = sub_2C5658();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v98 = v28;
  v74 = v30 + 56;
  v75 = v31;
  v31(&v24[v28], 1, 1, v29);
  v93 = v22;
  v32 = v22[8];
  v33 = sub_2BEE38();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v36 = v34 + 56;
  v97 = v32;
  v95 = v24;
  v37 = &v24[v32];
  v38 = v35;
  v35(v37, 1, 1, v33);
  v39 = a1[3];
  v99 = a1;
  sub_72084(a1, v39);
  sub_283768();
  v92 = v21;
  v40 = v94;
  sub_2C67A8();
  if (v40)
  {
    v45 = v95;
    v46 = v96;
    sub_68CD0(v99);
    sub_69198(v45, &qword_3BDF58);
    sub_69198(v46, &unk_3BDC90);
    sub_69198(v45 + v98, &qword_3C0820);
    return sub_69198(v45 + v97, &qword_3BF3C8);
  }

  v41 = v87;
  v94 = v25;
  v70 = v36;
  v71 = v38;
  v72 = v33;
  v73 = v29;
  LOBYTE(v100[0]) = 1;
  sub_284538(&qword_3C3988, &type metadata accessor for CodeListItemViewModel);
  v43 = v89;
  v42 = v90;
  v44 = v88;
  sub_2C64A8();
  v48 = v95;
  sub_2C1628();
  (*(v41 + 8))(v43, v42);
  v49 = v44;
  v50 = sub_6620C(&qword_3C0880);
  v102 = 2;
  sub_2837BC(&qword_3C0888, &qword_3C0880, &unk_2EA260, sub_F2D8C);
  v51 = v86;
  sub_2C6458();
  v52 = v96;
  if ((*(*(v50 - 8) + 48))(v51, 1, v50) == 1)
  {
    v53 = &qword_3C0830;
    v54 = v51;
  }

  else
  {
    v55 = v84;
    sub_6932C(v51, v84, &qword_3C0838);
    sub_69198(v51, &qword_3C0880);
    v56 = sub_2C1398();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) != 1)
    {
      sub_2C1388();
      (*(v57 + 8))(v55, v56);
      goto LABEL_10;
    }

    v53 = &qword_3C0838;
    v54 = v55;
  }

  sub_69198(v54, v53);
  v101 = 0;
  memset(v100, 0, sizeof(v100));
LABEL_10:
  sub_A9708(v100, v52, &unk_3BDC90);
  v58 = sub_6620C(&qword_3BF898);
  LOBYTE(v100[0]) = 0;
  sub_2837BC(&qword_3C08B8, &qword_3BF898, &unk_2EA240, sub_F2FC4);
  v59 = v85;
  sub_2C6458();
  if ((*(*(v58 - 8) + 48))(v59, 1, v58) == 1)
  {
    sub_69198(v59, &qword_3C0828);
    v60 = v82;
    v81(v82, 1, 1, v94);
  }

  else
  {
    v60 = v82;
    sub_6932C(v59, v82, &qword_3BDF58);
    sub_69198(v59, &qword_3BF898);
  }

  sub_A9708(v60, v48, &qword_3BDF58);
  v61 = sub_6620C(&qword_3BF3C0);
  LOBYTE(v100[0]) = 3;
  sub_2837BC(&qword_3C23F0, &qword_3BF3C0, &unk_2ECCC0, sub_13D980);
  v62 = v83;
  sub_2C6458();
  if ((*(*(v61 - 8) + 48))(v62, 1, v61) == 1)
  {
    sub_69198(v62, &qword_3C9310);
    v63 = v77;
    v71(v77, 1, 1, v72);
  }

  else
  {
    v63 = v77;
    sub_6932C(v62, v77, &qword_3BF3C8);
    sub_69198(v62, &qword_3BF3C0);
  }

  v64 = v79;
  sub_A9708(v63, v48 + v97, &qword_3BF3C8);
  sub_6620C(&qword_3C08C8);
  v65 = *(sub_2C5648() - 8);
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_2E3F30;
  v68 = (v67 + v66);
  *v68 = 0xD00000000000002DLL;
  v68[1] = 0x8000000000304480;
  (*(v65 + 104))();
  sub_2C4BC8();
  v69 = v76;
  sub_2C5638();
  (*(v91 + 8))(v92, v49);
  v75(v69, 0, 1, v73);
  sub_A9708(v69, v48 + v98, &qword_3C0820);
  sub_283838(v48, v64);
  sub_68CD0(v99);
  return sub_28389C(v48);
}

unint64_t sub_283768()
{
  result = qword_3C9320;
  if (!qword_3C9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9320);
  }

  return result;
}

uint64_t sub_2837BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_718D4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_283838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28389C(uint64_t a1)
{
  v2 = type metadata accessor for ListItemComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ListItemComponentModel.additionalAppAnalyticsDataForProductPage()()
{
  sub_6620C(&qword_3BC020);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2E3F30;
  *(v0 + 56) = sub_2BECC8();
  *(v0 + 64) = sub_284538(&qword_3BF440, &type metadata accessor for ContentExposureData);
  *(v0 + 72) = sub_284538(&qword_3BF448, &type metadata accessor for ContentExposureData);
  sub_720C8((v0 + 32));
  sub_2BEC98();
  return v0;
}

void ListItemComponentModel.dropExited(info:)()
{
  sub_2BEAD8();
  v0 = sub_2BEAC8();
  sub_6620C(&qword_3BF590);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2E3F30;
  type metadata accessor for ListItemComponentModel();
  *(v1 + 32) = sub_2C12C8();
  *(v1 + 40) = v2;
  sub_2BEAA8();

  sub_6620C(&qword_3C9328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E4110;
  v4 = JSARecordKeyEventType;
  *(inited + 32) = JSARecordKeyEventType;
  v5 = JSARecordEventTypeDragAndDrop;
  type metadata accessor for FigaroEventType(0);
  *(inited + 40) = v5;
  v6 = JSARecordKeyResult;
  *(inited + 64) = v7;
  *(inited + 72) = v6;
  *(inited + 80) = 2037411683;
  *(inited + 88) = 0xE400000000000000;
  v8 = JSARecordKeyItems;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2E3F30;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v8;
  *(v9 + 32) = sub_2C12E8();
  *(v9 + 40) = v14;
  *(inited + 144) = sub_6620C(&qword_3BCA70);
  *(inited + 120) = v9;
  sub_6899C(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BC190);
  swift_arrayDestroy();
  v15 = objc_opt_self();
  type metadata accessor for FigaroKey(0);
  sub_284538(&unk_3C43C0, type metadata accessor for FigaroKey);
  isa = sub_2C57C8().super.isa;

  [v15 recordNativeEvent:isa];
}

uint64_t sub_283E14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6620C(&qword_3BDF58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_2C1348();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[6] + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_6620C(&qword_3C0820);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v18 = sub_6620C(&qword_3BF3C8);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[8];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_284018(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6620C(&qword_3BDF58);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_2C1348();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 24) = a2;
    return result;
  }

  v16 = sub_6620C(&qword_3C0820);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = sub_6620C(&qword_3BF3C8);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_2841FC()
{
  sub_284380(319, &qword_3BE2D8, &type metadata accessor for ImpressionMetrics);
  if (v0 <= 0x3F)
  {
    sub_2C1348();
    if (v1 <= 0x3F)
    {
      sub_28431C();
      if (v2 <= 0x3F)
      {
        sub_284380(319, &qword_3C0948, &type metadata accessor for Models.Menu);
        if (v3 <= 0x3F)
        {
          sub_284380(319, &unk_3C93B0, &type metadata accessor for OnDevicePersonalizationPropertyData);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_28431C()
{
  if (!qword_3BE098)
  {
    sub_718D4(&qword_3BC248);
    v0 = sub_2C60B8();
    if (!v1)
    {
      atomic_store(v0, &qword_3BE098);
    }
  }
}

void sub_284380(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C60B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2843E8()
{
  result = qword_3C93F0;
  if (!qword_3C93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C93F0);
  }

  return result;
}

unint64_t sub_284440()
{
  result = qword_3C93F8;
  if (!qword_3C93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C93F8);
  }

  return result;
}

unint64_t sub_284498()
{
  result = qword_3C9400;
  if (!qword_3C9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9400);
  }

  return result;
}

uint64_t sub_2844EC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_3894D8;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_284538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PageLifecycleHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for Page.LifecycleInfo();
  v1 = swift_allocObject();
  *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t PageLifecycleHandler.init()()
{
  type metadata accessor for Page.LifecycleInfo();
  v1 = swift_allocObject();
  *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t PageLifecycleHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_284714()
{
  v1 = sub_6620C(&qword_3C0470);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2;
  v4 = sub_2BFAC8();
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32) >= 2)
  {
    v8 = *(v0 + 16);
    v9 = *(v8 + 16);
    if (v9)
    {
      v16[1] = *(v0 + 16);
      v10 = v8 + 32;
      if (*(v0 + 48))
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0;
      }

      v18 = (v5 + 32);
      v19 = (v5 + 48);
      v16[2] = v11;
      v17 = (v5 + 8);
      v12 = 0.0;
      do
      {
        sub_691F8(v10, v21);
        sub_72084(v21, v21[3]);
        sub_2BF3A8();

        if ((*v19)(v3, 1, v4) == 1)
        {
          sub_69198(v3, &qword_3C0470);
        }

        else
        {
          (*v18)(v7, v3, v4);
          v13 = sub_2BFAA8();
          if (v14)
          {
            v20[0] = v13;
            v20[1] = v14;
            __chkstk_darwin(v13);
            v16[-2] = v20;
            v15 = sub_10F908(sub_285BA0, &v16[-4], &off_38A038);
            (*v17)(v7, v4);

            if (v15)
            {
              v12 = v12 + 1.0;
            }
          }

          else
          {
            (*v17)(v7, v4);
          }
        }

        sub_68CD0(v21);
        v10 += 40;
        --v9;
      }

      while (v9);
    }
  }
}

void sub_284A3C()
{
  if (*(v0 + 32) >= 3)
  {
    v1 = *(v0 + 40);
    sub_28535C(v1);

    v2 = 0;
    v3 = 0;
    v4 = 1 << *(v1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = v3;
LABEL_11:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(*(v1 + 56) + ((v8 << 9) | (8 * v9)));
      v11 = __OFADD__(v2, v10);
      v2 += v10;
      if (v11)
      {
        __break(1u);
        return;
      }
    }

    while (1)
    {
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        return;
      }

      v6 = *(v1 + 64 + 8 * v8);
      ++v3;
      if (v6)
      {
        v3 = v8;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_284B44()
{
  if (*(v0 + 32) >= 3)
  {
    v1 = *(v0 + 16);
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 32;
      v5 = _swiftEmptyArrayStorage;
      while (v3 < *(v1 + 16))
      {
        sub_691F8(v4, &v11);
        sub_72084(&v11, v12);
        v6 = sub_2BF9B8();
        if (v6 == 2 || (v6 & 1) == 0)
        {
          sub_68CD0(&v11);
        }

        else
        {
          sub_693D0(&v11, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_64808(0, v5[2] + 1, 1);
            v5 = v13;
          }

          v9 = v5[2];
          v8 = v5[3];
          if (v9 >= v8 >> 1)
          {
            sub_64808((v8 > 1), v9 + 1, 1);
            v5 = v13;
          }

          v5[2] = v9 + 1;
          sub_693D0(v10, &v5[5 * v9 + 4]);
        }

        ++v3;
        v4 += 40;
        if (v2 == v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
    }
  }
}

void sub_284CDC()
{
  if (v0[4] >= 2)
  {
    v1 = v0[2];
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = *v0;
      v5 = v1 + 32;
      v6 = _swiftEmptyArrayStorage;
      while (v3 < *(v1 + 16))
      {
        sub_691F8(v5, &v11);
        sub_72084(&v11, v12);
        if (sub_284E98(v4) & 1) != 0 && (sub_72084(&v11, v12), (sub_2852B4()))
        {
          sub_693D0(&v11, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_64808(0, v6[2] + 1, 1);
            v6 = v13;
          }

          v9 = v6[2];
          v8 = v6[3];
          if (v9 >= v8 >> 1)
          {
            sub_64808((v8 > 1), v9 + 1, 1);
            v6 = v13;
          }

          v6[2] = v9 + 1;
          sub_693D0(v10, &v6[5 * v9 + 4]);
        }

        else
        {
          sub_68CD0(&v11);
        }

        ++v3;
        v5 += 40;
        if (v2 == v3)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:
    }
  }
}

uint64_t sub_284E98(uint64_t a1)
{
  v2 = sub_2BE298();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2BE698();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_2BE588();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BF958();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_69198(v10, &qword_3BC418);
    return 0;
  }

  v23 = a1;
  (*(v12 + 32))(v14, v10, v11);
  sub_2BE608();
  sub_6620C(&qword_3C5630);
  v15 = sub_2BE678();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2E3F30;
  (*(v16 + 104))(v18 + v17, enum case for Calendar.Component.year(_:), v15);
  sub_1D9108(v18);
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v15);
  swift_deallocClassInstance();
  sub_2BE618();

  v19 = sub_2BE278();
  LOBYTE(v15) = v20;
  (*(v26 + 8))(v4, v27);
  (*(v24 + 8))(v7, v25);
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    return 0;
  }

  if (v19 == v23)
  {
    return 1;
  }

  if (!__OFSUB__(v23, 1))
  {
    return v19 == v23 - 1;
  }

  __break(1u);
  return result;
}

void *sub_2852B4()
{
  result = sub_2BF3E8();
  if (result)
  {
    v1 = result;
    [result averageRating];
    v3 = v2;

    result = sub_2BF3E8();
    if (result)
    {
      v4 = result;
      v5 = [result ratingCount];

      if (v3 * 5.0 >= 4.2)
      {
        return (v5 > 9);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_28535C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2854BC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_2855A8(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_2854BC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_61C48(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_61C48(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2855A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2854BC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_285620(uint64_t a1, char a2)
{
  v4 = sub_6620C(&qword_3C0470);
  __chkstk_darwin(v4 - 8);
  v6 = v46 - v5;
  v7 = sub_2BFAC8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3BC418);
  __chkstk_darwin(v11 - 8);
  v13 = v46 - v12;
  result = sub_67BF8(_swiftEmptyArrayStorage);
  v15 = *(a1 + 16);
  if (!v15)
  {
    return result;
  }

  v52 = 0;
  v53 = result;
  v16 = a1 + 32;
  if (a2)
  {
    v17 = 0x3631303031;
  }

  else
  {
    v17 = 0;
  }

  if (a2)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0;
  }

  v54 = (v8 + 48);
  v50 = v18;
  v51 = (v8 + 32);
  v48 = v7;
  v49 = (v8 + 8);
  v46[1] = v17;
  v47 = v10;
  while (1)
  {
    sub_691F8(v16, v56);
    sub_72084(v56, v57);
    sub_2BF978();
    v19 = sub_2BE588();
    v20 = (*(*(v19 - 8) + 48))(v13, 1, v19);
    sub_69198(v13, &qword_3BC418);
    if (v20 == 1)
    {
      goto LABEL_10;
    }

    sub_72084(v56, v57);
    sub_2BF3A8();

    if ((*v54)(v6, 1, v7) == 1)
    {
      sub_69198(v6, &qword_3C0470);
      goto LABEL_10;
    }

    (*v51)(v10, v6, v7);
    v21 = sub_2BFAA8();
    if (!v22)
    {
      (*v49)(v10, v7);
      goto LABEL_10;
    }

    v23 = v21;
    v24 = v22;
    v25 = v6;
    sub_77BDC(v52);
    v26 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v26;
    v28 = v23;
    v30 = sub_5D228(v23, v24);
    v31 = v26[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      break;
    }

    v34 = v29;
    if (v26[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_632BC();
      }
    }

    else
    {
      sub_5E708(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_5D228(v28, v24);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_32;
      }

      v30 = v35;
    }

    v6 = v25;
    v37 = v55;
    v7 = v48;
    if (v34)
    {
      v38 = v55;

      v37 = v38;
      v10 = v47;
    }

    else
    {
      v55[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v37[6] + 16 * v30);
      *v39 = v28;
      v39[1] = v24;
      *(v37[7] + 8 * v30) = 0;
      v40 = v37[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      v10 = v47;
      if (v41)
      {
        goto LABEL_31;
      }

      v37[2] = v42;
    }

    v43 = v37[7];
    v44 = *(v43 + 8 * v30);
    v41 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v41)
    {
      goto LABEL_30;
    }

    v53 = v37;
    *(v43 + 8 * v30) = v45;
    (*v49)(v10, v7);
    v52 = sub_BB71C;
LABEL_10:
    sub_68CD0(v56);
    v16 += 40;
    if (!--v15)
    {
      sub_77BDC(v52);
      return v53;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_2C6678();
  __break(1u);
  return result;
}

__n128 sub_285ADC(uint64_t a1, uint64_t a2)
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

uint64_t sub_285AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_285B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_285BD0()
{
  result = qword_3C94B8;
  if (!qword_3C94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C94B8);
  }

  return result;
}

uint64_t sub_285C2C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v51 = a1;
  v2 = sub_6620C(&qword_3C94C0);
  __chkstk_darwin(v2 - 8);
  v55 = &v47 - v3;
  v54 = sub_2BECC8();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v47 - v6;
  __chkstk_darwin(v7);
  v48 = &v47 - v8;
  __chkstk_darwin(v9);
  v56 = &v47 - v10;
  v11 = sub_2BF0B8();
  v61 = *(v11 - 8);
  __chkstk_darwin(v11);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_6620C(&qword_3C94C8);
  v59 = *(v60 - 1);
  __chkstk_darwin(v60);
  v14 = &v47 - v13;
  v58 = sub_6620C(&qword_3C94D0);
  v15 = *(v58 - 8);
  __chkstk_darwin(v58);
  v17 = &v47 - v16;
  v18 = sub_6620C(&qword_3C94D8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v22 = sub_6620C(&qword_3C94E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v47 - v26;
  sub_2C5188();
  sub_2C51E8();
  (*(v19 + 8))(v21, v18);
  sub_2C5198();
  sub_6620C(&qword_3C94E8);
  sub_2C51F8();
  v28 = v17;
  v29 = v61;
  (*(v15 + 8))(v28, v58);
  v30 = v70;
  sub_2C5178();
  sub_6620C(&qword_3C94F0);
  sub_2C51E8();
  (*(v59 + 8))(v14, v60);
  v31 = v11;
  sub_6932C(v27, v24, &qword_3C94E0);
  if ((*(v29 + 48))(v24, 1, v11) == 1)
  {
    sub_69198(&v69, &unk_3BDDB8);
    sub_69198(v27, &qword_3C94E0);
    v32 = v24;
    v33 = &qword_3C94E0;
LABEL_5:
    sub_69198(v32, v33);
    return 0;
  }

  v34 = v57;
  (*(v29 + 32))(v57, v24, v11);
  sub_28655C(&qword_3C94F8);
  v35 = v55;
  v36 = v54;
  sub_2BF0A8();
  v37 = v53;
  if ((*(v53 + 48))(v35, 1, v36) == 1)
  {
    (*(v29 + 8))(v34, v11);
    sub_69198(&v69, &unk_3BDDB8);
    sub_69198(v27, &qword_3C94E0);
    v33 = &qword_3C94C0;
    v32 = v35;
    goto LABEL_5;
  }

  v60 = v27;
  v39 = *(v37 + 32);
  v39(v56, v35, v36);
  if ((v30 & 1) == 0)
  {
    v40 = v48;
    v41 = v56;
    sub_2BECB8();
    (*(v37 + 8))(v41, v36);
    v39(v41, v40, v36);
  }

  sub_6932C(&v69, &v65, &unk_3BDDB8);
  if (*(&v66 + 1))
  {
    sub_68D1C(&v65, v68);
    v42 = v56;
    (*(v37 + 16))(v52, v56, v36);
    sub_6932C(v49, &v62, &qword_3BE008);
    if (*(&v63 + 1))
    {
      v65 = v62;
      v66 = v63;
      v67 = v64;
    }

    else
    {
      sub_68D34(v51, &v65);
      if (*(&v63 + 1))
      {
        sub_69198(&v62, &qword_3BE008);
      }
    }

    v43 = v50;
    v44 = v52;
    sub_2BECA8();
    sub_68D90(&v65);
    v45 = *(v37 + 8);
    v45(v44, v36);
    sub_68CD0(v68);
    v45(v42, v36);
    v39(v42, v43, v36);
  }

  else
  {
    sub_69198(&v65, &unk_3BDDB8);
    v42 = v56;
  }

  sub_28655C(&qword_3BF440);
  v46 = sub_2BE788();
  (*(v37 + 8))(v42, v36);
  (*(v61 + 8))(v57, v31);
  sub_69198(&v69, &unk_3BDDB8);
  sub_69198(v60, &qword_3C94E0);
  return v46;
}

uint64_t sub_28655C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2BECC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_2865A0()
{
  qword_3C9520 = 0;
  result = 0.0;
  xmmword_3C9500 = 0u;
  *algn_3C9510 = 0u;
  return result;
}

uint64_t sub_2865B8@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_3BB950 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_2866C4(&xmmword_3C9500, v2);
}

uint64_t EnvironmentValues.contextActionIconProvider.getter()
{
  sub_1A3DE0();

  return sub_2C3108();
}

uint64_t EnvironmentValues.contextActionIconProvider.setter(uint64_t a1)
{
  sub_2866C4(a1, v3);
  sub_1A3DE0();
  sub_2C3118();
  return sub_286734(a1);
}

uint64_t sub_2866C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BEF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_286734(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BEF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*EnvironmentValues.contextActionIconProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  *(v3 + 128) = sub_1A3DE0();
  sub_2C3108();
  return sub_28682C;
}

void sub_28682C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_2866C4(*a1, v2 + 40);
    sub_2866C4(v2 + 40, v2 + 80);
    sub_2C3118();
    sub_286734(v2 + 40);
  }

  else
  {
    sub_2866C4(*a1, v2 + 40);
    sub_2C3118();
  }

  sub_286734(v2);

  free(v2);
}

uint64_t dispatch thunk of ContextActionIconProviding.coverImages(actionItems:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_B2A98;

  return v9(a1, a2, a3);
}

uint64_t sub_286A30(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v22 = sub_2C0DB8();
  v26 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = _swiftEmptyArrayStorage;
  if (v9 == -1)
  {
    return v11;
  }

  v28 = _swiftEmptyArrayStorage;
  result = sub_64654(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = 0;
    v11 = v28;
    v21[1] = v26 + 32;
    while (v13 < v10)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_20;
      }

      if (v14)
      {
        goto LABEL_26;
      }

      v16 = a3;
      v27 = a3;
      v17 = v8;
      v24(&v27);
      if (v4)
      {
        goto LABEL_25;
      }

      v28 = v11;
      v19 = v11[2];
      v18 = v11[3];
      if (v19 >= v18 >> 1)
      {
        sub_64654(v18 > 1, v19 + 1, 1);
        v11 = v28;
      }

      v11[2] = v19 + 1;
      v20 = v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19;
      v8 = v17;
      result = (*(v26 + 32))(v20, v17, v22);
      v14 = v16 == v23;
      if (v16 == v23)
      {
        a3 = 0;
      }

      else
      {
        a3 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_21;
        }
      }

      v4 = 0;
      ++v13;
      if (v15 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_286C6C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for SwooshItemComponentModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v21 = &_swiftEmptyArrayStorage;
  sub_646D8(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for ListItemComponentModel() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_646D8(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    v11[2] = v15 + 1;
    sub_28AE90(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for SwooshItemComponentModel);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_286E68(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v14 = _swiftEmptyArrayStorage;
  sub_64808(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    a1(v13, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v14 = v6;
    v11 = v6[2];
    v10 = v6[3];
    if (v11 >= v10 >> 1)
    {
      sub_64808((v10 > 1), v11 + 1, 1);
      v6 = v14;
    }

    v6[2] = v11 + 1;
    sub_68D1C(v13, &v6[5 * v11 + 4]);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_286F7C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a2;
  v26 = sub_6620C(&qword_3C3AB0);
  __chkstk_darwin(v26);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v25 = &v22 - v9;
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v30 = _swiftEmptyArrayStorage;
  sub_64BF8(0, v10, 0);
  v11 = v30;
  v12 = 0;
  v13 = *(type metadata accessor for Shelf() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v23 = *(v13 + 72);
  v24 = v7;
  while (1)
  {
    v16 = v25;
    v15 = v26;
    v17 = *(v26 + 48);
    sub_91560(v14, &v25[v17]);
    *v7 = v12;
    sub_28AE90(&v16[v17], v7 + *(v15 + 48), type metadata accessor for Shelf);
    v27(&v29, v7);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_69198(v7, &qword_3C3AB0);
    v18 = v29;
    v30 = v11;
    v20 = v11[2];
    v19 = v11[3];
    if (v20 >= v19 >> 1)
    {
      sub_64BF8((v19 > 1), v20 + 1, 1);
      v11 = v30;
    }

    ++v12;
    v11[2] = v20 + 1;
    *(v11 + v20 + 32) = v18;
    v7 = v24;
    v14 += v23;
    if (v10 == v12)
    {
      return v11;
    }
  }

  sub_69198(v7, &qword_3C3AB0);

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SeriesRoomHeaderComponentModel()
{
  result = qword_3C95B8;
  if (!qword_3C95B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t SeriesRoomHeaderComponentModel.init(series:quickActionButtonViewModel:impressionMetrics:localizerForAnalytics:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v170 = a4;
  v171 = a3;
  v172 = a2;
  v166 = a5;
  v165 = sub_2BF408();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v162 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_2C1808();
  v161 = *(v163 - 8);
  __chkstk_darwin(v163);
  v160 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_6620C(&qword_3C9528);
  __chkstk_darwin(v149);
  v150 = &v148 - v8;
  v9 = sub_6620C(&qword_3C9530);
  __chkstk_darwin(v9 - 8);
  v155 = &v148 - v10;
  v157 = sub_2BF6F8();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v153 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C2AB8);
  __chkstk_darwin(v12 - 8);
  v168 = &v148 - v13;
  v14 = sub_6620C(&qword_3BEF80);
  v15 = __chkstk_darwin(v14 - 8);
  v152 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v154 = &v148 - v17;
  v169 = sub_2BFDD8();
  v167 = *(v169 - 8);
  v18 = __chkstk_darwin(v169);
  v148 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v148 - v20;
  v21 = sub_6620C(&qword_3BDCC0);
  __chkstk_darwin(v21 - 8);
  v177 = &v148 - v22;
  v23 = sub_2BF368();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v148 - v28;
  v179 = sub_2C0D88();
  v176 = *(v179 - 1);
  __chkstk_darwin(v179);
  v182 = (&v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = sub_2C0DB8();
  v183 = *(v181 - 8);
  v31 = __chkstk_darwin(v181);
  v180 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v148 - v33;
  v35 = type metadata accessor for SeriesRoomHeaderComponentModel();
  v36 = __chkstk_darwin(v35);
  v38 = (&v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = v36;
  v39 = v38 + *(v36 + 52);
  *(v39 + 4) = 0;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  sub_72084(a1, a1[3]);
  *v38 = sub_2BF3B8();
  v38[1] = v40;
  v159 = v38;
  sub_72084(a1, a1[3]);
  v41 = sub_2BF308();
  v173 = a1;
  if (v41)
  {
    v42 = v41;
    v184[0] = v41;
    sub_6620C(&qword_3BDC38);
    sub_28A5A0();
    if (sub_2C5D28())
    {
      v43 = *(v42 + 16);
      if (v43)
      {
        v185 = &_swiftEmptyArrayStorage;
        sub_64654(0, v43, 0);
        v44 = v185;
        v45 = v42 + 32;
        do
        {
          sub_691F8(v45, v184);
          sub_72084(v184, v184[3]);
          sub_2BF9F8();
          sub_2C0D78();
          sub_2C0DA8();
          sub_68CD0(v184);
          v185 = v44;
          v47 = v44[2];
          v46 = v44[3];
          if (v47 >= v46 >> 1)
          {
            sub_64654(v46 > 1, v47 + 1, 1);
            v44 = v185;
          }

          v44[2] = v47 + 1;
          (*(v183 + 32))(v44 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v47, v34, v181);
          v45 += 40;
          --v43;
        }

        while (v43);
      }

      else
      {

        v44 = &_swiftEmptyArrayStorage;
      }

LABEL_22:
      v61 = v159;
      v159[2] = v44;
      v62 = v158;
      v63 = v158[6];
      v64 = sub_2C2048();
      v182 = *(v64 - 8);
      v183 = v64;
      v182[2](v61 + v63, v172);
      sub_6932C(v171, v61 + v62[14], &qword_3BDF58);
      v65 = v62[7];
      v66 = v173;
      sub_72084(v173, v173[3]);
      sub_2BF3C8();
      sub_2BFDC8();

      v67 = enum case for PlaceholderTextView.ContentType.content<A>(_:);
      v68 = sub_6620C(&qword_3C6058);
      v69 = *(v68 - 8);
      v70 = *(v69 + 104);
      v71 = v69 + 104;
      v72 = v61 + v65;
      v73 = v67;
      v70(v72, v67, v68);
      sub_72084(v66, v66[3]);
      v74 = v168;
      sub_2BF2A8();
      v75 = v154;
      sub_275F9C(v74, v154);
      sub_69198(v74, &qword_3C2AB8);
      v76 = v167;
      v77 = v169;
      v179 = *(v167 + 48);
      v180 = (v167 + 48);
      if (v179(v75, 1, v169) == 1)
      {
        sub_69198(v75, &qword_3BEF80);
        v78 = v62[8];
        v79 = enum case for PlaceholderTextView.PlaceholderSize.large<A>(_:);
        v80 = sub_6620C(&qword_3C9538);
        (*(*(v80 - 8) + 104))(v61 + v78, v79, v80);
        v70(v61 + v78, enum case for PlaceholderTextView.ContentType.placeholder<A>(_:), v68);
      }

      else
      {
        v81 = *(v76 + 32);
        v178 = v71;
        v82 = v70;
        v83 = v73;
        v84 = v151;
        v81(v151, v75, v77);
        v85 = v62[8];
        v86 = v84;
        v73 = v83;
        v81((v61 + v85), v86, v77);
        v82(v61 + v85, v83, v68);
      }

      v87 = v62;
      v88 = v173;
      sub_2889A4(v173, v61 + v62[9]);
      sub_289D40(v88, v170, v61 + v62[10]);
      sub_691F8(v88, v184);
      sub_6620C(&qword_3C9540);
      v89 = v155;
      v90 = v157;
      v91 = swift_dynamicCast();
      v92 = v156;
      v93 = *(v156 + 56);
      LODWORD(v181) = v73;
      if (v91)
      {
        v93(v89, 0, 1, v90);
        v94 = v153;
        (*(v92 + 32))(v153, v89, v90);
        v95 = v168;
        sub_2BF6D8();
        v96 = v152;
        sub_275F9C(v95, v152);
        sub_69198(v95, &qword_3C2AB8);
        (*(v92 + 8))(v94, v90);
        v97 = v169;
        if (v179(v96, 1, v169) != 1)
        {
          v105 = *(v167 + 32);
          v106 = v148;
          v105(v148, v96, v97);
          v107 = *(v149 + 48);
          v104 = v87;
          v108 = v150;
          v105(v150, v106, v97);
          *(v108 + v107) = 0;
          v109 = v104[12];
          sub_28A530(v108, v61 + v109);
          v110 = sub_6620C(&qword_3C6050);
          (*(*(v110 - 8) + 104))(v61 + v109, v73, v110);
          goto LABEL_31;
        }

        sub_69198(v96, &qword_3BEF80);
        v98 = v87[12];
        v99 = enum case for PlaceholderTextView.PlaceholderSize.medium<A>(_:);
        v100 = sub_6620C(&qword_3C9550);
        (*(*(v100 - 8) + 104))(v61 + v98, v99, v100);
        v101 = &enum case for PlaceholderTextView.ContentType.placeholder<A>(_:);
      }

      else
      {
        v93(v89, 1, 1, v90);
        sub_69198(v89, &qword_3C9530);
        v98 = v62[12];
        v101 = &enum case for PlaceholderTextView.ContentType.none<A>(_:);
      }

      v102 = *v101;
      v103 = sub_6620C(&qword_3C6050);
      (*(*(v103 - 8) + 104))(v61 + v98, v102, v103);
      v104 = v87;
LABEL_31:
      v111 = v173;
      sub_72084(v173, v173[3]);
      v112 = v162;
      sub_2BF288();
      sub_72084(v111, v111[3]);
      v113 = sub_2BF2C8();
      v115 = v114;
      sub_72084(v111, v111[3]);
      v116 = sub_2BF2F8();
      v118 = v117;
      sub_72084(v111, v111[3]);
      v119 = sub_2BF3D8();
      v120 = v160;
      sub_174524(v112, v113, v115 & 1, v116, v118 & 1, v119, v160);

      sub_69198(v170, &qword_3C9548);
      sub_69198(v171, &qword_3BDF58);
      v182[1](v172, v183);
      (*(v164 + 8))(v112, v165);
      v121 = v104[11];
      (*(v161 + 32))(v61 + v121, v120, v163);
      v122 = sub_6620C(&qword_3C6048);
      (*(*(v122 - 8) + 104))(v61 + v121, v181, v122);
      sub_28AE90(v61, v166, type metadata accessor for SeriesRoomHeaderComponentModel);
      return sub_68CD0(v111);
    }
  }

  sub_72084(a1, a1[3]);
  sub_2BF278();
  (*(v24 + 104))(v27, enum case for SeriesType.audiobook(_:), v23);
  sub_28AE48(&qword_3C1560, &type metadata accessor for SeriesType);
  sub_2C5A88();
  sub_2C5A88();
  if (v184[0] == v185 && v184[1] == v186)
  {
    LODWORD(v178) = 0;
  }

  else
  {
    LODWORD(v178) = sub_2C65B8() ^ 1;
  }

  v48 = *(v24 + 8);
  v48(v27, v23);
  v48(v29, v23);

  sub_72084(a1, a1[3]);
  sub_2BF328();
  swift_getAssociatedTypeWitness();
  sub_6620C(&qword_3BC2C8);
  v56 = sub_2C6358();

  if (!*(v56 + 16))
  {

    v124 = sub_2BF258();
    v58 = v177;
    (*(*(v124 - 8) + 56))(v177, 1, 1, v124);
    goto LABEL_33;
  }

  sub_691F8(v56 + 32, v184);

  v57 = sub_2BF258();
  v58 = v177;
  v59 = swift_dynamicCast();
  v60 = *(v57 - 8);
  (*(v60 + 56))(v58, v59 ^ 1u, 1, v57);
  if ((*(v60 + 48))(v58, 1, v57) == 1)
  {
LABEL_33:
    sub_69198(v58, &qword_3BDCC0);
    v55 = 0;
    goto LABEL_34;
  }

  v55 = sub_2BF238();
  (*(v60 + 8))(v58, v57);
LABEL_34:
  while (1)
  {
    sub_72084(a1, a1[3]);
    v125 = sub_2BF2C8();
    v127 = v125 >= 5 ? 5 : v125;
    v128 = (v126 & 1) != 0 ? 5 : v127;
    if ((v128 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_60:
    __break(1u);
    swift_once();
    v49 = sub_2C00B8();
    sub_57AD8(v49, qword_3C31B8);
    swift_errorRetain();
    v50 = sub_2C0098();
    v51 = sub_2C5DC8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = sub_2BE348();
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&dword_0, v50, v51, "Failed to retrieve first asset: %@", v52, 0xCu);
      sub_69198(v53, &qword_3BFEE0);
    }

    v55 = sub_2BF7E8();
  }

  v184[0] = &_swiftEmptyArrayStorage;
  v177 = (v128 + 1);
  result = sub_64654(0, v128 + 1, 0);
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v44 = v184[0];
  v175 = v55 & 1;
  v174 = enum case for CoverViewModel.CoverStyle.placeholderBook(_:);
  v132 = (v176 + 104);
  LODWORD(v176) = enum case for CoverViewModel.CoverStyle.placeholderAudiobook(_:);
  a1 = (v183 + 32);
  while (1)
  {
    v133 = (v129 + 1);
    if (__OFADD__(v129, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v131)
    {
      break;
    }

    v134 = sub_2BFA98();
    v136 = v135;
    if (v134 == sub_2BFA98() && v136 == v137)
    {

      v138 = *v132;
LABEL_50:
      v140 = v182;
      v141 = v179;
      v142 = v180;
      *v182 = 0x4066800000000000;
      v138(v140, v176, v141);
      goto LABEL_52;
    }

    v139 = sub_2C65B8();

    v138 = *v132;
    if (v139)
    {
      goto LABEL_50;
    }

    v143 = v182;
    *v182 = 0x4066800000000000;
    v144 = v174;
    *(v143 + 8) = v175;
    v138(v143, v144, v179);
    v142 = v180;
LABEL_52:
    sub_2C0DA8();
    v184[0] = v44;
    v146 = v44[2];
    v145 = v44[3];
    if (v146 >= v145 >> 1)
    {
      sub_64654(v145 > 1, v146 + 1, 1);
      v142 = v180;
      v44 = v184[0];
    }

    v44[2] = v146 + 1;
    result = (*(v183 + 32))(v44 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v146, v142, v181);
    v131 = v130 == v128;
    if (v130 == v128)
    {
      v130 = 0;
    }

    else if (__OFADD__(v130++, 1))
    {
      goto LABEL_59;
    }

    ++v129;
    if (v133 == v177)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

void sub_2889A4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v123 = sub_2C06E8();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v124 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6620C(&qword_3BCE28);
  __chkstk_darwin(v4 - 8);
  v125 = &v95 - v5;
  v116 = sub_2BEB28();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2BF048();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&unk_3CA260);
  __chkstk_darwin(v8 - 8);
  v121 = &v95 - v9;
  v110 = sub_2C2208();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_2C2178();
  v107 = *(v128 - 8);
  __chkstk_darwin(v128);
  v106 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2C4BF8();
  v119 = *(v120 - 8);
  v12 = __chkstk_darwin(v120);
  v129 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v130 = &v95 - v14;
  v105 = sub_2BE3B8();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2C2198();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6620C(&unk_3BDC80);
  __chkstk_darwin(v17 - 8);
  v99 = &v95 - v18;
  v118 = sub_2C22F8();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v131 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2BF658();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v127 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_6620C(&qword_3C9640);
  __chkstk_darwin(v23);
  v25 = &v95 - v24;
  v26 = sub_6620C(&qword_3C2AB8);
  v27 = __chkstk_darwin(v26 - 8);
  v98 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v95 - v29;
  v31 = sub_6620C(&qword_3C9648);
  v32 = __chkstk_darwin(v31 - 8);
  v134 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v95 - v35;
  __chkstk_darwin(v34);
  v38 = &v95 - v37;
  v39 = a1[3];
  v132 = a1;
  sub_72084(a1, v39);
  sub_2BF2A8();
  v40 = sub_2BF698();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v97 = v41 + 48;
  v96 = v42;
  v43 = v42(v30, 1, v40);
  v126 = v40;
  v95 = v41;
  if (v43 == 1)
  {
    sub_69198(v30, &qword_3C2AB8);
    v44 = 1;
  }

  else
  {
    sub_2BF678();
    (*(v41 + 8))(v30, v40);
    v44 = 0;
  }

  v45 = *(v21 + 56);
  v45(v38, v44, 1, v20);
  (*(v21 + 104))(v36, enum case for SeriesArtistInfo.ArtistPlurality.variousArtists(_:), v20);
  v45(v36, 0, 1, v20);
  v46 = *(v23 + 48);
  sub_6932C(v38, v25, &qword_3C9648);
  sub_6932C(v36, &v25[v46], &qword_3C9648);
  v47 = *(v21 + 48);
  v48 = v47(v25, 1, v20);
  v49 = v134;
  if (v48 == 1)
  {
    sub_69198(v36, &qword_3C9648);
    sub_69198(v38, &qword_3C9648);
    if (v47(&v25[v46], 1, v20) == 1)
    {
      sub_69198(v25, &qword_3C9648);
LABEL_23:
      v63 = v133;
      *(v133 + 32) = 0;
      *v63 = 0u;
      v63[1] = 0u;
      return;
    }

    goto LABEL_9;
  }

  sub_6932C(v25, v134, &qword_3C9648);
  if (v47(&v25[v46], 1, v20) == 1)
  {
    sub_69198(v36, &qword_3C9648);
    sub_69198(v38, &qword_3C9648);
    (*(v21 + 8))(v49, v20);
LABEL_9:
    sub_69198(v25, &qword_3C9640);
    v50 = v132;
    goto LABEL_10;
  }

  v60 = v127;
  (*(v21 + 32))(v127, &v25[v46], v20);
  sub_28AE48(&qword_3C9658, &type metadata accessor for SeriesArtistInfo.ArtistPlurality);
  v61 = sub_2C5878();
  v62 = *(v21 + 8);
  v62(v60, v20);
  sub_69198(v36, &qword_3C9648);
  sub_69198(v38, &qword_3C9648);
  v62(v49, v20);
  sub_69198(v25, &qword_3C9648);
  v50 = v132;
  if (v61)
  {
    goto LABEL_23;
  }

LABEL_10:
  sub_72084(v50, v50[3]);
  v51 = sub_2BF3E8();
  if (!v51)
  {
    goto LABEL_23;
  }

  v52 = v51;
  v53 = sub_2BF8C8();

  if (!v53)
  {
    goto LABEL_23;
  }

  if (v53 >> 62)
  {
    v54 = sub_2C6398();
  }

  else
  {
    v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
  }

  v55 = v126;
  if (!v54)
  {

    goto LABEL_23;
  }

  if ((v53 & 0xC000000000000001) != 0)
  {
    v56 = sub_2C6208();
  }

  else
  {
    if (!*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v56 = *(v53 + 32);
  }

  v57 = v56;
  v58 = v98;
  v59 = 0x4173756F69726176;

  sub_72084(v50, v50[3]);
  sub_2BF2A8();
  if (v96(v58, 1, v55) == 1)
  {
    sub_69198(v58, &qword_3C2AB8);
  }

  else
  {
    v64 = sub_2BF638();
    v66 = v65;
    (*(v95 + 8))(v58, v55);
    if ((v66 & 1) == 0 && v64 == 1)
    {
      v67 = v57;
      v59 = sub_2BFAE8();
    }
  }

  v132 = v59;
  v68 = v57;
  sub_2BFAE8();

  v69 = v68;
  v70 = enum case for Metrics.IdType.itsId(_:);
  v71 = sub_2C2258();
  v72 = *(v71 - 8);
  v73 = v99;
  (*(v72 + 104))(v99, v70, v71);
  (*(v72 + 56))(v73, 0, 1, v71);
  (*(v100 + 104))(v101, enum case for Metrics.LocationType.button(_:), v102);
  v134 = v69;
  sub_2BF868();
  sub_2C22E8();
  v74 = v103;
  sub_2BF858();
  v75 = sub_2BE378();
  v77 = v76;
  (*(v104 + 8))(v74, v105);
  v78 = v107;
  v79 = v106;
  (*(v107 + 104))(v106, enum case for Metrics.TargetType.link(_:), v128);
  v80 = v109;
  v81 = v108;
  v82 = v110;
  (*(v109 + 104))(v108, enum case for Metrics.ClickActionType.navigate(_:), v110);

  v83 = v130;
  sub_2C2118();

  v84 = v77;

  (*(v80 + 8))(v81, v82);
  (*(v78 + 8))(v79, v128);
  v85 = v119;
  v86 = v120;
  (*(v119 + 16))(v129, v83, v120);
  (*(v111 + 104))(v112, enum case for ClickData.TargetType.navigate(_:), v113);
  (*(v115 + 104))(v114, enum case for LinkActionType.click(_:), v116);
  v87 = v121;
  sub_2BF058();
  v88 = sub_2BF088();
  (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
  sub_6620C(&qword_3BC8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = 7107189;
  v90 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v75;
  *(inited + 56) = v84;
  sub_6759C(inited);
  swift_setDeallocating();
  sub_69198(v90, &qword_3BC318);
  v135[3] = sub_2C04A8();
  v135[4] = &protocol witness table for FlowAction.FeedDestination;
  sub_720C8(v135);
  sub_2C1648();

  sub_72084(v50, v50[3]);
  sub_2BF3C8();
  sub_72084(v50, v50[3]);
  sub_2BF3B8();
  (*(v122 + 104))(v124, enum case for ActionOrigin.Kind.other(_:), v123);
  v91 = v125;
  sub_2C0758();
  v92 = sub_2C0778();
  (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
  sub_2C5348();
  v93 = sub_2C0578();
  v94 = v133;
  *(v133 + 24) = v93;
  v94[4] = sub_28AE48(&qword_3C9650, &type metadata accessor for FlowAction);
  sub_720C8(v94);
  sub_2C0548();

  (*(v85 + 8))(v130, v86);
  (*(v117 + 8))(v131, v118);
}

uint64_t sub_289D40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v50 = a3;
  v4 = sub_6620C(&qword_3BEF80);
  __chkstk_darwin(v4 - 8);
  v46 = &v40 - v5;
  v6 = sub_2C21D8();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2C2258();
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2C2168();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6620C(&qword_3C2AB8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = sub_2BF698();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_72084(a1, a1[3]);
  sub_2BF2A8();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_69198(v17, &qword_3C2AB8);
LABEL_16:
    v32 = sub_2C5018();
    return (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
  }

  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_2BF638();
  if ((v23 & 1) != 0 || v22 < 1)
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_16;
  }

  v24 = v22;
  sub_6932C(v48, &v51, &qword_3C9548);
  if (!v52)
  {
    (*(v19 + 8))(v21, v18);
    sub_69198(&v51, &qword_3C9548);
    goto LABEL_16;
  }

  sub_68D1C(&v51, v53);
  sub_72084(a1, a1[3]);
  v25 = sub_2BF3E8();
  if (v25)
  {
    v26 = v25;
    v27 = sub_2BF8C8();

    if (!v27)
    {
      v33 = v24;
      goto LABEL_23;
    }

    if (v27 >> 62)
    {
      result = sub_2C6398();
      if (result)
      {
LABEL_10:
        if ((v27 & 0xC000000000000001) != 0)
        {
          v29 = v24;
          v30 = sub_2C6208();
        }

        else
        {
          if (!*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v29 = v24;
          v30 = *(v27 + 32);
        }

        v31 = v30;

        v27 = sub_2BFAE8();

        if (v29 != 1)
        {
          goto LABEL_14;
        }

LABEL_24:
        v48 = v27;
        goto LABEL_25;
      }
    }

    else
    {
      result = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_10;
      }
    }

    v33 = v24;
  }

  else
  {
    v33 = v24;
  }

  v27 = 0;
LABEL_23:
  if (v33 == 1)
  {
    goto LABEL_24;
  }

LABEL_14:

  v48 = 0x4173756F69726176;
LABEL_25:
  (*(v41 + 104))(v49, enum case for Metrics.IdType.itsId(_:), v8);
  (*(v42 + 104))(v47, enum case for Metrics.ImpressionType.link(_:), v6);
  sub_72084(a1, a1[3]);
  sub_2BF2A8();
  v34 = v46;
  sub_275F9C(v15, v46);
  sub_69198(v15, &qword_3C2AB8);
  v35 = sub_2BFDD8();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_69198(v34, &qword_3BEF80);
  }

  else
  {
    sub_2BFDB8();
    (*(v36 + 8))(v34, v35);
  }

  v37 = v43;
  sub_2C2158();
  v38 = v50;
  sub_2C2138();
  (*(v44 + 8))(v37, v45);
  sub_68CD0(v53);
  (*(v19 + 8))(v21, v18);
  v39 = sub_2C5018();
  return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
}

uint64_t sub_28A530(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C9528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_28A5A0()
{
  result = qword_3C5DF0;
  if (!qword_3C5DF0)
  {
    sub_718D4(&qword_3BDC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C5DF0);
  }

  return result;
}

uint64_t sub_28A6A8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_2C2048();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_6620C(&qword_3C6058);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = sub_6620C(&qword_3BDF58);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v14 = sub_6620C(&qword_3C6048);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_13;
  }

  v16 = sub_6620C(&qword_3C6050);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_28A8E8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2C2048();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_6620C(&qword_3C6058);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = sub_6620C(&qword_3BDF58);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v14 = sub_6620C(&qword_3C6048);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_11;
  }

  v16 = sub_6620C(&qword_3C6050);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[12];

  return v17(v18, a2, a2, v16);
}

void sub_28AB14()
{
  sub_28AD80(319, &qword_3C95C8, &type metadata accessor for CoverViewModel, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_2C2048();
    if (v1 <= 0x3F)
    {
      sub_28AD80(319, &qword_3C95D0, &type metadata accessor for LocalizerRequest, &type metadata accessor for PlaceholderTextView.ContentType);
      if (v2 <= 0x3F)
      {
        sub_28ADE4(319, &qword_3C95D8, &qword_3CA270, &unk_2E5640, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_28AD80(319, &qword_3BE2D8, &type metadata accessor for ImpressionMetrics, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_28AD80(319, &qword_3C95E0, &type metadata accessor for TopLockupMetadataView.Footer, &type metadata accessor for PlaceholderTextView.ContentType);
            if (v5 <= 0x3F)
            {
              sub_28ADE4(319, &unk_3C95E8, &qword_3C9528, &unk_2FA990, &type metadata accessor for PlaceholderTextView.ContentType);
              if (v6 <= 0x3F)
              {
                sub_28ADE4(319, &qword_3BE098, &qword_3BC248, &unk_2E2F20, &type metadata accessor for Optional);
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

void sub_28AD80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_28ADE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_28AE48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28AE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t YearInReviewEligibilityCriteria.isEligible(for:)(uint64_t a1)
{
  v3 = type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v30 - v9;
  v11 = *a1;
  v12 = *(a1 + 16);
  v13 = *v1;
  v14 = v1[6];
  if (v12 > 5)
  {
    if (*(a1 + 16) <= 7u)
    {
      if (v12 != 6)
      {
        return v11 < 3;
      }

      v27 = v11 != 1 && *(a1 + 8) < *(v1 + 2);
      return !v27;
    }

    if (v12 != 8)
    {
      if (v14 <= *&v11)
      {
        v17 = *v1;
      }

      else
      {
        v17 = 0;
      }

      if (v12 == 9)
      {
        return v17;
      }

      else
      {
        return *v1;
      }
    }

    v28 = *(v1 + 3);
    goto LABEL_37;
  }

  if (*(a1 + 16) > 1u)
  {
    v15 = v12 - 2;
    if (v14 > *&v11)
    {
      v13 = 0;
    }

    if (v12 == 4)
    {
      v16 = v13;
    }

    else
    {
      v16 = v11 > 1;
    }

    if (v15 >= 2)
    {
      return v16;
    }

    else
    {
      return v11 > 1;
    }
  }

  if (*(a1 + 16))
  {
    v28 = *(v1 + 1);
LABEL_37:
    v27 = v11 < v28;
    return !v27;
  }

  v30 = *(v1 + 4);
  v18 = *(v11 + 16);
  if (!v18)
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_40:
    v29 = v21[2];

    v27 = v29 < v30;
    return !v27;
  }

  v19 = 0;
  v20 = v1[5];
  v21 = &_swiftEmptyArrayStorage;
  v31 = *(v11 + 16);
  v32 = v3;
  while (v19 < *(v11 + 16))
  {
    v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v23 = *(v4 + 72);
    sub_AEC5C(v11 + v22 + v23 * v19, v10);
    if (v20 > *&v10[*(v3 + 20)])
    {
      result = sub_AECC0(v10);
    }

    else
    {
      sub_28B1B8(v10, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_64760(0, v21[2] + 1, 1);
        v21 = v33;
      }

      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        sub_64760(v25 > 1, v26 + 1, 1);
        v21 = v33;
      }

      v21[2] = v26 + 1;
      result = sub_28B1B8(v7, v21 + v22 + v26 * v23);
      v18 = v31;
      v3 = v32;
    }

    if (v18 == ++v19)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_28B1B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingInsightsDataProvider.MonthTotal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double static YearInReviewEligibilityCriteria.default.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() books];
  v3 = [v2 userDefaults];

  v4 = sub_2C5888();
  v5 = [v3 BOOLForKey:v4];

  *a1 = v5;
  *(a1 + 8) = xmmword_2E3F30;
  *(a1 + 24) = vdupq_n_s64(3uLL);
  result = 60.0;
  *(a1 + 40) = xmmword_2EFDC0;
  return result;
}

uint64_t YearInReviewEligibilityCriteria.description.getter()
{
  v1 = *v0;
  sub_2C61F8(231);
  v5._countAndFlagsBits = 0xD000000000000036;
  v5._object = 0x8000000000308060;
  sub_2C5978(v5);
  if (v1)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_2C5978(v2);

  v6._countAndFlagsBits = 0xD000000000000017;
  v6._object = 0x80000000003080A0;
  sub_2C5978(v6);
  v7._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v7);

  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v8._object = 0x80000000003080C0;
  sub_2C5978(v8);
  v9._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v9);

  v10._countAndFlagsBits = 0xD000000000000020;
  v10._object = 0x80000000003080E0;
  sub_2C5978(v10);
  v11._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v11);

  v12._countAndFlagsBits = 0xD00000000000001CLL;
  v12._object = 0x8000000000308110;
  sub_2C5978(v12);
  v13._countAndFlagsBits = sub_2C6568();
  sub_2C5978(v13);

  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x8000000000308130;
  sub_2C5978(v14);
  sub_2C5CB8();
  v15._object = 0x8000000000308150;
  v15._countAndFlagsBits = 0xD000000000000016;
  sub_2C5978(v15);
  sub_2C5CB8();
  v16._countAndFlagsBits = 62;
  v16._object = 0xE100000000000000;
  sub_2C5978(v16);
  return 0;
}

uint64_t sub_28B568(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_28B5BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_28B61C(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 9)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_28B638(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 17))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_28B680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_28B6C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_28B74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = sub_2C2A58();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GridItemComponentModel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_6620C(&unk_3C43D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_6620C(&qword_3C9668);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  v16 = sub_2C24B8();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_28BEC8(a1 + 40, v24);
  sub_28C208(a1, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridItemComponentModel);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_28C0D0(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_2C0798();
  sub_28C270(&qword_3C23C8, &type metadata accessor for GridItemView);
  sub_2C0388();
  sub_2C2A48();
  sub_28C1A4();
  sub_28C270(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
  v19 = v22;
  sub_2C3E38();
  (*(v3 + 8))(v5, v19);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_28BAEC(uint64_t a1)
{
  v2 = type metadata accessor for CodeGridItemViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C11F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GridItemComponentModel();
  sub_28C208(a1 + *(v9 + 28), v4, type metadata accessor for CodeGridItemViewModel);
  (*(v6 + 32))(v8, v4, v5);
  return sub_2C07A8();
}

uint64_t sub_28BC4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_691F8(a1, v13);
  v12[0] = xmmword_2ECB90;
  v3 = type metadata accessor for ContextActionMenuView(0);
  memset(&v12[1], 0, 32);
  a2[3] = v3;
  a2[4] = sub_28C270(&qword_3C23D8, type metadata accessor for ContextActionMenuView);
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

uint64_t sub_28BD80()
{
  sub_264730();

  return sub_2BFD18();
}

unint64_t sub_28BDC8()
{
  result = qword_3C9660;
  if (!qword_3C9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9660);
  }

  return result;
}

uint64_t sub_28BEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BE370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28BF38()
{
  v1 = type metadata accessor for GridItemComponentModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_68CD0(v0 + v3);
  if (*(v0 + v3 + 64))
  {
    sub_68CD0(v5 + 40);
  }

  v6 = *(v1 + 24);
  v7 = sub_2C5018();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 28);
  v10 = sub_2C11F8();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_28C0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridItemComponentModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_28C134()
{
  v1 = *(type metadata accessor for GridItemComponentModel() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_28BAEC(v2);
}

unint64_t sub_28C1A4()
{
  result = qword_3C9670;
  if (!qword_3C9670)
  {
    sub_718D4(&qword_3C9668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9670);
  }

  return result;
}

uint64_t sub_28C208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_28C270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28C2C0()
{
  sub_718D4(&qword_3C9668);
  sub_2C2A58();
  sub_28C1A4();
  sub_28C270(&qword_3BE108, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t SegmentedControlItem.symbol.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t type metadata accessor for SegmentedControlItem()
{
  result = qword_3C96E8;
  if (!qword_3C96E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_28C458(uint64_t a1)
{
  sub_6932C(a1, v3, &unk_3BDC90);
  sub_6932C(v3, &v2, &unk_3BDC90);
  type metadata accessor for SegmentedControlItem();
  sub_2C1DA8();
  return sub_69198(v3, &unk_3BDC90);
}

uint64_t SegmentedControlItem.action.setter(uint64_t a1)
{
  sub_6932C(a1, v3, &unk_3BDC90);
  type metadata accessor for SegmentedControlItem();
  sub_2C1DA8();
  return sub_69198(a1, &unk_3BDC90);
}

void (*SegmentedControlItem.action.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SegmentedControlItem();
  *(v3 + 32) = sub_2C1D88();
  return sub_1DC7F0;
}

uint64_t SegmentedControlItem.localizableSubtitle.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 40))
  {

    sub_2BFDC8();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_2BFDD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t SegmentedControlItem.impressionMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SegmentedControlItem() + 40);

  return sub_28C720(a1, v3);
}

uint64_t sub_28C720(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3BDF58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_28C7D8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F69746361;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6C6F626D7973;
  if (v1 != 3)
  {
    v4 = 0x6C62617369447369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_28C8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_28D614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_28C8CC(uint64_t a1)
{
  v2 = sub_28CF58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_28C908(uint64_t a1)
{
  v2 = sub_28CF58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SegmentedControlItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_6620C(&qword_3BDF58);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v40 = sub_2C1DC8();
  v43 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3C9678);
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = v35 - v9;
  v11 = type metadata accessor for SegmentedControlItem();
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 44);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_6932C(v45, v44, &unk_3BDC90);
  v47 = v15;
  sub_2C1DB8();
  sub_69198(v45, &unk_3BDC90);
  v16 = *(v12 + 48);
  v17 = sub_2C5018();
  v18 = *(*(v17 - 8) + 56);
  v42 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = a1[3];
  v41 = a1;
  sub_72084(a1, v19);
  sub_28CF58();
  v20 = v39;
  sub_2C67A8();
  if (v20)
  {
    v21 = v40;
    v25 = v43;
    sub_68CD0(v41);
    (*(v25 + 8))(&v14[v47], v21);
    return sub_69198(&v14[v42], &qword_3BDF58);
  }

  else
  {
    v39 = v5;
    v22 = v37;
    LOBYTE(v45[0]) = 0;
    v23 = sub_2C6468();
    v24 = v40;
    *v14 = v23;
    *(v14 + 1) = v27;
    v35[2] = v27;
    LOBYTE(v45[0]) = 1;
    v28 = sub_2C6468();
    v29 = v43;
    *(v14 + 2) = v28;
    *(v14 + 3) = v30;
    LOBYTE(v45[0]) = 2;
    v31 = sub_2C6418();
    v35[1] = 0;
    *(v14 + 4) = v31;
    *(v14 + 5) = v32;
    LOBYTE(v45[0]) = 3;
    *(v14 + 6) = sub_2C6418();
    *(v14 + 7) = v33;
    LOBYTE(v45[0]) = 4;
    v14[64] = sub_2C6478() & 1;
    LOBYTE(v45[0]) = 5;
    sub_28D0B4(&qword_3C36E0, &type metadata accessor for _CodeAnyActionModel_OrNil);
    sub_2C64A8();
    (*(v29 + 40))(&v14[v47], v7, v24);
    LOBYTE(v45[0]) = 6;
    sub_28D0B4(&qword_3BE3A0, &type metadata accessor for ImpressionMetrics);
    v34 = v39;
    sub_2C6458();
    (*(v22 + 8))(v10, v38);
    sub_28C720(v34, &v14[v42]);
    sub_28CFAC(v14, v36);
    sub_68CD0(v41);
    return sub_28D010(v14);
  }
}

unint64_t sub_28CF58()
{
  result = qword_3C9680;
  if (!qword_3C9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9680);
  }

  return result;
}

uint64_t sub_28CFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentedControlItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28D010(uint64_t a1)
{
  v2 = type metadata accessor for SegmentedControlItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_28D0B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2C1DC8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BDF58);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_28D310(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2C1DC8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BDF58);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_28D440()
{
  sub_A63F4();
  if (v0 <= 0x3F)
  {
    sub_2C1DC8();
    if (v1 <= 0x3F)
    {
      sub_D74AC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_28D510()
{
  result = qword_3C9738;
  if (!qword_3C9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9738);
  }

  return result;
}

unint64_t sub_28D568()
{
  result = qword_3C9740;
  if (!qword_3C9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9740);
  }

  return result;
}

unint64_t sub_28D5C0()
{
  result = qword_3C9748;
  if (!qword_3C9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9748);
  }

  return result;
}

uint64_t sub_28D614(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C62617369447369 && a2 == 0xEA00000000006465 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_2C65B8();

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

uint64_t static Shelf.seriesHeader(from:seriesPromotionState:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v158 = a3;
  v157 = a2;
  v120 = a4;
  v136 = type metadata accessor for Shelf();
  __chkstk_darwin(v136);
  v132 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3C1A00);
  __chkstk_darwin(v6 - 8);
  v135 = &v113 - v7;
  v8 = sub_2C0AF8();
  v133 = *(v8 - 8);
  v134 = v8;
  __chkstk_darwin(v8);
  v153 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6620C(&qword_3C2AC0);
  v11 = __chkstk_darwin(v10 - 8);
  v152 = (&v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v164 = &v113 - v13;
  v14 = sub_6620C(&qword_3C1C70);
  v15 = __chkstk_darwin(v14 - 8);
  v137 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v163 = &v113 - v17;
  v154 = sub_2C1CB8();
  v142 = *(v154 - 8);
  v18 = __chkstk_darwin(v154);
  v151 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v180 = &v113 - v20;
  v21 = sub_2C1D08();
  v138 = *(v21 - 8);
  v139 = v21;
  v22 = __chkstk_darwin(v21);
  v149 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v165 = &v113 - v24;
  v25 = sub_2C1B58();
  v130 = *(v25 - 8);
  v131 = v25;
  __chkstk_darwin(v25);
  v129 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2C1B98();
  v150 = *(v156 - 8);
  v27 = __chkstk_darwin(v156);
  v148 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v146 = &v113 - v29;
  v30 = sub_2BE9E8();
  v126 = *(v30 - 8);
  v127 = v30;
  __chkstk_darwin(v30);
  v125 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2BEA38();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v124 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_6620C(&qword_3BDE70);
  v34 = __chkstk_darwin(v33 - 8);
  v155 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v140 = &v113 - v36;
  v37 = sub_6620C(&qword_3C1730);
  v38 = __chkstk_darwin(v37 - 8);
  v147 = &v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v161 = &v113 - v40;
  v41 = sub_6620C(&qword_3C2AB0);
  v42 = __chkstk_darwin(v41 - 8);
  v128 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v162 = &v113 - v44;
  v45 = sub_6620C(&qword_3BDF58);
  v46 = __chkstk_darwin(v45 - 8);
  v145 = &v113 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v160 = &v113 - v49;
  __chkstk_darwin(v48);
  v51 = &v113 - v50;
  v122 = type metadata accessor for SeriesRoomHeaderComponentModel();
  v52 = *(v122 - 8);
  __chkstk_darwin(v122);
  v141 = &v113 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2C2048();
  v143 = *(v54 - 8);
  v144 = v54;
  v55 = __chkstk_darwin(v54);
  v57 = &v113 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v59 = &v113 - v58;
  v60 = a1[3];
  v61 = a1[4];
  v62 = sub_72084(a1, v60);
  __chkstk_darwin(v62);
  v64 = &v113 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v65 + 16))(v64);
  sub_91668(v157, v179);
  v66 = v158;

  v157 = v59;
  v67 = v66;
  v68 = v159;
  result = SeriesQuickActionButtonViewModel.init<A>(for:seriesPromotionState:with:)(v64, v179, v67, v60, v61, v59);
  if (!v68)
  {
    v159 = 0;
    sub_691F8(a1, v179);
    (*(v143 + 16))(v57, v157, v144);
    v119 = sub_2C5018();
    v70 = *(v119 - 8);
    v71 = *(v70 + 56);
    v72 = v70 + 56;
    (v71)(v51, 1, 1, v119);
    v117 = v72;
    v118 = v71;
    sub_6620C(&unk_3BD1A0);
    sub_2C4DB8();
    v73 = v141;
    SeriesRoomHeaderComponentModel.init(series:quickActionButtonViewModel:impressionMetrics:localizerForAnalytics:)(v179, v57, v51, v177, v141);
    memset(v179, 0, 40);
    sub_6620C(&qword_3C9750);
    v74 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v75 = swift_allocObject();
    v113 = v75;
    *(v75 + 16) = xmmword_2E3F30;
    sub_28F990(v73, v75 + v74, type metadata accessor for SeriesRoomHeaderComponentModel);
    v76 = sub_2C0A78();
    (*(*(v76 - 8) + 56))(v162, 1, 1, v76);
    (v71)(v160, 1, 1, v119);
    v115 = sub_2C22F8();
    v77 = *(v115 - 8);
    v114 = *(v77 + 56);
    v116 = v77 + 56;
    (v114)(v161, 1, 1, v115);
    sub_72084(a1, a1[3]);
    sub_2BF3C8();
    (*(v121 + 104))(v124, enum case for SectionType.unknown(_:), v123);
    (*(v126 + 104))(v125, enum case for SectionData.ComponentContained.topLockup(_:), v127);
    v78 = v140;
    v123 = 0x8000000000308170;
    sub_2BEA08();
    v79 = sub_2BEA28();
    (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
    (*(v130 + 13))(v129, enum case for ShelfBackgroundViewModel.BackgroundKind.none(_:), v131);
    v80 = v146;
    sub_2C1B68();
    sub_2C1CC8();
    sub_2C1C78();
    v81 = sub_2BFE68();
    (*(*(v81 - 8) + 56))(v163, 1, 1, v81);
    v126 = sub_2C0E58();
    v82 = *(v126 - 8);
    v125 = *(v82 + 56);
    v127 = v82 + 56;
    (v125)(v164, 1, 1, v126);
    v178 = 0;
    memset(v177, 0, sizeof(v177));
    sub_6932C(v179, v176, &qword_3BE008);
    sub_28F9F8(&qword_3BD428, type metadata accessor for SeriesRoomHeaderComponentModel);
    sub_6932C(v162, v128, &qword_3C2AB0);
    sub_2C0A88();
    v158 = sub_28F0D4(v113, type metadata accessor for SeriesRoomHeaderComponentModel, type metadata accessor for SeriesRoomHeaderComponentModel, &qword_3BD428, &protocol conformance descriptor for SeriesRoomHeaderComponentModel);

    sub_6932C(v160, v145, &qword_3BDF58);
    sub_6932C(v161, v147, &qword_3C1730);
    sub_6932C(v78, v155, &qword_3BDE70);
    (*(v150 + 16))(v148, v80, v156);
    (*(v138 + 16))(v149, v165, v139);
    (*(v142 + 16))(v151, v180, v154);
    v83 = type metadata accessor for ContentUnavailableComponentModel();
    v84 = *(*(v83 - 8) + 56);
    v85 = v135;
    (v84)(v135, 1, 1, v83);
    v86 = v137;
    sub_6932C(v163, v137, &qword_3C1C70);
    sub_6932C(v164, v152, &qword_3C2AC0);
    sub_6932C(v177, v174, &qword_3C2AC8);
    v87 = v136;
    v88 = v132;
    v128 = &v132[*(v136 + 32)];
    v118();
    v129 = &v88[v87[9]];
    v114();
    v130 = &v88[v87[16]];
    v84();
    v131 = &v88[v87[18]];
    (v125)();
    v89._rawValue = v158;
    v90 = v159;
    sub_2C0AB8(v89);
    v91 = v88;
    v92 = v155;
    v93 = v156;
    v159 = v90;
    if (v90)
    {

      sub_69198(v174, &qword_3C2AC8);
      sub_69198(v152, &qword_3C2AC0);
      sub_69198(v86, &qword_3C1C70);
      sub_69198(v85, &qword_3C1A00);
      v158 = *(v142 + 8);
      v94 = v154;
      (v158)(v151, v154);
      v95 = v139;
      v152 = *(v138 + 8);
      v152(v149, v139);
      v96 = *(v150 + 8);
      v96(v148, v93);
      sub_69198(v92, &qword_3BDE70);
      sub_69198(v147, &qword_3C1730);
      sub_69198(v145, &qword_3BDF58);
      (*(v133 + 8))(v153, v134);
      sub_69198(v176, &qword_3BE008);
      sub_69198(v177, &qword_3C2AC8);
      sub_69198(v164, &qword_3C2AC0);
      sub_69198(v163, &qword_3C1C70);
      (v158)(v180, v94);
      v152(v165, v95);
      v96(v146, v93);
      sub_69198(v140, &qword_3BDE70);
      sub_69198(v161, &qword_3C1730);
      sub_69198(v160, &qword_3BDF58);
      sub_69198(v162, &qword_3C2AB0);
      sub_69198(v179, &qword_3BE008);
      sub_28FA40(v141, type metadata accessor for SeriesRoomHeaderComponentModel);
      (*(v143 + 8))(v157, v144);
      sub_69198(v128, &qword_3BDF58);
      sub_69198(v129, &qword_3C1730);
      sub_69198(v130, &qword_3C1A00);
      return sub_69198(v131, &qword_3C2AC0);
    }

    else
    {
      v97 = v163;
      v98 = v164;
      v100 = v138;
      v99 = v139;
      v101 = v142;
      v102 = v154;
      *v91 = 0xD000000000000012;
      *(v91 + 8) = v123;
      sub_6932C(v176, &v168, &qword_3BE008);
      if (*(&v169 + 1))
      {
        sub_69198(v176, &qword_3BE008);
        sub_69198(v177, &qword_3C2AC8);
        sub_69198(v98, &qword_3C2AC0);
        sub_69198(v97, &qword_3C1C70);
        (*(v101 + 8))(v180, v102);
        v103 = v100;
        v104 = v99;
        (*(v100 + 8))(v165, v99);
        v105 = v150;
        v106 = v156;
        (*(v150 + 8))(v146, v156);
        sub_69198(v140, &qword_3BDE70);
        sub_69198(v161, &qword_3C1730);
        sub_69198(v160, &qword_3BDF58);
        sub_69198(v162, &qword_3C2AB0);
        sub_69198(v179, &qword_3BE008);
        sub_28FA40(v141, type metadata accessor for SeriesRoomHeaderComponentModel);
        (*(v143 + 8))(v157, v144);
        v171 = v168;
        v172 = v169;
        v173 = v170;
        v107 = v120;
      }

      else
      {
        v166 = 0xD000000000000012;
        v167 = v123;
        sub_2C61A8();
        sub_69198(v176, &qword_3BE008);
        sub_69198(v177, &qword_3C2AC8);
        sub_69198(v98, &qword_3C2AC0);
        sub_69198(v97, &qword_3C1C70);
        (*(v101 + 8))(v180, v102);
        v103 = v100;
        v104 = v99;
        (*(v100 + 8))(v165, v99);
        v105 = v150;
        v106 = v156;
        (*(v150 + 8))(v146, v156);
        sub_69198(v140, &qword_3BDE70);
        sub_69198(v161, &qword_3C1730);
        sub_69198(v160, &qword_3BDF58);
        sub_69198(v162, &qword_3C2AB0);
        sub_69198(v179, &qword_3BE008);
        sub_28FA40(v141, type metadata accessor for SeriesRoomHeaderComponentModel);
        (*(v143 + 8))(v157, v144);
        v107 = v120;
        if (*(&v169 + 1))
        {
          sub_69198(&v168, &qword_3BE008);
        }
      }

      v108 = v136;
      v109 = v91 + *(v136 + 40);
      v110 = v172;
      *v109 = v171;
      *(v109 + 16) = v110;
      *(v109 + 32) = v173;
      *(v91 + v108[11]) = 0;
      *(v91 + 16) = 1;
      (*(v133 + 32))(v91 + v108[6], v153, v134);
      *(v91 + v108[17]) = v158;
      *(v91 + v108[7]) = 0;
      sub_A9708(v145, v128, &qword_3BDF58);
      sub_A9708(v147, v129, &qword_3C1730);
      sub_69130(v155, v91 + v108[20], &qword_3BDE70);
      (*(v105 + 32))(v91 + v108[13], v148, v106);
      (*(v103 + 32))(v91 + v108[14], v149, v104);
      (*(v101 + 32))(v91 + v108[15], v151, v154);
      sub_A9708(v135, v130, &qword_3C1A00);
      sub_69130(v137, v91 + v108[12], &qword_3C1C70);
      sub_A9708(v152, v131, &qword_3C2AC0);
      v111 = v91 + v108[19];
      v112 = v174[1];
      *v111 = v174[0];
      *(v111 + 16) = v112;
      *(v111 + 32) = v175;
      return sub_1669F0(v91, v107);
    }
  }

  return result;
}

void *sub_28F0D4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  v20[1] = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  v12 = *(a1 + 16);
  v13 = &_swiftEmptyArrayStorage;
  if (v12)
  {
    v24 = &_swiftEmptyArrayStorage;
    sub_64698(0, v12, 0);
    v13 = v24;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_28F990(v14, v11, a3);
      v24 = v13;
      v17 = v13[2];
      v16 = v13[3];
      if (v17 >= v16 >> 1)
      {
        sub_64698((v16 > 1), v17 + 1, 1);
        v13 = v24;
      }

      v22 = v8;
      v23 = sub_28F9F8(a4, a3);
      v18 = sub_720C8(&v21);
      sub_28F990(v11, v18, a3);
      v13[2] = v17 + 1;
      sub_68D1C(&v21, &v13[5 * v17 + 4]);
      sub_28FA40(v11, a3);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

void *sub_28F28C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_64848(0, v1, 0);
    v3 = a1 + 40;
    do
    {

      sub_6620C(&qword_3C9758);
      sub_6620C(&qword_3BC008);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_64848((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[2 * v5];
      *(v6 + 32) = v8;
      v6[5] = v9;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_28F3C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_64698(0, v1, 0);
    v4 = a1 + 32;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      sub_691F8(v4, v16);
      sub_6620C(&qword_3BC1D8);
      sub_6620C(&qword_3BC278);
      swift_dynamicCast();
      v20 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_64698((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_8C564(v17, v18);
      v10 = __chkstk_darwin(v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_24EE68(v6, v12, &v20, v7, v8);
      sub_68CD0(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_28F5A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_64A34(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_14B0F0(v4, v11);
      sub_6620C(&qword_3BC1A8);
      sub_6620C(&qword_3BC028);
      swift_dynamicCast();
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_64A34((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[6 * v6];
      v8 = v12;
      v9 = v14;
      v7[3] = v13;
      v7[4] = v9;
      v7[2] = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_28F6E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_64A54(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_691F8(v4, v8);
      sub_6620C(&qword_3BC408);
      sub_6620C(&qword_3BC490);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_64A54((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_68D1C(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_28F818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_64AD4(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      sub_6620C(&qword_3BC208);
      sub_6620C(&qword_3BC1F8);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_64AD4((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_28F990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_28F9F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_28FA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_28FAC0()
{
  result = qword_3BD308;
  if (!qword_3BD308)
  {
    type metadata accessor for SeriesSeeAllPageIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BD308);
  }

  return result;
}

uint64_t type metadata accessor for SeriesSeeAllPageIntent()
{
  result = qword_3C97B8;
  if (!qword_3C97B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_28FB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2BF738();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2C21F8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_28FCD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_2BF738();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2C21F8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_28FDF4()
{
  result = sub_7848C();
  if (v1 <= 0x3F)
  {
    result = sub_2BF738();
    if (v2 <= 0x3F)
    {
      result = sub_2C21F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_28FE98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for CodeGridItemViewModel();
  __chkstk_darwin(v32);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v35 = sub_6620C(&qword_3C98B0);
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v28 - v8;
  v10 = type metadata accessor for GridItemComponentModel();
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v39 = v12 + 40;
  sub_A9708(&v40, (v12 + 40), &unk_3BDC90);
  v13 = *(v10 + 24);
  v14 = sub_2C5018();
  v15 = *(*(v14 - 8) + 56);
  v37 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v38 = a1;
  sub_72084(a1, v16);
  sub_290F28();
  v34 = v9;
  v17 = v36;
  sub_2C67A8();
  if (v17)
  {
    v18 = v37;
    sub_68CD0(v38);
    sub_69198(v39, &qword_3BE370);
    return sub_69198(&v12[v18], &qword_3BF898);
  }

  else
  {
    v36 = v7;
    v29 = v10;
    v30 = v4;
    sub_6620C(&qword_3BE378);
    v43 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378);
    sub_2C64A8();
    v19 = v41;
    *v12 = v40;
    *(v12 + 1) = v19;
    *(v12 + 4) = v42;
    sub_6620C(&qword_3BE370);
    v43 = 1;
    v20 = v35;
    sub_72B74(&qword_3BE398, &qword_3BE370);
    v21 = v34;
    sub_2C64A8();
    v22 = v37;
    sub_A9708(&v40, v39, &qword_3BE370);
    LOBYTE(v40) = 2;
    sub_F2F40();
    v23 = v36;
    sub_2C64A8();
    v24 = v33;
    sub_A9708(v23, &v12[v22], &qword_3BF898);
    LOBYTE(v40) = 3;
    sub_290F7C(&qword_3C2408, type metadata accessor for CodeGridItemViewModel);
    v25 = v24;
    v26 = v30;
    sub_2C64A8();
    (*(v25 + 8))(v21, v20);
    sub_290FC4(v26, &v12[*(v29 + 28)]);
    sub_291028(v12, v31, type metadata accessor for GridItemComponentModel);
    sub_68CD0(v38);
    return sub_291090(v12);
  }
}

unint64_t sub_290430()
{
  v1 = 25705;
  if (*v0)
  {
    v1 = 0x6575676573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2904A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_291204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2904CC(uint64_t a1)
{
  v2 = sub_290F28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_290508(uint64_t a1)
{
  v2 = sub_290F28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_29055C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898);
  return sub_E1DC8(v7, a2);
}

uint64_t sub_29060C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2C1948();
  v2 = enum case for ShelfGridLayout.vertical(_:);
  v3 = sub_2BFD68();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_290690(uint64_t a1)
{
  v3 = type metadata accessor for CodeGridItemViewModel();
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C11F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_291028(v1 + *(a1 + 28), v5, type metadata accessor for CodeGridItemViewModel);
  (*(v7 + 32))(v9, v5, v6);
  sub_2C11B8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2907F4()
{
  sub_6620C(&qword_3BC020);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2E3F30;
  *(v0 + 56) = sub_2BECC8();
  *(v0 + 64) = sub_290F7C(&qword_3BF440, &type metadata accessor for ContentExposureData);
  *(v0 + 72) = sub_290F7C(&qword_3BF448, &type metadata accessor for ContentExposureData);
  sub_720C8((v0 + 32));
  sub_2BEC98();
  return v0;
}

uint64_t sub_2908C8(uint64_t a1)
{
  v3 = type metadata accessor for CodeGridItemViewModel();
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2C11F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_291028(v1 + *(a1 + 28), v5, type metadata accessor for CodeGridItemViewModel);
  (*(v7 + 32))(v9, v5, v6);
  sub_2C11D8();
  (*(v7 + 8))(v9, v6);
  sub_72084(v13, v13[3]);
  v10 = sub_2BF3B8();
  sub_68CD0(v13);
  return v10;
}

uint64_t sub_290A5C(uint64_t a1)
{
  v2 = sub_290F7C(&qword_3C9808, type metadata accessor for GridItemComponentModel);

  return LibraryAssetStateRequiring.assetIDsToObserveState.getter(a1, v2);
}

uint64_t type metadata accessor for GridItemComponentModel()
{
  result = qword_3C9868;
  if (!qword_3C9868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_290BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BF898);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CodeGridItemViewModel();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_290CFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BF898);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CodeGridItemViewModel();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_290E2C()
{
  sub_A62E4();
  if (v0 <= 0x3F)
  {
    sub_A6360();
    if (v1 <= 0x3F)
    {
      sub_F370C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CodeGridItemViewModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_290F28()
{
  result = qword_3C98B8;
  if (!qword_3C98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C98B8);
  }

  return result;
}

uint64_t sub_290F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_290FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodeGridItemViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_291028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_291090(uint64_t a1)
{
  v2 = type metadata accessor for GridItemComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_291100()
{
  result = qword_3C98C0;
  if (!qword_3C98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C98C0);
  }

  return result;
}

unint64_t sub_291158()
{
  result = qword_3C98C8;
  if (!qword_3C98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C98C8);
  }

  return result;
}

unint64_t sub_2911B0()
{
  result = qword_3C98D0;
  if (!qword_3C98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C98D0);
  }

  return result;
}

uint64_t sub_291204(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000000303DD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t View.observeReachability()()
{
  v0 = type metadata accessor for ObserveReachabilityViewModifier();
  __chkstk_darwin(v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_2C5888();
  sub_2C5EB8();

  v5 = &v2[*(v0 + 20)];
  v8[15] = [objc_opt_self() isOffline] ^ 1;
  sub_2C4368();
  v6 = v9;
  *v5 = v8[16];
  *(v5 + 1) = v6;
  sub_2C40E8();
  return sub_291518(v2);
}

uint64_t type metadata accessor for ObserveReachabilityViewModifier()
{
  result = qword_3C9930;
  if (!qword_3C9930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_291518(uint64_t a1)
{
  v2 = type metadata accessor for ObserveReachabilityViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_291574()
{
  type metadata accessor for ObserveReachabilityViewModifier();
  sub_2C2A08();
  sub_2915E0();
  return swift_getWitnessTable();
}

unint64_t sub_2915E0()
{
  result = qword_3C1DD8;
  if (!qword_3C1DD8)
  {
    type metadata accessor for ObserveReachabilityViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1DD8);
  }

  return result;
}

uint64_t sub_29164C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2C5EA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_29172C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2C5EA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2917E8()
{
  sub_2C5EA8();
  if (v0 <= 0x3F)
  {
    sub_D6DE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_291888()
{
  [objc_opt_self() isOffline];
  type metadata accessor for ObserveReachabilityViewModifier();
  sub_6620C(&qword_3BFC48);
  return sub_2C4388();
}

uint64_t sub_291914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 - 8;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  sub_291B2C(v3, &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_291C7C(&v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v11 = sub_6620C(&qword_3C9968);
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  v12 = sub_6620C(&qword_3C9970);
  v13 = *(v12 + 52);
  v14 = sub_2C5EA8();
  (*(*(v14 - 8) + 16))(a3 + v13, v3, v14);
  v15 = (a3 + *(v12 + 56));
  *v15 = sub_291CE0;
  v15[1] = v10;
  KeyPath = swift_getKeyPath();
  v17 = v3 + *(v6 + 28);
  v18 = *v17;
  v19 = *(v17 + 8);
  v23[16] = v18;
  v24 = v19;
  sub_6620C(&qword_3BFC48);
  sub_2C4378();
  v20 = v23[15];
  result = sub_6620C(&qword_3C9978);
  v22 = a3 + *(result + 36);
  *v22 = KeyPath;
  *(v22 + 8) = v20;
  return result;
}

uint64_t sub_291B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserveReachabilityViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_291B90()
{
  v1 = *(type metadata accessor for ObserveReachabilityViewModifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2C5EA8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_291C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObserveReachabilityViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_291CE0()
{
  type metadata accessor for ObserveReachabilityViewModifier();

  return sub_291888();
}

uint64_t sub_291D50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2C2BB8();
  *a1 = result & 1;
  return result;
}

unint64_t sub_291DAC()
{
  result = qword_3C9980;
  if (!qword_3C9980)
  {
    sub_718D4(&qword_3C9978);
    sub_72B74(&qword_3C9988, &qword_3C9970);
    sub_72B74(&qword_3C1B30, &qword_3C1B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9980);
  }

  return result;
}

uint64_t sub_291EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2C65B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_291F44(uint64_t a1)
{
  v2 = sub_292990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_291F80(uint64_t a1)
{
  v2 = sub_292990();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_291FDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_29280C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_292008@<X0>(unint64_t *a1@<X8>)
{
  sub_2924E4();
  result = sub_2C5B88();
  if (!v1)
  {
    sub_6620C(&qword_3C9998);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2E3F30;
    *(inited + 32) = 0x6E656D6D6F636572;
    *(inited + 40) = 0xEF736E6F69746164;
    v5 = sub_72084(v11, v11[3]);
    v6 = __chkstk_darwin(v5);
    (*(v8 + 16))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
    sub_2C54B8();
    v9 = sub_68AD8(inited);
    swift_setDeallocating();
    sub_292538(inited + 32);
    a1[3] = sub_6620C(&qword_3C2C70);
    a1[4] = sub_2925A0(&qword_3C2C78, &qword_3C2C70);
    *a1 = v9;
    return sub_68CD0(v11);
  }

  return result;
}

uint64_t sub_2921F8()
{
  if (*v0)
  {
    return 0x44496D616461;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_292228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2C65B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2C65B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_292300(uint64_t a1)
{
  v2 = sub_292ABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_29233C(uint64_t a1)
{
  v2 = sub_292ABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_292378@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_292628(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2923A8@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_6620C(&unk_3C44C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E15C0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 64) = 0x44496D616461;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v6;
  *(inited + 88) = v5;

  v8 = sub_677B4(inited);
  swift_setDeallocating();
  sub_6620C(&qword_3BD8A0);
  swift_arrayDestroy();
  a1[3] = sub_6620C(&qword_3BD8A8);
  result = sub_2925A0(&qword_3BD8B0, &qword_3BD8A8);
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_2924E4()
{
  result = qword_3C9990;
  if (!qword_3C9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9990);
  }

  return result;
}

uint64_t sub_292538(uint64_t a1)
{
  v2 = sub_6620C(&qword_3BC038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2925A0(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_292628(void *a1)
{
  v3 = sub_6620C(&qword_3C99C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_72084(a1, a1[3]);
  sub_292ABC();
  sub_2C67A8();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_2C6468();
    v10 = 1;
    sub_2C6468();
    (*(v4 + 8))(v6, v3);
  }

  sub_68CD0(a1);
  return v7;
}

void *sub_29280C(void *a1)
{
  v3 = sub_6620C(&qword_3C99A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_72084(a1, a1[3]);
  sub_292990();
  sub_2C67A8();
  if (v1)
  {
    sub_68CD0(a1);
  }

  else
  {
    sub_6620C(&qword_3C99B0);
    sub_2929E4();
    sub_2C64A8();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_68CD0(a1);
  }

  return v7;
}

unint64_t sub_292990()
{
  result = qword_3C99A8;
  if (!qword_3C99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C99A8);
  }

  return result;
}

unint64_t sub_2929E4()
{
  result = qword_3C99B8;
  if (!qword_3C99B8)
  {
    sub_718D4(&qword_3C99B0);
    sub_292A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C99B8);
  }

  return result;
}

unint64_t sub_292A68()
{
  result = qword_3C99C0;
  if (!qword_3C99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C99C0);
  }

  return result;
}

unint64_t sub_292ABC()
{
  result = qword_3C99D0;
  if (!qword_3C99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C99D0);
  }

  return result;
}

unint64_t sub_292B34()
{
  result = qword_3C99D8;
  if (!qword_3C99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C99D8);
  }

  return result;
}

unint64_t sub_292B8C()
{
  result = qword_3C99E0;
  if (!qword_3C99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C99E0);
  }

  return result;
}

unint64_t sub_292BE4()
{
  result = qword_3C99E8;
  if (!qword_3C99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C99E8);
  }

  return result;
}

unint64_t sub_292C3C()
{
  result = qword_3C99F0;
  if (!qword_3C99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C99F0);
  }

  return result;
}

unint64_t sub_292C94()
{
  result = qword_3C99F8;
  if (!qword_3C99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C99F8);
  }

  return result;
}

unint64_t sub_292CEC()
{
  result = qword_3C9A00;
  if (!qword_3C9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9A00);
  }

  return result;
}

double sub_292D40@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_299354(&qword_3BFB38, type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel);
  sub_2BE6F8();

  result = *(v3 + 48);
  v5 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v5;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_292DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_D5240(v3);
}

uint64_t sub_292E80@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_292F5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  *a2 = *(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__objectGraph);
}

uint64_t sub_29303C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  v4 = OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__assetInfo;
  swift_beginAccess();
  return sub_E452C(v3 + v4, a2);
}

uint64_t sub_293104(uint64_t a1)
{
  sub_E452C(a1, v2);
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6E8();

  return sub_69198(v2, &unk_3C2550);
}

uint64_t sub_293230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  *a2 = *(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__engagementWTRModel);
}

uint64_t sub_2932E4()
{
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6E8();
}

double sub_2933B0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  result = *(v3 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight);
  *a2 = result;
  return result;
}

unint64_t sub_293488(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_6620C(&qword_3BC018);
    v2 = sub_2C63C8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_68CC0(&v22, v24);
        sub_68CC0(v24, v25);
        sub_68CC0(v25, &v23);
        result = sub_5D228(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_68CD0(v11);
          result = sub_68CC0(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_68CC0(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2936E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_6620C(&qword_3BC1E0);
    v2 = sub_2C63C8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_68C64(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_68CC0(v33, v32);
    sub_6620C(&qword_3C4900);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_68CC0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_68CC0(v31, v32);
    result = sub_2C6188(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_68CC0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2939DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_6620C(&qword_3BC1E0);
    v2 = sub_2C63C8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_68D34(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_68CC0(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_68CC0(v35, v24);
    result = sub_2C6188(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_68CC0(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id CardAuxiliaryNavigationBarManager.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___BSUICardAuxiliaryNavigationBarManager_pendingClosures] = _swiftEmptyArrayStorage;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardAuxiliaryNavigationBarManager();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_293DB0(uint64_t a1, char a2)
{
  *(v3 + 97) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  sub_2C5C18();
  *(v3 + 40) = sub_2C5C08();
  v5 = sub_2C5BB8();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return _swift_task_switch(sub_293E4C, v5, v4);
}

uint64_t sub_293E4C()
{
  UIViewController.jetActionHandlerInContext.getter();
  v2 = v1;
  ObjectType = swift_getObjectType();
  *(v0 + 64) = (*(v2 + 8))(ObjectType, v2);
  swift_unknownObjectRelease();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_293F6C;

  return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
}

uint64_t sub_293F6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_2942B4;
  }

  else
  {
    v4[11] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_294094;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_294094()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 24);

  sub_6620C(&qword_3BC330);
  sub_2C4968();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2E3F30;
  *(v0 + 96) = v1;
  sub_2C4958();
  *(v0 + 16) = v3;
  sub_6620C(&unk_3BD220);
  sub_72B74(&qword_3BCE60, &unk_3BD220);
  v4 = sub_2C4DF8();

  v5 = [v2 triggerStateManager];
  v6 = objc_allocWithZone(type metadata accessor for CardAuxiliaryNavigationBarViewController(0));

  v7 = sub_294EEC(v5, v4);
  sub_294BF4(v7);

  swift_unknownObjectWeakAssign();
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_2942B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2944D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_2C5C18();
  *(v4 + 40) = sub_2C5C08();
  v6 = sub_2C5BB8();

  return _swift_task_switch(sub_294574, v6, v5);
}

uint64_t sub_294574()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_29463C;
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return sub_293DB0(v8, v7);
}

uint64_t sub_29463C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 48);
  if (v3)
  {
    v10 = sub_2BE348();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 48), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

void sub_2947F4(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2C4908();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_183EBC();
  *v9 = sub_2C5E88();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_2C4928();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    a1 = sub_5C998(0, *(a1 + 2) + 1, 1, a1);
    *(v3 + v6) = a1;
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    a1();

    return;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v6 = OBJC_IVAR___BSUICardAuxiliaryNavigationBarManager_pendingClosures;
  swift_beginAccess();
  a1 = *(v3 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v6) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = *(a1 + 2);
  v14 = *(a1 + 3);
  if (v15 >= v14 >> 1)
  {
    a1 = sub_5C998((v14 > 1), v15 + 1, 1, a1);
  }

  *(a1 + 2) = v15 + 1;
  v16 = (a1 + 16 * v15);
  v16[4] = sub_295518;
  v16[5] = v10;
  *(v3 + v6) = a1;
  swift_endAccess();
}

uint64_t sub_294A8C()
{
  v0 = sub_2C4908();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_183EBC();
  *v3 = sub_2C5E88();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_2C4928();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  __break(1u);
  return result;
}

uint64_t sub_294BF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2C4908();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_183EBC();
  *v7 = sub_2C5E88();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_2C4928();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = OBJC_IVAR___BSUICardAuxiliaryNavigationBarManager_pendingClosures;
    swift_beginAccess();
    v11 = *(v2 + v10);
    v12 = *(v11 + 16);

    if (!v12)
    {
LABEL_6:

      *(v2 + v10) = _swiftEmptyArrayStorage;
    }

    v13 = 0;
    v14 = v11 + 40;
    while (v13 < *(v11 + 16))
    {
      ++v13;
      v15 = *(v14 - 8);
      v16 = a1;

      v15(&v16);

      v14 += 16;
      if (v12 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id CardAuxiliaryNavigationBarManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardAuxiliaryNavigationBarManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_294E38()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_294E6C()
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_294EEC(void *a1, uint64_t a2)
{
  v37 = a1;
  v42 = type metadata accessor for CardAuxiliaryNavigationBarViewController.DependencyInjectionView(0);
  __chkstk_darwin(v42);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AssetActionImplementation();
  __chkstk_darwin(v39);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BD1B0);
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11 = type metadata accessor for NavigationProvider();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = qword_3C9A58;
  *(v2 + qword_3C9A58) = v12;
  sub_2C4DB8();
  sub_6620C(&qword_3BC330);
  sub_2C4968();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2E15C0;
  sub_6620C(&qword_3BCE30);
  v15 = *(v2 + v13);
  v45 = v11;
  v46 = &protocol witness table for NavigationProvider;
  v44 = v15;

  sub_2C4958();
  v16 = v38;
  sub_2BEF48();
  v17 = *(v43 + 16);
  v40 = v10;
  v18 = v10;
  v19 = v6;
  v17(v36, v18, v6);
  sub_299354(&unk_3BFEA0, type metadata accessor for AssetActionImplementation);
  sub_2C4EF8();
  v20 = v37;
  sub_29939C(v16, type metadata accessor for AssetActionImplementation);
  sub_2C4958();
  v44 = v14;
  sub_6620C(&unk_3BD220);
  sub_72B74(&qword_3BCE60, &unk_3BD220);
  v39 = a2;
  sub_2C4DF8();

  type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel();
  v21 = swift_allocObject();
  sub_2BE728();
  *(v21 + 48) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v22 = qword_3C9A50;
  *(v2 + qword_3C9A50) = v21;

  v24 = sub_13FB28(v23);

  v25 = qword_3C9A48;
  *(v2 + qword_3C9A48) = v24;
  if (v20)
  {
    v26 = v20;
    v27 = v24;
    v28 = sub_2C5888();
    [v26 addObserver:v27 forTrigger:v28];
  }

  *(v2 + qword_3C9A60) = 1;
  v29 = *(v2 + v25);
  v30 = *(v2 + v22);
  type metadata accessor for CardAuxiliaryNavigationBarViewModel();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  v31 = v29;

  v32 = v41;
  sub_2C45D8();
  *&v32[*(v42 + 20)] = v30;
  v33 = sub_2C3398();

  (*(v43 + 8))(v40, v19);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v33;
}

uint64_t sub_2954E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_295544()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_2C6378();
  __break(1u);
}

uint64_t sub_2955D0()
{
  swift_unknownObjectWeakDestroy();

  v1 = v0 + qword_3C9A68;

  return sub_77BF4(v1);
}

id sub_295640()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&v0[qword_3C9A48];
    v4 = sub_2C5888();
    [v2 removeObserver:v3 forTrigger:v4];
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for CardAuxiliaryNavigationBarViewController(0);
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_295720(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();

  v2 = a1 + qword_3C9A68;

  return sub_77BF4(v2);
}

void sub_29579C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CardAuxiliaryNavigationBarViewController(0);
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    sub_2C3388();
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setUserInteractionEnabled:v0[qword_3C9A60]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29588C(void *a1)
{
  v1 = a1;
  sub_29579C();
}

uint64_t sub_295934@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v43[0] = type metadata accessor for CardAuxiliaryNavigationBarView(0);
  __chkstk_darwin(v43[0]);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_6620C(&qword_3C9B60) - 8;
  __chkstk_darwin(v44);
  v6 = v43 - v5;
  v46 = sub_6620C(&qword_3C9B68);
  __chkstk_darwin(v46);
  v45 = v43 - v7;
  v51 = sub_6620C(&qword_3C9B70);
  __chkstk_darwin(v51);
  v47 = v43 - v8;
  v49 = sub_6620C(&qword_3C9B78);
  __chkstk_darwin(v49);
  v48 = v43 - v9;
  sub_6620C(&qword_3C8EB8);
  sub_2C45B8();
  sub_2799A0(v4);
  sub_2C45B8();
  v10 = v53;
  swift_getKeyPath();
  v53 = v10;
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  sub_2BE6F8();

  v43[1] = sub_2C4E28();
  sub_299354(&qword_3C9B80, type metadata accessor for CardAuxiliaryNavigationBarView);
  sub_2C3AC8();

  sub_29939C(v4, type metadata accessor for CardAuxiliaryNavigationBarView);
  KeyPath = swift_getKeyPath();
  sub_2C45B8();
  v12 = v53;
  swift_getKeyPath();
  v53 = v12;
  sub_2BE6F8();

  sub_2BF028();
  sub_2C4D98();

  v13 = v53;
  v14 = &v6[*(sub_6620C(&qword_3C9B88) + 36)];
  *v14 = KeyPath;
  v14[1] = v13;
  sub_2C45B8();
  v15 = v53;
  swift_getKeyPath();
  v53 = v15;
  sub_2BE6F8();

  sub_2C4DB8();

  v16 = v53;
  v17 = swift_getKeyPath();
  v18 = &v6[*(sub_6620C(&qword_3C9B90) + 36)];
  *v18 = v17;
  v18[8] = v16;
  sub_2C45B8();
  v19 = v53;
  swift_getKeyPath();
  v53 = v19;
  sub_2BE6F8();

  v20 = swift_getKeyPath();
  sub_6620C(&qword_3BF730);
  v21 = v6;
  v22 = &v6[*(v44 + 44)];
  sub_2C5668();

  *v22 = v20;
  sub_2C45B8();
  v23 = v53;
  swift_getKeyPath();
  v53 = v23;
  sub_2BE6F8();

  sub_6620C(&qword_3BCE30);
  sub_2C4DB8();
  type metadata accessor for NavigationProvider();
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v27 = v6;
  v28 = v45;
  sub_298398(v27, v45);

  v29 = (v28 + *(v46 + 36));
  *v29 = v25;
  v29[1] = sub_12869C;
  v29[2] = v26;
  sub_69198(v21, &qword_3C9B60);
  sub_2C45B8();
  v30 = v52;
  swift_getKeyPath();
  v52 = v30;
  sub_2BE6F8();

  sub_298408();
  v31 = v47;
  sub_2C3B58();

  sub_69198(v28, &qword_3C9B68);
  v46 = swift_getKeyPath();
  v32 = (v31 + *(v51 + 36));
  sub_2C45B8();
  v33 = v52;
  swift_getKeyPath();
  v52 = v33;
  sub_2BE6F8();

  sub_6620C(&qword_3BD200);
  sub_2C4DB8();

  *v32 = v46;
  sub_2C45B8();
  v34 = v52;
  swift_getKeyPath();
  v52 = v34;
  sub_2BE6F8();

  sub_298768();
  v35 = v48;
  sub_2C3C58();

  sub_69198(v31, &qword_3C9B70);
  v36 = *(v2 + *(type metadata accessor for CardAuxiliaryNavigationBarViewController.DependencyInjectionView(0) + 20));
  sub_2C45B8();
  v37 = v52;
  swift_getKeyPath();
  v52 = v37;
  sub_2BE6F8();

  v38 = v37[OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isVibrant];

  v39 = v35 + *(v49 + 36);
  *v39 = v36;
  *(v39 + 8) = v38;
  v40 = *(type metadata accessor for CardAuxiliaryNavigationBarView.BackgroundViewModifier(0) + 24);
  *(v39 + v40) = swift_getKeyPath();
  sub_6620C(&unk_3C8530);
  swift_storeEnumTagMultiPayload();

  sub_2C45B8();
  v41 = v52;
  swift_getKeyPath();
  v52 = v41;
  sub_2BE6F8();

  sub_2988B0();
  sub_2C3C88();

  return sub_69198(v35, &qword_3C9B78);
}

double sub_296348(void *a1)
{
  swift_getKeyPath();
  sub_299354(&qword_3BFB38, type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel);
  v2 = a1;

  sub_2BE6F8();

  sub_2C5D98();
  v4 = v3;

  return v4;
}

id sub_296458(void *a1)
{
  v1 = a1;
  sub_29649C();
  v3 = v2;

  return v3;
}

void sub_29649C()
{
  v1 = v0;
  v2 = sub_13F354();

  v3 = sub_D5354();

  v4 = objc_allocWithZone(type metadata accessor for CardAuxiliaryNavigationBarViewController(0));
  v5 = v2;

  v6 = sub_298DE4(v5, v3);

  v7 = v6;
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v1 view];
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  [v10 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame:{v13, v15, v17, v19}];
  v20 = [v7 view];

  if (v20)
  {

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_296628(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_29667C(a3);
}

uint64_t sub_29667C(uint64_t result)
{
  v2 = *(v1 + qword_3C9A48);
  if (*(v2 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isParentCardOccluded) == (result & 1))
  {
    *(v2 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isParentCardOccluded) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
    sub_2BE6E8();
  }

  return result;
}

double sub_2967A0(char *a1)
{
  v2 = *&a1[qword_3C9A48];
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel);
  v3 = a1;
  sub_2BE6F8();

  v4 = *(v2 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__navigationBarHeight);

  return v4;
}

void sub_296878(void *a1, double a2)
{
  v3 = a1;
  sub_2968D0(a2);
}