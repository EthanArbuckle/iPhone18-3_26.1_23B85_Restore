uint64_t sub_100093E50()
{
  v26 = sub_100742284();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v1 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for FlowDestination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v25 = sub_10074ED34();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742CD4();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    memset(v27, 0, sizeof(v27));

    sub_1001362FC(v16, v27, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10000C8CC(v4, &unk_100925750);
    }

    else
    {
      sub_1000980F0(v4, v11, type metadata accessor for FlowDestination);
      sub_1000980F0(v11, v8, type metadata accessor for FlowDestination);
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v17 = sub_10000C518(&unk_100938E00);
        v18 = v25;
        (*(v12 + 32))(v14, &v8[*(v17 + 48)], v25);
        v19 = sub_100741264();
        (*(*(v19 - 8) + 8))(v8, v19);
        goto LABEL_9;
      }

      sub_100098158(v8, type metadata accessor for FlowDestination);
    }
  }

  sub_100747274();
  if (swift_dynamicCastClass())
  {

    sub_100747244();

    v18 = v25;
LABEL_9:
    sub_10000C518(&unk_100925780);
    sub_100752764();
    sub_100752D34();
    swift_getObjectType();
    sub_1007424E4();
    swift_getObjectType();
    sub_1007423D4();
    swift_unknownObjectRelease();
    v20 = sub_100742224();
    (*(v24 + 8))(v1, v26);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100746054();
      if (swift_dynamicCastClass())
      {
        v21 = sub_100746044();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_16:
        (*(v12 + 8))(v14, v18);
        v22 = v20 | v21;
        return v22 & 1;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v21 = 0;
    goto LABEL_16;
  }

  v22 = 0;
  return v22 & 1;
}

unint64_t sub_100094344()
{
  v1 = swift_isaMask & *v0;
  v103 = v0;
  v100 = v1;
  v2 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v85 - v3;
  v5 = sub_10074A304();
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin(v5);
  v96 = v6;
  v97 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = &v85 - v8;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v101 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v11 - 8);
  v94 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v85 - v14;
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = (&v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v104 = &v85 - v20;
  v21 = sub_10000C518(&unk_100925740);
  __chkstk_darwin(v21 - 8);
  v23 = &v85 - v22;
  v24 = sub_100749BC4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007435B4();
  v28 = v24;
  v29 = v25;
  if ((*(v25 + 48))(v23, 1, v28) == 1)
  {
    v30 = &unk_100925740;
    v31 = v23;
LABEL_6:
    sub_10000C8CC(v31, v30);
    return 0;
  }

  v92 = v4;
  (*(v25 + 32))(v27, v23, v28);
  v32 = sub_100749B84();
  v33 = v27;
  if (!v32)
  {
    (*(v25 + 8))(v27, v28);
    return 0;
  }

  v34 = v32;
  v35 = v29;
  v93 = v28;

  sub_100749BB4();
  sub_1001362FC(v34, v106, v15);
  v36 = *(v17 + 48);
  if (v36(v15, 1, v16) == 1)
  {
    (*(v29 + 8))(v33, v93);

    v30 = &unk_100925750;
    v31 = v15;
    goto LABEL_6;
  }

  v90 = v36;
  v37 = v104;
  sub_1000980F0(v15, v104, type metadata accessor for FlowDestination);
  v38 = v103;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_100098158(v37, type metadata accessor for FlowDestination);
    (*(v35 + 8))(v33, v93);
    return 0;
  }

  v86 = v35;
  v89 = v33;
  v91 = Strong;
  v40 = [Strong traitCollection];

  sub_100742C54();
  sub_100742C44();

  sub_1006C1C84(v102);
  v41 = sub_100618AD8();
  v87 = v34;
  v88 = v40;
  if (v41)
  {
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    v42 = *(v38 + qword_100925598);

    sub_10074EC44();
    v43 = v94;
    sub_1001362FC(v34, v105, v94);
    v44 = v90;
    if (v90(v43, 1, v16) == 1)
    {
      v45 = v95;
      swift_storeEnumTagMultiPayload();
      if (v44(v43, 1, v16) != 1)
      {
        sub_10000C8CC(v43, &unk_100925750);
      }
    }

    else
    {
      v45 = v95;
      sub_1000980F0(v43, v95, type metadata accessor for FlowDestination);
    }

    v48 = sub_100742C14();
    v50 = v49;
    v51 = v92;
    sub_100742C34();
    v46 = sub_100470520(v45, v40, v48, v50, v51, v106, v42, 1);

    sub_10000C8CC(v51, &qword_10092C1F0);
    sub_100098158(v45, type metadata accessor for FlowDestination);
    sub_10000C8CC(v106, &unk_100925760);
    if (!v46)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v46 = sub_100477ADC(v34, v40, *(v38 + qword_100925598));
    if (!v46)
    {
LABEL_33:
      v74 = v104;
      v75 = v89;
      v76 = v93;
      v61 = v91;
      v67 = v88;
LABEL_39:

      sub_100098158(v101, type metadata accessor for FlowPresentationHints);
      sub_100098158(v74, type metadata accessor for FlowDestination);
      (*(v86 + 8))(v75, v76);
      v77 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = v97;
      v80 = v98 + 32;
      v79 = *(v98 + 32);
      v81 = v99;
      v79(v97, v102, v99);
      v82 = (*(v80 + 48) + 48) & ~*(v80 + 48);
      v83 = swift_allocObject();
      v84 = v100;
      *(v83 + 2) = *(v100 + 80);
      *(v83 + 3) = *(v84 + 88);
      *(v83 + 4) = v77;
      *(v83 + 5) = v87;
      v79(&v83[v82], v78, v81);
      return v46;
    }
  }

  v52 = v46;
  ObjectType = swift_getObjectType();
  v54 = swift_conformsToProtocol2();
  v55 = v52;
  if (v54)
  {
    v56 = v54;
    (*(v54 + 16))(1, ObjectType, v54);
    v57 = *(v56 + 32);
    v58 = v91;
    v55 = v91;
    v57(v58, ObjectType, v56);
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (!v59)
  {
    goto LABEL_33;
  }

  v60 = v59;
  v61 = v52;
  v62 = [v60 viewControllers];
  sub_100016C60(0, &qword_10092B0C0);
  v63 = sub_1007532A4();

  if (!(v63 >> 62))
  {
    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v64)
    {
      goto LABEL_25;
    }

LABEL_37:

    v67 = v88;
    v75 = v89;
    v73 = v91;
LABEL_38:

    v74 = v104;
    v76 = v93;
    goto LABEL_39;
  }

  v64 = sub_100754664();
  if (!v64)
  {
    goto LABEL_37;
  }

LABEL_25:
  v65 = __OFSUB__(v64, 1);
  result = v64 - 1;
  if (v65)
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((v63 & 0xC000000000000001) != 0)
  {
LABEL_41:
    v66 = sub_100754574();
LABEL_30:
    v67 = v66;

    swift_getObjectType();
    v68 = swift_conformsToProtocol2();
    if (v68 && v67)
    {
      v69 = v68;
      v70 = swift_getObjectType();
      (*(v69 + 16))(1, v70, v69);
      v71 = *(v69 + 32);
      v72 = v91;
      v73 = v91;
      v71(v72, v70, v69);

      v67 = v88;
    }

    else
    {

      v73 = v61;
      v61 = v88;
    }

    v75 = v89;
    goto LABEL_38;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v66 = *(v63 + 8 * result + 32);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_100094E7C()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_10000C518(&unk_100925740);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_100749BC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007435B4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000C8CC(v4, &unk_100925740);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = sub_100749B84();
    (*(v6 + 8))(v8, v5);
    if (v9)
    {
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = *(v1 + 80);
      v11[3] = *(v1 + 88);
      v11[4] = v10;
      v11[5] = v9;
    }
  }

  return 0;
}

uint64_t sub_1000950C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = qword_100925598;
    v10 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {

      return sub_10000C8CC(v6, &unk_100923960);
    }

    else
    {
      v12 = *&v8[v9];

      sub_1003C1424(a3, 1, v12, v6);

      return (*(v11 + 8))(v6, v10);
    }
  }

  return result;
}

void sub_100095264(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v83 = a1;
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v80 = &v68 - v5;
  v75 = sub_100742CF4();
  v78 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007493D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10074A304();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v76 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v16 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = sub_10074F4D4();
  v20 = *(v19 - 1);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v69 = v8;
  v70 = v7;
  swift_getObjectType();
  v81 = &protocol descriptor for FlowPreviewingViewController;
  v23 = swift_conformsToProtocol2();
  if (v23 && v83)
  {
    v24 = v23;
    v25 = v19;
    v26 = v83;
    ObjectType = swift_getObjectType();
    v28 = v26;
    v29 = v22;
    v30 = *(v24 + 40);
    v31 = v28;
    v30(ObjectType, v24);
    v22 = v29;
    v19 = v25;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v34 = v83;
    v35 = [v33 viewControllers];
    sub_100016C60(0, &qword_10092B0C0);
    v36 = sub_1007532A4();

    if (v36 >> 62)
    {
      v37 = sub_100754664();
      if (v37)
      {
LABEL_8:
        v38 = __OFSUB__(v37, 1);
        v39 = v37 - 1;
        if (v38)
        {
          __break(1u);
        }

        else if ((v36 & 0xC000000000000001) == 0)
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_48;
          }

          v40 = *(v36 + 8 * v39 + 32);
          goto LABEL_13;
        }

        v40 = sub_100754574();
LABEL_13:
        v41 = v40;

        swift_getObjectType();
        v42 = swift_conformsToProtocol2();
        if (v42 && v41)
        {
          v43 = v42;
          v44 = swift_getObjectType();
          (*(v43 + 40))(v44, v43);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_19:
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.viewController(_:), v19);
  v45 = sub_100741264();
  (*(*(v45 - 8) + 56))(v18, 1, 1, v45);
  v46 = sub_100743FE4();
  (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
  v68 = sub_100016C60(0, &qword_10092B0C0);
  v85 = v68;
  v84 = v83;
  v47 = v83;
  sub_1007525F4();
  (*(v74 + 16))(v77, v79, v72);
  (*(v69 + 104))(v71, enum case for FlowAnimationBehavior.infer(_:), v70);
  (*(v78 + 104))(v73, enum case for FlowOrigin.inapp(_:), v75);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v48 = sub_100742C84();
  v49 = qword_100925598;
  v50 = sub_10000C518(&unk_100923210);
  v51 = v80;
  sub_1007526C4();
  v52 = *(v50 - 8);
  if ((*(v52 + 48))(v51, 1, v50) == 1)
  {
    sub_10000C8CC(v51, &unk_100923960);
  }

  else
  {
    v53 = *&Strong[v49];

    sub_1003C1424(v48, 1, v53, v51);

    (*(v52 + 8))(v51, v50);
  }

  swift_getObjectType();
  v54 = swift_conformsToProtocol2();
  if (v54 && v83)
  {
    v55 = v54;
    v56 = swift_getObjectType();
    (*(v55 + 48))(v56, v55);
  }

  objc_opt_self();
  v57 = swift_dynamicCastObjCClass();
  if (!v57)
  {

LABEL_40:

    return;
  }

  v58 = v57;
  v19 = v47;
  v59 = [v58 viewControllers];
  v60 = sub_1007532A4();

  if (!(v60 >> 62))
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  v61 = sub_100754664();
  if (!v61)
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_28:
  v38 = __OFSUB__(v61, 1);
  v62 = v61 - 1;
  if (v38)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v60 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v63 = sub_100754574();
    goto LABEL_33;
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:
    __break(1u);
    return;
  }

  v63 = *(v60 + 8 * v62 + 32);
LABEL_33:
  v64 = v63;

  swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  if (v65)
  {
    if (v64)
    {
      v66 = v65;
      v67 = swift_getObjectType();
      (*(v66 + 48))(v67, v66);
    }
  }
}

uint64_t sub_100095CD0(uint64_t a1)
{

  sub_10000C4F0(a1 + qword_100925588);
  swift_unknownObjectWeakDestroy();
}

uint64_t sub_100095D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007417F4();
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

uint64_t sub_100095E48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1007417F4();
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

uint64_t type metadata accessor for PreviewItem()
{
  result = qword_1009256D8;
  if (!qword_1009256D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100095F4C()
{
  sub_1007417F4();
  if (v0 <= 0x3F)
  {
    sub_100096018(319, qword_1009256E8, &qword_100922300);
    if (v1 <= 0x3F)
    {
      sub_100096018(319, qword_1009288D0, &qword_100923500);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100096018(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100016C60(255, a3);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000960C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000C8CC(v7, &unk_100923960);
  }

  sub_1003C0E00(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

id sub_100096208(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_100096258(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100016C60(0, &qword_1009257B0);
  v2 = sub_1007532A4();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1000962E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10074ECB4();
  if (v11)
  {
    v12 = sub_10074ECC4();
    if (v12)
    {
      v13 = v12;
      if (sub_10074F1D4())
      {
        sub_100743AC4();
      }

      else if (sub_10074F1C4())
      {
        sub_10056028C(v13, 0);
      }
    }

    sub_100016B4C(a4, v18, &unk_100923520);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a7;
    *(v15 + 32) = a1;
    v16 = v18[1];
    *(v15 + 40) = v18[0];
    *(v15 + 56) = v16;
    v14 = sub_100753FF4();
    sub_10000C8CC(a4, &unk_100923520);
  }

  else
  {
    sub_10000C8CC(a4, &unk_100923520);

    swift_unknownObjectRelease();
    return 0;
  }

  return v14;
}

BOOL sub_1000964A4()
{
  v0 = sub_10074F4D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  sub_100742CD4();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  sub_100742C94();
  (*(v1 + 104))(v3, enum case for FlowPage.writeReview(_:), v0);
  sub_100098500();
  sub_100753274();
  sub_100753274();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {

    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);

    return 1;
  }

  v9 = sub_100754754();

  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);

  if (v9)
  {
    return 1;
  }

LABEL_7:
  sub_100747274();
  return swift_dynamicCastClass() != 0;
}

id sub_1000966EC(void *a1)
{
  v2 = v1;
  v4 = sub_1007417F4();
  v64 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100925730);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v67 = sub_1007435D4();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = v10;
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v58 - v12;
  v13 = sub_10000C518(&qword_100925728);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for PreviewItem();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v68 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 view];
  [a1 locationInView:v20];
  v22 = v21;
  v24 = v23;

  result = [a1 view];
  if (!result)
  {
    return result;
  }

  v26 = result;
  (*(v2 + qword_100925580))(v22, v24);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    v27 = &qword_100925728;
    v28 = v15;
    goto LABEL_9;
  }

  v61 = v2;
  v29 = v68;
  sub_1000980F0(v15, v68, type metadata accessor for PreviewItem);
  v30 = v64;
  (*(v64 + 2))(v6, v29, v4);
  v31 = *(v29 + *(v16 + 20));
  if (v31)
  {
    v32 = sub_100016C60(0, &qword_100922300);
    v33 = v31;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *(&aBlock + 1) = 0;
    *&v71 = 0;
  }

  v34 = v67;
  v35 = v65;
  *&aBlock = v33;
  *(&v71 + 1) = v32;
  v36 = v33;
  sub_1000925D4(&aBlock, v9);
  (*(v30 + 1))(v6, v4);
  sub_10000C8CC(&aBlock, &unk_100923520);
  if (v35[6](v9, 1, v34) == 1)
  {
    sub_100098158(v68, type metadata accessor for PreviewItem);

    v27 = &unk_100925730;
    v28 = v9;
LABEL_9:
    sub_10000C8CC(v28, v27);
    return 0;
  }

  v64 = v35[4];
  v64(v66, v9, v34);
  if (v31)
  {
    v37 = v36;
    [v26 convertPoint:v37 toCoordinateSpace:{v22, v24}];
    v38 = [v37 hitTest:0 withEvent:?];
    if (v38)
    {
      v60 = v37;
      v39 = v38;
      sub_100016C60(0, &qword_100922300);
      v59 = v39;
      do
      {
        v69 = v39;
        v40 = v39;
        sub_10000C518(&qword_1009257A0);
        if (swift_dynamicCast())
        {
          v41 = *(&v71 + 1);
          sub_10000C8CC(&aBlock, &qword_1009257A8);
          if (v41)
          {

            (*(v65 + 1))(v66, v67);
            sub_100098158(v68, type metadata accessor for PreviewItem);
            return 0;
          }
        }

        else
        {
          v72 = 0;
          aBlock = 0u;
          v71 = 0u;
          sub_10000C8CC(&aBlock, &qword_1009257A8);
        }

        v39 = [v40 superview];
      }

      while (v39);

      v34 = v67;
      v35 = v65;
      v37 = v60;
    }
  }

  v42 = v66;
  v43 = sub_10009294C();
  v45 = v44;
  v61 = v44;
  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v43;
  v48[3] = v45;
  v65 = v43;
  v48[4] = v47;
  v49 = v63;
  v35[2](v63, v42, v34);
  v50 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v51 = swift_allocObject();
  v64((v51 + v50), v49, v34);
  v64 = objc_opt_self();
  v72 = sub_10009863C;
  v73 = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v52 = v35;
  *&v71 = sub_100096208;
  *(&v71 + 1) = &unk_100865FF8;
  v53 = _Block_copy(&aBlock);
  v54 = v43;
  v55 = v61;
  sub_10009876C(v54, v61);

  v72 = sub_1000986FC;
  v73 = v51;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v71 = sub_100096258;
  *(&v71 + 1) = &unk_100866020;
  v56 = _Block_copy(&aBlock);

  v57 = [v64 configurationWithIdentifier:0 previewProvider:v53 actionProvider:v56];

  _Block_release(v56);
  _Block_release(v53);

  sub_1000980AC(v65, v55);
  v52[1](v66, v67);
  sub_100098158(v68, type metadata accessor for PreviewItem);
  return v57;
}

uint64_t sub_100096F68(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100925728);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PreviewItem();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 view];
  [a1 locationInView:v14];
  v16 = v15;
  v18 = v17;

  (*(v3 + qword_100925580))(v16, v18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000C8CC(v8, &qword_100925728);
  }

  sub_1000980F0(v8, v13, type metadata accessor for PreviewItem);
  sub_100092E04(v13);
  v20 = *&v13[*(v9 + 20)];
  if (v20)
  {
    ObjectType = swift_getObjectType();
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = *(v22 + 16);
      v24 = v22;
      v25 = v20;
      v23(a2, ObjectType, v24);
    }
  }

  return sub_100098158(v13, type metadata accessor for PreviewItem);
}

uint64_t sub_1000971C4(void *a1, uint64_t a2)
{
  v5 = sub_10000C518(&qword_100925728);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for PreviewItem();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 view];
  [a1 locationInView:v13];
  v15 = v14;
  v17 = v16;

  (*(v2 + qword_100925580))(v15, v17);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000C8CC(v7, &qword_100925728);
  }

  sub_1000980F0(v7, v12, type metadata accessor for PreviewItem);
  v19 = *&v12[*(v8 + 20)];
  if (v19)
  {
    ObjectType = swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (v21)
    {
      v22 = *(v21 + 24);
      v23 = v21;
      v24 = v19;
      v22(a2, ObjectType, v23);
    }
  }

  return sub_100098158(v12, type metadata accessor for PreviewItem);
}

