unint64_t sub_1003F9034()
{
  result = qword_10093B420;
  if (!qword_10093B420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093B420);
  }

  return result;
}

uint64_t sub_1003F9090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v100 = a5;
  v101 = a4;
  v112 = a3;
  v113 = a2;
  v108 = a7;
  v109 = a8;
  v106 = a1;
  v107 = a6;
  v97 = sub_1007428D4();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10074EA34();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100748D64();
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100751BC4();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100744604();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10000C518(&qword_100923230);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = &v82 - v15;
  v16 = sub_10074E984();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10074F6E4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v105 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v82 - v24;
  v26 = sub_10000C518(&qword_100923228);
  __chkstk_darwin(v26);
  v99 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  sub_100016B4C(v113, &v82 - v29, &unk_10093D6E0);
  v98 = v26;
  v31 = *(v26 + 48);
  v113 = v30;
  sub_100016B4C(v112, &v30[v31], &unk_10093D6E0);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450);
  sub_1007525B4();

  v112 = v21;
  v32 = *(v21 + 104);
  v33 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v115)
  {
    v33 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v34 = *v33;
  v110 = v25;
  v111 = v20;
  v32(v25, v34, v20);
  swift_getKeyPath();
  sub_1007525B4();

  v35 = v17;
  v36 = (*(v17 + 88))(v19, v16);
  if (v36 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if (v36 == enum case for Shelf.ContentType.productReview(_:))
    {
      swift_getKeyPath();
      sub_1007525B4();

      if (*(v114 + 16))
      {
        sub_10000C824(v114 + 32, &v115);

        sub_10000C518(&qword_1009242A0);
        sub_100744624();
        v49 = swift_dynamicCast();
        v45 = v110;
        if (v49)
        {
          v50 = v85;
          sub_100744614();
          v51 = v86;
          v52 = v87;
          v53 = (*(v86 + 88))(v50, v87);
          if (v53 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
          {
            (*(v51 + 8))(v50, v52);
            v48 = v111;
            v47 = v112;
            (*(v112 + 16))(v105, v45, v111);
            if (qword_1009207D8 != -1)
            {
              swift_once();
            }

            sub_10074F6B4();
          }

          else
          {
            v48 = v111;
            v47 = v112;
            v76 = v105;
            if (v53 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
            {
              v78 = v82;
              sub_1007455F4();
              (*(v47 + 16))(v76, v45, v48);
              sub_10044F7B0(v78, 0);
              sub_10074F6B4();

              (*(v83 + 8))(v78, v84);
              (*(v47 + 8))(v45, v48);
              sub_10000C8CC(v113, &qword_100923228);
              return (*(v51 + 8))(v50, v52);
            }

            (*(v51 + 8))(v50, v52);
            v77 = v82;
            sub_1007455F4();
            (*(v47 + 16))(v76, v45, v48);
            sub_10044F7B0(v77, 1);
            sub_10074F6B4();

            (*(v83 + 8))(v77, v84);
          }

          goto LABEL_36;
        }
      }

      else
      {

        v45 = v110;
      }

      v115 = v100;
      v69 = v113;
      v70 = v99;
      sub_100016B4C(v113, v99, &qword_100923228);
      v71 = *(v98 + 48);
      sub_1000E1F2C();
      sub_100745684();
      (*(v112 + 8))(v45, v111);
      sub_10000C8CC(v69, &qword_100923228);
      sub_10000C8CC(v70 + v71, &unk_10093D6E0);
      v72 = v70;
      v73 = &unk_10093D6E0;
      return sub_10000C8CC(v72, v73);
    }

    if (v36 != enum case for Shelf.ContentType.productBadge(_:))
    {
      v115 = v100;
      v65 = v113;
      v66 = v99;
      sub_100016B4C(v113, v99, &qword_100923228);
      v67 = *(v98 + 48);
      sub_1000E1F2C();
      sub_100745684();
      (*(v112 + 8))(v110, v111);
      sub_10000C8CC(v65, &qword_100923228);
      sub_10000C8CC(v66 + v67, &unk_10093D6E0);
      sub_10000C8CC(v66, &unk_10093D6E0);
      return (*(v35 + 8))(v19, v16);
    }

    v57 = v88;
    sub_10074F604();
    v58 = v89;
    sub_10074F604();
    v55 = v111;
    v54 = v112;
    v56 = v110;
    (*(v112 + 16))(v105, v110, v111);
    sub_100632ED4(v57, v58);
    sub_10074F6B4();
    v59 = *(v90 + 8);
    v60 = v58;
    v61 = v91;
    v59(v60, v91);
    v59(v57, v61);
LABEL_22:
    (*(v54 + 8))(v56, v55);
LABEL_45:
    v73 = &qword_100923228;
    v72 = v113;
    return sub_10000C8CC(v72, v73);
  }

  swift_getKeyPath();
  v37 = v102;
  sub_1007525B4();

  v38 = v103;
  v39 = v104;
  if ((*(v103 + 88))(v37, v104) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v38 + 8))(v37, v39);
    v55 = v111;
    v54 = v112;
    v56 = v110;
    (*(v112 + 16))(v105, v110, v111);
    if (qword_100920200 != -1)
    {
      swift_once();
    }

    sub_10074F6B4();
    goto LABEL_22;
  }

  (*(v38 + 96))(v37, v39);
  v40 = v94;
  v41 = v92;
  v42 = v93;
  (*(v94 + 32))(v92, v37, v93);
  sub_100748D54();
  v43 = v95;
  sub_1007444B4();

  v44 = (*(v96 + 88))(v43, v97);
  v45 = v110;
  v46 = v105;
  if (v44 == enum case for AppPlatform.phone(_:))
  {
    goto LABEL_6;
  }

  if (v44 == enum case for AppPlatform.pad(_:))
  {
    v62 = sub_100748CF4();
    v64 = v111;
    v63 = v112;
    (*(v112 + 16))(v46, v45, v111);
    if (v62)
    {
      if (qword_100920558 == -1)
      {
        goto LABEL_38;
      }
    }

    else if (qword_100920200 == -1)
    {
LABEL_38:

      sub_10074F6B4();
      (*(v40 + 8))(v41, v42);
      (*(v63 + 8))(v45, v64);
      goto LABEL_45;
    }

    swift_once();
    goto LABEL_38;
  }

  if (v44 == enum case for AppPlatform.messages(_:))
  {
LABEL_6:
    if (sub_100748CF4())
    {
      v48 = v111;
      v47 = v112;
      (*(v112 + 16))(v46, v45, v111);
      if (qword_1009217D8 != -1)
      {
        swift_once();
      }

      sub_10074F6B4();
      (*(v40 + 8))(v41, v42);
LABEL_36:
      (*(v47 + 8))(v45, v48);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v44 == enum case for AppPlatform.watch(_:))
  {
    v75 = v111;
    v74 = v112;
    (*(v112 + 16))(v105, v110, v111);
    if (qword_100920A18 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v44 == enum case for AppPlatform.tv(_:) || v44 == enum case for AppPlatform.mac(_:) || v44 == enum case for AppPlatform.vision(_:))
  {
LABEL_43:
    v75 = v111;
    v74 = v112;
    (*(v112 + 16))(v46, v45, v111);
    if (qword_100920200 == -1)
    {
LABEL_44:

      sub_10074F6B4();
      (*(v40 + 8))(v41, v42);
      (*(v74 + 8))(v45, v75);
      goto LABEL_45;
    }

LABEL_48:
    swift_once();
    goto LABEL_44;
  }

  v115 = v100;
  v79 = v113;
  v80 = v99;
  sub_100016B4C(v113, v99, &qword_100923228);
  v81 = *(v98 + 48);
  sub_1000E1F2C();
  sub_100745684();
  (*(v40 + 8))(v41, v42);
  (*(v112 + 8))(v45, v111);
  sub_10000C8CC(v79, &qword_100923228);
  sub_10000C8CC(v80 + v81, &unk_10093D6E0);
  sub_10000C8CC(v80, &unk_10093D6E0);
  return (*(v96 + 8))(v95, v97);
}

uint64_t sub_1003FA698@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v23 = a5;
  v24 = a2;
  v25 = a4;
  v26 = a6;
  v29 = a3;
  v27 = a7;
  v28 = a8;
  v9 = sub_10074E984();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100923228);
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v22 - v17;
  sub_100016B4C(a1, &v22 - v17, &unk_10093D6E0);
  sub_100016B4C(v24, &v18[*(v13 + 48)], &unk_10093D6E0);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450);
  sub_1007525B4();

  v24 = v10;
  if ((*(v10 + 88))(v12, v9) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v30 = v25;
    v31 = v23;
    sub_100016B4C(v18, v15, &qword_100923228);
    v19 = *(v13 + 48);
    sub_1003FACA8();
    sub_100745684();
    sub_10000C8CC(v18, &qword_100923228);
    sub_10000C8CC(&v15[v19], &unk_10093D6E0);
    return sub_10000C8CC(v15, &unk_10093D6E0);
  }

  else
  {
    v30 = v25;
    sub_100016B4C(v18, v15, &qword_100923228);
    v21 = *(v13 + 48);
    sub_1000E1F2C();
    sub_100745674();
    sub_10000C8CC(v18, &qword_100923228);
    sub_10000C8CC(&v15[v21], &unk_10093D6E0);
    sub_10000C8CC(v15, &unk_10093D6E0);
    return (*(v24 + 8))(v12, v9);
  }
}

uint64_t sub_1003FAA74()
{
  sub_1003FACA8();

  return sub_100745684();
}

uint64_t sub_1003FAB58()
{
  sub_1003FACA8();

  return sub_100745674();
}

uint64_t sub_1003FAC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003FAD0C();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

unint64_t sub_1003FACA8()
{
  result = qword_1009368F0;
  if (!qword_1009368F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009368F0);
  }

  return result;
}

unint64_t sub_1003FAD0C()
{
  result = qword_1009368F8;
  if (!qword_1009368F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009368F8);
  }

  return result;
}

void *sub_1003FAD60(uint64_t a1)
{
  v38 = sub_1007418C4();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v30 = v1;
    v44 = _swiftEmptyArrayStorage;
    sub_10001E6FC(0, v5, 0);
    v43 = v44;
    v7 = a1 + 56;
    result = sub_1007543B4();
    v8 = result;
    v9 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v5;
    v33 = v3;
    v34 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v12 = v37;
      v13 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v8, v38);
      v14 = sub_1007418B4();
      v41 = v15;
      v42 = v14;
      v40 = sub_1007418A4();
      v17 = v16;
      result = (*(v3 + 8))(v12, v13);
      v18 = v43;
      v44 = v43;
      v20 = v43[2];
      v19 = v43[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10001E6FC((v19 > 1), v20 + 1, 1);
        v18 = v44;
      }

      v18[2] = v20 + 1;
      v21 = &v18[4 * v20];
      v22 = v41;
      v21[4] = v42;
      v21[5] = v22;
      v21[6] = v40;
      v21[7] = v17;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v34;
      v23 = *(v34 + 8 * v11);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v43 = v18;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (v31 + 8 * v11);
        v3 = v33;
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1001D3DC4(v8, v39, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1001D3DC4(v8, v39, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v32)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

Swift::Int sub_1003FB078()
{
  sub_100754834();
  sub_100753174();
  sub_100753174();
  return sub_100754884();
}

uint64_t sub_1003FB0E0()
{
  sub_100753174();

  return sub_100753174();
}

Swift::Int sub_1003FB130()
{
  sub_100754834();
  sub_100753174();
  sub_100753174();
  return sub_100754884();
}

uint64_t sub_1003FB194(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_100754754(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_100754754();
    }
  }

  return result;
}

uint64_t sub_1003FB238()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753DF4();
  qword_100980200 = result;
  return result;
}

uint64_t sub_1003FB27C()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_100936900 = v5;
  return result;
}

uint64_t sub_1003FB374()
{
  v34 = sub_10074BCF4();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v35 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750B04();
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v25 - v8;
  __chkstk_darwin(v9);
  v37 = &v25 - v10;
  v11 = sub_10074BD24();
  sub_100039C50(v11, qword_100936908);
  v32 = sub_10000D0FC(v11, qword_100936908);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v45 = 0x4024000000000000;
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_100980D80);
  v14 = *(v12 - 8);
  v30 = *(v14 + 16);
  v15 = v14 + 16;
  v30(v4, v13, v12);
  v28 = v15;
  v29 = enum case for FontSource.useCase(_:);
  v36 = v2[13];
  v36(v4);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v42);
  v17 = v2[2];
  v17(v16, v4, v1);
  v27 = v17;
  sub_100750B14();
  v26 = v2[1];
  v26(v4, v1);
  v18 = v30;
  v30(v4, v13, v12);
  v19 = v29;
  (v36)(v4, v29, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v42);
  v17(v20, v4, v1);
  sub_100750B14();
  v21 = v26;
  v26(v4, v1);
  v18(v4, v13, v12);
  (v36)(v4, v19, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v42);
  v27(v22, v4, v1);
  sub_100750B14();
  v21(v4, v1);
  v44 = &protocol witness table for Double;
  v43 = &type metadata for Double;
  v42[0] = 0x4024000000000000;
  if (qword_100920BA8 != -1)
  {
    swift_once();
  }

  v23 = qword_100936900;
  [v23 contentInsets];

  (*(v33 + 104))(v35, enum case for PlatformSelectorViewLayout.Metrics.AccessoryAlignment.inline(_:), v34);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39 = 0x402C000000000000;
  return sub_10074BD04();
}

char *sub_1003FB914(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v15 = &ObjectType - v14;
  v16 = &v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_numberOfBadges] = 0;
  v17 = &v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v53 = sub_10000D0FC(v18, qword_100980D80);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v15, v53, v18);
  v54 = *(v19 + 56);
  v54(v15, 0, 1, v18);
  v57 = enum case for DirectionalTextAlignment.none(_:);
  v56 = *(v10 + 104);
  v56(v12);
  v55 = sub_100745C84();
  v21 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel] = sub_100745C74();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v22 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel] = sub_100745C74();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v23 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel] = sub_100745C74();
  v24 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView] = v24;
  v58.receiver = v4;
  v58.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v58, "initWithFrame:", a1, a2, a3, a4);
  sub_10000C518(&unk_1009231A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007AC000;
  v27 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  *(inited + 32) = v27;
  v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel];
  *(inited + 40) = v28;
  v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel];
  *(inited + 48) = v29;
  v30 = inited & 0xC000000000000001;
  v31 = v25;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = sub_100754574();
  }

  else
  {
    v35 = v32;
  }

  v36 = v35;
  if (qword_100920BA0 != -1)
  {
    swift_once();
  }

  [v36 setTextColor:{qword_100980200, ObjectType}];
  [v31 addSubview:v36];

  if (v30)
  {
    v37 = sub_100754574();
  }

  else
  {
    v37 = *(inited + 40);
  }

  v38 = v37;
  if (qword_100920BA0 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_100980200];
  [v31 addSubview:v38];

  if (v30)
  {
    v39 = sub_100754574();
  }

  else
  {
    v39 = *(inited + 48);
  }

  v40 = v39;
  if (qword_100920BA0 != -1)
  {
    swift_once();
  }

  v41 = qword_100980200;
  [v40 setTextColor:qword_100980200];
  [v31 addSubview:v40];

  swift_setDeallocating();
  swift_arrayDestroy();
  v42 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView;
  [*&v31[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView] setTintColor:v41];
  v43 = *&v31[v42];
  v44 = v31;
  [v44 addSubview:v43];
  [v44 layoutMargins];
  v46 = v45;
  [v44 layoutMargins];
  v48 = v47;
  [v44 layoutMargins];
  [v44 setLayoutMargins:{v46, 0.0, v48}];
  v49 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v44 action:"didTapSelectorView"];

  [v44 addGestureRecognizer:v49];
  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v44 selector:"smartInvertDidChange" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  sub_100016C60(0, &qword_1009239F8);
  sub_100753844();
  sub_100753D44();

  swift_unknownObjectRelease();

  return v44;
}

void sub_1003FC0B4()
{
  swift_getObjectType();
  v1 = sub_100746584();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v53 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v36 - v5;
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images))
    {
      v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images);
      v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits);
      if (v13)
      {
        v48 = v9;
        v49 = v0;
        v46 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text);
        swift_getObjectType();

        swift_unknownObjectRetain();
        v50 = sub_1003FD11C(v12, v13);
        if (qword_100920BB0 != -1)
        {
          swift_once();
        }

        v14 = sub_10074BD24();
        v45 = sub_10000D0FC(v14, qword_100936908);
        sub_10074BD14();
        sub_10000C888(v54, v54[3]);
        sub_100536120();
        v51 = v13;
        sub_100750564();
        v16 = v15;
        (*(v8 + 8))(v11, v48);
        v17 = sub_1003FD42C(v12, v16);

        sub_10000C620(v54);
        sub_10000C518(&unk_100936990);
        v18 = *(v2 + 72);
        v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v37 = swift_allocObject();
        v20 = v37 + v19;
        v21 = *(v2 + 104);
        v42 = enum case for BadgeDisplayStyle.above(_:);
        (v21)(v37 + v19);
        v44 = v18;
        v39 = enum case for BadgeDisplayStyle.inline(_:);
        (v21)(v20 + v18);
        v22 = v20 + 2 * v18;
        *v22 = v17;
        *(v22 + 8) = 0;
        v43 = enum case for BadgeDisplayStyle.left(_:);
        v21();
        v40 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
        v41 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel;
        v25 = *(v2 + 16);
        v23 = v2 + 16;
        v24 = v25;
        v26 = (v23 + 72);
        v38 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel;
        v48 = v23;
        v27 = (v23 - 8);
        v28 = 3;
        v36[1] = v20;
        v47 = v1;
        while (1)
        {
          v24(v6, v20, v1);
          v33 = v53;
          v24(v53, v6, v1);
          v34 = (*v26)(v33, v1);
          if (v34 == v43)
          {
            v29 = v49;
            v30 = v41;
          }

          else if (v34 == v42)
          {
            v29 = v49;
            v30 = v40;
          }

          else
          {
            if (v34 != v39)
            {
              v35 = *v27;
              v31 = *(v49 + v40);
              v35(v53, v1);
              goto LABEL_9;
            }

            v29 = v49;
            v30 = v38;
          }

          v31 = *(v29 + v30);
LABEL_9:

          swift_unknownObjectRetain();
          v32 = sub_10074BCD4();

          swift_unknownObjectRelease();
          [v31 setAttributedText:v32];

          v1 = v47;
          (*v27)(v6, v47);
          v20 += v44;
          if (!--v28)
          {

            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_1003FC7C0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100750354();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074BD24();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074BD44();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100746584();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v31 - v17;
  v48.receiver = v0;
  v48.super_class = ObjectType;
  v38 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v16);
  sub_100746574();
  v19 = *(v10 + 16);
  v19(v14, v18, v9);
  v20 = (*(v10 + 88))(v14, v9);
  if (v20 == enum case for BadgeDisplayStyle.left(_:))
  {
    v21 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel;
LABEL_7:
    v22 = *&v0[v21];
    goto LABEL_8;
  }

  if (v20 == enum case for BadgeDisplayStyle.above(_:))
  {
    v21 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
    goto LABEL_7;
  }

  if (v20 == enum case for BadgeDisplayStyle.inline(_:))
  {
    v21 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel;
    goto LABEL_7;
  }

  v29 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  v30 = *(v10 + 8);
  v31 = v10 + 8;
  v32 = v30;
  v22 = v29;
  v32(v14, v9);
LABEL_8:
  sub_1003FCCC0();
  if (qword_100920BB0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v4, qword_100936908);
  (*(v34 + 16))(v35, v23, v4);
  v19(v33, v18, v9);
  v46 = sub_100745C84();
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v24 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView];
  v43 = sub_100016C60(0, &qword_10092BFC0);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v22;
  v26 = v24;
  sub_10074BD34();
  sub_1007477B4();
  v27 = v39;
  sub_10074BCE4();

  (*(v40 + 8))(v27, v41);
  (*(v36 + 8))(v8, v37);
  return (*(v10 + 8))(v18, v9);
}

id sub_1003FCCC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
  sub_100745C84();
  v2 = v1;
  v3 = sub_100753FC4();

  [v2 setHidden:(v3 & 1) == 0];
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel);
  v5 = sub_100753FC4();

  [v4 setHidden:(v5 & 1) == 0];
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel);
  v7 = sub_100753FC4();

  return [v6 setHidden:(v7 & 1) == 0];
}

uint64_t sub_1003FCE0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1003FCE18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

id sub_1003FCE68()
{
  v1 = sub_100746584();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  sub_100746574();
  (*(v2 + 32))(v4, v7, v1);
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for BadgeDisplayStyle.left(_:))
  {
    v9 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel;
  }

  else if (v8 == enum case for BadgeDisplayStyle.above(_:))
  {
    v9 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
  }

  else
  {
    if (v8 != enum case for BadgeDisplayStyle.inline(_:))
    {
      v12 = *(v2 + 8);
      v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
      v12(v4, v1);
      return v13;
    }

    v9 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel;
  }

  v10 = *(v0 + v9);

  return v10;
}

uint64_t sub_1003FD11C(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100016C60(0, &qword_100923AB0);
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  sub_10000D0FC(v8, qword_100980D80);
  v9 = [a2 traitCollection];
  v10 = sub_100753C14();

  v17[1] = sub_100016C60(0, &qword_10092E500);

  v17[0] = [a2 traitCollection];
  if (qword_100920BB0 != -1)
  {
    swift_once();
  }

  v11 = sub_10074BD24();
  sub_10000D0FC(v11, qword_100936908);
  sub_10074BD14();
  sub_10000C888(v18, v18[3]);
  sub_100536120();
  sub_100750564();
  (*(v4 + 8))(v6, v3);
  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v13 = NSFontAttributeName;
  v14 = v10;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_100168AA4(inited + 32);
  v15 = sub_100753874();

  sub_10000C620(v18);
  return v15;
}

double sub_1003FD42C(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v5 = 0;
    v6 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100754574();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v7 size];
      v11 = v10;

      v6 = v6 + v11 + a2;
      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0.0;
}

char *sub_1003FD52C(unint64_t a1)
{
  v25 = sub_1007428D4();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v5 = 0;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = a1 & 0xC000000000000001;
    v19 = (v2 + 8);
    v20 = i;
    v21 = a1;
    while (v23)
    {
      sub_100754574();
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v7 = v24;
      sub_1007444B4();
      v26 = sub_1007428C4();
      v9 = v8;
      (*v19)(v7, v25);
      v10 = sub_1007444E4();
      v12 = v11;
      v13 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1002563A4(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1002563A4((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[32 * v15];
      *(v16 + 4) = v26;
      *(v16 + 5) = v9;
      *(v16 + 6) = v10;
      *(v16 + 7) = v12;
      v27 = v13;
      v2 = sub_1007444A4();
      v17 = sub_1003FAD60(v2);

      sub_1004A0208(v17);

      ++v5;
      a1 = v21;
      if (v6 == v20)
      {
        return v27;
      }
    }

    if (v5 >= *(v22 + 16))
    {
      goto LABEL_16;
    }

    v6 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003FD7B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1003FD7FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1003FD850()
{
  result = qword_1009369A0;
  if (!qword_1009369A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009369A0);
  }

  return result;
}

void sub_1003FD8A4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v8 - 8);
  v10 = &v178 - v9;
  v11 = sub_10074A0A4();
  if (v11)
  {
    v12 = v11;
    v13 = [a1 traitCollection];
    v14 = sub_10074A094();

    *&v187 = v12;
    sub_100744104();
    if ((sub_10074CA34() & 1) != 0 && *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      sub_10074AA74();
    }

    sub_100742374();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for ContentSearchResultCollectionViewCell();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
LABEL_10:

        return;
      }

      v16 = v15;
      v17 = a2;
      sub_100742364();
      goto LABEL_8;
    }

    sub_1007474C4();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for BundleSearchResultCollectionViewCell();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        goto LABEL_10;
      }

      v20 = v19;
      v21 = a2;
      v22 = sub_1007474B4();
      v23 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
      v24 = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v25 = [v24 horizontalSizeClass];

      if (v25 == 1)
      {
        [*(v4 + v23) pageMarginInsets];
        top = v26;
        left = v28;
        bottom = v30;
        right = v32;
      }

      else
      {
        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
      }

      v50 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
      v51 = [v20 contentView];
      [v51 setLayoutMargins:{top, left, bottom, right}];

      v52 = sub_1007469A4();
      (*(*(v52 - 8) + 56))(v10, 1, 1, v52);
      sub_100028DB0(v22, v10, v50);
      sub_10000C8CC(v10, &unk_100923200);
      v53 = sub_10074EFA4();
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = _swiftEmptyArrayStorage;
      }

      sub_10070E31C(v54);

      [v20 setNeedsLayout];

      v55 = sub_1007474B4();
      sub_1005060C0(v55, *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader));

      v56 = sub_1007474B4();
      sub_100400C68(v56, v21, v4);