uint64_t sub_100097410(void *a1, void *a2)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_1007417F4();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100925730);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_1007435D4();
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100925728);
  __chkstk_darwin(v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PreviewItem();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 view];
  [a1 locationInView:v21];
  v23 = v22;
  v25 = v24;

  (*(v3 + qword_100925580))(v23, v25);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_10000C8CC(v15, &qword_100925728);
  }

  sub_1000980F0(v15, v20, type metadata accessor for PreviewItem);
  v27 = v47;
  (*(v47 + 16))(v7, v20, v5);
  v28 = *&v20[*(v16 + 20)];
  if (v28)
  {
    v29 = sub_100016C60(0, &qword_100922300);
  }

  else
  {
    v29 = 0;
    v52 = 0;
    v53 = 0;
  }

  v30 = v49;
  aBlock = v28;
  v54 = v29;
  v31 = v28;
  sub_1000925D4(&aBlock, v10);
  (*(v27 + 8))(v7, v5);
  sub_10000C8CC(&aBlock, &unk_100923520);
  v32 = v50;
  if ((*(v30 + 48))(v10, 1, v50) == 1)
  {
    sub_100098158(v20, type metadata accessor for PreviewItem);
    return sub_10000C8CC(v10, &unk_100925730);
  }

  else
  {
    (*(v30 + 32))(v48, v10, v32);
    v33 = sub_10009294C();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    if (v35 && (v39 = v33, (Strong = v34) != 0) || (Strong = swift_unknownObjectWeakLoadStrong(), v36))
    {

      v41 = v38;
    }

    else
    {
      v41 = 0;
    }

    v42 = swift_allocObject();
    v42[2] = Strong;
    v42[3] = v36;
    v42[4] = v41;
    v55 = sub_100098088;
    v56 = v42;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1000CF7B0;
    v54 = &unk_100865EB8;
    v43 = _Block_copy(&aBlock);
    v44 = Strong;
    sub_10001B5AC(v36);

    [v46 addCompletion:v43];
    _Block_release(v43);
    sub_1000164A8(v36);

    sub_1000980AC(v34, v36);
    (*(v30 + 8))(v48, v32);
    return sub_100098158(v20, type metadata accessor for PreviewItem);
  }
}

id sub_1000979C0(void *a1)
{
  v3 = sub_10000C518(&qword_100925728);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for PreviewItem();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_100925580))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000C8CC(v5, &qword_100925728);
    return 0;
  }

  else
  {
    sub_1000980F0(v5, v10, type metadata accessor for PreviewItem);
    v17 = *&v10[*(v6 + 20)];
    if (v17)
    {
      v18 = objc_allocWithZone(UIPreviewParameters);
      v19 = v17;
      v20 = [v18 init];
      [v20 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v22 = swift_conformsToProtocol2();
      if (v22)
      {
        v23 = v22;
        v24 = *(v22 + 8);
        v25 = v19;
        v24(ObjectType, v23);
        v26 = (*(v23 + 40))(ObjectType, v23);
        if (v26)
        {
          v27 = v26;

          v25 = v27;
        }
      }

      else
      {
        v25 = v19;
      }

      v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v25 parameters:v20];

      sub_100098158(v10, type metadata accessor for PreviewItem);
      return v28;
    }

    else
    {
      sub_100098158(v10, type metadata accessor for PreviewItem);
      return 0;
    }
  }
}

id sub_100097CD4(void *a1)
{
  v3 = sub_10000C518(&qword_100925728);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for PreviewItem();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 view];
  [a1 locationInView:v11];
  v13 = v12;
  v15 = v14;

  (*(v1 + qword_100925580))(v13, v15);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000C8CC(v5, &qword_100925728);
  }

  else
  {
    sub_1000980F0(v5, v10, type metadata accessor for PreviewItem);
    v16 = *&v10[*(v6 + 20)];
    if (v16)
    {
      v17 = objc_allocWithZone(UIPreviewParameters);
      v18 = v16;
      v19 = [v17 init];
      [v19 setBackgroundColor:*&v10[*(v6 + 24)]];
      ObjectType = swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v21;
        v23 = *(v21 + 32);
        v24 = v18;
        v23(ObjectType, v22);
        v25 = (*(v22 + 40))(ObjectType, v22);
        if (v25)
        {
          v26 = v25;

          v24 = v26;
        }
      }

      else
      {
        v24 = v18;
      }

      v27 = [v24 window];
      if (v27)
      {

        v28 = [objc_allocWithZone(UITargetedPreview) initWithView:v24 parameters:v19];
        sub_100098158(v10, type metadata accessor for PreviewItem);
        return v28;
      }
    }

    sub_100098158(v10, type metadata accessor for PreviewItem);
  }

  return 0;
}

uint64_t sub_100098040()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100098094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000980AC(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1000980F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100098158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000981B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000981F0()
{
  v1 = sub_10074A304();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000982BC(void *a1)
{
  v3 = *(sub_10074A304() - 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_100095264(a1, v4, v5, v6);
}

uint64_t sub_100098344()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100098390(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000983D8()
{
  v1 = sub_10074B424();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

unint64_t sub_100098500()
{
  result = qword_100925790;
  if (!qword_100925790)
  {
    sub_10074F4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925790);
  }

  return result;
}

uint64_t sub_100098558()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_10000C620(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000985F4()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_10009863C()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_100098674()
{
  v1 = sub_1007435D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

UIMenu sub_1000986FC()
{
  sub_1007435D4();

  return sub_100092C64();
}

void *sub_10009876C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

id sub_1000989F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100098A60(uint64_t a1)
{
  v3 = sub_10074D3E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = sub_1007457B4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for ShelfBackground.color(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = *(sub_10000C518(&unk_100930940) + 48);
    v18 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29GradientSectionBackgroundView_gradientView);
    v19 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v20 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10000C518(&unk_1009231A0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007A7210;
    *(v21 + 32) = v16;
    *(v21 + 40) = v16;
    *&v18[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v21;
    v22 = v16;

    sub_100037ED0();

    v23 = sub_100748E34();
    return (*(*(v23 - 8) + 8))(v14 + v17, v23);
  }

  else if (v15 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v11 + 96))(v14, v10);
    v25 = *v14;
    v26 = sub_10000C518(&unk_100940620);
    v27 = v26[12];
    v28 = v26[16];
    v48 = v26[20];
    v29 = *(v4 + 32);
    v29(v9, v14 + v27, v3);
    v29(v6, v14 + v28, v3);
    v30 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29GradientSectionBackgroundView_gradientView);
    sub_10074D3D4();
    v32 = v31;
    v34 = v33;
    v35 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v32, v34}];

    sub_10074D3D4();
    v37 = v36;
    v39 = v38;
    v40 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v37, v39}];

    *&v30[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v25;

    sub_100037ED0();
    v41 = *(v4 + 8);
    v41(v6, v3);
    v41(v9, v3);
    v42 = sub_100748E34();
    return (*(*(v42 - 8) + 8))(v14 + v48, v42);
  }

  else
  {
    v43 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29GradientSectionBackgroundView_gradientView);
    v44 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v45 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10000C518(&unk_1009231A0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007A7210;
    sub_10000D198();
    *(v46 + 32) = sub_100753E04();
    *(v46 + 40) = sub_100753E04();
    *&v43[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v46;

    sub_100037ED0();
    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_1000990CC()
{
  result = qword_1009257F0;
  if (!qword_1009257F0)
  {
    sub_100747734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009257F0);
  }

  return result;
}

uint64_t sub_10009912C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HttpTemplateController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_textFields] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_okAction] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_hasRequiredParameters] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_templateAction] = a1;
  v6 = &v5[OBJC_IVAR____TtC22SubscribePageExtension22HttpTemplateController_actionSender];
  *v6 = 0u;
  v6[1] = 0u;
  v11.receiver = v5;
  v11.super_class = v4;

  v7 = objc_msgSendSuper2(&v11, "init");
  v8 = sub_1005D16BC(a2);
  v9 = sub_10052AD94(v8, 1, a2);

  return v9;
}

char *sub_10009920C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  sub_1007433C4();
  v11 = sub_1007431E4();
  sub_100746E74();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  sub_100743794();
  v14 = sub_100743784();
  v16 = sub_10071B540(v14, v15, UIFontTextStyleSubheadline);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v19 = sub_10074E984();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v5[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for MixedMediaLockupPlaceholderView();
  v20 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_smallLockupPlaceholder]];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];

  return v22;
}

uint64_t sub_100099428@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v72 = sub_100749E34();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v76 = v67 - v5;
  __chkstk_darwin(v6);
  v74 = v67 - v7;
  __chkstk_darwin(v8);
  v68 = v67 - v9;
  __chkstk_darwin(v10);
  v70 = v67 - v11;
  v12 = sub_10000C518(&qword_100934D90);
  __chkstk_darwin(v12 - 8);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v73 = v67 - v16;
  __chkstk_darwin(v17);
  v19 = v67 - v18;
  __chkstk_darwin(v20);
  v22 = v67 - v21;
  v23 = sub_10074E984();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v67[0] = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v67 - v27;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v30 = *(v24 + 16);
  v30(v28, &v2[v29], v23);
  v31 = (*(v24 + 88))(v28, v23);
  if (v31 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    v32 = v71;
    v33 = v72;
    (*(v71 + 56))(v22, 1, 1, v72);
    sub_10009A9B0(v22, v19);
    v34 = *(v32 + 48);
    v35 = v34(v19, 1, v33);
    v67[1] = v22;
    if (v35 == 1)
    {
      v36 = v70;
      (*(v32 + 104))(v70, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v33);
      v37 = v34(v19, 1, v33);
      v38 = v74;
      if (v37 != 1)
      {
        sub_10009AA20(v19);
      }
    }

    else
    {
      v36 = v70;
      (*(v32 + 32))(v70, v19, v33);
      v38 = v74;
    }

    v48 = *(v32 + 16);
    v49 = v68;
    v48(v68, v36, v33);
    v50 = (*(v32 + 88))(v49, v33);
    if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
    {
      if (qword_100920A88 != -1)
      {
        swift_once();
      }

      sub_10000C824(qword_10097FE28, v81);
    }

    else if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_100920A80 != -1)
      {
        swift_once();
      }

      sub_10000C824(qword_10097FE00, v81);
    }

    else
    {
      if (qword_100920A88 != -1)
      {
        swift_once();
      }

      sub_10000C824(qword_10097FE28, v81);
      (*(v32 + 8))(v49, v33);
    }

    v48(v38, v36, v33);
    sub_10000C824(v81, v80);
    sub_100016C60(0, &qword_100923AB0);
    if (qword_100921460 != -1)
    {
      swift_once();
    }

    v54 = sub_100750534();
    sub_10000D0FC(v54, qword_100981A58);
    v55 = [v2 traitCollection];
    sub_100753C14();

    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v56 = sub_100750B04();
    v57 = sub_10000D0FC(v56, qword_100982098);
    v78 = v56;
    v79 = &protocol witness table for StaticDimension;
    v58 = sub_10000D134(v77);
    (*(*(v56 - 8) + 16))(v58, v57, v56);
    sub_100749E54();
    sub_10000C620(v81);
    (*(v32 + 8))(v36, v33);
    v59 = &v82;
    return sub_10009AA20(*(v59 - 32));
  }

  v39 = v2;
  v40 = v72;
  if (v31 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    v41 = v39;
    v42 = v71;
    v43 = v73;
    (*(v71 + 56))(v73, 1, 1, v72);
    sub_10009A9B0(v43, v14);
    v44 = *(v42 + 48);
    if (v44(v14, 1, v40) == 1)
    {
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      (*(v42 + 104))(v76, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v40);
      if (v44(v14, 1, v40) != 1)
      {
        sub_10009AA20(v14);
      }

      v46 = v74;
      v47 = v76;
    }

    else
    {
      v47 = v76;
      (*(v42 + 32))(v76, v14, v40);
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v46 = v74;
    }

    v51 = *(v42 + 16);
    v52 = v69;
    v51(v69, v47, v40);
    v53 = (*(v42 + 88))(v52, v40);
    if (v53 == v45)
    {
      if (qword_100920A88 != -1)
      {
        swift_once();
      }

      sub_10000C824(qword_10097FE28, v81);
    }

    else if (v53 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_100920A80 != -1)
      {
        swift_once();
      }

      sub_10000C824(qword_10097FE00, v81);
    }

    else
    {
      if (qword_100920A88 != -1)
      {
        swift_once();
      }

      sub_10000C824(qword_10097FE28, v81);
      (*(v42 + 8))(v52, v40);
    }

    v51(v46, v76, v40);
    sub_10000C824(v81, v80);
    sub_100016C60(0, &qword_100923AB0);
    if (qword_100921460 != -1)
    {
      swift_once();
    }

    v60 = sub_100750534();
    sub_10000D0FC(v60, qword_100981A58);
    v61 = [v41 traitCollection];
    sub_100753C14();

    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v62 = sub_100750B04();
    v63 = sub_10000D0FC(v62, qword_100982098);
    v78 = v62;
    v79 = &protocol witness table for StaticDimension;
    v64 = sub_10000D134(v77);
    (*(*(v62 - 8) + 16))(v64, v63, v62);
    sub_100749E54();
    sub_10000C620(v81);
    (*(v42 + 8))(v76, v40);
    v59 = &v83;
    return sub_10009AA20(*(v59 - 32));
  }

  v81[0] = 0;
  v81[1] = 0xE000000000000000;
  sub_100754534(44);
  v66 = v67[0];
  v30(v67[0], &v39[v29], v23);
  sub_1007545F4();
  (*(v24 + 8))(v66, v23);
  v84._object = 0x80000001007688D0;
  v84._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1007531B4(v84);
  result = sub_100754644();
  __break(1u);
  return result;
}

void sub_10009A078()
{
  v1 = sub_10074E984();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v7, v0 + v8, v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    type metadata accessor for AppTrailerLockupCollectionViewCell();
LABEL_5:
    v11 = ASKDeviceTypeGetCurrent();
    sub_100393210();

    return;
  }

  if (v10 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    type metadata accessor for ScreenshotsLockupCollectionViewCell();
    goto LABEL_5;
  }

  v12[1] = 0;
  v12[2] = 0xE000000000000000;
  sub_100754534(44);
  v9(v4, v0 + v8, v1);
  sub_1007545F4();
  (*(v2 + 8))(v4, v1);
  v13._object = 0x80000001007688D0;
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1007531B4(v13);
  sub_100754644();
  __break(1u);
}

uint64_t sub_10009A2DC()
{
  v1 = v0;
  v2 = sub_100750354();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100749E94();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1007504F4();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749E74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for MixedMediaLockupPlaceholderView();
  v53.receiver = v0;
  v53.super_class = v14;
  objc_msgSendSuper2(&v53, "layoutSubviews");
  sub_100099428(v13);
  sub_10009A078();
  sub_1007477B4();
  v34 = v6;
  sub_100750474();
  v16 = v15;
  v18 = v17;
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v20 = sub_100743304();
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  v20(v52, 0);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v1 addSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  v24 = *(v8 + 16);
  v35 = v7;
  v24(v10, v13, v7);
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_smallLockupPlaceholder];
  v52[3] = type metadata accessor for LockupPlaceholderView();
  v52[4] = &protocol witness table for UIView;
  v52[0] = v25;
  v50 = sub_1007433C4();
  v51 = &protocol witness table for UIView;
  v49 = v19;
  if (v1[v22] == 1)
  {
    v26 = sub_100016C60(0, &qword_1009236D0);
    v27 = v23;
    v28 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v23 = 0;
    v45 = 0;
    v46 = 0;
  }

  v47 = v26;
  v48 = v28;
  v44 = v23;
  v29 = v25;
  v30 = v19;
  v31 = v37;
  sub_100749E84();
  sub_1007477B4();
  v32 = v40;
  sub_100749E44();
  (*(v42 + 8))(v32, v43);
  (*(v39 + 8))(v31, v41);
  (*(v36 + 8))(v34, v38);
  return (*(v8 + 8))(v13, v35);
}