LABEL_27:

      return;
    }

    sub_100747E74();
    if (!swift_dynamicCastClass())
    {
      sub_1007493C4();
      v57 = swift_dynamicCastClass();
      if (v57)
      {
        v58 = v57;
        type metadata accessor for EditorialSearchResultCollectionViewCell();
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = v59;
          v61 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          v62 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = swift_getObjectType();
          v186 = a2;
          v63 = [swift_unknownObjectRetain() traitCollection];
          v64 = [v63 horizontalSizeClass];

          if (v64 == 1)
          {
            [*(v4 + v61) pageMarginInsets];
            v66 = v65;
            v68 = v67;
            v70 = v69;
            v72 = v71;
          }

          else
          {
            v66 = UIEdgeInsetsZero.top;
            v68 = UIEdgeInsetsZero.left;
            v70 = UIEdgeInsetsZero.bottom;
            v72 = UIEdgeInsetsZero.right;
          }

          v81 = ASKDeviceTypeGetCurrent();
          v82 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          v83 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkIconFetcher);
          v84 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
          swift_unknownObjectRetain();
          sub_1006D5DA8(v58, v62, v82, v83, v84, v60, v66, v68, v70, v72);

          swift_unknownObjectRelease_n();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {

            sub_10074B184();
            sub_100752764();
            sub_100752D34();
            ObjectType = v187;
            v86 = swift_unknownObjectWeakLoadStrong();
            if (v86)
            {
              sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView);
            }

            sub_10040831C(&qword_100936A98, type metadata accessor for EditorialSearchResultCollectionViewCell);
            v130 = v186;
            v131 = ObjectType;
            sub_10074B164();
          }
        }

        sub_100401148(v58, a2, v4);
      }

      else
      {
        sub_100741ED4();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v186 = a2;
            v73 = sub_100741EC4();
            v74 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
            ObjectType = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
            v75 = [*(v3 + v74) traitCollection];
            v76 = [v75 horizontalSizeClass];

            if (v76 == 1)
            {
              [*(v4 + v74) pageMarginInsets];
            }

            else
            {
              v77 = UIEdgeInsetsZero.top;
              v78 = UIEdgeInsetsZero.left;
              v79 = UIEdgeInsetsZero.bottom;
              v80 = UIEdgeInsetsZero.right;
            }

            sub_1000E5BA0(v73, *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph), *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader), v77, v78, v79, v80);
          }

          v132 = sub_100741EC4();
          sub_100401628(v132, a2, v4);
          goto LABEL_9;
        }

        sub_10074C814();
        v99 = swift_dynamicCastClass();
        if (v99)
        {
          v100 = v99;
          type metadata accessor for SearchLockupListCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v186 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
            *&v184 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
            v101 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
            v102 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits);
            ObjectType = a2;
            v103 = [swift_unknownObjectRetain() traitCollection];
            v104 = [v103 horizontalSizeClass];

            if (v104 == 1)
            {
              [*(v3 + v101) pageMarginInsets];
            }

            else
            {
              v105 = UIEdgeInsetsZero.top;
              v106 = UIEdgeInsetsZero.left;
              v107 = UIEdgeInsetsZero.bottom;
              v108 = UIEdgeInsetsZero.right;
            }

            sub_10032D230(v100, v186, v184, v102, v105, v106, v107, v108);

            swift_unknownObjectRelease();
          }

          sub_100401B08(v100, a2, v3);
        }

        else
        {
          sub_100742574();
          v186 = swift_dynamicCastClass();
          if (!v186)
          {
            goto LABEL_10;
          }

          type metadata accessor for AppEventSearchResultCollectionViewCell();
          v133 = swift_dynamicCastClass();
          if (!v133)
          {
            type metadata accessor for ContentSearchResultCollectionViewCell();
            v150 = swift_dynamicCastClass();
            if (!v150)
            {
              goto LABEL_10;
            }

            v16 = v150;
            v17 = a2;
            sub_100742564();
LABEL_8:
            v18 = sub_100668924(v14 & 1);

            sub_1003FEC50(v18, v16, a3, a1);

LABEL_9:

            goto LABEL_10;
          }

          v134 = v133;
          v135 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          v136 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = a2;
          [v136 pageMarginInsets];
          v138 = v137;
          v139 = [*(v4 + v135) traitCollection];
          v140 = [v139 horizontalSizeClass];

          v141 = v134;
          if (v140 == 1)
          {
            [*(v4 + v135) pageMarginInsets];
            v143 = v142;
            v145 = v144;
            v147 = v146;
            v149 = v148;
          }

          else
          {
            v143 = UIEdgeInsetsZero.top;
            v145 = UIEdgeInsetsZero.left;
            v147 = UIEdgeInsetsZero.bottom;
            v149 = UIEdgeInsetsZero.right;
          }

          v151 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          *&v184 = *(v4 + v135);
          swift_unknownObjectRetain();
          v152 = [v141 contentView];
          [v152 setLayoutMargins:{v143, v145, v147, v149}];

          v153 = *&v141[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView];
          *&v153[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = v138;
          [v153 setNeedsLayout];
          sub_100016C60(0, &qword_100923500);
          v154 = sub_100753E04();
          [v141 setBackgroundColor:v154];

          v155 = sub_100742564();
          v156 = sub_1007469A4();
          (*(*(v156 - 8) + 56))(v10, 1, 1, v156);
          sub_100028DB0(v155, v10, v151);

          sub_10000C8CC(v10, &unk_100923200);
          v183 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView;
          v157 = sub_100742554();
          v158 = v151;
          v159 = v141;
          sub_100195300(v157, v158);

          v160 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v161 = swift_allocObject();
          v162 = v186;
          *(v161 + 2) = v160;
          *(v161 + 3) = v162;
          *(v161 + 4) = v158;
          v163 = &v141[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          v164 = *&v141[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          *v163 = sub_100408308;
          v163[1] = v161;

          v182 = v158;

          sub_1000164A8(v164);

          [v141 setNeedsLayout];
          swift_unknownObjectRelease();
          isa = sub_100741704().super.isa;
          v166 = [a1 layoutAttributesForItemAtIndexPath:isa];

          if (v166)
          {
            [v166 frame];
            v180 = v167;
            v181 = v168;
            v179 = v169;
            v184 = v170;

            *&v172 = v179;
            *&v171 = v180;
            *(&v171 + 1) = v181;
            *(&v172 + 1) = v184;
          }

          else
          {
            v171 = 0uLL;
            v172 = 0uLL;
          }

          v173 = ObjectType;
          v187 = v171;
          v188 = v172;
          v189 = v166 == 0;
          sub_1003FFD38(v186, v159, &v187);
          v174 = swift_unknownObjectWeakLoadStrong();
          if (v174)
          {

            sub_10074B184();
            sub_100752764();
            sub_100752D34();
            v175 = v190;
            v176 = swift_unknownObjectWeakLoadStrong();
            if (v176)
            {
              sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView);
            }

            sub_10040831C(&qword_100929478, type metadata accessor for AppEventSearchResultCollectionViewCell);
            v177 = v173;
            sub_10074B164();
          }

          sub_100401FE8(v186, v159, v4);
        }
      }

LABEL_59:

      return;
    }

    type metadata accessor for AdvertSearchResultCollectionViewCell();
    v34 = swift_dynamicCastClass();
    if (!v34 || !*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
    {
      goto LABEL_10;
    }

    v35 = v34;
    v21 = a2;

    sub_10074AA64();

    sub_10000C518(&qword_100927780);
    sub_100745E64();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v183 = v21;
    v186 = v190;
    v36 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    v38 = v37;
    v39 = swift_unknownObjectRetain();
    v40 = [v39 traitCollection];
    v41 = [v40 horizontalSizeClass];

    v182 = v36;
    if (v41 == 1)
    {
      [*(v4 + v36) pageMarginInsets];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
    }

    else
    {
      v43 = UIEdgeInsetsZero.top;
      v45 = UIEdgeInsetsZero.left;
      v47 = UIEdgeInsetsZero.bottom;
      v49 = UIEdgeInsetsZero.right;
    }

    v87 = ASKDeviceTypeGetCurrent();
    v88 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
    ObjectType = OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
    v89 = *(v35 + OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView);
    *&v181 = v39;
    v90 = [v39 traitCollection];
    *&v184 = v88;
    sub_10054F6E0(v186, v90, v87, v88, v38, v43, v45, v47, v49);

    [v35 setNeedsLayout];
    swift_unknownObjectRelease();

    v91 = sub_100741704().super.isa;
    v92 = [a1 layoutAttributesForItemAtIndexPath:v91];

    if (v92)
    {
      [v92 frame];
      v179 = v93;
      v180 = v94;
      v178 = v95;
      v181 = v96;

      *&v98 = v178;
      *&v97 = v179;
      *(&v97 + 1) = v180;
      *(&v98 + 1) = v181;
    }

    else
    {
      v97 = 0uLL;
      v98 = 0uLL;
    }

    v187 = v97;
    v188 = v98;
    v189 = v92 == 0;
    v109 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
    v110 = *(v4 + v182);
    v111 = ObjectType;
    v112 = *&ObjectType[v35];
    swift_unknownObjectRetain();
    v113 = v112;
    v114 = [v110 traitCollection];
    sub_100551AD0(v186, &v187, v109, v114);
    swift_unknownObjectRelease();

    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v115 = v190;
    v116 = *&v111[v35];
    v117 = swift_unknownObjectWeakLoadStrong();
    if (v117)
    {
      sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView);
    }

    sub_10040831C(&unk_100936AA0, type metadata accessor for AdvertsSearchResultContentView);
    v118 = v116;
    sub_10074B164();

    v120 = v183;
    sub_100400C68(v119, v183, v4);
    v121 = sub_10074EED4();

    if (v121)
    {
      v122 = sub_100748644();

      v123 = *&ObjectType[v35];
      if (v122)
      {
        v124 = objc_opt_self();
        v125 = v123;
        v126 = [v124 clearColor];
        [v125 setBackgroundColor:v126];

LABEL_55:
        sub_10002A748(v122, v184);
        [v125 setNeedsLayout];

        [v35 setNeedsLayout];

        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = *&ObjectType[v35];

        v129 = v128;
        sub_10048862C(sub_100408314, v127);

        goto LABEL_59;
      }
    }

    else
    {
      v123 = *&ObjectType[v35];
    }

    v125 = v123;
    v122 = 0;
    goto LABEL_55;
  }
}

void sub_1003FEBC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController);
    v2 = Strong;

    if (v1)
    {
      sub_10074AA54();
    }
  }
}

void sub_1003FEC50(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v11 = v10;
  v12 = *(v4 + v9);
  v13 = [swift_unknownObjectRetain() traitCollection];
  v14 = [v13 horizontalSizeClass];

  if (v14 == 1)
  {
    [*(v5 + v9) pageMarginInsets];
    top = v15;
    left = v17;
    bottom = v19;
    right = v21;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v23 = ASKDeviceTypeGetCurrent();
  sub_1002207E8(a1, v12, v23, *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph), v11, top, left, bottom, right);
  swift_unknownObjectRelease();

  isa = sub_100741704().super.isa;
  v25 = [a4 layoutAttributesForItemAtIndexPath:isa];

  if (v25)
  {
    [v25 frame];
    v36 = v26;
    v37 = v27;
    v35 = v28;
    v38 = v29;

    *&v31 = v35;
    *&v30 = v36;
    *(&v30 + 1) = v37;
    *(&v31 + 1) = v38;
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
  }

  v40[0] = v30;
  v40[1] = v31;
  v41 = v25 == 0;
  v32 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
  v33 = *(v5 + v9);
  swift_unknownObjectRetain();
  sub_100222DA4(a1, v40, v32, v33);
  swift_unknownObjectRelease();
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView);
  }

  sub_10040831C(&unk_100936A40, type metadata accessor for ContentSearchResultCollectionViewCell);
  sub_10074B164();

  sub_100400C68(a1, a2, v5);
}

uint64_t sub_1003FEF5C(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v5 = swift_dynamicCastClass();
  v55 = a2;
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v10 = *(v7 + v8);
  if (v10 >> 62)
  {
    result = sub_100754664();
    v11 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_4:
      if (v11 < 1)
      {
        __break(1u);
        return result;
      }

      v53 = v2;
      v12 = v55;

      v13 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = sub_100754574();
        }

        else
        {
          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        ++v13;
        v56 = v14;
        type metadata accessor for BorderedScreenshotView();
        sub_10040831C(&qword_100923470, type metadata accessor for BorderedScreenshotView);
        v16 = v15;
        sub_1007544E4();
        sub_100744264();
        sub_100016994(v57);
        v17 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
        v58.value.super.isa = 0;
        v58.is_nil = 0;
        sub_100743384(v58, v18);
      }

      while (v11 != v13);

      v3 = v53;
      a2 = v55;
      goto LABEL_13;
    }
  }

  a2 = v55;
  v19 = v55;
LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [*(Strong + qword_10093CB50) setImage:0];
    v56 = v21;
    type metadata accessor for VideoView();
    sub_10040831C(&qword_10093DD00, type metadata accessor for VideoView);
    v22 = v21;
    sub_1007544E4();
    sub_100744264();

    sub_100016994(v57);
  }

  v23 = OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView;
  v24 = *(*(v6 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v59.value.super.isa = 0;
  v59.is_nil = 0;
  sub_100743384(v59, v25);

  v26 = *(*(v6 + v23) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_10040831C(&qword_100925570, &type metadata accessor for ArtworkView);
  v27 = v26;
  sub_100744274();

  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v28 = v57[0];
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView);
  }

  sub_10040831C(&unk_100936A40, type metadata accessor for ContentSearchResultCollectionViewCell);
  v30 = a2;
  sub_10074B124();

LABEL_18:
  result = sub_10074A0A4();
  if (!result)
  {
    return result;
  }

  type metadata accessor for AppEventSearchResultCollectionViewCell();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v33 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
    v34 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView;
    v35 = *(*(v31 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    v54 = a2;
    v36 = v35;
    v60.value.super.isa = 0;
    v60.is_nil = 0;
    sub_100743384(v60, v37);

    v38 = *(*(v32 + v34) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_1007433C4();
    sub_10040831C(&qword_100925570, &type metadata accessor for ArtworkView);
    v39 = v38;
    sub_100744274();

    sub_10051207C(v33, 1, v40);
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v41 = v57[0];
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView);
    }

    sub_10040831C(&qword_100929478, type metadata accessor for AppEventSearchResultCollectionViewCell);
    v43 = v54;
    sub_10074B124();

    a2 = v55;
  }

  type metadata accessor for AdvertSearchResultCollectionViewCell();
  if (swift_dynamicCastClass() && *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
  {
    v44 = a2;

    sub_10074AA84();
  }

  sub_100742374();
  if (!swift_dynamicCastClass())
  {
    sub_100747E74();
    if (swift_dynamicCastClass())
    {
      if (!*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
      {
      }

      sub_10074AA64();

      sub_10000C518(&qword_100927780);
      sub_100745E64();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }

      v45 = v56;
      goto LABEL_28;
    }

    sub_1007493C4();
    v46 = swift_dynamicCastClass();
    if (v46)
    {
      v47 = v46;

      sub_100402EFC(v47, v3);
    }

    else
    {
      sub_100741ED4();
      if (swift_dynamicCastClass())
      {
        v48 = sub_100741EC4();
        sub_100403160(v48, v3);
        goto LABEL_29;
      }

      sub_1007474C4();
      if (swift_dynamicCastClass())
      {
        v45 = sub_1007474B4();
        goto LABEL_28;
      }

      sub_10074C814();
      v49 = swift_dynamicCastClass();
      if (v49)
      {
        v50 = v49;

        sub_1004033C4(v50, v3);
      }

      else
      {
        sub_100742574();
        v51 = swift_dynamicCastClass();
        if (!v51)
        {
        }

        v52 = v51;
        if ((sub_10074A054() & 1) == 0)
        {
          v45 = sub_100742564();
          goto LABEL_28;
        }

        sub_100403628(v52, v3);
      }
    }
  }

  v45 = sub_100742364();
LABEL_28:
  sub_100402C98(v45, v3);
LABEL_29:
}

uint64_t sub_1003FF850(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, char *))
{
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v14, v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_1003FFD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  if ((*(a3 + 32) & 1) == 0)
  {
    v7 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
    v8 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView);
    v9 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v10 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    sub_100743384(v24, v11);

    v12 = *(v8 + v9);
    sub_1007433C4();
    sub_10040831C(&qword_100925570, &type metadata accessor for ArtworkView);
    v13 = v12;
    sub_100744274();

    v14 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView);
    v15 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView;
    sub_10051207C(v7, 1, v16);
    sub_100742564();
    v17 = sub_10074EF24();

    if (v17)
    {
      v23 = v14;
      v18 = qword_100920548;
      v19 = *(v8 + v9);
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = sub_100747064();
      sub_10000D0FC(v20, qword_10097E3A8);
      sub_100746F34();
      [v19 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v19 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      v21 = *(v8 + v9);
      sub_100744204();

      v14 = v23;
    }

    v22 = sub_100742554();
    sub_10001AB74(v22, v7, *(v14 + v15));
  }
}

void sub_10040008C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  v81 = a6;
  v80 = a5;
  v88 = sub_1007521E4();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100752224();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007521D4();
  v79 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_100752244();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v70 - v19;
  type metadata accessor for AdvertSearchResultCollectionViewCell();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v77 = v12;
    sub_1001A41D4(a2, aBlock);
    v23 = a1;
    sub_10000C518(&qword_100927780);
    sub_100745E64();
    if (swift_dynamicCast())
    {
      v78 = v23;
      v24 = v90[0];
      sub_1001A41D4(a3, aBlock);
      if (swift_dynamicCast())
      {
        v25 = v90[0];

        sub_100402C98(v26, v6);
        v74 = v24;

        sub_100400C68(v27, v78, v6);
        v75 = v25;

        v28 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
        [*(v6 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
        v71 = v29;
        v76 = [*(v6 + v28) traitCollection];
        v30 = [*(v6 + v28) traitCollection];
        v31 = [v30 horizontalSizeClass];

        v72 = v20;
        if (v31 == 1)
        {
          [*(v6 + v28) pageMarginInsets];
          top = v32;
          left = v34;
          bottom = v36;
          right = v38;
        }

        else
        {
          top = UIEdgeInsetsZero.top;
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
        }

        v40 = ASKDeviceTypeGetCurrent();
        v73 = v40;
        v70 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
        [v22 setUserInteractionEnabled:0];
        v41 = OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView] frame];
        v46 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v42, v43, v44, v45}];
        v47 = v75;
        v48 = v76;
        v49 = v40;
        v50 = v81;
        sub_10054F6E0(v75, v76, v49, v81, *&v71, top, left, bottom, right);
        [v46 layoutIfNeeded];
        [*&v22[v41] frame];
        v90[0] = v51;
        v90[1] = v52;
        v90[2] = v53;
        v90[3] = v54;
        v91 = 0;
        sub_100551AD0(v47, v90, v70, v48);
        v55 = (*&v22[v41] + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
        swift_beginAccess();
        v56 = *v55;
        v57 = v55[1];
        sub_10001B5AC(*v55);
        sub_10048862C(v56, v57);
        sub_1000164A8(v56);
        sub_100016C60(0, &qword_100926D00);
        v71 = sub_100753774();
        sub_100752234();
        v58 = 333;
        if ((v80 & 1) == 0)
        {
          v58 = 0;
        }

        *v15 = v58;
        v59 = v79;
        (*(v79 + 104))(v15, enum case for DispatchTimeInterval.milliseconds(_:), v13);
        v60 = v72;
        sub_1007522A4();
        (*(v59 + 8))(v15, v13);
        v82 = *(v82 + 8);
        v61 = v83;
        (v82)(v17, v83);
        v62 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = swift_allocObject();
        v63[2] = v62;
        v63[3] = v46;
        v63[4] = v50;
        aBlock[4] = sub_100403B70;
        aBlock[5] = v63;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000CF7B0;
        aBlock[3] = &unk_100874FD8;
        v64 = _Block_copy(aBlock);
        v65 = v46;

        v66 = v77;
        sub_100752204();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10040831C(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000C518(&unk_10092F750);
        sub_1000A8054();
        v67 = v85;
        v68 = v88;
        sub_1007543A4();
        v69 = v71;
        sub_100753734();
        _Block_release(v64);

        (*(v87 + 8))(v67, v68);
        (*(v84 + 8))(v66, v86);
        (v82)(v60, v61);
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

id sub_10040099C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultsCollectionViewDelegate()
{
  result = qword_100936A10;
  if (!qword_100936A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100400B24()
{
  sub_100400C0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100400C0C()
{
  if (!qword_100936A20)
  {
    sub_100752914();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_100936A20);
    }
  }
}

uint64_t sub_100400C68(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_100745E64();
  v36[3] = v32;
  v36[4] = sub_10040831C(&qword_100923400, &type metadata accessor for MixedMediaLockup);
  v36[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000C824(v36, v35);
  sub_10040831C(&unk_100936A30, &type metadata accessor for MixedMediaLockup);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v28 = sub_10000C888(v35, v35[3]);
    sub_100403B94(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for MixedMediaLockup, &unk_100936A30, &type metadata accessor for MixedMediaLockup);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v36);
}

uint64_t sub_100401148(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_1007493C4();
  v36[3] = v32;
  v36[4] = sub_10040831C(&qword_100936A50, &type metadata accessor for EditorialSearchResult);
  v36[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000C824(v36, v35);
  sub_10040831C(&qword_100936A58, &type metadata accessor for EditorialSearchResult);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v28 = sub_10000C888(v35, v35[3]);
    sub_1004042D0(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for EditorialSearchResult, &qword_100936A58, &type metadata accessor for EditorialSearchResult);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v36);
}

uint64_t sub_100401628(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_100741D54();
  v36[3] = v32;
  v36[4] = sub_10040831C(&qword_100936A60, &type metadata accessor for InAppPurchaseLockup);
  v36[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000C824(v36, v35);
  sub_10040831C(&qword_100936A68, &type metadata accessor for InAppPurchaseLockup);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v28 = sub_10000C888(v35, v35[3]);
    sub_100404A0C(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for InAppPurchaseLockup, &qword_100936A68, &type metadata accessor for InAppPurchaseLockup);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v36);
}

uint64_t sub_100401B08(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_10074C814();
  v36[3] = v32;
  v36[4] = sub_10040831C(&qword_100936A70, &type metadata accessor for LockupCollectionSearchResult);
  v36[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000C824(v36, v35);
  sub_10040831C(&unk_100936A78, &type metadata accessor for LockupCollectionSearchResult);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v28 = sub_10000C888(v35, v35[3]);
    sub_100405148(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for LockupCollectionSearchResult, &unk_100936A78, &type metadata accessor for LockupCollectionSearchResult);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v36);
}

uint64_t sub_100401FE8(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_100742574();
  v36[3] = v32;
  v36[4] = sub_10040831C(&qword_100923190, &type metadata accessor for AppEventSearchResult);
  v36[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000C824(v36, v35);
  sub_10040831C(&unk_100936A88, &type metadata accessor for AppEventSearchResult);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v28 = sub_10000C888(v35, v35[3]);
    sub_100405884(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for AppEventSearchResult, &unk_100936A88, &type metadata accessor for AppEventSearchResult);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v36);
}

uint64_t sub_1004024C8(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_100743EB4();
  v36[3] = v32;
  v36[4] = sub_10040831C(&qword_100933028, &type metadata accessor for LinkableText);
  v36[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_10000C824(v36, v35);
  sub_10040831C(&unk_100936AB0, &type metadata accessor for LinkableText);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v28 = sub_10000C888(v35, v35[3]);
    sub_100408364(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for LinkableText, &unk_100936AB0, &type metadata accessor for LinkableText);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v36);
}

uint64_t sub_1004029A8(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t))
{
  v24 = a2;
  v9 = sub_1007528E4();
  v22 = *(v9 - 8);
  v23 = v9;
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_100752914();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  a3(0, v17);
  sub_10040831C(a4, a5);
  sub_100752F24();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000C8CC(v14, &unk_100925380);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    if (*(v24 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      sub_100749544();
      sub_1007528F4();
      v20 = sub_100749534();
      (*(v22 + 8))(v11, v23);
      (*(v16 + 8))(v19, v15);
      return v20;
    }

    (*(v16 + 8))(v19, v15);
  }

  return 0;
}

uint64_t sub_100402C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100745E64();
  v15[4] = sub_10040831C(&qword_100923400, &type metadata accessor for MixedMediaLockup);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&unk_100936A30, &type metadata accessor for MixedMediaLockup);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_100405FC0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_100402EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_1007493C4();
  v15[4] = sub_10040831C(&qword_100936A50, &type metadata accessor for EditorialSearchResult);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&qword_100936A58, &type metadata accessor for EditorialSearchResult);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_1004066C0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_100403160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100741D54();
  v15[4] = sub_10040831C(&qword_100936A60, &type metadata accessor for InAppPurchaseLockup);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&qword_100936A68, &type metadata accessor for InAppPurchaseLockup);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_100406DC0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_1004033C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_10074C814();
  v15[4] = sub_10040831C(&qword_100936A70, &type metadata accessor for LockupCollectionSearchResult);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&unk_100936A78, &type metadata accessor for LockupCollectionSearchResult);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_1004074C0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_100403628(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100742574();
  v15[4] = sub_10040831C(&qword_100923190, &type metadata accessor for AppEventSearchResult);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&unk_100936A88, &type metadata accessor for AppEventSearchResult);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_100407BC0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_10040388C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100743EB4();
  v15[4] = sub_10040831C(&qword_100933028, &type metadata accessor for LinkableText);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&unk_100936AB0, &type metadata accessor for LinkableText);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_100408C4C(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_100403AF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100403B28()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100403B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100403B94(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100745E64();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100923400, &type metadata accessor for MixedMediaLockup);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936A30, &type metadata accessor for MixedMediaLockup);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749544();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_1004042D0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_1007493C4();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100936A50, &type metadata accessor for EditorialSearchResult);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&qword_100936A58, &type metadata accessor for EditorialSearchResult);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749544();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_100404A0C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100741D54();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100936A60, &type metadata accessor for InAppPurchaseLockup);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&qword_100936A68, &type metadata accessor for InAppPurchaseLockup);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749544();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_100405148(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10074C814();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100936A70, &type metadata accessor for LockupCollectionSearchResult);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936A78, &type metadata accessor for LockupCollectionSearchResult);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749544();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_100405884(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100742574();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100923190, &type metadata accessor for AppEventSearchResult);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936A88, &type metadata accessor for AppEventSearchResult);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749544();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_100405FC0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100745E64();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100923400, &type metadata accessor for MixedMediaLockup);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936A30, &type metadata accessor for MixedMediaLockup);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_1004066C0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_1007493C4();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100936A50, &type metadata accessor for EditorialSearchResult);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&qword_100936A58, &type metadata accessor for EditorialSearchResult);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_100406DC0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100741D54();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100936A60, &type metadata accessor for InAppPurchaseLockup);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&qword_100936A68, &type metadata accessor for InAppPurchaseLockup);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_1004074C0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10074C814();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100936A70, &type metadata accessor for LockupCollectionSearchResult);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936A78, &type metadata accessor for LockupCollectionSearchResult);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_100407BC0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100742574();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100923190, &type metadata accessor for AppEventSearchResult);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936A88, &type metadata accessor for AppEventSearchResult);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t sub_1004082C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10040831C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100408364(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100743EB4();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100933028, &type metadata accessor for LinkableText);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936AB0, &type metadata accessor for LinkableText);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749544();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

void sub_100408AA0(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SearchTransparencyView();
  if (sub_1007539C4() == a2 && v7 == a3)
  {
  }

  else
  {
    v9 = sub_100754754();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v17 = a1;
    v12 = sub_10074A074();
    if (v12)
    {
      v13 = v12;
      v14 = sub_100743EA4();
      v15 = sub_1001D3738(v14, sub_1000E12F0);

      v16 = sub_100743E94();
      sub_10004DF04(v16, 0, v15);

      [v11 setNeedsLayout];
      sub_1004024C8(v13, v17, v3);
    }
  }
}