id sub_10009A7DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MixedMediaLockupPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MixedMediaLockupPlaceholderView()
{
  result = qword_100925838;
  if (!qword_100925838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009A904()
{
  result = sub_10074E984();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10009A9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100934D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009AA20(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100934D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10009AA88()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  sub_1007433C4();
  v3 = sub_1007431E4();
  sub_100746E74();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView();
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  sub_100743794();
  v6 = sub_100743784();
  v8 = sub_10071B540(v6, v7, UIFontTextStyleSubheadline);

  *(v1 + v5) = v8;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_contentType;
  v10 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v11 = sub_10074E984();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  sub_100754644();
  __break(1u);
}

unint64_t sub_10009ABE8()
{
  result = qword_100925848;
  if (!qword_100925848)
  {
    type metadata accessor for VideoCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925848);
  }

  return result;
}

double sub_10009AC40()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (qword_100921A40 != -1)
  {
    swift_once();
  }

  sub_100747BA4();
  type metadata accessor for VideoCardView();
  swift_getObjectType();
  sub_1005FA0C8(v5);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

double sub_10009ADB4()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747C14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  sub_100747B84();
  sub_10074F674();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (qword_100921A40 != -1)
  {
    swift_once();
  }

  sub_100747BA4();
  type metadata accessor for VideoCardView();
  swift_getObjectType();
  sub_1005FA0C8(v9);
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_10009AFC4()
{
  v1 = [v0 scrollEdgeAppearance];
  if (!v1)
  {
    v1 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v2 = [v0 standardAppearance];
  if (!v2)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v3 = v2;
  [v1 _setTitleControlHidden:0];
  [v3 _setTitleControlHidden:{objc_msgSend(v0, "largeTitleDisplayMode") != 2}];
  [v0 setScrollEdgeAppearance:v1];
  [v0 setStandardAppearance:v3];
}

void sub_10009B0DC()
{
  v1 = [v0 scrollEdgeAppearance];
  if (!v1)
  {
    v1 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v2 = [v0 standardAppearance];
  if (!v2)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v3 = v2;
  [v1 _setTitleControlHidden:1];
  [v3 _setTitleControlHidden:1];
  [v0 setScrollEdgeAppearance:v1];
  [v0 setStandardAppearance:v3];
}

uint64_t sub_10009B1E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_100066198(*a1 + 16, v14);
  sub_10009BA04(v14, v9);
  sub_10009BA04(a2, &v11);
  if (!v10)
  {
    sub_10000C8CC(v14, &unk_1009276E0);
    if (!*(&v12 + 1))
    {
      result = sub_10000C8CC(v9, &unk_1009276E0);
      v4 = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = sub_10000C8CC(v9, &unk_100925930);
    v4 = 0;
    goto LABEL_8;
  }

  sub_10009BA04(v9, v8);
  if (!*(&v12 + 1))
  {
    sub_10000C8CC(v14, &unk_1009276E0);
    sub_100016994(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v4 = sub_1007544C4();
  sub_100016994(v6);
  sub_10000C8CC(v14, &unk_1009276E0);
  sub_100016994(v8);
  result = sub_10000C8CC(v9, &unk_1009276E0);
LABEL_8:
  *(v3 + 72) = v4 & 1;
  return result;
}

uint64_t sub_10009B354(void *a1, uint64_t a2)
{
  sub_100066198(*a1 + 16, v13);
  sub_10009BA04(v13, v8);
  sub_10009BA04(a2, &v10);
  if (!v9)
  {
    sub_10000C8CC(v13, &unk_1009276E0);
    if (!*(&v11 + 1))
    {
      sub_10000C8CC(v8, &unk_1009276E0);
      v3 = 1;
      return v3 & 1;
    }

LABEL_7:
    sub_10000C8CC(v8, &unk_100925930);
    v3 = 0;
    return v3 & 1;
  }

  sub_10009BA04(v8, v7);
  if (!*(&v11 + 1))
  {
    sub_10000C8CC(v13, &unk_1009276E0);
    sub_100016994(v7);
    goto LABEL_7;
  }

  v5[0] = v10;
  v5[1] = v11;
  v6 = v12;
  v3 = sub_1007544C4();
  sub_100016994(v5);
  sub_10000C8CC(v13, &unk_1009276E0);
  sub_100016994(v7);
  sub_10000C8CC(v8, &unk_1009276E0);
  return v3 & 1;
}

uint64_t sub_10009B4BC(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_18;
  }

  v2 = v1;
  if ((sub_1007544C4() & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for MenuDebugSetting();
  v3 = swift_dynamicCastClass();
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 56) == v2[7] && *(v3 + 64) == v2[8];
    if (v5 || (sub_100754754() & 1) != 0)
    {
      v6 = v2[9];

      LOBYTE(v6) = sub_10011C77C(v7, v6);

      if (v6)
      {
        v9 = (*(v4 + 80))(v20, v8);
        (v2[10])(v19, v9);
        sub_10009BA04(v20, v14);
        sub_10009BA04(v19, &v16);
        if (v15)
        {
          sub_10009BA04(v14, v13);
          if (*(&v17 + 1))
          {
            v11[0] = v16;
            v11[1] = v17;
            v12 = v18;
            LOBYTE(v4) = sub_1007544C4();

            sub_100016994(v11);
            sub_10000C8CC(v19, &unk_1009276E0);
            sub_10000C8CC(v20, &unk_1009276E0);
            sub_100016994(v13);
            sub_10000C8CC(v14, &unk_1009276E0);
            return v4 & 1;
          }

          sub_10000C8CC(v19, &unk_1009276E0);
          sub_10000C8CC(v20, &unk_1009276E0);
          sub_100016994(v13);
        }

        else
        {

          sub_10000C8CC(v19, &unk_1009276E0);
          sub_10000C8CC(v20, &unk_1009276E0);
          if (!*(&v17 + 1))
          {
            sub_10000C8CC(v14, &unk_1009276E0);
            LOBYTE(v4) = 1;
            return v4 & 1;
          }
        }

        sub_10000C8CC(v14, &unk_100925930);
      }

      else
      {
      }
    }

LABEL_18:
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void sub_10009B768()
{
  sub_1007544D4();
  sub_100753174();
  v1 = *(v0 + 72);
  if (v1 >> 62)
  {
    v7 = sub_100754664();
    sub_100754844(v7);
    v2 = sub_100754664();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_100754844(*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = sub_100754574();
      sub_1007544D4();
      sub_100753174();
      sub_100754854(*(v4 + 72));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (v1 + 32);
    do
    {
      v6 = *v5++;

      sub_1007544D4();
      sub_100753174();
      sub_100754854(*(v6 + 72));

      --v2;
    }

    while (v2);
  }

LABEL_10:
  (*(v0 + 80))(v13);
  sub_10009BA04(v13, &v10);
  if (*(&v11 + 1))
  {
    v8[0] = v10;
    v8[1] = v11;
    v9 = v12;
    sub_100754854(1u);
    sub_1007544D4();
    sub_100016994(v8);
  }

  else
  {
    sub_100754854(0);
  }

  sub_10000C8CC(v13, &unk_1009276E0);
}

uint64_t sub_10009B938()
{
}

uint64_t sub_10009B970()
{
  sub_100016994(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10009BA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009276E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10009BA74(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView;
  type metadata accessor for TodayCardLockupView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  sub_1007433C4();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_pageTraits] = 0;
  v15 = [objc_opt_self() effectWithStyle:16];
  v16 = objc_allocWithZone(UIVisualEffectView);
  v49 = v15;
  v17 = [v16 initWithEffect:v15];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_backgroundEffectView] = v17;
  v50.receiver = v4;
  v50.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  v20 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView];
  v21 = v18;
  [v20 setAccessibilityIgnoresInvertColors:1];
  [*&v18[v19] setContentMode:2];
  [v21 addSubview:*&v18[v19]];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_backgroundEffectView;
  [*&v21[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_backgroundEffectView] _setContinuousCornerRadius:20.0];
  [v21 addSubview:*&v21[v22]];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView;
  [*(*&v21[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v23] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v23] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v24 = *&v21[v23];
  v25 = objc_opt_self();
  v26 = v24;
  sub_1005A3470([v25 whiteColor]);

  v27 = qword_100920EF8;
  v28 = *(*&v21[v23] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  v30 = sub_10000D0FC(v29, qword_100980A38);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v12, v30, v29);
  (*(v31 + 56))(v12, 0, 1, v29);
  sub_100745BA4();

  v32 = *(*&v21[v23] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v33 = [v25 whiteColor];
  [v32 setTextColor:v33];

  v34 = *(*&v21[v23] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  sub_10000D198();
  v35 = v34;
  v36 = sub_100753DF4();
  v37 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v38 = [v36 resolvedColorWithTraitCollection:v37];

  [v35 setTextColor:v38];
  v39 = *(*&v21[v23] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v40 = [v25 whiteColor];
  [v39 setTintColor:v40];

  v41 = *(*&v21[v23] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v42 = [v25 whiteColor];
  [v41 setTextColor:v42];

  v43 = *(*&v21[v23] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v44 = [v25 whiteColor];
  [v43 setTextColor:v44];

  v45 = *(*&v21[v23] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v46 = [v25 whiteColor];
  [v45 setTextColor:v46];

  [v21 addSubview:*&v21[v23]];
  return v21;
}

id sub_10009C064()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  [v0 bounds];
  sub_100743324();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_backgroundEffectView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView];
  [v1 bounds];

  sub_100753B14();
  return [v3 setFrame:?];
}

uint64_t sub_10009C1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v89 = a2;
  v7 = sub_10074F284();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v77 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v73 = &v72 - v10;
  v11 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v11 - 8);
  v85 = &v72 - v12;
  v13 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v13 - 8);
  v84 = &v72 - v14;
  v15 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v15 - 8);
  v83 = &v72 - v16;
  v17 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v17 - 8);
  v82 = &v72 - v18;
  v19 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v72 - v20;
  v22 = sub_10074D734();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v80 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v25 - 8);
  v81 = &v72 - v26;
  v27 = sub_10074F314();
  __chkstk_darwin(v27 - 8);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007442C4();
  sub_100752764();
  v86 = a3;
  sub_100752D34();
  v30 = v90;
  sub_10074DB44();
  v31 = [v3 traitCollection];
  sub_10009CF94(v89, v31);
  v32 = sub_10074F374();

  v33 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView];
  v89 = a1;
  sub_10074DB44();
  sub_10074F324();
  v76 = v29;
  sub_100743364();
  [v33 setContentMode:sub_10074F184()];
  sub_100747FB4();
  sub_1007433A4();
  if (!sub_10074F1E4())
  {
    sub_10000D198();
    sub_100753E34();
  }

  sub_100743224();

  [v33 setContentMode:2];
  v34 = sub_1007433C4();
  v35 = sub_10009D280(&qword_100925570, &type metadata accessor for ArtworkView);
  v87 = v32;
  v88 = v30;
  v74 = v35;
  v75 = v34;
  sub_100744204();
  v36 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView];
  [*&v36[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
  v37 = sub_10074DB54();
  v38 = *(v23 + 104);
  v38(v80, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
  v38(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  sub_10009D280(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v39 = v81;
  sub_10074A9C4();
  v40 = sub_10000C518(&unk_10092EEA0);
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = sub_100742E24();
  v42 = v82;
  (*(*(v41 - 8) + 56))(v82, 1, 1, v41);
  v43 = sub_100745E94();
  v44 = v83;
  (*(*(v43 - 8) + 56))(v83, 1, 1, v43);
  v45 = sub_10074F8B4();
  v46 = v84;
  (*(*(v45 - 8) + 56))(v84, 1, 1, v45);
  v47 = sub_10000C518(&unk_100925560);
  v48 = v85;
  (*(*(v47 - 8) + 56))(v85, 1, 1, v47);
  sub_100656038(v37, v36, v39, v86, 0, 0, v42, v44, v46, v48);
  v36[OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_1002F3D3C();
  [v36 setNeedsLayout];
  sub_1002F3D3C();

  sub_10000C8CC(v48, &unk_100925990);
  sub_10000C8CC(v46, &unk_100925520);
  sub_10000C8CC(v44, &unk_1009259A0);
  sub_10000C8CC(v42, &unk_100925530);
  sub_10000C8CC(v39, &unk_100925540);
  v49 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
  if (v49)
  {
    v50 = objc_opt_self();
    v51 = v49;
    v52 = [v50 whiteColor];
    [v51 setTextColor:v52];
  }

  v53 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
  v54 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v54)
  {
    v55 = objc_opt_self();
    v56 = v54;
    v57 = [v55 whiteColor];
    [v56 setTextColor:v57];

    v58 = *&v36[v53];
    if (v58)
    {
      v59 = qword_100920F28;
      v60 = v58;
      if (v59 != -1)
      {
        swift_once();
      }

      v61 = sub_100750534();
      v62 = sub_10000D0FC(v61, qword_100980AC8);
      v63 = *(v61 - 8);
      v64 = v73;
      (*(v63 + 16))(v73, v62, v61);
      (*(v63 + 56))(v64, 0, 1, v61);
      sub_100745BA4();

      v65 = *&v36[v53];
      if (v65)
      {
        [v65 setAccessibilityIgnoresInvertColors:1];
      }
    }
  }

  sub_10074DB54();
  v66 = sub_10074EF24();

  if (v66)
  {
    swift_beginAccess();
    v67 = v77;
    sub_10074F294();
    sub_10074F254();
    (*(v78 + 8))(v67, v79);
    sub_10074F374();
    v68 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v69 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    sub_10074F324();
    sub_100743364();
    [v69 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();

    [*&v36[v68] setContentMode:1];
    v70 = *&v36[v68];
    sub_100744204();
  }
}

double sub_10009CF94(uint64_t a1, void *a2)
{
  v3 = sub_1007479B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v21[-v8 - 8];
  sub_10074F5A4();
  v11 = v10;
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  sub_100055CF8(&xmmword_10097F3D0, v26);
  if (qword_100920858 != -1)
  {
    swift_once();
  }

  sub_100055CF8(&xmmword_10097F540, v25);
  if (sub_100753804())
  {
    v12 = v25;
  }

  else
  {
    v12 = v26;
  }

  sub_100055CF8(v12, v21);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v13 = qword_10093FF58;
  }

  v14 = sub_10000D0FC(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v24 & 1) == 0 && v22 == 0.0 && v23 == 0.0)
  {
    sub_100747964();
    v16 = v15;
    sub_100747964();
    v22 = v16;
    v23 = v17;
    v24 = 0;
  }

  v18 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v21, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_100055D54(v21);
  sub_100055D54(v25);
  sub_100055D54(v26);
  return v11;
}

uint64_t sub_10009D280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009D2C8(uint64_t a1, uint64_t a2)
{
  sub_10000C824(a1, v9);
  sub_10000C518(&unk_100923100);
  sub_10074DB64();
  result = swift_dynamicCast();
  if (result)
  {
    sub_10074DB44();
    v5 = [v2 traitCollection];
    sub_10009CF94(a2, v5);
    sub_10074F374();

    sub_1007433C4();
    sub_10009D280(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
    sub_10074DB54();
    v6 = sub_10074EF24();

    if (v6)
    {
      if (qword_100920958 != -1)
      {
        swift_once();
      }

      v7 = sub_100747064();
      sub_10000D0FC(v7, qword_10097F9F8);
      sub_100746F34();
      sub_10074F374();
      v8 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      sub_100744204();
    }
  }

  return result;
}

void sub_10009D50C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_lockupView;
  type metadata accessor for TodayCardLockupView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_backgroundArtworkView;
  sub_1007433C4();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39CondensedAdLockupWithIconBackgroundView_pageTraits) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10009D5C8()
{
  result = sub_100741494();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10009D718(uint64_t a1, int a2)
{
  v29 = a2;
  v30 = a1;
  v27[1] = *v2;
  v3 = sub_100741494();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27[0] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100925B78);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v27 - v8;
  v10 = sub_10000C518(&qword_100925B80);
  __chkstk_darwin(v10 - 8);
  v31 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = v27 - v17;
  (*(v2 + qword_1009259D8))(v16);
  v19 = *(v4 + 16);
  v28 = v2;
  v19(v14, v2 + qword_1009259D0, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_100016B4C(v18, v9, &qword_100925B80);
  sub_100016B4C(v14, &v9[v20], &qword_100925B80);
  v21 = *(v4 + 48);
  if (v21(v9, 1, v3) != 1)
  {
    sub_100016B4C(v9, v31, &qword_100925B80);
    if (v21(&v9[v20], 1, v3) != 1)
    {
      v23 = v27[0];
      (*(v4 + 32))(v27[0], &v9[v20], v3);
      sub_1000A4814(&qword_100925B88, &type metadata accessor for UUID);
      v24 = v31;
      v25 = sub_100753014();
      v26 = *(v4 + 8);
      v26(v23, v3);
      sub_10000C8CC(v14, &qword_100925B80);
      sub_10000C8CC(v18, &qword_100925B80);
      v26(v24, v3);
      result = sub_10000C8CC(v9, &qword_100925B80);
      if ((v25 & 1) == 0)
      {
        return result;
      }

      return sub_1007467E4();
    }

    sub_10000C8CC(v14, &qword_100925B80);
    sub_10000C8CC(v18, &qword_100925B80);
    (*(v4 + 8))(v31, v3);
    return sub_10000C8CC(v9, &qword_100925B78);
  }

  sub_10000C8CC(v14, &qword_100925B80);
  sub_10000C8CC(v18, &qword_100925B80);
  if (v21(&v9[v20], 1, v3) != 1)
  {
    return sub_10000C8CC(v9, &qword_100925B78);
  }

  sub_10000C8CC(v9, &qword_100925B80);
  return sub_1007467E4();
}

uint64_t sub_10009DC00()
{
  swift_unknownObjectRelease();
  v1 = qword_1009259D0;
  v2 = sub_100741494();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10009DC7C()
{
  sub_10009DC00();

  return swift_deallocClassInstance();
}

Swift::Int sub_10009DCE8()
{
  sub_100754834();
  sub_100754844(v0);
  return sub_100754884();
}

void (*sub_10009DD38(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_10009D670();
  return sub_10009DD80;
}

void sub_10009DD80(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_10009D6C4();
  }

  else
  {
    sub_10009D6C4();
  }
}

Swift::Int sub_10009DE34()
{
  sub_100754834();
  sub_10009DBC8();
  return sub_100754884();
}

id sub_10009DE80()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleText + 8];
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleText] & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel];

      sub_1007480D4();
      v5 = sub_100753064();

      [v4 setText:v5];

      [v4 setHidden:0];
    }
  }

  return [v1 setNeedsLayout];
}

char *sub_10009DF58(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100743584();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v16 = sub_1007469A4();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  sub_100745C84();
  *&v4[v17] = sub_100745C64();
  v18 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v21 = sub_10074C224();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask] = 0;
  sub_100741484();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_backgroundGradient] = [objc_allocWithZone(sub_10074E444()) init];
  v22 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView] = v22;
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v24 = v22;
  sub_1007433B4();

  (*(v12 + 8))(v14, v11);
  v25 = *&v5[v23];
  sub_100743284();

  v26 = *&v5[v23];
  sub_100743274();

  v27 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_imageView] = v27;
  [v27 _setCornerRadius:12.0];
  v28 = [objc_allocWithZone(sub_100748104()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel] = v28;
  v30 = objc_opt_self();
  v31 = v28;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor:v32];

  [*&v5[v29] setEditable:0];
  [*&v5[v29] setSelectable:0];
  [*&v5[v29] setUserInteractionEnabled:0];
  v33 = *&v5[v29];
  sub_100748074();

  v34 = [v30 redColor];
  v35 = sub_10009E6B0(v34);

  *&v5[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea] = v35;
  v36 = [v30 blackColor];
  v37 = sub_10009E6B0(v36);

  *&v5[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] = v37;
  v38 = *&v5[v29];
  sub_1007480B4();

  v60.receiver = v5;
  v60.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v40 = [v30 clearColor];
  [v39 setBackgroundColor:v40];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v44 = [v39 contentView];
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v45 = [v39 contentView];
  [v45 addSubview:*&v39[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView]];

  v46 = [v39 contentView];
  [v46 addSubview:*&v39[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_backgroundGradient]];

  v47 = [v39 contentView];
  [v47 addSubview:*&v39[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_imageView]];

  v48 = [v39 contentView];
  [v48 addSubview:*&v39[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel]];

  v49 = [v39 contentView];
  v50 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  [v49 addSubview:*&v39[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel]];

  v51 = [*&v39[v50] layer];
  [v51 setCompositingFilter:kCAFilterPlusL];

  v52 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v52)
  {
    v53 = v52;
    v54 = [v39 contentView];
    [v54 addSubview:v53];
  }

  v55 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
  if (v55)
  {
    v56 = v55;
    v57 = [v39 contentView];
    [v57 addSubview:v56];
  }

  sub_10000C518(&unk_1009249D0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1007A5A00;
  *(v58 + 32) = sub_100751554();
  *(v58 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();
  swift_unknownObjectRelease();

  return v39;
}

id sub_10009E6B0(void *a1)
{
  if ((byte_10092F2A0 & 1) == 0)
  {

    goto LABEL_5;
  }

  v2 = sub_100754754();

  if (v2)
  {
LABEL_5:
    v3 = [objc_allocWithZone(UIView) init];
    v4 = [v3 layer];
    v5 = [a1 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v3 layer];
    [v6 setBorderWidth:1.0];

    return v3;
  }

  return 0;
}

void sub_10009E808()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = sub_10074E3C4();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100750354();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100925B28);
  __chkstk_darwin(v5 - 8);
  v7 = v70 - v6;
  v8 = sub_10074C224();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = v70 - v14;
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_100016B4C(&v1[v16], v7, &qword_100925B28);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C8CC(v7, &qword_100925B28);
    return;
  }

  (*(v9 + 32))(v15, v7, v8);
  sub_10009F164();

  sub_1007477B4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v1 traitCollection];
  sub_10009F7E8(v25, v87, v18, v20, v22, v24);
  v26 = *v87;
  v27 = *&v87[1];
  v28 = *&v87[2];
  v29 = *&v87[3];
  v78 = v88;

  v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v31 = [v30 textContainer];
  v32 = [v31 exclusionPaths];

  v33 = sub_100016C60(0, &qword_100925B60);
  sub_1007532A4();

  v70[1] = v33;
  LOBYTE(v32) = sub_1007532D4();

  if (v32)
  {
    v34 = [v30 textContainer];
    isa = sub_100753294().super.isa;
    [v34 setExclusionPaths:isa];
  }

  if (v88)
  {
    v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
    if (!v36)
    {
      goto LABEL_13;
    }

    if (v78)
    {
      v37 = 0.0;
      v78 = 1;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
LABEL_11:
      [v36 setFrame:{v37, v38, v39, v40}];
      goto LABEL_13;
    }

LABEL_10:
    v78 = 0;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    goto LABEL_11;
  }

  sub_1007477B4();
  sub_100753B24();
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v36)
  {
    goto LABEL_10;
  }

  v78 = 0;