uint64_t sub_100408C4C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100743EB4();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100933028, &type metadata accessor for LinkableText);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936AB0, &type metadata accessor for LinkableText);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0);
  }

  return sub_10000C620(v55);
}

uint64_t type metadata accessor for CappedSizeDynamicTypeButton()
{
  result = qword_100936AC8;
  if (!qword_100936AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004093EC(void *a1)
{
  v3 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_100936AC0];
  *&v1[qword_100936AC0] = a1;
  v21 = v10;
  if (!a1)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v19 = a1;
    goto LABEL_14;
  }

  v11 = sub_100753094();
  v13 = v12;
  if (v11 != sub_100753094() || v13 != v14)
  {
    v16 = sub_100754754();
    v17 = a1;

    if (v16)
    {

      v18 = v21;

      return;
    }

LABEL_14:
    sub_100746694();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_10006A144(v5);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_100746684();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v9, v6);
    }

    return;
  }
}

uint64_t sub_1004096A0()
{
  v1 = *(v0 + qword_100936AC0);
  if (v1)
  {
    sub_1007466C4();
    v2 = sub_1007466D4();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = sub_100753934();
    if (v4)
    {
      sub_10000C518(&unk_1009231A0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1007A7210;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_10021C300();
      isa = sub_100753294().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  sub_1007466C4();
  v11 = sub_1007466D4();

  return v11();
}

id sub_100409848(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_100936AC0] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CappedSizeDynamicTypeButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1004098D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100409928(void *a1)
{
  v2 = v1;
  sub_100750794();
  if (*(v2 + 1) == 1)
  {
    v8 = sub_100751154();
    v9 = &protocol witness table for Resize;
    v4 = sub_10000D134(v7);
    sub_100409B1C(a1, v4);
  }

  else
  {
    sub_10000C824(v2 + 104, v6);
    v8 = sub_1007511A4();
    v9 = &protocol witness table for Margins;
    sub_10000D134(v7);
    sub_100751194();
  }

  sub_100750754();
  sub_10000C620(v7);
  sub_1007535A4();
  sub_10000C888((v2 + 144), *(v2 + 168));
  sub_100750434();
  v6[3] = sub_1007511A4();
  v6[4] = &protocol witness table for Margins;
  sub_10000D134(v6);
  sub_100751194();
  sub_1007510F4();
  v8 = sub_100751104();
  v9 = &protocol witness table for Center;
  sub_10000D134(v7);
  sub_100751114();
  sub_100750754();
  return sub_10000C620(v7);
}

uint64_t sub_100409B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v41 = sub_100751144();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v43 = (&v33 - v8);
  __chkstk_darwin(v9);
  v42 = (&v33 - v10);
  __chkstk_darwin(v11);
  v13 = (&v33 - v12);
  v14 = sub_1007511A4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1007506E4();
  v40 = *(v35 - 8);
  __chkstk_darwin(v35);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007506B4();
  sub_1007506C4();
  sub_100753B14();
  CGRectGetWidth(v50);
  v20 = [a1 preferredContentSizeCategory];
  sub_100753954();

  v36 = v3;
  sub_10000C824(v3 + 104, v47);
  v38 = v17;
  sub_100751194();
  v46[3] = v14;
  v46[4] = &protocol witness table for Margins;
  v37 = v14;
  v21 = sub_10000D134(v46);
  v39 = v15;
  (*(v15 + 16))(v21, v17, v14);
  *v13 = sub_1000B2740;
  v13[1] = 0;
  v22 = *(v5 + 104);
  v23 = v41;
  v22(v13, enum case for Resize.Rule.recalculated(_:), v41);
  v24 = enum case for Resize.Rule.unchanged(_:);
  v25 = v42;
  v22(v42, enum case for Resize.Rule.unchanged(_:), v23);
  v26 = v43;
  v22(v43, v24, v23);
  v22(v45, v24, v23);
  v48 = sub_100751154();
  v49 = &protocol witness table for Resize;
  sub_10000D134(v47);
  sub_100751164();
  v27 = v19;
  v34 = v19;
  sub_1007506C4();
  sub_10000C620(v47);
  v28 = v35;
  v48 = v35;
  v49 = &protocol witness table for DisjointStack;
  v29 = sub_10000D134(v47);
  v30 = v40;
  (*(v40 + 16))(v29, v27, v28);
  v22(v13, v24, v23);
  v31 = *(v36 + 48);
  v25[3] = &type metadata for CGFloat;
  v25[4] = &protocol witness table for CGFloat;
  *v25 = v31;
  v22(v25, enum case for Resize.Rule.replaced(_:), v23);
  v22(v26, v24, v23);
  v22(v45, v24, v23);
  sub_100751164();
  (*(v39 + 8))(v38, v37);
  return (*(v30 + 8))(v34, v28);
}

uint64_t sub_10040A0F4()
{
  v0 = sub_1007506A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1007507D4();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_100750694();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  sub_100750664();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  sub_100750654();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  return sub_100750674();
}

uint64_t sub_10040A29C()
{
  v0 = sub_1007506A4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  sub_100750654();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return sub_100750664();
}

uint64_t sub_10040A3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10040A408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10040A484(void *a1)
{
  v2 = sub_1007507B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100409928(a1);
  sub_100751254();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_10040A5BC(void *a1)
{
  v2 = sub_1007507B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100409928(a1);
  sub_100751244();
  return (*(v3 + 8))(v5, v2);
}

__n128 sub_10040A6E4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 sub_10040A6F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10040A70C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
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

uint64_t sub_10040A760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_10040A7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v71 = a2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074ED34();
  v72 = *(v8 - 8);
  __chkstk_darwin(v8);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v64 - v11;
  v12 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v12 - 8);
  v14 = &v64 - v13;
  v15 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v21 - 8);
  v23 = &v64 - v22;
  v24 = sub_10000C518(&unk_100925540);
  *&v25 = __chkstk_darwin(v24 - 8).n128_u64[0];
  v27 = &v64 - v26;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView;
  v29 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView];
  v77 = a1;
  if (v29 || (v30 = [v4 traitCollection], v31 = v8, v32 = v4, v33 = sub_100667CFC(v30), v30, v34 = v33, v4 = v32, v8 = v31, sub_100667524(v34), sub_100667530(0), (v29 = *&v4[v28]) != 0))
  {
    v35 = sub_10000C518(&unk_10092EEA0);
    v36 = *(*(v35 - 8) + 56);
    v76 = v27;
    v36(v27, 1, 1, v35);
    v69 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
    v37 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView];
    v75 = v29;
    v38 = sub_10074EF24();
    if (v38)
    {
    }

    [v37 setHidden:v38 == 0];
    v39 = v75;
    v40 = *&v75[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
    v41 = sub_100742E24();
    (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
    v42 = sub_100745E94();
    (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
    v43 = sub_10000C518(&unk_100925560);
    (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
    v44 = sub_10074F8B4();
    (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
    sub_100656038(v77, v40, v76, v73, 1, 0, v23, v20, v14, v17);
    sub_10000C8CC(v14, &unk_100925520);
    v40[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v40 setNeedsLayout];
    sub_10000C8CC(v17, &unk_100925990);
    sub_10000C8CC(v20, &unk_1009259A0);
    sub_10000C8CC(v23, &unk_100925530);
    v45 = v74;
    sub_10074EF44();
    v46 = sub_10074EE24();
    v48 = v47;
    v67 = sub_10074EE84();
    v50 = v49;
    v51 = sub_10074EE44();
    if (v48 && v50)
    {
      v52 = v51;
      v66 = v46;
      v53 = v72;
      v54 = v68;
      (*(v72 + 16))(v68, v45, v8);
      sub_10000C518(&unk_100925780);
      sub_100752764();
      sub_100752D34();
      v65 = v8;
      v55 = v78[0];
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v56 = v75;
      v73 = v4;
      v57 = v56;
      v39 = v75;
      v58 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v54, v66, v48, v67, v50, v52 & 1, v29, &off_10086C378, v55, *(&v55 + 1));
      (*(v53 + 8))(v74, v65);
      sub_10000C8CC(v76, &unk_100925540);
      v59 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v57[v59] = v58;
      v4 = v73;
    }

    else
    {

      v60 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v39[v60] = 0;

      sub_1001F6890(0, 0);
      (*(v72 + 8))(v45, v8);
      sub_10000C8CC(v76, &unk_100925540);
    }

    if (sub_10074EF24())
    {
      if (qword_100921BD0 != -1)
      {
        swift_once();
      }

      v61 = sub_100747064();
      sub_10000D0FC(v61, qword_100982C70);
      sub_100746F34();
      v62 = v69;
      [*&v29[v69] contentMode];
      sub_10074F374();
      v63 = *&v29[v62];
      sub_10074F324();
      sub_100743364();
      [v63 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();

      v79 = 0;
      memset(v78, 0, sizeof(v78));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1007441F4();

      sub_10000C8CC(v78, &unk_1009276E0);
    }

    [v4 setNeedsLayout];
  }
}

void sub_10040B110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100747424();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v2[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView])
  {
    v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView];
    if (v18)
    {
      goto LABEL_9;
    }
  }

  sub_100667524(0);
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v10, qword_100980A80);
  (*(v11 + 16))(v13, v14, v10);
  if (qword_100921BD8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v6, qword_100982C88);
  (*(v7 + 16))(v9, v15, v6);
  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  v17 = sub_1004AE6A0(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  [v17 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];
  sub_100667530(v17);
  v18 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView];
  if (v18)
  {
LABEL_9:
    v19 = v18;
    sub_100117C00(a1, a2);
    [v3 setNeedsLayout];
  }
}

void sub_10040B3D4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);

    v5 = a1;
    sub_100743344();
  }
}

uint64_t sub_10040B458()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for CappedSizeRoundedTitledButton()
{
  result = qword_100936B28;
  if (!qword_100936B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10040B538(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v11 = a1;
  objc_msgSendSuper2(&v15, "sizeThatFits:", a2, a3);
  v13 = v12;
  sub_10000C888(&v11[qword_100936B18], *&v11[qword_100936B18 + 24]);
  sub_100536120();
  sub_100750564();

  (*(v8 + 8))(v10, v7);
  return v13;
}

void sub_10040B6A0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_10040B71C(char *result)
{
  v1 = *&result[qword_100936B20];
  if (v1)
  {
    v2 = result;
    v3 = sub_10001B5AC(v1);
    v1(v3);

    return sub_1000164A8(v1);
  }

  return result;
}

id sub_10040B7A0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

uint64_t sub_10040B838()
{
  sub_10000C620(v0 + qword_100936B18);
  v1 = *(v0 + qword_100936B20);

  return sub_1000164A8(v1);
}

uint64_t sub_10040B87C(uint64_t a1)
{
  sub_10000C620(a1 + qword_100936B18);
  v2 = *(a1 + qword_100936B20);

  return sub_1000164A8(v2);
}

unint64_t sub_10040B8E8()
{
  result = qword_100936B78;
  if (!qword_100936B78)
  {
    sub_10074A294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936B78);
  }

  return result;
}

uint64_t sub_10040B940()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100743FE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745584();
  sub_100745564();
  sub_10074A284();
  sub_1007454F4();

  (*(v5 + 8))(v7, v4);
  sub_10000C518(&qword_100930CA0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_100752D84();
}

id sub_10040BB08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v5 - 8);
  v97 = &v81 - v6;
  v96 = sub_10074C3E4();
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100925560);
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v92 = &v81 - v9;
  v10 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v10 - 8);
  v90 = &v81 - v11;
  v12 = sub_10000C518(&qword_100923590);
  __chkstk_darwin(v12 - 8);
  v86 = &v81 - v13;
  v14 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v14 - 8);
  v85 = &v81 - v15;
  v16 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v16 - 8);
  v84 = &v81 - v17;
  v18 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v18 - 8);
  v83 = &v81 - v19;
  v20 = objc_opt_self();
  v88 = [v20 areAnimationsEnabled];
  v89 = v20;
  [v20 setAnimationsEnabled:0];
  v21 = sub_100741EA4();
  v22 = sub_100741E94();
  v98 = a2;
  if (v21)
  {
    v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
    sub_1007442C4();
    sub_100752764();

    sub_100752D34();
    sub_1006C2A3C(v21, v23, *&v99[0]);

    v24 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel];

    sub_10074EF34();
    v26 = v25;

    if (v26)
    {
      v27 = sub_100753064();
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v24 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel];
  }

  [v24 setText:v27];

  v87 = v21;
  if (v22 && (, v28 = sub_10074EF34(), v30 = v29, , v30))
  {
    v31 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel];
    v100._object = 0x800000010077B8B0;
    v100._countAndFlagsBits = 0xD00000000000001FLL;
    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    sub_1007458B4(v100, v102);
    sub_10000C518(&unk_100927770);
    v32 = v3;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007A5A00;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_1000DD048();
    *(v33 + 32) = v28;
    *(v33 + 40) = v30;
    v3 = v32;
    sub_1007530B4();

    v34 = sub_100753064();

    [v31 setText:v34];

    v35 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel] setText:0];
    v35 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel];
    if (!v22)
    {
      goto LABEL_12;
    }
  }

  sub_10074EE64();
  v37 = v36;

  if (v37)
  {
    v38 = sub_100753064();

    goto LABEL_13;
  }

LABEL_12:
  v38 = 0;
LABEL_13:
  [v35 setText:v38];

  v39 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel];
  sub_100741E84();
  if (v40)
  {
    v41 = sub_100753064();
  }

  else
  {
    v41 = 0;
  }

  [v39 setText:v41];

  if (v22 && (, sub_10074EFC4(), v43 = v42, , v43))
  {
    v44 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge];
    v45 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel];
    v46 = sub_100753064();
    [v45 setText:v46];

    [v44 setNeedsLayout];
    [v44 setNeedsDisplay];

    [v44 setHidden:0];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge] setHidden:1];
  }

  sub_10000C518(&qword_100936B80);
  v47 = (sub_10000C518(&qword_100936B88) - 8);
  v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007A5A00;
  v50 = v49 + v48;
  v51 = (v49 + v48 + v47[14]);
  v52 = enum case for OfferTitleType.standard(_:);
  v53 = sub_100744EA4();
  (*(*(v53 - 8) + 104))(v50, v52, v53);
  v101._countAndFlagsBits = 0xD000000000000020;
  v101._object = 0x800000010077B880;
  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  *v51 = sub_1007458B4(v101, v103);
  v51[1] = v54;
  sub_100414F4C(v49);
  swift_setDeallocating();
  sub_10000C8CC(v50, &qword_100936B88);
  swift_deallocClassInstance();
  if (v22)
  {

    v55 = sub_10074EF04();

    if (v55)
    {
      v56 = enum case for OfferStyle.colored(_:);
      v57 = sub_100742E24();
      v58 = *(v57 - 8);
      v59 = *(v58 + 104);
      v82 = v3;
      v60 = v83;
      v59(v83, v56, v57);
      (*(v58 + 56))(v60, 0, 1, v57);
      v61 = sub_100745E94();
      v62 = v84;
      (*(*(v61 - 8) + 56))(v84, 1, 1, v61);
      v63 = enum case for OfferTint.blue(_:);
      v64 = sub_10074F8B4();
      v65 = *(v64 - 8);
      v66 = v85;
      (*(v65 + 104))(v85, v63, v64);
      (*(v65 + 56))(v66, 0, 1, v64);
      v67 = sub_1007455E4();
      v68 = v86;
      (*(*(v67 - 8) + 56))(v86, 1, 1, v67);
      memset(v99, 0, 32);
      v69 = sub_100749EA4();

      sub_10000C8CC(v99, &unk_100923520);
      sub_10000C8CC(v68, &qword_100923590);
      sub_10000C8CC(v66, &unk_100925520);
      sub_10000C8CC(v62, &unk_1009259A0);
      v70 = v60;
      v3 = v82;
      sub_10000C8CC(v70, &unk_100925530);
    }

    else
    {

      v69 = 0;
    }

    v73 = v98;
    v86 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton];

    v71 = sub_10074EDF4();

    v74 = v3;
    v72 = v69;
  }

  else
  {

    v71 = 0;
    v72 = 0;
    v86 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton];
    v73 = v98;
    v74 = v3;
  }

  v75 = sub_10000C518(&unk_10092EEA0);
  v76 = v90;
  (*(*(v75 - 8) + 56))(v90, 1, 1, v75);
  v77 = v93;
  v78 = v96;
  (*(v93 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v96);
  (*(v77 + 56))(v97, 1, 1, v78);
  sub_1001F750C();
  v79 = v92;
  sub_10074A9C4();
  sub_10015DE40(v72, v71, 0, v76, v79, v73, 0, 0);

  (*(v94 + 8))(v79, v95);
  sub_10000C8CC(v76, &unk_100925540);
  [v74 setNeedsLayout];

  return [v89 setAnimationsEnabled:v88];
}

double sub_10040C8BC(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v87 = sub_100748E94();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1007504F4();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10074E3A4();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074EAB4();
  v94 = *(v6 - 8);
  v95 = v6;
  __chkstk_darwin(v6);
  v93 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v81 - v9;
  v10 = sub_100743424();
  v97 = *(v10 - 8);
  v98 = v10;
  __chkstk_darwin(v10);
  v96 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100747C14();
  v100 = *(v12 - 8);
  v101 = v12;
  __chkstk_darwin(v12);
  v99 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100747814();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v102 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074F704();
  v17 = *(v16 - 8);
  v106 = v16;
  v107 = v17;
  __chkstk_darwin(v16);
  v105 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v19 - 8);
  v21 = &v81 - v20;
  v22 = sub_10000C518(&unk_10092E450);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v81 - v24;
  v26 = sub_10074E984();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v81 - v31;
  swift_getKeyPath();
  v108 = a1;
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v33 = v25;
  v34 = v27;
  (*(v23 + 8))(v33, v22);
  if ((*(v27 + 48))(v21, 1, v26) != 1)
  {
    (*(v27 + 32))(v32, v21, v26);
    (*(v27 + 16))(v29, v32, v26);
    v36 = (*(v27 + 88))(v29, v26);
    v37 = v32;
    if (v36 == enum case for Shelf.ContentType.smallLockup(_:))
    {
      swift_getKeyPath();
      v38 = v105;
      sub_100746914();

      sub_10074F674();
      (*(v107 + 8))(v38, v106);
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v39 = sub_100747064();
      sub_10000D0FC(v39, qword_10097E3A8);
      sub_10007DC04();
      sub_100747084();
      v40 = &unk_100936BA0;
      v41 = &type metadata accessor for SmallLockupLayout;
LABEL_8:
      sub_10040DAE8(v40, v41);
      sub_100750D34();
      v35 = v42;
      swift_unknownObjectRelease();
LABEL_22:
      (*(v34 + 8))(v37, v26);
      return v35;
    }

    if (v36 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      swift_getKeyPath();
      v43 = v105;
      sub_100746914();

      sub_10074F674();
      (*(v107 + 8))(v43, v106);
      type metadata accessor for MediumLockupCollectionViewCell();
      swift_getKeyPath();
      sub_100746914();

      v44 = v109;
      v45 = v102;
      sub_10024BBC0(v102);

      sub_10007DC04();
      sub_100747834();
      sub_10040DAE8(&qword_10092F010, &type metadata accessor for MediumLockupLayout);
      sub_100750D34();
      v35 = v46;
      swift_unknownObjectRelease();
      (*(v103 + 8))(v45, v104);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      swift_getKeyPath();
      v47 = v105;
      sub_100746914();

      sub_10074F674();
      (*(v107 + 8))(v47, v106);
      if (qword_100920690 != -1)
      {
        swift_once();
      }

      v48 = sub_100746A54();
      sub_10000D0FC(v48, qword_10097E958);
      sub_10007DC04();
      sub_100746A74();
      v40 = &qword_10092F0B8;
      v41 = &type metadata accessor for LargeLockupLayout;
      goto LABEL_8;
    }

    if (v36 == enum case for Shelf.ContentType.ribbonBar(_:) || v36 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v53 = v99;
      sub_100746884();
      v35 = sub_100559274(v53);
      (*(v100 + 8))(v53, v101);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.videoCard(_:))
    {
      swift_getKeyPath();
      v49 = v105;
      sub_100746914();

      sub_10074F674();
      v51 = v50;
      (*(v107 + 8))(v49, v106);
      if (qword_100921A40 != -1)
      {
        swift_once();
      }

      sub_10007DC04();
      swift_getObjectType();
      type metadata accessor for VideoCardView();
      sub_1005FA0C8(v51);
      v35 = v52;
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.brick(_:))
    {
      swift_getKeyPath();
      v55 = v92;
      sub_100746914();

      v56 = v93;
      sub_10074EA74();
      sub_10040DAE8(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
      v57 = v95;
      v58 = sub_100754324();
      v59 = *(v94 + 8);
      v59(v56, v57);
      v59(v55, v57);
      if (v58)
      {
        if (qword_100920980 != -1)
        {
          swift_once();
        }

        v60 = qword_10097FB10;
      }

      else
      {
        if (qword_100920988 != -1)
        {
          swift_once();
        }

        v60 = qword_10097FB28;
      }

      v64 = v98;
      v65 = sub_10000D0FC(v98, v60);
      v67 = v96;
      v66 = v97;
      (*(v97 + 16))(v96, v65, v64);
      swift_getKeyPath();
      v68 = v105;
      sub_100746914();

      sub_10074F674();
      (*(v107 + 8))(v68, v106);
      sub_10007DC04();
      sub_100743444();
      sub_10040DAE8(&qword_100926410, &type metadata accessor for BrickLayout);
      sub_100750D34();
      v35 = v69;
      swift_unknownObjectRelease();
      (*(v66 + 8))(v67, v64);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_30:
      swift_getKeyPath();
      v61 = v105;
      sub_100746914();

      sub_10074F674();
      (*(v107 + 8))(v61, v106);
      v62 = v89;
      sub_10074B2C4();
      sub_10007DC04();
      sub_10074E3C4();
      sub_10040DAE8(&qword_100936B98, &type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout);
      sub_100750D34();
      v35 = v63;
      swift_unknownObjectRelease();
      (*(v90 + 8))(v62, v91);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for BaseTodayCardCollectionViewCell();
      v70 = sub_1005F4D6C();
      goto LABEL_37;
    }

    if (v36 == enum case for Shelf.ContentType.appTrailerLockup(_:))
    {
      type metadata accessor for AppTrailerLockupCollectionViewCell();
    }

    else
    {
      if (v36 != enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        if (v36 == enum case for Shelf.ContentType.smallStoryCard(_:))
        {
          swift_getKeyPath();
          v72 = v105;
          sub_100746914();

          sub_10074F674();
          (*(v107 + 8))(v72, v106);
          swift_getKeyPath();
          sub_100746914();

          v73 = v109;
          v74 = v85;
          sub_10028FD28(v109, v85);
          sub_100748E64();
          v35 = v75;

          (*(v86 + 8))(v74, v87);
          goto LABEL_22;
        }

        if (v36 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v76 = v99;
          sub_100746884();
          v77 = v82;
          sub_1007479D4();
          v78 = v105;
          sub_100747B84();
          sub_10074F684();
          (*(v107 + 8))(v78, v106);
          sub_1007504C4();
          v35 = v79;
          (*(v83 + 8))(v77, v84);
          (*(v100 + 8))(v76, v101);
          goto LABEL_22;
        }

        if (v36 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          if (v36 != enum case for Shelf.ContentType.tagBrick(_:))
          {
            v80 = *(v27 + 8);
            v80(v32, v26);
            v80(v29, v26);
            return 0.0;
          }

          goto LABEL_30;
        }

        v70 = sub_10003B5AC(v108, 1);
LABEL_37:
        v35 = v70;
        goto LABEL_22;
      }

      type metadata accessor for ScreenshotsLockupCollectionViewCell();
    }

    v71 = v99;
    sub_100746884();
    v35 = sub_10050EA98(v71);
    (*(v100 + 8))(v71, v101);
    goto LABEL_22;
  }

  sub_10040DA74(v21);
  return 0.0;
}

uint64_t sub_10040DA74(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100933370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040DAE8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10040DB30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_objectGraph] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  sub_10040E770(&qword_100936BF8, v8, type metadata accessor for PersonalizationTransparencyPageViewController);
  v9 = v7;
  sub_10074E094();

  return v9;
}

void sub_10040DD00()
{
  v1 = sub_10040E010();
  v2 = [v0 childViewControllers];
  sub_100032B70();
  v3 = sub_1007532A4();

  if (v3 >> 62)
  {
    if (sub_100754664())
    {
      goto LABEL_3;
    }

LABEL_11:

    v7 = 0;
    goto LABEL_12;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  type metadata accessor for GenericAccountPageViewController();
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    [v6 willMoveToParentViewController:0];
    v8 = [v7 view];
    if (!v8)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 removeFromSuperview];

    [v7 removeFromParentViewController];
  }

  else
  {
  }

LABEL_12:
  v10 = v1;
  [v0 addChildViewController:v10];
  v11 = [v10 view];
  if (!v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  v13 = [v0 view];
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v12 setFrame:{v16, v18, v20, v22}];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v23;
  v25 = [v10 view];

  if (!v25)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v24 addSubview:v25];

  [v10 didMoveToParentViewController:v0];
  v26 = [v0 navigationItem];
  sub_1007476A4();
  if (v27)
  {
    v28 = sub_100753064();
  }

  else
  {
    v28 = 0;
  }

  [v26 setTitle:v28];
}

id sub_10040E010()
{
  v1 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_objectGraph);
  v5 = sub_100741264();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_10074C2E4();
  swift_allocObject();

  v6 = sub_10074C244();
  v7 = sub_10040E770(&qword_100938E80, 255, &type metadata accessor for GenericAccountPagePresenter);

  v8 = sub_1006B94B0(v4, v6, v7, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010077B920);

  v9 = type metadata accessor for GenericAccountPageViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController] = 0;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_presenter] = v6;
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_objectGraph] = v8;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "initWithStyle:", 2);
}

void sub_10040E1E4()
{
  v1 = v0;
  v2 = sub_100750FA4();
  v3 = [v0 childViewControllers];
  sub_100032B70();
  sub_1007532A4();

  LOBYTE(v3) = sub_1007532D4();

  if (v3)
  {
    v4 = OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
    sub_10074B974();

    v6 = *&v0[v4];
    *&v0[v4] = 0;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];

      sub_10074B964();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_100750F94();
    v9 = objc_allocWithZone(sub_100750FC4());
    v10 = sub_100750FB4();
    v11 = OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
    v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
    sub_10074B974();

    v13 = *&v1[v11];
    *&v1[v11] = v10;
    v14 = v10;

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];

      sub_10074B964();
      return;
    }
  }

  __break(1u);
}