LABEL_13:
  v45 = [v1 contentView];
  [v45 bounds];

  sub_10074E434();
  v46 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_imageView];
  if ([v46 isHidden])
  {
    v46 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView];
  }

  v47 = v46;
  (*(v9 + 16))(v11, v15, v8);
  v48 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v85[3] = sub_100745C84();
  v85[4] = &protocol witness table for UILabel;
  v85[0] = v48;
  v83 = sub_100748104();
  v84 = sub_1000A4814(&qword_100925B68, &type metadata accessor for DynamicTypeTextView);
  v82 = v30;
  v49 = sub_100016C60(0, &qword_100922300);
  v81 = &protocol witness table for UIView;
  v80 = v49;
  v79 = v47;
  v50 = v48;
  v51 = v30;
  v71 = v47;
  v52 = v74;
  sub_10074E3B4();
  sub_1007477B4();
  v53 = v72;
  sub_10074E384();
  (*(v76 + 8))(v52, v77);
  (*(v73 + 8))(v53, v75);
  LOBYTE(v85[0]) = 2;
  if ((v78 & 1) != 0 || (sub_10009FC24(v85, v1) & 1) == 0)
  {
    v69 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
    if (v69)
    {
      [v69 setFrame:{0.0, 0.0, 0.0, 0.0}];

      goto LABEL_21;
    }

    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v54 = [v51 font];
    if (v54)
    {
      v55 = v54;
      [v54 lineHeight];
      v57 = v56;

      v58 = v26 + 0.0;
      v59 = v27 + 0.0;
      v60 = v28 + 0.0;
      v61 = v29 + v57 * -0.5;
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] setFrame:{v58, v59, v60, v61}];
      v62 = [v51 textContainer];
      sub_10000C518(&unk_1009231A0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1007A5CF0;
      [v1 convertRect:v51 toCoordinateSpace:{v58, v59, v60, v61}];
      *(v63 + 32) = [objc_opt_self() bezierPathWithRect:{v64, v65, v66, v67}];
      v68 = sub_100753294().super.isa;

      [v62 setExclusionPaths:v68];

LABEL_21:
      (*(v9 + 8))(v15, v8);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_10009F164()
{
  v1 = v0;
  v2 = sub_10074F284();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074E3A4();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007504F4();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074B2D4();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100925B28);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_10074C224();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_100016B4C(&v1[v20], v15, &qword_100925B28);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000C8CC(v15, &qword_100925B28);
    return 0;
  }

  (*(v17 + 32))(v19, v15, v16);
  if (!sub_10074C1D4())
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  sub_10074C204();
  v21 = v41;
  v22 = (*(v41 + 88))(v12, v10);
  if (v22 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v22 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    [v1 frame];
    sub_10074F2A4();
    v26 = v37;
    sub_100750504();
    sub_100750464();
    (*(v38 + 8))(v26, v39);
    sub_10074F184();
  }

  else
  {
    if (v22 != enum case for ChartOrCategoryBrickStyle.round(_:))
    {
      (*(v17 + 8))(v19, v16);

      (*(v21 + 8))(v12, v10);
      return 0;
    }

    v23 = v34;
    sub_10074C1C4();
    sub_10074E394();
    v25 = v24;
    (*(v35 + 8))(v23, v36);
    if (v25)
    {
      (*(v17 + 8))(v19, v16);

      return 0;
    }

    v30 = v31;
    sub_10074F294();
    sub_10074F254();
    (*(v32 + 8))(v30, v33);
  }

  v27 = sub_10074F374();
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView];
  sub_10074F324();
  sub_100743364();
  [v28 setContentMode:sub_10074F184()];
  sub_100747FB4();
  sub_1007433A4();
  if (!sub_10074F1E4())
  {
    sub_100016C60(0, &qword_100923500);
    sub_100753E34();
  }

  sub_100743224();

  (*(v17 + 8))(v19, v16);
  return v27;
}

uint64_t sub_10009F7E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  *&v41 = a1;
  v11 = sub_10074C634();
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = sub_10074C664();
  *&v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&qword_100925B70);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - v17;
  v19 = sub_10074C684();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074C1F4();
  sub_10000C888(v42, v42[3]);
  sub_100748A54();
  v23 = (*(v20 + 48))(v18, 1, v19);
  if (v23 == 1)
  {
    sub_10000C8CC(v18, &qword_100925B70);
    result = sub_10000C620(v42);
    v25 = 0uLL;
    v26 = 0uLL;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    sub_10000C620(v42);
    sub_10074C674();
    sub_10074C644();
    v27 = sub_1000A2EC8(v13, [v38 effectiveUserInterfaceLayoutDirection]);
    sub_10074C624();
    sub_10074C654();
    if (v27 != 3 && v27)
    {
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      CGRectGetMinX(v44);
    }

    else
    {
      v43.origin.x = a3;
      v43.origin.y = a4;
      v43.size.width = a5;
      v43.size.height = a6;
      CGRectGetMaxX(v43);
    }

    v28 = v40;
    v29 = v39;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    v33 = a6;
    if (v27 > 1u)
    {
      CGRectGetMidY(*&v30);
    }

    else
    {
      CGRectGetMinY(*&v30);
    }

    sub_100753AA4();
    v39 = v34;
    v40 = v35;
    v38 = v36;
    v41 = v37;
    (*(v29 + 8))(v15, v28);
    result = (*(v20 + 8))(v22, v19);
    *&v26 = v38;
    *&v25 = v39;
    *(&v25 + 1) = v40;
    *(&v26 + 1) = v41;
  }

  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v23 == 1;
  return result;
}

id sub_10009FC24(_BYTE *a1, uint64_t a2)
{
  LODWORD(v2) = *a1;
  if (v2 != 2)
  {
    return (v2 & 1);
  }

  v4 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel);
  [v4 frame];
  Height = CGRectGetHeight(v9);
  result = [v4 font];
  if (result)
  {
    v2 = result;
    [result lineHeight];
    v8 = v7;

    LOBYTE(v2) = v8 * 1.5 < Height;
    swift_beginAccess();
    *a1 = v2;
    return (v2 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009FD30(uint64_t a1, uint64_t a2)
{
  sub_10000C518(&qword_100925B10);
  sub_1007468C4();
  if (!v6)
  {
    return sub_10000C8CC(&v5, &unk_100925B18);
  }

  sub_100012160(&v5, v7);
  v3 = [sub_10007DC04() traitCollection];
  swift_unknownObjectRelease();
  sub_10009FE00(v7, v3, a2);

  return sub_10000C620(v7);
}

id sub_10009FE00(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  v58 = a2;
  v6 = sub_10000C518(&qword_100925B28);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v9 - 8);
  v56 = &v48 - v10;
  v11 = sub_100741494();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  sub_10000C888(a1, a1[3]);
  if (sub_100748A64())
  {

    v16 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

    [v16 setHidden:0];
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:1];
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:0];
  }

  sub_10000C888(a1, a1[3]);
  if (sub_10074CA64())
  {
    sub_10074F3D4();
    v18 = sub_1007532D4();

    if (v18)
    {
      sub_10000C888(a1, a1[3]);
      v19 = sub_10074CA54();
      if (v19)
      {
        v20 = v19;
        sub_100741A14();
        sub_100752764();
        sub_100752D34();
        v53 = v20;
        v54 = *&v60[0];
        v21 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
        [v21 setBackgroundColor:v20];
        [v21 setHidden:0];
        [*&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:0];
        [*&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:1];
        sub_100741484();
        v22 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
        swift_beginAccess();
        v23 = v55;
        (*(v55 + 40))(&v4[v22], v15, v11);
        swift_endAccess();
        v24 = *(v23 + 16);
        v24(v57, &v4[v22], v11);
        v52 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask;
        if (*&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask])
        {

          sub_100753404();
        }

        v25 = sub_1007533D4();
        (*(*(v25 - 8) + 56))(v56, 1, 1, v25);
        v51 = v15;
        v24(v15, v57, v11);
        sub_10000C824(a1, v60);
        sub_1007533B4();
        v49 = v4;

        v50 = v58;
        v48 = sub_1007533A4();
        v26 = v55;
        v27 = (*(v55 + 80) + 40) & ~*(v55 + 80);
        v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 2) = v48;
        *(v30 + 3) = &protocol witness table for MainActor;
        *(v30 + 4) = v49;
        (*(v26 + 32))(&v30[v27], v51, v11);
        sub_100012160(v60, &v30[v28]);
        *&v30[v29] = v54;
        *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v50;
        v31 = sub_1000A0C18(0, 0, v56, &unk_1007A95B8, v30);

        (*(v26 + 8))(v57, v11);
        *&v4[v52] = v31;
      }
    }
  }

  sub_10000C824(a1, v60);
  sub_10000C824(v60, v59);
  v32 = v58;
  sub_10074C1E4();
  sub_10000C620(v60);
  v33 = sub_10074C224();
  (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
  v34 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_1000A3E40(v8, &v4[v34]);
  swift_endAccess();
  sub_1000A122C();
  sub_10000C888(a1, a1[3]);
  v35 = sub_100748A44();
  v37 = v36;
  [*&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v38 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v38 = v35;
  v38[1] = v37;

  sub_10009DE80();
  sub_10000C888(a1, a1[3]);
  v39 = sub_100748A34();
  v41 = v40;
  v42 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v42 setHidden:1];
  v43 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v43 = v39;
  v43[1] = v41;

  v44 = v43[1];
  if (v44)
  {
    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = *v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {

      v46 = sub_100753064();

      [v42 setText:v46];

      [v42 setHidden:0];
    }
  }

  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

uint64_t sub_1000A059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_100741494();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  sub_1007533B4();
  v8[16] = sub_1007533A4();
  v11 = sub_100753384();
  v8[17] = v11;
  v8[18] = v10;

  return _swift_task_switch(sub_1000A0698, v11, v10);
}

uint64_t sub_1000A0698()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
  v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_imageView];
  (*(v2 + 16))(v1, v0[9], v3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000C518(&qword_100925B30);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = v6;
  (*(v2 + 32))(v8 + qword_1009259D0, v1, v3);
  v9 = (v8 + qword_1009259D8);
  *v9 = sub_1000A4238;
  v9[1] = v7;
  v0[7] = v5;
  v10 = v4[3];
  v11 = v4[4];
  v12 = sub_10000C888(v4, v10);
  v0[5] = v10;
  v0[6] = *(v11 + 8);
  v13 = sub_10000D134(v0 + 2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  v14 = v6;
  v15 = [v5 contentView];
  [v15 frame];
  v17 = v16;
  v19 = v18;

  v20 = sub_1000A4240();

  v21 = swift_task_alloc();
  v0[20] = v21;
  v22 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell();
  v23 = sub_1000A4814(&unk_100925B40, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);
  *v21 = v0;
  v21[1] = sub_1000A0928;
  v24 = v0[11];
  v25 = v0[12];
  v26 = v0[9];
  v27.n128_u64[0] = v17;
  v28.n128_u64[0] = v19;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(v0 + 2, v24, v26, v8, v20, v25, v22, v23, v27, v28);
}

uint64_t sub_1000A0928()
{
  v1 = *v0;

  sub_10000C620(v1 + 16);
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1000A0A70, v3, v2);
}

uint64_t sub_1000A0A70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A0AE4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
    v4 = Strong;
    swift_beginAccess();
    v5 = sub_100741494();
    v6 = *(v5 - 8);
    (*(v6 + 16))(a1, &v4[v3], v5);

    return (*(v6 + 56))(a1, 0, 1, v5);
  }

  else
  {
    v8 = sub_100741494();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1000A0C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100016B4C(a3, v25 - v10, &qword_100940840);
  v12 = sub_1007533D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000C8CC(v11, &qword_100940840);
  }

  else
  {
    sub_1007533C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100753384();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100753144() + 32;
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

      sub_10000C8CC(a3, &qword_100940840);

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

  sub_10000C8CC(a3, &qword_100940840);
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

uint64_t sub_1000A0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100016B4C(a3, v25 - v10, &qword_100940840);
  v12 = sub_1007533D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000C8CC(v11, &qword_100940840);
  }

  else
  {
    sub_1007533C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100753384();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100753144() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000C518(&qword_100925B58);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10000C8CC(a3, &qword_100940840);

      return v22;
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

  sub_10000C8CC(a3, &qword_100940840);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000C518(&qword_100925B58);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000A122C()
{
  v1 = v0;
  v68 = sub_10074B2D4();
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = &v58 - v4;
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v67 = &v58 - v6;
  v69 = sub_10074C1B4();
  v77 = *(v69 - 8);
  __chkstk_darwin(v69);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074C164();
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100925B28);
  __chkstk_darwin(v12 - 8);
  v14 = &v58 - v13;
  v15 = sub_10074C224();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_100016B4C(&v1[v19], v14, &qword_100925B28);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000C8CC(v14, &qword_100925B28);
  }

  v63 = v16;
  v21 = *(v16 + 32);
  v64 = v15;
  v21(v18, v14, v15);
  v22 = [v1 traitCollection];
  v23 = sub_100753824();

  v74 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v24 = v74;
  v25 = sub_100016C60(0, &qword_100923500);
  v26 = sub_100753DD4();
  v27 = [v26 resolvedColorWithTraitCollection:v23];

  [v24 setTextColor:v27];
  v65 = v1;
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v73 = v28;
  v58 = v25;
  v29 = sub_100753DE4();
  v62 = v23;
  v30 = [v29 resolvedColorWithTraitCollection:v23];

  [v28 setTextColor:v30];
  v66 = v18;
  sub_10074C214();
  sub_10074C154();
  v31 = v76;
  v32 = v75 + 8;
  v33 = *(v75 + 8);
  v33(v11, v76);
  sub_10074C1A4();
  v35 = v77 + 8;
  v34 = *(v77 + 8);
  v36 = v69;
  v34(v8);
  sub_1007480C4();
  sub_10074C214();
  sub_10074C144();
  v33(v11, v31);
  v75 = v32;
  v37 = sub_10074C1A4();
  v38 = v36;
  v61 = v34;
  (v34)(v8, v36);
  v77 = v35;
  [v73 setNumberOfLines:v37];
  sub_10074C214();
  sub_10074C154();
  v33(v11, v31);
  v39 = v67;
  sub_10074C194();
  (v34)(v8, v36);
  v40 = sub_100750534();
  v41 = *(v40 - 8);
  v59 = *(v41 + 56);
  v60 = v41 + 56;
  v59(v39, 0, 1, v40);
  sub_100748094();
  sub_10074C214();
  sub_10074C144();
  v42 = v76;
  v33(v11, v76);
  sub_10074C194();
  v43 = v61;
  (v61)(v8, v38);
  v59(v39, 0, 1, v40);
  sub_100745BA4();
  v44 = v66;
  sub_10074C214();
  sub_10074C154();
  v33(v11, v42);
  sub_10074C184();
  v43(v8, v38);
  sub_1007480E4();
  sub_10074C214();
  sub_10074C144();
  v33(v11, v76);
  sub_10074C184();
  v45 = v8;
  v47 = v72;
  v46 = v73;
  v48 = v38;
  v49 = v68;
  v43(v45, v48);
  v50 = v70;
  sub_100745C14();
  v51 = v44;
  sub_10074C204();
  v52 = v71;
  (*(v50 + 104))(v71, enum case for ChartOrCategoryBrickStyle.round(_:), v49);
  sub_1000A4814(&qword_100925B50, &type metadata accessor for ChartOrCategoryBrickStyle);
  sub_100753274();
  sub_100753274();
  if (v80 == v78 && v81 == v79)
  {
    v53 = *(v50 + 8);
    v53(v52, v49);
    v53(v47, v49);

LABEL_7:
    v56 = sub_100753DF4();
    [v74 setTextColor:v56];

    v57 = sub_100753DE4();
    [v46 setTextColor:v57];

    goto LABEL_8;
  }

  v54 = sub_100754754();
  v55 = *(v50 + 8);
  v55(v52, v49);
  v55(v47, v49);

  if (v54)
  {
    goto LABEL_7;
  }

LABEL_8:
  [v65 setNeedsLayout];

  return (*(v63 + 8))(v51, v64);
}

id sub_1000A1B90()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&qword_100925B28);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_100741494();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "prepareForReuse", v8);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask])
  {

    sub_100753404();
  }

  *&v1[v11] = 0;

  sub_100741484();
  v12 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
  swift_beginAccess();
  (*(v7 + 40))(&v1[v12], v10, v6);
  swift_endAccess();
  sub_100743344();
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v13 setHidden:1];
  v14 = &v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *(v14 + 1);
  if (v15)
  {
    v16 = *v14;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      v18 = sub_100753064();

      [v13 setText:v18];

      [v13 setHidden:0];
    }
  }

  [v1 setNeedsLayout];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v19 = &v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;

  sub_10009DE80();
  v20 = sub_10074C224();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_1000A3E40(v5, &v1[v21]);
  swift_endAccess();
  return [*&v1[OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_imageView] setImage:0];
}