id sub_10040E424()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
  sub_10074B974();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10074B964();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10040E4EC()
{
  v1 = v0;
  sub_100751094();
  sub_10040E770(&qword_100936BF0, 255, &type metadata accessor for PersonalizationTransparencyPagePresenter);
  swift_errorRetain();

  v2 = sub_100751054();
  v3 = OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
  sub_10074B974();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10040E770(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10040E7BC()
{
  result = qword_100936C00;
  if (!qword_100936C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C00);
  }

  return result;
}

unint64_t sub_10040E814()
{
  result = qword_100936C08;
  if (!qword_100936C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C08);
  }

  return result;
}

uint64_t sub_10040E86C()
{
  v0 = sub_10000C518(&qword_100936C98);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100741164();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100740E14();
  sub_100039C50(v5, qword_100980258);
  sub_10000D0FC(v5, qword_100980258);
  sub_100741144();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100740E04();
}

uint64_t sub_10040E9FC@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_10000C518(&qword_100936C90);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_10000C518(&qword_100936C98);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  v7 = sub_100741164();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_100753054();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  sub_100753044();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100753034(v15);
  sub_100740CD4();
  sub_100753024(v14);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100753034(v16);
  sub_100741154();
  sub_100753044();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_100753034(v17);
  sub_100740CD4();
  sub_100753024(v14);

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_100753034(v18);
  sub_100741154();
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = sub_100740D14();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_100740D24();
}

uint64_t sub_10040ECE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004100BC;

  return sub_10040FD5C(a1);
}

uint64_t sub_10040ED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000A27FC;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_10040EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10040EF04;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10040EF04(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_10040F008()
{
  result = qword_100936C10;
  if (!qword_100936C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C10);
  }

  return result;
}

unint64_t sub_10040F060()
{
  result = qword_100936C18;
  if (!qword_100936C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C18);
  }

  return result;
}

unint64_t sub_10040F0B8()
{
  result = qword_100936C20;
  if (!qword_100936C20)
  {
    sub_10000C724(&qword_100936C28);
    sub_10040F060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C20);
  }

  return result;
}

uint64_t sub_10040F13C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10040F3B8();
  *v5 = v2;
  v5[1] = sub_1000A4868;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10040F1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000A27FC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10040F2B0()
{
  result = qword_100936C30;
  if (!qword_100936C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C30);
  }

  return result;
}

unint64_t sub_10040F308()
{
  result = qword_100936C38;
  if (!qword_100936C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C38);
  }

  return result;
}

unint64_t sub_10040F360()
{
  result = qword_100936C40;
  if (!qword_100936C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C40);
  }

  return result;
}

unint64_t sub_10040F3B8()
{
  result = qword_100936C48;
  if (!qword_100936C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C48);
  }

  return result;
}

unint64_t sub_10040F41C()
{
  result = qword_100936C50;
  if (!qword_100936C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C50);
  }

  return result;
}

uint64_t sub_10040F470()
{
  v0 = sub_10000C518(&qword_100936CA8);
  __chkstk_darwin(v0);
  sub_1000C06C0();
  sub_100740DE4();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_100740DD4(v2);
  swift_getKeyPath();
  sub_10000C518(&qword_100936CB0);
  sub_100740DC4();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_100740DD4(v3);
  return sub_100740DF4();
}

unint64_t sub_10040F590()
{
  result = qword_100936C58;
  if (!qword_100936C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C58);
  }

  return result;
}

unint64_t sub_10040F5E8()
{
  result = qword_100936C60;
  if (!qword_100936C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C60);
  }

  return result;
}

unint64_t sub_10040F640()
{
  result = qword_100936C68;
  if (!qword_100936C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C68);
  }

  return result;
}

uint64_t sub_10040F6A0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10040F6AC()
{
  sub_10040FCDC();
  v1 = sub_100740DA4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10040F718@<X0>(uint64_t a1@<X8>)
{
  if (qword_100920BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_100740E14();
  v3 = sub_10000D0FC(v2, qword_100980258);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10040F7C4()
{
  result = qword_100936C70;
  if (!qword_100936C70)
  {
    sub_10000C724(&qword_100936C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C70);
  }

  return result;
}

uint64_t sub_10040F828(uint64_t a1)
{
  v2 = sub_1000C06C0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10040F878()
{
  result = qword_100936C80;
  if (!qword_100936C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C80);
  }

  return result;
}

uint64_t sub_10040F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000A4868;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10040F994(uint64_t a1)
{
  v2 = sub_10040F640();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10040F9E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10040FA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10040FA90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v7 = sub_100741164();
  __chkstk_darwin(v7 - 8);
  sub_10000C518(&qword_100936C88);
  sub_100741144();
  v8 = sub_100740D04();

  sub_100741144();
  v9 = sub_100740D04();

  sub_100741144();
  v10 = sub_100740D04();

  sub_100740CE4();
  sub_100740CE4();
  if (a3)
  {
    v11 = a1;
  }

  else
  {
    sub_100754534(33);

    v11 = a1;
    v14._countAndFlagsBits = a1;
    v14._object = a2;
    sub_1007531B4(v14);
  }

  sub_100740CE4();

  *a4 = v11;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = v10;
  return result;
}

unint64_t sub_10040FCDC()
{
  result = qword_100936CA0;
  if (!qword_100936CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936CA0);
  }

  return result;
}

uint64_t sub_10040FD30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100740CF4();
  *a1 = result;
  return result;
}

uint64_t sub_10040FD5C(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_100741164();
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10040FDEC, 0, 0);
}

uint64_t sub_10040FDEC()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10001E71C(0, v2, 0);
    sub_10000C518(&qword_100936C88);
    v3 = (v1 + 40);
    do
    {
      v14 = v2;
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_100741144();
      v6 = sub_100740D04();

      sub_100741144();
      v7 = sub_100740D04();

      sub_100741144();
      v8 = sub_100740D04();
      v0[2] = 0;
      v0[3] = 0xE000000000000000;

      sub_100740CE4();
      v0[4] = 0xD000000000000016;
      v0[5] = 0x800000010077BA00;
      sub_100740CE4();
      sub_100754534(33);

      v16._countAndFlagsBits = v4;
      v16._object = v5;
      sub_1007531B4(v16);
      v0[6] = 0xD00000000000001FLL;
      v0[7] = 0x800000010077BA20;
      sub_100740CE4();

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10001E71C((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[5 * v10];
      v11[4] = v4;
      v11[5] = v5;
      v11[6] = v6;
      v11[7] = v7;
      v11[8] = v8;
      v3 += 2;
      v2 = v14 - 1;
    }

    while (v14 != 1);
  }

  v12 = v0[1];

  return v12(_swiftEmptyArrayStorage);
}

id sub_1004100C8()
{
  result = [objc_allocWithZone(UISegmentedControl) init];
  qword_100936CB8 = result;
  return result;
}

double sub_100410108(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 40;
    do
    {
      v7 = qword_100920BC0;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_100936CB8;
      v9 = sub_100753064();
      [v8 addSegmentWithTitle:v9];

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  if (qword_100920BC0 != -1)
  {
    swift_once();
  }

  v10 = qword_100936CB8;
  [qword_100936CB8 sizeThatFits:{a2, a3}];
  v12 = v11;
  [v10 removeAllSegments];
  return v12;
}

unint64_t sub_10041027C()
{
  result = qword_100936CC0;
  if (!qword_100936CC0)
  {
    sub_100748A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936CC0);
  }

  return result;
}

uint64_t sub_1004102D4(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_100752624();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752404();
  __chkstk_darwin(v7 - 8);
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v8 = sub_100752E44();
  sub_10000D0FC(v8, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v14._object = 0x800000010077BA60;
  v14._countAndFlagsBits = 0xD000000000000018;
  sub_1007523E4(v14);
  v9 = sub_100744EE4();
  v13[3] = v9;
  v10 = sub_10000D134(v13);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  sub_1007523C4();
  sub_1000277BC(v13);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1007523E4(v15);
  sub_100752414();
  sub_100752CE4();

  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  sub_100752DB4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004105BC()
{
  v0 = sub_100752404();
  __chkstk_darwin(v0 - 8);
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v1 = sub_100752E44();
  sub_10000D0FC(v1, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v6._object = 0x800000010077BA40;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1007523E4(v6);
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000D134(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_1007523C4();
  sub_1000277BC(v5);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_1007523E4(v7);
  sub_100752414();
  sub_100752D04();

  swift_getObjectType();
  sub_100742514();
  return sub_100752DA4();
}

uint64_t sub_100410820()
{
  v0 = sub_10074ED34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  sub_10000C518(&qword_100930CA0);
  v7 = sub_100752DE4();
  sub_100748A04();
  sub_100748A14();
  sub_10074F4A4();
  sub_100752764();
  sub_100752D34();
  sub_10000C518(&unk_100925780);
  sub_100752D34();
  v14 = v15;
  sub_10074F484();
  (*(v1 + 16))(v3, v6, v0);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v14;
  (*(v1 + 32))(v10 + v8, v3, v0);
  *(v10 + v9) = v7;
  v11 = sub_1000A7FA0();
  swift_retain_n();
  swift_unknownObjectRetain();
  v12 = sub_100753774();
  v16 = v11;
  v17 = &protocol witness table for OS_dispatch_queue;
  *&v15 = v12;
  sub_100752D64();
  swift_unknownObjectRelease();

  (*(v1 + 8))(v6, v0);
  sub_10000C620(&v15);
  return v7;
}

uint64_t sub_100410AF8()
{
  v1 = sub_10074ED34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100410BD0()
{
  sub_10074ED34();

  return sub_1004105BC();
}

uint64_t sub_100410C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10074E984();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  swift_getKeyPath();
  v23 = a1;
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_10040DA74(v5);
    v17 = sub_100747564();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  v19 = v24;
  (*(v11 + 32))(v16, v5, v10);
  (*(v11 + 16))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    type metadata accessor for SmallLockupCollectionViewCell();
    sub_1001EAEC4(v19);
    return (*(v11 + 8))(v16, v10);
  }

  if (v20 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    type metadata accessor for MediumLockupCollectionViewCell();
    sub_1003F2CAC(v19);
    return (*(v11 + 8))(v16, v10);
  }

  v21 = *(v11 + 8);
  v21(v16, v10);
  v22 = sub_100747564();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  return (v21)(v13, v10);
}

uint64_t Badge.enrich(objectGraph:)(uint64_t a1)
{
  v57 = a1;
  v1 = sub_100744794();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v7 = sub_100741264();
  v58 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074F7D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100936CC8);
  v14 = sub_100752DE4();
  sub_10074E854();
  if ((*(v11 + 88))(v13, v10) == enum case for BadgeType.friendsPlaying(_:))
  {
    v15 = sub_10074E894();
    v16 = sub_10074DF54();
    if (*(v15 + 16))
    {
      v18 = sub_1003861D0(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_10000C5B4(*(v15 + 56) + 32 * v18, &v59);

      sub_100016C60(0, &qword_10092BE20);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v21 = v63;
      v22 = [v63 integerValue];

      v23 = sub_10074E894();
      v24 = sub_10074E484();
      if (*(v23 + 16))
      {
        v53 = v22;
        v54 = sub_1003861D0(v24, v25);
        v27 = v26;

        if (v27)
        {
          sub_10000C5B4(*(v23 + 56) + 32 * v54, &v59);

          if (swift_dynamicCast())
          {
            v28 = v63;
            v29 = [v63 integerValue];

            v30 = sub_10074E894();
            v31 = sub_100749004();
            if (*(v30 + 16))
            {
              v54 = v29;
              v33 = sub_1003861D0(v31, v32);
              v35 = v34;

              if (v35)
              {
                sub_10000C5B4(*(v30 + 56) + 32 * v33, &v59);

                if (swift_dynamicCast())
                {
                  v36 = v63;
                  v37 = v64;
                  v59 = 0;
                  v60 = 0xE000000000000000;
                  sub_100754534(91);
                  v65._countAndFlagsBits = 0xD000000000000059;
                  v65._object = 0x800000010077BA80;
                  sub_1007531B4(v65);
                  v66._countAndFlagsBits = v36;
                  v66._object = v37;
                  sub_1007531B4(v66);

                  sub_100741254();

                  v38 = v58;
                  if ((*(v58 + 48))(v6, 1, v7) != 1)
                  {
                    (*(v38 + 32))(v9, v6, v7);
                    sub_1007442C4();
                    v51[1] = sub_100752764();
                    sub_100752D34();
                    v52 = v59;
                    sub_10000C518(&qword_100936CD0);
                    v40 = (sub_10000C518(&qword_100936CD8) - 8);
                    v41 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
                    v42 = swift_allocObject();
                    *(v42 + 16) = xmmword_1007A5A00;
                    v43 = v42 + v41;
                    v44 = v40[14];
                    v59 = 0xD000000000000015;
                    v60 = 0x800000010077BAE0;
                    sub_1007544E4();
                    (*(v38 + 16))(v43 + v44, v9, v7);
                    sub_10041466C(v42);
                    swift_setDeallocating();
                    sub_10000C8CC(v43, &qword_100936CD8);
                    swift_deallocClassInstance();
                    sub_100744784();
                    sub_1007477A4();
                    sub_100752D34();
                    sub_100415A94(&qword_100936CE0, &type metadata accessor for ShelvesIntent);
                    v45 = v56;
                    sub_100747794();
                    v46 = swift_allocObject();
                    swift_weakInit();
                    v47 = swift_allocObject();
                    v47[2] = v46;
                    v47[3] = 0xD000000000000015;
                    v47[4] = 0x800000010077BAE0;
                    v47[5] = v14;
                    v48 = v52;
                    v47[6] = v53;
                    v47[7] = v48;
                    v47[8] = v54;
                    v49 = sub_100016C60(0, &qword_100926D00);

                    v50 = sub_100753774();
                    v61 = v49;
                    v62 = &protocol witness table for OS_dispatch_queue;
                    v59 = v50;
                    sub_100752D64();

                    (*(v55 + 8))(v3, v45);
                    (*(v58 + 8))(v9, v7);
                    sub_10000C620(&v59);
                    return v14;
                  }

                  sub_10000C8CC(v6, &unk_100923970);
                }

                goto LABEL_16;
              }

              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_16:
          v59 = 0;
          sub_100752DB4();
          return v14;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v59 = 0;
  sub_100752DB4();
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t sub_1004118DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v49 = a7;
  v12 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v12 - 8);
  v53 = v43 - v13;
  v14 = sub_100742BD4();
  __chkstk_darwin(v14 - 8);
  v52 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100746594();
  __chkstk_darwin(v16 - 8);
  v51 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_100936E60);
  __chkstk_darwin(v18 - 8);
  v54 = v43 - v19;
  v20 = sub_10074F7D4();
  __chkstk_darwin(v20 - 8);
  v21 = sub_10074D6B4();
  __chkstk_darwin(v21 - 8);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = sub_100743044();
    v55 = a3;
    v56 = a4;

    sub_1007544E4();
    if (*(v25 + 16) && (sub_100412148(v57), (v26 & 1) != 0))
    {

      sub_100016994(v57);

      v27 = sub_10074EB24();

      v28 = sub_10070CF40(v27);

      if (v28)
      {
        v29 = v28 >> 62;
        if (v28 >> 62)
        {
LABEL_34:
          v30 = sub_100754664();
          if (v30 >= 1)
          {
LABEL_7:
            v44 = v30;
            if (v30 < a6)
            {
              a6 = v30;
            }

            sub_10074D6A4();
            v46 = type metadata accessor for AvatarShowcaseView();
            v31 = objc_allocWithZone(v46);
            v45 = sub_1005B832C(a6, v23);
            v57[0] = _swiftEmptyArrayStorage;
            v47 = a5;
            if (v29)
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = sub_100754664();
            }

            else
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v32 = 0;
            a5 = v28 & 0xC000000000000001;
            v48 = _swiftEmptyArrayStorage;
            while (a6 != v32)
            {
              if (a5)
              {
                sub_100754574();
                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v32 >= *(v29 + 16))
                {
                  goto LABEL_33;
                }

                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              v23 = sub_100745CE4();

              ++v32;
              if (v23)
              {
                sub_100753284();
                if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100753304();
                }

                sub_100753344();
                v48 = v57[0];
                v32 = v33;
              }
            }

            v34 = v45;
            sub_1005B869C(v48, v49);

            v35 = v50;
            if (v44 <= v50)
            {
              v36._object = 0x800000010077BB30;
              v36._countAndFlagsBits = 0xD00000000000001DLL;
              v35 = v44;
            }

            else
            {
              v36._countAndFlagsBits = 0xD000000000000021;
              v36._object = 0x800000010077BB50;
            }

            v58._countAndFlagsBits = 0;
            v58._object = 0xE000000000000000;
            v50 = sub_10074B194(v36, v35, v58);
            v49 = v37;
            sub_10074E834();
            sub_10074E854();
            sub_10074E844();
            v48 = sub_10074E8A4();
            v44 = v38;
            v43[3] = sub_10074E7A4();
            v43[2] = v39;
            sub_10000C518(&qword_10092C1F8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007A5A00;
            *(inited + 32) = sub_100741BF4();
            *(inited + 72) = v46;
            *(inited + 40) = v41;
            *(inited + 48) = v34;
            v46 = v34;
            v45 = sub_100414AE8(inited);
            swift_setDeallocating();
            sub_10000C8CC(inited + 32, &qword_10092C200);
            sub_10074E7C4();
            sub_10074E864();
            v43[1] = sub_10074E7F4();
            v43[0] = v42;
            sub_10074E804();
            sub_10074E794();
            sub_10074E874();
            sub_10074E7E4();
            sub_10074E8B4();
            swift_allocObject();
            v57[0] = sub_10074E824();

            sub_100752DB4();
          }
        }

        else
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30 >= 1)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {

      sub_100016994(v57);
    }

    v57[0] = 0;
    sub_100752DB4();
  }

  return result;
}

uint64_t sub_100412034()
{
  sub_10000C518(&unk_1009259C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A5A00;
  swift_getErrorValue();
  *(v0 + 56) = v3;
  v1 = sub_10000D134((v0 + 32));
  (*(*(v3 - 8) + 16))(v1);
  sub_100754814();
}

unint64_t sub_100412104(uint64_t a1)
{
  v2 = sub_100754824();

  return sub_100412C64(a1, v2);
}

unint64_t sub_100412148(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007544B4(*(v2 + 40));

  return sub_100412CD0(a1, v4);
}

unint64_t sub_10041218C(unsigned __int8 a1)
{
  sub_100754834();
  if ((a1 - 4) >= 3u)
  {
    sub_100754844(2uLL);
    v2 = a1;
  }

  else
  {
    v2 = qword_1007C0310[(a1 - 4)];
  }

  sub_100754844(v2);
  v3 = sub_100754884();

  return sub_100412D98(a1, v3);
}

unint64_t sub_100412228(double *a1)
{
  sub_100754834();
  sub_10050B5A8(v4);
  v2 = sub_100754884();

  return sub_100412E50(a1, v2);
}

unint64_t sub_100412298(uint64_t a1)
{
  sub_100753094();
  sub_100754834();
  sub_100753174();
  v2 = sub_100754884();

  return sub_100413328(a1, v2);
}

unint64_t sub_100412328(uint64_t a1)
{
  sub_10074ED34();
  sub_100415A94(&qword_100936CF0, &type metadata accessor for AdamId);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for AdamId, &qword_100929298, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
}

unint64_t sub_1004123FC(uint64_t a1)
{
  sub_1007417F4();
  sub_100415A94(&qword_100947C40, &type metadata accessor for IndexPath);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for IndexPath, &qword_100927EA0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_1004124D0(uint64_t a1)
{
  sub_100745CA4();
  sub_100415A94(&qword_100926258, &type metadata accessor for EditorialPageKey);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for EditorialPageKey, &qword_100926260, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
}

unint64_t sub_1004125A4(Swift::UInt a1, Swift::UInt a2, double a3)
{
  sub_100754834();
  sub_100754844(a1);
  sub_100754844(a2);
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  sub_100754864(*&v6);
  v7 = sub_100754884();

  return sub_100413128(a1, a2, v7, a3);
}

unint64_t sub_10041264C(double a1, double a2)
{
  sub_100754834();
  sub_1004B5A14(a1, a2);
  v4 = sub_100754884();

  return sub_1004131B4(v4, a1, a2);
}

unint64_t sub_1004126C0(uint64_t a1)
{
  sub_10074F3D4();
  sub_100415A94(&qword_100936D20, &type metadata accessor for Artwork);
  v2 = sub_100752FA4();
  return sub_10041322C(a1, v2);
}

unint64_t sub_10041276C(uint64_t a1)
{
  sub_10074F7D4();
  sub_100415A94(&qword_100936108, &type metadata accessor for BadgeType);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for BadgeType, &qword_100936D18, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
}

unint64_t sub_100412840(uint64_t a1)
{
  sub_100742F74();
  sub_100415A94(&qword_1009362C0, &type metadata accessor for PageFacets.Facet);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for PageFacets.Facet, &qword_100936E08, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
}

unint64_t sub_100412914(uint64_t a1)
{
  sub_100744EA4();
  sub_100415A94(&qword_100936D30, &type metadata accessor for OfferTitleType);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for OfferTitleType, &qword_100936D38, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
}

unint64_t sub_1004129E8(uint64_t a1)
{
  sub_100748674();
  sub_100415A94(&qword_100936D60, &type metadata accessor for SearchAdOpportunity.LifecycleEventType);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &qword_100936D68, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
}

unint64_t sub_100412ABC(uint64_t a1)
{
  sub_100752C34();
  sub_100415A94(&qword_100936DC8, &type metadata accessor for MetricsFieldExclusionRequest);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for MetricsFieldExclusionRequest, &qword_100936DD0, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
}

unint64_t sub_100412B90(uint64_t a1)
{
  sub_100752C84();
  sub_100415A94(&qword_10092B4D0, &type metadata accessor for MetricsFieldInclusionRequest);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for MetricsFieldInclusionRequest, &qword_10092B4D8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
}

unint64_t sub_100412C64(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100412CD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100066198(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1007544C4();
      sub_100016994(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100412D98(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      switch(v7)
      {
        case 6:
          if (a1 == 6)
          {
            return result;
          }

          break;
        case 5:
          if (a1 == 5)
          {
            return result;
          }

          break;
        case 4:
          if (a1 == 4)
          {
            return result;
          }

          break;
        default:
          if (a1 - 7 <= 0xFFFFFFFC && v7 == a1)
          {
            return result;
          }

          break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100412E50(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for Accessory() - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_100415A30(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_10050D4C8(v8, a1);
      sub_10007A554(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100412F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_100415A94(v24, v25);
      v20 = sub_100753014();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100413128(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = -1 << *(v4 + 32);
  result = a3 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *(v9 + 16);
      v12 = *v9 == a1 && *(v9 + 8) == a2;
      if (v10 != a4)
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1004131B4(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10041322C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10074F3D4();
    sub_100415A94(&unk_100928A50, &type metadata accessor for Artwork);
    do
    {
      if (sub_100753014())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100413328(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100753094();
      v8 = v7;
      if (v6 == sub_100753094() && v8 == v9)
      {
        break;
      }

      v11 = sub_100754754();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10041342C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D78);
    v3 = sub_1007546B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016B4C(v4, v13, &qword_100936D80);
      result = sub_100412148(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100413554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936CE8);
    v3 = sub_1007546B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100412298(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100413644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C518(&qword_100936DF0);
  v3 = sub_1007546B4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_10041218C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_10041218C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100413748(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936DB0);
    v3 = sub_1007546B4();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 1);
      v13 = i[1];
      v14 = *i;
      v6 = *(i + 32);
      result = sub_100412104(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100413848(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936E28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936E30);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936E28);
      result = sub_100412228(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Accessory();
      result = sub_100372EAC(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_100413A50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936E50);
    v3 = sub_1007546B4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_100412104(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
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

unint64_t sub_100413B30(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936E40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936E48);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936E40);
      result = sub_1004123FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1007417F4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

void *sub_100413D18(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C518(&qword_100936D40);
  v3 = sub_1007546B4();
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = a1[6];
  v7 = *(a1 + 7);
  v8 = sub_1004125A4(v4, v5, v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = (v3[6] + 24 * v10);
    *v13 = v4;
    *(v13 + 1) = v5;
    v13[2] = v6;
    *(v3[7] + 8 * v10) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_1004125A4(v4, v5, v6);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100413E5C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936D98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936DA0);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936D98);
      v11 = *v5;
      result = sub_100412104(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_100752914();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_10041404C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D88);
    v3 = sub_1007546B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1003861D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100414150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936CF8);
    v3 = sub_1007546B4();
    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *(i + 1);
      v15 = *i;
      result = sub_10041264C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
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

unint64_t sub_10041424C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936DA8);
    v3 = sub_1007546B4();
    for (i = (a1 + 40); ; i = (i + 40))
    {
      v5 = *(i - 1);
      v12 = i[1];
      v13 = *i;
      result = sub_100412104(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10041434C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D28);
    v3 = sub_1007546B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_1004126C0(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100414444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D58);
    v3 = sub_1007546B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100412298(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100414554(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10000C518(a2);
    v7 = sub_1007546B4();
    v8 = a1 + 32;

    while (1)
    {
      sub_100016B4C(v8, &v15, a4);
      v9 = v15;
      result = sub_100412298(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_10000C610(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
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

unint64_t sub_10041466C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936CD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936E68);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936CD8);
      result = sub_100412148(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 40 * result;
      v15 = *v5;
      v16 = *(v5 + 1);
      *(v14 + 32) = *(v5 + 4);
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = v7[7];
      v18 = sub_100741264();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v13, &v5[v8], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_100414864()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10041489C()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100414900(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936D08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936D10);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936D08);
      result = sub_10041276C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10074F7D4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_100414AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100934890);
    v3 = sub_1007546B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016B4C(v4, &v13, &qword_10092C200);
      v5 = v13;
      v6 = v14;
      result = sub_1003861D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C610(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100414C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936D00);
    v3 = sub_1007546B4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003861D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100414D14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&unk_10092DCE0);
    v3 = sub_1007546B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016B4C(v4, v13, &qword_100927768);
      result = sub_100412148(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000C610(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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