uint64_t type metadata accessor for ChartOrCategoryBrickCollectionViewCell()
{
  result = qword_100925AE8;
  if (!qword_100925AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A2108()
{
  sub_1000A2270(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1000A2270(319, &qword_100925B00, &type metadata accessor for ChartOrCategoryBrickContext);
    if (v1 <= 0x3F)
    {
      sub_100741494();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000A2270(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000A22C8()
{
  result = sub_10009F164();
  if (result)
  {
    sub_1007433C4();
    sub_1000A4814(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
  }

  return result;
}

uint64_t sub_1000A2388(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_100743384(v4, a3);
  sub_1007433C4();
  sub_1000A4814(&qword_100925570, &type metadata accessor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_1000A2420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000A2500;
  v16.n128_f64[0] = a6;
  v17.n128_f64[0] = a7;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:size:with:traitCollection:)(a1, a2, a3, a4, a5, v16, v17);
}

uint64_t sub_1000A2500(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000A25FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_1000A4868;
  v22.n128_f64[0] = a9;
  v23.n128_f64[0] = a10;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, a8, v22, v23);
}

uint64_t sub_1000A2704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_1000A27FC;
  v20.n128_f64[0] = a8;
  v21.n128_f64[0] = a9;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, v20, v21);
}

uint64_t sub_1000A27FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000A2970(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000A2A68;

  return v6(a1);
}

uint64_t sub_1000A2A68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000A2B60(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000A2C54;

  return v5(v2 + 32);
}

uint64_t sub_1000A2C54()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void sub_1000A2D68()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v3 = sub_1007469A4();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  sub_100745C84();
  *(v1 + v4) = sub_100745C64();
  v5 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_badgeText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_titleText);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v8 = sub_10074C224();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38ChartOrCategoryBrickCollectionViewCell_renderingTask) = 0;
  sub_100741484();
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000A2EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074C634();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topTrailing(_:))
  {
    v10 = a2 == 1;
LABEL_5:
    (*(v5 + 8))(a1, v4);
    return v10;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topLeading(_:))
  {
    v10 = a2 != 1;
    goto LABEL_5;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.midLeading(_:))
  {
    (*(v5 + 8))(a1, v4);
    if (a2 == 1)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_100754534(29);
  v13._object = 0x8000000100768BF0;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1007531B4(v13);
  sub_1007545F4();
  result = sub_100754644();
  __break(1u);
  return result;
}

double sub_1000A30E4()
{
  v0 = sub_100750BD4();
  v81 = *(v0 - 8);
  v82 = v0;
  __chkstk_darwin(v0);
  v80 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100750534();
  v88 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10074C1B4();
  v94 = *(v89 - 8);
  __chkstk_darwin(v89);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074C164();
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100750E94();
  v95 = *(v101 - 8);
  __chkstk_darwin(v101);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v69 - v10;
  __chkstk_darwin(v11);
  v100 = &v69 - v12;
  __chkstk_darwin(v13);
  v91 = &v69 - v14;
  v15 = sub_10074E3C4();
  v93 = *(v15 - 8);
  __chkstk_darwin(v15);
  v92 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074B2D4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10074F704();
  v98 = *(v21 - 8);
  v99 = v21;
  __chkstk_darwin(v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10074C224();
  v96 = *(v24 - 8);
  v97 = v24;
  __chkstk_darwin(v24);
  v90 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  sub_10000C518(&qword_100925B10);
  sub_1007468C4();
  if (!*(&v111 + 1))
  {
    sub_10000C8CC(&v110, &unk_100925B18);
    return 0.0;
  }

  v77 = v15;
  sub_100012160(&v110, v113);
  swift_getKeyPath();
  sub_100746914();

  sub_10000C824(v113, &v110);
  sub_10000C824(&v110, &v107);
  sub_10074C1E4();
  sub_10000C620(&v110);
  swift_getKeyPath();
  sub_100746914();

  v83 = v110;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  sub_10074C204();
  v29 = (*(v18 + 88))(v20, v17);
  if (v29 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v29 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    v63 = v96;
    v62 = v97;
    (*(v96 + 16))(v90, v28, v97);
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    v109 = 0;
    v108 = 0u;
    v107 = 0u;
    v64 = sub_100750F34();
    swift_allocObject();
    v65 = sub_100750F14();
    v106[3] = v64;
    v106[4] = &protocol witness table for LayoutViewPlaceholder;
    v106[0] = v65;
    memset(v105, 0, 32);
    v105[32] = 1;
    v66 = v92;
    sub_10074E3B4();
    sub_10074E374();
    v59 = v67;
    swift_unknownObjectRelease();
    (*(v93 + 8))(v66, v77);
    (*(v98 + 8))(v23, v99);
    (*(v63 + 8))(v28, v62);
    goto LABEL_8;
  }

  if (v29 != enum case for ChartOrCategoryBrickStyle.round(_:))
  {
    swift_unknownObjectRelease();
    (*(v98 + 8))(v23, v99);
    (*(v96 + 8))(v28, v97);
    sub_10000C620(v113);
    (*(v18 + 8))(v20, v17);
    return 0.0;
  }

  v30 = v85;
  sub_100750E84();
  sub_10074C214();
  sub_10074C154();
  v31 = v87;
  v32 = v86 + 8;
  v73 = *(v86 + 8);
  v73(v7, v87);
  v33 = v32;
  v34 = v79;
  sub_10074C194();
  v72 = *(v94 + 8);
  v94 += 8;
  v74 = v28;
  v72(v4, v89);
  sub_100750E54();
  v35 = *(v88 + 8);
  v88 += 8;
  v70 = v35;
  v35(v34, v84);
  v36 = v95 + 8;
  v76 = *(v95 + 8);
  v71 = v23;
  v76(v30, v101);
  v75 = v36;
  sub_10074C214();
  sub_10074C154();
  v37 = v31;
  v38 = v73;
  v86 = v33;
  v73(v7, v37);
  sub_10074C1A4();
  v39 = v89;
  v40 = v72;
  v72(v4, v89);
  v41 = v100;
  sub_100750E74();
  v76(v41, v101);
  v42 = v78;
  sub_100750E84();
  sub_10074C214();
  sub_10074C144();
  v38(v7, v87);
  sub_10074C194();
  v40(v4, v39);
  v43 = v85;
  sub_100750E54();
  v70(v34, v84);
  v44 = v42;
  v45 = v101;
  v46 = v76;
  v76(v44, v101);
  v47 = v74;
  sub_10074C214();
  sub_10074C144();
  v73(v7, v87);
  sub_10074C1A4();
  v72(v4, v89);
  sub_100750E74();
  v48 = v43;
  v46(v43, v45);
  v49 = v47;
  sub_10074C1F4();
  sub_10000C888(&v110, *(&v111 + 1));
  sub_100748A44();
  v94 = *(v95 + 16);
  v95 += 16;
  (v94)(v48, v91, v45);
  sub_100750BB4();
  v50 = v80;
  sub_100750BF4();
  sub_10000C620(&v110);
  sub_100750BA4();
  v51 = v82;
  v52 = *(v81 + 8);
  v52(v50, v82);
  sub_10074C1F4();
  sub_10000C888(&v107, *(&v108 + 1));
  sub_100748A34();
  (v94)(v48, v100, v101);
  sub_100750BB4();
  sub_100750BF4();
  sub_10000C620(&v107);
  sub_100750BA4();
  v52(v50, v51);
  v54 = v96;
  v53 = v97;
  (*(v96 + 16))(v90, v49, v97);
  sub_10000C824(&v107, v106);
  sub_10000C824(&v110, v105);
  v55 = sub_100750F34();
  swift_allocObject();
  v56 = sub_100750F14();
  v103 = v55;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  v102 = v56;
  v114 = 0u;
  v115 = 0u;
  v116 = 1;
  v57 = v92;
  sub_10074E3B4();
  sub_10074E374();
  v59 = v58;
  swift_unknownObjectRelease();
  (*(v93 + 8))(v57, v77);
  sub_10000C620(&v107);
  sub_10000C620(&v110);
  v60 = v101;
  v61 = v76;
  v76(v100, v101);
  v61(v91, v60);
  (*(v98 + 8))(v71, v99);
  (*(v54 + 8))(v49, v53);
LABEL_8:
  sub_10000C620(v113);
  return v59;
}

uint64_t sub_1000A3E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100925B28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A3EB0()
{
  v1 = sub_100741494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_10000C620(v0 + v5);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000A3FB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100741494() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000A27FC;

  return sub_1000A059C(a1, v9, v10, v11, v1 + v6, v1 + v7, v12, v13);
}

uint64_t sub_1000A4110()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A4148(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A4868;

  return sub_1000A2970(a1, v4);
}

uint64_t sub_1000A4200()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000A4240()
{
  result = qword_100925B38;
  if (!qword_100925B38)
  {
    sub_10000C724(&qword_100925B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925B38);
  }

  return result;
}

uint64_t sub_1000A42A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074F284();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007504F4();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074C224();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100925B10);
  sub_1007468C4();
  if (!v22)
  {
    return sub_10000C8CC(&v21, &unk_100925B18);
  }

  v17 = a2;
  v18 = v7;
  sub_100012160(&v21, v23);
  swift_getKeyPath();
  sub_100746914();

  sub_10000C824(v23, &v21);
  sub_10000C824(&v21, v20);
  sub_10074C1E4();
  sub_10000C620(&v21);
  v14 = _swiftEmptyArrayStorage;
  *&v21 = _swiftEmptyArrayStorage;
  sub_1000A30E4();
  if (sub_10074C1D4())
  {
    sub_10074F2A4();
    sub_100750504();
    sub_100750474();
    sub_10074F294();
    sub_10074F254();
    (*(v4 + 8))(v6, v3);
    sub_10074F374();
    sub_100753284();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    (*(v19 + 8))(v9, v18);
    v14 = v21;
  }

  sub_100748014();
  if (sub_1007532D4())
  {
    v15._rawValue = v14;
    sub_100744224(v15);

    (*(v11 + 8))(v13, v10);
    return sub_10000C620(v23);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    sub_10000C620(v23);
  }
}

uint64_t sub_1000A46A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A4868;

  return sub_1000A2B60(a1, v4);
}

uint64_t sub_1000A475C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A27FC;

  return sub_1000A2B60(a1, v4);
}

uint64_t sub_1000A4814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A48B8(uint64_t a1)
{
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074EA34();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v55 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092E450);
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = sub_100748D64();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_1007504F4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v56 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v60 = &v46 - v22;
  sub_100746024();
  sub_1000A5038(&qword_100923AF8, &type metadata accessor for ProductMediaItem);
  result = sub_1007468B4();
  if (v61)
  {
    v52 = a1;
    if (sub_100746004())
    {
      sub_10074F2A4();
      sub_100750504();

      v24 = *(v19 + 56);
      v24(v14, 0, 1, v18);
      (*(v19 + 32))(v17, v14, v18);
      v24(v17, 0, 1, v18);
      v25 = (*(v19 + 48))(v17, 1, v18);
    }

    else
    {
      v47 = v3;
      v48 = v2;
      v26 = *(v19 + 56);
      v27 = 1;
      v26(v14, 1, 1, v18);
      if (sub_100746014())
      {
        sub_10074EC14();

        sub_10074F2A4();
        sub_100750504();

        v27 = 0;
      }

      v26(v17, v27, 1, v18);
      v28 = *(v19 + 48);
      if (v28(v14, 1, v18) != 1)
      {
        sub_1000A5080(v14);
      }

      v3 = v47;
      v2 = v48;
      v25 = v28(v17, 1, v18);
    }

    if (v25 == 1)
    {

      return sub_1000A5080(v17);
    }

    (*(v19 + 32))(v60, v17, v18);
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    v29 = v54;
    v30 = v55;
    sub_1007525B4();

    (*(v53 + 8))(v9, v29);
    v32 = v57;
    v31 = v58;
    v33 = v3;
    if ((*(v57 + 88))(v30, v58) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v32 + 96))(v30, v31);
      v35 = v49;
      v34 = v50;
      v36 = v30;
      v37 = v51;
      (*(v50 + 32))(v49, v36, v51);
      v38 = sub_100748CF4();
      v39 = v56;
      if (v38)
      {
        v40 = v60;
        v41 = sub_100750444();
        v42 = v34;
        v43 = v41;
        (*(v42 + 8))(v35, v37);
        if ((v43 & 1) == 0 && (sub_100750444() & 1) == 0)
        {
          sub_100750484();
LABEL_21:
          swift_getKeyPath();
          v44 = v59;
          sub_100746914();

          sub_10074F5A4();
          (*(v33 + 8))(v44, v2);
          sub_1007504C4();

          v45 = *(v19 + 8);
          v45(v39, v18);
          return (v45)(v40, v18);
        }

LABEL_20:
        (*(v19 + 16))(v39, v40, v18);
        goto LABEL_21;
      }

      (*(v34 + 8))(v35, v37);
    }

    else
    {
      (*(v32 + 8))(v30, v31);
      v39 = v56;
    }

    v40 = v60;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A5038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A5080(uint64_t a1)
{
  v2 = sub_10000C518(&unk_1009281D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000A50F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&qword_100925BB8);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  if (a2)
  {
    v9 = sub_100742F54();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a4, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_1007483C4();
    sub_10000C8CC(v8, &qword_100925BB8);
  }
}

void *sub_1000A5234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100742F74();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v7;
  v8 = sub_100742F54();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v69 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v9;
  v10 = sub_100742E74();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v78 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v79 = a3;
  v19 = sub_100748384();
  if (*(v19 + 16) && (v20 = sub_100412840(a1), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);

    v23 = sub_1002A4FE8(a2, v22);
  }

  else
  {

    v23 = 0;
  }

  sub_100742E84();
  v24 = *(v11 + 104);
  v62 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
  v24(v15);
  sub_1000A76F4(&qword_100925BA0, &type metadata accessor for PageFacets.Facet.DisplayType);
  sub_100753274();
  v80 = v10;
  sub_100753274();
  if (v83 != v81 || (v25 = v23, v84 != v82))
  {
    v25 = sub_100754754() & v23;
  }

  v75 = v11;
  v26 = *(v11 + 8);
  v27 = v15;
  v28 = v80;
  v26(v27, v80);
  v60 = v11 + 8;
  v59 = v26;
  v26(v18, v28);

  v68 = v25 ^ 1;
  sub_100742F24();
  if (v29)
  {
    v30 = sub_100753064();

    v67 = [objc_opt_self() systemImageNamed:v30];
  }

  else
  {
    v67 = 0;
  }

  v31 = sub_100742F44();
  v65 = v32;
  v66 = v31;
  v64 = v23 & 1;
  v63 = sub_100016C60(0, &qword_100929CC0);
  v33 = v71;
  v34 = *(v71 + 16);
  v35 = v69;
  v61 = a2;
  v36 = v72;
  v34(v69, a2, v72);
  v37 = v76;
  v38 = v77;
  v39 = v73;
  (*(v76 + 16))(v73, a1, v77);
  v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v41 = *(v37 + 80);
  v42 = v70 + v41 + v40;
  v70 = a1;
  v43 = v42 & ~v41;
  v44 = swift_allocObject();
  *(v44 + 16) = v68 & 1;
  *(v44 + 24) = v79;
  (*(v33 + 32))(v44 + v40, v35, v36);
  (*(v37 + 32))(v44 + v43, v39, v38);
  v45 = v67;

  v46 = sub_100753FF4();
  v47 = v78;
  sub_100742E84();
  v48 = v80;
  v49 = (*(v75 + 88))(v47, v80);
  if (v49 == enum case for PageFacets.Facet.DisplayType.toggle(_:))
  {
    v83 = 0x2D7465636166;
    v84 = 0xE600000000000000;
    v50 = v46;
    v85._countAndFlagsBits = sub_100742EF4();
    sub_1007531B4(v85);

    v51 = sub_100753064();

    [v50 setAccessibilityIdentifier:v51];

    goto LABEL_18;
  }

  if (v49 == v62 || v49 == enum case for PageFacets.Facet.DisplayType.multipleSelection(_:))
  {
    v52 = sub_100742F14();
    if (!v53)
    {
LABEL_19:

      return v46;
    }

    v54 = v52;
    v55 = v53;
    v83 = 0x2D7465636166;
    v84 = 0xE600000000000000;
    v56 = v46;
    v86._countAndFlagsBits = v54;
    v86._object = v55;
    sub_1007531B4(v86);

    v51 = sub_100753064();

    [v56 setAccessibilityIdentifier:v51];

LABEL_18:
    goto LABEL_19;
  }

  v59(v47, v48);
  return v46;
}

uint64_t sub_1000A5920(uint64_t a1)
{
  v2 = sub_100742F54();
  v75 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v8 = sub_100742F74();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100742E54();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100932510);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_100742F84();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_100748324();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000C8CC(v14, &qword_100932510);
    return 0;
  }

  v71 = v16;
  (*(v16 + 32))(v18, v14, v15);
  result = sub_100742E64();
  v51 = *(result + 16);
  if (!v51)
  {

    v22 = v71;
LABEL_41:
    (*(v22 + 8))(v18, v15);
    return 0;
  }

  v50 = v15;
  v20 = 0;
  v55 = result + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v54 = v59 + 16;
  v64 = v68 + 16;
  v21 = (v68 + 8);
  v79 = v75 + 16;
  v80 = (v75 + 8);
  v52 = (v59 + 8);
  v81 = v7;
  v22 = v71;
  v57 = v8;
  v69 = v18;
  v70 = v10;
  v53 = result;
  v56 = (v68 + 8);
  while (v20 < *(result + 16))
  {
    v24 = *(v59 + 72);
    v58 = v20;
    (*(v59 + 16))(v60, v55 + v24 * v20, v61);
    result = sub_100742E44();
    v67 = *(result + 16);
    if (v67)
    {
      v25 = 0;
      v26 = *(v68 + 80);
      v65 = result;
      v66 = result + ((v26 + 32) & ~v26);
      while (v25 < *(result + 16))
      {
        (*(v68 + 16))(v10, v66 + *(v68 + 72) * v25, v8);
        if ((sub_100742EA4() & 1) == 0)
        {
          v63 = v25;
          v27 = sub_100748384();
          if (*(v27 + 16))
          {
            v28 = sub_100412840(v10);
            if (v29)
            {
              v30 = *(*(v27 + 56) + 8 * v28);

              result = sub_100742F64();
              v31 = result;
              v74 = *(result + 16);
              if (v74)
              {
                v32 = 0;
                v72 = result + ((*(v75 + 80) + 32) & ~*(v75 + 80));
                v73 = result;
                v77 = v30 + 56;
                v78 = v30;
                while (v32 < *(v31 + 16))
                {
                  v33 = *(v75 + 72);
                  v34 = *(v75 + 16);
                  v34(v7, v72 + v33 * v32, v2);
                  v35 = sub_100742E94();
                  v36 = *(v35 + 16);
                  v76 = v32;
                  if (v36 && (sub_1000A76F4(&qword_100925BC0, &type metadata accessor for PageFacets.Facet.Option), v37 = sub_100752FA4(), v38 = -1 << *(v35 + 32), v39 = v37 & ~v38, ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
                  {
                    v40 = ~v38;
                    do
                    {
                      v34(v4, *(v35 + 48) + v39 * v33, v2);
                      sub_1000A76F4(&qword_100925BC8, &type metadata accessor for PageFacets.Facet.Option);
                      v41 = sub_100753014();
                      (*v80)(v4, v2);
                      if (v41)
                      {
                        break;
                      }

                      v39 = (v39 + 1) & v40;
                    }

                    while (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v42 = v78;
                  if (*(v78 + 16))
                  {
                    sub_1000A76F4(&qword_100925BC0, &type metadata accessor for PageFacets.Facet.Option);
                    v7 = v81;
                    v43 = sub_100752FA4();
                    v44 = -1 << *(v42 + 32);
                    v45 = v43 & ~v44;
                    if ((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
                    {
                      v46 = ~v44;
                      while (1)
                      {
                        v34(v4, *(v78 + 48) + v45 * v33, v2);
                        sub_1000A76F4(&qword_100925BC8, &type metadata accessor for PageFacets.Facet.Option);
                        v47 = sub_100753014();
                        v48 = *v80;
                        (*v80)(v4, v2);
                        if (v47)
                        {
                          break;
                        }

                        v45 = (v45 + 1) & v46;
                        if (((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                        {
                          v7 = v81;
                          goto LABEL_36;
                        }
                      }

                      v7 = v81;
                      result = (v48)(v81, v2);
                      v10 = v70;
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      if ((v41 & 1) == 0)
                      {

                        (*v56)(v10, v57);
                        (*v52)(v60, v61);
                        (*(v22 + 8))(v18, v50);
                        return 1;
                      }
                    }

                    else
                    {
                      v48 = *v80;
LABEL_36:
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      result = (v48)(v7, v2);
                      v10 = v70;
                    }
                  }

                  else
                  {
                    v7 = v81;
                    result = (*v80)(v81, v2);
                    v10 = v70;
                    v22 = v71;
                    v18 = v69;
                    v31 = v73;
                  }

                  v32 = v76 + 1;
                  if (v76 + 1 == v74)
                  {

                    v8 = v57;
                    v21 = v56;
                    goto LABEL_11;
                  }
                }

                __break(1u);
                break;
              }
            }
          }

LABEL_11:
          v25 = v63;
        }

        ++v25;
        (*v21)(v10, v8);
        result = v65;
        if (v25 == v67)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:

    v23 = v58 + 1;
    (*v52)(v60, v61);
    v20 = v23;
    result = v53;
    if (v23 == v51)
    {

      v15 = v50;
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

Class sub_1000A62FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v129 = a4;
  v130 = a3;
  v97 = sub_100743B04();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100742E74();
  v125 = *(v6 - 8);
  __chkstk_darwin(v6);
  v127 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = &v93 - v9;
  v123 = sub_100742F74();
  v99 = *(v123 - 8);
  __chkstk_darwin(v123);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100742E54();
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100932510);
  __chkstk_darwin(v13 - 8);
  v128 = (&v93 - v14);
  v98 = sub_100742F84();
  v109 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100748FE4();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = _swiftEmptyArrayStorage;
  (*(v17 + 104))(v20, enum case for ArcadeSeeAllGamesPage.DisplayStyle.default(_:), v16, v18);
  sub_1000A76F4(&qword_100925B98, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle);
  sub_100753274();
  sub_100753274();
  if (v131 != v133 || v132 != v134)
  {
    sub_100754754();
  }

  (*(v17 + 8))(v20, v16);

  v138._object = 0x8000000100768C10;
  v138._countAndFlagsBits = 0xD000000000000021;
  v142._countAndFlagsBits = 0;
  v142._object = 0xE000000000000000;
  sub_1007458B4(v138, v142);
  v21 = sub_100753064();

  v22 = [objc_opt_self() systemImageNamed:v21];

  sub_100016C60(0, &qword_100929CC0);

  v23 = sub_100753FF4();
  sub_100753284();
  if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v93 = v23;
    sub_100753344();
    v24 = v135;
    v25 = v128;
    sub_100748324();
    v23 = v109;
    v26 = v98;
    if (v109[6](v25, 1, v98) == 1)
    {
      sub_10000C8CC(v25, &qword_100932510);
      goto LABEL_74;
    }

    (*(v23 + 32))(v94, v25, v26);
    v27 = sub_100742E64();
    v105 = *(v27 + 16);
    if (!v105)
    {
      break;
    }

    v28 = 0;
    v104 = v27 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v103 = v108 + 16;
    v102 = v108 + 8;
    v122 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
    v121 = (v125 + 104);
    v120 = (v125 + 8);
    v29 = (v99 + 8);
    v117 = v6;
    v30 = v123;
    v101 = v27;
    v118 = (v99 + 8);
    v119 = v99 + 16;
    v100 = a1;
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        goto LABEL_79;
      }

      v124 = v24;
      v31 = v108;
      v32 = *(v108 + 72);
      v113 = v28;
      v33 = v106;
      v34 = v107;
      (*(v108 + 16))(v106, v104 + v32 * v28, v107);
      v35 = sub_100742E44();
      (*(v31 + 8))(v33, v34);
      v36 = *(v35 + 16);
      if (v36)
      {
        break;
      }

      v24 = v124;
LABEL_10:
      v28 = v113 + 1;
      v23 = v109;
      v27 = v101;
      if (v113 + 1 == v105)
      {

        v26 = v98;
        goto LABEL_73;
      }
    }

    v23 = 0;
    v37 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v110 = v35;
    v130 = v35 + v37;
    v38 = *(v99 + 72);
    v128 = *(v99 + 16);
    v129 = v38;
    v24 = v124;
    v111 = v36;
    v128(v11, v130, v30);
    while (1)
    {
      if (sub_100742EA4())
      {
        goto LABEL_16;
      }

      v124 = v24;
      v125 = v23;
      v39 = sub_100742F64();
      v40 = *(v39 + 16);
      if (v40)
      {
        v131 = _swiftEmptyArrayStorage;
        sub_1007545C4();
        v41 = *(sub_100742F54() - 8);
        v42 = v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v43 = *(v41 + 72);
        do
        {
          sub_1000A5234(v11, v42, a1);
          sub_1007545A4();
          sub_1007545D4();
          sub_1007545E4();
          sub_1007545B4();
          v42 += v43;
          --v40;
        }

        while (v40);

        v44 = v131;
        v6 = v117;
      }

      else
      {

        v44 = _swiftEmptyArrayStorage;
      }

      sub_100742E84();
      (*v121)(v127, v122, v6);
      sub_1000A76F4(&qword_100925BA0, &type metadata accessor for PageFacets.Facet.DisplayType);
      sub_100753274();
      sub_100753274();
      if (v131 == v133 && v132 == v134)
      {
        v45 = *v120;
        (*v120)(v127, v6);
        v45(v126, v6);

        goto LABEL_28;
      }

      v46 = sub_100754754();
      v47 = *v120;
      (*v120)(v127, v6);
      v47(v126, v6);

      if ((v46 & 1) == 0)
      {
        break;
      }

LABEL_28:
      if (sub_100742EB4())
      {
        v48 = 0;
        v49 = 0xE000000000000000;
        v50 = 1;
        if (!(v44 >> 62))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v48 = sub_100742F04();
        v49 = v52;
        v50 = 0;
        if (!(v44 >> 62))
        {
LABEL_32:

          sub_100754764();
          sub_100016C60(0, &qword_1009257B0);
          v51 = v44;
          goto LABEL_33;
        }
      }

      sub_100016C60(0, &qword_1009257B0);

      v51 = sub_100754654();

LABEL_33:

      sub_100016C60(0, &qword_1009257B8);
      v139._countAndFlagsBits = v48;
      v139._object = v49;
      v143.value._countAndFlagsBits = 0;
      v143.value._object = 0;
      v136.value.super.isa = 0;
      v136.is_nil = 0;
      v53.value = v50;
      v54.super.super.isa = sub_100753C34(v139, v143, v136, v53, 0xFFFFFFFFFFFFFFFFLL, v51, v92).super.super.isa;
      v55 = sub_100742EC4();
      if (v56)
      {
        v57 = v55;
        v58 = v56;
        v131 = 0x2D7465636166;
        v132 = 0xE600000000000000;
        v59 = v54.super.super.isa;
        v140._countAndFlagsBits = v57;
        v140._object = v58;
        sub_1007531B4(v140);

        v60 = sub_100753064();

        [(objc_class *)v59 setAccessibilityIdentifier:v60];
      }

      v61 = v54.super.super.isa;
      sub_100753284();
      v29 = v118;
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      v24 = v135;
      v30 = v123;
      v23 = v125;
LABEL_16:
      ++v23;
      (*v29)(v11, v30);
      if (v23 == v36)
      {

        goto LABEL_10;
      }

      v128(v11, v130 + v129 * v23, v30);
    }

    if (v44 >> 62)
    {
      sub_100016C60(0, &qword_1009257B0);

      v62 = sub_100754654();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_100754764();
      sub_100016C60(0, &qword_1009257B0);

      v62 = v44;
    }

    v24 = v124;
    v63 = v62 >> 62;
    v116 = v62;
    if (v62 >> 62)
    {
      v64 = sub_100754664();
    }

    else
    {
      v64 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v24 >> 62;
    if (!(v24 >> 62))
    {
      v65 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v66 = v65 + v64;
      if (__OFADD__(v65, v64))
      {
        goto LABEL_77;
      }

LABEL_44:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v23)
        {
          v67 = v24 & 0xFFFFFFFFFFFFFF8;
          if (v66 > *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_50:
            v24 = sub_100754584();
            v67 = v24 & 0xFFFFFFFFFFFFFF8;
          }

          v114 = v64;
          v23 = *(v67 + 16);
          v68 = (*(v67 + 24) >> 1) - v23;
          v115 = v67;
          if (v63)
          {
            v6 = v116;
            v71 = sub_100754664();
            if (!v71)
            {
              goto LABEL_14;
            }

            v72 = v71;
            v73 = sub_100754664();
            if (v68 < v73)
            {
              goto LABEL_81;
            }

            if (v72 < 1)
            {
              goto LABEL_83;
            }

            v112 = v73;
            v124 = v24;
            v74 = v115 + 8 * v23 + 32;
            sub_1000A7464();
            v75 = 0;
            v76 = v116;
            do
            {
              sub_10000C518(&qword_100925BA8);
              v77 = sub_1004A2914(&v131, v75, v76);
              v79 = *v78;
              (v77)(&v131, 0);
              *(v74 + 8 * v75++) = v79;
            }

            while (v72 != v75);
            v6 = v117;
            a1 = v100;
            v36 = v111;
            v24 = v124;
            v70 = v112;
LABEL_61:

            v30 = v123;
            v29 = v118;
            v23 = v125;
            if (v70 < v114)
            {
              goto LABEL_78;
            }

            if (v70 > 0)
            {
              v80 = *(v115 + 16);
              v81 = __OFADD__(v80, v70);
              v82 = v80 + v70;
              if (v81)
              {
                goto LABEL_80;
              }

              *(v115 + 16) = v82;
            }
          }

          else
          {
            v69 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v69)
            {
              v6 = v117;
              if (v68 < v69)
              {
                goto LABEL_82;
              }

              sub_100016C60(0, &qword_1009257B0);
              v70 = v69;
              swift_arrayInitWithCopy();
              goto LABEL_61;
            }

LABEL_14:

            v30 = v123;
            v29 = v118;
            v23 = v125;
            v6 = v117;
            if (v114 > 0)
            {
              goto LABEL_78;
            }
          }

          v135 = v24;
          goto LABEL_16;
        }
      }

      else if (!v23)
      {
        goto LABEL_50;
      }

      sub_100754664();
      goto LABEL_50;
    }

    v83 = sub_100754664();
    v66 = v83 + v64;
    if (!__OFADD__(v83, v64))
    {
      goto LABEL_44;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    sub_100753304();
  }

LABEL_73:
  (*(v23 + 8))(v94, v26);
LABEL_74:
  v84 = v97;
  v85 = v96;
  v86 = v95;
  v87 = sub_1000A5920(a1);
  v88 = &enum case for SystemImage.line3HorizontalDecreaseCircleFill(_:);
  if ((v87 & 1) == 0)
  {
    v88 = &enum case for SystemImage.line3HorizontalDecreaseCircle(_:);
  }

  (*(v85 + 104))(v86, *v88, v84);
  sub_100016C60(0, &qword_1009257B8);
  v137.value.super.isa = sub_100743AE4();
  v141._countAndFlagsBits = 0;
  v141._object = 0xE000000000000000;
  v144.value._countAndFlagsBits = 0;
  v144.value._object = 0;
  v137.is_nil = 0;
  v89.value = 1;
  isa = sub_100753C34(v141, v144, v137, v89, 0xFFFFFFFFFFFFFFFFLL, v24, v92).super.super.isa;

  (*(v85 + 8))(v86, v84);
  return isa;
}

unint64_t sub_1000A7464()
{
  result = qword_100925BB0;
  if (!qword_100925BB0)
  {
    sub_10000C724(&qword_100925BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925BB0);
  }

  return result;
}

uint64_t sub_1000A74C8()
{
  v1 = sub_100742F54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_100742F74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_1000A7618(uint64_t a1)
{
  v3 = *(sub_100742F54() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_100742F74();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_1000A50F4(a1, v5, v6, v1 + v4);
}

uint64_t sub_1000A76F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A7794(uint64_t a1)
{
  v2 = sub_1007521E4();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100752224();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752624();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentThread];
  v13 = [v12 isMainThread];

  if (v13)
  {
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_100752DB4();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_1000A7FA0();
    v15 = sub_100753774();
    aBlock[4] = sub_1000A7FEC;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_100866268;
    v16 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000A800C(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_1000A8054();
    sub_1007543A4();
    sub_100753784();
    _Block_release(v16);

    (*(v18 + 8))(v4, v2);
    return (*(v5 + 8))(v7, v17);
  }
}

uint64_t sub_1000A7B3C()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_100752DB4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000A7C30()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100925BD8);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  v7 = sub_100747E34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747E04();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000A7F30(v6);
    sub_10000C518(&qword_100930CA0);
    (*(v1 + 104))(v3, enum case for ActionOutcome.unsupported(_:), v0);
    return sub_100752D84();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_10000C518(&unk_100925780);
    sub_100752764();
    sub_100752D34();
    sub_10074E474();
    swift_allocObject();
    sub_10074E464();
    sub_10000C518(&qword_100930CA0);
    v12 = sub_100752DE4();

    sub_10074E454();
    swift_unknownObjectRelease();

    (*(v8 + 8))(v10, v7);
    return v12;
  }
}

uint64_t sub_1000A7F30(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100925BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A7FA0()
{
  result = qword_100926D00;
  if (!qword_100926D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100926D00);
  }

  return result;
}

uint64_t sub_1000A7FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A800C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A8054()
{
  result = qword_1009236C0;
  if (!qword_1009236C0)
  {
    sub_10000C724(&unk_10092F750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009236C0);
  }

  return result;
}

uint64_t sub_1000A80B8(uint64_t a1, uint64_t a2)
{
  sub_10000C518(&unk_1009231A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  sub_10000C518(&qword_10093ECA0);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A5A00;
  v8 = (v7 + v6);
  v9 = *(sub_10000C518(&qword_1009262D8) + 48);
  *v8 = 1;
  sub_100016B4C(a2, &v8[v9], &unk_100940810);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_100413848(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_1000AE7AC;
  v11[3] = v10;
  sub_10050C5CC(a1);

  *(v4 + 32) = v11;
  return v4;
}

void sub_1000A8274()
{
  v1 = sub_1007521E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + qword_100925C30;
  if ((*(v0 + qword_100925C30 + 16) & 1) == 0)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    v15 = v7;
    sub_100016C60(0, &qword_100926D00);
    v14 = sub_100753774();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000AE810;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_100866350;
    v12 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000AE680(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
    sub_1007543A4();
    v13 = v14;
    sub_100753784();
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v15);
  }
}

void *sub_1000A8588()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController);
  v2 = v1;
  return v1;
}

void sub_1000A85BC(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10074B974();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 bounds];

  sub_10074B964();
  v9 = *&v1[v3];
  if (v9)
  {
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      [v10 setInsetsLayoutMarginsFromSafeArea:0];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
}

void sub_1000A86F8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1;
  if ([v4 isViewLoaded])
  {
  }

  else
  {
    v5.receiver = v4;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, "loadView");
    v3 = [v4 navigationItem];
    [v3 setTitle:0];
  }
}

void sub_1000A87B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewWillAppear:", a3);
  sub_1000AC9A4(0, 0, a3);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];

    sub_1000AE680(&qword_100926270, type metadata accessor for ArcadeDiffablePageViewController);
    sub_10074DA54();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A88B4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1007521E4();
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100752224();
  v8 = *(v21 - 8);
  *&v9 = __chkstk_darwin(v21).n128_u64[0];
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidAppear:", a1 & 1, v9);
  v12 = &v2[qword_100925BF0];
  v13 = *&v2[qword_100925BF0];
  if (v13)
  {

    v13(v14);
    sub_1000164A8(v13);
    v15 = *v12;
  }

  else
  {
    v15 = 0;
  }

  *v12 = 0;
  v12[1] = 0;
  sub_1000164A8(v15);
  if (sub_10074C034())
  {
    sub_1000A8C3C();
  }

  sub_100016C60(0, &qword_100926D00);
  v16 = sub_100753774();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  aBlock[4] = sub_1000AE7B8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100866648;
  v18 = _Block_copy(aBlock);
  v19 = v2;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AE680(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  return (*(v8 + 8))(v11, v21);
}

void sub_1000A8C3C()
{
  v1 = v0;
  v2 = sub_100742A44();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 viewIfLoaded];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9)
    {
      v10 = [v9 isHidden];

      if ((v10 & 1) == 0)
      {
        v11 = *(*&v1[qword_100925BE0] + 16);
        v12 = objc_allocWithZone(IAMCountableEvent);
        v13 = sub_100753064();
        v14 = [v12 initWithName:v13];

        [v11 receiveEvent:v14];
        sub_1000FC9AC();
        sub_100742AB4();
        sub_100752764();
        sub_100752D34();
        (*(v3 + 104))(v6, enum case for AppStoreEngagementEvent.arcadeTabDidComeOnScreen(_:), v2);
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_100742A54();

        (*(v3 + 8))(v6, v2);
      }
    }
  }
}

void sub_1000A8EB0()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v18 = v1;
    v2 = [v0 traitCollection];
    v3 = sub_1007537B4();

    v4 = [v18 navigationBar];
    v5 = v4;
    if (v3)
    {
      [v4 setUserInteractionEnabled:1];
      v6 = v18;
      v18 = v5;
    }

    else
    {
      [v4 _backgroundOpacity];
      v8 = v7;

      if (v8 >= 1.0)
      {
        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:1];
      }

      else
      {
        v9 = [v18 navigationItem];
        v10 = [v9 leftBarButtonItems];

        if (v10 && ((sub_100016C60(0, &qword_100925250), v11 = sub_1007532A4(), v10, v11 >> 62) ? (v12 = sub_100754664()) : (v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v12))
        {
          v13 = 1;
        }

        else
        {
          v14 = [v18 navigationItem];
          v15 = [v14 rightBarButtonItems];

          if (v15)
          {
            sub_100016C60(0, &qword_100925250);
            v16 = sub_1007532A4();

            if (v16 >> 62)
            {
              v17 = sub_100754664();
            }

            else
            {
              v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v13 = v17 != 0;
          }

          else
          {
            v13 = 0;
          }
        }

        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:v13];
      }
    }
  }
}

void sub_1000A9158(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000A88B4(a3);
}

void sub_1000A91AC(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else if ([v1 isViewLoaded])
  {
    sub_1000AC9A4(1, 1, a1 & 1);
    v4 = sub_10074F3E4();
    v6[3] = v4;
    v6[4] = sub_1000AE680(&qword_100926D40, &type metadata accessor for Feature.iOS);
    v5 = sub_10000D134(v6);
    (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v4);
    LOBYTE(v4) = sub_10074FC74();
    sub_10000C620(v6);
    if (v4)
    {
      sub_1000A8EB0();
    }
  }
}

void sub_1000A92E0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000A91AC(a3);
}

void sub_1000A9334(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillLayoutSubviews");
  v2 = *&v1[qword_10097D2C8];
  if (v2)
  {
    v3 = v2;
    sub_1002FEDE4();
    [v3 setHeight:{v4, v5.receiver, v5.super_class}];

    v1 = v3;
  }
}

id sub_1000A93BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&unk_10092B0D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_100753CD4();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = sub_100753CB4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100753CC4();
  sub_10000C8CC(v5, &unk_10092B0D0);
  sub_100753D14();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_100925C18];
  v19 = *&v1[qword_100925C18];
  v20 = v1[qword_100925C18 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_1000AE680(&qword_100926270, type metadata accessor for ArcadeDiffablePageViewController);
      return sub_10074DA54();
    }

LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_1000A96AC(void *a1)
{
  v1 = a1;
  sub_1000A93BC();
}

void sub_1000A96F4(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = &v3[qword_100925C28];
    if ((v3[qword_100925C28 + 16] & 1) != 0 || *v7 != a2 || v7[1] != a3)
    {
      *v7 = a2;
      v7[1] = a3;
      *(v7 + 16) = 0;
      sub_1000A8274();
    }
  }
}

void sub_1000A97A0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1000A96F4(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1000A9820()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10000C518(&qword_100926298);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10000C518(&qword_1009262A0);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10000C518(&qword_1009262A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1003579F8();
  sub_100749244();
  sub_10000C518(&unk_1009308F0);
  sub_10002DDC8(&qword_1009262B0, &unk_1009308F0);
  sub_100752574();
  sub_100752584();

  sub_10000C620(v18);
  (*(v5 + 8))(v7, v4);
  sub_10074C064();
  sub_10000C518(&qword_1009262B8);
  sub_10002DDC8(&qword_1009262C0, &qword_1009262B8);
  sub_100752574();
  v8 = v12;
  sub_100752584();

  sub_10000C620(v18);
  (*(v13 + 8))(v8, v14);
  sub_10074C074();
  sub_10000C518(&qword_1009262C8);
  sub_10002DDC8(&unk_100940820, &qword_1009262C8);
  sub_100752574();
  v9 = v15;
  sub_100752584();

  sub_10000C620(v18);
  return (*(v16 + 8))(v9, v17);
}

uint64_t sub_1000A9C58()
{
  v0 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v0 - 8);
  v43 = &v37 - v1;
  v2 = sub_10074E984();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v37 - v5;
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = sub_10000C518(&qword_1009262D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_10000C518(&qword_1009308D0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  sub_10000C518(&qword_100930830);
  sub_1007451A4();
  sub_10074E3F4();
  v16 = *(v13 + 8);
  v16(v15, v12);
  v17 = sub_100751744();
  (*(v9 + 8))(v11, v8);
  if (v17 < 1)
  {
    goto LABEL_4;
  }

  sub_1007451A4();
  v18 = v43;
  sub_10074E414();
  v16(v15, v12);
  v19 = sub_10000C518(&unk_10092E450);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000C8CC(v18, &unk_10093D6E0);
LABEL_4:
    v21 = v44;
    *(v44 + qword_100925C10) = &_swiftEmptySetSingleton;

    *(v21 + qword_100925C08) = 0;
    return result;
  }

  swift_getKeyPath();
  v23 = v38;
  sub_1007525B4();

  (*(v20 + 8))(v18, v19);
  v25 = v40;
  v24 = v41;
  v26 = v42;
  (*(v41 + 32))(v40, v23, v42);
  v27 = v39;
  (*(v24 + 16))(v39, v25, v26);
  v28 = (*(v24 + 88))(v27, v26);
  if (v28 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v28 == enum case for Shelf.ContentType.upsellBreakout(_:) || v28 == enum case for Shelf.ContentType.heroCarousel(_:) || v28 == enum case for Shelf.ContentType.uber(_:))
  {
    sub_10000C518(&unk_1009405F0);
    v31 = sub_1007417F4();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1007A5A00;
    sub_100741764();
    v35 = sub_1001A962C(v34);
    swift_setDeallocating();
    (*(v32 + 8))(v34 + v33, v31);
    swift_deallocClassInstance();
    (*(v24 + 8))(v25, v26);
    v36 = v44;
    *(v44 + qword_100925C10) = v35;

    *(v36 + qword_100925C08) = 1;
  }

  else
  {
    v29 = *(v24 + 8);
    v29(v25, v26);
    v30 = v44;
    *(v44 + qword_100925C10) = &_swiftEmptySetSingleton;

    *(v30 + qword_100925C08) = 0;
    return (v29)(v27, v26);
  }

  return result;
}

uint64_t (*sub_1000AA294(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000AE774;
}

uint64_t sub_1000AA2F8()
{
  if (qword_100921ED0 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_1009832E8);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752D04();
}

uint64_t (*sub_1000AA43C(void *a1))(uint64_t *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000AE72C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000AE76C;
}

uint64_t sub_1000AA4CC(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_100066280, v5);
}

uint64_t (*sub_1000AA55C(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000AE6C8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100086E74;
}

uint64_t sub_1000AA5EC()
{
  sub_10000C518(&qword_100922CE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A97A0;
  *(v1 + 32) = *(v0 + qword_100925C48);
  *(v1 + 40) = &protocol witness table for ArcadeTitleEffectCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = &off_100866290;
  swift_unknownObjectWeakAssign();
  v3 = sub_1000AE680(&qword_100926288, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = sub_1000AE680(&qword_100926290, type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver);
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;

  *(v1 + 80) = sub_1006B5600();
  *(v1 + 88) = v6;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

id sub_1000AA770(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_10000C518(&qword_100926268);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_10041C0D0(a1);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_1000AA998();
  }

  else if (v7 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074E2C4();
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];

    sub_1000AE680(&qword_100926270, type metadata accessor for ArcadeDiffablePageViewController);
    return sub_10074DA54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000AA998()
{
  v1 = v0;
  sub_10074C094();
  if (v2)
  {
    v3 = sub_100753064();
  }

  else
  {
    v3 = 0;
  }

  [v1 setTitle:v3];

  v4 = sub_100743654();
  sub_1000AAC80(v4);
  v5 = [v1 tabBarItem];
  if (v5)
  {
    v6 = v5;
    sub_10074C084();
    if (v7)
    {
      v8 = sub_100753064();
    }

    else
    {
      v8 = 0;
    }

    [v6 setTitle:v8];

    sub_10074C094();
    if (v9)
    {

      v10 = [v1 navigationItem];
      sub_10074C094();
      if (v11)
      {
        v12 = sub_100753064();
      }

      else
      {
        v12 = 0;
      }

      [v10 setTitle:v12];

      v16 = [v1 navigationItem];
      sub_10009AFC4();
    }

    else
    {
      v13 = [v1 navigationItem];
      sub_10074C084();
      if (v14)
      {
        v15 = sub_100753064();
      }

      else
      {
        v15 = 0;
      }

      [v13 setTitle:v15];

      v16 = [v1 navigationItem];
      sub_10009B0DC();
    }

    v17 = [v1 navigationItem];
    v18 = [v17 standardAppearance];

    if (!v18)
    {
      v18 = [objc_allocWithZone(UINavigationBarAppearance) init];
    }

    v21 = v18;
    if (sub_10074C054())
    {

      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    [v21 _setOverrideUserInterfaceStyle:v19];

    v20 = [v1 navigationItem];
    [v20 setStandardAppearance:v21];

    sub_1000AAF20();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000AAC80(char a1)
{
  v2 = v1;
  if (a1)
  {
    v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
    v4 = 3;
    goto LABEL_8;
  }

  if ((a1 & 2) != 0)
  {
    v5 = sub_10062AA10();
    v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = v5 & 1;
    if (v5)
    {
      v4 = 3;
      goto LABEL_8;
    }
  }

  else
  {
    v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  }

  v4 = 2;
LABEL_8:
  v6 = [v2 navigationItem];
  [v6 setLargeTitleDisplayMode:v4];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = v7;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_19;
  }

  *(v9 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_10062A804();
  sub_1000AE0E0();
  if (sub_10074C054())
  {

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver();
    v11 = swift_allocObject();
    v11[3] = v10;
    v11[4] = 0;
    v11[2] = sub_1000AE558;
    *&v2[qword_10097D2D8] = v11;

    sub_1000AE680(&qword_100926278, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver);
    sub_100749AD4();
  }

  else
  {
    v12 = qword_10097D2D8;
    if (*&v2[qword_10097D2D8])
    {
      sub_1000AE680(&qword_100926278, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver);
    }

    sub_100749AC4();

    *&v2[v12] = 0;
  }
}

void sub_1000AAF20()
{
  v1 = v0;
  v2 = sub_10074C054();
  if (!v2)
  {
    v13 = [v0 navigationItem];
    [v13 setTitleView:0];

    v14 = &v1[qword_10097D2C8];
    v15 = *&v1[qword_10097D2C8];
    *v14 = 0;
    *(v14 + 1) = 0;

    v16 = qword_100925C20;
    v17 = *&v1[qword_100925C20];
    *&v1[qword_100925C20] = 0;
    if (!v17)
    {
      return;
    }

    v34 = v17;
    [v17 removeFromSuperview];
    v18 = *&v1[v16];
    if (!v18)
    {
      goto LABEL_27;
    }

    v11 = v18;
    v19 = [v1 view];
    if (v19)
    {
      v33 = v19;
      [v19 addSubview:v11];
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_32;
  }

  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = sub_1007537D4();

  if ((v5 & 1) == 0)
  {
    v7 = [objc_allocWithZone(type metadata accessor for ArcadeFloatingBannerView()) init];
    [v7 setHidden:1];
    sub_100117C00(v3, *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph]);
    v21 = qword_100925C20;
    v22 = *&v1[qword_100925C20];
    *&v1[qword_100925C20] = v7;
    if (v22)
    {
      v23 = v7;
      v24 = v22;
      v25 = sub_100753FC4();

      if (v25)
      {

LABEL_25:
        sub_1000AB4FC(0);
        [v7 setFrame:?];

        v31 = [v1 navigationItem];
        [v31 setTitleView:0];

        v32 = &v1[qword_10097D2C8];
        v34 = *&v1[qword_10097D2C8];
        *v32 = 0;
        *(v32 + 1) = 0;
LABEL_26:

LABEL_27:
        v20 = v34;
        goto LABEL_28;
      }

      [v24 removeFromSuperview];
      v27 = *&v1[v21];
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v26 = v7;
      v27 = v7;
      if (!v7)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    v28 = v27;
    v29 = [v1 view];
    if (v29)
    {
      v30 = v29;
      [v29 addSubview:v28];

LABEL_24:
      v24 = v22;
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = [objc_allocWithZone(type metadata accessor for ArcadePageTitleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100117C00(v3, *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph]);
  swift_unknownObjectWeakAssign();
  v7 = v6;
  sub_1000AB378(v6, &off_100870D18);

  v8 = qword_100925C20;
  v9 = *&v1[qword_100925C20];
  *&v1[qword_100925C20] = 0;
  if (v9)
  {
    v34 = v9;
    [v9 removeFromSuperview];
    v10 = *&v1[v8];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v33 = v12;
        [v12 addSubview:v11];

LABEL_11:

        v20 = v33;
LABEL_28:

        return;
      }

LABEL_33:
      __break(1u);
      return;
    }

    goto LABEL_26;
  }
}

void sub_1000AB378(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v2 navigationItem];
    [v6 setTitleView:v5];

    v7 = &v2[qword_10097D2C8];
    v8 = *&v2[qword_10097D2C8];
    *v7 = a1;
    *(v7 + 1) = a2;
    v20 = v5;

    v9 = [v2 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 navigationBar];

      [v11 _titleOpacity];
      v13 = v12;

      v14 = *v7;
      if (*v7)
      {
        v15 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView];
        v16 = v14;
        [v15 setAlpha:v13];
      }
    }

    v17 = v20;
  }

  else
  {
    v18 = [v2 navigationItem];
    [v18 setTitleView:0];

    v19 = &v2[qword_10097D2C8];
    v17 = *&v2[qword_10097D2C8];
    *v19 = 0;
    *(v19 + 1) = a2;
  }
}

void sub_1000AB4FC(char a1)
{
  v2 = *&v1[qword_100925C20];
  if (v2)
  {
    v4 = v2;
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v67.origin.x = v8;
      v67.origin.y = v10;
      v67.size.width = v12;
      v67.size.height = v14;
      CGRectGetWidth(v67);
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v68.origin.x = v18;
        v68.origin.y = v20;
        v68.size.width = v22;
        v68.size.height = v24;
        CGRectGetHeight(v68);
        v25 = &v1[qword_100925C30];
        if (v1[qword_100925C30 + 16])
        {
          v26 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeFloatingBannerView_lockupView];
          [v4 layoutMargins];
          sub_100753BA4();
          [v26 sizeThatFits:?];
          [v4 layoutMargins];
          sub_100753BC4();
          v28 = v27;
          v30 = v29;
        }

        else
        {
          v28 = *v25;
          v30 = *(v25 + 1);
        }

        *v25 = v28;
        *(v25 + 1) = v30;
        v25[16] = 0;
        v31 = [v1 view];
        if (v31)
        {
          v32 = v31;
          [v31 safeAreaInsets];
          v34 = v33;

          if (v34 <= 28.0)
          {
            if ((a1 & 1) == 0)
            {
LABEL_12:
              v37 = [v1 view];
              if (!v37)
              {
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v38 = v37;
              [v37 bounds];
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v46 = v45;

              v69.origin.x = v40;
              v69.origin.y = v42;
              v69.size.width = v44;
              v69.size.height = v46;
              CGRectGetMaxY(v69);
              goto LABEL_17;
            }
          }

          else
          {
            v35 = [v1 view];
            if (!v35)
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v36 = v35;
            [v35 safeAreaInsets];

            if ((a1 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          v47 = [v1 view];
          if (!v47)
          {
LABEL_25:
            __break(1u);
            return;
          }

          v48 = v47;
          [v47 bounds];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v70.origin.x = v50;
          v70.origin.y = v52;
          v70.size.width = v54;
          v70.size.height = v56;
          CGRectGetMaxY(v70);
LABEL_17:
          v57 = [v1 view];
          if (v57)
          {
            v58 = v57;
            [v57 bounds];
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v66 = v65;

            v71.origin.x = v60;
            v71.origin.y = v62;
            v71.size.width = v64;
            v71.size.height = v66;
            CGRectGetMidX(v71);

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_1000AB858()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = *&v3[qword_10097D2D8];
        if (v5)
        {

          [v2 _systemContentInset];
          v7 = v6;
          [v2 contentOffset];
          v9 = v8;
          [v2 contentInset];
          (*(v5 + 16))(v7 + v9 + v10 > *(v5 + 32));
        }

        else
        {
        }
      }
    }
  }
}

void sub_1000AB980(char a1)
{
  v2 = *&v1[qword_100925C20];
  if (!v2)
  {
    return;
  }

  v56 = v2;
  sub_1000AB4FC(a1 & 1);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = &v1[qword_100925C40];
  if ((v1[qword_100925C40 + 32] & 1) == 0 && CGRectEqualToRect(*&v4, *v12))
  {
    goto LABEL_26;
  }

  v55 = v11;
  v56 = v56;
  [v56 frame];
  MinY = CGRectGetMinY(v64);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v65.origin.x = v17;
  v65.origin.y = v19;
  v65.size.width = v21;
  v65.size.height = v23;
  MaxY = CGRectGetMaxY(v65);
  v66.origin.x = v8;
  v66.origin.y = v9;
  v66.size.width = v10;
  v66.size.height = v55;
  v54 = CGRectGetMinY(v66);
  v25 = [v1 view];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = MaxY <= MinY;
  [v25 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v67.origin.x = v29;
  v67.origin.y = v31;
  v67.size.width = v33;
  v67.size.height = v35;
  v36 = CGRectGetMaxY(v67) <= v54 || v27;
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v55;
  *(v12 + 32) = 0;
  v37 = qword_100925C38;
  v38 = *&v1[qword_100925C38];
  if (v38)
  {
    v39 = v38;
    if ([v39 isRunning])
    {
      [v39 stopAnimation:1];

      v39 = *&v1[v37];
      *&v1[v37] = 0;
    }
  }

  if (a1)
  {
    [v56 setHidden:0];
    if (v36)
    {
      v40 = 2;
LABEL_18:

      v41 = swift_allocObject();
      *(v41 + 2) = v1;
      v41[3] = v8;
      v41[4] = v9;
      v41[5] = v10;
      v41[6] = v55;
      v42 = objc_allocWithZone(UIViewPropertyAnimator);
      v61 = sub_1000AE598;
      v62 = v41;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_1000CF7B0;
      v60 = &unk_1008663A0;
      v43 = _Block_copy(&aBlock);
      v44 = v1;

      v45 = [v42 initWithDuration:v40 curve:v43 animations:0.2];
      _Block_release(v43);
      v46 = *&v1[v37];
      *&v1[v37] = v45;

      v47 = *&v1[v37];
      if (v47 && (v48 = swift_allocObject(), *(v48 + 16) = a1 & 1, *(v48 + 24) = v56, v61 = sub_1000AE5FC, v62 = v48, aBlock = _NSConcreteStackBlock, v58 = 1107296256, v59 = sub_1001A5B50, v60 = &unk_1008663F0, v49 = _Block_copy(&aBlock), v50 = v56, v51 = v47, , [v51 addCompletion:v49], _Block_release(v49), v51, (v52 = *&v1[v37]) != 0))
      {
        v53 = v52;
        [v53 startAnimation];
      }

      else
      {
      }

      return;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
  }

  else
  {
    if (v36)
    {
      v40 = 1;
      goto LABEL_18;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
    [v56 setHidden:1];
  }

LABEL_26:
}

void sub_1000ABE64(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000AB980(a1 & 1);
  }
}

void sub_1000ABEC0(void *a1)
{
  v2 = a1;
  sub_1000AC9A4(0, 0, 1);
  v1 = [v2 collectionView];
  [v1 reloadData];

  sub_1000AAF20();
}

void sub_1000ABF4C()
{
  if (*(*&v0[qword_100925C10] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_1000ABFEC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
      v7 = Strong;

      v8 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {

        sub_10000C8CC(v4, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(a1, 1, v6, v4);

        (*(v9 + 8))(v4, v8);
      }
    }
  }
}

uint64_t sub_1000AC1A8(uint64_t a1)
{
  v2 = sub_100741264();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100932480);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100068C18(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1000AC948(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000C518(&unk_100932490);
  sub_1000498A8(&v9[*(v19 + 48)], v18);
  sub_1007492E4();
  v20 = *(v4 + 48);
  sub_100016B4C(v15, v6, &unk_100923970);
  sub_100016B4C(v18, &v6[v20], &unk_100923970);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016B4C(v6, v12, &unk_100923970);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_1000AE680(&qword_100926240, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_100753014();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000C8CC(v15, &unk_100923970);
      sub_10000C8CC(v18, &unk_100923970);
      v27(v12, v2);
      sub_10000C8CC(v6, &unk_100923970);
      return v23 & 1;
    }

    sub_10000C8CC(v15, &unk_100923970);
    sub_10000C8CC(v18, &unk_100923970);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000C8CC(v15, &unk_100923970);
  sub_10000C8CC(v18, &unk_100923970);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000C8CC(v6, &unk_100932480);
    goto LABEL_9;
  }

  sub_10000C8CC(v6, &unk_100923970);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1000AC664()
{

  sub_1000164A8(*(v0 + qword_100925BF0));
}

uint64_t sub_1000AC728(uint64_t a1)
{

  sub_1000164A8(*(a1 + qword_100925BF0));
}

uint64_t type metadata accessor for ArcadeDiffablePageViewController()
{
  result = qword_100925C78;
  if (!qword_100925C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AC948(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AC9A4(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a1 & 1;
  *(v9 + 24) = a1;
  v11 = a2 & 1;
  *(v9 + 25) = a2;

  if ((a3 & 1) != 0 && (v12 = [v4 transitionCoordinator]) != 0)
  {
    v13 = v12;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_1000AE660;
    *(v14 + 24) = v9;
    v24 = sub_100086E74;
    v25 = v14;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1003ED3AC;
    v23 = &unk_100866490;
    v15 = _Block_copy(&v20);

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v11;
    *(v17 + 25) = v10;
    v24 = sub_1000AE670;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1003ED3AC;
    v23 = &unk_1008664E0;
    v18 = _Block_copy(&v20);

    [v13 animateAlongsideTransition:v15 completion:v18];

    _Block_release(v18);
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1000ACFBC(v8, v10, a2 & 1);
  }
}

void sub_1000ACC4C(double a1)
{
  v2 = sub_10074F3E4();
  v24[3] = v2;
  v24[4] = sub_1000AE680(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v3 = sub_10000D134(v24);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v2);
  LOBYTE(v2) = sub_10074FC74();
  sub_10000C620(v24);
  if ((v2 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5 && (v6 = v5, v7 = [v5 navigationController], v6, v7))
  {
    v8 = [v7 viewControllers];

    sub_100016C60(0, &qword_10092B0C0);
    v9 = sub_1007532A4();

    if (v9 >> 62)
    {
      v10 = sub_100754664();
      if (v10)
      {
LABEL_6:
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v9 + 8 * v12 + 32);
            goto LABEL_11;
          }

          __break(1u);
          return;
        }

        v13 = sub_100754574();
LABEL_11:
        v14 = v13;

        if (!Strong)
        {
          goto LABEL_12;
        }

LABEL_15:
        if (!v14)
        {
          goto LABEL_27;
        }

        sub_100016C60(0, &qword_10092B0C0);
        v15 = sub_100753FC4();

        if ((v15 & 1) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v14 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  if (v14)
  {
    Strong = v14;
    goto LABEL_27;
  }

LABEL_17:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    if (*&v16[qword_10097D2C8])
    {

      goto LABEL_21;
    }

    v17 = v16;
    v18 = [v16 traitCollection];
    v19 = sub_1007537B4();

    if (v19)
    {
LABEL_21:
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = *(v20 + qword_10097D2C8);
        if (v22)
        {
          [*(v22 + OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView) setAlpha:a1];
        }

        sub_1003F77FC(a1 == 1.0);
      }
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
    return;
  }

  Strong = v23;
  sub_1000A8EB0();
LABEL_27:
}

void sub_1000ACFBC(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_10062AA10() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_10097D2C8]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_1003F77FC(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_10097D2D0];
        if (v13)
        {
          v14 = *&v6[qword_10097D2C8];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_1007537B4(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_10097D2C8];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_1000AD21C(void *a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = &UITransitionContextFromViewControllerKey;
    if ((a3 & 1) == 0)
    {
      v9 = &UITransitionContextToViewControllerKey;
    }

    v10 = *v9;
    if ([a1 isCancelled])
    {
      v11 = [a1 viewControllerForKey:v10];
      if (v11)
      {
        v12 = v11;
        sub_100016C60(0, &qword_10092B0C0);
        v13 = v8;
        v14 = sub_100753FC4();

        if (v14)
        {
          swift_unknownObjectWeakInit();
          sub_1003F7594(&v15, (a4 & 1) == 0, (a3 & 1) == 0);
          swift_unknownObjectWeakDestroy();

          return;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1000AD37C(uint64_t a1)
{
  sub_100745CA4();
  sub_1000AE680(&qword_100926258, &type metadata accessor for EditorialPageKey);
  v2 = sub_100752FA4();

  return sub_1000AD414(a1, v2);
}

unint64_t sub_1000AD414(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_100745CA4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1000AE680(&qword_100926260, &type metadata accessor for EditorialPageKey);
      v16 = sub_100753014();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1000AD5D8(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100926248);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100926250);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100926248);
      result = sub_1000AD37C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100745CA4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_100741264();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_1000AD7F8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v5 - 8);
  v31 = sub_1007429B4();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100742A34();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  *(v2 + qword_100925BE8) = 1;
  v14 = (v2 + qword_100925BF0);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + qword_100925BF8) = 2;
  v15 = (v2 + qword_10097D2C8);
  *v15 = 0;
  v15[1] = 0;
  *(v2 + qword_10097D2D0) = 0;
  *(v2 + qword_100925C08) = 0;
  *(v2 + qword_100925C10) = &_swiftEmptySetSingleton;
  v16 = v2 + qword_100925C18;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v2 + qword_100925C20) = 0;
  *(v2 + qword_10097D2D8) = 0;
  v17 = v2 + qword_100925C28;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v2 + qword_100925C30;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v2 + qword_100925C38) = 0;
  v19 = v2 + qword_100925C40;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 1;
  type metadata accessor for InAppMessagesManager();
  sub_100752764();
  sub_100752D34();
  *(v2 + qword_100925BE0) = v35;
  sub_10074E2E4();
  swift_allocObject();

  *(v2 + qword_100925C48) = sub_10074E2D4();
  (*(v6 + 104))(v8, enum case for StoreTab.Identifier.arcade(_:), v31);

  sub_1007492E4();

  sub_1000AD5D8(_swiftEmptyArrayStorage);
  sub_1007429C4();
  v20 = v32;
  (*(v34 + 16))(v10, v13, v32);
  v21 = objc_allocWithZone(type metadata accessor for ArcadeHeaderButtonContainer());

  *(v2 + qword_100925C00) = sub_100296168(v10, a2);

  v22 = sub_100467CF8(a1, a2);
  sub_10074D714();
  v23 = v22;
  sub_100752D34();
  v24 = v35;
  v25 = *(*&v23[qword_100925C00] + OBJC_IVAR____TtC22SubscribePageExtension27ArcadeHeaderButtonContainer_accountButton);
  sub_10074D704();

  sub_10000C518(&unk_1009249D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007A5A00;
  v27 = sub_1007516F4();
  *(v26 + 32) = v27;
  *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_1007536F4();
  swift_unknownObjectRelease();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007A5620;
  *(v28 + 32) = sub_1007519E4();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v28 + 48) = sub_100751544();
  *(v28 + 56) = &protocol witness table for UITraitLayoutDirection;
  *(v28 + 64) = v27;
  *(v28 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100753704();

  swift_unknownObjectRelease();

  (*(v34 + 8))(v13, v20);
  return v23;
}

void sub_1000ADD74(uint64_t a1)
{
  v2 = sub_1007521E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752224();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + qword_100925C30;
  if ((*(a1 + qword_100925C30 + 16) & 1) == 0)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v16 = v8;
    sub_100016C60(0, &qword_100926D00);
    v15 = sub_100753774();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000AE0C0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_100866328;
    v13 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000AE680(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
    sub_1007543A4();
    v14 = v15;
    sub_100753784();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v16);
  }
}

uint64_t sub_1000AE088()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE0C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000AE0E0()
{
  v1 = v0;
  v2 = qword_10097D2D0;
  if (!*&v0[qword_10097D2D0])
  {
    sub_100749AC4();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NavigationBarVisibilityScrollObserver();
    v4 = swift_allocObject();
    *(v4 + 32) = xmmword_1007A97B0;
    *(v4 + 16) = sub_1000AE620;
    *(v4 + 24) = v3;
    *&v0[v2] = v4;

    sub_1000AE680(&qword_100926280, type metadata accessor for NavigationBarVisibilityScrollObserver);
    sub_100749AD4();
  }

  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = v5;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = *(v7 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v8 & 1) == 0)
  {
    v9 = [v1 navigationController];
    if (v9)
    {

      if (sub_10062AA10())
      {
        swift_unknownObjectWeakInit();
        sub_1003F7594(v41, 0, 0);
        swift_unknownObjectWeakDestroy();
        goto LABEL_16;
      }
    }
  }

  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  v12 = [v10 safeAreaLayoutGuide];

  [v12 layoutFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v42.origin.x = v14;
  v42.origin.y = v16;
  v42.size.width = v18;
  v42.size.height = v20;
  MinY = CGRectGetMinY(v42);
  if (*&v1[v2])
  {

    v22 = [v1 collectionView];
    if (!v22)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v23 = v22;
    sub_100430C6C(v22, MinY);
  }

  v24 = [v1 collectionView];
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = v24;
  [v24 _pocketInsets];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [v1 collectionView];
  if (!v32)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v33 = v32;
  [v32 _setPocketInsets:{MinY, v27, v29, v31}];

LABEL_16:
  v34 = [v1 viewIfLoaded];
  if (!v34 || (v35 = v34, v36 = [v34 window], v35, !v36) || (v37 = objc_msgSend(v36, "isHidden"), v36, v37))
  {
    v38 = [v1 presentedViewController];
    if (v38)
    {
    }

    else if ([v1 isViewLoaded])
    {
      swift_unknownObjectWeakInit();
      sub_1003F7594(v41, 1, 1);
      swift_unknownObjectWeakDestroy();
      v39 = sub_10074F3E4();
      v41[3] = v39;
      v41[4] = sub_1000AE680(&qword_100926D40, &type metadata accessor for Feature.iOS);
      v40 = sub_10000D134(v41);
      (*(*(v39 - 8) + 104))(v40, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v39);
      LOBYTE(v39) = sub_10074FC74();
      sub_10000C620(v41);
      if (v39)
      {
        sub_1000A8EB0();
      }
    }
  }

  sub_1000A8EB0();
}

uint64_t sub_1000AE560()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_1000AE598()
{
  result = *(*(v0 + 16) + qword_100925C20);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

uint64_t sub_1000AE5C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000AE5FC(id result)
{
  if ((*(v1 + 16) & 1) == 0 && !result)
  {
    return [*(v1 + 24) setHidden:1];
  }

  return result;
}

uint64_t sub_1000AE628()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_1000AE680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AE6F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AE734()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000AE83C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode] = 1;
  v0[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_isCollapsing] = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  v3 = enum case for MediaOverlayStyle.matchSystem(_:);
  v4 = sub_100746BA4();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000AE948(2);
  sub_1000AE948(0);
  sub_1000AEAAC();
  sub_1000AEC40();

  return v5;
}

void sub_1000AE948(uint64_t a1)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v2 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView;
      if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView])
      {
        return;
      }

      v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
      v4 = *&v1[v2];
      *&v1[v2] = v3;

      v5 = *&v1[v2];
      if (!v5)
      {
        return;
      }

      v6 = v5;
      [v1 bounds];
      [v6 setFrame:?];

      v7 = *&v1[v2];
      if (!v7)
      {
        return;
      }

      [v7 setUserInteractionEnabled:0];
      if (!*&v1[v2])
      {
        return;
      }
    }

    else
    {
      v8 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView])
      {
        return;
      }

      [v1 bounds];
      v9 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
      v10 = sub_10016AB14(0);
      v11 = *&v1[v8];
      *&v1[v8] = v10;

      v12 = *&v1[v8];
      if (!v12)
      {
        return;
      }

      [v12 setUserInteractionEnabled:0];
      if (!*&v1[v8])
      {
        return;
      }
    }

    [v1 insertSubview:? atIndex:?];
  }
}

void sub_1000AEAAC()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode);
  sub_1000AFA34(v2);
  sub_1000AE948(v2);
  sub_1000AFA20(v2);
  v3 = *(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  if (v3 == 2)
  {
    if (v4)
    {
      [v4 setAlpha:0.0];
    }

    v5 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView;
    v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v6)
    {
      v7 = [v6 effect];
      if (!v7)
      {
        v8 = *(v0 + v5);
        if (!v8)
        {
          return;
        }

        v9 = objc_opt_self();
        v10 = v8;
        v12 = [v9 effectWithStyle:7];
        [v10 setEffect:v12];

        v7 = v12;
      }
    }
  }

  else
  {
    if (v3 == 1)
    {
      if (v4)
      {
        [v4 setAlpha:0.0];
      }
    }

    else if (v4)
    {
      [v4 setAlpha:1.0];
    }

    v11 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v11)
    {

      [v11 setEffect:0];
    }
  }
}

void sub_1000AEC40()
{
  v1 = v0;
  v2 = sub_100746BA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, &v1[v6], v2);
  v8 = sub_100746B84();
  v9 = *(v3 + 8);
  v9(v5, v2);
  [v1 setOverrideUserInterfaceStyle:v8];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v10)
  {
    v7(v5, &v1[v6], v2);
    v11 = v10;
    v12 = sub_100746B84();
    v9(v5, v2);
    [v11 setOverrideUserInterfaceStyle:v12];
  }

  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v13)
  {
    v7(v5, &v1[v6], v2);
    v14 = v13;
    v15 = sub_100746B84();
    v9(v5, v2);
    [v14 setOverrideUserInterfaceStyle:v15];
  }
}

void sub_1000AEF48()
{
  if ((v0[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_isCollapsing] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode];
    if (v1 >= 3)
    {
      v2 = v1;
      [v2 frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = [v2 superview];
      [v0 convertRect:v11 fromView:{v4, v6, v8, v10}];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [v0 bounds];
      Height = CGRectGetHeight(v60);
      v61.origin.x = v13;
      v61.origin.y = v15;
      v61.size.width = v17;
      v61.size.height = v19;
      MinY = CGRectGetMinY(v61);
      v22 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
      if (v23 && (v24 = Height - (Height - MinY), v25 = (v24 + -100.0) / Height, v26 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY, *&v23[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v25, v27 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView, v28 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView], v29 = v23, v30 = [v28 layer], objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v32 = v31, v30, v33 = *&v23[v26], v34 = objc_msgSend(*&v23[v27], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v34, v35 = objc_msgSend(*&v29[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v29, v35, (v36 = *&v0[v22]) != 0) && (v37 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY, *&v36[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v25, v38 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView, v39 = *&v36[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView], v40 = v36, v41 = objc_msgSend(v39, "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v43 = v42, v41, v44 = *&v36[v37], v45 = objc_msgSend(*&v36[v38], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v43, v44), v40, v45, (v46 = *&v0[v22]) != 0) && (v47 = (v24 + 30.0) / Height, v48 = v46, sub_100169DC8(v47), v48, (v49 = *&v0[v22]) != 0))
      {
        v50 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
        *&v49[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v47;
        v51 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
        v52 = *&v49[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView];
        v58 = v49;
        v53 = [v52 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() endPoint];
        v55 = v54;

        v56 = *&v49[v50];
        v57 = [*&v49[v51] layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v55, v56}];

        sub_1000AFA20(v1);
      }

      else
      {

        sub_1000AFA20(v1);
      }
    }
  }
}

void sub_1000AF424()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame:?];
  }

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }

  sub_1000AEF48();
}

id sub_1000AF528(uint64_t a1, double a2, double a3)
{
  v29.receiver = v3;
  v29.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v29, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode];
    if ((v8 - 1) >= 2)
    {
      if (v8)
      {
        v9 = v8;
        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [v9 superview];
        [v3 convertRect:v18 fromView:{v11, v13, v15, v17}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v30.origin.x = v20;
        v30.origin.y = v22;
        v30.size.width = v24;
        v30.size.height = v26;
        MaxY = CGRectGetMaxY(v30);
        sub_1000AFA20(v8);
        LOBYTE(v8) = MaxY < a3;
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }

    sub_100016C60(0, &qword_1009327F0);
    if ((sub_100753FC4() & 1) != 0 && (v8 & 1) == 0)
    {

      return 0;
    }
  }

  return v7;
}

uint64_t type metadata accessor for AppPromotionScrollableContentContainerView()
{
  result = qword_100926318;
  if (!qword_100926318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AF850()
{
  result = sub_100746BA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000AF900(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000AF930(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AF998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1000AF9E8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void sub_1000AFA20(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

id sub_1000AFA34(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000AFA48(void *a1, char *a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return 1;
    }
  }

  else if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if ((a2 - 1) >= 2)
  {
    if (a1)
    {
      if (a2)
      {
        sub_100016C60(0, &qword_100922300);
        sub_1000AFA34(a2);
        sub_1000AFA34(a1);
        v5 = sub_100753FC4();
        sub_1000AFA20(a1);
        sub_1000AFA20(a2);
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

id sub_1000AFB24(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  if (v6[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] == 1)
  {
    v6[OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 0;
    sub_1003C388C(*a1, a4, a3, a6);
  }

  return [v6 setNeedsLayout];
}

uint64_t sub_1000AFB9C()
{
  result = sub_100745234();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_1000AFC80(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_10074F704();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = sub_1007469A4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  v38 = v2;
  sub_100020514(v2 + v18, v17);
  v19 = v9[6];
  if (v19(v17, 1, v8))
  {
    sub_100027FAC(v17);
LABEL_6:
    [v38 bounds];
    v25 = v39;
    return sub_1003C32F4(v25, v40);
  }

  v33 = v7;
  v34 = v14;
  v20 = v8;
  v32 = v9[2];
  v32(v11, v17, v8);
  sub_100027FAC(v17);
  swift_getKeyPath();
  sub_100746914();

  v31 = v9[1];
  v31(v11, v8);
  v21 = v41;
  v22 = [v41 horizontalSizeClass];

  if (v22 != 2)
  {
    goto LABEL_6;
  }

  v23 = v38;
  v24 = v34;
  sub_100020514(v38 + v18, v34);
  if (v19(v24, 1, v20))
  {
    sub_100027FAC(v24);
    [v23 bounds];
    CGRectGetWidth(v42);
  }

  else
  {
    v32(v11, v24, v20);
    sub_100027FAC(v24);
    swift_getKeyPath();
    v27 = v35;
    sub_100746914();

    v31(v11, v20);
    v29 = v36;
    v28 = v37;
    v30 = v33;
    (*(v36 + 32))(v33, v27, v37);
    sub_10074F5C4();
    sub_10074F5E4();
    (*(v29 + 8))(v30, v28);
  }

  [v23 bounds];
  CGRectGetHeight(v43);
  v25 = v39;
  return sub_1003C32F4(v25, v40);
}

void sub_1000B00D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView);
  sub_1007433C4();
  sub_1000B0570(&qword_100925570, &type metadata accessor for ArtworkView);
  v3 = v2;
  sub_100744274();

  v4 = *(*(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v4)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_1000B0570(&unk_100923110, type metadata accessor for VideoView);
      v5 = v4;
      sub_100744274();
    }
  }
}

id sub_1000B0264(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100748F54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100144E2C(a3, v8, a1);
  sub_100748F74();
  sub_1000B0570(&qword_100935580, &type metadata accessor for UpsellBreakoutLayout);
  sub_100750D34();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 absoluteDimension:v10];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  v18 = [v11 fractionalWidthDimension:1.0];
  v19 = [v11 absoluteDimension:v10];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000C518(&unk_1009231A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5CF0;
  *(v21 + 32) = v16;
  sub_1000B05B8();
  v22 = v16;
  isa = sub_100753294().super.isa;

  v24 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

  return v24;
}

uint64_t sub_1000B0570(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B05B8()
{
  result = qword_100923478;
  if (!qword_100923478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100923478);
  }

  return result;
}

uint64_t sub_1000B0604(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v103 = &v86 - v8;
  v9 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v9 - 8);
  v102 = &v86 - v10;
  v11 = sub_100744864();
  __chkstk_darwin(v11 - 8);
  v101 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v100 = &v86 - v14;
  v15 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v15 - 8);
  v108 = &v86 - v16;
  v99 = sub_100744894();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100747D94();
  v19 = *(v104 - 8);
  __chkstk_darwin(v104);
  v107 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007504F4();
  v105 = *(v21 - 8);
  v106 = v21;
  __chkstk_darwin(v21);
  v97 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10074F6E4();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v93 = &v86 - v25;
  v96 = sub_10074F704();
  v26 = *(v96 - 8);
  __chkstk_darwin(v96);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v86 - v30;
  sub_100743644();
  sub_1000B1804(&qword_10092E030, &type metadata accessor for FramedVideo);
  v109 = a1;
  result = sub_1007468B4();
  v33 = aBlock[0];
  if (aBlock[0])
  {
    v89 = v6;
    v90 = a2;
    v91 = v19;

    v34 = sub_100743604();
    v35 = [v34 length];

    v36 = &selRef_initWithTitle_style_target_action_;
    v110 = v18;
    if (v35 < 1)
    {
      v48 = v111;
      [*&v111[qword_1009485E0] setText:0];
      v48[qword_100983438] = 0;
      [*&v48[qword_1009485D0] setHidden:1];
    }

    else
    {
      v87 = v28;
      v88 = v26;
      v37 = sub_100743604();
      swift_getKeyPath();
      sub_100746914();

      v38 = aBlock[6];
      v39 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v37];
      v40 = [v37 length];
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = v38;
      *(v41 + 32) = v39;
      *(v41 + 40) = 1;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_100047814;
      *(v42 + 24) = v41;
      aBlock[4] = sub_1000B18A8;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100047044;
      aBlock[3] = &unk_1008667B8;
      v43 = _Block_copy(aBlock);
      v44 = v38;
      v45 = v39;

      [v37 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v43}];

      _Block_release(v43);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v47 = v111;
      [*&v111[qword_1009485E0] setAttributedText:v45];
      v47[qword_100983438] = 1;
      [*&v47[qword_1009485D0] setHidden:0];

      v18 = v110;
      v26 = v88;
      v28 = v87;
      v36 = &selRef_initWithTitle_style_target_action_;
    }

    v49 = *&v111[qword_1009485D8];
    sub_100743614();
    if (v50)
    {
      v51 = sub_100753064();
    }

    else
    {
      v51 = 0;
    }

    [v49 v36[105]];

    if (sub_1007435E4())
    {
      v52 = [v111 contentView];
      [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }

    else
    {
      swift_getKeyPath();
      sub_100746914();

      sub_10074F5C4();
      v53 = *(v26 + 8);
      v54 = v96;
      v53(v31, v96);
      swift_getKeyPath();
      sub_100746914();

      sub_10074F5E4();
      v53(v28, v54);
      v87 = v31;
      v55 = v94;
      v56 = *(v94 + 104);
      v88 = v33;
      v57 = v93;
      v58 = v95;
      v56(v93, enum case for PageGrid.Direction.vertical(_:), v95);
      swift_getKeyPath();
      sub_100746914();

      sub_10074F5D4();
      v53(v28, v54);
      (*(v55 + 16))(v92, v57, v58);
      sub_1004E97E0(0.0);
      v59 = v87;
      sub_10074F6B4();
      (*(v55 + 8))(v57, v58);
      v60 = [v111 contentView];
      sub_10074F664();
      [v60 setLayoutMargins:?];

      v53(v59, v54);
      v18 = v110;
    }

    v61 = v107;
    v62 = v105;
    v63 = sub_100743634();
    v64 = v106;
    if (v63)
    {
      v65 = v111;
      v66 = [v111 contentView];
      sub_100009D34();
      sub_1007477B4();

      sub_10074F2A4();
      v67 = v97;
      sub_100750504();
      sub_100750464();
      v69 = v68;
      v71 = v70;

      (*(v62 + 8))(v67, v64);
      v72 = &v65[qword_10097FEF0];
      *v72 = v69;
      *(v72 + 1) = v71;
    }

    if (sub_100743624())
    {
      (*(v98 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v99);
      if (sub_100743634())
      {
        sub_10074F2A4();
        sub_100750504();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      (*(v62 + 56))(v108, v73, 1, v64);
      sub_10074EBB4();
      sub_10074EBF4();
      sub_10074EBC4();
      sub_10074EBA4();
      sub_10074EC04();
      sub_100747D74();
      sub_1007464C4();
      sub_1007526E4();
      sub_10074EB94();
      v74 = v102;
      sub_10074EC24();
      v75 = sub_100741264();
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      v76 = v103;
      sub_10074EBE4();
      v77 = v89;
      sub_10074EBD4();
      type metadata accessor for VideoView();
      sub_1000B1804(&qword_1009230E0, type metadata accessor for VideoView);
      v78 = sub_1007464A4();
      sub_10000C8CC(v77, &unk_1009281C0);
      sub_10000C8CC(v76, &unk_1009281C0);
      sub_10000C8CC(v74, &unk_100923970);
      sub_10000C8CC(aBlock, &unk_1009276E0);
      sub_1003AF8D8();
      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v80 = Strong;
        v81 = *&v111[qword_100935138];
        v82 = v91;
        if (v81)
        {
          v83 = *&v111[qword_100935138];
        }

        else
        {
          v83 = [v111 contentView];
          v81 = 0;
        }

        v84 = v81;
        [v83 addSubview:v80];
        [v111 setNeedsLayout];
      }

      else
      {

        v82 = v91;
      }

      (*(v82 + 8))(v61, v104);
    }

    v85 = sub_1007435F4();

    v111[qword_100983430] = v85 & 1;
    sub_1000B168C();
  }

  return result;
}